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
(declare-sort T@Field_17045_53 0)
(declare-sort T@Field_17058_17059 0)
(declare-sort T@Field_20445_1255 0)
(declare-sort T@Field_7856_55561 0)
(declare-sort T@Field_7856_55428 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_17006 0)) (((PolymorphicMapType_17006 (|PolymorphicMapType_17006_7856_1255#PolymorphicMapType_17006| (Array T@Ref T@Field_20445_1255 Real)) (|PolymorphicMapType_17006_7856_53#PolymorphicMapType_17006| (Array T@Ref T@Field_17045_53 Real)) (|PolymorphicMapType_17006_7856_17059#PolymorphicMapType_17006| (Array T@Ref T@Field_17058_17059 Real)) (|PolymorphicMapType_17006_7856_55428#PolymorphicMapType_17006| (Array T@Ref T@Field_7856_55428 Real)) (|PolymorphicMapType_17006_7856_59683#PolymorphicMapType_17006| (Array T@Ref T@Field_7856_55561 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_17534 0)) (((PolymorphicMapType_17534 (|PolymorphicMapType_17534_17045_53#PolymorphicMapType_17534| (Array T@Ref T@Field_17045_53 Bool)) (|PolymorphicMapType_17534_17045_17059#PolymorphicMapType_17534| (Array T@Ref T@Field_17058_17059 Bool)) (|PolymorphicMapType_17534_17045_1255#PolymorphicMapType_17534| (Array T@Ref T@Field_20445_1255 Bool)) (|PolymorphicMapType_17534_17045_55428#PolymorphicMapType_17534| (Array T@Ref T@Field_7856_55428 Bool)) (|PolymorphicMapType_17534_17045_56739#PolymorphicMapType_17534| (Array T@Ref T@Field_7856_55561 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_16985 0)) (((PolymorphicMapType_16985 (|PolymorphicMapType_16985_7728_53#PolymorphicMapType_16985| (Array T@Ref T@Field_17045_53 Bool)) (|PolymorphicMapType_16985_7731_7732#PolymorphicMapType_16985| (Array T@Ref T@Field_17058_17059 T@Ref)) (|PolymorphicMapType_16985_7856_1255#PolymorphicMapType_16985| (Array T@Ref T@Field_20445_1255 Int)) (|PolymorphicMapType_16985_7856_55605#PolymorphicMapType_16985| (Array T@Ref T@Field_7856_55561 T@PolymorphicMapType_17534)) (|PolymorphicMapType_16985_17045_55428#PolymorphicMapType_16985| (Array T@Ref T@Field_7856_55428 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_17045_53)
(declare-fun v_35 () T@Field_20445_1255)
(declare-fun succHeap (T@PolymorphicMapType_16985 T@PolymorphicMapType_16985) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_16985 T@PolymorphicMapType_16985) Bool)
(declare-fun state (T@PolymorphicMapType_16985 T@PolymorphicMapType_17006) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_17006) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_17534)
(declare-fun decreasing_1186 (Int Int) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_16985 T@PolymorphicMapType_16985 T@PolymorphicMapType_17006) Bool)
(declare-fun IsPredicateField_7856_55519 (T@Field_7856_55428) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_7856 (T@Field_7856_55428) T@Field_7856_55561)
(declare-fun HasDirectPerm_7856_55492 (T@PolymorphicMapType_17006 T@Ref T@Field_7856_55428) Bool)
(declare-fun IsWandField_7856_57266 (T@Field_7856_55428) Bool)
(declare-fun WandMaskField_7856 (T@Field_7856_55428) T@Field_7856_55561)
(declare-fun dummyHeap () T@PolymorphicMapType_16985)
(declare-fun ZeroMask () T@PolymorphicMapType_17006)
(declare-fun InsidePredicate_17045_17045 (T@Field_7856_55428 T@FrameType T@Field_7856_55428 T@FrameType) Bool)
(declare-fun IsPredicateField_7856_1255 (T@Field_20445_1255) Bool)
(declare-fun IsWandField_7856_1255 (T@Field_20445_1255) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_7856_60812 (T@Field_7856_55561) Bool)
(declare-fun IsWandField_7856_60828 (T@Field_7856_55561) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_7856_17059 (T@Field_17058_17059) Bool)
(declare-fun IsWandField_7856_17059 (T@Field_17058_17059) Bool)
(declare-fun IsPredicateField_7856_53 (T@Field_17045_53) Bool)
(declare-fun IsWandField_7856_53 (T@Field_17045_53) Bool)
(declare-fun HasDirectPerm_7856_61266 (T@PolymorphicMapType_17006 T@Ref T@Field_7856_55561) Bool)
(declare-fun HasDirectPerm_7856_17059 (T@PolymorphicMapType_17006 T@Ref T@Field_17058_17059) Bool)
(declare-fun HasDirectPerm_7856_53 (T@PolymorphicMapType_17006 T@Ref T@Field_17045_53) Bool)
(declare-fun HasDirectPerm_7856_1255 (T@PolymorphicMapType_17006 T@Ref T@Field_20445_1255) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_17006 T@PolymorphicMapType_17006 T@PolymorphicMapType_17006) Bool)
(declare-fun bounded_1211 (Int) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_16985) (Heap1 T@PolymorphicMapType_16985) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_16985) (Mask T@PolymorphicMapType_17006) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_16985) (Heap1@@0 T@PolymorphicMapType_16985) (Heap2 T@PolymorphicMapType_16985) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_7856_55561) ) (!  (not (select (|PolymorphicMapType_17534_17045_56739#PolymorphicMapType_17534| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17534_17045_56739#PolymorphicMapType_17534| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_7856_55428) ) (!  (not (select (|PolymorphicMapType_17534_17045_55428#PolymorphicMapType_17534| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17534_17045_55428#PolymorphicMapType_17534| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_20445_1255) ) (!  (not (select (|PolymorphicMapType_17534_17045_1255#PolymorphicMapType_17534| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17534_17045_1255#PolymorphicMapType_17534| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_17058_17059) ) (!  (not (select (|PolymorphicMapType_17534_17045_17059#PolymorphicMapType_17534| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17534_17045_17059#PolymorphicMapType_17534| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_17045_53) ) (!  (not (select (|PolymorphicMapType_17534_17045_53#PolymorphicMapType_17534| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17534_17045_53#PolymorphicMapType_17534| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((int1 Int) (int2 Int) ) (!  (=> (< int1 int2) (decreasing_1186 int1 int2))
 :qid |stdinbpl.184:15|
 :skolemid |22|
 :pattern ( (decreasing_1186 int1 int2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_16985) (ExhaleHeap T@PolymorphicMapType_16985) (Mask@@0 T@PolymorphicMapType_17006) (pm_f T@Field_7856_55428) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_7856_55492 Mask@@0 null pm_f) (IsPredicateField_7856_55519 pm_f)) (= (select (|PolymorphicMapType_16985_7856_55605#PolymorphicMapType_16985| Heap@@0) null (PredicateMaskField_7856 pm_f)) (select (|PolymorphicMapType_16985_7856_55605#PolymorphicMapType_16985| ExhaleHeap) null (PredicateMaskField_7856 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_7856_55519 pm_f) (select (|PolymorphicMapType_16985_7856_55605#PolymorphicMapType_16985| ExhaleHeap) null (PredicateMaskField_7856 pm_f)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_16985) (ExhaleHeap@@0 T@PolymorphicMapType_16985) (Mask@@1 T@PolymorphicMapType_17006) (pm_f@@0 T@Field_7856_55428) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_7856_55492 Mask@@1 null pm_f@@0) (IsWandField_7856_57266 pm_f@@0)) (= (select (|PolymorphicMapType_16985_7856_55605#PolymorphicMapType_16985| Heap@@1) null (WandMaskField_7856 pm_f@@0)) (select (|PolymorphicMapType_16985_7856_55605#PolymorphicMapType_16985| ExhaleHeap@@0) null (WandMaskField_7856 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_7856_57266 pm_f@@0) (select (|PolymorphicMapType_16985_7856_55605#PolymorphicMapType_16985| ExhaleHeap@@0) null (WandMaskField_7856 pm_f@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_16985) (ExhaleHeap@@1 T@PolymorphicMapType_16985) (Mask@@2 T@PolymorphicMapType_17006) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_16985_7728_53#PolymorphicMapType_16985| Heap@@2) o_1 $allocated) (select (|PolymorphicMapType_16985_7728_53#PolymorphicMapType_16985| ExhaleHeap@@1) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_16985_7728_53#PolymorphicMapType_16985| ExhaleHeap@@1) o_1 $allocated))
)))
(assert (forall ((p T@Field_7856_55428) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_17045_17045 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_17045_17045 p v_1 p w))
)))
(assert  (not (IsPredicateField_7856_1255 v_35)))
(assert  (not (IsWandField_7856_1255 v_35)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_16985) (ExhaleHeap@@2 T@PolymorphicMapType_16985) (Mask@@3 T@PolymorphicMapType_17006) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_17006) (o_2@@4 T@Ref) (f_4@@4 T@Field_7856_55561) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_17006_7856_59683#PolymorphicMapType_17006| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_7856_60812 f_4@@4))) (not (IsWandField_7856_60828 f_4@@4))) (<= (select (|PolymorphicMapType_17006_7856_59683#PolymorphicMapType_17006| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_17006_7856_59683#PolymorphicMapType_17006| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_17006) (o_2@@5 T@Ref) (f_4@@5 T@Field_7856_55428) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_17006_7856_55428#PolymorphicMapType_17006| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_7856_55519 f_4@@5))) (not (IsWandField_7856_57266 f_4@@5))) (<= (select (|PolymorphicMapType_17006_7856_55428#PolymorphicMapType_17006| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_17006_7856_55428#PolymorphicMapType_17006| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_17006) (o_2@@6 T@Ref) (f_4@@6 T@Field_17058_17059) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_17006_7856_17059#PolymorphicMapType_17006| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_7856_17059 f_4@@6))) (not (IsWandField_7856_17059 f_4@@6))) (<= (select (|PolymorphicMapType_17006_7856_17059#PolymorphicMapType_17006| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_17006_7856_17059#PolymorphicMapType_17006| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_17006) (o_2@@7 T@Ref) (f_4@@7 T@Field_17045_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_17006_7856_53#PolymorphicMapType_17006| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_7856_53 f_4@@7))) (not (IsWandField_7856_53 f_4@@7))) (<= (select (|PolymorphicMapType_17006_7856_53#PolymorphicMapType_17006| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_17006_7856_53#PolymorphicMapType_17006| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_17006) (o_2@@8 T@Ref) (f_4@@8 T@Field_20445_1255) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_17006_7856_1255#PolymorphicMapType_17006| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_7856_1255 f_4@@8))) (not (IsWandField_7856_1255 f_4@@8))) (<= (select (|PolymorphicMapType_17006_7856_1255#PolymorphicMapType_17006| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_17006_7856_1255#PolymorphicMapType_17006| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_17006) (o_2@@9 T@Ref) (f_4@@9 T@Field_7856_55561) ) (! (= (HasDirectPerm_7856_61266 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_17006_7856_59683#PolymorphicMapType_17006| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7856_61266 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_17006) (o_2@@10 T@Ref) (f_4@@10 T@Field_7856_55428) ) (! (= (HasDirectPerm_7856_55492 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_17006_7856_55428#PolymorphicMapType_17006| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7856_55492 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_17006) (o_2@@11 T@Ref) (f_4@@11 T@Field_17058_17059) ) (! (= (HasDirectPerm_7856_17059 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_17006_7856_17059#PolymorphicMapType_17006| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7856_17059 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_17006) (o_2@@12 T@Ref) (f_4@@12 T@Field_17045_53) ) (! (= (HasDirectPerm_7856_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_17006_7856_53#PolymorphicMapType_17006| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7856_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_17006) (o_2@@13 T@Ref) (f_4@@13 T@Field_20445_1255) ) (! (= (HasDirectPerm_7856_1255 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_17006_7856_1255#PolymorphicMapType_17006| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7856_1255 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_16985) (ExhaleHeap@@3 T@PolymorphicMapType_16985) (Mask@@14 T@PolymorphicMapType_17006) (pm_f@@1 T@Field_7856_55428) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_7856_55492 Mask@@14 null pm_f@@1) (IsPredicateField_7856_55519 pm_f@@1)) (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_17045_53) ) (!  (=> (select (|PolymorphicMapType_17534_17045_53#PolymorphicMapType_17534| (select (|PolymorphicMapType_16985_7856_55605#PolymorphicMapType_16985| Heap@@4) null (PredicateMaskField_7856 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_16985_7728_53#PolymorphicMapType_16985| Heap@@4) o2 f_2) (select (|PolymorphicMapType_16985_7728_53#PolymorphicMapType_16985| ExhaleHeap@@3) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16985_7728_53#PolymorphicMapType_16985| ExhaleHeap@@3) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_17058_17059) ) (!  (=> (select (|PolymorphicMapType_17534_17045_17059#PolymorphicMapType_17534| (select (|PolymorphicMapType_16985_7856_55605#PolymorphicMapType_16985| Heap@@4) null (PredicateMaskField_7856 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_16985_7731_7732#PolymorphicMapType_16985| Heap@@4) o2@@0 f_2@@0) (select (|PolymorphicMapType_16985_7731_7732#PolymorphicMapType_16985| ExhaleHeap@@3) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16985_7731_7732#PolymorphicMapType_16985| ExhaleHeap@@3) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_20445_1255) ) (!  (=> (select (|PolymorphicMapType_17534_17045_1255#PolymorphicMapType_17534| (select (|PolymorphicMapType_16985_7856_55605#PolymorphicMapType_16985| Heap@@4) null (PredicateMaskField_7856 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_16985_7856_1255#PolymorphicMapType_16985| Heap@@4) o2@@1 f_2@@1) (select (|PolymorphicMapType_16985_7856_1255#PolymorphicMapType_16985| ExhaleHeap@@3) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16985_7856_1255#PolymorphicMapType_16985| ExhaleHeap@@3) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_7856_55428) ) (!  (=> (select (|PolymorphicMapType_17534_17045_55428#PolymorphicMapType_17534| (select (|PolymorphicMapType_16985_7856_55605#PolymorphicMapType_16985| Heap@@4) null (PredicateMaskField_7856 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_16985_17045_55428#PolymorphicMapType_16985| Heap@@4) o2@@2 f_2@@2) (select (|PolymorphicMapType_16985_17045_55428#PolymorphicMapType_16985| ExhaleHeap@@3) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16985_17045_55428#PolymorphicMapType_16985| ExhaleHeap@@3) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_7856_55561) ) (!  (=> (select (|PolymorphicMapType_17534_17045_56739#PolymorphicMapType_17534| (select (|PolymorphicMapType_16985_7856_55605#PolymorphicMapType_16985| Heap@@4) null (PredicateMaskField_7856 pm_f@@1))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_16985_7856_55605#PolymorphicMapType_16985| Heap@@4) o2@@3 f_2@@3) (select (|PolymorphicMapType_16985_7856_55605#PolymorphicMapType_16985| ExhaleHeap@@3) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16985_7856_55605#PolymorphicMapType_16985| ExhaleHeap@@3) o2@@3 f_2@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_7856_55519 pm_f@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_16985) (ExhaleHeap@@4 T@PolymorphicMapType_16985) (Mask@@15 T@PolymorphicMapType_17006) (pm_f@@2 T@Field_7856_55428) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_7856_55492 Mask@@15 null pm_f@@2) (IsWandField_7856_57266 pm_f@@2)) (and (and (and (and (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_17045_53) ) (!  (=> (select (|PolymorphicMapType_17534_17045_53#PolymorphicMapType_17534| (select (|PolymorphicMapType_16985_7856_55605#PolymorphicMapType_16985| Heap@@5) null (WandMaskField_7856 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_16985_7728_53#PolymorphicMapType_16985| Heap@@5) o2@@4 f_2@@4) (select (|PolymorphicMapType_16985_7728_53#PolymorphicMapType_16985| ExhaleHeap@@4) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16985_7728_53#PolymorphicMapType_16985| ExhaleHeap@@4) o2@@4 f_2@@4))
)) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_17058_17059) ) (!  (=> (select (|PolymorphicMapType_17534_17045_17059#PolymorphicMapType_17534| (select (|PolymorphicMapType_16985_7856_55605#PolymorphicMapType_16985| Heap@@5) null (WandMaskField_7856 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_16985_7731_7732#PolymorphicMapType_16985| Heap@@5) o2@@5 f_2@@5) (select (|PolymorphicMapType_16985_7731_7732#PolymorphicMapType_16985| ExhaleHeap@@4) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16985_7731_7732#PolymorphicMapType_16985| ExhaleHeap@@4) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_20445_1255) ) (!  (=> (select (|PolymorphicMapType_17534_17045_1255#PolymorphicMapType_17534| (select (|PolymorphicMapType_16985_7856_55605#PolymorphicMapType_16985| Heap@@5) null (WandMaskField_7856 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_16985_7856_1255#PolymorphicMapType_16985| Heap@@5) o2@@6 f_2@@6) (select (|PolymorphicMapType_16985_7856_1255#PolymorphicMapType_16985| ExhaleHeap@@4) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16985_7856_1255#PolymorphicMapType_16985| ExhaleHeap@@4) o2@@6 f_2@@6))
))) (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_7856_55428) ) (!  (=> (select (|PolymorphicMapType_17534_17045_55428#PolymorphicMapType_17534| (select (|PolymorphicMapType_16985_7856_55605#PolymorphicMapType_16985| Heap@@5) null (WandMaskField_7856 pm_f@@2))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_16985_17045_55428#PolymorphicMapType_16985| Heap@@5) o2@@7 f_2@@7) (select (|PolymorphicMapType_16985_17045_55428#PolymorphicMapType_16985| ExhaleHeap@@4) o2@@7 f_2@@7)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16985_17045_55428#PolymorphicMapType_16985| ExhaleHeap@@4) o2@@7 f_2@@7))
))) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_7856_55561) ) (!  (=> (select (|PolymorphicMapType_17534_17045_56739#PolymorphicMapType_17534| (select (|PolymorphicMapType_16985_7856_55605#PolymorphicMapType_16985| Heap@@5) null (WandMaskField_7856 pm_f@@2))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_16985_7856_55605#PolymorphicMapType_16985| Heap@@5) o2@@8 f_2@@8) (select (|PolymorphicMapType_16985_7856_55605#PolymorphicMapType_16985| ExhaleHeap@@4) o2@@8 f_2@@8)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16985_7856_55605#PolymorphicMapType_16985| ExhaleHeap@@4) o2@@8 f_2@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_7856_57266 pm_f@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_16985) (ExhaleHeap@@5 T@PolymorphicMapType_16985) (Mask@@16 T@PolymorphicMapType_17006) (o_1@@0 T@Ref) (f_2@@9 T@Field_7856_55561) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_7856_61266 Mask@@16 o_1@@0 f_2@@9) (= (select (|PolymorphicMapType_16985_7856_55605#PolymorphicMapType_16985| Heap@@6) o_1@@0 f_2@@9) (select (|PolymorphicMapType_16985_7856_55605#PolymorphicMapType_16985| ExhaleHeap@@5) o_1@@0 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_16985_7856_55605#PolymorphicMapType_16985| ExhaleHeap@@5) o_1@@0 f_2@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_16985) (ExhaleHeap@@6 T@PolymorphicMapType_16985) (Mask@@17 T@PolymorphicMapType_17006) (o_1@@1 T@Ref) (f_2@@10 T@Field_7856_55428) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_7856_55492 Mask@@17 o_1@@1 f_2@@10) (= (select (|PolymorphicMapType_16985_17045_55428#PolymorphicMapType_16985| Heap@@7) o_1@@1 f_2@@10) (select (|PolymorphicMapType_16985_17045_55428#PolymorphicMapType_16985| ExhaleHeap@@6) o_1@@1 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_16985_17045_55428#PolymorphicMapType_16985| ExhaleHeap@@6) o_1@@1 f_2@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_16985) (ExhaleHeap@@7 T@PolymorphicMapType_16985) (Mask@@18 T@PolymorphicMapType_17006) (o_1@@2 T@Ref) (f_2@@11 T@Field_17058_17059) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_7856_17059 Mask@@18 o_1@@2 f_2@@11) (= (select (|PolymorphicMapType_16985_7731_7732#PolymorphicMapType_16985| Heap@@8) o_1@@2 f_2@@11) (select (|PolymorphicMapType_16985_7731_7732#PolymorphicMapType_16985| ExhaleHeap@@7) o_1@@2 f_2@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_16985_7731_7732#PolymorphicMapType_16985| ExhaleHeap@@7) o_1@@2 f_2@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_16985) (ExhaleHeap@@8 T@PolymorphicMapType_16985) (Mask@@19 T@PolymorphicMapType_17006) (o_1@@3 T@Ref) (f_2@@12 T@Field_17045_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_7856_53 Mask@@19 o_1@@3 f_2@@12) (= (select (|PolymorphicMapType_16985_7728_53#PolymorphicMapType_16985| Heap@@9) o_1@@3 f_2@@12) (select (|PolymorphicMapType_16985_7728_53#PolymorphicMapType_16985| ExhaleHeap@@8) o_1@@3 f_2@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_16985_7728_53#PolymorphicMapType_16985| ExhaleHeap@@8) o_1@@3 f_2@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_16985) (ExhaleHeap@@9 T@PolymorphicMapType_16985) (Mask@@20 T@PolymorphicMapType_17006) (o_1@@4 T@Ref) (f_2@@13 T@Field_20445_1255) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_7856_1255 Mask@@20 o_1@@4 f_2@@13) (= (select (|PolymorphicMapType_16985_7856_1255#PolymorphicMapType_16985| Heap@@10) o_1@@4 f_2@@13) (select (|PolymorphicMapType_16985_7856_1255#PolymorphicMapType_16985| ExhaleHeap@@9) o_1@@4 f_2@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_16985_7856_1255#PolymorphicMapType_16985| ExhaleHeap@@9) o_1@@4 f_2@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_7856_55561) ) (! (= (select (|PolymorphicMapType_17006_7856_59683#PolymorphicMapType_17006| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17006_7856_59683#PolymorphicMapType_17006| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_7856_55428) ) (! (= (select (|PolymorphicMapType_17006_7856_55428#PolymorphicMapType_17006| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17006_7856_55428#PolymorphicMapType_17006| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_17058_17059) ) (! (= (select (|PolymorphicMapType_17006_7856_17059#PolymorphicMapType_17006| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17006_7856_17059#PolymorphicMapType_17006| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_17045_53) ) (! (= (select (|PolymorphicMapType_17006_7856_53#PolymorphicMapType_17006| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17006_7856_53#PolymorphicMapType_17006| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_20445_1255) ) (! (= (select (|PolymorphicMapType_17006_7856_1255#PolymorphicMapType_17006| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17006_7856_1255#PolymorphicMapType_17006| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_17006) (SummandMask1 T@PolymorphicMapType_17006) (SummandMask2 T@PolymorphicMapType_17006) (o_2@@19 T@Ref) (f_4@@19 T@Field_7856_55561) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_17006_7856_59683#PolymorphicMapType_17006| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_17006_7856_59683#PolymorphicMapType_17006| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_17006_7856_59683#PolymorphicMapType_17006| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_17006_7856_59683#PolymorphicMapType_17006| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_17006_7856_59683#PolymorphicMapType_17006| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_17006_7856_59683#PolymorphicMapType_17006| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_17006) (SummandMask1@@0 T@PolymorphicMapType_17006) (SummandMask2@@0 T@PolymorphicMapType_17006) (o_2@@20 T@Ref) (f_4@@20 T@Field_7856_55428) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_17006_7856_55428#PolymorphicMapType_17006| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_17006_7856_55428#PolymorphicMapType_17006| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_17006_7856_55428#PolymorphicMapType_17006| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_17006_7856_55428#PolymorphicMapType_17006| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_17006_7856_55428#PolymorphicMapType_17006| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_17006_7856_55428#PolymorphicMapType_17006| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_17006) (SummandMask1@@1 T@PolymorphicMapType_17006) (SummandMask2@@1 T@PolymorphicMapType_17006) (o_2@@21 T@Ref) (f_4@@21 T@Field_17058_17059) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_17006_7856_17059#PolymorphicMapType_17006| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_17006_7856_17059#PolymorphicMapType_17006| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_17006_7856_17059#PolymorphicMapType_17006| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_17006_7856_17059#PolymorphicMapType_17006| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_17006_7856_17059#PolymorphicMapType_17006| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_17006_7856_17059#PolymorphicMapType_17006| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_17006) (SummandMask1@@2 T@PolymorphicMapType_17006) (SummandMask2@@2 T@PolymorphicMapType_17006) (o_2@@22 T@Ref) (f_4@@22 T@Field_17045_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_17006_7856_53#PolymorphicMapType_17006| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_17006_7856_53#PolymorphicMapType_17006| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_17006_7856_53#PolymorphicMapType_17006| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_17006_7856_53#PolymorphicMapType_17006| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_17006_7856_53#PolymorphicMapType_17006| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_17006_7856_53#PolymorphicMapType_17006| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_17006) (SummandMask1@@3 T@PolymorphicMapType_17006) (SummandMask2@@3 T@PolymorphicMapType_17006) (o_2@@23 T@Ref) (f_4@@23 T@Field_20445_1255) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_17006_7856_1255#PolymorphicMapType_17006| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_17006_7856_1255#PolymorphicMapType_17006| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_17006_7856_1255#PolymorphicMapType_17006| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_17006_7856_1255#PolymorphicMapType_17006| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_17006_7856_1255#PolymorphicMapType_17006| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_17006_7856_1255#PolymorphicMapType_17006| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((int1@@0 Int) ) (!  (=> (>= int1@@0 0) (bounded_1211 int1@@0))
 :qid |stdinbpl.190:15|
 :skolemid |23|
 :pattern ( (bounded_1211 int1@@0))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_16985) (o T@Ref) (f_3 T@Field_7856_55428) (v T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_16985 (|PolymorphicMapType_16985_7728_53#PolymorphicMapType_16985| Heap@@11) (|PolymorphicMapType_16985_7731_7732#PolymorphicMapType_16985| Heap@@11) (|PolymorphicMapType_16985_7856_1255#PolymorphicMapType_16985| Heap@@11) (|PolymorphicMapType_16985_7856_55605#PolymorphicMapType_16985| Heap@@11) (store (|PolymorphicMapType_16985_17045_55428#PolymorphicMapType_16985| Heap@@11) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16985 (|PolymorphicMapType_16985_7728_53#PolymorphicMapType_16985| Heap@@11) (|PolymorphicMapType_16985_7731_7732#PolymorphicMapType_16985| Heap@@11) (|PolymorphicMapType_16985_7856_1255#PolymorphicMapType_16985| Heap@@11) (|PolymorphicMapType_16985_7856_55605#PolymorphicMapType_16985| Heap@@11) (store (|PolymorphicMapType_16985_17045_55428#PolymorphicMapType_16985| Heap@@11) o f_3 v)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_16985) (o@@0 T@Ref) (f_3@@0 T@Field_7856_55561) (v@@0 T@PolymorphicMapType_17534) ) (! (succHeap Heap@@12 (PolymorphicMapType_16985 (|PolymorphicMapType_16985_7728_53#PolymorphicMapType_16985| Heap@@12) (|PolymorphicMapType_16985_7731_7732#PolymorphicMapType_16985| Heap@@12) (|PolymorphicMapType_16985_7856_1255#PolymorphicMapType_16985| Heap@@12) (store (|PolymorphicMapType_16985_7856_55605#PolymorphicMapType_16985| Heap@@12) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_16985_17045_55428#PolymorphicMapType_16985| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16985 (|PolymorphicMapType_16985_7728_53#PolymorphicMapType_16985| Heap@@12) (|PolymorphicMapType_16985_7731_7732#PolymorphicMapType_16985| Heap@@12) (|PolymorphicMapType_16985_7856_1255#PolymorphicMapType_16985| Heap@@12) (store (|PolymorphicMapType_16985_7856_55605#PolymorphicMapType_16985| Heap@@12) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_16985_17045_55428#PolymorphicMapType_16985| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_16985) (o@@1 T@Ref) (f_3@@1 T@Field_20445_1255) (v@@1 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_16985 (|PolymorphicMapType_16985_7728_53#PolymorphicMapType_16985| Heap@@13) (|PolymorphicMapType_16985_7731_7732#PolymorphicMapType_16985| Heap@@13) (store (|PolymorphicMapType_16985_7856_1255#PolymorphicMapType_16985| Heap@@13) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_16985_7856_55605#PolymorphicMapType_16985| Heap@@13) (|PolymorphicMapType_16985_17045_55428#PolymorphicMapType_16985| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16985 (|PolymorphicMapType_16985_7728_53#PolymorphicMapType_16985| Heap@@13) (|PolymorphicMapType_16985_7731_7732#PolymorphicMapType_16985| Heap@@13) (store (|PolymorphicMapType_16985_7856_1255#PolymorphicMapType_16985| Heap@@13) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_16985_7856_55605#PolymorphicMapType_16985| Heap@@13) (|PolymorphicMapType_16985_17045_55428#PolymorphicMapType_16985| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_16985) (o@@2 T@Ref) (f_3@@2 T@Field_17058_17059) (v@@2 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_16985 (|PolymorphicMapType_16985_7728_53#PolymorphicMapType_16985| Heap@@14) (store (|PolymorphicMapType_16985_7731_7732#PolymorphicMapType_16985| Heap@@14) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_16985_7856_1255#PolymorphicMapType_16985| Heap@@14) (|PolymorphicMapType_16985_7856_55605#PolymorphicMapType_16985| Heap@@14) (|PolymorphicMapType_16985_17045_55428#PolymorphicMapType_16985| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16985 (|PolymorphicMapType_16985_7728_53#PolymorphicMapType_16985| Heap@@14) (store (|PolymorphicMapType_16985_7731_7732#PolymorphicMapType_16985| Heap@@14) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_16985_7856_1255#PolymorphicMapType_16985| Heap@@14) (|PolymorphicMapType_16985_7856_55605#PolymorphicMapType_16985| Heap@@14) (|PolymorphicMapType_16985_17045_55428#PolymorphicMapType_16985| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_16985) (o@@3 T@Ref) (f_3@@3 T@Field_17045_53) (v@@3 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_16985 (store (|PolymorphicMapType_16985_7728_53#PolymorphicMapType_16985| Heap@@15) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_16985_7731_7732#PolymorphicMapType_16985| Heap@@15) (|PolymorphicMapType_16985_7856_1255#PolymorphicMapType_16985| Heap@@15) (|PolymorphicMapType_16985_7856_55605#PolymorphicMapType_16985| Heap@@15) (|PolymorphicMapType_16985_17045_55428#PolymorphicMapType_16985| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16985 (store (|PolymorphicMapType_16985_7728_53#PolymorphicMapType_16985| Heap@@15) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_16985_7731_7732#PolymorphicMapType_16985| Heap@@15) (|PolymorphicMapType_16985_7856_1255#PolymorphicMapType_16985| Heap@@15) (|PolymorphicMapType_16985_7856_55605#PolymorphicMapType_16985| Heap@@15) (|PolymorphicMapType_16985_17045_55428#PolymorphicMapType_16985| Heap@@15)))
)))
(assert (forall ((o@@4 T@Ref) (f T@Field_17058_17059) (Heap@@16 T@PolymorphicMapType_16985) ) (!  (=> (select (|PolymorphicMapType_16985_7728_53#PolymorphicMapType_16985| Heap@@16) o@@4 $allocated) (select (|PolymorphicMapType_16985_7728_53#PolymorphicMapType_16985| Heap@@16) (select (|PolymorphicMapType_16985_7731_7732#PolymorphicMapType_16985| Heap@@16) o@@4 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_16985_7731_7732#PolymorphicMapType_16985| Heap@@16) o@@4 f))
)))
(assert (forall ((p@@1 T@Field_7856_55428) (v_1@@0 T@FrameType) (q T@Field_7856_55428) (w@@0 T@FrameType) (r T@Field_7856_55428) (u T@FrameType) ) (!  (=> (and (InsidePredicate_17045_17045 p@@1 v_1@@0 q w@@0) (InsidePredicate_17045_17045 q w@@0 r u)) (InsidePredicate_17045_17045 p@@1 v_1@@0 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17045_17045 p@@1 v_1@@0 q w@@0) (InsidePredicate_17045_17045 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Mask@8 () T@PolymorphicMapType_17006)
(declare-fun Mask@7 () T@PolymorphicMapType_17006)
(declare-fun r_1 () T@Ref)
(declare-fun Heap@0 () T@PolymorphicMapType_16985)
(declare-fun Heap@@17 () T@PolymorphicMapType_16985)
(declare-fun old_W5_T0@0 () Int)
(declare-fun Mask@6 () T@PolymorphicMapType_17006)
(declare-fun Mask@3 () T@PolymorphicMapType_17006)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_16985)
(declare-fun ExhaleHeap@2 () T@PolymorphicMapType_16985)
(declare-fun Mask@0 () T@PolymorphicMapType_17006)
(declare-fun Mask@5 () T@PolymorphicMapType_17006)
(declare-fun Mask@4 () T@PolymorphicMapType_17006)
(declare-fun Mask@1 () T@PolymorphicMapType_17006)
(declare-fun Mask@2 () T@PolymorphicMapType_17006)
(declare-fun PostHeap@0 () T@PolymorphicMapType_16985)
(declare-fun PostMask@0 () T@PolymorphicMapType_17006)
(set-info :boogie-vc-id m2_e)
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
 (=> (= (ControlFlow 0 0) 54) (let ((anon19_correct  (=> (and (= Mask@8 (PolymorphicMapType_17006 (store (|PolymorphicMapType_17006_7856_1255#PolymorphicMapType_17006| Mask@7) r_1 v_35 (- (select (|PolymorphicMapType_17006_7856_1255#PolymorphicMapType_17006| Mask@7) r_1 v_35) FullPerm)) (|PolymorphicMapType_17006_7856_53#PolymorphicMapType_17006| Mask@7) (|PolymorphicMapType_17006_7856_17059#PolymorphicMapType_17006| Mask@7) (|PolymorphicMapType_17006_7856_55428#PolymorphicMapType_17006| Mask@7) (|PolymorphicMapType_17006_7856_59683#PolymorphicMapType_17006| Mask@7))) (= (ControlFlow 0 14) (- 0 13))) (<= (select (|PolymorphicMapType_16985_7856_1255#PolymorphicMapType_16985| Heap@0) r_1 v_35) (select (|PolymorphicMapType_16985_7856_1255#PolymorphicMapType_16985| Heap@@17) r_1 v_35)))))
(let ((anon32_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 17) 14)) anon19_correct)))
(let ((anon32_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 15) (- 0 16)) (<= FullPerm (select (|PolymorphicMapType_17006_7856_1255#PolymorphicMapType_17006| Mask@7) r_1 v_35))) (=> (<= FullPerm (select (|PolymorphicMapType_17006_7856_1255#PolymorphicMapType_17006| Mask@7) r_1 v_35)) (=> (= (ControlFlow 0 15) 14) anon19_correct))))))
(let ((anon17_correct  (=> (state Heap@0 Mask@7) (and (=> (= (ControlFlow 0 18) 15) anon32_Then_correct) (=> (= (ControlFlow 0 18) 17) anon32_Else_correct)))))
(let ((anon16_correct  (and (=> (= (ControlFlow 0 20) (- 0 21)) (and (decreasing_1186 (select (|PolymorphicMapType_16985_7856_1255#PolymorphicMapType_16985| Heap@0) r_1 v_35) old_W5_T0@0) (bounded_1211 old_W5_T0@0))) (=> (and (decreasing_1186 (select (|PolymorphicMapType_16985_7856_1255#PolymorphicMapType_16985| Heap@0) r_1 v_35) old_W5_T0@0) (bounded_1211 old_W5_T0@0)) (=> (= (ControlFlow 0 20) 18) anon17_correct)))))
(let ((anon31_Else_correct  (=> (and (and (decreasing_1186 (select (|PolymorphicMapType_16985_7856_1255#PolymorphicMapType_16985| Heap@0) r_1 v_35) old_W5_T0@0) (bounded_1211 old_W5_T0@0)) (= (ControlFlow 0 24) 20)) anon16_correct)))
(let ((anon31_Then_correct  (=> (not (and (decreasing_1186 (select (|PolymorphicMapType_16985_7856_1255#PolymorphicMapType_16985| Heap@0) r_1 v_35) old_W5_T0@0) (bounded_1211 old_W5_T0@0))) (and (=> (= (ControlFlow 0 22) (- 0 23)) (HasDirectPerm_7856_1255 Mask@7 r_1 v_35)) (=> (HasDirectPerm_7856_1255 Mask@7 r_1 v_35) (=> (= (ControlFlow 0 22) 20) anon16_correct))))))
(let ((anon30_Then_correct  (=> (>= (select (|PolymorphicMapType_16985_7856_1255#PolymorphicMapType_16985| Heap@0) r_1 v_35) 0) (and (=> (= (ControlFlow 0 25) (- 0 26)) (HasDirectPerm_7856_1255 Mask@7 r_1 v_35)) (=> (HasDirectPerm_7856_1255 Mask@7 r_1 v_35) (and (=> (= (ControlFlow 0 25) 22) anon31_Then_correct) (=> (= (ControlFlow 0 25) 24) anon31_Else_correct)))))))
(let ((anon30_Else_correct  (=> (and (> 0 (select (|PolymorphicMapType_16985_7856_1255#PolymorphicMapType_16985| Heap@0) r_1 v_35)) (= (ControlFlow 0 19) 18)) anon17_correct)))
(let ((anon13_correct  (=> (and (and (and (= Mask@6 (PolymorphicMapType_17006 (store (|PolymorphicMapType_17006_7856_1255#PolymorphicMapType_17006| Mask@3) r_1 v_35 (- (select (|PolymorphicMapType_17006_7856_1255#PolymorphicMapType_17006| Mask@3) r_1 v_35) FullPerm)) (|PolymorphicMapType_17006_7856_53#PolymorphicMapType_17006| Mask@3) (|PolymorphicMapType_17006_7856_17059#PolymorphicMapType_17006| Mask@3) (|PolymorphicMapType_17006_7856_55428#PolymorphicMapType_17006| Mask@3) (|PolymorphicMapType_17006_7856_59683#PolymorphicMapType_17006| Mask@3))) (IdenticalOnKnownLocations ExhaleHeap@0 ExhaleHeap@2 Mask@6)) (and (not (= r_1 null)) (= Mask@7 (PolymorphicMapType_17006 (store (|PolymorphicMapType_17006_7856_1255#PolymorphicMapType_17006| Mask@6) r_1 v_35 (+ (select (|PolymorphicMapType_17006_7856_1255#PolymorphicMapType_17006| Mask@6) r_1 v_35) FullPerm)) (|PolymorphicMapType_17006_7856_53#PolymorphicMapType_17006| Mask@6) (|PolymorphicMapType_17006_7856_17059#PolymorphicMapType_17006| Mask@6) (|PolymorphicMapType_17006_7856_55428#PolymorphicMapType_17006| Mask@6) (|PolymorphicMapType_17006_7856_59683#PolymorphicMapType_17006| Mask@6))))) (and (and (state ExhaleHeap@2 Mask@7) (<= (select (|PolymorphicMapType_16985_7856_1255#PolymorphicMapType_16985| ExhaleHeap@2) r_1 v_35) (select (|PolymorphicMapType_16985_7856_1255#PolymorphicMapType_16985| ExhaleHeap@0) r_1 v_35))) (and (state ExhaleHeap@2 Mask@7) (state ExhaleHeap@2 Mask@7)))) (and (=> (= (ControlFlow 0 27) (- 0 30)) (HasDirectPerm_7856_1255 Mask@7 r_1 v_35)) (=> (HasDirectPerm_7856_1255 Mask@7 r_1 v_35) (and (=> (= (ControlFlow 0 27) (- 0 29)) (= FullPerm (select (|PolymorphicMapType_17006_7856_1255#PolymorphicMapType_17006| Mask@7) r_1 v_35))) (=> (= FullPerm (select (|PolymorphicMapType_17006_7856_1255#PolymorphicMapType_17006| Mask@7) r_1 v_35)) (=> (and (= Heap@0 (PolymorphicMapType_16985 (|PolymorphicMapType_16985_7728_53#PolymorphicMapType_16985| ExhaleHeap@2) (|PolymorphicMapType_16985_7731_7732#PolymorphicMapType_16985| ExhaleHeap@2) (store (|PolymorphicMapType_16985_7856_1255#PolymorphicMapType_16985| ExhaleHeap@2) r_1 v_35 (- (select (|PolymorphicMapType_16985_7856_1255#PolymorphicMapType_16985| ExhaleHeap@2) r_1 v_35) 1)) (|PolymorphicMapType_16985_7856_55605#PolymorphicMapType_16985| ExhaleHeap@2) (|PolymorphicMapType_16985_17045_55428#PolymorphicMapType_16985| ExhaleHeap@2))) (state Heap@0 Mask@7)) (and (=> (= (ControlFlow 0 27) (- 0 28)) (HasDirectPerm_7856_1255 Mask@7 r_1 v_35)) (=> (HasDirectPerm_7856_1255 Mask@7 r_1 v_35) (and (=> (= (ControlFlow 0 27) 25) anon30_Then_correct) (=> (= (ControlFlow 0 27) 19) anon30_Else_correct))))))))))))
(let ((anon29_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 33) 27)) anon13_correct)))
(let ((anon29_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 31) (- 0 32)) (<= FullPerm (select (|PolymorphicMapType_17006_7856_1255#PolymorphicMapType_17006| Mask@3) r_1 v_35))) (=> (<= FullPerm (select (|PolymorphicMapType_17006_7856_1255#PolymorphicMapType_17006| Mask@3) r_1 v_35)) (=> (= (ControlFlow 0 31) 27) anon13_correct))))))
(let ((anon11_correct  (and (=> (= (ControlFlow 0 34) (- 0 35)) (and (decreasing_1186 (select (|PolymorphicMapType_16985_7856_1255#PolymorphicMapType_16985| ExhaleHeap@0) r_1 v_35) (select (|PolymorphicMapType_16985_7856_1255#PolymorphicMapType_16985| Heap@@17) r_1 v_35)) (bounded_1211 (select (|PolymorphicMapType_16985_7856_1255#PolymorphicMapType_16985| Heap@@17) r_1 v_35)))) (=> (and (decreasing_1186 (select (|PolymorphicMapType_16985_7856_1255#PolymorphicMapType_16985| ExhaleHeap@0) r_1 v_35) (select (|PolymorphicMapType_16985_7856_1255#PolymorphicMapType_16985| Heap@@17) r_1 v_35)) (bounded_1211 (select (|PolymorphicMapType_16985_7856_1255#PolymorphicMapType_16985| Heap@@17) r_1 v_35))) (=> (state ExhaleHeap@0 Mask@3) (and (=> (= (ControlFlow 0 34) 31) anon29_Then_correct) (=> (= (ControlFlow 0 34) 33) anon29_Else_correct)))))))
(let ((anon28_Else_correct  (=> (and (and (decreasing_1186 (select (|PolymorphicMapType_16985_7856_1255#PolymorphicMapType_16985| ExhaleHeap@0) r_1 v_35) (select (|PolymorphicMapType_16985_7856_1255#PolymorphicMapType_16985| Heap@@17) r_1 v_35)) (bounded_1211 (select (|PolymorphicMapType_16985_7856_1255#PolymorphicMapType_16985| Heap@@17) r_1 v_35))) (= (ControlFlow 0 39) 34)) anon11_correct)))
(let ((anon28_Then_correct  (=> (not (and (decreasing_1186 (select (|PolymorphicMapType_16985_7856_1255#PolymorphicMapType_16985| ExhaleHeap@0) r_1 v_35) (select (|PolymorphicMapType_16985_7856_1255#PolymorphicMapType_16985| Heap@@17) r_1 v_35)) (bounded_1211 (select (|PolymorphicMapType_16985_7856_1255#PolymorphicMapType_16985| Heap@@17) r_1 v_35)))) (and (=> (= (ControlFlow 0 36) (- 0 38)) (HasDirectPerm_7856_1255 Mask@3 r_1 v_35)) (=> (HasDirectPerm_7856_1255 Mask@3 r_1 v_35) (and (=> (= (ControlFlow 0 36) (- 0 37)) (HasDirectPerm_7856_1255 Mask@0 r_1 v_35)) (=> (HasDirectPerm_7856_1255 Mask@0 r_1 v_35) (=> (= (ControlFlow 0 36) 34) anon11_correct))))))))
(let ((anon27_Else_correct  (=> (not (decreasing_1186 (select (|PolymorphicMapType_16985_7856_1255#PolymorphicMapType_16985| ExhaleHeap@0) r_1 v_35) (select (|PolymorphicMapType_16985_7856_1255#PolymorphicMapType_16985| Heap@@17) r_1 v_35))) (and (=> (= (ControlFlow 0 42) 36) anon28_Then_correct) (=> (= (ControlFlow 0 42) 39) anon28_Else_correct)))))
(let ((anon27_Then_correct  (=> (decreasing_1186 (select (|PolymorphicMapType_16985_7856_1255#PolymorphicMapType_16985| ExhaleHeap@0) r_1 v_35) (select (|PolymorphicMapType_16985_7856_1255#PolymorphicMapType_16985| Heap@@17) r_1 v_35)) (and (=> (= (ControlFlow 0 40) (- 0 41)) (HasDirectPerm_7856_1255 Mask@0 r_1 v_35)) (=> (HasDirectPerm_7856_1255 Mask@0 r_1 v_35) (and (=> (= (ControlFlow 0 40) 36) anon28_Then_correct) (=> (= (ControlFlow 0 40) 39) anon28_Else_correct)))))))
(let ((anon26_Then_correct  (=> (and (state ExhaleHeap@0 ZeroMask) (not (= r_1 null))) (=> (and (and (= Mask@3 (PolymorphicMapType_17006 (store (|PolymorphicMapType_17006_7856_1255#PolymorphicMapType_17006| ZeroMask) r_1 v_35 (+ (select (|PolymorphicMapType_17006_7856_1255#PolymorphicMapType_17006| ZeroMask) r_1 v_35) FullPerm)) (|PolymorphicMapType_17006_7856_53#PolymorphicMapType_17006| ZeroMask) (|PolymorphicMapType_17006_7856_17059#PolymorphicMapType_17006| ZeroMask) (|PolymorphicMapType_17006_7856_55428#PolymorphicMapType_17006| ZeroMask) (|PolymorphicMapType_17006_7856_59683#PolymorphicMapType_17006| ZeroMask))) (state ExhaleHeap@0 Mask@3)) (and (<= (select (|PolymorphicMapType_16985_7856_1255#PolymorphicMapType_16985| ExhaleHeap@0) r_1 v_35) (select (|PolymorphicMapType_16985_7856_1255#PolymorphicMapType_16985| Heap@@17) r_1 v_35)) (state ExhaleHeap@0 Mask@3))) (and (=> (= (ControlFlow 0 43) (- 0 47)) (HasDirectPerm_7856_1255 Mask@3 r_1 v_35)) (=> (HasDirectPerm_7856_1255 Mask@3 r_1 v_35) (=> (and (>= (select (|PolymorphicMapType_16985_7856_1255#PolymorphicMapType_16985| ExhaleHeap@0) r_1 v_35) 0) (state ExhaleHeap@0 Mask@3)) (and (=> (= (ControlFlow 0 43) (- 0 46)) (HasDirectPerm_7856_1255 Mask@3 r_1 v_35)) (=> (HasDirectPerm_7856_1255 Mask@3 r_1 v_35) (=> (and (= old_W5_T0@0 (select (|PolymorphicMapType_16985_7856_1255#PolymorphicMapType_16985| ExhaleHeap@0) r_1 v_35)) (state ExhaleHeap@0 Mask@3)) (and (=> (= (ControlFlow 0 43) (- 0 45)) (HasDirectPerm_7856_1255 Mask@3 r_1 v_35)) (=> (HasDirectPerm_7856_1255 Mask@3 r_1 v_35) (and (=> (= (ControlFlow 0 43) (- 0 44)) (HasDirectPerm_7856_1255 Mask@0 r_1 v_35)) (=> (HasDirectPerm_7856_1255 Mask@0 r_1 v_35) (and (=> (= (ControlFlow 0 43) 40) anon27_Then_correct) (=> (= (ControlFlow 0 43) 42) anon27_Else_correct))))))))))))))))
(let ((anon22_correct  (=> (and (= Mask@5 (PolymorphicMapType_17006 (store (|PolymorphicMapType_17006_7856_1255#PolymorphicMapType_17006| Mask@4) r_1 v_35 (- (select (|PolymorphicMapType_17006_7856_1255#PolymorphicMapType_17006| Mask@4) r_1 v_35) FullPerm)) (|PolymorphicMapType_17006_7856_53#PolymorphicMapType_17006| Mask@4) (|PolymorphicMapType_17006_7856_17059#PolymorphicMapType_17006| Mask@4) (|PolymorphicMapType_17006_7856_55428#PolymorphicMapType_17006| Mask@4) (|PolymorphicMapType_17006_7856_59683#PolymorphicMapType_17006| Mask@4))) (= (ControlFlow 0 8) (- 0 7))) (<= (select (|PolymorphicMapType_16985_7856_1255#PolymorphicMapType_16985| ExhaleHeap@0) r_1 v_35) (select (|PolymorphicMapType_16985_7856_1255#PolymorphicMapType_16985| Heap@@17) r_1 v_35)))))
(let ((anon33_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 11) 8)) anon22_correct)))
(let ((anon33_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 9) (- 0 10)) (<= FullPerm (select (|PolymorphicMapType_17006_7856_1255#PolymorphicMapType_17006| Mask@4) r_1 v_35))) (=> (<= FullPerm (select (|PolymorphicMapType_17006_7856_1255#PolymorphicMapType_17006| Mask@4) r_1 v_35)) (=> (= (ControlFlow 0 9) 8) anon22_correct))))))
(let ((anon26_Else_correct  (=> (and (and (and (not (>= (select (|PolymorphicMapType_16985_7856_1255#PolymorphicMapType_16985| ExhaleHeap@0) r_1 v_35) 0)) (state ExhaleHeap@0 Mask@1)) (and (not (= r_1 null)) (= Mask@4 (PolymorphicMapType_17006 (store (|PolymorphicMapType_17006_7856_1255#PolymorphicMapType_17006| Mask@1) r_1 v_35 (+ (select (|PolymorphicMapType_17006_7856_1255#PolymorphicMapType_17006| Mask@1) r_1 v_35) FullPerm)) (|PolymorphicMapType_17006_7856_53#PolymorphicMapType_17006| Mask@1) (|PolymorphicMapType_17006_7856_17059#PolymorphicMapType_17006| Mask@1) (|PolymorphicMapType_17006_7856_55428#PolymorphicMapType_17006| Mask@1) (|PolymorphicMapType_17006_7856_59683#PolymorphicMapType_17006| Mask@1))))) (and (and (state ExhaleHeap@0 Mask@4) (<= (select (|PolymorphicMapType_16985_7856_1255#PolymorphicMapType_16985| ExhaleHeap@0) r_1 v_35) (select (|PolymorphicMapType_16985_7856_1255#PolymorphicMapType_16985| Heap@@17) r_1 v_35))) (and (state ExhaleHeap@0 Mask@4) (state ExhaleHeap@0 Mask@4)))) (and (=> (= (ControlFlow 0 12) 9) anon33_Then_correct) (=> (= (ControlFlow 0 12) 11) anon33_Else_correct)))))
(let ((anon25_Then_correct  (=> (and (and (not (= r_1 null)) (= Mask@2 (PolymorphicMapType_17006 (store (|PolymorphicMapType_17006_7856_1255#PolymorphicMapType_17006| Mask@1) r_1 v_35 (+ (select (|PolymorphicMapType_17006_7856_1255#PolymorphicMapType_17006| Mask@1) r_1 v_35) FullPerm)) (|PolymorphicMapType_17006_7856_53#PolymorphicMapType_17006| Mask@1) (|PolymorphicMapType_17006_7856_17059#PolymorphicMapType_17006| Mask@1) (|PolymorphicMapType_17006_7856_55428#PolymorphicMapType_17006| Mask@1) (|PolymorphicMapType_17006_7856_59683#PolymorphicMapType_17006| Mask@1)))) (and (state ExhaleHeap@0 Mask@2) (state ExhaleHeap@0 Mask@2))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (HasDirectPerm_7856_1255 Mask@2 r_1 v_35)) (=> (HasDirectPerm_7856_1255 Mask@2 r_1 v_35) (=> (= (ControlFlow 0 5) (- 0 4)) (HasDirectPerm_7856_1255 Mask@0 r_1 v_35)))))))
(let ((anon4_correct  (=> (= Mask@1 (PolymorphicMapType_17006 (store (|PolymorphicMapType_17006_7856_1255#PolymorphicMapType_17006| Mask@0) r_1 v_35 (- (select (|PolymorphicMapType_17006_7856_1255#PolymorphicMapType_17006| Mask@0) r_1 v_35) FullPerm)) (|PolymorphicMapType_17006_7856_53#PolymorphicMapType_17006| Mask@0) (|PolymorphicMapType_17006_7856_17059#PolymorphicMapType_17006| Mask@0) (|PolymorphicMapType_17006_7856_55428#PolymorphicMapType_17006| Mask@0) (|PolymorphicMapType_17006_7856_59683#PolymorphicMapType_17006| Mask@0))) (and (=> (= (ControlFlow 0 48) (- 0 49)) (<= (select (|PolymorphicMapType_16985_7856_1255#PolymorphicMapType_16985| Heap@@17) r_1 v_35) (select (|PolymorphicMapType_16985_7856_1255#PolymorphicMapType_16985| Heap@@17) r_1 v_35))) (=> (<= (select (|PolymorphicMapType_16985_7856_1255#PolymorphicMapType_16985| Heap@@17) r_1 v_35) (select (|PolymorphicMapType_16985_7856_1255#PolymorphicMapType_16985| Heap@@17) r_1 v_35)) (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@0 Mask@1) (and (and (=> (= (ControlFlow 0 48) 5) anon25_Then_correct) (=> (= (ControlFlow 0 48) 43) anon26_Then_correct)) (=> (= (ControlFlow 0 48) 12) anon26_Else_correct))))))))
(let ((anon24_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 52) 48)) anon4_correct)))
(let ((anon24_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 50) (- 0 51)) (<= FullPerm (select (|PolymorphicMapType_17006_7856_1255#PolymorphicMapType_17006| Mask@0) r_1 v_35))) (=> (<= FullPerm (select (|PolymorphicMapType_17006_7856_1255#PolymorphicMapType_17006| Mask@0) r_1 v_35)) (=> (= (ControlFlow 0 50) 48) anon4_correct))))))
(let ((anon23_Then_correct  (=> (state PostHeap@0 ZeroMask) (=> (and (and (not (= r_1 null)) (= PostMask@0 (PolymorphicMapType_17006 (store (|PolymorphicMapType_17006_7856_1255#PolymorphicMapType_17006| ZeroMask) r_1 v_35 (+ (select (|PolymorphicMapType_17006_7856_1255#PolymorphicMapType_17006| ZeroMask) r_1 v_35) FullPerm)) (|PolymorphicMapType_17006_7856_53#PolymorphicMapType_17006| ZeroMask) (|PolymorphicMapType_17006_7856_17059#PolymorphicMapType_17006| ZeroMask) (|PolymorphicMapType_17006_7856_55428#PolymorphicMapType_17006| ZeroMask) (|PolymorphicMapType_17006_7856_59683#PolymorphicMapType_17006| ZeroMask)))) (and (state PostHeap@0 PostMask@0) (state PostHeap@0 PostMask@0))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (HasDirectPerm_7856_1255 PostMask@0 r_1 v_35)) (=> (HasDirectPerm_7856_1255 PostMask@0 r_1 v_35) (=> (= (ControlFlow 0 2) (- 0 1)) (HasDirectPerm_7856_1255 Mask@0 r_1 v_35))))))))
(let ((anon0_correct  (=> (state Heap@@17 ZeroMask) (=> (and AssumePermUpperBound (select (|PolymorphicMapType_16985_7728_53#PolymorphicMapType_16985| Heap@@17) r_1 $allocated)) (=> (and (and (not (= r_1 null)) (= Mask@0 (PolymorphicMapType_17006 (store (|PolymorphicMapType_17006_7856_1255#PolymorphicMapType_17006| ZeroMask) r_1 v_35 (+ (select (|PolymorphicMapType_17006_7856_1255#PolymorphicMapType_17006| ZeroMask) r_1 v_35) FullPerm)) (|PolymorphicMapType_17006_7856_53#PolymorphicMapType_17006| ZeroMask) (|PolymorphicMapType_17006_7856_17059#PolymorphicMapType_17006| ZeroMask) (|PolymorphicMapType_17006_7856_55428#PolymorphicMapType_17006| ZeroMask) (|PolymorphicMapType_17006_7856_59683#PolymorphicMapType_17006| ZeroMask)))) (and (state Heap@@17 Mask@0) (state Heap@@17 Mask@0))) (and (and (=> (= (ControlFlow 0 53) 2) anon23_Then_correct) (=> (= (ControlFlow 0 53) 50) anon24_Then_correct)) (=> (= (ControlFlow 0 53) 52) anon24_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 54) 53) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 34) (- 35))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
