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
(declare-sort T@Field_10042_53 0)
(declare-sort T@Field_10055_10056 0)
(declare-sort T@Field_13493_1473 0)
(declare-sort T@Field_6867_29635 0)
(declare-sort T@Field_6867_29502 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_10003 0)) (((PolymorphicMapType_10003 (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| (Array T@Ref T@Field_13493_1473 Real)) (|PolymorphicMapType_10003_6867_53#PolymorphicMapType_10003| (Array T@Ref T@Field_10042_53 Real)) (|PolymorphicMapType_10003_6867_10056#PolymorphicMapType_10003| (Array T@Ref T@Field_10055_10056 Real)) (|PolymorphicMapType_10003_6867_29502#PolymorphicMapType_10003| (Array T@Ref T@Field_6867_29502 Real)) (|PolymorphicMapType_10003_6867_33757#PolymorphicMapType_10003| (Array T@Ref T@Field_6867_29635 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10531 0)) (((PolymorphicMapType_10531 (|PolymorphicMapType_10531_10042_53#PolymorphicMapType_10531| (Array T@Ref T@Field_10042_53 Bool)) (|PolymorphicMapType_10531_10042_10056#PolymorphicMapType_10531| (Array T@Ref T@Field_10055_10056 Bool)) (|PolymorphicMapType_10531_10042_1473#PolymorphicMapType_10531| (Array T@Ref T@Field_13493_1473 Bool)) (|PolymorphicMapType_10531_10042_29502#PolymorphicMapType_10531| (Array T@Ref T@Field_6867_29502 Bool)) (|PolymorphicMapType_10531_10042_30813#PolymorphicMapType_10531| (Array T@Ref T@Field_6867_29635 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9982 0)) (((PolymorphicMapType_9982 (|PolymorphicMapType_9982_6711_53#PolymorphicMapType_9982| (Array T@Ref T@Field_10042_53 Bool)) (|PolymorphicMapType_9982_6714_6715#PolymorphicMapType_9982| (Array T@Ref T@Field_10055_10056 T@Ref)) (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| (Array T@Ref T@Field_13493_1473 Int)) (|PolymorphicMapType_9982_6867_29679#PolymorphicMapType_9982| (Array T@Ref T@Field_6867_29635 T@PolymorphicMapType_10531)) (|PolymorphicMapType_9982_10042_29502#PolymorphicMapType_9982| (Array T@Ref T@Field_6867_29502 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_10042_53)
(declare-fun val () T@Field_13493_1473)
(declare-fun succHeap (T@PolymorphicMapType_9982 T@PolymorphicMapType_9982) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_9982 T@PolymorphicMapType_9982) Bool)
(declare-fun state (T@PolymorphicMapType_9982 T@PolymorphicMapType_10003) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_10003) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_10531)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_9982 T@PolymorphicMapType_9982 T@PolymorphicMapType_10003) Bool)
(declare-fun IsPredicateField_6867_29593 (T@Field_6867_29502) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_6867 (T@Field_6867_29502) T@Field_6867_29635)
(declare-fun HasDirectPerm_6867_29566 (T@PolymorphicMapType_10003 T@Ref T@Field_6867_29502) Bool)
(declare-fun IsWandField_6867_31340 (T@Field_6867_29502) Bool)
(declare-fun WandMaskField_6867 (T@Field_6867_29502) T@Field_6867_29635)
(declare-fun dummyHeap () T@PolymorphicMapType_9982)
(declare-fun ZeroMask () T@PolymorphicMapType_10003)
(declare-fun InsidePredicate_10042_10042 (T@Field_6867_29502 T@FrameType T@Field_6867_29502 T@FrameType) Bool)
(declare-fun IsPredicateField_6867_1473 (T@Field_13493_1473) Bool)
(declare-fun IsWandField_6867_1473 (T@Field_13493_1473) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6867_34886 (T@Field_6867_29635) Bool)
(declare-fun IsWandField_6867_34902 (T@Field_6867_29635) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_6867_10056 (T@Field_10055_10056) Bool)
(declare-fun IsWandField_6867_10056 (T@Field_10055_10056) Bool)
(declare-fun IsPredicateField_6867_53 (T@Field_10042_53) Bool)
(declare-fun IsWandField_6867_53 (T@Field_10042_53) Bool)
(declare-fun HasDirectPerm_6867_35340 (T@PolymorphicMapType_10003 T@Ref T@Field_6867_29635) Bool)
(declare-fun HasDirectPerm_6867_10056 (T@PolymorphicMapType_10003 T@Ref T@Field_10055_10056) Bool)
(declare-fun HasDirectPerm_6867_53 (T@PolymorphicMapType_10003 T@Ref T@Field_10042_53) Bool)
(declare-fun HasDirectPerm_6867_1473 (T@PolymorphicMapType_10003 T@Ref T@Field_13493_1473) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_10003 T@PolymorphicMapType_10003 T@PolymorphicMapType_10003) Bool)
(declare-sort T@ArrayDomainType 0)
(declare-fun length_1 (T@ArrayDomainType) Int)
(declare-fun loc (T@ArrayDomainType Int) T@Ref)
(declare-fun inverse_first (T@Ref) T@ArrayDomainType)
(declare-fun inverse_second (T@Ref) Int)
(assert (forall ((Heap0 T@PolymorphicMapType_9982) (Heap1 T@PolymorphicMapType_9982) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_9982) (Mask T@PolymorphicMapType_10003) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_9982) (Heap1@@0 T@PolymorphicMapType_9982) (Heap2 T@PolymorphicMapType_9982) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_6867_29635) ) (!  (not (select (|PolymorphicMapType_10531_10042_30813#PolymorphicMapType_10531| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10531_10042_30813#PolymorphicMapType_10531| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_6867_29502) ) (!  (not (select (|PolymorphicMapType_10531_10042_29502#PolymorphicMapType_10531| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10531_10042_29502#PolymorphicMapType_10531| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_13493_1473) ) (!  (not (select (|PolymorphicMapType_10531_10042_1473#PolymorphicMapType_10531| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10531_10042_1473#PolymorphicMapType_10531| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_10055_10056) ) (!  (not (select (|PolymorphicMapType_10531_10042_10056#PolymorphicMapType_10531| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10531_10042_10056#PolymorphicMapType_10531| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_10042_53) ) (!  (not (select (|PolymorphicMapType_10531_10042_53#PolymorphicMapType_10531| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10531_10042_53#PolymorphicMapType_10531| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_9982) (ExhaleHeap T@PolymorphicMapType_9982) (Mask@@0 T@PolymorphicMapType_10003) (pm_f_8 T@Field_6867_29502) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_6867_29566 Mask@@0 null pm_f_8) (IsPredicateField_6867_29593 pm_f_8)) (= (select (|PolymorphicMapType_9982_6867_29679#PolymorphicMapType_9982| Heap@@0) null (PredicateMaskField_6867 pm_f_8)) (select (|PolymorphicMapType_9982_6867_29679#PolymorphicMapType_9982| ExhaleHeap) null (PredicateMaskField_6867 pm_f_8)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_6867_29593 pm_f_8) (select (|PolymorphicMapType_9982_6867_29679#PolymorphicMapType_9982| ExhaleHeap) null (PredicateMaskField_6867 pm_f_8)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_9982) (ExhaleHeap@@0 T@PolymorphicMapType_9982) (Mask@@1 T@PolymorphicMapType_10003) (pm_f_8@@0 T@Field_6867_29502) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_6867_29566 Mask@@1 null pm_f_8@@0) (IsWandField_6867_31340 pm_f_8@@0)) (= (select (|PolymorphicMapType_9982_6867_29679#PolymorphicMapType_9982| Heap@@1) null (WandMaskField_6867 pm_f_8@@0)) (select (|PolymorphicMapType_9982_6867_29679#PolymorphicMapType_9982| ExhaleHeap@@0) null (WandMaskField_6867 pm_f_8@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_6867_31340 pm_f_8@@0) (select (|PolymorphicMapType_9982_6867_29679#PolymorphicMapType_9982| ExhaleHeap@@0) null (WandMaskField_6867 pm_f_8@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_9982) (ExhaleHeap@@1 T@PolymorphicMapType_9982) (Mask@@2 T@PolymorphicMapType_10003) (o_23 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_9982_6711_53#PolymorphicMapType_9982| Heap@@2) o_23 $allocated) (select (|PolymorphicMapType_9982_6711_53#PolymorphicMapType_9982| ExhaleHeap@@1) o_23 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_9982_6711_53#PolymorphicMapType_9982| ExhaleHeap@@1) o_23 $allocated))
)))
(assert (forall ((p T@Field_6867_29502) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_10042_10042 p v_1 p w))
 :qid |stdinbpl.207:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_10042_10042 p v_1 p w))
)))
(assert  (not (IsPredicateField_6867_1473 val)))
(assert  (not (IsWandField_6867_1473 val)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_9982) (ExhaleHeap@@2 T@PolymorphicMapType_9982) (Mask@@3 T@PolymorphicMapType_10003) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_10003) (o_2@@4 T@Ref) (f_4@@4 T@Field_6867_29635) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_10003_6867_33757#PolymorphicMapType_10003| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_6867_34886 f_4@@4))) (not (IsWandField_6867_34902 f_4@@4))) (<= (select (|PolymorphicMapType_10003_6867_33757#PolymorphicMapType_10003| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_10003_6867_33757#PolymorphicMapType_10003| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_10003) (o_2@@5 T@Ref) (f_4@@5 T@Field_6867_29502) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_10003_6867_29502#PolymorphicMapType_10003| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_6867_29593 f_4@@5))) (not (IsWandField_6867_31340 f_4@@5))) (<= (select (|PolymorphicMapType_10003_6867_29502#PolymorphicMapType_10003| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_10003_6867_29502#PolymorphicMapType_10003| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_10003) (o_2@@6 T@Ref) (f_4@@6 T@Field_10055_10056) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_10003_6867_10056#PolymorphicMapType_10003| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_6867_10056 f_4@@6))) (not (IsWandField_6867_10056 f_4@@6))) (<= (select (|PolymorphicMapType_10003_6867_10056#PolymorphicMapType_10003| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_10003_6867_10056#PolymorphicMapType_10003| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_10003) (o_2@@7 T@Ref) (f_4@@7 T@Field_10042_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_10003_6867_53#PolymorphicMapType_10003| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_6867_53 f_4@@7))) (not (IsWandField_6867_53 f_4@@7))) (<= (select (|PolymorphicMapType_10003_6867_53#PolymorphicMapType_10003| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_10003_6867_53#PolymorphicMapType_10003| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_10003) (o_2@@8 T@Ref) (f_4@@8 T@Field_13493_1473) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_6867_1473 f_4@@8))) (not (IsWandField_6867_1473 f_4@@8))) (<= (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_10003) (o_2@@9 T@Ref) (f_4@@9 T@Field_6867_29635) ) (! (= (HasDirectPerm_6867_35340 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_10003_6867_33757#PolymorphicMapType_10003| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6867_35340 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_10003) (o_2@@10 T@Ref) (f_4@@10 T@Field_6867_29502) ) (! (= (HasDirectPerm_6867_29566 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_10003_6867_29502#PolymorphicMapType_10003| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6867_29566 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_10003) (o_2@@11 T@Ref) (f_4@@11 T@Field_10055_10056) ) (! (= (HasDirectPerm_6867_10056 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_10003_6867_10056#PolymorphicMapType_10003| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6867_10056 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_10003) (o_2@@12 T@Ref) (f_4@@12 T@Field_10042_53) ) (! (= (HasDirectPerm_6867_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_10003_6867_53#PolymorphicMapType_10003| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6867_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_10003) (o_2@@13 T@Ref) (f_4@@13 T@Field_13493_1473) ) (! (= (HasDirectPerm_6867_1473 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6867_1473 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_9982) (ExhaleHeap@@3 T@PolymorphicMapType_9982) (Mask@@14 T@PolymorphicMapType_10003) (pm_f_8@@1 T@Field_6867_29502) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_6867_29566 Mask@@14 null pm_f_8@@1) (IsPredicateField_6867_29593 pm_f_8@@1)) (and (and (and (and (forall ((o2_8 T@Ref) (f_25 T@Field_10042_53) ) (!  (=> (select (|PolymorphicMapType_10531_10042_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_6867_29679#PolymorphicMapType_9982| Heap@@4) null (PredicateMaskField_6867 pm_f_8@@1))) o2_8 f_25) (= (select (|PolymorphicMapType_9982_6711_53#PolymorphicMapType_9982| Heap@@4) o2_8 f_25) (select (|PolymorphicMapType_9982_6711_53#PolymorphicMapType_9982| ExhaleHeap@@3) o2_8 f_25)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_6711_53#PolymorphicMapType_9982| ExhaleHeap@@3) o2_8 f_25))
)) (forall ((o2_8@@0 T@Ref) (f_25@@0 T@Field_10055_10056) ) (!  (=> (select (|PolymorphicMapType_10531_10042_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_6867_29679#PolymorphicMapType_9982| Heap@@4) null (PredicateMaskField_6867 pm_f_8@@1))) o2_8@@0 f_25@@0) (= (select (|PolymorphicMapType_9982_6714_6715#PolymorphicMapType_9982| Heap@@4) o2_8@@0 f_25@@0) (select (|PolymorphicMapType_9982_6714_6715#PolymorphicMapType_9982| ExhaleHeap@@3) o2_8@@0 f_25@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_6714_6715#PolymorphicMapType_9982| ExhaleHeap@@3) o2_8@@0 f_25@@0))
))) (forall ((o2_8@@1 T@Ref) (f_25@@1 T@Field_13493_1473) ) (!  (=> (select (|PolymorphicMapType_10531_10042_1473#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_6867_29679#PolymorphicMapType_9982| Heap@@4) null (PredicateMaskField_6867 pm_f_8@@1))) o2_8@@1 f_25@@1) (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| Heap@@4) o2_8@@1 f_25@@1) (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| ExhaleHeap@@3) o2_8@@1 f_25@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| ExhaleHeap@@3) o2_8@@1 f_25@@1))
))) (forall ((o2_8@@2 T@Ref) (f_25@@2 T@Field_6867_29502) ) (!  (=> (select (|PolymorphicMapType_10531_10042_29502#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_6867_29679#PolymorphicMapType_9982| Heap@@4) null (PredicateMaskField_6867 pm_f_8@@1))) o2_8@@2 f_25@@2) (= (select (|PolymorphicMapType_9982_10042_29502#PolymorphicMapType_9982| Heap@@4) o2_8@@2 f_25@@2) (select (|PolymorphicMapType_9982_10042_29502#PolymorphicMapType_9982| ExhaleHeap@@3) o2_8@@2 f_25@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_10042_29502#PolymorphicMapType_9982| ExhaleHeap@@3) o2_8@@2 f_25@@2))
))) (forall ((o2_8@@3 T@Ref) (f_25@@3 T@Field_6867_29635) ) (!  (=> (select (|PolymorphicMapType_10531_10042_30813#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_6867_29679#PolymorphicMapType_9982| Heap@@4) null (PredicateMaskField_6867 pm_f_8@@1))) o2_8@@3 f_25@@3) (= (select (|PolymorphicMapType_9982_6867_29679#PolymorphicMapType_9982| Heap@@4) o2_8@@3 f_25@@3) (select (|PolymorphicMapType_9982_6867_29679#PolymorphicMapType_9982| ExhaleHeap@@3) o2_8@@3 f_25@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9982_6867_29679#PolymorphicMapType_9982| ExhaleHeap@@3) o2_8@@3 f_25@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_6867_29593 pm_f_8@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_9982) (ExhaleHeap@@4 T@PolymorphicMapType_9982) (Mask@@15 T@PolymorphicMapType_10003) (pm_f_8@@2 T@Field_6867_29502) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_6867_29566 Mask@@15 null pm_f_8@@2) (IsWandField_6867_31340 pm_f_8@@2)) (and (and (and (and (forall ((o2_8@@4 T@Ref) (f_25@@4 T@Field_10042_53) ) (!  (=> (select (|PolymorphicMapType_10531_10042_53#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_6867_29679#PolymorphicMapType_9982| Heap@@5) null (WandMaskField_6867 pm_f_8@@2))) o2_8@@4 f_25@@4) (= (select (|PolymorphicMapType_9982_6711_53#PolymorphicMapType_9982| Heap@@5) o2_8@@4 f_25@@4) (select (|PolymorphicMapType_9982_6711_53#PolymorphicMapType_9982| ExhaleHeap@@4) o2_8@@4 f_25@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_6711_53#PolymorphicMapType_9982| ExhaleHeap@@4) o2_8@@4 f_25@@4))
)) (forall ((o2_8@@5 T@Ref) (f_25@@5 T@Field_10055_10056) ) (!  (=> (select (|PolymorphicMapType_10531_10042_10056#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_6867_29679#PolymorphicMapType_9982| Heap@@5) null (WandMaskField_6867 pm_f_8@@2))) o2_8@@5 f_25@@5) (= (select (|PolymorphicMapType_9982_6714_6715#PolymorphicMapType_9982| Heap@@5) o2_8@@5 f_25@@5) (select (|PolymorphicMapType_9982_6714_6715#PolymorphicMapType_9982| ExhaleHeap@@4) o2_8@@5 f_25@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_6714_6715#PolymorphicMapType_9982| ExhaleHeap@@4) o2_8@@5 f_25@@5))
))) (forall ((o2_8@@6 T@Ref) (f_25@@6 T@Field_13493_1473) ) (!  (=> (select (|PolymorphicMapType_10531_10042_1473#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_6867_29679#PolymorphicMapType_9982| Heap@@5) null (WandMaskField_6867 pm_f_8@@2))) o2_8@@6 f_25@@6) (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| Heap@@5) o2_8@@6 f_25@@6) (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| ExhaleHeap@@4) o2_8@@6 f_25@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| ExhaleHeap@@4) o2_8@@6 f_25@@6))
))) (forall ((o2_8@@7 T@Ref) (f_25@@7 T@Field_6867_29502) ) (!  (=> (select (|PolymorphicMapType_10531_10042_29502#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_6867_29679#PolymorphicMapType_9982| Heap@@5) null (WandMaskField_6867 pm_f_8@@2))) o2_8@@7 f_25@@7) (= (select (|PolymorphicMapType_9982_10042_29502#PolymorphicMapType_9982| Heap@@5) o2_8@@7 f_25@@7) (select (|PolymorphicMapType_9982_10042_29502#PolymorphicMapType_9982| ExhaleHeap@@4) o2_8@@7 f_25@@7)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_10042_29502#PolymorphicMapType_9982| ExhaleHeap@@4) o2_8@@7 f_25@@7))
))) (forall ((o2_8@@8 T@Ref) (f_25@@8 T@Field_6867_29635) ) (!  (=> (select (|PolymorphicMapType_10531_10042_30813#PolymorphicMapType_10531| (select (|PolymorphicMapType_9982_6867_29679#PolymorphicMapType_9982| Heap@@5) null (WandMaskField_6867 pm_f_8@@2))) o2_8@@8 f_25@@8) (= (select (|PolymorphicMapType_9982_6867_29679#PolymorphicMapType_9982| Heap@@5) o2_8@@8 f_25@@8) (select (|PolymorphicMapType_9982_6867_29679#PolymorphicMapType_9982| ExhaleHeap@@4) o2_8@@8 f_25@@8)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9982_6867_29679#PolymorphicMapType_9982| ExhaleHeap@@4) o2_8@@8 f_25@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_6867_31340 pm_f_8@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.195:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_9982) (ExhaleHeap@@5 T@PolymorphicMapType_9982) (Mask@@16 T@PolymorphicMapType_10003) (o_23@@0 T@Ref) (f_25@@9 T@Field_6867_29635) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_6867_35340 Mask@@16 o_23@@0 f_25@@9) (= (select (|PolymorphicMapType_9982_6867_29679#PolymorphicMapType_9982| Heap@@6) o_23@@0 f_25@@9) (select (|PolymorphicMapType_9982_6867_29679#PolymorphicMapType_9982| ExhaleHeap@@5) o_23@@0 f_25@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_9982_6867_29679#PolymorphicMapType_9982| ExhaleHeap@@5) o_23@@0 f_25@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_9982) (ExhaleHeap@@6 T@PolymorphicMapType_9982) (Mask@@17 T@PolymorphicMapType_10003) (o_23@@1 T@Ref) (f_25@@10 T@Field_6867_29502) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_6867_29566 Mask@@17 o_23@@1 f_25@@10) (= (select (|PolymorphicMapType_9982_10042_29502#PolymorphicMapType_9982| Heap@@7) o_23@@1 f_25@@10) (select (|PolymorphicMapType_9982_10042_29502#PolymorphicMapType_9982| ExhaleHeap@@6) o_23@@1 f_25@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_9982_10042_29502#PolymorphicMapType_9982| ExhaleHeap@@6) o_23@@1 f_25@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_9982) (ExhaleHeap@@7 T@PolymorphicMapType_9982) (Mask@@18 T@PolymorphicMapType_10003) (o_23@@2 T@Ref) (f_25@@11 T@Field_10055_10056) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_6867_10056 Mask@@18 o_23@@2 f_25@@11) (= (select (|PolymorphicMapType_9982_6714_6715#PolymorphicMapType_9982| Heap@@8) o_23@@2 f_25@@11) (select (|PolymorphicMapType_9982_6714_6715#PolymorphicMapType_9982| ExhaleHeap@@7) o_23@@2 f_25@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_9982_6714_6715#PolymorphicMapType_9982| ExhaleHeap@@7) o_23@@2 f_25@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_9982) (ExhaleHeap@@8 T@PolymorphicMapType_9982) (Mask@@19 T@PolymorphicMapType_10003) (o_23@@3 T@Ref) (f_25@@12 T@Field_10042_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_6867_53 Mask@@19 o_23@@3 f_25@@12) (= (select (|PolymorphicMapType_9982_6711_53#PolymorphicMapType_9982| Heap@@9) o_23@@3 f_25@@12) (select (|PolymorphicMapType_9982_6711_53#PolymorphicMapType_9982| ExhaleHeap@@8) o_23@@3 f_25@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_9982_6711_53#PolymorphicMapType_9982| ExhaleHeap@@8) o_23@@3 f_25@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_9982) (ExhaleHeap@@9 T@PolymorphicMapType_9982) (Mask@@20 T@PolymorphicMapType_10003) (o_23@@4 T@Ref) (f_25@@13 T@Field_13493_1473) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_6867_1473 Mask@@20 o_23@@4 f_25@@13) (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| Heap@@10) o_23@@4 f_25@@13) (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| ExhaleHeap@@9) o_23@@4 f_25@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| ExhaleHeap@@9) o_23@@4 f_25@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_6867_29635) ) (! (= (select (|PolymorphicMapType_10003_6867_33757#PolymorphicMapType_10003| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10003_6867_33757#PolymorphicMapType_10003| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_6867_29502) ) (! (= (select (|PolymorphicMapType_10003_6867_29502#PolymorphicMapType_10003| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10003_6867_29502#PolymorphicMapType_10003| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_10055_10056) ) (! (= (select (|PolymorphicMapType_10003_6867_10056#PolymorphicMapType_10003| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10003_6867_10056#PolymorphicMapType_10003| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_10042_53) ) (! (= (select (|PolymorphicMapType_10003_6867_53#PolymorphicMapType_10003| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10003_6867_53#PolymorphicMapType_10003| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_13493_1473) ) (! (= (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_10003) (SummandMask1 T@PolymorphicMapType_10003) (SummandMask2 T@PolymorphicMapType_10003) (o_2@@19 T@Ref) (f_4@@19 T@Field_6867_29635) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_10003_6867_33757#PolymorphicMapType_10003| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_10003_6867_33757#PolymorphicMapType_10003| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_10003_6867_33757#PolymorphicMapType_10003| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10003_6867_33757#PolymorphicMapType_10003| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10003_6867_33757#PolymorphicMapType_10003| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10003_6867_33757#PolymorphicMapType_10003| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_10003) (SummandMask1@@0 T@PolymorphicMapType_10003) (SummandMask2@@0 T@PolymorphicMapType_10003) (o_2@@20 T@Ref) (f_4@@20 T@Field_6867_29502) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_10003_6867_29502#PolymorphicMapType_10003| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_10003_6867_29502#PolymorphicMapType_10003| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_10003_6867_29502#PolymorphicMapType_10003| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10003_6867_29502#PolymorphicMapType_10003| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10003_6867_29502#PolymorphicMapType_10003| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10003_6867_29502#PolymorphicMapType_10003| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_10003) (SummandMask1@@1 T@PolymorphicMapType_10003) (SummandMask2@@1 T@PolymorphicMapType_10003) (o_2@@21 T@Ref) (f_4@@21 T@Field_10055_10056) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_10003_6867_10056#PolymorphicMapType_10003| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_10003_6867_10056#PolymorphicMapType_10003| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_10003_6867_10056#PolymorphicMapType_10003| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10003_6867_10056#PolymorphicMapType_10003| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10003_6867_10056#PolymorphicMapType_10003| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10003_6867_10056#PolymorphicMapType_10003| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_10003) (SummandMask1@@2 T@PolymorphicMapType_10003) (SummandMask2@@2 T@PolymorphicMapType_10003) (o_2@@22 T@Ref) (f_4@@22 T@Field_10042_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_10003_6867_53#PolymorphicMapType_10003| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_10003_6867_53#PolymorphicMapType_10003| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_10003_6867_53#PolymorphicMapType_10003| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10003_6867_53#PolymorphicMapType_10003| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10003_6867_53#PolymorphicMapType_10003| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10003_6867_53#PolymorphicMapType_10003| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_10003) (SummandMask1@@3 T@PolymorphicMapType_10003) (SummandMask2@@3 T@PolymorphicMapType_10003) (o_2@@23 T@Ref) (f_4@@23 T@Field_13493_1473) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((a_2 T@ArrayDomainType) ) (! (>= (length_1 a_2) 0)
 :qid |stdinbpl.238:15|
 :skolemid |23|
 :pattern ( (length_1 a_2))
)))
(assert (forall ((a_2@@0 T@ArrayDomainType) (i Int) ) (!  (and (= (inverse_first (loc a_2@@0 i)) a_2@@0) (= (inverse_second (loc a_2@@0 i)) i))
 :qid |stdinbpl.232:15|
 :skolemid |22|
 :pattern ( (loc a_2@@0 i))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_9982) (o_27 T@Ref) (f_30 T@Field_6867_29502) (v T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_9982 (|PolymorphicMapType_9982_6711_53#PolymorphicMapType_9982| Heap@@11) (|PolymorphicMapType_9982_6714_6715#PolymorphicMapType_9982| Heap@@11) (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| Heap@@11) (|PolymorphicMapType_9982_6867_29679#PolymorphicMapType_9982| Heap@@11) (store (|PolymorphicMapType_9982_10042_29502#PolymorphicMapType_9982| Heap@@11) o_27 f_30 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9982 (|PolymorphicMapType_9982_6711_53#PolymorphicMapType_9982| Heap@@11) (|PolymorphicMapType_9982_6714_6715#PolymorphicMapType_9982| Heap@@11) (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| Heap@@11) (|PolymorphicMapType_9982_6867_29679#PolymorphicMapType_9982| Heap@@11) (store (|PolymorphicMapType_9982_10042_29502#PolymorphicMapType_9982| Heap@@11) o_27 f_30 v)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_9982) (o_27@@0 T@Ref) (f_30@@0 T@Field_6867_29635) (v@@0 T@PolymorphicMapType_10531) ) (! (succHeap Heap@@12 (PolymorphicMapType_9982 (|PolymorphicMapType_9982_6711_53#PolymorphicMapType_9982| Heap@@12) (|PolymorphicMapType_9982_6714_6715#PolymorphicMapType_9982| Heap@@12) (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| Heap@@12) (store (|PolymorphicMapType_9982_6867_29679#PolymorphicMapType_9982| Heap@@12) o_27@@0 f_30@@0 v@@0) (|PolymorphicMapType_9982_10042_29502#PolymorphicMapType_9982| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9982 (|PolymorphicMapType_9982_6711_53#PolymorphicMapType_9982| Heap@@12) (|PolymorphicMapType_9982_6714_6715#PolymorphicMapType_9982| Heap@@12) (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| Heap@@12) (store (|PolymorphicMapType_9982_6867_29679#PolymorphicMapType_9982| Heap@@12) o_27@@0 f_30@@0 v@@0) (|PolymorphicMapType_9982_10042_29502#PolymorphicMapType_9982| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_9982) (o_27@@1 T@Ref) (f_30@@1 T@Field_13493_1473) (v@@1 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_9982 (|PolymorphicMapType_9982_6711_53#PolymorphicMapType_9982| Heap@@13) (|PolymorphicMapType_9982_6714_6715#PolymorphicMapType_9982| Heap@@13) (store (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| Heap@@13) o_27@@1 f_30@@1 v@@1) (|PolymorphicMapType_9982_6867_29679#PolymorphicMapType_9982| Heap@@13) (|PolymorphicMapType_9982_10042_29502#PolymorphicMapType_9982| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9982 (|PolymorphicMapType_9982_6711_53#PolymorphicMapType_9982| Heap@@13) (|PolymorphicMapType_9982_6714_6715#PolymorphicMapType_9982| Heap@@13) (store (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| Heap@@13) o_27@@1 f_30@@1 v@@1) (|PolymorphicMapType_9982_6867_29679#PolymorphicMapType_9982| Heap@@13) (|PolymorphicMapType_9982_10042_29502#PolymorphicMapType_9982| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_9982) (o_27@@2 T@Ref) (f_30@@2 T@Field_10055_10056) (v@@2 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_9982 (|PolymorphicMapType_9982_6711_53#PolymorphicMapType_9982| Heap@@14) (store (|PolymorphicMapType_9982_6714_6715#PolymorphicMapType_9982| Heap@@14) o_27@@2 f_30@@2 v@@2) (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| Heap@@14) (|PolymorphicMapType_9982_6867_29679#PolymorphicMapType_9982| Heap@@14) (|PolymorphicMapType_9982_10042_29502#PolymorphicMapType_9982| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9982 (|PolymorphicMapType_9982_6711_53#PolymorphicMapType_9982| Heap@@14) (store (|PolymorphicMapType_9982_6714_6715#PolymorphicMapType_9982| Heap@@14) o_27@@2 f_30@@2 v@@2) (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| Heap@@14) (|PolymorphicMapType_9982_6867_29679#PolymorphicMapType_9982| Heap@@14) (|PolymorphicMapType_9982_10042_29502#PolymorphicMapType_9982| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_9982) (o_27@@3 T@Ref) (f_30@@3 T@Field_10042_53) (v@@3 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_9982 (store (|PolymorphicMapType_9982_6711_53#PolymorphicMapType_9982| Heap@@15) o_27@@3 f_30@@3 v@@3) (|PolymorphicMapType_9982_6714_6715#PolymorphicMapType_9982| Heap@@15) (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| Heap@@15) (|PolymorphicMapType_9982_6867_29679#PolymorphicMapType_9982| Heap@@15) (|PolymorphicMapType_9982_10042_29502#PolymorphicMapType_9982| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9982 (store (|PolymorphicMapType_9982_6711_53#PolymorphicMapType_9982| Heap@@15) o_27@@3 f_30@@3 v@@3) (|PolymorphicMapType_9982_6714_6715#PolymorphicMapType_9982| Heap@@15) (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| Heap@@15) (|PolymorphicMapType_9982_6867_29679#PolymorphicMapType_9982| Heap@@15) (|PolymorphicMapType_9982_10042_29502#PolymorphicMapType_9982| Heap@@15)))
)))
(assert (forall ((o_27@@4 T@Ref) (f_24 T@Field_10055_10056) (Heap@@16 T@PolymorphicMapType_9982) ) (!  (=> (select (|PolymorphicMapType_9982_6711_53#PolymorphicMapType_9982| Heap@@16) o_27@@4 $allocated) (select (|PolymorphicMapType_9982_6711_53#PolymorphicMapType_9982| Heap@@16) (select (|PolymorphicMapType_9982_6714_6715#PolymorphicMapType_9982| Heap@@16) o_27@@4 f_24) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_9982_6714_6715#PolymorphicMapType_9982| Heap@@16) o_27@@4 f_24))
)))
(assert (forall ((p@@1 T@Field_6867_29502) (v_1@@0 T@FrameType) (q T@Field_6867_29502) (w@@0 T@FrameType) (r T@Field_6867_29502) (u T@FrameType) ) (!  (=> (and (InsidePredicate_10042_10042 p@@1 v_1@@0 q w@@0) (InsidePredicate_10042_10042 q w@@0 r u)) (InsidePredicate_10042_10042 p@@1 v_1@@0 r u))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10042_10042 p@@1 v_1@@0 q w@@0) (InsidePredicate_10042_10042 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun i_6 () Int)
(declare-fun j_2 () Int)
(declare-fun a_2@@1 () T@ArrayDomainType)
(declare-fun QPMask@7 () T@PolymorphicMapType_10003)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) Int)
(declare-fun PostHeap@0 () T@PolymorphicMapType_9982)
(declare-fun blue@4 () Int)
(declare-fun i_34_2 () Int)
(declare-fun Heap@5 () T@PolymorphicMapType_9982)
(declare-fun white@3 () Int)
(declare-fun unsorted@4 () Int)
(declare-fun i_32_2 () Int)
(declare-fun i_30_2 () Int)
(declare-fun i_28 () Int)
(declare-fun QPMask@2 () T@PolymorphicMapType_10003)
(declare-fun neverTriggered7 (Int) Bool)
(declare-fun qpRange7 (T@Ref) Bool)
(declare-fun invRecv7 (T@Ref) Int)
(declare-fun QPMask@5 () T@PolymorphicMapType_10003)
(declare-fun Heap@4 () T@PolymorphicMapType_9982)
(declare-fun unsorted@3 () Int)
(declare-fun white@2 () Int)
(declare-fun blue@3 () Int)
(declare-fun tmp@0 () Int)
(declare-fun blue@1 () Int)
(declare-fun unsorted@0 () Int)
(declare-fun Heap@2 () T@PolymorphicMapType_9982)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_9982)
(declare-fun blue@2 () Int)
(declare-fun Heap@3 () T@PolymorphicMapType_9982)
(declare-fun white@0 () Int)
(declare-fun Heap@0 () T@PolymorphicMapType_9982)
(declare-fun Heap@1 () T@PolymorphicMapType_9982)
(declare-fun white@1 () Int)
(declare-fun unsorted@2 () Int)
(declare-fun unsorted@1 () Int)
(declare-fun qpRange6 (T@Ref) Bool)
(declare-fun invRecv6 (T@Ref) Int)
(declare-fun i_6_1 () Int)
(declare-fun j_2_1 () Int)
(declare-fun QPMask@1 () T@PolymorphicMapType_10003)
(declare-fun qpRange8 (T@Ref) Bool)
(declare-fun invRecv8 (T@Ref) Int)
(declare-fun QPMask@3 () T@PolymorphicMapType_10003)
(declare-fun neverTriggered3 (Int) Bool)
(declare-fun qpRange3 (T@Ref) Bool)
(declare-fun invRecv3 (T@Ref) Int)
(declare-fun QPMask@4 () T@PolymorphicMapType_10003)
(declare-fun i_11 () Int)
(declare-fun QPMask@6 () T@PolymorphicMapType_10003)
(declare-fun i_10 () Int)
(declare-fun i_9 () Int)
(declare-fun i_8 () Int)
(declare-fun qpRange5 (T@Ref) Bool)
(declare-fun invRecv5 (T@Ref) Int)
(declare-fun blue@0 () Int)
(declare-fun Heap@@17 () T@PolymorphicMapType_9982)
(declare-fun i_14_1 () Int)
(declare-fun i_12_1 () Int)
(declare-fun i_10_1 () Int)
(declare-fun i_8_2 () Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_10003)
(declare-fun neverTriggered4 (Int) Bool)
(declare-fun qpRange4 (T@Ref) Bool)
(declare-fun invRecv4 (T@Ref) Int)
(declare-fun i_2 () Int)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) Int)
(set-info :boogie-vc-id DutchFlag)
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
 (=> (= (ControlFlow 0 0) 132) (let ((anon14_correct true))
(let ((anon91_Else_correct  (=> (and (not (and (<= 0 i_6) (and (< i_6 j_2) (< j_2 (length_1 a_2@@1))))) (= (ControlFlow 0 124) 120)) anon14_correct)))
(let ((anon91_Then_correct  (=> (and (<= 0 i_6) (and (< i_6 j_2) (< j_2 (length_1 a_2@@1)))) (and (=> (= (ControlFlow 0 121) (- 0 123)) (HasDirectPerm_6867_1473 QPMask@7 (loc a_2@@1 i_6) val)) (=> (HasDirectPerm_6867_1473 QPMask@7 (loc a_2@@1 i_6) val) (and (=> (= (ControlFlow 0 121) (- 0 122)) (HasDirectPerm_6867_1473 QPMask@7 (loc a_2@@1 j_2) val)) (=> (HasDirectPerm_6867_1473 QPMask@7 (loc a_2@@1 j_2) val) (=> (= (ControlFlow 0 121) 120) anon14_correct))))))))
(let ((anon90_Else_correct true))
(let ((anon89_Else_correct  (and (=> (= (ControlFlow 0 125) (- 0 126)) (forall ((i$0_1 Int) (i$0_1_1 Int) ) (!  (=> (and (and (and (and (not (= i$0_1 i$0_1_1)) (and (<= 0 i$0_1) (< i$0_1 (length_1 a_2@@1)))) (and (<= 0 i$0_1_1) (< i$0_1_1 (length_1 a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i$0_1) (loc a_2@@1 i$0_1_1))))
 :qid |stdinbpl.376:15|
 :skolemid |31|
))) (=> (forall ((i$0_1@@0 Int) (i$0_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i$0_1@@0 i$0_1_1@@0)) (and (<= 0 i$0_1@@0) (< i$0_1@@0 (length_1 a_2@@1)))) (and (<= 0 i$0_1_1@@0) (< i$0_1_1@@0 (length_1 a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i$0_1@@0) (loc a_2@@1 i$0_1_1@@0))))
 :qid |stdinbpl.376:15|
 :skolemid |31|
)) (=> (and (and (forall ((i$0_1@@1 Int) ) (!  (=> (and (and (<= 0 i$0_1@@1) (< i$0_1@@1 (length_1 a_2@@1))) (< NoPerm FullPerm)) (and (qpRange2 (loc a_2@@1 i$0_1@@1)) (= (invRecv2 (loc a_2@@1 i$0_1@@1)) i$0_1@@1)))
 :qid |stdinbpl.382:22|
 :skolemid |32|
 :pattern ( (loc a_2@@1 i$0_1@@1))
 :pattern ( (loc a_2@@1 i$0_1@@1))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv2 o_4)) (< (invRecv2 o_4) (length_1 a_2@@1))) (< NoPerm FullPerm)) (qpRange2 o_4)) (= (loc a_2@@1 (invRecv2 o_4)) o_4))
 :qid |stdinbpl.386:22|
 :skolemid |33|
 :pattern ( (invRecv2 o_4))
))) (and (forall ((i$0_1@@2 Int) ) (!  (=> (and (<= 0 i$0_1@@2) (< i$0_1@@2 (length_1 a_2@@1))) (not (= (loc a_2@@1 i$0_1@@2) null)))
 :qid |stdinbpl.392:22|
 :skolemid |34|
 :pattern ( (loc a_2@@1 i$0_1@@2))
 :pattern ( (loc a_2@@1 i$0_1@@2))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv2 o_4@@0)) (< (invRecv2 o_4@@0) (length_1 a_2@@1))) (< NoPerm FullPerm)) (qpRange2 o_4@@0)) (and (=> (< NoPerm FullPerm) (= (loc a_2@@1 (invRecv2 o_4@@0)) o_4@@0)) (= (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@7) o_4@@0 val) (+ (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| ZeroMask) o_4@@0 val) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv2 o_4@@0)) (< (invRecv2 o_4@@0) (length_1 a_2@@1))) (< NoPerm FullPerm)) (qpRange2 o_4@@0))) (= (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@7) o_4@@0 val) (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| ZeroMask) o_4@@0 val))))
 :qid |stdinbpl.398:22|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@7) o_4@@0 val))
)))) (=> (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_10042_53) ) (!  (=> true (= (select (|PolymorphicMapType_10003_6867_53#PolymorphicMapType_10003| ZeroMask) o_4@@1 f_5) (select (|PolymorphicMapType_10003_6867_53#PolymorphicMapType_10003| QPMask@7) o_4@@1 f_5)))
 :qid |stdinbpl.402:29|
 :skolemid |36|
 :pattern ( (select (|PolymorphicMapType_10003_6867_53#PolymorphicMapType_10003| ZeroMask) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_10003_6867_53#PolymorphicMapType_10003| QPMask@7) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_10055_10056) ) (!  (=> true (= (select (|PolymorphicMapType_10003_6867_10056#PolymorphicMapType_10003| ZeroMask) o_4@@2 f_5@@0) (select (|PolymorphicMapType_10003_6867_10056#PolymorphicMapType_10003| QPMask@7) o_4@@2 f_5@@0)))
 :qid |stdinbpl.402:29|
 :skolemid |36|
 :pattern ( (select (|PolymorphicMapType_10003_6867_10056#PolymorphicMapType_10003| ZeroMask) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_10003_6867_10056#PolymorphicMapType_10003| QPMask@7) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_13493_1473) ) (!  (=> (not (= f_5@@1 val)) (= (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| ZeroMask) o_4@@3 f_5@@1) (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@7) o_4@@3 f_5@@1)))
 :qid |stdinbpl.402:29|
 :skolemid |36|
 :pattern ( (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| ZeroMask) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@7) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_6867_29502) ) (!  (=> true (= (select (|PolymorphicMapType_10003_6867_29502#PolymorphicMapType_10003| ZeroMask) o_4@@4 f_5@@2) (select (|PolymorphicMapType_10003_6867_29502#PolymorphicMapType_10003| QPMask@7) o_4@@4 f_5@@2)))
 :qid |stdinbpl.402:29|
 :skolemid |36|
 :pattern ( (select (|PolymorphicMapType_10003_6867_29502#PolymorphicMapType_10003| ZeroMask) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_10003_6867_29502#PolymorphicMapType_10003| QPMask@7) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_6867_29635) ) (!  (=> true (= (select (|PolymorphicMapType_10003_6867_33757#PolymorphicMapType_10003| ZeroMask) o_4@@5 f_5@@3) (select (|PolymorphicMapType_10003_6867_33757#PolymorphicMapType_10003| QPMask@7) o_4@@5 f_5@@3)))
 :qid |stdinbpl.402:29|
 :skolemid |36|
 :pattern ( (select (|PolymorphicMapType_10003_6867_33757#PolymorphicMapType_10003| ZeroMask) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_10003_6867_33757#PolymorphicMapType_10003| QPMask@7) o_4@@5 f_5@@3))
))) (and (state PostHeap@0 QPMask@7) (state PostHeap@0 QPMask@7))) (and (and (=> (= (ControlFlow 0 125) 119) anon90_Else_correct) (=> (= (ControlFlow 0 125) 121) anon91_Then_correct)) (=> (= (ControlFlow 0 125) 124) anon91_Else_correct))))))))
(let ((anon89_Then_correct true))
(let ((anon88_Then_correct  (=> (state PostHeap@0 ZeroMask) (and (=> (= (ControlFlow 0 127) 118) anon89_Then_correct) (=> (= (ControlFlow 0 127) 125) anon89_Else_correct)))))
(let ((anon76_correct true))
(let ((anon122_Else_correct  (=> (and (not (and (<= blue@4 i_34_2) (< i_34_2 (length_1 a_2@@1)))) (= (ControlFlow 0 82) 79)) anon76_correct)))
(let ((anon122_Then_correct  (=> (and (<= blue@4 i_34_2) (< i_34_2 (length_1 a_2@@1))) (and (=> (= (ControlFlow 0 80) (- 0 81)) (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| Heap@5) (loc a_2@@1 i_34_2) val) 2)) (=> (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| Heap@5) (loc a_2@@1 i_34_2) val) 2) (=> (= (ControlFlow 0 80) 79) anon76_correct))))))
(let ((anon121_Else_correct true))
(let ((anon119_Else_correct  (=> (forall ((i_33_1_1 Int) ) (!  (=> (and (<= white@3 i_33_1_1) (< i_33_1_1 unsorted@4)) (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| Heap@5) (loc a_2@@1 i_33_1_1) val) 1))
 :qid |stdinbpl.880:24|
 :skolemid |76|
 :pattern ( (loc a_2@@1 i_33_1_1))
)) (and (and (=> (= (ControlFlow 0 83) 78) anon121_Else_correct) (=> (= (ControlFlow 0 83) 80) anon122_Then_correct)) (=> (= (ControlFlow 0 83) 82) anon122_Else_correct)))))
(let ((anon72_correct true))
(let ((anon120_Else_correct  (=> (and (not (and (<= white@3 i_32_2) (< i_32_2 unsorted@4))) (= (ControlFlow 0 77) 74)) anon72_correct)))
(let ((anon120_Then_correct  (=> (and (<= white@3 i_32_2) (< i_32_2 unsorted@4)) (and (=> (= (ControlFlow 0 75) (- 0 76)) (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| Heap@5) (loc a_2@@1 i_32_2) val) 1)) (=> (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| Heap@5) (loc a_2@@1 i_32_2) val) 1) (=> (= (ControlFlow 0 75) 74) anon72_correct))))))
(let ((anon117_Else_correct  (=> (forall ((i_31_1_1 Int) ) (!  (=> (and (<= 0 i_31_1_1) (< i_31_1_1 white@3)) (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| Heap@5) (loc a_2@@1 i_31_1_1) val) 0))
 :qid |stdinbpl.869:24|
 :skolemid |75|
 :pattern ( (loc a_2@@1 i_31_1_1))
)) (and (and (=> (= (ControlFlow 0 84) 83) anon119_Else_correct) (=> (= (ControlFlow 0 84) 75) anon120_Then_correct)) (=> (= (ControlFlow 0 84) 77) anon120_Else_correct)))))
(let ((anon68_correct true))
(let ((anon118_Else_correct  (=> (and (not (and (<= 0 i_30_2) (< i_30_2 white@3))) (= (ControlFlow 0 73) 70)) anon68_correct)))
(let ((anon118_Then_correct  (=> (and (<= 0 i_30_2) (< i_30_2 white@3)) (and (=> (= (ControlFlow 0 71) (- 0 72)) (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| Heap@5) (loc a_2@@1 i_30_2) val) 0)) (=> (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| Heap@5) (loc a_2@@1 i_30_2) val) 0) (=> (= (ControlFlow 0 71) 70) anon68_correct))))))
(let ((anon115_Else_correct  (=> (forall ((i_29_1_1 Int) ) (!  (=> (and (<= 0 i_29_1_1) (< i_29_1_1 (length_1 a_2@@1))) (or (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| Heap@5) (loc a_2@@1 i_29_1_1) val) 0) (or (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| Heap@5) (loc a_2@@1 i_29_1_1) val) 1) (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| Heap@5) (loc a_2@@1 i_29_1_1) val) 2))))
 :qid |stdinbpl.858:24|
 :skolemid |74|
 :pattern ( (loc a_2@@1 i_29_1_1))
)) (and (and (=> (= (ControlFlow 0 85) 84) anon117_Else_correct) (=> (= (ControlFlow 0 85) 71) anon118_Then_correct)) (=> (= (ControlFlow 0 85) 73) anon118_Else_correct)))))
(let ((anon64_correct true))
(let ((anon116_Else_correct  (=> (and (not (and (<= 0 i_28) (< i_28 (length_1 a_2@@1)))) (= (ControlFlow 0 69) 66)) anon64_correct)))
(let ((anon116_Then_correct  (=> (and (<= 0 i_28) (< i_28 (length_1 a_2@@1))) (and (=> (= (ControlFlow 0 67) (- 0 68)) (or (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| Heap@5) (loc a_2@@1 i_28) val) 0) (or (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| Heap@5) (loc a_2@@1 i_28) val) 1) (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| Heap@5) (loc a_2@@1 i_28) val) 2)))) (=> (or (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| Heap@5) (loc a_2@@1 i_28) val) 0) (or (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| Heap@5) (loc a_2@@1 i_28) val) 1) (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| Heap@5) (loc a_2@@1 i_28) val) 2))) (=> (= (ControlFlow 0 67) 66) anon64_correct))))))
(let ((anon61_correct  (=> (state Heap@5 QPMask@2) (and (=> (= (ControlFlow 0 86) (- 0 92)) (forall ((i$1_4 Int) (i$1_4_1 Int) ) (!  (=> (and (and (and (and (not (= i$1_4 i$1_4_1)) (and (<= 0 i$1_4) (< i$1_4 (length_1 a_2@@1)))) (and (<= 0 i$1_4_1) (< i$1_4_1 (length_1 a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i$1_4) (loc a_2@@1 i$1_4_1))))
 :qid |stdinbpl.809:21|
 :skolemid |68|
 :pattern ( (neverTriggered7 i$1_4) (neverTriggered7 i$1_4_1))
))) (=> (forall ((i$1_4@@0 Int) (i$1_4_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i$1_4@@0 i$1_4_1@@0)) (and (<= 0 i$1_4@@0) (< i$1_4@@0 (length_1 a_2@@1)))) (and (<= 0 i$1_4_1@@0) (< i$1_4_1@@0 (length_1 a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i$1_4@@0) (loc a_2@@1 i$1_4_1@@0))))
 :qid |stdinbpl.809:21|
 :skolemid |68|
 :pattern ( (neverTriggered7 i$1_4@@0) (neverTriggered7 i$1_4_1@@0))
)) (and (=> (= (ControlFlow 0 86) (- 0 91)) (forall ((i$1_4@@1 Int) ) (!  (=> (and (<= 0 i$1_4@@1) (< i$1_4@@1 (length_1 a_2@@1))) (>= (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@2) (loc a_2@@1 i$1_4@@1) val) FullPerm))
 :qid |stdinbpl.816:21|
 :skolemid |69|
 :pattern ( (loc a_2@@1 i$1_4@@1))
 :pattern ( (loc a_2@@1 i$1_4@@1))
))) (=> (forall ((i$1_4@@2 Int) ) (!  (=> (and (<= 0 i$1_4@@2) (< i$1_4@@2 (length_1 a_2@@1))) (>= (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@2) (loc a_2@@1 i$1_4@@2) val) FullPerm))
 :qid |stdinbpl.816:21|
 :skolemid |69|
 :pattern ( (loc a_2@@1 i$1_4@@2))
 :pattern ( (loc a_2@@1 i$1_4@@2))
)) (=> (forall ((i$1_4@@3 Int) ) (!  (=> (and (and (<= 0 i$1_4@@3) (< i$1_4@@3 (length_1 a_2@@1))) (< NoPerm FullPerm)) (and (qpRange7 (loc a_2@@1 i$1_4@@3)) (= (invRecv7 (loc a_2@@1 i$1_4@@3)) i$1_4@@3)))
 :qid |stdinbpl.822:26|
 :skolemid |70|
 :pattern ( (loc a_2@@1 i$1_4@@3))
 :pattern ( (loc a_2@@1 i$1_4@@3))
)) (=> (and (forall ((o_4@@6 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv7 o_4@@6)) (< (invRecv7 o_4@@6) (length_1 a_2@@1))) (and (< NoPerm FullPerm) (qpRange7 o_4@@6))) (= (loc a_2@@1 (invRecv7 o_4@@6)) o_4@@6))
 :qid |stdinbpl.826:26|
 :skolemid |71|
 :pattern ( (invRecv7 o_4@@6))
)) (forall ((o_4@@7 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv7 o_4@@7)) (< (invRecv7 o_4@@7) (length_1 a_2@@1))) (and (< NoPerm FullPerm) (qpRange7 o_4@@7))) (and (= (loc a_2@@1 (invRecv7 o_4@@7)) o_4@@7) (= (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@5) o_4@@7 val) (- (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@2) o_4@@7 val) FullPerm)))) (=> (not (and (and (<= 0 (invRecv7 o_4@@7)) (< (invRecv7 o_4@@7) (length_1 a_2@@1))) (and (< NoPerm FullPerm) (qpRange7 o_4@@7)))) (= (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@5) o_4@@7 val) (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@2) o_4@@7 val))))
 :qid |stdinbpl.832:26|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@5) o_4@@7 val))
))) (=> (and (and (and (and (forall ((o_4@@8 T@Ref) (f_5@@4 T@Field_10042_53) ) (!  (=> true (= (select (|PolymorphicMapType_10003_6867_53#PolymorphicMapType_10003| QPMask@2) o_4@@8 f_5@@4) (select (|PolymorphicMapType_10003_6867_53#PolymorphicMapType_10003| QPMask@5) o_4@@8 f_5@@4)))
 :qid |stdinbpl.838:33|
 :skolemid |73|
 :pattern ( (select (|PolymorphicMapType_10003_6867_53#PolymorphicMapType_10003| QPMask@5) o_4@@8 f_5@@4))
)) (forall ((o_4@@9 T@Ref) (f_5@@5 T@Field_10055_10056) ) (!  (=> true (= (select (|PolymorphicMapType_10003_6867_10056#PolymorphicMapType_10003| QPMask@2) o_4@@9 f_5@@5) (select (|PolymorphicMapType_10003_6867_10056#PolymorphicMapType_10003| QPMask@5) o_4@@9 f_5@@5)))
 :qid |stdinbpl.838:33|
 :skolemid |73|
 :pattern ( (select (|PolymorphicMapType_10003_6867_10056#PolymorphicMapType_10003| QPMask@5) o_4@@9 f_5@@5))
))) (forall ((o_4@@10 T@Ref) (f_5@@6 T@Field_13493_1473) ) (!  (=> (not (= f_5@@6 val)) (= (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@2) o_4@@10 f_5@@6) (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@5) o_4@@10 f_5@@6)))
 :qid |stdinbpl.838:33|
 :skolemid |73|
 :pattern ( (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@5) o_4@@10 f_5@@6))
))) (forall ((o_4@@11 T@Ref) (f_5@@7 T@Field_6867_29502) ) (!  (=> true (= (select (|PolymorphicMapType_10003_6867_29502#PolymorphicMapType_10003| QPMask@2) o_4@@11 f_5@@7) (select (|PolymorphicMapType_10003_6867_29502#PolymorphicMapType_10003| QPMask@5) o_4@@11 f_5@@7)))
 :qid |stdinbpl.838:33|
 :skolemid |73|
 :pattern ( (select (|PolymorphicMapType_10003_6867_29502#PolymorphicMapType_10003| QPMask@5) o_4@@11 f_5@@7))
))) (forall ((o_4@@12 T@Ref) (f_5@@8 T@Field_6867_29635) ) (!  (=> true (= (select (|PolymorphicMapType_10003_6867_33757#PolymorphicMapType_10003| QPMask@2) o_4@@12 f_5@@8) (select (|PolymorphicMapType_10003_6867_33757#PolymorphicMapType_10003| QPMask@5) o_4@@12 f_5@@8)))
 :qid |stdinbpl.838:33|
 :skolemid |73|
 :pattern ( (select (|PolymorphicMapType_10003_6867_33757#PolymorphicMapType_10003| QPMask@5) o_4@@12 f_5@@8))
))) (and (=> (= (ControlFlow 0 86) (- 0 90)) (<= 0 white@3)) (=> (<= 0 white@3) (and (=> (= (ControlFlow 0 86) (- 0 89)) (<= white@3 unsorted@4)) (=> (<= white@3 unsorted@4) (and (=> (= (ControlFlow 0 86) (- 0 88)) (<= unsorted@4 blue@4)) (=> (<= unsorted@4 blue@4) (and (=> (= (ControlFlow 0 86) (- 0 87)) (<= blue@4 (length_1 a_2@@1))) (=> (<= blue@4 (length_1 a_2@@1)) (and (and (=> (= (ControlFlow 0 86) 85) anon115_Else_correct) (=> (= (ControlFlow 0 86) 67) anon116_Then_correct)) (=> (= (ControlFlow 0 86) 69) anon116_Else_correct))))))))))))))))))))
(let ((anon60_correct  (=> (and (state Heap@4 QPMask@2) (= unsorted@4 unsorted@3)) (=> (and (and (= white@3 white@2) (= blue@4 blue@3)) (and (= Heap@5 Heap@4) (= (ControlFlow 0 94) 86))) anon61_correct))))
(let ((anon114_Else_correct  (=> (not (= tmp@0 0)) (and (=> (= (ControlFlow 0 99) (- 0 102)) (HasDirectPerm_6867_1473 QPMask@2 (loc a_2@@1 (- blue@1 1)) val)) (=> (HasDirectPerm_6867_1473 QPMask@2 (loc a_2@@1 (- blue@1 1)) val) (and (=> (= (ControlFlow 0 99) (- 0 101)) (= FullPerm (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@2) (loc a_2@@1 unsorted@0) val))) (=> (= FullPerm (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@2) (loc a_2@@1 unsorted@0) val)) (=> (and (and (= Heap@2 (PolymorphicMapType_9982 (|PolymorphicMapType_9982_6711_53#PolymorphicMapType_9982| ExhaleHeap@0) (|PolymorphicMapType_9982_6714_6715#PolymorphicMapType_9982| ExhaleHeap@0) (store (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| ExhaleHeap@0) (loc a_2@@1 unsorted@0) val (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| ExhaleHeap@0) (loc a_2@@1 (- blue@1 1)) val)) (|PolymorphicMapType_9982_6867_29679#PolymorphicMapType_9982| ExhaleHeap@0) (|PolymorphicMapType_9982_10042_29502#PolymorphicMapType_9982| ExhaleHeap@0))) (state Heap@2 QPMask@2)) (and (= blue@2 (- blue@1 1)) (state Heap@2 QPMask@2))) (and (=> (= (ControlFlow 0 99) (- 0 100)) (= FullPerm (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@2) (loc a_2@@1 blue@2) val))) (=> (= FullPerm (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@2) (loc a_2@@1 blue@2) val)) (=> (= Heap@3 (PolymorphicMapType_9982 (|PolymorphicMapType_9982_6711_53#PolymorphicMapType_9982| Heap@2) (|PolymorphicMapType_9982_6714_6715#PolymorphicMapType_9982| Heap@2) (store (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| Heap@2) (loc a_2@@1 blue@2) val tmp@0) (|PolymorphicMapType_9982_6867_29679#PolymorphicMapType_9982| Heap@2) (|PolymorphicMapType_9982_10042_29502#PolymorphicMapType_9982| Heap@2))) (=> (and (state Heap@3 QPMask@2) (= unsorted@3 unsorted@0)) (=> (and (and (= white@2 white@0) (= blue@3 blue@2)) (and (= Heap@4 Heap@3) (= (ControlFlow 0 99) 94))) anon60_correct)))))))))))))
(let ((anon114_Then_correct  (=> (= tmp@0 0) (and (=> (= (ControlFlow 0 95) (- 0 98)) (HasDirectPerm_6867_1473 QPMask@2 (loc a_2@@1 white@0) val)) (=> (HasDirectPerm_6867_1473 QPMask@2 (loc a_2@@1 white@0) val) (and (=> (= (ControlFlow 0 95) (- 0 97)) (= FullPerm (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@2) (loc a_2@@1 unsorted@0) val))) (=> (= FullPerm (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@2) (loc a_2@@1 unsorted@0) val)) (=> (and (= Heap@0 (PolymorphicMapType_9982 (|PolymorphicMapType_9982_6711_53#PolymorphicMapType_9982| ExhaleHeap@0) (|PolymorphicMapType_9982_6714_6715#PolymorphicMapType_9982| ExhaleHeap@0) (store (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| ExhaleHeap@0) (loc a_2@@1 unsorted@0) val (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| ExhaleHeap@0) (loc a_2@@1 white@0) val)) (|PolymorphicMapType_9982_6867_29679#PolymorphicMapType_9982| ExhaleHeap@0) (|PolymorphicMapType_9982_10042_29502#PolymorphicMapType_9982| ExhaleHeap@0))) (state Heap@0 QPMask@2)) (and (=> (= (ControlFlow 0 95) (- 0 96)) (= FullPerm (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@2) (loc a_2@@1 white@0) val))) (=> (= FullPerm (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@2) (loc a_2@@1 white@0) val)) (=> (= Heap@1 (PolymorphicMapType_9982 (|PolymorphicMapType_9982_6711_53#PolymorphicMapType_9982| Heap@0) (|PolymorphicMapType_9982_6714_6715#PolymorphicMapType_9982| Heap@0) (store (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| Heap@0) (loc a_2@@1 white@0) val tmp@0) (|PolymorphicMapType_9982_6867_29679#PolymorphicMapType_9982| Heap@0) (|PolymorphicMapType_9982_10042_29502#PolymorphicMapType_9982| Heap@0))) (=> (and (state Heap@1 QPMask@2) (= white@1 (+ white@0 1))) (=> (and (and (and (state Heap@1 QPMask@2) (= unsorted@2 (+ unsorted@0 1))) (and (state Heap@1 QPMask@2) (= unsorted@3 unsorted@2))) (and (and (= white@2 white@1) (= blue@3 blue@1)) (and (= Heap@4 Heap@1) (= (ControlFlow 0 95) 94)))) anon60_correct)))))))))))))
(let ((anon113_Else_correct  (=> (not (= tmp@0 1)) (and (=> (= (ControlFlow 0 103) 95) anon114_Then_correct) (=> (= (ControlFlow 0 103) 99) anon114_Else_correct)))))
(let ((anon113_Then_correct  (=> (and (and (and (= tmp@0 1) (= unsorted@1 (+ unsorted@0 1))) (and (state ExhaleHeap@0 QPMask@2) (= unsorted@4 unsorted@1))) (and (and (= white@3 white@0) (= blue@4 blue@1)) (and (= Heap@5 ExhaleHeap@0) (= (ControlFlow 0 93) 86)))) anon61_correct)))
(let ((anon112_Then_correct  (=> (state ExhaleHeap@0 ZeroMask) (and (=> (= (ControlFlow 0 104) (- 0 106)) (forall ((i$1_3 Int) (i$1_3_1 Int) ) (!  (=> (and (and (and (and (not (= i$1_3 i$1_3_1)) (and (<= 0 i$1_3) (< i$1_3 (length_1 a_2@@1)))) (and (<= 0 i$1_3_1) (< i$1_3_1 (length_1 a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i$1_3) (loc a_2@@1 i$1_3_1))))
 :qid |stdinbpl.673:19|
 :skolemid |58|
))) (=> (forall ((i$1_3@@0 Int) (i$1_3_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i$1_3@@0 i$1_3_1@@0)) (and (<= 0 i$1_3@@0) (< i$1_3@@0 (length_1 a_2@@1)))) (and (<= 0 i$1_3_1@@0) (< i$1_3_1@@0 (length_1 a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i$1_3@@0) (loc a_2@@1 i$1_3_1@@0))))
 :qid |stdinbpl.673:19|
 :skolemid |58|
)) (=> (and (and (forall ((i$1_3@@1 Int) ) (!  (=> (and (and (<= 0 i$1_3@@1) (< i$1_3@@1 (length_1 a_2@@1))) (< NoPerm FullPerm)) (and (qpRange6 (loc a_2@@1 i$1_3@@1)) (= (invRecv6 (loc a_2@@1 i$1_3@@1)) i$1_3@@1)))
 :qid |stdinbpl.679:26|
 :skolemid |59|
 :pattern ( (loc a_2@@1 i$1_3@@1))
 :pattern ( (loc a_2@@1 i$1_3@@1))
)) (forall ((o_4@@13 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv6 o_4@@13)) (< (invRecv6 o_4@@13) (length_1 a_2@@1))) (< NoPerm FullPerm)) (qpRange6 o_4@@13)) (= (loc a_2@@1 (invRecv6 o_4@@13)) o_4@@13))
 :qid |stdinbpl.683:26|
 :skolemid |60|
 :pattern ( (invRecv6 o_4@@13))
))) (and (forall ((i$1_3@@2 Int) ) (!  (=> (and (<= 0 i$1_3@@2) (< i$1_3@@2 (length_1 a_2@@1))) (not (= (loc a_2@@1 i$1_3@@2) null)))
 :qid |stdinbpl.689:26|
 :skolemid |61|
 :pattern ( (loc a_2@@1 i$1_3@@2))
 :pattern ( (loc a_2@@1 i$1_3@@2))
)) (forall ((o_4@@14 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv6 o_4@@14)) (< (invRecv6 o_4@@14) (length_1 a_2@@1))) (< NoPerm FullPerm)) (qpRange6 o_4@@14)) (and (=> (< NoPerm FullPerm) (= (loc a_2@@1 (invRecv6 o_4@@14)) o_4@@14)) (= (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@2) o_4@@14 val) (+ (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| ZeroMask) o_4@@14 val) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv6 o_4@@14)) (< (invRecv6 o_4@@14) (length_1 a_2@@1))) (< NoPerm FullPerm)) (qpRange6 o_4@@14))) (= (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@2) o_4@@14 val) (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| ZeroMask) o_4@@14 val))))
 :qid |stdinbpl.695:26|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@2) o_4@@14 val))
)))) (=> (and (and (and (and (and (and (forall ((o_4@@15 T@Ref) (f_5@@9 T@Field_10042_53) ) (!  (=> true (= (select (|PolymorphicMapType_10003_6867_53#PolymorphicMapType_10003| ZeroMask) o_4@@15 f_5@@9) (select (|PolymorphicMapType_10003_6867_53#PolymorphicMapType_10003| QPMask@2) o_4@@15 f_5@@9)))
 :qid |stdinbpl.699:33|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_10003_6867_53#PolymorphicMapType_10003| ZeroMask) o_4@@15 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_10003_6867_53#PolymorphicMapType_10003| QPMask@2) o_4@@15 f_5@@9))
)) (forall ((o_4@@16 T@Ref) (f_5@@10 T@Field_10055_10056) ) (!  (=> true (= (select (|PolymorphicMapType_10003_6867_10056#PolymorphicMapType_10003| ZeroMask) o_4@@16 f_5@@10) (select (|PolymorphicMapType_10003_6867_10056#PolymorphicMapType_10003| QPMask@2) o_4@@16 f_5@@10)))
 :qid |stdinbpl.699:33|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_10003_6867_10056#PolymorphicMapType_10003| ZeroMask) o_4@@16 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_10003_6867_10056#PolymorphicMapType_10003| QPMask@2) o_4@@16 f_5@@10))
))) (forall ((o_4@@17 T@Ref) (f_5@@11 T@Field_13493_1473) ) (!  (=> (not (= f_5@@11 val)) (= (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| ZeroMask) o_4@@17 f_5@@11) (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@2) o_4@@17 f_5@@11)))
 :qid |stdinbpl.699:33|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| ZeroMask) o_4@@17 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@2) o_4@@17 f_5@@11))
))) (forall ((o_4@@18 T@Ref) (f_5@@12 T@Field_6867_29502) ) (!  (=> true (= (select (|PolymorphicMapType_10003_6867_29502#PolymorphicMapType_10003| ZeroMask) o_4@@18 f_5@@12) (select (|PolymorphicMapType_10003_6867_29502#PolymorphicMapType_10003| QPMask@2) o_4@@18 f_5@@12)))
 :qid |stdinbpl.699:33|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_10003_6867_29502#PolymorphicMapType_10003| ZeroMask) o_4@@18 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_10003_6867_29502#PolymorphicMapType_10003| QPMask@2) o_4@@18 f_5@@12))
))) (forall ((o_4@@19 T@Ref) (f_5@@13 T@Field_6867_29635) ) (!  (=> true (= (select (|PolymorphicMapType_10003_6867_33757#PolymorphicMapType_10003| ZeroMask) o_4@@19 f_5@@13) (select (|PolymorphicMapType_10003_6867_33757#PolymorphicMapType_10003| QPMask@2) o_4@@19 f_5@@13)))
 :qid |stdinbpl.699:33|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_10003_6867_33757#PolymorphicMapType_10003| ZeroMask) o_4@@19 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_10003_6867_33757#PolymorphicMapType_10003| QPMask@2) o_4@@19 f_5@@13))
))) (and (and (state ExhaleHeap@0 QPMask@2) (<= 0 white@0)) (and (<= white@0 unsorted@0) (<= unsorted@0 blue@1)))) (and (and (and (<= blue@1 (length_1 a_2@@1)) (forall ((i_24_1 Int) ) (!  (=> (and (<= 0 i_24_1) (< i_24_1 (length_1 a_2@@1))) (or (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| ExhaleHeap@0) (loc a_2@@1 i_24_1) val) 0) (or (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| ExhaleHeap@0) (loc a_2@@1 i_24_1) val) 1) (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| ExhaleHeap@0) (loc a_2@@1 i_24_1) val) 2))))
 :qid |stdinbpl.709:24|
 :skolemid |64|
 :pattern ( (loc a_2@@1 i_24_1))
))) (and (forall ((i_25 Int) ) (!  (=> (and (<= 0 i_25) (< i_25 white@0)) (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| ExhaleHeap@0) (loc a_2@@1 i_25) val) 0))
 :qid |stdinbpl.713:24|
 :skolemid |65|
 :pattern ( (loc a_2@@1 i_25))
)) (forall ((i_26 Int) ) (!  (=> (and (<= white@0 i_26) (< i_26 unsorted@0)) (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| ExhaleHeap@0) (loc a_2@@1 i_26) val) 1))
 :qid |stdinbpl.717:24|
 :skolemid |66|
 :pattern ( (loc a_2@@1 i_26))
)))) (and (and (forall ((i_27 Int) ) (!  (=> (and (<= blue@1 i_27) (< i_27 (length_1 a_2@@1))) (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| ExhaleHeap@0) (loc a_2@@1 i_27) val) 2))
 :qid |stdinbpl.721:24|
 :skolemid |67|
 :pattern ( (loc a_2@@1 i_27))
)) (state ExhaleHeap@0 QPMask@2)) (and (< unsorted@0 blue@1) (state ExhaleHeap@0 QPMask@2))))) (and (=> (= (ControlFlow 0 104) (- 0 105)) (HasDirectPerm_6867_1473 QPMask@2 (loc a_2@@1 unsorted@0) val)) (=> (HasDirectPerm_6867_1473 QPMask@2 (loc a_2@@1 unsorted@0) val) (=> (and (= tmp@0 (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| ExhaleHeap@0) (loc a_2@@1 unsorted@0) val)) (state ExhaleHeap@0 QPMask@2)) (and (=> (= (ControlFlow 0 104) 93) anon113_Then_correct) (=> (= (ControlFlow 0 104) 103) anon113_Else_correct))))))))))))
(let ((anon81_correct true))
(let ((anon124_Else_correct  (=> (and (not (and (<= 0 i_6_1) (and (< i_6_1 j_2_1) (< j_2_1 (length_1 a_2@@1))))) (= (ControlFlow 0 61) 58)) anon81_correct)))
(let ((anon124_Then_correct  (=> (and (<= 0 i_6_1) (and (< i_6_1 j_2_1) (< j_2_1 (length_1 a_2@@1)))) (and (=> (= (ControlFlow 0 59) (- 0 60)) (<= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| ExhaleHeap@0) (loc a_2@@1 i_6_1) val) (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| ExhaleHeap@0) (loc a_2@@1 j_2_1) val))) (=> (<= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| ExhaleHeap@0) (loc a_2@@1 i_6_1) val) (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| ExhaleHeap@0) (loc a_2@@1 j_2_1) val)) (=> (= (ControlFlow 0 59) 58) anon81_correct))))))
(let ((anon123_Else_correct true))
(let ((anon112_Else_correct  (=> (and (not (< unsorted@0 blue@1)) (state ExhaleHeap@0 QPMask@1)) (and (=> (= (ControlFlow 0 62) (- 0 65)) (forall ((i$1_5 Int) (i$1_5_1 Int) ) (!  (=> (and (and (and (and (not (= i$1_5 i$1_5_1)) (and (<= 0 i$1_5) (< i$1_5 (length_1 a_2@@1)))) (and (<= 0 i$1_5_1) (< i$1_5_1 (length_1 a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i$1_5) (loc a_2@@1 i$1_5_1))))
 :qid |stdinbpl.908:17|
 :skolemid |78|
))) (=> (forall ((i$1_5@@0 Int) (i$1_5_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i$1_5@@0 i$1_5_1@@0)) (and (<= 0 i$1_5@@0) (< i$1_5@@0 (length_1 a_2@@1)))) (and (<= 0 i$1_5_1@@0) (< i$1_5_1@@0 (length_1 a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i$1_5@@0) (loc a_2@@1 i$1_5_1@@0))))
 :qid |stdinbpl.908:17|
 :skolemid |78|
)) (=> (and (and (forall ((i$1_5@@1 Int) ) (!  (=> (and (and (<= 0 i$1_5@@1) (< i$1_5@@1 (length_1 a_2@@1))) (< NoPerm FullPerm)) (and (qpRange8 (loc a_2@@1 i$1_5@@1)) (= (invRecv8 (loc a_2@@1 i$1_5@@1)) i$1_5@@1)))
 :qid |stdinbpl.914:24|
 :skolemid |79|
 :pattern ( (loc a_2@@1 i$1_5@@1))
 :pattern ( (loc a_2@@1 i$1_5@@1))
)) (forall ((o_4@@20 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv8 o_4@@20)) (< (invRecv8 o_4@@20) (length_1 a_2@@1))) (< NoPerm FullPerm)) (qpRange8 o_4@@20)) (= (loc a_2@@1 (invRecv8 o_4@@20)) o_4@@20))
 :qid |stdinbpl.918:24|
 :skolemid |80|
 :pattern ( (invRecv8 o_4@@20))
))) (and (forall ((i$1_5@@2 Int) ) (!  (=> (and (<= 0 i$1_5@@2) (< i$1_5@@2 (length_1 a_2@@1))) (not (= (loc a_2@@1 i$1_5@@2) null)))
 :qid |stdinbpl.924:24|
 :skolemid |81|
 :pattern ( (loc a_2@@1 i$1_5@@2))
 :pattern ( (loc a_2@@1 i$1_5@@2))
)) (forall ((o_4@@21 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv8 o_4@@21)) (< (invRecv8 o_4@@21) (length_1 a_2@@1))) (< NoPerm FullPerm)) (qpRange8 o_4@@21)) (and (=> (< NoPerm FullPerm) (= (loc a_2@@1 (invRecv8 o_4@@21)) o_4@@21)) (= (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@3) o_4@@21 val) (+ (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@1) o_4@@21 val) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv8 o_4@@21)) (< (invRecv8 o_4@@21) (length_1 a_2@@1))) (< NoPerm FullPerm)) (qpRange8 o_4@@21))) (= (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@3) o_4@@21 val) (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@1) o_4@@21 val))))
 :qid |stdinbpl.930:24|
 :skolemid |82|
 :pattern ( (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@3) o_4@@21 val))
)))) (=> (and (and (and (and (and (and (and (forall ((o_4@@22 T@Ref) (f_5@@14 T@Field_10042_53) ) (!  (=> true (= (select (|PolymorphicMapType_10003_6867_53#PolymorphicMapType_10003| QPMask@1) o_4@@22 f_5@@14) (select (|PolymorphicMapType_10003_6867_53#PolymorphicMapType_10003| QPMask@3) o_4@@22 f_5@@14)))
 :qid |stdinbpl.934:31|
 :skolemid |83|
 :pattern ( (select (|PolymorphicMapType_10003_6867_53#PolymorphicMapType_10003| QPMask@1) o_4@@22 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_10003_6867_53#PolymorphicMapType_10003| QPMask@3) o_4@@22 f_5@@14))
)) (forall ((o_4@@23 T@Ref) (f_5@@15 T@Field_10055_10056) ) (!  (=> true (= (select (|PolymorphicMapType_10003_6867_10056#PolymorphicMapType_10003| QPMask@1) o_4@@23 f_5@@15) (select (|PolymorphicMapType_10003_6867_10056#PolymorphicMapType_10003| QPMask@3) o_4@@23 f_5@@15)))
 :qid |stdinbpl.934:31|
 :skolemid |83|
 :pattern ( (select (|PolymorphicMapType_10003_6867_10056#PolymorphicMapType_10003| QPMask@1) o_4@@23 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_10003_6867_10056#PolymorphicMapType_10003| QPMask@3) o_4@@23 f_5@@15))
))) (forall ((o_4@@24 T@Ref) (f_5@@16 T@Field_13493_1473) ) (!  (=> (not (= f_5@@16 val)) (= (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@1) o_4@@24 f_5@@16) (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@3) o_4@@24 f_5@@16)))
 :qid |stdinbpl.934:31|
 :skolemid |83|
 :pattern ( (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@1) o_4@@24 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@3) o_4@@24 f_5@@16))
))) (forall ((o_4@@25 T@Ref) (f_5@@17 T@Field_6867_29502) ) (!  (=> true (= (select (|PolymorphicMapType_10003_6867_29502#PolymorphicMapType_10003| QPMask@1) o_4@@25 f_5@@17) (select (|PolymorphicMapType_10003_6867_29502#PolymorphicMapType_10003| QPMask@3) o_4@@25 f_5@@17)))
 :qid |stdinbpl.934:31|
 :skolemid |83|
 :pattern ( (select (|PolymorphicMapType_10003_6867_29502#PolymorphicMapType_10003| QPMask@1) o_4@@25 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_10003_6867_29502#PolymorphicMapType_10003| QPMask@3) o_4@@25 f_5@@17))
))) (forall ((o_4@@26 T@Ref) (f_5@@18 T@Field_6867_29635) ) (!  (=> true (= (select (|PolymorphicMapType_10003_6867_33757#PolymorphicMapType_10003| QPMask@1) o_4@@26 f_5@@18) (select (|PolymorphicMapType_10003_6867_33757#PolymorphicMapType_10003| QPMask@3) o_4@@26 f_5@@18)))
 :qid |stdinbpl.934:31|
 :skolemid |83|
 :pattern ( (select (|PolymorphicMapType_10003_6867_33757#PolymorphicMapType_10003| QPMask@1) o_4@@26 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_10003_6867_33757#PolymorphicMapType_10003| QPMask@3) o_4@@26 f_5@@18))
))) (state ExhaleHeap@0 QPMask@3)) (and (<= 0 white@0) (<= white@0 unsorted@0))) (and (and (and (<= unsorted@0 blue@1) (<= blue@1 (length_1 a_2@@1))) (and (forall ((i_36_2 Int) ) (!  (=> (and (<= 0 i_36_2) (< i_36_2 (length_1 a_2@@1))) (or (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| ExhaleHeap@0) (loc a_2@@1 i_36_2) val) 0) (or (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| ExhaleHeap@0) (loc a_2@@1 i_36_2) val) 1) (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| ExhaleHeap@0) (loc a_2@@1 i_36_2) val) 2))))
 :qid |stdinbpl.944:22|
 :skolemid |84|
 :pattern ( (loc a_2@@1 i_36_2))
)) (forall ((i_37 Int) ) (!  (=> (and (<= 0 i_37) (< i_37 white@0)) (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| ExhaleHeap@0) (loc a_2@@1 i_37) val) 0))
 :qid |stdinbpl.948:22|
 :skolemid |85|
 :pattern ( (loc a_2@@1 i_37))
)))) (and (and (forall ((i_38 Int) ) (!  (=> (and (<= white@0 i_38) (< i_38 unsorted@0)) (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| ExhaleHeap@0) (loc a_2@@1 i_38) val) 1))
 :qid |stdinbpl.952:22|
 :skolemid |86|
 :pattern ( (loc a_2@@1 i_38))
)) (forall ((i_39 Int) ) (!  (=> (and (<= blue@1 i_39) (< i_39 (length_1 a_2@@1))) (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| ExhaleHeap@0) (loc a_2@@1 i_39) val) 2))
 :qid |stdinbpl.956:22|
 :skolemid |87|
 :pattern ( (loc a_2@@1 i_39))
))) (and (state ExhaleHeap@0 QPMask@3) (state ExhaleHeap@0 QPMask@3))))) (and (=> (= (ControlFlow 0 62) (- 0 64)) (forall ((i$0_2 Int) (i$0_2_1 Int) ) (!  (=> (and (and (and (and (not (= i$0_2 i$0_2_1)) (and (<= 0 i$0_2) (< i$0_2 (length_1 a_2@@1)))) (and (<= 0 i$0_2_1) (< i$0_2_1 (length_1 a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i$0_2) (loc a_2@@1 i$0_2_1))))
 :qid |stdinbpl.973:17|
 :skolemid |88|
 :pattern ( (neverTriggered3 i$0_2) (neverTriggered3 i$0_2_1))
))) (=> (forall ((i$0_2@@0 Int) (i$0_2_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i$0_2@@0 i$0_2_1@@0)) (and (<= 0 i$0_2@@0) (< i$0_2@@0 (length_1 a_2@@1)))) (and (<= 0 i$0_2_1@@0) (< i$0_2_1@@0 (length_1 a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i$0_2@@0) (loc a_2@@1 i$0_2_1@@0))))
 :qid |stdinbpl.973:17|
 :skolemid |88|
 :pattern ( (neverTriggered3 i$0_2@@0) (neverTriggered3 i$0_2_1@@0))
)) (and (=> (= (ControlFlow 0 62) (- 0 63)) (forall ((i$0_2@@1 Int) ) (!  (=> (and (<= 0 i$0_2@@1) (< i$0_2@@1 (length_1 a_2@@1))) (>= (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@3) (loc a_2@@1 i$0_2@@1) val) FullPerm))
 :qid |stdinbpl.980:17|
 :skolemid |89|
 :pattern ( (loc a_2@@1 i$0_2@@1))
 :pattern ( (loc a_2@@1 i$0_2@@1))
))) (=> (forall ((i$0_2@@2 Int) ) (!  (=> (and (<= 0 i$0_2@@2) (< i$0_2@@2 (length_1 a_2@@1))) (>= (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@3) (loc a_2@@1 i$0_2@@2) val) FullPerm))
 :qid |stdinbpl.980:17|
 :skolemid |89|
 :pattern ( (loc a_2@@1 i$0_2@@2))
 :pattern ( (loc a_2@@1 i$0_2@@2))
)) (=> (forall ((i$0_2@@3 Int) ) (!  (=> (and (and (<= 0 i$0_2@@3) (< i$0_2@@3 (length_1 a_2@@1))) (< NoPerm FullPerm)) (and (qpRange3 (loc a_2@@1 i$0_2@@3)) (= (invRecv3 (loc a_2@@1 i$0_2@@3)) i$0_2@@3)))
 :qid |stdinbpl.986:22|
 :skolemid |90|
 :pattern ( (loc a_2@@1 i$0_2@@3))
 :pattern ( (loc a_2@@1 i$0_2@@3))
)) (=> (and (forall ((o_4@@27 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv3 o_4@@27)) (< (invRecv3 o_4@@27) (length_1 a_2@@1))) (and (< NoPerm FullPerm) (qpRange3 o_4@@27))) (= (loc a_2@@1 (invRecv3 o_4@@27)) o_4@@27))
 :qid |stdinbpl.990:22|
 :skolemid |91|
 :pattern ( (invRecv3 o_4@@27))
)) (forall ((o_4@@28 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv3 o_4@@28)) (< (invRecv3 o_4@@28) (length_1 a_2@@1))) (and (< NoPerm FullPerm) (qpRange3 o_4@@28))) (and (= (loc a_2@@1 (invRecv3 o_4@@28)) o_4@@28) (= (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@4) o_4@@28 val) (- (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@3) o_4@@28 val) FullPerm)))) (=> (not (and (and (<= 0 (invRecv3 o_4@@28)) (< (invRecv3 o_4@@28) (length_1 a_2@@1))) (and (< NoPerm FullPerm) (qpRange3 o_4@@28)))) (= (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@4) o_4@@28 val) (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@3) o_4@@28 val))))
 :qid |stdinbpl.996:22|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@4) o_4@@28 val))
))) (=> (and (and (and (and (forall ((o_4@@29 T@Ref) (f_5@@19 T@Field_10042_53) ) (!  (=> true (= (select (|PolymorphicMapType_10003_6867_53#PolymorphicMapType_10003| QPMask@3) o_4@@29 f_5@@19) (select (|PolymorphicMapType_10003_6867_53#PolymorphicMapType_10003| QPMask@4) o_4@@29 f_5@@19)))
 :qid |stdinbpl.1002:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_10003_6867_53#PolymorphicMapType_10003| QPMask@4) o_4@@29 f_5@@19))
)) (forall ((o_4@@30 T@Ref) (f_5@@20 T@Field_10055_10056) ) (!  (=> true (= (select (|PolymorphicMapType_10003_6867_10056#PolymorphicMapType_10003| QPMask@3) o_4@@30 f_5@@20) (select (|PolymorphicMapType_10003_6867_10056#PolymorphicMapType_10003| QPMask@4) o_4@@30 f_5@@20)))
 :qid |stdinbpl.1002:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_10003_6867_10056#PolymorphicMapType_10003| QPMask@4) o_4@@30 f_5@@20))
))) (forall ((o_4@@31 T@Ref) (f_5@@21 T@Field_13493_1473) ) (!  (=> (not (= f_5@@21 val)) (= (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@3) o_4@@31 f_5@@21) (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@4) o_4@@31 f_5@@21)))
 :qid |stdinbpl.1002:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@4) o_4@@31 f_5@@21))
))) (forall ((o_4@@32 T@Ref) (f_5@@22 T@Field_6867_29502) ) (!  (=> true (= (select (|PolymorphicMapType_10003_6867_29502#PolymorphicMapType_10003| QPMask@3) o_4@@32 f_5@@22) (select (|PolymorphicMapType_10003_6867_29502#PolymorphicMapType_10003| QPMask@4) o_4@@32 f_5@@22)))
 :qid |stdinbpl.1002:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_10003_6867_29502#PolymorphicMapType_10003| QPMask@4) o_4@@32 f_5@@22))
))) (forall ((o_4@@33 T@Ref) (f_5@@23 T@Field_6867_29635) ) (!  (=> true (= (select (|PolymorphicMapType_10003_6867_33757#PolymorphicMapType_10003| QPMask@3) o_4@@33 f_5@@23) (select (|PolymorphicMapType_10003_6867_33757#PolymorphicMapType_10003| QPMask@4) o_4@@33 f_5@@23)))
 :qid |stdinbpl.1002:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_10003_6867_33757#PolymorphicMapType_10003| QPMask@4) o_4@@33 f_5@@23))
))) (and (and (=> (= (ControlFlow 0 62) 57) anon123_Else_correct) (=> (= (ControlFlow 0 62) 59) anon124_Then_correct)) (=> (= (ControlFlow 0 62) 61) anon124_Else_correct))))))))))))))))
(let ((anon52_correct true))
(let ((anon111_Else_correct  (=> (and (not (and (<= blue@1 i_11) (< i_11 (length_1 a_2@@1)))) (= (ControlFlow 0 51) 48)) anon52_correct)))
(let ((anon111_Then_correct  (=> (and (<= blue@1 i_11) (< i_11 (length_1 a_2@@1))) (and (=> (= (ControlFlow 0 49) (- 0 50)) (HasDirectPerm_6867_1473 QPMask@6 (loc a_2@@1 i_11) val)) (=> (HasDirectPerm_6867_1473 QPMask@6 (loc a_2@@1 i_11) val) (=> (= (ControlFlow 0 49) 48) anon52_correct))))))
(let ((anon110_Else_correct true))
(let ((anon108_Else_correct  (=> (and (forall ((i_21 Int) ) (!  (=> (and (<= white@0 i_21) (< i_21 unsorted@0)) (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| ExhaleHeap@0) (loc a_2@@1 i_21) val) 1))
 :qid |stdinbpl.641:24|
 :skolemid |56|
 :pattern ( (loc a_2@@1 i_21))
)) (state ExhaleHeap@0 QPMask@6)) (and (and (=> (= (ControlFlow 0 52) 47) anon110_Else_correct) (=> (= (ControlFlow 0 52) 49) anon111_Then_correct)) (=> (= (ControlFlow 0 52) 51) anon111_Else_correct)))))
(let ((anon48_correct true))
(let ((anon109_Else_correct  (=> (and (not (and (<= white@0 i_10) (< i_10 unsorted@0))) (= (ControlFlow 0 46) 43)) anon48_correct)))
(let ((anon109_Then_correct  (=> (and (<= white@0 i_10) (< i_10 unsorted@0)) (and (=> (= (ControlFlow 0 44) (- 0 45)) (HasDirectPerm_6867_1473 QPMask@6 (loc a_2@@1 i_10) val)) (=> (HasDirectPerm_6867_1473 QPMask@6 (loc a_2@@1 i_10) val) (=> (= (ControlFlow 0 44) 43) anon48_correct))))))
(let ((anon106_Else_correct  (=> (and (forall ((i_19 Int) ) (!  (=> (and (<= 0 i_19) (< i_19 white@0)) (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| ExhaleHeap@0) (loc a_2@@1 i_19) val) 0))
 :qid |stdinbpl.627:24|
 :skolemid |55|
 :pattern ( (loc a_2@@1 i_19))
)) (state ExhaleHeap@0 QPMask@6)) (and (and (=> (= (ControlFlow 0 53) 52) anon108_Else_correct) (=> (= (ControlFlow 0 53) 44) anon109_Then_correct)) (=> (= (ControlFlow 0 53) 46) anon109_Else_correct)))))
(let ((anon44_correct true))
(let ((anon107_Else_correct  (=> (and (not (and (<= 0 i_9) (< i_9 white@0))) (= (ControlFlow 0 42) 39)) anon44_correct)))
(let ((anon107_Then_correct  (=> (and (<= 0 i_9) (< i_9 white@0)) (and (=> (= (ControlFlow 0 40) (- 0 41)) (HasDirectPerm_6867_1473 QPMask@6 (loc a_2@@1 i_9) val)) (=> (HasDirectPerm_6867_1473 QPMask@6 (loc a_2@@1 i_9) val) (=> (= (ControlFlow 0 40) 39) anon44_correct))))))
(let ((anon102_Else_correct  (=> (and (forall ((i_17 Int) ) (!  (=> (and (<= 0 i_17) (< i_17 (length_1 a_2@@1))) (or (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| ExhaleHeap@0) (loc a_2@@1 i_17) val) 0) (or (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| ExhaleHeap@0) (loc a_2@@1 i_17) val) 1) (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| ExhaleHeap@0) (loc a_2@@1 i_17) val) 2))))
 :qid |stdinbpl.613:24|
 :skolemid |54|
 :pattern ( (loc a_2@@1 i_17))
)) (state ExhaleHeap@0 QPMask@6)) (and (and (=> (= (ControlFlow 0 54) 53) anon106_Else_correct) (=> (= (ControlFlow 0 54) 40) anon107_Then_correct)) (=> (= (ControlFlow 0 54) 42) anon107_Else_correct)))))
(let ((anon40_correct true))
(let ((anon105_Else_correct  (=> (and (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| ExhaleHeap@0) (loc a_2@@1 i_8) val) 1) (= (ControlFlow 0 34) 29)) anon40_correct)))
(let ((anon105_Then_correct  (=> (not (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| ExhaleHeap@0) (loc a_2@@1 i_8) val) 1)) (and (=> (= (ControlFlow 0 32) (- 0 33)) (HasDirectPerm_6867_1473 QPMask@6 (loc a_2@@1 i_8) val)) (=> (HasDirectPerm_6867_1473 QPMask@6 (loc a_2@@1 i_8) val) (=> (= (ControlFlow 0 32) 29) anon40_correct))))))
(let ((anon104_Then_correct  (=> (not (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| ExhaleHeap@0) (loc a_2@@1 i_8) val) 0)) (and (=> (= (ControlFlow 0 35) (- 0 36)) (HasDirectPerm_6867_1473 QPMask@6 (loc a_2@@1 i_8) val)) (=> (HasDirectPerm_6867_1473 QPMask@6 (loc a_2@@1 i_8) val) (and (=> (= (ControlFlow 0 35) 32) anon105_Then_correct) (=> (= (ControlFlow 0 35) 34) anon105_Else_correct)))))))
(let ((anon104_Else_correct  (=> (and (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| ExhaleHeap@0) (loc a_2@@1 i_8) val) 0) (= (ControlFlow 0 31) 29)) anon40_correct)))
(let ((anon103_Then_correct  (=> (and (<= 0 i_8) (< i_8 (length_1 a_2@@1))) (and (=> (= (ControlFlow 0 37) (- 0 38)) (HasDirectPerm_6867_1473 QPMask@6 (loc a_2@@1 i_8) val)) (=> (HasDirectPerm_6867_1473 QPMask@6 (loc a_2@@1 i_8) val) (and (=> (= (ControlFlow 0 37) 35) anon104_Then_correct) (=> (= (ControlFlow 0 37) 31) anon104_Else_correct)))))))
(let ((anon103_Else_correct  (=> (and (not (and (<= 0 i_8) (< i_8 (length_1 a_2@@1)))) (= (ControlFlow 0 30) 29)) anon40_correct)))
(let ((anon101_Else_correct  (and (=> (= (ControlFlow 0 55) (- 0 56)) (forall ((i$1_2 Int) (i$1_2_1 Int) ) (!  (=> (and (and (and (and (not (= i$1_2 i$1_2_1)) (and (<= 0 i$1_2) (< i$1_2 (length_1 a_2@@1)))) (and (<= 0 i$1_2_1) (< i$1_2_1 (length_1 a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i$1_2) (loc a_2@@1 i$1_2_1))))
 :qid |stdinbpl.558:19|
 :skolemid |48|
))) (=> (forall ((i$1_2@@0 Int) (i$1_2_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i$1_2@@0 i$1_2_1@@0)) (and (<= 0 i$1_2@@0) (< i$1_2@@0 (length_1 a_2@@1)))) (and (<= 0 i$1_2_1@@0) (< i$1_2_1@@0 (length_1 a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i$1_2@@0) (loc a_2@@1 i$1_2_1@@0))))
 :qid |stdinbpl.558:19|
 :skolemid |48|
)) (=> (and (and (forall ((i$1_2@@1 Int) ) (!  (=> (and (and (<= 0 i$1_2@@1) (< i$1_2@@1 (length_1 a_2@@1))) (< NoPerm FullPerm)) (and (qpRange5 (loc a_2@@1 i$1_2@@1)) (= (invRecv5 (loc a_2@@1 i$1_2@@1)) i$1_2@@1)))
 :qid |stdinbpl.564:26|
 :skolemid |49|
 :pattern ( (loc a_2@@1 i$1_2@@1))
 :pattern ( (loc a_2@@1 i$1_2@@1))
)) (forall ((o_4@@34 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv5 o_4@@34)) (< (invRecv5 o_4@@34) (length_1 a_2@@1))) (< NoPerm FullPerm)) (qpRange5 o_4@@34)) (= (loc a_2@@1 (invRecv5 o_4@@34)) o_4@@34))
 :qid |stdinbpl.568:26|
 :skolemid |50|
 :pattern ( (invRecv5 o_4@@34))
))) (and (forall ((i$1_2@@2 Int) ) (!  (=> (and (<= 0 i$1_2@@2) (< i$1_2@@2 (length_1 a_2@@1))) (not (= (loc a_2@@1 i$1_2@@2) null)))
 :qid |stdinbpl.574:26|
 :skolemid |51|
 :pattern ( (loc a_2@@1 i$1_2@@2))
 :pattern ( (loc a_2@@1 i$1_2@@2))
)) (forall ((o_4@@35 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv5 o_4@@35)) (< (invRecv5 o_4@@35) (length_1 a_2@@1))) (< NoPerm FullPerm)) (qpRange5 o_4@@35)) (and (=> (< NoPerm FullPerm) (= (loc a_2@@1 (invRecv5 o_4@@35)) o_4@@35)) (= (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@6) o_4@@35 val) (+ (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@1) o_4@@35 val) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv5 o_4@@35)) (< (invRecv5 o_4@@35) (length_1 a_2@@1))) (< NoPerm FullPerm)) (qpRange5 o_4@@35))) (= (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@6) o_4@@35 val) (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@1) o_4@@35 val))))
 :qid |stdinbpl.580:26|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@6) o_4@@35 val))
)))) (=> (and (and (and (and (and (and (and (forall ((o_4@@36 T@Ref) (f_5@@24 T@Field_10042_53) ) (!  (=> true (= (select (|PolymorphicMapType_10003_6867_53#PolymorphicMapType_10003| QPMask@1) o_4@@36 f_5@@24) (select (|PolymorphicMapType_10003_6867_53#PolymorphicMapType_10003| QPMask@6) o_4@@36 f_5@@24)))
 :qid |stdinbpl.584:33|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_10003_6867_53#PolymorphicMapType_10003| QPMask@1) o_4@@36 f_5@@24))
 :pattern ( (select (|PolymorphicMapType_10003_6867_53#PolymorphicMapType_10003| QPMask@6) o_4@@36 f_5@@24))
)) (forall ((o_4@@37 T@Ref) (f_5@@25 T@Field_10055_10056) ) (!  (=> true (= (select (|PolymorphicMapType_10003_6867_10056#PolymorphicMapType_10003| QPMask@1) o_4@@37 f_5@@25) (select (|PolymorphicMapType_10003_6867_10056#PolymorphicMapType_10003| QPMask@6) o_4@@37 f_5@@25)))
 :qid |stdinbpl.584:33|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_10003_6867_10056#PolymorphicMapType_10003| QPMask@1) o_4@@37 f_5@@25))
 :pattern ( (select (|PolymorphicMapType_10003_6867_10056#PolymorphicMapType_10003| QPMask@6) o_4@@37 f_5@@25))
))) (forall ((o_4@@38 T@Ref) (f_5@@26 T@Field_13493_1473) ) (!  (=> (not (= f_5@@26 val)) (= (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@1) o_4@@38 f_5@@26) (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@6) o_4@@38 f_5@@26)))
 :qid |stdinbpl.584:33|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@1) o_4@@38 f_5@@26))
 :pattern ( (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@6) o_4@@38 f_5@@26))
))) (forall ((o_4@@39 T@Ref) (f_5@@27 T@Field_6867_29502) ) (!  (=> true (= (select (|PolymorphicMapType_10003_6867_29502#PolymorphicMapType_10003| QPMask@1) o_4@@39 f_5@@27) (select (|PolymorphicMapType_10003_6867_29502#PolymorphicMapType_10003| QPMask@6) o_4@@39 f_5@@27)))
 :qid |stdinbpl.584:33|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_10003_6867_29502#PolymorphicMapType_10003| QPMask@1) o_4@@39 f_5@@27))
 :pattern ( (select (|PolymorphicMapType_10003_6867_29502#PolymorphicMapType_10003| QPMask@6) o_4@@39 f_5@@27))
))) (forall ((o_4@@40 T@Ref) (f_5@@28 T@Field_6867_29635) ) (!  (=> true (= (select (|PolymorphicMapType_10003_6867_33757#PolymorphicMapType_10003| QPMask@1) o_4@@40 f_5@@28) (select (|PolymorphicMapType_10003_6867_33757#PolymorphicMapType_10003| QPMask@6) o_4@@40 f_5@@28)))
 :qid |stdinbpl.584:33|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_10003_6867_33757#PolymorphicMapType_10003| QPMask@1) o_4@@40 f_5@@28))
 :pattern ( (select (|PolymorphicMapType_10003_6867_33757#PolymorphicMapType_10003| QPMask@6) o_4@@40 f_5@@28))
))) (state ExhaleHeap@0 QPMask@6)) (and (state ExhaleHeap@0 QPMask@6) (<= 0 white@0))) (and (and (<= white@0 unsorted@0) (<= unsorted@0 blue@1)) (and (<= blue@1 (length_1 a_2@@1)) (state ExhaleHeap@0 QPMask@6)))) (and (and (=> (= (ControlFlow 0 55) 54) anon102_Else_correct) (=> (= (ControlFlow 0 55) 37) anon103_Then_correct)) (=> (= (ControlFlow 0 55) 30) anon103_Else_correct))))))))
(let ((anon101_Then_correct true))
(let ((anon98_Else_correct  (=> (and (forall ((i_15_1_1 Int) ) (!  (=> (and (<= blue@0 i_15_1_1) (< i_15_1_1 (length_1 a_2@@1))) (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| Heap@@17) (loc a_2@@1 i_15_1_1) val) 2))
 :qid |stdinbpl.537:24|
 :skolemid |47|
 :pattern ( (loc a_2@@1 i_15_1_1))
)) (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@0 QPMask@1)) (and (and (and (=> (= (ControlFlow 0 107) 104) anon112_Then_correct) (=> (= (ControlFlow 0 107) 62) anon112_Else_correct)) (=> (= (ControlFlow 0 107) 28) anon101_Then_correct)) (=> (= (ControlFlow 0 107) 55) anon101_Else_correct)))))
(let ((anon31_correct true))
(let ((anon99_Else_correct  (=> (and (not (and (<= blue@0 i_14_1) (< i_14_1 (length_1 a_2@@1)))) (= (ControlFlow 0 27) 24)) anon31_correct)))
(let ((anon99_Then_correct  (=> (and (<= blue@0 i_14_1) (< i_14_1 (length_1 a_2@@1))) (and (=> (= (ControlFlow 0 25) (- 0 26)) (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| Heap@@17) (loc a_2@@1 i_14_1) val) 2)) (=> (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| Heap@@17) (loc a_2@@1 i_14_1) val) 2) (=> (= (ControlFlow 0 25) 24) anon31_correct))))))
(let ((anon96_Else_correct  (=> (forall ((i_13_1_1 Int) ) (!  (=> (and (<= 0 i_13_1_1) (< i_13_1_1 0)) (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| Heap@@17) (loc a_2@@1 i_13_1_1) val) 1))
 :qid |stdinbpl.526:24|
 :skolemid |46|
 :pattern ( (loc a_2@@1 i_13_1_1))
)) (and (and (=> (= (ControlFlow 0 108) 107) anon98_Else_correct) (=> (= (ControlFlow 0 108) 25) anon99_Then_correct)) (=> (= (ControlFlow 0 108) 27) anon99_Else_correct)))))
(let ((anon27_correct true))
(let ((anon97_Else_correct  (=> (and (not (and (<= 0 i_12_1) (< i_12_1 0))) (= (ControlFlow 0 23) 20)) anon27_correct)))
(let ((anon97_Then_correct  (=> (and (<= 0 i_12_1) (< i_12_1 0)) (and (=> (= (ControlFlow 0 21) (- 0 22)) (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| Heap@@17) (loc a_2@@1 i_12_1) val) 1)) (=> (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| Heap@@17) (loc a_2@@1 i_12_1) val) 1) (=> (= (ControlFlow 0 21) 20) anon27_correct))))))
(let ((anon94_Else_correct  (=> (forall ((i_11_1_1 Int) ) (!  (=> (and (<= 0 i_11_1_1) (< i_11_1_1 0)) (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| Heap@@17) (loc a_2@@1 i_11_1_1) val) 0))
 :qid |stdinbpl.515:24|
 :skolemid |45|
 :pattern ( (loc a_2@@1 i_11_1_1))
)) (and (and (=> (= (ControlFlow 0 109) 108) anon96_Else_correct) (=> (= (ControlFlow 0 109) 21) anon97_Then_correct)) (=> (= (ControlFlow 0 109) 23) anon97_Else_correct)))))
(let ((anon23_correct true))
(let ((anon95_Else_correct  (=> (and (not (and (<= 0 i_10_1) (< i_10_1 0))) (= (ControlFlow 0 19) 16)) anon23_correct)))
(let ((anon95_Then_correct  (=> (and (<= 0 i_10_1) (< i_10_1 0)) (and (=> (= (ControlFlow 0 17) (- 0 18)) (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| Heap@@17) (loc a_2@@1 i_10_1) val) 0)) (=> (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| Heap@@17) (loc a_2@@1 i_10_1) val) 0) (=> (= (ControlFlow 0 17) 16) anon23_correct))))))
(let ((anon92_Else_correct  (=> (forall ((i_9_1_1 Int) ) (!  (=> (and (<= 0 i_9_1_1) (< i_9_1_1 (length_1 a_2@@1))) (or (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| Heap@@17) (loc a_2@@1 i_9_1_1) val) 0) (or (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| Heap@@17) (loc a_2@@1 i_9_1_1) val) 1) (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| Heap@@17) (loc a_2@@1 i_9_1_1) val) 2))))
 :qid |stdinbpl.504:24|
 :skolemid |44|
 :pattern ( (loc a_2@@1 i_9_1_1))
)) (and (and (=> (= (ControlFlow 0 110) 109) anon94_Else_correct) (=> (= (ControlFlow 0 110) 17) anon95_Then_correct)) (=> (= (ControlFlow 0 110) 19) anon95_Else_correct)))))
(let ((anon19_correct true))
(let ((anon93_Else_correct  (=> (and (not (and (<= 0 i_8_2) (< i_8_2 (length_1 a_2@@1)))) (= (ControlFlow 0 15) 12)) anon19_correct)))
(let ((anon93_Then_correct  (=> (and (<= 0 i_8_2) (< i_8_2 (length_1 a_2@@1))) (and (=> (= (ControlFlow 0 13) (- 0 14)) (or (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| Heap@@17) (loc a_2@@1 i_8_2) val) 0) (or (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| Heap@@17) (loc a_2@@1 i_8_2) val) 1) (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| Heap@@17) (loc a_2@@1 i_8_2) val) 2)))) (=> (or (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| Heap@@17) (loc a_2@@1 i_8_2) val) 0) (or (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| Heap@@17) (loc a_2@@1 i_8_2) val) 1) (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| Heap@@17) (loc a_2@@1 i_8_2) val) 2))) (=> (= (ControlFlow 0 13) 12) anon19_correct))))))
(let ((anon88_Else_correct  (=> (and (and (state Heap@@17 QPMask@0) (state Heap@@17 QPMask@0)) (and (= blue@0 (length_1 a_2@@1)) (state Heap@@17 QPMask@0))) (and (=> (= (ControlFlow 0 111) (- 0 117)) (forall ((i$1 Int) (i$1_1 Int) ) (!  (=> (and (and (and (and (not (= i$1 i$1_1)) (and (<= 0 i$1) (< i$1 (length_1 a_2@@1)))) (and (<= 0 i$1_1) (< i$1_1 (length_1 a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i$1) (loc a_2@@1 i$1_1))))
 :qid |stdinbpl.455:21|
 :skolemid |38|
 :pattern ( (neverTriggered4 i$1) (neverTriggered4 i$1_1))
))) (=> (forall ((i$1@@0 Int) (i$1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i$1@@0 i$1_1@@0)) (and (<= 0 i$1@@0) (< i$1@@0 (length_1 a_2@@1)))) (and (<= 0 i$1_1@@0) (< i$1_1@@0 (length_1 a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i$1@@0) (loc a_2@@1 i$1_1@@0))))
 :qid |stdinbpl.455:21|
 :skolemid |38|
 :pattern ( (neverTriggered4 i$1@@0) (neverTriggered4 i$1_1@@0))
)) (and (=> (= (ControlFlow 0 111) (- 0 116)) (forall ((i$1@@1 Int) ) (!  (=> (and (<= 0 i$1@@1) (< i$1@@1 (length_1 a_2@@1))) (>= (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@0) (loc a_2@@1 i$1@@1) val) FullPerm))
 :qid |stdinbpl.462:21|
 :skolemid |39|
 :pattern ( (loc a_2@@1 i$1@@1))
 :pattern ( (loc a_2@@1 i$1@@1))
))) (=> (forall ((i$1@@2 Int) ) (!  (=> (and (<= 0 i$1@@2) (< i$1@@2 (length_1 a_2@@1))) (>= (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@0) (loc a_2@@1 i$1@@2) val) FullPerm))
 :qid |stdinbpl.462:21|
 :skolemid |39|
 :pattern ( (loc a_2@@1 i$1@@2))
 :pattern ( (loc a_2@@1 i$1@@2))
)) (=> (forall ((i$1@@3 Int) ) (!  (=> (and (and (<= 0 i$1@@3) (< i$1@@3 (length_1 a_2@@1))) (< NoPerm FullPerm)) (and (qpRange4 (loc a_2@@1 i$1@@3)) (= (invRecv4 (loc a_2@@1 i$1@@3)) i$1@@3)))
 :qid |stdinbpl.468:26|
 :skolemid |40|
 :pattern ( (loc a_2@@1 i$1@@3))
 :pattern ( (loc a_2@@1 i$1@@3))
)) (=> (and (forall ((o_4@@41 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv4 o_4@@41)) (< (invRecv4 o_4@@41) (length_1 a_2@@1))) (and (< NoPerm FullPerm) (qpRange4 o_4@@41))) (= (loc a_2@@1 (invRecv4 o_4@@41)) o_4@@41))
 :qid |stdinbpl.472:26|
 :skolemid |41|
 :pattern ( (invRecv4 o_4@@41))
)) (forall ((o_4@@42 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv4 o_4@@42)) (< (invRecv4 o_4@@42) (length_1 a_2@@1))) (and (< NoPerm FullPerm) (qpRange4 o_4@@42))) (and (= (loc a_2@@1 (invRecv4 o_4@@42)) o_4@@42) (= (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@1) o_4@@42 val) (- (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@0) o_4@@42 val) FullPerm)))) (=> (not (and (and (<= 0 (invRecv4 o_4@@42)) (< (invRecv4 o_4@@42) (length_1 a_2@@1))) (and (< NoPerm FullPerm) (qpRange4 o_4@@42)))) (= (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@1) o_4@@42 val) (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@0) o_4@@42 val))))
 :qid |stdinbpl.478:26|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@1) o_4@@42 val))
))) (=> (and (and (and (and (forall ((o_4@@43 T@Ref) (f_5@@29 T@Field_10042_53) ) (!  (=> true (= (select (|PolymorphicMapType_10003_6867_53#PolymorphicMapType_10003| QPMask@0) o_4@@43 f_5@@29) (select (|PolymorphicMapType_10003_6867_53#PolymorphicMapType_10003| QPMask@1) o_4@@43 f_5@@29)))
 :qid |stdinbpl.484:33|
 :skolemid |43|
 :pattern ( (select (|PolymorphicMapType_10003_6867_53#PolymorphicMapType_10003| QPMask@1) o_4@@43 f_5@@29))
)) (forall ((o_4@@44 T@Ref) (f_5@@30 T@Field_10055_10056) ) (!  (=> true (= (select (|PolymorphicMapType_10003_6867_10056#PolymorphicMapType_10003| QPMask@0) o_4@@44 f_5@@30) (select (|PolymorphicMapType_10003_6867_10056#PolymorphicMapType_10003| QPMask@1) o_4@@44 f_5@@30)))
 :qid |stdinbpl.484:33|
 :skolemid |43|
 :pattern ( (select (|PolymorphicMapType_10003_6867_10056#PolymorphicMapType_10003| QPMask@1) o_4@@44 f_5@@30))
))) (forall ((o_4@@45 T@Ref) (f_5@@31 T@Field_13493_1473) ) (!  (=> (not (= f_5@@31 val)) (= (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@0) o_4@@45 f_5@@31) (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@1) o_4@@45 f_5@@31)))
 :qid |stdinbpl.484:33|
 :skolemid |43|
 :pattern ( (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@1) o_4@@45 f_5@@31))
))) (forall ((o_4@@46 T@Ref) (f_5@@32 T@Field_6867_29502) ) (!  (=> true (= (select (|PolymorphicMapType_10003_6867_29502#PolymorphicMapType_10003| QPMask@0) o_4@@46 f_5@@32) (select (|PolymorphicMapType_10003_6867_29502#PolymorphicMapType_10003| QPMask@1) o_4@@46 f_5@@32)))
 :qid |stdinbpl.484:33|
 :skolemid |43|
 :pattern ( (select (|PolymorphicMapType_10003_6867_29502#PolymorphicMapType_10003| QPMask@1) o_4@@46 f_5@@32))
))) (forall ((o_4@@47 T@Ref) (f_5@@33 T@Field_6867_29635) ) (!  (=> true (= (select (|PolymorphicMapType_10003_6867_33757#PolymorphicMapType_10003| QPMask@0) o_4@@47 f_5@@33) (select (|PolymorphicMapType_10003_6867_33757#PolymorphicMapType_10003| QPMask@1) o_4@@47 f_5@@33)))
 :qid |stdinbpl.484:33|
 :skolemid |43|
 :pattern ( (select (|PolymorphicMapType_10003_6867_33757#PolymorphicMapType_10003| QPMask@1) o_4@@47 f_5@@33))
))) (and (=> (= (ControlFlow 0 111) (- 0 115)) (<= 0 0)) (=> (<= 0 0) (and (=> (= (ControlFlow 0 111) (- 0 114)) (<= 0 0)) (=> (<= 0 0) (and (=> (= (ControlFlow 0 111) (- 0 113)) (<= 0 blue@0)) (=> (<= 0 blue@0) (and (=> (= (ControlFlow 0 111) (- 0 112)) (<= blue@0 (length_1 a_2@@1))) (=> (<= blue@0 (length_1 a_2@@1)) (and (and (=> (= (ControlFlow 0 111) 110) anon92_Else_correct) (=> (= (ControlFlow 0 111) 13) anon93_Then_correct)) (=> (= (ControlFlow 0 111) 15) anon93_Else_correct))))))))))))))))))))
(let ((anon84_Else_correct  (=> (and (forall ((i_3 Int) ) (!  (=> (and (<= 0 i_3) (< i_3 (length_1 a_2@@1))) (or (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| Heap@@17) (loc a_2@@1 i_3) val) 0) (or (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| Heap@@17) (loc a_2@@1 i_3) val) 1) (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| Heap@@17) (loc a_2@@1 i_3) val) 2))))
 :qid |stdinbpl.353:20|
 :skolemid |30|
 :pattern ( (loc a_2@@1 i_3))
)) (state Heap@@17 QPMask@0)) (and (=> (= (ControlFlow 0 128) 127) anon88_Then_correct) (=> (= (ControlFlow 0 128) 111) anon88_Else_correct)))))
(let ((anon7_correct true))
(let ((anon87_Else_correct  (=> (and (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| Heap@@17) (loc a_2@@1 i_2) val) 1) (= (ControlFlow 0 7) 2)) anon7_correct)))
(let ((anon87_Then_correct  (=> (not (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| Heap@@17) (loc a_2@@1 i_2) val) 1)) (and (=> (= (ControlFlow 0 5) (- 0 6)) (HasDirectPerm_6867_1473 QPMask@0 (loc a_2@@1 i_2) val)) (=> (HasDirectPerm_6867_1473 QPMask@0 (loc a_2@@1 i_2) val) (=> (= (ControlFlow 0 5) 2) anon7_correct))))))
(let ((anon86_Then_correct  (=> (not (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| Heap@@17) (loc a_2@@1 i_2) val) 0)) (and (=> (= (ControlFlow 0 8) (- 0 9)) (HasDirectPerm_6867_1473 QPMask@0 (loc a_2@@1 i_2) val)) (=> (HasDirectPerm_6867_1473 QPMask@0 (loc a_2@@1 i_2) val) (and (=> (= (ControlFlow 0 8) 5) anon87_Then_correct) (=> (= (ControlFlow 0 8) 7) anon87_Else_correct)))))))
(let ((anon86_Else_correct  (=> (and (= (select (|PolymorphicMapType_9982_6867_1473#PolymorphicMapType_9982| Heap@@17) (loc a_2@@1 i_2) val) 0) (= (ControlFlow 0 4) 2)) anon7_correct)))
(let ((anon85_Then_correct  (=> (and (<= 0 i_2) (< i_2 (length_1 a_2@@1))) (and (=> (= (ControlFlow 0 10) (- 0 11)) (HasDirectPerm_6867_1473 QPMask@0 (loc a_2@@1 i_2) val)) (=> (HasDirectPerm_6867_1473 QPMask@0 (loc a_2@@1 i_2) val) (and (=> (= (ControlFlow 0 10) 8) anon86_Then_correct) (=> (= (ControlFlow 0 10) 4) anon86_Else_correct)))))))
(let ((anon85_Else_correct  (=> (and (not (and (<= 0 i_2) (< i_2 (length_1 a_2@@1)))) (= (ControlFlow 0 3) 2)) anon7_correct)))
(let ((anon83_Else_correct  (and (=> (= (ControlFlow 0 129) (- 0 130)) (forall ((i_1 Int) (i_1_1 Int) ) (!  (=> (and (and (and (and (not (= i_1 i_1_1)) (and (<= 0 i_1) (< i_1 (length_1 a_2@@1)))) (and (<= 0 i_1_1) (< i_1_1 (length_1 a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i_1) (loc a_2@@1 i_1_1))))
 :qid |stdinbpl.303:15|
 :skolemid |24|
))) (=> (forall ((i_1@@0 Int) (i_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_1@@0 i_1_1@@0)) (and (<= 0 i_1@@0) (< i_1@@0 (length_1 a_2@@1)))) (and (<= 0 i_1_1@@0) (< i_1_1@@0 (length_1 a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i_1@@0) (loc a_2@@1 i_1_1@@0))))
 :qid |stdinbpl.303:15|
 :skolemid |24|
)) (=> (and (and (forall ((i_1@@1 Int) ) (!  (=> (and (and (<= 0 i_1@@1) (< i_1@@1 (length_1 a_2@@1))) (< NoPerm FullPerm)) (and (qpRange1 (loc a_2@@1 i_1@@1)) (= (invRecv1 (loc a_2@@1 i_1@@1)) i_1@@1)))
 :qid |stdinbpl.309:22|
 :skolemid |25|
 :pattern ( (loc a_2@@1 i_1@@1))
 :pattern ( (loc a_2@@1 i_1@@1))
)) (forall ((o_4@@48 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv1 o_4@@48)) (< (invRecv1 o_4@@48) (length_1 a_2@@1))) (< NoPerm FullPerm)) (qpRange1 o_4@@48)) (= (loc a_2@@1 (invRecv1 o_4@@48)) o_4@@48))
 :qid |stdinbpl.313:22|
 :skolemid |26|
 :pattern ( (invRecv1 o_4@@48))
))) (and (forall ((i_1@@2 Int) ) (!  (=> (and (<= 0 i_1@@2) (< i_1@@2 (length_1 a_2@@1))) (not (= (loc a_2@@1 i_1@@2) null)))
 :qid |stdinbpl.319:22|
 :skolemid |27|
 :pattern ( (loc a_2@@1 i_1@@2))
 :pattern ( (loc a_2@@1 i_1@@2))
)) (forall ((o_4@@49 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv1 o_4@@49)) (< (invRecv1 o_4@@49) (length_1 a_2@@1))) (< NoPerm FullPerm)) (qpRange1 o_4@@49)) (and (=> (< NoPerm FullPerm) (= (loc a_2@@1 (invRecv1 o_4@@49)) o_4@@49)) (= (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@0) o_4@@49 val) (+ (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| ZeroMask) o_4@@49 val) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv1 o_4@@49)) (< (invRecv1 o_4@@49) (length_1 a_2@@1))) (< NoPerm FullPerm)) (qpRange1 o_4@@49))) (= (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@0) o_4@@49 val) (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| ZeroMask) o_4@@49 val))))
 :qid |stdinbpl.325:22|
 :skolemid |28|
 :pattern ( (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@0) o_4@@49 val))
)))) (=> (and (and (and (and (and (forall ((o_4@@50 T@Ref) (f_5@@34 T@Field_10042_53) ) (!  (=> true (= (select (|PolymorphicMapType_10003_6867_53#PolymorphicMapType_10003| ZeroMask) o_4@@50 f_5@@34) (select (|PolymorphicMapType_10003_6867_53#PolymorphicMapType_10003| QPMask@0) o_4@@50 f_5@@34)))
 :qid |stdinbpl.329:29|
 :skolemid |29|
 :pattern ( (select (|PolymorphicMapType_10003_6867_53#PolymorphicMapType_10003| ZeroMask) o_4@@50 f_5@@34))
 :pattern ( (select (|PolymorphicMapType_10003_6867_53#PolymorphicMapType_10003| QPMask@0) o_4@@50 f_5@@34))
)) (forall ((o_4@@51 T@Ref) (f_5@@35 T@Field_10055_10056) ) (!  (=> true (= (select (|PolymorphicMapType_10003_6867_10056#PolymorphicMapType_10003| ZeroMask) o_4@@51 f_5@@35) (select (|PolymorphicMapType_10003_6867_10056#PolymorphicMapType_10003| QPMask@0) o_4@@51 f_5@@35)))
 :qid |stdinbpl.329:29|
 :skolemid |29|
 :pattern ( (select (|PolymorphicMapType_10003_6867_10056#PolymorphicMapType_10003| ZeroMask) o_4@@51 f_5@@35))
 :pattern ( (select (|PolymorphicMapType_10003_6867_10056#PolymorphicMapType_10003| QPMask@0) o_4@@51 f_5@@35))
))) (forall ((o_4@@52 T@Ref) (f_5@@36 T@Field_13493_1473) ) (!  (=> (not (= f_5@@36 val)) (= (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| ZeroMask) o_4@@52 f_5@@36) (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@0) o_4@@52 f_5@@36)))
 :qid |stdinbpl.329:29|
 :skolemid |29|
 :pattern ( (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| ZeroMask) o_4@@52 f_5@@36))
 :pattern ( (select (|PolymorphicMapType_10003_6867_1473#PolymorphicMapType_10003| QPMask@0) o_4@@52 f_5@@36))
))) (forall ((o_4@@53 T@Ref) (f_5@@37 T@Field_6867_29502) ) (!  (=> true (= (select (|PolymorphicMapType_10003_6867_29502#PolymorphicMapType_10003| ZeroMask) o_4@@53 f_5@@37) (select (|PolymorphicMapType_10003_6867_29502#PolymorphicMapType_10003| QPMask@0) o_4@@53 f_5@@37)))
 :qid |stdinbpl.329:29|
 :skolemid |29|
 :pattern ( (select (|PolymorphicMapType_10003_6867_29502#PolymorphicMapType_10003| ZeroMask) o_4@@53 f_5@@37))
 :pattern ( (select (|PolymorphicMapType_10003_6867_29502#PolymorphicMapType_10003| QPMask@0) o_4@@53 f_5@@37))
))) (forall ((o_4@@54 T@Ref) (f_5@@38 T@Field_6867_29635) ) (!  (=> true (= (select (|PolymorphicMapType_10003_6867_33757#PolymorphicMapType_10003| ZeroMask) o_4@@54 f_5@@38) (select (|PolymorphicMapType_10003_6867_33757#PolymorphicMapType_10003| QPMask@0) o_4@@54 f_5@@38)))
 :qid |stdinbpl.329:29|
 :skolemid |29|
 :pattern ( (select (|PolymorphicMapType_10003_6867_33757#PolymorphicMapType_10003| ZeroMask) o_4@@54 f_5@@38))
 :pattern ( (select (|PolymorphicMapType_10003_6867_33757#PolymorphicMapType_10003| QPMask@0) o_4@@54 f_5@@38))
))) (and (state Heap@@17 QPMask@0) (state Heap@@17 QPMask@0))) (and (and (=> (= (ControlFlow 0 129) 128) anon84_Else_correct) (=> (= (ControlFlow 0 129) 10) anon85_Then_correct)) (=> (= (ControlFlow 0 129) 3) anon85_Else_correct))))))))
(let ((anon83_Then_correct true))
(let ((anon0_correct  (=> (and (state Heap@@17 ZeroMask) AssumePermUpperBound) (and (=> (= (ControlFlow 0 131) 1) anon83_Then_correct) (=> (= (ControlFlow 0 131) 129) anon83_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 132) 131) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
