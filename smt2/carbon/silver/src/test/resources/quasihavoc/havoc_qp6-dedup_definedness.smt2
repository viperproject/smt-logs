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
(declare-sort T@Field_7249_53 0)
(declare-sort T@Field_7262_7263 0)
(declare-sort T@Field_13422_3214 0)
(declare-sort T@Field_4517_17739 0)
(declare-sort T@Field_4517_17606 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_7210 0)) (((PolymorphicMapType_7210 (|PolymorphicMapType_7210_4517_3214#PolymorphicMapType_7210| (Array T@Ref T@Field_13422_3214 Real)) (|PolymorphicMapType_7210_4517_53#PolymorphicMapType_7210| (Array T@Ref T@Field_7249_53 Real)) (|PolymorphicMapType_7210_4517_7263#PolymorphicMapType_7210| (Array T@Ref T@Field_7262_7263 Real)) (|PolymorphicMapType_7210_4517_17606#PolymorphicMapType_7210| (Array T@Ref T@Field_4517_17606 Real)) (|PolymorphicMapType_7210_4517_21861#PolymorphicMapType_7210| (Array T@Ref T@Field_4517_17739 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7738 0)) (((PolymorphicMapType_7738 (|PolymorphicMapType_7738_7249_53#PolymorphicMapType_7738| (Array T@Ref T@Field_7249_53 Bool)) (|PolymorphicMapType_7738_7249_7263#PolymorphicMapType_7738| (Array T@Ref T@Field_7262_7263 Bool)) (|PolymorphicMapType_7738_7249_3214#PolymorphicMapType_7738| (Array T@Ref T@Field_13422_3214 Bool)) (|PolymorphicMapType_7738_7249_17606#PolymorphicMapType_7738| (Array T@Ref T@Field_4517_17606 Bool)) (|PolymorphicMapType_7738_7249_18917#PolymorphicMapType_7738| (Array T@Ref T@Field_4517_17739 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7189 0)) (((PolymorphicMapType_7189 (|PolymorphicMapType_7189_4224_53#PolymorphicMapType_7189| (Array T@Ref T@Field_7249_53 Bool)) (|PolymorphicMapType_7189_4227_4228#PolymorphicMapType_7189| (Array T@Ref T@Field_7262_7263 T@Ref)) (|PolymorphicMapType_7189_4517_3214#PolymorphicMapType_7189| (Array T@Ref T@Field_13422_3214 Int)) (|PolymorphicMapType_7189_4517_17783#PolymorphicMapType_7189| (Array T@Ref T@Field_4517_17739 T@PolymorphicMapType_7738)) (|PolymorphicMapType_7189_7249_17606#PolymorphicMapType_7189| (Array T@Ref T@Field_4517_17606 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_7249_53)
(declare-fun f_7 () T@Field_13422_3214)
(declare-fun succHeap (T@PolymorphicMapType_7189 T@PolymorphicMapType_7189) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_7189 T@PolymorphicMapType_7189) Bool)
(declare-fun state (T@PolymorphicMapType_7189 T@PolymorphicMapType_7210) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_7210) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_7738)
(declare-fun |dedup'| (T@PolymorphicMapType_7189 T@Ref T@Ref) T@Ref)
(declare-fun dummyFunction_4550 (T@Ref) Bool)
(declare-fun |dedup#triggerStateless| (T@Ref T@Ref) T@Ref)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |dedup#frame| (T@FrameType T@Ref T@Ref) T@Ref)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_7189 T@PolymorphicMapType_7189 T@PolymorphicMapType_7210) Bool)
(declare-fun IsPredicateField_4517_17697 (T@Field_4517_17606) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_4517 (T@Field_4517_17606) T@Field_4517_17739)
(declare-fun HasDirectPerm_4517_17670 (T@PolymorphicMapType_7210 T@Ref T@Field_4517_17606) Bool)
(declare-fun IsWandField_4517_19444 (T@Field_4517_17606) Bool)
(declare-fun WandMaskField_4517 (T@Field_4517_17606) T@Field_4517_17739)
(declare-fun dedup (T@PolymorphicMapType_7189 T@Ref T@Ref) T@Ref)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun dummyHeap () T@PolymorphicMapType_7189)
(declare-fun ZeroMask () T@PolymorphicMapType_7210)
(declare-fun InsidePredicate_7249_7249 (T@Field_4517_17606 T@FrameType T@Field_4517_17606 T@FrameType) Bool)
(declare-fun IsPredicateField_4517_3214 (T@Field_13422_3214) Bool)
(declare-fun IsWandField_4517_3214 (T@Field_13422_3214) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4517_22990 (T@Field_4517_17739) Bool)
(declare-fun IsWandField_4517_23006 (T@Field_4517_17739) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4517_7263 (T@Field_7262_7263) Bool)
(declare-fun IsWandField_4517_7263 (T@Field_7262_7263) Bool)
(declare-fun IsPredicateField_4517_53 (T@Field_7249_53) Bool)
(declare-fun IsWandField_4517_53 (T@Field_7249_53) Bool)
(declare-fun HasDirectPerm_4517_23444 (T@PolymorphicMapType_7210 T@Ref T@Field_4517_17739) Bool)
(declare-fun HasDirectPerm_4517_7263 (T@PolymorphicMapType_7210 T@Ref T@Field_7262_7263) Bool)
(declare-fun HasDirectPerm_4517_53 (T@PolymorphicMapType_7210 T@Ref T@Field_7249_53) Bool)
(declare-fun HasDirectPerm_4517_3214 (T@PolymorphicMapType_7210 T@Ref T@Field_13422_3214) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_7210 T@PolymorphicMapType_7210 T@PolymorphicMapType_7210) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_7189) (Heap1 T@PolymorphicMapType_7189) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_7189) (Mask T@PolymorphicMapType_7210) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_7189) (Heap1@@0 T@PolymorphicMapType_7189) (Heap2 T@PolymorphicMapType_7189) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_4517_17739) ) (!  (not (select (|PolymorphicMapType_7738_7249_18917#PolymorphicMapType_7738| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7738_7249_18917#PolymorphicMapType_7738| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_4517_17606) ) (!  (not (select (|PolymorphicMapType_7738_7249_17606#PolymorphicMapType_7738| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7738_7249_17606#PolymorphicMapType_7738| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_13422_3214) ) (!  (not (select (|PolymorphicMapType_7738_7249_3214#PolymorphicMapType_7738| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7738_7249_3214#PolymorphicMapType_7738| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_7262_7263) ) (!  (not (select (|PolymorphicMapType_7738_7249_7263#PolymorphicMapType_7738| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7738_7249_7263#PolymorphicMapType_7738| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_7249_53) ) (!  (not (select (|PolymorphicMapType_7738_7249_53#PolymorphicMapType_7738| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7738_7249_53#PolymorphicMapType_7738| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_7189) (x T@Ref) (y T@Ref) ) (! (dummyFunction_4550 (|dedup#triggerStateless| x y))
 :qid |stdinbpl.404:15|
 :skolemid |83|
 :pattern ( (|dedup'| Heap@@0 x y))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.291:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_7189) (Mask@@0 T@PolymorphicMapType_7210) (x@@0 T@Ref) (y@@0 T@Ref) ) (!  (=> (state Heap@@1 Mask@@0) (= (|dedup'| Heap@@1 x@@0 y@@0) (|dedup#frame| EmptyFrame x@@0 y@@0)))
 :qid |stdinbpl.417:15|
 :skolemid |85|
 :pattern ( (state Heap@@1 Mask@@0) (|dedup'| Heap@@1 x@@0 y@@0))
)))
(assert (forall ((a@@0 Int) ) (!  (=> (<= 0 a@@0) (= (|Math#clip| a@@0) a@@0))
 :qid |stdinbpl.294:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_7189) (ExhaleHeap T@PolymorphicMapType_7189) (Mask@@1 T@PolymorphicMapType_7210) (pm_f_32 T@Field_4517_17606) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_4517_17670 Mask@@1 null pm_f_32) (IsPredicateField_4517_17697 pm_f_32)) (= (select (|PolymorphicMapType_7189_4517_17783#PolymorphicMapType_7189| Heap@@2) null (PredicateMaskField_4517 pm_f_32)) (select (|PolymorphicMapType_7189_4517_17783#PolymorphicMapType_7189| ExhaleHeap) null (PredicateMaskField_4517 pm_f_32)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@1) (IsPredicateField_4517_17697 pm_f_32) (select (|PolymorphicMapType_7189_4517_17783#PolymorphicMapType_7189| ExhaleHeap) null (PredicateMaskField_4517 pm_f_32)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_7189) (ExhaleHeap@@0 T@PolymorphicMapType_7189) (Mask@@2 T@PolymorphicMapType_7210) (pm_f_32@@0 T@Field_4517_17606) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_4517_17670 Mask@@2 null pm_f_32@@0) (IsWandField_4517_19444 pm_f_32@@0)) (= (select (|PolymorphicMapType_7189_4517_17783#PolymorphicMapType_7189| Heap@@3) null (WandMaskField_4517 pm_f_32@@0)) (select (|PolymorphicMapType_7189_4517_17783#PolymorphicMapType_7189| ExhaleHeap@@0) null (WandMaskField_4517 pm_f_32@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@2) (IsWandField_4517_19444 pm_f_32@@0) (select (|PolymorphicMapType_7189_4517_17783#PolymorphicMapType_7189| ExhaleHeap@@0) null (WandMaskField_4517 pm_f_32@@0)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_7189) (Mask@@3 T@PolymorphicMapType_7210) (x@@1 T@Ref) (y@@1 T@Ref) ) (!  (=> (and (state Heap@@4 Mask@@3) (< AssumeFunctionsAbove 0)) (= (dedup Heap@@4 x@@1 y@@1) x@@1))
 :qid |stdinbpl.410:15|
 :skolemid |84|
 :pattern ( (state Heap@@4 Mask@@3) (dedup Heap@@4 x@@1 y@@1))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@5 T@PolymorphicMapType_7189) (ExhaleHeap@@1 T@PolymorphicMapType_7189) (Mask@@4 T@PolymorphicMapType_7210) (o_55 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@4) (=> (select (|PolymorphicMapType_7189_4224_53#PolymorphicMapType_7189| Heap@@5) o_55 $allocated) (select (|PolymorphicMapType_7189_4224_53#PolymorphicMapType_7189| ExhaleHeap@@1) o_55 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@4) (select (|PolymorphicMapType_7189_4224_53#PolymorphicMapType_7189| ExhaleHeap@@1) o_55 $allocated))
)))
(assert (forall ((p T@Field_4517_17606) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_7249_7249 p v_1 p w))
 :qid |stdinbpl.189:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_7249_7249 p v_1 p w))
)))
(assert  (not (IsPredicateField_4517_3214 f_7)))
(assert  (not (IsWandField_4517_3214 f_7)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_7189) (ExhaleHeap@@2 T@PolymorphicMapType_7189) (Mask@@5 T@PolymorphicMapType_7210) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@5) (succHeap Heap@@6 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_7210) (o_2@@4 T@Ref) (f_4@@4 T@Field_4517_17739) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_7210_4517_21861#PolymorphicMapType_7210| Mask@@6) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_4517_22990 f_4@@4))) (not (IsWandField_4517_23006 f_4@@4))) (<= (select (|PolymorphicMapType_7210_4517_21861#PolymorphicMapType_7210| Mask@@6) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_7210_4517_21861#PolymorphicMapType_7210| Mask@@6) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_7210) (o_2@@5 T@Ref) (f_4@@5 T@Field_4517_17606) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_7210_4517_17606#PolymorphicMapType_7210| Mask@@7) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_4517_17697 f_4@@5))) (not (IsWandField_4517_19444 f_4@@5))) (<= (select (|PolymorphicMapType_7210_4517_17606#PolymorphicMapType_7210| Mask@@7) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_7210_4517_17606#PolymorphicMapType_7210| Mask@@7) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_7210) (o_2@@6 T@Ref) (f_4@@6 T@Field_7262_7263) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_7210_4517_7263#PolymorphicMapType_7210| Mask@@8) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_4517_7263 f_4@@6))) (not (IsWandField_4517_7263 f_4@@6))) (<= (select (|PolymorphicMapType_7210_4517_7263#PolymorphicMapType_7210| Mask@@8) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_7210_4517_7263#PolymorphicMapType_7210| Mask@@8) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_7210) (o_2@@7 T@Ref) (f_4@@7 T@Field_7249_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_7210_4517_53#PolymorphicMapType_7210| Mask@@9) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_4517_53 f_4@@7))) (not (IsWandField_4517_53 f_4@@7))) (<= (select (|PolymorphicMapType_7210_4517_53#PolymorphicMapType_7210| Mask@@9) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_7210_4517_53#PolymorphicMapType_7210| Mask@@9) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_7210) (o_2@@8 T@Ref) (f_4@@8 T@Field_13422_3214) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_7210_4517_3214#PolymorphicMapType_7210| Mask@@10) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_4517_3214 f_4@@8))) (not (IsWandField_4517_3214 f_4@@8))) (<= (select (|PolymorphicMapType_7210_4517_3214#PolymorphicMapType_7210| Mask@@10) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_7210_4517_3214#PolymorphicMapType_7210| Mask@@10) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_7210) (o_2@@9 T@Ref) (f_4@@9 T@Field_4517_17739) ) (! (= (HasDirectPerm_4517_23444 Mask@@11 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_7210_4517_21861#PolymorphicMapType_7210| Mask@@11) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4517_23444 Mask@@11 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_7210) (o_2@@10 T@Ref) (f_4@@10 T@Field_4517_17606) ) (! (= (HasDirectPerm_4517_17670 Mask@@12 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_7210_4517_17606#PolymorphicMapType_7210| Mask@@12) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4517_17670 Mask@@12 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_7210) (o_2@@11 T@Ref) (f_4@@11 T@Field_7262_7263) ) (! (= (HasDirectPerm_4517_7263 Mask@@13 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_7210_4517_7263#PolymorphicMapType_7210| Mask@@13) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4517_7263 Mask@@13 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_7210) (o_2@@12 T@Ref) (f_4@@12 T@Field_7249_53) ) (! (= (HasDirectPerm_4517_53 Mask@@14 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_7210_4517_53#PolymorphicMapType_7210| Mask@@14) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4517_53 Mask@@14 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_7210) (o_2@@13 T@Ref) (f_4@@13 T@Field_13422_3214) ) (! (= (HasDirectPerm_4517_3214 Mask@@15 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_7210_4517_3214#PolymorphicMapType_7210| Mask@@15) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4517_3214 Mask@@15 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_7189) (ExhaleHeap@@3 T@PolymorphicMapType_7189) (Mask@@16 T@PolymorphicMapType_7210) (pm_f_32@@1 T@Field_4517_17606) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@16) (=> (and (HasDirectPerm_4517_17670 Mask@@16 null pm_f_32@@1) (IsPredicateField_4517_17697 pm_f_32@@1)) (and (and (and (and (forall ((o2_32 T@Ref) (f_54 T@Field_7249_53) ) (!  (=> (select (|PolymorphicMapType_7738_7249_53#PolymorphicMapType_7738| (select (|PolymorphicMapType_7189_4517_17783#PolymorphicMapType_7189| Heap@@7) null (PredicateMaskField_4517 pm_f_32@@1))) o2_32 f_54) (= (select (|PolymorphicMapType_7189_4224_53#PolymorphicMapType_7189| Heap@@7) o2_32 f_54) (select (|PolymorphicMapType_7189_4224_53#PolymorphicMapType_7189| ExhaleHeap@@3) o2_32 f_54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7189_4224_53#PolymorphicMapType_7189| ExhaleHeap@@3) o2_32 f_54))
)) (forall ((o2_32@@0 T@Ref) (f_54@@0 T@Field_7262_7263) ) (!  (=> (select (|PolymorphicMapType_7738_7249_7263#PolymorphicMapType_7738| (select (|PolymorphicMapType_7189_4517_17783#PolymorphicMapType_7189| Heap@@7) null (PredicateMaskField_4517 pm_f_32@@1))) o2_32@@0 f_54@@0) (= (select (|PolymorphicMapType_7189_4227_4228#PolymorphicMapType_7189| Heap@@7) o2_32@@0 f_54@@0) (select (|PolymorphicMapType_7189_4227_4228#PolymorphicMapType_7189| ExhaleHeap@@3) o2_32@@0 f_54@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7189_4227_4228#PolymorphicMapType_7189| ExhaleHeap@@3) o2_32@@0 f_54@@0))
))) (forall ((o2_32@@1 T@Ref) (f_54@@1 T@Field_13422_3214) ) (!  (=> (select (|PolymorphicMapType_7738_7249_3214#PolymorphicMapType_7738| (select (|PolymorphicMapType_7189_4517_17783#PolymorphicMapType_7189| Heap@@7) null (PredicateMaskField_4517 pm_f_32@@1))) o2_32@@1 f_54@@1) (= (select (|PolymorphicMapType_7189_4517_3214#PolymorphicMapType_7189| Heap@@7) o2_32@@1 f_54@@1) (select (|PolymorphicMapType_7189_4517_3214#PolymorphicMapType_7189| ExhaleHeap@@3) o2_32@@1 f_54@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7189_4517_3214#PolymorphicMapType_7189| ExhaleHeap@@3) o2_32@@1 f_54@@1))
))) (forall ((o2_32@@2 T@Ref) (f_54@@2 T@Field_4517_17606) ) (!  (=> (select (|PolymorphicMapType_7738_7249_17606#PolymorphicMapType_7738| (select (|PolymorphicMapType_7189_4517_17783#PolymorphicMapType_7189| Heap@@7) null (PredicateMaskField_4517 pm_f_32@@1))) o2_32@@2 f_54@@2) (= (select (|PolymorphicMapType_7189_7249_17606#PolymorphicMapType_7189| Heap@@7) o2_32@@2 f_54@@2) (select (|PolymorphicMapType_7189_7249_17606#PolymorphicMapType_7189| ExhaleHeap@@3) o2_32@@2 f_54@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7189_7249_17606#PolymorphicMapType_7189| ExhaleHeap@@3) o2_32@@2 f_54@@2))
))) (forall ((o2_32@@3 T@Ref) (f_54@@3 T@Field_4517_17739) ) (!  (=> (select (|PolymorphicMapType_7738_7249_18917#PolymorphicMapType_7738| (select (|PolymorphicMapType_7189_4517_17783#PolymorphicMapType_7189| Heap@@7) null (PredicateMaskField_4517 pm_f_32@@1))) o2_32@@3 f_54@@3) (= (select (|PolymorphicMapType_7189_4517_17783#PolymorphicMapType_7189| Heap@@7) o2_32@@3 f_54@@3) (select (|PolymorphicMapType_7189_4517_17783#PolymorphicMapType_7189| ExhaleHeap@@3) o2_32@@3 f_54@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7189_4517_17783#PolymorphicMapType_7189| ExhaleHeap@@3) o2_32@@3 f_54@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@16) (IsPredicateField_4517_17697 pm_f_32@@1))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_7189) (ExhaleHeap@@4 T@PolymorphicMapType_7189) (Mask@@17 T@PolymorphicMapType_7210) (pm_f_32@@2 T@Field_4517_17606) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@17) (=> (and (HasDirectPerm_4517_17670 Mask@@17 null pm_f_32@@2) (IsWandField_4517_19444 pm_f_32@@2)) (and (and (and (and (forall ((o2_32@@4 T@Ref) (f_54@@4 T@Field_7249_53) ) (!  (=> (select (|PolymorphicMapType_7738_7249_53#PolymorphicMapType_7738| (select (|PolymorphicMapType_7189_4517_17783#PolymorphicMapType_7189| Heap@@8) null (WandMaskField_4517 pm_f_32@@2))) o2_32@@4 f_54@@4) (= (select (|PolymorphicMapType_7189_4224_53#PolymorphicMapType_7189| Heap@@8) o2_32@@4 f_54@@4) (select (|PolymorphicMapType_7189_4224_53#PolymorphicMapType_7189| ExhaleHeap@@4) o2_32@@4 f_54@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7189_4224_53#PolymorphicMapType_7189| ExhaleHeap@@4) o2_32@@4 f_54@@4))
)) (forall ((o2_32@@5 T@Ref) (f_54@@5 T@Field_7262_7263) ) (!  (=> (select (|PolymorphicMapType_7738_7249_7263#PolymorphicMapType_7738| (select (|PolymorphicMapType_7189_4517_17783#PolymorphicMapType_7189| Heap@@8) null (WandMaskField_4517 pm_f_32@@2))) o2_32@@5 f_54@@5) (= (select (|PolymorphicMapType_7189_4227_4228#PolymorphicMapType_7189| Heap@@8) o2_32@@5 f_54@@5) (select (|PolymorphicMapType_7189_4227_4228#PolymorphicMapType_7189| ExhaleHeap@@4) o2_32@@5 f_54@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7189_4227_4228#PolymorphicMapType_7189| ExhaleHeap@@4) o2_32@@5 f_54@@5))
))) (forall ((o2_32@@6 T@Ref) (f_54@@6 T@Field_13422_3214) ) (!  (=> (select (|PolymorphicMapType_7738_7249_3214#PolymorphicMapType_7738| (select (|PolymorphicMapType_7189_4517_17783#PolymorphicMapType_7189| Heap@@8) null (WandMaskField_4517 pm_f_32@@2))) o2_32@@6 f_54@@6) (= (select (|PolymorphicMapType_7189_4517_3214#PolymorphicMapType_7189| Heap@@8) o2_32@@6 f_54@@6) (select (|PolymorphicMapType_7189_4517_3214#PolymorphicMapType_7189| ExhaleHeap@@4) o2_32@@6 f_54@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7189_4517_3214#PolymorphicMapType_7189| ExhaleHeap@@4) o2_32@@6 f_54@@6))
))) (forall ((o2_32@@7 T@Ref) (f_54@@7 T@Field_4517_17606) ) (!  (=> (select (|PolymorphicMapType_7738_7249_17606#PolymorphicMapType_7738| (select (|PolymorphicMapType_7189_4517_17783#PolymorphicMapType_7189| Heap@@8) null (WandMaskField_4517 pm_f_32@@2))) o2_32@@7 f_54@@7) (= (select (|PolymorphicMapType_7189_7249_17606#PolymorphicMapType_7189| Heap@@8) o2_32@@7 f_54@@7) (select (|PolymorphicMapType_7189_7249_17606#PolymorphicMapType_7189| ExhaleHeap@@4) o2_32@@7 f_54@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7189_7249_17606#PolymorphicMapType_7189| ExhaleHeap@@4) o2_32@@7 f_54@@7))
))) (forall ((o2_32@@8 T@Ref) (f_54@@8 T@Field_4517_17739) ) (!  (=> (select (|PolymorphicMapType_7738_7249_18917#PolymorphicMapType_7738| (select (|PolymorphicMapType_7189_4517_17783#PolymorphicMapType_7189| Heap@@8) null (WandMaskField_4517 pm_f_32@@2))) o2_32@@8 f_54@@8) (= (select (|PolymorphicMapType_7189_4517_17783#PolymorphicMapType_7189| Heap@@8) o2_32@@8 f_54@@8) (select (|PolymorphicMapType_7189_4517_17783#PolymorphicMapType_7189| ExhaleHeap@@4) o2_32@@8 f_54@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7189_4517_17783#PolymorphicMapType_7189| ExhaleHeap@@4) o2_32@@8 f_54@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@17) (IsWandField_4517_19444 pm_f_32@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.177:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_7189) (ExhaleHeap@@5 T@PolymorphicMapType_7189) (Mask@@18 T@PolymorphicMapType_7210) (o_55@@0 T@Ref) (f_54@@9 T@Field_4517_17739) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@18) (=> (HasDirectPerm_4517_23444 Mask@@18 o_55@@0 f_54@@9) (= (select (|PolymorphicMapType_7189_4517_17783#PolymorphicMapType_7189| Heap@@9) o_55@@0 f_54@@9) (select (|PolymorphicMapType_7189_4517_17783#PolymorphicMapType_7189| ExhaleHeap@@5) o_55@@0 f_54@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@18) (select (|PolymorphicMapType_7189_4517_17783#PolymorphicMapType_7189| ExhaleHeap@@5) o_55@@0 f_54@@9))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_7189) (ExhaleHeap@@6 T@PolymorphicMapType_7189) (Mask@@19 T@PolymorphicMapType_7210) (o_55@@1 T@Ref) (f_54@@10 T@Field_4517_17606) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@19) (=> (HasDirectPerm_4517_17670 Mask@@19 o_55@@1 f_54@@10) (= (select (|PolymorphicMapType_7189_7249_17606#PolymorphicMapType_7189| Heap@@10) o_55@@1 f_54@@10) (select (|PolymorphicMapType_7189_7249_17606#PolymorphicMapType_7189| ExhaleHeap@@6) o_55@@1 f_54@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@19) (select (|PolymorphicMapType_7189_7249_17606#PolymorphicMapType_7189| ExhaleHeap@@6) o_55@@1 f_54@@10))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_7189) (ExhaleHeap@@7 T@PolymorphicMapType_7189) (Mask@@20 T@PolymorphicMapType_7210) (o_55@@2 T@Ref) (f_54@@11 T@Field_7262_7263) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@20) (=> (HasDirectPerm_4517_7263 Mask@@20 o_55@@2 f_54@@11) (= (select (|PolymorphicMapType_7189_4227_4228#PolymorphicMapType_7189| Heap@@11) o_55@@2 f_54@@11) (select (|PolymorphicMapType_7189_4227_4228#PolymorphicMapType_7189| ExhaleHeap@@7) o_55@@2 f_54@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@20) (select (|PolymorphicMapType_7189_4227_4228#PolymorphicMapType_7189| ExhaleHeap@@7) o_55@@2 f_54@@11))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_7189) (ExhaleHeap@@8 T@PolymorphicMapType_7189) (Mask@@21 T@PolymorphicMapType_7210) (o_55@@3 T@Ref) (f_54@@12 T@Field_7249_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@21) (=> (HasDirectPerm_4517_53 Mask@@21 o_55@@3 f_54@@12) (= (select (|PolymorphicMapType_7189_4224_53#PolymorphicMapType_7189| Heap@@12) o_55@@3 f_54@@12) (select (|PolymorphicMapType_7189_4224_53#PolymorphicMapType_7189| ExhaleHeap@@8) o_55@@3 f_54@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@21) (select (|PolymorphicMapType_7189_4224_53#PolymorphicMapType_7189| ExhaleHeap@@8) o_55@@3 f_54@@12))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_7189) (ExhaleHeap@@9 T@PolymorphicMapType_7189) (Mask@@22 T@PolymorphicMapType_7210) (o_55@@4 T@Ref) (f_54@@13 T@Field_13422_3214) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@22) (=> (HasDirectPerm_4517_3214 Mask@@22 o_55@@4 f_54@@13) (= (select (|PolymorphicMapType_7189_4517_3214#PolymorphicMapType_7189| Heap@@13) o_55@@4 f_54@@13) (select (|PolymorphicMapType_7189_4517_3214#PolymorphicMapType_7189| ExhaleHeap@@9) o_55@@4 f_54@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@22) (select (|PolymorphicMapType_7189_4517_3214#PolymorphicMapType_7189| ExhaleHeap@@9) o_55@@4 f_54@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_4517_17739) ) (! (= (select (|PolymorphicMapType_7210_4517_21861#PolymorphicMapType_7210| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7210_4517_21861#PolymorphicMapType_7210| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_4517_17606) ) (! (= (select (|PolymorphicMapType_7210_4517_17606#PolymorphicMapType_7210| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7210_4517_17606#PolymorphicMapType_7210| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_7262_7263) ) (! (= (select (|PolymorphicMapType_7210_4517_7263#PolymorphicMapType_7210| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7210_4517_7263#PolymorphicMapType_7210| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_7249_53) ) (! (= (select (|PolymorphicMapType_7210_4517_53#PolymorphicMapType_7210| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7210_4517_53#PolymorphicMapType_7210| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_13422_3214) ) (! (= (select (|PolymorphicMapType_7210_4517_3214#PolymorphicMapType_7210| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7210_4517_3214#PolymorphicMapType_7210| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_7189) (x@@2 T@Ref) (y@@2 T@Ref) ) (!  (and (= (dedup Heap@@14 x@@2 y@@2) (|dedup'| Heap@@14 x@@2 y@@2)) (dummyFunction_4550 (|dedup#triggerStateless| x@@2 y@@2)))
 :qid |stdinbpl.400:15|
 :skolemid |82|
 :pattern ( (dedup Heap@@14 x@@2 y@@2))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_7210) (SummandMask1 T@PolymorphicMapType_7210) (SummandMask2 T@PolymorphicMapType_7210) (o_2@@19 T@Ref) (f_4@@19 T@Field_4517_17739) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_7210_4517_21861#PolymorphicMapType_7210| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_7210_4517_21861#PolymorphicMapType_7210| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_7210_4517_21861#PolymorphicMapType_7210| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7210_4517_21861#PolymorphicMapType_7210| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7210_4517_21861#PolymorphicMapType_7210| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7210_4517_21861#PolymorphicMapType_7210| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_7210) (SummandMask1@@0 T@PolymorphicMapType_7210) (SummandMask2@@0 T@PolymorphicMapType_7210) (o_2@@20 T@Ref) (f_4@@20 T@Field_4517_17606) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_7210_4517_17606#PolymorphicMapType_7210| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_7210_4517_17606#PolymorphicMapType_7210| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_7210_4517_17606#PolymorphicMapType_7210| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7210_4517_17606#PolymorphicMapType_7210| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7210_4517_17606#PolymorphicMapType_7210| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7210_4517_17606#PolymorphicMapType_7210| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_7210) (SummandMask1@@1 T@PolymorphicMapType_7210) (SummandMask2@@1 T@PolymorphicMapType_7210) (o_2@@21 T@Ref) (f_4@@21 T@Field_7262_7263) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_7210_4517_7263#PolymorphicMapType_7210| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_7210_4517_7263#PolymorphicMapType_7210| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_7210_4517_7263#PolymorphicMapType_7210| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7210_4517_7263#PolymorphicMapType_7210| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7210_4517_7263#PolymorphicMapType_7210| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7210_4517_7263#PolymorphicMapType_7210| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_7210) (SummandMask1@@2 T@PolymorphicMapType_7210) (SummandMask2@@2 T@PolymorphicMapType_7210) (o_2@@22 T@Ref) (f_4@@22 T@Field_7249_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_7210_4517_53#PolymorphicMapType_7210| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_7210_4517_53#PolymorphicMapType_7210| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_7210_4517_53#PolymorphicMapType_7210| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7210_4517_53#PolymorphicMapType_7210| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7210_4517_53#PolymorphicMapType_7210| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7210_4517_53#PolymorphicMapType_7210| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_7210) (SummandMask1@@3 T@PolymorphicMapType_7210) (SummandMask2@@3 T@PolymorphicMapType_7210) (o_2@@23 T@Ref) (f_4@@23 T@Field_13422_3214) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_7210_4517_3214#PolymorphicMapType_7210| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_7210_4517_3214#PolymorphicMapType_7210| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_7210_4517_3214#PolymorphicMapType_7210| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7210_4517_3214#PolymorphicMapType_7210| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7210_4517_3214#PolymorphicMapType_7210| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7210_4517_3214#PolymorphicMapType_7210| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_7189) (o_54 T@Ref) (f_8 T@Field_4517_17606) (v T@FrameType) ) (! (succHeap Heap@@15 (PolymorphicMapType_7189 (|PolymorphicMapType_7189_4224_53#PolymorphicMapType_7189| Heap@@15) (|PolymorphicMapType_7189_4227_4228#PolymorphicMapType_7189| Heap@@15) (|PolymorphicMapType_7189_4517_3214#PolymorphicMapType_7189| Heap@@15) (|PolymorphicMapType_7189_4517_17783#PolymorphicMapType_7189| Heap@@15) (store (|PolymorphicMapType_7189_7249_17606#PolymorphicMapType_7189| Heap@@15) o_54 f_8 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7189 (|PolymorphicMapType_7189_4224_53#PolymorphicMapType_7189| Heap@@15) (|PolymorphicMapType_7189_4227_4228#PolymorphicMapType_7189| Heap@@15) (|PolymorphicMapType_7189_4517_3214#PolymorphicMapType_7189| Heap@@15) (|PolymorphicMapType_7189_4517_17783#PolymorphicMapType_7189| Heap@@15) (store (|PolymorphicMapType_7189_7249_17606#PolymorphicMapType_7189| Heap@@15) o_54 f_8 v)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_7189) (o_54@@0 T@Ref) (f_8@@0 T@Field_4517_17739) (v@@0 T@PolymorphicMapType_7738) ) (! (succHeap Heap@@16 (PolymorphicMapType_7189 (|PolymorphicMapType_7189_4224_53#PolymorphicMapType_7189| Heap@@16) (|PolymorphicMapType_7189_4227_4228#PolymorphicMapType_7189| Heap@@16) (|PolymorphicMapType_7189_4517_3214#PolymorphicMapType_7189| Heap@@16) (store (|PolymorphicMapType_7189_4517_17783#PolymorphicMapType_7189| Heap@@16) o_54@@0 f_8@@0 v@@0) (|PolymorphicMapType_7189_7249_17606#PolymorphicMapType_7189| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7189 (|PolymorphicMapType_7189_4224_53#PolymorphicMapType_7189| Heap@@16) (|PolymorphicMapType_7189_4227_4228#PolymorphicMapType_7189| Heap@@16) (|PolymorphicMapType_7189_4517_3214#PolymorphicMapType_7189| Heap@@16) (store (|PolymorphicMapType_7189_4517_17783#PolymorphicMapType_7189| Heap@@16) o_54@@0 f_8@@0 v@@0) (|PolymorphicMapType_7189_7249_17606#PolymorphicMapType_7189| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_7189) (o_54@@1 T@Ref) (f_8@@1 T@Field_13422_3214) (v@@1 Int) ) (! (succHeap Heap@@17 (PolymorphicMapType_7189 (|PolymorphicMapType_7189_4224_53#PolymorphicMapType_7189| Heap@@17) (|PolymorphicMapType_7189_4227_4228#PolymorphicMapType_7189| Heap@@17) (store (|PolymorphicMapType_7189_4517_3214#PolymorphicMapType_7189| Heap@@17) o_54@@1 f_8@@1 v@@1) (|PolymorphicMapType_7189_4517_17783#PolymorphicMapType_7189| Heap@@17) (|PolymorphicMapType_7189_7249_17606#PolymorphicMapType_7189| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7189 (|PolymorphicMapType_7189_4224_53#PolymorphicMapType_7189| Heap@@17) (|PolymorphicMapType_7189_4227_4228#PolymorphicMapType_7189| Heap@@17) (store (|PolymorphicMapType_7189_4517_3214#PolymorphicMapType_7189| Heap@@17) o_54@@1 f_8@@1 v@@1) (|PolymorphicMapType_7189_4517_17783#PolymorphicMapType_7189| Heap@@17) (|PolymorphicMapType_7189_7249_17606#PolymorphicMapType_7189| Heap@@17)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_7189) (o_54@@2 T@Ref) (f_8@@2 T@Field_7262_7263) (v@@2 T@Ref) ) (! (succHeap Heap@@18 (PolymorphicMapType_7189 (|PolymorphicMapType_7189_4224_53#PolymorphicMapType_7189| Heap@@18) (store (|PolymorphicMapType_7189_4227_4228#PolymorphicMapType_7189| Heap@@18) o_54@@2 f_8@@2 v@@2) (|PolymorphicMapType_7189_4517_3214#PolymorphicMapType_7189| Heap@@18) (|PolymorphicMapType_7189_4517_17783#PolymorphicMapType_7189| Heap@@18) (|PolymorphicMapType_7189_7249_17606#PolymorphicMapType_7189| Heap@@18)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7189 (|PolymorphicMapType_7189_4224_53#PolymorphicMapType_7189| Heap@@18) (store (|PolymorphicMapType_7189_4227_4228#PolymorphicMapType_7189| Heap@@18) o_54@@2 f_8@@2 v@@2) (|PolymorphicMapType_7189_4517_3214#PolymorphicMapType_7189| Heap@@18) (|PolymorphicMapType_7189_4517_17783#PolymorphicMapType_7189| Heap@@18) (|PolymorphicMapType_7189_7249_17606#PolymorphicMapType_7189| Heap@@18)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_7189) (o_54@@3 T@Ref) (f_8@@3 T@Field_7249_53) (v@@3 Bool) ) (! (succHeap Heap@@19 (PolymorphicMapType_7189 (store (|PolymorphicMapType_7189_4224_53#PolymorphicMapType_7189| Heap@@19) o_54@@3 f_8@@3 v@@3) (|PolymorphicMapType_7189_4227_4228#PolymorphicMapType_7189| Heap@@19) (|PolymorphicMapType_7189_4517_3214#PolymorphicMapType_7189| Heap@@19) (|PolymorphicMapType_7189_4517_17783#PolymorphicMapType_7189| Heap@@19) (|PolymorphicMapType_7189_7249_17606#PolymorphicMapType_7189| Heap@@19)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7189 (store (|PolymorphicMapType_7189_4224_53#PolymorphicMapType_7189| Heap@@19) o_54@@3 f_8@@3 v@@3) (|PolymorphicMapType_7189_4227_4228#PolymorphicMapType_7189| Heap@@19) (|PolymorphicMapType_7189_4517_3214#PolymorphicMapType_7189| Heap@@19) (|PolymorphicMapType_7189_4517_17783#PolymorphicMapType_7189| Heap@@19) (|PolymorphicMapType_7189_7249_17606#PolymorphicMapType_7189| Heap@@19)))
)))
(assert (forall ((a@@1 Int) (b@@0 Int) ) (! (= (<= a@@1 b@@0) (= (|Math#min| a@@1 b@@0) a@@1))
 :qid |stdinbpl.289:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@1 b@@0))
)))
(assert (forall ((a@@2 Int) (b@@1 Int) ) (! (= (<= b@@1 a@@2) (= (|Math#min| a@@2 b@@1) b@@1))
 :qid |stdinbpl.290:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@2 b@@1))
)))
(assert (forall ((o_54@@4 T@Ref) (f_24 T@Field_7262_7263) (Heap@@20 T@PolymorphicMapType_7189) ) (!  (=> (select (|PolymorphicMapType_7189_4224_53#PolymorphicMapType_7189| Heap@@20) o_54@@4 $allocated) (select (|PolymorphicMapType_7189_4224_53#PolymorphicMapType_7189| Heap@@20) (select (|PolymorphicMapType_7189_4227_4228#PolymorphicMapType_7189| Heap@@20) o_54@@4 f_24) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_7189_4227_4228#PolymorphicMapType_7189| Heap@@20) o_54@@4 f_24))
)))
(assert (forall ((p@@1 T@Field_4517_17606) (v_1@@0 T@FrameType) (q T@Field_4517_17606) (w@@0 T@FrameType) (r T@Field_4517_17606) (u T@FrameType) ) (!  (=> (and (InsidePredicate_7249_7249 p@@1 v_1@@0 q w@@0) (InsidePredicate_7249_7249 q w@@0 r u)) (InsidePredicate_7249_7249 p@@1 v_1@@0 r u))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7249_7249 p@@1 v_1@@0 q w@@0) (InsidePredicate_7249_7249 q w@@0 r u))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (< a@@3 0) (= (|Math#clip| a@@3) 0))
 :qid |stdinbpl.295:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id |dedup#definedness|)
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
 (=> (= (ControlFlow 0 0) 2) true)
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
