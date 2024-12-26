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
(declare-sort T@Field_8250_53 0)
(declare-sort T@Field_8263_8264 0)
(declare-sort T@Field_14479_14481 0)
(declare-sort T@Field_14430_3259 0)
(declare-sort T@Field_4989_22427 0)
(declare-sort T@Field_4989_22294 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_8211 0)) (((PolymorphicMapType_8211 (|PolymorphicMapType_8211_4989_14841#PolymorphicMapType_8211| (Array T@Ref T@Field_14479_14481 Real)) (|PolymorphicMapType_8211_4987_3259#PolymorphicMapType_8211| (Array T@Ref T@Field_14430_3259 Real)) (|PolymorphicMapType_8211_4989_53#PolymorphicMapType_8211| (Array T@Ref T@Field_8250_53 Real)) (|PolymorphicMapType_8211_4989_8264#PolymorphicMapType_8211| (Array T@Ref T@Field_8263_8264 Real)) (|PolymorphicMapType_8211_4989_22294#PolymorphicMapType_8211| (Array T@Ref T@Field_4989_22294 Real)) (|PolymorphicMapType_8211_4989_27153#PolymorphicMapType_8211| (Array T@Ref T@Field_4989_22427 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8739 0)) (((PolymorphicMapType_8739 (|PolymorphicMapType_8739_8250_53#PolymorphicMapType_8739| (Array T@Ref T@Field_8250_53 Bool)) (|PolymorphicMapType_8739_8250_8264#PolymorphicMapType_8739| (Array T@Ref T@Field_8263_8264 Bool)) (|PolymorphicMapType_8739_8250_3259#PolymorphicMapType_8739| (Array T@Ref T@Field_14430_3259 Bool)) (|PolymorphicMapType_8739_8250_23384#PolymorphicMapType_8739| (Array T@Ref T@Field_14479_14481 Bool)) (|PolymorphicMapType_8739_8250_22294#PolymorphicMapType_8739| (Array T@Ref T@Field_4989_22294 Bool)) (|PolymorphicMapType_8739_8250_23823#PolymorphicMapType_8739| (Array T@Ref T@Field_4989_22427 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8190 0)) (((PolymorphicMapType_8190 (|PolymorphicMapType_8190_4686_53#PolymorphicMapType_8190| (Array T@Ref T@Field_8250_53 Bool)) (|PolymorphicMapType_8190_4689_4690#PolymorphicMapType_8190| (Array T@Ref T@Field_8263_8264 T@Ref)) (|PolymorphicMapType_8190_4989_15110#PolymorphicMapType_8190| (Array T@Ref T@Field_14479_14481 (Array T@Ref Bool))) (|PolymorphicMapType_8190_4987_3259#PolymorphicMapType_8190| (Array T@Ref T@Field_14430_3259 Int)) (|PolymorphicMapType_8190_4989_22471#PolymorphicMapType_8190| (Array T@Ref T@Field_4989_22427 T@PolymorphicMapType_8739)) (|PolymorphicMapType_8190_8250_22294#PolymorphicMapType_8190| (Array T@Ref T@Field_4989_22294 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_8250_53)
(declare-fun f_7 () T@Field_14430_3259)
(declare-fun g () T@Field_14479_14481)
(declare-fun succHeap (T@PolymorphicMapType_8190 T@PolymorphicMapType_8190) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_8190 T@PolymorphicMapType_8190) Bool)
(declare-fun state (T@PolymorphicMapType_8190 T@PolymorphicMapType_8211) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_8211) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_8739)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_8190 T@PolymorphicMapType_8190 T@PolymorphicMapType_8211) Bool)
(declare-fun IsPredicateField_4989_22385 (T@Field_4989_22294) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_4989 (T@Field_4989_22294) T@Field_4989_22427)
(declare-fun HasDirectPerm_4989_22358 (T@PolymorphicMapType_8211 T@Ref T@Field_4989_22294) Bool)
(declare-fun IsWandField_4989_24350 (T@Field_4989_22294) Bool)
(declare-fun WandMaskField_4989 (T@Field_4989_22294) T@Field_4989_22427)
(declare-fun dummyHeap () T@PolymorphicMapType_8190)
(declare-fun ZeroMask () T@PolymorphicMapType_8211)
(declare-fun InsidePredicate_8250_8250 (T@Field_4989_22294 T@FrameType T@Field_4989_22294 T@FrameType) Bool)
(declare-fun IsPredicateField_4987_3259 (T@Field_14430_3259) Bool)
(declare-fun IsWandField_4987_3259 (T@Field_14430_3259) Bool)
(declare-fun IsPredicateField_4989_14505 (T@Field_14479_14481) Bool)
(declare-fun IsWandField_4989_14532 (T@Field_14479_14481) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4989_28509 (T@Field_4989_22427) Bool)
(declare-fun IsWandField_4989_28525 (T@Field_4989_22427) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4989_8264 (T@Field_8263_8264) Bool)
(declare-fun IsWandField_4989_8264 (T@Field_8263_8264) Bool)
(declare-fun IsPredicateField_4989_53 (T@Field_8250_53) Bool)
(declare-fun IsWandField_4989_53 (T@Field_8250_53) Bool)
(declare-fun HasDirectPerm_4989_29049 (T@PolymorphicMapType_8211 T@Ref T@Field_4989_22427) Bool)
(declare-fun HasDirectPerm_4989_8264 (T@PolymorphicMapType_8211 T@Ref T@Field_8263_8264) Bool)
(declare-fun HasDirectPerm_4989_53 (T@PolymorphicMapType_8211 T@Ref T@Field_8250_53) Bool)
(declare-fun HasDirectPerm_4987_3259 (T@PolymorphicMapType_8211 T@Ref T@Field_14430_3259) Bool)
(declare-fun HasDirectPerm_4989_14998 (T@PolymorphicMapType_8211 T@Ref T@Field_14479_14481) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_8211 T@PolymorphicMapType_8211 T@PolymorphicMapType_8211) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_8190) (Heap1 T@PolymorphicMapType_8190) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_8190) (Mask T@PolymorphicMapType_8211) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_8190) (Heap1@@0 T@PolymorphicMapType_8190) (Heap2 T@PolymorphicMapType_8190) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_4989_22427) ) (!  (not (select (|PolymorphicMapType_8739_8250_23823#PolymorphicMapType_8739| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8739_8250_23823#PolymorphicMapType_8739| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_4989_22294) ) (!  (not (select (|PolymorphicMapType_8739_8250_22294#PolymorphicMapType_8739| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8739_8250_22294#PolymorphicMapType_8739| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_14479_14481) ) (!  (not (select (|PolymorphicMapType_8739_8250_23384#PolymorphicMapType_8739| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8739_8250_23384#PolymorphicMapType_8739| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_14430_3259) ) (!  (not (select (|PolymorphicMapType_8739_8250_3259#PolymorphicMapType_8739| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8739_8250_3259#PolymorphicMapType_8739| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_8263_8264) ) (!  (not (select (|PolymorphicMapType_8739_8250_8264#PolymorphicMapType_8739| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8739_8250_8264#PolymorphicMapType_8739| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_8250_53) ) (!  (not (select (|PolymorphicMapType_8739_8250_53#PolymorphicMapType_8739| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8739_8250_53#PolymorphicMapType_8739| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.294:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((a@@0 Int) ) (!  (=> (<= 0 a@@0) (= (|Math#clip| a@@0) a@@0))
 :qid |stdinbpl.297:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@0))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_8190) (ExhaleHeap T@PolymorphicMapType_8190) (Mask@@0 T@PolymorphicMapType_8211) (pm_f_3 T@Field_4989_22294) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_4989_22358 Mask@@0 null pm_f_3) (IsPredicateField_4989_22385 pm_f_3)) (= (select (|PolymorphicMapType_8190_4989_22471#PolymorphicMapType_8190| Heap@@0) null (PredicateMaskField_4989 pm_f_3)) (select (|PolymorphicMapType_8190_4989_22471#PolymorphicMapType_8190| ExhaleHeap) null (PredicateMaskField_4989 pm_f_3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_4989_22385 pm_f_3) (select (|PolymorphicMapType_8190_4989_22471#PolymorphicMapType_8190| ExhaleHeap) null (PredicateMaskField_4989 pm_f_3)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_8190) (ExhaleHeap@@0 T@PolymorphicMapType_8190) (Mask@@1 T@PolymorphicMapType_8211) (pm_f_3@@0 T@Field_4989_22294) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_4989_22358 Mask@@1 null pm_f_3@@0) (IsWandField_4989_24350 pm_f_3@@0)) (= (select (|PolymorphicMapType_8190_4989_22471#PolymorphicMapType_8190| Heap@@1) null (WandMaskField_4989 pm_f_3@@0)) (select (|PolymorphicMapType_8190_4989_22471#PolymorphicMapType_8190| ExhaleHeap@@0) null (WandMaskField_4989 pm_f_3@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_4989_24350 pm_f_3@@0) (select (|PolymorphicMapType_8190_4989_22471#PolymorphicMapType_8190| ExhaleHeap@@0) null (WandMaskField_4989 pm_f_3@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_8190) (ExhaleHeap@@1 T@PolymorphicMapType_8190) (Mask@@2 T@PolymorphicMapType_8211) (o_8 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_8190_4686_53#PolymorphicMapType_8190| Heap@@2) o_8 $allocated) (select (|PolymorphicMapType_8190_4686_53#PolymorphicMapType_8190| ExhaleHeap@@1) o_8 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_8190_4686_53#PolymorphicMapType_8190| ExhaleHeap@@1) o_8 $allocated))
)))
(assert (forall ((p T@Field_4989_22294) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_8250_8250 p v_1 p w))
 :qid |stdinbpl.192:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8250_8250 p v_1 p w))
)))
(assert  (not (IsPredicateField_4987_3259 f_7)))
(assert  (not (IsWandField_4987_3259 f_7)))
(assert  (not (IsPredicateField_4989_14505 g)))
(assert  (not (IsWandField_4989_14532 g)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_8190) (ExhaleHeap@@2 T@PolymorphicMapType_8190) (Mask@@3 T@PolymorphicMapType_8211) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_8211) (o_2@@5 T@Ref) (f_4@@5 T@Field_4989_22427) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_8211_4989_27153#PolymorphicMapType_8211| Mask@@4) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_4989_28509 f_4@@5))) (not (IsWandField_4989_28525 f_4@@5))) (<= (select (|PolymorphicMapType_8211_4989_27153#PolymorphicMapType_8211| Mask@@4) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_8211_4989_27153#PolymorphicMapType_8211| Mask@@4) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_8211) (o_2@@6 T@Ref) (f_4@@6 T@Field_4989_22294) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_8211_4989_22294#PolymorphicMapType_8211| Mask@@5) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_4989_22385 f_4@@6))) (not (IsWandField_4989_24350 f_4@@6))) (<= (select (|PolymorphicMapType_8211_4989_22294#PolymorphicMapType_8211| Mask@@5) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_8211_4989_22294#PolymorphicMapType_8211| Mask@@5) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_8211) (o_2@@7 T@Ref) (f_4@@7 T@Field_8263_8264) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_8211_4989_8264#PolymorphicMapType_8211| Mask@@6) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_4989_8264 f_4@@7))) (not (IsWandField_4989_8264 f_4@@7))) (<= (select (|PolymorphicMapType_8211_4989_8264#PolymorphicMapType_8211| Mask@@6) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_8211_4989_8264#PolymorphicMapType_8211| Mask@@6) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_8211) (o_2@@8 T@Ref) (f_4@@8 T@Field_8250_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_8211_4989_53#PolymorphicMapType_8211| Mask@@7) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_4989_53 f_4@@8))) (not (IsWandField_4989_53 f_4@@8))) (<= (select (|PolymorphicMapType_8211_4989_53#PolymorphicMapType_8211| Mask@@7) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_8211_4989_53#PolymorphicMapType_8211| Mask@@7) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_8211) (o_2@@9 T@Ref) (f_4@@9 T@Field_14430_3259) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_8211_4987_3259#PolymorphicMapType_8211| Mask@@8) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_4987_3259 f_4@@9))) (not (IsWandField_4987_3259 f_4@@9))) (<= (select (|PolymorphicMapType_8211_4987_3259#PolymorphicMapType_8211| Mask@@8) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_8211_4987_3259#PolymorphicMapType_8211| Mask@@8) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_8211) (o_2@@10 T@Ref) (f_4@@10 T@Field_14479_14481) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_8211_4989_14841#PolymorphicMapType_8211| Mask@@9) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_4989_14505 f_4@@10))) (not (IsWandField_4989_14532 f_4@@10))) (<= (select (|PolymorphicMapType_8211_4989_14841#PolymorphicMapType_8211| Mask@@9) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_8211_4989_14841#PolymorphicMapType_8211| Mask@@9) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_8211) (o_2@@11 T@Ref) (f_4@@11 T@Field_4989_22427) ) (! (= (HasDirectPerm_4989_29049 Mask@@10 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_8211_4989_27153#PolymorphicMapType_8211| Mask@@10) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4989_29049 Mask@@10 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_8211) (o_2@@12 T@Ref) (f_4@@12 T@Field_4989_22294) ) (! (= (HasDirectPerm_4989_22358 Mask@@11 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_8211_4989_22294#PolymorphicMapType_8211| Mask@@11) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4989_22358 Mask@@11 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_8211) (o_2@@13 T@Ref) (f_4@@13 T@Field_8263_8264) ) (! (= (HasDirectPerm_4989_8264 Mask@@12 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_8211_4989_8264#PolymorphicMapType_8211| Mask@@12) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4989_8264 Mask@@12 o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_8211) (o_2@@14 T@Ref) (f_4@@14 T@Field_8250_53) ) (! (= (HasDirectPerm_4989_53 Mask@@13 o_2@@14 f_4@@14) (> (select (|PolymorphicMapType_8211_4989_53#PolymorphicMapType_8211| Mask@@13) o_2@@14 f_4@@14) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4989_53 Mask@@13 o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_8211) (o_2@@15 T@Ref) (f_4@@15 T@Field_14430_3259) ) (! (= (HasDirectPerm_4987_3259 Mask@@14 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_8211_4987_3259#PolymorphicMapType_8211| Mask@@14) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4987_3259 Mask@@14 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_8211) (o_2@@16 T@Ref) (f_4@@16 T@Field_14479_14481) ) (! (= (HasDirectPerm_4989_14998 Mask@@15 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_8211_4989_14841#PolymorphicMapType_8211| Mask@@15) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4989_14998 Mask@@15 o_2@@16 f_4@@16))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.180:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_8190) (ExhaleHeap@@3 T@PolymorphicMapType_8190) (Mask@@16 T@PolymorphicMapType_8211) (o_8@@0 T@Ref) (f_12 T@Field_4989_22427) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@16) (=> (HasDirectPerm_4989_29049 Mask@@16 o_8@@0 f_12) (= (select (|PolymorphicMapType_8190_4989_22471#PolymorphicMapType_8190| Heap@@4) o_8@@0 f_12) (select (|PolymorphicMapType_8190_4989_22471#PolymorphicMapType_8190| ExhaleHeap@@3) o_8@@0 f_12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@16) (select (|PolymorphicMapType_8190_4989_22471#PolymorphicMapType_8190| ExhaleHeap@@3) o_8@@0 f_12))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_8190) (ExhaleHeap@@4 T@PolymorphicMapType_8190) (Mask@@17 T@PolymorphicMapType_8211) (o_8@@1 T@Ref) (f_12@@0 T@Field_4989_22294) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@17) (=> (HasDirectPerm_4989_22358 Mask@@17 o_8@@1 f_12@@0) (= (select (|PolymorphicMapType_8190_8250_22294#PolymorphicMapType_8190| Heap@@5) o_8@@1 f_12@@0) (select (|PolymorphicMapType_8190_8250_22294#PolymorphicMapType_8190| ExhaleHeap@@4) o_8@@1 f_12@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@17) (select (|PolymorphicMapType_8190_8250_22294#PolymorphicMapType_8190| ExhaleHeap@@4) o_8@@1 f_12@@0))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_8190) (ExhaleHeap@@5 T@PolymorphicMapType_8190) (Mask@@18 T@PolymorphicMapType_8211) (o_8@@2 T@Ref) (f_12@@1 T@Field_8263_8264) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@18) (=> (HasDirectPerm_4989_8264 Mask@@18 o_8@@2 f_12@@1) (= (select (|PolymorphicMapType_8190_4689_4690#PolymorphicMapType_8190| Heap@@6) o_8@@2 f_12@@1) (select (|PolymorphicMapType_8190_4689_4690#PolymorphicMapType_8190| ExhaleHeap@@5) o_8@@2 f_12@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@18) (select (|PolymorphicMapType_8190_4689_4690#PolymorphicMapType_8190| ExhaleHeap@@5) o_8@@2 f_12@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_8190) (ExhaleHeap@@6 T@PolymorphicMapType_8190) (Mask@@19 T@PolymorphicMapType_8211) (o_8@@3 T@Ref) (f_12@@2 T@Field_8250_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@19) (=> (HasDirectPerm_4989_53 Mask@@19 o_8@@3 f_12@@2) (= (select (|PolymorphicMapType_8190_4686_53#PolymorphicMapType_8190| Heap@@7) o_8@@3 f_12@@2) (select (|PolymorphicMapType_8190_4686_53#PolymorphicMapType_8190| ExhaleHeap@@6) o_8@@3 f_12@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@19) (select (|PolymorphicMapType_8190_4686_53#PolymorphicMapType_8190| ExhaleHeap@@6) o_8@@3 f_12@@2))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_8190) (ExhaleHeap@@7 T@PolymorphicMapType_8190) (Mask@@20 T@PolymorphicMapType_8211) (o_8@@4 T@Ref) (f_12@@3 T@Field_14430_3259) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@20) (=> (HasDirectPerm_4987_3259 Mask@@20 o_8@@4 f_12@@3) (= (select (|PolymorphicMapType_8190_4987_3259#PolymorphicMapType_8190| Heap@@8) o_8@@4 f_12@@3) (select (|PolymorphicMapType_8190_4987_3259#PolymorphicMapType_8190| ExhaleHeap@@7) o_8@@4 f_12@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@20) (select (|PolymorphicMapType_8190_4987_3259#PolymorphicMapType_8190| ExhaleHeap@@7) o_8@@4 f_12@@3))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_8190) (ExhaleHeap@@8 T@PolymorphicMapType_8190) (Mask@@21 T@PolymorphicMapType_8211) (o_8@@5 T@Ref) (f_12@@4 T@Field_14479_14481) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@21) (=> (HasDirectPerm_4989_14998 Mask@@21 o_8@@5 f_12@@4) (= (select (|PolymorphicMapType_8190_4989_15110#PolymorphicMapType_8190| Heap@@9) o_8@@5 f_12@@4) (select (|PolymorphicMapType_8190_4989_15110#PolymorphicMapType_8190| ExhaleHeap@@8) o_8@@5 f_12@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@21) (select (|PolymorphicMapType_8190_4989_15110#PolymorphicMapType_8190| ExhaleHeap@@8) o_8@@5 f_12@@4))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_4989_22427) ) (! (= (select (|PolymorphicMapType_8211_4989_27153#PolymorphicMapType_8211| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8211_4989_27153#PolymorphicMapType_8211| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_4989_22294) ) (! (= (select (|PolymorphicMapType_8211_4989_22294#PolymorphicMapType_8211| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8211_4989_22294#PolymorphicMapType_8211| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((o_2@@19 T@Ref) (f_4@@19 T@Field_8263_8264) ) (! (= (select (|PolymorphicMapType_8211_4989_8264#PolymorphicMapType_8211| ZeroMask) o_2@@19 f_4@@19) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8211_4989_8264#PolymorphicMapType_8211| ZeroMask) o_2@@19 f_4@@19))
)))
(assert (forall ((o_2@@20 T@Ref) (f_4@@20 T@Field_8250_53) ) (! (= (select (|PolymorphicMapType_8211_4989_53#PolymorphicMapType_8211| ZeroMask) o_2@@20 f_4@@20) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8211_4989_53#PolymorphicMapType_8211| ZeroMask) o_2@@20 f_4@@20))
)))
(assert (forall ((o_2@@21 T@Ref) (f_4@@21 T@Field_14430_3259) ) (! (= (select (|PolymorphicMapType_8211_4987_3259#PolymorphicMapType_8211| ZeroMask) o_2@@21 f_4@@21) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8211_4987_3259#PolymorphicMapType_8211| ZeroMask) o_2@@21 f_4@@21))
)))
(assert (forall ((o_2@@22 T@Ref) (f_4@@22 T@Field_14479_14481) ) (! (= (select (|PolymorphicMapType_8211_4989_14841#PolymorphicMapType_8211| ZeroMask) o_2@@22 f_4@@22) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8211_4989_14841#PolymorphicMapType_8211| ZeroMask) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_8211) (SummandMask1 T@PolymorphicMapType_8211) (SummandMask2 T@PolymorphicMapType_8211) (o_2@@23 T@Ref) (f_4@@23 T@Field_4989_22427) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_8211_4989_27153#PolymorphicMapType_8211| ResultMask) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_8211_4989_27153#PolymorphicMapType_8211| SummandMask1) o_2@@23 f_4@@23) (select (|PolymorphicMapType_8211_4989_27153#PolymorphicMapType_8211| SummandMask2) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8211_4989_27153#PolymorphicMapType_8211| ResultMask) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8211_4989_27153#PolymorphicMapType_8211| SummandMask1) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8211_4989_27153#PolymorphicMapType_8211| SummandMask2) o_2@@23 f_4@@23))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_8211) (SummandMask1@@0 T@PolymorphicMapType_8211) (SummandMask2@@0 T@PolymorphicMapType_8211) (o_2@@24 T@Ref) (f_4@@24 T@Field_4989_22294) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_8211_4989_22294#PolymorphicMapType_8211| ResultMask@@0) o_2@@24 f_4@@24) (+ (select (|PolymorphicMapType_8211_4989_22294#PolymorphicMapType_8211| SummandMask1@@0) o_2@@24 f_4@@24) (select (|PolymorphicMapType_8211_4989_22294#PolymorphicMapType_8211| SummandMask2@@0) o_2@@24 f_4@@24))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8211_4989_22294#PolymorphicMapType_8211| ResultMask@@0) o_2@@24 f_4@@24))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8211_4989_22294#PolymorphicMapType_8211| SummandMask1@@0) o_2@@24 f_4@@24))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8211_4989_22294#PolymorphicMapType_8211| SummandMask2@@0) o_2@@24 f_4@@24))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_8211) (SummandMask1@@1 T@PolymorphicMapType_8211) (SummandMask2@@1 T@PolymorphicMapType_8211) (o_2@@25 T@Ref) (f_4@@25 T@Field_8263_8264) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_8211_4989_8264#PolymorphicMapType_8211| ResultMask@@1) o_2@@25 f_4@@25) (+ (select (|PolymorphicMapType_8211_4989_8264#PolymorphicMapType_8211| SummandMask1@@1) o_2@@25 f_4@@25) (select (|PolymorphicMapType_8211_4989_8264#PolymorphicMapType_8211| SummandMask2@@1) o_2@@25 f_4@@25))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8211_4989_8264#PolymorphicMapType_8211| ResultMask@@1) o_2@@25 f_4@@25))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8211_4989_8264#PolymorphicMapType_8211| SummandMask1@@1) o_2@@25 f_4@@25))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8211_4989_8264#PolymorphicMapType_8211| SummandMask2@@1) o_2@@25 f_4@@25))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_8211) (SummandMask1@@2 T@PolymorphicMapType_8211) (SummandMask2@@2 T@PolymorphicMapType_8211) (o_2@@26 T@Ref) (f_4@@26 T@Field_8250_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_8211_4989_53#PolymorphicMapType_8211| ResultMask@@2) o_2@@26 f_4@@26) (+ (select (|PolymorphicMapType_8211_4989_53#PolymorphicMapType_8211| SummandMask1@@2) o_2@@26 f_4@@26) (select (|PolymorphicMapType_8211_4989_53#PolymorphicMapType_8211| SummandMask2@@2) o_2@@26 f_4@@26))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8211_4989_53#PolymorphicMapType_8211| ResultMask@@2) o_2@@26 f_4@@26))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8211_4989_53#PolymorphicMapType_8211| SummandMask1@@2) o_2@@26 f_4@@26))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8211_4989_53#PolymorphicMapType_8211| SummandMask2@@2) o_2@@26 f_4@@26))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_8211) (SummandMask1@@3 T@PolymorphicMapType_8211) (SummandMask2@@3 T@PolymorphicMapType_8211) (o_2@@27 T@Ref) (f_4@@27 T@Field_14430_3259) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_8211_4987_3259#PolymorphicMapType_8211| ResultMask@@3) o_2@@27 f_4@@27) (+ (select (|PolymorphicMapType_8211_4987_3259#PolymorphicMapType_8211| SummandMask1@@3) o_2@@27 f_4@@27) (select (|PolymorphicMapType_8211_4987_3259#PolymorphicMapType_8211| SummandMask2@@3) o_2@@27 f_4@@27))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8211_4987_3259#PolymorphicMapType_8211| ResultMask@@3) o_2@@27 f_4@@27))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8211_4987_3259#PolymorphicMapType_8211| SummandMask1@@3) o_2@@27 f_4@@27))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8211_4987_3259#PolymorphicMapType_8211| SummandMask2@@3) o_2@@27 f_4@@27))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_8211) (SummandMask1@@4 T@PolymorphicMapType_8211) (SummandMask2@@4 T@PolymorphicMapType_8211) (o_2@@28 T@Ref) (f_4@@28 T@Field_14479_14481) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_8211_4989_14841#PolymorphicMapType_8211| ResultMask@@4) o_2@@28 f_4@@28) (+ (select (|PolymorphicMapType_8211_4989_14841#PolymorphicMapType_8211| SummandMask1@@4) o_2@@28 f_4@@28) (select (|PolymorphicMapType_8211_4989_14841#PolymorphicMapType_8211| SummandMask2@@4) o_2@@28 f_4@@28))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8211_4989_14841#PolymorphicMapType_8211| ResultMask@@4) o_2@@28 f_4@@28))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8211_4989_14841#PolymorphicMapType_8211| SummandMask1@@4) o_2@@28 f_4@@28))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8211_4989_14841#PolymorphicMapType_8211| SummandMask2@@4) o_2@@28 f_4@@28))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_8190) (ExhaleHeap@@9 T@PolymorphicMapType_8190) (Mask@@22 T@PolymorphicMapType_8211) (pm_f_3@@1 T@Field_4989_22294) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@22) (=> (and (HasDirectPerm_4989_22358 Mask@@22 null pm_f_3@@1) (IsPredicateField_4989_22385 pm_f_3@@1)) (and (and (and (and (and (forall ((o2_3 T@Ref) (f_12@@5 T@Field_8250_53) ) (!  (=> (select (|PolymorphicMapType_8739_8250_53#PolymorphicMapType_8739| (select (|PolymorphicMapType_8190_4989_22471#PolymorphicMapType_8190| Heap@@10) null (PredicateMaskField_4989 pm_f_3@@1))) o2_3 f_12@@5) (= (select (|PolymorphicMapType_8190_4686_53#PolymorphicMapType_8190| Heap@@10) o2_3 f_12@@5) (select (|PolymorphicMapType_8190_4686_53#PolymorphicMapType_8190| ExhaleHeap@@9) o2_3 f_12@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8190_4686_53#PolymorphicMapType_8190| ExhaleHeap@@9) o2_3 f_12@@5))
)) (forall ((o2_3@@0 T@Ref) (f_12@@6 T@Field_8263_8264) ) (!  (=> (select (|PolymorphicMapType_8739_8250_8264#PolymorphicMapType_8739| (select (|PolymorphicMapType_8190_4989_22471#PolymorphicMapType_8190| Heap@@10) null (PredicateMaskField_4989 pm_f_3@@1))) o2_3@@0 f_12@@6) (= (select (|PolymorphicMapType_8190_4689_4690#PolymorphicMapType_8190| Heap@@10) o2_3@@0 f_12@@6) (select (|PolymorphicMapType_8190_4689_4690#PolymorphicMapType_8190| ExhaleHeap@@9) o2_3@@0 f_12@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8190_4689_4690#PolymorphicMapType_8190| ExhaleHeap@@9) o2_3@@0 f_12@@6))
))) (forall ((o2_3@@1 T@Ref) (f_12@@7 T@Field_14430_3259) ) (!  (=> (select (|PolymorphicMapType_8739_8250_3259#PolymorphicMapType_8739| (select (|PolymorphicMapType_8190_4989_22471#PolymorphicMapType_8190| Heap@@10) null (PredicateMaskField_4989 pm_f_3@@1))) o2_3@@1 f_12@@7) (= (select (|PolymorphicMapType_8190_4987_3259#PolymorphicMapType_8190| Heap@@10) o2_3@@1 f_12@@7) (select (|PolymorphicMapType_8190_4987_3259#PolymorphicMapType_8190| ExhaleHeap@@9) o2_3@@1 f_12@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8190_4987_3259#PolymorphicMapType_8190| ExhaleHeap@@9) o2_3@@1 f_12@@7))
))) (forall ((o2_3@@2 T@Ref) (f_12@@8 T@Field_14479_14481) ) (!  (=> (select (|PolymorphicMapType_8739_8250_23384#PolymorphicMapType_8739| (select (|PolymorphicMapType_8190_4989_22471#PolymorphicMapType_8190| Heap@@10) null (PredicateMaskField_4989 pm_f_3@@1))) o2_3@@2 f_12@@8) (= (select (|PolymorphicMapType_8190_4989_15110#PolymorphicMapType_8190| Heap@@10) o2_3@@2 f_12@@8) (select (|PolymorphicMapType_8190_4989_15110#PolymorphicMapType_8190| ExhaleHeap@@9) o2_3@@2 f_12@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8190_4989_15110#PolymorphicMapType_8190| ExhaleHeap@@9) o2_3@@2 f_12@@8))
))) (forall ((o2_3@@3 T@Ref) (f_12@@9 T@Field_4989_22294) ) (!  (=> (select (|PolymorphicMapType_8739_8250_22294#PolymorphicMapType_8739| (select (|PolymorphicMapType_8190_4989_22471#PolymorphicMapType_8190| Heap@@10) null (PredicateMaskField_4989 pm_f_3@@1))) o2_3@@3 f_12@@9) (= (select (|PolymorphicMapType_8190_8250_22294#PolymorphicMapType_8190| Heap@@10) o2_3@@3 f_12@@9) (select (|PolymorphicMapType_8190_8250_22294#PolymorphicMapType_8190| ExhaleHeap@@9) o2_3@@3 f_12@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8190_8250_22294#PolymorphicMapType_8190| ExhaleHeap@@9) o2_3@@3 f_12@@9))
))) (forall ((o2_3@@4 T@Ref) (f_12@@10 T@Field_4989_22427) ) (!  (=> (select (|PolymorphicMapType_8739_8250_23823#PolymorphicMapType_8739| (select (|PolymorphicMapType_8190_4989_22471#PolymorphicMapType_8190| Heap@@10) null (PredicateMaskField_4989 pm_f_3@@1))) o2_3@@4 f_12@@10) (= (select (|PolymorphicMapType_8190_4989_22471#PolymorphicMapType_8190| Heap@@10) o2_3@@4 f_12@@10) (select (|PolymorphicMapType_8190_4989_22471#PolymorphicMapType_8190| ExhaleHeap@@9) o2_3@@4 f_12@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8190_4989_22471#PolymorphicMapType_8190| ExhaleHeap@@9) o2_3@@4 f_12@@10))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@22) (IsPredicateField_4989_22385 pm_f_3@@1))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_8190) (ExhaleHeap@@10 T@PolymorphicMapType_8190) (Mask@@23 T@PolymorphicMapType_8211) (pm_f_3@@2 T@Field_4989_22294) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@23) (=> (and (HasDirectPerm_4989_22358 Mask@@23 null pm_f_3@@2) (IsWandField_4989_24350 pm_f_3@@2)) (and (and (and (and (and (forall ((o2_3@@5 T@Ref) (f_12@@11 T@Field_8250_53) ) (!  (=> (select (|PolymorphicMapType_8739_8250_53#PolymorphicMapType_8739| (select (|PolymorphicMapType_8190_4989_22471#PolymorphicMapType_8190| Heap@@11) null (WandMaskField_4989 pm_f_3@@2))) o2_3@@5 f_12@@11) (= (select (|PolymorphicMapType_8190_4686_53#PolymorphicMapType_8190| Heap@@11) o2_3@@5 f_12@@11) (select (|PolymorphicMapType_8190_4686_53#PolymorphicMapType_8190| ExhaleHeap@@10) o2_3@@5 f_12@@11)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8190_4686_53#PolymorphicMapType_8190| ExhaleHeap@@10) o2_3@@5 f_12@@11))
)) (forall ((o2_3@@6 T@Ref) (f_12@@12 T@Field_8263_8264) ) (!  (=> (select (|PolymorphicMapType_8739_8250_8264#PolymorphicMapType_8739| (select (|PolymorphicMapType_8190_4989_22471#PolymorphicMapType_8190| Heap@@11) null (WandMaskField_4989 pm_f_3@@2))) o2_3@@6 f_12@@12) (= (select (|PolymorphicMapType_8190_4689_4690#PolymorphicMapType_8190| Heap@@11) o2_3@@6 f_12@@12) (select (|PolymorphicMapType_8190_4689_4690#PolymorphicMapType_8190| ExhaleHeap@@10) o2_3@@6 f_12@@12)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8190_4689_4690#PolymorphicMapType_8190| ExhaleHeap@@10) o2_3@@6 f_12@@12))
))) (forall ((o2_3@@7 T@Ref) (f_12@@13 T@Field_14430_3259) ) (!  (=> (select (|PolymorphicMapType_8739_8250_3259#PolymorphicMapType_8739| (select (|PolymorphicMapType_8190_4989_22471#PolymorphicMapType_8190| Heap@@11) null (WandMaskField_4989 pm_f_3@@2))) o2_3@@7 f_12@@13) (= (select (|PolymorphicMapType_8190_4987_3259#PolymorphicMapType_8190| Heap@@11) o2_3@@7 f_12@@13) (select (|PolymorphicMapType_8190_4987_3259#PolymorphicMapType_8190| ExhaleHeap@@10) o2_3@@7 f_12@@13)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8190_4987_3259#PolymorphicMapType_8190| ExhaleHeap@@10) o2_3@@7 f_12@@13))
))) (forall ((o2_3@@8 T@Ref) (f_12@@14 T@Field_14479_14481) ) (!  (=> (select (|PolymorphicMapType_8739_8250_23384#PolymorphicMapType_8739| (select (|PolymorphicMapType_8190_4989_22471#PolymorphicMapType_8190| Heap@@11) null (WandMaskField_4989 pm_f_3@@2))) o2_3@@8 f_12@@14) (= (select (|PolymorphicMapType_8190_4989_15110#PolymorphicMapType_8190| Heap@@11) o2_3@@8 f_12@@14) (select (|PolymorphicMapType_8190_4989_15110#PolymorphicMapType_8190| ExhaleHeap@@10) o2_3@@8 f_12@@14)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8190_4989_15110#PolymorphicMapType_8190| ExhaleHeap@@10) o2_3@@8 f_12@@14))
))) (forall ((o2_3@@9 T@Ref) (f_12@@15 T@Field_4989_22294) ) (!  (=> (select (|PolymorphicMapType_8739_8250_22294#PolymorphicMapType_8739| (select (|PolymorphicMapType_8190_4989_22471#PolymorphicMapType_8190| Heap@@11) null (WandMaskField_4989 pm_f_3@@2))) o2_3@@9 f_12@@15) (= (select (|PolymorphicMapType_8190_8250_22294#PolymorphicMapType_8190| Heap@@11) o2_3@@9 f_12@@15) (select (|PolymorphicMapType_8190_8250_22294#PolymorphicMapType_8190| ExhaleHeap@@10) o2_3@@9 f_12@@15)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8190_8250_22294#PolymorphicMapType_8190| ExhaleHeap@@10) o2_3@@9 f_12@@15))
))) (forall ((o2_3@@10 T@Ref) (f_12@@16 T@Field_4989_22427) ) (!  (=> (select (|PolymorphicMapType_8739_8250_23823#PolymorphicMapType_8739| (select (|PolymorphicMapType_8190_4989_22471#PolymorphicMapType_8190| Heap@@11) null (WandMaskField_4989 pm_f_3@@2))) o2_3@@10 f_12@@16) (= (select (|PolymorphicMapType_8190_4989_22471#PolymorphicMapType_8190| Heap@@11) o2_3@@10 f_12@@16) (select (|PolymorphicMapType_8190_4989_22471#PolymorphicMapType_8190| ExhaleHeap@@10) o2_3@@10 f_12@@16)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8190_4989_22471#PolymorphicMapType_8190| ExhaleHeap@@10) o2_3@@10 f_12@@16))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@23) (IsWandField_4989_24350 pm_f_3@@2))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_8190) (o_7 T@Ref) (f_2 T@Field_4989_22294) (v T@FrameType) ) (! (succHeap Heap@@12 (PolymorphicMapType_8190 (|PolymorphicMapType_8190_4686_53#PolymorphicMapType_8190| Heap@@12) (|PolymorphicMapType_8190_4689_4690#PolymorphicMapType_8190| Heap@@12) (|PolymorphicMapType_8190_4989_15110#PolymorphicMapType_8190| Heap@@12) (|PolymorphicMapType_8190_4987_3259#PolymorphicMapType_8190| Heap@@12) (|PolymorphicMapType_8190_4989_22471#PolymorphicMapType_8190| Heap@@12) (store (|PolymorphicMapType_8190_8250_22294#PolymorphicMapType_8190| Heap@@12) o_7 f_2 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8190 (|PolymorphicMapType_8190_4686_53#PolymorphicMapType_8190| Heap@@12) (|PolymorphicMapType_8190_4689_4690#PolymorphicMapType_8190| Heap@@12) (|PolymorphicMapType_8190_4989_15110#PolymorphicMapType_8190| Heap@@12) (|PolymorphicMapType_8190_4987_3259#PolymorphicMapType_8190| Heap@@12) (|PolymorphicMapType_8190_4989_22471#PolymorphicMapType_8190| Heap@@12) (store (|PolymorphicMapType_8190_8250_22294#PolymorphicMapType_8190| Heap@@12) o_7 f_2 v)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_8190) (o_7@@0 T@Ref) (f_2@@0 T@Field_4989_22427) (v@@0 T@PolymorphicMapType_8739) ) (! (succHeap Heap@@13 (PolymorphicMapType_8190 (|PolymorphicMapType_8190_4686_53#PolymorphicMapType_8190| Heap@@13) (|PolymorphicMapType_8190_4689_4690#PolymorphicMapType_8190| Heap@@13) (|PolymorphicMapType_8190_4989_15110#PolymorphicMapType_8190| Heap@@13) (|PolymorphicMapType_8190_4987_3259#PolymorphicMapType_8190| Heap@@13) (store (|PolymorphicMapType_8190_4989_22471#PolymorphicMapType_8190| Heap@@13) o_7@@0 f_2@@0 v@@0) (|PolymorphicMapType_8190_8250_22294#PolymorphicMapType_8190| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8190 (|PolymorphicMapType_8190_4686_53#PolymorphicMapType_8190| Heap@@13) (|PolymorphicMapType_8190_4689_4690#PolymorphicMapType_8190| Heap@@13) (|PolymorphicMapType_8190_4989_15110#PolymorphicMapType_8190| Heap@@13) (|PolymorphicMapType_8190_4987_3259#PolymorphicMapType_8190| Heap@@13) (store (|PolymorphicMapType_8190_4989_22471#PolymorphicMapType_8190| Heap@@13) o_7@@0 f_2@@0 v@@0) (|PolymorphicMapType_8190_8250_22294#PolymorphicMapType_8190| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_8190) (o_7@@1 T@Ref) (f_2@@1 T@Field_14430_3259) (v@@1 Int) ) (! (succHeap Heap@@14 (PolymorphicMapType_8190 (|PolymorphicMapType_8190_4686_53#PolymorphicMapType_8190| Heap@@14) (|PolymorphicMapType_8190_4689_4690#PolymorphicMapType_8190| Heap@@14) (|PolymorphicMapType_8190_4989_15110#PolymorphicMapType_8190| Heap@@14) (store (|PolymorphicMapType_8190_4987_3259#PolymorphicMapType_8190| Heap@@14) o_7@@1 f_2@@1 v@@1) (|PolymorphicMapType_8190_4989_22471#PolymorphicMapType_8190| Heap@@14) (|PolymorphicMapType_8190_8250_22294#PolymorphicMapType_8190| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8190 (|PolymorphicMapType_8190_4686_53#PolymorphicMapType_8190| Heap@@14) (|PolymorphicMapType_8190_4689_4690#PolymorphicMapType_8190| Heap@@14) (|PolymorphicMapType_8190_4989_15110#PolymorphicMapType_8190| Heap@@14) (store (|PolymorphicMapType_8190_4987_3259#PolymorphicMapType_8190| Heap@@14) o_7@@1 f_2@@1 v@@1) (|PolymorphicMapType_8190_4989_22471#PolymorphicMapType_8190| Heap@@14) (|PolymorphicMapType_8190_8250_22294#PolymorphicMapType_8190| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_8190) (o_7@@2 T@Ref) (f_2@@2 T@Field_14479_14481) (v@@2 (Array T@Ref Bool)) ) (! (succHeap Heap@@15 (PolymorphicMapType_8190 (|PolymorphicMapType_8190_4686_53#PolymorphicMapType_8190| Heap@@15) (|PolymorphicMapType_8190_4689_4690#PolymorphicMapType_8190| Heap@@15) (store (|PolymorphicMapType_8190_4989_15110#PolymorphicMapType_8190| Heap@@15) o_7@@2 f_2@@2 v@@2) (|PolymorphicMapType_8190_4987_3259#PolymorphicMapType_8190| Heap@@15) (|PolymorphicMapType_8190_4989_22471#PolymorphicMapType_8190| Heap@@15) (|PolymorphicMapType_8190_8250_22294#PolymorphicMapType_8190| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8190 (|PolymorphicMapType_8190_4686_53#PolymorphicMapType_8190| Heap@@15) (|PolymorphicMapType_8190_4689_4690#PolymorphicMapType_8190| Heap@@15) (store (|PolymorphicMapType_8190_4989_15110#PolymorphicMapType_8190| Heap@@15) o_7@@2 f_2@@2 v@@2) (|PolymorphicMapType_8190_4987_3259#PolymorphicMapType_8190| Heap@@15) (|PolymorphicMapType_8190_4989_22471#PolymorphicMapType_8190| Heap@@15) (|PolymorphicMapType_8190_8250_22294#PolymorphicMapType_8190| Heap@@15)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_8190) (o_7@@3 T@Ref) (f_2@@3 T@Field_8263_8264) (v@@3 T@Ref) ) (! (succHeap Heap@@16 (PolymorphicMapType_8190 (|PolymorphicMapType_8190_4686_53#PolymorphicMapType_8190| Heap@@16) (store (|PolymorphicMapType_8190_4689_4690#PolymorphicMapType_8190| Heap@@16) o_7@@3 f_2@@3 v@@3) (|PolymorphicMapType_8190_4989_15110#PolymorphicMapType_8190| Heap@@16) (|PolymorphicMapType_8190_4987_3259#PolymorphicMapType_8190| Heap@@16) (|PolymorphicMapType_8190_4989_22471#PolymorphicMapType_8190| Heap@@16) (|PolymorphicMapType_8190_8250_22294#PolymorphicMapType_8190| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8190 (|PolymorphicMapType_8190_4686_53#PolymorphicMapType_8190| Heap@@16) (store (|PolymorphicMapType_8190_4689_4690#PolymorphicMapType_8190| Heap@@16) o_7@@3 f_2@@3 v@@3) (|PolymorphicMapType_8190_4989_15110#PolymorphicMapType_8190| Heap@@16) (|PolymorphicMapType_8190_4987_3259#PolymorphicMapType_8190| Heap@@16) (|PolymorphicMapType_8190_4989_22471#PolymorphicMapType_8190| Heap@@16) (|PolymorphicMapType_8190_8250_22294#PolymorphicMapType_8190| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_8190) (o_7@@4 T@Ref) (f_2@@4 T@Field_8250_53) (v@@4 Bool) ) (! (succHeap Heap@@17 (PolymorphicMapType_8190 (store (|PolymorphicMapType_8190_4686_53#PolymorphicMapType_8190| Heap@@17) o_7@@4 f_2@@4 v@@4) (|PolymorphicMapType_8190_4689_4690#PolymorphicMapType_8190| Heap@@17) (|PolymorphicMapType_8190_4989_15110#PolymorphicMapType_8190| Heap@@17) (|PolymorphicMapType_8190_4987_3259#PolymorphicMapType_8190| Heap@@17) (|PolymorphicMapType_8190_4989_22471#PolymorphicMapType_8190| Heap@@17) (|PolymorphicMapType_8190_8250_22294#PolymorphicMapType_8190| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8190 (store (|PolymorphicMapType_8190_4686_53#PolymorphicMapType_8190| Heap@@17) o_7@@4 f_2@@4 v@@4) (|PolymorphicMapType_8190_4689_4690#PolymorphicMapType_8190| Heap@@17) (|PolymorphicMapType_8190_4989_15110#PolymorphicMapType_8190| Heap@@17) (|PolymorphicMapType_8190_4987_3259#PolymorphicMapType_8190| Heap@@17) (|PolymorphicMapType_8190_4989_22471#PolymorphicMapType_8190| Heap@@17) (|PolymorphicMapType_8190_8250_22294#PolymorphicMapType_8190| Heap@@17)))
)))
(assert (forall ((a@@1 Int) (b@@0 Int) ) (! (= (<= a@@1 b@@0) (= (|Math#min| a@@1 b@@0) a@@1))
 :qid |stdinbpl.292:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@1 b@@0))
)))
(assert (forall ((a@@2 Int) (b@@1 Int) ) (! (= (<= b@@1 a@@2) (= (|Math#min| a@@2 b@@1) b@@1))
 :qid |stdinbpl.293:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@2 b@@1))
)))
(assert (forall ((o_7@@5 T@Ref) (f_11 T@Field_8263_8264) (Heap@@18 T@PolymorphicMapType_8190) ) (!  (=> (select (|PolymorphicMapType_8190_4686_53#PolymorphicMapType_8190| Heap@@18) o_7@@5 $allocated) (select (|PolymorphicMapType_8190_4686_53#PolymorphicMapType_8190| Heap@@18) (select (|PolymorphicMapType_8190_4689_4690#PolymorphicMapType_8190| Heap@@18) o_7@@5 f_11) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_8190_4689_4690#PolymorphicMapType_8190| Heap@@18) o_7@@5 f_11))
)))
(assert (forall ((p@@1 T@Field_4989_22294) (v_1@@0 T@FrameType) (q T@Field_4989_22294) (w@@0 T@FrameType) (r T@Field_4989_22294) (u T@FrameType) ) (!  (=> (and (InsidePredicate_8250_8250 p@@1 v_1@@0 q w@@0) (InsidePredicate_8250_8250 q w@@0 r u)) (InsidePredicate_8250_8250 p@@1 v_1@@0 r u))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8250_8250 p@@1 v_1@@0 q w@@0) (InsidePredicate_8250_8250 q w@@0 r u))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (< a@@3 0) (= (|Math#clip| a@@3) 0))
 :qid |stdinbpl.298:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@19 () T@PolymorphicMapType_8190)
(declare-fun this () T@Ref)
(declare-fun y_4 () T@Ref)
(declare-fun QPMask@0 () T@PolymorphicMapType_8211)
(declare-fun b_24 () T@Ref)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) T@Ref)
(declare-fun Mask@0 () T@PolymorphicMapType_8211)
(set-info :boogie-vc-id m)
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
 (=> (= (ControlFlow 0 0) 16) (let ((anon5_correct true))
(let ((anon9_Else_correct  (=> (and (not (select (select (|PolymorphicMapType_8190_4989_15110#PolymorphicMapType_8190| Heap@@19) this g) y_4)) (= (ControlFlow 0 10) 7)) anon5_correct)))
(let ((anon9_Then_correct  (=> (select (select (|PolymorphicMapType_8190_4989_15110#PolymorphicMapType_8190| Heap@@19) this g) y_4) (and (=> (= (ControlFlow 0 8) (- 0 9)) (HasDirectPerm_4987_3259 QPMask@0 y_4 f_7)) (=> (HasDirectPerm_4987_3259 QPMask@0 y_4 f_7) (=> (= (ControlFlow 0 8) 7) anon5_correct))))))
(let ((anon8_Then_correct  (and (=> (= (ControlFlow 0 11) (- 0 12)) (HasDirectPerm_4989_14998 QPMask@0 this g)) (=> (HasDirectPerm_4989_14998 QPMask@0 this g) (and (=> (= (ControlFlow 0 11) 8) anon9_Then_correct) (=> (= (ControlFlow 0 11) 10) anon9_Else_correct))))))
(let ((anon8_Else_correct  (=> (and (forall ((y_1 T@Ref) ) (!  (=> (select (select (|PolymorphicMapType_8190_4989_15110#PolymorphicMapType_8190| Heap@@19) this g) y_1) (>= (select (|PolymorphicMapType_8190_4987_3259#PolymorphicMapType_8190| Heap@@19) y_1 f_7) 0))
 :qid |stdinbpl.482:20|
 :skolemid |88|
 :pattern ( (select (select (|PolymorphicMapType_8190_4989_15110#PolymorphicMapType_8190| Heap@@19) this g) y_1))
)) (state Heap@@19 QPMask@0)) (and (=> (= (ControlFlow 0 4) (- 0 6)) (HasDirectPerm_4989_14998 QPMask@0 this g)) (=> (HasDirectPerm_4989_14998 QPMask@0 this g) (=> (and (select (select (|PolymorphicMapType_8190_4989_15110#PolymorphicMapType_8190| Heap@@19) this g) b_24) (state Heap@@19 QPMask@0)) (and (=> (= (ControlFlow 0 4) (- 0 5)) (HasDirectPerm_4987_3259 QPMask@0 b_24 f_7)) (=> (HasDirectPerm_4987_3259 QPMask@0 b_24 f_7) (=> (= (ControlFlow 0 4) (- 0 3)) (>= (select (|PolymorphicMapType_8190_4987_3259#PolymorphicMapType_8190| Heap@@19) b_24 f_7) 0))))))))))
(let ((anon7_Else_correct  (and (=> (= (ControlFlow 0 13) (- 0 14)) (forall ((x_1 T@Ref) (x_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_1 x_1_1)) (select (select (|PolymorphicMapType_8190_4989_15110#PolymorphicMapType_8190| Heap@@19) this g) x_1)) (select (select (|PolymorphicMapType_8190_4989_15110#PolymorphicMapType_8190| Heap@@19) this g) x_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_1 x_1_1)))
 :qid |stdinbpl.438:15|
 :skolemid |82|
))) (=> (forall ((x_1@@0 T@Ref) (x_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_1@@0 x_1_1@@0)) (select (select (|PolymorphicMapType_8190_4989_15110#PolymorphicMapType_8190| Heap@@19) this g) x_1@@0)) (select (select (|PolymorphicMapType_8190_4989_15110#PolymorphicMapType_8190| Heap@@19) this g) x_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_1@@0 x_1_1@@0)))
 :qid |stdinbpl.438:15|
 :skolemid |82|
)) (=> (and (and (forall ((x_1@@1 T@Ref) ) (!  (=> (and (select (select (|PolymorphicMapType_8190_4989_15110#PolymorphicMapType_8190| Heap@@19) this g) x_1@@1) (< NoPerm FullPerm)) (and (qpRange1 x_1@@1) (= (invRecv1 x_1@@1) x_1@@1)))
 :qid |stdinbpl.444:22|
 :skolemid |83|
 :pattern ( (select (|PolymorphicMapType_8190_4987_3259#PolymorphicMapType_8190| Heap@@19) x_1@@1 f_7))
 :pattern ( (select (|PolymorphicMapType_8211_4987_3259#PolymorphicMapType_8211| QPMask@0) x_1@@1 f_7))
 :pattern ( (select (select (|PolymorphicMapType_8190_4989_15110#PolymorphicMapType_8190| Heap@@19) this g) x_1@@1))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (select (select (|PolymorphicMapType_8190_4989_15110#PolymorphicMapType_8190| Heap@@19) this g) (invRecv1 o_4)) (< NoPerm FullPerm)) (qpRange1 o_4)) (= (invRecv1 o_4) o_4))
 :qid |stdinbpl.448:22|
 :skolemid |84|
 :pattern ( (invRecv1 o_4))
))) (and (forall ((x_1@@2 T@Ref) ) (!  (=> (select (select (|PolymorphicMapType_8190_4989_15110#PolymorphicMapType_8190| Heap@@19) this g) x_1@@2) (not (= x_1@@2 null)))
 :qid |stdinbpl.454:22|
 :skolemid |85|
 :pattern ( (select (|PolymorphicMapType_8190_4987_3259#PolymorphicMapType_8190| Heap@@19) x_1@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_8211_4987_3259#PolymorphicMapType_8211| QPMask@0) x_1@@2 f_7))
 :pattern ( (select (select (|PolymorphicMapType_8190_4989_15110#PolymorphicMapType_8190| Heap@@19) this g) x_1@@2))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (select (select (|PolymorphicMapType_8190_4989_15110#PolymorphicMapType_8190| Heap@@19) this g) (invRecv1 o_4@@0)) (< NoPerm FullPerm)) (qpRange1 o_4@@0)) (and (=> (< NoPerm FullPerm) (= (invRecv1 o_4@@0) o_4@@0)) (= (select (|PolymorphicMapType_8211_4987_3259#PolymorphicMapType_8211| QPMask@0) o_4@@0 f_7) (+ (select (|PolymorphicMapType_8211_4987_3259#PolymorphicMapType_8211| Mask@0) o_4@@0 f_7) FullPerm)))) (=> (not (and (and (select (select (|PolymorphicMapType_8190_4989_15110#PolymorphicMapType_8190| Heap@@19) this g) (invRecv1 o_4@@0)) (< NoPerm FullPerm)) (qpRange1 o_4@@0))) (= (select (|PolymorphicMapType_8211_4987_3259#PolymorphicMapType_8211| QPMask@0) o_4@@0 f_7) (select (|PolymorphicMapType_8211_4987_3259#PolymorphicMapType_8211| Mask@0) o_4@@0 f_7))))
 :qid |stdinbpl.460:22|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_8211_4987_3259#PolymorphicMapType_8211| QPMask@0) o_4@@0 f_7))
)))) (=> (and (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_8250_53) ) (!  (=> true (= (select (|PolymorphicMapType_8211_4989_53#PolymorphicMapType_8211| Mask@0) o_4@@1 f_5) (select (|PolymorphicMapType_8211_4989_53#PolymorphicMapType_8211| QPMask@0) o_4@@1 f_5)))
 :qid |stdinbpl.464:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_8211_4989_53#PolymorphicMapType_8211| Mask@0) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_8211_4989_53#PolymorphicMapType_8211| QPMask@0) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_8263_8264) ) (!  (=> true (= (select (|PolymorphicMapType_8211_4989_8264#PolymorphicMapType_8211| Mask@0) o_4@@2 f_5@@0) (select (|PolymorphicMapType_8211_4989_8264#PolymorphicMapType_8211| QPMask@0) o_4@@2 f_5@@0)))
 :qid |stdinbpl.464:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_8211_4989_8264#PolymorphicMapType_8211| Mask@0) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_8211_4989_8264#PolymorphicMapType_8211| QPMask@0) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_14430_3259) ) (!  (=> (not (= f_5@@1 f_7)) (= (select (|PolymorphicMapType_8211_4987_3259#PolymorphicMapType_8211| Mask@0) o_4@@3 f_5@@1) (select (|PolymorphicMapType_8211_4987_3259#PolymorphicMapType_8211| QPMask@0) o_4@@3 f_5@@1)))
 :qid |stdinbpl.464:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_8211_4987_3259#PolymorphicMapType_8211| Mask@0) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_8211_4987_3259#PolymorphicMapType_8211| QPMask@0) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_14479_14481) ) (!  (=> true (= (select (|PolymorphicMapType_8211_4989_14841#PolymorphicMapType_8211| Mask@0) o_4@@4 f_5@@2) (select (|PolymorphicMapType_8211_4989_14841#PolymorphicMapType_8211| QPMask@0) o_4@@4 f_5@@2)))
 :qid |stdinbpl.464:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_8211_4989_14841#PolymorphicMapType_8211| Mask@0) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_8211_4989_14841#PolymorphicMapType_8211| QPMask@0) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_4989_22294) ) (!  (=> true (= (select (|PolymorphicMapType_8211_4989_22294#PolymorphicMapType_8211| Mask@0) o_4@@5 f_5@@3) (select (|PolymorphicMapType_8211_4989_22294#PolymorphicMapType_8211| QPMask@0) o_4@@5 f_5@@3)))
 :qid |stdinbpl.464:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_8211_4989_22294#PolymorphicMapType_8211| Mask@0) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_8211_4989_22294#PolymorphicMapType_8211| QPMask@0) o_4@@5 f_5@@3))
))) (forall ((o_4@@6 T@Ref) (f_5@@4 T@Field_4989_22427) ) (!  (=> true (= (select (|PolymorphicMapType_8211_4989_27153#PolymorphicMapType_8211| Mask@0) o_4@@6 f_5@@4) (select (|PolymorphicMapType_8211_4989_27153#PolymorphicMapType_8211| QPMask@0) o_4@@6 f_5@@4)))
 :qid |stdinbpl.464:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_8211_4989_27153#PolymorphicMapType_8211| Mask@0) o_4@@6 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_8211_4989_27153#PolymorphicMapType_8211| QPMask@0) o_4@@6 f_5@@4))
))) (and (state Heap@@19 QPMask@0) (state Heap@@19 QPMask@0))) (and (=> (= (ControlFlow 0 13) 11) anon8_Then_correct) (=> (= (ControlFlow 0 13) 4) anon8_Else_correct))))))))
(let ((anon7_Then_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (HasDirectPerm_4989_14998 Mask@0 this g))))
(let ((anon0_correct  (=> (and (and (and (state Heap@@19 ZeroMask) AssumePermUpperBound) (and (select (|PolymorphicMapType_8190_4686_53#PolymorphicMapType_8190| Heap@@19) this $allocated) (select (|PolymorphicMapType_8190_4686_53#PolymorphicMapType_8190| Heap@@19) b_24 $allocated))) (and (and (not (= this null)) (= Mask@0 (PolymorphicMapType_8211 (store (|PolymorphicMapType_8211_4989_14841#PolymorphicMapType_8211| ZeroMask) this g (+ (select (|PolymorphicMapType_8211_4989_14841#PolymorphicMapType_8211| ZeroMask) this g) FullPerm)) (|PolymorphicMapType_8211_4987_3259#PolymorphicMapType_8211| ZeroMask) (|PolymorphicMapType_8211_4989_53#PolymorphicMapType_8211| ZeroMask) (|PolymorphicMapType_8211_4989_8264#PolymorphicMapType_8211| ZeroMask) (|PolymorphicMapType_8211_4989_22294#PolymorphicMapType_8211| ZeroMask) (|PolymorphicMapType_8211_4989_27153#PolymorphicMapType_8211| ZeroMask)))) (and (state Heap@@19 Mask@0) (state Heap@@19 Mask@0)))) (and (=> (= (ControlFlow 0 15) 2) anon7_Then_correct) (=> (= (ControlFlow 0 15) 13) anon7_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 16) 15) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
