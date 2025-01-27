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
(declare-sort T@Field_3004_53 0)
(declare-sort T@Field_3017_3018 0)
(declare-sort T@Field_3004_7876 0)
(declare-sort T@Field_3004_7743 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_2965 0)) (((PolymorphicMapType_2965 (|PolymorphicMapType_2965_3004_53#PolymorphicMapType_2965| (Array T@Ref T@Field_3004_53 Real)) (|PolymorphicMapType_2965_3004_3018#PolymorphicMapType_2965| (Array T@Ref T@Field_3017_3018 Real)) (|PolymorphicMapType_2965_3004_7743#PolymorphicMapType_2965| (Array T@Ref T@Field_3004_7743 Real)) (|PolymorphicMapType_2965_3004_11437#PolymorphicMapType_2965| (Array T@Ref T@Field_3004_7876 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3493 0)) (((PolymorphicMapType_3493 (|PolymorphicMapType_3493_3004_53#PolymorphicMapType_3493| (Array T@Ref T@Field_3004_53 Bool)) (|PolymorphicMapType_3493_3004_3018#PolymorphicMapType_3493| (Array T@Ref T@Field_3017_3018 Bool)) (|PolymorphicMapType_3493_3004_7743#PolymorphicMapType_3493| (Array T@Ref T@Field_3004_7743 Bool)) (|PolymorphicMapType_3493_3004_8856#PolymorphicMapType_3493| (Array T@Ref T@Field_3004_7876 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_2944 0)) (((PolymorphicMapType_2944 (|PolymorphicMapType_2944_1506_53#PolymorphicMapType_2944| (Array T@Ref T@Field_3004_53 Bool)) (|PolymorphicMapType_2944_1509_1510#PolymorphicMapType_2944| (Array T@Ref T@Field_3017_3018 T@Ref)) (|PolymorphicMapType_2944_3004_7920#PolymorphicMapType_2944| (Array T@Ref T@Field_3004_7876 T@PolymorphicMapType_3493)) (|PolymorphicMapType_2944_3004_7743#PolymorphicMapType_2944| (Array T@Ref T@Field_3004_7743 T@FrameType)) ) ) ))
(declare-fun succHeap (T@PolymorphicMapType_2944 T@PolymorphicMapType_2944) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_2944 T@PolymorphicMapType_2944) Bool)
(declare-fun state (T@PolymorphicMapType_2944 T@PolymorphicMapType_2965) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_2965) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_3493)
(declare-fun |NonDet1'| (T@PolymorphicMapType_2944 Bool) Bool)
(declare-fun dummyFunction_1353 (Bool) Bool)
(declare-fun |NonDet1#triggerStateless| (Bool) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_2944 T@PolymorphicMapType_2944 T@PolymorphicMapType_2965) Bool)
(declare-fun IsPredicateField_3004_7834 (T@Field_3004_7743) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3004 (T@Field_3004_7743) T@Field_3004_7876)
(declare-fun HasDirectPerm_3004_7807 (T@PolymorphicMapType_2965 T@Ref T@Field_3004_7743) Bool)
(declare-fun IsWandField_3004_9383 (T@Field_3004_7743) Bool)
(declare-fun WandMaskField_3004 (T@Field_3004_7743) T@Field_3004_7876)
(declare-fun NonDet1 (T@PolymorphicMapType_2944 Bool) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun dummyHeap () T@PolymorphicMapType_2944)
(declare-fun ZeroMask () T@PolymorphicMapType_2965)
(declare-fun $allocated () T@Field_3004_53)
(declare-fun InsidePredicate_3004_3004 (T@Field_3004_7743 T@FrameType T@Field_3004_7743 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3004_12346 (T@Field_3004_7876) Bool)
(declare-fun IsWandField_3004_12362 (T@Field_3004_7876) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3004_3018 (T@Field_3017_3018) Bool)
(declare-fun IsWandField_3004_3018 (T@Field_3017_3018) Bool)
(declare-fun IsPredicateField_3004_53 (T@Field_3004_53) Bool)
(declare-fun IsWandField_3004_53 (T@Field_3004_53) Bool)
(declare-fun HasDirectPerm_3004_12717 (T@PolymorphicMapType_2965 T@Ref T@Field_3004_7876) Bool)
(declare-fun HasDirectPerm_3004_3018 (T@PolymorphicMapType_2965 T@Ref T@Field_3017_3018) Bool)
(declare-fun HasDirectPerm_3004_53 (T@PolymorphicMapType_2965 T@Ref T@Field_3004_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_2965 T@PolymorphicMapType_2965 T@PolymorphicMapType_2965) Bool)
(declare-fun |NonDet1#frame| (T@FrameType Bool) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_2944) (Heap1 T@PolymorphicMapType_2944) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_2944) (Mask T@PolymorphicMapType_2965) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_2944) (Heap1@@0 T@PolymorphicMapType_2944) (Heap2 T@PolymorphicMapType_2944) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_3004_7876) ) (!  (not (select (|PolymorphicMapType_3493_3004_8856#PolymorphicMapType_3493| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3493_3004_8856#PolymorphicMapType_3493| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_3004_7743) ) (!  (not (select (|PolymorphicMapType_3493_3004_7743#PolymorphicMapType_3493| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3493_3004_7743#PolymorphicMapType_3493| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_3017_3018) ) (!  (not (select (|PolymorphicMapType_3493_3004_3018#PolymorphicMapType_3493| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3493_3004_3018#PolymorphicMapType_3493| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_3004_53) ) (!  (not (select (|PolymorphicMapType_3493_3004_53#PolymorphicMapType_3493| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3493_3004_53#PolymorphicMapType_3493| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_2944) (vari Bool) ) (! (dummyFunction_1353 (|NonDet1#triggerStateless| vari))
 :qid |stdinbpl.190:15|
 :skolemid |23|
 :pattern ( (|NonDet1'| Heap@@0 vari))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_2944) (ExhaleHeap T@PolymorphicMapType_2944) (Mask@@0 T@PolymorphicMapType_2965) (pm_f_26 T@Field_3004_7743) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_3004_7807 Mask@@0 null pm_f_26) (IsPredicateField_3004_7834 pm_f_26)) (= (select (|PolymorphicMapType_2944_3004_7920#PolymorphicMapType_2944| Heap@@1) null (PredicateMaskField_3004 pm_f_26)) (select (|PolymorphicMapType_2944_3004_7920#PolymorphicMapType_2944| ExhaleHeap) null (PredicateMaskField_3004 pm_f_26)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_3004_7834 pm_f_26) (select (|PolymorphicMapType_2944_3004_7920#PolymorphicMapType_2944| ExhaleHeap) null (PredicateMaskField_3004 pm_f_26)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_2944) (ExhaleHeap@@0 T@PolymorphicMapType_2944) (Mask@@1 T@PolymorphicMapType_2965) (pm_f_26@@0 T@Field_3004_7743) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_3004_7807 Mask@@1 null pm_f_26@@0) (IsWandField_3004_9383 pm_f_26@@0)) (= (select (|PolymorphicMapType_2944_3004_7920#PolymorphicMapType_2944| Heap@@2) null (WandMaskField_3004 pm_f_26@@0)) (select (|PolymorphicMapType_2944_3004_7920#PolymorphicMapType_2944| ExhaleHeap@@0) null (WandMaskField_3004 pm_f_26@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsWandField_3004_9383 pm_f_26@@0) (select (|PolymorphicMapType_2944_3004_7920#PolymorphicMapType_2944| ExhaleHeap@@0) null (WandMaskField_3004 pm_f_26@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_2944) (Mask@@2 T@PolymorphicMapType_2965) (vari@@0 Bool) ) (!  (=> (and (state Heap@@3 Mask@@2) (< AssumeFunctionsAbove 0)) (NonDet1 Heap@@3 vari@@0))
 :qid |stdinbpl.196:15|
 :skolemid |24|
 :pattern ( (state Heap@@3 Mask@@2) (NonDet1 Heap@@3 vari@@0))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_2944) (ExhaleHeap@@1 T@PolymorphicMapType_2944) (Mask@@3 T@PolymorphicMapType_2965) (pm_f_26@@1 T@Field_3004_7743) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_3004_7807 Mask@@3 null pm_f_26@@1) (IsPredicateField_3004_7834 pm_f_26@@1)) (and (and (and (forall ((o2_26 T@Ref) (f_51 T@Field_3004_53) ) (!  (=> (select (|PolymorphicMapType_3493_3004_53#PolymorphicMapType_3493| (select (|PolymorphicMapType_2944_3004_7920#PolymorphicMapType_2944| Heap@@4) null (PredicateMaskField_3004 pm_f_26@@1))) o2_26 f_51) (= (select (|PolymorphicMapType_2944_1506_53#PolymorphicMapType_2944| Heap@@4) o2_26 f_51) (select (|PolymorphicMapType_2944_1506_53#PolymorphicMapType_2944| ExhaleHeap@@1) o2_26 f_51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_2944_1506_53#PolymorphicMapType_2944| ExhaleHeap@@1) o2_26 f_51))
)) (forall ((o2_26@@0 T@Ref) (f_51@@0 T@Field_3017_3018) ) (!  (=> (select (|PolymorphicMapType_3493_3004_3018#PolymorphicMapType_3493| (select (|PolymorphicMapType_2944_3004_7920#PolymorphicMapType_2944| Heap@@4) null (PredicateMaskField_3004 pm_f_26@@1))) o2_26@@0 f_51@@0) (= (select (|PolymorphicMapType_2944_1509_1510#PolymorphicMapType_2944| Heap@@4) o2_26@@0 f_51@@0) (select (|PolymorphicMapType_2944_1509_1510#PolymorphicMapType_2944| ExhaleHeap@@1) o2_26@@0 f_51@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_2944_1509_1510#PolymorphicMapType_2944| ExhaleHeap@@1) o2_26@@0 f_51@@0))
))) (forall ((o2_26@@1 T@Ref) (f_51@@1 T@Field_3004_7743) ) (!  (=> (select (|PolymorphicMapType_3493_3004_7743#PolymorphicMapType_3493| (select (|PolymorphicMapType_2944_3004_7920#PolymorphicMapType_2944| Heap@@4) null (PredicateMaskField_3004 pm_f_26@@1))) o2_26@@1 f_51@@1) (= (select (|PolymorphicMapType_2944_3004_7743#PolymorphicMapType_2944| Heap@@4) o2_26@@1 f_51@@1) (select (|PolymorphicMapType_2944_3004_7743#PolymorphicMapType_2944| ExhaleHeap@@1) o2_26@@1 f_51@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_2944_3004_7743#PolymorphicMapType_2944| ExhaleHeap@@1) o2_26@@1 f_51@@1))
))) (forall ((o2_26@@2 T@Ref) (f_51@@2 T@Field_3004_7876) ) (!  (=> (select (|PolymorphicMapType_3493_3004_8856#PolymorphicMapType_3493| (select (|PolymorphicMapType_2944_3004_7920#PolymorphicMapType_2944| Heap@@4) null (PredicateMaskField_3004 pm_f_26@@1))) o2_26@@2 f_51@@2) (= (select (|PolymorphicMapType_2944_3004_7920#PolymorphicMapType_2944| Heap@@4) o2_26@@2 f_51@@2) (select (|PolymorphicMapType_2944_3004_7920#PolymorphicMapType_2944| ExhaleHeap@@1) o2_26@@2 f_51@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_2944_3004_7920#PolymorphicMapType_2944| ExhaleHeap@@1) o2_26@@2 f_51@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@3) (IsPredicateField_3004_7834 pm_f_26@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_2944) (ExhaleHeap@@2 T@PolymorphicMapType_2944) (Mask@@4 T@PolymorphicMapType_2965) (pm_f_26@@2 T@Field_3004_7743) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_3004_7807 Mask@@4 null pm_f_26@@2) (IsWandField_3004_9383 pm_f_26@@2)) (and (and (and (forall ((o2_26@@3 T@Ref) (f_51@@3 T@Field_3004_53) ) (!  (=> (select (|PolymorphicMapType_3493_3004_53#PolymorphicMapType_3493| (select (|PolymorphicMapType_2944_3004_7920#PolymorphicMapType_2944| Heap@@5) null (WandMaskField_3004 pm_f_26@@2))) o2_26@@3 f_51@@3) (= (select (|PolymorphicMapType_2944_1506_53#PolymorphicMapType_2944| Heap@@5) o2_26@@3 f_51@@3) (select (|PolymorphicMapType_2944_1506_53#PolymorphicMapType_2944| ExhaleHeap@@2) o2_26@@3 f_51@@3)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_2944_1506_53#PolymorphicMapType_2944| ExhaleHeap@@2) o2_26@@3 f_51@@3))
)) (forall ((o2_26@@4 T@Ref) (f_51@@4 T@Field_3017_3018) ) (!  (=> (select (|PolymorphicMapType_3493_3004_3018#PolymorphicMapType_3493| (select (|PolymorphicMapType_2944_3004_7920#PolymorphicMapType_2944| Heap@@5) null (WandMaskField_3004 pm_f_26@@2))) o2_26@@4 f_51@@4) (= (select (|PolymorphicMapType_2944_1509_1510#PolymorphicMapType_2944| Heap@@5) o2_26@@4 f_51@@4) (select (|PolymorphicMapType_2944_1509_1510#PolymorphicMapType_2944| ExhaleHeap@@2) o2_26@@4 f_51@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_2944_1509_1510#PolymorphicMapType_2944| ExhaleHeap@@2) o2_26@@4 f_51@@4))
))) (forall ((o2_26@@5 T@Ref) (f_51@@5 T@Field_3004_7743) ) (!  (=> (select (|PolymorphicMapType_3493_3004_7743#PolymorphicMapType_3493| (select (|PolymorphicMapType_2944_3004_7920#PolymorphicMapType_2944| Heap@@5) null (WandMaskField_3004 pm_f_26@@2))) o2_26@@5 f_51@@5) (= (select (|PolymorphicMapType_2944_3004_7743#PolymorphicMapType_2944| Heap@@5) o2_26@@5 f_51@@5) (select (|PolymorphicMapType_2944_3004_7743#PolymorphicMapType_2944| ExhaleHeap@@2) o2_26@@5 f_51@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_2944_3004_7743#PolymorphicMapType_2944| ExhaleHeap@@2) o2_26@@5 f_51@@5))
))) (forall ((o2_26@@6 T@Ref) (f_51@@6 T@Field_3004_7876) ) (!  (=> (select (|PolymorphicMapType_3493_3004_8856#PolymorphicMapType_3493| (select (|PolymorphicMapType_2944_3004_7920#PolymorphicMapType_2944| Heap@@5) null (WandMaskField_3004 pm_f_26@@2))) o2_26@@6 f_51@@6) (= (select (|PolymorphicMapType_2944_3004_7920#PolymorphicMapType_2944| Heap@@5) o2_26@@6 f_51@@6) (select (|PolymorphicMapType_2944_3004_7920#PolymorphicMapType_2944| ExhaleHeap@@2) o2_26@@6 f_51@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_2944_3004_7920#PolymorphicMapType_2944| ExhaleHeap@@2) o2_26@@6 f_51@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@4) (IsWandField_3004_9383 pm_f_26@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@6 T@PolymorphicMapType_2944) (ExhaleHeap@@3 T@PolymorphicMapType_2944) (Mask@@5 T@PolymorphicMapType_2965) (o_38 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@5) (=> (select (|PolymorphicMapType_2944_1506_53#PolymorphicMapType_2944| Heap@@6) o_38 $allocated) (select (|PolymorphicMapType_2944_1506_53#PolymorphicMapType_2944| ExhaleHeap@@3) o_38 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@5) (select (|PolymorphicMapType_2944_1506_53#PolymorphicMapType_2944| ExhaleHeap@@3) o_38 $allocated))
)))
(assert (forall ((p T@Field_3004_7743) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_3004_3004 p v_1 p w))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_3004_3004 p v_1 p w))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_2944) (ExhaleHeap@@4 T@PolymorphicMapType_2944) (Mask@@6 T@PolymorphicMapType_2965) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@6) (succHeap Heap@@7 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_2965) (o_2@@3 T@Ref) (f_4@@3 T@Field_3004_7876) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_2965_3004_11437#PolymorphicMapType_2965| Mask@@7) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_3004_12346 f_4@@3))) (not (IsWandField_3004_12362 f_4@@3))) (<= (select (|PolymorphicMapType_2965_3004_11437#PolymorphicMapType_2965| Mask@@7) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_2965_3004_11437#PolymorphicMapType_2965| Mask@@7) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_2965) (o_2@@4 T@Ref) (f_4@@4 T@Field_3004_7743) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_2965_3004_7743#PolymorphicMapType_2965| Mask@@8) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_3004_7834 f_4@@4))) (not (IsWandField_3004_9383 f_4@@4))) (<= (select (|PolymorphicMapType_2965_3004_7743#PolymorphicMapType_2965| Mask@@8) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_2965_3004_7743#PolymorphicMapType_2965| Mask@@8) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_2965) (o_2@@5 T@Ref) (f_4@@5 T@Field_3017_3018) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_2965_3004_3018#PolymorphicMapType_2965| Mask@@9) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_3004_3018 f_4@@5))) (not (IsWandField_3004_3018 f_4@@5))) (<= (select (|PolymorphicMapType_2965_3004_3018#PolymorphicMapType_2965| Mask@@9) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_2965_3004_3018#PolymorphicMapType_2965| Mask@@9) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_2965) (o_2@@6 T@Ref) (f_4@@6 T@Field_3004_53) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_2965_3004_53#PolymorphicMapType_2965| Mask@@10) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_3004_53 f_4@@6))) (not (IsWandField_3004_53 f_4@@6))) (<= (select (|PolymorphicMapType_2965_3004_53#PolymorphicMapType_2965| Mask@@10) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_2965_3004_53#PolymorphicMapType_2965| Mask@@10) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_2965) (o_2@@7 T@Ref) (f_4@@7 T@Field_3004_7876) ) (! (= (HasDirectPerm_3004_12717 Mask@@11 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_2965_3004_11437#PolymorphicMapType_2965| Mask@@11) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3004_12717 Mask@@11 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_2965) (o_2@@8 T@Ref) (f_4@@8 T@Field_3004_7743) ) (! (= (HasDirectPerm_3004_7807 Mask@@12 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_2965_3004_7743#PolymorphicMapType_2965| Mask@@12) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3004_7807 Mask@@12 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_2965) (o_2@@9 T@Ref) (f_4@@9 T@Field_3017_3018) ) (! (= (HasDirectPerm_3004_3018 Mask@@13 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_2965_3004_3018#PolymorphicMapType_2965| Mask@@13) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3004_3018 Mask@@13 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_2965) (o_2@@10 T@Ref) (f_4@@10 T@Field_3004_53) ) (! (= (HasDirectPerm_3004_53 Mask@@14 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_2965_3004_53#PolymorphicMapType_2965| Mask@@14) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3004_53 Mask@@14 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.162:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_2944) (ExhaleHeap@@5 T@PolymorphicMapType_2944) (Mask@@15 T@PolymorphicMapType_2965) (o_38@@0 T@Ref) (f_51@@7 T@Field_3004_7876) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@15) (=> (HasDirectPerm_3004_12717 Mask@@15 o_38@@0 f_51@@7) (= (select (|PolymorphicMapType_2944_3004_7920#PolymorphicMapType_2944| Heap@@8) o_38@@0 f_51@@7) (select (|PolymorphicMapType_2944_3004_7920#PolymorphicMapType_2944| ExhaleHeap@@5) o_38@@0 f_51@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@15) (select (|PolymorphicMapType_2944_3004_7920#PolymorphicMapType_2944| ExhaleHeap@@5) o_38@@0 f_51@@7))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_2944) (ExhaleHeap@@6 T@PolymorphicMapType_2944) (Mask@@16 T@PolymorphicMapType_2965) (o_38@@1 T@Ref) (f_51@@8 T@Field_3004_7743) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@16) (=> (HasDirectPerm_3004_7807 Mask@@16 o_38@@1 f_51@@8) (= (select (|PolymorphicMapType_2944_3004_7743#PolymorphicMapType_2944| Heap@@9) o_38@@1 f_51@@8) (select (|PolymorphicMapType_2944_3004_7743#PolymorphicMapType_2944| ExhaleHeap@@6) o_38@@1 f_51@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@16) (select (|PolymorphicMapType_2944_3004_7743#PolymorphicMapType_2944| ExhaleHeap@@6) o_38@@1 f_51@@8))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_2944) (ExhaleHeap@@7 T@PolymorphicMapType_2944) (Mask@@17 T@PolymorphicMapType_2965) (o_38@@2 T@Ref) (f_51@@9 T@Field_3017_3018) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@17) (=> (HasDirectPerm_3004_3018 Mask@@17 o_38@@2 f_51@@9) (= (select (|PolymorphicMapType_2944_1509_1510#PolymorphicMapType_2944| Heap@@10) o_38@@2 f_51@@9) (select (|PolymorphicMapType_2944_1509_1510#PolymorphicMapType_2944| ExhaleHeap@@7) o_38@@2 f_51@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@17) (select (|PolymorphicMapType_2944_1509_1510#PolymorphicMapType_2944| ExhaleHeap@@7) o_38@@2 f_51@@9))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_2944) (ExhaleHeap@@8 T@PolymorphicMapType_2944) (Mask@@18 T@PolymorphicMapType_2965) (o_38@@3 T@Ref) (f_51@@10 T@Field_3004_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@18) (=> (HasDirectPerm_3004_53 Mask@@18 o_38@@3 f_51@@10) (= (select (|PolymorphicMapType_2944_1506_53#PolymorphicMapType_2944| Heap@@11) o_38@@3 f_51@@10) (select (|PolymorphicMapType_2944_1506_53#PolymorphicMapType_2944| ExhaleHeap@@8) o_38@@3 f_51@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@18) (select (|PolymorphicMapType_2944_1506_53#PolymorphicMapType_2944| ExhaleHeap@@8) o_38@@3 f_51@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_3004_7876) ) (! (= (select (|PolymorphicMapType_2965_3004_11437#PolymorphicMapType_2965| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_2965_3004_11437#PolymorphicMapType_2965| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_3004_7743) ) (! (= (select (|PolymorphicMapType_2965_3004_7743#PolymorphicMapType_2965| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_2965_3004_7743#PolymorphicMapType_2965| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_3017_3018) ) (! (= (select (|PolymorphicMapType_2965_3004_3018#PolymorphicMapType_2965| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_2965_3004_3018#PolymorphicMapType_2965| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_3004_53) ) (! (= (select (|PolymorphicMapType_2965_3004_53#PolymorphicMapType_2965| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_2965_3004_53#PolymorphicMapType_2965| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_2965) (SummandMask1 T@PolymorphicMapType_2965) (SummandMask2 T@PolymorphicMapType_2965) (o_2@@15 T@Ref) (f_4@@15 T@Field_3004_7876) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_2965_3004_11437#PolymorphicMapType_2965| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_2965_3004_11437#PolymorphicMapType_2965| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_2965_3004_11437#PolymorphicMapType_2965| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_2965_3004_11437#PolymorphicMapType_2965| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_2965_3004_11437#PolymorphicMapType_2965| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_2965_3004_11437#PolymorphicMapType_2965| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_2965) (SummandMask1@@0 T@PolymorphicMapType_2965) (SummandMask2@@0 T@PolymorphicMapType_2965) (o_2@@16 T@Ref) (f_4@@16 T@Field_3004_7743) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_2965_3004_7743#PolymorphicMapType_2965| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_2965_3004_7743#PolymorphicMapType_2965| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_2965_3004_7743#PolymorphicMapType_2965| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_2965_3004_7743#PolymorphicMapType_2965| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_2965_3004_7743#PolymorphicMapType_2965| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_2965_3004_7743#PolymorphicMapType_2965| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_2965) (SummandMask1@@1 T@PolymorphicMapType_2965) (SummandMask2@@1 T@PolymorphicMapType_2965) (o_2@@17 T@Ref) (f_4@@17 T@Field_3017_3018) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_2965_3004_3018#PolymorphicMapType_2965| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_2965_3004_3018#PolymorphicMapType_2965| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_2965_3004_3018#PolymorphicMapType_2965| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_2965_3004_3018#PolymorphicMapType_2965| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_2965_3004_3018#PolymorphicMapType_2965| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_2965_3004_3018#PolymorphicMapType_2965| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_2965) (SummandMask1@@2 T@PolymorphicMapType_2965) (SummandMask2@@2 T@PolymorphicMapType_2965) (o_2@@18 T@Ref) (f_4@@18 T@Field_3004_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_2965_3004_53#PolymorphicMapType_2965| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_2965_3004_53#PolymorphicMapType_2965| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_2965_3004_53#PolymorphicMapType_2965| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_2965_3004_53#PolymorphicMapType_2965| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_2965_3004_53#PolymorphicMapType_2965| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_2965_3004_53#PolymorphicMapType_2965| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_2944) (Mask@@19 T@PolymorphicMapType_2965) (vari@@1 Bool) ) (!  (=> (state Heap@@12 Mask@@19) (= (|NonDet1'| Heap@@12 vari@@1) (|NonDet1#frame| EmptyFrame vari@@1)))
 :qid |stdinbpl.203:15|
 :skolemid |25|
 :pattern ( (state Heap@@12 Mask@@19) (|NonDet1'| Heap@@12 vari@@1))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_2944) (vari@@2 Bool) ) (!  (and (= (NonDet1 Heap@@13 vari@@2) (|NonDet1'| Heap@@13 vari@@2)) (dummyFunction_1353 (|NonDet1#triggerStateless| vari@@2)))
 :qid |stdinbpl.186:15|
 :skolemid |22|
 :pattern ( (NonDet1 Heap@@13 vari@@2))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_2944) (o_56 T@Ref) (f_22 T@Field_3004_7743) (v T@FrameType) ) (! (succHeap Heap@@14 (PolymorphicMapType_2944 (|PolymorphicMapType_2944_1506_53#PolymorphicMapType_2944| Heap@@14) (|PolymorphicMapType_2944_1509_1510#PolymorphicMapType_2944| Heap@@14) (|PolymorphicMapType_2944_3004_7920#PolymorphicMapType_2944| Heap@@14) (store (|PolymorphicMapType_2944_3004_7743#PolymorphicMapType_2944| Heap@@14) o_56 f_22 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_2944 (|PolymorphicMapType_2944_1506_53#PolymorphicMapType_2944| Heap@@14) (|PolymorphicMapType_2944_1509_1510#PolymorphicMapType_2944| Heap@@14) (|PolymorphicMapType_2944_3004_7920#PolymorphicMapType_2944| Heap@@14) (store (|PolymorphicMapType_2944_3004_7743#PolymorphicMapType_2944| Heap@@14) o_56 f_22 v)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_2944) (o_56@@0 T@Ref) (f_22@@0 T@Field_3004_7876) (v@@0 T@PolymorphicMapType_3493) ) (! (succHeap Heap@@15 (PolymorphicMapType_2944 (|PolymorphicMapType_2944_1506_53#PolymorphicMapType_2944| Heap@@15) (|PolymorphicMapType_2944_1509_1510#PolymorphicMapType_2944| Heap@@15) (store (|PolymorphicMapType_2944_3004_7920#PolymorphicMapType_2944| Heap@@15) o_56@@0 f_22@@0 v@@0) (|PolymorphicMapType_2944_3004_7743#PolymorphicMapType_2944| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_2944 (|PolymorphicMapType_2944_1506_53#PolymorphicMapType_2944| Heap@@15) (|PolymorphicMapType_2944_1509_1510#PolymorphicMapType_2944| Heap@@15) (store (|PolymorphicMapType_2944_3004_7920#PolymorphicMapType_2944| Heap@@15) o_56@@0 f_22@@0 v@@0) (|PolymorphicMapType_2944_3004_7743#PolymorphicMapType_2944| Heap@@15)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_2944) (o_56@@1 T@Ref) (f_22@@1 T@Field_3017_3018) (v@@1 T@Ref) ) (! (succHeap Heap@@16 (PolymorphicMapType_2944 (|PolymorphicMapType_2944_1506_53#PolymorphicMapType_2944| Heap@@16) (store (|PolymorphicMapType_2944_1509_1510#PolymorphicMapType_2944| Heap@@16) o_56@@1 f_22@@1 v@@1) (|PolymorphicMapType_2944_3004_7920#PolymorphicMapType_2944| Heap@@16) (|PolymorphicMapType_2944_3004_7743#PolymorphicMapType_2944| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_2944 (|PolymorphicMapType_2944_1506_53#PolymorphicMapType_2944| Heap@@16) (store (|PolymorphicMapType_2944_1509_1510#PolymorphicMapType_2944| Heap@@16) o_56@@1 f_22@@1 v@@1) (|PolymorphicMapType_2944_3004_7920#PolymorphicMapType_2944| Heap@@16) (|PolymorphicMapType_2944_3004_7743#PolymorphicMapType_2944| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_2944) (o_56@@2 T@Ref) (f_22@@2 T@Field_3004_53) (v@@2 Bool) ) (! (succHeap Heap@@17 (PolymorphicMapType_2944 (store (|PolymorphicMapType_2944_1506_53#PolymorphicMapType_2944| Heap@@17) o_56@@2 f_22@@2 v@@2) (|PolymorphicMapType_2944_1509_1510#PolymorphicMapType_2944| Heap@@17) (|PolymorphicMapType_2944_3004_7920#PolymorphicMapType_2944| Heap@@17) (|PolymorphicMapType_2944_3004_7743#PolymorphicMapType_2944| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_2944 (store (|PolymorphicMapType_2944_1506_53#PolymorphicMapType_2944| Heap@@17) o_56@@2 f_22@@2 v@@2) (|PolymorphicMapType_2944_1509_1510#PolymorphicMapType_2944| Heap@@17) (|PolymorphicMapType_2944_3004_7920#PolymorphicMapType_2944| Heap@@17) (|PolymorphicMapType_2944_3004_7743#PolymorphicMapType_2944| Heap@@17)))
)))
(assert (forall ((o_56@@3 T@Ref) (f_3 T@Field_3017_3018) (Heap@@18 T@PolymorphicMapType_2944) ) (!  (=> (select (|PolymorphicMapType_2944_1506_53#PolymorphicMapType_2944| Heap@@18) o_56@@3 $allocated) (select (|PolymorphicMapType_2944_1506_53#PolymorphicMapType_2944| Heap@@18) (select (|PolymorphicMapType_2944_1509_1510#PolymorphicMapType_2944| Heap@@18) o_56@@3 f_3) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_2944_1509_1510#PolymorphicMapType_2944| Heap@@18) o_56@@3 f_3))
)))
(assert (forall ((p@@1 T@Field_3004_7743) (v_1@@0 T@FrameType) (q T@Field_3004_7743) (w@@0 T@FrameType) (r T@Field_3004_7743) (u T@FrameType) ) (!  (=> (and (InsidePredicate_3004_3004 p@@1 v_1@@0 q w@@0) (InsidePredicate_3004_3004 q w@@0 r u)) (InsidePredicate_3004_3004 p@@1 v_1@@0 r u))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3004_3004 p@@1 v_1@@0 q w@@0) (InsidePredicate_3004_3004 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@19 () T@PolymorphicMapType_2944)
(set-info :boogie-vc-id main)
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
 (=> (= (ControlFlow 0 0) 5) (let ((anon3_Else_correct  (=> (= (ControlFlow 0 3) (- 0 2)) (exists ((k_1 Bool) ) (!  (and true (or k_1 true))
 :qid |stdinbpl.272:15|
 :skolemid |26|
)))))
(let ((anon3_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@19 ZeroMask) (=> (and (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (state Heap@@19 ZeroMask) (state Heap@@19 ZeroMask))) (and (=> (= (ControlFlow 0 4) 1) anon3_Then_correct) (=> (= (ControlFlow 0 4) 3) anon3_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 5) 4) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
