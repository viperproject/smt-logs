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
(declare-sort T@Field_10771_53 0)
(declare-sort T@Field_10784_10785 0)
(declare-sort T@Field_10771_29898 0)
(declare-sort T@Field_10771_29765 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_10732 0)) (((PolymorphicMapType_10732 (|PolymorphicMapType_10732_6911_6912#PolymorphicMapType_10732| (Array T@Ref T@Field_10784_10785 Real)) (|PolymorphicMapType_10732_6911_53#PolymorphicMapType_10732| (Array T@Ref T@Field_10771_53 Real)) (|PolymorphicMapType_10732_6911_29765#PolymorphicMapType_10732| (Array T@Ref T@Field_10771_29765 Real)) (|PolymorphicMapType_10732_6911_33444#PolymorphicMapType_10732| (Array T@Ref T@Field_10771_29898 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_11260 0)) (((PolymorphicMapType_11260 (|PolymorphicMapType_11260_10771_53#PolymorphicMapType_11260| (Array T@Ref T@Field_10771_53 Bool)) (|PolymorphicMapType_11260_10771_10785#PolymorphicMapType_11260| (Array T@Ref T@Field_10784_10785 Bool)) (|PolymorphicMapType_11260_10771_29765#PolymorphicMapType_11260| (Array T@Ref T@Field_10771_29765 Bool)) (|PolymorphicMapType_11260_10771_30878#PolymorphicMapType_11260| (Array T@Ref T@Field_10771_29898 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10711 0)) (((PolymorphicMapType_10711 (|PolymorphicMapType_10711_6582_53#PolymorphicMapType_10711| (Array T@Ref T@Field_10771_53 Bool)) (|PolymorphicMapType_10711_6585_6586#PolymorphicMapType_10711| (Array T@Ref T@Field_10784_10785 T@Ref)) (|PolymorphicMapType_10711_10771_29942#PolymorphicMapType_10711| (Array T@Ref T@Field_10771_29898 T@PolymorphicMapType_11260)) (|PolymorphicMapType_10711_10771_29765#PolymorphicMapType_10711| (Array T@Ref T@Field_10771_29765 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_10771_53)
(declare-fun next () T@Field_10784_10785)
(declare-fun succHeap (T@PolymorphicMapType_10711 T@PolymorphicMapType_10711) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_10711 T@PolymorphicMapType_10711) Bool)
(declare-fun state (T@PolymorphicMapType_10711 T@PolymorphicMapType_10732) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_10732) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_11260)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |dummy'| (T@PolymorphicMapType_10711 Bool) Bool)
(declare-fun dummyFunction_3576 (Bool) Bool)
(declare-fun |dummy#triggerStateless| (Bool) Bool)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_10711 T@PolymorphicMapType_10711 T@PolymorphicMapType_10732) Bool)
(declare-fun IsPredicateField_10771_29856 (T@Field_10771_29765) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_10771 (T@Field_10771_29765) T@Field_10771_29898)
(declare-fun HasDirectPerm_10771_29829 (T@PolymorphicMapType_10732 T@Ref T@Field_10771_29765) Bool)
(declare-fun IsWandField_10771_31405 (T@Field_10771_29765) Bool)
(declare-fun WandMaskField_10771 (T@Field_10771_29765) T@Field_10771_29898)
(declare-fun dummyHeap () T@PolymorphicMapType_10711)
(declare-fun ZeroMask () T@PolymorphicMapType_10732)
(declare-fun InsidePredicate_10771_10771 (T@Field_10771_29765 T@FrameType T@Field_10771_29765 T@FrameType) Bool)
(declare-fun IsPredicateField_6911_6912 (T@Field_10784_10785) Bool)
(declare-fun IsWandField_6911_6912 (T@Field_10784_10785) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6911_34339 (T@Field_10771_29898) Bool)
(declare-fun IsWandField_6911_34355 (T@Field_10771_29898) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_6911_53 (T@Field_10771_53) Bool)
(declare-fun IsWandField_6911_53 (T@Field_10771_53) Bool)
(declare-fun HasDirectPerm_10771_34710 (T@PolymorphicMapType_10732 T@Ref T@Field_10771_29898) Bool)
(declare-fun HasDirectPerm_10771_10785 (T@PolymorphicMapType_10732 T@Ref T@Field_10784_10785) Bool)
(declare-fun HasDirectPerm_10771_53 (T@PolymorphicMapType_10732 T@Ref T@Field_10771_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_10732 T@PolymorphicMapType_10732 T@PolymorphicMapType_10732) Bool)
(declare-fun |dummy#frame| (T@FrameType Bool) Bool)
(declare-fun dummy_1 (T@PolymorphicMapType_10711 Bool) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_10711) (Heap1 T@PolymorphicMapType_10711) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_10711) (Mask T@PolymorphicMapType_10732) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_10711) (Heap1@@0 T@PolymorphicMapType_10711) (Heap2 T@PolymorphicMapType_10711) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_10771_29898) ) (!  (not (select (|PolymorphicMapType_11260_10771_30878#PolymorphicMapType_11260| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11260_10771_30878#PolymorphicMapType_11260| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_10771_29765) ) (!  (not (select (|PolymorphicMapType_11260_10771_29765#PolymorphicMapType_11260| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11260_10771_29765#PolymorphicMapType_11260| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_10784_10785) ) (!  (not (select (|PolymorphicMapType_11260_10771_10785#PolymorphicMapType_11260| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11260_10771_10785#PolymorphicMapType_11260| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_10771_53) ) (!  (not (select (|PolymorphicMapType_11260_10771_53#PolymorphicMapType_11260| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11260_10771_53#PolymorphicMapType_11260| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.318:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_10711) (b_24 Bool) ) (! (dummyFunction_3576 (|dummy#triggerStateless| b_24))
 :qid |stdinbpl.431:15|
 :skolemid |83|
 :pattern ( (|dummy'| Heap@@0 b_24))
)))
(assert (forall ((a@@0 Int) ) (!  (=> (<= 0 a@@0) (= (|Math#clip| a@@0) a@@0))
 :qid |stdinbpl.321:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_10711) (ExhaleHeap T@PolymorphicMapType_10711) (Mask@@0 T@PolymorphicMapType_10732) (pm_f_20 T@Field_10771_29765) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_10771_29829 Mask@@0 null pm_f_20) (IsPredicateField_10771_29856 pm_f_20)) (= (select (|PolymorphicMapType_10711_10771_29942#PolymorphicMapType_10711| Heap@@1) null (PredicateMaskField_10771 pm_f_20)) (select (|PolymorphicMapType_10711_10771_29942#PolymorphicMapType_10711| ExhaleHeap) null (PredicateMaskField_10771 pm_f_20)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_10771_29856 pm_f_20) (select (|PolymorphicMapType_10711_10771_29942#PolymorphicMapType_10711| ExhaleHeap) null (PredicateMaskField_10771 pm_f_20)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_10711) (ExhaleHeap@@0 T@PolymorphicMapType_10711) (Mask@@1 T@PolymorphicMapType_10732) (pm_f_20@@0 T@Field_10771_29765) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_10771_29829 Mask@@1 null pm_f_20@@0) (IsWandField_10771_31405 pm_f_20@@0)) (= (select (|PolymorphicMapType_10711_10771_29942#PolymorphicMapType_10711| Heap@@2) null (WandMaskField_10771 pm_f_20@@0)) (select (|PolymorphicMapType_10711_10771_29942#PolymorphicMapType_10711| ExhaleHeap@@0) null (WandMaskField_10771 pm_f_20@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsWandField_10771_31405 pm_f_20@@0) (select (|PolymorphicMapType_10711_10771_29942#PolymorphicMapType_10711| ExhaleHeap@@0) null (WandMaskField_10771 pm_f_20@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_10711) (ExhaleHeap@@1 T@PolymorphicMapType_10711) (Mask@@2 T@PolymorphicMapType_10732) (pm_f_20@@1 T@Field_10771_29765) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_10771_29829 Mask@@2 null pm_f_20@@1) (IsPredicateField_10771_29856 pm_f_20@@1)) (and (and (and (forall ((o2_20 T@Ref) (f_53 T@Field_10771_53) ) (!  (=> (select (|PolymorphicMapType_11260_10771_53#PolymorphicMapType_11260| (select (|PolymorphicMapType_10711_10771_29942#PolymorphicMapType_10711| Heap@@3) null (PredicateMaskField_10771 pm_f_20@@1))) o2_20 f_53) (= (select (|PolymorphicMapType_10711_6582_53#PolymorphicMapType_10711| Heap@@3) o2_20 f_53) (select (|PolymorphicMapType_10711_6582_53#PolymorphicMapType_10711| ExhaleHeap@@1) o2_20 f_53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10711_6582_53#PolymorphicMapType_10711| ExhaleHeap@@1) o2_20 f_53))
)) (forall ((o2_20@@0 T@Ref) (f_53@@0 T@Field_10784_10785) ) (!  (=> (select (|PolymorphicMapType_11260_10771_10785#PolymorphicMapType_11260| (select (|PolymorphicMapType_10711_10771_29942#PolymorphicMapType_10711| Heap@@3) null (PredicateMaskField_10771 pm_f_20@@1))) o2_20@@0 f_53@@0) (= (select (|PolymorphicMapType_10711_6585_6586#PolymorphicMapType_10711| Heap@@3) o2_20@@0 f_53@@0) (select (|PolymorphicMapType_10711_6585_6586#PolymorphicMapType_10711| ExhaleHeap@@1) o2_20@@0 f_53@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10711_6585_6586#PolymorphicMapType_10711| ExhaleHeap@@1) o2_20@@0 f_53@@0))
))) (forall ((o2_20@@1 T@Ref) (f_53@@1 T@Field_10771_29765) ) (!  (=> (select (|PolymorphicMapType_11260_10771_29765#PolymorphicMapType_11260| (select (|PolymorphicMapType_10711_10771_29942#PolymorphicMapType_10711| Heap@@3) null (PredicateMaskField_10771 pm_f_20@@1))) o2_20@@1 f_53@@1) (= (select (|PolymorphicMapType_10711_10771_29765#PolymorphicMapType_10711| Heap@@3) o2_20@@1 f_53@@1) (select (|PolymorphicMapType_10711_10771_29765#PolymorphicMapType_10711| ExhaleHeap@@1) o2_20@@1 f_53@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10711_10771_29765#PolymorphicMapType_10711| ExhaleHeap@@1) o2_20@@1 f_53@@1))
))) (forall ((o2_20@@2 T@Ref) (f_53@@2 T@Field_10771_29898) ) (!  (=> (select (|PolymorphicMapType_11260_10771_30878#PolymorphicMapType_11260| (select (|PolymorphicMapType_10711_10771_29942#PolymorphicMapType_10711| Heap@@3) null (PredicateMaskField_10771 pm_f_20@@1))) o2_20@@2 f_53@@2) (= (select (|PolymorphicMapType_10711_10771_29942#PolymorphicMapType_10711| Heap@@3) o2_20@@2 f_53@@2) (select (|PolymorphicMapType_10711_10771_29942#PolymorphicMapType_10711| ExhaleHeap@@1) o2_20@@2 f_53@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10711_10771_29942#PolymorphicMapType_10711| ExhaleHeap@@1) o2_20@@2 f_53@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsPredicateField_10771_29856 pm_f_20@@1))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_10711) (ExhaleHeap@@2 T@PolymorphicMapType_10711) (Mask@@3 T@PolymorphicMapType_10732) (pm_f_20@@2 T@Field_10771_29765) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_10771_29829 Mask@@3 null pm_f_20@@2) (IsWandField_10771_31405 pm_f_20@@2)) (and (and (and (forall ((o2_20@@3 T@Ref) (f_53@@3 T@Field_10771_53) ) (!  (=> (select (|PolymorphicMapType_11260_10771_53#PolymorphicMapType_11260| (select (|PolymorphicMapType_10711_10771_29942#PolymorphicMapType_10711| Heap@@4) null (WandMaskField_10771 pm_f_20@@2))) o2_20@@3 f_53@@3) (= (select (|PolymorphicMapType_10711_6582_53#PolymorphicMapType_10711| Heap@@4) o2_20@@3 f_53@@3) (select (|PolymorphicMapType_10711_6582_53#PolymorphicMapType_10711| ExhaleHeap@@2) o2_20@@3 f_53@@3)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10711_6582_53#PolymorphicMapType_10711| ExhaleHeap@@2) o2_20@@3 f_53@@3))
)) (forall ((o2_20@@4 T@Ref) (f_53@@4 T@Field_10784_10785) ) (!  (=> (select (|PolymorphicMapType_11260_10771_10785#PolymorphicMapType_11260| (select (|PolymorphicMapType_10711_10771_29942#PolymorphicMapType_10711| Heap@@4) null (WandMaskField_10771 pm_f_20@@2))) o2_20@@4 f_53@@4) (= (select (|PolymorphicMapType_10711_6585_6586#PolymorphicMapType_10711| Heap@@4) o2_20@@4 f_53@@4) (select (|PolymorphicMapType_10711_6585_6586#PolymorphicMapType_10711| ExhaleHeap@@2) o2_20@@4 f_53@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10711_6585_6586#PolymorphicMapType_10711| ExhaleHeap@@2) o2_20@@4 f_53@@4))
))) (forall ((o2_20@@5 T@Ref) (f_53@@5 T@Field_10771_29765) ) (!  (=> (select (|PolymorphicMapType_11260_10771_29765#PolymorphicMapType_11260| (select (|PolymorphicMapType_10711_10771_29942#PolymorphicMapType_10711| Heap@@4) null (WandMaskField_10771 pm_f_20@@2))) o2_20@@5 f_53@@5) (= (select (|PolymorphicMapType_10711_10771_29765#PolymorphicMapType_10711| Heap@@4) o2_20@@5 f_53@@5) (select (|PolymorphicMapType_10711_10771_29765#PolymorphicMapType_10711| ExhaleHeap@@2) o2_20@@5 f_53@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10711_10771_29765#PolymorphicMapType_10711| ExhaleHeap@@2) o2_20@@5 f_53@@5))
))) (forall ((o2_20@@6 T@Ref) (f_53@@6 T@Field_10771_29898) ) (!  (=> (select (|PolymorphicMapType_11260_10771_30878#PolymorphicMapType_11260| (select (|PolymorphicMapType_10711_10771_29942#PolymorphicMapType_10711| Heap@@4) null (WandMaskField_10771 pm_f_20@@2))) o2_20@@6 f_53@@6) (= (select (|PolymorphicMapType_10711_10771_29942#PolymorphicMapType_10711| Heap@@4) o2_20@@6 f_53@@6) (select (|PolymorphicMapType_10711_10771_29942#PolymorphicMapType_10711| ExhaleHeap@@2) o2_20@@6 f_53@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10711_10771_29942#PolymorphicMapType_10711| ExhaleHeap@@2) o2_20@@6 f_53@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_10771_31405 pm_f_20@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@5 T@PolymorphicMapType_10711) (ExhaleHeap@@3 T@PolymorphicMapType_10711) (Mask@@4 T@PolymorphicMapType_10732) (o_41 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_10711_6582_53#PolymorphicMapType_10711| Heap@@5) o_41 $allocated) (select (|PolymorphicMapType_10711_6582_53#PolymorphicMapType_10711| ExhaleHeap@@3) o_41 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_10711_6582_53#PolymorphicMapType_10711| ExhaleHeap@@3) o_41 $allocated))
)))
(assert (forall ((p T@Field_10771_29765) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_10771_10771 p v_1 p w))
 :qid |stdinbpl.216:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_10771_10771 p v_1 p w))
)))
(assert  (not (IsPredicateField_6911_6912 next)))
(assert  (not (IsWandField_6911_6912 next)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_10711) (ExhaleHeap@@4 T@PolymorphicMapType_10711) (Mask@@5 T@PolymorphicMapType_10732) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (succHeap Heap@@6 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_10732) (o_2@@3 T@Ref) (f_4@@3 T@Field_10771_29898) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_10732_6911_33444#PolymorphicMapType_10732| Mask@@6) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_6911_34339 f_4@@3))) (not (IsWandField_6911_34355 f_4@@3))) (<= (select (|PolymorphicMapType_10732_6911_33444#PolymorphicMapType_10732| Mask@@6) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_10732_6911_33444#PolymorphicMapType_10732| Mask@@6) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_10732) (o_2@@4 T@Ref) (f_4@@4 T@Field_10771_29765) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_10732_6911_29765#PolymorphicMapType_10732| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_10771_29856 f_4@@4))) (not (IsWandField_10771_31405 f_4@@4))) (<= (select (|PolymorphicMapType_10732_6911_29765#PolymorphicMapType_10732| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_10732_6911_29765#PolymorphicMapType_10732| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_10732) (o_2@@5 T@Ref) (f_4@@5 T@Field_10771_53) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_10732_6911_53#PolymorphicMapType_10732| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_6911_53 f_4@@5))) (not (IsWandField_6911_53 f_4@@5))) (<= (select (|PolymorphicMapType_10732_6911_53#PolymorphicMapType_10732| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_10732_6911_53#PolymorphicMapType_10732| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_10732) (o_2@@6 T@Ref) (f_4@@6 T@Field_10784_10785) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_10732_6911_6912#PolymorphicMapType_10732| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_6911_6912 f_4@@6))) (not (IsWandField_6911_6912 f_4@@6))) (<= (select (|PolymorphicMapType_10732_6911_6912#PolymorphicMapType_10732| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_10732_6911_6912#PolymorphicMapType_10732| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_10732) (o_2@@7 T@Ref) (f_4@@7 T@Field_10771_29898) ) (! (= (HasDirectPerm_10771_34710 Mask@@10 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_10732_6911_33444#PolymorphicMapType_10732| Mask@@10) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10771_34710 Mask@@10 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_10732) (o_2@@8 T@Ref) (f_4@@8 T@Field_10771_29765) ) (! (= (HasDirectPerm_10771_29829 Mask@@11 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_10732_6911_29765#PolymorphicMapType_10732| Mask@@11) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10771_29829 Mask@@11 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_10732) (o_2@@9 T@Ref) (f_4@@9 T@Field_10784_10785) ) (! (= (HasDirectPerm_10771_10785 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_10732_6911_6912#PolymorphicMapType_10732| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10771_10785 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_10732) (o_2@@10 T@Ref) (f_4@@10 T@Field_10771_53) ) (! (= (HasDirectPerm_10771_53 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_10732_6911_53#PolymorphicMapType_10732| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10771_53 Mask@@13 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.204:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_10711) (ExhaleHeap@@5 T@PolymorphicMapType_10711) (Mask@@14 T@PolymorphicMapType_10732) (o_41@@0 T@Ref) (f_53@@7 T@Field_10771_29898) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@14) (=> (HasDirectPerm_10771_34710 Mask@@14 o_41@@0 f_53@@7) (= (select (|PolymorphicMapType_10711_10771_29942#PolymorphicMapType_10711| Heap@@7) o_41@@0 f_53@@7) (select (|PolymorphicMapType_10711_10771_29942#PolymorphicMapType_10711| ExhaleHeap@@5) o_41@@0 f_53@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@14) (select (|PolymorphicMapType_10711_10771_29942#PolymorphicMapType_10711| ExhaleHeap@@5) o_41@@0 f_53@@7))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_10711) (ExhaleHeap@@6 T@PolymorphicMapType_10711) (Mask@@15 T@PolymorphicMapType_10732) (o_41@@1 T@Ref) (f_53@@8 T@Field_10771_29765) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@15) (=> (HasDirectPerm_10771_29829 Mask@@15 o_41@@1 f_53@@8) (= (select (|PolymorphicMapType_10711_10771_29765#PolymorphicMapType_10711| Heap@@8) o_41@@1 f_53@@8) (select (|PolymorphicMapType_10711_10771_29765#PolymorphicMapType_10711| ExhaleHeap@@6) o_41@@1 f_53@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@15) (select (|PolymorphicMapType_10711_10771_29765#PolymorphicMapType_10711| ExhaleHeap@@6) o_41@@1 f_53@@8))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_10711) (ExhaleHeap@@7 T@PolymorphicMapType_10711) (Mask@@16 T@PolymorphicMapType_10732) (o_41@@2 T@Ref) (f_53@@9 T@Field_10784_10785) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@16) (=> (HasDirectPerm_10771_10785 Mask@@16 o_41@@2 f_53@@9) (= (select (|PolymorphicMapType_10711_6585_6586#PolymorphicMapType_10711| Heap@@9) o_41@@2 f_53@@9) (select (|PolymorphicMapType_10711_6585_6586#PolymorphicMapType_10711| ExhaleHeap@@7) o_41@@2 f_53@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@16) (select (|PolymorphicMapType_10711_6585_6586#PolymorphicMapType_10711| ExhaleHeap@@7) o_41@@2 f_53@@9))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_10711) (ExhaleHeap@@8 T@PolymorphicMapType_10711) (Mask@@17 T@PolymorphicMapType_10732) (o_41@@3 T@Ref) (f_53@@10 T@Field_10771_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@17) (=> (HasDirectPerm_10771_53 Mask@@17 o_41@@3 f_53@@10) (= (select (|PolymorphicMapType_10711_6582_53#PolymorphicMapType_10711| Heap@@10) o_41@@3 f_53@@10) (select (|PolymorphicMapType_10711_6582_53#PolymorphicMapType_10711| ExhaleHeap@@8) o_41@@3 f_53@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@17) (select (|PolymorphicMapType_10711_6582_53#PolymorphicMapType_10711| ExhaleHeap@@8) o_41@@3 f_53@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_10771_29898) ) (! (= (select (|PolymorphicMapType_10732_6911_33444#PolymorphicMapType_10732| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10732_6911_33444#PolymorphicMapType_10732| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_10771_29765) ) (! (= (select (|PolymorphicMapType_10732_6911_29765#PolymorphicMapType_10732| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10732_6911_29765#PolymorphicMapType_10732| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_10771_53) ) (! (= (select (|PolymorphicMapType_10732_6911_53#PolymorphicMapType_10732| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10732_6911_53#PolymorphicMapType_10732| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_10784_10785) ) (! (= (select (|PolymorphicMapType_10732_6911_6912#PolymorphicMapType_10732| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10732_6911_6912#PolymorphicMapType_10732| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_10732) (SummandMask1 T@PolymorphicMapType_10732) (SummandMask2 T@PolymorphicMapType_10732) (o_2@@15 T@Ref) (f_4@@15 T@Field_10771_29898) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_10732_6911_33444#PolymorphicMapType_10732| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_10732_6911_33444#PolymorphicMapType_10732| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_10732_6911_33444#PolymorphicMapType_10732| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10732_6911_33444#PolymorphicMapType_10732| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10732_6911_33444#PolymorphicMapType_10732| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10732_6911_33444#PolymorphicMapType_10732| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_10732) (SummandMask1@@0 T@PolymorphicMapType_10732) (SummandMask2@@0 T@PolymorphicMapType_10732) (o_2@@16 T@Ref) (f_4@@16 T@Field_10771_29765) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_10732_6911_29765#PolymorphicMapType_10732| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_10732_6911_29765#PolymorphicMapType_10732| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_10732_6911_29765#PolymorphicMapType_10732| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10732_6911_29765#PolymorphicMapType_10732| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10732_6911_29765#PolymorphicMapType_10732| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10732_6911_29765#PolymorphicMapType_10732| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_10732) (SummandMask1@@1 T@PolymorphicMapType_10732) (SummandMask2@@1 T@PolymorphicMapType_10732) (o_2@@17 T@Ref) (f_4@@17 T@Field_10771_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_10732_6911_53#PolymorphicMapType_10732| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_10732_6911_53#PolymorphicMapType_10732| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_10732_6911_53#PolymorphicMapType_10732| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10732_6911_53#PolymorphicMapType_10732| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10732_6911_53#PolymorphicMapType_10732| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10732_6911_53#PolymorphicMapType_10732| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_10732) (SummandMask1@@2 T@PolymorphicMapType_10732) (SummandMask2@@2 T@PolymorphicMapType_10732) (o_2@@18 T@Ref) (f_4@@18 T@Field_10784_10785) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_10732_6911_6912#PolymorphicMapType_10732| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_10732_6911_6912#PolymorphicMapType_10732| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_10732_6911_6912#PolymorphicMapType_10732| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10732_6911_6912#PolymorphicMapType_10732| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10732_6911_6912#PolymorphicMapType_10732| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10732_6911_6912#PolymorphicMapType_10732| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_10711) (Mask@@18 T@PolymorphicMapType_10732) (b_24@@0 Bool) ) (!  (=> (state Heap@@11 Mask@@18) (= (|dummy'| Heap@@11 b_24@@0) (|dummy#frame| EmptyFrame b_24@@0)))
 :qid |stdinbpl.438:15|
 :skolemid |84|
 :pattern ( (state Heap@@11 Mask@@18) (|dummy'| Heap@@11 b_24@@0))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_10711) (b_24@@1 Bool) ) (!  (and (= (dummy_1 Heap@@12 b_24@@1) (|dummy'| Heap@@12 b_24@@1)) (dummyFunction_3576 (|dummy#triggerStateless| b_24@@1)))
 :qid |stdinbpl.427:15|
 :skolemid |82|
 :pattern ( (dummy_1 Heap@@12 b_24@@1))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_10711) (o_15 T@Ref) (f_54 T@Field_10771_29765) (v T@FrameType) ) (! (succHeap Heap@@13 (PolymorphicMapType_10711 (|PolymorphicMapType_10711_6582_53#PolymorphicMapType_10711| Heap@@13) (|PolymorphicMapType_10711_6585_6586#PolymorphicMapType_10711| Heap@@13) (|PolymorphicMapType_10711_10771_29942#PolymorphicMapType_10711| Heap@@13) (store (|PolymorphicMapType_10711_10771_29765#PolymorphicMapType_10711| Heap@@13) o_15 f_54 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10711 (|PolymorphicMapType_10711_6582_53#PolymorphicMapType_10711| Heap@@13) (|PolymorphicMapType_10711_6585_6586#PolymorphicMapType_10711| Heap@@13) (|PolymorphicMapType_10711_10771_29942#PolymorphicMapType_10711| Heap@@13) (store (|PolymorphicMapType_10711_10771_29765#PolymorphicMapType_10711| Heap@@13) o_15 f_54 v)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_10711) (o_15@@0 T@Ref) (f_54@@0 T@Field_10771_29898) (v@@0 T@PolymorphicMapType_11260) ) (! (succHeap Heap@@14 (PolymorphicMapType_10711 (|PolymorphicMapType_10711_6582_53#PolymorphicMapType_10711| Heap@@14) (|PolymorphicMapType_10711_6585_6586#PolymorphicMapType_10711| Heap@@14) (store (|PolymorphicMapType_10711_10771_29942#PolymorphicMapType_10711| Heap@@14) o_15@@0 f_54@@0 v@@0) (|PolymorphicMapType_10711_10771_29765#PolymorphicMapType_10711| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10711 (|PolymorphicMapType_10711_6582_53#PolymorphicMapType_10711| Heap@@14) (|PolymorphicMapType_10711_6585_6586#PolymorphicMapType_10711| Heap@@14) (store (|PolymorphicMapType_10711_10771_29942#PolymorphicMapType_10711| Heap@@14) o_15@@0 f_54@@0 v@@0) (|PolymorphicMapType_10711_10771_29765#PolymorphicMapType_10711| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_10711) (o_15@@1 T@Ref) (f_54@@1 T@Field_10784_10785) (v@@1 T@Ref) ) (! (succHeap Heap@@15 (PolymorphicMapType_10711 (|PolymorphicMapType_10711_6582_53#PolymorphicMapType_10711| Heap@@15) (store (|PolymorphicMapType_10711_6585_6586#PolymorphicMapType_10711| Heap@@15) o_15@@1 f_54@@1 v@@1) (|PolymorphicMapType_10711_10771_29942#PolymorphicMapType_10711| Heap@@15) (|PolymorphicMapType_10711_10771_29765#PolymorphicMapType_10711| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10711 (|PolymorphicMapType_10711_6582_53#PolymorphicMapType_10711| Heap@@15) (store (|PolymorphicMapType_10711_6585_6586#PolymorphicMapType_10711| Heap@@15) o_15@@1 f_54@@1 v@@1) (|PolymorphicMapType_10711_10771_29942#PolymorphicMapType_10711| Heap@@15) (|PolymorphicMapType_10711_10771_29765#PolymorphicMapType_10711| Heap@@15)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_10711) (o_15@@2 T@Ref) (f_54@@2 T@Field_10771_53) (v@@2 Bool) ) (! (succHeap Heap@@16 (PolymorphicMapType_10711 (store (|PolymorphicMapType_10711_6582_53#PolymorphicMapType_10711| Heap@@16) o_15@@2 f_54@@2 v@@2) (|PolymorphicMapType_10711_6585_6586#PolymorphicMapType_10711| Heap@@16) (|PolymorphicMapType_10711_10771_29942#PolymorphicMapType_10711| Heap@@16) (|PolymorphicMapType_10711_10771_29765#PolymorphicMapType_10711| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10711 (store (|PolymorphicMapType_10711_6582_53#PolymorphicMapType_10711| Heap@@16) o_15@@2 f_54@@2 v@@2) (|PolymorphicMapType_10711_6585_6586#PolymorphicMapType_10711| Heap@@16) (|PolymorphicMapType_10711_10771_29942#PolymorphicMapType_10711| Heap@@16) (|PolymorphicMapType_10711_10771_29765#PolymorphicMapType_10711| Heap@@16)))
)))
(assert (forall ((a@@1 Int) (b@@0 Int) ) (! (= (<= a@@1 b@@0) (= (|Math#min| a@@1 b@@0) a@@1))
 :qid |stdinbpl.316:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@1 b@@0))
)))
(assert (forall ((a@@2 Int) (b@@1 Int) ) (! (= (<= b@@1 a@@2) (= (|Math#min| a@@2 b@@1) b@@1))
 :qid |stdinbpl.317:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@2 b@@1))
)))
(assert (forall ((o_15@@3 T@Ref) (f_23 T@Field_10784_10785) (Heap@@17 T@PolymorphicMapType_10711) ) (!  (=> (select (|PolymorphicMapType_10711_6582_53#PolymorphicMapType_10711| Heap@@17) o_15@@3 $allocated) (select (|PolymorphicMapType_10711_6582_53#PolymorphicMapType_10711| Heap@@17) (select (|PolymorphicMapType_10711_6585_6586#PolymorphicMapType_10711| Heap@@17) o_15@@3 f_23) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_10711_6585_6586#PolymorphicMapType_10711| Heap@@17) o_15@@3 f_23))
)))
(assert (forall ((p@@1 T@Field_10771_29765) (v_1@@0 T@FrameType) (q T@Field_10771_29765) (w@@0 T@FrameType) (r T@Field_10771_29765) (u T@FrameType) ) (!  (=> (and (InsidePredicate_10771_10771 p@@1 v_1@@0 q w@@0) (InsidePredicate_10771_10771 q w@@0 r u)) (InsidePredicate_10771_10771 p@@1 v_1@@0 r u))
 :qid |stdinbpl.211:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10771_10771 p@@1 v_1@@0 q w@@0) (InsidePredicate_10771_10771 q w@@0 r u))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (< a@@3 0) (= (|Math#clip| a@@3) 0))
 :qid |stdinbpl.322:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun g_1 () (Array T@Ref Bool))
(declare-fun PostHeap@0 () T@PolymorphicMapType_10711)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_10711)
(declare-fun QPMask@2 () T@PolymorphicMapType_10732)
(declare-fun qpRange10 (T@Ref) Bool)
(declare-fun invRecv10 (T@Ref) T@Ref)
(declare-fun QPMask@1 () T@PolymorphicMapType_10732)
(declare-fun neverTriggered8 (T@Ref) Bool)
(declare-fun QPMask@3 () T@PolymorphicMapType_10732)
(declare-fun Heap@@18 () T@PolymorphicMapType_10711)
(declare-fun dummyFunction_6912 (T@Ref) Bool)
(declare-fun neverTriggered9 (T@Ref) Bool)
(declare-fun QPMask@0 () T@PolymorphicMapType_10732)
(declare-fun qpRange9 (T@Ref) Bool)
(declare-fun invRecv9 (T@Ref) T@Ref)
(declare-fun qpRange6 (T@Ref) Bool)
(declare-fun invRecv6 (T@Ref) T@Ref)
(declare-fun AssumeFunctionsAbove () Int)
(set-info :boogie-vc-id inhExhTestB)
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
 (=> (= (ControlFlow 0 0) 20) (let ((anon13_Else_correct  (=> (= (ControlFlow 0 15) (- 0 14)) (forall ((n_0_3 T@Ref) (n_0_3_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_0_3 n_0_3_1)) (select g_1 n_0_3)) (select g_1 n_0_3_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_0_3 n_0_3_1)))
 :qid |stdinbpl.822:15|
 :skolemid |123|
)))))
(let ((anon13_Then_correct true))
(let ((anon12_Then_correct  (=> (state PostHeap@0 ZeroMask) (and (=> (= (ControlFlow 0 16) 13) anon13_Then_correct) (=> (= (ControlFlow 0 16) 15) anon13_Else_correct)))))
(let ((anon15_Else_correct  (and (=> (= (ControlFlow 0 5) (- 0 8)) (forall ((n_0_8 T@Ref) (n_0_8_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_0_8 n_0_8_1)) (select g_1 n_0_8)) (select g_1 n_0_8_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_0_8 n_0_8_1)))
 :qid |stdinbpl.930:15|
 :skolemid |136|
))) (=> (forall ((n_0_8@@0 T@Ref) (n_0_8_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_0_8@@0 n_0_8_1@@0)) (select g_1 n_0_8@@0)) (select g_1 n_0_8_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_0_8@@0 n_0_8_1@@0)))
 :qid |stdinbpl.930:15|
 :skolemid |136|
)) (=> (and (forall ((n_0_8@@1 T@Ref) ) (!  (=> (and (select g_1 n_0_8@@1) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange10 n_0_8@@1) (= (invRecv10 n_0_8@@1) n_0_8@@1)))
 :qid |stdinbpl.936:22|
 :skolemid |137|
 :pattern ( (select (|PolymorphicMapType_10711_6585_6586#PolymorphicMapType_10711| ExhaleHeap@0) n_0_8@@1 next))
 :pattern ( (select (|PolymorphicMapType_10732_6911_6912#PolymorphicMapType_10732| QPMask@2) n_0_8@@1 next))
 :pattern ( (select (|PolymorphicMapType_10711_6585_6586#PolymorphicMapType_10711| ExhaleHeap@0) n_0_8@@1 next))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (select g_1 (invRecv10 o_9)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange10 o_9)) (= (invRecv10 o_9) o_9))
 :qid |stdinbpl.940:22|
 :skolemid |138|
 :pattern ( (invRecv10 o_9))
))) (and (=> (= (ControlFlow 0 5) (- 0 7)) (forall ((n_0_8@@2 T@Ref) ) (!  (=> (select g_1 n_0_8@@2) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.946:15|
 :skolemid |139|
 :pattern ( (select (|PolymorphicMapType_10711_6585_6586#PolymorphicMapType_10711| ExhaleHeap@0) n_0_8@@2 next))
 :pattern ( (select (|PolymorphicMapType_10732_6911_6912#PolymorphicMapType_10732| QPMask@2) n_0_8@@2 next))
 :pattern ( (select (|PolymorphicMapType_10711_6585_6586#PolymorphicMapType_10711| ExhaleHeap@0) n_0_8@@2 next))
))) (=> (forall ((n_0_8@@3 T@Ref) ) (!  (=> (select g_1 n_0_8@@3) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.946:15|
 :skolemid |139|
 :pattern ( (select (|PolymorphicMapType_10711_6585_6586#PolymorphicMapType_10711| ExhaleHeap@0) n_0_8@@3 next))
 :pattern ( (select (|PolymorphicMapType_10732_6911_6912#PolymorphicMapType_10732| QPMask@2) n_0_8@@3 next))
 :pattern ( (select (|PolymorphicMapType_10711_6585_6586#PolymorphicMapType_10711| ExhaleHeap@0) n_0_8@@3 next))
)) (=> (and (forall ((n_0_8@@4 T@Ref) ) (!  (=> (and (select g_1 n_0_8@@4) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= n_0_8@@4 null)))
 :qid |stdinbpl.952:22|
 :skolemid |140|
 :pattern ( (select (|PolymorphicMapType_10711_6585_6586#PolymorphicMapType_10711| ExhaleHeap@0) n_0_8@@4 next))
 :pattern ( (select (|PolymorphicMapType_10732_6911_6912#PolymorphicMapType_10732| QPMask@2) n_0_8@@4 next))
 :pattern ( (select (|PolymorphicMapType_10711_6585_6586#PolymorphicMapType_10711| ExhaleHeap@0) n_0_8@@4 next))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (select g_1 (invRecv10 o_9@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange10 o_9@@0)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (invRecv10 o_9@@0) o_9@@0)) (= (select (|PolymorphicMapType_10732_6911_6912#PolymorphicMapType_10732| QPMask@2) o_9@@0 next) (+ (select (|PolymorphicMapType_10732_6911_6912#PolymorphicMapType_10732| QPMask@1) o_9@@0 next) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (select g_1 (invRecv10 o_9@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange10 o_9@@0))) (= (select (|PolymorphicMapType_10732_6911_6912#PolymorphicMapType_10732| QPMask@2) o_9@@0 next) (select (|PolymorphicMapType_10732_6911_6912#PolymorphicMapType_10732| QPMask@1) o_9@@0 next))))
 :qid |stdinbpl.958:22|
 :skolemid |141|
 :pattern ( (select (|PolymorphicMapType_10732_6911_6912#PolymorphicMapType_10732| QPMask@2) o_9@@0 next))
))) (=> (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_10771_53) ) (!  (=> true (= (select (|PolymorphicMapType_10732_6911_53#PolymorphicMapType_10732| QPMask@1) o_9@@1 f_5) (select (|PolymorphicMapType_10732_6911_53#PolymorphicMapType_10732| QPMask@2) o_9@@1 f_5)))
 :qid |stdinbpl.962:29|
 :skolemid |142|
 :pattern ( (select (|PolymorphicMapType_10732_6911_53#PolymorphicMapType_10732| QPMask@1) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_10732_6911_53#PolymorphicMapType_10732| QPMask@2) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_10784_10785) ) (!  (=> (not (= f_5@@0 next)) (= (select (|PolymorphicMapType_10732_6911_6912#PolymorphicMapType_10732| QPMask@1) o_9@@2 f_5@@0) (select (|PolymorphicMapType_10732_6911_6912#PolymorphicMapType_10732| QPMask@2) o_9@@2 f_5@@0)))
 :qid |stdinbpl.962:29|
 :skolemid |142|
 :pattern ( (select (|PolymorphicMapType_10732_6911_6912#PolymorphicMapType_10732| QPMask@1) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_10732_6911_6912#PolymorphicMapType_10732| QPMask@2) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_10771_29765) ) (!  (=> true (= (select (|PolymorphicMapType_10732_6911_29765#PolymorphicMapType_10732| QPMask@1) o_9@@3 f_5@@1) (select (|PolymorphicMapType_10732_6911_29765#PolymorphicMapType_10732| QPMask@2) o_9@@3 f_5@@1)))
 :qid |stdinbpl.962:29|
 :skolemid |142|
 :pattern ( (select (|PolymorphicMapType_10732_6911_29765#PolymorphicMapType_10732| QPMask@1) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_10732_6911_29765#PolymorphicMapType_10732| QPMask@2) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_10771_29898) ) (!  (=> true (= (select (|PolymorphicMapType_10732_6911_33444#PolymorphicMapType_10732| QPMask@1) o_9@@4 f_5@@2) (select (|PolymorphicMapType_10732_6911_33444#PolymorphicMapType_10732| QPMask@2) o_9@@4 f_5@@2)))
 :qid |stdinbpl.962:29|
 :skolemid |142|
 :pattern ( (select (|PolymorphicMapType_10732_6911_33444#PolymorphicMapType_10732| QPMask@1) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_10732_6911_33444#PolymorphicMapType_10732| QPMask@2) o_9@@4 f_5@@2))
))) (state ExhaleHeap@0 QPMask@2)) (and (state ExhaleHeap@0 QPMask@2) (state ExhaleHeap@0 QPMask@2))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (forall ((n_0_4 T@Ref) (n_0_4_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_0_4 n_0_4_1)) (select g_1 n_0_4)) (select g_1 n_0_4_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_0_4 n_0_4_1)))
 :qid |stdinbpl.981:17|
 :skolemid |143|
 :pattern ( (neverTriggered8 n_0_4) (neverTriggered8 n_0_4_1))
))) (=> (forall ((n_0_4@@0 T@Ref) (n_0_4_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_0_4@@0 n_0_4_1@@0)) (select g_1 n_0_4@@0)) (select g_1 n_0_4_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_0_4@@0 n_0_4_1@@0)))
 :qid |stdinbpl.981:17|
 :skolemid |143|
 :pattern ( (neverTriggered8 n_0_4@@0) (neverTriggered8 n_0_4_1@@0))
)) (=> (= (ControlFlow 0 5) (- 0 4)) (forall ((n_0_4@@1 T@Ref) ) (!  (=> (select g_1 n_0_4@@1) (>= (select (|PolymorphicMapType_10732_6911_6912#PolymorphicMapType_10732| QPMask@2) n_0_4@@1 next) FullPerm))
 :qid |stdinbpl.988:17|
 :skolemid |144|
 :pattern ( (select (|PolymorphicMapType_10711_6585_6586#PolymorphicMapType_10711| ExhaleHeap@0) n_0_4@@1 next))
 :pattern ( (select (|PolymorphicMapType_10732_6911_6912#PolymorphicMapType_10732| QPMask@3) n_0_4@@1 next))
 :pattern ( (select (|PolymorphicMapType_10711_6585_6586#PolymorphicMapType_10711| ExhaleHeap@0) n_0_4@@1 next))
))))))))))))))
(let ((anon15_Then_correct true))
(let ((anon14_Else_correct  (and (=> (= (ControlFlow 0 9) (- 0 12)) (forall ((n_0_6 T@Ref) ) (!  (=> (and (select g_1 n_0_6) (dummyFunction_6912 (select (|PolymorphicMapType_10711_6585_6586#PolymorphicMapType_10711| Heap@@18) n_0_6 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.873:17|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_10711_6585_6586#PolymorphicMapType_10711| Heap@@18) n_0_6 next))
 :pattern ( (select (|PolymorphicMapType_10732_6911_6912#PolymorphicMapType_10732| QPMask@1) n_0_6 next))
 :pattern ( (select (|PolymorphicMapType_10711_6585_6586#PolymorphicMapType_10711| Heap@@18) n_0_6 next))
))) (=> (forall ((n_0_6@@0 T@Ref) ) (!  (=> (and (select g_1 n_0_6@@0) (dummyFunction_6912 (select (|PolymorphicMapType_10711_6585_6586#PolymorphicMapType_10711| Heap@@18) n_0_6@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.873:17|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_10711_6585_6586#PolymorphicMapType_10711| Heap@@18) n_0_6@@0 next))
 :pattern ( (select (|PolymorphicMapType_10732_6911_6912#PolymorphicMapType_10732| QPMask@1) n_0_6@@0 next))
 :pattern ( (select (|PolymorphicMapType_10711_6585_6586#PolymorphicMapType_10711| Heap@@18) n_0_6@@0 next))
)) (and (=> (= (ControlFlow 0 9) (- 0 11)) (forall ((n_0_6@@1 T@Ref) (n_0_6_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_0_6@@1 n_0_6_1)) (select g_1 n_0_6@@1)) (select g_1 n_0_6_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_0_6@@1 n_0_6_1)))
 :qid |stdinbpl.880:17|
 :skolemid |130|
 :pattern ( (neverTriggered9 n_0_6@@1) (neverTriggered9 n_0_6_1))
))) (=> (forall ((n_0_6@@2 T@Ref) (n_0_6_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_0_6@@2 n_0_6_1@@0)) (select g_1 n_0_6@@2)) (select g_1 n_0_6_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_0_6@@2 n_0_6_1@@0)))
 :qid |stdinbpl.880:17|
 :skolemid |130|
 :pattern ( (neverTriggered9 n_0_6@@2) (neverTriggered9 n_0_6_1@@0))
)) (and (=> (= (ControlFlow 0 9) (- 0 10)) (forall ((n_0_6@@3 T@Ref) ) (!  (=> (select g_1 n_0_6@@3) (>= (select (|PolymorphicMapType_10732_6911_6912#PolymorphicMapType_10732| QPMask@0) n_0_6@@3 next) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.887:17|
 :skolemid |131|
 :pattern ( (select (|PolymorphicMapType_10711_6585_6586#PolymorphicMapType_10711| Heap@@18) n_0_6@@3 next))
 :pattern ( (select (|PolymorphicMapType_10732_6911_6912#PolymorphicMapType_10732| QPMask@1) n_0_6@@3 next))
 :pattern ( (select (|PolymorphicMapType_10711_6585_6586#PolymorphicMapType_10711| Heap@@18) n_0_6@@3 next))
))) (=> (forall ((n_0_6@@4 T@Ref) ) (!  (=> (select g_1 n_0_6@@4) (>= (select (|PolymorphicMapType_10732_6911_6912#PolymorphicMapType_10732| QPMask@0) n_0_6@@4 next) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.887:17|
 :skolemid |131|
 :pattern ( (select (|PolymorphicMapType_10711_6585_6586#PolymorphicMapType_10711| Heap@@18) n_0_6@@4 next))
 :pattern ( (select (|PolymorphicMapType_10732_6911_6912#PolymorphicMapType_10732| QPMask@1) n_0_6@@4 next))
 :pattern ( (select (|PolymorphicMapType_10711_6585_6586#PolymorphicMapType_10711| Heap@@18) n_0_6@@4 next))
)) (=> (forall ((n_0_6@@5 T@Ref) ) (!  (=> (and (select g_1 n_0_6@@5) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange9 n_0_6@@5) (= (invRecv9 n_0_6@@5) n_0_6@@5)))
 :qid |stdinbpl.893:22|
 :skolemid |132|
 :pattern ( (select (|PolymorphicMapType_10711_6585_6586#PolymorphicMapType_10711| Heap@@18) n_0_6@@5 next))
 :pattern ( (select (|PolymorphicMapType_10732_6911_6912#PolymorphicMapType_10732| QPMask@1) n_0_6@@5 next))
 :pattern ( (select (|PolymorphicMapType_10711_6585_6586#PolymorphicMapType_10711| Heap@@18) n_0_6@@5 next))
)) (=> (and (forall ((o_9@@5 T@Ref) ) (!  (=> (and (select g_1 (invRecv9 o_9@@5)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange9 o_9@@5))) (= (invRecv9 o_9@@5) o_9@@5))
 :qid |stdinbpl.897:22|
 :skolemid |133|
 :pattern ( (invRecv9 o_9@@5))
)) (forall ((o_9@@6 T@Ref) ) (!  (and (=> (and (select g_1 (invRecv9 o_9@@6)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange9 o_9@@6))) (and (= (invRecv9 o_9@@6) o_9@@6) (= (select (|PolymorphicMapType_10732_6911_6912#PolymorphicMapType_10732| QPMask@1) o_9@@6 next) (- (select (|PolymorphicMapType_10732_6911_6912#PolymorphicMapType_10732| QPMask@0) o_9@@6 next) (/ (to_real 1) (to_real 2)))))) (=> (not (and (select g_1 (invRecv9 o_9@@6)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange9 o_9@@6)))) (= (select (|PolymorphicMapType_10732_6911_6912#PolymorphicMapType_10732| QPMask@1) o_9@@6 next) (select (|PolymorphicMapType_10732_6911_6912#PolymorphicMapType_10732| QPMask@0) o_9@@6 next))))
 :qid |stdinbpl.903:22|
 :skolemid |134|
 :pattern ( (select (|PolymorphicMapType_10732_6911_6912#PolymorphicMapType_10732| QPMask@1) o_9@@6 next))
))) (=> (and (and (and (and (forall ((o_9@@7 T@Ref) (f_5@@3 T@Field_10771_53) ) (!  (=> true (= (select (|PolymorphicMapType_10732_6911_53#PolymorphicMapType_10732| QPMask@0) o_9@@7 f_5@@3) (select (|PolymorphicMapType_10732_6911_53#PolymorphicMapType_10732| QPMask@1) o_9@@7 f_5@@3)))
 :qid |stdinbpl.909:29|
 :skolemid |135|
 :pattern ( (select (|PolymorphicMapType_10732_6911_53#PolymorphicMapType_10732| QPMask@1) o_9@@7 f_5@@3))
)) (forall ((o_9@@8 T@Ref) (f_5@@4 T@Field_10784_10785) ) (!  (=> (not (= f_5@@4 next)) (= (select (|PolymorphicMapType_10732_6911_6912#PolymorphicMapType_10732| QPMask@0) o_9@@8 f_5@@4) (select (|PolymorphicMapType_10732_6911_6912#PolymorphicMapType_10732| QPMask@1) o_9@@8 f_5@@4)))
 :qid |stdinbpl.909:29|
 :skolemid |135|
 :pattern ( (select (|PolymorphicMapType_10732_6911_6912#PolymorphicMapType_10732| QPMask@1) o_9@@8 f_5@@4))
))) (forall ((o_9@@9 T@Ref) (f_5@@5 T@Field_10771_29765) ) (!  (=> true (= (select (|PolymorphicMapType_10732_6911_29765#PolymorphicMapType_10732| QPMask@0) o_9@@9 f_5@@5) (select (|PolymorphicMapType_10732_6911_29765#PolymorphicMapType_10732| QPMask@1) o_9@@9 f_5@@5)))
 :qid |stdinbpl.909:29|
 :skolemid |135|
 :pattern ( (select (|PolymorphicMapType_10732_6911_29765#PolymorphicMapType_10732| QPMask@1) o_9@@9 f_5@@5))
))) (forall ((o_9@@10 T@Ref) (f_5@@6 T@Field_10771_29898) ) (!  (=> true (= (select (|PolymorphicMapType_10732_6911_33444#PolymorphicMapType_10732| QPMask@0) o_9@@10 f_5@@6) (select (|PolymorphicMapType_10732_6911_33444#PolymorphicMapType_10732| QPMask@1) o_9@@10 f_5@@6)))
 :qid |stdinbpl.909:29|
 :skolemid |135|
 :pattern ( (select (|PolymorphicMapType_10732_6911_33444#PolymorphicMapType_10732| QPMask@1) o_9@@10 f_5@@6))
))) (and (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@0 QPMask@1) (state ExhaleHeap@0 QPMask@1))) (and (=> (= (ControlFlow 0 9) 3) anon15_Then_correct) (=> (= (ControlFlow 0 9) 5) anon15_Else_correct)))))))))))))
(let ((anon14_Then_correct true))
(let ((anon11_Else_correct  (and (=> (= (ControlFlow 0 17) (- 0 18)) (forall ((n_0_1 T@Ref) (n_0_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_0_1 n_0_1_1)) (select g_1 n_0_1)) (select g_1 n_0_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_0_1 n_0_1_1)))
 :qid |stdinbpl.771:15|
 :skolemid |117|
))) (=> (forall ((n_0_1@@0 T@Ref) (n_0_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_0_1@@0 n_0_1_1@@0)) (select g_1 n_0_1@@0)) (select g_1 n_0_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_0_1@@0 n_0_1_1@@0)))
 :qid |stdinbpl.771:15|
 :skolemid |117|
)) (=> (and (and (forall ((n_0_1@@1 T@Ref) ) (!  (=> (and (select g_1 n_0_1@@1) (< NoPerm FullPerm)) (and (qpRange6 n_0_1@@1) (= (invRecv6 n_0_1@@1) n_0_1@@1)))
 :qid |stdinbpl.777:22|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_10711_6585_6586#PolymorphicMapType_10711| Heap@@18) n_0_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_10732_6911_6912#PolymorphicMapType_10732| QPMask@0) n_0_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_10711_6585_6586#PolymorphicMapType_10711| Heap@@18) n_0_1@@1 next))
)) (forall ((o_9@@11 T@Ref) ) (!  (=> (and (and (select g_1 (invRecv6 o_9@@11)) (< NoPerm FullPerm)) (qpRange6 o_9@@11)) (= (invRecv6 o_9@@11) o_9@@11))
 :qid |stdinbpl.781:22|
 :skolemid |119|
 :pattern ( (invRecv6 o_9@@11))
))) (and (forall ((n_0_1@@2 T@Ref) ) (!  (=> (select g_1 n_0_1@@2) (not (= n_0_1@@2 null)))
 :qid |stdinbpl.787:22|
 :skolemid |120|
 :pattern ( (select (|PolymorphicMapType_10711_6585_6586#PolymorphicMapType_10711| Heap@@18) n_0_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_10732_6911_6912#PolymorphicMapType_10732| QPMask@0) n_0_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_10711_6585_6586#PolymorphicMapType_10711| Heap@@18) n_0_1@@2 next))
)) (forall ((o_9@@12 T@Ref) ) (!  (and (=> (and (and (select g_1 (invRecv6 o_9@@12)) (< NoPerm FullPerm)) (qpRange6 o_9@@12)) (and (=> (< NoPerm FullPerm) (= (invRecv6 o_9@@12) o_9@@12)) (= (select (|PolymorphicMapType_10732_6911_6912#PolymorphicMapType_10732| QPMask@0) o_9@@12 next) (+ (select (|PolymorphicMapType_10732_6911_6912#PolymorphicMapType_10732| ZeroMask) o_9@@12 next) FullPerm)))) (=> (not (and (and (select g_1 (invRecv6 o_9@@12)) (< NoPerm FullPerm)) (qpRange6 o_9@@12))) (= (select (|PolymorphicMapType_10732_6911_6912#PolymorphicMapType_10732| QPMask@0) o_9@@12 next) (select (|PolymorphicMapType_10732_6911_6912#PolymorphicMapType_10732| ZeroMask) o_9@@12 next))))
 :qid |stdinbpl.793:22|
 :skolemid |121|
 :pattern ( (select (|PolymorphicMapType_10732_6911_6912#PolymorphicMapType_10732| QPMask@0) o_9@@12 next))
)))) (=> (and (and (and (and (forall ((o_9@@13 T@Ref) (f_5@@7 T@Field_10771_53) ) (!  (=> true (= (select (|PolymorphicMapType_10732_6911_53#PolymorphicMapType_10732| ZeroMask) o_9@@13 f_5@@7) (select (|PolymorphicMapType_10732_6911_53#PolymorphicMapType_10732| QPMask@0) o_9@@13 f_5@@7)))
 :qid |stdinbpl.797:29|
 :skolemid |122|
 :pattern ( (select (|PolymorphicMapType_10732_6911_53#PolymorphicMapType_10732| ZeroMask) o_9@@13 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_10732_6911_53#PolymorphicMapType_10732| QPMask@0) o_9@@13 f_5@@7))
)) (forall ((o_9@@14 T@Ref) (f_5@@8 T@Field_10784_10785) ) (!  (=> (not (= f_5@@8 next)) (= (select (|PolymorphicMapType_10732_6911_6912#PolymorphicMapType_10732| ZeroMask) o_9@@14 f_5@@8) (select (|PolymorphicMapType_10732_6911_6912#PolymorphicMapType_10732| QPMask@0) o_9@@14 f_5@@8)))
 :qid |stdinbpl.797:29|
 :skolemid |122|
 :pattern ( (select (|PolymorphicMapType_10732_6911_6912#PolymorphicMapType_10732| ZeroMask) o_9@@14 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_10732_6911_6912#PolymorphicMapType_10732| QPMask@0) o_9@@14 f_5@@8))
))) (forall ((o_9@@15 T@Ref) (f_5@@9 T@Field_10771_29765) ) (!  (=> true (= (select (|PolymorphicMapType_10732_6911_29765#PolymorphicMapType_10732| ZeroMask) o_9@@15 f_5@@9) (select (|PolymorphicMapType_10732_6911_29765#PolymorphicMapType_10732| QPMask@0) o_9@@15 f_5@@9)))
 :qid |stdinbpl.797:29|
 :skolemid |122|
 :pattern ( (select (|PolymorphicMapType_10732_6911_29765#PolymorphicMapType_10732| ZeroMask) o_9@@15 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_10732_6911_29765#PolymorphicMapType_10732| QPMask@0) o_9@@15 f_5@@9))
))) (forall ((o_9@@16 T@Ref) (f_5@@10 T@Field_10771_29898) ) (!  (=> true (= (select (|PolymorphicMapType_10732_6911_33444#PolymorphicMapType_10732| ZeroMask) o_9@@16 f_5@@10) (select (|PolymorphicMapType_10732_6911_33444#PolymorphicMapType_10732| QPMask@0) o_9@@16 f_5@@10)))
 :qid |stdinbpl.797:29|
 :skolemid |122|
 :pattern ( (select (|PolymorphicMapType_10732_6911_33444#PolymorphicMapType_10732| ZeroMask) o_9@@16 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_10732_6911_33444#PolymorphicMapType_10732| QPMask@0) o_9@@16 f_5@@10))
))) (and (state Heap@@18 QPMask@0) (state Heap@@18 QPMask@0))) (and (and (=> (= (ControlFlow 0 17) 16) anon12_Then_correct) (=> (= (ControlFlow 0 17) 2) anon14_Then_correct)) (=> (= (ControlFlow 0 17) 9) anon14_Else_correct))))))))
(let ((anon11_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@18 ZeroMask) (=> (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (=> (= (ControlFlow 0 19) 1) anon11_Then_correct) (=> (= (ControlFlow 0 19) 17) anon11_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 20) 19) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
