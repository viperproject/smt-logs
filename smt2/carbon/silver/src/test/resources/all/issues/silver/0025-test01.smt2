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
(declare-sort T@Field_3439_53 0)
(declare-sort T@Field_3452_3453 0)
(declare-sort T@Field_6769_1234 0)
(declare-sort T@Field_3439_9628 0)
(declare-sort T@Field_3439_9495 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_3400 0)) (((PolymorphicMapType_3400 (|PolymorphicMapType_3400_1957_1234#PolymorphicMapType_3400| (Array T@Ref T@Field_6769_1234 Real)) (|PolymorphicMapType_3400_1957_53#PolymorphicMapType_3400| (Array T@Ref T@Field_3439_53 Real)) (|PolymorphicMapType_3400_1957_3453#PolymorphicMapType_3400| (Array T@Ref T@Field_3452_3453 Real)) (|PolymorphicMapType_3400_1957_9495#PolymorphicMapType_3400| (Array T@Ref T@Field_3439_9495 Real)) (|PolymorphicMapType_3400_1957_13750#PolymorphicMapType_3400| (Array T@Ref T@Field_3439_9628 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3928 0)) (((PolymorphicMapType_3928 (|PolymorphicMapType_3928_3439_53#PolymorphicMapType_3928| (Array T@Ref T@Field_3439_53 Bool)) (|PolymorphicMapType_3928_3439_3453#PolymorphicMapType_3928| (Array T@Ref T@Field_3452_3453 Bool)) (|PolymorphicMapType_3928_3439_1234#PolymorphicMapType_3928| (Array T@Ref T@Field_6769_1234 Bool)) (|PolymorphicMapType_3928_3439_9495#PolymorphicMapType_3928| (Array T@Ref T@Field_3439_9495 Bool)) (|PolymorphicMapType_3928_3439_10806#PolymorphicMapType_3928| (Array T@Ref T@Field_3439_9628 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3379 0)) (((PolymorphicMapType_3379 (|PolymorphicMapType_3379_1825_53#PolymorphicMapType_3379| (Array T@Ref T@Field_3439_53 Bool)) (|PolymorphicMapType_3379_1828_1829#PolymorphicMapType_3379| (Array T@Ref T@Field_3452_3453 T@Ref)) (|PolymorphicMapType_3379_3439_1234#PolymorphicMapType_3379| (Array T@Ref T@Field_6769_1234 Int)) (|PolymorphicMapType_3379_3439_9672#PolymorphicMapType_3379| (Array T@Ref T@Field_3439_9628 T@PolymorphicMapType_3928)) (|PolymorphicMapType_3379_3439_9495#PolymorphicMapType_3379| (Array T@Ref T@Field_3439_9495 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_3439_53)
(declare-fun f_7 () T@Field_6769_1234)
(declare-fun succHeap (T@PolymorphicMapType_3379 T@PolymorphicMapType_3379) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_3379 T@PolymorphicMapType_3379) Bool)
(declare-fun state (T@PolymorphicMapType_3379 T@PolymorphicMapType_3400) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_3400) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_3928)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_3379 T@PolymorphicMapType_3379 T@PolymorphicMapType_3400) Bool)
(declare-fun IsPredicateField_3439_9586 (T@Field_3439_9495) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3439 (T@Field_3439_9495) T@Field_3439_9628)
(declare-fun HasDirectPerm_3439_9559 (T@PolymorphicMapType_3400 T@Ref T@Field_3439_9495) Bool)
(declare-fun IsWandField_3439_11333 (T@Field_3439_9495) Bool)
(declare-fun WandMaskField_3439 (T@Field_3439_9495) T@Field_3439_9628)
(declare-fun dummyHeap () T@PolymorphicMapType_3379)
(declare-fun ZeroMask () T@PolymorphicMapType_3400)
(declare-fun InsidePredicate_3439_3439 (T@Field_3439_9495 T@FrameType T@Field_3439_9495 T@FrameType) Bool)
(declare-fun IsPredicateField_1957_1234 (T@Field_6769_1234) Bool)
(declare-fun IsWandField_1957_1234 (T@Field_6769_1234) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_1957_14879 (T@Field_3439_9628) Bool)
(declare-fun IsWandField_1957_14895 (T@Field_3439_9628) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_1957_3453 (T@Field_3452_3453) Bool)
(declare-fun IsWandField_1957_3453 (T@Field_3452_3453) Bool)
(declare-fun IsPredicateField_1957_53 (T@Field_3439_53) Bool)
(declare-fun IsWandField_1957_53 (T@Field_3439_53) Bool)
(declare-fun HasDirectPerm_3439_15333 (T@PolymorphicMapType_3400 T@Ref T@Field_3439_9628) Bool)
(declare-fun HasDirectPerm_3439_1234 (T@PolymorphicMapType_3400 T@Ref T@Field_6769_1234) Bool)
(declare-fun HasDirectPerm_3439_3453 (T@PolymorphicMapType_3400 T@Ref T@Field_3452_3453) Bool)
(declare-fun HasDirectPerm_3439_53 (T@PolymorphicMapType_3400 T@Ref T@Field_3439_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_3400 T@PolymorphicMapType_3400 T@PolymorphicMapType_3400) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_3379) (Heap1 T@PolymorphicMapType_3379) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_3379) (Mask T@PolymorphicMapType_3400) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_3379) (Heap1@@0 T@PolymorphicMapType_3379) (Heap2 T@PolymorphicMapType_3379) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_3439_9628) ) (!  (not (select (|PolymorphicMapType_3928_3439_10806#PolymorphicMapType_3928| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3928_3439_10806#PolymorphicMapType_3928| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_3439_9495) ) (!  (not (select (|PolymorphicMapType_3928_3439_9495#PolymorphicMapType_3928| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3928_3439_9495#PolymorphicMapType_3928| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_6769_1234) ) (!  (not (select (|PolymorphicMapType_3928_3439_1234#PolymorphicMapType_3928| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3928_3439_1234#PolymorphicMapType_3928| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_3452_3453) ) (!  (not (select (|PolymorphicMapType_3928_3439_3453#PolymorphicMapType_3928| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3928_3439_3453#PolymorphicMapType_3928| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_3439_53) ) (!  (not (select (|PolymorphicMapType_3928_3439_53#PolymorphicMapType_3928| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3928_3439_53#PolymorphicMapType_3928| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_3379) (ExhaleHeap T@PolymorphicMapType_3379) (Mask@@0 T@PolymorphicMapType_3400) (pm_f_1 T@Field_3439_9495) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_3439_9559 Mask@@0 null pm_f_1) (IsPredicateField_3439_9586 pm_f_1)) (= (select (|PolymorphicMapType_3379_3439_9672#PolymorphicMapType_3379| Heap@@0) null (PredicateMaskField_3439 pm_f_1)) (select (|PolymorphicMapType_3379_3439_9672#PolymorphicMapType_3379| ExhaleHeap) null (PredicateMaskField_3439 pm_f_1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_3439_9586 pm_f_1) (select (|PolymorphicMapType_3379_3439_9672#PolymorphicMapType_3379| ExhaleHeap) null (PredicateMaskField_3439 pm_f_1)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_3379) (ExhaleHeap@@0 T@PolymorphicMapType_3379) (Mask@@1 T@PolymorphicMapType_3400) (pm_f_1@@0 T@Field_3439_9495) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_3439_9559 Mask@@1 null pm_f_1@@0) (IsWandField_3439_11333 pm_f_1@@0)) (= (select (|PolymorphicMapType_3379_3439_9672#PolymorphicMapType_3379| Heap@@1) null (WandMaskField_3439 pm_f_1@@0)) (select (|PolymorphicMapType_3379_3439_9672#PolymorphicMapType_3379| ExhaleHeap@@0) null (WandMaskField_3439 pm_f_1@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_3439_11333 pm_f_1@@0) (select (|PolymorphicMapType_3379_3439_9672#PolymorphicMapType_3379| ExhaleHeap@@0) null (WandMaskField_3439 pm_f_1@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_3379) (ExhaleHeap@@1 T@PolymorphicMapType_3379) (Mask@@2 T@PolymorphicMapType_3400) (o_3 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_3379_1825_53#PolymorphicMapType_3379| Heap@@2) o_3 $allocated) (select (|PolymorphicMapType_3379_1825_53#PolymorphicMapType_3379| ExhaleHeap@@1) o_3 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_3379_1825_53#PolymorphicMapType_3379| ExhaleHeap@@1) o_3 $allocated))
)))
(assert (forall ((p T@Field_3439_9495) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_3439_3439 p v_1 p w))
 :qid |stdinbpl.189:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_3439_3439 p v_1 p w))
)))
(assert  (not (IsPredicateField_1957_1234 f_7)))
(assert  (not (IsWandField_1957_1234 f_7)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_3379) (ExhaleHeap@@2 T@PolymorphicMapType_3379) (Mask@@3 T@PolymorphicMapType_3400) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_3400) (o_2@@4 T@Ref) (f_4@@4 T@Field_3439_9628) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_3400_1957_13750#PolymorphicMapType_3400| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_1957_14879 f_4@@4))) (not (IsWandField_1957_14895 f_4@@4))) (<= (select (|PolymorphicMapType_3400_1957_13750#PolymorphicMapType_3400| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_3400_1957_13750#PolymorphicMapType_3400| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_3400) (o_2@@5 T@Ref) (f_4@@5 T@Field_3439_9495) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_3400_1957_9495#PolymorphicMapType_3400| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_3439_9586 f_4@@5))) (not (IsWandField_3439_11333 f_4@@5))) (<= (select (|PolymorphicMapType_3400_1957_9495#PolymorphicMapType_3400| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_3400_1957_9495#PolymorphicMapType_3400| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_3400) (o_2@@6 T@Ref) (f_4@@6 T@Field_3452_3453) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_3400_1957_3453#PolymorphicMapType_3400| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_1957_3453 f_4@@6))) (not (IsWandField_1957_3453 f_4@@6))) (<= (select (|PolymorphicMapType_3400_1957_3453#PolymorphicMapType_3400| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_3400_1957_3453#PolymorphicMapType_3400| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_3400) (o_2@@7 T@Ref) (f_4@@7 T@Field_3439_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_3400_1957_53#PolymorphicMapType_3400| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_1957_53 f_4@@7))) (not (IsWandField_1957_53 f_4@@7))) (<= (select (|PolymorphicMapType_3400_1957_53#PolymorphicMapType_3400| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_3400_1957_53#PolymorphicMapType_3400| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_3400) (o_2@@8 T@Ref) (f_4@@8 T@Field_6769_1234) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_3400_1957_1234#PolymorphicMapType_3400| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_1957_1234 f_4@@8))) (not (IsWandField_1957_1234 f_4@@8))) (<= (select (|PolymorphicMapType_3400_1957_1234#PolymorphicMapType_3400| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_3400_1957_1234#PolymorphicMapType_3400| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_3400) (o_2@@9 T@Ref) (f_4@@9 T@Field_3439_9628) ) (! (= (HasDirectPerm_3439_15333 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_3400_1957_13750#PolymorphicMapType_3400| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3439_15333 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_3400) (o_2@@10 T@Ref) (f_4@@10 T@Field_3439_9495) ) (! (= (HasDirectPerm_3439_9559 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_3400_1957_9495#PolymorphicMapType_3400| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3439_9559 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_3400) (o_2@@11 T@Ref) (f_4@@11 T@Field_6769_1234) ) (! (= (HasDirectPerm_3439_1234 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_3400_1957_1234#PolymorphicMapType_3400| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3439_1234 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_3400) (o_2@@12 T@Ref) (f_4@@12 T@Field_3452_3453) ) (! (= (HasDirectPerm_3439_3453 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_3400_1957_3453#PolymorphicMapType_3400| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3439_3453 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_3400) (o_2@@13 T@Ref) (f_4@@13 T@Field_3439_53) ) (! (= (HasDirectPerm_3439_53 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_3400_1957_53#PolymorphicMapType_3400| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3439_53 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_3379) (ExhaleHeap@@3 T@PolymorphicMapType_3379) (Mask@@14 T@PolymorphicMapType_3400) (pm_f_1@@1 T@Field_3439_9495) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_3439_9559 Mask@@14 null pm_f_1@@1) (IsPredicateField_3439_9586 pm_f_1@@1)) (and (and (and (and (forall ((o2_1 T@Ref) (f_8 T@Field_3439_53) ) (!  (=> (select (|PolymorphicMapType_3928_3439_53#PolymorphicMapType_3928| (select (|PolymorphicMapType_3379_3439_9672#PolymorphicMapType_3379| Heap@@4) null (PredicateMaskField_3439 pm_f_1@@1))) o2_1 f_8) (= (select (|PolymorphicMapType_3379_1825_53#PolymorphicMapType_3379| Heap@@4) o2_1 f_8) (select (|PolymorphicMapType_3379_1825_53#PolymorphicMapType_3379| ExhaleHeap@@3) o2_1 f_8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3379_1825_53#PolymorphicMapType_3379| ExhaleHeap@@3) o2_1 f_8))
)) (forall ((o2_1@@0 T@Ref) (f_8@@0 T@Field_3452_3453) ) (!  (=> (select (|PolymorphicMapType_3928_3439_3453#PolymorphicMapType_3928| (select (|PolymorphicMapType_3379_3439_9672#PolymorphicMapType_3379| Heap@@4) null (PredicateMaskField_3439 pm_f_1@@1))) o2_1@@0 f_8@@0) (= (select (|PolymorphicMapType_3379_1828_1829#PolymorphicMapType_3379| Heap@@4) o2_1@@0 f_8@@0) (select (|PolymorphicMapType_3379_1828_1829#PolymorphicMapType_3379| ExhaleHeap@@3) o2_1@@0 f_8@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3379_1828_1829#PolymorphicMapType_3379| ExhaleHeap@@3) o2_1@@0 f_8@@0))
))) (forall ((o2_1@@1 T@Ref) (f_8@@1 T@Field_6769_1234) ) (!  (=> (select (|PolymorphicMapType_3928_3439_1234#PolymorphicMapType_3928| (select (|PolymorphicMapType_3379_3439_9672#PolymorphicMapType_3379| Heap@@4) null (PredicateMaskField_3439 pm_f_1@@1))) o2_1@@1 f_8@@1) (= (select (|PolymorphicMapType_3379_3439_1234#PolymorphicMapType_3379| Heap@@4) o2_1@@1 f_8@@1) (select (|PolymorphicMapType_3379_3439_1234#PolymorphicMapType_3379| ExhaleHeap@@3) o2_1@@1 f_8@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3379_3439_1234#PolymorphicMapType_3379| ExhaleHeap@@3) o2_1@@1 f_8@@1))
))) (forall ((o2_1@@2 T@Ref) (f_8@@2 T@Field_3439_9495) ) (!  (=> (select (|PolymorphicMapType_3928_3439_9495#PolymorphicMapType_3928| (select (|PolymorphicMapType_3379_3439_9672#PolymorphicMapType_3379| Heap@@4) null (PredicateMaskField_3439 pm_f_1@@1))) o2_1@@2 f_8@@2) (= (select (|PolymorphicMapType_3379_3439_9495#PolymorphicMapType_3379| Heap@@4) o2_1@@2 f_8@@2) (select (|PolymorphicMapType_3379_3439_9495#PolymorphicMapType_3379| ExhaleHeap@@3) o2_1@@2 f_8@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3379_3439_9495#PolymorphicMapType_3379| ExhaleHeap@@3) o2_1@@2 f_8@@2))
))) (forall ((o2_1@@3 T@Ref) (f_8@@3 T@Field_3439_9628) ) (!  (=> (select (|PolymorphicMapType_3928_3439_10806#PolymorphicMapType_3928| (select (|PolymorphicMapType_3379_3439_9672#PolymorphicMapType_3379| Heap@@4) null (PredicateMaskField_3439 pm_f_1@@1))) o2_1@@3 f_8@@3) (= (select (|PolymorphicMapType_3379_3439_9672#PolymorphicMapType_3379| Heap@@4) o2_1@@3 f_8@@3) (select (|PolymorphicMapType_3379_3439_9672#PolymorphicMapType_3379| ExhaleHeap@@3) o2_1@@3 f_8@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3379_3439_9672#PolymorphicMapType_3379| ExhaleHeap@@3) o2_1@@3 f_8@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_3439_9586 pm_f_1@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_3379) (ExhaleHeap@@4 T@PolymorphicMapType_3379) (Mask@@15 T@PolymorphicMapType_3400) (pm_f_1@@2 T@Field_3439_9495) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_3439_9559 Mask@@15 null pm_f_1@@2) (IsWandField_3439_11333 pm_f_1@@2)) (and (and (and (and (forall ((o2_1@@4 T@Ref) (f_8@@4 T@Field_3439_53) ) (!  (=> (select (|PolymorphicMapType_3928_3439_53#PolymorphicMapType_3928| (select (|PolymorphicMapType_3379_3439_9672#PolymorphicMapType_3379| Heap@@5) null (WandMaskField_3439 pm_f_1@@2))) o2_1@@4 f_8@@4) (= (select (|PolymorphicMapType_3379_1825_53#PolymorphicMapType_3379| Heap@@5) o2_1@@4 f_8@@4) (select (|PolymorphicMapType_3379_1825_53#PolymorphicMapType_3379| ExhaleHeap@@4) o2_1@@4 f_8@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3379_1825_53#PolymorphicMapType_3379| ExhaleHeap@@4) o2_1@@4 f_8@@4))
)) (forall ((o2_1@@5 T@Ref) (f_8@@5 T@Field_3452_3453) ) (!  (=> (select (|PolymorphicMapType_3928_3439_3453#PolymorphicMapType_3928| (select (|PolymorphicMapType_3379_3439_9672#PolymorphicMapType_3379| Heap@@5) null (WandMaskField_3439 pm_f_1@@2))) o2_1@@5 f_8@@5) (= (select (|PolymorphicMapType_3379_1828_1829#PolymorphicMapType_3379| Heap@@5) o2_1@@5 f_8@@5) (select (|PolymorphicMapType_3379_1828_1829#PolymorphicMapType_3379| ExhaleHeap@@4) o2_1@@5 f_8@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3379_1828_1829#PolymorphicMapType_3379| ExhaleHeap@@4) o2_1@@5 f_8@@5))
))) (forall ((o2_1@@6 T@Ref) (f_8@@6 T@Field_6769_1234) ) (!  (=> (select (|PolymorphicMapType_3928_3439_1234#PolymorphicMapType_3928| (select (|PolymorphicMapType_3379_3439_9672#PolymorphicMapType_3379| Heap@@5) null (WandMaskField_3439 pm_f_1@@2))) o2_1@@6 f_8@@6) (= (select (|PolymorphicMapType_3379_3439_1234#PolymorphicMapType_3379| Heap@@5) o2_1@@6 f_8@@6) (select (|PolymorphicMapType_3379_3439_1234#PolymorphicMapType_3379| ExhaleHeap@@4) o2_1@@6 f_8@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3379_3439_1234#PolymorphicMapType_3379| ExhaleHeap@@4) o2_1@@6 f_8@@6))
))) (forall ((o2_1@@7 T@Ref) (f_8@@7 T@Field_3439_9495) ) (!  (=> (select (|PolymorphicMapType_3928_3439_9495#PolymorphicMapType_3928| (select (|PolymorphicMapType_3379_3439_9672#PolymorphicMapType_3379| Heap@@5) null (WandMaskField_3439 pm_f_1@@2))) o2_1@@7 f_8@@7) (= (select (|PolymorphicMapType_3379_3439_9495#PolymorphicMapType_3379| Heap@@5) o2_1@@7 f_8@@7) (select (|PolymorphicMapType_3379_3439_9495#PolymorphicMapType_3379| ExhaleHeap@@4) o2_1@@7 f_8@@7)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3379_3439_9495#PolymorphicMapType_3379| ExhaleHeap@@4) o2_1@@7 f_8@@7))
))) (forall ((o2_1@@8 T@Ref) (f_8@@8 T@Field_3439_9628) ) (!  (=> (select (|PolymorphicMapType_3928_3439_10806#PolymorphicMapType_3928| (select (|PolymorphicMapType_3379_3439_9672#PolymorphicMapType_3379| Heap@@5) null (WandMaskField_3439 pm_f_1@@2))) o2_1@@8 f_8@@8) (= (select (|PolymorphicMapType_3379_3439_9672#PolymorphicMapType_3379| Heap@@5) o2_1@@8 f_8@@8) (select (|PolymorphicMapType_3379_3439_9672#PolymorphicMapType_3379| ExhaleHeap@@4) o2_1@@8 f_8@@8)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3379_3439_9672#PolymorphicMapType_3379| ExhaleHeap@@4) o2_1@@8 f_8@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_3439_11333 pm_f_1@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.177:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_3379) (ExhaleHeap@@5 T@PolymorphicMapType_3379) (Mask@@16 T@PolymorphicMapType_3400) (o_3@@0 T@Ref) (f_8@@9 T@Field_3439_9628) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_3439_15333 Mask@@16 o_3@@0 f_8@@9) (= (select (|PolymorphicMapType_3379_3439_9672#PolymorphicMapType_3379| Heap@@6) o_3@@0 f_8@@9) (select (|PolymorphicMapType_3379_3439_9672#PolymorphicMapType_3379| ExhaleHeap@@5) o_3@@0 f_8@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_3379_3439_9672#PolymorphicMapType_3379| ExhaleHeap@@5) o_3@@0 f_8@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_3379) (ExhaleHeap@@6 T@PolymorphicMapType_3379) (Mask@@17 T@PolymorphicMapType_3400) (o_3@@1 T@Ref) (f_8@@10 T@Field_3439_9495) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_3439_9559 Mask@@17 o_3@@1 f_8@@10) (= (select (|PolymorphicMapType_3379_3439_9495#PolymorphicMapType_3379| Heap@@7) o_3@@1 f_8@@10) (select (|PolymorphicMapType_3379_3439_9495#PolymorphicMapType_3379| ExhaleHeap@@6) o_3@@1 f_8@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_3379_3439_9495#PolymorphicMapType_3379| ExhaleHeap@@6) o_3@@1 f_8@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_3379) (ExhaleHeap@@7 T@PolymorphicMapType_3379) (Mask@@18 T@PolymorphicMapType_3400) (o_3@@2 T@Ref) (f_8@@11 T@Field_6769_1234) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_3439_1234 Mask@@18 o_3@@2 f_8@@11) (= (select (|PolymorphicMapType_3379_3439_1234#PolymorphicMapType_3379| Heap@@8) o_3@@2 f_8@@11) (select (|PolymorphicMapType_3379_3439_1234#PolymorphicMapType_3379| ExhaleHeap@@7) o_3@@2 f_8@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_3379_3439_1234#PolymorphicMapType_3379| ExhaleHeap@@7) o_3@@2 f_8@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_3379) (ExhaleHeap@@8 T@PolymorphicMapType_3379) (Mask@@19 T@PolymorphicMapType_3400) (o_3@@3 T@Ref) (f_8@@12 T@Field_3452_3453) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_3439_3453 Mask@@19 o_3@@3 f_8@@12) (= (select (|PolymorphicMapType_3379_1828_1829#PolymorphicMapType_3379| Heap@@9) o_3@@3 f_8@@12) (select (|PolymorphicMapType_3379_1828_1829#PolymorphicMapType_3379| ExhaleHeap@@8) o_3@@3 f_8@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_3379_1828_1829#PolymorphicMapType_3379| ExhaleHeap@@8) o_3@@3 f_8@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_3379) (ExhaleHeap@@9 T@PolymorphicMapType_3379) (Mask@@20 T@PolymorphicMapType_3400) (o_3@@4 T@Ref) (f_8@@13 T@Field_3439_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_3439_53 Mask@@20 o_3@@4 f_8@@13) (= (select (|PolymorphicMapType_3379_1825_53#PolymorphicMapType_3379| Heap@@10) o_3@@4 f_8@@13) (select (|PolymorphicMapType_3379_1825_53#PolymorphicMapType_3379| ExhaleHeap@@9) o_3@@4 f_8@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_3379_1825_53#PolymorphicMapType_3379| ExhaleHeap@@9) o_3@@4 f_8@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_3439_9628) ) (! (= (select (|PolymorphicMapType_3400_1957_13750#PolymorphicMapType_3400| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3400_1957_13750#PolymorphicMapType_3400| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_3439_9495) ) (! (= (select (|PolymorphicMapType_3400_1957_9495#PolymorphicMapType_3400| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3400_1957_9495#PolymorphicMapType_3400| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_3452_3453) ) (! (= (select (|PolymorphicMapType_3400_1957_3453#PolymorphicMapType_3400| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3400_1957_3453#PolymorphicMapType_3400| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_3439_53) ) (! (= (select (|PolymorphicMapType_3400_1957_53#PolymorphicMapType_3400| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3400_1957_53#PolymorphicMapType_3400| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_6769_1234) ) (! (= (select (|PolymorphicMapType_3400_1957_1234#PolymorphicMapType_3400| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3400_1957_1234#PolymorphicMapType_3400| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_3400) (SummandMask1 T@PolymorphicMapType_3400) (SummandMask2 T@PolymorphicMapType_3400) (o_2@@19 T@Ref) (f_4@@19 T@Field_3439_9628) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_3400_1957_13750#PolymorphicMapType_3400| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_3400_1957_13750#PolymorphicMapType_3400| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_3400_1957_13750#PolymorphicMapType_3400| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3400_1957_13750#PolymorphicMapType_3400| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3400_1957_13750#PolymorphicMapType_3400| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3400_1957_13750#PolymorphicMapType_3400| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_3400) (SummandMask1@@0 T@PolymorphicMapType_3400) (SummandMask2@@0 T@PolymorphicMapType_3400) (o_2@@20 T@Ref) (f_4@@20 T@Field_3439_9495) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_3400_1957_9495#PolymorphicMapType_3400| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_3400_1957_9495#PolymorphicMapType_3400| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_3400_1957_9495#PolymorphicMapType_3400| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3400_1957_9495#PolymorphicMapType_3400| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3400_1957_9495#PolymorphicMapType_3400| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3400_1957_9495#PolymorphicMapType_3400| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_3400) (SummandMask1@@1 T@PolymorphicMapType_3400) (SummandMask2@@1 T@PolymorphicMapType_3400) (o_2@@21 T@Ref) (f_4@@21 T@Field_3452_3453) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_3400_1957_3453#PolymorphicMapType_3400| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_3400_1957_3453#PolymorphicMapType_3400| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_3400_1957_3453#PolymorphicMapType_3400| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3400_1957_3453#PolymorphicMapType_3400| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3400_1957_3453#PolymorphicMapType_3400| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3400_1957_3453#PolymorphicMapType_3400| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_3400) (SummandMask1@@2 T@PolymorphicMapType_3400) (SummandMask2@@2 T@PolymorphicMapType_3400) (o_2@@22 T@Ref) (f_4@@22 T@Field_3439_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_3400_1957_53#PolymorphicMapType_3400| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_3400_1957_53#PolymorphicMapType_3400| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_3400_1957_53#PolymorphicMapType_3400| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3400_1957_53#PolymorphicMapType_3400| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3400_1957_53#PolymorphicMapType_3400| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3400_1957_53#PolymorphicMapType_3400| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_3400) (SummandMask1@@3 T@PolymorphicMapType_3400) (SummandMask2@@3 T@PolymorphicMapType_3400) (o_2@@23 T@Ref) (f_4@@23 T@Field_6769_1234) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_3400_1957_1234#PolymorphicMapType_3400| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_3400_1957_1234#PolymorphicMapType_3400| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_3400_1957_1234#PolymorphicMapType_3400| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_3400_1957_1234#PolymorphicMapType_3400| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_3400_1957_1234#PolymorphicMapType_3400| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_3400_1957_1234#PolymorphicMapType_3400| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_3379) (o_1 T@Ref) (f_9 T@Field_3439_9495) (v T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_3379 (|PolymorphicMapType_3379_1825_53#PolymorphicMapType_3379| Heap@@11) (|PolymorphicMapType_3379_1828_1829#PolymorphicMapType_3379| Heap@@11) (|PolymorphicMapType_3379_3439_1234#PolymorphicMapType_3379| Heap@@11) (|PolymorphicMapType_3379_3439_9672#PolymorphicMapType_3379| Heap@@11) (store (|PolymorphicMapType_3379_3439_9495#PolymorphicMapType_3379| Heap@@11) o_1 f_9 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3379 (|PolymorphicMapType_3379_1825_53#PolymorphicMapType_3379| Heap@@11) (|PolymorphicMapType_3379_1828_1829#PolymorphicMapType_3379| Heap@@11) (|PolymorphicMapType_3379_3439_1234#PolymorphicMapType_3379| Heap@@11) (|PolymorphicMapType_3379_3439_9672#PolymorphicMapType_3379| Heap@@11) (store (|PolymorphicMapType_3379_3439_9495#PolymorphicMapType_3379| Heap@@11) o_1 f_9 v)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_3379) (o_1@@0 T@Ref) (f_9@@0 T@Field_3439_9628) (v@@0 T@PolymorphicMapType_3928) ) (! (succHeap Heap@@12 (PolymorphicMapType_3379 (|PolymorphicMapType_3379_1825_53#PolymorphicMapType_3379| Heap@@12) (|PolymorphicMapType_3379_1828_1829#PolymorphicMapType_3379| Heap@@12) (|PolymorphicMapType_3379_3439_1234#PolymorphicMapType_3379| Heap@@12) (store (|PolymorphicMapType_3379_3439_9672#PolymorphicMapType_3379| Heap@@12) o_1@@0 f_9@@0 v@@0) (|PolymorphicMapType_3379_3439_9495#PolymorphicMapType_3379| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3379 (|PolymorphicMapType_3379_1825_53#PolymorphicMapType_3379| Heap@@12) (|PolymorphicMapType_3379_1828_1829#PolymorphicMapType_3379| Heap@@12) (|PolymorphicMapType_3379_3439_1234#PolymorphicMapType_3379| Heap@@12) (store (|PolymorphicMapType_3379_3439_9672#PolymorphicMapType_3379| Heap@@12) o_1@@0 f_9@@0 v@@0) (|PolymorphicMapType_3379_3439_9495#PolymorphicMapType_3379| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_3379) (o_1@@1 T@Ref) (f_9@@1 T@Field_6769_1234) (v@@1 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_3379 (|PolymorphicMapType_3379_1825_53#PolymorphicMapType_3379| Heap@@13) (|PolymorphicMapType_3379_1828_1829#PolymorphicMapType_3379| Heap@@13) (store (|PolymorphicMapType_3379_3439_1234#PolymorphicMapType_3379| Heap@@13) o_1@@1 f_9@@1 v@@1) (|PolymorphicMapType_3379_3439_9672#PolymorphicMapType_3379| Heap@@13) (|PolymorphicMapType_3379_3439_9495#PolymorphicMapType_3379| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3379 (|PolymorphicMapType_3379_1825_53#PolymorphicMapType_3379| Heap@@13) (|PolymorphicMapType_3379_1828_1829#PolymorphicMapType_3379| Heap@@13) (store (|PolymorphicMapType_3379_3439_1234#PolymorphicMapType_3379| Heap@@13) o_1@@1 f_9@@1 v@@1) (|PolymorphicMapType_3379_3439_9672#PolymorphicMapType_3379| Heap@@13) (|PolymorphicMapType_3379_3439_9495#PolymorphicMapType_3379| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_3379) (o_1@@2 T@Ref) (f_9@@2 T@Field_3452_3453) (v@@2 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_3379 (|PolymorphicMapType_3379_1825_53#PolymorphicMapType_3379| Heap@@14) (store (|PolymorphicMapType_3379_1828_1829#PolymorphicMapType_3379| Heap@@14) o_1@@2 f_9@@2 v@@2) (|PolymorphicMapType_3379_3439_1234#PolymorphicMapType_3379| Heap@@14) (|PolymorphicMapType_3379_3439_9672#PolymorphicMapType_3379| Heap@@14) (|PolymorphicMapType_3379_3439_9495#PolymorphicMapType_3379| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3379 (|PolymorphicMapType_3379_1825_53#PolymorphicMapType_3379| Heap@@14) (store (|PolymorphicMapType_3379_1828_1829#PolymorphicMapType_3379| Heap@@14) o_1@@2 f_9@@2 v@@2) (|PolymorphicMapType_3379_3439_1234#PolymorphicMapType_3379| Heap@@14) (|PolymorphicMapType_3379_3439_9672#PolymorphicMapType_3379| Heap@@14) (|PolymorphicMapType_3379_3439_9495#PolymorphicMapType_3379| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_3379) (o_1@@3 T@Ref) (f_9@@3 T@Field_3439_53) (v@@3 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_3379 (store (|PolymorphicMapType_3379_1825_53#PolymorphicMapType_3379| Heap@@15) o_1@@3 f_9@@3 v@@3) (|PolymorphicMapType_3379_1828_1829#PolymorphicMapType_3379| Heap@@15) (|PolymorphicMapType_3379_3439_1234#PolymorphicMapType_3379| Heap@@15) (|PolymorphicMapType_3379_3439_9672#PolymorphicMapType_3379| Heap@@15) (|PolymorphicMapType_3379_3439_9495#PolymorphicMapType_3379| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3379 (store (|PolymorphicMapType_3379_1825_53#PolymorphicMapType_3379| Heap@@15) o_1@@3 f_9@@3 v@@3) (|PolymorphicMapType_3379_1828_1829#PolymorphicMapType_3379| Heap@@15) (|PolymorphicMapType_3379_3439_1234#PolymorphicMapType_3379| Heap@@15) (|PolymorphicMapType_3379_3439_9672#PolymorphicMapType_3379| Heap@@15) (|PolymorphicMapType_3379_3439_9495#PolymorphicMapType_3379| Heap@@15)))
)))
(assert (forall ((o_1@@4 T@Ref) (f_2 T@Field_3452_3453) (Heap@@16 T@PolymorphicMapType_3379) ) (!  (=> (select (|PolymorphicMapType_3379_1825_53#PolymorphicMapType_3379| Heap@@16) o_1@@4 $allocated) (select (|PolymorphicMapType_3379_1825_53#PolymorphicMapType_3379| Heap@@16) (select (|PolymorphicMapType_3379_1828_1829#PolymorphicMapType_3379| Heap@@16) o_1@@4 f_2) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_3379_1828_1829#PolymorphicMapType_3379| Heap@@16) o_1@@4 f_2))
)))
(assert (forall ((p@@1 T@Field_3439_9495) (v_1@@0 T@FrameType) (q T@Field_3439_9495) (w@@0 T@FrameType) (r T@Field_3439_9495) (u T@FrameType) ) (!  (=> (and (InsidePredicate_3439_3439 p@@1 v_1@@0 q w@@0) (InsidePredicate_3439_3439 q w@@0 r u)) (InsidePredicate_3439_3439 p@@1 v_1@@0 r u))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3439_3439 p@@1 v_1@@0 q w@@0) (InsidePredicate_3439_3439 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun this () T@Ref)
(declare-fun Heap@@17 () T@PolymorphicMapType_3379)
(set-info :boogie-vc-id test01)
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
 (=> (= (ControlFlow 0 0) 7) (let ((anon6_Else_correct  (=> (= (ControlFlow 0 4) (- 0 3)) (forall ((x_3 Int) (x_3_1 Int) ) (!  (=> (and (and (not (= x_3 x_3_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= this this)))
 :qid |stdinbpl.238:15|
 :skolemid |23|
)))))
(let ((anon6_Then_correct true))
(let ((anon5_Else_correct  (=> (forall ((x_1 Int) ) (!  (=> (> (+ x_1 1) 4) (> x_1 3))
 :qid |stdinbpl.227:20|
 :skolemid |22|
)) (and (=> (= (ControlFlow 0 5) 2) anon6_Then_correct) (=> (= (ControlFlow 0 5) 4) anon6_Else_correct)))))
(let ((anon5_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@17 ZeroMask) (=> (and AssumePermUpperBound (select (|PolymorphicMapType_3379_1825_53#PolymorphicMapType_3379| Heap@@17) this $allocated)) (and (=> (= (ControlFlow 0 6) 1) anon5_Then_correct) (=> (= (ControlFlow 0 6) 5) anon5_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 7) 6) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 4) (- 3))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
