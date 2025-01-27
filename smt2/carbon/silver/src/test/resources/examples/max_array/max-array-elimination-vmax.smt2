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
(declare-fun j$2 () Int)
(declare-fun a_2@@1 () T@IArrayDomainType)
(declare-fun QPMask@7 () T@PolymorphicMapType_11486)
(declare-fun x () Int)
(declare-fun PostHeap@0 () T@PolymorphicMapType_11465)
(declare-fun Heap@@17 () T@PolymorphicMapType_11465)
(declare-fun j$1 () Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_11486)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) Int)
(declare-fun j$4_5 () Int)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_11465)
(declare-fun x@4 () Int)
(declare-fun y@3 () Int)
(declare-fun QPMask@2 () T@PolymorphicMapType_11486)
(declare-fun neverTriggered7 (Int) Bool)
(declare-fun qpRange7 (T@Ref) Bool)
(declare-fun invRecv7 (T@Ref) Int)
(declare-fun QPMask@5 () T@PolymorphicMapType_11486)
(declare-fun y@1 () Int)
(declare-fun x@1 () Int)
(declare-fun y@2 () Int)
(declare-fun x@3 () Int)
(declare-fun qpRange6 (T@Ref) Bool)
(declare-fun invRecv6 (T@Ref) Int)
(declare-fun j$2_2 () Int)
(declare-fun Heap@0 () T@PolymorphicMapType_11465)
(declare-fun x@2 () Int)
(declare-fun j$1_2 () Int)
(declare-fun Mask@0 () T@PolymorphicMapType_11486)
(declare-fun neverTriggered3 (Int) Bool)
(declare-fun qpRange3 (T@Ref) Bool)
(declare-fun invRecv3 (T@Ref) Int)
(declare-fun QPMask@4 () T@PolymorphicMapType_11486)
(declare-fun QPMask@1 () T@PolymorphicMapType_11486)
(declare-fun qpRange8 (T@Ref) Bool)
(declare-fun invRecv8 (T@Ref) Int)
(declare-fun QPMask@3 () T@PolymorphicMapType_11486)
(declare-fun x@0 () Int)
(declare-fun i_21 () Int)
(declare-fun QPMask@6 () T@PolymorphicMapType_11486)
(declare-fun i_7 () Int)
(declare-fun j$4_1 () Int)
(declare-fun qpRange5 (T@Ref) Bool)
(declare-fun invRecv5 (T@Ref) Int)
(declare-fun y@0 () Int)
(declare-fun j$4 () Int)
(declare-fun neverTriggered4 (Int) Bool)
(declare-fun qpRange4 (T@Ref) Bool)
(declare-fun invRecv4 (T@Ref) Int)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) Int)
(set-info :boogie-vc-id vmax)
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
 (=> (= (ControlFlow 0 0) 97) (let ((anon15_correct true))
(let ((anon69_Else_correct  (=> (and (not (and (<= 0 j$2) (< j$2 (len a_2@@1)))) (= (ControlFlow 0 86) 82)) anon15_correct)))
(let ((anon69_Then_correct  (=> (and (<= 0 j$2) (< j$2 (len a_2@@1))) (and (=> (= (ControlFlow 0 83) (- 0 85)) (HasDirectPerm_7946_1545 QPMask@7 (loc a_2@@1 j$2) val)) (=> (HasDirectPerm_7946_1545 QPMask@7 (loc a_2@@1 j$2) val) (and (=> (= (ControlFlow 0 83) (- 0 84)) (HasDirectPerm_7946_1545 QPMask@7 (loc a_2@@1 x) val)) (=> (HasDirectPerm_7946_1545 QPMask@7 (loc a_2@@1 x) val) (=> (= (ControlFlow 0 83) 82) anon15_correct))))))))
(let ((anon68_Else_correct true))
(let ((anon12_correct  (=> (state PostHeap@0 QPMask@7) (and (and (=> (= (ControlFlow 0 87) 81) anon68_Else_correct) (=> (= (ControlFlow 0 87) 83) anon69_Then_correct)) (=> (= (ControlFlow 0 87) 86) anon69_Else_correct)))))
(let ((anon67_Else_correct  (=> (and (and (not (= (len a_2@@1) 0)) (<= 0 x)) (and (< x (len a_2@@1)) (= (ControlFlow 0 89) 87))) anon12_correct)))
(let ((anon67_Then_correct  (=> (= (len a_2@@1) 0) (=> (and (= x (- 0 1)) (= (ControlFlow 0 88) 87)) anon12_correct))))
(let ((anon65_Else_correct  (=> (and (forall ((j$1_1 Int) ) (!  (=> (and (<= 0 j$1_1) (< j$1_1 (len a_2@@1))) (= (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| PostHeap@0) (loc a_2@@1 j$1_1) val) (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| Heap@@17) (loc a_2@@1 j$1_1) val)))
 :qid |stdinbpl.395:20|
 :skolemid |36|
 :pattern ( (loc a_2@@1 j$1_1))
)) (state PostHeap@0 QPMask@7)) (and (=> (= (ControlFlow 0 90) 88) anon67_Then_correct) (=> (= (ControlFlow 0 90) 89) anon67_Else_correct)))))
(let ((anon8_correct true))
(let ((anon66_Else_correct  (=> (and (not (and (<= 0 j$1) (< j$1 (len a_2@@1)))) (= (ControlFlow 0 80) 76)) anon8_correct)))
(let ((anon66_Then_correct  (=> (and (<= 0 j$1) (< j$1 (len a_2@@1))) (and (=> (= (ControlFlow 0 77) (- 0 79)) (HasDirectPerm_7946_1545 QPMask@7 (loc a_2@@1 j$1) val)) (=> (HasDirectPerm_7946_1545 QPMask@7 (loc a_2@@1 j$1) val) (and (=> (= (ControlFlow 0 77) (- 0 78)) (HasDirectPerm_7946_1545 QPMask@0 (loc a_2@@1 j$1) val)) (=> (HasDirectPerm_7946_1545 QPMask@0 (loc a_2@@1 j$1) val) (=> (= (ControlFlow 0 77) 76) anon8_correct))))))))
(let ((anon64_Else_correct  (and (=> (= (ControlFlow 0 91) (- 0 92)) (forall ((j$0_1 Int) (j$0_1_1 Int) ) (!  (=> (and (and (and (and (not (= j$0_1 j$0_1_1)) (and (<= 0 j$0_1) (< j$0_1 (len a_2@@1)))) (and (<= 0 j$0_1_1) (< j$0_1_1 (len a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 j$0_1) (loc a_2@@1 j$0_1_1))))
 :qid |stdinbpl.352:15|
 :skolemid |30|
))) (=> (forall ((j$0_1@@0 Int) (j$0_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= j$0_1@@0 j$0_1_1@@0)) (and (<= 0 j$0_1@@0) (< j$0_1@@0 (len a_2@@1)))) (and (<= 0 j$0_1_1@@0) (< j$0_1_1@@0 (len a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 j$0_1@@0) (loc a_2@@1 j$0_1_1@@0))))
 :qid |stdinbpl.352:15|
 :skolemid |30|
)) (=> (and (and (forall ((j$0_1@@1 Int) ) (!  (=> (and (and (<= 0 j$0_1@@1) (< j$0_1@@1 (len a_2@@1))) (< NoPerm FullPerm)) (and (qpRange2 (loc a_2@@1 j$0_1@@1)) (= (invRecv2 (loc a_2@@1 j$0_1@@1)) j$0_1@@1)))
 :qid |stdinbpl.358:22|
 :skolemid |31|
 :pattern ( (loc a_2@@1 j$0_1@@1))
 :pattern ( (loc a_2@@1 j$0_1@@1))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv2 o_9)) (< (invRecv2 o_9) (len a_2@@1))) (< NoPerm FullPerm)) (qpRange2 o_9)) (= (loc a_2@@1 (invRecv2 o_9)) o_9))
 :qid |stdinbpl.362:22|
 :skolemid |32|
 :pattern ( (invRecv2 o_9))
))) (and (forall ((j$0_1@@2 Int) ) (!  (=> (and (<= 0 j$0_1@@2) (< j$0_1@@2 (len a_2@@1))) (not (= (loc a_2@@1 j$0_1@@2) null)))
 :qid |stdinbpl.368:22|
 :skolemid |33|
 :pattern ( (loc a_2@@1 j$0_1@@2))
 :pattern ( (loc a_2@@1 j$0_1@@2))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv2 o_9@@0)) (< (invRecv2 o_9@@0) (len a_2@@1))) (< NoPerm FullPerm)) (qpRange2 o_9@@0)) (and (=> (< NoPerm FullPerm) (= (loc a_2@@1 (invRecv2 o_9@@0)) o_9@@0)) (= (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@7) o_9@@0 val) (+ (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| ZeroMask) o_9@@0 val) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv2 o_9@@0)) (< (invRecv2 o_9@@0) (len a_2@@1))) (< NoPerm FullPerm)) (qpRange2 o_9@@0))) (= (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@7) o_9@@0 val) (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| ZeroMask) o_9@@0 val))))
 :qid |stdinbpl.374:22|
 :skolemid |34|
 :pattern ( (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@7) o_9@@0 val))
)))) (=> (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_11525_53) ) (!  (=> true (= (select (|PolymorphicMapType_11486_7946_53#PolymorphicMapType_11486| ZeroMask) o_9@@1 f_5) (select (|PolymorphicMapType_11486_7946_53#PolymorphicMapType_11486| QPMask@7) o_9@@1 f_5)))
 :qid |stdinbpl.378:29|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_11486_7946_53#PolymorphicMapType_11486| ZeroMask) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_11486_7946_53#PolymorphicMapType_11486| QPMask@7) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_11538_11539) ) (!  (=> true (= (select (|PolymorphicMapType_11486_7946_11539#PolymorphicMapType_11486| ZeroMask) o_9@@2 f_5@@0) (select (|PolymorphicMapType_11486_7946_11539#PolymorphicMapType_11486| QPMask@7) o_9@@2 f_5@@0)))
 :qid |stdinbpl.378:29|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_11486_7946_11539#PolymorphicMapType_11486| ZeroMask) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_11486_7946_11539#PolymorphicMapType_11486| QPMask@7) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_14982_1545) ) (!  (=> (not (= f_5@@1 val)) (= (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| ZeroMask) o_9@@3 f_5@@1) (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@7) o_9@@3 f_5@@1)))
 :qid |stdinbpl.378:29|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| ZeroMask) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@7) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_7946_34261) ) (!  (=> true (= (select (|PolymorphicMapType_11486_7946_34261#PolymorphicMapType_11486| ZeroMask) o_9@@4 f_5@@2) (select (|PolymorphicMapType_11486_7946_34261#PolymorphicMapType_11486| QPMask@7) o_9@@4 f_5@@2)))
 :qid |stdinbpl.378:29|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_11486_7946_34261#PolymorphicMapType_11486| ZeroMask) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_11486_7946_34261#PolymorphicMapType_11486| QPMask@7) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_7946_34394) ) (!  (=> true (= (select (|PolymorphicMapType_11486_7946_38516#PolymorphicMapType_11486| ZeroMask) o_9@@5 f_5@@3) (select (|PolymorphicMapType_11486_7946_38516#PolymorphicMapType_11486| QPMask@7) o_9@@5 f_5@@3)))
 :qid |stdinbpl.378:29|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_11486_7946_38516#PolymorphicMapType_11486| ZeroMask) o_9@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_11486_7946_38516#PolymorphicMapType_11486| QPMask@7) o_9@@5 f_5@@3))
))) (state PostHeap@0 QPMask@7)) (and (and (=> (= (ControlFlow 0 91) 90) anon65_Else_correct) (=> (= (ControlFlow 0 91) 77) anon66_Then_correct)) (=> (= (ControlFlow 0 91) 80) anon66_Else_correct))))))))
(let ((anon64_Then_correct true))
(let ((anon63_Then_correct  (=> (state PostHeap@0 ZeroMask) (and (=> (= (ControlFlow 0 93) 75) anon64_Then_correct) (=> (= (ControlFlow 0 93) 91) anon64_Else_correct)))))
(let ((anon47_correct true))
(let ((anon85_Else_correct  (=> (and (not (and (<= 0 j$4_5) (< j$4_5 (len a_2@@1)))) (= (ControlFlow 0 57) 54)) anon47_correct)))
(let ((anon85_Then_correct  (=> (and (<= 0 j$4_5) (< j$4_5 (len a_2@@1))) (and (=> (= (ControlFlow 0 55) (- 0 56)) (= (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| ExhaleHeap@0) (loc a_2@@1 j$4_5) val) (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| Heap@@17) (loc a_2@@1 j$4_5) val))) (=> (= (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| ExhaleHeap@0) (loc a_2@@1 j$4_5) val) (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| Heap@@17) (loc a_2@@1 j$4_5) val)) (=> (= (ControlFlow 0 55) 54) anon47_correct))))))
(let ((anon84_Else_correct  (=> (forall ((j$4_6_1 Int) ) (!  (=> (and (<= 0 j$4_6_1) (< j$4_6_1 (len a_2@@1))) (= (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| ExhaleHeap@0) (loc a_2@@1 j$4_6_1) val) (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| Heap@@17) (loc a_2@@1 j$4_6_1) val)))
 :qid |stdinbpl.754:28|
 :skolemid |72|
 :pattern ( (loc a_2@@1 j$4_6_1))
)) (and (=> (= (ControlFlow 0 50) (- 0 53)) (<= 0 x@4)) (=> (<= 0 x@4) (and (=> (= (ControlFlow 0 50) (- 0 52)) (<= x@4 y@3)) (=> (<= x@4 y@3) (and (=> (= (ControlFlow 0 50) (- 0 51)) (< y@3 (len a_2@@1))) (=> (< y@3 (len a_2@@1)) (=> (= (ControlFlow 0 50) (- 0 49)) (or (forall ((i_9_1 Int) ) (!  (=> (or (and (<= 0 i_9_1) (< i_9_1 x@4)) (and (< y@3 i_9_1) (< i_9_1 (len a_2@@1)))) (< (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| ExhaleHeap@0) (loc a_2@@1 i_9_1) val) (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| ExhaleHeap@0) (loc a_2@@1 x@4) val)))
 :qid |stdinbpl.765:23|
 :skolemid |73|
 :pattern ( (loc a_2@@1 i_9_1))
)) (forall ((i_10_1 Int) ) (!  (=> (or (and (<= 0 i_10_1) (< i_10_1 x@4)) (and (< y@3 i_10_1) (< i_10_1 (len a_2@@1)))) (<= (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| ExhaleHeap@0) (loc a_2@@1 i_10_1) val) (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| ExhaleHeap@0) (loc a_2@@1 y@3) val)))
 :qid |stdinbpl.768:26|
 :skolemid |74|
 :pattern ( (loc a_2@@1 i_10_1))
)))))))))))))
(let ((anon44_correct  (=> (state ExhaleHeap@0 QPMask@2) (and (=> (= (ControlFlow 0 58) (- 0 60)) (forall ((j$3_4 Int) (j$3_4_1 Int) ) (!  (=> (and (and (and (and (not (= j$3_4 j$3_4_1)) (and (<= 0 j$3_4) (< j$3_4 (len a_2@@1)))) (and (<= 0 j$3_4_1) (< j$3_4_1 (len a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 j$3_4) (loc a_2@@1 j$3_4_1))))
 :qid |stdinbpl.713:25|
 :skolemid |66|
 :pattern ( (neverTriggered7 j$3_4) (neverTriggered7 j$3_4_1))
))) (=> (forall ((j$3_4@@0 Int) (j$3_4_1@@0 Int) ) (!  (=> (and (and (and (and (not (= j$3_4@@0 j$3_4_1@@0)) (and (<= 0 j$3_4@@0) (< j$3_4@@0 (len a_2@@1)))) (and (<= 0 j$3_4_1@@0) (< j$3_4_1@@0 (len a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 j$3_4@@0) (loc a_2@@1 j$3_4_1@@0))))
 :qid |stdinbpl.713:25|
 :skolemid |66|
 :pattern ( (neverTriggered7 j$3_4@@0) (neverTriggered7 j$3_4_1@@0))
)) (and (=> (= (ControlFlow 0 58) (- 0 59)) (forall ((j$3_4@@1 Int) ) (!  (=> (and (<= 0 j$3_4@@1) (< j$3_4@@1 (len a_2@@1))) (>= (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@2) (loc a_2@@1 j$3_4@@1) val) FullPerm))
 :qid |stdinbpl.720:25|
 :skolemid |67|
 :pattern ( (loc a_2@@1 j$3_4@@1))
 :pattern ( (loc a_2@@1 j$3_4@@1))
))) (=> (forall ((j$3_4@@2 Int) ) (!  (=> (and (<= 0 j$3_4@@2) (< j$3_4@@2 (len a_2@@1))) (>= (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@2) (loc a_2@@1 j$3_4@@2) val) FullPerm))
 :qid |stdinbpl.720:25|
 :skolemid |67|
 :pattern ( (loc a_2@@1 j$3_4@@2))
 :pattern ( (loc a_2@@1 j$3_4@@2))
)) (=> (forall ((j$3_4@@3 Int) ) (!  (=> (and (and (<= 0 j$3_4@@3) (< j$3_4@@3 (len a_2@@1))) (< NoPerm FullPerm)) (and (qpRange7 (loc a_2@@1 j$3_4@@3)) (= (invRecv7 (loc a_2@@1 j$3_4@@3)) j$3_4@@3)))
 :qid |stdinbpl.726:30|
 :skolemid |68|
 :pattern ( (loc a_2@@1 j$3_4@@3))
 :pattern ( (loc a_2@@1 j$3_4@@3))
)) (=> (and (forall ((o_9@@6 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv7 o_9@@6)) (< (invRecv7 o_9@@6) (len a_2@@1))) (and (< NoPerm FullPerm) (qpRange7 o_9@@6))) (= (loc a_2@@1 (invRecv7 o_9@@6)) o_9@@6))
 :qid |stdinbpl.730:30|
 :skolemid |69|
 :pattern ( (invRecv7 o_9@@6))
)) (forall ((o_9@@7 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv7 o_9@@7)) (< (invRecv7 o_9@@7) (len a_2@@1))) (and (< NoPerm FullPerm) (qpRange7 o_9@@7))) (and (= (loc a_2@@1 (invRecv7 o_9@@7)) o_9@@7) (= (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@5) o_9@@7 val) (- (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@2) o_9@@7 val) FullPerm)))) (=> (not (and (and (<= 0 (invRecv7 o_9@@7)) (< (invRecv7 o_9@@7) (len a_2@@1))) (and (< NoPerm FullPerm) (qpRange7 o_9@@7)))) (= (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@5) o_9@@7 val) (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@2) o_9@@7 val))))
 :qid |stdinbpl.736:30|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@5) o_9@@7 val))
))) (=> (and (and (and (and (forall ((o_9@@8 T@Ref) (f_5@@4 T@Field_11525_53) ) (!  (=> true (= (select (|PolymorphicMapType_11486_7946_53#PolymorphicMapType_11486| QPMask@2) o_9@@8 f_5@@4) (select (|PolymorphicMapType_11486_7946_53#PolymorphicMapType_11486| QPMask@5) o_9@@8 f_5@@4)))
 :qid |stdinbpl.742:37|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_11486_7946_53#PolymorphicMapType_11486| QPMask@5) o_9@@8 f_5@@4))
)) (forall ((o_9@@9 T@Ref) (f_5@@5 T@Field_11538_11539) ) (!  (=> true (= (select (|PolymorphicMapType_11486_7946_11539#PolymorphicMapType_11486| QPMask@2) o_9@@9 f_5@@5) (select (|PolymorphicMapType_11486_7946_11539#PolymorphicMapType_11486| QPMask@5) o_9@@9 f_5@@5)))
 :qid |stdinbpl.742:37|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_11486_7946_11539#PolymorphicMapType_11486| QPMask@5) o_9@@9 f_5@@5))
))) (forall ((o_9@@10 T@Ref) (f_5@@6 T@Field_14982_1545) ) (!  (=> (not (= f_5@@6 val)) (= (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@2) o_9@@10 f_5@@6) (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@5) o_9@@10 f_5@@6)))
 :qid |stdinbpl.742:37|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@5) o_9@@10 f_5@@6))
))) (forall ((o_9@@11 T@Ref) (f_5@@7 T@Field_7946_34261) ) (!  (=> true (= (select (|PolymorphicMapType_11486_7946_34261#PolymorphicMapType_11486| QPMask@2) o_9@@11 f_5@@7) (select (|PolymorphicMapType_11486_7946_34261#PolymorphicMapType_11486| QPMask@5) o_9@@11 f_5@@7)))
 :qid |stdinbpl.742:37|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_11486_7946_34261#PolymorphicMapType_11486| QPMask@5) o_9@@11 f_5@@7))
))) (forall ((o_9@@12 T@Ref) (f_5@@8 T@Field_7946_34394) ) (!  (=> true (= (select (|PolymorphicMapType_11486_7946_38516#PolymorphicMapType_11486| QPMask@2) o_9@@12 f_5@@8) (select (|PolymorphicMapType_11486_7946_38516#PolymorphicMapType_11486| QPMask@5) o_9@@12 f_5@@8)))
 :qid |stdinbpl.742:37|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_11486_7946_38516#PolymorphicMapType_11486| QPMask@5) o_9@@12 f_5@@8))
))) (and (and (=> (= (ControlFlow 0 58) 50) anon84_Else_correct) (=> (= (ControlFlow 0 58) 55) anon85_Then_correct)) (=> (= (ControlFlow 0 58) 57) anon85_Else_correct))))))))))))
(let ((anon83_Else_correct  (=> (and (< (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| ExhaleHeap@0) (loc a_2@@1 y@1) val) (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| ExhaleHeap@0) (loc a_2@@1 x@1) val)) (= y@2 (- y@1 1))) (=> (and (and (state ExhaleHeap@0 QPMask@2) (= x@4 x@1)) (and (= y@3 y@2) (= (ControlFlow 0 62) 58))) anon44_correct))))
(let ((anon83_Then_correct  (=> (and (<= (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| ExhaleHeap@0) (loc a_2@@1 x@1) val) (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| ExhaleHeap@0) (loc a_2@@1 y@1) val)) (= x@3 (+ x@1 1))) (=> (and (and (state ExhaleHeap@0 QPMask@2) (= x@4 x@3)) (and (= y@3 y@1) (= (ControlFlow 0 61) 58))) anon44_correct))))
(let ((anon82_Then_correct  (=> (state ExhaleHeap@0 ZeroMask) (and (=> (= (ControlFlow 0 63) (- 0 66)) (forall ((j$3_3 Int) (j$3_3_1 Int) ) (!  (=> (and (and (and (and (not (= j$3_3 j$3_3_1)) (and (<= 0 j$3_3) (< j$3_3 (len a_2@@1)))) (and (<= 0 j$3_3_1) (< j$3_3_1 (len a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 j$3_3) (loc a_2@@1 j$3_3_1))))
 :qid |stdinbpl.631:23|
 :skolemid |57|
))) (=> (forall ((j$3_3@@0 Int) (j$3_3_1@@0 Int) ) (!  (=> (and (and (and (and (not (= j$3_3@@0 j$3_3_1@@0)) (and (<= 0 j$3_3@@0) (< j$3_3@@0 (len a_2@@1)))) (and (<= 0 j$3_3_1@@0) (< j$3_3_1@@0 (len a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 j$3_3@@0) (loc a_2@@1 j$3_3_1@@0))))
 :qid |stdinbpl.631:23|
 :skolemid |57|
)) (=> (and (and (forall ((j$3_3@@1 Int) ) (!  (=> (and (and (<= 0 j$3_3@@1) (< j$3_3@@1 (len a_2@@1))) (< NoPerm FullPerm)) (and (qpRange6 (loc a_2@@1 j$3_3@@1)) (= (invRecv6 (loc a_2@@1 j$3_3@@1)) j$3_3@@1)))
 :qid |stdinbpl.637:30|
 :skolemid |58|
 :pattern ( (loc a_2@@1 j$3_3@@1))
 :pattern ( (loc a_2@@1 j$3_3@@1))
)) (forall ((o_9@@13 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv6 o_9@@13)) (< (invRecv6 o_9@@13) (len a_2@@1))) (< NoPerm FullPerm)) (qpRange6 o_9@@13)) (= (loc a_2@@1 (invRecv6 o_9@@13)) o_9@@13))
 :qid |stdinbpl.641:30|
 :skolemid |59|
 :pattern ( (invRecv6 o_9@@13))
))) (and (forall ((j$3_3@@2 Int) ) (!  (=> (and (<= 0 j$3_3@@2) (< j$3_3@@2 (len a_2@@1))) (not (= (loc a_2@@1 j$3_3@@2) null)))
 :qid |stdinbpl.647:30|
 :skolemid |60|
 :pattern ( (loc a_2@@1 j$3_3@@2))
 :pattern ( (loc a_2@@1 j$3_3@@2))
)) (forall ((o_9@@14 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv6 o_9@@14)) (< (invRecv6 o_9@@14) (len a_2@@1))) (< NoPerm FullPerm)) (qpRange6 o_9@@14)) (and (=> (< NoPerm FullPerm) (= (loc a_2@@1 (invRecv6 o_9@@14)) o_9@@14)) (= (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@2) o_9@@14 val) (+ (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| ZeroMask) o_9@@14 val) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv6 o_9@@14)) (< (invRecv6 o_9@@14) (len a_2@@1))) (< NoPerm FullPerm)) (qpRange6 o_9@@14))) (= (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@2) o_9@@14 val) (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| ZeroMask) o_9@@14 val))))
 :qid |stdinbpl.653:30|
 :skolemid |61|
 :pattern ( (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@2) o_9@@14 val))
)))) (=> (and (and (and (and (and (and (forall ((o_9@@15 T@Ref) (f_5@@9 T@Field_11525_53) ) (!  (=> true (= (select (|PolymorphicMapType_11486_7946_53#PolymorphicMapType_11486| ZeroMask) o_9@@15 f_5@@9) (select (|PolymorphicMapType_11486_7946_53#PolymorphicMapType_11486| QPMask@2) o_9@@15 f_5@@9)))
 :qid |stdinbpl.657:37|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_11486_7946_53#PolymorphicMapType_11486| ZeroMask) o_9@@15 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_11486_7946_53#PolymorphicMapType_11486| QPMask@2) o_9@@15 f_5@@9))
)) (forall ((o_9@@16 T@Ref) (f_5@@10 T@Field_11538_11539) ) (!  (=> true (= (select (|PolymorphicMapType_11486_7946_11539#PolymorphicMapType_11486| ZeroMask) o_9@@16 f_5@@10) (select (|PolymorphicMapType_11486_7946_11539#PolymorphicMapType_11486| QPMask@2) o_9@@16 f_5@@10)))
 :qid |stdinbpl.657:37|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_11486_7946_11539#PolymorphicMapType_11486| ZeroMask) o_9@@16 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_11486_7946_11539#PolymorphicMapType_11486| QPMask@2) o_9@@16 f_5@@10))
))) (forall ((o_9@@17 T@Ref) (f_5@@11 T@Field_14982_1545) ) (!  (=> (not (= f_5@@11 val)) (= (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| ZeroMask) o_9@@17 f_5@@11) (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@2) o_9@@17 f_5@@11)))
 :qid |stdinbpl.657:37|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| ZeroMask) o_9@@17 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@2) o_9@@17 f_5@@11))
))) (forall ((o_9@@18 T@Ref) (f_5@@12 T@Field_7946_34261) ) (!  (=> true (= (select (|PolymorphicMapType_11486_7946_34261#PolymorphicMapType_11486| ZeroMask) o_9@@18 f_5@@12) (select (|PolymorphicMapType_11486_7946_34261#PolymorphicMapType_11486| QPMask@2) o_9@@18 f_5@@12)))
 :qid |stdinbpl.657:37|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_11486_7946_34261#PolymorphicMapType_11486| ZeroMask) o_9@@18 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_11486_7946_34261#PolymorphicMapType_11486| QPMask@2) o_9@@18 f_5@@12))
))) (forall ((o_9@@19 T@Ref) (f_5@@13 T@Field_7946_34394) ) (!  (=> true (= (select (|PolymorphicMapType_11486_7946_38516#PolymorphicMapType_11486| ZeroMask) o_9@@19 f_5@@13) (select (|PolymorphicMapType_11486_7946_38516#PolymorphicMapType_11486| QPMask@2) o_9@@19 f_5@@13)))
 :qid |stdinbpl.657:37|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_11486_7946_38516#PolymorphicMapType_11486| ZeroMask) o_9@@19 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_11486_7946_38516#PolymorphicMapType_11486| QPMask@2) o_9@@19 f_5@@13))
))) (state ExhaleHeap@0 QPMask@2)) (and (and (and (forall ((j$4_4 Int) ) (!  (=> (and (<= 0 j$4_4) (< j$4_4 (len a_2@@1))) (= (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| ExhaleHeap@0) (loc a_2@@1 j$4_4) val) (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| Heap@@17) (loc a_2@@1 j$4_4) val)))
 :qid |stdinbpl.663:28|
 :skolemid |63|
 :pattern ( (loc a_2@@1 j$4_4))
)) (<= 0 x@1)) (and (<= x@1 y@1) (< y@1 (len a_2@@1)))) (and (and (or (forall ((i_7_1 Int) ) (!  (=> (or (and (<= 0 i_7_1) (< i_7_1 x@1)) (and (< y@1 i_7_1) (< i_7_1 (len a_2@@1)))) (< (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| ExhaleHeap@0) (loc a_2@@1 i_7_1) val) (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| ExhaleHeap@0) (loc a_2@@1 x@1) val)))
 :qid |stdinbpl.670:28|
 :skolemid |64|
 :pattern ( (loc a_2@@1 i_7_1))
)) (forall ((i_8_1 Int) ) (!  (=> (or (and (<= 0 i_8_1) (< i_8_1 x@1)) (and (< y@1 i_8_1) (< i_8_1 (len a_2@@1)))) (<= (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| ExhaleHeap@0) (loc a_2@@1 i_8_1) val) (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| ExhaleHeap@0) (loc a_2@@1 y@1) val)))
 :qid |stdinbpl.673:26|
 :skolemid |65|
 :pattern ( (loc a_2@@1 i_8_1))
))) (state ExhaleHeap@0 QPMask@2)) (and (not (= x@1 y@1)) (state ExhaleHeap@0 QPMask@2))))) (and (=> (= (ControlFlow 0 63) (- 0 65)) (HasDirectPerm_7946_1545 QPMask@2 (loc a_2@@1 x@1) val)) (=> (HasDirectPerm_7946_1545 QPMask@2 (loc a_2@@1 x@1) val) (and (=> (= (ControlFlow 0 63) (- 0 64)) (HasDirectPerm_7946_1545 QPMask@2 (loc a_2@@1 y@1) val)) (=> (HasDirectPerm_7946_1545 QPMask@2 (loc a_2@@1 y@1) val) (and (=> (= (ControlFlow 0 63) 61) anon83_Then_correct) (=> (= (ControlFlow 0 63) 62) anon83_Else_correct)))))))))))))
(let ((anon60_correct true))
(let ((anon90_Else_correct  (=> (and (not (and (<= 0 j$2_2) (< j$2_2 (len a_2@@1)))) (= (ControlFlow 0 36) 33)) anon60_correct)))
(let ((anon90_Then_correct  (=> (and (<= 0 j$2_2) (< j$2_2 (len a_2@@1))) (and (=> (= (ControlFlow 0 34) (- 0 35)) (<= (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| Heap@0) (loc a_2@@1 j$2_2) val) (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| Heap@0) (loc a_2@@1 x@2) val))) (=> (<= (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| Heap@0) (loc a_2@@1 j$2_2) val) (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| Heap@0) (loc a_2@@1 x@2) val)) (=> (= (ControlFlow 0 34) 33) anon60_correct))))))
(let ((anon89_Else_correct true))
(let ((anon88_Else_correct  (=> (not (= (len a_2@@1) 0)) (and (=> (= (ControlFlow 0 39) (- 0 41)) (<= 0 x@2)) (=> (<= 0 x@2) (and (=> (= (ControlFlow 0 39) (- 0 40)) (< x@2 (len a_2@@1))) (=> (< x@2 (len a_2@@1)) (and (and (=> (= (ControlFlow 0 39) 32) anon89_Else_correct) (=> (= (ControlFlow 0 39) 34) anon90_Then_correct)) (=> (= (ControlFlow 0 39) 36) anon90_Else_correct)))))))))
(let ((anon88_Then_correct  (=> (= (len a_2@@1) 0) (and (=> (= (ControlFlow 0 37) (- 0 38)) (= x@2 (- 0 1))) (=> (= x@2 (- 0 1)) (and (and (=> (= (ControlFlow 0 37) 32) anon89_Else_correct) (=> (= (ControlFlow 0 37) 34) anon90_Then_correct)) (=> (= (ControlFlow 0 37) 36) anon90_Else_correct)))))))
(let ((anon86_Else_correct  (=> (forall ((j$1_3_1 Int) ) (!  (=> (and (<= 0 j$1_3_1) (< j$1_3_1 (len a_2@@1))) (= (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| Heap@0) (loc a_2@@1 j$1_3_1) val) (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| Heap@@17) (loc a_2@@1 j$1_3_1) val)))
 :qid |stdinbpl.887:20|
 :skolemid |90|
 :pattern ( (loc a_2@@1 j$1_3_1))
)) (and (=> (= (ControlFlow 0 42) 37) anon88_Then_correct) (=> (= (ControlFlow 0 42) 39) anon88_Else_correct)))))
(let ((anon53_correct true))
(let ((anon87_Else_correct  (=> (and (not (and (<= 0 j$1_2) (< j$1_2 (len a_2@@1)))) (= (ControlFlow 0 31) 28)) anon53_correct)))
(let ((anon87_Then_correct  (=> (and (<= 0 j$1_2) (< j$1_2 (len a_2@@1))) (and (=> (= (ControlFlow 0 29) (- 0 30)) (= (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| Heap@0) (loc a_2@@1 j$1_2) val) (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| Heap@@17) (loc a_2@@1 j$1_2) val))) (=> (= (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| Heap@0) (loc a_2@@1 j$1_2) val) (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| Heap@@17) (loc a_2@@1 j$1_2) val)) (=> (= (ControlFlow 0 29) 28) anon53_correct))))))
(let ((anon50_correct  (=> (state Heap@0 Mask@0) (and (=> (= (ControlFlow 0 43) (- 0 45)) (forall ((j$0_2 Int) (j$0_2_1 Int) ) (!  (=> (and (and (and (and (not (= j$0_2 j$0_2_1)) (and (<= 0 j$0_2) (< j$0_2 (len a_2@@1)))) (and (<= 0 j$0_2_1) (< j$0_2_1 (len a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 j$0_2) (loc a_2@@1 j$0_2_1))))
 :qid |stdinbpl.846:17|
 :skolemid |84|
 :pattern ( (neverTriggered3 j$0_2) (neverTriggered3 j$0_2_1))
))) (=> (forall ((j$0_2@@0 Int) (j$0_2_1@@0 Int) ) (!  (=> (and (and (and (and (not (= j$0_2@@0 j$0_2_1@@0)) (and (<= 0 j$0_2@@0) (< j$0_2@@0 (len a_2@@1)))) (and (<= 0 j$0_2_1@@0) (< j$0_2_1@@0 (len a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 j$0_2@@0) (loc a_2@@1 j$0_2_1@@0))))
 :qid |stdinbpl.846:17|
 :skolemid |84|
 :pattern ( (neverTriggered3 j$0_2@@0) (neverTriggered3 j$0_2_1@@0))
)) (and (=> (= (ControlFlow 0 43) (- 0 44)) (forall ((j$0_2@@1 Int) ) (!  (=> (and (<= 0 j$0_2@@1) (< j$0_2@@1 (len a_2@@1))) (>= (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| Mask@0) (loc a_2@@1 j$0_2@@1) val) FullPerm))
 :qid |stdinbpl.853:17|
 :skolemid |85|
 :pattern ( (loc a_2@@1 j$0_2@@1))
 :pattern ( (loc a_2@@1 j$0_2@@1))
))) (=> (forall ((j$0_2@@2 Int) ) (!  (=> (and (<= 0 j$0_2@@2) (< j$0_2@@2 (len a_2@@1))) (>= (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| Mask@0) (loc a_2@@1 j$0_2@@2) val) FullPerm))
 :qid |stdinbpl.853:17|
 :skolemid |85|
 :pattern ( (loc a_2@@1 j$0_2@@2))
 :pattern ( (loc a_2@@1 j$0_2@@2))
)) (=> (forall ((j$0_2@@3 Int) ) (!  (=> (and (and (<= 0 j$0_2@@3) (< j$0_2@@3 (len a_2@@1))) (< NoPerm FullPerm)) (and (qpRange3 (loc a_2@@1 j$0_2@@3)) (= (invRecv3 (loc a_2@@1 j$0_2@@3)) j$0_2@@3)))
 :qid |stdinbpl.859:22|
 :skolemid |86|
 :pattern ( (loc a_2@@1 j$0_2@@3))
 :pattern ( (loc a_2@@1 j$0_2@@3))
)) (=> (and (forall ((o_9@@20 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv3 o_9@@20)) (< (invRecv3 o_9@@20) (len a_2@@1))) (and (< NoPerm FullPerm) (qpRange3 o_9@@20))) (= (loc a_2@@1 (invRecv3 o_9@@20)) o_9@@20))
 :qid |stdinbpl.863:22|
 :skolemid |87|
 :pattern ( (invRecv3 o_9@@20))
)) (forall ((o_9@@21 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv3 o_9@@21)) (< (invRecv3 o_9@@21) (len a_2@@1))) (and (< NoPerm FullPerm) (qpRange3 o_9@@21))) (and (= (loc a_2@@1 (invRecv3 o_9@@21)) o_9@@21) (= (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@4) o_9@@21 val) (- (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| Mask@0) o_9@@21 val) FullPerm)))) (=> (not (and (and (<= 0 (invRecv3 o_9@@21)) (< (invRecv3 o_9@@21) (len a_2@@1))) (and (< NoPerm FullPerm) (qpRange3 o_9@@21)))) (= (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@4) o_9@@21 val) (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| Mask@0) o_9@@21 val))))
 :qid |stdinbpl.869:22|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@4) o_9@@21 val))
))) (=> (and (and (and (and (forall ((o_9@@22 T@Ref) (f_5@@14 T@Field_11525_53) ) (!  (=> true (= (select (|PolymorphicMapType_11486_7946_53#PolymorphicMapType_11486| Mask@0) o_9@@22 f_5@@14) (select (|PolymorphicMapType_11486_7946_53#PolymorphicMapType_11486| QPMask@4) o_9@@22 f_5@@14)))
 :qid |stdinbpl.875:29|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_11486_7946_53#PolymorphicMapType_11486| QPMask@4) o_9@@22 f_5@@14))
)) (forall ((o_9@@23 T@Ref) (f_5@@15 T@Field_11538_11539) ) (!  (=> true (= (select (|PolymorphicMapType_11486_7946_11539#PolymorphicMapType_11486| Mask@0) o_9@@23 f_5@@15) (select (|PolymorphicMapType_11486_7946_11539#PolymorphicMapType_11486| QPMask@4) o_9@@23 f_5@@15)))
 :qid |stdinbpl.875:29|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_11486_7946_11539#PolymorphicMapType_11486| QPMask@4) o_9@@23 f_5@@15))
))) (forall ((o_9@@24 T@Ref) (f_5@@16 T@Field_14982_1545) ) (!  (=> (not (= f_5@@16 val)) (= (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| Mask@0) o_9@@24 f_5@@16) (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@4) o_9@@24 f_5@@16)))
 :qid |stdinbpl.875:29|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@4) o_9@@24 f_5@@16))
))) (forall ((o_9@@25 T@Ref) (f_5@@17 T@Field_7946_34261) ) (!  (=> true (= (select (|PolymorphicMapType_11486_7946_34261#PolymorphicMapType_11486| Mask@0) o_9@@25 f_5@@17) (select (|PolymorphicMapType_11486_7946_34261#PolymorphicMapType_11486| QPMask@4) o_9@@25 f_5@@17)))
 :qid |stdinbpl.875:29|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_11486_7946_34261#PolymorphicMapType_11486| QPMask@4) o_9@@25 f_5@@17))
))) (forall ((o_9@@26 T@Ref) (f_5@@18 T@Field_7946_34394) ) (!  (=> true (= (select (|PolymorphicMapType_11486_7946_38516#PolymorphicMapType_11486| Mask@0) o_9@@26 f_5@@18) (select (|PolymorphicMapType_11486_7946_38516#PolymorphicMapType_11486| QPMask@4) o_9@@26 f_5@@18)))
 :qid |stdinbpl.875:29|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_11486_7946_38516#PolymorphicMapType_11486| QPMask@4) o_9@@26 f_5@@18))
))) (and (and (=> (= (ControlFlow 0 43) 42) anon86_Else_correct) (=> (= (ControlFlow 0 43) 29) anon87_Then_correct)) (=> (= (ControlFlow 0 43) 31) anon87_Else_correct))))))))))))
(let ((anon82_Else_correct  (=> (and (not (not (= x@1 y@1))) (state ExhaleHeap@0 QPMask@1)) (and (=> (= (ControlFlow 0 47) (- 0 48)) (forall ((j$3_5 Int) (j$3_5_1 Int) ) (!  (=> (and (and (and (and (not (= j$3_5 j$3_5_1)) (and (<= 0 j$3_5) (< j$3_5 (len a_2@@1)))) (and (<= 0 j$3_5_1) (< j$3_5_1 (len a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 j$3_5) (loc a_2@@1 j$3_5_1))))
 :qid |stdinbpl.785:21|
 :skolemid |75|
))) (=> (forall ((j$3_5@@0 Int) (j$3_5_1@@0 Int) ) (!  (=> (and (and (and (and (not (= j$3_5@@0 j$3_5_1@@0)) (and (<= 0 j$3_5@@0) (< j$3_5@@0 (len a_2@@1)))) (and (<= 0 j$3_5_1@@0) (< j$3_5_1@@0 (len a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 j$3_5@@0) (loc a_2@@1 j$3_5_1@@0))))
 :qid |stdinbpl.785:21|
 :skolemid |75|
)) (=> (and (and (forall ((j$3_5@@1 Int) ) (!  (=> (and (and (<= 0 j$3_5@@1) (< j$3_5@@1 (len a_2@@1))) (< NoPerm FullPerm)) (and (qpRange8 (loc a_2@@1 j$3_5@@1)) (= (invRecv8 (loc a_2@@1 j$3_5@@1)) j$3_5@@1)))
 :qid |stdinbpl.791:28|
 :skolemid |76|
 :pattern ( (loc a_2@@1 j$3_5@@1))
 :pattern ( (loc a_2@@1 j$3_5@@1))
)) (forall ((o_9@@27 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv8 o_9@@27)) (< (invRecv8 o_9@@27) (len a_2@@1))) (< NoPerm FullPerm)) (qpRange8 o_9@@27)) (= (loc a_2@@1 (invRecv8 o_9@@27)) o_9@@27))
 :qid |stdinbpl.795:28|
 :skolemid |77|
 :pattern ( (invRecv8 o_9@@27))
))) (and (forall ((j$3_5@@2 Int) ) (!  (=> (and (<= 0 j$3_5@@2) (< j$3_5@@2 (len a_2@@1))) (not (= (loc a_2@@1 j$3_5@@2) null)))
 :qid |stdinbpl.801:28|
 :skolemid |78|
 :pattern ( (loc a_2@@1 j$3_5@@2))
 :pattern ( (loc a_2@@1 j$3_5@@2))
)) (forall ((o_9@@28 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv8 o_9@@28)) (< (invRecv8 o_9@@28) (len a_2@@1))) (< NoPerm FullPerm)) (qpRange8 o_9@@28)) (and (=> (< NoPerm FullPerm) (= (loc a_2@@1 (invRecv8 o_9@@28)) o_9@@28)) (= (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@3) o_9@@28 val) (+ (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@1) o_9@@28 val) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv8 o_9@@28)) (< (invRecv8 o_9@@28) (len a_2@@1))) (< NoPerm FullPerm)) (qpRange8 o_9@@28))) (= (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@3) o_9@@28 val) (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@1) o_9@@28 val))))
 :qid |stdinbpl.807:28|
 :skolemid |79|
 :pattern ( (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@3) o_9@@28 val))
)))) (=> (and (and (and (and (and (and (forall ((o_9@@29 T@Ref) (f_5@@19 T@Field_11525_53) ) (!  (=> true (= (select (|PolymorphicMapType_11486_7946_53#PolymorphicMapType_11486| QPMask@1) o_9@@29 f_5@@19) (select (|PolymorphicMapType_11486_7946_53#PolymorphicMapType_11486| QPMask@3) o_9@@29 f_5@@19)))
 :qid |stdinbpl.811:35|
 :skolemid |80|
 :pattern ( (select (|PolymorphicMapType_11486_7946_53#PolymorphicMapType_11486| QPMask@1) o_9@@29 f_5@@19))
 :pattern ( (select (|PolymorphicMapType_11486_7946_53#PolymorphicMapType_11486| QPMask@3) o_9@@29 f_5@@19))
)) (forall ((o_9@@30 T@Ref) (f_5@@20 T@Field_11538_11539) ) (!  (=> true (= (select (|PolymorphicMapType_11486_7946_11539#PolymorphicMapType_11486| QPMask@1) o_9@@30 f_5@@20) (select (|PolymorphicMapType_11486_7946_11539#PolymorphicMapType_11486| QPMask@3) o_9@@30 f_5@@20)))
 :qid |stdinbpl.811:35|
 :skolemid |80|
 :pattern ( (select (|PolymorphicMapType_11486_7946_11539#PolymorphicMapType_11486| QPMask@1) o_9@@30 f_5@@20))
 :pattern ( (select (|PolymorphicMapType_11486_7946_11539#PolymorphicMapType_11486| QPMask@3) o_9@@30 f_5@@20))
))) (forall ((o_9@@31 T@Ref) (f_5@@21 T@Field_14982_1545) ) (!  (=> (not (= f_5@@21 val)) (= (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@1) o_9@@31 f_5@@21) (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@3) o_9@@31 f_5@@21)))
 :qid |stdinbpl.811:35|
 :skolemid |80|
 :pattern ( (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@1) o_9@@31 f_5@@21))
 :pattern ( (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@3) o_9@@31 f_5@@21))
))) (forall ((o_9@@32 T@Ref) (f_5@@22 T@Field_7946_34261) ) (!  (=> true (= (select (|PolymorphicMapType_11486_7946_34261#PolymorphicMapType_11486| QPMask@1) o_9@@32 f_5@@22) (select (|PolymorphicMapType_11486_7946_34261#PolymorphicMapType_11486| QPMask@3) o_9@@32 f_5@@22)))
 :qid |stdinbpl.811:35|
 :skolemid |80|
 :pattern ( (select (|PolymorphicMapType_11486_7946_34261#PolymorphicMapType_11486| QPMask@1) o_9@@32 f_5@@22))
 :pattern ( (select (|PolymorphicMapType_11486_7946_34261#PolymorphicMapType_11486| QPMask@3) o_9@@32 f_5@@22))
))) (forall ((o_9@@33 T@Ref) (f_5@@23 T@Field_7946_34394) ) (!  (=> true (= (select (|PolymorphicMapType_11486_7946_38516#PolymorphicMapType_11486| QPMask@1) o_9@@33 f_5@@23) (select (|PolymorphicMapType_11486_7946_38516#PolymorphicMapType_11486| QPMask@3) o_9@@33 f_5@@23)))
 :qid |stdinbpl.811:35|
 :skolemid |80|
 :pattern ( (select (|PolymorphicMapType_11486_7946_38516#PolymorphicMapType_11486| QPMask@1) o_9@@33 f_5@@23))
 :pattern ( (select (|PolymorphicMapType_11486_7946_38516#PolymorphicMapType_11486| QPMask@3) o_9@@33 f_5@@23))
))) (and (and (state ExhaleHeap@0 QPMask@3) (forall ((j$4_7 Int) ) (!  (=> (and (<= 0 j$4_7) (< j$4_7 (len a_2@@1))) (= (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| ExhaleHeap@0) (loc a_2@@1 j$4_7) val) (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| Heap@@17) (loc a_2@@1 j$4_7) val)))
 :qid |stdinbpl.817:26|
 :skolemid |81|
 :pattern ( (loc a_2@@1 j$4_7))
))) (and (<= 0 x@1) (<= x@1 y@1)))) (and (and (and (< y@1 (len a_2@@1)) (or (forall ((i_11_1 Int) ) (!  (=> (or (and (<= 0 i_11_1) (< i_11_1 x@1)) (and (< y@1 i_11_1) (< i_11_1 (len a_2@@1)))) (< (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| ExhaleHeap@0) (loc a_2@@1 i_11_1) val) (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| ExhaleHeap@0) (loc a_2@@1 x@1) val)))
 :qid |stdinbpl.824:26|
 :skolemid |82|
 :pattern ( (loc a_2@@1 i_11_1))
)) (forall ((i_12_1 Int) ) (!  (=> (or (and (<= 0 i_12_1) (< i_12_1 x@1)) (and (< y@1 i_12_1) (< i_12_1 (len a_2@@1)))) (<= (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| ExhaleHeap@0) (loc a_2@@1 i_12_1) val) (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| ExhaleHeap@0) (loc a_2@@1 y@1) val)))
 :qid |stdinbpl.827:24|
 :skolemid |83|
 :pattern ( (loc a_2@@1 i_12_1))
)))) (and (state ExhaleHeap@0 QPMask@3) (state ExhaleHeap@0 QPMask@3))) (and (and (= Heap@0 ExhaleHeap@0) (= Mask@0 QPMask@3)) (and (= x@2 x@1) (= (ControlFlow 0 47) 43))))) anon50_correct)))))))
(let ((anon70_Then_correct  (=> (= (len a_2@@1) 0) (=> (and (= x@0 (- 0 1)) (state Heap@@17 QPMask@0)) (=> (and (and (= Heap@0 Heap@@17) (= Mask@0 QPMask@0)) (and (= x@2 x@0) (= (ControlFlow 0 46) 43))) anon50_correct)))))
(let ((anon38_correct true))
(let ((anon81_Else_correct  (=> (and (not (or (and (<= 0 i_21) (< i_21 x@1)) (and (< y@1 i_21) (< i_21 (len a_2@@1))))) (= (ControlFlow 0 23) 19)) anon38_correct)))
(let ((anon81_Then_correct  (=> (or (and (<= 0 i_21) (< i_21 x@1)) (and (< y@1 i_21) (< i_21 (len a_2@@1)))) (and (=> (= (ControlFlow 0 20) (- 0 22)) (HasDirectPerm_7946_1545 QPMask@6 (loc a_2@@1 i_21) val)) (=> (HasDirectPerm_7946_1545 QPMask@6 (loc a_2@@1 i_21) val) (and (=> (= (ControlFlow 0 20) (- 0 21)) (HasDirectPerm_7946_1545 QPMask@6 (loc a_2@@1 y@1) val)) (=> (HasDirectPerm_7946_1545 QPMask@6 (loc a_2@@1 y@1) val) (=> (= (ControlFlow 0 20) 19) anon38_correct))))))))
(let ((anon39_correct true))
(let ((anon79_Then_correct  (=> (not (forall ((i_3_2 Int) ) (!  (=> (or (and (<= 0 i_3_2) (< i_3_2 x@1)) (and (< y@1 i_3_2) (< i_3_2 (len a_2@@1)))) (< (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| ExhaleHeap@0) (loc a_2@@1 i_3_2) val) (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| ExhaleHeap@0) (loc a_2@@1 x@1) val)))
 :qid |stdinbpl.596:28|
 :skolemid |54|
 :pattern ( (loc a_2@@1 i_3_2))
))) (and (and (=> (= (ControlFlow 0 24) 17) anon39_correct) (=> (= (ControlFlow 0 24) 20) anon81_Then_correct)) (=> (= (ControlFlow 0 24) 23) anon81_Else_correct)))))
(let ((anon79_Else_correct  (=> (and (forall ((i_3_2@@0 Int) ) (!  (=> (or (and (<= 0 i_3_2@@0) (< i_3_2@@0 x@1)) (and (< y@1 i_3_2@@0) (< i_3_2@@0 (len a_2@@1)))) (< (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| ExhaleHeap@0) (loc a_2@@1 i_3_2@@0) val) (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| ExhaleHeap@0) (loc a_2@@1 x@1) val)))
 :qid |stdinbpl.596:28|
 :skolemid |54|
 :pattern ( (loc a_2@@1 i_3_2@@0))
)) (= (ControlFlow 0 18) 17)) anon39_correct)))
(let ((anon33_correct true))
(let ((anon78_Else_correct  (=> (and (not (or (and (<= 0 i_7) (< i_7 x@1)) (and (< y@1 i_7) (< i_7 (len a_2@@1))))) (= (ControlFlow 0 16) 12)) anon33_correct)))
(let ((anon78_Then_correct  (=> (or (and (<= 0 i_7) (< i_7 x@1)) (and (< y@1 i_7) (< i_7 (len a_2@@1)))) (and (=> (= (ControlFlow 0 13) (- 0 15)) (HasDirectPerm_7946_1545 QPMask@6 (loc a_2@@1 i_7) val)) (=> (HasDirectPerm_7946_1545 QPMask@6 (loc a_2@@1 i_7) val) (and (=> (= (ControlFlow 0 13) (- 0 14)) (HasDirectPerm_7946_1545 QPMask@6 (loc a_2@@1 x@1) val)) (=> (HasDirectPerm_7946_1545 QPMask@6 (loc a_2@@1 x@1) val) (=> (= (ControlFlow 0 13) 12) anon33_correct))))))))
(let ((anon75_Else_correct  (=> (and (forall ((j$4_3 Int) ) (!  (=> (and (<= 0 j$4_3) (< j$4_3 (len a_2@@1))) (= (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| ExhaleHeap@0) (loc a_2@@1 j$4_3) val) (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| Heap@@17) (loc a_2@@1 j$4_3) val)))
 :qid |stdinbpl.576:28|
 :skolemid |53|
 :pattern ( (loc a_2@@1 j$4_3))
)) (state ExhaleHeap@0 QPMask@6)) (=> (and (and (<= 0 x@1) (<= x@1 y@1)) (and (< y@1 (len a_2@@1)) (state ExhaleHeap@0 QPMask@6))) (and (and (and (=> (= (ControlFlow 0 25) 24) anon79_Then_correct) (=> (= (ControlFlow 0 25) 18) anon79_Else_correct)) (=> (= (ControlFlow 0 25) 13) anon78_Then_correct)) (=> (= (ControlFlow 0 25) 16) anon78_Else_correct))))))
(let ((anon29_correct true))
(let ((anon76_Else_correct  (=> (and (not (and (<= 0 j$4_1) (< j$4_1 (len a_2@@1)))) (= (ControlFlow 0 11) 7)) anon29_correct)))
(let ((anon76_Then_correct  (=> (and (<= 0 j$4_1) (< j$4_1 (len a_2@@1))) (and (=> (= (ControlFlow 0 8) (- 0 10)) (HasDirectPerm_7946_1545 QPMask@6 (loc a_2@@1 j$4_1) val)) (=> (HasDirectPerm_7946_1545 QPMask@6 (loc a_2@@1 j$4_1) val) (and (=> (= (ControlFlow 0 8) (- 0 9)) (HasDirectPerm_7946_1545 QPMask@0 (loc a_2@@1 j$4_1) val)) (=> (HasDirectPerm_7946_1545 QPMask@0 (loc a_2@@1 j$4_1) val) (=> (= (ControlFlow 0 8) 7) anon29_correct))))))))
(let ((anon74_Else_correct  (and (=> (= (ControlFlow 0 26) (- 0 27)) (forall ((j$3_2 Int) (j$3_2_1 Int) ) (!  (=> (and (and (and (and (not (= j$3_2 j$3_2_1)) (and (<= 0 j$3_2) (< j$3_2 (len a_2@@1)))) (and (<= 0 j$3_2_1) (< j$3_2_1 (len a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 j$3_2) (loc a_2@@1 j$3_2_1))))
 :qid |stdinbpl.533:23|
 :skolemid |47|
))) (=> (forall ((j$3_2@@0 Int) (j$3_2_1@@0 Int) ) (!  (=> (and (and (and (and (not (= j$3_2@@0 j$3_2_1@@0)) (and (<= 0 j$3_2@@0) (< j$3_2@@0 (len a_2@@1)))) (and (<= 0 j$3_2_1@@0) (< j$3_2_1@@0 (len a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 j$3_2@@0) (loc a_2@@1 j$3_2_1@@0))))
 :qid |stdinbpl.533:23|
 :skolemid |47|
)) (=> (and (and (forall ((j$3_2@@1 Int) ) (!  (=> (and (and (<= 0 j$3_2@@1) (< j$3_2@@1 (len a_2@@1))) (< NoPerm FullPerm)) (and (qpRange5 (loc a_2@@1 j$3_2@@1)) (= (invRecv5 (loc a_2@@1 j$3_2@@1)) j$3_2@@1)))
 :qid |stdinbpl.539:30|
 :skolemid |48|
 :pattern ( (loc a_2@@1 j$3_2@@1))
 :pattern ( (loc a_2@@1 j$3_2@@1))
)) (forall ((o_9@@34 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv5 o_9@@34)) (< (invRecv5 o_9@@34) (len a_2@@1))) (< NoPerm FullPerm)) (qpRange5 o_9@@34)) (= (loc a_2@@1 (invRecv5 o_9@@34)) o_9@@34))
 :qid |stdinbpl.543:30|
 :skolemid |49|
 :pattern ( (invRecv5 o_9@@34))
))) (and (forall ((j$3_2@@2 Int) ) (!  (=> (and (<= 0 j$3_2@@2) (< j$3_2@@2 (len a_2@@1))) (not (= (loc a_2@@1 j$3_2@@2) null)))
 :qid |stdinbpl.549:30|
 :skolemid |50|
 :pattern ( (loc a_2@@1 j$3_2@@2))
 :pattern ( (loc a_2@@1 j$3_2@@2))
)) (forall ((o_9@@35 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv5 o_9@@35)) (< (invRecv5 o_9@@35) (len a_2@@1))) (< NoPerm FullPerm)) (qpRange5 o_9@@35)) (and (=> (< NoPerm FullPerm) (= (loc a_2@@1 (invRecv5 o_9@@35)) o_9@@35)) (= (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@6) o_9@@35 val) (+ (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@1) o_9@@35 val) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv5 o_9@@35)) (< (invRecv5 o_9@@35) (len a_2@@1))) (< NoPerm FullPerm)) (qpRange5 o_9@@35))) (= (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@6) o_9@@35 val) (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@1) o_9@@35 val))))
 :qid |stdinbpl.555:30|
 :skolemid |51|
 :pattern ( (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@6) o_9@@35 val))
)))) (=> (and (and (and (and (and (forall ((o_9@@36 T@Ref) (f_5@@24 T@Field_11525_53) ) (!  (=> true (= (select (|PolymorphicMapType_11486_7946_53#PolymorphicMapType_11486| QPMask@1) o_9@@36 f_5@@24) (select (|PolymorphicMapType_11486_7946_53#PolymorphicMapType_11486| QPMask@6) o_9@@36 f_5@@24)))
 :qid |stdinbpl.559:37|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_11486_7946_53#PolymorphicMapType_11486| QPMask@1) o_9@@36 f_5@@24))
 :pattern ( (select (|PolymorphicMapType_11486_7946_53#PolymorphicMapType_11486| QPMask@6) o_9@@36 f_5@@24))
)) (forall ((o_9@@37 T@Ref) (f_5@@25 T@Field_11538_11539) ) (!  (=> true (= (select (|PolymorphicMapType_11486_7946_11539#PolymorphicMapType_11486| QPMask@1) o_9@@37 f_5@@25) (select (|PolymorphicMapType_11486_7946_11539#PolymorphicMapType_11486| QPMask@6) o_9@@37 f_5@@25)))
 :qid |stdinbpl.559:37|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_11486_7946_11539#PolymorphicMapType_11486| QPMask@1) o_9@@37 f_5@@25))
 :pattern ( (select (|PolymorphicMapType_11486_7946_11539#PolymorphicMapType_11486| QPMask@6) o_9@@37 f_5@@25))
))) (forall ((o_9@@38 T@Ref) (f_5@@26 T@Field_14982_1545) ) (!  (=> (not (= f_5@@26 val)) (= (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@1) o_9@@38 f_5@@26) (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@6) o_9@@38 f_5@@26)))
 :qid |stdinbpl.559:37|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@1) o_9@@38 f_5@@26))
 :pattern ( (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@6) o_9@@38 f_5@@26))
))) (forall ((o_9@@39 T@Ref) (f_5@@27 T@Field_7946_34261) ) (!  (=> true (= (select (|PolymorphicMapType_11486_7946_34261#PolymorphicMapType_11486| QPMask@1) o_9@@39 f_5@@27) (select (|PolymorphicMapType_11486_7946_34261#PolymorphicMapType_11486| QPMask@6) o_9@@39 f_5@@27)))
 :qid |stdinbpl.559:37|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_11486_7946_34261#PolymorphicMapType_11486| QPMask@1) o_9@@39 f_5@@27))
 :pattern ( (select (|PolymorphicMapType_11486_7946_34261#PolymorphicMapType_11486| QPMask@6) o_9@@39 f_5@@27))
))) (forall ((o_9@@40 T@Ref) (f_5@@28 T@Field_7946_34394) ) (!  (=> true (= (select (|PolymorphicMapType_11486_7946_38516#PolymorphicMapType_11486| QPMask@1) o_9@@40 f_5@@28) (select (|PolymorphicMapType_11486_7946_38516#PolymorphicMapType_11486| QPMask@6) o_9@@40 f_5@@28)))
 :qid |stdinbpl.559:37|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_11486_7946_38516#PolymorphicMapType_11486| QPMask@1) o_9@@40 f_5@@28))
 :pattern ( (select (|PolymorphicMapType_11486_7946_38516#PolymorphicMapType_11486| QPMask@6) o_9@@40 f_5@@28))
))) (state ExhaleHeap@0 QPMask@6)) (and (and (=> (= (ControlFlow 0 26) 25) anon75_Else_correct) (=> (= (ControlFlow 0 26) 8) anon76_Then_correct)) (=> (= (ControlFlow 0 26) 11) anon76_Else_correct))))))))
(let ((anon74_Then_correct true))
(let ((anon71_Else_correct  (=> (forall ((j$4_1_1 Int) ) (!  (=> (and (<= 0 j$4_1_1) (< j$4_1_1 (len a_2@@1))) (= (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| Heap@@17) (loc a_2@@1 j$4_1_1) val) (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| Heap@@17) (loc a_2@@1 j$4_1_1) val)))
 :qid |stdinbpl.498:28|
 :skolemid |44|
 :pattern ( (loc a_2@@1 j$4_1_1))
)) (and (=> (= (ControlFlow 0 67) (- 0 71)) (<= 0 0)) (=> (<= 0 0) (and (=> (= (ControlFlow 0 67) (- 0 70)) (<= 0 y@0)) (=> (<= 0 y@0) (and (=> (= (ControlFlow 0 67) (- 0 69)) (< y@0 (len a_2@@1))) (=> (< y@0 (len a_2@@1)) (and (=> (= (ControlFlow 0 67) (- 0 68)) (or (forall ((i@@0 Int) ) (!  (=> (or (and (<= 0 i@@0) (< i@@0 0)) (and (< y@0 i@@0) (< i@@0 (len a_2@@1)))) (< (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| Heap@@17) (loc a_2@@1 i@@0) val) (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| Heap@@17) (loc a_2@@1 0) val)))
 :qid |stdinbpl.509:23|
 :skolemid |45|
 :pattern ( (loc a_2@@1 i@@0))
)) (forall ((i_1 Int) ) (!  (=> (or (and (<= 0 i_1) (< i_1 0)) (and (< y@0 i_1) (< i_1 (len a_2@@1)))) (<= (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| Heap@@17) (loc a_2@@1 i_1) val) (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| Heap@@17) (loc a_2@@1 y@0) val)))
 :qid |stdinbpl.512:26|
 :skolemid |46|
 :pattern ( (loc a_2@@1 i_1))
)))) (=> (or (forall ((i@@1 Int) ) (!  (=> (or (and (<= 0 i@@1) (< i@@1 0)) (and (< y@0 i@@1) (< i@@1 (len a_2@@1)))) (< (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| Heap@@17) (loc a_2@@1 i@@1) val) (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| Heap@@17) (loc a_2@@1 0) val)))
 :qid |stdinbpl.509:23|
 :skolemid |45|
 :pattern ( (loc a_2@@1 i@@1))
)) (forall ((i_1@@0 Int) ) (!  (=> (or (and (<= 0 i_1@@0) (< i_1@@0 0)) (and (< y@0 i_1@@0) (< i_1@@0 (len a_2@@1)))) (<= (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| Heap@@17) (loc a_2@@1 i_1@@0) val) (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| Heap@@17) (loc a_2@@1 y@0) val)))
 :qid |stdinbpl.512:26|
 :skolemid |46|
 :pattern ( (loc a_2@@1 i_1@@0))
))) (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@0 QPMask@1) (and (and (and (=> (= (ControlFlow 0 67) 63) anon82_Then_correct) (=> (= (ControlFlow 0 67) 47) anon82_Else_correct)) (=> (= (ControlFlow 0 67) 6) anon74_Then_correct)) (=> (= (ControlFlow 0 67) 26) anon74_Else_correct))))))))))))))
(let ((anon22_correct true))
(let ((anon72_Else_correct  (=> (and (not (and (<= 0 j$4) (< j$4 (len a_2@@1)))) (= (ControlFlow 0 5) 2)) anon22_correct)))
(let ((anon72_Then_correct  (=> (and (<= 0 j$4) (< j$4 (len a_2@@1))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (= (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| Heap@@17) (loc a_2@@1 j$4) val) (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| Heap@@17) (loc a_2@@1 j$4) val))) (=> (= (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| Heap@@17) (loc a_2@@1 j$4) val) (select (|PolymorphicMapType_11465_7946_1545#PolymorphicMapType_11465| Heap@@17) (loc a_2@@1 j$4) val)) (=> (= (ControlFlow 0 3) 2) anon22_correct))))))
(let ((anon70_Else_correct  (=> (and (and (not (= (len a_2@@1) 0)) (state Heap@@17 QPMask@0)) (and (= y@0 (- (len a_2@@1) 1)) (state Heap@@17 QPMask@0))) (and (=> (= (ControlFlow 0 72) (- 0 74)) (forall ((j$3 Int) (j$3_1 Int) ) (!  (=> (and (and (and (and (not (= j$3 j$3_1)) (and (<= 0 j$3) (< j$3 (len a_2@@1)))) (and (<= 0 j$3_1) (< j$3_1 (len a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 j$3) (loc a_2@@1 j$3_1))))
 :qid |stdinbpl.457:25|
 :skolemid |38|
 :pattern ( (neverTriggered4 j$3) (neverTriggered4 j$3_1))
))) (=> (forall ((j$3@@0 Int) (j$3_1@@0 Int) ) (!  (=> (and (and (and (and (not (= j$3@@0 j$3_1@@0)) (and (<= 0 j$3@@0) (< j$3@@0 (len a_2@@1)))) (and (<= 0 j$3_1@@0) (< j$3_1@@0 (len a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 j$3@@0) (loc a_2@@1 j$3_1@@0))))
 :qid |stdinbpl.457:25|
 :skolemid |38|
 :pattern ( (neverTriggered4 j$3@@0) (neverTriggered4 j$3_1@@0))
)) (and (=> (= (ControlFlow 0 72) (- 0 73)) (forall ((j$3@@1 Int) ) (!  (=> (and (<= 0 j$3@@1) (< j$3@@1 (len a_2@@1))) (>= (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@0) (loc a_2@@1 j$3@@1) val) FullPerm))
 :qid |stdinbpl.464:25|
 :skolemid |39|
 :pattern ( (loc a_2@@1 j$3@@1))
 :pattern ( (loc a_2@@1 j$3@@1))
))) (=> (forall ((j$3@@2 Int) ) (!  (=> (and (<= 0 j$3@@2) (< j$3@@2 (len a_2@@1))) (>= (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@0) (loc a_2@@1 j$3@@2) val) FullPerm))
 :qid |stdinbpl.464:25|
 :skolemid |39|
 :pattern ( (loc a_2@@1 j$3@@2))
 :pattern ( (loc a_2@@1 j$3@@2))
)) (=> (forall ((j$3@@3 Int) ) (!  (=> (and (and (<= 0 j$3@@3) (< j$3@@3 (len a_2@@1))) (< NoPerm FullPerm)) (and (qpRange4 (loc a_2@@1 j$3@@3)) (= (invRecv4 (loc a_2@@1 j$3@@3)) j$3@@3)))
 :qid |stdinbpl.470:30|
 :skolemid |40|
 :pattern ( (loc a_2@@1 j$3@@3))
 :pattern ( (loc a_2@@1 j$3@@3))
)) (=> (and (forall ((o_9@@41 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv4 o_9@@41)) (< (invRecv4 o_9@@41) (len a_2@@1))) (and (< NoPerm FullPerm) (qpRange4 o_9@@41))) (= (loc a_2@@1 (invRecv4 o_9@@41)) o_9@@41))
 :qid |stdinbpl.474:30|
 :skolemid |41|
 :pattern ( (invRecv4 o_9@@41))
)) (forall ((o_9@@42 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv4 o_9@@42)) (< (invRecv4 o_9@@42) (len a_2@@1))) (and (< NoPerm FullPerm) (qpRange4 o_9@@42))) (and (= (loc a_2@@1 (invRecv4 o_9@@42)) o_9@@42) (= (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@1) o_9@@42 val) (- (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@0) o_9@@42 val) FullPerm)))) (=> (not (and (and (<= 0 (invRecv4 o_9@@42)) (< (invRecv4 o_9@@42) (len a_2@@1))) (and (< NoPerm FullPerm) (qpRange4 o_9@@42)))) (= (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@1) o_9@@42 val) (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@0) o_9@@42 val))))
 :qid |stdinbpl.480:30|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@1) o_9@@42 val))
))) (=> (and (and (and (and (forall ((o_9@@43 T@Ref) (f_5@@29 T@Field_11525_53) ) (!  (=> true (= (select (|PolymorphicMapType_11486_7946_53#PolymorphicMapType_11486| QPMask@0) o_9@@43 f_5@@29) (select (|PolymorphicMapType_11486_7946_53#PolymorphicMapType_11486| QPMask@1) o_9@@43 f_5@@29)))
 :qid |stdinbpl.486:37|
 :skolemid |43|
 :pattern ( (select (|PolymorphicMapType_11486_7946_53#PolymorphicMapType_11486| QPMask@1) o_9@@43 f_5@@29))
)) (forall ((o_9@@44 T@Ref) (f_5@@30 T@Field_11538_11539) ) (!  (=> true (= (select (|PolymorphicMapType_11486_7946_11539#PolymorphicMapType_11486| QPMask@0) o_9@@44 f_5@@30) (select (|PolymorphicMapType_11486_7946_11539#PolymorphicMapType_11486| QPMask@1) o_9@@44 f_5@@30)))
 :qid |stdinbpl.486:37|
 :skolemid |43|
 :pattern ( (select (|PolymorphicMapType_11486_7946_11539#PolymorphicMapType_11486| QPMask@1) o_9@@44 f_5@@30))
))) (forall ((o_9@@45 T@Ref) (f_5@@31 T@Field_14982_1545) ) (!  (=> (not (= f_5@@31 val)) (= (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@0) o_9@@45 f_5@@31) (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@1) o_9@@45 f_5@@31)))
 :qid |stdinbpl.486:37|
 :skolemid |43|
 :pattern ( (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@1) o_9@@45 f_5@@31))
))) (forall ((o_9@@46 T@Ref) (f_5@@32 T@Field_7946_34261) ) (!  (=> true (= (select (|PolymorphicMapType_11486_7946_34261#PolymorphicMapType_11486| QPMask@0) o_9@@46 f_5@@32) (select (|PolymorphicMapType_11486_7946_34261#PolymorphicMapType_11486| QPMask@1) o_9@@46 f_5@@32)))
 :qid |stdinbpl.486:37|
 :skolemid |43|
 :pattern ( (select (|PolymorphicMapType_11486_7946_34261#PolymorphicMapType_11486| QPMask@1) o_9@@46 f_5@@32))
))) (forall ((o_9@@47 T@Ref) (f_5@@33 T@Field_7946_34394) ) (!  (=> true (= (select (|PolymorphicMapType_11486_7946_38516#PolymorphicMapType_11486| QPMask@0) o_9@@47 f_5@@33) (select (|PolymorphicMapType_11486_7946_38516#PolymorphicMapType_11486| QPMask@1) o_9@@47 f_5@@33)))
 :qid |stdinbpl.486:37|
 :skolemid |43|
 :pattern ( (select (|PolymorphicMapType_11486_7946_38516#PolymorphicMapType_11486| QPMask@1) o_9@@47 f_5@@33))
))) (and (and (=> (= (ControlFlow 0 72) 67) anon71_Else_correct) (=> (= (ControlFlow 0 72) 3) anon72_Then_correct)) (=> (= (ControlFlow 0 72) 5) anon72_Else_correct))))))))))))
(let ((anon62_Else_correct  (and (=> (= (ControlFlow 0 94) (- 0 95)) (forall ((j_1 Int) (j_1_1 Int) ) (!  (=> (and (and (and (and (not (= j_1 j_1_1)) (and (<= 0 j_1) (< j_1 (len a_2@@1)))) (and (<= 0 j_1_1) (< j_1_1 (len a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 j_1) (loc a_2@@1 j_1_1))))
 :qid |stdinbpl.301:15|
 :skolemid |24|
))) (=> (forall ((j_1@@0 Int) (j_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= j_1@@0 j_1_1@@0)) (and (<= 0 j_1@@0) (< j_1@@0 (len a_2@@1)))) (and (<= 0 j_1_1@@0) (< j_1_1@@0 (len a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 j_1@@0) (loc a_2@@1 j_1_1@@0))))
 :qid |stdinbpl.301:15|
 :skolemid |24|
)) (=> (and (and (forall ((j_1@@1 Int) ) (!  (=> (and (and (<= 0 j_1@@1) (< j_1@@1 (len a_2@@1))) (< NoPerm FullPerm)) (and (qpRange1 (loc a_2@@1 j_1@@1)) (= (invRecv1 (loc a_2@@1 j_1@@1)) j_1@@1)))
 :qid |stdinbpl.307:22|
 :skolemid |25|
 :pattern ( (loc a_2@@1 j_1@@1))
 :pattern ( (loc a_2@@1 j_1@@1))
)) (forall ((o_9@@48 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv1 o_9@@48)) (< (invRecv1 o_9@@48) (len a_2@@1))) (< NoPerm FullPerm)) (qpRange1 o_9@@48)) (= (loc a_2@@1 (invRecv1 o_9@@48)) o_9@@48))
 :qid |stdinbpl.311:22|
 :skolemid |26|
 :pattern ( (invRecv1 o_9@@48))
))) (and (forall ((j_1@@2 Int) ) (!  (=> (and (<= 0 j_1@@2) (< j_1@@2 (len a_2@@1))) (not (= (loc a_2@@1 j_1@@2) null)))
 :qid |stdinbpl.317:22|
 :skolemid |27|
 :pattern ( (loc a_2@@1 j_1@@2))
 :pattern ( (loc a_2@@1 j_1@@2))
)) (forall ((o_9@@49 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv1 o_9@@49)) (< (invRecv1 o_9@@49) (len a_2@@1))) (< NoPerm FullPerm)) (qpRange1 o_9@@49)) (and (=> (< NoPerm FullPerm) (= (loc a_2@@1 (invRecv1 o_9@@49)) o_9@@49)) (= (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@0) o_9@@49 val) (+ (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| ZeroMask) o_9@@49 val) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv1 o_9@@49)) (< (invRecv1 o_9@@49) (len a_2@@1))) (< NoPerm FullPerm)) (qpRange1 o_9@@49))) (= (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@0) o_9@@49 val) (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| ZeroMask) o_9@@49 val))))
 :qid |stdinbpl.323:22|
 :skolemid |28|
 :pattern ( (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@0) o_9@@49 val))
)))) (=> (and (and (and (and (and (forall ((o_9@@50 T@Ref) (f_5@@34 T@Field_11525_53) ) (!  (=> true (= (select (|PolymorphicMapType_11486_7946_53#PolymorphicMapType_11486| ZeroMask) o_9@@50 f_5@@34) (select (|PolymorphicMapType_11486_7946_53#PolymorphicMapType_11486| QPMask@0) o_9@@50 f_5@@34)))
 :qid |stdinbpl.327:29|
 :skolemid |29|
 :pattern ( (select (|PolymorphicMapType_11486_7946_53#PolymorphicMapType_11486| ZeroMask) o_9@@50 f_5@@34))
 :pattern ( (select (|PolymorphicMapType_11486_7946_53#PolymorphicMapType_11486| QPMask@0) o_9@@50 f_5@@34))
)) (forall ((o_9@@51 T@Ref) (f_5@@35 T@Field_11538_11539) ) (!  (=> true (= (select (|PolymorphicMapType_11486_7946_11539#PolymorphicMapType_11486| ZeroMask) o_9@@51 f_5@@35) (select (|PolymorphicMapType_11486_7946_11539#PolymorphicMapType_11486| QPMask@0) o_9@@51 f_5@@35)))
 :qid |stdinbpl.327:29|
 :skolemid |29|
 :pattern ( (select (|PolymorphicMapType_11486_7946_11539#PolymorphicMapType_11486| ZeroMask) o_9@@51 f_5@@35))
 :pattern ( (select (|PolymorphicMapType_11486_7946_11539#PolymorphicMapType_11486| QPMask@0) o_9@@51 f_5@@35))
))) (forall ((o_9@@52 T@Ref) (f_5@@36 T@Field_14982_1545) ) (!  (=> (not (= f_5@@36 val)) (= (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| ZeroMask) o_9@@52 f_5@@36) (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@0) o_9@@52 f_5@@36)))
 :qid |stdinbpl.327:29|
 :skolemid |29|
 :pattern ( (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| ZeroMask) o_9@@52 f_5@@36))
 :pattern ( (select (|PolymorphicMapType_11486_7946_1545#PolymorphicMapType_11486| QPMask@0) o_9@@52 f_5@@36))
))) (forall ((o_9@@53 T@Ref) (f_5@@37 T@Field_7946_34261) ) (!  (=> true (= (select (|PolymorphicMapType_11486_7946_34261#PolymorphicMapType_11486| ZeroMask) o_9@@53 f_5@@37) (select (|PolymorphicMapType_11486_7946_34261#PolymorphicMapType_11486| QPMask@0) o_9@@53 f_5@@37)))
 :qid |stdinbpl.327:29|
 :skolemid |29|
 :pattern ( (select (|PolymorphicMapType_11486_7946_34261#PolymorphicMapType_11486| ZeroMask) o_9@@53 f_5@@37))
 :pattern ( (select (|PolymorphicMapType_11486_7946_34261#PolymorphicMapType_11486| QPMask@0) o_9@@53 f_5@@37))
))) (forall ((o_9@@54 T@Ref) (f_5@@38 T@Field_7946_34394) ) (!  (=> true (= (select (|PolymorphicMapType_11486_7946_38516#PolymorphicMapType_11486| ZeroMask) o_9@@54 f_5@@38) (select (|PolymorphicMapType_11486_7946_38516#PolymorphicMapType_11486| QPMask@0) o_9@@54 f_5@@38)))
 :qid |stdinbpl.327:29|
 :skolemid |29|
 :pattern ( (select (|PolymorphicMapType_11486_7946_38516#PolymorphicMapType_11486| ZeroMask) o_9@@54 f_5@@38))
 :pattern ( (select (|PolymorphicMapType_11486_7946_38516#PolymorphicMapType_11486| QPMask@0) o_9@@54 f_5@@38))
))) (and (state Heap@@17 QPMask@0) (state Heap@@17 QPMask@0))) (and (and (=> (= (ControlFlow 0 94) 93) anon63_Then_correct) (=> (= (ControlFlow 0 94) 46) anon70_Then_correct)) (=> (= (ControlFlow 0 94) 72) anon70_Else_correct))))))))
(let ((anon62_Then_correct true))
(let ((anon0_correct  (=> (and (state Heap@@17 ZeroMask) AssumePermUpperBound) (and (=> (= (ControlFlow 0 96) 1) anon62_Then_correct) (=> (= (ControlFlow 0 96) 94) anon62_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 97) 96) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
