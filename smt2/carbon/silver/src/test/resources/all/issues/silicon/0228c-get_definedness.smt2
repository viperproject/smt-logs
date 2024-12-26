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
(declare-sort T@Field_8574_53 0)
(declare-sort T@Field_8587_8588 0)
(declare-sort T@Field_11901_1189 0)
(declare-sort T@Field_12658_12659 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_14141_14146 0)
(declare-sort T@Field_4564_4602 0)
(declare-sort T@Field_4564_14146 0)
(declare-sort T@Field_4601_1189 0)
(declare-sort T@Field_4601_53 0)
(declare-sort T@Field_4601_8588 0)
(declare-datatypes ((T@PolymorphicMapType_8535 0)) (((PolymorphicMapType_8535 (|PolymorphicMapType_8535_4601_4602#PolymorphicMapType_8535| (Array T@Ref T@Field_12658_12659 Real)) (|PolymorphicMapType_8535_4564_1189#PolymorphicMapType_8535| (Array T@Ref T@Field_11901_1189 Real)) (|PolymorphicMapType_8535_4601_1189#PolymorphicMapType_8535| (Array T@Ref T@Field_4601_1189 Real)) (|PolymorphicMapType_8535_4601_53#PolymorphicMapType_8535| (Array T@Ref T@Field_4601_53 Real)) (|PolymorphicMapType_8535_4601_8588#PolymorphicMapType_8535| (Array T@Ref T@Field_4601_8588 Real)) (|PolymorphicMapType_8535_4601_36683#PolymorphicMapType_8535| (Array T@Ref T@Field_14141_14146 Real)) (|PolymorphicMapType_8535_4564_4602#PolymorphicMapType_8535| (Array T@Ref T@Field_4564_4602 Real)) (|PolymorphicMapType_8535_4564_53#PolymorphicMapType_8535| (Array T@Ref T@Field_8574_53 Real)) (|PolymorphicMapType_8535_4564_8588#PolymorphicMapType_8535| (Array T@Ref T@Field_8587_8588 Real)) (|PolymorphicMapType_8535_4564_37097#PolymorphicMapType_8535| (Array T@Ref T@Field_4564_14146 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9063 0)) (((PolymorphicMapType_9063 (|PolymorphicMapType_9063_4564_1189#PolymorphicMapType_9063| (Array T@Ref T@Field_11901_1189 Bool)) (|PolymorphicMapType_9063_4564_53#PolymorphicMapType_9063| (Array T@Ref T@Field_8574_53 Bool)) (|PolymorphicMapType_9063_4564_8588#PolymorphicMapType_9063| (Array T@Ref T@Field_8587_8588 Bool)) (|PolymorphicMapType_9063_4564_12659#PolymorphicMapType_9063| (Array T@Ref T@Field_4564_4602 Bool)) (|PolymorphicMapType_9063_4564_30244#PolymorphicMapType_9063| (Array T@Ref T@Field_4564_14146 Bool)) (|PolymorphicMapType_9063_12658_1189#PolymorphicMapType_9063| (Array T@Ref T@Field_4601_1189 Bool)) (|PolymorphicMapType_9063_12658_53#PolymorphicMapType_9063| (Array T@Ref T@Field_4601_53 Bool)) (|PolymorphicMapType_9063_12658_8588#PolymorphicMapType_9063| (Array T@Ref T@Field_4601_8588 Bool)) (|PolymorphicMapType_9063_12658_12659#PolymorphicMapType_9063| (Array T@Ref T@Field_12658_12659 Bool)) (|PolymorphicMapType_9063_12658_31292#PolymorphicMapType_9063| (Array T@Ref T@Field_14141_14146 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8514 0)) (((PolymorphicMapType_8514 (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| (Array T@Ref T@Field_8574_53 Bool)) (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| (Array T@Ref T@Field_8587_8588 T@Ref)) (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| (Array T@Ref T@Field_11901_1189 Int)) (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| (Array T@Ref T@Field_12658_12659 T@FrameType)) (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| (Array T@Ref T@Field_14141_14146 T@PolymorphicMapType_9063)) (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| (Array T@Ref T@Field_4564_4602 T@FrameType)) (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| (Array T@Ref T@Field_4564_14146 T@PolymorphicMapType_9063)) (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| (Array T@Ref T@Field_4601_1189 Int)) (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| (Array T@Ref T@Field_4601_53 Bool)) (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| (Array T@Ref T@Field_4601_8588 T@Ref)) ) ) ))
(declare-fun $allocated () T@Field_8574_53)
(declare-fun f_7 () T@Field_11901_1189)
(declare-fun state (T@PolymorphicMapType_8514 T@PolymorphicMapType_8535) Bool)
(declare-fun |fun'| (T@PolymorphicMapType_8514 Int Int) Bool)
(declare-fun |fun#frame| (T@FrameType Int Int) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun succHeap (T@PolymorphicMapType_8514 T@PolymorphicMapType_8514) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_8514 T@PolymorphicMapType_8514) Bool)
(declare-fun get (T@PolymorphicMapType_8514 T@Ref) Int)
(declare-fun |get#triggerStateless| (T@Ref) Int)
(declare-fun |pred#trigger_4601| (T@PolymorphicMapType_8514 T@Field_12658_12659) Bool)
(declare-fun pred_3 (T@Ref) T@Field_12658_12659)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun GoodMask (T@PolymorphicMapType_8535) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_9063)
(declare-fun dummyFunction_1373 (Bool) Bool)
(declare-fun |fun#triggerStateless| (Int Int) Bool)
(declare-fun IsPredicateField_4601_4602 (T@Field_12658_12659) Bool)
(declare-fun |get'| (T@PolymorphicMapType_8514 T@Ref) Int)
(declare-fun dummyFunction_1603 (Int) Bool)
(declare-fun |pred#everUsed_4601| (T@Field_12658_12659) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_8514 T@PolymorphicMapType_8514 T@PolymorphicMapType_8535) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_4601 (T@Field_12658_12659) T@Field_14141_14146)
(declare-fun HasDirectPerm_4601_4602 (T@PolymorphicMapType_8535 T@Ref T@Field_12658_12659) Bool)
(declare-fun IsPredicateField_4564_28772 (T@Field_4564_4602) Bool)
(declare-fun PredicateMaskField_4564 (T@Field_4564_4602) T@Field_4564_14146)
(declare-fun HasDirectPerm_4564_4602 (T@PolymorphicMapType_8535 T@Ref T@Field_4564_4602) Bool)
(declare-fun IsWandField_4601_32457 (T@Field_12658_12659) Bool)
(declare-fun WandMaskField_4601 (T@Field_12658_12659) T@Field_14141_14146)
(declare-fun IsWandField_4564_32100 (T@Field_4564_4602) Bool)
(declare-fun WandMaskField_4564 (T@Field_4564_4602) T@Field_4564_14146)
(declare-fun |pred#sm| (T@Ref) T@Field_14141_14146)
(declare-fun dummyHeap () T@PolymorphicMapType_8514)
(declare-fun ZeroMask () T@PolymorphicMapType_8535)
(declare-fun InsidePredicate_12658_12658 (T@Field_12658_12659 T@FrameType T@Field_12658_12659 T@FrameType) Bool)
(declare-fun InsidePredicate_8574_8574 (T@Field_4564_4602 T@FrameType T@Field_4564_4602 T@FrameType) Bool)
(declare-fun IsPredicateField_4564_1189 (T@Field_11901_1189) Bool)
(declare-fun IsWandField_4564_1189 (T@Field_11901_1189) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4564_39389 (T@Field_4564_14146) Bool)
(declare-fun IsWandField_4564_39405 (T@Field_4564_14146) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4564_8588 (T@Field_8587_8588) Bool)
(declare-fun IsWandField_4564_8588 (T@Field_8587_8588) Bool)
(declare-fun IsPredicateField_4564_53 (T@Field_8574_53) Bool)
(declare-fun IsWandField_4564_53 (T@Field_8574_53) Bool)
(declare-fun IsPredicateField_4601_38572 (T@Field_14141_14146) Bool)
(declare-fun IsWandField_4601_38588 (T@Field_14141_14146) Bool)
(declare-fun IsPredicateField_4601_8588 (T@Field_4601_8588) Bool)
(declare-fun IsWandField_4601_8588 (T@Field_4601_8588) Bool)
(declare-fun IsPredicateField_4601_53 (T@Field_4601_53) Bool)
(declare-fun IsWandField_4601_53 (T@Field_4601_53) Bool)
(declare-fun IsPredicateField_4601_1189 (T@Field_4601_1189) Bool)
(declare-fun IsWandField_4601_1189 (T@Field_4601_1189) Bool)
(declare-fun HasDirectPerm_4601_28527 (T@PolymorphicMapType_8535 T@Ref T@Field_14141_14146) Bool)
(declare-fun HasDirectPerm_4601_8588 (T@PolymorphicMapType_8535 T@Ref T@Field_4601_8588) Bool)
(declare-fun HasDirectPerm_4601_53 (T@PolymorphicMapType_8535 T@Ref T@Field_4601_53) Bool)
(declare-fun HasDirectPerm_4601_1189 (T@PolymorphicMapType_8535 T@Ref T@Field_4601_1189) Bool)
(declare-fun HasDirectPerm_4564_27386 (T@PolymorphicMapType_8535 T@Ref T@Field_4564_14146) Bool)
(declare-fun HasDirectPerm_4564_8588 (T@PolymorphicMapType_8535 T@Ref T@Field_8587_8588) Bool)
(declare-fun HasDirectPerm_4564_53 (T@PolymorphicMapType_8535 T@Ref T@Field_8574_53) Bool)
(declare-fun HasDirectPerm_4564_1189 (T@PolymorphicMapType_8535 T@Ref T@Field_11901_1189) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_8535 T@PolymorphicMapType_8535 T@PolymorphicMapType_8535) Bool)
(declare-fun |get#frame| (T@FrameType T@Ref) Int)
(declare-fun getPredWandId_4601_4602 (T@Field_12658_12659) Int)
(declare-fun InsidePredicate_12658_8574 (T@Field_12658_12659 T@FrameType T@Field_4564_4602 T@FrameType) Bool)
(declare-fun InsidePredicate_8574_12658 (T@Field_4564_4602 T@FrameType T@Field_12658_12659 T@FrameType) Bool)
(declare-fun fun (T@PolymorphicMapType_8514 Int Int) Bool)
(assert (forall ((Heap T@PolymorphicMapType_8514) (Mask T@PolymorphicMapType_8535) (v_2 Int) (i Int) ) (!  (=> (state Heap Mask) (= (|fun'| Heap v_2 i) (|fun#frame| EmptyFrame v_2 i)))
 :qid |stdinbpl.206:15|
 :skolemid |24|
 :pattern ( (state Heap Mask) (|fun'| Heap v_2 i))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_8514) (Heap1 T@PolymorphicMapType_8514) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_8514) (Mask@@0 T@PolymorphicMapType_8535) (x T@Ref) ) (!  (=> (and (state Heap@@0 Mask@@0) (< AssumeFunctionsAbove 0)) (= (get Heap@@0 x) (select (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| Heap@@0) x f_7)))
 :qid |stdinbpl.246:15|
 :skolemid |27|
 :pattern ( (state Heap@@0 Mask@@0) (get Heap@@0 x))
 :pattern ( (state Heap@@0 Mask@@0) (|get#triggerStateless| x) (|pred#trigger_4601| Heap@@0 (pred_3 x)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_8514) (Mask@@1 T@PolymorphicMapType_8535) ) (!  (=> (state Heap@@1 Mask@@1) (GoodMask Mask@@1))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@1 Mask@@1))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_8514) (Heap1@@0 T@PolymorphicMapType_8514) (Heap2 T@PolymorphicMapType_8514) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_14141_14146) ) (!  (not (select (|PolymorphicMapType_9063_12658_31292#PolymorphicMapType_9063| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9063_12658_31292#PolymorphicMapType_9063| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_12658_12659) ) (!  (not (select (|PolymorphicMapType_9063_12658_12659#PolymorphicMapType_9063| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9063_12658_12659#PolymorphicMapType_9063| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_4601_8588) ) (!  (not (select (|PolymorphicMapType_9063_12658_8588#PolymorphicMapType_9063| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9063_12658_8588#PolymorphicMapType_9063| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_4601_53) ) (!  (not (select (|PolymorphicMapType_9063_12658_53#PolymorphicMapType_9063| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9063_12658_53#PolymorphicMapType_9063| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_4601_1189) ) (!  (not (select (|PolymorphicMapType_9063_12658_1189#PolymorphicMapType_9063| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9063_12658_1189#PolymorphicMapType_9063| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_4564_14146) ) (!  (not (select (|PolymorphicMapType_9063_4564_30244#PolymorphicMapType_9063| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9063_4564_30244#PolymorphicMapType_9063| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_4564_4602) ) (!  (not (select (|PolymorphicMapType_9063_4564_12659#PolymorphicMapType_9063| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9063_4564_12659#PolymorphicMapType_9063| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_8587_8588) ) (!  (not (select (|PolymorphicMapType_9063_4564_8588#PolymorphicMapType_9063| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9063_4564_8588#PolymorphicMapType_9063| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_8574_53) ) (!  (not (select (|PolymorphicMapType_9063_4564_53#PolymorphicMapType_9063| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9063_4564_53#PolymorphicMapType_9063| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_11901_1189) ) (!  (not (select (|PolymorphicMapType_9063_4564_1189#PolymorphicMapType_9063| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9063_4564_1189#PolymorphicMapType_9063| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_8514) (v_2@@0 Int) (i@@0 Int) ) (! (dummyFunction_1373 (|fun#triggerStateless| v_2@@0 i@@0))
 :qid |stdinbpl.199:15|
 :skolemid |23|
 :pattern ( (|fun'| Heap@@2 v_2@@0 i@@0))
)))
(assert (forall ((x@@0 T@Ref) ) (! (IsPredicateField_4601_4602 (pred_3 x@@0))
 :qid |stdinbpl.335:15|
 :skolemid |30|
 :pattern ( (pred_3 x@@0))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_8514) (x@@1 T@Ref) ) (! (dummyFunction_1603 (|get#triggerStateless| x@@1))
 :qid |stdinbpl.240:15|
 :skolemid |26|
 :pattern ( (|get'| Heap@@3 x@@1))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_8514) (x@@2 T@Ref) ) (! (|pred#everUsed_4601| (pred_3 x@@2))
 :qid |stdinbpl.354:15|
 :skolemid |34|
 :pattern ( (|pred#trigger_4601| Heap@@4 (pred_3 x@@2)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_8514) (x@@3 T@Ref) ) (!  (and (= (get Heap@@5 x@@3) (|get'| Heap@@5 x@@3)) (dummyFunction_1603 (|get#triggerStateless| x@@3)))
 :qid |stdinbpl.236:15|
 :skolemid |25|
 :pattern ( (get Heap@@5 x@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_8514) (ExhaleHeap T@PolymorphicMapType_8514) (Mask@@2 T@PolymorphicMapType_8535) (pm_f_22 T@Field_12658_12659) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap Mask@@2) (=> (and (HasDirectPerm_4601_4602 Mask@@2 null pm_f_22) (IsPredicateField_4601_4602 pm_f_22)) (= (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@6) null (PredicateMaskField_4601 pm_f_22)) (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| ExhaleHeap) null (PredicateMaskField_4601 pm_f_22)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap Mask@@2) (IsPredicateField_4601_4602 pm_f_22) (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| ExhaleHeap) null (PredicateMaskField_4601 pm_f_22)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_8514) (ExhaleHeap@@0 T@PolymorphicMapType_8514) (Mask@@3 T@PolymorphicMapType_8535) (pm_f_22@@0 T@Field_4564_4602) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@0 Mask@@3) (=> (and (HasDirectPerm_4564_4602 Mask@@3 null pm_f_22@@0) (IsPredicateField_4564_28772 pm_f_22@@0)) (= (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@7) null (PredicateMaskField_4564 pm_f_22@@0)) (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| ExhaleHeap@@0) null (PredicateMaskField_4564 pm_f_22@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@0 Mask@@3) (IsPredicateField_4564_28772 pm_f_22@@0) (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| ExhaleHeap@@0) null (PredicateMaskField_4564 pm_f_22@@0)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_8514) (ExhaleHeap@@1 T@PolymorphicMapType_8514) (Mask@@4 T@PolymorphicMapType_8535) (pm_f_22@@1 T@Field_12658_12659) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@4) (=> (and (HasDirectPerm_4601_4602 Mask@@4 null pm_f_22@@1) (IsWandField_4601_32457 pm_f_22@@1)) (= (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@8) null (WandMaskField_4601 pm_f_22@@1)) (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| ExhaleHeap@@1) null (WandMaskField_4601 pm_f_22@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@4) (IsWandField_4601_32457 pm_f_22@@1) (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| ExhaleHeap@@1) null (WandMaskField_4601 pm_f_22@@1)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_8514) (ExhaleHeap@@2 T@PolymorphicMapType_8514) (Mask@@5 T@PolymorphicMapType_8535) (pm_f_22@@2 T@Field_4564_4602) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@5) (=> (and (HasDirectPerm_4564_4602 Mask@@5 null pm_f_22@@2) (IsWandField_4564_32100 pm_f_22@@2)) (= (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@9) null (WandMaskField_4564 pm_f_22@@2)) (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| ExhaleHeap@@2) null (WandMaskField_4564 pm_f_22@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@5) (IsWandField_4564_32100 pm_f_22@@2) (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| ExhaleHeap@@2) null (WandMaskField_4564 pm_f_22@@2)))
)))
(assert (forall ((x@@4 T@Ref) (x2 T@Ref) ) (!  (=> (= (pred_3 x@@4) (pred_3 x2)) (= x@@4 x2))
 :qid |stdinbpl.345:15|
 :skolemid |32|
 :pattern ( (pred_3 x@@4) (pred_3 x2))
)))
(assert (forall ((x@@5 T@Ref) (x2@@0 T@Ref) ) (!  (=> (= (|pred#sm| x@@5) (|pred#sm| x2@@0)) (= x@@5 x2@@0))
 :qid |stdinbpl.349:15|
 :skolemid |33|
 :pattern ( (|pred#sm| x@@5) (|pred#sm| x2@@0))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_8514) (ExhaleHeap@@3 T@PolymorphicMapType_8514) (Mask@@6 T@PolymorphicMapType_8535) (pm_f_22@@3 T@Field_12658_12659) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@6) (=> (and (HasDirectPerm_4601_4602 Mask@@6 null pm_f_22@@3) (IsPredicateField_4601_4602 pm_f_22@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_22 T@Ref) (f_37 T@Field_11901_1189) ) (!  (=> (select (|PolymorphicMapType_9063_4564_1189#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@10) null (PredicateMaskField_4601 pm_f_22@@3))) o2_22 f_37) (= (select (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| Heap@@10) o2_22 f_37) (select (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| ExhaleHeap@@3) o2_22 f_37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| ExhaleHeap@@3) o2_22 f_37))
)) (forall ((o2_22@@0 T@Ref) (f_37@@0 T@Field_8574_53) ) (!  (=> (select (|PolymorphicMapType_9063_4564_53#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@10) null (PredicateMaskField_4601 pm_f_22@@3))) o2_22@@0 f_37@@0) (= (select (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| Heap@@10) o2_22@@0 f_37@@0) (select (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| ExhaleHeap@@3) o2_22@@0 f_37@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| ExhaleHeap@@3) o2_22@@0 f_37@@0))
))) (forall ((o2_22@@1 T@Ref) (f_37@@1 T@Field_8587_8588) ) (!  (=> (select (|PolymorphicMapType_9063_4564_8588#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@10) null (PredicateMaskField_4601 pm_f_22@@3))) o2_22@@1 f_37@@1) (= (select (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| Heap@@10) o2_22@@1 f_37@@1) (select (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| ExhaleHeap@@3) o2_22@@1 f_37@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| ExhaleHeap@@3) o2_22@@1 f_37@@1))
))) (forall ((o2_22@@2 T@Ref) (f_37@@2 T@Field_4564_4602) ) (!  (=> (select (|PolymorphicMapType_9063_4564_12659#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@10) null (PredicateMaskField_4601 pm_f_22@@3))) o2_22@@2 f_37@@2) (= (select (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| Heap@@10) o2_22@@2 f_37@@2) (select (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| ExhaleHeap@@3) o2_22@@2 f_37@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| ExhaleHeap@@3) o2_22@@2 f_37@@2))
))) (forall ((o2_22@@3 T@Ref) (f_37@@3 T@Field_4564_14146) ) (!  (=> (select (|PolymorphicMapType_9063_4564_30244#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@10) null (PredicateMaskField_4601 pm_f_22@@3))) o2_22@@3 f_37@@3) (= (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@10) o2_22@@3 f_37@@3) (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| ExhaleHeap@@3) o2_22@@3 f_37@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| ExhaleHeap@@3) o2_22@@3 f_37@@3))
))) (forall ((o2_22@@4 T@Ref) (f_37@@4 T@Field_4601_1189) ) (!  (=> (select (|PolymorphicMapType_9063_12658_1189#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@10) null (PredicateMaskField_4601 pm_f_22@@3))) o2_22@@4 f_37@@4) (= (select (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| Heap@@10) o2_22@@4 f_37@@4) (select (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| ExhaleHeap@@3) o2_22@@4 f_37@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| ExhaleHeap@@3) o2_22@@4 f_37@@4))
))) (forall ((o2_22@@5 T@Ref) (f_37@@5 T@Field_4601_53) ) (!  (=> (select (|PolymorphicMapType_9063_12658_53#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@10) null (PredicateMaskField_4601 pm_f_22@@3))) o2_22@@5 f_37@@5) (= (select (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| Heap@@10) o2_22@@5 f_37@@5) (select (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| ExhaleHeap@@3) o2_22@@5 f_37@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| ExhaleHeap@@3) o2_22@@5 f_37@@5))
))) (forall ((o2_22@@6 T@Ref) (f_37@@6 T@Field_4601_8588) ) (!  (=> (select (|PolymorphicMapType_9063_12658_8588#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@10) null (PredicateMaskField_4601 pm_f_22@@3))) o2_22@@6 f_37@@6) (= (select (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| Heap@@10) o2_22@@6 f_37@@6) (select (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| ExhaleHeap@@3) o2_22@@6 f_37@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| ExhaleHeap@@3) o2_22@@6 f_37@@6))
))) (forall ((o2_22@@7 T@Ref) (f_37@@7 T@Field_12658_12659) ) (!  (=> (select (|PolymorphicMapType_9063_12658_12659#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@10) null (PredicateMaskField_4601 pm_f_22@@3))) o2_22@@7 f_37@@7) (= (select (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| Heap@@10) o2_22@@7 f_37@@7) (select (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| ExhaleHeap@@3) o2_22@@7 f_37@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| ExhaleHeap@@3) o2_22@@7 f_37@@7))
))) (forall ((o2_22@@8 T@Ref) (f_37@@8 T@Field_14141_14146) ) (!  (=> (select (|PolymorphicMapType_9063_12658_31292#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@10) null (PredicateMaskField_4601 pm_f_22@@3))) o2_22@@8 f_37@@8) (= (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@10) o2_22@@8 f_37@@8) (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| ExhaleHeap@@3) o2_22@@8 f_37@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| ExhaleHeap@@3) o2_22@@8 f_37@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@6) (IsPredicateField_4601_4602 pm_f_22@@3))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_8514) (ExhaleHeap@@4 T@PolymorphicMapType_8514) (Mask@@7 T@PolymorphicMapType_8535) (pm_f_22@@4 T@Field_4564_4602) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@4 Mask@@7) (=> (and (HasDirectPerm_4564_4602 Mask@@7 null pm_f_22@@4) (IsPredicateField_4564_28772 pm_f_22@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_22@@9 T@Ref) (f_37@@9 T@Field_11901_1189) ) (!  (=> (select (|PolymorphicMapType_9063_4564_1189#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@11) null (PredicateMaskField_4564 pm_f_22@@4))) o2_22@@9 f_37@@9) (= (select (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| Heap@@11) o2_22@@9 f_37@@9) (select (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| ExhaleHeap@@4) o2_22@@9 f_37@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| ExhaleHeap@@4) o2_22@@9 f_37@@9))
)) (forall ((o2_22@@10 T@Ref) (f_37@@10 T@Field_8574_53) ) (!  (=> (select (|PolymorphicMapType_9063_4564_53#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@11) null (PredicateMaskField_4564 pm_f_22@@4))) o2_22@@10 f_37@@10) (= (select (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| Heap@@11) o2_22@@10 f_37@@10) (select (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| ExhaleHeap@@4) o2_22@@10 f_37@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| ExhaleHeap@@4) o2_22@@10 f_37@@10))
))) (forall ((o2_22@@11 T@Ref) (f_37@@11 T@Field_8587_8588) ) (!  (=> (select (|PolymorphicMapType_9063_4564_8588#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@11) null (PredicateMaskField_4564 pm_f_22@@4))) o2_22@@11 f_37@@11) (= (select (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| Heap@@11) o2_22@@11 f_37@@11) (select (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| ExhaleHeap@@4) o2_22@@11 f_37@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| ExhaleHeap@@4) o2_22@@11 f_37@@11))
))) (forall ((o2_22@@12 T@Ref) (f_37@@12 T@Field_4564_4602) ) (!  (=> (select (|PolymorphicMapType_9063_4564_12659#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@11) null (PredicateMaskField_4564 pm_f_22@@4))) o2_22@@12 f_37@@12) (= (select (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| Heap@@11) o2_22@@12 f_37@@12) (select (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| ExhaleHeap@@4) o2_22@@12 f_37@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| ExhaleHeap@@4) o2_22@@12 f_37@@12))
))) (forall ((o2_22@@13 T@Ref) (f_37@@13 T@Field_4564_14146) ) (!  (=> (select (|PolymorphicMapType_9063_4564_30244#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@11) null (PredicateMaskField_4564 pm_f_22@@4))) o2_22@@13 f_37@@13) (= (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@11) o2_22@@13 f_37@@13) (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| ExhaleHeap@@4) o2_22@@13 f_37@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| ExhaleHeap@@4) o2_22@@13 f_37@@13))
))) (forall ((o2_22@@14 T@Ref) (f_37@@14 T@Field_4601_1189) ) (!  (=> (select (|PolymorphicMapType_9063_12658_1189#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@11) null (PredicateMaskField_4564 pm_f_22@@4))) o2_22@@14 f_37@@14) (= (select (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| Heap@@11) o2_22@@14 f_37@@14) (select (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| ExhaleHeap@@4) o2_22@@14 f_37@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| ExhaleHeap@@4) o2_22@@14 f_37@@14))
))) (forall ((o2_22@@15 T@Ref) (f_37@@15 T@Field_4601_53) ) (!  (=> (select (|PolymorphicMapType_9063_12658_53#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@11) null (PredicateMaskField_4564 pm_f_22@@4))) o2_22@@15 f_37@@15) (= (select (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| Heap@@11) o2_22@@15 f_37@@15) (select (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| ExhaleHeap@@4) o2_22@@15 f_37@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| ExhaleHeap@@4) o2_22@@15 f_37@@15))
))) (forall ((o2_22@@16 T@Ref) (f_37@@16 T@Field_4601_8588) ) (!  (=> (select (|PolymorphicMapType_9063_12658_8588#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@11) null (PredicateMaskField_4564 pm_f_22@@4))) o2_22@@16 f_37@@16) (= (select (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| Heap@@11) o2_22@@16 f_37@@16) (select (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| ExhaleHeap@@4) o2_22@@16 f_37@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| ExhaleHeap@@4) o2_22@@16 f_37@@16))
))) (forall ((o2_22@@17 T@Ref) (f_37@@17 T@Field_12658_12659) ) (!  (=> (select (|PolymorphicMapType_9063_12658_12659#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@11) null (PredicateMaskField_4564 pm_f_22@@4))) o2_22@@17 f_37@@17) (= (select (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| Heap@@11) o2_22@@17 f_37@@17) (select (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| ExhaleHeap@@4) o2_22@@17 f_37@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| ExhaleHeap@@4) o2_22@@17 f_37@@17))
))) (forall ((o2_22@@18 T@Ref) (f_37@@18 T@Field_14141_14146) ) (!  (=> (select (|PolymorphicMapType_9063_12658_31292#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@11) null (PredicateMaskField_4564 pm_f_22@@4))) o2_22@@18 f_37@@18) (= (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@11) o2_22@@18 f_37@@18) (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| ExhaleHeap@@4) o2_22@@18 f_37@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| ExhaleHeap@@4) o2_22@@18 f_37@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@4 Mask@@7) (IsPredicateField_4564_28772 pm_f_22@@4))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_8514) (ExhaleHeap@@5 T@PolymorphicMapType_8514) (Mask@@8 T@PolymorphicMapType_8535) (pm_f_22@@5 T@Field_12658_12659) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@5 Mask@@8) (=> (and (HasDirectPerm_4601_4602 Mask@@8 null pm_f_22@@5) (IsWandField_4601_32457 pm_f_22@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_22@@19 T@Ref) (f_37@@19 T@Field_11901_1189) ) (!  (=> (select (|PolymorphicMapType_9063_4564_1189#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@12) null (WandMaskField_4601 pm_f_22@@5))) o2_22@@19 f_37@@19) (= (select (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| Heap@@12) o2_22@@19 f_37@@19) (select (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| ExhaleHeap@@5) o2_22@@19 f_37@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| ExhaleHeap@@5) o2_22@@19 f_37@@19))
)) (forall ((o2_22@@20 T@Ref) (f_37@@20 T@Field_8574_53) ) (!  (=> (select (|PolymorphicMapType_9063_4564_53#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@12) null (WandMaskField_4601 pm_f_22@@5))) o2_22@@20 f_37@@20) (= (select (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| Heap@@12) o2_22@@20 f_37@@20) (select (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| ExhaleHeap@@5) o2_22@@20 f_37@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| ExhaleHeap@@5) o2_22@@20 f_37@@20))
))) (forall ((o2_22@@21 T@Ref) (f_37@@21 T@Field_8587_8588) ) (!  (=> (select (|PolymorphicMapType_9063_4564_8588#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@12) null (WandMaskField_4601 pm_f_22@@5))) o2_22@@21 f_37@@21) (= (select (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| Heap@@12) o2_22@@21 f_37@@21) (select (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| ExhaleHeap@@5) o2_22@@21 f_37@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| ExhaleHeap@@5) o2_22@@21 f_37@@21))
))) (forall ((o2_22@@22 T@Ref) (f_37@@22 T@Field_4564_4602) ) (!  (=> (select (|PolymorphicMapType_9063_4564_12659#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@12) null (WandMaskField_4601 pm_f_22@@5))) o2_22@@22 f_37@@22) (= (select (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| Heap@@12) o2_22@@22 f_37@@22) (select (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| ExhaleHeap@@5) o2_22@@22 f_37@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| ExhaleHeap@@5) o2_22@@22 f_37@@22))
))) (forall ((o2_22@@23 T@Ref) (f_37@@23 T@Field_4564_14146) ) (!  (=> (select (|PolymorphicMapType_9063_4564_30244#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@12) null (WandMaskField_4601 pm_f_22@@5))) o2_22@@23 f_37@@23) (= (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@12) o2_22@@23 f_37@@23) (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| ExhaleHeap@@5) o2_22@@23 f_37@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| ExhaleHeap@@5) o2_22@@23 f_37@@23))
))) (forall ((o2_22@@24 T@Ref) (f_37@@24 T@Field_4601_1189) ) (!  (=> (select (|PolymorphicMapType_9063_12658_1189#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@12) null (WandMaskField_4601 pm_f_22@@5))) o2_22@@24 f_37@@24) (= (select (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| Heap@@12) o2_22@@24 f_37@@24) (select (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| ExhaleHeap@@5) o2_22@@24 f_37@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| ExhaleHeap@@5) o2_22@@24 f_37@@24))
))) (forall ((o2_22@@25 T@Ref) (f_37@@25 T@Field_4601_53) ) (!  (=> (select (|PolymorphicMapType_9063_12658_53#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@12) null (WandMaskField_4601 pm_f_22@@5))) o2_22@@25 f_37@@25) (= (select (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| Heap@@12) o2_22@@25 f_37@@25) (select (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| ExhaleHeap@@5) o2_22@@25 f_37@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| ExhaleHeap@@5) o2_22@@25 f_37@@25))
))) (forall ((o2_22@@26 T@Ref) (f_37@@26 T@Field_4601_8588) ) (!  (=> (select (|PolymorphicMapType_9063_12658_8588#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@12) null (WandMaskField_4601 pm_f_22@@5))) o2_22@@26 f_37@@26) (= (select (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| Heap@@12) o2_22@@26 f_37@@26) (select (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| ExhaleHeap@@5) o2_22@@26 f_37@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| ExhaleHeap@@5) o2_22@@26 f_37@@26))
))) (forall ((o2_22@@27 T@Ref) (f_37@@27 T@Field_12658_12659) ) (!  (=> (select (|PolymorphicMapType_9063_12658_12659#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@12) null (WandMaskField_4601 pm_f_22@@5))) o2_22@@27 f_37@@27) (= (select (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| Heap@@12) o2_22@@27 f_37@@27) (select (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| ExhaleHeap@@5) o2_22@@27 f_37@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| ExhaleHeap@@5) o2_22@@27 f_37@@27))
))) (forall ((o2_22@@28 T@Ref) (f_37@@28 T@Field_14141_14146) ) (!  (=> (select (|PolymorphicMapType_9063_12658_31292#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@12) null (WandMaskField_4601 pm_f_22@@5))) o2_22@@28 f_37@@28) (= (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@12) o2_22@@28 f_37@@28) (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| ExhaleHeap@@5) o2_22@@28 f_37@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| ExhaleHeap@@5) o2_22@@28 f_37@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@5 Mask@@8) (IsWandField_4601_32457 pm_f_22@@5))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_8514) (ExhaleHeap@@6 T@PolymorphicMapType_8514) (Mask@@9 T@PolymorphicMapType_8535) (pm_f_22@@6 T@Field_4564_4602) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@6 Mask@@9) (=> (and (HasDirectPerm_4564_4602 Mask@@9 null pm_f_22@@6) (IsWandField_4564_32100 pm_f_22@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_22@@29 T@Ref) (f_37@@29 T@Field_11901_1189) ) (!  (=> (select (|PolymorphicMapType_9063_4564_1189#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@13) null (WandMaskField_4564 pm_f_22@@6))) o2_22@@29 f_37@@29) (= (select (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| Heap@@13) o2_22@@29 f_37@@29) (select (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| ExhaleHeap@@6) o2_22@@29 f_37@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| ExhaleHeap@@6) o2_22@@29 f_37@@29))
)) (forall ((o2_22@@30 T@Ref) (f_37@@30 T@Field_8574_53) ) (!  (=> (select (|PolymorphicMapType_9063_4564_53#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@13) null (WandMaskField_4564 pm_f_22@@6))) o2_22@@30 f_37@@30) (= (select (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| Heap@@13) o2_22@@30 f_37@@30) (select (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| ExhaleHeap@@6) o2_22@@30 f_37@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| ExhaleHeap@@6) o2_22@@30 f_37@@30))
))) (forall ((o2_22@@31 T@Ref) (f_37@@31 T@Field_8587_8588) ) (!  (=> (select (|PolymorphicMapType_9063_4564_8588#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@13) null (WandMaskField_4564 pm_f_22@@6))) o2_22@@31 f_37@@31) (= (select (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| Heap@@13) o2_22@@31 f_37@@31) (select (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| ExhaleHeap@@6) o2_22@@31 f_37@@31)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| ExhaleHeap@@6) o2_22@@31 f_37@@31))
))) (forall ((o2_22@@32 T@Ref) (f_37@@32 T@Field_4564_4602) ) (!  (=> (select (|PolymorphicMapType_9063_4564_12659#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@13) null (WandMaskField_4564 pm_f_22@@6))) o2_22@@32 f_37@@32) (= (select (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| Heap@@13) o2_22@@32 f_37@@32) (select (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| ExhaleHeap@@6) o2_22@@32 f_37@@32)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| ExhaleHeap@@6) o2_22@@32 f_37@@32))
))) (forall ((o2_22@@33 T@Ref) (f_37@@33 T@Field_4564_14146) ) (!  (=> (select (|PolymorphicMapType_9063_4564_30244#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@13) null (WandMaskField_4564 pm_f_22@@6))) o2_22@@33 f_37@@33) (= (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@13) o2_22@@33 f_37@@33) (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| ExhaleHeap@@6) o2_22@@33 f_37@@33)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| ExhaleHeap@@6) o2_22@@33 f_37@@33))
))) (forall ((o2_22@@34 T@Ref) (f_37@@34 T@Field_4601_1189) ) (!  (=> (select (|PolymorphicMapType_9063_12658_1189#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@13) null (WandMaskField_4564 pm_f_22@@6))) o2_22@@34 f_37@@34) (= (select (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| Heap@@13) o2_22@@34 f_37@@34) (select (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| ExhaleHeap@@6) o2_22@@34 f_37@@34)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| ExhaleHeap@@6) o2_22@@34 f_37@@34))
))) (forall ((o2_22@@35 T@Ref) (f_37@@35 T@Field_4601_53) ) (!  (=> (select (|PolymorphicMapType_9063_12658_53#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@13) null (WandMaskField_4564 pm_f_22@@6))) o2_22@@35 f_37@@35) (= (select (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| Heap@@13) o2_22@@35 f_37@@35) (select (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| ExhaleHeap@@6) o2_22@@35 f_37@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| ExhaleHeap@@6) o2_22@@35 f_37@@35))
))) (forall ((o2_22@@36 T@Ref) (f_37@@36 T@Field_4601_8588) ) (!  (=> (select (|PolymorphicMapType_9063_12658_8588#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@13) null (WandMaskField_4564 pm_f_22@@6))) o2_22@@36 f_37@@36) (= (select (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| Heap@@13) o2_22@@36 f_37@@36) (select (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| ExhaleHeap@@6) o2_22@@36 f_37@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| ExhaleHeap@@6) o2_22@@36 f_37@@36))
))) (forall ((o2_22@@37 T@Ref) (f_37@@37 T@Field_12658_12659) ) (!  (=> (select (|PolymorphicMapType_9063_12658_12659#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@13) null (WandMaskField_4564 pm_f_22@@6))) o2_22@@37 f_37@@37) (= (select (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| Heap@@13) o2_22@@37 f_37@@37) (select (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| ExhaleHeap@@6) o2_22@@37 f_37@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| ExhaleHeap@@6) o2_22@@37 f_37@@37))
))) (forall ((o2_22@@38 T@Ref) (f_37@@38 T@Field_14141_14146) ) (!  (=> (select (|PolymorphicMapType_9063_12658_31292#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@13) null (WandMaskField_4564 pm_f_22@@6))) o2_22@@38 f_37@@38) (= (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@13) o2_22@@38 f_37@@38) (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| ExhaleHeap@@6) o2_22@@38 f_37@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| ExhaleHeap@@6) o2_22@@38 f_37@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@6 Mask@@9) (IsWandField_4564_32100 pm_f_22@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@14 T@PolymorphicMapType_8514) (ExhaleHeap@@7 T@PolymorphicMapType_8514) (Mask@@10 T@PolymorphicMapType_8535) (o_46 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@10) (=> (select (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| Heap@@14) o_46 $allocated) (select (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| ExhaleHeap@@7) o_46 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@10) (select (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| ExhaleHeap@@7) o_46 $allocated))
)))
(assert (forall ((p T@Field_12658_12659) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_12658_12658 p v_1 p w))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_12658_12658 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_4564_4602) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_8574_8574 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8574_8574 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_4564_1189 f_7)))
(assert  (not (IsWandField_4564_1189 f_7)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_8514) (ExhaleHeap@@8 T@PolymorphicMapType_8514) (Mask@@11 T@PolymorphicMapType_8535) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@11) (succHeap Heap@@15 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_8535) (o_2@@9 T@Ref) (f_4@@9 T@Field_4564_14146) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_8535_4564_37097#PolymorphicMapType_8535| Mask@@12) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_4564_39389 f_4@@9))) (not (IsWandField_4564_39405 f_4@@9))) (<= (select (|PolymorphicMapType_8535_4564_37097#PolymorphicMapType_8535| Mask@@12) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_8535_4564_37097#PolymorphicMapType_8535| Mask@@12) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_8535) (o_2@@10 T@Ref) (f_4@@10 T@Field_8587_8588) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_8535_4564_8588#PolymorphicMapType_8535| Mask@@13) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_4564_8588 f_4@@10))) (not (IsWandField_4564_8588 f_4@@10))) (<= (select (|PolymorphicMapType_8535_4564_8588#PolymorphicMapType_8535| Mask@@13) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_8535_4564_8588#PolymorphicMapType_8535| Mask@@13) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_8535) (o_2@@11 T@Ref) (f_4@@11 T@Field_8574_53) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_8535_4564_53#PolymorphicMapType_8535| Mask@@14) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_4564_53 f_4@@11))) (not (IsWandField_4564_53 f_4@@11))) (<= (select (|PolymorphicMapType_8535_4564_53#PolymorphicMapType_8535| Mask@@14) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_8535_4564_53#PolymorphicMapType_8535| Mask@@14) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_8535) (o_2@@12 T@Ref) (f_4@@12 T@Field_11901_1189) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_8535_4564_1189#PolymorphicMapType_8535| Mask@@15) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_4564_1189 f_4@@12))) (not (IsWandField_4564_1189 f_4@@12))) (<= (select (|PolymorphicMapType_8535_4564_1189#PolymorphicMapType_8535| Mask@@15) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_8535_4564_1189#PolymorphicMapType_8535| Mask@@15) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_8535) (o_2@@13 T@Ref) (f_4@@13 T@Field_4564_4602) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_8535_4564_4602#PolymorphicMapType_8535| Mask@@16) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_4564_28772 f_4@@13))) (not (IsWandField_4564_32100 f_4@@13))) (<= (select (|PolymorphicMapType_8535_4564_4602#PolymorphicMapType_8535| Mask@@16) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_8535_4564_4602#PolymorphicMapType_8535| Mask@@16) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_8535) (o_2@@14 T@Ref) (f_4@@14 T@Field_14141_14146) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_8535_4601_36683#PolymorphicMapType_8535| Mask@@17) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_4601_38572 f_4@@14))) (not (IsWandField_4601_38588 f_4@@14))) (<= (select (|PolymorphicMapType_8535_4601_36683#PolymorphicMapType_8535| Mask@@17) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_8535_4601_36683#PolymorphicMapType_8535| Mask@@17) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_8535) (o_2@@15 T@Ref) (f_4@@15 T@Field_4601_8588) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_8535_4601_8588#PolymorphicMapType_8535| Mask@@18) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_4601_8588 f_4@@15))) (not (IsWandField_4601_8588 f_4@@15))) (<= (select (|PolymorphicMapType_8535_4601_8588#PolymorphicMapType_8535| Mask@@18) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_8535_4601_8588#PolymorphicMapType_8535| Mask@@18) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_8535) (o_2@@16 T@Ref) (f_4@@16 T@Field_4601_53) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_8535_4601_53#PolymorphicMapType_8535| Mask@@19) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_4601_53 f_4@@16))) (not (IsWandField_4601_53 f_4@@16))) (<= (select (|PolymorphicMapType_8535_4601_53#PolymorphicMapType_8535| Mask@@19) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_8535_4601_53#PolymorphicMapType_8535| Mask@@19) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_8535) (o_2@@17 T@Ref) (f_4@@17 T@Field_4601_1189) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_8535_4601_1189#PolymorphicMapType_8535| Mask@@20) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_4601_1189 f_4@@17))) (not (IsWandField_4601_1189 f_4@@17))) (<= (select (|PolymorphicMapType_8535_4601_1189#PolymorphicMapType_8535| Mask@@20) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_8535_4601_1189#PolymorphicMapType_8535| Mask@@20) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_8535) (o_2@@18 T@Ref) (f_4@@18 T@Field_12658_12659) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_8535_4601_4602#PolymorphicMapType_8535| Mask@@21) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_4601_4602 f_4@@18))) (not (IsWandField_4601_32457 f_4@@18))) (<= (select (|PolymorphicMapType_8535_4601_4602#PolymorphicMapType_8535| Mask@@21) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_8535_4601_4602#PolymorphicMapType_8535| Mask@@21) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_8535) (o_2@@19 T@Ref) (f_4@@19 T@Field_14141_14146) ) (! (= (HasDirectPerm_4601_28527 Mask@@22 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_8535_4601_36683#PolymorphicMapType_8535| Mask@@22) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4601_28527 Mask@@22 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_8535) (o_2@@20 T@Ref) (f_4@@20 T@Field_4601_8588) ) (! (= (HasDirectPerm_4601_8588 Mask@@23 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_8535_4601_8588#PolymorphicMapType_8535| Mask@@23) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4601_8588 Mask@@23 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_8535) (o_2@@21 T@Ref) (f_4@@21 T@Field_4601_53) ) (! (= (HasDirectPerm_4601_53 Mask@@24 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_8535_4601_53#PolymorphicMapType_8535| Mask@@24) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4601_53 Mask@@24 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_8535) (o_2@@22 T@Ref) (f_4@@22 T@Field_12658_12659) ) (! (= (HasDirectPerm_4601_4602 Mask@@25 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_8535_4601_4602#PolymorphicMapType_8535| Mask@@25) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4601_4602 Mask@@25 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_8535) (o_2@@23 T@Ref) (f_4@@23 T@Field_4601_1189) ) (! (= (HasDirectPerm_4601_1189 Mask@@26 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_8535_4601_1189#PolymorphicMapType_8535| Mask@@26) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4601_1189 Mask@@26 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_8535) (o_2@@24 T@Ref) (f_4@@24 T@Field_4564_14146) ) (! (= (HasDirectPerm_4564_27386 Mask@@27 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_8535_4564_37097#PolymorphicMapType_8535| Mask@@27) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4564_27386 Mask@@27 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_8535) (o_2@@25 T@Ref) (f_4@@25 T@Field_8587_8588) ) (! (= (HasDirectPerm_4564_8588 Mask@@28 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_8535_4564_8588#PolymorphicMapType_8535| Mask@@28) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4564_8588 Mask@@28 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_8535) (o_2@@26 T@Ref) (f_4@@26 T@Field_8574_53) ) (! (= (HasDirectPerm_4564_53 Mask@@29 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_8535_4564_53#PolymorphicMapType_8535| Mask@@29) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4564_53 Mask@@29 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_8535) (o_2@@27 T@Ref) (f_4@@27 T@Field_4564_4602) ) (! (= (HasDirectPerm_4564_4602 Mask@@30 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_8535_4564_4602#PolymorphicMapType_8535| Mask@@30) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4564_4602 Mask@@30 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_8535) (o_2@@28 T@Ref) (f_4@@28 T@Field_11901_1189) ) (! (= (HasDirectPerm_4564_1189 Mask@@31 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_8535_4564_1189#PolymorphicMapType_8535| Mask@@31) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4564_1189 Mask@@31 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.163:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_8514) (ExhaleHeap@@9 T@PolymorphicMapType_8514) (Mask@@32 T@PolymorphicMapType_8535) (o_46@@0 T@Ref) (f_37@@39 T@Field_14141_14146) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@9 Mask@@32) (=> (HasDirectPerm_4601_28527 Mask@@32 o_46@@0 f_37@@39) (= (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@16) o_46@@0 f_37@@39) (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| ExhaleHeap@@9) o_46@@0 f_37@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@9 Mask@@32) (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| ExhaleHeap@@9) o_46@@0 f_37@@39))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_8514) (ExhaleHeap@@10 T@PolymorphicMapType_8514) (Mask@@33 T@PolymorphicMapType_8535) (o_46@@1 T@Ref) (f_37@@40 T@Field_4601_8588) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@10 Mask@@33) (=> (HasDirectPerm_4601_8588 Mask@@33 o_46@@1 f_37@@40) (= (select (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| Heap@@17) o_46@@1 f_37@@40) (select (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| ExhaleHeap@@10) o_46@@1 f_37@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@10 Mask@@33) (select (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| ExhaleHeap@@10) o_46@@1 f_37@@40))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_8514) (ExhaleHeap@@11 T@PolymorphicMapType_8514) (Mask@@34 T@PolymorphicMapType_8535) (o_46@@2 T@Ref) (f_37@@41 T@Field_4601_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@11 Mask@@34) (=> (HasDirectPerm_4601_53 Mask@@34 o_46@@2 f_37@@41) (= (select (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| Heap@@18) o_46@@2 f_37@@41) (select (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| ExhaleHeap@@11) o_46@@2 f_37@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@11 Mask@@34) (select (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| ExhaleHeap@@11) o_46@@2 f_37@@41))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_8514) (ExhaleHeap@@12 T@PolymorphicMapType_8514) (Mask@@35 T@PolymorphicMapType_8535) (o_46@@3 T@Ref) (f_37@@42 T@Field_12658_12659) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@12 Mask@@35) (=> (HasDirectPerm_4601_4602 Mask@@35 o_46@@3 f_37@@42) (= (select (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| Heap@@19) o_46@@3 f_37@@42) (select (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| ExhaleHeap@@12) o_46@@3 f_37@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@12 Mask@@35) (select (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| ExhaleHeap@@12) o_46@@3 f_37@@42))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_8514) (ExhaleHeap@@13 T@PolymorphicMapType_8514) (Mask@@36 T@PolymorphicMapType_8535) (o_46@@4 T@Ref) (f_37@@43 T@Field_4601_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@13 Mask@@36) (=> (HasDirectPerm_4601_1189 Mask@@36 o_46@@4 f_37@@43) (= (select (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| Heap@@20) o_46@@4 f_37@@43) (select (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| ExhaleHeap@@13) o_46@@4 f_37@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@13 Mask@@36) (select (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| ExhaleHeap@@13) o_46@@4 f_37@@43))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_8514) (ExhaleHeap@@14 T@PolymorphicMapType_8514) (Mask@@37 T@PolymorphicMapType_8535) (o_46@@5 T@Ref) (f_37@@44 T@Field_4564_14146) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@14 Mask@@37) (=> (HasDirectPerm_4564_27386 Mask@@37 o_46@@5 f_37@@44) (= (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@21) o_46@@5 f_37@@44) (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| ExhaleHeap@@14) o_46@@5 f_37@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@14 Mask@@37) (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| ExhaleHeap@@14) o_46@@5 f_37@@44))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_8514) (ExhaleHeap@@15 T@PolymorphicMapType_8514) (Mask@@38 T@PolymorphicMapType_8535) (o_46@@6 T@Ref) (f_37@@45 T@Field_8587_8588) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@15 Mask@@38) (=> (HasDirectPerm_4564_8588 Mask@@38 o_46@@6 f_37@@45) (= (select (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| Heap@@22) o_46@@6 f_37@@45) (select (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| ExhaleHeap@@15) o_46@@6 f_37@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@15 Mask@@38) (select (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| ExhaleHeap@@15) o_46@@6 f_37@@45))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_8514) (ExhaleHeap@@16 T@PolymorphicMapType_8514) (Mask@@39 T@PolymorphicMapType_8535) (o_46@@7 T@Ref) (f_37@@46 T@Field_8574_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@16 Mask@@39) (=> (HasDirectPerm_4564_53 Mask@@39 o_46@@7 f_37@@46) (= (select (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| Heap@@23) o_46@@7 f_37@@46) (select (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| ExhaleHeap@@16) o_46@@7 f_37@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@16 Mask@@39) (select (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| ExhaleHeap@@16) o_46@@7 f_37@@46))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_8514) (ExhaleHeap@@17 T@PolymorphicMapType_8514) (Mask@@40 T@PolymorphicMapType_8535) (o_46@@8 T@Ref) (f_37@@47 T@Field_4564_4602) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@17 Mask@@40) (=> (HasDirectPerm_4564_4602 Mask@@40 o_46@@8 f_37@@47) (= (select (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| Heap@@24) o_46@@8 f_37@@47) (select (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| ExhaleHeap@@17) o_46@@8 f_37@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@17 Mask@@40) (select (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| ExhaleHeap@@17) o_46@@8 f_37@@47))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_8514) (ExhaleHeap@@18 T@PolymorphicMapType_8514) (Mask@@41 T@PolymorphicMapType_8535) (o_46@@9 T@Ref) (f_37@@48 T@Field_11901_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@18 Mask@@41) (=> (HasDirectPerm_4564_1189 Mask@@41 o_46@@9 f_37@@48) (= (select (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| Heap@@25) o_46@@9 f_37@@48) (select (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| ExhaleHeap@@18) o_46@@9 f_37@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@18 Mask@@41) (select (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| ExhaleHeap@@18) o_46@@9 f_37@@48))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_4564_14146) ) (! (= (select (|PolymorphicMapType_8535_4564_37097#PolymorphicMapType_8535| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8535_4564_37097#PolymorphicMapType_8535| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_8587_8588) ) (! (= (select (|PolymorphicMapType_8535_4564_8588#PolymorphicMapType_8535| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8535_4564_8588#PolymorphicMapType_8535| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_8574_53) ) (! (= (select (|PolymorphicMapType_8535_4564_53#PolymorphicMapType_8535| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8535_4564_53#PolymorphicMapType_8535| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_11901_1189) ) (! (= (select (|PolymorphicMapType_8535_4564_1189#PolymorphicMapType_8535| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8535_4564_1189#PolymorphicMapType_8535| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_4564_4602) ) (! (= (select (|PolymorphicMapType_8535_4564_4602#PolymorphicMapType_8535| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8535_4564_4602#PolymorphicMapType_8535| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_14141_14146) ) (! (= (select (|PolymorphicMapType_8535_4601_36683#PolymorphicMapType_8535| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8535_4601_36683#PolymorphicMapType_8535| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_4601_8588) ) (! (= (select (|PolymorphicMapType_8535_4601_8588#PolymorphicMapType_8535| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8535_4601_8588#PolymorphicMapType_8535| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_4601_53) ) (! (= (select (|PolymorphicMapType_8535_4601_53#PolymorphicMapType_8535| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8535_4601_53#PolymorphicMapType_8535| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_4601_1189) ) (! (= (select (|PolymorphicMapType_8535_4601_1189#PolymorphicMapType_8535| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8535_4601_1189#PolymorphicMapType_8535| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_12658_12659) ) (! (= (select (|PolymorphicMapType_8535_4601_4602#PolymorphicMapType_8535| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8535_4601_4602#PolymorphicMapType_8535| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_8535) (SummandMask1 T@PolymorphicMapType_8535) (SummandMask2 T@PolymorphicMapType_8535) (o_2@@39 T@Ref) (f_4@@39 T@Field_4564_14146) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_8535_4564_37097#PolymorphicMapType_8535| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_8535_4564_37097#PolymorphicMapType_8535| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_8535_4564_37097#PolymorphicMapType_8535| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8535_4564_37097#PolymorphicMapType_8535| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8535_4564_37097#PolymorphicMapType_8535| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8535_4564_37097#PolymorphicMapType_8535| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_8535) (SummandMask1@@0 T@PolymorphicMapType_8535) (SummandMask2@@0 T@PolymorphicMapType_8535) (o_2@@40 T@Ref) (f_4@@40 T@Field_8587_8588) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_8535_4564_8588#PolymorphicMapType_8535| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_8535_4564_8588#PolymorphicMapType_8535| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_8535_4564_8588#PolymorphicMapType_8535| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8535_4564_8588#PolymorphicMapType_8535| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8535_4564_8588#PolymorphicMapType_8535| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8535_4564_8588#PolymorphicMapType_8535| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_8535) (SummandMask1@@1 T@PolymorphicMapType_8535) (SummandMask2@@1 T@PolymorphicMapType_8535) (o_2@@41 T@Ref) (f_4@@41 T@Field_8574_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_8535_4564_53#PolymorphicMapType_8535| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_8535_4564_53#PolymorphicMapType_8535| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_8535_4564_53#PolymorphicMapType_8535| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8535_4564_53#PolymorphicMapType_8535| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8535_4564_53#PolymorphicMapType_8535| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8535_4564_53#PolymorphicMapType_8535| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_8535) (SummandMask1@@2 T@PolymorphicMapType_8535) (SummandMask2@@2 T@PolymorphicMapType_8535) (o_2@@42 T@Ref) (f_4@@42 T@Field_11901_1189) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_8535_4564_1189#PolymorphicMapType_8535| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_8535_4564_1189#PolymorphicMapType_8535| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_8535_4564_1189#PolymorphicMapType_8535| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8535_4564_1189#PolymorphicMapType_8535| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8535_4564_1189#PolymorphicMapType_8535| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8535_4564_1189#PolymorphicMapType_8535| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_8535) (SummandMask1@@3 T@PolymorphicMapType_8535) (SummandMask2@@3 T@PolymorphicMapType_8535) (o_2@@43 T@Ref) (f_4@@43 T@Field_4564_4602) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_8535_4564_4602#PolymorphicMapType_8535| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_8535_4564_4602#PolymorphicMapType_8535| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_8535_4564_4602#PolymorphicMapType_8535| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8535_4564_4602#PolymorphicMapType_8535| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8535_4564_4602#PolymorphicMapType_8535| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8535_4564_4602#PolymorphicMapType_8535| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_8535) (SummandMask1@@4 T@PolymorphicMapType_8535) (SummandMask2@@4 T@PolymorphicMapType_8535) (o_2@@44 T@Ref) (f_4@@44 T@Field_14141_14146) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_8535_4601_36683#PolymorphicMapType_8535| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_8535_4601_36683#PolymorphicMapType_8535| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_8535_4601_36683#PolymorphicMapType_8535| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8535_4601_36683#PolymorphicMapType_8535| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8535_4601_36683#PolymorphicMapType_8535| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8535_4601_36683#PolymorphicMapType_8535| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_8535) (SummandMask1@@5 T@PolymorphicMapType_8535) (SummandMask2@@5 T@PolymorphicMapType_8535) (o_2@@45 T@Ref) (f_4@@45 T@Field_4601_8588) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_8535_4601_8588#PolymorphicMapType_8535| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_8535_4601_8588#PolymorphicMapType_8535| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_8535_4601_8588#PolymorphicMapType_8535| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8535_4601_8588#PolymorphicMapType_8535| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8535_4601_8588#PolymorphicMapType_8535| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8535_4601_8588#PolymorphicMapType_8535| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_8535) (SummandMask1@@6 T@PolymorphicMapType_8535) (SummandMask2@@6 T@PolymorphicMapType_8535) (o_2@@46 T@Ref) (f_4@@46 T@Field_4601_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_8535_4601_53#PolymorphicMapType_8535| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_8535_4601_53#PolymorphicMapType_8535| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_8535_4601_53#PolymorphicMapType_8535| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8535_4601_53#PolymorphicMapType_8535| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8535_4601_53#PolymorphicMapType_8535| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8535_4601_53#PolymorphicMapType_8535| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_8535) (SummandMask1@@7 T@PolymorphicMapType_8535) (SummandMask2@@7 T@PolymorphicMapType_8535) (o_2@@47 T@Ref) (f_4@@47 T@Field_4601_1189) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_8535_4601_1189#PolymorphicMapType_8535| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_8535_4601_1189#PolymorphicMapType_8535| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_8535_4601_1189#PolymorphicMapType_8535| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_8535_4601_1189#PolymorphicMapType_8535| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_8535_4601_1189#PolymorphicMapType_8535| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_8535_4601_1189#PolymorphicMapType_8535| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_8535) (SummandMask1@@8 T@PolymorphicMapType_8535) (SummandMask2@@8 T@PolymorphicMapType_8535) (o_2@@48 T@Ref) (f_4@@48 T@Field_12658_12659) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_8535_4601_4602#PolymorphicMapType_8535| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_8535_4601_4602#PolymorphicMapType_8535| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_8535_4601_4602#PolymorphicMapType_8535| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_8535_4601_4602#PolymorphicMapType_8535| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_8535_4601_4602#PolymorphicMapType_8535| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_8535_4601_4602#PolymorphicMapType_8535| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_8514) (Mask@@42 T@PolymorphicMapType_8535) (x@@6 T@Ref) ) (!  (=> (state Heap@@26 Mask@@42) (= (|get'| Heap@@26 x@@6) (|get#frame| (select (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| Heap@@26) null (pred_3 x@@6)) x@@6)))
 :qid |stdinbpl.253:15|
 :skolemid |28|
 :pattern ( (state Heap@@26 Mask@@42) (|get'| Heap@@26 x@@6))
)))
(assert (forall ((x@@7 T@Ref) ) (! (= (getPredWandId_4601_4602 (pred_3 x@@7)) 0)
 :qid |stdinbpl.339:15|
 :skolemid |31|
 :pattern ( (pred_3 x@@7))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_8514) (o_12 T@Ref) (f_24 T@Field_14141_14146) (v T@PolymorphicMapType_9063) ) (! (succHeap Heap@@27 (PolymorphicMapType_8514 (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| Heap@@27) (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| Heap@@27) (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| Heap@@27) (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| Heap@@27) (store (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@27) o_12 f_24 v) (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| Heap@@27) (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@27) (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| Heap@@27) (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| Heap@@27) (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8514 (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| Heap@@27) (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| Heap@@27) (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| Heap@@27) (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| Heap@@27) (store (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@27) o_12 f_24 v) (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| Heap@@27) (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@27) (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| Heap@@27) (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| Heap@@27) (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_8514) (o_12@@0 T@Ref) (f_24@@0 T@Field_12658_12659) (v@@0 T@FrameType) ) (! (succHeap Heap@@28 (PolymorphicMapType_8514 (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| Heap@@28) (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| Heap@@28) (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| Heap@@28) (store (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| Heap@@28) o_12@@0 f_24@@0 v@@0) (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@28) (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| Heap@@28) (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@28) (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| Heap@@28) (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| Heap@@28) (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8514 (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| Heap@@28) (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| Heap@@28) (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| Heap@@28) (store (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| Heap@@28) o_12@@0 f_24@@0 v@@0) (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@28) (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| Heap@@28) (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@28) (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| Heap@@28) (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| Heap@@28) (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_8514) (o_12@@1 T@Ref) (f_24@@1 T@Field_4601_1189) (v@@1 Int) ) (! (succHeap Heap@@29 (PolymorphicMapType_8514 (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| Heap@@29) (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| Heap@@29) (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| Heap@@29) (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| Heap@@29) (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@29) (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| Heap@@29) (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@29) (store (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| Heap@@29) o_12@@1 f_24@@1 v@@1) (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| Heap@@29) (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8514 (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| Heap@@29) (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| Heap@@29) (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| Heap@@29) (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| Heap@@29) (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@29) (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| Heap@@29) (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@29) (store (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| Heap@@29) o_12@@1 f_24@@1 v@@1) (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| Heap@@29) (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_8514) (o_12@@2 T@Ref) (f_24@@2 T@Field_4601_8588) (v@@2 T@Ref) ) (! (succHeap Heap@@30 (PolymorphicMapType_8514 (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| Heap@@30) (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| Heap@@30) (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| Heap@@30) (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| Heap@@30) (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@30) (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| Heap@@30) (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@30) (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| Heap@@30) (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| Heap@@30) (store (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| Heap@@30) o_12@@2 f_24@@2 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8514 (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| Heap@@30) (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| Heap@@30) (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| Heap@@30) (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| Heap@@30) (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@30) (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| Heap@@30) (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@30) (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| Heap@@30) (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| Heap@@30) (store (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| Heap@@30) o_12@@2 f_24@@2 v@@2)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_8514) (o_12@@3 T@Ref) (f_24@@3 T@Field_4601_53) (v@@3 Bool) ) (! (succHeap Heap@@31 (PolymorphicMapType_8514 (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| Heap@@31) (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| Heap@@31) (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| Heap@@31) (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| Heap@@31) (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@31) (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| Heap@@31) (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@31) (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| Heap@@31) (store (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| Heap@@31) o_12@@3 f_24@@3 v@@3) (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8514 (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| Heap@@31) (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| Heap@@31) (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| Heap@@31) (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| Heap@@31) (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@31) (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| Heap@@31) (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@31) (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| Heap@@31) (store (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| Heap@@31) o_12@@3 f_24@@3 v@@3) (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_8514) (o_12@@4 T@Ref) (f_24@@4 T@Field_4564_14146) (v@@4 T@PolymorphicMapType_9063) ) (! (succHeap Heap@@32 (PolymorphicMapType_8514 (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| Heap@@32) (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| Heap@@32) (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| Heap@@32) (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| Heap@@32) (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@32) (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| Heap@@32) (store (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@32) o_12@@4 f_24@@4 v@@4) (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| Heap@@32) (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| Heap@@32) (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8514 (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| Heap@@32) (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| Heap@@32) (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| Heap@@32) (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| Heap@@32) (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@32) (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| Heap@@32) (store (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@32) o_12@@4 f_24@@4 v@@4) (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| Heap@@32) (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| Heap@@32) (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_8514) (o_12@@5 T@Ref) (f_24@@5 T@Field_4564_4602) (v@@5 T@FrameType) ) (! (succHeap Heap@@33 (PolymorphicMapType_8514 (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| Heap@@33) (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| Heap@@33) (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| Heap@@33) (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| Heap@@33) (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@33) (store (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| Heap@@33) o_12@@5 f_24@@5 v@@5) (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@33) (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| Heap@@33) (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| Heap@@33) (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8514 (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| Heap@@33) (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| Heap@@33) (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| Heap@@33) (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| Heap@@33) (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@33) (store (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| Heap@@33) o_12@@5 f_24@@5 v@@5) (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@33) (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| Heap@@33) (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| Heap@@33) (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_8514) (o_12@@6 T@Ref) (f_24@@6 T@Field_11901_1189) (v@@6 Int) ) (! (succHeap Heap@@34 (PolymorphicMapType_8514 (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| Heap@@34) (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| Heap@@34) (store (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| Heap@@34) o_12@@6 f_24@@6 v@@6) (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| Heap@@34) (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@34) (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| Heap@@34) (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@34) (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| Heap@@34) (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| Heap@@34) (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8514 (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| Heap@@34) (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| Heap@@34) (store (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| Heap@@34) o_12@@6 f_24@@6 v@@6) (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| Heap@@34) (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@34) (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| Heap@@34) (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@34) (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| Heap@@34) (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| Heap@@34) (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_8514) (o_12@@7 T@Ref) (f_24@@7 T@Field_8587_8588) (v@@7 T@Ref) ) (! (succHeap Heap@@35 (PolymorphicMapType_8514 (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| Heap@@35) (store (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| Heap@@35) o_12@@7 f_24@@7 v@@7) (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| Heap@@35) (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| Heap@@35) (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@35) (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| Heap@@35) (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@35) (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| Heap@@35) (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| Heap@@35) (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8514 (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| Heap@@35) (store (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| Heap@@35) o_12@@7 f_24@@7 v@@7) (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| Heap@@35) (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| Heap@@35) (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@35) (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| Heap@@35) (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@35) (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| Heap@@35) (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| Heap@@35) (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_8514) (o_12@@8 T@Ref) (f_24@@8 T@Field_8574_53) (v@@8 Bool) ) (! (succHeap Heap@@36 (PolymorphicMapType_8514 (store (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| Heap@@36) o_12@@8 f_24@@8 v@@8) (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| Heap@@36) (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| Heap@@36) (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| Heap@@36) (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@36) (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| Heap@@36) (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@36) (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| Heap@@36) (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| Heap@@36) (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8514 (store (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| Heap@@36) o_12@@8 f_24@@8 v@@8) (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| Heap@@36) (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| Heap@@36) (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| Heap@@36) (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@36) (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| Heap@@36) (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@36) (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| Heap@@36) (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| Heap@@36) (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| Heap@@36)))
)))
(assert (forall ((x@@8 T@Ref) ) (! (= (PredicateMaskField_4601 (pred_3 x@@8)) (|pred#sm| x@@8))
 :qid |stdinbpl.331:15|
 :skolemid |29|
 :pattern ( (PredicateMaskField_4601 (pred_3 x@@8)))
)))
(assert (forall ((o_12@@9 T@Ref) (f_16 T@Field_8587_8588) (Heap@@37 T@PolymorphicMapType_8514) ) (!  (=> (select (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| Heap@@37) o_12@@9 $allocated) (select (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| Heap@@37) (select (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| Heap@@37) o_12@@9 f_16) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| Heap@@37) o_12@@9 f_16))
)))
(assert (forall ((p@@2 T@Field_12658_12659) (v_1@@1 T@FrameType) (q T@Field_12658_12659) (w@@1 T@FrameType) (r T@Field_12658_12659) (u T@FrameType) ) (!  (=> (and (InsidePredicate_12658_12658 p@@2 v_1@@1 q w@@1) (InsidePredicate_12658_12658 q w@@1 r u)) (InsidePredicate_12658_12658 p@@2 v_1@@1 r u))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12658_12658 p@@2 v_1@@1 q w@@1) (InsidePredicate_12658_12658 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_12658_12659) (v_1@@2 T@FrameType) (q@@0 T@Field_12658_12659) (w@@2 T@FrameType) (r@@0 T@Field_4564_4602) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_12658_12658 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_12658_8574 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_12658_8574 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12658_12658 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_12658_8574 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_12658_12659) (v_1@@3 T@FrameType) (q@@1 T@Field_4564_4602) (w@@3 T@FrameType) (r@@1 T@Field_12658_12659) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_12658_8574 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_8574_12658 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_12658_12658 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12658_8574 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_8574_12658 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_12658_12659) (v_1@@4 T@FrameType) (q@@2 T@Field_4564_4602) (w@@4 T@FrameType) (r@@2 T@Field_4564_4602) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_12658_8574 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_8574_8574 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_12658_8574 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12658_8574 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_8574_8574 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_4564_4602) (v_1@@5 T@FrameType) (q@@3 T@Field_12658_12659) (w@@5 T@FrameType) (r@@3 T@Field_12658_12659) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_8574_12658 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_12658_12658 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_8574_12658 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8574_12658 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_12658_12658 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_4564_4602) (v_1@@6 T@FrameType) (q@@4 T@Field_12658_12659) (w@@6 T@FrameType) (r@@4 T@Field_4564_4602) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_8574_12658 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_12658_8574 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_8574_8574 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8574_12658 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_12658_8574 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_4564_4602) (v_1@@7 T@FrameType) (q@@5 T@Field_4564_4602) (w@@7 T@FrameType) (r@@5 T@Field_12658_12659) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_8574_8574 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_8574_12658 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_8574_12658 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8574_8574 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_8574_12658 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_4564_4602) (v_1@@8 T@FrameType) (q@@6 T@Field_4564_4602) (w@@8 T@FrameType) (r@@6 T@Field_4564_4602) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_8574_8574 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_8574_8574 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_8574_8574 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8574_8574 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_8574_8574 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@38 T@PolymorphicMapType_8514) (v_2@@1 Int) (i@@1 Int) ) (!  (and (= (fun Heap@@38 v_2@@1 i@@1) (|fun'| Heap@@38 v_2@@1 i@@1)) (dummyFunction_1373 (|fun#triggerStateless| v_2@@1 i@@1)))
 :qid |stdinbpl.195:15|
 :skolemid |22|
 :pattern ( (fun Heap@@38 v_2@@1 i@@1))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@39 () T@PolymorphicMapType_8514)
(declare-fun x@@9 () T@Ref)
(declare-fun Mask@0 () T@PolymorphicMapType_8535)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_1189 (Int) T@FrameType)
(declare-fun perm@0 () Real)
(declare-fun UnfoldingMask@0 () T@PolymorphicMapType_8535)
(declare-fun perm@1 () Real)
(declare-fun UnfoldingMask@1 () T@PolymorphicMapType_8535)
(set-info :boogie-vc-id |get#definedness|)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon0_correct  (=> (state Heap@@39 ZeroMask) (=> (and (and (and (not AssumePermUpperBound) (select (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| Heap@@39) x@@9 $allocated)) (and (= AssumeFunctionsAbove 0) (= Mask@0 (PolymorphicMapType_8535 (store (|PolymorphicMapType_8535_4601_4602#PolymorphicMapType_8535| ZeroMask) null (pred_3 x@@9) (+ (select (|PolymorphicMapType_8535_4601_4602#PolymorphicMapType_8535| ZeroMask) null (pred_3 x@@9)) FullPerm)) (|PolymorphicMapType_8535_4564_1189#PolymorphicMapType_8535| ZeroMask) (|PolymorphicMapType_8535_4601_1189#PolymorphicMapType_8535| ZeroMask) (|PolymorphicMapType_8535_4601_53#PolymorphicMapType_8535| ZeroMask) (|PolymorphicMapType_8535_4601_8588#PolymorphicMapType_8535| ZeroMask) (|PolymorphicMapType_8535_4601_36683#PolymorphicMapType_8535| ZeroMask) (|PolymorphicMapType_8535_4564_4602#PolymorphicMapType_8535| ZeroMask) (|PolymorphicMapType_8535_4564_53#PolymorphicMapType_8535| ZeroMask) (|PolymorphicMapType_8535_4564_8588#PolymorphicMapType_8535| ZeroMask) (|PolymorphicMapType_8535_4564_37097#PolymorphicMapType_8535| ZeroMask))))) (and (and (state Heap@@39 Mask@0) (state Heap@@39 Mask@0)) (and (|pred#trigger_4601| Heap@@39 (pred_3 x@@9)) (= (select (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| Heap@@39) null (pred_3 x@@9)) (CombineFrames (FrameFragment_1189 (select (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| Heap@@39) x@@9 f_7)) (FrameFragment_1189 (select (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| Heap@@39) x@@9 f_7))))))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_8535_4601_4602#PolymorphicMapType_8535| Mask@0) null (pred_3 x@@9))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_8535_4601_4602#PolymorphicMapType_8535| Mask@0) null (pred_3 x@@9)))) (=> (= perm@0 (/ (to_real 1) (to_real 2))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= perm@0 NoPerm)) (=> (>= perm@0 NoPerm) (=> (and (and (=> (> perm@0 NoPerm) (not (= x@@9 null))) (= UnfoldingMask@0 (PolymorphicMapType_8535 (|PolymorphicMapType_8535_4601_4602#PolymorphicMapType_8535| Mask@0) (store (|PolymorphicMapType_8535_4564_1189#PolymorphicMapType_8535| Mask@0) x@@9 f_7 (+ (select (|PolymorphicMapType_8535_4564_1189#PolymorphicMapType_8535| Mask@0) x@@9 f_7) perm@0)) (|PolymorphicMapType_8535_4601_1189#PolymorphicMapType_8535| Mask@0) (|PolymorphicMapType_8535_4601_53#PolymorphicMapType_8535| Mask@0) (|PolymorphicMapType_8535_4601_8588#PolymorphicMapType_8535| Mask@0) (|PolymorphicMapType_8535_4601_36683#PolymorphicMapType_8535| Mask@0) (|PolymorphicMapType_8535_4564_4602#PolymorphicMapType_8535| Mask@0) (|PolymorphicMapType_8535_4564_53#PolymorphicMapType_8535| Mask@0) (|PolymorphicMapType_8535_4564_8588#PolymorphicMapType_8535| Mask@0) (|PolymorphicMapType_8535_4564_37097#PolymorphicMapType_8535| Mask@0)))) (and (state Heap@@39 UnfoldingMask@0) (= perm@1 (/ (to_real 1) (to_real 2))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (>= perm@1 NoPerm)) (=> (>= perm@1 NoPerm) (=> (=> (> perm@1 NoPerm) (not (= x@@9 null))) (=> (and (and (= UnfoldingMask@1 (PolymorphicMapType_8535 (|PolymorphicMapType_8535_4601_4602#PolymorphicMapType_8535| UnfoldingMask@0) (store (|PolymorphicMapType_8535_4564_1189#PolymorphicMapType_8535| UnfoldingMask@0) x@@9 f_7 (+ (select (|PolymorphicMapType_8535_4564_1189#PolymorphicMapType_8535| UnfoldingMask@0) x@@9 f_7) perm@1)) (|PolymorphicMapType_8535_4601_1189#PolymorphicMapType_8535| UnfoldingMask@0) (|PolymorphicMapType_8535_4601_53#PolymorphicMapType_8535| UnfoldingMask@0) (|PolymorphicMapType_8535_4601_8588#PolymorphicMapType_8535| UnfoldingMask@0) (|PolymorphicMapType_8535_4601_36683#PolymorphicMapType_8535| UnfoldingMask@0) (|PolymorphicMapType_8535_4564_4602#PolymorphicMapType_8535| UnfoldingMask@0) (|PolymorphicMapType_8535_4564_53#PolymorphicMapType_8535| UnfoldingMask@0) (|PolymorphicMapType_8535_4564_8588#PolymorphicMapType_8535| UnfoldingMask@0) (|PolymorphicMapType_8535_4564_37097#PolymorphicMapType_8535| UnfoldingMask@0))) (state Heap@@39 UnfoldingMask@1)) (and (state Heap@@39 UnfoldingMask@1) (= (ControlFlow 0 2) (- 0 1)))) (HasDirectPerm_4564_1189 UnfoldingMask@1 x@@9 f_7)))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 6) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
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
(declare-sort T@Field_8574_53 0)
(declare-sort T@Field_8587_8588 0)
(declare-sort T@Field_11901_1189 0)
(declare-sort T@Field_12658_12659 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_14141_14146 0)
(declare-sort T@Field_4564_4602 0)
(declare-sort T@Field_4564_14146 0)
(declare-sort T@Field_4601_1189 0)
(declare-sort T@Field_4601_53 0)
(declare-sort T@Field_4601_8588 0)
(declare-datatypes ((T@PolymorphicMapType_8535 0)) (((PolymorphicMapType_8535 (|PolymorphicMapType_8535_4601_4602#PolymorphicMapType_8535| (Array T@Ref T@Field_12658_12659 Real)) (|PolymorphicMapType_8535_4564_1189#PolymorphicMapType_8535| (Array T@Ref T@Field_11901_1189 Real)) (|PolymorphicMapType_8535_4601_1189#PolymorphicMapType_8535| (Array T@Ref T@Field_4601_1189 Real)) (|PolymorphicMapType_8535_4601_53#PolymorphicMapType_8535| (Array T@Ref T@Field_4601_53 Real)) (|PolymorphicMapType_8535_4601_8588#PolymorphicMapType_8535| (Array T@Ref T@Field_4601_8588 Real)) (|PolymorphicMapType_8535_4601_36683#PolymorphicMapType_8535| (Array T@Ref T@Field_14141_14146 Real)) (|PolymorphicMapType_8535_4564_4602#PolymorphicMapType_8535| (Array T@Ref T@Field_4564_4602 Real)) (|PolymorphicMapType_8535_4564_53#PolymorphicMapType_8535| (Array T@Ref T@Field_8574_53 Real)) (|PolymorphicMapType_8535_4564_8588#PolymorphicMapType_8535| (Array T@Ref T@Field_8587_8588 Real)) (|PolymorphicMapType_8535_4564_37097#PolymorphicMapType_8535| (Array T@Ref T@Field_4564_14146 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9063 0)) (((PolymorphicMapType_9063 (|PolymorphicMapType_9063_4564_1189#PolymorphicMapType_9063| (Array T@Ref T@Field_11901_1189 Bool)) (|PolymorphicMapType_9063_4564_53#PolymorphicMapType_9063| (Array T@Ref T@Field_8574_53 Bool)) (|PolymorphicMapType_9063_4564_8588#PolymorphicMapType_9063| (Array T@Ref T@Field_8587_8588 Bool)) (|PolymorphicMapType_9063_4564_12659#PolymorphicMapType_9063| (Array T@Ref T@Field_4564_4602 Bool)) (|PolymorphicMapType_9063_4564_30244#PolymorphicMapType_9063| (Array T@Ref T@Field_4564_14146 Bool)) (|PolymorphicMapType_9063_12658_1189#PolymorphicMapType_9063| (Array T@Ref T@Field_4601_1189 Bool)) (|PolymorphicMapType_9063_12658_53#PolymorphicMapType_9063| (Array T@Ref T@Field_4601_53 Bool)) (|PolymorphicMapType_9063_12658_8588#PolymorphicMapType_9063| (Array T@Ref T@Field_4601_8588 Bool)) (|PolymorphicMapType_9063_12658_12659#PolymorphicMapType_9063| (Array T@Ref T@Field_12658_12659 Bool)) (|PolymorphicMapType_9063_12658_31292#PolymorphicMapType_9063| (Array T@Ref T@Field_14141_14146 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8514 0)) (((PolymorphicMapType_8514 (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| (Array T@Ref T@Field_8574_53 Bool)) (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| (Array T@Ref T@Field_8587_8588 T@Ref)) (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| (Array T@Ref T@Field_11901_1189 Int)) (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| (Array T@Ref T@Field_12658_12659 T@FrameType)) (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| (Array T@Ref T@Field_14141_14146 T@PolymorphicMapType_9063)) (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| (Array T@Ref T@Field_4564_4602 T@FrameType)) (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| (Array T@Ref T@Field_4564_14146 T@PolymorphicMapType_9063)) (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| (Array T@Ref T@Field_4601_1189 Int)) (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| (Array T@Ref T@Field_4601_53 Bool)) (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| (Array T@Ref T@Field_4601_8588 T@Ref)) ) ) ))
(declare-fun $allocated () T@Field_8574_53)
(declare-fun f_7 () T@Field_11901_1189)
(declare-fun state (T@PolymorphicMapType_8514 T@PolymorphicMapType_8535) Bool)
(declare-fun |fun'| (T@PolymorphicMapType_8514 Int Int) Bool)
(declare-fun |fun#frame| (T@FrameType Int Int) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun succHeap (T@PolymorphicMapType_8514 T@PolymorphicMapType_8514) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_8514 T@PolymorphicMapType_8514) Bool)
(declare-fun get (T@PolymorphicMapType_8514 T@Ref) Int)
(declare-fun |get#triggerStateless| (T@Ref) Int)
(declare-fun |pred#trigger_4601| (T@PolymorphicMapType_8514 T@Field_12658_12659) Bool)
(declare-fun pred_3 (T@Ref) T@Field_12658_12659)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun GoodMask (T@PolymorphicMapType_8535) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_9063)
(declare-fun dummyFunction_1373 (Bool) Bool)
(declare-fun |fun#triggerStateless| (Int Int) Bool)
(declare-fun IsPredicateField_4601_4602 (T@Field_12658_12659) Bool)
(declare-fun |get'| (T@PolymorphicMapType_8514 T@Ref) Int)
(declare-fun dummyFunction_1603 (Int) Bool)
(declare-fun |pred#everUsed_4601| (T@Field_12658_12659) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_8514 T@PolymorphicMapType_8514 T@PolymorphicMapType_8535) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_4601 (T@Field_12658_12659) T@Field_14141_14146)
(declare-fun HasDirectPerm_4601_4602 (T@PolymorphicMapType_8535 T@Ref T@Field_12658_12659) Bool)
(declare-fun IsPredicateField_4564_28772 (T@Field_4564_4602) Bool)
(declare-fun PredicateMaskField_4564 (T@Field_4564_4602) T@Field_4564_14146)
(declare-fun HasDirectPerm_4564_4602 (T@PolymorphicMapType_8535 T@Ref T@Field_4564_4602) Bool)
(declare-fun IsWandField_4601_32457 (T@Field_12658_12659) Bool)
(declare-fun WandMaskField_4601 (T@Field_12658_12659) T@Field_14141_14146)
(declare-fun IsWandField_4564_32100 (T@Field_4564_4602) Bool)
(declare-fun WandMaskField_4564 (T@Field_4564_4602) T@Field_4564_14146)
(declare-fun |pred#sm| (T@Ref) T@Field_14141_14146)
(declare-fun dummyHeap () T@PolymorphicMapType_8514)
(declare-fun ZeroMask () T@PolymorphicMapType_8535)
(declare-fun InsidePredicate_12658_12658 (T@Field_12658_12659 T@FrameType T@Field_12658_12659 T@FrameType) Bool)
(declare-fun InsidePredicate_8574_8574 (T@Field_4564_4602 T@FrameType T@Field_4564_4602 T@FrameType) Bool)
(declare-fun IsPredicateField_4564_1189 (T@Field_11901_1189) Bool)
(declare-fun IsWandField_4564_1189 (T@Field_11901_1189) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4564_39389 (T@Field_4564_14146) Bool)
(declare-fun IsWandField_4564_39405 (T@Field_4564_14146) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4564_8588 (T@Field_8587_8588) Bool)
(declare-fun IsWandField_4564_8588 (T@Field_8587_8588) Bool)
(declare-fun IsPredicateField_4564_53 (T@Field_8574_53) Bool)
(declare-fun IsWandField_4564_53 (T@Field_8574_53) Bool)
(declare-fun IsPredicateField_4601_38572 (T@Field_14141_14146) Bool)
(declare-fun IsWandField_4601_38588 (T@Field_14141_14146) Bool)
(declare-fun IsPredicateField_4601_8588 (T@Field_4601_8588) Bool)
(declare-fun IsWandField_4601_8588 (T@Field_4601_8588) Bool)
(declare-fun IsPredicateField_4601_53 (T@Field_4601_53) Bool)
(declare-fun IsWandField_4601_53 (T@Field_4601_53) Bool)
(declare-fun IsPredicateField_4601_1189 (T@Field_4601_1189) Bool)
(declare-fun IsWandField_4601_1189 (T@Field_4601_1189) Bool)
(declare-fun HasDirectPerm_4601_28527 (T@PolymorphicMapType_8535 T@Ref T@Field_14141_14146) Bool)
(declare-fun HasDirectPerm_4601_8588 (T@PolymorphicMapType_8535 T@Ref T@Field_4601_8588) Bool)
(declare-fun HasDirectPerm_4601_53 (T@PolymorphicMapType_8535 T@Ref T@Field_4601_53) Bool)
(declare-fun HasDirectPerm_4601_1189 (T@PolymorphicMapType_8535 T@Ref T@Field_4601_1189) Bool)
(declare-fun HasDirectPerm_4564_27386 (T@PolymorphicMapType_8535 T@Ref T@Field_4564_14146) Bool)
(declare-fun HasDirectPerm_4564_8588 (T@PolymorphicMapType_8535 T@Ref T@Field_8587_8588) Bool)
(declare-fun HasDirectPerm_4564_53 (T@PolymorphicMapType_8535 T@Ref T@Field_8574_53) Bool)
(declare-fun HasDirectPerm_4564_1189 (T@PolymorphicMapType_8535 T@Ref T@Field_11901_1189) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_8535 T@PolymorphicMapType_8535 T@PolymorphicMapType_8535) Bool)
(declare-fun |get#frame| (T@FrameType T@Ref) Int)
(declare-fun getPredWandId_4601_4602 (T@Field_12658_12659) Int)
(declare-fun InsidePredicate_12658_8574 (T@Field_12658_12659 T@FrameType T@Field_4564_4602 T@FrameType) Bool)
(declare-fun InsidePredicate_8574_12658 (T@Field_4564_4602 T@FrameType T@Field_12658_12659 T@FrameType) Bool)
(declare-fun fun (T@PolymorphicMapType_8514 Int Int) Bool)
(assert (forall ((Heap T@PolymorphicMapType_8514) (Mask T@PolymorphicMapType_8535) (v_2 Int) (i Int) ) (!  (=> (state Heap Mask) (= (|fun'| Heap v_2 i) (|fun#frame| EmptyFrame v_2 i)))
 :qid |stdinbpl.206:15|
 :skolemid |24|
 :pattern ( (state Heap Mask) (|fun'| Heap v_2 i))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_8514) (Heap1 T@PolymorphicMapType_8514) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_8514) (Mask@@0 T@PolymorphicMapType_8535) (x T@Ref) ) (!  (=> (and (state Heap@@0 Mask@@0) (< AssumeFunctionsAbove 0)) (= (get Heap@@0 x) (select (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| Heap@@0) x f_7)))
 :qid |stdinbpl.246:15|
 :skolemid |27|
 :pattern ( (state Heap@@0 Mask@@0) (get Heap@@0 x))
 :pattern ( (state Heap@@0 Mask@@0) (|get#triggerStateless| x) (|pred#trigger_4601| Heap@@0 (pred_3 x)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_8514) (Mask@@1 T@PolymorphicMapType_8535) ) (!  (=> (state Heap@@1 Mask@@1) (GoodMask Mask@@1))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@1 Mask@@1))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_8514) (Heap1@@0 T@PolymorphicMapType_8514) (Heap2 T@PolymorphicMapType_8514) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_14141_14146) ) (!  (not (select (|PolymorphicMapType_9063_12658_31292#PolymorphicMapType_9063| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9063_12658_31292#PolymorphicMapType_9063| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_12658_12659) ) (!  (not (select (|PolymorphicMapType_9063_12658_12659#PolymorphicMapType_9063| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9063_12658_12659#PolymorphicMapType_9063| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_4601_8588) ) (!  (not (select (|PolymorphicMapType_9063_12658_8588#PolymorphicMapType_9063| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9063_12658_8588#PolymorphicMapType_9063| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_4601_53) ) (!  (not (select (|PolymorphicMapType_9063_12658_53#PolymorphicMapType_9063| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9063_12658_53#PolymorphicMapType_9063| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_4601_1189) ) (!  (not (select (|PolymorphicMapType_9063_12658_1189#PolymorphicMapType_9063| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9063_12658_1189#PolymorphicMapType_9063| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_4564_14146) ) (!  (not (select (|PolymorphicMapType_9063_4564_30244#PolymorphicMapType_9063| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9063_4564_30244#PolymorphicMapType_9063| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_4564_4602) ) (!  (not (select (|PolymorphicMapType_9063_4564_12659#PolymorphicMapType_9063| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9063_4564_12659#PolymorphicMapType_9063| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_8587_8588) ) (!  (not (select (|PolymorphicMapType_9063_4564_8588#PolymorphicMapType_9063| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9063_4564_8588#PolymorphicMapType_9063| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_8574_53) ) (!  (not (select (|PolymorphicMapType_9063_4564_53#PolymorphicMapType_9063| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9063_4564_53#PolymorphicMapType_9063| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_11901_1189) ) (!  (not (select (|PolymorphicMapType_9063_4564_1189#PolymorphicMapType_9063| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9063_4564_1189#PolymorphicMapType_9063| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_8514) (v_2@@0 Int) (i@@0 Int) ) (! (dummyFunction_1373 (|fun#triggerStateless| v_2@@0 i@@0))
 :qid |stdinbpl.199:15|
 :skolemid |23|
 :pattern ( (|fun'| Heap@@2 v_2@@0 i@@0))
)))
(assert (forall ((x@@0 T@Ref) ) (! (IsPredicateField_4601_4602 (pred_3 x@@0))
 :qid |stdinbpl.335:15|
 :skolemid |30|
 :pattern ( (pred_3 x@@0))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_8514) (x@@1 T@Ref) ) (! (dummyFunction_1603 (|get#triggerStateless| x@@1))
 :qid |stdinbpl.240:15|
 :skolemid |26|
 :pattern ( (|get'| Heap@@3 x@@1))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_8514) (x@@2 T@Ref) ) (! (|pred#everUsed_4601| (pred_3 x@@2))
 :qid |stdinbpl.354:15|
 :skolemid |34|
 :pattern ( (|pred#trigger_4601| Heap@@4 (pred_3 x@@2)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_8514) (x@@3 T@Ref) ) (!  (and (= (get Heap@@5 x@@3) (|get'| Heap@@5 x@@3)) (dummyFunction_1603 (|get#triggerStateless| x@@3)))
 :qid |stdinbpl.236:15|
 :skolemid |25|
 :pattern ( (get Heap@@5 x@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_8514) (ExhaleHeap T@PolymorphicMapType_8514) (Mask@@2 T@PolymorphicMapType_8535) (pm_f_22 T@Field_12658_12659) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap Mask@@2) (=> (and (HasDirectPerm_4601_4602 Mask@@2 null pm_f_22) (IsPredicateField_4601_4602 pm_f_22)) (= (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@6) null (PredicateMaskField_4601 pm_f_22)) (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| ExhaleHeap) null (PredicateMaskField_4601 pm_f_22)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap Mask@@2) (IsPredicateField_4601_4602 pm_f_22) (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| ExhaleHeap) null (PredicateMaskField_4601 pm_f_22)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_8514) (ExhaleHeap@@0 T@PolymorphicMapType_8514) (Mask@@3 T@PolymorphicMapType_8535) (pm_f_22@@0 T@Field_4564_4602) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@0 Mask@@3) (=> (and (HasDirectPerm_4564_4602 Mask@@3 null pm_f_22@@0) (IsPredicateField_4564_28772 pm_f_22@@0)) (= (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@7) null (PredicateMaskField_4564 pm_f_22@@0)) (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| ExhaleHeap@@0) null (PredicateMaskField_4564 pm_f_22@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@0 Mask@@3) (IsPredicateField_4564_28772 pm_f_22@@0) (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| ExhaleHeap@@0) null (PredicateMaskField_4564 pm_f_22@@0)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_8514) (ExhaleHeap@@1 T@PolymorphicMapType_8514) (Mask@@4 T@PolymorphicMapType_8535) (pm_f_22@@1 T@Field_12658_12659) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@4) (=> (and (HasDirectPerm_4601_4602 Mask@@4 null pm_f_22@@1) (IsWandField_4601_32457 pm_f_22@@1)) (= (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@8) null (WandMaskField_4601 pm_f_22@@1)) (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| ExhaleHeap@@1) null (WandMaskField_4601 pm_f_22@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@4) (IsWandField_4601_32457 pm_f_22@@1) (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| ExhaleHeap@@1) null (WandMaskField_4601 pm_f_22@@1)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_8514) (ExhaleHeap@@2 T@PolymorphicMapType_8514) (Mask@@5 T@PolymorphicMapType_8535) (pm_f_22@@2 T@Field_4564_4602) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@5) (=> (and (HasDirectPerm_4564_4602 Mask@@5 null pm_f_22@@2) (IsWandField_4564_32100 pm_f_22@@2)) (= (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@9) null (WandMaskField_4564 pm_f_22@@2)) (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| ExhaleHeap@@2) null (WandMaskField_4564 pm_f_22@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@5) (IsWandField_4564_32100 pm_f_22@@2) (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| ExhaleHeap@@2) null (WandMaskField_4564 pm_f_22@@2)))
)))
(assert (forall ((x@@4 T@Ref) (x2 T@Ref) ) (!  (=> (= (pred_3 x@@4) (pred_3 x2)) (= x@@4 x2))
 :qid |stdinbpl.345:15|
 :skolemid |32|
 :pattern ( (pred_3 x@@4) (pred_3 x2))
)))
(assert (forall ((x@@5 T@Ref) (x2@@0 T@Ref) ) (!  (=> (= (|pred#sm| x@@5) (|pred#sm| x2@@0)) (= x@@5 x2@@0))
 :qid |stdinbpl.349:15|
 :skolemid |33|
 :pattern ( (|pred#sm| x@@5) (|pred#sm| x2@@0))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_8514) (ExhaleHeap@@3 T@PolymorphicMapType_8514) (Mask@@6 T@PolymorphicMapType_8535) (pm_f_22@@3 T@Field_12658_12659) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@6) (=> (and (HasDirectPerm_4601_4602 Mask@@6 null pm_f_22@@3) (IsPredicateField_4601_4602 pm_f_22@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_22 T@Ref) (f_37 T@Field_11901_1189) ) (!  (=> (select (|PolymorphicMapType_9063_4564_1189#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@10) null (PredicateMaskField_4601 pm_f_22@@3))) o2_22 f_37) (= (select (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| Heap@@10) o2_22 f_37) (select (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| ExhaleHeap@@3) o2_22 f_37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| ExhaleHeap@@3) o2_22 f_37))
)) (forall ((o2_22@@0 T@Ref) (f_37@@0 T@Field_8574_53) ) (!  (=> (select (|PolymorphicMapType_9063_4564_53#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@10) null (PredicateMaskField_4601 pm_f_22@@3))) o2_22@@0 f_37@@0) (= (select (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| Heap@@10) o2_22@@0 f_37@@0) (select (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| ExhaleHeap@@3) o2_22@@0 f_37@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| ExhaleHeap@@3) o2_22@@0 f_37@@0))
))) (forall ((o2_22@@1 T@Ref) (f_37@@1 T@Field_8587_8588) ) (!  (=> (select (|PolymorphicMapType_9063_4564_8588#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@10) null (PredicateMaskField_4601 pm_f_22@@3))) o2_22@@1 f_37@@1) (= (select (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| Heap@@10) o2_22@@1 f_37@@1) (select (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| ExhaleHeap@@3) o2_22@@1 f_37@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| ExhaleHeap@@3) o2_22@@1 f_37@@1))
))) (forall ((o2_22@@2 T@Ref) (f_37@@2 T@Field_4564_4602) ) (!  (=> (select (|PolymorphicMapType_9063_4564_12659#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@10) null (PredicateMaskField_4601 pm_f_22@@3))) o2_22@@2 f_37@@2) (= (select (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| Heap@@10) o2_22@@2 f_37@@2) (select (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| ExhaleHeap@@3) o2_22@@2 f_37@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| ExhaleHeap@@3) o2_22@@2 f_37@@2))
))) (forall ((o2_22@@3 T@Ref) (f_37@@3 T@Field_4564_14146) ) (!  (=> (select (|PolymorphicMapType_9063_4564_30244#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@10) null (PredicateMaskField_4601 pm_f_22@@3))) o2_22@@3 f_37@@3) (= (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@10) o2_22@@3 f_37@@3) (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| ExhaleHeap@@3) o2_22@@3 f_37@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| ExhaleHeap@@3) o2_22@@3 f_37@@3))
))) (forall ((o2_22@@4 T@Ref) (f_37@@4 T@Field_4601_1189) ) (!  (=> (select (|PolymorphicMapType_9063_12658_1189#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@10) null (PredicateMaskField_4601 pm_f_22@@3))) o2_22@@4 f_37@@4) (= (select (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| Heap@@10) o2_22@@4 f_37@@4) (select (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| ExhaleHeap@@3) o2_22@@4 f_37@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| ExhaleHeap@@3) o2_22@@4 f_37@@4))
))) (forall ((o2_22@@5 T@Ref) (f_37@@5 T@Field_4601_53) ) (!  (=> (select (|PolymorphicMapType_9063_12658_53#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@10) null (PredicateMaskField_4601 pm_f_22@@3))) o2_22@@5 f_37@@5) (= (select (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| Heap@@10) o2_22@@5 f_37@@5) (select (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| ExhaleHeap@@3) o2_22@@5 f_37@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| ExhaleHeap@@3) o2_22@@5 f_37@@5))
))) (forall ((o2_22@@6 T@Ref) (f_37@@6 T@Field_4601_8588) ) (!  (=> (select (|PolymorphicMapType_9063_12658_8588#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@10) null (PredicateMaskField_4601 pm_f_22@@3))) o2_22@@6 f_37@@6) (= (select (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| Heap@@10) o2_22@@6 f_37@@6) (select (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| ExhaleHeap@@3) o2_22@@6 f_37@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| ExhaleHeap@@3) o2_22@@6 f_37@@6))
))) (forall ((o2_22@@7 T@Ref) (f_37@@7 T@Field_12658_12659) ) (!  (=> (select (|PolymorphicMapType_9063_12658_12659#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@10) null (PredicateMaskField_4601 pm_f_22@@3))) o2_22@@7 f_37@@7) (= (select (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| Heap@@10) o2_22@@7 f_37@@7) (select (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| ExhaleHeap@@3) o2_22@@7 f_37@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| ExhaleHeap@@3) o2_22@@7 f_37@@7))
))) (forall ((o2_22@@8 T@Ref) (f_37@@8 T@Field_14141_14146) ) (!  (=> (select (|PolymorphicMapType_9063_12658_31292#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@10) null (PredicateMaskField_4601 pm_f_22@@3))) o2_22@@8 f_37@@8) (= (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@10) o2_22@@8 f_37@@8) (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| ExhaleHeap@@3) o2_22@@8 f_37@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| ExhaleHeap@@3) o2_22@@8 f_37@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@6) (IsPredicateField_4601_4602 pm_f_22@@3))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_8514) (ExhaleHeap@@4 T@PolymorphicMapType_8514) (Mask@@7 T@PolymorphicMapType_8535) (pm_f_22@@4 T@Field_4564_4602) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@4 Mask@@7) (=> (and (HasDirectPerm_4564_4602 Mask@@7 null pm_f_22@@4) (IsPredicateField_4564_28772 pm_f_22@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_22@@9 T@Ref) (f_37@@9 T@Field_11901_1189) ) (!  (=> (select (|PolymorphicMapType_9063_4564_1189#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@11) null (PredicateMaskField_4564 pm_f_22@@4))) o2_22@@9 f_37@@9) (= (select (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| Heap@@11) o2_22@@9 f_37@@9) (select (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| ExhaleHeap@@4) o2_22@@9 f_37@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| ExhaleHeap@@4) o2_22@@9 f_37@@9))
)) (forall ((o2_22@@10 T@Ref) (f_37@@10 T@Field_8574_53) ) (!  (=> (select (|PolymorphicMapType_9063_4564_53#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@11) null (PredicateMaskField_4564 pm_f_22@@4))) o2_22@@10 f_37@@10) (= (select (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| Heap@@11) o2_22@@10 f_37@@10) (select (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| ExhaleHeap@@4) o2_22@@10 f_37@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| ExhaleHeap@@4) o2_22@@10 f_37@@10))
))) (forall ((o2_22@@11 T@Ref) (f_37@@11 T@Field_8587_8588) ) (!  (=> (select (|PolymorphicMapType_9063_4564_8588#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@11) null (PredicateMaskField_4564 pm_f_22@@4))) o2_22@@11 f_37@@11) (= (select (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| Heap@@11) o2_22@@11 f_37@@11) (select (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| ExhaleHeap@@4) o2_22@@11 f_37@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| ExhaleHeap@@4) o2_22@@11 f_37@@11))
))) (forall ((o2_22@@12 T@Ref) (f_37@@12 T@Field_4564_4602) ) (!  (=> (select (|PolymorphicMapType_9063_4564_12659#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@11) null (PredicateMaskField_4564 pm_f_22@@4))) o2_22@@12 f_37@@12) (= (select (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| Heap@@11) o2_22@@12 f_37@@12) (select (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| ExhaleHeap@@4) o2_22@@12 f_37@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| ExhaleHeap@@4) o2_22@@12 f_37@@12))
))) (forall ((o2_22@@13 T@Ref) (f_37@@13 T@Field_4564_14146) ) (!  (=> (select (|PolymorphicMapType_9063_4564_30244#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@11) null (PredicateMaskField_4564 pm_f_22@@4))) o2_22@@13 f_37@@13) (= (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@11) o2_22@@13 f_37@@13) (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| ExhaleHeap@@4) o2_22@@13 f_37@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| ExhaleHeap@@4) o2_22@@13 f_37@@13))
))) (forall ((o2_22@@14 T@Ref) (f_37@@14 T@Field_4601_1189) ) (!  (=> (select (|PolymorphicMapType_9063_12658_1189#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@11) null (PredicateMaskField_4564 pm_f_22@@4))) o2_22@@14 f_37@@14) (= (select (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| Heap@@11) o2_22@@14 f_37@@14) (select (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| ExhaleHeap@@4) o2_22@@14 f_37@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| ExhaleHeap@@4) o2_22@@14 f_37@@14))
))) (forall ((o2_22@@15 T@Ref) (f_37@@15 T@Field_4601_53) ) (!  (=> (select (|PolymorphicMapType_9063_12658_53#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@11) null (PredicateMaskField_4564 pm_f_22@@4))) o2_22@@15 f_37@@15) (= (select (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| Heap@@11) o2_22@@15 f_37@@15) (select (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| ExhaleHeap@@4) o2_22@@15 f_37@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| ExhaleHeap@@4) o2_22@@15 f_37@@15))
))) (forall ((o2_22@@16 T@Ref) (f_37@@16 T@Field_4601_8588) ) (!  (=> (select (|PolymorphicMapType_9063_12658_8588#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@11) null (PredicateMaskField_4564 pm_f_22@@4))) o2_22@@16 f_37@@16) (= (select (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| Heap@@11) o2_22@@16 f_37@@16) (select (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| ExhaleHeap@@4) o2_22@@16 f_37@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| ExhaleHeap@@4) o2_22@@16 f_37@@16))
))) (forall ((o2_22@@17 T@Ref) (f_37@@17 T@Field_12658_12659) ) (!  (=> (select (|PolymorphicMapType_9063_12658_12659#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@11) null (PredicateMaskField_4564 pm_f_22@@4))) o2_22@@17 f_37@@17) (= (select (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| Heap@@11) o2_22@@17 f_37@@17) (select (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| ExhaleHeap@@4) o2_22@@17 f_37@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| ExhaleHeap@@4) o2_22@@17 f_37@@17))
))) (forall ((o2_22@@18 T@Ref) (f_37@@18 T@Field_14141_14146) ) (!  (=> (select (|PolymorphicMapType_9063_12658_31292#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@11) null (PredicateMaskField_4564 pm_f_22@@4))) o2_22@@18 f_37@@18) (= (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@11) o2_22@@18 f_37@@18) (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| ExhaleHeap@@4) o2_22@@18 f_37@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| ExhaleHeap@@4) o2_22@@18 f_37@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@4 Mask@@7) (IsPredicateField_4564_28772 pm_f_22@@4))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_8514) (ExhaleHeap@@5 T@PolymorphicMapType_8514) (Mask@@8 T@PolymorphicMapType_8535) (pm_f_22@@5 T@Field_12658_12659) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@5 Mask@@8) (=> (and (HasDirectPerm_4601_4602 Mask@@8 null pm_f_22@@5) (IsWandField_4601_32457 pm_f_22@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_22@@19 T@Ref) (f_37@@19 T@Field_11901_1189) ) (!  (=> (select (|PolymorphicMapType_9063_4564_1189#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@12) null (WandMaskField_4601 pm_f_22@@5))) o2_22@@19 f_37@@19) (= (select (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| Heap@@12) o2_22@@19 f_37@@19) (select (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| ExhaleHeap@@5) o2_22@@19 f_37@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| ExhaleHeap@@5) o2_22@@19 f_37@@19))
)) (forall ((o2_22@@20 T@Ref) (f_37@@20 T@Field_8574_53) ) (!  (=> (select (|PolymorphicMapType_9063_4564_53#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@12) null (WandMaskField_4601 pm_f_22@@5))) o2_22@@20 f_37@@20) (= (select (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| Heap@@12) o2_22@@20 f_37@@20) (select (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| ExhaleHeap@@5) o2_22@@20 f_37@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| ExhaleHeap@@5) o2_22@@20 f_37@@20))
))) (forall ((o2_22@@21 T@Ref) (f_37@@21 T@Field_8587_8588) ) (!  (=> (select (|PolymorphicMapType_9063_4564_8588#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@12) null (WandMaskField_4601 pm_f_22@@5))) o2_22@@21 f_37@@21) (= (select (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| Heap@@12) o2_22@@21 f_37@@21) (select (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| ExhaleHeap@@5) o2_22@@21 f_37@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| ExhaleHeap@@5) o2_22@@21 f_37@@21))
))) (forall ((o2_22@@22 T@Ref) (f_37@@22 T@Field_4564_4602) ) (!  (=> (select (|PolymorphicMapType_9063_4564_12659#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@12) null (WandMaskField_4601 pm_f_22@@5))) o2_22@@22 f_37@@22) (= (select (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| Heap@@12) o2_22@@22 f_37@@22) (select (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| ExhaleHeap@@5) o2_22@@22 f_37@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| ExhaleHeap@@5) o2_22@@22 f_37@@22))
))) (forall ((o2_22@@23 T@Ref) (f_37@@23 T@Field_4564_14146) ) (!  (=> (select (|PolymorphicMapType_9063_4564_30244#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@12) null (WandMaskField_4601 pm_f_22@@5))) o2_22@@23 f_37@@23) (= (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@12) o2_22@@23 f_37@@23) (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| ExhaleHeap@@5) o2_22@@23 f_37@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| ExhaleHeap@@5) o2_22@@23 f_37@@23))
))) (forall ((o2_22@@24 T@Ref) (f_37@@24 T@Field_4601_1189) ) (!  (=> (select (|PolymorphicMapType_9063_12658_1189#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@12) null (WandMaskField_4601 pm_f_22@@5))) o2_22@@24 f_37@@24) (= (select (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| Heap@@12) o2_22@@24 f_37@@24) (select (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| ExhaleHeap@@5) o2_22@@24 f_37@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| ExhaleHeap@@5) o2_22@@24 f_37@@24))
))) (forall ((o2_22@@25 T@Ref) (f_37@@25 T@Field_4601_53) ) (!  (=> (select (|PolymorphicMapType_9063_12658_53#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@12) null (WandMaskField_4601 pm_f_22@@5))) o2_22@@25 f_37@@25) (= (select (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| Heap@@12) o2_22@@25 f_37@@25) (select (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| ExhaleHeap@@5) o2_22@@25 f_37@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| ExhaleHeap@@5) o2_22@@25 f_37@@25))
))) (forall ((o2_22@@26 T@Ref) (f_37@@26 T@Field_4601_8588) ) (!  (=> (select (|PolymorphicMapType_9063_12658_8588#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@12) null (WandMaskField_4601 pm_f_22@@5))) o2_22@@26 f_37@@26) (= (select (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| Heap@@12) o2_22@@26 f_37@@26) (select (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| ExhaleHeap@@5) o2_22@@26 f_37@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| ExhaleHeap@@5) o2_22@@26 f_37@@26))
))) (forall ((o2_22@@27 T@Ref) (f_37@@27 T@Field_12658_12659) ) (!  (=> (select (|PolymorphicMapType_9063_12658_12659#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@12) null (WandMaskField_4601 pm_f_22@@5))) o2_22@@27 f_37@@27) (= (select (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| Heap@@12) o2_22@@27 f_37@@27) (select (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| ExhaleHeap@@5) o2_22@@27 f_37@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| ExhaleHeap@@5) o2_22@@27 f_37@@27))
))) (forall ((o2_22@@28 T@Ref) (f_37@@28 T@Field_14141_14146) ) (!  (=> (select (|PolymorphicMapType_9063_12658_31292#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@12) null (WandMaskField_4601 pm_f_22@@5))) o2_22@@28 f_37@@28) (= (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@12) o2_22@@28 f_37@@28) (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| ExhaleHeap@@5) o2_22@@28 f_37@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| ExhaleHeap@@5) o2_22@@28 f_37@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@5 Mask@@8) (IsWandField_4601_32457 pm_f_22@@5))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_8514) (ExhaleHeap@@6 T@PolymorphicMapType_8514) (Mask@@9 T@PolymorphicMapType_8535) (pm_f_22@@6 T@Field_4564_4602) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@6 Mask@@9) (=> (and (HasDirectPerm_4564_4602 Mask@@9 null pm_f_22@@6) (IsWandField_4564_32100 pm_f_22@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_22@@29 T@Ref) (f_37@@29 T@Field_11901_1189) ) (!  (=> (select (|PolymorphicMapType_9063_4564_1189#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@13) null (WandMaskField_4564 pm_f_22@@6))) o2_22@@29 f_37@@29) (= (select (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| Heap@@13) o2_22@@29 f_37@@29) (select (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| ExhaleHeap@@6) o2_22@@29 f_37@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| ExhaleHeap@@6) o2_22@@29 f_37@@29))
)) (forall ((o2_22@@30 T@Ref) (f_37@@30 T@Field_8574_53) ) (!  (=> (select (|PolymorphicMapType_9063_4564_53#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@13) null (WandMaskField_4564 pm_f_22@@6))) o2_22@@30 f_37@@30) (= (select (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| Heap@@13) o2_22@@30 f_37@@30) (select (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| ExhaleHeap@@6) o2_22@@30 f_37@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| ExhaleHeap@@6) o2_22@@30 f_37@@30))
))) (forall ((o2_22@@31 T@Ref) (f_37@@31 T@Field_8587_8588) ) (!  (=> (select (|PolymorphicMapType_9063_4564_8588#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@13) null (WandMaskField_4564 pm_f_22@@6))) o2_22@@31 f_37@@31) (= (select (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| Heap@@13) o2_22@@31 f_37@@31) (select (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| ExhaleHeap@@6) o2_22@@31 f_37@@31)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| ExhaleHeap@@6) o2_22@@31 f_37@@31))
))) (forall ((o2_22@@32 T@Ref) (f_37@@32 T@Field_4564_4602) ) (!  (=> (select (|PolymorphicMapType_9063_4564_12659#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@13) null (WandMaskField_4564 pm_f_22@@6))) o2_22@@32 f_37@@32) (= (select (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| Heap@@13) o2_22@@32 f_37@@32) (select (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| ExhaleHeap@@6) o2_22@@32 f_37@@32)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| ExhaleHeap@@6) o2_22@@32 f_37@@32))
))) (forall ((o2_22@@33 T@Ref) (f_37@@33 T@Field_4564_14146) ) (!  (=> (select (|PolymorphicMapType_9063_4564_30244#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@13) null (WandMaskField_4564 pm_f_22@@6))) o2_22@@33 f_37@@33) (= (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@13) o2_22@@33 f_37@@33) (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| ExhaleHeap@@6) o2_22@@33 f_37@@33)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| ExhaleHeap@@6) o2_22@@33 f_37@@33))
))) (forall ((o2_22@@34 T@Ref) (f_37@@34 T@Field_4601_1189) ) (!  (=> (select (|PolymorphicMapType_9063_12658_1189#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@13) null (WandMaskField_4564 pm_f_22@@6))) o2_22@@34 f_37@@34) (= (select (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| Heap@@13) o2_22@@34 f_37@@34) (select (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| ExhaleHeap@@6) o2_22@@34 f_37@@34)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| ExhaleHeap@@6) o2_22@@34 f_37@@34))
))) (forall ((o2_22@@35 T@Ref) (f_37@@35 T@Field_4601_53) ) (!  (=> (select (|PolymorphicMapType_9063_12658_53#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@13) null (WandMaskField_4564 pm_f_22@@6))) o2_22@@35 f_37@@35) (= (select (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| Heap@@13) o2_22@@35 f_37@@35) (select (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| ExhaleHeap@@6) o2_22@@35 f_37@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| ExhaleHeap@@6) o2_22@@35 f_37@@35))
))) (forall ((o2_22@@36 T@Ref) (f_37@@36 T@Field_4601_8588) ) (!  (=> (select (|PolymorphicMapType_9063_12658_8588#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@13) null (WandMaskField_4564 pm_f_22@@6))) o2_22@@36 f_37@@36) (= (select (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| Heap@@13) o2_22@@36 f_37@@36) (select (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| ExhaleHeap@@6) o2_22@@36 f_37@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| ExhaleHeap@@6) o2_22@@36 f_37@@36))
))) (forall ((o2_22@@37 T@Ref) (f_37@@37 T@Field_12658_12659) ) (!  (=> (select (|PolymorphicMapType_9063_12658_12659#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@13) null (WandMaskField_4564 pm_f_22@@6))) o2_22@@37 f_37@@37) (= (select (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| Heap@@13) o2_22@@37 f_37@@37) (select (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| ExhaleHeap@@6) o2_22@@37 f_37@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| ExhaleHeap@@6) o2_22@@37 f_37@@37))
))) (forall ((o2_22@@38 T@Ref) (f_37@@38 T@Field_14141_14146) ) (!  (=> (select (|PolymorphicMapType_9063_12658_31292#PolymorphicMapType_9063| (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@13) null (WandMaskField_4564 pm_f_22@@6))) o2_22@@38 f_37@@38) (= (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@13) o2_22@@38 f_37@@38) (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| ExhaleHeap@@6) o2_22@@38 f_37@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| ExhaleHeap@@6) o2_22@@38 f_37@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@6 Mask@@9) (IsWandField_4564_32100 pm_f_22@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@14 T@PolymorphicMapType_8514) (ExhaleHeap@@7 T@PolymorphicMapType_8514) (Mask@@10 T@PolymorphicMapType_8535) (o_46 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@10) (=> (select (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| Heap@@14) o_46 $allocated) (select (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| ExhaleHeap@@7) o_46 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@10) (select (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| ExhaleHeap@@7) o_46 $allocated))
)))
(assert (forall ((p T@Field_12658_12659) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_12658_12658 p v_1 p w))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_12658_12658 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_4564_4602) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_8574_8574 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8574_8574 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_4564_1189 f_7)))
(assert  (not (IsWandField_4564_1189 f_7)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_8514) (ExhaleHeap@@8 T@PolymorphicMapType_8514) (Mask@@11 T@PolymorphicMapType_8535) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@11) (succHeap Heap@@15 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_8535) (o_2@@9 T@Ref) (f_4@@9 T@Field_4564_14146) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_8535_4564_37097#PolymorphicMapType_8535| Mask@@12) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_4564_39389 f_4@@9))) (not (IsWandField_4564_39405 f_4@@9))) (<= (select (|PolymorphicMapType_8535_4564_37097#PolymorphicMapType_8535| Mask@@12) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_8535_4564_37097#PolymorphicMapType_8535| Mask@@12) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_8535) (o_2@@10 T@Ref) (f_4@@10 T@Field_8587_8588) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_8535_4564_8588#PolymorphicMapType_8535| Mask@@13) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_4564_8588 f_4@@10))) (not (IsWandField_4564_8588 f_4@@10))) (<= (select (|PolymorphicMapType_8535_4564_8588#PolymorphicMapType_8535| Mask@@13) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_8535_4564_8588#PolymorphicMapType_8535| Mask@@13) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_8535) (o_2@@11 T@Ref) (f_4@@11 T@Field_8574_53) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_8535_4564_53#PolymorphicMapType_8535| Mask@@14) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_4564_53 f_4@@11))) (not (IsWandField_4564_53 f_4@@11))) (<= (select (|PolymorphicMapType_8535_4564_53#PolymorphicMapType_8535| Mask@@14) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_8535_4564_53#PolymorphicMapType_8535| Mask@@14) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_8535) (o_2@@12 T@Ref) (f_4@@12 T@Field_11901_1189) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_8535_4564_1189#PolymorphicMapType_8535| Mask@@15) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_4564_1189 f_4@@12))) (not (IsWandField_4564_1189 f_4@@12))) (<= (select (|PolymorphicMapType_8535_4564_1189#PolymorphicMapType_8535| Mask@@15) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_8535_4564_1189#PolymorphicMapType_8535| Mask@@15) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_8535) (o_2@@13 T@Ref) (f_4@@13 T@Field_4564_4602) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_8535_4564_4602#PolymorphicMapType_8535| Mask@@16) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_4564_28772 f_4@@13))) (not (IsWandField_4564_32100 f_4@@13))) (<= (select (|PolymorphicMapType_8535_4564_4602#PolymorphicMapType_8535| Mask@@16) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_8535_4564_4602#PolymorphicMapType_8535| Mask@@16) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_8535) (o_2@@14 T@Ref) (f_4@@14 T@Field_14141_14146) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_8535_4601_36683#PolymorphicMapType_8535| Mask@@17) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_4601_38572 f_4@@14))) (not (IsWandField_4601_38588 f_4@@14))) (<= (select (|PolymorphicMapType_8535_4601_36683#PolymorphicMapType_8535| Mask@@17) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_8535_4601_36683#PolymorphicMapType_8535| Mask@@17) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_8535) (o_2@@15 T@Ref) (f_4@@15 T@Field_4601_8588) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_8535_4601_8588#PolymorphicMapType_8535| Mask@@18) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_4601_8588 f_4@@15))) (not (IsWandField_4601_8588 f_4@@15))) (<= (select (|PolymorphicMapType_8535_4601_8588#PolymorphicMapType_8535| Mask@@18) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_8535_4601_8588#PolymorphicMapType_8535| Mask@@18) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_8535) (o_2@@16 T@Ref) (f_4@@16 T@Field_4601_53) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_8535_4601_53#PolymorphicMapType_8535| Mask@@19) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_4601_53 f_4@@16))) (not (IsWandField_4601_53 f_4@@16))) (<= (select (|PolymorphicMapType_8535_4601_53#PolymorphicMapType_8535| Mask@@19) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_8535_4601_53#PolymorphicMapType_8535| Mask@@19) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_8535) (o_2@@17 T@Ref) (f_4@@17 T@Field_4601_1189) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_8535_4601_1189#PolymorphicMapType_8535| Mask@@20) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_4601_1189 f_4@@17))) (not (IsWandField_4601_1189 f_4@@17))) (<= (select (|PolymorphicMapType_8535_4601_1189#PolymorphicMapType_8535| Mask@@20) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_8535_4601_1189#PolymorphicMapType_8535| Mask@@20) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_8535) (o_2@@18 T@Ref) (f_4@@18 T@Field_12658_12659) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_8535_4601_4602#PolymorphicMapType_8535| Mask@@21) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_4601_4602 f_4@@18))) (not (IsWandField_4601_32457 f_4@@18))) (<= (select (|PolymorphicMapType_8535_4601_4602#PolymorphicMapType_8535| Mask@@21) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_8535_4601_4602#PolymorphicMapType_8535| Mask@@21) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_8535) (o_2@@19 T@Ref) (f_4@@19 T@Field_14141_14146) ) (! (= (HasDirectPerm_4601_28527 Mask@@22 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_8535_4601_36683#PolymorphicMapType_8535| Mask@@22) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4601_28527 Mask@@22 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_8535) (o_2@@20 T@Ref) (f_4@@20 T@Field_4601_8588) ) (! (= (HasDirectPerm_4601_8588 Mask@@23 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_8535_4601_8588#PolymorphicMapType_8535| Mask@@23) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4601_8588 Mask@@23 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_8535) (o_2@@21 T@Ref) (f_4@@21 T@Field_4601_53) ) (! (= (HasDirectPerm_4601_53 Mask@@24 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_8535_4601_53#PolymorphicMapType_8535| Mask@@24) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4601_53 Mask@@24 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_8535) (o_2@@22 T@Ref) (f_4@@22 T@Field_12658_12659) ) (! (= (HasDirectPerm_4601_4602 Mask@@25 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_8535_4601_4602#PolymorphicMapType_8535| Mask@@25) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4601_4602 Mask@@25 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_8535) (o_2@@23 T@Ref) (f_4@@23 T@Field_4601_1189) ) (! (= (HasDirectPerm_4601_1189 Mask@@26 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_8535_4601_1189#PolymorphicMapType_8535| Mask@@26) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4601_1189 Mask@@26 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_8535) (o_2@@24 T@Ref) (f_4@@24 T@Field_4564_14146) ) (! (= (HasDirectPerm_4564_27386 Mask@@27 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_8535_4564_37097#PolymorphicMapType_8535| Mask@@27) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4564_27386 Mask@@27 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_8535) (o_2@@25 T@Ref) (f_4@@25 T@Field_8587_8588) ) (! (= (HasDirectPerm_4564_8588 Mask@@28 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_8535_4564_8588#PolymorphicMapType_8535| Mask@@28) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4564_8588 Mask@@28 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_8535) (o_2@@26 T@Ref) (f_4@@26 T@Field_8574_53) ) (! (= (HasDirectPerm_4564_53 Mask@@29 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_8535_4564_53#PolymorphicMapType_8535| Mask@@29) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4564_53 Mask@@29 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_8535) (o_2@@27 T@Ref) (f_4@@27 T@Field_4564_4602) ) (! (= (HasDirectPerm_4564_4602 Mask@@30 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_8535_4564_4602#PolymorphicMapType_8535| Mask@@30) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4564_4602 Mask@@30 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_8535) (o_2@@28 T@Ref) (f_4@@28 T@Field_11901_1189) ) (! (= (HasDirectPerm_4564_1189 Mask@@31 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_8535_4564_1189#PolymorphicMapType_8535| Mask@@31) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4564_1189 Mask@@31 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.163:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_8514) (ExhaleHeap@@9 T@PolymorphicMapType_8514) (Mask@@32 T@PolymorphicMapType_8535) (o_46@@0 T@Ref) (f_37@@39 T@Field_14141_14146) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@9 Mask@@32) (=> (HasDirectPerm_4601_28527 Mask@@32 o_46@@0 f_37@@39) (= (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@16) o_46@@0 f_37@@39) (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| ExhaleHeap@@9) o_46@@0 f_37@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@9 Mask@@32) (select (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| ExhaleHeap@@9) o_46@@0 f_37@@39))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_8514) (ExhaleHeap@@10 T@PolymorphicMapType_8514) (Mask@@33 T@PolymorphicMapType_8535) (o_46@@1 T@Ref) (f_37@@40 T@Field_4601_8588) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@10 Mask@@33) (=> (HasDirectPerm_4601_8588 Mask@@33 o_46@@1 f_37@@40) (= (select (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| Heap@@17) o_46@@1 f_37@@40) (select (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| ExhaleHeap@@10) o_46@@1 f_37@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@10 Mask@@33) (select (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| ExhaleHeap@@10) o_46@@1 f_37@@40))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_8514) (ExhaleHeap@@11 T@PolymorphicMapType_8514) (Mask@@34 T@PolymorphicMapType_8535) (o_46@@2 T@Ref) (f_37@@41 T@Field_4601_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@11 Mask@@34) (=> (HasDirectPerm_4601_53 Mask@@34 o_46@@2 f_37@@41) (= (select (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| Heap@@18) o_46@@2 f_37@@41) (select (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| ExhaleHeap@@11) o_46@@2 f_37@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@11 Mask@@34) (select (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| ExhaleHeap@@11) o_46@@2 f_37@@41))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_8514) (ExhaleHeap@@12 T@PolymorphicMapType_8514) (Mask@@35 T@PolymorphicMapType_8535) (o_46@@3 T@Ref) (f_37@@42 T@Field_12658_12659) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@12 Mask@@35) (=> (HasDirectPerm_4601_4602 Mask@@35 o_46@@3 f_37@@42) (= (select (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| Heap@@19) o_46@@3 f_37@@42) (select (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| ExhaleHeap@@12) o_46@@3 f_37@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@12 Mask@@35) (select (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| ExhaleHeap@@12) o_46@@3 f_37@@42))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_8514) (ExhaleHeap@@13 T@PolymorphicMapType_8514) (Mask@@36 T@PolymorphicMapType_8535) (o_46@@4 T@Ref) (f_37@@43 T@Field_4601_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@13 Mask@@36) (=> (HasDirectPerm_4601_1189 Mask@@36 o_46@@4 f_37@@43) (= (select (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| Heap@@20) o_46@@4 f_37@@43) (select (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| ExhaleHeap@@13) o_46@@4 f_37@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@13 Mask@@36) (select (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| ExhaleHeap@@13) o_46@@4 f_37@@43))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_8514) (ExhaleHeap@@14 T@PolymorphicMapType_8514) (Mask@@37 T@PolymorphicMapType_8535) (o_46@@5 T@Ref) (f_37@@44 T@Field_4564_14146) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@14 Mask@@37) (=> (HasDirectPerm_4564_27386 Mask@@37 o_46@@5 f_37@@44) (= (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@21) o_46@@5 f_37@@44) (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| ExhaleHeap@@14) o_46@@5 f_37@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@14 Mask@@37) (select (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| ExhaleHeap@@14) o_46@@5 f_37@@44))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_8514) (ExhaleHeap@@15 T@PolymorphicMapType_8514) (Mask@@38 T@PolymorphicMapType_8535) (o_46@@6 T@Ref) (f_37@@45 T@Field_8587_8588) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@15 Mask@@38) (=> (HasDirectPerm_4564_8588 Mask@@38 o_46@@6 f_37@@45) (= (select (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| Heap@@22) o_46@@6 f_37@@45) (select (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| ExhaleHeap@@15) o_46@@6 f_37@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@15 Mask@@38) (select (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| ExhaleHeap@@15) o_46@@6 f_37@@45))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_8514) (ExhaleHeap@@16 T@PolymorphicMapType_8514) (Mask@@39 T@PolymorphicMapType_8535) (o_46@@7 T@Ref) (f_37@@46 T@Field_8574_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@16 Mask@@39) (=> (HasDirectPerm_4564_53 Mask@@39 o_46@@7 f_37@@46) (= (select (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| Heap@@23) o_46@@7 f_37@@46) (select (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| ExhaleHeap@@16) o_46@@7 f_37@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@16 Mask@@39) (select (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| ExhaleHeap@@16) o_46@@7 f_37@@46))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_8514) (ExhaleHeap@@17 T@PolymorphicMapType_8514) (Mask@@40 T@PolymorphicMapType_8535) (o_46@@8 T@Ref) (f_37@@47 T@Field_4564_4602) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@17 Mask@@40) (=> (HasDirectPerm_4564_4602 Mask@@40 o_46@@8 f_37@@47) (= (select (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| Heap@@24) o_46@@8 f_37@@47) (select (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| ExhaleHeap@@17) o_46@@8 f_37@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@17 Mask@@40) (select (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| ExhaleHeap@@17) o_46@@8 f_37@@47))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_8514) (ExhaleHeap@@18 T@PolymorphicMapType_8514) (Mask@@41 T@PolymorphicMapType_8535) (o_46@@9 T@Ref) (f_37@@48 T@Field_11901_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@18 Mask@@41) (=> (HasDirectPerm_4564_1189 Mask@@41 o_46@@9 f_37@@48) (= (select (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| Heap@@25) o_46@@9 f_37@@48) (select (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| ExhaleHeap@@18) o_46@@9 f_37@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@18 Mask@@41) (select (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| ExhaleHeap@@18) o_46@@9 f_37@@48))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_4564_14146) ) (! (= (select (|PolymorphicMapType_8535_4564_37097#PolymorphicMapType_8535| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8535_4564_37097#PolymorphicMapType_8535| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_8587_8588) ) (! (= (select (|PolymorphicMapType_8535_4564_8588#PolymorphicMapType_8535| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8535_4564_8588#PolymorphicMapType_8535| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_8574_53) ) (! (= (select (|PolymorphicMapType_8535_4564_53#PolymorphicMapType_8535| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8535_4564_53#PolymorphicMapType_8535| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_11901_1189) ) (! (= (select (|PolymorphicMapType_8535_4564_1189#PolymorphicMapType_8535| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8535_4564_1189#PolymorphicMapType_8535| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_4564_4602) ) (! (= (select (|PolymorphicMapType_8535_4564_4602#PolymorphicMapType_8535| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8535_4564_4602#PolymorphicMapType_8535| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_14141_14146) ) (! (= (select (|PolymorphicMapType_8535_4601_36683#PolymorphicMapType_8535| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8535_4601_36683#PolymorphicMapType_8535| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_4601_8588) ) (! (= (select (|PolymorphicMapType_8535_4601_8588#PolymorphicMapType_8535| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8535_4601_8588#PolymorphicMapType_8535| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_4601_53) ) (! (= (select (|PolymorphicMapType_8535_4601_53#PolymorphicMapType_8535| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8535_4601_53#PolymorphicMapType_8535| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_4601_1189) ) (! (= (select (|PolymorphicMapType_8535_4601_1189#PolymorphicMapType_8535| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8535_4601_1189#PolymorphicMapType_8535| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_12658_12659) ) (! (= (select (|PolymorphicMapType_8535_4601_4602#PolymorphicMapType_8535| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8535_4601_4602#PolymorphicMapType_8535| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_8535) (SummandMask1 T@PolymorphicMapType_8535) (SummandMask2 T@PolymorphicMapType_8535) (o_2@@39 T@Ref) (f_4@@39 T@Field_4564_14146) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_8535_4564_37097#PolymorphicMapType_8535| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_8535_4564_37097#PolymorphicMapType_8535| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_8535_4564_37097#PolymorphicMapType_8535| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8535_4564_37097#PolymorphicMapType_8535| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8535_4564_37097#PolymorphicMapType_8535| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8535_4564_37097#PolymorphicMapType_8535| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_8535) (SummandMask1@@0 T@PolymorphicMapType_8535) (SummandMask2@@0 T@PolymorphicMapType_8535) (o_2@@40 T@Ref) (f_4@@40 T@Field_8587_8588) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_8535_4564_8588#PolymorphicMapType_8535| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_8535_4564_8588#PolymorphicMapType_8535| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_8535_4564_8588#PolymorphicMapType_8535| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8535_4564_8588#PolymorphicMapType_8535| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8535_4564_8588#PolymorphicMapType_8535| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8535_4564_8588#PolymorphicMapType_8535| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_8535) (SummandMask1@@1 T@PolymorphicMapType_8535) (SummandMask2@@1 T@PolymorphicMapType_8535) (o_2@@41 T@Ref) (f_4@@41 T@Field_8574_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_8535_4564_53#PolymorphicMapType_8535| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_8535_4564_53#PolymorphicMapType_8535| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_8535_4564_53#PolymorphicMapType_8535| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8535_4564_53#PolymorphicMapType_8535| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8535_4564_53#PolymorphicMapType_8535| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8535_4564_53#PolymorphicMapType_8535| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_8535) (SummandMask1@@2 T@PolymorphicMapType_8535) (SummandMask2@@2 T@PolymorphicMapType_8535) (o_2@@42 T@Ref) (f_4@@42 T@Field_11901_1189) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_8535_4564_1189#PolymorphicMapType_8535| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_8535_4564_1189#PolymorphicMapType_8535| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_8535_4564_1189#PolymorphicMapType_8535| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8535_4564_1189#PolymorphicMapType_8535| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8535_4564_1189#PolymorphicMapType_8535| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8535_4564_1189#PolymorphicMapType_8535| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_8535) (SummandMask1@@3 T@PolymorphicMapType_8535) (SummandMask2@@3 T@PolymorphicMapType_8535) (o_2@@43 T@Ref) (f_4@@43 T@Field_4564_4602) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_8535_4564_4602#PolymorphicMapType_8535| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_8535_4564_4602#PolymorphicMapType_8535| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_8535_4564_4602#PolymorphicMapType_8535| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8535_4564_4602#PolymorphicMapType_8535| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8535_4564_4602#PolymorphicMapType_8535| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8535_4564_4602#PolymorphicMapType_8535| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_8535) (SummandMask1@@4 T@PolymorphicMapType_8535) (SummandMask2@@4 T@PolymorphicMapType_8535) (o_2@@44 T@Ref) (f_4@@44 T@Field_14141_14146) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_8535_4601_36683#PolymorphicMapType_8535| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_8535_4601_36683#PolymorphicMapType_8535| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_8535_4601_36683#PolymorphicMapType_8535| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8535_4601_36683#PolymorphicMapType_8535| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8535_4601_36683#PolymorphicMapType_8535| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8535_4601_36683#PolymorphicMapType_8535| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_8535) (SummandMask1@@5 T@PolymorphicMapType_8535) (SummandMask2@@5 T@PolymorphicMapType_8535) (o_2@@45 T@Ref) (f_4@@45 T@Field_4601_8588) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_8535_4601_8588#PolymorphicMapType_8535| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_8535_4601_8588#PolymorphicMapType_8535| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_8535_4601_8588#PolymorphicMapType_8535| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8535_4601_8588#PolymorphicMapType_8535| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8535_4601_8588#PolymorphicMapType_8535| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8535_4601_8588#PolymorphicMapType_8535| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_8535) (SummandMask1@@6 T@PolymorphicMapType_8535) (SummandMask2@@6 T@PolymorphicMapType_8535) (o_2@@46 T@Ref) (f_4@@46 T@Field_4601_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_8535_4601_53#PolymorphicMapType_8535| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_8535_4601_53#PolymorphicMapType_8535| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_8535_4601_53#PolymorphicMapType_8535| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8535_4601_53#PolymorphicMapType_8535| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8535_4601_53#PolymorphicMapType_8535| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8535_4601_53#PolymorphicMapType_8535| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_8535) (SummandMask1@@7 T@PolymorphicMapType_8535) (SummandMask2@@7 T@PolymorphicMapType_8535) (o_2@@47 T@Ref) (f_4@@47 T@Field_4601_1189) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_8535_4601_1189#PolymorphicMapType_8535| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_8535_4601_1189#PolymorphicMapType_8535| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_8535_4601_1189#PolymorphicMapType_8535| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_8535_4601_1189#PolymorphicMapType_8535| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_8535_4601_1189#PolymorphicMapType_8535| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_8535_4601_1189#PolymorphicMapType_8535| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_8535) (SummandMask1@@8 T@PolymorphicMapType_8535) (SummandMask2@@8 T@PolymorphicMapType_8535) (o_2@@48 T@Ref) (f_4@@48 T@Field_12658_12659) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_8535_4601_4602#PolymorphicMapType_8535| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_8535_4601_4602#PolymorphicMapType_8535| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_8535_4601_4602#PolymorphicMapType_8535| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_8535_4601_4602#PolymorphicMapType_8535| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_8535_4601_4602#PolymorphicMapType_8535| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_8535_4601_4602#PolymorphicMapType_8535| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_8514) (Mask@@42 T@PolymorphicMapType_8535) (x@@6 T@Ref) ) (!  (=> (state Heap@@26 Mask@@42) (= (|get'| Heap@@26 x@@6) (|get#frame| (select (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| Heap@@26) null (pred_3 x@@6)) x@@6)))
 :qid |stdinbpl.253:15|
 :skolemid |28|
 :pattern ( (state Heap@@26 Mask@@42) (|get'| Heap@@26 x@@6))
)))
(assert (forall ((x@@7 T@Ref) ) (! (= (getPredWandId_4601_4602 (pred_3 x@@7)) 0)
 :qid |stdinbpl.339:15|
 :skolemid |31|
 :pattern ( (pred_3 x@@7))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_8514) (o_12 T@Ref) (f_24 T@Field_14141_14146) (v T@PolymorphicMapType_9063) ) (! (succHeap Heap@@27 (PolymorphicMapType_8514 (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| Heap@@27) (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| Heap@@27) (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| Heap@@27) (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| Heap@@27) (store (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@27) o_12 f_24 v) (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| Heap@@27) (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@27) (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| Heap@@27) (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| Heap@@27) (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8514 (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| Heap@@27) (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| Heap@@27) (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| Heap@@27) (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| Heap@@27) (store (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@27) o_12 f_24 v) (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| Heap@@27) (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@27) (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| Heap@@27) (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| Heap@@27) (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_8514) (o_12@@0 T@Ref) (f_24@@0 T@Field_12658_12659) (v@@0 T@FrameType) ) (! (succHeap Heap@@28 (PolymorphicMapType_8514 (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| Heap@@28) (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| Heap@@28) (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| Heap@@28) (store (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| Heap@@28) o_12@@0 f_24@@0 v@@0) (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@28) (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| Heap@@28) (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@28) (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| Heap@@28) (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| Heap@@28) (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8514 (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| Heap@@28) (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| Heap@@28) (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| Heap@@28) (store (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| Heap@@28) o_12@@0 f_24@@0 v@@0) (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@28) (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| Heap@@28) (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@28) (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| Heap@@28) (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| Heap@@28) (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_8514) (o_12@@1 T@Ref) (f_24@@1 T@Field_4601_1189) (v@@1 Int) ) (! (succHeap Heap@@29 (PolymorphicMapType_8514 (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| Heap@@29) (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| Heap@@29) (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| Heap@@29) (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| Heap@@29) (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@29) (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| Heap@@29) (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@29) (store (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| Heap@@29) o_12@@1 f_24@@1 v@@1) (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| Heap@@29) (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8514 (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| Heap@@29) (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| Heap@@29) (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| Heap@@29) (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| Heap@@29) (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@29) (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| Heap@@29) (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@29) (store (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| Heap@@29) o_12@@1 f_24@@1 v@@1) (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| Heap@@29) (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_8514) (o_12@@2 T@Ref) (f_24@@2 T@Field_4601_8588) (v@@2 T@Ref) ) (! (succHeap Heap@@30 (PolymorphicMapType_8514 (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| Heap@@30) (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| Heap@@30) (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| Heap@@30) (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| Heap@@30) (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@30) (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| Heap@@30) (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@30) (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| Heap@@30) (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| Heap@@30) (store (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| Heap@@30) o_12@@2 f_24@@2 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8514 (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| Heap@@30) (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| Heap@@30) (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| Heap@@30) (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| Heap@@30) (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@30) (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| Heap@@30) (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@30) (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| Heap@@30) (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| Heap@@30) (store (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| Heap@@30) o_12@@2 f_24@@2 v@@2)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_8514) (o_12@@3 T@Ref) (f_24@@3 T@Field_4601_53) (v@@3 Bool) ) (! (succHeap Heap@@31 (PolymorphicMapType_8514 (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| Heap@@31) (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| Heap@@31) (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| Heap@@31) (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| Heap@@31) (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@31) (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| Heap@@31) (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@31) (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| Heap@@31) (store (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| Heap@@31) o_12@@3 f_24@@3 v@@3) (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8514 (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| Heap@@31) (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| Heap@@31) (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| Heap@@31) (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| Heap@@31) (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@31) (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| Heap@@31) (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@31) (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| Heap@@31) (store (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| Heap@@31) o_12@@3 f_24@@3 v@@3) (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_8514) (o_12@@4 T@Ref) (f_24@@4 T@Field_4564_14146) (v@@4 T@PolymorphicMapType_9063) ) (! (succHeap Heap@@32 (PolymorphicMapType_8514 (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| Heap@@32) (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| Heap@@32) (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| Heap@@32) (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| Heap@@32) (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@32) (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| Heap@@32) (store (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@32) o_12@@4 f_24@@4 v@@4) (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| Heap@@32) (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| Heap@@32) (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8514 (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| Heap@@32) (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| Heap@@32) (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| Heap@@32) (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| Heap@@32) (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@32) (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| Heap@@32) (store (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@32) o_12@@4 f_24@@4 v@@4) (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| Heap@@32) (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| Heap@@32) (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_8514) (o_12@@5 T@Ref) (f_24@@5 T@Field_4564_4602) (v@@5 T@FrameType) ) (! (succHeap Heap@@33 (PolymorphicMapType_8514 (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| Heap@@33) (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| Heap@@33) (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| Heap@@33) (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| Heap@@33) (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@33) (store (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| Heap@@33) o_12@@5 f_24@@5 v@@5) (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@33) (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| Heap@@33) (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| Heap@@33) (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8514 (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| Heap@@33) (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| Heap@@33) (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| Heap@@33) (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| Heap@@33) (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@33) (store (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| Heap@@33) o_12@@5 f_24@@5 v@@5) (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@33) (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| Heap@@33) (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| Heap@@33) (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_8514) (o_12@@6 T@Ref) (f_24@@6 T@Field_11901_1189) (v@@6 Int) ) (! (succHeap Heap@@34 (PolymorphicMapType_8514 (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| Heap@@34) (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| Heap@@34) (store (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| Heap@@34) o_12@@6 f_24@@6 v@@6) (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| Heap@@34) (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@34) (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| Heap@@34) (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@34) (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| Heap@@34) (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| Heap@@34) (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8514 (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| Heap@@34) (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| Heap@@34) (store (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| Heap@@34) o_12@@6 f_24@@6 v@@6) (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| Heap@@34) (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@34) (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| Heap@@34) (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@34) (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| Heap@@34) (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| Heap@@34) (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_8514) (o_12@@7 T@Ref) (f_24@@7 T@Field_8587_8588) (v@@7 T@Ref) ) (! (succHeap Heap@@35 (PolymorphicMapType_8514 (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| Heap@@35) (store (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| Heap@@35) o_12@@7 f_24@@7 v@@7) (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| Heap@@35) (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| Heap@@35) (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@35) (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| Heap@@35) (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@35) (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| Heap@@35) (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| Heap@@35) (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8514 (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| Heap@@35) (store (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| Heap@@35) o_12@@7 f_24@@7 v@@7) (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| Heap@@35) (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| Heap@@35) (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@35) (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| Heap@@35) (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@35) (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| Heap@@35) (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| Heap@@35) (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_8514) (o_12@@8 T@Ref) (f_24@@8 T@Field_8574_53) (v@@8 Bool) ) (! (succHeap Heap@@36 (PolymorphicMapType_8514 (store (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| Heap@@36) o_12@@8 f_24@@8 v@@8) (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| Heap@@36) (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| Heap@@36) (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| Heap@@36) (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@36) (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| Heap@@36) (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@36) (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| Heap@@36) (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| Heap@@36) (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8514 (store (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| Heap@@36) o_12@@8 f_24@@8 v@@8) (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| Heap@@36) (|PolymorphicMapType_8514_4564_1189#PolymorphicMapType_8514| Heap@@36) (|PolymorphicMapType_8514_4601_4602#PolymorphicMapType_8514| Heap@@36) (|PolymorphicMapType_8514_4605_14233#PolymorphicMapType_8514| Heap@@36) (|PolymorphicMapType_8514_4564_4602#PolymorphicMapType_8514| Heap@@36) (|PolymorphicMapType_8514_4564_27428#PolymorphicMapType_8514| Heap@@36) (|PolymorphicMapType_8514_4601_1189#PolymorphicMapType_8514| Heap@@36) (|PolymorphicMapType_8514_4601_53#PolymorphicMapType_8514| Heap@@36) (|PolymorphicMapType_8514_4601_8588#PolymorphicMapType_8514| Heap@@36)))
)))
(assert (forall ((x@@8 T@Ref) ) (! (= (PredicateMaskField_4601 (pred_3 x@@8)) (|pred#sm| x@@8))
 :qid |stdinbpl.331:15|
 :skolemid |29|
 :pattern ( (PredicateMaskField_4601 (pred_3 x@@8)))
)))
(assert (forall ((o_12@@9 T@Ref) (f_16 T@Field_8587_8588) (Heap@@37 T@PolymorphicMapType_8514) ) (!  (=> (select (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| Heap@@37) o_12@@9 $allocated) (select (|PolymorphicMapType_8514_4436_53#PolymorphicMapType_8514| Heap@@37) (select (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| Heap@@37) o_12@@9 f_16) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_8514_4439_4440#PolymorphicMapType_8514| Heap@@37) o_12@@9 f_16))
)))
(assert (forall ((p@@2 T@Field_12658_12659) (v_1@@1 T@FrameType) (q T@Field_12658_12659) (w@@1 T@FrameType) (r T@Field_12658_12659) (u T@FrameType) ) (!  (=> (and (InsidePredicate_12658_12658 p@@2 v_1@@1 q w@@1) (InsidePredicate_12658_12658 q w@@1 r u)) (InsidePredicate_12658_12658 p@@2 v_1@@1 r u))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12658_12658 p@@2 v_1@@1 q w@@1) (InsidePredicate_12658_12658 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_12658_12659) (v_1@@2 T@FrameType) (q@@0 T@Field_12658_12659) (w@@2 T@FrameType) (r@@0 T@Field_4564_4602) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_12658_12658 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_12658_8574 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_12658_8574 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12658_12658 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_12658_8574 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_12658_12659) (v_1@@3 T@FrameType) (q@@1 T@Field_4564_4602) (w@@3 T@FrameType) (r@@1 T@Field_12658_12659) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_12658_8574 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_8574_12658 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_12658_12658 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12658_8574 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_8574_12658 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_12658_12659) (v_1@@4 T@FrameType) (q@@2 T@Field_4564_4602) (w@@4 T@FrameType) (r@@2 T@Field_4564_4602) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_12658_8574 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_8574_8574 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_12658_8574 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12658_8574 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_8574_8574 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_4564_4602) (v_1@@5 T@FrameType) (q@@3 T@Field_12658_12659) (w@@5 T@FrameType) (r@@3 T@Field_12658_12659) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_8574_12658 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_12658_12658 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_8574_12658 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8574_12658 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_12658_12658 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_4564_4602) (v_1@@6 T@FrameType) (q@@4 T@Field_12658_12659) (w@@6 T@FrameType) (r@@4 T@Field_4564_4602) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_8574_12658 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_12658_8574 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_8574_8574 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8574_12658 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_12658_8574 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_4564_4602) (v_1@@7 T@FrameType) (q@@5 T@Field_4564_4602) (w@@7 T@FrameType) (r@@5 T@Field_12658_12659) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_8574_8574 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_8574_12658 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_8574_12658 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8574_8574 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_8574_12658 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_4564_4602) (v_1@@8 T@FrameType) (q@@6 T@Field_4564_4602) (w@@8 T@FrameType) (r@@6 T@Field_4564_4602) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_8574_8574 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_8574_8574 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_8574_8574 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8574_8574 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_8574_8574 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@38 T@PolymorphicMapType_8514) (v_2@@1 Int) (i@@1 Int) ) (!  (and (= (fun Heap@@38 v_2@@1 i@@1) (|fun'| Heap@@38 v_2@@1 i@@1)) (dummyFunction_1373 (|fun#triggerStateless| v_2@@1 i@@1)))
 :qid |stdinbpl.195:15|
 :skolemid |22|
 :pattern ( (fun Heap@@38 v_2@@1 i@@1))
)))
; Valid

