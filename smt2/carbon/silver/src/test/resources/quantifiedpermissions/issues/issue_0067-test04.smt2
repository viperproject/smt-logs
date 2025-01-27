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
(declare-sort T@Field_12277_53 0)
(declare-sort T@Field_12290_12291 0)
(declare-sort T@Field_18478_645 0)
(declare-sort T@Field_18525_3394 0)
(declare-sort T@Field_7525_35362 0)
(declare-sort T@Field_7525_35229 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_12238 0)) (((PolymorphicMapType_12238 (|PolymorphicMapType_12238_7525_645#PolymorphicMapType_12238| (Array T@Ref T@Field_18478_645 Real)) (|PolymorphicMapType_12238_7528_3394#PolymorphicMapType_12238| (Array T@Ref T@Field_18525_3394 Real)) (|PolymorphicMapType_12238_7525_53#PolymorphicMapType_12238| (Array T@Ref T@Field_12277_53 Real)) (|PolymorphicMapType_12238_7525_12291#PolymorphicMapType_12238| (Array T@Ref T@Field_12290_12291 Real)) (|PolymorphicMapType_12238_7525_35229#PolymorphicMapType_12238| (Array T@Ref T@Field_7525_35229 Real)) (|PolymorphicMapType_12238_7525_40045#PolymorphicMapType_12238| (Array T@Ref T@Field_7525_35362 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_12766 0)) (((PolymorphicMapType_12766 (|PolymorphicMapType_12766_12277_53#PolymorphicMapType_12766| (Array T@Ref T@Field_12277_53 Bool)) (|PolymorphicMapType_12766_12277_12291#PolymorphicMapType_12766| (Array T@Ref T@Field_12290_12291 Bool)) (|PolymorphicMapType_12766_12277_645#PolymorphicMapType_12766| (Array T@Ref T@Field_18478_645 Bool)) (|PolymorphicMapType_12766_12277_3394#PolymorphicMapType_12766| (Array T@Ref T@Field_18525_3394 Bool)) (|PolymorphicMapType_12766_12277_35229#PolymorphicMapType_12766| (Array T@Ref T@Field_7525_35229 Bool)) (|PolymorphicMapType_12766_12277_36738#PolymorphicMapType_12766| (Array T@Ref T@Field_7525_35362 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_12217 0)) (((PolymorphicMapType_12217 (|PolymorphicMapType_12217_7204_53#PolymorphicMapType_12217| (Array T@Ref T@Field_12277_53 Bool)) (|PolymorphicMapType_12217_7207_7208#PolymorphicMapType_12217| (Array T@Ref T@Field_12290_12291 T@Ref)) (|PolymorphicMapType_12217_7525_645#PolymorphicMapType_12217| (Array T@Ref T@Field_18478_645 Real)) (|PolymorphicMapType_12217_7528_3394#PolymorphicMapType_12217| (Array T@Ref T@Field_18525_3394 Int)) (|PolymorphicMapType_12217_7525_35406#PolymorphicMapType_12217| (Array T@Ref T@Field_7525_35362 T@PolymorphicMapType_12766)) (|PolymorphicMapType_12217_12277_35229#PolymorphicMapType_12217| (Array T@Ref T@Field_7525_35229 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_12277_53)
(declare-fun k_45 () T@Field_18478_645)
(declare-fun f_7 () T@Field_18525_3394)
(declare-fun succHeap (T@PolymorphicMapType_12217 T@PolymorphicMapType_12217) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_12217 T@PolymorphicMapType_12217) Bool)
(declare-fun state (T@PolymorphicMapType_12217 T@PolymorphicMapType_12238) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_12238) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_12766)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_12217 T@PolymorphicMapType_12217 T@PolymorphicMapType_12238) Bool)
(declare-fun IsPredicateField_7525_35320 (T@Field_7525_35229) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_7525 (T@Field_7525_35229) T@Field_7525_35362)
(declare-fun HasDirectPerm_7525_35293 (T@PolymorphicMapType_12238 T@Ref T@Field_7525_35229) Bool)
(declare-fun IsWandField_7525_37265 (T@Field_7525_35229) Bool)
(declare-fun WandMaskField_7525 (T@Field_7525_35229) T@Field_7525_35362)
(declare-fun dummyHeap () T@PolymorphicMapType_12217)
(declare-fun ZeroMask () T@PolymorphicMapType_12238)
(declare-fun InsidePredicate_12277_12277 (T@Field_7525_35229 T@FrameType T@Field_7525_35229 T@FrameType) Bool)
(declare-fun IsPredicateField_7525_645 (T@Field_18478_645) Bool)
(declare-fun IsWandField_7525_645 (T@Field_18478_645) Bool)
(declare-fun IsPredicateField_7528_3394 (T@Field_18525_3394) Bool)
(declare-fun IsWandField_7528_3394 (T@Field_18525_3394) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_7525_41394 (T@Field_7525_35362) Bool)
(declare-fun IsWandField_7525_41410 (T@Field_7525_35362) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_7525_12291 (T@Field_12290_12291) Bool)
(declare-fun IsWandField_7525_12291 (T@Field_12290_12291) Bool)
(declare-fun IsPredicateField_7525_53 (T@Field_12277_53) Bool)
(declare-fun IsWandField_7525_53 (T@Field_12277_53) Bool)
(declare-fun HasDirectPerm_7525_41931 (T@PolymorphicMapType_12238 T@Ref T@Field_7525_35362) Bool)
(declare-fun HasDirectPerm_7525_3394 (T@PolymorphicMapType_12238 T@Ref T@Field_18525_3394) Bool)
(declare-fun HasDirectPerm_7525_12291 (T@PolymorphicMapType_12238 T@Ref T@Field_12290_12291) Bool)
(declare-fun HasDirectPerm_7525_53 (T@PolymorphicMapType_12238 T@Ref T@Field_12277_53) Bool)
(declare-fun HasDirectPerm_7525_645 (T@PolymorphicMapType_12238 T@Ref T@Field_18478_645) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_12238 T@PolymorphicMapType_12238 T@PolymorphicMapType_12238) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_12217) (Heap1 T@PolymorphicMapType_12217) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_12217) (Mask T@PolymorphicMapType_12238) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_12217) (Heap1@@0 T@PolymorphicMapType_12217) (Heap2 T@PolymorphicMapType_12217) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_7525_35362) ) (!  (not (select (|PolymorphicMapType_12766_12277_36738#PolymorphicMapType_12766| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12766_12277_36738#PolymorphicMapType_12766| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_7525_35229) ) (!  (not (select (|PolymorphicMapType_12766_12277_35229#PolymorphicMapType_12766| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12766_12277_35229#PolymorphicMapType_12766| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_18525_3394) ) (!  (not (select (|PolymorphicMapType_12766_12277_3394#PolymorphicMapType_12766| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12766_12277_3394#PolymorphicMapType_12766| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_18478_645) ) (!  (not (select (|PolymorphicMapType_12766_12277_645#PolymorphicMapType_12766| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12766_12277_645#PolymorphicMapType_12766| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_12290_12291) ) (!  (not (select (|PolymorphicMapType_12766_12277_12291#PolymorphicMapType_12766| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12766_12277_12291#PolymorphicMapType_12766| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_12277_53) ) (!  (not (select (|PolymorphicMapType_12766_12277_53#PolymorphicMapType_12766| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12766_12277_53#PolymorphicMapType_12766| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.309:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((a@@0 Int) ) (!  (=> (<= 0 a@@0) (= (|Math#clip| a@@0) a@@0))
 :qid |stdinbpl.312:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@0))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_12217) (ExhaleHeap T@PolymorphicMapType_12217) (Mask@@0 T@PolymorphicMapType_12238) (pm_f_4 T@Field_7525_35229) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_7525_35293 Mask@@0 null pm_f_4) (IsPredicateField_7525_35320 pm_f_4)) (= (select (|PolymorphicMapType_12217_7525_35406#PolymorphicMapType_12217| Heap@@0) null (PredicateMaskField_7525 pm_f_4)) (select (|PolymorphicMapType_12217_7525_35406#PolymorphicMapType_12217| ExhaleHeap) null (PredicateMaskField_7525 pm_f_4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_7525_35320 pm_f_4) (select (|PolymorphicMapType_12217_7525_35406#PolymorphicMapType_12217| ExhaleHeap) null (PredicateMaskField_7525 pm_f_4)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_12217) (ExhaleHeap@@0 T@PolymorphicMapType_12217) (Mask@@1 T@PolymorphicMapType_12238) (pm_f_4@@0 T@Field_7525_35229) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_7525_35293 Mask@@1 null pm_f_4@@0) (IsWandField_7525_37265 pm_f_4@@0)) (= (select (|PolymorphicMapType_12217_7525_35406#PolymorphicMapType_12217| Heap@@1) null (WandMaskField_7525 pm_f_4@@0)) (select (|PolymorphicMapType_12217_7525_35406#PolymorphicMapType_12217| ExhaleHeap@@0) null (WandMaskField_7525 pm_f_4@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_7525_37265 pm_f_4@@0) (select (|PolymorphicMapType_12217_7525_35406#PolymorphicMapType_12217| ExhaleHeap@@0) null (WandMaskField_7525 pm_f_4@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_12217) (ExhaleHeap@@1 T@PolymorphicMapType_12217) (Mask@@2 T@PolymorphicMapType_12238) (o_13 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_12217_7204_53#PolymorphicMapType_12217| Heap@@2) o_13 $allocated) (select (|PolymorphicMapType_12217_7204_53#PolymorphicMapType_12217| ExhaleHeap@@1) o_13 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_12217_7204_53#PolymorphicMapType_12217| ExhaleHeap@@1) o_13 $allocated))
)))
(assert (forall ((p T@Field_7525_35229) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_12277_12277 p v_1 p w))
 :qid |stdinbpl.207:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_12277_12277 p v_1 p w))
)))
(assert  (not (IsPredicateField_7525_645 k_45)))
(assert  (not (IsWandField_7525_645 k_45)))
(assert  (not (IsPredicateField_7528_3394 f_7)))
(assert  (not (IsWandField_7528_3394 f_7)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_12217) (ExhaleHeap@@2 T@PolymorphicMapType_12217) (Mask@@3 T@PolymorphicMapType_12238) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_12238) (o_2@@5 T@Ref) (f_4@@5 T@Field_7525_35362) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_12238_7525_40045#PolymorphicMapType_12238| Mask@@4) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_7525_41394 f_4@@5))) (not (IsWandField_7525_41410 f_4@@5))) (<= (select (|PolymorphicMapType_12238_7525_40045#PolymorphicMapType_12238| Mask@@4) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_12238_7525_40045#PolymorphicMapType_12238| Mask@@4) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_12238) (o_2@@6 T@Ref) (f_4@@6 T@Field_7525_35229) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_12238_7525_35229#PolymorphicMapType_12238| Mask@@5) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_7525_35320 f_4@@6))) (not (IsWandField_7525_37265 f_4@@6))) (<= (select (|PolymorphicMapType_12238_7525_35229#PolymorphicMapType_12238| Mask@@5) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_12238_7525_35229#PolymorphicMapType_12238| Mask@@5) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_12238) (o_2@@7 T@Ref) (f_4@@7 T@Field_12290_12291) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_12238_7525_12291#PolymorphicMapType_12238| Mask@@6) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_7525_12291 f_4@@7))) (not (IsWandField_7525_12291 f_4@@7))) (<= (select (|PolymorphicMapType_12238_7525_12291#PolymorphicMapType_12238| Mask@@6) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_12238_7525_12291#PolymorphicMapType_12238| Mask@@6) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_12238) (o_2@@8 T@Ref) (f_4@@8 T@Field_12277_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_12238_7525_53#PolymorphicMapType_12238| Mask@@7) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_7525_53 f_4@@8))) (not (IsWandField_7525_53 f_4@@8))) (<= (select (|PolymorphicMapType_12238_7525_53#PolymorphicMapType_12238| Mask@@7) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_12238_7525_53#PolymorphicMapType_12238| Mask@@7) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_12238) (o_2@@9 T@Ref) (f_4@@9 T@Field_18525_3394) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_12238_7528_3394#PolymorphicMapType_12238| Mask@@8) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_7528_3394 f_4@@9))) (not (IsWandField_7528_3394 f_4@@9))) (<= (select (|PolymorphicMapType_12238_7528_3394#PolymorphicMapType_12238| Mask@@8) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_12238_7528_3394#PolymorphicMapType_12238| Mask@@8) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_12238) (o_2@@10 T@Ref) (f_4@@10 T@Field_18478_645) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_12238_7525_645#PolymorphicMapType_12238| Mask@@9) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_7525_645 f_4@@10))) (not (IsWandField_7525_645 f_4@@10))) (<= (select (|PolymorphicMapType_12238_7525_645#PolymorphicMapType_12238| Mask@@9) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_12238_7525_645#PolymorphicMapType_12238| Mask@@9) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_12238) (o_2@@11 T@Ref) (f_4@@11 T@Field_7525_35362) ) (! (= (HasDirectPerm_7525_41931 Mask@@10 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_12238_7525_40045#PolymorphicMapType_12238| Mask@@10) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7525_41931 Mask@@10 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_12238) (o_2@@12 T@Ref) (f_4@@12 T@Field_7525_35229) ) (! (= (HasDirectPerm_7525_35293 Mask@@11 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_12238_7525_35229#PolymorphicMapType_12238| Mask@@11) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7525_35293 Mask@@11 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_12238) (o_2@@13 T@Ref) (f_4@@13 T@Field_18525_3394) ) (! (= (HasDirectPerm_7525_3394 Mask@@12 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_12238_7528_3394#PolymorphicMapType_12238| Mask@@12) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7525_3394 Mask@@12 o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_12238) (o_2@@14 T@Ref) (f_4@@14 T@Field_12290_12291) ) (! (= (HasDirectPerm_7525_12291 Mask@@13 o_2@@14 f_4@@14) (> (select (|PolymorphicMapType_12238_7525_12291#PolymorphicMapType_12238| Mask@@13) o_2@@14 f_4@@14) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7525_12291 Mask@@13 o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_12238) (o_2@@15 T@Ref) (f_4@@15 T@Field_12277_53) ) (! (= (HasDirectPerm_7525_53 Mask@@14 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_12238_7525_53#PolymorphicMapType_12238| Mask@@14) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7525_53 Mask@@14 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_12238) (o_2@@16 T@Ref) (f_4@@16 T@Field_18478_645) ) (! (= (HasDirectPerm_7525_645 Mask@@15 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_12238_7525_645#PolymorphicMapType_12238| Mask@@15) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7525_645 Mask@@15 o_2@@16 f_4@@16))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.195:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_12217) (ExhaleHeap@@3 T@PolymorphicMapType_12217) (Mask@@16 T@PolymorphicMapType_12238) (o_13@@0 T@Ref) (f_20 T@Field_7525_35362) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@16) (=> (HasDirectPerm_7525_41931 Mask@@16 o_13@@0 f_20) (= (select (|PolymorphicMapType_12217_7525_35406#PolymorphicMapType_12217| Heap@@4) o_13@@0 f_20) (select (|PolymorphicMapType_12217_7525_35406#PolymorphicMapType_12217| ExhaleHeap@@3) o_13@@0 f_20))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@16) (select (|PolymorphicMapType_12217_7525_35406#PolymorphicMapType_12217| ExhaleHeap@@3) o_13@@0 f_20))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_12217) (ExhaleHeap@@4 T@PolymorphicMapType_12217) (Mask@@17 T@PolymorphicMapType_12238) (o_13@@1 T@Ref) (f_20@@0 T@Field_7525_35229) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@17) (=> (HasDirectPerm_7525_35293 Mask@@17 o_13@@1 f_20@@0) (= (select (|PolymorphicMapType_12217_12277_35229#PolymorphicMapType_12217| Heap@@5) o_13@@1 f_20@@0) (select (|PolymorphicMapType_12217_12277_35229#PolymorphicMapType_12217| ExhaleHeap@@4) o_13@@1 f_20@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@17) (select (|PolymorphicMapType_12217_12277_35229#PolymorphicMapType_12217| ExhaleHeap@@4) o_13@@1 f_20@@0))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_12217) (ExhaleHeap@@5 T@PolymorphicMapType_12217) (Mask@@18 T@PolymorphicMapType_12238) (o_13@@2 T@Ref) (f_20@@1 T@Field_18525_3394) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@18) (=> (HasDirectPerm_7525_3394 Mask@@18 o_13@@2 f_20@@1) (= (select (|PolymorphicMapType_12217_7528_3394#PolymorphicMapType_12217| Heap@@6) o_13@@2 f_20@@1) (select (|PolymorphicMapType_12217_7528_3394#PolymorphicMapType_12217| ExhaleHeap@@5) o_13@@2 f_20@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@18) (select (|PolymorphicMapType_12217_7528_3394#PolymorphicMapType_12217| ExhaleHeap@@5) o_13@@2 f_20@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_12217) (ExhaleHeap@@6 T@PolymorphicMapType_12217) (Mask@@19 T@PolymorphicMapType_12238) (o_13@@3 T@Ref) (f_20@@2 T@Field_12290_12291) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@19) (=> (HasDirectPerm_7525_12291 Mask@@19 o_13@@3 f_20@@2) (= (select (|PolymorphicMapType_12217_7207_7208#PolymorphicMapType_12217| Heap@@7) o_13@@3 f_20@@2) (select (|PolymorphicMapType_12217_7207_7208#PolymorphicMapType_12217| ExhaleHeap@@6) o_13@@3 f_20@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@19) (select (|PolymorphicMapType_12217_7207_7208#PolymorphicMapType_12217| ExhaleHeap@@6) o_13@@3 f_20@@2))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_12217) (ExhaleHeap@@7 T@PolymorphicMapType_12217) (Mask@@20 T@PolymorphicMapType_12238) (o_13@@4 T@Ref) (f_20@@3 T@Field_12277_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@20) (=> (HasDirectPerm_7525_53 Mask@@20 o_13@@4 f_20@@3) (= (select (|PolymorphicMapType_12217_7204_53#PolymorphicMapType_12217| Heap@@8) o_13@@4 f_20@@3) (select (|PolymorphicMapType_12217_7204_53#PolymorphicMapType_12217| ExhaleHeap@@7) o_13@@4 f_20@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@20) (select (|PolymorphicMapType_12217_7204_53#PolymorphicMapType_12217| ExhaleHeap@@7) o_13@@4 f_20@@3))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_12217) (ExhaleHeap@@8 T@PolymorphicMapType_12217) (Mask@@21 T@PolymorphicMapType_12238) (o_13@@5 T@Ref) (f_20@@4 T@Field_18478_645) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@21) (=> (HasDirectPerm_7525_645 Mask@@21 o_13@@5 f_20@@4) (= (select (|PolymorphicMapType_12217_7525_645#PolymorphicMapType_12217| Heap@@9) o_13@@5 f_20@@4) (select (|PolymorphicMapType_12217_7525_645#PolymorphicMapType_12217| ExhaleHeap@@8) o_13@@5 f_20@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@21) (select (|PolymorphicMapType_12217_7525_645#PolymorphicMapType_12217| ExhaleHeap@@8) o_13@@5 f_20@@4))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_7525_35362) ) (! (= (select (|PolymorphicMapType_12238_7525_40045#PolymorphicMapType_12238| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12238_7525_40045#PolymorphicMapType_12238| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_7525_35229) ) (! (= (select (|PolymorphicMapType_12238_7525_35229#PolymorphicMapType_12238| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12238_7525_35229#PolymorphicMapType_12238| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((o_2@@19 T@Ref) (f_4@@19 T@Field_12290_12291) ) (! (= (select (|PolymorphicMapType_12238_7525_12291#PolymorphicMapType_12238| ZeroMask) o_2@@19 f_4@@19) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12238_7525_12291#PolymorphicMapType_12238| ZeroMask) o_2@@19 f_4@@19))
)))
(assert (forall ((o_2@@20 T@Ref) (f_4@@20 T@Field_12277_53) ) (! (= (select (|PolymorphicMapType_12238_7525_53#PolymorphicMapType_12238| ZeroMask) o_2@@20 f_4@@20) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12238_7525_53#PolymorphicMapType_12238| ZeroMask) o_2@@20 f_4@@20))
)))
(assert (forall ((o_2@@21 T@Ref) (f_4@@21 T@Field_18525_3394) ) (! (= (select (|PolymorphicMapType_12238_7528_3394#PolymorphicMapType_12238| ZeroMask) o_2@@21 f_4@@21) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12238_7528_3394#PolymorphicMapType_12238| ZeroMask) o_2@@21 f_4@@21))
)))
(assert (forall ((o_2@@22 T@Ref) (f_4@@22 T@Field_18478_645) ) (! (= (select (|PolymorphicMapType_12238_7525_645#PolymorphicMapType_12238| ZeroMask) o_2@@22 f_4@@22) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12238_7525_645#PolymorphicMapType_12238| ZeroMask) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_12238) (SummandMask1 T@PolymorphicMapType_12238) (SummandMask2 T@PolymorphicMapType_12238) (o_2@@23 T@Ref) (f_4@@23 T@Field_7525_35362) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_12238_7525_40045#PolymorphicMapType_12238| ResultMask) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_12238_7525_40045#PolymorphicMapType_12238| SummandMask1) o_2@@23 f_4@@23) (select (|PolymorphicMapType_12238_7525_40045#PolymorphicMapType_12238| SummandMask2) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12238_7525_40045#PolymorphicMapType_12238| ResultMask) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12238_7525_40045#PolymorphicMapType_12238| SummandMask1) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12238_7525_40045#PolymorphicMapType_12238| SummandMask2) o_2@@23 f_4@@23))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_12238) (SummandMask1@@0 T@PolymorphicMapType_12238) (SummandMask2@@0 T@PolymorphicMapType_12238) (o_2@@24 T@Ref) (f_4@@24 T@Field_7525_35229) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_12238_7525_35229#PolymorphicMapType_12238| ResultMask@@0) o_2@@24 f_4@@24) (+ (select (|PolymorphicMapType_12238_7525_35229#PolymorphicMapType_12238| SummandMask1@@0) o_2@@24 f_4@@24) (select (|PolymorphicMapType_12238_7525_35229#PolymorphicMapType_12238| SummandMask2@@0) o_2@@24 f_4@@24))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12238_7525_35229#PolymorphicMapType_12238| ResultMask@@0) o_2@@24 f_4@@24))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12238_7525_35229#PolymorphicMapType_12238| SummandMask1@@0) o_2@@24 f_4@@24))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12238_7525_35229#PolymorphicMapType_12238| SummandMask2@@0) o_2@@24 f_4@@24))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_12238) (SummandMask1@@1 T@PolymorphicMapType_12238) (SummandMask2@@1 T@PolymorphicMapType_12238) (o_2@@25 T@Ref) (f_4@@25 T@Field_12290_12291) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_12238_7525_12291#PolymorphicMapType_12238| ResultMask@@1) o_2@@25 f_4@@25) (+ (select (|PolymorphicMapType_12238_7525_12291#PolymorphicMapType_12238| SummandMask1@@1) o_2@@25 f_4@@25) (select (|PolymorphicMapType_12238_7525_12291#PolymorphicMapType_12238| SummandMask2@@1) o_2@@25 f_4@@25))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12238_7525_12291#PolymorphicMapType_12238| ResultMask@@1) o_2@@25 f_4@@25))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12238_7525_12291#PolymorphicMapType_12238| SummandMask1@@1) o_2@@25 f_4@@25))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12238_7525_12291#PolymorphicMapType_12238| SummandMask2@@1) o_2@@25 f_4@@25))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_12238) (SummandMask1@@2 T@PolymorphicMapType_12238) (SummandMask2@@2 T@PolymorphicMapType_12238) (o_2@@26 T@Ref) (f_4@@26 T@Field_12277_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_12238_7525_53#PolymorphicMapType_12238| ResultMask@@2) o_2@@26 f_4@@26) (+ (select (|PolymorphicMapType_12238_7525_53#PolymorphicMapType_12238| SummandMask1@@2) o_2@@26 f_4@@26) (select (|PolymorphicMapType_12238_7525_53#PolymorphicMapType_12238| SummandMask2@@2) o_2@@26 f_4@@26))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12238_7525_53#PolymorphicMapType_12238| ResultMask@@2) o_2@@26 f_4@@26))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12238_7525_53#PolymorphicMapType_12238| SummandMask1@@2) o_2@@26 f_4@@26))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12238_7525_53#PolymorphicMapType_12238| SummandMask2@@2) o_2@@26 f_4@@26))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_12238) (SummandMask1@@3 T@PolymorphicMapType_12238) (SummandMask2@@3 T@PolymorphicMapType_12238) (o_2@@27 T@Ref) (f_4@@27 T@Field_18525_3394) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_12238_7528_3394#PolymorphicMapType_12238| ResultMask@@3) o_2@@27 f_4@@27) (+ (select (|PolymorphicMapType_12238_7528_3394#PolymorphicMapType_12238| SummandMask1@@3) o_2@@27 f_4@@27) (select (|PolymorphicMapType_12238_7528_3394#PolymorphicMapType_12238| SummandMask2@@3) o_2@@27 f_4@@27))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12238_7528_3394#PolymorphicMapType_12238| ResultMask@@3) o_2@@27 f_4@@27))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12238_7528_3394#PolymorphicMapType_12238| SummandMask1@@3) o_2@@27 f_4@@27))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12238_7528_3394#PolymorphicMapType_12238| SummandMask2@@3) o_2@@27 f_4@@27))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_12238) (SummandMask1@@4 T@PolymorphicMapType_12238) (SummandMask2@@4 T@PolymorphicMapType_12238) (o_2@@28 T@Ref) (f_4@@28 T@Field_18478_645) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_12238_7525_645#PolymorphicMapType_12238| ResultMask@@4) o_2@@28 f_4@@28) (+ (select (|PolymorphicMapType_12238_7525_645#PolymorphicMapType_12238| SummandMask1@@4) o_2@@28 f_4@@28) (select (|PolymorphicMapType_12238_7525_645#PolymorphicMapType_12238| SummandMask2@@4) o_2@@28 f_4@@28))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_12238_7525_645#PolymorphicMapType_12238| ResultMask@@4) o_2@@28 f_4@@28))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_12238_7525_645#PolymorphicMapType_12238| SummandMask1@@4) o_2@@28 f_4@@28))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_12238_7525_645#PolymorphicMapType_12238| SummandMask2@@4) o_2@@28 f_4@@28))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_12217) (ExhaleHeap@@9 T@PolymorphicMapType_12217) (Mask@@22 T@PolymorphicMapType_12238) (pm_f_4@@1 T@Field_7525_35229) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@22) (=> (and (HasDirectPerm_7525_35293 Mask@@22 null pm_f_4@@1) (IsPredicateField_7525_35320 pm_f_4@@1)) (and (and (and (and (and (forall ((o2_4 T@Ref) (f_20@@5 T@Field_12277_53) ) (!  (=> (select (|PolymorphicMapType_12766_12277_53#PolymorphicMapType_12766| (select (|PolymorphicMapType_12217_7525_35406#PolymorphicMapType_12217| Heap@@10) null (PredicateMaskField_7525 pm_f_4@@1))) o2_4 f_20@@5) (= (select (|PolymorphicMapType_12217_7204_53#PolymorphicMapType_12217| Heap@@10) o2_4 f_20@@5) (select (|PolymorphicMapType_12217_7204_53#PolymorphicMapType_12217| ExhaleHeap@@9) o2_4 f_20@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12217_7204_53#PolymorphicMapType_12217| ExhaleHeap@@9) o2_4 f_20@@5))
)) (forall ((o2_4@@0 T@Ref) (f_20@@6 T@Field_12290_12291) ) (!  (=> (select (|PolymorphicMapType_12766_12277_12291#PolymorphicMapType_12766| (select (|PolymorphicMapType_12217_7525_35406#PolymorphicMapType_12217| Heap@@10) null (PredicateMaskField_7525 pm_f_4@@1))) o2_4@@0 f_20@@6) (= (select (|PolymorphicMapType_12217_7207_7208#PolymorphicMapType_12217| Heap@@10) o2_4@@0 f_20@@6) (select (|PolymorphicMapType_12217_7207_7208#PolymorphicMapType_12217| ExhaleHeap@@9) o2_4@@0 f_20@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12217_7207_7208#PolymorphicMapType_12217| ExhaleHeap@@9) o2_4@@0 f_20@@6))
))) (forall ((o2_4@@1 T@Ref) (f_20@@7 T@Field_18478_645) ) (!  (=> (select (|PolymorphicMapType_12766_12277_645#PolymorphicMapType_12766| (select (|PolymorphicMapType_12217_7525_35406#PolymorphicMapType_12217| Heap@@10) null (PredicateMaskField_7525 pm_f_4@@1))) o2_4@@1 f_20@@7) (= (select (|PolymorphicMapType_12217_7525_645#PolymorphicMapType_12217| Heap@@10) o2_4@@1 f_20@@7) (select (|PolymorphicMapType_12217_7525_645#PolymorphicMapType_12217| ExhaleHeap@@9) o2_4@@1 f_20@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12217_7525_645#PolymorphicMapType_12217| ExhaleHeap@@9) o2_4@@1 f_20@@7))
))) (forall ((o2_4@@2 T@Ref) (f_20@@8 T@Field_18525_3394) ) (!  (=> (select (|PolymorphicMapType_12766_12277_3394#PolymorphicMapType_12766| (select (|PolymorphicMapType_12217_7525_35406#PolymorphicMapType_12217| Heap@@10) null (PredicateMaskField_7525 pm_f_4@@1))) o2_4@@2 f_20@@8) (= (select (|PolymorphicMapType_12217_7528_3394#PolymorphicMapType_12217| Heap@@10) o2_4@@2 f_20@@8) (select (|PolymorphicMapType_12217_7528_3394#PolymorphicMapType_12217| ExhaleHeap@@9) o2_4@@2 f_20@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12217_7528_3394#PolymorphicMapType_12217| ExhaleHeap@@9) o2_4@@2 f_20@@8))
))) (forall ((o2_4@@3 T@Ref) (f_20@@9 T@Field_7525_35229) ) (!  (=> (select (|PolymorphicMapType_12766_12277_35229#PolymorphicMapType_12766| (select (|PolymorphicMapType_12217_7525_35406#PolymorphicMapType_12217| Heap@@10) null (PredicateMaskField_7525 pm_f_4@@1))) o2_4@@3 f_20@@9) (= (select (|PolymorphicMapType_12217_12277_35229#PolymorphicMapType_12217| Heap@@10) o2_4@@3 f_20@@9) (select (|PolymorphicMapType_12217_12277_35229#PolymorphicMapType_12217| ExhaleHeap@@9) o2_4@@3 f_20@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12217_12277_35229#PolymorphicMapType_12217| ExhaleHeap@@9) o2_4@@3 f_20@@9))
))) (forall ((o2_4@@4 T@Ref) (f_20@@10 T@Field_7525_35362) ) (!  (=> (select (|PolymorphicMapType_12766_12277_36738#PolymorphicMapType_12766| (select (|PolymorphicMapType_12217_7525_35406#PolymorphicMapType_12217| Heap@@10) null (PredicateMaskField_7525 pm_f_4@@1))) o2_4@@4 f_20@@10) (= (select (|PolymorphicMapType_12217_7525_35406#PolymorphicMapType_12217| Heap@@10) o2_4@@4 f_20@@10) (select (|PolymorphicMapType_12217_7525_35406#PolymorphicMapType_12217| ExhaleHeap@@9) o2_4@@4 f_20@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12217_7525_35406#PolymorphicMapType_12217| ExhaleHeap@@9) o2_4@@4 f_20@@10))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@22) (IsPredicateField_7525_35320 pm_f_4@@1))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_12217) (ExhaleHeap@@10 T@PolymorphicMapType_12217) (Mask@@23 T@PolymorphicMapType_12238) (pm_f_4@@2 T@Field_7525_35229) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@23) (=> (and (HasDirectPerm_7525_35293 Mask@@23 null pm_f_4@@2) (IsWandField_7525_37265 pm_f_4@@2)) (and (and (and (and (and (forall ((o2_4@@5 T@Ref) (f_20@@11 T@Field_12277_53) ) (!  (=> (select (|PolymorphicMapType_12766_12277_53#PolymorphicMapType_12766| (select (|PolymorphicMapType_12217_7525_35406#PolymorphicMapType_12217| Heap@@11) null (WandMaskField_7525 pm_f_4@@2))) o2_4@@5 f_20@@11) (= (select (|PolymorphicMapType_12217_7204_53#PolymorphicMapType_12217| Heap@@11) o2_4@@5 f_20@@11) (select (|PolymorphicMapType_12217_7204_53#PolymorphicMapType_12217| ExhaleHeap@@10) o2_4@@5 f_20@@11)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12217_7204_53#PolymorphicMapType_12217| ExhaleHeap@@10) o2_4@@5 f_20@@11))
)) (forall ((o2_4@@6 T@Ref) (f_20@@12 T@Field_12290_12291) ) (!  (=> (select (|PolymorphicMapType_12766_12277_12291#PolymorphicMapType_12766| (select (|PolymorphicMapType_12217_7525_35406#PolymorphicMapType_12217| Heap@@11) null (WandMaskField_7525 pm_f_4@@2))) o2_4@@6 f_20@@12) (= (select (|PolymorphicMapType_12217_7207_7208#PolymorphicMapType_12217| Heap@@11) o2_4@@6 f_20@@12) (select (|PolymorphicMapType_12217_7207_7208#PolymorphicMapType_12217| ExhaleHeap@@10) o2_4@@6 f_20@@12)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12217_7207_7208#PolymorphicMapType_12217| ExhaleHeap@@10) o2_4@@6 f_20@@12))
))) (forall ((o2_4@@7 T@Ref) (f_20@@13 T@Field_18478_645) ) (!  (=> (select (|PolymorphicMapType_12766_12277_645#PolymorphicMapType_12766| (select (|PolymorphicMapType_12217_7525_35406#PolymorphicMapType_12217| Heap@@11) null (WandMaskField_7525 pm_f_4@@2))) o2_4@@7 f_20@@13) (= (select (|PolymorphicMapType_12217_7525_645#PolymorphicMapType_12217| Heap@@11) o2_4@@7 f_20@@13) (select (|PolymorphicMapType_12217_7525_645#PolymorphicMapType_12217| ExhaleHeap@@10) o2_4@@7 f_20@@13)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12217_7525_645#PolymorphicMapType_12217| ExhaleHeap@@10) o2_4@@7 f_20@@13))
))) (forall ((o2_4@@8 T@Ref) (f_20@@14 T@Field_18525_3394) ) (!  (=> (select (|PolymorphicMapType_12766_12277_3394#PolymorphicMapType_12766| (select (|PolymorphicMapType_12217_7525_35406#PolymorphicMapType_12217| Heap@@11) null (WandMaskField_7525 pm_f_4@@2))) o2_4@@8 f_20@@14) (= (select (|PolymorphicMapType_12217_7528_3394#PolymorphicMapType_12217| Heap@@11) o2_4@@8 f_20@@14) (select (|PolymorphicMapType_12217_7528_3394#PolymorphicMapType_12217| ExhaleHeap@@10) o2_4@@8 f_20@@14)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12217_7528_3394#PolymorphicMapType_12217| ExhaleHeap@@10) o2_4@@8 f_20@@14))
))) (forall ((o2_4@@9 T@Ref) (f_20@@15 T@Field_7525_35229) ) (!  (=> (select (|PolymorphicMapType_12766_12277_35229#PolymorphicMapType_12766| (select (|PolymorphicMapType_12217_7525_35406#PolymorphicMapType_12217| Heap@@11) null (WandMaskField_7525 pm_f_4@@2))) o2_4@@9 f_20@@15) (= (select (|PolymorphicMapType_12217_12277_35229#PolymorphicMapType_12217| Heap@@11) o2_4@@9 f_20@@15) (select (|PolymorphicMapType_12217_12277_35229#PolymorphicMapType_12217| ExhaleHeap@@10) o2_4@@9 f_20@@15)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12217_12277_35229#PolymorphicMapType_12217| ExhaleHeap@@10) o2_4@@9 f_20@@15))
))) (forall ((o2_4@@10 T@Ref) (f_20@@16 T@Field_7525_35362) ) (!  (=> (select (|PolymorphicMapType_12766_12277_36738#PolymorphicMapType_12766| (select (|PolymorphicMapType_12217_7525_35406#PolymorphicMapType_12217| Heap@@11) null (WandMaskField_7525 pm_f_4@@2))) o2_4@@10 f_20@@16) (= (select (|PolymorphicMapType_12217_7525_35406#PolymorphicMapType_12217| Heap@@11) o2_4@@10 f_20@@16) (select (|PolymorphicMapType_12217_7525_35406#PolymorphicMapType_12217| ExhaleHeap@@10) o2_4@@10 f_20@@16)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12217_7525_35406#PolymorphicMapType_12217| ExhaleHeap@@10) o2_4@@10 f_20@@16))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@23) (IsWandField_7525_37265 pm_f_4@@2))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_12217) (o_12 T@Ref) (f_21 T@Field_7525_35229) (v T@FrameType) ) (! (succHeap Heap@@12 (PolymorphicMapType_12217 (|PolymorphicMapType_12217_7204_53#PolymorphicMapType_12217| Heap@@12) (|PolymorphicMapType_12217_7207_7208#PolymorphicMapType_12217| Heap@@12) (|PolymorphicMapType_12217_7525_645#PolymorphicMapType_12217| Heap@@12) (|PolymorphicMapType_12217_7528_3394#PolymorphicMapType_12217| Heap@@12) (|PolymorphicMapType_12217_7525_35406#PolymorphicMapType_12217| Heap@@12) (store (|PolymorphicMapType_12217_12277_35229#PolymorphicMapType_12217| Heap@@12) o_12 f_21 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12217 (|PolymorphicMapType_12217_7204_53#PolymorphicMapType_12217| Heap@@12) (|PolymorphicMapType_12217_7207_7208#PolymorphicMapType_12217| Heap@@12) (|PolymorphicMapType_12217_7525_645#PolymorphicMapType_12217| Heap@@12) (|PolymorphicMapType_12217_7528_3394#PolymorphicMapType_12217| Heap@@12) (|PolymorphicMapType_12217_7525_35406#PolymorphicMapType_12217| Heap@@12) (store (|PolymorphicMapType_12217_12277_35229#PolymorphicMapType_12217| Heap@@12) o_12 f_21 v)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_12217) (o_12@@0 T@Ref) (f_21@@0 T@Field_7525_35362) (v@@0 T@PolymorphicMapType_12766) ) (! (succHeap Heap@@13 (PolymorphicMapType_12217 (|PolymorphicMapType_12217_7204_53#PolymorphicMapType_12217| Heap@@13) (|PolymorphicMapType_12217_7207_7208#PolymorphicMapType_12217| Heap@@13) (|PolymorphicMapType_12217_7525_645#PolymorphicMapType_12217| Heap@@13) (|PolymorphicMapType_12217_7528_3394#PolymorphicMapType_12217| Heap@@13) (store (|PolymorphicMapType_12217_7525_35406#PolymorphicMapType_12217| Heap@@13) o_12@@0 f_21@@0 v@@0) (|PolymorphicMapType_12217_12277_35229#PolymorphicMapType_12217| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12217 (|PolymorphicMapType_12217_7204_53#PolymorphicMapType_12217| Heap@@13) (|PolymorphicMapType_12217_7207_7208#PolymorphicMapType_12217| Heap@@13) (|PolymorphicMapType_12217_7525_645#PolymorphicMapType_12217| Heap@@13) (|PolymorphicMapType_12217_7528_3394#PolymorphicMapType_12217| Heap@@13) (store (|PolymorphicMapType_12217_7525_35406#PolymorphicMapType_12217| Heap@@13) o_12@@0 f_21@@0 v@@0) (|PolymorphicMapType_12217_12277_35229#PolymorphicMapType_12217| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_12217) (o_12@@1 T@Ref) (f_21@@1 T@Field_18525_3394) (v@@1 Int) ) (! (succHeap Heap@@14 (PolymorphicMapType_12217 (|PolymorphicMapType_12217_7204_53#PolymorphicMapType_12217| Heap@@14) (|PolymorphicMapType_12217_7207_7208#PolymorphicMapType_12217| Heap@@14) (|PolymorphicMapType_12217_7525_645#PolymorphicMapType_12217| Heap@@14) (store (|PolymorphicMapType_12217_7528_3394#PolymorphicMapType_12217| Heap@@14) o_12@@1 f_21@@1 v@@1) (|PolymorphicMapType_12217_7525_35406#PolymorphicMapType_12217| Heap@@14) (|PolymorphicMapType_12217_12277_35229#PolymorphicMapType_12217| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12217 (|PolymorphicMapType_12217_7204_53#PolymorphicMapType_12217| Heap@@14) (|PolymorphicMapType_12217_7207_7208#PolymorphicMapType_12217| Heap@@14) (|PolymorphicMapType_12217_7525_645#PolymorphicMapType_12217| Heap@@14) (store (|PolymorphicMapType_12217_7528_3394#PolymorphicMapType_12217| Heap@@14) o_12@@1 f_21@@1 v@@1) (|PolymorphicMapType_12217_7525_35406#PolymorphicMapType_12217| Heap@@14) (|PolymorphicMapType_12217_12277_35229#PolymorphicMapType_12217| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_12217) (o_12@@2 T@Ref) (f_21@@2 T@Field_18478_645) (v@@2 Real) ) (! (succHeap Heap@@15 (PolymorphicMapType_12217 (|PolymorphicMapType_12217_7204_53#PolymorphicMapType_12217| Heap@@15) (|PolymorphicMapType_12217_7207_7208#PolymorphicMapType_12217| Heap@@15) (store (|PolymorphicMapType_12217_7525_645#PolymorphicMapType_12217| Heap@@15) o_12@@2 f_21@@2 v@@2) (|PolymorphicMapType_12217_7528_3394#PolymorphicMapType_12217| Heap@@15) (|PolymorphicMapType_12217_7525_35406#PolymorphicMapType_12217| Heap@@15) (|PolymorphicMapType_12217_12277_35229#PolymorphicMapType_12217| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12217 (|PolymorphicMapType_12217_7204_53#PolymorphicMapType_12217| Heap@@15) (|PolymorphicMapType_12217_7207_7208#PolymorphicMapType_12217| Heap@@15) (store (|PolymorphicMapType_12217_7525_645#PolymorphicMapType_12217| Heap@@15) o_12@@2 f_21@@2 v@@2) (|PolymorphicMapType_12217_7528_3394#PolymorphicMapType_12217| Heap@@15) (|PolymorphicMapType_12217_7525_35406#PolymorphicMapType_12217| Heap@@15) (|PolymorphicMapType_12217_12277_35229#PolymorphicMapType_12217| Heap@@15)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_12217) (o_12@@3 T@Ref) (f_21@@3 T@Field_12290_12291) (v@@3 T@Ref) ) (! (succHeap Heap@@16 (PolymorphicMapType_12217 (|PolymorphicMapType_12217_7204_53#PolymorphicMapType_12217| Heap@@16) (store (|PolymorphicMapType_12217_7207_7208#PolymorphicMapType_12217| Heap@@16) o_12@@3 f_21@@3 v@@3) (|PolymorphicMapType_12217_7525_645#PolymorphicMapType_12217| Heap@@16) (|PolymorphicMapType_12217_7528_3394#PolymorphicMapType_12217| Heap@@16) (|PolymorphicMapType_12217_7525_35406#PolymorphicMapType_12217| Heap@@16) (|PolymorphicMapType_12217_12277_35229#PolymorphicMapType_12217| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12217 (|PolymorphicMapType_12217_7204_53#PolymorphicMapType_12217| Heap@@16) (store (|PolymorphicMapType_12217_7207_7208#PolymorphicMapType_12217| Heap@@16) o_12@@3 f_21@@3 v@@3) (|PolymorphicMapType_12217_7525_645#PolymorphicMapType_12217| Heap@@16) (|PolymorphicMapType_12217_7528_3394#PolymorphicMapType_12217| Heap@@16) (|PolymorphicMapType_12217_7525_35406#PolymorphicMapType_12217| Heap@@16) (|PolymorphicMapType_12217_12277_35229#PolymorphicMapType_12217| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_12217) (o_12@@4 T@Ref) (f_21@@4 T@Field_12277_53) (v@@4 Bool) ) (! (succHeap Heap@@17 (PolymorphicMapType_12217 (store (|PolymorphicMapType_12217_7204_53#PolymorphicMapType_12217| Heap@@17) o_12@@4 f_21@@4 v@@4) (|PolymorphicMapType_12217_7207_7208#PolymorphicMapType_12217| Heap@@17) (|PolymorphicMapType_12217_7525_645#PolymorphicMapType_12217| Heap@@17) (|PolymorphicMapType_12217_7528_3394#PolymorphicMapType_12217| Heap@@17) (|PolymorphicMapType_12217_7525_35406#PolymorphicMapType_12217| Heap@@17) (|PolymorphicMapType_12217_12277_35229#PolymorphicMapType_12217| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12217 (store (|PolymorphicMapType_12217_7204_53#PolymorphicMapType_12217| Heap@@17) o_12@@4 f_21@@4 v@@4) (|PolymorphicMapType_12217_7207_7208#PolymorphicMapType_12217| Heap@@17) (|PolymorphicMapType_12217_7525_645#PolymorphicMapType_12217| Heap@@17) (|PolymorphicMapType_12217_7528_3394#PolymorphicMapType_12217| Heap@@17) (|PolymorphicMapType_12217_7525_35406#PolymorphicMapType_12217| Heap@@17) (|PolymorphicMapType_12217_12277_35229#PolymorphicMapType_12217| Heap@@17)))
)))
(assert (forall ((a@@1 Int) (b@@0 Int) ) (! (= (<= a@@1 b@@0) (= (|Math#min| a@@1 b@@0) a@@1))
 :qid |stdinbpl.307:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@1 b@@0))
)))
(assert (forall ((a@@2 Int) (b@@1 Int) ) (! (= (<= b@@1 a@@2) (= (|Math#min| a@@2 b@@1) b@@1))
 :qid |stdinbpl.308:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@2 b@@1))
)))
(assert (forall ((o_12@@5 T@Ref) (f_19 T@Field_12290_12291) (Heap@@18 T@PolymorphicMapType_12217) ) (!  (=> (select (|PolymorphicMapType_12217_7204_53#PolymorphicMapType_12217| Heap@@18) o_12@@5 $allocated) (select (|PolymorphicMapType_12217_7204_53#PolymorphicMapType_12217| Heap@@18) (select (|PolymorphicMapType_12217_7207_7208#PolymorphicMapType_12217| Heap@@18) o_12@@5 f_19) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_12217_7207_7208#PolymorphicMapType_12217| Heap@@18) o_12@@5 f_19))
)))
(assert (forall ((p@@1 T@Field_7525_35229) (v_1@@0 T@FrameType) (q T@Field_7525_35229) (w@@0 T@FrameType) (r T@Field_7525_35229) (u T@FrameType) ) (!  (=> (and (InsidePredicate_12277_12277 p@@1 v_1@@0 q w@@0) (InsidePredicate_12277_12277 q w@@0 r u)) (InsidePredicate_12277_12277 p@@1 v_1@@0 r u))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12277_12277 p@@1 v_1@@0 q w@@0) (InsidePredicate_12277_12277 q w@@0 r u))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (< a@@3 0) (= (|Math#clip| a@@3) 0))
 :qid |stdinbpl.313:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Mask@1 () T@PolymorphicMapType_12238)
(declare-fun Mask@0 () T@PolymorphicMapType_12238)
(declare-fun b_24 () T@Ref)
(declare-fun perm@1 () Real)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_12217)
(declare-fun ExhaleHeap@1 () T@PolymorphicMapType_12217)
(declare-fun QPMask@1 () T@PolymorphicMapType_12238)
(declare-fun a_2 () T@Ref)
(declare-fun perm@0 () Real)
(declare-fun Heap@@19 () T@PolymorphicMapType_12217)
(declare-fun S () (Array T@Ref Bool))
(declare-fun qpRange8 (T@Ref) Bool)
(declare-fun invRecv8 (T@Ref) T@Ref)
(declare-fun QPMask@0 () T@PolymorphicMapType_12238)
(declare-fun s_17 () T@Ref)
(declare-fun s_10 () T@Ref)
(declare-fun qpRange7 (T@Ref) Bool)
(declare-fun invRecv7 (T@Ref) T@Ref)
(set-info :boogie-vc-id test04)
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
 (=> (= (ControlFlow 0 0) 30) (let ((anon14_correct  (=> (and (and (= Mask@1 (PolymorphicMapType_12238 (|PolymorphicMapType_12238_7525_645#PolymorphicMapType_12238| Mask@0) (store (|PolymorphicMapType_12238_7528_3394#PolymorphicMapType_12238| Mask@0) b_24 f_7 (- (select (|PolymorphicMapType_12238_7528_3394#PolymorphicMapType_12238| Mask@0) b_24 f_7) perm@1)) (|PolymorphicMapType_12238_7525_53#PolymorphicMapType_12238| Mask@0) (|PolymorphicMapType_12238_7525_12291#PolymorphicMapType_12238| Mask@0) (|PolymorphicMapType_12238_7525_35229#PolymorphicMapType_12238| Mask@0) (|PolymorphicMapType_12238_7525_40045#PolymorphicMapType_12238| Mask@0))) (IdenticalOnKnownLocations ExhaleHeap@0 ExhaleHeap@1 Mask@1)) (and (state ExhaleHeap@1 Mask@1) (= (ControlFlow 0 11) (- 0 10)))) false)))
(let ((anon21_Else_correct  (=> (and (= perm@1 NoPerm) (= (ControlFlow 0 14) 11)) anon14_correct)))
(let ((anon21_Then_correct  (=> (not (= perm@1 NoPerm)) (and (=> (= (ControlFlow 0 12) (- 0 13)) (<= perm@1 (select (|PolymorphicMapType_12238_7528_3394#PolymorphicMapType_12238| Mask@0) b_24 f_7))) (=> (<= perm@1 (select (|PolymorphicMapType_12238_7528_3394#PolymorphicMapType_12238| Mask@0) b_24 f_7)) (=> (= (ControlFlow 0 12) 11) anon14_correct))))))
(let ((anon12_correct  (=> (= Mask@0 (PolymorphicMapType_12238 (|PolymorphicMapType_12238_7525_645#PolymorphicMapType_12238| QPMask@1) (store (|PolymorphicMapType_12238_7528_3394#PolymorphicMapType_12238| QPMask@1) a_2 f_7 (- (select (|PolymorphicMapType_12238_7528_3394#PolymorphicMapType_12238| QPMask@1) a_2 f_7) perm@0)) (|PolymorphicMapType_12238_7525_53#PolymorphicMapType_12238| QPMask@1) (|PolymorphicMapType_12238_7525_12291#PolymorphicMapType_12238| QPMask@1) (|PolymorphicMapType_12238_7525_35229#PolymorphicMapType_12238| QPMask@1) (|PolymorphicMapType_12238_7525_40045#PolymorphicMapType_12238| QPMask@1))) (=> (and (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@0 Mask@0) (state ExhaleHeap@0 Mask@0)) (and (=> (= (ControlFlow 0 15) (- 0 17)) (HasDirectPerm_7525_645 Mask@0 b_24 k_45)) (=> (HasDirectPerm_7525_645 Mask@0 b_24 k_45) (=> (= perm@1 (select (|PolymorphicMapType_12217_7525_645#PolymorphicMapType_12217| ExhaleHeap@0) b_24 k_45)) (and (=> (= (ControlFlow 0 15) (- 0 16)) (>= perm@1 NoPerm)) (=> (>= perm@1 NoPerm) (and (=> (= (ControlFlow 0 15) 12) anon21_Then_correct) (=> (= (ControlFlow 0 15) 14) anon21_Else_correct)))))))))))
(let ((anon20_Else_correct  (=> (and (= perm@0 NoPerm) (= (ControlFlow 0 20) 15)) anon12_correct)))
(let ((anon20_Then_correct  (=> (not (= perm@0 NoPerm)) (and (=> (= (ControlFlow 0 18) (- 0 19)) (<= perm@0 (select (|PolymorphicMapType_12238_7528_3394#PolymorphicMapType_12238| QPMask@1) a_2 f_7))) (=> (<= perm@0 (select (|PolymorphicMapType_12238_7528_3394#PolymorphicMapType_12238| QPMask@1) a_2 f_7)) (=> (= (ControlFlow 0 18) 15) anon12_correct))))))
(let ((anon18_Else_correct  (and (=> (= (ControlFlow 0 21) (- 0 25)) (forall ((s_5_1 T@Ref) (s_5_2 T@Ref) ) (!  (=> (and (and (and (and (not (= s_5_1 s_5_2)) (and (select S s_5_1) (not (= s_5_1 null)))) (and (select S s_5_2) (not (= s_5_2 null)))) (< NoPerm (select (|PolymorphicMapType_12217_7525_645#PolymorphicMapType_12217| Heap@@19) s_5_1 k_45))) (< NoPerm (select (|PolymorphicMapType_12217_7525_645#PolymorphicMapType_12217| Heap@@19) s_5_2 k_45))) (not (= s_5_1 s_5_2)))
 :qid |stdinbpl.1056:15|
 :skolemid |131|
))) (=> (forall ((s_5_1@@0 T@Ref) (s_5_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= s_5_1@@0 s_5_2@@0)) (and (select S s_5_1@@0) (not (= s_5_1@@0 null)))) (and (select S s_5_2@@0) (not (= s_5_2@@0 null)))) (< NoPerm (select (|PolymorphicMapType_12217_7525_645#PolymorphicMapType_12217| Heap@@19) s_5_1@@0 k_45))) (< NoPerm (select (|PolymorphicMapType_12217_7525_645#PolymorphicMapType_12217| Heap@@19) s_5_2@@0 k_45))) (not (= s_5_1@@0 s_5_2@@0)))
 :qid |stdinbpl.1056:15|
 :skolemid |131|
)) (=> (and (forall ((s_5_1@@1 T@Ref) ) (!  (=> (and (and (select S s_5_1@@1) (not (= s_5_1@@1 null))) (< NoPerm (select (|PolymorphicMapType_12217_7525_645#PolymorphicMapType_12217| Heap@@19) s_5_1@@1 k_45))) (and (qpRange8 s_5_1@@1) (= (invRecv8 s_5_1@@1) s_5_1@@1)))
 :qid |stdinbpl.1062:22|
 :skolemid |132|
 :pattern ( (select (|PolymorphicMapType_12217_7528_3394#PolymorphicMapType_12217| Heap@@19) s_5_1@@1 f_7))
 :pattern ( (select (|PolymorphicMapType_12238_7528_3394#PolymorphicMapType_12238| QPMask@1) s_5_1@@1 f_7))
 :pattern ( (select S s_5_1@@1))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (and (select S (invRecv8 o_9)) (not (= (invRecv8 o_9) null))) (< NoPerm (select (|PolymorphicMapType_12217_7525_645#PolymorphicMapType_12217| Heap@@19) (invRecv8 o_9) k_45))) (qpRange8 o_9)) (= (invRecv8 o_9) o_9))
 :qid |stdinbpl.1066:22|
 :skolemid |133|
 :pattern ( (invRecv8 o_9))
))) (and (=> (= (ControlFlow 0 21) (- 0 24)) (forall ((s_5_1@@2 T@Ref) ) (!  (=> (and (select S s_5_1@@2) (not (= s_5_1@@2 null))) (>= (select (|PolymorphicMapType_12217_7525_645#PolymorphicMapType_12217| Heap@@19) s_5_1@@2 k_45) NoPerm))
 :qid |stdinbpl.1072:15|
 :skolemid |134|
 :pattern ( (select (|PolymorphicMapType_12217_7528_3394#PolymorphicMapType_12217| Heap@@19) s_5_1@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_12238_7528_3394#PolymorphicMapType_12238| QPMask@1) s_5_1@@2 f_7))
 :pattern ( (select S s_5_1@@2))
))) (=> (forall ((s_5_1@@3 T@Ref) ) (!  (=> (and (select S s_5_1@@3) (not (= s_5_1@@3 null))) (>= (select (|PolymorphicMapType_12217_7525_645#PolymorphicMapType_12217| Heap@@19) s_5_1@@3 k_45) NoPerm))
 :qid |stdinbpl.1072:15|
 :skolemid |134|
 :pattern ( (select (|PolymorphicMapType_12217_7528_3394#PolymorphicMapType_12217| Heap@@19) s_5_1@@3 f_7))
 :pattern ( (select (|PolymorphicMapType_12238_7528_3394#PolymorphicMapType_12238| QPMask@1) s_5_1@@3 f_7))
 :pattern ( (select S s_5_1@@3))
)) (=> (and (forall ((s_5_1@@4 T@Ref) ) (!  (=> (and (and (select S s_5_1@@4) (not (= s_5_1@@4 null))) (> (select (|PolymorphicMapType_12217_7525_645#PolymorphicMapType_12217| Heap@@19) s_5_1@@4 k_45) NoPerm)) (not (= s_5_1@@4 null)))
 :qid |stdinbpl.1078:22|
 :skolemid |135|
 :pattern ( (select (|PolymorphicMapType_12217_7528_3394#PolymorphicMapType_12217| Heap@@19) s_5_1@@4 f_7))
 :pattern ( (select (|PolymorphicMapType_12238_7528_3394#PolymorphicMapType_12238| QPMask@1) s_5_1@@4 f_7))
 :pattern ( (select S s_5_1@@4))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (and (select S (invRecv8 o_9@@0)) (not (= (invRecv8 o_9@@0) null))) (< NoPerm (select (|PolymorphicMapType_12217_7525_645#PolymorphicMapType_12217| Heap@@19) (invRecv8 o_9@@0) k_45))) (qpRange8 o_9@@0)) (and (=> (< NoPerm (select (|PolymorphicMapType_12217_7525_645#PolymorphicMapType_12217| Heap@@19) (invRecv8 o_9@@0) k_45)) (= (invRecv8 o_9@@0) o_9@@0)) (= (select (|PolymorphicMapType_12238_7528_3394#PolymorphicMapType_12238| QPMask@1) o_9@@0 f_7) (+ (select (|PolymorphicMapType_12238_7528_3394#PolymorphicMapType_12238| QPMask@0) o_9@@0 f_7) (select (|PolymorphicMapType_12217_7525_645#PolymorphicMapType_12217| Heap@@19) (invRecv8 o_9@@0) k_45))))) (=> (not (and (and (and (select S (invRecv8 o_9@@0)) (not (= (invRecv8 o_9@@0) null))) (< NoPerm (select (|PolymorphicMapType_12217_7525_645#PolymorphicMapType_12217| Heap@@19) (invRecv8 o_9@@0) k_45))) (qpRange8 o_9@@0))) (= (select (|PolymorphicMapType_12238_7528_3394#PolymorphicMapType_12238| QPMask@1) o_9@@0 f_7) (select (|PolymorphicMapType_12238_7528_3394#PolymorphicMapType_12238| QPMask@0) o_9@@0 f_7))))
 :qid |stdinbpl.1084:22|
 :skolemid |136|
 :pattern ( (select (|PolymorphicMapType_12238_7528_3394#PolymorphicMapType_12238| QPMask@1) o_9@@0 f_7))
))) (=> (and (and (and (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_12277_53) ) (!  (=> true (= (select (|PolymorphicMapType_12238_7525_53#PolymorphicMapType_12238| QPMask@0) o_9@@1 f_5) (select (|PolymorphicMapType_12238_7525_53#PolymorphicMapType_12238| QPMask@1) o_9@@1 f_5)))
 :qid |stdinbpl.1088:29|
 :skolemid |137|
 :pattern ( (select (|PolymorphicMapType_12238_7525_53#PolymorphicMapType_12238| QPMask@0) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_12238_7525_53#PolymorphicMapType_12238| QPMask@1) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_12290_12291) ) (!  (=> true (= (select (|PolymorphicMapType_12238_7525_12291#PolymorphicMapType_12238| QPMask@0) o_9@@2 f_5@@0) (select (|PolymorphicMapType_12238_7525_12291#PolymorphicMapType_12238| QPMask@1) o_9@@2 f_5@@0)))
 :qid |stdinbpl.1088:29|
 :skolemid |137|
 :pattern ( (select (|PolymorphicMapType_12238_7525_12291#PolymorphicMapType_12238| QPMask@0) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_12238_7525_12291#PolymorphicMapType_12238| QPMask@1) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_18478_645) ) (!  (=> true (= (select (|PolymorphicMapType_12238_7525_645#PolymorphicMapType_12238| QPMask@0) o_9@@3 f_5@@1) (select (|PolymorphicMapType_12238_7525_645#PolymorphicMapType_12238| QPMask@1) o_9@@3 f_5@@1)))
 :qid |stdinbpl.1088:29|
 :skolemid |137|
 :pattern ( (select (|PolymorphicMapType_12238_7525_645#PolymorphicMapType_12238| QPMask@0) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_12238_7525_645#PolymorphicMapType_12238| QPMask@1) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_18525_3394) ) (!  (=> (not (= f_5@@2 f_7)) (= (select (|PolymorphicMapType_12238_7528_3394#PolymorphicMapType_12238| QPMask@0) o_9@@4 f_5@@2) (select (|PolymorphicMapType_12238_7528_3394#PolymorphicMapType_12238| QPMask@1) o_9@@4 f_5@@2)))
 :qid |stdinbpl.1088:29|
 :skolemid |137|
 :pattern ( (select (|PolymorphicMapType_12238_7528_3394#PolymorphicMapType_12238| QPMask@0) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_12238_7528_3394#PolymorphicMapType_12238| QPMask@1) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_7525_35229) ) (!  (=> true (= (select (|PolymorphicMapType_12238_7525_35229#PolymorphicMapType_12238| QPMask@0) o_9@@5 f_5@@3) (select (|PolymorphicMapType_12238_7525_35229#PolymorphicMapType_12238| QPMask@1) o_9@@5 f_5@@3)))
 :qid |stdinbpl.1088:29|
 :skolemid |137|
 :pattern ( (select (|PolymorphicMapType_12238_7525_35229#PolymorphicMapType_12238| QPMask@0) o_9@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_12238_7525_35229#PolymorphicMapType_12238| QPMask@1) o_9@@5 f_5@@3))
))) (forall ((o_9@@6 T@Ref) (f_5@@4 T@Field_7525_35362) ) (!  (=> true (= (select (|PolymorphicMapType_12238_7525_40045#PolymorphicMapType_12238| QPMask@0) o_9@@6 f_5@@4) (select (|PolymorphicMapType_12238_7525_40045#PolymorphicMapType_12238| QPMask@1) o_9@@6 f_5@@4)))
 :qid |stdinbpl.1088:29|
 :skolemid |137|
 :pattern ( (select (|PolymorphicMapType_12238_7525_40045#PolymorphicMapType_12238| QPMask@0) o_9@@6 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_12238_7525_40045#PolymorphicMapType_12238| QPMask@1) o_9@@6 f_5@@4))
))) (state Heap@@19 QPMask@1)) (and (state Heap@@19 QPMask@1) (select S a_2))) (and (and (select S b_24) (state Heap@@19 QPMask@1)) (and (not (= a_2 b_24)) (state Heap@@19 QPMask@1)))) (and (=> (= (ControlFlow 0 21) (- 0 23)) (HasDirectPerm_7525_645 QPMask@1 a_2 k_45)) (=> (HasDirectPerm_7525_645 QPMask@1 a_2 k_45) (=> (= perm@0 (select (|PolymorphicMapType_12217_7525_645#PolymorphicMapType_12217| Heap@@19) a_2 k_45)) (and (=> (= (ControlFlow 0 21) (- 0 22)) (>= perm@0 NoPerm)) (=> (>= perm@0 NoPerm) (and (=> (= (ControlFlow 0 21) 18) anon20_Then_correct) (=> (= (ControlFlow 0 21) 20) anon20_Else_correct))))))))))))))))
(let ((anon9_correct true))
(let ((anon19_Else_correct  (=> (and (not (and (select S s_17) (not (= s_17 null)))) (= (ControlFlow 0 9) 6)) anon9_correct)))
(let ((anon19_Then_correct  (=> (and (select S s_17) (not (= s_17 null))) (and (=> (= (ControlFlow 0 7) (- 0 8)) (HasDirectPerm_7525_645 QPMask@0 s_17 k_45)) (=> (HasDirectPerm_7525_645 QPMask@0 s_17 k_45) (=> (= (ControlFlow 0 7) 6) anon9_correct))))))
(let ((anon16_Else_correct  (=> (and (forall ((s_3_1 T@Ref) ) (!  (=> (select S s_3_1) (< NoPerm (select (|PolymorphicMapType_12217_7525_645#PolymorphicMapType_12217| Heap@@19) s_3_1 k_45)))
 :qid |stdinbpl.1040:20|
 :skolemid |130|
 :pattern ( (select S s_3_1))
)) (state Heap@@19 QPMask@0)) (and (and (=> (= (ControlFlow 0 26) 21) anon18_Else_correct) (=> (= (ControlFlow 0 26) 7) anon19_Then_correct)) (=> (= (ControlFlow 0 26) 9) anon19_Else_correct)))))
(let ((anon5_correct true))
(let ((anon17_Else_correct  (=> (and (not (select S s_10)) (= (ControlFlow 0 5) 2)) anon5_correct)))
(let ((anon17_Then_correct  (=> (select S s_10) (and (=> (= (ControlFlow 0 3) (- 0 4)) (HasDirectPerm_7525_645 QPMask@0 s_10 k_45)) (=> (HasDirectPerm_7525_645 QPMask@0 s_10 k_45) (=> (= (ControlFlow 0 3) 2) anon5_correct))))))
(let ((anon15_Else_correct  (and (=> (= (ControlFlow 0 27) (- 0 28)) (forall ((s_1_1 T@Ref) (s_1_2 T@Ref) ) (!  (=> (and (and (and (and (not (= s_1_1 s_1_2)) (select S s_1_1)) (select S s_1_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= s_1_1 s_1_2)))
 :qid |stdinbpl.998:15|
 :skolemid |124|
))) (=> (forall ((s_1_1@@0 T@Ref) (s_1_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= s_1_1@@0 s_1_2@@0)) (select S s_1_1@@0)) (select S s_1_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= s_1_1@@0 s_1_2@@0)))
 :qid |stdinbpl.998:15|
 :skolemid |124|
)) (=> (and (and (forall ((s_1_1@@1 T@Ref) ) (!  (=> (and (select S s_1_1@@1) (< NoPerm FullPerm)) (and (qpRange7 s_1_1@@1) (= (invRecv7 s_1_1@@1) s_1_1@@1)))
 :qid |stdinbpl.1004:22|
 :skolemid |125|
 :pattern ( (select (|PolymorphicMapType_12217_7525_645#PolymorphicMapType_12217| Heap@@19) s_1_1@@1 k_45))
 :pattern ( (select (|PolymorphicMapType_12238_7525_645#PolymorphicMapType_12238| QPMask@0) s_1_1@@1 k_45))
 :pattern ( (select S s_1_1@@1))
)) (forall ((o_9@@7 T@Ref) ) (!  (=> (and (and (select S (invRecv7 o_9@@7)) (< NoPerm FullPerm)) (qpRange7 o_9@@7)) (= (invRecv7 o_9@@7) o_9@@7))
 :qid |stdinbpl.1008:22|
 :skolemid |126|
 :pattern ( (invRecv7 o_9@@7))
))) (and (forall ((s_1_1@@2 T@Ref) ) (!  (=> (select S s_1_1@@2) (not (= s_1_1@@2 null)))
 :qid |stdinbpl.1014:22|
 :skolemid |127|
 :pattern ( (select (|PolymorphicMapType_12217_7525_645#PolymorphicMapType_12217| Heap@@19) s_1_1@@2 k_45))
 :pattern ( (select (|PolymorphicMapType_12238_7525_645#PolymorphicMapType_12238| QPMask@0) s_1_1@@2 k_45))
 :pattern ( (select S s_1_1@@2))
)) (forall ((o_9@@8 T@Ref) ) (!  (and (=> (and (and (select S (invRecv7 o_9@@8)) (< NoPerm FullPerm)) (qpRange7 o_9@@8)) (and (=> (< NoPerm FullPerm) (= (invRecv7 o_9@@8) o_9@@8)) (= (select (|PolymorphicMapType_12238_7525_645#PolymorphicMapType_12238| QPMask@0) o_9@@8 k_45) (+ (select (|PolymorphicMapType_12238_7525_645#PolymorphicMapType_12238| ZeroMask) o_9@@8 k_45) FullPerm)))) (=> (not (and (and (select S (invRecv7 o_9@@8)) (< NoPerm FullPerm)) (qpRange7 o_9@@8))) (= (select (|PolymorphicMapType_12238_7525_645#PolymorphicMapType_12238| QPMask@0) o_9@@8 k_45) (select (|PolymorphicMapType_12238_7525_645#PolymorphicMapType_12238| ZeroMask) o_9@@8 k_45))))
 :qid |stdinbpl.1020:22|
 :skolemid |128|
 :pattern ( (select (|PolymorphicMapType_12238_7525_645#PolymorphicMapType_12238| QPMask@0) o_9@@8 k_45))
)))) (=> (and (and (and (and (and (and (forall ((o_9@@9 T@Ref) (f_5@@5 T@Field_12277_53) ) (!  (=> true (= (select (|PolymorphicMapType_12238_7525_53#PolymorphicMapType_12238| ZeroMask) o_9@@9 f_5@@5) (select (|PolymorphicMapType_12238_7525_53#PolymorphicMapType_12238| QPMask@0) o_9@@9 f_5@@5)))
 :qid |stdinbpl.1024:29|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_12238_7525_53#PolymorphicMapType_12238| ZeroMask) o_9@@9 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_12238_7525_53#PolymorphicMapType_12238| QPMask@0) o_9@@9 f_5@@5))
)) (forall ((o_9@@10 T@Ref) (f_5@@6 T@Field_12290_12291) ) (!  (=> true (= (select (|PolymorphicMapType_12238_7525_12291#PolymorphicMapType_12238| ZeroMask) o_9@@10 f_5@@6) (select (|PolymorphicMapType_12238_7525_12291#PolymorphicMapType_12238| QPMask@0) o_9@@10 f_5@@6)))
 :qid |stdinbpl.1024:29|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_12238_7525_12291#PolymorphicMapType_12238| ZeroMask) o_9@@10 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_12238_7525_12291#PolymorphicMapType_12238| QPMask@0) o_9@@10 f_5@@6))
))) (forall ((o_9@@11 T@Ref) (f_5@@7 T@Field_18478_645) ) (!  (=> (not (= f_5@@7 k_45)) (= (select (|PolymorphicMapType_12238_7525_645#PolymorphicMapType_12238| ZeroMask) o_9@@11 f_5@@7) (select (|PolymorphicMapType_12238_7525_645#PolymorphicMapType_12238| QPMask@0) o_9@@11 f_5@@7)))
 :qid |stdinbpl.1024:29|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_12238_7525_645#PolymorphicMapType_12238| ZeroMask) o_9@@11 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_12238_7525_645#PolymorphicMapType_12238| QPMask@0) o_9@@11 f_5@@7))
))) (forall ((o_9@@12 T@Ref) (f_5@@8 T@Field_18525_3394) ) (!  (=> true (= (select (|PolymorphicMapType_12238_7528_3394#PolymorphicMapType_12238| ZeroMask) o_9@@12 f_5@@8) (select (|PolymorphicMapType_12238_7528_3394#PolymorphicMapType_12238| QPMask@0) o_9@@12 f_5@@8)))
 :qid |stdinbpl.1024:29|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_12238_7528_3394#PolymorphicMapType_12238| ZeroMask) o_9@@12 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_12238_7528_3394#PolymorphicMapType_12238| QPMask@0) o_9@@12 f_5@@8))
))) (forall ((o_9@@13 T@Ref) (f_5@@9 T@Field_7525_35229) ) (!  (=> true (= (select (|PolymorphicMapType_12238_7525_35229#PolymorphicMapType_12238| ZeroMask) o_9@@13 f_5@@9) (select (|PolymorphicMapType_12238_7525_35229#PolymorphicMapType_12238| QPMask@0) o_9@@13 f_5@@9)))
 :qid |stdinbpl.1024:29|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_12238_7525_35229#PolymorphicMapType_12238| ZeroMask) o_9@@13 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_12238_7525_35229#PolymorphicMapType_12238| QPMask@0) o_9@@13 f_5@@9))
))) (forall ((o_9@@14 T@Ref) (f_5@@10 T@Field_7525_35362) ) (!  (=> true (= (select (|PolymorphicMapType_12238_7525_40045#PolymorphicMapType_12238| ZeroMask) o_9@@14 f_5@@10) (select (|PolymorphicMapType_12238_7525_40045#PolymorphicMapType_12238| QPMask@0) o_9@@14 f_5@@10)))
 :qid |stdinbpl.1024:29|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_12238_7525_40045#PolymorphicMapType_12238| ZeroMask) o_9@@14 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_12238_7525_40045#PolymorphicMapType_12238| QPMask@0) o_9@@14 f_5@@10))
))) (and (state Heap@@19 QPMask@0) (state Heap@@19 QPMask@0))) (and (and (=> (= (ControlFlow 0 27) 26) anon16_Else_correct) (=> (= (ControlFlow 0 27) 3) anon17_Then_correct)) (=> (= (ControlFlow 0 27) 5) anon17_Else_correct))))))))
(let ((anon15_Then_correct true))
(let ((anon0_correct  (=> (and (and (state Heap@@19 ZeroMask) AssumePermUpperBound) (and (select (|PolymorphicMapType_12217_7204_53#PolymorphicMapType_12217| Heap@@19) a_2 $allocated) (select (|PolymorphicMapType_12217_7204_53#PolymorphicMapType_12217| Heap@@19) b_24 $allocated))) (and (=> (= (ControlFlow 0 29) 1) anon15_Then_correct) (=> (= (ControlFlow 0 29) 27) anon15_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 30) 29) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 11) (- 10))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
