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
(declare-sort T@Field_8607_53 0)
(declare-sort T@Field_8620_8621 0)
(declare-sort T@Field_8607_21926 0)
(declare-sort T@Field_8607_21793 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_8568 0)) (((PolymorphicMapType_8568 (|PolymorphicMapType_8568_5334_5335#PolymorphicMapType_8568| (Array T@Ref T@Field_8620_8621 Real)) (|PolymorphicMapType_8568_5334_53#PolymorphicMapType_8568| (Array T@Ref T@Field_8607_53 Real)) (|PolymorphicMapType_8568_5334_21793#PolymorphicMapType_8568| (Array T@Ref T@Field_8607_21793 Real)) (|PolymorphicMapType_8568_5334_25472#PolymorphicMapType_8568| (Array T@Ref T@Field_8607_21926 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9096 0)) (((PolymorphicMapType_9096 (|PolymorphicMapType_9096_8607_53#PolymorphicMapType_9096| (Array T@Ref T@Field_8607_53 Bool)) (|PolymorphicMapType_9096_8607_8621#PolymorphicMapType_9096| (Array T@Ref T@Field_8620_8621 Bool)) (|PolymorphicMapType_9096_8607_21793#PolymorphicMapType_9096| (Array T@Ref T@Field_8607_21793 Bool)) (|PolymorphicMapType_9096_8607_22906#PolymorphicMapType_9096| (Array T@Ref T@Field_8607_21926 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8547 0)) (((PolymorphicMapType_8547 (|PolymorphicMapType_8547_5037_53#PolymorphicMapType_8547| (Array T@Ref T@Field_8607_53 Bool)) (|PolymorphicMapType_8547_5040_5041#PolymorphicMapType_8547| (Array T@Ref T@Field_8620_8621 T@Ref)) (|PolymorphicMapType_8547_8607_21970#PolymorphicMapType_8547| (Array T@Ref T@Field_8607_21926 T@PolymorphicMapType_9096)) (|PolymorphicMapType_8547_8607_21793#PolymorphicMapType_8547| (Array T@Ref T@Field_8607_21793 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_8607_53)
(declare-fun car () T@Field_8620_8621)
(declare-fun succHeap (T@PolymorphicMapType_8547 T@PolymorphicMapType_8547) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_8547 T@PolymorphicMapType_8547) Bool)
(declare-fun state (T@PolymorphicMapType_8547 T@PolymorphicMapType_8568) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_8568) Bool)
(declare-fun |f'| (T@PolymorphicMapType_8547 T@Ref T@Ref) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |f#trigger| (T@FrameType T@Ref T@Ref) Bool)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_5335 (T@Ref) T@FrameType)
(declare-fun FrameFragment_7493 (T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun ZeroPMask () T@PolymorphicMapType_9096)
(declare-fun dummyFunction_3506 (Bool) Bool)
(declare-fun |f#triggerStateless| (T@Ref T@Ref) Bool)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |$'| (T@PolymorphicMapType_8547 T@Ref) Bool)
(declare-fun |$#triggerStateless| (T@Ref) Bool)
(declare-fun |$#trigger| (T@FrameType T@Ref) Bool)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_8547 T@PolymorphicMapType_8547 T@PolymorphicMapType_8568) Bool)
(declare-fun IsPredicateField_8607_21884 (T@Field_8607_21793) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_8607 (T@Field_8607_21793) T@Field_8607_21926)
(declare-fun HasDirectPerm_8607_21857 (T@PolymorphicMapType_8568 T@Ref T@Field_8607_21793) Bool)
(declare-fun IsWandField_8607_23433 (T@Field_8607_21793) Bool)
(declare-fun WandMaskField_8607 (T@Field_8607_21793) T@Field_8607_21926)
(declare-fun dummyHeap () T@PolymorphicMapType_8547)
(declare-fun ZeroMask () T@PolymorphicMapType_8568)
(declare-fun InsidePredicate_8607_8607 (T@Field_8607_21793 T@FrameType T@Field_8607_21793 T@FrameType) Bool)
(declare-fun IsPredicateField_5334_5335 (T@Field_8620_8621) Bool)
(declare-fun IsWandField_5334_5335 (T@Field_8620_8621) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5334_26367 (T@Field_8607_21926) Bool)
(declare-fun IsWandField_5334_26383 (T@Field_8607_21926) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_5334_53 (T@Field_8607_53) Bool)
(declare-fun IsWandField_5334_53 (T@Field_8607_53) Bool)
(declare-fun HasDirectPerm_8607_26738 (T@PolymorphicMapType_8568 T@Ref T@Field_8607_21926) Bool)
(declare-fun HasDirectPerm_8607_8621 (T@PolymorphicMapType_8568 T@Ref T@Field_8620_8621) Bool)
(declare-fun HasDirectPerm_8607_53 (T@PolymorphicMapType_8568 T@Ref T@Field_8607_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_8568 T@PolymorphicMapType_8568 T@PolymorphicMapType_8568) Bool)
(declare-fun |$#frame| (T@FrameType T@Ref) Bool)
(declare-fun $ (T@PolymorphicMapType_8547 T@Ref) Bool)
(declare-fun f_6@@0 (T@PolymorphicMapType_8547 T@Ref T@Ref) Bool)
(declare-fun |f#frame| (T@FrameType T@Ref T@Ref) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_8547) (Heap1 T@PolymorphicMapType_8547) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_8547) (Mask T@PolymorphicMapType_8568) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_8547) (Heap1@@0 T@PolymorphicMapType_8547) (Heap2 T@PolymorphicMapType_8547) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_8547) (Mask@@0 T@PolymorphicMapType_8568) (uref T@Ref) (vref T@Ref) ) (!  (=> (and (state Heap@@0 Mask@@0) (or (< AssumeFunctionsAbove 0) (|f#trigger| (CombineFrames (FrameFragment_5335 (select (|PolymorphicMapType_8547_5040_5041#PolymorphicMapType_8547| Heap@@0) uref car)) (FrameFragment_7493 (ite (not (= uref vref)) (FrameFragment_5335 (select (|PolymorphicMapType_8547_5040_5041#PolymorphicMapType_8547| Heap@@0) vref car)) EmptyFrame))) uref vref))) (|f'| Heap@@0 uref vref))
 :qid |stdinbpl.421:15|
 :skolemid |85|
 :pattern ( (state Heap@@0 Mask@@0) (|f'| Heap@@0 uref vref))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_8607_21926) ) (!  (not (select (|PolymorphicMapType_9096_8607_22906#PolymorphicMapType_9096| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9096_8607_22906#PolymorphicMapType_9096| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_8607_21793) ) (!  (not (select (|PolymorphicMapType_9096_8607_21793#PolymorphicMapType_9096| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9096_8607_21793#PolymorphicMapType_9096| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_8620_8621) ) (!  (not (select (|PolymorphicMapType_9096_8607_8621#PolymorphicMapType_9096| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9096_8607_8621#PolymorphicMapType_9096| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_8607_53) ) (!  (not (select (|PolymorphicMapType_9096_8607_53#PolymorphicMapType_9096| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9096_8607_53#PolymorphicMapType_9096| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_8547) (uref@@0 T@Ref) (vref@@0 T@Ref) ) (! (dummyFunction_3506 (|f#triggerStateless| uref@@0 vref@@0))
 :qid |stdinbpl.408:15|
 :skolemid |83|
 :pattern ( (|f'| Heap@@1 uref@@0 vref@@0))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.295:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_8547) (ref T@Ref) ) (! (dummyFunction_3506 (|$#triggerStateless| ref))
 :qid |stdinbpl.476:15|
 :skolemid |87|
 :pattern ( (|$'| Heap@@2 ref))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_8547) (Mask@@1 T@PolymorphicMapType_8568) (ref@@0 T@Ref) ) (!  (=> (and (state Heap@@3 Mask@@1) (or (< AssumeFunctionsAbove 1) (|$#trigger| (FrameFragment_5335 (select (|PolymorphicMapType_8547_5040_5041#PolymorphicMapType_8547| Heap@@3) ref@@0 car)) ref@@0))) (|$'| Heap@@3 ref@@0))
 :qid |stdinbpl.489:15|
 :skolemid |89|
 :pattern ( (state Heap@@3 Mask@@1) (|$'| Heap@@3 ref@@0))
)))
(assert (forall ((a@@0 Int) ) (!  (=> (<= 0 a@@0) (= (|Math#clip| a@@0) a@@0))
 :qid |stdinbpl.298:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@0))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_8547) (ExhaleHeap T@PolymorphicMapType_8547) (Mask@@2 T@PolymorphicMapType_8568) (pm_f_1 T@Field_8607_21793) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@2) (=> (and (HasDirectPerm_8607_21857 Mask@@2 null pm_f_1) (IsPredicateField_8607_21884 pm_f_1)) (= (select (|PolymorphicMapType_8547_8607_21970#PolymorphicMapType_8547| Heap@@4) null (PredicateMaskField_8607 pm_f_1)) (select (|PolymorphicMapType_8547_8607_21970#PolymorphicMapType_8547| ExhaleHeap) null (PredicateMaskField_8607 pm_f_1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@2) (IsPredicateField_8607_21884 pm_f_1) (select (|PolymorphicMapType_8547_8607_21970#PolymorphicMapType_8547| ExhaleHeap) null (PredicateMaskField_8607 pm_f_1)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_8547) (ExhaleHeap@@0 T@PolymorphicMapType_8547) (Mask@@3 T@PolymorphicMapType_8568) (pm_f_1@@0 T@Field_8607_21793) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@3) (=> (and (HasDirectPerm_8607_21857 Mask@@3 null pm_f_1@@0) (IsWandField_8607_23433 pm_f_1@@0)) (= (select (|PolymorphicMapType_8547_8607_21970#PolymorphicMapType_8547| Heap@@5) null (WandMaskField_8607 pm_f_1@@0)) (select (|PolymorphicMapType_8547_8607_21970#PolymorphicMapType_8547| ExhaleHeap@@0) null (WandMaskField_8607 pm_f_1@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@3) (IsWandField_8607_23433 pm_f_1@@0) (select (|PolymorphicMapType_8547_8607_21970#PolymorphicMapType_8547| ExhaleHeap@@0) null (WandMaskField_8607 pm_f_1@@0)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_8547) (ExhaleHeap@@1 T@PolymorphicMapType_8547) (Mask@@4 T@PolymorphicMapType_8568) (pm_f_1@@1 T@Field_8607_21793) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@4) (=> (and (HasDirectPerm_8607_21857 Mask@@4 null pm_f_1@@1) (IsPredicateField_8607_21884 pm_f_1@@1)) (and (and (and (forall ((o2_1 T@Ref) (f_9 T@Field_8607_53) ) (!  (=> (select (|PolymorphicMapType_9096_8607_53#PolymorphicMapType_9096| (select (|PolymorphicMapType_8547_8607_21970#PolymorphicMapType_8547| Heap@@6) null (PredicateMaskField_8607 pm_f_1@@1))) o2_1 f_9) (= (select (|PolymorphicMapType_8547_5037_53#PolymorphicMapType_8547| Heap@@6) o2_1 f_9) (select (|PolymorphicMapType_8547_5037_53#PolymorphicMapType_8547| ExhaleHeap@@1) o2_1 f_9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8547_5037_53#PolymorphicMapType_8547| ExhaleHeap@@1) o2_1 f_9))
)) (forall ((o2_1@@0 T@Ref) (f_9@@0 T@Field_8620_8621) ) (!  (=> (select (|PolymorphicMapType_9096_8607_8621#PolymorphicMapType_9096| (select (|PolymorphicMapType_8547_8607_21970#PolymorphicMapType_8547| Heap@@6) null (PredicateMaskField_8607 pm_f_1@@1))) o2_1@@0 f_9@@0) (= (select (|PolymorphicMapType_8547_5040_5041#PolymorphicMapType_8547| Heap@@6) o2_1@@0 f_9@@0) (select (|PolymorphicMapType_8547_5040_5041#PolymorphicMapType_8547| ExhaleHeap@@1) o2_1@@0 f_9@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8547_5040_5041#PolymorphicMapType_8547| ExhaleHeap@@1) o2_1@@0 f_9@@0))
))) (forall ((o2_1@@1 T@Ref) (f_9@@1 T@Field_8607_21793) ) (!  (=> (select (|PolymorphicMapType_9096_8607_21793#PolymorphicMapType_9096| (select (|PolymorphicMapType_8547_8607_21970#PolymorphicMapType_8547| Heap@@6) null (PredicateMaskField_8607 pm_f_1@@1))) o2_1@@1 f_9@@1) (= (select (|PolymorphicMapType_8547_8607_21793#PolymorphicMapType_8547| Heap@@6) o2_1@@1 f_9@@1) (select (|PolymorphicMapType_8547_8607_21793#PolymorphicMapType_8547| ExhaleHeap@@1) o2_1@@1 f_9@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8547_8607_21793#PolymorphicMapType_8547| ExhaleHeap@@1) o2_1@@1 f_9@@1))
))) (forall ((o2_1@@2 T@Ref) (f_9@@2 T@Field_8607_21926) ) (!  (=> (select (|PolymorphicMapType_9096_8607_22906#PolymorphicMapType_9096| (select (|PolymorphicMapType_8547_8607_21970#PolymorphicMapType_8547| Heap@@6) null (PredicateMaskField_8607 pm_f_1@@1))) o2_1@@2 f_9@@2) (= (select (|PolymorphicMapType_8547_8607_21970#PolymorphicMapType_8547| Heap@@6) o2_1@@2 f_9@@2) (select (|PolymorphicMapType_8547_8607_21970#PolymorphicMapType_8547| ExhaleHeap@@1) o2_1@@2 f_9@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8547_8607_21970#PolymorphicMapType_8547| ExhaleHeap@@1) o2_1@@2 f_9@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@4) (IsPredicateField_8607_21884 pm_f_1@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_8547) (ExhaleHeap@@2 T@PolymorphicMapType_8547) (Mask@@5 T@PolymorphicMapType_8568) (pm_f_1@@2 T@Field_8607_21793) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@5) (=> (and (HasDirectPerm_8607_21857 Mask@@5 null pm_f_1@@2) (IsWandField_8607_23433 pm_f_1@@2)) (and (and (and (forall ((o2_1@@3 T@Ref) (f_9@@3 T@Field_8607_53) ) (!  (=> (select (|PolymorphicMapType_9096_8607_53#PolymorphicMapType_9096| (select (|PolymorphicMapType_8547_8607_21970#PolymorphicMapType_8547| Heap@@7) null (WandMaskField_8607 pm_f_1@@2))) o2_1@@3 f_9@@3) (= (select (|PolymorphicMapType_8547_5037_53#PolymorphicMapType_8547| Heap@@7) o2_1@@3 f_9@@3) (select (|PolymorphicMapType_8547_5037_53#PolymorphicMapType_8547| ExhaleHeap@@2) o2_1@@3 f_9@@3)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8547_5037_53#PolymorphicMapType_8547| ExhaleHeap@@2) o2_1@@3 f_9@@3))
)) (forall ((o2_1@@4 T@Ref) (f_9@@4 T@Field_8620_8621) ) (!  (=> (select (|PolymorphicMapType_9096_8607_8621#PolymorphicMapType_9096| (select (|PolymorphicMapType_8547_8607_21970#PolymorphicMapType_8547| Heap@@7) null (WandMaskField_8607 pm_f_1@@2))) o2_1@@4 f_9@@4) (= (select (|PolymorphicMapType_8547_5040_5041#PolymorphicMapType_8547| Heap@@7) o2_1@@4 f_9@@4) (select (|PolymorphicMapType_8547_5040_5041#PolymorphicMapType_8547| ExhaleHeap@@2) o2_1@@4 f_9@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8547_5040_5041#PolymorphicMapType_8547| ExhaleHeap@@2) o2_1@@4 f_9@@4))
))) (forall ((o2_1@@5 T@Ref) (f_9@@5 T@Field_8607_21793) ) (!  (=> (select (|PolymorphicMapType_9096_8607_21793#PolymorphicMapType_9096| (select (|PolymorphicMapType_8547_8607_21970#PolymorphicMapType_8547| Heap@@7) null (WandMaskField_8607 pm_f_1@@2))) o2_1@@5 f_9@@5) (= (select (|PolymorphicMapType_8547_8607_21793#PolymorphicMapType_8547| Heap@@7) o2_1@@5 f_9@@5) (select (|PolymorphicMapType_8547_8607_21793#PolymorphicMapType_8547| ExhaleHeap@@2) o2_1@@5 f_9@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8547_8607_21793#PolymorphicMapType_8547| ExhaleHeap@@2) o2_1@@5 f_9@@5))
))) (forall ((o2_1@@6 T@Ref) (f_9@@6 T@Field_8607_21926) ) (!  (=> (select (|PolymorphicMapType_9096_8607_22906#PolymorphicMapType_9096| (select (|PolymorphicMapType_8547_8607_21970#PolymorphicMapType_8547| Heap@@7) null (WandMaskField_8607 pm_f_1@@2))) o2_1@@6 f_9@@6) (= (select (|PolymorphicMapType_8547_8607_21970#PolymorphicMapType_8547| Heap@@7) o2_1@@6 f_9@@6) (select (|PolymorphicMapType_8547_8607_21970#PolymorphicMapType_8547| ExhaleHeap@@2) o2_1@@6 f_9@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8547_8607_21970#PolymorphicMapType_8547| ExhaleHeap@@2) o2_1@@6 f_9@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@5) (IsWandField_8607_23433 pm_f_1@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@8 T@PolymorphicMapType_8547) (ExhaleHeap@@3 T@PolymorphicMapType_8547) (Mask@@6 T@PolymorphicMapType_8568) (o_4 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@6) (=> (select (|PolymorphicMapType_8547_5037_53#PolymorphicMapType_8547| Heap@@8) o_4 $allocated) (select (|PolymorphicMapType_8547_5037_53#PolymorphicMapType_8547| ExhaleHeap@@3) o_4 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@6) (select (|PolymorphicMapType_8547_5037_53#PolymorphicMapType_8547| ExhaleHeap@@3) o_4 $allocated))
)))
(assert (forall ((p T@Field_8607_21793) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_8607_8607 p v_1 p w))
 :qid |stdinbpl.193:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8607_8607 p v_1 p w))
)))
(assert  (not (IsPredicateField_5334_5335 car)))
(assert  (not (IsWandField_5334_5335 car)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_8547) (ExhaleHeap@@4 T@PolymorphicMapType_8547) (Mask@@7 T@PolymorphicMapType_8568) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@7) (succHeap Heap@@9 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_8568) (o_2@@3 T@Ref) (f_4@@3 T@Field_8607_21926) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_8568_5334_25472#PolymorphicMapType_8568| Mask@@8) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_5334_26367 f_4@@3))) (not (IsWandField_5334_26383 f_4@@3))) (<= (select (|PolymorphicMapType_8568_5334_25472#PolymorphicMapType_8568| Mask@@8) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_8568_5334_25472#PolymorphicMapType_8568| Mask@@8) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_8568) (o_2@@4 T@Ref) (f_4@@4 T@Field_8607_21793) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_8568_5334_21793#PolymorphicMapType_8568| Mask@@9) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_8607_21884 f_4@@4))) (not (IsWandField_8607_23433 f_4@@4))) (<= (select (|PolymorphicMapType_8568_5334_21793#PolymorphicMapType_8568| Mask@@9) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_8568_5334_21793#PolymorphicMapType_8568| Mask@@9) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_8568) (o_2@@5 T@Ref) (f_4@@5 T@Field_8607_53) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_8568_5334_53#PolymorphicMapType_8568| Mask@@10) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_5334_53 f_4@@5))) (not (IsWandField_5334_53 f_4@@5))) (<= (select (|PolymorphicMapType_8568_5334_53#PolymorphicMapType_8568| Mask@@10) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_8568_5334_53#PolymorphicMapType_8568| Mask@@10) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_8568) (o_2@@6 T@Ref) (f_4@@6 T@Field_8620_8621) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_8568_5334_5335#PolymorphicMapType_8568| Mask@@11) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_5334_5335 f_4@@6))) (not (IsWandField_5334_5335 f_4@@6))) (<= (select (|PolymorphicMapType_8568_5334_5335#PolymorphicMapType_8568| Mask@@11) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_8568_5334_5335#PolymorphicMapType_8568| Mask@@11) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_8568) (o_2@@7 T@Ref) (f_4@@7 T@Field_8607_21926) ) (! (= (HasDirectPerm_8607_26738 Mask@@12 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_8568_5334_25472#PolymorphicMapType_8568| Mask@@12) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8607_26738 Mask@@12 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_8568) (o_2@@8 T@Ref) (f_4@@8 T@Field_8607_21793) ) (! (= (HasDirectPerm_8607_21857 Mask@@13 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_8568_5334_21793#PolymorphicMapType_8568| Mask@@13) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8607_21857 Mask@@13 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_8568) (o_2@@9 T@Ref) (f_4@@9 T@Field_8620_8621) ) (! (= (HasDirectPerm_8607_8621 Mask@@14 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_8568_5334_5335#PolymorphicMapType_8568| Mask@@14) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8607_8621 Mask@@14 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_8568) (o_2@@10 T@Ref) (f_4@@10 T@Field_8607_53) ) (! (= (HasDirectPerm_8607_53 Mask@@15 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_8568_5334_53#PolymorphicMapType_8568| Mask@@15) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8607_53 Mask@@15 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.181:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_8547) (ExhaleHeap@@5 T@PolymorphicMapType_8547) (Mask@@16 T@PolymorphicMapType_8568) (o_4@@0 T@Ref) (f_9@@7 T@Field_8607_21926) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_8607_26738 Mask@@16 o_4@@0 f_9@@7) (= (select (|PolymorphicMapType_8547_8607_21970#PolymorphicMapType_8547| Heap@@10) o_4@@0 f_9@@7) (select (|PolymorphicMapType_8547_8607_21970#PolymorphicMapType_8547| ExhaleHeap@@5) o_4@@0 f_9@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_8547_8607_21970#PolymorphicMapType_8547| ExhaleHeap@@5) o_4@@0 f_9@@7))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_8547) (ExhaleHeap@@6 T@PolymorphicMapType_8547) (Mask@@17 T@PolymorphicMapType_8568) (o_4@@1 T@Ref) (f_9@@8 T@Field_8607_21793) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_8607_21857 Mask@@17 o_4@@1 f_9@@8) (= (select (|PolymorphicMapType_8547_8607_21793#PolymorphicMapType_8547| Heap@@11) o_4@@1 f_9@@8) (select (|PolymorphicMapType_8547_8607_21793#PolymorphicMapType_8547| ExhaleHeap@@6) o_4@@1 f_9@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_8547_8607_21793#PolymorphicMapType_8547| ExhaleHeap@@6) o_4@@1 f_9@@8))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_8547) (ExhaleHeap@@7 T@PolymorphicMapType_8547) (Mask@@18 T@PolymorphicMapType_8568) (o_4@@2 T@Ref) (f_9@@9 T@Field_8620_8621) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_8607_8621 Mask@@18 o_4@@2 f_9@@9) (= (select (|PolymorphicMapType_8547_5040_5041#PolymorphicMapType_8547| Heap@@12) o_4@@2 f_9@@9) (select (|PolymorphicMapType_8547_5040_5041#PolymorphicMapType_8547| ExhaleHeap@@7) o_4@@2 f_9@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_8547_5040_5041#PolymorphicMapType_8547| ExhaleHeap@@7) o_4@@2 f_9@@9))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_8547) (ExhaleHeap@@8 T@PolymorphicMapType_8547) (Mask@@19 T@PolymorphicMapType_8568) (o_4@@3 T@Ref) (f_9@@10 T@Field_8607_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_8607_53 Mask@@19 o_4@@3 f_9@@10) (= (select (|PolymorphicMapType_8547_5037_53#PolymorphicMapType_8547| Heap@@13) o_4@@3 f_9@@10) (select (|PolymorphicMapType_8547_5037_53#PolymorphicMapType_8547| ExhaleHeap@@8) o_4@@3 f_9@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_8547_5037_53#PolymorphicMapType_8547| ExhaleHeap@@8) o_4@@3 f_9@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_8607_21926) ) (! (= (select (|PolymorphicMapType_8568_5334_25472#PolymorphicMapType_8568| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8568_5334_25472#PolymorphicMapType_8568| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_8607_21793) ) (! (= (select (|PolymorphicMapType_8568_5334_21793#PolymorphicMapType_8568| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8568_5334_21793#PolymorphicMapType_8568| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_8607_53) ) (! (= (select (|PolymorphicMapType_8568_5334_53#PolymorphicMapType_8568| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8568_5334_53#PolymorphicMapType_8568| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_8620_8621) ) (! (= (select (|PolymorphicMapType_8568_5334_5335#PolymorphicMapType_8568| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8568_5334_5335#PolymorphicMapType_8568| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_8568) (SummandMask1 T@PolymorphicMapType_8568) (SummandMask2 T@PolymorphicMapType_8568) (o_2@@15 T@Ref) (f_4@@15 T@Field_8607_21926) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_8568_5334_25472#PolymorphicMapType_8568| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_8568_5334_25472#PolymorphicMapType_8568| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_8568_5334_25472#PolymorphicMapType_8568| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8568_5334_25472#PolymorphicMapType_8568| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8568_5334_25472#PolymorphicMapType_8568| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8568_5334_25472#PolymorphicMapType_8568| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_8568) (SummandMask1@@0 T@PolymorphicMapType_8568) (SummandMask2@@0 T@PolymorphicMapType_8568) (o_2@@16 T@Ref) (f_4@@16 T@Field_8607_21793) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_8568_5334_21793#PolymorphicMapType_8568| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_8568_5334_21793#PolymorphicMapType_8568| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_8568_5334_21793#PolymorphicMapType_8568| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8568_5334_21793#PolymorphicMapType_8568| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8568_5334_21793#PolymorphicMapType_8568| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8568_5334_21793#PolymorphicMapType_8568| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_8568) (SummandMask1@@1 T@PolymorphicMapType_8568) (SummandMask2@@1 T@PolymorphicMapType_8568) (o_2@@17 T@Ref) (f_4@@17 T@Field_8607_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_8568_5334_53#PolymorphicMapType_8568| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_8568_5334_53#PolymorphicMapType_8568| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_8568_5334_53#PolymorphicMapType_8568| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8568_5334_53#PolymorphicMapType_8568| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8568_5334_53#PolymorphicMapType_8568| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8568_5334_53#PolymorphicMapType_8568| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_8568) (SummandMask1@@2 T@PolymorphicMapType_8568) (SummandMask2@@2 T@PolymorphicMapType_8568) (o_2@@18 T@Ref) (f_4@@18 T@Field_8620_8621) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_8568_5334_5335#PolymorphicMapType_8568| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_8568_5334_5335#PolymorphicMapType_8568| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_8568_5334_5335#PolymorphicMapType_8568| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8568_5334_5335#PolymorphicMapType_8568| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8568_5334_5335#PolymorphicMapType_8568| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8568_5334_5335#PolymorphicMapType_8568| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_8547) (Mask@@20 T@PolymorphicMapType_8568) (ref@@1 T@Ref) ) (!  (=> (state Heap@@14 Mask@@20) (= (|$'| Heap@@14 ref@@1) (|$#frame| (FrameFragment_5335 (select (|PolymorphicMapType_8547_5040_5041#PolymorphicMapType_8547| Heap@@14) ref@@1 car)) ref@@1)))
 :qid |stdinbpl.483:15|
 :skolemid |88|
 :pattern ( (state Heap@@14 Mask@@20) (|$'| Heap@@14 ref@@1))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_8547) (ref@@2 T@Ref) ) (!  (and (= ($ Heap@@15 ref@@2) (|$'| Heap@@15 ref@@2)) (dummyFunction_3506 (|$#triggerStateless| ref@@2)))
 :qid |stdinbpl.472:15|
 :skolemid |86|
 :pattern ( ($ Heap@@15 ref@@2))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_8547) (o_3 T@Ref) (f_10 T@Field_8607_21793) (v T@FrameType) ) (! (succHeap Heap@@16 (PolymorphicMapType_8547 (|PolymorphicMapType_8547_5037_53#PolymorphicMapType_8547| Heap@@16) (|PolymorphicMapType_8547_5040_5041#PolymorphicMapType_8547| Heap@@16) (|PolymorphicMapType_8547_8607_21970#PolymorphicMapType_8547| Heap@@16) (store (|PolymorphicMapType_8547_8607_21793#PolymorphicMapType_8547| Heap@@16) o_3 f_10 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8547 (|PolymorphicMapType_8547_5037_53#PolymorphicMapType_8547| Heap@@16) (|PolymorphicMapType_8547_5040_5041#PolymorphicMapType_8547| Heap@@16) (|PolymorphicMapType_8547_8607_21970#PolymorphicMapType_8547| Heap@@16) (store (|PolymorphicMapType_8547_8607_21793#PolymorphicMapType_8547| Heap@@16) o_3 f_10 v)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_8547) (o_3@@0 T@Ref) (f_10@@0 T@Field_8607_21926) (v@@0 T@PolymorphicMapType_9096) ) (! (succHeap Heap@@17 (PolymorphicMapType_8547 (|PolymorphicMapType_8547_5037_53#PolymorphicMapType_8547| Heap@@17) (|PolymorphicMapType_8547_5040_5041#PolymorphicMapType_8547| Heap@@17) (store (|PolymorphicMapType_8547_8607_21970#PolymorphicMapType_8547| Heap@@17) o_3@@0 f_10@@0 v@@0) (|PolymorphicMapType_8547_8607_21793#PolymorphicMapType_8547| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8547 (|PolymorphicMapType_8547_5037_53#PolymorphicMapType_8547| Heap@@17) (|PolymorphicMapType_8547_5040_5041#PolymorphicMapType_8547| Heap@@17) (store (|PolymorphicMapType_8547_8607_21970#PolymorphicMapType_8547| Heap@@17) o_3@@0 f_10@@0 v@@0) (|PolymorphicMapType_8547_8607_21793#PolymorphicMapType_8547| Heap@@17)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_8547) (o_3@@1 T@Ref) (f_10@@1 T@Field_8620_8621) (v@@1 T@Ref) ) (! (succHeap Heap@@18 (PolymorphicMapType_8547 (|PolymorphicMapType_8547_5037_53#PolymorphicMapType_8547| Heap@@18) (store (|PolymorphicMapType_8547_5040_5041#PolymorphicMapType_8547| Heap@@18) o_3@@1 f_10@@1 v@@1) (|PolymorphicMapType_8547_8607_21970#PolymorphicMapType_8547| Heap@@18) (|PolymorphicMapType_8547_8607_21793#PolymorphicMapType_8547| Heap@@18)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8547 (|PolymorphicMapType_8547_5037_53#PolymorphicMapType_8547| Heap@@18) (store (|PolymorphicMapType_8547_5040_5041#PolymorphicMapType_8547| Heap@@18) o_3@@1 f_10@@1 v@@1) (|PolymorphicMapType_8547_8607_21970#PolymorphicMapType_8547| Heap@@18) (|PolymorphicMapType_8547_8607_21793#PolymorphicMapType_8547| Heap@@18)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_8547) (o_3@@2 T@Ref) (f_10@@2 T@Field_8607_53) (v@@2 Bool) ) (! (succHeap Heap@@19 (PolymorphicMapType_8547 (store (|PolymorphicMapType_8547_5037_53#PolymorphicMapType_8547| Heap@@19) o_3@@2 f_10@@2 v@@2) (|PolymorphicMapType_8547_5040_5041#PolymorphicMapType_8547| Heap@@19) (|PolymorphicMapType_8547_8607_21970#PolymorphicMapType_8547| Heap@@19) (|PolymorphicMapType_8547_8607_21793#PolymorphicMapType_8547| Heap@@19)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8547 (store (|PolymorphicMapType_8547_5037_53#PolymorphicMapType_8547| Heap@@19) o_3@@2 f_10@@2 v@@2) (|PolymorphicMapType_8547_5040_5041#PolymorphicMapType_8547| Heap@@19) (|PolymorphicMapType_8547_8607_21970#PolymorphicMapType_8547| Heap@@19) (|PolymorphicMapType_8547_8607_21793#PolymorphicMapType_8547| Heap@@19)))
)))
(assert (forall ((a@@1 Int) (b@@0 Int) ) (! (= (<= a@@1 b@@0) (= (|Math#min| a@@1 b@@0) a@@1))
 :qid |stdinbpl.293:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@1 b@@0))
)))
(assert (forall ((a@@2 Int) (b@@1 Int) ) (! (= (<= b@@1 a@@2) (= (|Math#min| a@@2 b@@1) b@@1))
 :qid |stdinbpl.294:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@2 b@@1))
)))
(assert (forall ((o_3@@3 T@Ref) (f_8 T@Field_8620_8621) (Heap@@20 T@PolymorphicMapType_8547) ) (!  (=> (select (|PolymorphicMapType_8547_5037_53#PolymorphicMapType_8547| Heap@@20) o_3@@3 $allocated) (select (|PolymorphicMapType_8547_5037_53#PolymorphicMapType_8547| Heap@@20) (select (|PolymorphicMapType_8547_5040_5041#PolymorphicMapType_8547| Heap@@20) o_3@@3 f_8) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_8547_5040_5041#PolymorphicMapType_8547| Heap@@20) o_3@@3 f_8))
)))
(assert (forall ((p@@1 T@Field_8607_21793) (v_1@@0 T@FrameType) (q T@Field_8607_21793) (w@@0 T@FrameType) (r T@Field_8607_21793) (u T@FrameType) ) (!  (=> (and (InsidePredicate_8607_8607 p@@1 v_1@@0 q w@@0) (InsidePredicate_8607_8607 q w@@0 r u)) (InsidePredicate_8607_8607 p@@1 v_1@@0 r u))
 :qid |stdinbpl.188:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8607_8607 p@@1 v_1@@0 q w@@0) (InsidePredicate_8607_8607 q w@@0 r u))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (< a@@3 0) (= (|Math#clip| a@@3) 0))
 :qid |stdinbpl.299:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@21 T@PolymorphicMapType_8547) (uref@@1 T@Ref) (vref@@1 T@Ref) ) (!  (and (= (f_6@@0 Heap@@21 uref@@1 vref@@1) (|f'| Heap@@21 uref@@1 vref@@1)) (dummyFunction_3506 (|f#triggerStateless| uref@@1 vref@@1)))
 :qid |stdinbpl.404:15|
 :skolemid |82|
 :pattern ( (f_6@@0 Heap@@21 uref@@1 vref@@1))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_8547) (Mask@@21 T@PolymorphicMapType_8568) (uref@@2 T@Ref) (vref@@2 T@Ref) ) (!  (=> (state Heap@@22 Mask@@21) (= (|f'| Heap@@22 uref@@2 vref@@2) (|f#frame| (CombineFrames (FrameFragment_5335 (select (|PolymorphicMapType_8547_5040_5041#PolymorphicMapType_8547| Heap@@22) uref@@2 car)) (FrameFragment_7493 (ite (not (= uref@@2 vref@@2)) (FrameFragment_5335 (select (|PolymorphicMapType_8547_5040_5041#PolymorphicMapType_8547| Heap@@22) vref@@2 car)) EmptyFrame))) uref@@2 vref@@2)))
 :qid |stdinbpl.415:15|
 :skolemid |84|
 :pattern ( (state Heap@@22 Mask@@21) (|f'| Heap@@22 uref@@2 vref@@2))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun g_1 () (Array T@Ref Bool))
(declare-fun n1_1_1 () T@Ref)
(declare-fun n2_1_1 () T@Ref)
(declare-fun Heap@@23 () T@PolymorphicMapType_8547)
(declare-fun n1_7 () T@Ref)
(declare-fun n2_7 () T@Ref)
(declare-fun QPMask@0 () T@PolymorphicMapType_8568)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) T@Ref)
(set-info :boogie-vc-id mark)
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
 (=> (= (ControlFlow 0 0) 19) (let ((anon12_correct true))
(let ((anon20_Else_correct  (=> (and (not (and (select g_1 n1_1_1) (select g_1 n2_1_1))) (= (ControlFlow 0 15) 12)) anon12_correct)))
(let ((anon20_Then_correct  (=> (and (select g_1 n1_1_1) (select g_1 n2_1_1)) (and (=> (= (ControlFlow 0 13) (- 0 14)) (f_6@@0 Heap@@23 n1_1_1 n2_1_1)) (=> (f_6@@0 Heap@@23 n1_1_1 n2_1_1) (=> (= (ControlFlow 0 13) 12) anon12_correct))))))
(let ((anon7_correct true))
(let ((anon18_Else_correct  (=> (and (= n1_7 n2_7) (= (ControlFlow 0 8) 5)) anon7_correct)))
(let ((anon18_Then_correct  (=> (not (= n1_7 n2_7)) (and (=> (= (ControlFlow 0 6) (- 0 7)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_8568_5334_5335#PolymorphicMapType_8568| QPMask@0) n2_7 car)))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_8568_5334_5335#PolymorphicMapType_8568| QPMask@0) n2_7 car))) (=> (= (ControlFlow 0 6) 5) anon7_correct))))))
(let ((anon17_Then_correct  (and (=> (= (ControlFlow 0 9) (- 0 10)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_8568_5334_5335#PolymorphicMapType_8568| QPMask@0) n1_7 car)))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_8568_5334_5335#PolymorphicMapType_8568| QPMask@0) n1_7 car))) (and (=> (= (ControlFlow 0 9) 6) anon18_Then_correct) (=> (= (ControlFlow 0 9) 8) anon18_Else_correct))))))
(let ((anon8_correct true))
(let ((anon16_Then_correct  (=> (and (select g_1 n1_7) (select g_1 n2_7)) (and (=> (= (ControlFlow 0 11) 9) anon17_Then_correct) (=> (= (ControlFlow 0 11) 3) anon8_correct)))))
(let ((anon16_Else_correct  (=> (and (not (and (select g_1 n1_7) (select g_1 n2_7))) (= (ControlFlow 0 4) 3)) anon8_correct)))
(let ((anon19_Else_correct true))
(let ((anon14_Else_correct  (and (=> (= (ControlFlow 0 16) (- 0 17)) (forall ((n_1 T@Ref) (n_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_1 n_1_1)) (select g_1 n_1)) (select g_1 n_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_1 n_1_1)))
 :qid |stdinbpl.560:15|
 :skolemid |90|
))) (=> (forall ((n_1@@0 T@Ref) (n_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_1@@0 n_1_1@@0)) (select g_1 n_1@@0)) (select g_1 n_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_1@@0 n_1_1@@0)))
 :qid |stdinbpl.560:15|
 :skolemid |90|
)) (=> (and (and (forall ((n_1@@1 T@Ref) ) (!  (=> (and (select g_1 n_1@@1) (< NoPerm FullPerm)) (and (qpRange1 n_1@@1) (= (invRecv1 n_1@@1) n_1@@1)))
 :qid |stdinbpl.566:22|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_8547_5040_5041#PolymorphicMapType_8547| Heap@@23) n_1@@1 car))
 :pattern ( (select (|PolymorphicMapType_8568_5334_5335#PolymorphicMapType_8568| QPMask@0) n_1@@1 car))
 :pattern ( (select g_1 n_1@@1))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (select g_1 (invRecv1 o_9)) (< NoPerm FullPerm)) (qpRange1 o_9)) (= (invRecv1 o_9) o_9))
 :qid |stdinbpl.570:22|
 :skolemid |92|
 :pattern ( (invRecv1 o_9))
))) (and (forall ((n_1@@2 T@Ref) ) (!  (=> (select g_1 n_1@@2) (not (= n_1@@2 null)))
 :qid |stdinbpl.576:22|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_8547_5040_5041#PolymorphicMapType_8547| Heap@@23) n_1@@2 car))
 :pattern ( (select (|PolymorphicMapType_8568_5334_5335#PolymorphicMapType_8568| QPMask@0) n_1@@2 car))
 :pattern ( (select g_1 n_1@@2))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (select g_1 (invRecv1 o_9@@0)) (< NoPerm FullPerm)) (qpRange1 o_9@@0)) (and (=> (< NoPerm FullPerm) (= (invRecv1 o_9@@0) o_9@@0)) (= (select (|PolymorphicMapType_8568_5334_5335#PolymorphicMapType_8568| QPMask@0) o_9@@0 car) (+ (select (|PolymorphicMapType_8568_5334_5335#PolymorphicMapType_8568| ZeroMask) o_9@@0 car) FullPerm)))) (=> (not (and (and (select g_1 (invRecv1 o_9@@0)) (< NoPerm FullPerm)) (qpRange1 o_9@@0))) (= (select (|PolymorphicMapType_8568_5334_5335#PolymorphicMapType_8568| QPMask@0) o_9@@0 car) (select (|PolymorphicMapType_8568_5334_5335#PolymorphicMapType_8568| ZeroMask) o_9@@0 car))))
 :qid |stdinbpl.582:22|
 :skolemid |94|
 :pattern ( (select (|PolymorphicMapType_8568_5334_5335#PolymorphicMapType_8568| QPMask@0) o_9@@0 car))
)))) (=> (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_8607_53) ) (!  (=> true (= (select (|PolymorphicMapType_8568_5334_53#PolymorphicMapType_8568| ZeroMask) o_9@@1 f_5) (select (|PolymorphicMapType_8568_5334_53#PolymorphicMapType_8568| QPMask@0) o_9@@1 f_5)))
 :qid |stdinbpl.586:29|
 :skolemid |95|
 :pattern ( (select (|PolymorphicMapType_8568_5334_53#PolymorphicMapType_8568| ZeroMask) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_8568_5334_53#PolymorphicMapType_8568| QPMask@0) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_8620_8621) ) (!  (=> (not (= f_5@@0 car)) (= (select (|PolymorphicMapType_8568_5334_5335#PolymorphicMapType_8568| ZeroMask) o_9@@2 f_5@@0) (select (|PolymorphicMapType_8568_5334_5335#PolymorphicMapType_8568| QPMask@0) o_9@@2 f_5@@0)))
 :qid |stdinbpl.586:29|
 :skolemid |95|
 :pattern ( (select (|PolymorphicMapType_8568_5334_5335#PolymorphicMapType_8568| ZeroMask) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_8568_5334_5335#PolymorphicMapType_8568| QPMask@0) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_8607_21793) ) (!  (=> true (= (select (|PolymorphicMapType_8568_5334_21793#PolymorphicMapType_8568| ZeroMask) o_9@@3 f_5@@1) (select (|PolymorphicMapType_8568_5334_21793#PolymorphicMapType_8568| QPMask@0) o_9@@3 f_5@@1)))
 :qid |stdinbpl.586:29|
 :skolemid |95|
 :pattern ( (select (|PolymorphicMapType_8568_5334_21793#PolymorphicMapType_8568| ZeroMask) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_8568_5334_21793#PolymorphicMapType_8568| QPMask@0) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_8607_21926) ) (!  (=> true (= (select (|PolymorphicMapType_8568_5334_25472#PolymorphicMapType_8568| ZeroMask) o_9@@4 f_5@@2) (select (|PolymorphicMapType_8568_5334_25472#PolymorphicMapType_8568| QPMask@0) o_9@@4 f_5@@2)))
 :qid |stdinbpl.586:29|
 :skolemid |95|
 :pattern ( (select (|PolymorphicMapType_8568_5334_25472#PolymorphicMapType_8568| ZeroMask) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_8568_5334_25472#PolymorphicMapType_8568| QPMask@0) o_9@@4 f_5@@2))
))) (and (state Heap@@23 QPMask@0) (state Heap@@23 QPMask@0))) (and (and (and (and (=> (= (ControlFlow 0 16) 2) anon19_Else_correct) (=> (= (ControlFlow 0 16) 13) anon20_Then_correct)) (=> (= (ControlFlow 0 16) 15) anon20_Else_correct)) (=> (= (ControlFlow 0 16) 11) anon16_Then_correct)) (=> (= (ControlFlow 0 16) 4) anon16_Else_correct))))))))
(let ((anon14_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@23 ZeroMask) (=> (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (=> (= (ControlFlow 0 18) 1) anon14_Then_correct) (=> (= (ControlFlow 0 18) 16) anon14_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 19) 18) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
