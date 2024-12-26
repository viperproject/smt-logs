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
(declare-sort T@Field_20075_53 0)
(declare-sort T@Field_20088_20089 0)
(declare-sort T@Field_23401_1186 0)
(declare-sort T@Field_9380_68124 0)
(declare-sort T@Field_9380_67991 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_20036 0)) (((PolymorphicMapType_20036 (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| (Array T@Ref T@Field_23401_1186 Real)) (|PolymorphicMapType_20036_9380_53#PolymorphicMapType_20036| (Array T@Ref T@Field_20075_53 Real)) (|PolymorphicMapType_20036_9380_20089#PolymorphicMapType_20036| (Array T@Ref T@Field_20088_20089 Real)) (|PolymorphicMapType_20036_9380_67991#PolymorphicMapType_20036| (Array T@Ref T@Field_9380_67991 Real)) (|PolymorphicMapType_20036_9380_72246#PolymorphicMapType_20036| (Array T@Ref T@Field_9380_68124 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_20564 0)) (((PolymorphicMapType_20564 (|PolymorphicMapType_20564_20075_53#PolymorphicMapType_20564| (Array T@Ref T@Field_20075_53 Bool)) (|PolymorphicMapType_20564_20075_20089#PolymorphicMapType_20564| (Array T@Ref T@Field_20088_20089 Bool)) (|PolymorphicMapType_20564_20075_1186#PolymorphicMapType_20564| (Array T@Ref T@Field_23401_1186 Bool)) (|PolymorphicMapType_20564_20075_67991#PolymorphicMapType_20564| (Array T@Ref T@Field_9380_67991 Bool)) (|PolymorphicMapType_20564_20075_69302#PolymorphicMapType_20564| (Array T@Ref T@Field_9380_68124 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_20015 0)) (((PolymorphicMapType_20015 (|PolymorphicMapType_20015_9252_53#PolymorphicMapType_20015| (Array T@Ref T@Field_20075_53 Bool)) (|PolymorphicMapType_20015_9255_9256#PolymorphicMapType_20015| (Array T@Ref T@Field_20088_20089 T@Ref)) (|PolymorphicMapType_20015_9380_1186#PolymorphicMapType_20015| (Array T@Ref T@Field_23401_1186 Int)) (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| (Array T@Ref T@Field_9380_68124 T@PolymorphicMapType_20564)) (|PolymorphicMapType_20015_20075_67991#PolymorphicMapType_20015| (Array T@Ref T@Field_9380_67991 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_20075_53)
(declare-fun Ref__x () T@Field_23401_1186)
(declare-fun Ref__x_old () T@Field_23401_1186)
(declare-fun Ref__Integer_value () T@Field_23401_1186)
(declare-fun succHeap (T@PolymorphicMapType_20015 T@PolymorphicMapType_20015) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_20015 T@PolymorphicMapType_20015) Bool)
(declare-fun state (T@PolymorphicMapType_20015 T@PolymorphicMapType_20036) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_20036) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_20564)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_20015 T@PolymorphicMapType_20015 T@PolymorphicMapType_20036) Bool)
(declare-fun IsPredicateField_9380_68082 (T@Field_9380_67991) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_9380 (T@Field_9380_67991) T@Field_9380_68124)
(declare-fun HasDirectPerm_9380_68055 (T@PolymorphicMapType_20036 T@Ref T@Field_9380_67991) Bool)
(declare-fun IsWandField_9380_69829 (T@Field_9380_67991) Bool)
(declare-fun WandMaskField_9380 (T@Field_9380_67991) T@Field_9380_68124)
(declare-fun dummyHeap () T@PolymorphicMapType_20015)
(declare-fun ZeroMask () T@PolymorphicMapType_20036)
(declare-fun InsidePredicate_20075_20075 (T@Field_9380_67991 T@FrameType T@Field_9380_67991 T@FrameType) Bool)
(declare-fun IsPredicateField_9380_1186 (T@Field_23401_1186) Bool)
(declare-fun IsWandField_9380_1186 (T@Field_23401_1186) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_9380_73375 (T@Field_9380_68124) Bool)
(declare-fun IsWandField_9380_73391 (T@Field_9380_68124) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_9380_20089 (T@Field_20088_20089) Bool)
(declare-fun IsWandField_9380_20089 (T@Field_20088_20089) Bool)
(declare-fun IsPredicateField_9380_53 (T@Field_20075_53) Bool)
(declare-fun IsWandField_9380_53 (T@Field_20075_53) Bool)
(declare-fun HasDirectPerm_9380_73829 (T@PolymorphicMapType_20036 T@Ref T@Field_9380_68124) Bool)
(declare-fun HasDirectPerm_9380_20089 (T@PolymorphicMapType_20036 T@Ref T@Field_20088_20089) Bool)
(declare-fun HasDirectPerm_9380_53 (T@PolymorphicMapType_20036 T@Ref T@Field_20075_53) Bool)
(declare-fun HasDirectPerm_9380_1186 (T@PolymorphicMapType_20036 T@Ref T@Field_23401_1186) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_20036 T@PolymorphicMapType_20036 T@PolymorphicMapType_20036) Bool)
(assert (distinct Ref__x Ref__x_old Ref__Integer_value)
)
(assert (forall ((Heap0 T@PolymorphicMapType_20015) (Heap1 T@PolymorphicMapType_20015) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_20015) (Mask T@PolymorphicMapType_20036) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_20015) (Heap1@@0 T@PolymorphicMapType_20015) (Heap2 T@PolymorphicMapType_20015) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_9380_68124) ) (!  (not (select (|PolymorphicMapType_20564_20075_69302#PolymorphicMapType_20564| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_20564_20075_69302#PolymorphicMapType_20564| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_9380_67991) ) (!  (not (select (|PolymorphicMapType_20564_20075_67991#PolymorphicMapType_20564| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_20564_20075_67991#PolymorphicMapType_20564| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_23401_1186) ) (!  (not (select (|PolymorphicMapType_20564_20075_1186#PolymorphicMapType_20564| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_20564_20075_1186#PolymorphicMapType_20564| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_20088_20089) ) (!  (not (select (|PolymorphicMapType_20564_20075_20089#PolymorphicMapType_20564| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_20564_20075_20089#PolymorphicMapType_20564| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_20075_53) ) (!  (not (select (|PolymorphicMapType_20564_20075_53#PolymorphicMapType_20564| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_20564_20075_53#PolymorphicMapType_20564| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_20015) (ExhaleHeap T@PolymorphicMapType_20015) (Mask@@0 T@PolymorphicMapType_20036) (pm_f T@Field_9380_67991) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_9380_68055 Mask@@0 null pm_f) (IsPredicateField_9380_68082 pm_f)) (= (select (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| Heap@@0) null (PredicateMaskField_9380 pm_f)) (select (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| ExhaleHeap) null (PredicateMaskField_9380 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_9380_68082 pm_f) (select (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| ExhaleHeap) null (PredicateMaskField_9380 pm_f)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_20015) (ExhaleHeap@@0 T@PolymorphicMapType_20015) (Mask@@1 T@PolymorphicMapType_20036) (pm_f@@0 T@Field_9380_67991) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_9380_68055 Mask@@1 null pm_f@@0) (IsWandField_9380_69829 pm_f@@0)) (= (select (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| Heap@@1) null (WandMaskField_9380 pm_f@@0)) (select (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| ExhaleHeap@@0) null (WandMaskField_9380 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_9380_69829 pm_f@@0) (select (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| ExhaleHeap@@0) null (WandMaskField_9380 pm_f@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_20015) (ExhaleHeap@@1 T@PolymorphicMapType_20015) (Mask@@2 T@PolymorphicMapType_20036) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_20015_9252_53#PolymorphicMapType_20015| Heap@@2) o_1 $allocated) (select (|PolymorphicMapType_20015_9252_53#PolymorphicMapType_20015| ExhaleHeap@@1) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_20015_9252_53#PolymorphicMapType_20015| ExhaleHeap@@1) o_1 $allocated))
)))
(assert (forall ((p T@Field_9380_67991) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_20075_20075 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_20075_20075 p v_1 p w))
)))
(assert  (not (IsPredicateField_9380_1186 Ref__x)))
(assert  (not (IsWandField_9380_1186 Ref__x)))
(assert  (not (IsPredicateField_9380_1186 Ref__x_old)))
(assert  (not (IsWandField_9380_1186 Ref__x_old)))
(assert  (not (IsPredicateField_9380_1186 Ref__Integer_value)))
(assert  (not (IsWandField_9380_1186 Ref__Integer_value)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_20015) (ExhaleHeap@@2 T@PolymorphicMapType_20015) (Mask@@3 T@PolymorphicMapType_20036) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_20036) (o_2@@4 T@Ref) (f_4@@4 T@Field_9380_68124) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_20036_9380_72246#PolymorphicMapType_20036| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_9380_73375 f_4@@4))) (not (IsWandField_9380_73391 f_4@@4))) (<= (select (|PolymorphicMapType_20036_9380_72246#PolymorphicMapType_20036| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_20036_9380_72246#PolymorphicMapType_20036| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_20036) (o_2@@5 T@Ref) (f_4@@5 T@Field_9380_67991) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_20036_9380_67991#PolymorphicMapType_20036| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_9380_68082 f_4@@5))) (not (IsWandField_9380_69829 f_4@@5))) (<= (select (|PolymorphicMapType_20036_9380_67991#PolymorphicMapType_20036| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_20036_9380_67991#PolymorphicMapType_20036| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_20036) (o_2@@6 T@Ref) (f_4@@6 T@Field_20088_20089) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_20036_9380_20089#PolymorphicMapType_20036| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_9380_20089 f_4@@6))) (not (IsWandField_9380_20089 f_4@@6))) (<= (select (|PolymorphicMapType_20036_9380_20089#PolymorphicMapType_20036| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_20036_9380_20089#PolymorphicMapType_20036| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_20036) (o_2@@7 T@Ref) (f_4@@7 T@Field_20075_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_20036_9380_53#PolymorphicMapType_20036| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_9380_53 f_4@@7))) (not (IsWandField_9380_53 f_4@@7))) (<= (select (|PolymorphicMapType_20036_9380_53#PolymorphicMapType_20036| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_20036_9380_53#PolymorphicMapType_20036| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_20036) (o_2@@8 T@Ref) (f_4@@8 T@Field_23401_1186) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_9380_1186 f_4@@8))) (not (IsWandField_9380_1186 f_4@@8))) (<= (select (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_20036) (o_2@@9 T@Ref) (f_4@@9 T@Field_9380_68124) ) (! (= (HasDirectPerm_9380_73829 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_20036_9380_72246#PolymorphicMapType_20036| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9380_73829 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_20036) (o_2@@10 T@Ref) (f_4@@10 T@Field_9380_67991) ) (! (= (HasDirectPerm_9380_68055 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_20036_9380_67991#PolymorphicMapType_20036| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9380_68055 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_20036) (o_2@@11 T@Ref) (f_4@@11 T@Field_20088_20089) ) (! (= (HasDirectPerm_9380_20089 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_20036_9380_20089#PolymorphicMapType_20036| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9380_20089 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_20036) (o_2@@12 T@Ref) (f_4@@12 T@Field_20075_53) ) (! (= (HasDirectPerm_9380_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_20036_9380_53#PolymorphicMapType_20036| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9380_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_20036) (o_2@@13 T@Ref) (f_4@@13 T@Field_23401_1186) ) (! (= (HasDirectPerm_9380_1186 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9380_1186 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_20015) (ExhaleHeap@@3 T@PolymorphicMapType_20015) (Mask@@14 T@PolymorphicMapType_20036) (pm_f@@1 T@Field_9380_67991) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_9380_68055 Mask@@14 null pm_f@@1) (IsPredicateField_9380_68082 pm_f@@1)) (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_20075_53) ) (!  (=> (select (|PolymorphicMapType_20564_20075_53#PolymorphicMapType_20564| (select (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| Heap@@4) null (PredicateMaskField_9380 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_20015_9252_53#PolymorphicMapType_20015| Heap@@4) o2 f_2) (select (|PolymorphicMapType_20015_9252_53#PolymorphicMapType_20015| ExhaleHeap@@3) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20015_9252_53#PolymorphicMapType_20015| ExhaleHeap@@3) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_20088_20089) ) (!  (=> (select (|PolymorphicMapType_20564_20075_20089#PolymorphicMapType_20564| (select (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| Heap@@4) null (PredicateMaskField_9380 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_20015_9255_9256#PolymorphicMapType_20015| Heap@@4) o2@@0 f_2@@0) (select (|PolymorphicMapType_20015_9255_9256#PolymorphicMapType_20015| ExhaleHeap@@3) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20015_9255_9256#PolymorphicMapType_20015| ExhaleHeap@@3) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_23401_1186) ) (!  (=> (select (|PolymorphicMapType_20564_20075_1186#PolymorphicMapType_20564| (select (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| Heap@@4) null (PredicateMaskField_9380 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_20015_9380_1186#PolymorphicMapType_20015| Heap@@4) o2@@1 f_2@@1) (select (|PolymorphicMapType_20015_9380_1186#PolymorphicMapType_20015| ExhaleHeap@@3) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20015_9380_1186#PolymorphicMapType_20015| ExhaleHeap@@3) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_9380_67991) ) (!  (=> (select (|PolymorphicMapType_20564_20075_67991#PolymorphicMapType_20564| (select (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| Heap@@4) null (PredicateMaskField_9380 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_20015_20075_67991#PolymorphicMapType_20015| Heap@@4) o2@@2 f_2@@2) (select (|PolymorphicMapType_20015_20075_67991#PolymorphicMapType_20015| ExhaleHeap@@3) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20015_20075_67991#PolymorphicMapType_20015| ExhaleHeap@@3) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_9380_68124) ) (!  (=> (select (|PolymorphicMapType_20564_20075_69302#PolymorphicMapType_20564| (select (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| Heap@@4) null (PredicateMaskField_9380 pm_f@@1))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| Heap@@4) o2@@3 f_2@@3) (select (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| ExhaleHeap@@3) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| ExhaleHeap@@3) o2@@3 f_2@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_9380_68082 pm_f@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_20015) (ExhaleHeap@@4 T@PolymorphicMapType_20015) (Mask@@15 T@PolymorphicMapType_20036) (pm_f@@2 T@Field_9380_67991) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_9380_68055 Mask@@15 null pm_f@@2) (IsWandField_9380_69829 pm_f@@2)) (and (and (and (and (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_20075_53) ) (!  (=> (select (|PolymorphicMapType_20564_20075_53#PolymorphicMapType_20564| (select (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| Heap@@5) null (WandMaskField_9380 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_20015_9252_53#PolymorphicMapType_20015| Heap@@5) o2@@4 f_2@@4) (select (|PolymorphicMapType_20015_9252_53#PolymorphicMapType_20015| ExhaleHeap@@4) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20015_9252_53#PolymorphicMapType_20015| ExhaleHeap@@4) o2@@4 f_2@@4))
)) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_20088_20089) ) (!  (=> (select (|PolymorphicMapType_20564_20075_20089#PolymorphicMapType_20564| (select (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| Heap@@5) null (WandMaskField_9380 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_20015_9255_9256#PolymorphicMapType_20015| Heap@@5) o2@@5 f_2@@5) (select (|PolymorphicMapType_20015_9255_9256#PolymorphicMapType_20015| ExhaleHeap@@4) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20015_9255_9256#PolymorphicMapType_20015| ExhaleHeap@@4) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_23401_1186) ) (!  (=> (select (|PolymorphicMapType_20564_20075_1186#PolymorphicMapType_20564| (select (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| Heap@@5) null (WandMaskField_9380 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_20015_9380_1186#PolymorphicMapType_20015| Heap@@5) o2@@6 f_2@@6) (select (|PolymorphicMapType_20015_9380_1186#PolymorphicMapType_20015| ExhaleHeap@@4) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20015_9380_1186#PolymorphicMapType_20015| ExhaleHeap@@4) o2@@6 f_2@@6))
))) (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_9380_67991) ) (!  (=> (select (|PolymorphicMapType_20564_20075_67991#PolymorphicMapType_20564| (select (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| Heap@@5) null (WandMaskField_9380 pm_f@@2))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_20015_20075_67991#PolymorphicMapType_20015| Heap@@5) o2@@7 f_2@@7) (select (|PolymorphicMapType_20015_20075_67991#PolymorphicMapType_20015| ExhaleHeap@@4) o2@@7 f_2@@7)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20015_20075_67991#PolymorphicMapType_20015| ExhaleHeap@@4) o2@@7 f_2@@7))
))) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_9380_68124) ) (!  (=> (select (|PolymorphicMapType_20564_20075_69302#PolymorphicMapType_20564| (select (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| Heap@@5) null (WandMaskField_9380 pm_f@@2))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| Heap@@5) o2@@8 f_2@@8) (select (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| ExhaleHeap@@4) o2@@8 f_2@@8)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| ExhaleHeap@@4) o2@@8 f_2@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_9380_69829 pm_f@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_20015) (ExhaleHeap@@5 T@PolymorphicMapType_20015) (Mask@@16 T@PolymorphicMapType_20036) (o_1@@0 T@Ref) (f_2@@9 T@Field_9380_68124) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_9380_73829 Mask@@16 o_1@@0 f_2@@9) (= (select (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| Heap@@6) o_1@@0 f_2@@9) (select (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| ExhaleHeap@@5) o_1@@0 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| ExhaleHeap@@5) o_1@@0 f_2@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_20015) (ExhaleHeap@@6 T@PolymorphicMapType_20015) (Mask@@17 T@PolymorphicMapType_20036) (o_1@@1 T@Ref) (f_2@@10 T@Field_9380_67991) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_9380_68055 Mask@@17 o_1@@1 f_2@@10) (= (select (|PolymorphicMapType_20015_20075_67991#PolymorphicMapType_20015| Heap@@7) o_1@@1 f_2@@10) (select (|PolymorphicMapType_20015_20075_67991#PolymorphicMapType_20015| ExhaleHeap@@6) o_1@@1 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_20015_20075_67991#PolymorphicMapType_20015| ExhaleHeap@@6) o_1@@1 f_2@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_20015) (ExhaleHeap@@7 T@PolymorphicMapType_20015) (Mask@@18 T@PolymorphicMapType_20036) (o_1@@2 T@Ref) (f_2@@11 T@Field_20088_20089) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_9380_20089 Mask@@18 o_1@@2 f_2@@11) (= (select (|PolymorphicMapType_20015_9255_9256#PolymorphicMapType_20015| Heap@@8) o_1@@2 f_2@@11) (select (|PolymorphicMapType_20015_9255_9256#PolymorphicMapType_20015| ExhaleHeap@@7) o_1@@2 f_2@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_20015_9255_9256#PolymorphicMapType_20015| ExhaleHeap@@7) o_1@@2 f_2@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_20015) (ExhaleHeap@@8 T@PolymorphicMapType_20015) (Mask@@19 T@PolymorphicMapType_20036) (o_1@@3 T@Ref) (f_2@@12 T@Field_20075_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_9380_53 Mask@@19 o_1@@3 f_2@@12) (= (select (|PolymorphicMapType_20015_9252_53#PolymorphicMapType_20015| Heap@@9) o_1@@3 f_2@@12) (select (|PolymorphicMapType_20015_9252_53#PolymorphicMapType_20015| ExhaleHeap@@8) o_1@@3 f_2@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_20015_9252_53#PolymorphicMapType_20015| ExhaleHeap@@8) o_1@@3 f_2@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_20015) (ExhaleHeap@@9 T@PolymorphicMapType_20015) (Mask@@20 T@PolymorphicMapType_20036) (o_1@@4 T@Ref) (f_2@@13 T@Field_23401_1186) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_9380_1186 Mask@@20 o_1@@4 f_2@@13) (= (select (|PolymorphicMapType_20015_9380_1186#PolymorphicMapType_20015| Heap@@10) o_1@@4 f_2@@13) (select (|PolymorphicMapType_20015_9380_1186#PolymorphicMapType_20015| ExhaleHeap@@9) o_1@@4 f_2@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_20015_9380_1186#PolymorphicMapType_20015| ExhaleHeap@@9) o_1@@4 f_2@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_9380_68124) ) (! (= (select (|PolymorphicMapType_20036_9380_72246#PolymorphicMapType_20036| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_20036_9380_72246#PolymorphicMapType_20036| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_9380_67991) ) (! (= (select (|PolymorphicMapType_20036_9380_67991#PolymorphicMapType_20036| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_20036_9380_67991#PolymorphicMapType_20036| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_20088_20089) ) (! (= (select (|PolymorphicMapType_20036_9380_20089#PolymorphicMapType_20036| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_20036_9380_20089#PolymorphicMapType_20036| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_20075_53) ) (! (= (select (|PolymorphicMapType_20036_9380_53#PolymorphicMapType_20036| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_20036_9380_53#PolymorphicMapType_20036| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_23401_1186) ) (! (= (select (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_20036) (SummandMask1 T@PolymorphicMapType_20036) (SummandMask2 T@PolymorphicMapType_20036) (o_2@@19 T@Ref) (f_4@@19 T@Field_9380_68124) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_20036_9380_72246#PolymorphicMapType_20036| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_20036_9380_72246#PolymorphicMapType_20036| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_20036_9380_72246#PolymorphicMapType_20036| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_20036_9380_72246#PolymorphicMapType_20036| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_20036_9380_72246#PolymorphicMapType_20036| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_20036_9380_72246#PolymorphicMapType_20036| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_20036) (SummandMask1@@0 T@PolymorphicMapType_20036) (SummandMask2@@0 T@PolymorphicMapType_20036) (o_2@@20 T@Ref) (f_4@@20 T@Field_9380_67991) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_20036_9380_67991#PolymorphicMapType_20036| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_20036_9380_67991#PolymorphicMapType_20036| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_20036_9380_67991#PolymorphicMapType_20036| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_20036_9380_67991#PolymorphicMapType_20036| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_20036_9380_67991#PolymorphicMapType_20036| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_20036_9380_67991#PolymorphicMapType_20036| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_20036) (SummandMask1@@1 T@PolymorphicMapType_20036) (SummandMask2@@1 T@PolymorphicMapType_20036) (o_2@@21 T@Ref) (f_4@@21 T@Field_20088_20089) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_20036_9380_20089#PolymorphicMapType_20036| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_20036_9380_20089#PolymorphicMapType_20036| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_20036_9380_20089#PolymorphicMapType_20036| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_20036_9380_20089#PolymorphicMapType_20036| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_20036_9380_20089#PolymorphicMapType_20036| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_20036_9380_20089#PolymorphicMapType_20036| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_20036) (SummandMask1@@2 T@PolymorphicMapType_20036) (SummandMask2@@2 T@PolymorphicMapType_20036) (o_2@@22 T@Ref) (f_4@@22 T@Field_20075_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_20036_9380_53#PolymorphicMapType_20036| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_20036_9380_53#PolymorphicMapType_20036| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_20036_9380_53#PolymorphicMapType_20036| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_20036_9380_53#PolymorphicMapType_20036| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_20036_9380_53#PolymorphicMapType_20036| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_20036_9380_53#PolymorphicMapType_20036| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_20036) (SummandMask1@@3 T@PolymorphicMapType_20036) (SummandMask2@@3 T@PolymorphicMapType_20036) (o_2@@23 T@Ref) (f_4@@23 T@Field_23401_1186) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_20015) (o T@Ref) (f_3 T@Field_9380_67991) (v T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_20015 (|PolymorphicMapType_20015_9252_53#PolymorphicMapType_20015| Heap@@11) (|PolymorphicMapType_20015_9255_9256#PolymorphicMapType_20015| Heap@@11) (|PolymorphicMapType_20015_9380_1186#PolymorphicMapType_20015| Heap@@11) (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| Heap@@11) (store (|PolymorphicMapType_20015_20075_67991#PolymorphicMapType_20015| Heap@@11) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_20015 (|PolymorphicMapType_20015_9252_53#PolymorphicMapType_20015| Heap@@11) (|PolymorphicMapType_20015_9255_9256#PolymorphicMapType_20015| Heap@@11) (|PolymorphicMapType_20015_9380_1186#PolymorphicMapType_20015| Heap@@11) (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| Heap@@11) (store (|PolymorphicMapType_20015_20075_67991#PolymorphicMapType_20015| Heap@@11) o f_3 v)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_20015) (o@@0 T@Ref) (f_3@@0 T@Field_9380_68124) (v@@0 T@PolymorphicMapType_20564) ) (! (succHeap Heap@@12 (PolymorphicMapType_20015 (|PolymorphicMapType_20015_9252_53#PolymorphicMapType_20015| Heap@@12) (|PolymorphicMapType_20015_9255_9256#PolymorphicMapType_20015| Heap@@12) (|PolymorphicMapType_20015_9380_1186#PolymorphicMapType_20015| Heap@@12) (store (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| Heap@@12) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_20015_20075_67991#PolymorphicMapType_20015| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_20015 (|PolymorphicMapType_20015_9252_53#PolymorphicMapType_20015| Heap@@12) (|PolymorphicMapType_20015_9255_9256#PolymorphicMapType_20015| Heap@@12) (|PolymorphicMapType_20015_9380_1186#PolymorphicMapType_20015| Heap@@12) (store (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| Heap@@12) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_20015_20075_67991#PolymorphicMapType_20015| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_20015) (o@@1 T@Ref) (f_3@@1 T@Field_23401_1186) (v@@1 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_20015 (|PolymorphicMapType_20015_9252_53#PolymorphicMapType_20015| Heap@@13) (|PolymorphicMapType_20015_9255_9256#PolymorphicMapType_20015| Heap@@13) (store (|PolymorphicMapType_20015_9380_1186#PolymorphicMapType_20015| Heap@@13) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| Heap@@13) (|PolymorphicMapType_20015_20075_67991#PolymorphicMapType_20015| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_20015 (|PolymorphicMapType_20015_9252_53#PolymorphicMapType_20015| Heap@@13) (|PolymorphicMapType_20015_9255_9256#PolymorphicMapType_20015| Heap@@13) (store (|PolymorphicMapType_20015_9380_1186#PolymorphicMapType_20015| Heap@@13) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| Heap@@13) (|PolymorphicMapType_20015_20075_67991#PolymorphicMapType_20015| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_20015) (o@@2 T@Ref) (f_3@@2 T@Field_20088_20089) (v@@2 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_20015 (|PolymorphicMapType_20015_9252_53#PolymorphicMapType_20015| Heap@@14) (store (|PolymorphicMapType_20015_9255_9256#PolymorphicMapType_20015| Heap@@14) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_20015_9380_1186#PolymorphicMapType_20015| Heap@@14) (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| Heap@@14) (|PolymorphicMapType_20015_20075_67991#PolymorphicMapType_20015| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_20015 (|PolymorphicMapType_20015_9252_53#PolymorphicMapType_20015| Heap@@14) (store (|PolymorphicMapType_20015_9255_9256#PolymorphicMapType_20015| Heap@@14) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_20015_9380_1186#PolymorphicMapType_20015| Heap@@14) (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| Heap@@14) (|PolymorphicMapType_20015_20075_67991#PolymorphicMapType_20015| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_20015) (o@@3 T@Ref) (f_3@@3 T@Field_20075_53) (v@@3 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_20015 (store (|PolymorphicMapType_20015_9252_53#PolymorphicMapType_20015| Heap@@15) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_20015_9255_9256#PolymorphicMapType_20015| Heap@@15) (|PolymorphicMapType_20015_9380_1186#PolymorphicMapType_20015| Heap@@15) (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| Heap@@15) (|PolymorphicMapType_20015_20075_67991#PolymorphicMapType_20015| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_20015 (store (|PolymorphicMapType_20015_9252_53#PolymorphicMapType_20015| Heap@@15) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_20015_9255_9256#PolymorphicMapType_20015| Heap@@15) (|PolymorphicMapType_20015_9380_1186#PolymorphicMapType_20015| Heap@@15) (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| Heap@@15) (|PolymorphicMapType_20015_20075_67991#PolymorphicMapType_20015| Heap@@15)))
)))
(assert (forall ((o@@4 T@Ref) (f T@Field_20088_20089) (Heap@@16 T@PolymorphicMapType_20015) ) (!  (=> (select (|PolymorphicMapType_20015_9252_53#PolymorphicMapType_20015| Heap@@16) o@@4 $allocated) (select (|PolymorphicMapType_20015_9252_53#PolymorphicMapType_20015| Heap@@16) (select (|PolymorphicMapType_20015_9255_9256#PolymorphicMapType_20015| Heap@@16) o@@4 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_20015_9255_9256#PolymorphicMapType_20015| Heap@@16) o@@4 f))
)))
(assert (forall ((p@@1 T@Field_9380_67991) (v_1@@0 T@FrameType) (q T@Field_9380_67991) (w@@0 T@FrameType) (r T@Field_9380_67991) (u T@FrameType) ) (!  (=> (and (InsidePredicate_20075_20075 p@@1 v_1@@0 q w@@0) (InsidePredicate_20075_20075 q w@@0 r u)) (InsidePredicate_20075_20075 p@@1 v_1@@0 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20075_20075 p@@1 v_1@@0 q w@@0) (InsidePredicate_20075_20075 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Mask@20 () T@PolymorphicMapType_20036)
(declare-fun Mask@19 () T@PolymorphicMapType_20036)
(declare-fun diz () T@Ref)
(declare-fun Heap@2 () T@PolymorphicMapType_20015)
(declare-fun Heap@@17 () T@PolymorphicMapType_20015)
(declare-fun n () Int)
(declare-fun m_17 () Int)
(declare-fun Heap@1 () T@PolymorphicMapType_20015)
(declare-fun Mask@18 () T@PolymorphicMapType_20036)
(declare-fun Mask@16 () T@PolymorphicMapType_20036)
(declare-fun Mask@15 () T@PolymorphicMapType_20036)
(declare-fun arg_n@0 () Int)
(declare-fun ExhaleHeap@6 () T@PolymorphicMapType_20015)
(declare-fun ExhaleHeap@7 () T@PolymorphicMapType_20015)
(declare-fun Mask@17 () T@PolymorphicMapType_20036)
(declare-fun Mask@14 () T@PolymorphicMapType_20036)
(declare-fun Mask@0 () T@PolymorphicMapType_20036)
(declare-fun Mask@12 () T@PolymorphicMapType_20036)
(declare-fun Mask@11 () T@PolymorphicMapType_20036)
(declare-fun ExhaleHeap@4 () T@PolymorphicMapType_20015)
(declare-fun ExhaleHeap@5 () T@PolymorphicMapType_20015)
(declare-fun Mask@13 () T@PolymorphicMapType_20036)
(declare-fun Mask@10 () T@PolymorphicMapType_20036)
(declare-fun __flatten_5@0 () Bool)
(declare-fun Heap@0 () T@PolymorphicMapType_20015)
(declare-fun Mask@9 () T@PolymorphicMapType_20036)
(declare-fun Mask@7 () T@PolymorphicMapType_20036)
(declare-fun Mask@6 () T@PolymorphicMapType_20036)
(declare-fun arg_n_1@0 () Int)
(declare-fun ExhaleHeap@2 () T@PolymorphicMapType_20015)
(declare-fun ExhaleHeap@3 () T@PolymorphicMapType_20015)
(declare-fun Mask@8 () T@PolymorphicMapType_20036)
(declare-fun Mask@5 () T@PolymorphicMapType_20036)
(declare-fun Mask@3 () T@PolymorphicMapType_20036)
(declare-fun Mask@2 () T@PolymorphicMapType_20036)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_20015)
(declare-fun ExhaleHeap@1 () T@PolymorphicMapType_20015)
(declare-fun Mask@4 () T@PolymorphicMapType_20036)
(declare-fun Mask@1 () T@PolymorphicMapType_20036)
(declare-fun PostHeap@0 () T@PolymorphicMapType_20015)
(declare-fun PostMask@0 () T@PolymorphicMapType_20036)
(set-info :boogie-vc-id Ref__dual)
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
 (=> (= (ControlFlow 0 0) 67) (let ((anon29_correct  (=> (and (= Mask@20 (PolymorphicMapType_20036 (store (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| Mask@19) diz Ref__x (- (select (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| Mask@19) diz Ref__x) FullPerm)) (|PolymorphicMapType_20036_9380_53#PolymorphicMapType_20036| Mask@19) (|PolymorphicMapType_20036_9380_20089#PolymorphicMapType_20036| Mask@19) (|PolymorphicMapType_20036_9380_67991#PolymorphicMapType_20036| Mask@19) (|PolymorphicMapType_20036_9380_72246#PolymorphicMapType_20036| Mask@19))) (= (ControlFlow 0 5) (- 0 4))) (= (select (|PolymorphicMapType_20015_9380_1186#PolymorphicMapType_20015| Heap@2) diz Ref__x) (+ (+ (select (|PolymorphicMapType_20015_9380_1186#PolymorphicMapType_20015| Heap@@17) diz Ref__x) n) m_17)))))
(let ((anon42_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 8) 5)) anon29_correct)))
(let ((anon42_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 6) (- 0 7)) (<= FullPerm (select (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| Mask@19) diz Ref__x))) (=> (<= FullPerm (select (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| Mask@19) diz Ref__x)) (=> (= (ControlFlow 0 6) 5) anon29_correct))))))
(let ((anon27_correct  (=> (state Heap@2 Mask@19) (and (=> (= (ControlFlow 0 9) 6) anon42_Then_correct) (=> (= (ControlFlow 0 9) 8) anon42_Else_correct)))))
(let ((anon14_correct  (=> (and (and (state Heap@1 Mask@18) (= Heap@2 Heap@1)) (and (= Mask@19 Mask@18) (= (ControlFlow 0 37) 9))) anon27_correct)))
(let ((anon8_correct  (=> (= Mask@16 (PolymorphicMapType_20036 (store (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| Mask@15) diz Ref__x (- (select (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| Mask@15) diz Ref__x) FullPerm)) (|PolymorphicMapType_20036_9380_53#PolymorphicMapType_20036| Mask@15) (|PolymorphicMapType_20036_9380_20089#PolymorphicMapType_20036| Mask@15) (|PolymorphicMapType_20036_9380_67991#PolymorphicMapType_20036| Mask@15) (|PolymorphicMapType_20036_9380_72246#PolymorphicMapType_20036| Mask@15))) (and (=> (= (ControlFlow 0 50) (- 0 52)) (>= arg_n@0 0)) (=> (>= arg_n@0 0) (and (=> (= (ControlFlow 0 50) (- 0 51)) (>= m_17 0)) (=> (>= m_17 0) (=> (and (IdenticalOnKnownLocations ExhaleHeap@6 ExhaleHeap@7 Mask@16) (not (= diz null))) (=> (and (and (and (= Mask@17 (PolymorphicMapType_20036 (store (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| Mask@16) diz Ref__x (+ (select (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| Mask@16) diz Ref__x) FullPerm)) (|PolymorphicMapType_20036_9380_53#PolymorphicMapType_20036| Mask@16) (|PolymorphicMapType_20036_9380_20089#PolymorphicMapType_20036| Mask@16) (|PolymorphicMapType_20036_9380_67991#PolymorphicMapType_20036| Mask@16) (|PolymorphicMapType_20036_9380_72246#PolymorphicMapType_20036| Mask@16))) (state ExhaleHeap@7 Mask@17)) (and (= (select (|PolymorphicMapType_20015_9380_1186#PolymorphicMapType_20015| ExhaleHeap@7) diz Ref__x) (+ (+ (select (|PolymorphicMapType_20015_9380_1186#PolymorphicMapType_20015| ExhaleHeap@6) diz Ref__x) arg_n@0) m_17)) (state ExhaleHeap@7 Mask@17))) (and (and (state ExhaleHeap@7 Mask@17) (= Mask@18 Mask@17)) (and (= Heap@1 ExhaleHeap@7) (= (ControlFlow 0 50) 37)))) anon14_correct)))))))))
(let ((anon34_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 55) 50)) anon8_correct)))
(let ((anon34_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 53) (- 0 54)) (<= FullPerm (select (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| Mask@15) diz Ref__x))) (=> (<= FullPerm (select (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| Mask@15) diz Ref__x)) (=> (= (ControlFlow 0 53) 50) anon8_correct))))))
(let ((anon6_correct  (=> (= Mask@14 (PolymorphicMapType_20036 (store (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| Mask@0) diz Ref__x (- (select (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| Mask@0) diz Ref__x) FullPerm)) (|PolymorphicMapType_20036_9380_53#PolymorphicMapType_20036| Mask@0) (|PolymorphicMapType_20036_9380_20089#PolymorphicMapType_20036| Mask@0) (|PolymorphicMapType_20036_9380_67991#PolymorphicMapType_20036| Mask@0) (|PolymorphicMapType_20036_9380_72246#PolymorphicMapType_20036| Mask@0))) (=> (and (and (and (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@6 Mask@14) (not (= diz null))) (and (= Mask@15 (PolymorphicMapType_20036 (store (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| Mask@14) diz Ref__x (+ (select (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| Mask@14) diz Ref__x) FullPerm)) (|PolymorphicMapType_20036_9380_53#PolymorphicMapType_20036| Mask@14) (|PolymorphicMapType_20036_9380_20089#PolymorphicMapType_20036| Mask@14) (|PolymorphicMapType_20036_9380_67991#PolymorphicMapType_20036| Mask@14) (|PolymorphicMapType_20036_9380_72246#PolymorphicMapType_20036| Mask@14))) (state ExhaleHeap@6 Mask@15))) (and (and (= (select (|PolymorphicMapType_20015_9380_1186#PolymorphicMapType_20015| ExhaleHeap@6) diz Ref__x) (+ (select (|PolymorphicMapType_20015_9380_1186#PolymorphicMapType_20015| Heap@@17) diz Ref__x) 1)) (state ExhaleHeap@6 Mask@15)) (and (state ExhaleHeap@6 Mask@15) (= arg_n@0 (- n 1))))) (and (=> (= (ControlFlow 0 56) (- 0 57)) (not (= diz null))) (=> (not (= diz null)) (and (=> (= (ControlFlow 0 56) 53) anon34_Then_correct) (=> (= (ControlFlow 0 56) 55) anon34_Else_correct))))))))
(let ((anon33_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 60) 56)) anon6_correct)))
(let ((anon33_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 58) (- 0 59)) (<= FullPerm (select (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| Mask@0) diz Ref__x))) (=> (<= FullPerm (select (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| Mask@0) diz Ref__x)) (=> (= (ControlFlow 0 58) 56) anon6_correct))))))
(let ((anon32_Then_correct  (=> (> n 0) (and (=> (= (ControlFlow 0 61) (- 0 62)) (not (= diz null))) (=> (not (= diz null)) (and (=> (= (ControlFlow 0 61) 58) anon33_Then_correct) (=> (= (ControlFlow 0 61) 60) anon33_Else_correct)))))))
(let ((anon13_correct  (=> (= Mask@12 (PolymorphicMapType_20036 (store (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| Mask@11) diz Ref__x (- (select (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| Mask@11) diz Ref__x) FullPerm)) (|PolymorphicMapType_20036_9380_53#PolymorphicMapType_20036| Mask@11) (|PolymorphicMapType_20036_9380_20089#PolymorphicMapType_20036| Mask@11) (|PolymorphicMapType_20036_9380_67991#PolymorphicMapType_20036| Mask@11) (|PolymorphicMapType_20036_9380_72246#PolymorphicMapType_20036| Mask@11))) (and (=> (= (ControlFlow 0 38) (- 0 39)) (>= m_17 0)) (=> (>= m_17 0) (=> (and (IdenticalOnKnownLocations ExhaleHeap@4 ExhaleHeap@5 Mask@12) (not (= diz null))) (=> (and (and (and (= Mask@13 (PolymorphicMapType_20036 (store (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| Mask@12) diz Ref__x (+ (select (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| Mask@12) diz Ref__x) FullPerm)) (|PolymorphicMapType_20036_9380_53#PolymorphicMapType_20036| Mask@12) (|PolymorphicMapType_20036_9380_20089#PolymorphicMapType_20036| Mask@12) (|PolymorphicMapType_20036_9380_67991#PolymorphicMapType_20036| Mask@12) (|PolymorphicMapType_20036_9380_72246#PolymorphicMapType_20036| Mask@12))) (state ExhaleHeap@5 Mask@13)) (and (= (select (|PolymorphicMapType_20015_9380_1186#PolymorphicMapType_20015| ExhaleHeap@5) diz Ref__x) (+ (select (|PolymorphicMapType_20015_9380_1186#PolymorphicMapType_20015| ExhaleHeap@4) diz Ref__x) m_17)) (state ExhaleHeap@5 Mask@13))) (and (and (state ExhaleHeap@5 Mask@13) (= Mask@18 Mask@13)) (and (= Heap@1 ExhaleHeap@5) (= (ControlFlow 0 38) 37)))) anon14_correct)))))))
(let ((anon36_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 42) 38)) anon13_correct)))
(let ((anon36_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 40) (- 0 41)) (<= FullPerm (select (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| Mask@11) diz Ref__x))) (=> (<= FullPerm (select (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| Mask@11) diz Ref__x)) (=> (= (ControlFlow 0 40) 38) anon13_correct))))))
(let ((anon11_correct  (=> (and (and (and (= Mask@10 (PolymorphicMapType_20036 (store (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| Mask@0) diz Ref__x (- (select (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| Mask@0) diz Ref__x) FullPerm)) (|PolymorphicMapType_20036_9380_53#PolymorphicMapType_20036| Mask@0) (|PolymorphicMapType_20036_9380_20089#PolymorphicMapType_20036| Mask@0) (|PolymorphicMapType_20036_9380_67991#PolymorphicMapType_20036| Mask@0) (|PolymorphicMapType_20036_9380_72246#PolymorphicMapType_20036| Mask@0))) (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@4 Mask@10)) (and (not (= diz null)) (= Mask@11 (PolymorphicMapType_20036 (store (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| Mask@10) diz Ref__x (+ (select (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| Mask@10) diz Ref__x) FullPerm)) (|PolymorphicMapType_20036_9380_53#PolymorphicMapType_20036| Mask@10) (|PolymorphicMapType_20036_9380_20089#PolymorphicMapType_20036| Mask@10) (|PolymorphicMapType_20036_9380_67991#PolymorphicMapType_20036| Mask@10) (|PolymorphicMapType_20036_9380_72246#PolymorphicMapType_20036| Mask@10))))) (and (and (state ExhaleHeap@4 Mask@11) (= (select (|PolymorphicMapType_20015_9380_1186#PolymorphicMapType_20015| ExhaleHeap@4) diz Ref__x) (select (|PolymorphicMapType_20015_9380_1186#PolymorphicMapType_20015| Heap@@17) diz Ref__x))) (and (state ExhaleHeap@4 Mask@11) (state ExhaleHeap@4 Mask@11)))) (and (=> (= (ControlFlow 0 43) (- 0 44)) (not (= diz null))) (=> (not (= diz null)) (and (=> (= (ControlFlow 0 43) 40) anon36_Then_correct) (=> (= (ControlFlow 0 43) 42) anon36_Else_correct)))))))
(let ((anon35_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 47) 43)) anon11_correct)))
(let ((anon35_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 45) (- 0 46)) (<= FullPerm (select (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| Mask@0) diz Ref__x))) (=> (<= FullPerm (select (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| Mask@0) diz Ref__x)) (=> (= (ControlFlow 0 45) 43) anon11_correct))))))
(let ((anon32_Else_correct  (=> (>= 0 n) (and (=> (= (ControlFlow 0 48) (- 0 49)) (not (= diz null))) (=> (not (= diz null)) (and (=> (= (ControlFlow 0 48) 45) anon35_Then_correct) (=> (= (ControlFlow 0 48) 47) anon35_Else_correct)))))))
(let ((anon31_Then_correct  (=> __flatten_5@0 (and (=> (= (ControlFlow 0 63) 61) anon32_Then_correct) (=> (= (ControlFlow 0 63) 48) anon32_Else_correct)))))
(let ((anon26_correct  (=> (and (and (state Heap@0 Mask@9) (= Heap@2 Heap@0)) (and (= Mask@19 Mask@9) (= (ControlFlow 0 10) 9))) anon27_correct)))
(let ((anon20_correct  (=> (= Mask@7 (PolymorphicMapType_20036 (store (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| Mask@6) diz Ref__x (- (select (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| Mask@6) diz Ref__x) FullPerm)) (|PolymorphicMapType_20036_9380_53#PolymorphicMapType_20036| Mask@6) (|PolymorphicMapType_20036_9380_20089#PolymorphicMapType_20036| Mask@6) (|PolymorphicMapType_20036_9380_67991#PolymorphicMapType_20036| Mask@6) (|PolymorphicMapType_20036_9380_72246#PolymorphicMapType_20036| Mask@6))) (and (=> (= (ControlFlow 0 23) (- 0 25)) (>= arg_n_1@0 0)) (=> (>= arg_n_1@0 0) (and (=> (= (ControlFlow 0 23) (- 0 24)) (>= n 0)) (=> (>= n 0) (=> (and (IdenticalOnKnownLocations ExhaleHeap@2 ExhaleHeap@3 Mask@7) (not (= diz null))) (=> (and (and (and (= Mask@8 (PolymorphicMapType_20036 (store (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| Mask@7) diz Ref__x (+ (select (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| Mask@7) diz Ref__x) FullPerm)) (|PolymorphicMapType_20036_9380_53#PolymorphicMapType_20036| Mask@7) (|PolymorphicMapType_20036_9380_20089#PolymorphicMapType_20036| Mask@7) (|PolymorphicMapType_20036_9380_67991#PolymorphicMapType_20036| Mask@7) (|PolymorphicMapType_20036_9380_72246#PolymorphicMapType_20036| Mask@7))) (state ExhaleHeap@3 Mask@8)) (and (= (select (|PolymorphicMapType_20015_9380_1186#PolymorphicMapType_20015| ExhaleHeap@3) diz Ref__x) (+ (+ (select (|PolymorphicMapType_20015_9380_1186#PolymorphicMapType_20015| ExhaleHeap@2) diz Ref__x) arg_n_1@0) n)) (state ExhaleHeap@3 Mask@8))) (and (and (state ExhaleHeap@3 Mask@8) (= Mask@9 Mask@8)) (and (= Heap@0 ExhaleHeap@3) (= (ControlFlow 0 23) 10)))) anon26_correct)))))))))
(let ((anon39_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 28) 23)) anon20_correct)))
(let ((anon39_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 26) (- 0 27)) (<= FullPerm (select (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| Mask@6) diz Ref__x))) (=> (<= FullPerm (select (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| Mask@6) diz Ref__x)) (=> (= (ControlFlow 0 26) 23) anon20_correct))))))
(let ((anon18_correct  (=> (= Mask@5 (PolymorphicMapType_20036 (store (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| Mask@0) diz Ref__x (- (select (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| Mask@0) diz Ref__x) FullPerm)) (|PolymorphicMapType_20036_9380_53#PolymorphicMapType_20036| Mask@0) (|PolymorphicMapType_20036_9380_20089#PolymorphicMapType_20036| Mask@0) (|PolymorphicMapType_20036_9380_67991#PolymorphicMapType_20036| Mask@0) (|PolymorphicMapType_20036_9380_72246#PolymorphicMapType_20036| Mask@0))) (=> (and (and (and (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@2 Mask@5) (not (= diz null))) (and (= Mask@6 (PolymorphicMapType_20036 (store (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| Mask@5) diz Ref__x (+ (select (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| Mask@5) diz Ref__x) FullPerm)) (|PolymorphicMapType_20036_9380_53#PolymorphicMapType_20036| Mask@5) (|PolymorphicMapType_20036_9380_20089#PolymorphicMapType_20036| Mask@5) (|PolymorphicMapType_20036_9380_67991#PolymorphicMapType_20036| Mask@5) (|PolymorphicMapType_20036_9380_72246#PolymorphicMapType_20036| Mask@5))) (state ExhaleHeap@2 Mask@6))) (and (and (= (select (|PolymorphicMapType_20015_9380_1186#PolymorphicMapType_20015| ExhaleHeap@2) diz Ref__x) (+ (select (|PolymorphicMapType_20015_9380_1186#PolymorphicMapType_20015| Heap@@17) diz Ref__x) 1)) (state ExhaleHeap@2 Mask@6)) (and (state ExhaleHeap@2 Mask@6) (= arg_n_1@0 (- m_17 1))))) (and (=> (= (ControlFlow 0 29) (- 0 30)) (not (= diz null))) (=> (not (= diz null)) (and (=> (= (ControlFlow 0 29) 26) anon39_Then_correct) (=> (= (ControlFlow 0 29) 28) anon39_Else_correct))))))))
(let ((anon38_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 33) 29)) anon18_correct)))
(let ((anon38_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 31) (- 0 32)) (<= FullPerm (select (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| Mask@0) diz Ref__x))) (=> (<= FullPerm (select (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| Mask@0) diz Ref__x)) (=> (= (ControlFlow 0 31) 29) anon18_correct))))))
(let ((anon37_Then_correct  (=> (> m_17 0) (and (=> (= (ControlFlow 0 34) (- 0 35)) (not (= diz null))) (=> (not (= diz null)) (and (=> (= (ControlFlow 0 34) 31) anon38_Then_correct) (=> (= (ControlFlow 0 34) 33) anon38_Else_correct)))))))
(let ((anon25_correct  (=> (= Mask@3 (PolymorphicMapType_20036 (store (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| Mask@2) diz Ref__x (- (select (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| Mask@2) diz Ref__x) FullPerm)) (|PolymorphicMapType_20036_9380_53#PolymorphicMapType_20036| Mask@2) (|PolymorphicMapType_20036_9380_20089#PolymorphicMapType_20036| Mask@2) (|PolymorphicMapType_20036_9380_67991#PolymorphicMapType_20036| Mask@2) (|PolymorphicMapType_20036_9380_72246#PolymorphicMapType_20036| Mask@2))) (and (=> (= (ControlFlow 0 11) (- 0 12)) (>= n 0)) (=> (>= n 0) (=> (and (IdenticalOnKnownLocations ExhaleHeap@0 ExhaleHeap@1 Mask@3) (not (= diz null))) (=> (and (and (and (= Mask@4 (PolymorphicMapType_20036 (store (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| Mask@3) diz Ref__x (+ (select (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| Mask@3) diz Ref__x) FullPerm)) (|PolymorphicMapType_20036_9380_53#PolymorphicMapType_20036| Mask@3) (|PolymorphicMapType_20036_9380_20089#PolymorphicMapType_20036| Mask@3) (|PolymorphicMapType_20036_9380_67991#PolymorphicMapType_20036| Mask@3) (|PolymorphicMapType_20036_9380_72246#PolymorphicMapType_20036| Mask@3))) (state ExhaleHeap@1 Mask@4)) (and (= (select (|PolymorphicMapType_20015_9380_1186#PolymorphicMapType_20015| ExhaleHeap@1) diz Ref__x) (+ (select (|PolymorphicMapType_20015_9380_1186#PolymorphicMapType_20015| ExhaleHeap@0) diz Ref__x) n)) (state ExhaleHeap@1 Mask@4))) (and (and (state ExhaleHeap@1 Mask@4) (= Mask@9 Mask@4)) (and (= Heap@0 ExhaleHeap@1) (= (ControlFlow 0 11) 10)))) anon26_correct)))))))
(let ((anon41_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 15) 11)) anon25_correct)))
(let ((anon41_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 13) (- 0 14)) (<= FullPerm (select (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| Mask@2) diz Ref__x))) (=> (<= FullPerm (select (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| Mask@2) diz Ref__x)) (=> (= (ControlFlow 0 13) 11) anon25_correct))))))
(let ((anon23_correct  (=> (and (and (and (= Mask@1 (PolymorphicMapType_20036 (store (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| Mask@0) diz Ref__x (- (select (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| Mask@0) diz Ref__x) FullPerm)) (|PolymorphicMapType_20036_9380_53#PolymorphicMapType_20036| Mask@0) (|PolymorphicMapType_20036_9380_20089#PolymorphicMapType_20036| Mask@0) (|PolymorphicMapType_20036_9380_67991#PolymorphicMapType_20036| Mask@0) (|PolymorphicMapType_20036_9380_72246#PolymorphicMapType_20036| Mask@0))) (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@0 Mask@1)) (and (not (= diz null)) (= Mask@2 (PolymorphicMapType_20036 (store (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| Mask@1) diz Ref__x (+ (select (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| Mask@1) diz Ref__x) FullPerm)) (|PolymorphicMapType_20036_9380_53#PolymorphicMapType_20036| Mask@1) (|PolymorphicMapType_20036_9380_20089#PolymorphicMapType_20036| Mask@1) (|PolymorphicMapType_20036_9380_67991#PolymorphicMapType_20036| Mask@1) (|PolymorphicMapType_20036_9380_72246#PolymorphicMapType_20036| Mask@1))))) (and (and (state ExhaleHeap@0 Mask@2) (= (select (|PolymorphicMapType_20015_9380_1186#PolymorphicMapType_20015| ExhaleHeap@0) diz Ref__x) (select (|PolymorphicMapType_20015_9380_1186#PolymorphicMapType_20015| Heap@@17) diz Ref__x))) (and (state ExhaleHeap@0 Mask@2) (state ExhaleHeap@0 Mask@2)))) (and (=> (= (ControlFlow 0 16) (- 0 17)) (not (= diz null))) (=> (not (= diz null)) (and (=> (= (ControlFlow 0 16) 13) anon41_Then_correct) (=> (= (ControlFlow 0 16) 15) anon41_Else_correct)))))))
(let ((anon40_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 20) 16)) anon23_correct)))
(let ((anon40_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 18) (- 0 19)) (<= FullPerm (select (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| Mask@0) diz Ref__x))) (=> (<= FullPerm (select (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| Mask@0) diz Ref__x)) (=> (= (ControlFlow 0 18) 16) anon23_correct))))))
(let ((anon37_Else_correct  (=> (>= 0 m_17) (and (=> (= (ControlFlow 0 21) (- 0 22)) (not (= diz null))) (=> (not (= diz null)) (and (=> (= (ControlFlow 0 21) 18) anon40_Then_correct) (=> (= (ControlFlow 0 21) 20) anon40_Else_correct)))))))
(let ((anon31_Else_correct  (=> (not __flatten_5@0) (and (=> (= (ControlFlow 0 36) 34) anon37_Then_correct) (=> (= (ControlFlow 0 36) 21) anon37_Else_correct)))))
(let ((anon30_Else_correct  (and (=> (= (ControlFlow 0 64) (- 0 65)) (not (= diz null))) (=> (not (= diz null)) (=> (and (and (state Heap@@17 Mask@0) (state Heap@@17 Mask@0)) (and (state Heap@@17 Mask@0) (state Heap@@17 Mask@0))) (and (=> (= (ControlFlow 0 64) 63) anon31_Then_correct) (=> (= (ControlFlow 0 64) 36) anon31_Else_correct)))))))
(let ((anon30_Then_correct  (=> (state PostHeap@0 ZeroMask) (=> (and (and (not (= diz null)) (= PostMask@0 (PolymorphicMapType_20036 (store (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| ZeroMask) diz Ref__x (+ (select (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| ZeroMask) diz Ref__x) FullPerm)) (|PolymorphicMapType_20036_9380_53#PolymorphicMapType_20036| ZeroMask) (|PolymorphicMapType_20036_9380_20089#PolymorphicMapType_20036| ZeroMask) (|PolymorphicMapType_20036_9380_67991#PolymorphicMapType_20036| ZeroMask) (|PolymorphicMapType_20036_9380_72246#PolymorphicMapType_20036| ZeroMask)))) (and (state PostHeap@0 PostMask@0) (state PostHeap@0 PostMask@0))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (HasDirectPerm_9380_1186 PostMask@0 diz Ref__x)) (=> (HasDirectPerm_9380_1186 PostMask@0 diz Ref__x) (=> (= (ControlFlow 0 2) (- 0 1)) (HasDirectPerm_9380_1186 Mask@0 diz Ref__x))))))))
(let ((anon0_correct  (=> (and (and (state Heap@@17 ZeroMask) AssumePermUpperBound) (and (select (|PolymorphicMapType_20015_9252_53#PolymorphicMapType_20015| Heap@@17) diz $allocated) (not (= diz null)))) (=> (and (and (and (state Heap@@17 ZeroMask) (not (= diz null))) (and (= Mask@0 (PolymorphicMapType_20036 (store (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| ZeroMask) diz Ref__x (+ (select (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| ZeroMask) diz Ref__x) FullPerm)) (|PolymorphicMapType_20036_9380_53#PolymorphicMapType_20036| ZeroMask) (|PolymorphicMapType_20036_9380_20089#PolymorphicMapType_20036| ZeroMask) (|PolymorphicMapType_20036_9380_67991#PolymorphicMapType_20036| ZeroMask) (|PolymorphicMapType_20036_9380_72246#PolymorphicMapType_20036| ZeroMask))) (state Heap@@17 Mask@0))) (and (and (state Heap@@17 Mask@0) (>= n 0)) (and (>= m_17 0) (state Heap@@17 Mask@0)))) (and (=> (= (ControlFlow 0 66) 2) anon30_Then_correct) (=> (= (ControlFlow 0 66) 64) anon30_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 67) 66) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
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
(declare-sort T@Field_20075_53 0)
(declare-sort T@Field_20088_20089 0)
(declare-sort T@Field_23401_1186 0)
(declare-sort T@Field_9380_68124 0)
(declare-sort T@Field_9380_67991 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_20036 0)) (((PolymorphicMapType_20036 (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| (Array T@Ref T@Field_23401_1186 Real)) (|PolymorphicMapType_20036_9380_53#PolymorphicMapType_20036| (Array T@Ref T@Field_20075_53 Real)) (|PolymorphicMapType_20036_9380_20089#PolymorphicMapType_20036| (Array T@Ref T@Field_20088_20089 Real)) (|PolymorphicMapType_20036_9380_67991#PolymorphicMapType_20036| (Array T@Ref T@Field_9380_67991 Real)) (|PolymorphicMapType_20036_9380_72246#PolymorphicMapType_20036| (Array T@Ref T@Field_9380_68124 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_20564 0)) (((PolymorphicMapType_20564 (|PolymorphicMapType_20564_20075_53#PolymorphicMapType_20564| (Array T@Ref T@Field_20075_53 Bool)) (|PolymorphicMapType_20564_20075_20089#PolymorphicMapType_20564| (Array T@Ref T@Field_20088_20089 Bool)) (|PolymorphicMapType_20564_20075_1186#PolymorphicMapType_20564| (Array T@Ref T@Field_23401_1186 Bool)) (|PolymorphicMapType_20564_20075_67991#PolymorphicMapType_20564| (Array T@Ref T@Field_9380_67991 Bool)) (|PolymorphicMapType_20564_20075_69302#PolymorphicMapType_20564| (Array T@Ref T@Field_9380_68124 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_20015 0)) (((PolymorphicMapType_20015 (|PolymorphicMapType_20015_9252_53#PolymorphicMapType_20015| (Array T@Ref T@Field_20075_53 Bool)) (|PolymorphicMapType_20015_9255_9256#PolymorphicMapType_20015| (Array T@Ref T@Field_20088_20089 T@Ref)) (|PolymorphicMapType_20015_9380_1186#PolymorphicMapType_20015| (Array T@Ref T@Field_23401_1186 Int)) (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| (Array T@Ref T@Field_9380_68124 T@PolymorphicMapType_20564)) (|PolymorphicMapType_20015_20075_67991#PolymorphicMapType_20015| (Array T@Ref T@Field_9380_67991 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_20075_53)
(declare-fun Ref__x () T@Field_23401_1186)
(declare-fun Ref__x_old () T@Field_23401_1186)
(declare-fun Ref__Integer_value () T@Field_23401_1186)
(declare-fun succHeap (T@PolymorphicMapType_20015 T@PolymorphicMapType_20015) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_20015 T@PolymorphicMapType_20015) Bool)
(declare-fun state (T@PolymorphicMapType_20015 T@PolymorphicMapType_20036) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_20036) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_20564)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_20015 T@PolymorphicMapType_20015 T@PolymorphicMapType_20036) Bool)
(declare-fun IsPredicateField_9380_68082 (T@Field_9380_67991) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_9380 (T@Field_9380_67991) T@Field_9380_68124)
(declare-fun HasDirectPerm_9380_68055 (T@PolymorphicMapType_20036 T@Ref T@Field_9380_67991) Bool)
(declare-fun IsWandField_9380_69829 (T@Field_9380_67991) Bool)
(declare-fun WandMaskField_9380 (T@Field_9380_67991) T@Field_9380_68124)
(declare-fun dummyHeap () T@PolymorphicMapType_20015)
(declare-fun ZeroMask () T@PolymorphicMapType_20036)
(declare-fun InsidePredicate_20075_20075 (T@Field_9380_67991 T@FrameType T@Field_9380_67991 T@FrameType) Bool)
(declare-fun IsPredicateField_9380_1186 (T@Field_23401_1186) Bool)
(declare-fun IsWandField_9380_1186 (T@Field_23401_1186) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_9380_73375 (T@Field_9380_68124) Bool)
(declare-fun IsWandField_9380_73391 (T@Field_9380_68124) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_9380_20089 (T@Field_20088_20089) Bool)
(declare-fun IsWandField_9380_20089 (T@Field_20088_20089) Bool)
(declare-fun IsPredicateField_9380_53 (T@Field_20075_53) Bool)
(declare-fun IsWandField_9380_53 (T@Field_20075_53) Bool)
(declare-fun HasDirectPerm_9380_73829 (T@PolymorphicMapType_20036 T@Ref T@Field_9380_68124) Bool)
(declare-fun HasDirectPerm_9380_20089 (T@PolymorphicMapType_20036 T@Ref T@Field_20088_20089) Bool)
(declare-fun HasDirectPerm_9380_53 (T@PolymorphicMapType_20036 T@Ref T@Field_20075_53) Bool)
(declare-fun HasDirectPerm_9380_1186 (T@PolymorphicMapType_20036 T@Ref T@Field_23401_1186) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_20036 T@PolymorphicMapType_20036 T@PolymorphicMapType_20036) Bool)
(assert (distinct Ref__x Ref__x_old Ref__Integer_value)
)
(assert (forall ((Heap0 T@PolymorphicMapType_20015) (Heap1 T@PolymorphicMapType_20015) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_20015) (Mask T@PolymorphicMapType_20036) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_20015) (Heap1@@0 T@PolymorphicMapType_20015) (Heap2 T@PolymorphicMapType_20015) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_9380_68124) ) (!  (not (select (|PolymorphicMapType_20564_20075_69302#PolymorphicMapType_20564| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_20564_20075_69302#PolymorphicMapType_20564| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_9380_67991) ) (!  (not (select (|PolymorphicMapType_20564_20075_67991#PolymorphicMapType_20564| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_20564_20075_67991#PolymorphicMapType_20564| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_23401_1186) ) (!  (not (select (|PolymorphicMapType_20564_20075_1186#PolymorphicMapType_20564| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_20564_20075_1186#PolymorphicMapType_20564| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_20088_20089) ) (!  (not (select (|PolymorphicMapType_20564_20075_20089#PolymorphicMapType_20564| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_20564_20075_20089#PolymorphicMapType_20564| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_20075_53) ) (!  (not (select (|PolymorphicMapType_20564_20075_53#PolymorphicMapType_20564| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_20564_20075_53#PolymorphicMapType_20564| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_20015) (ExhaleHeap T@PolymorphicMapType_20015) (Mask@@0 T@PolymorphicMapType_20036) (pm_f T@Field_9380_67991) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_9380_68055 Mask@@0 null pm_f) (IsPredicateField_9380_68082 pm_f)) (= (select (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| Heap@@0) null (PredicateMaskField_9380 pm_f)) (select (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| ExhaleHeap) null (PredicateMaskField_9380 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_9380_68082 pm_f) (select (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| ExhaleHeap) null (PredicateMaskField_9380 pm_f)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_20015) (ExhaleHeap@@0 T@PolymorphicMapType_20015) (Mask@@1 T@PolymorphicMapType_20036) (pm_f@@0 T@Field_9380_67991) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_9380_68055 Mask@@1 null pm_f@@0) (IsWandField_9380_69829 pm_f@@0)) (= (select (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| Heap@@1) null (WandMaskField_9380 pm_f@@0)) (select (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| ExhaleHeap@@0) null (WandMaskField_9380 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_9380_69829 pm_f@@0) (select (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| ExhaleHeap@@0) null (WandMaskField_9380 pm_f@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_20015) (ExhaleHeap@@1 T@PolymorphicMapType_20015) (Mask@@2 T@PolymorphicMapType_20036) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_20015_9252_53#PolymorphicMapType_20015| Heap@@2) o_1 $allocated) (select (|PolymorphicMapType_20015_9252_53#PolymorphicMapType_20015| ExhaleHeap@@1) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_20015_9252_53#PolymorphicMapType_20015| ExhaleHeap@@1) o_1 $allocated))
)))
(assert (forall ((p T@Field_9380_67991) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_20075_20075 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_20075_20075 p v_1 p w))
)))
(assert  (not (IsPredicateField_9380_1186 Ref__x)))
(assert  (not (IsWandField_9380_1186 Ref__x)))
(assert  (not (IsPredicateField_9380_1186 Ref__x_old)))
(assert  (not (IsWandField_9380_1186 Ref__x_old)))
(assert  (not (IsPredicateField_9380_1186 Ref__Integer_value)))
(assert  (not (IsWandField_9380_1186 Ref__Integer_value)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_20015) (ExhaleHeap@@2 T@PolymorphicMapType_20015) (Mask@@3 T@PolymorphicMapType_20036) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_20036) (o_2@@4 T@Ref) (f_4@@4 T@Field_9380_68124) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_20036_9380_72246#PolymorphicMapType_20036| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_9380_73375 f_4@@4))) (not (IsWandField_9380_73391 f_4@@4))) (<= (select (|PolymorphicMapType_20036_9380_72246#PolymorphicMapType_20036| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_20036_9380_72246#PolymorphicMapType_20036| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_20036) (o_2@@5 T@Ref) (f_4@@5 T@Field_9380_67991) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_20036_9380_67991#PolymorphicMapType_20036| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_9380_68082 f_4@@5))) (not (IsWandField_9380_69829 f_4@@5))) (<= (select (|PolymorphicMapType_20036_9380_67991#PolymorphicMapType_20036| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_20036_9380_67991#PolymorphicMapType_20036| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_20036) (o_2@@6 T@Ref) (f_4@@6 T@Field_20088_20089) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_20036_9380_20089#PolymorphicMapType_20036| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_9380_20089 f_4@@6))) (not (IsWandField_9380_20089 f_4@@6))) (<= (select (|PolymorphicMapType_20036_9380_20089#PolymorphicMapType_20036| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_20036_9380_20089#PolymorphicMapType_20036| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_20036) (o_2@@7 T@Ref) (f_4@@7 T@Field_20075_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_20036_9380_53#PolymorphicMapType_20036| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_9380_53 f_4@@7))) (not (IsWandField_9380_53 f_4@@7))) (<= (select (|PolymorphicMapType_20036_9380_53#PolymorphicMapType_20036| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_20036_9380_53#PolymorphicMapType_20036| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_20036) (o_2@@8 T@Ref) (f_4@@8 T@Field_23401_1186) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_9380_1186 f_4@@8))) (not (IsWandField_9380_1186 f_4@@8))) (<= (select (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_20036) (o_2@@9 T@Ref) (f_4@@9 T@Field_9380_68124) ) (! (= (HasDirectPerm_9380_73829 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_20036_9380_72246#PolymorphicMapType_20036| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9380_73829 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_20036) (o_2@@10 T@Ref) (f_4@@10 T@Field_9380_67991) ) (! (= (HasDirectPerm_9380_68055 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_20036_9380_67991#PolymorphicMapType_20036| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9380_68055 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_20036) (o_2@@11 T@Ref) (f_4@@11 T@Field_20088_20089) ) (! (= (HasDirectPerm_9380_20089 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_20036_9380_20089#PolymorphicMapType_20036| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9380_20089 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_20036) (o_2@@12 T@Ref) (f_4@@12 T@Field_20075_53) ) (! (= (HasDirectPerm_9380_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_20036_9380_53#PolymorphicMapType_20036| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9380_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_20036) (o_2@@13 T@Ref) (f_4@@13 T@Field_23401_1186) ) (! (= (HasDirectPerm_9380_1186 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9380_1186 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_20015) (ExhaleHeap@@3 T@PolymorphicMapType_20015) (Mask@@14 T@PolymorphicMapType_20036) (pm_f@@1 T@Field_9380_67991) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_9380_68055 Mask@@14 null pm_f@@1) (IsPredicateField_9380_68082 pm_f@@1)) (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_20075_53) ) (!  (=> (select (|PolymorphicMapType_20564_20075_53#PolymorphicMapType_20564| (select (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| Heap@@4) null (PredicateMaskField_9380 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_20015_9252_53#PolymorphicMapType_20015| Heap@@4) o2 f_2) (select (|PolymorphicMapType_20015_9252_53#PolymorphicMapType_20015| ExhaleHeap@@3) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20015_9252_53#PolymorphicMapType_20015| ExhaleHeap@@3) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_20088_20089) ) (!  (=> (select (|PolymorphicMapType_20564_20075_20089#PolymorphicMapType_20564| (select (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| Heap@@4) null (PredicateMaskField_9380 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_20015_9255_9256#PolymorphicMapType_20015| Heap@@4) o2@@0 f_2@@0) (select (|PolymorphicMapType_20015_9255_9256#PolymorphicMapType_20015| ExhaleHeap@@3) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20015_9255_9256#PolymorphicMapType_20015| ExhaleHeap@@3) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_23401_1186) ) (!  (=> (select (|PolymorphicMapType_20564_20075_1186#PolymorphicMapType_20564| (select (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| Heap@@4) null (PredicateMaskField_9380 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_20015_9380_1186#PolymorphicMapType_20015| Heap@@4) o2@@1 f_2@@1) (select (|PolymorphicMapType_20015_9380_1186#PolymorphicMapType_20015| ExhaleHeap@@3) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20015_9380_1186#PolymorphicMapType_20015| ExhaleHeap@@3) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_9380_67991) ) (!  (=> (select (|PolymorphicMapType_20564_20075_67991#PolymorphicMapType_20564| (select (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| Heap@@4) null (PredicateMaskField_9380 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_20015_20075_67991#PolymorphicMapType_20015| Heap@@4) o2@@2 f_2@@2) (select (|PolymorphicMapType_20015_20075_67991#PolymorphicMapType_20015| ExhaleHeap@@3) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20015_20075_67991#PolymorphicMapType_20015| ExhaleHeap@@3) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_9380_68124) ) (!  (=> (select (|PolymorphicMapType_20564_20075_69302#PolymorphicMapType_20564| (select (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| Heap@@4) null (PredicateMaskField_9380 pm_f@@1))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| Heap@@4) o2@@3 f_2@@3) (select (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| ExhaleHeap@@3) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| ExhaleHeap@@3) o2@@3 f_2@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_9380_68082 pm_f@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_20015) (ExhaleHeap@@4 T@PolymorphicMapType_20015) (Mask@@15 T@PolymorphicMapType_20036) (pm_f@@2 T@Field_9380_67991) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_9380_68055 Mask@@15 null pm_f@@2) (IsWandField_9380_69829 pm_f@@2)) (and (and (and (and (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_20075_53) ) (!  (=> (select (|PolymorphicMapType_20564_20075_53#PolymorphicMapType_20564| (select (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| Heap@@5) null (WandMaskField_9380 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_20015_9252_53#PolymorphicMapType_20015| Heap@@5) o2@@4 f_2@@4) (select (|PolymorphicMapType_20015_9252_53#PolymorphicMapType_20015| ExhaleHeap@@4) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20015_9252_53#PolymorphicMapType_20015| ExhaleHeap@@4) o2@@4 f_2@@4))
)) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_20088_20089) ) (!  (=> (select (|PolymorphicMapType_20564_20075_20089#PolymorphicMapType_20564| (select (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| Heap@@5) null (WandMaskField_9380 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_20015_9255_9256#PolymorphicMapType_20015| Heap@@5) o2@@5 f_2@@5) (select (|PolymorphicMapType_20015_9255_9256#PolymorphicMapType_20015| ExhaleHeap@@4) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20015_9255_9256#PolymorphicMapType_20015| ExhaleHeap@@4) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_23401_1186) ) (!  (=> (select (|PolymorphicMapType_20564_20075_1186#PolymorphicMapType_20564| (select (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| Heap@@5) null (WandMaskField_9380 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_20015_9380_1186#PolymorphicMapType_20015| Heap@@5) o2@@6 f_2@@6) (select (|PolymorphicMapType_20015_9380_1186#PolymorphicMapType_20015| ExhaleHeap@@4) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20015_9380_1186#PolymorphicMapType_20015| ExhaleHeap@@4) o2@@6 f_2@@6))
))) (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_9380_67991) ) (!  (=> (select (|PolymorphicMapType_20564_20075_67991#PolymorphicMapType_20564| (select (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| Heap@@5) null (WandMaskField_9380 pm_f@@2))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_20015_20075_67991#PolymorphicMapType_20015| Heap@@5) o2@@7 f_2@@7) (select (|PolymorphicMapType_20015_20075_67991#PolymorphicMapType_20015| ExhaleHeap@@4) o2@@7 f_2@@7)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20015_20075_67991#PolymorphicMapType_20015| ExhaleHeap@@4) o2@@7 f_2@@7))
))) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_9380_68124) ) (!  (=> (select (|PolymorphicMapType_20564_20075_69302#PolymorphicMapType_20564| (select (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| Heap@@5) null (WandMaskField_9380 pm_f@@2))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| Heap@@5) o2@@8 f_2@@8) (select (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| ExhaleHeap@@4) o2@@8 f_2@@8)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| ExhaleHeap@@4) o2@@8 f_2@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_9380_69829 pm_f@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_20015) (ExhaleHeap@@5 T@PolymorphicMapType_20015) (Mask@@16 T@PolymorphicMapType_20036) (o_1@@0 T@Ref) (f_2@@9 T@Field_9380_68124) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_9380_73829 Mask@@16 o_1@@0 f_2@@9) (= (select (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| Heap@@6) o_1@@0 f_2@@9) (select (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| ExhaleHeap@@5) o_1@@0 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| ExhaleHeap@@5) o_1@@0 f_2@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_20015) (ExhaleHeap@@6 T@PolymorphicMapType_20015) (Mask@@17 T@PolymorphicMapType_20036) (o_1@@1 T@Ref) (f_2@@10 T@Field_9380_67991) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_9380_68055 Mask@@17 o_1@@1 f_2@@10) (= (select (|PolymorphicMapType_20015_20075_67991#PolymorphicMapType_20015| Heap@@7) o_1@@1 f_2@@10) (select (|PolymorphicMapType_20015_20075_67991#PolymorphicMapType_20015| ExhaleHeap@@6) o_1@@1 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_20015_20075_67991#PolymorphicMapType_20015| ExhaleHeap@@6) o_1@@1 f_2@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_20015) (ExhaleHeap@@7 T@PolymorphicMapType_20015) (Mask@@18 T@PolymorphicMapType_20036) (o_1@@2 T@Ref) (f_2@@11 T@Field_20088_20089) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_9380_20089 Mask@@18 o_1@@2 f_2@@11) (= (select (|PolymorphicMapType_20015_9255_9256#PolymorphicMapType_20015| Heap@@8) o_1@@2 f_2@@11) (select (|PolymorphicMapType_20015_9255_9256#PolymorphicMapType_20015| ExhaleHeap@@7) o_1@@2 f_2@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_20015_9255_9256#PolymorphicMapType_20015| ExhaleHeap@@7) o_1@@2 f_2@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_20015) (ExhaleHeap@@8 T@PolymorphicMapType_20015) (Mask@@19 T@PolymorphicMapType_20036) (o_1@@3 T@Ref) (f_2@@12 T@Field_20075_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_9380_53 Mask@@19 o_1@@3 f_2@@12) (= (select (|PolymorphicMapType_20015_9252_53#PolymorphicMapType_20015| Heap@@9) o_1@@3 f_2@@12) (select (|PolymorphicMapType_20015_9252_53#PolymorphicMapType_20015| ExhaleHeap@@8) o_1@@3 f_2@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_20015_9252_53#PolymorphicMapType_20015| ExhaleHeap@@8) o_1@@3 f_2@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_20015) (ExhaleHeap@@9 T@PolymorphicMapType_20015) (Mask@@20 T@PolymorphicMapType_20036) (o_1@@4 T@Ref) (f_2@@13 T@Field_23401_1186) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_9380_1186 Mask@@20 o_1@@4 f_2@@13) (= (select (|PolymorphicMapType_20015_9380_1186#PolymorphicMapType_20015| Heap@@10) o_1@@4 f_2@@13) (select (|PolymorphicMapType_20015_9380_1186#PolymorphicMapType_20015| ExhaleHeap@@9) o_1@@4 f_2@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_20015_9380_1186#PolymorphicMapType_20015| ExhaleHeap@@9) o_1@@4 f_2@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_9380_68124) ) (! (= (select (|PolymorphicMapType_20036_9380_72246#PolymorphicMapType_20036| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_20036_9380_72246#PolymorphicMapType_20036| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_9380_67991) ) (! (= (select (|PolymorphicMapType_20036_9380_67991#PolymorphicMapType_20036| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_20036_9380_67991#PolymorphicMapType_20036| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_20088_20089) ) (! (= (select (|PolymorphicMapType_20036_9380_20089#PolymorphicMapType_20036| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_20036_9380_20089#PolymorphicMapType_20036| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_20075_53) ) (! (= (select (|PolymorphicMapType_20036_9380_53#PolymorphicMapType_20036| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_20036_9380_53#PolymorphicMapType_20036| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_23401_1186) ) (! (= (select (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_20036) (SummandMask1 T@PolymorphicMapType_20036) (SummandMask2 T@PolymorphicMapType_20036) (o_2@@19 T@Ref) (f_4@@19 T@Field_9380_68124) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_20036_9380_72246#PolymorphicMapType_20036| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_20036_9380_72246#PolymorphicMapType_20036| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_20036_9380_72246#PolymorphicMapType_20036| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_20036_9380_72246#PolymorphicMapType_20036| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_20036_9380_72246#PolymorphicMapType_20036| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_20036_9380_72246#PolymorphicMapType_20036| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_20036) (SummandMask1@@0 T@PolymorphicMapType_20036) (SummandMask2@@0 T@PolymorphicMapType_20036) (o_2@@20 T@Ref) (f_4@@20 T@Field_9380_67991) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_20036_9380_67991#PolymorphicMapType_20036| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_20036_9380_67991#PolymorphicMapType_20036| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_20036_9380_67991#PolymorphicMapType_20036| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_20036_9380_67991#PolymorphicMapType_20036| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_20036_9380_67991#PolymorphicMapType_20036| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_20036_9380_67991#PolymorphicMapType_20036| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_20036) (SummandMask1@@1 T@PolymorphicMapType_20036) (SummandMask2@@1 T@PolymorphicMapType_20036) (o_2@@21 T@Ref) (f_4@@21 T@Field_20088_20089) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_20036_9380_20089#PolymorphicMapType_20036| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_20036_9380_20089#PolymorphicMapType_20036| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_20036_9380_20089#PolymorphicMapType_20036| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_20036_9380_20089#PolymorphicMapType_20036| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_20036_9380_20089#PolymorphicMapType_20036| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_20036_9380_20089#PolymorphicMapType_20036| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_20036) (SummandMask1@@2 T@PolymorphicMapType_20036) (SummandMask2@@2 T@PolymorphicMapType_20036) (o_2@@22 T@Ref) (f_4@@22 T@Field_20075_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_20036_9380_53#PolymorphicMapType_20036| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_20036_9380_53#PolymorphicMapType_20036| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_20036_9380_53#PolymorphicMapType_20036| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_20036_9380_53#PolymorphicMapType_20036| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_20036_9380_53#PolymorphicMapType_20036| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_20036_9380_53#PolymorphicMapType_20036| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_20036) (SummandMask1@@3 T@PolymorphicMapType_20036) (SummandMask2@@3 T@PolymorphicMapType_20036) (o_2@@23 T@Ref) (f_4@@23 T@Field_23401_1186) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_20036_9380_1186#PolymorphicMapType_20036| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_20015) (o T@Ref) (f_3 T@Field_9380_67991) (v T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_20015 (|PolymorphicMapType_20015_9252_53#PolymorphicMapType_20015| Heap@@11) (|PolymorphicMapType_20015_9255_9256#PolymorphicMapType_20015| Heap@@11) (|PolymorphicMapType_20015_9380_1186#PolymorphicMapType_20015| Heap@@11) (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| Heap@@11) (store (|PolymorphicMapType_20015_20075_67991#PolymorphicMapType_20015| Heap@@11) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_20015 (|PolymorphicMapType_20015_9252_53#PolymorphicMapType_20015| Heap@@11) (|PolymorphicMapType_20015_9255_9256#PolymorphicMapType_20015| Heap@@11) (|PolymorphicMapType_20015_9380_1186#PolymorphicMapType_20015| Heap@@11) (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| Heap@@11) (store (|PolymorphicMapType_20015_20075_67991#PolymorphicMapType_20015| Heap@@11) o f_3 v)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_20015) (o@@0 T@Ref) (f_3@@0 T@Field_9380_68124) (v@@0 T@PolymorphicMapType_20564) ) (! (succHeap Heap@@12 (PolymorphicMapType_20015 (|PolymorphicMapType_20015_9252_53#PolymorphicMapType_20015| Heap@@12) (|PolymorphicMapType_20015_9255_9256#PolymorphicMapType_20015| Heap@@12) (|PolymorphicMapType_20015_9380_1186#PolymorphicMapType_20015| Heap@@12) (store (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| Heap@@12) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_20015_20075_67991#PolymorphicMapType_20015| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_20015 (|PolymorphicMapType_20015_9252_53#PolymorphicMapType_20015| Heap@@12) (|PolymorphicMapType_20015_9255_9256#PolymorphicMapType_20015| Heap@@12) (|PolymorphicMapType_20015_9380_1186#PolymorphicMapType_20015| Heap@@12) (store (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| Heap@@12) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_20015_20075_67991#PolymorphicMapType_20015| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_20015) (o@@1 T@Ref) (f_3@@1 T@Field_23401_1186) (v@@1 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_20015 (|PolymorphicMapType_20015_9252_53#PolymorphicMapType_20015| Heap@@13) (|PolymorphicMapType_20015_9255_9256#PolymorphicMapType_20015| Heap@@13) (store (|PolymorphicMapType_20015_9380_1186#PolymorphicMapType_20015| Heap@@13) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| Heap@@13) (|PolymorphicMapType_20015_20075_67991#PolymorphicMapType_20015| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_20015 (|PolymorphicMapType_20015_9252_53#PolymorphicMapType_20015| Heap@@13) (|PolymorphicMapType_20015_9255_9256#PolymorphicMapType_20015| Heap@@13) (store (|PolymorphicMapType_20015_9380_1186#PolymorphicMapType_20015| Heap@@13) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| Heap@@13) (|PolymorphicMapType_20015_20075_67991#PolymorphicMapType_20015| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_20015) (o@@2 T@Ref) (f_3@@2 T@Field_20088_20089) (v@@2 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_20015 (|PolymorphicMapType_20015_9252_53#PolymorphicMapType_20015| Heap@@14) (store (|PolymorphicMapType_20015_9255_9256#PolymorphicMapType_20015| Heap@@14) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_20015_9380_1186#PolymorphicMapType_20015| Heap@@14) (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| Heap@@14) (|PolymorphicMapType_20015_20075_67991#PolymorphicMapType_20015| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_20015 (|PolymorphicMapType_20015_9252_53#PolymorphicMapType_20015| Heap@@14) (store (|PolymorphicMapType_20015_9255_9256#PolymorphicMapType_20015| Heap@@14) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_20015_9380_1186#PolymorphicMapType_20015| Heap@@14) (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| Heap@@14) (|PolymorphicMapType_20015_20075_67991#PolymorphicMapType_20015| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_20015) (o@@3 T@Ref) (f_3@@3 T@Field_20075_53) (v@@3 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_20015 (store (|PolymorphicMapType_20015_9252_53#PolymorphicMapType_20015| Heap@@15) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_20015_9255_9256#PolymorphicMapType_20015| Heap@@15) (|PolymorphicMapType_20015_9380_1186#PolymorphicMapType_20015| Heap@@15) (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| Heap@@15) (|PolymorphicMapType_20015_20075_67991#PolymorphicMapType_20015| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_20015 (store (|PolymorphicMapType_20015_9252_53#PolymorphicMapType_20015| Heap@@15) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_20015_9255_9256#PolymorphicMapType_20015| Heap@@15) (|PolymorphicMapType_20015_9380_1186#PolymorphicMapType_20015| Heap@@15) (|PolymorphicMapType_20015_9380_68168#PolymorphicMapType_20015| Heap@@15) (|PolymorphicMapType_20015_20075_67991#PolymorphicMapType_20015| Heap@@15)))
)))
(assert (forall ((o@@4 T@Ref) (f T@Field_20088_20089) (Heap@@16 T@PolymorphicMapType_20015) ) (!  (=> (select (|PolymorphicMapType_20015_9252_53#PolymorphicMapType_20015| Heap@@16) o@@4 $allocated) (select (|PolymorphicMapType_20015_9252_53#PolymorphicMapType_20015| Heap@@16) (select (|PolymorphicMapType_20015_9255_9256#PolymorphicMapType_20015| Heap@@16) o@@4 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_20015_9255_9256#PolymorphicMapType_20015| Heap@@16) o@@4 f))
)))
(assert (forall ((p@@1 T@Field_9380_67991) (v_1@@0 T@FrameType) (q T@Field_9380_67991) (w@@0 T@FrameType) (r T@Field_9380_67991) (u T@FrameType) ) (!  (=> (and (InsidePredicate_20075_20075 p@@1 v_1@@0 q w@@0) (InsidePredicate_20075_20075 q w@@0 r u)) (InsidePredicate_20075_20075 p@@1 v_1@@0 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20075_20075 p@@1 v_1@@0 q w@@0) (InsidePredicate_20075_20075 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid

