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
(declare-sort T@Field_11525_53 0)
(declare-sort T@Field_11538_11539 0)
(declare-sort T@Field_14982_1545 0)
(declare-sort T@Field_7946_34394 0)
(declare-sort T@Field_7946_34261 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_11486 0)) (((PolymorphicMapType_11486 (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| (Array T@Ref T@Field_14982_1545 Real)) (|PolymorphicMapType_11486_7946_53#PolymorphicMapType_11486| (Array T@Ref T@Field_11525_53 Real)) (|PolymorphicMapType_11486_7946_11539#PolymorphicMapType_11486| (Array T@Ref T@Field_11538_11539 Real)) (|PolymorphicMapType_11486_7946_34261#PolymorphicMapType_11486| (Array T@Ref T@Field_7946_34261 Real)) (|PolymorphicMapType_11486_7946_38516#PolymorphicMapType_11486| (Array T@Ref T@Field_7946_34394 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_12014 0)) (((PolymorphicMapType_12014 (|PolymorphicMapType_12014_11525_53#PolymorphicMapType_12014| (Array T@Ref T@Field_11525_53 Bool)) (|PolymorphicMapType_12014_11525_11539#PolymorphicMapType_12014| (Array T@Ref T@Field_11538_11539 Bool)) (|PolymorphicMapType_12014_11525_1545#PolymorphicMapType_12014| (Array T@Ref T@Field_14982_1545 Bool)) (|PolymorphicMapType_12014_11525_34261#PolymorphicMapType_12014| (Array T@Ref T@Field_7946_34261 Bool)) (|PolymorphicMapType_12014_11525_35572#PolymorphicMapType_12014| (Array T@Ref T@Field_7946_34394 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_11465 0)) (((PolymorphicMapType_11465 (|PolymorphicMapType_11465_7784_53#PolymorphicMapType_11465| (Array T@Ref T@Field_11525_53 Bool)) (|PolymorphicMapType_11465_7787_7788#PolymorphicMapType_11465| (Array T@Ref T@Field_11538_11539 T@Ref)) (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| (Array T@Ref T@Field_14982_1545 Int)) (|PolymorphicMapType_11465_7946_34438#PolymorphicMapType_11465| (Array T@Ref T@Field_7946_34394 T@PolymorphicMapType_12014)) (|PolymorphicMapType_11465_11525_34261#PolymorphicMapType_11465| (Array T@Ref T@Field_7946_34261 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_11525_53)
(declare-fun val () T@Field_14982_1545)
(declare-fun succHeap (T@PolymorphicMapType_11465 T@PolymorphicMapType_11465) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_11465 T@PolymorphicMapType_11465) Bool)
(declare-fun state (T@PolymorphicMapType_11465 T@PolymorphicMapType_11486) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_11486) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_12014)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_11465 T@PolymorphicMapType_11465 T@PolymorphicMapType_11486) Bool)
(declare-fun IsPredicateField_7946_34352 (T@Field_7946_34261) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_7946 (T@Field_7946_34261) T@Field_7946_34394)
(declare-fun HasDirectPerm_7946_34325 (T@PolymorphicMapType_11486 T@Ref T@Field_7946_34261) Bool)
(declare-fun IsWandField_7946_36099 (T@Field_7946_34261) Bool)
(declare-fun WandMaskField_7946 (T@Field_7946_34261) T@Field_7946_34394)
(declare-fun dummyHeap () T@PolymorphicMapType_11465)
(declare-fun ZeroMask () T@PolymorphicMapType_11486)
(declare-fun InsidePredicate_11525_11525 (T@Field_7946_34261 T@FrameType T@Field_7946_34261 T@FrameType) Bool)
(declare-fun IsPredicateField_7946_1545 (T@Field_14982_1545) Bool)
(declare-fun IsWandField_7946_1545 (T@Field_14982_1545) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_7946_39645 (T@Field_7946_34394) Bool)
(declare-fun IsWandField_7946_39661 (T@Field_7946_34394) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_7946_11539 (T@Field_11538_11539) Bool)
(declare-fun IsWandField_7946_11539 (T@Field_11538_11539) Bool)
(declare-fun IsPredicateField_7946_53 (T@Field_11525_53) Bool)
(declare-fun IsWandField_7946_53 (T@Field_11525_53) Bool)
(declare-fun HasDirectPerm_7946_40099 (T@PolymorphicMapType_11486 T@Ref T@Field_7946_34394) Bool)
(declare-fun HasDirectPerm_7946_11539 (T@PolymorphicMapType_11486 T@Ref T@Field_11538_11539) Bool)
(declare-fun HasDirectPerm_7946_53 (T@PolymorphicMapType_11486 T@Ref T@Field_11525_53) Bool)
(declare-fun HasDirectPerm_7946_1545 (T@PolymorphicMapType_11486 T@Ref T@Field_14982_1545) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_11486 T@PolymorphicMapType_11486 T@PolymorphicMapType_11486) Bool)
(declare-sort T@IArrayDomainType 0)
(declare-fun len (T@IArrayDomainType) Int)
(declare-fun loc (T@IArrayDomainType Int) T@Ref)
(declare-fun first_1 (T@Ref) T@IArrayDomainType)
(declare-fun second_1 (T@Ref) Int)
(assert (forall ((Heap0 T@PolymorphicMapType_11465) (Heap1 T@PolymorphicMapType_11465) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_11465) (Mask T@PolymorphicMapType_11486) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_11465) (Heap1@@0 T@PolymorphicMapType_11465) (Heap2 T@PolymorphicMapType_11465) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_7946_34394) ) (!  (not (select (|PolymorphicMapType_12014_11525_35572#PolymorphicMapType_12014| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12014_11525_35572#PolymorphicMapType_12014| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_7946_34261) ) (!  (not (select (|PolymorphicMapType_12014_11525_34261#PolymorphicMapType_12014| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12014_11525_34261#PolymorphicMapType_12014| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_14982_1545) ) (!  (not (select (|PolymorphicMapType_12014_11525_1545#PolymorphicMapType_12014| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12014_11525_1545#PolymorphicMapType_12014| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_11538_11539) ) (!  (not (select (|PolymorphicMapType_12014_11525_11539#PolymorphicMapType_12014| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12014_11525_11539#PolymorphicMapType_12014| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_11525_53) ) (!  (not (select (|PolymorphicMapType_12014_11525_53#PolymorphicMapType_12014| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12014_11525_53#PolymorphicMapType_12014| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_11465) (ExhaleHeap T@PolymorphicMapType_11465) (Mask@@0 T@PolymorphicMapType_11486) (pm_f_10 T@Field_7946_34261) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_7946_34325 Mask@@0 null pm_f_10) (IsPredicateField_7946_34352 pm_f_10)) (= (select (|PolymorphicMapType_11465_7946_34438#PolymorphicMapType_11465| Heap@@0) null (PredicateMaskField_7946 pm_f_10)) (select (|PolymorphicMapType_11465_7946_34438#PolymorphicMapType_11465| ExhaleHeap) null (PredicateMaskField_7946 pm_f_10)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_7946_34352 pm_f_10) (select (|PolymorphicMapType_11465_7946_34438#PolymorphicMapType_11465| ExhaleHeap) null (PredicateMaskField_7946 pm_f_10)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_11465) (ExhaleHeap@@0 T@PolymorphicMapType_11465) (Mask@@1 T@PolymorphicMapType_11486) (pm_f_10@@0 T@Field_7946_34261) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_7946_34325 Mask@@1 null pm_f_10@@0) (IsWandField_7946_36099 pm_f_10@@0)) (= (select (|PolymorphicMapType_11465_7946_34438#PolymorphicMapType_11465| Heap@@1) null (WandMaskField_7946 pm_f_10@@0)) (select (|PolymorphicMapType_11465_7946_34438#PolymorphicMapType_11465| ExhaleHeap@@0) null (WandMaskField_7946 pm_f_10@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_7946_36099 pm_f_10@@0) (select (|PolymorphicMapType_11465_7946_34438#PolymorphicMapType_11465| ExhaleHeap@@0) null (WandMaskField_7946 pm_f_10@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_11465) (ExhaleHeap@@1 T@PolymorphicMapType_11465) (Mask@@2 T@PolymorphicMapType_11486) (o_23 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_11465_7784_53#PolymorphicMapType_11465| Heap@@2) o_23 $allocated) (select (|PolymorphicMapType_11465_7784_53#PolymorphicMapType_11465| ExhaleHeap@@1) o_23 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_11465_7784_53#PolymorphicMapType_11465| ExhaleHeap@@1) o_23 $allocated))
)))
(assert (forall ((p T@Field_7946_34261) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_11525_11525 p v_1 p w))
 :qid |stdinbpl.216:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_11525_11525 p v_1 p w))
)))
(assert  (not (IsPredicateField_7946_1545 val)))
(assert  (not (IsWandField_7946_1545 val)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_11465) (ExhaleHeap@@2 T@PolymorphicMapType_11465) (Mask@@3 T@PolymorphicMapType_11486) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_11486) (o_2@@4 T@Ref) (f_4@@4 T@Field_7946_34394) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_11486_7946_38516#PolymorphicMapType_11486| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_7946_39645 f_4@@4))) (not (IsWandField_7946_39661 f_4@@4))) (<= (select (|PolymorphicMapType_11486_7946_38516#PolymorphicMapType_11486| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_11486_7946_38516#PolymorphicMapType_11486| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_11486) (o_2@@5 T@Ref) (f_4@@5 T@Field_7946_34261) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_11486_7946_34261#PolymorphicMapType_11486| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_7946_34352 f_4@@5))) (not (IsWandField_7946_36099 f_4@@5))) (<= (select (|PolymorphicMapType_11486_7946_34261#PolymorphicMapType_11486| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_11486_7946_34261#PolymorphicMapType_11486| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_11486) (o_2@@6 T@Ref) (f_4@@6 T@Field_11538_11539) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_11486_7946_11539#PolymorphicMapType_11486| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_7946_11539 f_4@@6))) (not (IsWandField_7946_11539 f_4@@6))) (<= (select (|PolymorphicMapType_11486_7946_11539#PolymorphicMapType_11486| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_11486_7946_11539#PolymorphicMapType_11486| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_11486) (o_2@@7 T@Ref) (f_4@@7 T@Field_11525_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_11486_7946_53#PolymorphicMapType_11486| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_7946_53 f_4@@7))) (not (IsWandField_7946_53 f_4@@7))) (<= (select (|PolymorphicMapType_11486_7946_53#PolymorphicMapType_11486| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_11486_7946_53#PolymorphicMapType_11486| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_11486) (o_2@@8 T@Ref) (f_4@@8 T@Field_14982_1545) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_7946_1545 f_4@@8))) (not (IsWandField_7946_1545 f_4@@8))) (<= (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_11486) (o_2@@9 T@Ref) (f_4@@9 T@Field_7946_34394) ) (! (= (HasDirectPerm_7946_40099 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_11486_7946_38516#PolymorphicMapType_11486| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7946_40099 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_11486) (o_2@@10 T@Ref) (f_4@@10 T@Field_7946_34261) ) (! (= (HasDirectPerm_7946_34325 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_11486_7946_34261#PolymorphicMapType_11486| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7946_34325 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_11486) (o_2@@11 T@Ref) (f_4@@11 T@Field_11538_11539) ) (! (= (HasDirectPerm_7946_11539 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_11486_7946_11539#PolymorphicMapType_11486| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7946_11539 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_11486) (o_2@@12 T@Ref) (f_4@@12 T@Field_11525_53) ) (! (= (HasDirectPerm_7946_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_11486_7946_53#PolymorphicMapType_11486| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7946_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_11486) (o_2@@13 T@Ref) (f_4@@13 T@Field_14982_1545) ) (! (= (HasDirectPerm_7946_1545 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7946_1545 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_11465) (ExhaleHeap@@3 T@PolymorphicMapType_11465) (Mask@@14 T@PolymorphicMapType_11486) (pm_f_10@@1 T@Field_7946_34261) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_7946_34325 Mask@@14 null pm_f_10@@1) (IsPredicateField_7946_34352 pm_f_10@@1)) (and (and (and (and (forall ((o2_10 T@Ref) (f_15 T@Field_11525_53) ) (!  (=> (select (|PolymorphicMapType_12014_11525_53#PolymorphicMapType_12014| (select (|PolymorphicMapType_11465_7946_34438#PolymorphicMapType_11465| Heap@@4) null (PredicateMaskField_7946 pm_f_10@@1))) o2_10 f_15) (= (select (|PolymorphicMapType_11465_7784_53#PolymorphicMapType_11465| Heap@@4) o2_10 f_15) (select (|PolymorphicMapType_11465_7784_53#PolymorphicMapType_11465| ExhaleHeap@@3) o2_10 f_15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11465_7784_53#PolymorphicMapType_11465| ExhaleHeap@@3) o2_10 f_15))
)) (forall ((o2_10@@0 T@Ref) (f_15@@0 T@Field_11538_11539) ) (!  (=> (select (|PolymorphicMapType_12014_11525_11539#PolymorphicMapType_12014| (select (|PolymorphicMapType_11465_7946_34438#PolymorphicMapType_11465| Heap@@4) null (PredicateMaskField_7946 pm_f_10@@1))) o2_10@@0 f_15@@0) (= (select (|PolymorphicMapType_11465_7787_7788#PolymorphicMapType_11465| Heap@@4) o2_10@@0 f_15@@0) (select (|PolymorphicMapType_11465_7787_7788#PolymorphicMapType_11465| ExhaleHeap@@3) o2_10@@0 f_15@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11465_7787_7788#PolymorphicMapType_11465| ExhaleHeap@@3) o2_10@@0 f_15@@0))
))) (forall ((o2_10@@1 T@Ref) (f_15@@1 T@Field_14982_1545) ) (!  (=> (select (|PolymorphicMapType_12014_11525_1545#PolymorphicMapType_12014| (select (|PolymorphicMapType_11465_7946_34438#PolymorphicMapType_11465| Heap@@4) null (PredicateMaskField_7946 pm_f_10@@1))) o2_10@@1 f_15@@1) (= (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| Heap@@4) o2_10@@1 f_15@@1) (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| ExhaleHeap@@3) o2_10@@1 f_15@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| ExhaleHeap@@3) o2_10@@1 f_15@@1))
))) (forall ((o2_10@@2 T@Ref) (f_15@@2 T@Field_7946_34261) ) (!  (=> (select (|PolymorphicMapType_12014_11525_34261#PolymorphicMapType_12014| (select (|PolymorphicMapType_11465_7946_34438#PolymorphicMapType_11465| Heap@@4) null (PredicateMaskField_7946 pm_f_10@@1))) o2_10@@2 f_15@@2) (= (select (|PolymorphicMapType_11465_11525_34261#PolymorphicMapType_11465| Heap@@4) o2_10@@2 f_15@@2) (select (|PolymorphicMapType_11465_11525_34261#PolymorphicMapType_11465| ExhaleHeap@@3) o2_10@@2 f_15@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11465_11525_34261#PolymorphicMapType_11465| ExhaleHeap@@3) o2_10@@2 f_15@@2))
))) (forall ((o2_10@@3 T@Ref) (f_15@@3 T@Field_7946_34394) ) (!  (=> (select (|PolymorphicMapType_12014_11525_35572#PolymorphicMapType_12014| (select (|PolymorphicMapType_11465_7946_34438#PolymorphicMapType_11465| Heap@@4) null (PredicateMaskField_7946 pm_f_10@@1))) o2_10@@3 f_15@@3) (= (select (|PolymorphicMapType_11465_7946_34438#PolymorphicMapType_11465| Heap@@4) o2_10@@3 f_15@@3) (select (|PolymorphicMapType_11465_7946_34438#PolymorphicMapType_11465| ExhaleHeap@@3) o2_10@@3 f_15@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11465_7946_34438#PolymorphicMapType_11465| ExhaleHeap@@3) o2_10@@3 f_15@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_7946_34352 pm_f_10@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_11465) (ExhaleHeap@@4 T@PolymorphicMapType_11465) (Mask@@15 T@PolymorphicMapType_11486) (pm_f_10@@2 T@Field_7946_34261) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_7946_34325 Mask@@15 null pm_f_10@@2) (IsWandField_7946_36099 pm_f_10@@2)) (and (and (and (and (forall ((o2_10@@4 T@Ref) (f_15@@4 T@Field_11525_53) ) (!  (=> (select (|PolymorphicMapType_12014_11525_53#PolymorphicMapType_12014| (select (|PolymorphicMapType_11465_7946_34438#PolymorphicMapType_11465| Heap@@5) null (WandMaskField_7946 pm_f_10@@2))) o2_10@@4 f_15@@4) (= (select (|PolymorphicMapType_11465_7784_53#PolymorphicMapType_11465| Heap@@5) o2_10@@4 f_15@@4) (select (|PolymorphicMapType_11465_7784_53#PolymorphicMapType_11465| ExhaleHeap@@4) o2_10@@4 f_15@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11465_7784_53#PolymorphicMapType_11465| ExhaleHeap@@4) o2_10@@4 f_15@@4))
)) (forall ((o2_10@@5 T@Ref) (f_15@@5 T@Field_11538_11539) ) (!  (=> (select (|PolymorphicMapType_12014_11525_11539#PolymorphicMapType_12014| (select (|PolymorphicMapType_11465_7946_34438#PolymorphicMapType_11465| Heap@@5) null (WandMaskField_7946 pm_f_10@@2))) o2_10@@5 f_15@@5) (= (select (|PolymorphicMapType_11465_7787_7788#PolymorphicMapType_11465| Heap@@5) o2_10@@5 f_15@@5) (select (|PolymorphicMapType_11465_7787_7788#PolymorphicMapType_11465| ExhaleHeap@@4) o2_10@@5 f_15@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11465_7787_7788#PolymorphicMapType_11465| ExhaleHeap@@4) o2_10@@5 f_15@@5))
))) (forall ((o2_10@@6 T@Ref) (f_15@@6 T@Field_14982_1545) ) (!  (=> (select (|PolymorphicMapType_12014_11525_1545#PolymorphicMapType_12014| (select (|PolymorphicMapType_11465_7946_34438#PolymorphicMapType_11465| Heap@@5) null (WandMaskField_7946 pm_f_10@@2))) o2_10@@6 f_15@@6) (= (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| Heap@@5) o2_10@@6 f_15@@6) (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| ExhaleHeap@@4) o2_10@@6 f_15@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| ExhaleHeap@@4) o2_10@@6 f_15@@6))
))) (forall ((o2_10@@7 T@Ref) (f_15@@7 T@Field_7946_34261) ) (!  (=> (select (|PolymorphicMapType_12014_11525_34261#PolymorphicMapType_12014| (select (|PolymorphicMapType_11465_7946_34438#PolymorphicMapType_11465| Heap@@5) null (WandMaskField_7946 pm_f_10@@2))) o2_10@@7 f_15@@7) (= (select (|PolymorphicMapType_11465_11525_34261#PolymorphicMapType_11465| Heap@@5) o2_10@@7 f_15@@7) (select (|PolymorphicMapType_11465_11525_34261#PolymorphicMapType_11465| ExhaleHeap@@4) o2_10@@7 f_15@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11465_11525_34261#PolymorphicMapType_11465| ExhaleHeap@@4) o2_10@@7 f_15@@7))
))) (forall ((o2_10@@8 T@Ref) (f_15@@8 T@Field_7946_34394) ) (!  (=> (select (|PolymorphicMapType_12014_11525_35572#PolymorphicMapType_12014| (select (|PolymorphicMapType_11465_7946_34438#PolymorphicMapType_11465| Heap@@5) null (WandMaskField_7946 pm_f_10@@2))) o2_10@@8 f_15@@8) (= (select (|PolymorphicMapType_11465_7946_34438#PolymorphicMapType_11465| Heap@@5) o2_10@@8 f_15@@8) (select (|PolymorphicMapType_11465_7946_34438#PolymorphicMapType_11465| ExhaleHeap@@4) o2_10@@8 f_15@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11465_7946_34438#PolymorphicMapType_11465| ExhaleHeap@@4) o2_10@@8 f_15@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_7946_36099 pm_f_10@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.204:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_11465) (ExhaleHeap@@5 T@PolymorphicMapType_11465) (Mask@@16 T@PolymorphicMapType_11486) (o_23@@0 T@Ref) (f_15@@9 T@Field_7946_34394) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_7946_40099 Mask@@16 o_23@@0 f_15@@9) (= (select (|PolymorphicMapType_11465_7946_34438#PolymorphicMapType_11465| Heap@@6) o_23@@0 f_15@@9) (select (|PolymorphicMapType_11465_7946_34438#PolymorphicMapType_11465| ExhaleHeap@@5) o_23@@0 f_15@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_11465_7946_34438#PolymorphicMapType_11465| ExhaleHeap@@5) o_23@@0 f_15@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_11465) (ExhaleHeap@@6 T@PolymorphicMapType_11465) (Mask@@17 T@PolymorphicMapType_11486) (o_23@@1 T@Ref) (f_15@@10 T@Field_7946_34261) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_7946_34325 Mask@@17 o_23@@1 f_15@@10) (= (select (|PolymorphicMapType_11465_11525_34261#PolymorphicMapType_11465| Heap@@7) o_23@@1 f_15@@10) (select (|PolymorphicMapType_11465_11525_34261#PolymorphicMapType_11465| ExhaleHeap@@6) o_23@@1 f_15@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_11465_11525_34261#PolymorphicMapType_11465| ExhaleHeap@@6) o_23@@1 f_15@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_11465) (ExhaleHeap@@7 T@PolymorphicMapType_11465) (Mask@@18 T@PolymorphicMapType_11486) (o_23@@2 T@Ref) (f_15@@11 T@Field_11538_11539) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_7946_11539 Mask@@18 o_23@@2 f_15@@11) (= (select (|PolymorphicMapType_11465_7787_7788#PolymorphicMapType_11465| Heap@@8) o_23@@2 f_15@@11) (select (|PolymorphicMapType_11465_7787_7788#PolymorphicMapType_11465| ExhaleHeap@@7) o_23@@2 f_15@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_11465_7787_7788#PolymorphicMapType_11465| ExhaleHeap@@7) o_23@@2 f_15@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_11465) (ExhaleHeap@@8 T@PolymorphicMapType_11465) (Mask@@19 T@PolymorphicMapType_11486) (o_23@@3 T@Ref) (f_15@@12 T@Field_11525_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_7946_53 Mask@@19 o_23@@3 f_15@@12) (= (select (|PolymorphicMapType_11465_7784_53#PolymorphicMapType_11465| Heap@@9) o_23@@3 f_15@@12) (select (|PolymorphicMapType_11465_7784_53#PolymorphicMapType_11465| ExhaleHeap@@8) o_23@@3 f_15@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_11465_7784_53#PolymorphicMapType_11465| ExhaleHeap@@8) o_23@@3 f_15@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_11465) (ExhaleHeap@@9 T@PolymorphicMapType_11465) (Mask@@20 T@PolymorphicMapType_11486) (o_23@@4 T@Ref) (f_15@@13 T@Field_14982_1545) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_7946_1545 Mask@@20 o_23@@4 f_15@@13) (= (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| Heap@@10) o_23@@4 f_15@@13) (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| ExhaleHeap@@9) o_23@@4 f_15@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| ExhaleHeap@@9) o_23@@4 f_15@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_7946_34394) ) (! (= (select (|PolymorphicMapType_11486_7946_38516#PolymorphicMapType_11486| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11486_7946_38516#PolymorphicMapType_11486| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_7946_34261) ) (! (= (select (|PolymorphicMapType_11486_7946_34261#PolymorphicMapType_11486| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11486_7946_34261#PolymorphicMapType_11486| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_11538_11539) ) (! (= (select (|PolymorphicMapType_11486_7946_11539#PolymorphicMapType_11486| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11486_7946_11539#PolymorphicMapType_11486| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_11525_53) ) (! (= (select (|PolymorphicMapType_11486_7946_53#PolymorphicMapType_11486| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11486_7946_53#PolymorphicMapType_11486| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_14982_1545) ) (! (= (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_11486) (SummandMask1 T@PolymorphicMapType_11486) (SummandMask2 T@PolymorphicMapType_11486) (o_2@@19 T@Ref) (f_4@@19 T@Field_7946_34394) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_11486_7946_38516#PolymorphicMapType_11486| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_11486_7946_38516#PolymorphicMapType_11486| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_11486_7946_38516#PolymorphicMapType_11486| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11486_7946_38516#PolymorphicMapType_11486| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11486_7946_38516#PolymorphicMapType_11486| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11486_7946_38516#PolymorphicMapType_11486| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_11486) (SummandMask1@@0 T@PolymorphicMapType_11486) (SummandMask2@@0 T@PolymorphicMapType_11486) (o_2@@20 T@Ref) (f_4@@20 T@Field_7946_34261) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_11486_7946_34261#PolymorphicMapType_11486| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_11486_7946_34261#PolymorphicMapType_11486| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_11486_7946_34261#PolymorphicMapType_11486| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11486_7946_34261#PolymorphicMapType_11486| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11486_7946_34261#PolymorphicMapType_11486| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11486_7946_34261#PolymorphicMapType_11486| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_11486) (SummandMask1@@1 T@PolymorphicMapType_11486) (SummandMask2@@1 T@PolymorphicMapType_11486) (o_2@@21 T@Ref) (f_4@@21 T@Field_11538_11539) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_11486_7946_11539#PolymorphicMapType_11486| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_11486_7946_11539#PolymorphicMapType_11486| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_11486_7946_11539#PolymorphicMapType_11486| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11486_7946_11539#PolymorphicMapType_11486| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11486_7946_11539#PolymorphicMapType_11486| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11486_7946_11539#PolymorphicMapType_11486| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_11486) (SummandMask1@@2 T@PolymorphicMapType_11486) (SummandMask2@@2 T@PolymorphicMapType_11486) (o_2@@22 T@Ref) (f_4@@22 T@Field_11525_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_11486_7946_53#PolymorphicMapType_11486| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_11486_7946_53#PolymorphicMapType_11486| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_11486_7946_53#PolymorphicMapType_11486| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11486_7946_53#PolymorphicMapType_11486| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11486_7946_53#PolymorphicMapType_11486| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11486_7946_53#PolymorphicMapType_11486| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_11486) (SummandMask1@@3 T@PolymorphicMapType_11486) (SummandMask2@@3 T@PolymorphicMapType_11486) (o_2@@23 T@Ref) (f_4@@23 T@Field_14982_1545) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((a_2 T@IArrayDomainType) ) (! (>= (len a_2) 0)
 :qid |stdinbpl.247:15|
 :skolemid |23|
 :pattern ( (len a_2))
)))
(assert (forall ((a_2@@0 T@IArrayDomainType) (i Int) ) (!  (and (= (first_1 (loc a_2@@0 i)) a_2@@0) (= (second_1 (loc a_2@@0 i)) i))
 :qid |stdinbpl.241:15|
 :skolemid |22|
 :pattern ( (loc a_2@@0 i))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_11465) (o_4 T@Ref) (f_25 T@Field_7946_34261) (v T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_11465 (|PolymorphicMapType_11465_7784_53#PolymorphicMapType_11465| Heap@@11) (|PolymorphicMapType_11465_7787_7788#PolymorphicMapType_11465| Heap@@11) (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| Heap@@11) (|PolymorphicMapType_11465_7946_34438#PolymorphicMapType_11465| Heap@@11) (store (|PolymorphicMapType_11465_11525_34261#PolymorphicMapType_11465| Heap@@11) o_4 f_25 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11465 (|PolymorphicMapType_11465_7784_53#PolymorphicMapType_11465| Heap@@11) (|PolymorphicMapType_11465_7787_7788#PolymorphicMapType_11465| Heap@@11) (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| Heap@@11) (|PolymorphicMapType_11465_7946_34438#PolymorphicMapType_11465| Heap@@11) (store (|PolymorphicMapType_11465_11525_34261#PolymorphicMapType_11465| Heap@@11) o_4 f_25 v)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_11465) (o_4@@0 T@Ref) (f_25@@0 T@Field_7946_34394) (v@@0 T@PolymorphicMapType_12014) ) (! (succHeap Heap@@12 (PolymorphicMapType_11465 (|PolymorphicMapType_11465_7784_53#PolymorphicMapType_11465| Heap@@12) (|PolymorphicMapType_11465_7787_7788#PolymorphicMapType_11465| Heap@@12) (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| Heap@@12) (store (|PolymorphicMapType_11465_7946_34438#PolymorphicMapType_11465| Heap@@12) o_4@@0 f_25@@0 v@@0) (|PolymorphicMapType_11465_11525_34261#PolymorphicMapType_11465| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11465 (|PolymorphicMapType_11465_7784_53#PolymorphicMapType_11465| Heap@@12) (|PolymorphicMapType_11465_7787_7788#PolymorphicMapType_11465| Heap@@12) (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| Heap@@12) (store (|PolymorphicMapType_11465_7946_34438#PolymorphicMapType_11465| Heap@@12) o_4@@0 f_25@@0 v@@0) (|PolymorphicMapType_11465_11525_34261#PolymorphicMapType_11465| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_11465) (o_4@@1 T@Ref) (f_25@@1 T@Field_14982_1545) (v@@1 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_11465 (|PolymorphicMapType_11465_7784_53#PolymorphicMapType_11465| Heap@@13) (|PolymorphicMapType_11465_7787_7788#PolymorphicMapType_11465| Heap@@13) (store (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| Heap@@13) o_4@@1 f_25@@1 v@@1) (|PolymorphicMapType_11465_7946_34438#PolymorphicMapType_11465| Heap@@13) (|PolymorphicMapType_11465_11525_34261#PolymorphicMapType_11465| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11465 (|PolymorphicMapType_11465_7784_53#PolymorphicMapType_11465| Heap@@13) (|PolymorphicMapType_11465_7787_7788#PolymorphicMapType_11465| Heap@@13) (store (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| Heap@@13) o_4@@1 f_25@@1 v@@1) (|PolymorphicMapType_11465_7946_34438#PolymorphicMapType_11465| Heap@@13) (|PolymorphicMapType_11465_11525_34261#PolymorphicMapType_11465| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_11465) (o_4@@2 T@Ref) (f_25@@2 T@Field_11538_11539) (v@@2 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_11465 (|PolymorphicMapType_11465_7784_53#PolymorphicMapType_11465| Heap@@14) (store (|PolymorphicMapType_11465_7787_7788#PolymorphicMapType_11465| Heap@@14) o_4@@2 f_25@@2 v@@2) (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| Heap@@14) (|PolymorphicMapType_11465_7946_34438#PolymorphicMapType_11465| Heap@@14) (|PolymorphicMapType_11465_11525_34261#PolymorphicMapType_11465| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11465 (|PolymorphicMapType_11465_7784_53#PolymorphicMapType_11465| Heap@@14) (store (|PolymorphicMapType_11465_7787_7788#PolymorphicMapType_11465| Heap@@14) o_4@@2 f_25@@2 v@@2) (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| Heap@@14) (|PolymorphicMapType_11465_7946_34438#PolymorphicMapType_11465| Heap@@14) (|PolymorphicMapType_11465_11525_34261#PolymorphicMapType_11465| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_11465) (o_4@@3 T@Ref) (f_25@@3 T@Field_11525_53) (v@@3 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_11465 (store (|PolymorphicMapType_11465_7784_53#PolymorphicMapType_11465| Heap@@15) o_4@@3 f_25@@3 v@@3) (|PolymorphicMapType_11465_7787_7788#PolymorphicMapType_11465| Heap@@15) (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| Heap@@15) (|PolymorphicMapType_11465_7946_34438#PolymorphicMapType_11465| Heap@@15) (|PolymorphicMapType_11465_11525_34261#PolymorphicMapType_11465| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11465 (store (|PolymorphicMapType_11465_7784_53#PolymorphicMapType_11465| Heap@@15) o_4@@3 f_25@@3 v@@3) (|PolymorphicMapType_11465_7787_7788#PolymorphicMapType_11465| Heap@@15) (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| Heap@@15) (|PolymorphicMapType_11465_7946_34438#PolymorphicMapType_11465| Heap@@15) (|PolymorphicMapType_11465_11525_34261#PolymorphicMapType_11465| Heap@@15)))
)))
(assert (forall ((o_4@@4 T@Ref) (f_9 T@Field_11538_11539) (Heap@@16 T@PolymorphicMapType_11465) ) (!  (=> (select (|PolymorphicMapType_11465_7784_53#PolymorphicMapType_11465| Heap@@16) o_4@@4 $allocated) (select (|PolymorphicMapType_11465_7784_53#PolymorphicMapType_11465| Heap@@16) (select (|PolymorphicMapType_11465_7787_7788#PolymorphicMapType_11465| Heap@@16) o_4@@4 f_9) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_11465_7787_7788#PolymorphicMapType_11465| Heap@@16) o_4@@4 f_9))
)))
(assert (forall ((p@@1 T@Field_7946_34261) (v_1@@0 T@FrameType) (q T@Field_7946_34261) (w@@0 T@FrameType) (r T@Field_7946_34261) (u T@FrameType) ) (!  (=> (and (InsidePredicate_11525_11525 p@@1 v_1@@0 q w@@0) (InsidePredicate_11525_11525 q w@@0 r u)) (InsidePredicate_11525_11525 p@@1 v_1@@0 r u))
 :qid |stdinbpl.211:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11525_11525 p@@1 v_1@@0 q w@@0) (InsidePredicate_11525_11525 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun a_2@@1 () T@IArrayDomainType)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_11465)
(declare-fun x@0 () Int)
(declare-fun QPMask@2 () T@PolymorphicMapType_11486)
(declare-fun Heap@@17 () T@PolymorphicMapType_11465)
(declare-fun QPMask@0 () T@PolymorphicMapType_11486)
(declare-fun neverTriggered10 (Int) Bool)
(declare-fun qpRange10 (T@Ref) Bool)
(declare-fun invRecv10 (T@Ref) Int)
(declare-fun QPMask@1 () T@PolymorphicMapType_11486)
(declare-fun qpRange11 (T@Ref) Bool)
(declare-fun invRecv11 (T@Ref) Int)
(declare-fun i_19 () Int)
(declare-fun qpRange9 (T@Ref) Bool)
(declare-fun invRecv9 (T@Ref) Int)
(set-info :boogie-vc-id client)
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
 (=> (= (ControlFlow 0 0) 23) (let ((anon9_correct  (=> (forall ((j$2_3 Int) ) (!  (=> (and (<= 0 j$2_3) (< j$2_3 (len a_2@@1))) (<= (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| ExhaleHeap@0) (loc a_2@@1 j$2_3) val) (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| ExhaleHeap@0) (loc a_2@@1 x@0) val)))
 :qid |stdinbpl.1117:22|
 :skolemid |112|
 :pattern ( (loc a_2@@1 j$2_3))
)) (=> (and (state ExhaleHeap@0 QPMask@2) (state ExhaleHeap@0 QPMask@2)) (and (=> (= (ControlFlow 0 7) (- 0 13)) (HasDirectPerm_7946_1545 QPMask@2 (loc a_2@@1 0) val)) (=> (HasDirectPerm_7946_1545 QPMask@2 (loc a_2@@1 0) val) (and (=> (= (ControlFlow 0 7) (- 0 12)) (<= (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| ExhaleHeap@0) (loc a_2@@1 0) val) x@0)) (=> (<= (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| ExhaleHeap@0) (loc a_2@@1 0) val) x@0) (=> (state ExhaleHeap@0 QPMask@2) (and (=> (= (ControlFlow 0 7) (- 0 11)) (HasDirectPerm_7946_1545 QPMask@2 (loc a_2@@1 (- (len a_2@@1) 1)) val)) (=> (HasDirectPerm_7946_1545 QPMask@2 (loc a_2@@1 (- (len a_2@@1) 1)) val) (and (=> (= (ControlFlow 0 7) (- 0 10)) (= x@0 (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| ExhaleHeap@0) (loc a_2@@1 (- (len a_2@@1) 1)) val))) (=> (= x@0 (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| ExhaleHeap@0) (loc a_2@@1 (- (len a_2@@1) 1)) val)) (=> (state ExhaleHeap@0 QPMask@2) (and (=> (= (ControlFlow 0 7) (- 0 9)) (= x@0 2)) (=> (= x@0 2) (=> (state ExhaleHeap@0 QPMask@2) (and (=> (= (ControlFlow 0 7) (- 0 8)) (HasDirectPerm_7946_1545 QPMask@2 (loc a_2@@1 1) val)) (=> (HasDirectPerm_7946_1545 QPMask@2 (loc a_2@@1 1) val) (=> (= (ControlFlow 0 7) (- 0 6)) (< (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| ExhaleHeap@0) (loc a_2@@1 1) val) x@0)))))))))))))))))))))
(let ((anon13_Else_correct  (=> (and (and (not (= (len a_2@@1) 0)) (<= 0 x@0)) (and (< x@0 (len a_2@@1)) (= (ControlFlow 0 15) 7))) anon9_correct)))
(let ((anon13_Then_correct  (=> (= (len a_2@@1) 0) (=> (and (= x@0 (- 0 1)) (= (ControlFlow 0 14) 7)) anon9_correct))))
(let ((anon11_Else_correct  (=> (forall ((i_1 Int) ) (!  (=> (and (<= 0 i_1) (< i_1 (len a_2@@1))) (= (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| Heap@@17) (loc a_2@@1 i_1) val) i_1))
 :qid |stdinbpl.1009:20|
 :skolemid |98|
 :pattern ( (loc a_2@@1 i_1))
)) (=> (and (state Heap@@17 QPMask@0) (state Heap@@17 QPMask@0)) (and (=> (= (ControlFlow 0 16) (- 0 19)) (forall ((j_2_2 Int) (j_2_3 Int) ) (!  (=> (and (and (and (and (not (= j_2_2 j_2_3)) (and (<= 0 j_2_2) (< j_2_2 (len a_2@@1)))) (and (<= 0 j_2_3) (< j_2_3 (len a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 j_2_2) (loc a_2@@1 j_2_3))))
 :qid |stdinbpl.1030:19|
 :skolemid |99|
 :pattern ( (neverTriggered10 j_2_2) (neverTriggered10 j_2_3))
))) (=> (forall ((j_2_2@@0 Int) (j_2_3@@0 Int) ) (!  (=> (and (and (and (and (not (= j_2_2@@0 j_2_3@@0)) (and (<= 0 j_2_2@@0) (< j_2_2@@0 (len a_2@@1)))) (and (<= 0 j_2_3@@0) (< j_2_3@@0 (len a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 j_2_2@@0) (loc a_2@@1 j_2_3@@0))))
 :qid |stdinbpl.1030:19|
 :skolemid |99|
 :pattern ( (neverTriggered10 j_2_2@@0) (neverTriggered10 j_2_3@@0))
)) (and (=> (= (ControlFlow 0 16) (- 0 18)) (forall ((j_2_2@@1 Int) ) (!  (=> (and (<= 0 j_2_2@@1) (< j_2_2@@1 (len a_2@@1))) (>= (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@0) (loc a_2@@1 j_2_2@@1) val) FullPerm))
 :qid |stdinbpl.1037:19|
 :skolemid |100|
 :pattern ( (loc a_2@@1 j_2_2@@1))
 :pattern ( (loc a_2@@1 j_2_2@@1))
))) (=> (forall ((j_2_2@@2 Int) ) (!  (=> (and (<= 0 j_2_2@@2) (< j_2_2@@2 (len a_2@@1))) (>= (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@0) (loc a_2@@1 j_2_2@@2) val) FullPerm))
 :qid |stdinbpl.1037:19|
 :skolemid |100|
 :pattern ( (loc a_2@@1 j_2_2@@2))
 :pattern ( (loc a_2@@1 j_2_2@@2))
)) (=> (forall ((j_2_2@@3 Int) ) (!  (=> (and (and (<= 0 j_2_2@@3) (< j_2_2@@3 (len a_2@@1))) (< NoPerm FullPerm)) (and (qpRange10 (loc a_2@@1 j_2_2@@3)) (= (invRecv10 (loc a_2@@1 j_2_2@@3)) j_2_2@@3)))
 :qid |stdinbpl.1043:24|
 :skolemid |101|
 :pattern ( (loc a_2@@1 j_2_2@@3))
 :pattern ( (loc a_2@@1 j_2_2@@3))
)) (=> (and (forall ((o_9 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv10 o_9)) (< (invRecv10 o_9) (len a_2@@1))) (and (< NoPerm FullPerm) (qpRange10 o_9))) (= (loc a_2@@1 (invRecv10 o_9)) o_9))
 :qid |stdinbpl.1047:24|
 :skolemid |102|
 :pattern ( (invRecv10 o_9))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv10 o_9@@0)) (< (invRecv10 o_9@@0) (len a_2@@1))) (and (< NoPerm FullPerm) (qpRange10 o_9@@0))) (and (= (loc a_2@@1 (invRecv10 o_9@@0)) o_9@@0) (= (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@1) o_9@@0 val) (- (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@0) o_9@@0 val) FullPerm)))) (=> (not (and (and (<= 0 (invRecv10 o_9@@0)) (< (invRecv10 o_9@@0) (len a_2@@1))) (and (< NoPerm FullPerm) (qpRange10 o_9@@0)))) (= (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@1) o_9@@0 val) (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@0) o_9@@0 val))))
 :qid |stdinbpl.1053:24|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@1) o_9@@0 val))
))) (=> (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_11525_53) ) (!  (=> true (= (select (|PolymorphicMapType_11486_7946_53#PolymorphicMapType_11486| QPMask@0) o_9@@1 f_5) (select (|PolymorphicMapType_11486_7946_53#PolymorphicMapType_11486| QPMask@1) o_9@@1 f_5)))
 :qid |stdinbpl.1059:31|
 :skolemid |104|
 :pattern ( (select (|PolymorphicMapType_11486_7946_53#PolymorphicMapType_11486| QPMask@1) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_11538_11539) ) (!  (=> true (= (select (|PolymorphicMapType_11486_7946_11539#PolymorphicMapType_11486| QPMask@0) o_9@@2 f_5@@0) (select (|PolymorphicMapType_11486_7946_11539#PolymorphicMapType_11486| QPMask@1) o_9@@2 f_5@@0)))
 :qid |stdinbpl.1059:31|
 :skolemid |104|
 :pattern ( (select (|PolymorphicMapType_11486_7946_11539#PolymorphicMapType_11486| QPMask@1) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_14982_1545) ) (!  (=> (not (= f_5@@1 val)) (= (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@0) o_9@@3 f_5@@1) (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@1) o_9@@3 f_5@@1)))
 :qid |stdinbpl.1059:31|
 :skolemid |104|
 :pattern ( (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@1) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_7946_34261) ) (!  (=> true (= (select (|PolymorphicMapType_11486_7946_34261#PolymorphicMapType_11486| QPMask@0) o_9@@4 f_5@@2) (select (|PolymorphicMapType_11486_7946_34261#PolymorphicMapType_11486| QPMask@1) o_9@@4 f_5@@2)))
 :qid |stdinbpl.1059:31|
 :skolemid |104|
 :pattern ( (select (|PolymorphicMapType_11486_7946_34261#PolymorphicMapType_11486| QPMask@1) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_7946_34394) ) (!  (=> true (= (select (|PolymorphicMapType_11486_7946_38516#PolymorphicMapType_11486| QPMask@0) o_9@@5 f_5@@3) (select (|PolymorphicMapType_11486_7946_38516#PolymorphicMapType_11486| QPMask@1) o_9@@5 f_5@@3)))
 :qid |stdinbpl.1059:31|
 :skolemid |104|
 :pattern ( (select (|PolymorphicMapType_11486_7946_38516#PolymorphicMapType_11486| QPMask@1) o_9@@5 f_5@@3))
))) (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@0 QPMask@1)) (and (=> (= (ControlFlow 0 16) (- 0 17)) (forall ((j$0 Int) (j$0_3 Int) ) (!  (=> (and (and (and (and (not (= j$0 j$0_3)) (and (<= 0 j$0) (< j$0 (len a_2@@1)))) (and (<= 0 j$0_3) (< j$0_3 (len a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 j$0) (loc a_2@@1 j$0_3))))
 :qid |stdinbpl.1075:17|
 :skolemid |105|
))) (=> (forall ((j$0@@0 Int) (j$0_3@@0 Int) ) (!  (=> (and (and (and (and (not (= j$0@@0 j$0_3@@0)) (and (<= 0 j$0@@0) (< j$0@@0 (len a_2@@1)))) (and (<= 0 j$0_3@@0) (< j$0_3@@0 (len a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 j$0@@0) (loc a_2@@1 j$0_3@@0))))
 :qid |stdinbpl.1075:17|
 :skolemid |105|
)) (=> (and (and (forall ((j$0@@1 Int) ) (!  (=> (and (and (<= 0 j$0@@1) (< j$0@@1 (len a_2@@1))) (< NoPerm FullPerm)) (and (qpRange11 (loc a_2@@1 j$0@@1)) (= (invRecv11 (loc a_2@@1 j$0@@1)) j$0@@1)))
 :qid |stdinbpl.1081:24|
 :skolemid |106|
 :pattern ( (loc a_2@@1 j$0@@1))
 :pattern ( (loc a_2@@1 j$0@@1))
)) (forall ((o_9@@6 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv11 o_9@@6)) (< (invRecv11 o_9@@6) (len a_2@@1))) (< NoPerm FullPerm)) (qpRange11 o_9@@6)) (= (loc a_2@@1 (invRecv11 o_9@@6)) o_9@@6))
 :qid |stdinbpl.1085:24|
 :skolemid |107|
 :pattern ( (invRecv11 o_9@@6))
))) (and (forall ((j$0@@2 Int) ) (!  (=> (and (<= 0 j$0@@2) (< j$0@@2 (len a_2@@1))) (not (= (loc a_2@@1 j$0@@2) null)))
 :qid |stdinbpl.1091:24|
 :skolemid |108|
 :pattern ( (loc a_2@@1 j$0@@2))
 :pattern ( (loc a_2@@1 j$0@@2))
)) (forall ((o_9@@7 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv11 o_9@@7)) (< (invRecv11 o_9@@7) (len a_2@@1))) (< NoPerm FullPerm)) (qpRange11 o_9@@7)) (and (=> (< NoPerm FullPerm) (= (loc a_2@@1 (invRecv11 o_9@@7)) o_9@@7)) (= (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@2) o_9@@7 val) (+ (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@1) o_9@@7 val) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv11 o_9@@7)) (< (invRecv11 o_9@@7) (len a_2@@1))) (< NoPerm FullPerm)) (qpRange11 o_9@@7))) (= (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@2) o_9@@7 val) (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@1) o_9@@7 val))))
 :qid |stdinbpl.1097:24|
 :skolemid |109|
 :pattern ( (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@2) o_9@@7 val))
)))) (=> (and (and (and (and (and (forall ((o_9@@8 T@Ref) (f_5@@4 T@Field_11525_53) ) (!  (=> true (= (select (|PolymorphicMapType_11486_7946_53#PolymorphicMapType_11486| QPMask@1) o_9@@8 f_5@@4) (select (|PolymorphicMapType_11486_7946_53#PolymorphicMapType_11486| QPMask@2) o_9@@8 f_5@@4)))
 :qid |stdinbpl.1101:31|
 :skolemid |110|
 :pattern ( (select (|PolymorphicMapType_11486_7946_53#PolymorphicMapType_11486| QPMask@1) o_9@@8 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_11486_7946_53#PolymorphicMapType_11486| QPMask@2) o_9@@8 f_5@@4))
)) (forall ((o_9@@9 T@Ref) (f_5@@5 T@Field_11538_11539) ) (!  (=> true (= (select (|PolymorphicMapType_11486_7946_11539#PolymorphicMapType_11486| QPMask@1) o_9@@9 f_5@@5) (select (|PolymorphicMapType_11486_7946_11539#PolymorphicMapType_11486| QPMask@2) o_9@@9 f_5@@5)))
 :qid |stdinbpl.1101:31|
 :skolemid |110|
 :pattern ( (select (|PolymorphicMapType_11486_7946_11539#PolymorphicMapType_11486| QPMask@1) o_9@@9 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_11486_7946_11539#PolymorphicMapType_11486| QPMask@2) o_9@@9 f_5@@5))
))) (forall ((o_9@@10 T@Ref) (f_5@@6 T@Field_14982_1545) ) (!  (=> (not (= f_5@@6 val)) (= (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@1) o_9@@10 f_5@@6) (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@2) o_9@@10 f_5@@6)))
 :qid |stdinbpl.1101:31|
 :skolemid |110|
 :pattern ( (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@1) o_9@@10 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@2) o_9@@10 f_5@@6))
))) (forall ((o_9@@11 T@Ref) (f_5@@7 T@Field_7946_34261) ) (!  (=> true (= (select (|PolymorphicMapType_11486_7946_34261#PolymorphicMapType_11486| QPMask@1) o_9@@11 f_5@@7) (select (|PolymorphicMapType_11486_7946_34261#PolymorphicMapType_11486| QPMask@2) o_9@@11 f_5@@7)))
 :qid |stdinbpl.1101:31|
 :skolemid |110|
 :pattern ( (select (|PolymorphicMapType_11486_7946_34261#PolymorphicMapType_11486| QPMask@1) o_9@@11 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_11486_7946_34261#PolymorphicMapType_11486| QPMask@2) o_9@@11 f_5@@7))
))) (forall ((o_9@@12 T@Ref) (f_5@@8 T@Field_7946_34394) ) (!  (=> true (= (select (|PolymorphicMapType_11486_7946_38516#PolymorphicMapType_11486| QPMask@1) o_9@@12 f_5@@8) (select (|PolymorphicMapType_11486_7946_38516#PolymorphicMapType_11486| QPMask@2) o_9@@12 f_5@@8)))
 :qid |stdinbpl.1101:31|
 :skolemid |110|
 :pattern ( (select (|PolymorphicMapType_11486_7946_38516#PolymorphicMapType_11486| QPMask@1) o_9@@12 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_11486_7946_38516#PolymorphicMapType_11486| QPMask@2) o_9@@12 f_5@@8))
))) (and (state ExhaleHeap@0 QPMask@2) (forall ((j$1_3 Int) ) (!  (=> (and (<= 0 j$1_3) (< j$1_3 (len a_2@@1))) (= (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| ExhaleHeap@0) (loc a_2@@1 j$1_3) val) (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| Heap@@17) (loc a_2@@1 j$1_3) val)))
 :qid |stdinbpl.1107:22|
 :skolemid |111|
 :pattern ( (loc a_2@@1 j$1_3))
)))) (and (=> (= (ControlFlow 0 16) 14) anon13_Then_correct) (=> (= (ControlFlow 0 16) 15) anon13_Else_correct)))))))))))))))))
(let ((anon5_correct true))
(let ((anon12_Else_correct  (=> (and (not (and (<= 0 i_19) (< i_19 (len a_2@@1)))) (= (ControlFlow 0 5) 2)) anon5_correct)))
(let ((anon12_Then_correct  (=> (and (<= 0 i_19) (< i_19 (len a_2@@1))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (HasDirectPerm_7946_1545 QPMask@0 (loc a_2@@1 i_19) val)) (=> (HasDirectPerm_7946_1545 QPMask@0 (loc a_2@@1 i_19) val) (=> (= (ControlFlow 0 3) 2) anon5_correct))))))
(let ((anon10_Else_correct  (and (=> (= (ControlFlow 0 20) (- 0 21)) (forall ((j_1 Int) (j_1_1 Int) ) (!  (=> (and (and (and (and (not (= j_1 j_1_1)) (and (<= 0 j_1) (< j_1 (len a_2@@1)))) (and (<= 0 j_1_1) (< j_1_1 (len a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 j_1) (loc a_2@@1 j_1_1))))
 :qid |stdinbpl.962:15|
 :skolemid |92|
))) (=> (forall ((j_1@@0 Int) (j_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= j_1@@0 j_1_1@@0)) (and (<= 0 j_1@@0) (< j_1@@0 (len a_2@@1)))) (and (<= 0 j_1_1@@0) (< j_1_1@@0 (len a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 j_1@@0) (loc a_2@@1 j_1_1@@0))))
 :qid |stdinbpl.962:15|
 :skolemid |92|
)) (=> (and (and (forall ((j_1@@1 Int) ) (!  (=> (and (and (<= 0 j_1@@1) (< j_1@@1 (len a_2@@1))) (< NoPerm FullPerm)) (and (qpRange9 (loc a_2@@1 j_1@@1)) (= (invRecv9 (loc a_2@@1 j_1@@1)) j_1@@1)))
 :qid |stdinbpl.968:22|
 :skolemid |93|
 :pattern ( (loc a_2@@1 j_1@@1))
 :pattern ( (loc a_2@@1 j_1@@1))
)) (forall ((o_9@@13 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv9 o_9@@13)) (< (invRecv9 o_9@@13) (len a_2@@1))) (< NoPerm FullPerm)) (qpRange9 o_9@@13)) (= (loc a_2@@1 (invRecv9 o_9@@13)) o_9@@13))
 :qid |stdinbpl.972:22|
 :skolemid |94|
 :pattern ( (invRecv9 o_9@@13))
))) (and (forall ((j_1@@2 Int) ) (!  (=> (and (<= 0 j_1@@2) (< j_1@@2 (len a_2@@1))) (not (= (loc a_2@@1 j_1@@2) null)))
 :qid |stdinbpl.978:22|
 :skolemid |95|
 :pattern ( (loc a_2@@1 j_1@@2))
 :pattern ( (loc a_2@@1 j_1@@2))
)) (forall ((o_9@@14 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv9 o_9@@14)) (< (invRecv9 o_9@@14) (len a_2@@1))) (< NoPerm FullPerm)) (qpRange9 o_9@@14)) (and (=> (< NoPerm FullPerm) (= (loc a_2@@1 (invRecv9 o_9@@14)) o_9@@14)) (= (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@0) o_9@@14 val) (+ (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| ZeroMask) o_9@@14 val) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv9 o_9@@14)) (< (invRecv9 o_9@@14) (len a_2@@1))) (< NoPerm FullPerm)) (qpRange9 o_9@@14))) (= (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@0) o_9@@14 val) (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| ZeroMask) o_9@@14 val))))
 :qid |stdinbpl.984:22|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@0) o_9@@14 val))
)))) (=> (and (and (and (and (and (and (forall ((o_9@@15 T@Ref) (f_5@@9 T@Field_11525_53) ) (!  (=> true (= (select (|PolymorphicMapType_11486_7946_53#PolymorphicMapType_11486| ZeroMask) o_9@@15 f_5@@9) (select (|PolymorphicMapType_11486_7946_53#PolymorphicMapType_11486| QPMask@0) o_9@@15 f_5@@9)))
 :qid |stdinbpl.988:29|
 :skolemid |97|
 :pattern ( (select (|PolymorphicMapType_11486_7946_53#PolymorphicMapType_11486| ZeroMask) o_9@@15 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_11486_7946_53#PolymorphicMapType_11486| QPMask@0) o_9@@15 f_5@@9))
)) (forall ((o_9@@16 T@Ref) (f_5@@10 T@Field_11538_11539) ) (!  (=> true (= (select (|PolymorphicMapType_11486_7946_11539#PolymorphicMapType_11486| ZeroMask) o_9@@16 f_5@@10) (select (|PolymorphicMapType_11486_7946_11539#PolymorphicMapType_11486| QPMask@0) o_9@@16 f_5@@10)))
 :qid |stdinbpl.988:29|
 :skolemid |97|
 :pattern ( (select (|PolymorphicMapType_11486_7946_11539#PolymorphicMapType_11486| ZeroMask) o_9@@16 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_11486_7946_11539#PolymorphicMapType_11486| QPMask@0) o_9@@16 f_5@@10))
))) (forall ((o_9@@17 T@Ref) (f_5@@11 T@Field_14982_1545) ) (!  (=> (not (= f_5@@11 val)) (= (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| ZeroMask) o_9@@17 f_5@@11) (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@0) o_9@@17 f_5@@11)))
 :qid |stdinbpl.988:29|
 :skolemid |97|
 :pattern ( (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| ZeroMask) o_9@@17 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@0) o_9@@17 f_5@@11))
))) (forall ((o_9@@18 T@Ref) (f_5@@12 T@Field_7946_34261) ) (!  (=> true (= (select (|PolymorphicMapType_11486_7946_34261#PolymorphicMapType_11486| ZeroMask) o_9@@18 f_5@@12) (select (|PolymorphicMapType_11486_7946_34261#PolymorphicMapType_11486| QPMask@0) o_9@@18 f_5@@12)))
 :qid |stdinbpl.988:29|
 :skolemid |97|
 :pattern ( (select (|PolymorphicMapType_11486_7946_34261#PolymorphicMapType_11486| ZeroMask) o_9@@18 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_11486_7946_34261#PolymorphicMapType_11486| QPMask@0) o_9@@18 f_5@@12))
))) (forall ((o_9@@19 T@Ref) (f_5@@13 T@Field_7946_34394) ) (!  (=> true (= (select (|PolymorphicMapType_11486_7946_38516#PolymorphicMapType_11486| ZeroMask) o_9@@19 f_5@@13) (select (|PolymorphicMapType_11486_7946_38516#PolymorphicMapType_11486| QPMask@0) o_9@@19 f_5@@13)))
 :qid |stdinbpl.988:29|
 :skolemid |97|
 :pattern ( (select (|PolymorphicMapType_11486_7946_38516#PolymorphicMapType_11486| ZeroMask) o_9@@19 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_11486_7946_38516#PolymorphicMapType_11486| QPMask@0) o_9@@19 f_5@@13))
))) (state Heap@@17 QPMask@0)) (and (state Heap@@17 QPMask@0) (state Heap@@17 QPMask@0))) (and (and (=> (= (ControlFlow 0 20) 16) anon11_Else_correct) (=> (= (ControlFlow 0 20) 3) anon12_Then_correct)) (=> (= (ControlFlow 0 20) 5) anon12_Else_correct))))))))
(let ((anon10_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@17 ZeroMask) (=> (and (and AssumePermUpperBound (= (len a_2@@1) 3)) (and (state Heap@@17 ZeroMask) (state Heap@@17 ZeroMask))) (and (=> (= (ControlFlow 0 22) 1) anon10_Then_correct) (=> (= (ControlFlow 0 22) 20) anon10_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 23) 22) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
