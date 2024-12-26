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
(declare-sort T@Field_9989_53 0)
(declare-sort T@Field_10002_10003 0)
(declare-sort T@Field_6043_27294 0)
(declare-sort T@Field_6043_27161 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_9950 0)) (((PolymorphicMapType_9950 (|PolymorphicMapType_9950_6043_6044#PolymorphicMapType_9950| (Array T@Ref T@Field_10002_10003 Real)) (|PolymorphicMapType_9950_6043_53#PolymorphicMapType_9950| (Array T@Ref T@Field_9989_53 Real)) (|PolymorphicMapType_9950_6043_27161#PolymorphicMapType_9950| (Array T@Ref T@Field_6043_27161 Real)) (|PolymorphicMapType_9950_6043_30840#PolymorphicMapType_9950| (Array T@Ref T@Field_6043_27294 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10478 0)) (((PolymorphicMapType_10478 (|PolymorphicMapType_10478_9989_53#PolymorphicMapType_10478| (Array T@Ref T@Field_9989_53 Bool)) (|PolymorphicMapType_10478_9989_10003#PolymorphicMapType_10478| (Array T@Ref T@Field_10002_10003 Bool)) (|PolymorphicMapType_10478_9989_27161#PolymorphicMapType_10478| (Array T@Ref T@Field_6043_27161 Bool)) (|PolymorphicMapType_10478_9989_28274#PolymorphicMapType_10478| (Array T@Ref T@Field_6043_27294 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9929 0)) (((PolymorphicMapType_9929 (|PolymorphicMapType_9929_5730_53#PolymorphicMapType_9929| (Array T@Ref T@Field_9989_53 Bool)) (|PolymorphicMapType_9929_5733_5734#PolymorphicMapType_9929| (Array T@Ref T@Field_10002_10003 T@Ref)) (|PolymorphicMapType_9929_6043_27338#PolymorphicMapType_9929| (Array T@Ref T@Field_6043_27294 T@PolymorphicMapType_10478)) (|PolymorphicMapType_9929_9989_27161#PolymorphicMapType_9929| (Array T@Ref T@Field_6043_27161 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_9989_53)
(declare-fun f_7 () T@Field_10002_10003)
(declare-fun succHeap (T@PolymorphicMapType_9929 T@PolymorphicMapType_9929) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_9929 T@PolymorphicMapType_9929) Bool)
(declare-fun state (T@PolymorphicMapType_9929 T@PolymorphicMapType_9950) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_9950) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_10478)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_9929 T@PolymorphicMapType_9929 T@PolymorphicMapType_9950) Bool)
(declare-fun IsPredicateField_6043_27252 (T@Field_6043_27161) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_6043 (T@Field_6043_27161) T@Field_6043_27294)
(declare-fun HasDirectPerm_6043_27225 (T@PolymorphicMapType_9950 T@Ref T@Field_6043_27161) Bool)
(declare-fun IsWandField_6043_28801 (T@Field_6043_27161) Bool)
(declare-fun WandMaskField_6043 (T@Field_6043_27161) T@Field_6043_27294)
(declare-fun dummyHeap () T@PolymorphicMapType_9929)
(declare-fun ZeroMask () T@PolymorphicMapType_9950)
(declare-fun InsidePredicate_9989_9989 (T@Field_6043_27161 T@FrameType T@Field_6043_27161 T@FrameType) Bool)
(declare-fun IsPredicateField_6043_6044 (T@Field_10002_10003) Bool)
(declare-fun IsWandField_6043_6044 (T@Field_10002_10003) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6043_31735 (T@Field_6043_27294) Bool)
(declare-fun IsWandField_6043_31751 (T@Field_6043_27294) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_6043_53 (T@Field_9989_53) Bool)
(declare-fun IsWandField_6043_53 (T@Field_9989_53) Bool)
(declare-fun HasDirectPerm_6043_32106 (T@PolymorphicMapType_9950 T@Ref T@Field_6043_27294) Bool)
(declare-fun HasDirectPerm_6043_53 (T@PolymorphicMapType_9950 T@Ref T@Field_9989_53) Bool)
(declare-fun HasDirectPerm_6043_6044 (T@PolymorphicMapType_9950 T@Ref T@Field_10002_10003) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_9950 T@PolymorphicMapType_9950 T@PolymorphicMapType_9950) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_9929) (Heap1 T@PolymorphicMapType_9929) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_9929) (Mask T@PolymorphicMapType_9950) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_9929) (Heap1@@0 T@PolymorphicMapType_9929) (Heap2 T@PolymorphicMapType_9929) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_6043_27294) ) (!  (not (select (|PolymorphicMapType_10478_9989_28274#PolymorphicMapType_10478| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10478_9989_28274#PolymorphicMapType_10478| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_6043_27161) ) (!  (not (select (|PolymorphicMapType_10478_9989_27161#PolymorphicMapType_10478| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10478_9989_27161#PolymorphicMapType_10478| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_10002_10003) ) (!  (not (select (|PolymorphicMapType_10478_9989_10003#PolymorphicMapType_10478| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10478_9989_10003#PolymorphicMapType_10478| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_9989_53) ) (!  (not (select (|PolymorphicMapType_10478_9989_53#PolymorphicMapType_10478| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10478_9989_53#PolymorphicMapType_10478| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.303:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((a@@0 Int) ) (!  (=> (<= 0 a@@0) (= (|Math#clip| a@@0) a@@0))
 :qid |stdinbpl.306:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@0))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_9929) (ExhaleHeap T@PolymorphicMapType_9929) (Mask@@0 T@PolymorphicMapType_9950) (pm_f_3 T@Field_6043_27161) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_6043_27225 Mask@@0 null pm_f_3) (IsPredicateField_6043_27252 pm_f_3)) (= (select (|PolymorphicMapType_9929_6043_27338#PolymorphicMapType_9929| Heap@@0) null (PredicateMaskField_6043 pm_f_3)) (select (|PolymorphicMapType_9929_6043_27338#PolymorphicMapType_9929| ExhaleHeap) null (PredicateMaskField_6043 pm_f_3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_6043_27252 pm_f_3) (select (|PolymorphicMapType_9929_6043_27338#PolymorphicMapType_9929| ExhaleHeap) null (PredicateMaskField_6043 pm_f_3)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_9929) (ExhaleHeap@@0 T@PolymorphicMapType_9929) (Mask@@1 T@PolymorphicMapType_9950) (pm_f_3@@0 T@Field_6043_27161) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_6043_27225 Mask@@1 null pm_f_3@@0) (IsWandField_6043_28801 pm_f_3@@0)) (= (select (|PolymorphicMapType_9929_6043_27338#PolymorphicMapType_9929| Heap@@1) null (WandMaskField_6043 pm_f_3@@0)) (select (|PolymorphicMapType_9929_6043_27338#PolymorphicMapType_9929| ExhaleHeap@@0) null (WandMaskField_6043 pm_f_3@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_6043_28801 pm_f_3@@0) (select (|PolymorphicMapType_9929_6043_27338#PolymorphicMapType_9929| ExhaleHeap@@0) null (WandMaskField_6043 pm_f_3@@0)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_9929) (ExhaleHeap@@1 T@PolymorphicMapType_9929) (Mask@@2 T@PolymorphicMapType_9950) (pm_f_3@@1 T@Field_6043_27161) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_6043_27225 Mask@@2 null pm_f_3@@1) (IsPredicateField_6043_27252 pm_f_3@@1)) (and (and (and (forall ((o2_3 T@Ref) (f_12 T@Field_9989_53) ) (!  (=> (select (|PolymorphicMapType_10478_9989_53#PolymorphicMapType_10478| (select (|PolymorphicMapType_9929_6043_27338#PolymorphicMapType_9929| Heap@@2) null (PredicateMaskField_6043 pm_f_3@@1))) o2_3 f_12) (= (select (|PolymorphicMapType_9929_5730_53#PolymorphicMapType_9929| Heap@@2) o2_3 f_12) (select (|PolymorphicMapType_9929_5730_53#PolymorphicMapType_9929| ExhaleHeap@@1) o2_3 f_12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9929_5730_53#PolymorphicMapType_9929| ExhaleHeap@@1) o2_3 f_12))
)) (forall ((o2_3@@0 T@Ref) (f_12@@0 T@Field_10002_10003) ) (!  (=> (select (|PolymorphicMapType_10478_9989_10003#PolymorphicMapType_10478| (select (|PolymorphicMapType_9929_6043_27338#PolymorphicMapType_9929| Heap@@2) null (PredicateMaskField_6043 pm_f_3@@1))) o2_3@@0 f_12@@0) (= (select (|PolymorphicMapType_9929_5733_5734#PolymorphicMapType_9929| Heap@@2) o2_3@@0 f_12@@0) (select (|PolymorphicMapType_9929_5733_5734#PolymorphicMapType_9929| ExhaleHeap@@1) o2_3@@0 f_12@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9929_5733_5734#PolymorphicMapType_9929| ExhaleHeap@@1) o2_3@@0 f_12@@0))
))) (forall ((o2_3@@1 T@Ref) (f_12@@1 T@Field_6043_27161) ) (!  (=> (select (|PolymorphicMapType_10478_9989_27161#PolymorphicMapType_10478| (select (|PolymorphicMapType_9929_6043_27338#PolymorphicMapType_9929| Heap@@2) null (PredicateMaskField_6043 pm_f_3@@1))) o2_3@@1 f_12@@1) (= (select (|PolymorphicMapType_9929_9989_27161#PolymorphicMapType_9929| Heap@@2) o2_3@@1 f_12@@1) (select (|PolymorphicMapType_9929_9989_27161#PolymorphicMapType_9929| ExhaleHeap@@1) o2_3@@1 f_12@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9929_9989_27161#PolymorphicMapType_9929| ExhaleHeap@@1) o2_3@@1 f_12@@1))
))) (forall ((o2_3@@2 T@Ref) (f_12@@2 T@Field_6043_27294) ) (!  (=> (select (|PolymorphicMapType_10478_9989_28274#PolymorphicMapType_10478| (select (|PolymorphicMapType_9929_6043_27338#PolymorphicMapType_9929| Heap@@2) null (PredicateMaskField_6043 pm_f_3@@1))) o2_3@@2 f_12@@2) (= (select (|PolymorphicMapType_9929_6043_27338#PolymorphicMapType_9929| Heap@@2) o2_3@@2 f_12@@2) (select (|PolymorphicMapType_9929_6043_27338#PolymorphicMapType_9929| ExhaleHeap@@1) o2_3@@2 f_12@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9929_6043_27338#PolymorphicMapType_9929| ExhaleHeap@@1) o2_3@@2 f_12@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsPredicateField_6043_27252 pm_f_3@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_9929) (ExhaleHeap@@2 T@PolymorphicMapType_9929) (Mask@@3 T@PolymorphicMapType_9950) (pm_f_3@@2 T@Field_6043_27161) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_6043_27225 Mask@@3 null pm_f_3@@2) (IsWandField_6043_28801 pm_f_3@@2)) (and (and (and (forall ((o2_3@@3 T@Ref) (f_12@@3 T@Field_9989_53) ) (!  (=> (select (|PolymorphicMapType_10478_9989_53#PolymorphicMapType_10478| (select (|PolymorphicMapType_9929_6043_27338#PolymorphicMapType_9929| Heap@@3) null (WandMaskField_6043 pm_f_3@@2))) o2_3@@3 f_12@@3) (= (select (|PolymorphicMapType_9929_5730_53#PolymorphicMapType_9929| Heap@@3) o2_3@@3 f_12@@3) (select (|PolymorphicMapType_9929_5730_53#PolymorphicMapType_9929| ExhaleHeap@@2) o2_3@@3 f_12@@3)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9929_5730_53#PolymorphicMapType_9929| ExhaleHeap@@2) o2_3@@3 f_12@@3))
)) (forall ((o2_3@@4 T@Ref) (f_12@@4 T@Field_10002_10003) ) (!  (=> (select (|PolymorphicMapType_10478_9989_10003#PolymorphicMapType_10478| (select (|PolymorphicMapType_9929_6043_27338#PolymorphicMapType_9929| Heap@@3) null (WandMaskField_6043 pm_f_3@@2))) o2_3@@4 f_12@@4) (= (select (|PolymorphicMapType_9929_5733_5734#PolymorphicMapType_9929| Heap@@3) o2_3@@4 f_12@@4) (select (|PolymorphicMapType_9929_5733_5734#PolymorphicMapType_9929| ExhaleHeap@@2) o2_3@@4 f_12@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9929_5733_5734#PolymorphicMapType_9929| ExhaleHeap@@2) o2_3@@4 f_12@@4))
))) (forall ((o2_3@@5 T@Ref) (f_12@@5 T@Field_6043_27161) ) (!  (=> (select (|PolymorphicMapType_10478_9989_27161#PolymorphicMapType_10478| (select (|PolymorphicMapType_9929_6043_27338#PolymorphicMapType_9929| Heap@@3) null (WandMaskField_6043 pm_f_3@@2))) o2_3@@5 f_12@@5) (= (select (|PolymorphicMapType_9929_9989_27161#PolymorphicMapType_9929| Heap@@3) o2_3@@5 f_12@@5) (select (|PolymorphicMapType_9929_9989_27161#PolymorphicMapType_9929| ExhaleHeap@@2) o2_3@@5 f_12@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9929_9989_27161#PolymorphicMapType_9929| ExhaleHeap@@2) o2_3@@5 f_12@@5))
))) (forall ((o2_3@@6 T@Ref) (f_12@@6 T@Field_6043_27294) ) (!  (=> (select (|PolymorphicMapType_10478_9989_28274#PolymorphicMapType_10478| (select (|PolymorphicMapType_9929_6043_27338#PolymorphicMapType_9929| Heap@@3) null (WandMaskField_6043 pm_f_3@@2))) o2_3@@6 f_12@@6) (= (select (|PolymorphicMapType_9929_6043_27338#PolymorphicMapType_9929| Heap@@3) o2_3@@6 f_12@@6) (select (|PolymorphicMapType_9929_6043_27338#PolymorphicMapType_9929| ExhaleHeap@@2) o2_3@@6 f_12@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9929_6043_27338#PolymorphicMapType_9929| ExhaleHeap@@2) o2_3@@6 f_12@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_6043_28801 pm_f_3@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@4 T@PolymorphicMapType_9929) (ExhaleHeap@@3 T@PolymorphicMapType_9929) (Mask@@4 T@PolymorphicMapType_9950) (o_8 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_9929_5730_53#PolymorphicMapType_9929| Heap@@4) o_8 $allocated) (select (|PolymorphicMapType_9929_5730_53#PolymorphicMapType_9929| ExhaleHeap@@3) o_8 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_9929_5730_53#PolymorphicMapType_9929| ExhaleHeap@@3) o_8 $allocated))
)))
(assert (forall ((p T@Field_6043_27161) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_9989_9989 p v_1 p w))
 :qid |stdinbpl.201:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_9989_9989 p v_1 p w))
)))
(assert  (not (IsPredicateField_6043_6044 f_7)))
(assert  (not (IsWandField_6043_6044 f_7)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_9929) (ExhaleHeap@@4 T@PolymorphicMapType_9929) (Mask@@5 T@PolymorphicMapType_9950) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (succHeap Heap@@5 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_9950) (o_2@@3 T@Ref) (f_4@@3 T@Field_6043_27294) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_9950_6043_30840#PolymorphicMapType_9950| Mask@@6) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_6043_31735 f_4@@3))) (not (IsWandField_6043_31751 f_4@@3))) (<= (select (|PolymorphicMapType_9950_6043_30840#PolymorphicMapType_9950| Mask@@6) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_9950_6043_30840#PolymorphicMapType_9950| Mask@@6) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_9950) (o_2@@4 T@Ref) (f_4@@4 T@Field_6043_27161) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_9950_6043_27161#PolymorphicMapType_9950| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_6043_27252 f_4@@4))) (not (IsWandField_6043_28801 f_4@@4))) (<= (select (|PolymorphicMapType_9950_6043_27161#PolymorphicMapType_9950| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_9950_6043_27161#PolymorphicMapType_9950| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_9950) (o_2@@5 T@Ref) (f_4@@5 T@Field_9989_53) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_9950_6043_53#PolymorphicMapType_9950| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_6043_53 f_4@@5))) (not (IsWandField_6043_53 f_4@@5))) (<= (select (|PolymorphicMapType_9950_6043_53#PolymorphicMapType_9950| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_9950_6043_53#PolymorphicMapType_9950| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_9950) (o_2@@6 T@Ref) (f_4@@6 T@Field_10002_10003) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_9950_6043_6044#PolymorphicMapType_9950| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_6043_6044 f_4@@6))) (not (IsWandField_6043_6044 f_4@@6))) (<= (select (|PolymorphicMapType_9950_6043_6044#PolymorphicMapType_9950| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_9950_6043_6044#PolymorphicMapType_9950| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_9950) (o_2@@7 T@Ref) (f_4@@7 T@Field_6043_27294) ) (! (= (HasDirectPerm_6043_32106 Mask@@10 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_9950_6043_30840#PolymorphicMapType_9950| Mask@@10) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6043_32106 Mask@@10 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_9950) (o_2@@8 T@Ref) (f_4@@8 T@Field_6043_27161) ) (! (= (HasDirectPerm_6043_27225 Mask@@11 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_9950_6043_27161#PolymorphicMapType_9950| Mask@@11) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6043_27225 Mask@@11 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_9950) (o_2@@9 T@Ref) (f_4@@9 T@Field_9989_53) ) (! (= (HasDirectPerm_6043_53 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_9950_6043_53#PolymorphicMapType_9950| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6043_53 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_9950) (o_2@@10 T@Ref) (f_4@@10 T@Field_10002_10003) ) (! (= (HasDirectPerm_6043_6044 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_9950_6043_6044#PolymorphicMapType_9950| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6043_6044 Mask@@13 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.189:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_9929) (ExhaleHeap@@5 T@PolymorphicMapType_9929) (Mask@@14 T@PolymorphicMapType_9950) (o_8@@0 T@Ref) (f_12@@7 T@Field_6043_27294) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (=> (HasDirectPerm_6043_32106 Mask@@14 o_8@@0 f_12@@7) (= (select (|PolymorphicMapType_9929_6043_27338#PolymorphicMapType_9929| Heap@@6) o_8@@0 f_12@@7) (select (|PolymorphicMapType_9929_6043_27338#PolymorphicMapType_9929| ExhaleHeap@@5) o_8@@0 f_12@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (select (|PolymorphicMapType_9929_6043_27338#PolymorphicMapType_9929| ExhaleHeap@@5) o_8@@0 f_12@@7))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_9929) (ExhaleHeap@@6 T@PolymorphicMapType_9929) (Mask@@15 T@PolymorphicMapType_9950) (o_8@@1 T@Ref) (f_12@@8 T@Field_6043_27161) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (=> (HasDirectPerm_6043_27225 Mask@@15 o_8@@1 f_12@@8) (= (select (|PolymorphicMapType_9929_9989_27161#PolymorphicMapType_9929| Heap@@7) o_8@@1 f_12@@8) (select (|PolymorphicMapType_9929_9989_27161#PolymorphicMapType_9929| ExhaleHeap@@6) o_8@@1 f_12@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (select (|PolymorphicMapType_9929_9989_27161#PolymorphicMapType_9929| ExhaleHeap@@6) o_8@@1 f_12@@8))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_9929) (ExhaleHeap@@7 T@PolymorphicMapType_9929) (Mask@@16 T@PolymorphicMapType_9950) (o_8@@2 T@Ref) (f_12@@9 T@Field_9989_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (=> (HasDirectPerm_6043_53 Mask@@16 o_8@@2 f_12@@9) (= (select (|PolymorphicMapType_9929_5730_53#PolymorphicMapType_9929| Heap@@8) o_8@@2 f_12@@9) (select (|PolymorphicMapType_9929_5730_53#PolymorphicMapType_9929| ExhaleHeap@@7) o_8@@2 f_12@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (select (|PolymorphicMapType_9929_5730_53#PolymorphicMapType_9929| ExhaleHeap@@7) o_8@@2 f_12@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_9929) (ExhaleHeap@@8 T@PolymorphicMapType_9929) (Mask@@17 T@PolymorphicMapType_9950) (o_8@@3 T@Ref) (f_12@@10 T@Field_10002_10003) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (=> (HasDirectPerm_6043_6044 Mask@@17 o_8@@3 f_12@@10) (= (select (|PolymorphicMapType_9929_5733_5734#PolymorphicMapType_9929| Heap@@9) o_8@@3 f_12@@10) (select (|PolymorphicMapType_9929_5733_5734#PolymorphicMapType_9929| ExhaleHeap@@8) o_8@@3 f_12@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (select (|PolymorphicMapType_9929_5733_5734#PolymorphicMapType_9929| ExhaleHeap@@8) o_8@@3 f_12@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_6043_27294) ) (! (= (select (|PolymorphicMapType_9950_6043_30840#PolymorphicMapType_9950| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9950_6043_30840#PolymorphicMapType_9950| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_6043_27161) ) (! (= (select (|PolymorphicMapType_9950_6043_27161#PolymorphicMapType_9950| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9950_6043_27161#PolymorphicMapType_9950| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_9989_53) ) (! (= (select (|PolymorphicMapType_9950_6043_53#PolymorphicMapType_9950| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9950_6043_53#PolymorphicMapType_9950| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_10002_10003) ) (! (= (select (|PolymorphicMapType_9950_6043_6044#PolymorphicMapType_9950| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9950_6043_6044#PolymorphicMapType_9950| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_9950) (SummandMask1 T@PolymorphicMapType_9950) (SummandMask2 T@PolymorphicMapType_9950) (o_2@@15 T@Ref) (f_4@@15 T@Field_6043_27294) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_9950_6043_30840#PolymorphicMapType_9950| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_9950_6043_30840#PolymorphicMapType_9950| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_9950_6043_30840#PolymorphicMapType_9950| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9950_6043_30840#PolymorphicMapType_9950| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9950_6043_30840#PolymorphicMapType_9950| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9950_6043_30840#PolymorphicMapType_9950| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_9950) (SummandMask1@@0 T@PolymorphicMapType_9950) (SummandMask2@@0 T@PolymorphicMapType_9950) (o_2@@16 T@Ref) (f_4@@16 T@Field_6043_27161) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_9950_6043_27161#PolymorphicMapType_9950| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_9950_6043_27161#PolymorphicMapType_9950| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_9950_6043_27161#PolymorphicMapType_9950| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9950_6043_27161#PolymorphicMapType_9950| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9950_6043_27161#PolymorphicMapType_9950| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9950_6043_27161#PolymorphicMapType_9950| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_9950) (SummandMask1@@1 T@PolymorphicMapType_9950) (SummandMask2@@1 T@PolymorphicMapType_9950) (o_2@@17 T@Ref) (f_4@@17 T@Field_9989_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_9950_6043_53#PolymorphicMapType_9950| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_9950_6043_53#PolymorphicMapType_9950| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_9950_6043_53#PolymorphicMapType_9950| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9950_6043_53#PolymorphicMapType_9950| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9950_6043_53#PolymorphicMapType_9950| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9950_6043_53#PolymorphicMapType_9950| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_9950) (SummandMask1@@2 T@PolymorphicMapType_9950) (SummandMask2@@2 T@PolymorphicMapType_9950) (o_2@@18 T@Ref) (f_4@@18 T@Field_10002_10003) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_9950_6043_6044#PolymorphicMapType_9950| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_9950_6043_6044#PolymorphicMapType_9950| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_9950_6043_6044#PolymorphicMapType_9950| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9950_6043_6044#PolymorphicMapType_9950| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9950_6043_6044#PolymorphicMapType_9950| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9950_6043_6044#PolymorphicMapType_9950| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_9929) (o_7 T@Ref) (f_2 T@Field_6043_27161) (v T@FrameType) ) (! (succHeap Heap@@10 (PolymorphicMapType_9929 (|PolymorphicMapType_9929_5730_53#PolymorphicMapType_9929| Heap@@10) (|PolymorphicMapType_9929_5733_5734#PolymorphicMapType_9929| Heap@@10) (|PolymorphicMapType_9929_6043_27338#PolymorphicMapType_9929| Heap@@10) (store (|PolymorphicMapType_9929_9989_27161#PolymorphicMapType_9929| Heap@@10) o_7 f_2 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9929 (|PolymorphicMapType_9929_5730_53#PolymorphicMapType_9929| Heap@@10) (|PolymorphicMapType_9929_5733_5734#PolymorphicMapType_9929| Heap@@10) (|PolymorphicMapType_9929_6043_27338#PolymorphicMapType_9929| Heap@@10) (store (|PolymorphicMapType_9929_9989_27161#PolymorphicMapType_9929| Heap@@10) o_7 f_2 v)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_9929) (o_7@@0 T@Ref) (f_2@@0 T@Field_6043_27294) (v@@0 T@PolymorphicMapType_10478) ) (! (succHeap Heap@@11 (PolymorphicMapType_9929 (|PolymorphicMapType_9929_5730_53#PolymorphicMapType_9929| Heap@@11) (|PolymorphicMapType_9929_5733_5734#PolymorphicMapType_9929| Heap@@11) (store (|PolymorphicMapType_9929_6043_27338#PolymorphicMapType_9929| Heap@@11) o_7@@0 f_2@@0 v@@0) (|PolymorphicMapType_9929_9989_27161#PolymorphicMapType_9929| Heap@@11)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9929 (|PolymorphicMapType_9929_5730_53#PolymorphicMapType_9929| Heap@@11) (|PolymorphicMapType_9929_5733_5734#PolymorphicMapType_9929| Heap@@11) (store (|PolymorphicMapType_9929_6043_27338#PolymorphicMapType_9929| Heap@@11) o_7@@0 f_2@@0 v@@0) (|PolymorphicMapType_9929_9989_27161#PolymorphicMapType_9929| Heap@@11)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_9929) (o_7@@1 T@Ref) (f_2@@1 T@Field_10002_10003) (v@@1 T@Ref) ) (! (succHeap Heap@@12 (PolymorphicMapType_9929 (|PolymorphicMapType_9929_5730_53#PolymorphicMapType_9929| Heap@@12) (store (|PolymorphicMapType_9929_5733_5734#PolymorphicMapType_9929| Heap@@12) o_7@@1 f_2@@1 v@@1) (|PolymorphicMapType_9929_6043_27338#PolymorphicMapType_9929| Heap@@12) (|PolymorphicMapType_9929_9989_27161#PolymorphicMapType_9929| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9929 (|PolymorphicMapType_9929_5730_53#PolymorphicMapType_9929| Heap@@12) (store (|PolymorphicMapType_9929_5733_5734#PolymorphicMapType_9929| Heap@@12) o_7@@1 f_2@@1 v@@1) (|PolymorphicMapType_9929_6043_27338#PolymorphicMapType_9929| Heap@@12) (|PolymorphicMapType_9929_9989_27161#PolymorphicMapType_9929| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_9929) (o_7@@2 T@Ref) (f_2@@2 T@Field_9989_53) (v@@2 Bool) ) (! (succHeap Heap@@13 (PolymorphicMapType_9929 (store (|PolymorphicMapType_9929_5730_53#PolymorphicMapType_9929| Heap@@13) o_7@@2 f_2@@2 v@@2) (|PolymorphicMapType_9929_5733_5734#PolymorphicMapType_9929| Heap@@13) (|PolymorphicMapType_9929_6043_27338#PolymorphicMapType_9929| Heap@@13) (|PolymorphicMapType_9929_9989_27161#PolymorphicMapType_9929| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9929 (store (|PolymorphicMapType_9929_5730_53#PolymorphicMapType_9929| Heap@@13) o_7@@2 f_2@@2 v@@2) (|PolymorphicMapType_9929_5733_5734#PolymorphicMapType_9929| Heap@@13) (|PolymorphicMapType_9929_6043_27338#PolymorphicMapType_9929| Heap@@13) (|PolymorphicMapType_9929_9989_27161#PolymorphicMapType_9929| Heap@@13)))
)))
(assert (forall ((a@@1 Int) (b@@0 Int) ) (! (= (<= a@@1 b@@0) (= (|Math#min| a@@1 b@@0) a@@1))
 :qid |stdinbpl.301:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@1 b@@0))
)))
(assert (forall ((a@@2 Int) (b@@1 Int) ) (! (= (<= b@@1 a@@2) (= (|Math#min| a@@2 b@@1) b@@1))
 :qid |stdinbpl.302:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@2 b@@1))
)))
(assert (forall ((o_7@@3 T@Ref) (f_11 T@Field_10002_10003) (Heap@@14 T@PolymorphicMapType_9929) ) (!  (=> (select (|PolymorphicMapType_9929_5730_53#PolymorphicMapType_9929| Heap@@14) o_7@@3 $allocated) (select (|PolymorphicMapType_9929_5730_53#PolymorphicMapType_9929| Heap@@14) (select (|PolymorphicMapType_9929_5733_5734#PolymorphicMapType_9929| Heap@@14) o_7@@3 f_11) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_9929_5733_5734#PolymorphicMapType_9929| Heap@@14) o_7@@3 f_11))
)))
(assert (forall ((p@@1 T@Field_6043_27161) (v_1@@0 T@FrameType) (q T@Field_6043_27161) (w@@0 T@FrameType) (r T@Field_6043_27161) (u T@FrameType) ) (!  (=> (and (InsidePredicate_9989_9989 p@@1 v_1@@0 q w@@0) (InsidePredicate_9989_9989 q w@@0 r u)) (InsidePredicate_9989_9989 p@@1 v_1@@0 r u))
 :qid |stdinbpl.196:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9989_9989 p@@1 v_1@@0 q w@@0) (InsidePredicate_9989_9989 q w@@0 r u))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (< a@@3 0) (= (|Math#clip| a@@3) 0))
 :qid |stdinbpl.307:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Mask@0 () T@PolymorphicMapType_9950)
(declare-fun QPMask@0 () T@PolymorphicMapType_9950)
(declare-fun x () T@Ref)
(declare-fun Heap@0 () T@PolymorphicMapType_9929)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_9929)
(declare-fun xs () (Array T@Ref Bool))
(declare-fun Heap@@15 () T@PolymorphicMapType_9929)
(declare-fun qpRange4 (T@Ref) Bool)
(declare-fun invRecv4 (T@Ref) T@Ref)
(set-info :boogie-vc-id test03)
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
 (=> (= (ControlFlow 0 0) 12) (let ((anon4_correct  (=> (= Mask@0 (PolymorphicMapType_9950 (store (|PolymorphicMapType_9950_6043_6044#PolymorphicMapType_9950| QPMask@0) x f_7 (- (select (|PolymorphicMapType_9950_6043_6044#PolymorphicMapType_9950| QPMask@0) x f_7) FullPerm)) (|PolymorphicMapType_9950_6043_53#PolymorphicMapType_9950| QPMask@0) (|PolymorphicMapType_9950_6043_27161#PolymorphicMapType_9950| QPMask@0) (|PolymorphicMapType_9950_6043_30840#PolymorphicMapType_9950| QPMask@0))) (=> (and (IdenticalOnKnownLocations Heap@0 ExhaleHeap@0 Mask@0) (state ExhaleHeap@0 Mask@0)) (and (=> (= (ControlFlow 0 3) (- 0 4)) (HasDirectPerm_6043_6044 Mask@0 x f_7)) (=> (HasDirectPerm_6043_6044 Mask@0 x f_7) (=> (= (ControlFlow 0 3) (- 0 2)) (= (select (|PolymorphicMapType_9929_5733_5734#PolymorphicMapType_9929| ExhaleHeap@0) x f_7) x))))))))
(let ((anon6_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 7) 3)) anon4_correct)))
(let ((anon6_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 5) (- 0 6)) (<= FullPerm (select (|PolymorphicMapType_9950_6043_6044#PolymorphicMapType_9950| QPMask@0) x f_7))) (=> (<= FullPerm (select (|PolymorphicMapType_9950_6043_6044#PolymorphicMapType_9950| QPMask@0) x f_7)) (=> (= (ControlFlow 0 5) 3) anon4_correct))))))
(let ((anon5_Else_correct  (and (=> (= (ControlFlow 0 8) (- 0 10)) (forall ((z_1 T@Ref) (z_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= z_1 z_1_1)) (select xs z_1)) (select xs z_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= z_1 z_1_1)))
 :qid |stdinbpl.624:15|
 :skolemid |100|
))) (=> (forall ((z_1@@0 T@Ref) (z_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= z_1@@0 z_1_1@@0)) (select xs z_1@@0)) (select xs z_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= z_1@@0 z_1_1@@0)))
 :qid |stdinbpl.624:15|
 :skolemid |100|
)) (=> (and (and (forall ((z_1@@1 T@Ref) ) (!  (=> (and (select xs z_1@@1) (< NoPerm FullPerm)) (and (qpRange4 z_1@@1) (= (invRecv4 z_1@@1) z_1@@1)))
 :qid |stdinbpl.630:22|
 :skolemid |101|
 :pattern ( (select (|PolymorphicMapType_9929_5733_5734#PolymorphicMapType_9929| Heap@@15) z_1@@1 f_7))
 :pattern ( (select (|PolymorphicMapType_9950_6043_6044#PolymorphicMapType_9950| QPMask@0) z_1@@1 f_7))
 :pattern ( (select xs z_1@@1))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (select xs (invRecv4 o_4)) (< NoPerm FullPerm)) (qpRange4 o_4)) (= (invRecv4 o_4) o_4))
 :qid |stdinbpl.634:22|
 :skolemid |102|
 :pattern ( (invRecv4 o_4))
))) (and (forall ((z_1@@2 T@Ref) ) (!  (=> (select xs z_1@@2) (not (= z_1@@2 null)))
 :qid |stdinbpl.640:22|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_9929_5733_5734#PolymorphicMapType_9929| Heap@@15) z_1@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_9950_6043_6044#PolymorphicMapType_9950| QPMask@0) z_1@@2 f_7))
 :pattern ( (select xs z_1@@2))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (select xs (invRecv4 o_4@@0)) (< NoPerm FullPerm)) (qpRange4 o_4@@0)) (and (=> (< NoPerm FullPerm) (= (invRecv4 o_4@@0) o_4@@0)) (= (select (|PolymorphicMapType_9950_6043_6044#PolymorphicMapType_9950| QPMask@0) o_4@@0 f_7) (+ (select (|PolymorphicMapType_9950_6043_6044#PolymorphicMapType_9950| ZeroMask) o_4@@0 f_7) FullPerm)))) (=> (not (and (and (select xs (invRecv4 o_4@@0)) (< NoPerm FullPerm)) (qpRange4 o_4@@0))) (= (select (|PolymorphicMapType_9950_6043_6044#PolymorphicMapType_9950| QPMask@0) o_4@@0 f_7) (select (|PolymorphicMapType_9950_6043_6044#PolymorphicMapType_9950| ZeroMask) o_4@@0 f_7))))
 :qid |stdinbpl.646:22|
 :skolemid |104|
 :pattern ( (select (|PolymorphicMapType_9950_6043_6044#PolymorphicMapType_9950| QPMask@0) o_4@@0 f_7))
)))) (=> (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_9989_53) ) (!  (=> true (= (select (|PolymorphicMapType_9950_6043_53#PolymorphicMapType_9950| ZeroMask) o_4@@1 f_5) (select (|PolymorphicMapType_9950_6043_53#PolymorphicMapType_9950| QPMask@0) o_4@@1 f_5)))
 :qid |stdinbpl.650:29|
 :skolemid |105|
 :pattern ( (select (|PolymorphicMapType_9950_6043_53#PolymorphicMapType_9950| ZeroMask) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_9950_6043_53#PolymorphicMapType_9950| QPMask@0) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_10002_10003) ) (!  (=> (not (= f_5@@0 f_7)) (= (select (|PolymorphicMapType_9950_6043_6044#PolymorphicMapType_9950| ZeroMask) o_4@@2 f_5@@0) (select (|PolymorphicMapType_9950_6043_6044#PolymorphicMapType_9950| QPMask@0) o_4@@2 f_5@@0)))
 :qid |stdinbpl.650:29|
 :skolemid |105|
 :pattern ( (select (|PolymorphicMapType_9950_6043_6044#PolymorphicMapType_9950| ZeroMask) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_9950_6043_6044#PolymorphicMapType_9950| QPMask@0) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_6043_27161) ) (!  (=> true (= (select (|PolymorphicMapType_9950_6043_27161#PolymorphicMapType_9950| ZeroMask) o_4@@3 f_5@@1) (select (|PolymorphicMapType_9950_6043_27161#PolymorphicMapType_9950| QPMask@0) o_4@@3 f_5@@1)))
 :qid |stdinbpl.650:29|
 :skolemid |105|
 :pattern ( (select (|PolymorphicMapType_9950_6043_27161#PolymorphicMapType_9950| ZeroMask) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_9950_6043_27161#PolymorphicMapType_9950| QPMask@0) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_6043_27294) ) (!  (=> true (= (select (|PolymorphicMapType_9950_6043_30840#PolymorphicMapType_9950| ZeroMask) o_4@@4 f_5@@2) (select (|PolymorphicMapType_9950_6043_30840#PolymorphicMapType_9950| QPMask@0) o_4@@4 f_5@@2)))
 :qid |stdinbpl.650:29|
 :skolemid |105|
 :pattern ( (select (|PolymorphicMapType_9950_6043_30840#PolymorphicMapType_9950| ZeroMask) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_9950_6043_30840#PolymorphicMapType_9950| QPMask@0) o_4@@4 f_5@@2))
))) (and (state Heap@@15 QPMask@0) (state Heap@@15 QPMask@0))) (and (=> (= (ControlFlow 0 8) (- 0 9)) (= FullPerm (select (|PolymorphicMapType_9950_6043_6044#PolymorphicMapType_9950| QPMask@0) x f_7))) (=> (= FullPerm (select (|PolymorphicMapType_9950_6043_6044#PolymorphicMapType_9950| QPMask@0) x f_7)) (=> (and (= Heap@0 (PolymorphicMapType_9929 (|PolymorphicMapType_9929_5730_53#PolymorphicMapType_9929| Heap@@15) (store (|PolymorphicMapType_9929_5733_5734#PolymorphicMapType_9929| Heap@@15) x f_7 x) (|PolymorphicMapType_9929_6043_27338#PolymorphicMapType_9929| Heap@@15) (|PolymorphicMapType_9929_9989_27161#PolymorphicMapType_9929| Heap@@15))) (state Heap@0 QPMask@0)) (and (=> (= (ControlFlow 0 8) 5) anon6_Then_correct) (=> (= (ControlFlow 0 8) 7) anon6_Else_correct)))))))))))
(let ((anon5_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@15 ZeroMask) (=> (and (and AssumePermUpperBound (select (|PolymorphicMapType_9929_5730_53#PolymorphicMapType_9929| Heap@@15) x $allocated)) (and (select xs x) (state Heap@@15 ZeroMask))) (and (=> (= (ControlFlow 0 11) 1) anon5_Then_correct) (=> (= (ControlFlow 0 11) 8) anon5_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 12) 11) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 3) (- 4))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
