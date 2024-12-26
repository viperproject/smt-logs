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
(declare-sort T@Field_6155_53 0)
(declare-sort T@Field_6168_6169 0)
(declare-sort T@Field_9584_1252 0)
(declare-sort T@Field_3270_17545 0)
(declare-sort T@Field_3270_17412 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_6116 0)) (((PolymorphicMapType_6116 (|PolymorphicMapType_6116_3270_1252#PolymorphicMapType_6116| (Array T@Ref T@Field_9584_1252 Real)) (|PolymorphicMapType_6116_3270_53#PolymorphicMapType_6116| (Array T@Ref T@Field_6155_53 Real)) (|PolymorphicMapType_6116_3270_6169#PolymorphicMapType_6116| (Array T@Ref T@Field_6168_6169 Real)) (|PolymorphicMapType_6116_3270_17412#PolymorphicMapType_6116| (Array T@Ref T@Field_3270_17412 Real)) (|PolymorphicMapType_6116_3270_21667#PolymorphicMapType_6116| (Array T@Ref T@Field_3270_17545 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6644 0)) (((PolymorphicMapType_6644 (|PolymorphicMapType_6644_6155_53#PolymorphicMapType_6644| (Array T@Ref T@Field_6155_53 Bool)) (|PolymorphicMapType_6644_6155_6169#PolymorphicMapType_6644| (Array T@Ref T@Field_6168_6169 Bool)) (|PolymorphicMapType_6644_6155_1252#PolymorphicMapType_6644| (Array T@Ref T@Field_9584_1252 Bool)) (|PolymorphicMapType_6644_6155_17412#PolymorphicMapType_6644| (Array T@Ref T@Field_3270_17412 Bool)) (|PolymorphicMapType_6644_6155_18723#PolymorphicMapType_6644| (Array T@Ref T@Field_3270_17545 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6095 0)) (((PolymorphicMapType_6095 (|PolymorphicMapType_6095_3142_53#PolymorphicMapType_6095| (Array T@Ref T@Field_6155_53 Bool)) (|PolymorphicMapType_6095_3145_3146#PolymorphicMapType_6095| (Array T@Ref T@Field_6168_6169 T@Ref)) (|PolymorphicMapType_6095_3270_1252#PolymorphicMapType_6095| (Array T@Ref T@Field_9584_1252 Int)) (|PolymorphicMapType_6095_3270_17589#PolymorphicMapType_6095| (Array T@Ref T@Field_3270_17545 T@PolymorphicMapType_6644)) (|PolymorphicMapType_6095_6155_17412#PolymorphicMapType_6095| (Array T@Ref T@Field_3270_17412 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_6155_53)
(declare-fun f_7 () T@Field_9584_1252)
(declare-fun succHeap (T@PolymorphicMapType_6095 T@PolymorphicMapType_6095) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_6095 T@PolymorphicMapType_6095) Bool)
(declare-fun state (T@PolymorphicMapType_6095 T@PolymorphicMapType_6116) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_6116) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_6644)
(declare-fun |interp'| (T@PolymorphicMapType_6095 Int) Int)
(declare-fun dummyFunction_1435 (Int) Bool)
(declare-fun |interp#triggerStateless| (Int) Int)
(declare-fun |uninterp'| (T@PolymorphicMapType_6095 Int) Int)
(declare-fun |uninterp#triggerStateless| (Int) Int)
(declare-fun |heapDep'| (T@PolymorphicMapType_6095 T@Ref) Int)
(declare-fun |heapDep#triggerStateless| (T@Ref) Int)
(declare-fun |heapDep2'| (T@PolymorphicMapType_6095 T@Ref) Int)
(declare-fun |heapDep2#triggerStateless| (T@Ref) Int)
(declare-fun |heapDepUnint'| (T@PolymorphicMapType_6095 T@Ref) Int)
(declare-fun |heapDepUnint#triggerStateless| (T@Ref) Int)
(declare-fun interp (T@PolymorphicMapType_6095 Int) Int)
(declare-fun uninterp (T@PolymorphicMapType_6095 Int) Int)
(declare-fun heapDep (T@PolymorphicMapType_6095 T@Ref) Int)
(declare-fun heapDep2 (T@PolymorphicMapType_6095 T@Ref) Int)
(declare-fun heapDepUnint (T@PolymorphicMapType_6095 T@Ref) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_6095 T@PolymorphicMapType_6095 T@PolymorphicMapType_6116) Bool)
(declare-fun IsPredicateField_3270_17503 (T@Field_3270_17412) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3270 (T@Field_3270_17412) T@Field_3270_17545)
(declare-fun HasDirectPerm_3270_17476 (T@PolymorphicMapType_6116 T@Ref T@Field_3270_17412) Bool)
(declare-fun IsWandField_3270_19250 (T@Field_3270_17412) Bool)
(declare-fun WandMaskField_3270 (T@Field_3270_17412) T@Field_3270_17545)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun dfunc (Int) Int)
(declare-fun dummyHeap () T@PolymorphicMapType_6095)
(declare-fun dfunc2 (Int) Int)
(declare-fun |heapDepUnint#trigger| (T@FrameType T@Ref) Bool)
(declare-fun FrameFragment_1252 (Int) T@FrameType)
(declare-fun ZeroMask () T@PolymorphicMapType_6116)
(declare-fun InsidePredicate_6155_6155 (T@Field_3270_17412 T@FrameType T@Field_3270_17412 T@FrameType) Bool)
(declare-fun IsPredicateField_3270_1252 (T@Field_9584_1252) Bool)
(declare-fun IsWandField_3270_1252 (T@Field_9584_1252) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3270_22796 (T@Field_3270_17545) Bool)
(declare-fun IsWandField_3270_22812 (T@Field_3270_17545) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3270_6169 (T@Field_6168_6169) Bool)
(declare-fun IsWandField_3270_6169 (T@Field_6168_6169) Bool)
(declare-fun IsPredicateField_3270_53 (T@Field_6155_53) Bool)
(declare-fun IsWandField_3270_53 (T@Field_6155_53) Bool)
(declare-fun HasDirectPerm_3270_23250 (T@PolymorphicMapType_6116 T@Ref T@Field_3270_17545) Bool)
(declare-fun HasDirectPerm_3270_6169 (T@PolymorphicMapType_6116 T@Ref T@Field_6168_6169) Bool)
(declare-fun HasDirectPerm_3270_53 (T@PolymorphicMapType_6116 T@Ref T@Field_6155_53) Bool)
(declare-fun HasDirectPerm_3270_1252 (T@PolymorphicMapType_6116 T@Ref T@Field_9584_1252) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_6116 T@PolymorphicMapType_6116 T@PolymorphicMapType_6116) Bool)
(declare-fun |heapDep#frame| (T@FrameType T@Ref) Int)
(declare-fun |heapDep2#frame| (T@FrameType T@Ref) Int)
(declare-fun |heapDepUnint#frame| (T@FrameType T@Ref) Int)
(declare-fun |interp#frame| (T@FrameType Int) Int)
(declare-fun |uninterp#frame| (T@FrameType Int) Int)
(declare-fun |uninterp#trigger| (T@FrameType Int) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_6095) (Heap1 T@PolymorphicMapType_6095) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_6095) (Mask T@PolymorphicMapType_6116) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_6095) (Heap1@@0 T@PolymorphicMapType_6095) (Heap2 T@PolymorphicMapType_6095) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_3270_17545) ) (!  (not (select (|PolymorphicMapType_6644_6155_18723#PolymorphicMapType_6644| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6644_6155_18723#PolymorphicMapType_6644| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_3270_17412) ) (!  (not (select (|PolymorphicMapType_6644_6155_17412#PolymorphicMapType_6644| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6644_6155_17412#PolymorphicMapType_6644| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_9584_1252) ) (!  (not (select (|PolymorphicMapType_6644_6155_1252#PolymorphicMapType_6644| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6644_6155_1252#PolymorphicMapType_6644| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_6168_6169) ) (!  (not (select (|PolymorphicMapType_6644_6155_6169#PolymorphicMapType_6644| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6644_6155_6169#PolymorphicMapType_6644| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_6155_53) ) (!  (not (select (|PolymorphicMapType_6644_6155_53#PolymorphicMapType_6644| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6644_6155_53#PolymorphicMapType_6644| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_6095) (i Int) ) (! (dummyFunction_1435 (|interp#triggerStateless| i))
 :qid |stdinbpl.227:15|
 :skolemid |25|
 :pattern ( (|interp'| Heap@@0 i))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_6095) (i@@0 Int) ) (! (dummyFunction_1435 (|uninterp#triggerStateless| i@@0))
 :qid |stdinbpl.277:15|
 :skolemid |29|
 :pattern ( (|uninterp'| Heap@@1 i@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_6095) (r_1 T@Ref) ) (! (dummyFunction_1435 (|heapDep#triggerStateless| r_1))
 :qid |stdinbpl.328:15|
 :skolemid |33|
 :pattern ( (|heapDep'| Heap@@2 r_1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_6095) (r_1@@0 T@Ref) ) (! (dummyFunction_1435 (|heapDep2#triggerStateless| r_1@@0))
 :qid |stdinbpl.393:15|
 :skolemid |37|
 :pattern ( (|heapDep2'| Heap@@3 r_1@@0))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_6095) (r_1@@1 T@Ref) ) (! (dummyFunction_1435 (|heapDepUnint#triggerStateless| r_1@@1))
 :qid |stdinbpl.487:15|
 :skolemid |41|
 :pattern ( (|heapDepUnint'| Heap@@4 r_1@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_6095) (i@@1 Int) ) (!  (and (= (interp Heap@@5 i@@1) (|interp'| Heap@@5 i@@1)) (dummyFunction_1435 (|interp#triggerStateless| i@@1)))
 :qid |stdinbpl.223:15|
 :skolemid |24|
 :pattern ( (interp Heap@@5 i@@1))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_6095) (i@@2 Int) ) (!  (and (= (uninterp Heap@@6 i@@2) (|uninterp'| Heap@@6 i@@2)) (dummyFunction_1435 (|uninterp#triggerStateless| i@@2)))
 :qid |stdinbpl.273:15|
 :skolemid |28|
 :pattern ( (uninterp Heap@@6 i@@2))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_6095) (r_1@@2 T@Ref) ) (!  (and (= (heapDep Heap@@7 r_1@@2) (|heapDep'| Heap@@7 r_1@@2)) (dummyFunction_1435 (|heapDep#triggerStateless| r_1@@2)))
 :qid |stdinbpl.324:15|
 :skolemid |32|
 :pattern ( (heapDep Heap@@7 r_1@@2))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_6095) (r_1@@3 T@Ref) ) (!  (and (= (heapDep2 Heap@@8 r_1@@3) (|heapDep2'| Heap@@8 r_1@@3)) (dummyFunction_1435 (|heapDep2#triggerStateless| r_1@@3)))
 :qid |stdinbpl.389:15|
 :skolemid |36|
 :pattern ( (heapDep2 Heap@@8 r_1@@3))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_6095) (r_1@@4 T@Ref) ) (!  (and (= (heapDepUnint Heap@@9 r_1@@4) (|heapDepUnint'| Heap@@9 r_1@@4)) (dummyFunction_1435 (|heapDepUnint#triggerStateless| r_1@@4)))
 :qid |stdinbpl.483:15|
 :skolemid |40|
 :pattern ( (heapDepUnint Heap@@9 r_1@@4))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_6095) (ExhaleHeap T@PolymorphicMapType_6095) (Mask@@0 T@PolymorphicMapType_6116) (pm_f T@Field_3270_17412) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_3270_17476 Mask@@0 null pm_f) (IsPredicateField_3270_17503 pm_f)) (= (select (|PolymorphicMapType_6095_3270_17589#PolymorphicMapType_6095| Heap@@10) null (PredicateMaskField_3270 pm_f)) (select (|PolymorphicMapType_6095_3270_17589#PolymorphicMapType_6095| ExhaleHeap) null (PredicateMaskField_3270 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap Mask@@0) (IsPredicateField_3270_17503 pm_f) (select (|PolymorphicMapType_6095_3270_17589#PolymorphicMapType_6095| ExhaleHeap) null (PredicateMaskField_3270 pm_f)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_6095) (ExhaleHeap@@0 T@PolymorphicMapType_6095) (Mask@@1 T@PolymorphicMapType_6116) (pm_f@@0 T@Field_3270_17412) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_3270_17476 Mask@@1 null pm_f@@0) (IsWandField_3270_19250 pm_f@@0)) (= (select (|PolymorphicMapType_6095_3270_17589#PolymorphicMapType_6095| Heap@@11) null (WandMaskField_3270 pm_f@@0)) (select (|PolymorphicMapType_6095_3270_17589#PolymorphicMapType_6095| ExhaleHeap@@0) null (WandMaskField_3270 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@0 Mask@@1) (IsWandField_3270_19250 pm_f@@0) (select (|PolymorphicMapType_6095_3270_17589#PolymorphicMapType_6095| ExhaleHeap@@0) null (WandMaskField_3270 pm_f@@0)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_6095) (Mask@@2 T@PolymorphicMapType_6116) (r_1@@5 T@Ref) ) (!  (=> (and (state Heap@@12 Mask@@2) (< AssumeFunctionsAbove 0)) (= (heapDep2 Heap@@12 r_1@@5) (+ (+ (heapDep Heap@@12 r_1@@5) (heapDepUnint Heap@@12 r_1@@5)) 10)))
 :qid |stdinbpl.399:15|
 :skolemid |38|
 :pattern ( (state Heap@@12 Mask@@2) (heapDep2 Heap@@12 r_1@@5))
)))
(assert (forall ((i@@3 Int) ) (! (= (dfunc i@@3) (+ (interp dummyHeap i@@3) 5))
 :qid |stdinbpl.197:15|
 :skolemid |22|
 :pattern ( (dfunc i@@3))
)))
(assert (forall ((i@@4 Int) ) (! (= (dfunc2 i@@4) (+ (uninterp dummyHeap i@@4) 7))
 :qid |stdinbpl.203:15|
 :skolemid |23|
 :pattern ( (dfunc2 i@@4))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_6095) (Mask@@3 T@PolymorphicMapType_6116) (r_1@@6 T@Ref) ) (!  (=> (and (state Heap@@13 Mask@@3) (or (< AssumeFunctionsAbove 4) (|heapDepUnint#trigger| (FrameFragment_1252 (select (|PolymorphicMapType_6095_3270_1252#PolymorphicMapType_6095| Heap@@13) r_1@@6 f_7)) r_1@@6))) (= (|heapDepUnint'| Heap@@13 r_1@@6) (+ (select (|PolymorphicMapType_6095_3270_1252#PolymorphicMapType_6095| Heap@@13) r_1@@6 f_7) 3)))
 :qid |stdinbpl.500:15|
 :skolemid |43|
 :pattern ( (state Heap@@13 Mask@@3) (|heapDepUnint'| Heap@@13 r_1@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@14 T@PolymorphicMapType_6095) (ExhaleHeap@@1 T@PolymorphicMapType_6095) (Mask@@4 T@PolymorphicMapType_6116) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@1 Mask@@4) (=> (select (|PolymorphicMapType_6095_3142_53#PolymorphicMapType_6095| Heap@@14) o_1 $allocated) (select (|PolymorphicMapType_6095_3142_53#PolymorphicMapType_6095| ExhaleHeap@@1) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@1 Mask@@4) (select (|PolymorphicMapType_6095_3142_53#PolymorphicMapType_6095| ExhaleHeap@@1) o_1 $allocated))
)))
(assert (forall ((p T@Field_3270_17412) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_6155_6155 p v_1 p w))
 :qid |stdinbpl.178:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6155_6155 p v_1 p w))
)))
(assert  (not (IsPredicateField_3270_1252 f_7)))
(assert  (not (IsWandField_3270_1252 f_7)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_6095) (ExhaleHeap@@2 T@PolymorphicMapType_6095) (Mask@@5 T@PolymorphicMapType_6116) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@2 Mask@@5) (succHeap Heap@@15 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@2 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_6116) (o_2@@4 T@Ref) (f_4@@4 T@Field_3270_17545) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_6116_3270_21667#PolymorphicMapType_6116| Mask@@6) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_3270_22796 f_4@@4))) (not (IsWandField_3270_22812 f_4@@4))) (<= (select (|PolymorphicMapType_6116_3270_21667#PolymorphicMapType_6116| Mask@@6) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_6116_3270_21667#PolymorphicMapType_6116| Mask@@6) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_6116) (o_2@@5 T@Ref) (f_4@@5 T@Field_3270_17412) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_6116_3270_17412#PolymorphicMapType_6116| Mask@@7) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_3270_17503 f_4@@5))) (not (IsWandField_3270_19250 f_4@@5))) (<= (select (|PolymorphicMapType_6116_3270_17412#PolymorphicMapType_6116| Mask@@7) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_6116_3270_17412#PolymorphicMapType_6116| Mask@@7) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_6116) (o_2@@6 T@Ref) (f_4@@6 T@Field_6168_6169) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_6116_3270_6169#PolymorphicMapType_6116| Mask@@8) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_3270_6169 f_4@@6))) (not (IsWandField_3270_6169 f_4@@6))) (<= (select (|PolymorphicMapType_6116_3270_6169#PolymorphicMapType_6116| Mask@@8) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_6116_3270_6169#PolymorphicMapType_6116| Mask@@8) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_6116) (o_2@@7 T@Ref) (f_4@@7 T@Field_6155_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_6116_3270_53#PolymorphicMapType_6116| Mask@@9) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_3270_53 f_4@@7))) (not (IsWandField_3270_53 f_4@@7))) (<= (select (|PolymorphicMapType_6116_3270_53#PolymorphicMapType_6116| Mask@@9) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_6116_3270_53#PolymorphicMapType_6116| Mask@@9) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_6116) (o_2@@8 T@Ref) (f_4@@8 T@Field_9584_1252) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_6116_3270_1252#PolymorphicMapType_6116| Mask@@10) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_3270_1252 f_4@@8))) (not (IsWandField_3270_1252 f_4@@8))) (<= (select (|PolymorphicMapType_6116_3270_1252#PolymorphicMapType_6116| Mask@@10) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_6116_3270_1252#PolymorphicMapType_6116| Mask@@10) o_2@@8 f_4@@8))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_6095) (Mask@@11 T@PolymorphicMapType_6116) (r_1@@7 T@Ref) ) (!  (=> (and (state Heap@@16 Mask@@11) (< AssumeFunctionsAbove 3)) (= (heapDep Heap@@16 r_1@@7) (+ (select (|PolymorphicMapType_6095_3270_1252#PolymorphicMapType_6095| Heap@@16) r_1@@7 f_7) 2)))
 :qid |stdinbpl.334:15|
 :skolemid |34|
 :pattern ( (state Heap@@16 Mask@@11) (heapDep Heap@@16 r_1@@7))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_6116) (o_2@@9 T@Ref) (f_4@@9 T@Field_3270_17545) ) (! (= (HasDirectPerm_3270_23250 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_6116_3270_21667#PolymorphicMapType_6116| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3270_23250 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_6116) (o_2@@10 T@Ref) (f_4@@10 T@Field_3270_17412) ) (! (= (HasDirectPerm_3270_17476 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_6116_3270_17412#PolymorphicMapType_6116| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3270_17476 Mask@@13 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_6116) (o_2@@11 T@Ref) (f_4@@11 T@Field_6168_6169) ) (! (= (HasDirectPerm_3270_6169 Mask@@14 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_6116_3270_6169#PolymorphicMapType_6116| Mask@@14) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3270_6169 Mask@@14 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_6116) (o_2@@12 T@Ref) (f_4@@12 T@Field_6155_53) ) (! (= (HasDirectPerm_3270_53 Mask@@15 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_6116_3270_53#PolymorphicMapType_6116| Mask@@15) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3270_53 Mask@@15 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_6116) (o_2@@13 T@Ref) (f_4@@13 T@Field_9584_1252) ) (! (= (HasDirectPerm_3270_1252 Mask@@16 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_6116_3270_1252#PolymorphicMapType_6116| Mask@@16) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3270_1252 Mask@@16 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_6095) (ExhaleHeap@@3 T@PolymorphicMapType_6095) (Mask@@17 T@PolymorphicMapType_6116) (pm_f@@1 T@Field_3270_17412) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@3 Mask@@17) (=> (and (HasDirectPerm_3270_17476 Mask@@17 null pm_f@@1) (IsPredicateField_3270_17503 pm_f@@1)) (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_6155_53) ) (!  (=> (select (|PolymorphicMapType_6644_6155_53#PolymorphicMapType_6644| (select (|PolymorphicMapType_6095_3270_17589#PolymorphicMapType_6095| Heap@@17) null (PredicateMaskField_3270 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_6095_3142_53#PolymorphicMapType_6095| Heap@@17) o2 f_2) (select (|PolymorphicMapType_6095_3142_53#PolymorphicMapType_6095| ExhaleHeap@@3) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6095_3142_53#PolymorphicMapType_6095| ExhaleHeap@@3) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_6168_6169) ) (!  (=> (select (|PolymorphicMapType_6644_6155_6169#PolymorphicMapType_6644| (select (|PolymorphicMapType_6095_3270_17589#PolymorphicMapType_6095| Heap@@17) null (PredicateMaskField_3270 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_6095_3145_3146#PolymorphicMapType_6095| Heap@@17) o2@@0 f_2@@0) (select (|PolymorphicMapType_6095_3145_3146#PolymorphicMapType_6095| ExhaleHeap@@3) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6095_3145_3146#PolymorphicMapType_6095| ExhaleHeap@@3) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_9584_1252) ) (!  (=> (select (|PolymorphicMapType_6644_6155_1252#PolymorphicMapType_6644| (select (|PolymorphicMapType_6095_3270_17589#PolymorphicMapType_6095| Heap@@17) null (PredicateMaskField_3270 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_6095_3270_1252#PolymorphicMapType_6095| Heap@@17) o2@@1 f_2@@1) (select (|PolymorphicMapType_6095_3270_1252#PolymorphicMapType_6095| ExhaleHeap@@3) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6095_3270_1252#PolymorphicMapType_6095| ExhaleHeap@@3) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_3270_17412) ) (!  (=> (select (|PolymorphicMapType_6644_6155_17412#PolymorphicMapType_6644| (select (|PolymorphicMapType_6095_3270_17589#PolymorphicMapType_6095| Heap@@17) null (PredicateMaskField_3270 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_6095_6155_17412#PolymorphicMapType_6095| Heap@@17) o2@@2 f_2@@2) (select (|PolymorphicMapType_6095_6155_17412#PolymorphicMapType_6095| ExhaleHeap@@3) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6095_6155_17412#PolymorphicMapType_6095| ExhaleHeap@@3) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_3270_17545) ) (!  (=> (select (|PolymorphicMapType_6644_6155_18723#PolymorphicMapType_6644| (select (|PolymorphicMapType_6095_3270_17589#PolymorphicMapType_6095| Heap@@17) null (PredicateMaskField_3270 pm_f@@1))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_6095_3270_17589#PolymorphicMapType_6095| Heap@@17) o2@@3 f_2@@3) (select (|PolymorphicMapType_6095_3270_17589#PolymorphicMapType_6095| ExhaleHeap@@3) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6095_3270_17589#PolymorphicMapType_6095| ExhaleHeap@@3) o2@@3 f_2@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@3 Mask@@17) (IsPredicateField_3270_17503 pm_f@@1))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_6095) (ExhaleHeap@@4 T@PolymorphicMapType_6095) (Mask@@18 T@PolymorphicMapType_6116) (pm_f@@2 T@Field_3270_17412) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@4 Mask@@18) (=> (and (HasDirectPerm_3270_17476 Mask@@18 null pm_f@@2) (IsWandField_3270_19250 pm_f@@2)) (and (and (and (and (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_6155_53) ) (!  (=> (select (|PolymorphicMapType_6644_6155_53#PolymorphicMapType_6644| (select (|PolymorphicMapType_6095_3270_17589#PolymorphicMapType_6095| Heap@@18) null (WandMaskField_3270 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_6095_3142_53#PolymorphicMapType_6095| Heap@@18) o2@@4 f_2@@4) (select (|PolymorphicMapType_6095_3142_53#PolymorphicMapType_6095| ExhaleHeap@@4) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6095_3142_53#PolymorphicMapType_6095| ExhaleHeap@@4) o2@@4 f_2@@4))
)) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_6168_6169) ) (!  (=> (select (|PolymorphicMapType_6644_6155_6169#PolymorphicMapType_6644| (select (|PolymorphicMapType_6095_3270_17589#PolymorphicMapType_6095| Heap@@18) null (WandMaskField_3270 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_6095_3145_3146#PolymorphicMapType_6095| Heap@@18) o2@@5 f_2@@5) (select (|PolymorphicMapType_6095_3145_3146#PolymorphicMapType_6095| ExhaleHeap@@4) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6095_3145_3146#PolymorphicMapType_6095| ExhaleHeap@@4) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_9584_1252) ) (!  (=> (select (|PolymorphicMapType_6644_6155_1252#PolymorphicMapType_6644| (select (|PolymorphicMapType_6095_3270_17589#PolymorphicMapType_6095| Heap@@18) null (WandMaskField_3270 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_6095_3270_1252#PolymorphicMapType_6095| Heap@@18) o2@@6 f_2@@6) (select (|PolymorphicMapType_6095_3270_1252#PolymorphicMapType_6095| ExhaleHeap@@4) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6095_3270_1252#PolymorphicMapType_6095| ExhaleHeap@@4) o2@@6 f_2@@6))
))) (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_3270_17412) ) (!  (=> (select (|PolymorphicMapType_6644_6155_17412#PolymorphicMapType_6644| (select (|PolymorphicMapType_6095_3270_17589#PolymorphicMapType_6095| Heap@@18) null (WandMaskField_3270 pm_f@@2))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_6095_6155_17412#PolymorphicMapType_6095| Heap@@18) o2@@7 f_2@@7) (select (|PolymorphicMapType_6095_6155_17412#PolymorphicMapType_6095| ExhaleHeap@@4) o2@@7 f_2@@7)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6095_6155_17412#PolymorphicMapType_6095| ExhaleHeap@@4) o2@@7 f_2@@7))
))) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_3270_17545) ) (!  (=> (select (|PolymorphicMapType_6644_6155_18723#PolymorphicMapType_6644| (select (|PolymorphicMapType_6095_3270_17589#PolymorphicMapType_6095| Heap@@18) null (WandMaskField_3270 pm_f@@2))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_6095_3270_17589#PolymorphicMapType_6095| Heap@@18) o2@@8 f_2@@8) (select (|PolymorphicMapType_6095_3270_17589#PolymorphicMapType_6095| ExhaleHeap@@4) o2@@8 f_2@@8)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6095_3270_17589#PolymorphicMapType_6095| ExhaleHeap@@4) o2@@8 f_2@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@4 Mask@@18) (IsWandField_3270_19250 pm_f@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.166:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_6095) (ExhaleHeap@@5 T@PolymorphicMapType_6095) (Mask@@19 T@PolymorphicMapType_6116) (o_1@@0 T@Ref) (f_2@@9 T@Field_3270_17545) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@5 Mask@@19) (=> (HasDirectPerm_3270_23250 Mask@@19 o_1@@0 f_2@@9) (= (select (|PolymorphicMapType_6095_3270_17589#PolymorphicMapType_6095| Heap@@19) o_1@@0 f_2@@9) (select (|PolymorphicMapType_6095_3270_17589#PolymorphicMapType_6095| ExhaleHeap@@5) o_1@@0 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@5 Mask@@19) (select (|PolymorphicMapType_6095_3270_17589#PolymorphicMapType_6095| ExhaleHeap@@5) o_1@@0 f_2@@9))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_6095) (ExhaleHeap@@6 T@PolymorphicMapType_6095) (Mask@@20 T@PolymorphicMapType_6116) (o_1@@1 T@Ref) (f_2@@10 T@Field_3270_17412) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@6 Mask@@20) (=> (HasDirectPerm_3270_17476 Mask@@20 o_1@@1 f_2@@10) (= (select (|PolymorphicMapType_6095_6155_17412#PolymorphicMapType_6095| Heap@@20) o_1@@1 f_2@@10) (select (|PolymorphicMapType_6095_6155_17412#PolymorphicMapType_6095| ExhaleHeap@@6) o_1@@1 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@6 Mask@@20) (select (|PolymorphicMapType_6095_6155_17412#PolymorphicMapType_6095| ExhaleHeap@@6) o_1@@1 f_2@@10))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_6095) (ExhaleHeap@@7 T@PolymorphicMapType_6095) (Mask@@21 T@PolymorphicMapType_6116) (o_1@@2 T@Ref) (f_2@@11 T@Field_6168_6169) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@7 Mask@@21) (=> (HasDirectPerm_3270_6169 Mask@@21 o_1@@2 f_2@@11) (= (select (|PolymorphicMapType_6095_3145_3146#PolymorphicMapType_6095| Heap@@21) o_1@@2 f_2@@11) (select (|PolymorphicMapType_6095_3145_3146#PolymorphicMapType_6095| ExhaleHeap@@7) o_1@@2 f_2@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@7 Mask@@21) (select (|PolymorphicMapType_6095_3145_3146#PolymorphicMapType_6095| ExhaleHeap@@7) o_1@@2 f_2@@11))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_6095) (ExhaleHeap@@8 T@PolymorphicMapType_6095) (Mask@@22 T@PolymorphicMapType_6116) (o_1@@3 T@Ref) (f_2@@12 T@Field_6155_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@8 Mask@@22) (=> (HasDirectPerm_3270_53 Mask@@22 o_1@@3 f_2@@12) (= (select (|PolymorphicMapType_6095_3142_53#PolymorphicMapType_6095| Heap@@22) o_1@@3 f_2@@12) (select (|PolymorphicMapType_6095_3142_53#PolymorphicMapType_6095| ExhaleHeap@@8) o_1@@3 f_2@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@8 Mask@@22) (select (|PolymorphicMapType_6095_3142_53#PolymorphicMapType_6095| ExhaleHeap@@8) o_1@@3 f_2@@12))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_6095) (ExhaleHeap@@9 T@PolymorphicMapType_6095) (Mask@@23 T@PolymorphicMapType_6116) (o_1@@4 T@Ref) (f_2@@13 T@Field_9584_1252) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@9 Mask@@23) (=> (HasDirectPerm_3270_1252 Mask@@23 o_1@@4 f_2@@13) (= (select (|PolymorphicMapType_6095_3270_1252#PolymorphicMapType_6095| Heap@@23) o_1@@4 f_2@@13) (select (|PolymorphicMapType_6095_3270_1252#PolymorphicMapType_6095| ExhaleHeap@@9) o_1@@4 f_2@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@9 Mask@@23) (select (|PolymorphicMapType_6095_3270_1252#PolymorphicMapType_6095| ExhaleHeap@@9) o_1@@4 f_2@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_3270_17545) ) (! (= (select (|PolymorphicMapType_6116_3270_21667#PolymorphicMapType_6116| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6116_3270_21667#PolymorphicMapType_6116| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_3270_17412) ) (! (= (select (|PolymorphicMapType_6116_3270_17412#PolymorphicMapType_6116| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6116_3270_17412#PolymorphicMapType_6116| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_6168_6169) ) (! (= (select (|PolymorphicMapType_6116_3270_6169#PolymorphicMapType_6116| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6116_3270_6169#PolymorphicMapType_6116| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_6155_53) ) (! (= (select (|PolymorphicMapType_6116_3270_53#PolymorphicMapType_6116| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6116_3270_53#PolymorphicMapType_6116| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_9584_1252) ) (! (= (select (|PolymorphicMapType_6116_3270_1252#PolymorphicMapType_6116| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6116_3270_1252#PolymorphicMapType_6116| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_6095) (Mask@@24 T@PolymorphicMapType_6116) (i@@5 Int) ) (!  (=> (and (state Heap@@24 Mask@@24) (< AssumeFunctionsAbove 1)) (= (interp Heap@@24 i@@5) (+ i@@5 1)))
 :qid |stdinbpl.233:15|
 :skolemid |26|
 :pattern ( (state Heap@@24 Mask@@24) (interp Heap@@24 i@@5))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_6116) (SummandMask1 T@PolymorphicMapType_6116) (SummandMask2 T@PolymorphicMapType_6116) (o_2@@19 T@Ref) (f_4@@19 T@Field_3270_17545) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_6116_3270_21667#PolymorphicMapType_6116| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_6116_3270_21667#PolymorphicMapType_6116| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_6116_3270_21667#PolymorphicMapType_6116| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6116_3270_21667#PolymorphicMapType_6116| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6116_3270_21667#PolymorphicMapType_6116| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6116_3270_21667#PolymorphicMapType_6116| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_6116) (SummandMask1@@0 T@PolymorphicMapType_6116) (SummandMask2@@0 T@PolymorphicMapType_6116) (o_2@@20 T@Ref) (f_4@@20 T@Field_3270_17412) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_6116_3270_17412#PolymorphicMapType_6116| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_6116_3270_17412#PolymorphicMapType_6116| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_6116_3270_17412#PolymorphicMapType_6116| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6116_3270_17412#PolymorphicMapType_6116| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6116_3270_17412#PolymorphicMapType_6116| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6116_3270_17412#PolymorphicMapType_6116| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_6116) (SummandMask1@@1 T@PolymorphicMapType_6116) (SummandMask2@@1 T@PolymorphicMapType_6116) (o_2@@21 T@Ref) (f_4@@21 T@Field_6168_6169) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_6116_3270_6169#PolymorphicMapType_6116| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_6116_3270_6169#PolymorphicMapType_6116| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_6116_3270_6169#PolymorphicMapType_6116| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6116_3270_6169#PolymorphicMapType_6116| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6116_3270_6169#PolymorphicMapType_6116| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6116_3270_6169#PolymorphicMapType_6116| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_6116) (SummandMask1@@2 T@PolymorphicMapType_6116) (SummandMask2@@2 T@PolymorphicMapType_6116) (o_2@@22 T@Ref) (f_4@@22 T@Field_6155_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_6116_3270_53#PolymorphicMapType_6116| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_6116_3270_53#PolymorphicMapType_6116| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_6116_3270_53#PolymorphicMapType_6116| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6116_3270_53#PolymorphicMapType_6116| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6116_3270_53#PolymorphicMapType_6116| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6116_3270_53#PolymorphicMapType_6116| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_6116) (SummandMask1@@3 T@PolymorphicMapType_6116) (SummandMask2@@3 T@PolymorphicMapType_6116) (o_2@@23 T@Ref) (f_4@@23 T@Field_9584_1252) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_6116_3270_1252#PolymorphicMapType_6116| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_6116_3270_1252#PolymorphicMapType_6116| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_6116_3270_1252#PolymorphicMapType_6116| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6116_3270_1252#PolymorphicMapType_6116| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6116_3270_1252#PolymorphicMapType_6116| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6116_3270_1252#PolymorphicMapType_6116| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_6095) (Mask@@25 T@PolymorphicMapType_6116) (r_1@@8 T@Ref) ) (!  (=> (state Heap@@25 Mask@@25) (= (|heapDep'| Heap@@25 r_1@@8) (|heapDep#frame| (FrameFragment_1252 (select (|PolymorphicMapType_6095_3270_1252#PolymorphicMapType_6095| Heap@@25) r_1@@8 f_7)) r_1@@8)))
 :qid |stdinbpl.341:15|
 :skolemid |35|
 :pattern ( (state Heap@@25 Mask@@25) (|heapDep'| Heap@@25 r_1@@8))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_6095) (Mask@@26 T@PolymorphicMapType_6116) (r_1@@9 T@Ref) ) (!  (=> (state Heap@@26 Mask@@26) (= (|heapDep2'| Heap@@26 r_1@@9) (|heapDep2#frame| (FrameFragment_1252 (select (|PolymorphicMapType_6095_3270_1252#PolymorphicMapType_6095| Heap@@26) r_1@@9 f_7)) r_1@@9)))
 :qid |stdinbpl.406:15|
 :skolemid |39|
 :pattern ( (state Heap@@26 Mask@@26) (|heapDep2'| Heap@@26 r_1@@9))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_6095) (Mask@@27 T@PolymorphicMapType_6116) (r_1@@10 T@Ref) ) (!  (=> (state Heap@@27 Mask@@27) (= (|heapDepUnint'| Heap@@27 r_1@@10) (|heapDepUnint#frame| (FrameFragment_1252 (select (|PolymorphicMapType_6095_3270_1252#PolymorphicMapType_6095| Heap@@27) r_1@@10 f_7)) r_1@@10)))
 :qid |stdinbpl.494:15|
 :skolemid |42|
 :pattern ( (state Heap@@27 Mask@@27) (|heapDepUnint'| Heap@@27 r_1@@10))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_6095) (Mask@@28 T@PolymorphicMapType_6116) (i@@6 Int) ) (!  (=> (state Heap@@28 Mask@@28) (= (|interp'| Heap@@28 i@@6) (|interp#frame| EmptyFrame i@@6)))
 :qid |stdinbpl.240:15|
 :skolemid |27|
 :pattern ( (state Heap@@28 Mask@@28) (|interp'| Heap@@28 i@@6))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_6095) (Mask@@29 T@PolymorphicMapType_6116) (i@@7 Int) ) (!  (=> (state Heap@@29 Mask@@29) (= (|uninterp'| Heap@@29 i@@7) (|uninterp#frame| EmptyFrame i@@7)))
 :qid |stdinbpl.284:15|
 :skolemid |30|
 :pattern ( (state Heap@@29 Mask@@29) (|uninterp'| Heap@@29 i@@7))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_6095) (Mask@@30 T@PolymorphicMapType_6116) (i@@8 Int) ) (!  (=> (and (state Heap@@30 Mask@@30) (or (< AssumeFunctionsAbove 2) (|uninterp#trigger| EmptyFrame i@@8))) (= (|uninterp'| Heap@@30 i@@8) (+ i@@8 4)))
 :qid |stdinbpl.290:15|
 :skolemid |31|
 :pattern ( (state Heap@@30 Mask@@30) (|uninterp'| Heap@@30 i@@8))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_6095) (o T@Ref) (f_3 T@Field_3270_17412) (v T@FrameType) ) (! (succHeap Heap@@31 (PolymorphicMapType_6095 (|PolymorphicMapType_6095_3142_53#PolymorphicMapType_6095| Heap@@31) (|PolymorphicMapType_6095_3145_3146#PolymorphicMapType_6095| Heap@@31) (|PolymorphicMapType_6095_3270_1252#PolymorphicMapType_6095| Heap@@31) (|PolymorphicMapType_6095_3270_17589#PolymorphicMapType_6095| Heap@@31) (store (|PolymorphicMapType_6095_6155_17412#PolymorphicMapType_6095| Heap@@31) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6095 (|PolymorphicMapType_6095_3142_53#PolymorphicMapType_6095| Heap@@31) (|PolymorphicMapType_6095_3145_3146#PolymorphicMapType_6095| Heap@@31) (|PolymorphicMapType_6095_3270_1252#PolymorphicMapType_6095| Heap@@31) (|PolymorphicMapType_6095_3270_17589#PolymorphicMapType_6095| Heap@@31) (store (|PolymorphicMapType_6095_6155_17412#PolymorphicMapType_6095| Heap@@31) o f_3 v)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_6095) (o@@0 T@Ref) (f_3@@0 T@Field_3270_17545) (v@@0 T@PolymorphicMapType_6644) ) (! (succHeap Heap@@32 (PolymorphicMapType_6095 (|PolymorphicMapType_6095_3142_53#PolymorphicMapType_6095| Heap@@32) (|PolymorphicMapType_6095_3145_3146#PolymorphicMapType_6095| Heap@@32) (|PolymorphicMapType_6095_3270_1252#PolymorphicMapType_6095| Heap@@32) (store (|PolymorphicMapType_6095_3270_17589#PolymorphicMapType_6095| Heap@@32) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_6095_6155_17412#PolymorphicMapType_6095| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6095 (|PolymorphicMapType_6095_3142_53#PolymorphicMapType_6095| Heap@@32) (|PolymorphicMapType_6095_3145_3146#PolymorphicMapType_6095| Heap@@32) (|PolymorphicMapType_6095_3270_1252#PolymorphicMapType_6095| Heap@@32) (store (|PolymorphicMapType_6095_3270_17589#PolymorphicMapType_6095| Heap@@32) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_6095_6155_17412#PolymorphicMapType_6095| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_6095) (o@@1 T@Ref) (f_3@@1 T@Field_9584_1252) (v@@1 Int) ) (! (succHeap Heap@@33 (PolymorphicMapType_6095 (|PolymorphicMapType_6095_3142_53#PolymorphicMapType_6095| Heap@@33) (|PolymorphicMapType_6095_3145_3146#PolymorphicMapType_6095| Heap@@33) (store (|PolymorphicMapType_6095_3270_1252#PolymorphicMapType_6095| Heap@@33) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_6095_3270_17589#PolymorphicMapType_6095| Heap@@33) (|PolymorphicMapType_6095_6155_17412#PolymorphicMapType_6095| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6095 (|PolymorphicMapType_6095_3142_53#PolymorphicMapType_6095| Heap@@33) (|PolymorphicMapType_6095_3145_3146#PolymorphicMapType_6095| Heap@@33) (store (|PolymorphicMapType_6095_3270_1252#PolymorphicMapType_6095| Heap@@33) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_6095_3270_17589#PolymorphicMapType_6095| Heap@@33) (|PolymorphicMapType_6095_6155_17412#PolymorphicMapType_6095| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_6095) (o@@2 T@Ref) (f_3@@2 T@Field_6168_6169) (v@@2 T@Ref) ) (! (succHeap Heap@@34 (PolymorphicMapType_6095 (|PolymorphicMapType_6095_3142_53#PolymorphicMapType_6095| Heap@@34) (store (|PolymorphicMapType_6095_3145_3146#PolymorphicMapType_6095| Heap@@34) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_6095_3270_1252#PolymorphicMapType_6095| Heap@@34) (|PolymorphicMapType_6095_3270_17589#PolymorphicMapType_6095| Heap@@34) (|PolymorphicMapType_6095_6155_17412#PolymorphicMapType_6095| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6095 (|PolymorphicMapType_6095_3142_53#PolymorphicMapType_6095| Heap@@34) (store (|PolymorphicMapType_6095_3145_3146#PolymorphicMapType_6095| Heap@@34) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_6095_3270_1252#PolymorphicMapType_6095| Heap@@34) (|PolymorphicMapType_6095_3270_17589#PolymorphicMapType_6095| Heap@@34) (|PolymorphicMapType_6095_6155_17412#PolymorphicMapType_6095| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_6095) (o@@3 T@Ref) (f_3@@3 T@Field_6155_53) (v@@3 Bool) ) (! (succHeap Heap@@35 (PolymorphicMapType_6095 (store (|PolymorphicMapType_6095_3142_53#PolymorphicMapType_6095| Heap@@35) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_6095_3145_3146#PolymorphicMapType_6095| Heap@@35) (|PolymorphicMapType_6095_3270_1252#PolymorphicMapType_6095| Heap@@35) (|PolymorphicMapType_6095_3270_17589#PolymorphicMapType_6095| Heap@@35) (|PolymorphicMapType_6095_6155_17412#PolymorphicMapType_6095| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6095 (store (|PolymorphicMapType_6095_3142_53#PolymorphicMapType_6095| Heap@@35) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_6095_3145_3146#PolymorphicMapType_6095| Heap@@35) (|PolymorphicMapType_6095_3270_1252#PolymorphicMapType_6095| Heap@@35) (|PolymorphicMapType_6095_3270_17589#PolymorphicMapType_6095| Heap@@35) (|PolymorphicMapType_6095_6155_17412#PolymorphicMapType_6095| Heap@@35)))
)))
(assert (forall ((o@@4 T@Ref) (f T@Field_6168_6169) (Heap@@36 T@PolymorphicMapType_6095) ) (!  (=> (select (|PolymorphicMapType_6095_3142_53#PolymorphicMapType_6095| Heap@@36) o@@4 $allocated) (select (|PolymorphicMapType_6095_3142_53#PolymorphicMapType_6095| Heap@@36) (select (|PolymorphicMapType_6095_3145_3146#PolymorphicMapType_6095| Heap@@36) o@@4 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_6095_3145_3146#PolymorphicMapType_6095| Heap@@36) o@@4 f))
)))
(assert (forall ((p@@1 T@Field_3270_17412) (v_1@@0 T@FrameType) (q T@Field_3270_17412) (w@@0 T@FrameType) (r T@Field_3270_17412) (u T@FrameType) ) (!  (=> (and (InsidePredicate_6155_6155 p@@1 v_1@@0 q w@@0) (InsidePredicate_6155_6155 q w@@0 r u)) (InsidePredicate_6155_6155 p@@1 v_1@@0 r u))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6155_6155 p@@1 v_1@@0 q w@@0) (InsidePredicate_6155_6155 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@37 () T@PolymorphicMapType_6095)
(declare-fun r_1@@11 () T@Ref)
(declare-fun Mask@0 () T@PolymorphicMapType_6116)
(set-info :boogie-vc-id |heapDep#definedness|)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (state Heap@@37 ZeroMask) (=> (and (and (and (not AssumePermUpperBound) (select (|PolymorphicMapType_6095_3142_53#PolymorphicMapType_6095| Heap@@37) r_1@@11 $allocated)) (and (= AssumeFunctionsAbove 3) (not (= r_1@@11 null)))) (and (and (= Mask@0 (PolymorphicMapType_6116 (store (|PolymorphicMapType_6116_3270_1252#PolymorphicMapType_6116| ZeroMask) r_1@@11 f_7 (+ (select (|PolymorphicMapType_6116_3270_1252#PolymorphicMapType_6116| ZeroMask) r_1@@11 f_7) FullPerm)) (|PolymorphicMapType_6116_3270_53#PolymorphicMapType_6116| ZeroMask) (|PolymorphicMapType_6116_3270_6169#PolymorphicMapType_6116| ZeroMask) (|PolymorphicMapType_6116_3270_17412#PolymorphicMapType_6116| ZeroMask) (|PolymorphicMapType_6116_3270_21667#PolymorphicMapType_6116| ZeroMask))) (state Heap@@37 Mask@0)) (and (state Heap@@37 Mask@0) (= (ControlFlow 0 2) (- 0 1))))) (HasDirectPerm_3270_1252 Mask@0 r_1@@11 f_7)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
