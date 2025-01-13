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
(declare-sort T@Field_29417_53 0)
(declare-sort T@Field_29430_29431 0)
(declare-sort T@Field_35588_3612 0)
(declare-sort T@Field_20221_84987 0)
(declare-sort T@Field_20221_84854 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_29378 0)) (((PolymorphicMapType_29378 (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| (Array T@Ref T@Field_35588_3612 Real)) (|PolymorphicMapType_29378_20221_53#PolymorphicMapType_29378| (Array T@Ref T@Field_29417_53 Real)) (|PolymorphicMapType_29378_20221_29431#PolymorphicMapType_29378| (Array T@Ref T@Field_29430_29431 Real)) (|PolymorphicMapType_29378_20221_84854#PolymorphicMapType_29378| (Array T@Ref T@Field_20221_84854 Real)) (|PolymorphicMapType_29378_20221_89109#PolymorphicMapType_29378| (Array T@Ref T@Field_20221_84987 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_29906 0)) (((PolymorphicMapType_29906 (|PolymorphicMapType_29906_29417_53#PolymorphicMapType_29906| (Array T@Ref T@Field_29417_53 Bool)) (|PolymorphicMapType_29906_29417_29431#PolymorphicMapType_29906| (Array T@Ref T@Field_29430_29431 Bool)) (|PolymorphicMapType_29906_29417_3612#PolymorphicMapType_29906| (Array T@Ref T@Field_35588_3612 Bool)) (|PolymorphicMapType_29906_29417_84854#PolymorphicMapType_29906| (Array T@Ref T@Field_20221_84854 Bool)) (|PolymorphicMapType_29906_29417_86165#PolymorphicMapType_29906| (Array T@Ref T@Field_20221_84987 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_29357 0)) (((PolymorphicMapType_29357 (|PolymorphicMapType_29357_19977_53#PolymorphicMapType_29357| (Array T@Ref T@Field_29417_53 Bool)) (|PolymorphicMapType_29357_19980_19981#PolymorphicMapType_29357| (Array T@Ref T@Field_29430_29431 T@Ref)) (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| (Array T@Ref T@Field_35588_3612 Int)) (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| (Array T@Ref T@Field_20221_84987 T@PolymorphicMapType_29906)) (|PolymorphicMapType_29357_29417_84854#PolymorphicMapType_29357| (Array T@Ref T@Field_20221_84854 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_29417_53)
(declare-fun val () T@Field_35588_3612)
(declare-sort T@Seq_3395 0)
(declare-fun |Seq#Length_3395| (T@Seq_3395) Int)
(declare-fun |Seq#Drop_4579| (T@Seq_3395 Int) T@Seq_3395)
(declare-fun succHeap (T@PolymorphicMapType_29357 T@PolymorphicMapType_29357) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_29357 T@PolymorphicMapType_29357) Bool)
(declare-fun state (T@PolymorphicMapType_29357 T@PolymorphicMapType_29378) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_29378) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_29906)
(declare-fun |Seq#Index_3395| (T@Seq_3395 Int) Int)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Empty_3395| () T@Seq_3395)
(declare-fun |dummy'| (T@PolymorphicMapType_29357 Int) Bool)
(declare-fun dummyFunction_3791 (Bool) Bool)
(declare-fun |dummy#triggerStateless| (Int) Bool)
(declare-fun |Seq#Update_3395| (T@Seq_3395 Int Int) T@Seq_3395)
(declare-fun |Seq#Take_4579| (T@Seq_3395 Int) T@Seq_3395)
(declare-fun |Seq#Contains_3395| (T@Seq_3395 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3395)
(declare-fun |Seq#Skolem_3395| (T@Seq_3395 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_29357 T@PolymorphicMapType_29357 T@PolymorphicMapType_29378) Bool)
(declare-fun IsPredicateField_20221_84945 (T@Field_20221_84854) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_20221 (T@Field_20221_84854) T@Field_20221_84987)
(declare-fun HasDirectPerm_20221_84918 (T@PolymorphicMapType_29378 T@Ref T@Field_20221_84854) Bool)
(declare-fun IsWandField_20221_86692 (T@Field_20221_84854) Bool)
(declare-fun WandMaskField_20221 (T@Field_20221_84854) T@Field_20221_84987)
(declare-fun |Seq#Singleton_4579| (Int) T@Seq_3395)
(declare-fun dummy (T@PolymorphicMapType_29357 Int) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |Seq#Append_4579| (T@Seq_3395 T@Seq_3395) T@Seq_3395)
(declare-fun dummyHeap () T@PolymorphicMapType_29357)
(declare-fun ZeroMask () T@PolymorphicMapType_29378)
(declare-fun InsidePredicate_29417_29417 (T@Field_20221_84854 T@FrameType T@Field_20221_84854 T@FrameType) Bool)
(declare-fun IsPredicateField_20221_3612 (T@Field_35588_3612) Bool)
(declare-fun IsWandField_20221_3612 (T@Field_35588_3612) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_20221_90238 (T@Field_20221_84987) Bool)
(declare-fun IsWandField_20221_90254 (T@Field_20221_84987) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_20221_29431 (T@Field_29430_29431) Bool)
(declare-fun IsWandField_20221_29431 (T@Field_29430_29431) Bool)
(declare-fun IsPredicateField_20221_53 (T@Field_29417_53) Bool)
(declare-fun IsWandField_20221_53 (T@Field_29417_53) Bool)
(declare-fun HasDirectPerm_20221_90692 (T@PolymorphicMapType_29378 T@Ref T@Field_20221_84987) Bool)
(declare-fun HasDirectPerm_20221_29431 (T@PolymorphicMapType_29378 T@Ref T@Field_29430_29431) Bool)
(declare-fun HasDirectPerm_20221_53 (T@PolymorphicMapType_29378 T@Ref T@Field_29417_53) Bool)
(declare-fun HasDirectPerm_20221_3612 (T@PolymorphicMapType_29378 T@Ref T@Field_35588_3612) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_29378 T@PolymorphicMapType_29378 T@PolymorphicMapType_29378) Bool)
(declare-fun |Seq#Equal_3395| (T@Seq_3395 T@Seq_3395) Bool)
(declare-fun |dummy#frame| (T@FrameType Int) Bool)
(declare-sort T@IArrayDomainType 0)
(declare-fun len_1 (T@IArrayDomainType) Int)
(declare-fun |Seq#ContainsTrigger_3395| (T@Seq_3395 Int) Bool)
(declare-fun loc (T@IArrayDomainType Int) T@Ref)
(declare-fun first (T@Ref) T@IArrayDomainType)
(declare-fun second (T@Ref) Int)
(declare-fun |Seq#SkolemDiff_3395| (T@Seq_3395 T@Seq_3395) Int)
(assert (forall ((s T@Seq_3395) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_3395| s)) (= (|Seq#Length_3395| (|Seq#Drop_4579| s n)) (- (|Seq#Length_3395| s) n))) (=> (< (|Seq#Length_3395| s) n) (= (|Seq#Length_3395| (|Seq#Drop_4579| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_3395| (|Seq#Drop_4579| s n)) (|Seq#Length_3395| s))))
 :qid |stdinbpl.354:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3395| (|Seq#Drop_4579| s n)))
 :pattern ( (|Seq#Length_3395| s) (|Seq#Drop_4579| s n))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_29357) (Heap1 T@PolymorphicMapType_29357) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_29357) (Mask T@PolymorphicMapType_29378) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_29357) (Heap1@@0 T@PolymorphicMapType_29357) (Heap2 T@PolymorphicMapType_29357) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_20221_84987) ) (!  (not (select (|PolymorphicMapType_29906_29417_86165#PolymorphicMapType_29906| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_29906_29417_86165#PolymorphicMapType_29906| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_20221_84854) ) (!  (not (select (|PolymorphicMapType_29906_29417_84854#PolymorphicMapType_29906| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_29906_29417_84854#PolymorphicMapType_29906| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_35588_3612) ) (!  (not (select (|PolymorphicMapType_29906_29417_3612#PolymorphicMapType_29906| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_29906_29417_3612#PolymorphicMapType_29906| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_29430_29431) ) (!  (not (select (|PolymorphicMapType_29906_29417_29431#PolymorphicMapType_29906| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_29906_29417_29431#PolymorphicMapType_29906| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_29417_53) ) (!  (not (select (|PolymorphicMapType_29906_29417_53#PolymorphicMapType_29906| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_29906_29417_53#PolymorphicMapType_29906| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((s@@0 T@Seq_3395) (n@@0 Int) (j Int) ) (!  (=> (and (and (< 0 n@@0) (<= 0 j)) (< j (- (|Seq#Length_3395| s@@0) n@@0))) (and (= (|Seq#Sub| (|Seq#Add| j n@@0) n@@0) j) (= (|Seq#Index_3395| (|Seq#Drop_4579| s@@0 n@@0) j) (|Seq#Index_3395| s@@0 (|Seq#Add| j n@@0)))))
 :qid |stdinbpl.375:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3395| (|Seq#Drop_4579| s@@0 n@@0) j))
)))
(assert (= (|Seq#Length_3395| |Seq#Empty_3395|) 0))
(assert (forall ((Heap@@0 T@PolymorphicMapType_29357) (i Int) ) (! (dummyFunction_3791 (|dummy#triggerStateless| i))
 :qid |stdinbpl.671:15|
 :skolemid |61|
 :pattern ( (|dummy'| Heap@@0 i))
)))
(assert (forall ((s@@1 T@Seq_3395) (i@@0 Int) (v Int) (n@@1 Int) ) (!  (=> (and (<= 0 n@@1) (< n@@1 (|Seq#Length_3395| s@@1))) (and (=> (= i@@0 n@@1) (= (|Seq#Index_3395| (|Seq#Update_3395| s@@1 i@@0 v) n@@1) v)) (=> (not (= i@@0 n@@1)) (= (|Seq#Index_3395| (|Seq#Update_3395| s@@1 i@@0 v) n@@1) (|Seq#Index_3395| s@@1 n@@1)))))
 :qid |stdinbpl.330:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3395| (|Seq#Update_3395| s@@1 i@@0 v) n@@1))
 :pattern ( (|Seq#Index_3395| s@@1 n@@1) (|Seq#Update_3395| s@@1 i@@0 v))
)))
(assert (forall ((s@@2 T@Seq_3395) (n@@2 Int) ) (!  (and (=> (<= 0 n@@2) (and (=> (<= n@@2 (|Seq#Length_3395| s@@2)) (= (|Seq#Length_3395| (|Seq#Take_4579| s@@2 n@@2)) n@@2)) (=> (< (|Seq#Length_3395| s@@2) n@@2) (= (|Seq#Length_3395| (|Seq#Take_4579| s@@2 n@@2)) (|Seq#Length_3395| s@@2))))) (=> (< n@@2 0) (= (|Seq#Length_3395| (|Seq#Take_4579| s@@2 n@@2)) 0)))
 :qid |stdinbpl.341:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3395| (|Seq#Take_4579| s@@2 n@@2)))
 :pattern ( (|Seq#Take_4579| s@@2 n@@2) (|Seq#Length_3395| s@@2))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@0 Int) ) (! (= (|Seq#Contains_3395| (|Seq#Range| q@min q@max) v@@0)  (and (<= q@min v@@0) (< v@@0 q@max)))
 :qid |stdinbpl.615:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3395| (|Seq#Range| q@min q@max) v@@0))
)))
(assert (forall ((s@@3 T@Seq_3395) (x Int) ) (!  (=> (|Seq#Contains_3395| s@@3 x) (and (and (<= 0 (|Seq#Skolem_3395| s@@3 x)) (< (|Seq#Skolem_3395| s@@3 x) (|Seq#Length_3395| s@@3))) (= (|Seq#Index_3395| s@@3 (|Seq#Skolem_3395| s@@3 x)) x)))
 :qid |stdinbpl.473:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3395| s@@3 x))
)))
(assert (forall ((s@@4 T@Seq_3395) (n@@3 Int) ) (!  (=> (<= n@@3 0) (= (|Seq#Drop_4579| s@@4 n@@3) s@@4))
 :qid |stdinbpl.457:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_4579| s@@4 n@@3))
)))
(assert (forall ((i@@1 Int) (j@@0 Int) ) (! (= (|Seq#Sub| i@@1 j@@0) (- i@@1 j@@0))
 :qid |stdinbpl.310:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@0))
)))
(assert (forall ((i@@2 Int) (j@@1 Int) ) (! (= (|Seq#Add| i@@2 j@@1) (+ i@@2 j@@1))
 :qid |stdinbpl.308:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@1))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_29357) (ExhaleHeap T@PolymorphicMapType_29357) (Mask@@0 T@PolymorphicMapType_29378) (pm_f_14 T@Field_20221_84854) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_20221_84918 Mask@@0 null pm_f_14) (IsPredicateField_20221_84945 pm_f_14)) (= (select (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| Heap@@1) null (PredicateMaskField_20221 pm_f_14)) (select (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| ExhaleHeap) null (PredicateMaskField_20221 pm_f_14)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_20221_84945 pm_f_14) (select (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| ExhaleHeap) null (PredicateMaskField_20221 pm_f_14)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_29357) (ExhaleHeap@@0 T@PolymorphicMapType_29357) (Mask@@1 T@PolymorphicMapType_29378) (pm_f_14@@0 T@Field_20221_84854) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_20221_84918 Mask@@1 null pm_f_14@@0) (IsWandField_20221_86692 pm_f_14@@0)) (= (select (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| Heap@@2) null (WandMaskField_20221 pm_f_14@@0)) (select (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| ExhaleHeap@@0) null (WandMaskField_20221 pm_f_14@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsWandField_20221_86692 pm_f_14@@0) (select (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| ExhaleHeap@@0) null (WandMaskField_20221 pm_f_14@@0)))
)))
(assert (forall ((x@@0 Int) (y Int) ) (! (= (|Seq#Contains_3395| (|Seq#Singleton_4579| x@@0) y) (= x@@0 y))
 :qid |stdinbpl.598:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3395| (|Seq#Singleton_4579| x@@0) y))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_29357) (Mask@@2 T@PolymorphicMapType_29378) (i@@3 Int) ) (!  (=> (and (state Heap@@3 Mask@@2) (< AssumeFunctionsAbove 0)) (dummy Heap@@3 i@@3))
 :qid |stdinbpl.677:15|
 :skolemid |62|
 :pattern ( (state Heap@@3 Mask@@2) (dummy Heap@@3 i@@3))
)))
(assert (forall ((s@@5 T@Seq_3395) (n@@4 Int) (j@@2 Int) ) (!  (=> (and (and (<= 0 j@@2) (< j@@2 n@@4)) (< j@@2 (|Seq#Length_3395| s@@5))) (= (|Seq#Index_3395| (|Seq#Take_4579| s@@5 n@@4) j@@2) (|Seq#Index_3395| s@@5 j@@2)))
 :qid |stdinbpl.349:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3395| (|Seq#Take_4579| s@@5 n@@4) j@@2))
 :pattern ( (|Seq#Index_3395| s@@5 j@@2) (|Seq#Take_4579| s@@5 n@@4))
)))
(assert (forall ((s@@6 T@Seq_3395) (t T@Seq_3395) (n@@5 Int) ) (!  (=> (and (and (> n@@5 0) (> n@@5 (|Seq#Length_3395| s@@6))) (< n@@5 (|Seq#Length_3395| (|Seq#Append_4579| s@@6 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@5 (|Seq#Length_3395| s@@6)) (|Seq#Length_3395| s@@6)) n@@5) (= (|Seq#Take_4579| (|Seq#Append_4579| s@@6 t) n@@5) (|Seq#Append_4579| s@@6 (|Seq#Take_4579| t (|Seq#Sub| n@@5 (|Seq#Length_3395| s@@6)))))))
 :qid |stdinbpl.434:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_4579| (|Seq#Append_4579| s@@6 t) n@@5))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@4 T@PolymorphicMapType_29357) (ExhaleHeap@@1 T@PolymorphicMapType_29357) (Mask@@3 T@PolymorphicMapType_29378) (o_37 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@3) (=> (select (|PolymorphicMapType_29357_19977_53#PolymorphicMapType_29357| Heap@@4) o_37 $allocated) (select (|PolymorphicMapType_29357_19977_53#PolymorphicMapType_29357| ExhaleHeap@@1) o_37 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@3) (select (|PolymorphicMapType_29357_19977_53#PolymorphicMapType_29357| ExhaleHeap@@1) o_37 $allocated))
)))
(assert (forall ((p T@Field_20221_84854) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_29417_29417 p v_1 p w))
 :qid |stdinbpl.252:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_29417_29417 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_3395) (s1 T@Seq_3395) (n@@6 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_3395|)) (not (= s1 |Seq#Empty_3395|))) (<= (|Seq#Length_3395| s0) n@@6)) (< n@@6 (|Seq#Length_3395| (|Seq#Append_4579| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@6 (|Seq#Length_3395| s0)) (|Seq#Length_3395| s0)) n@@6) (= (|Seq#Index_3395| (|Seq#Append_4579| s0 s1) n@@6) (|Seq#Index_3395| s1 (|Seq#Sub| n@@6 (|Seq#Length_3395| s0))))))
 :qid |stdinbpl.321:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3395| (|Seq#Append_4579| s0 s1) n@@6))
)))
(assert  (not (IsPredicateField_20221_3612 val)))
(assert  (not (IsWandField_20221_3612 val)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_29357) (ExhaleHeap@@2 T@PolymorphicMapType_29357) (Mask@@4 T@PolymorphicMapType_29378) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@4) (succHeap Heap@@5 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_29378) (o_2@@4 T@Ref) (f_4@@4 T@Field_20221_84987) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_29378_20221_89109#PolymorphicMapType_29378| Mask@@5) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_20221_90238 f_4@@4))) (not (IsWandField_20221_90254 f_4@@4))) (<= (select (|PolymorphicMapType_29378_20221_89109#PolymorphicMapType_29378| Mask@@5) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_29378_20221_89109#PolymorphicMapType_29378| Mask@@5) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_29378) (o_2@@5 T@Ref) (f_4@@5 T@Field_20221_84854) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_29378_20221_84854#PolymorphicMapType_29378| Mask@@6) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_20221_84945 f_4@@5))) (not (IsWandField_20221_86692 f_4@@5))) (<= (select (|PolymorphicMapType_29378_20221_84854#PolymorphicMapType_29378| Mask@@6) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_29378_20221_84854#PolymorphicMapType_29378| Mask@@6) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_29378) (o_2@@6 T@Ref) (f_4@@6 T@Field_29430_29431) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_29378_20221_29431#PolymorphicMapType_29378| Mask@@7) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_20221_29431 f_4@@6))) (not (IsWandField_20221_29431 f_4@@6))) (<= (select (|PolymorphicMapType_29378_20221_29431#PolymorphicMapType_29378| Mask@@7) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_29378_20221_29431#PolymorphicMapType_29378| Mask@@7) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_29378) (o_2@@7 T@Ref) (f_4@@7 T@Field_29417_53) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_29378_20221_53#PolymorphicMapType_29378| Mask@@8) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_20221_53 f_4@@7))) (not (IsWandField_20221_53 f_4@@7))) (<= (select (|PolymorphicMapType_29378_20221_53#PolymorphicMapType_29378| Mask@@8) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_29378_20221_53#PolymorphicMapType_29378| Mask@@8) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_29378) (o_2@@8 T@Ref) (f_4@@8 T@Field_35588_3612) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| Mask@@9) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_20221_3612 f_4@@8))) (not (IsWandField_20221_3612 f_4@@8))) (<= (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| Mask@@9) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| Mask@@9) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_29378) (o_2@@9 T@Ref) (f_4@@9 T@Field_20221_84987) ) (! (= (HasDirectPerm_20221_90692 Mask@@10 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_29378_20221_89109#PolymorphicMapType_29378| Mask@@10) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20221_90692 Mask@@10 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_29378) (o_2@@10 T@Ref) (f_4@@10 T@Field_20221_84854) ) (! (= (HasDirectPerm_20221_84918 Mask@@11 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_29378_20221_84854#PolymorphicMapType_29378| Mask@@11) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20221_84918 Mask@@11 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_29378) (o_2@@11 T@Ref) (f_4@@11 T@Field_29430_29431) ) (! (= (HasDirectPerm_20221_29431 Mask@@12 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_29378_20221_29431#PolymorphicMapType_29378| Mask@@12) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20221_29431 Mask@@12 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_29378) (o_2@@12 T@Ref) (f_4@@12 T@Field_29417_53) ) (! (= (HasDirectPerm_20221_53 Mask@@13 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_29378_20221_53#PolymorphicMapType_29378| Mask@@13) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20221_53 Mask@@13 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_29378) (o_2@@13 T@Ref) (f_4@@13 T@Field_35588_3612) ) (! (= (HasDirectPerm_20221_3612 Mask@@14 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| Mask@@14) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20221_3612 Mask@@14 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_29357) (ExhaleHeap@@3 T@PolymorphicMapType_29357) (Mask@@15 T@PolymorphicMapType_29378) (pm_f_14@@1 T@Field_20221_84854) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@15) (=> (and (HasDirectPerm_20221_84918 Mask@@15 null pm_f_14@@1) (IsPredicateField_20221_84945 pm_f_14@@1)) (and (and (and (and (forall ((o2_14 T@Ref) (f_42 T@Field_29417_53) ) (!  (=> (select (|PolymorphicMapType_29906_29417_53#PolymorphicMapType_29906| (select (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| Heap@@6) null (PredicateMaskField_20221 pm_f_14@@1))) o2_14 f_42) (= (select (|PolymorphicMapType_29357_19977_53#PolymorphicMapType_29357| Heap@@6) o2_14 f_42) (select (|PolymorphicMapType_29357_19977_53#PolymorphicMapType_29357| ExhaleHeap@@3) o2_14 f_42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_29357_19977_53#PolymorphicMapType_29357| ExhaleHeap@@3) o2_14 f_42))
)) (forall ((o2_14@@0 T@Ref) (f_42@@0 T@Field_29430_29431) ) (!  (=> (select (|PolymorphicMapType_29906_29417_29431#PolymorphicMapType_29906| (select (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| Heap@@6) null (PredicateMaskField_20221 pm_f_14@@1))) o2_14@@0 f_42@@0) (= (select (|PolymorphicMapType_29357_19980_19981#PolymorphicMapType_29357| Heap@@6) o2_14@@0 f_42@@0) (select (|PolymorphicMapType_29357_19980_19981#PolymorphicMapType_29357| ExhaleHeap@@3) o2_14@@0 f_42@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_29357_19980_19981#PolymorphicMapType_29357| ExhaleHeap@@3) o2_14@@0 f_42@@0))
))) (forall ((o2_14@@1 T@Ref) (f_42@@1 T@Field_35588_3612) ) (!  (=> (select (|PolymorphicMapType_29906_29417_3612#PolymorphicMapType_29906| (select (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| Heap@@6) null (PredicateMaskField_20221 pm_f_14@@1))) o2_14@@1 f_42@@1) (= (select (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| Heap@@6) o2_14@@1 f_42@@1) (select (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| ExhaleHeap@@3) o2_14@@1 f_42@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| ExhaleHeap@@3) o2_14@@1 f_42@@1))
))) (forall ((o2_14@@2 T@Ref) (f_42@@2 T@Field_20221_84854) ) (!  (=> (select (|PolymorphicMapType_29906_29417_84854#PolymorphicMapType_29906| (select (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| Heap@@6) null (PredicateMaskField_20221 pm_f_14@@1))) o2_14@@2 f_42@@2) (= (select (|PolymorphicMapType_29357_29417_84854#PolymorphicMapType_29357| Heap@@6) o2_14@@2 f_42@@2) (select (|PolymorphicMapType_29357_29417_84854#PolymorphicMapType_29357| ExhaleHeap@@3) o2_14@@2 f_42@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_29357_29417_84854#PolymorphicMapType_29357| ExhaleHeap@@3) o2_14@@2 f_42@@2))
))) (forall ((o2_14@@3 T@Ref) (f_42@@3 T@Field_20221_84987) ) (!  (=> (select (|PolymorphicMapType_29906_29417_86165#PolymorphicMapType_29906| (select (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| Heap@@6) null (PredicateMaskField_20221 pm_f_14@@1))) o2_14@@3 f_42@@3) (= (select (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| Heap@@6) o2_14@@3 f_42@@3) (select (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| ExhaleHeap@@3) o2_14@@3 f_42@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| ExhaleHeap@@3) o2_14@@3 f_42@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@15) (IsPredicateField_20221_84945 pm_f_14@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_29357) (ExhaleHeap@@4 T@PolymorphicMapType_29357) (Mask@@16 T@PolymorphicMapType_29378) (pm_f_14@@2 T@Field_20221_84854) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@16) (=> (and (HasDirectPerm_20221_84918 Mask@@16 null pm_f_14@@2) (IsWandField_20221_86692 pm_f_14@@2)) (and (and (and (and (forall ((o2_14@@4 T@Ref) (f_42@@4 T@Field_29417_53) ) (!  (=> (select (|PolymorphicMapType_29906_29417_53#PolymorphicMapType_29906| (select (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| Heap@@7) null (WandMaskField_20221 pm_f_14@@2))) o2_14@@4 f_42@@4) (= (select (|PolymorphicMapType_29357_19977_53#PolymorphicMapType_29357| Heap@@7) o2_14@@4 f_42@@4) (select (|PolymorphicMapType_29357_19977_53#PolymorphicMapType_29357| ExhaleHeap@@4) o2_14@@4 f_42@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_29357_19977_53#PolymorphicMapType_29357| ExhaleHeap@@4) o2_14@@4 f_42@@4))
)) (forall ((o2_14@@5 T@Ref) (f_42@@5 T@Field_29430_29431) ) (!  (=> (select (|PolymorphicMapType_29906_29417_29431#PolymorphicMapType_29906| (select (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| Heap@@7) null (WandMaskField_20221 pm_f_14@@2))) o2_14@@5 f_42@@5) (= (select (|PolymorphicMapType_29357_19980_19981#PolymorphicMapType_29357| Heap@@7) o2_14@@5 f_42@@5) (select (|PolymorphicMapType_29357_19980_19981#PolymorphicMapType_29357| ExhaleHeap@@4) o2_14@@5 f_42@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_29357_19980_19981#PolymorphicMapType_29357| ExhaleHeap@@4) o2_14@@5 f_42@@5))
))) (forall ((o2_14@@6 T@Ref) (f_42@@6 T@Field_35588_3612) ) (!  (=> (select (|PolymorphicMapType_29906_29417_3612#PolymorphicMapType_29906| (select (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| Heap@@7) null (WandMaskField_20221 pm_f_14@@2))) o2_14@@6 f_42@@6) (= (select (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| Heap@@7) o2_14@@6 f_42@@6) (select (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| ExhaleHeap@@4) o2_14@@6 f_42@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| ExhaleHeap@@4) o2_14@@6 f_42@@6))
))) (forall ((o2_14@@7 T@Ref) (f_42@@7 T@Field_20221_84854) ) (!  (=> (select (|PolymorphicMapType_29906_29417_84854#PolymorphicMapType_29906| (select (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| Heap@@7) null (WandMaskField_20221 pm_f_14@@2))) o2_14@@7 f_42@@7) (= (select (|PolymorphicMapType_29357_29417_84854#PolymorphicMapType_29357| Heap@@7) o2_14@@7 f_42@@7) (select (|PolymorphicMapType_29357_29417_84854#PolymorphicMapType_29357| ExhaleHeap@@4) o2_14@@7 f_42@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_29357_29417_84854#PolymorphicMapType_29357| ExhaleHeap@@4) o2_14@@7 f_42@@7))
))) (forall ((o2_14@@8 T@Ref) (f_42@@8 T@Field_20221_84987) ) (!  (=> (select (|PolymorphicMapType_29906_29417_86165#PolymorphicMapType_29906| (select (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| Heap@@7) null (WandMaskField_20221 pm_f_14@@2))) o2_14@@8 f_42@@8) (= (select (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| Heap@@7) o2_14@@8 f_42@@8) (select (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| ExhaleHeap@@4) o2_14@@8 f_42@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| ExhaleHeap@@4) o2_14@@8 f_42@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@16) (IsWandField_20221_86692 pm_f_14@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.240:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@3 Int) ) (!  (=> (and (<= 0 j@@3) (< j@@3 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3395| (|Seq#Range| q@min@@0 q@max@@0) j@@3) (+ q@min@@0 j@@3)))
 :qid |stdinbpl.613:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3395| (|Seq#Range| q@min@@0 q@max@@0) j@@3))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_29357) (ExhaleHeap@@5 T@PolymorphicMapType_29357) (Mask@@17 T@PolymorphicMapType_29378) (o_37@@0 T@Ref) (f_42@@9 T@Field_20221_84987) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@17) (=> (HasDirectPerm_20221_90692 Mask@@17 o_37@@0 f_42@@9) (= (select (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| Heap@@8) o_37@@0 f_42@@9) (select (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| ExhaleHeap@@5) o_37@@0 f_42@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@17) (select (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| ExhaleHeap@@5) o_37@@0 f_42@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_29357) (ExhaleHeap@@6 T@PolymorphicMapType_29357) (Mask@@18 T@PolymorphicMapType_29378) (o_37@@1 T@Ref) (f_42@@10 T@Field_20221_84854) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@18) (=> (HasDirectPerm_20221_84918 Mask@@18 o_37@@1 f_42@@10) (= (select (|PolymorphicMapType_29357_29417_84854#PolymorphicMapType_29357| Heap@@9) o_37@@1 f_42@@10) (select (|PolymorphicMapType_29357_29417_84854#PolymorphicMapType_29357| ExhaleHeap@@6) o_37@@1 f_42@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@18) (select (|PolymorphicMapType_29357_29417_84854#PolymorphicMapType_29357| ExhaleHeap@@6) o_37@@1 f_42@@10))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_29357) (ExhaleHeap@@7 T@PolymorphicMapType_29357) (Mask@@19 T@PolymorphicMapType_29378) (o_37@@2 T@Ref) (f_42@@11 T@Field_29430_29431) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@19) (=> (HasDirectPerm_20221_29431 Mask@@19 o_37@@2 f_42@@11) (= (select (|PolymorphicMapType_29357_19980_19981#PolymorphicMapType_29357| Heap@@10) o_37@@2 f_42@@11) (select (|PolymorphicMapType_29357_19980_19981#PolymorphicMapType_29357| ExhaleHeap@@7) o_37@@2 f_42@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@19) (select (|PolymorphicMapType_29357_19980_19981#PolymorphicMapType_29357| ExhaleHeap@@7) o_37@@2 f_42@@11))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_29357) (ExhaleHeap@@8 T@PolymorphicMapType_29357) (Mask@@20 T@PolymorphicMapType_29378) (o_37@@3 T@Ref) (f_42@@12 T@Field_29417_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@20) (=> (HasDirectPerm_20221_53 Mask@@20 o_37@@3 f_42@@12) (= (select (|PolymorphicMapType_29357_19977_53#PolymorphicMapType_29357| Heap@@11) o_37@@3 f_42@@12) (select (|PolymorphicMapType_29357_19977_53#PolymorphicMapType_29357| ExhaleHeap@@8) o_37@@3 f_42@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@20) (select (|PolymorphicMapType_29357_19977_53#PolymorphicMapType_29357| ExhaleHeap@@8) o_37@@3 f_42@@12))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_29357) (ExhaleHeap@@9 T@PolymorphicMapType_29357) (Mask@@21 T@PolymorphicMapType_29378) (o_37@@4 T@Ref) (f_42@@13 T@Field_35588_3612) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@21) (=> (HasDirectPerm_20221_3612 Mask@@21 o_37@@4 f_42@@13) (= (select (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| Heap@@12) o_37@@4 f_42@@13) (select (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| ExhaleHeap@@9) o_37@@4 f_42@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@21) (select (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| ExhaleHeap@@9) o_37@@4 f_42@@13))
)))
(assert (forall ((s0@@0 T@Seq_3395) (s1@@0 T@Seq_3395) ) (!  (=> (and (not (= s0@@0 |Seq#Empty_3395|)) (not (= s1@@0 |Seq#Empty_3395|))) (= (|Seq#Length_3395| (|Seq#Append_4579| s0@@0 s1@@0)) (+ (|Seq#Length_3395| s0@@0) (|Seq#Length_3395| s1@@0))))
 :qid |stdinbpl.290:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3395| (|Seq#Append_4579| s0@@0 s1@@0)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_20221_84987) ) (! (= (select (|PolymorphicMapType_29378_20221_89109#PolymorphicMapType_29378| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_29378_20221_89109#PolymorphicMapType_29378| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_20221_84854) ) (! (= (select (|PolymorphicMapType_29378_20221_84854#PolymorphicMapType_29378| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_29378_20221_84854#PolymorphicMapType_29378| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_29430_29431) ) (! (= (select (|PolymorphicMapType_29378_20221_29431#PolymorphicMapType_29378| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_29378_20221_29431#PolymorphicMapType_29378| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_29417_53) ) (! (= (select (|PolymorphicMapType_29378_20221_53#PolymorphicMapType_29378| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_29378_20221_53#PolymorphicMapType_29378| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_35588_3612) ) (! (= (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((s@@7 T@Seq_3395) (t@@0 T@Seq_3395) (n@@7 Int) ) (!  (=> (and (> n@@7 0) (> n@@7 (|Seq#Length_3395| s@@7))) (and (= (|Seq#Add| (|Seq#Sub| n@@7 (|Seq#Length_3395| s@@7)) (|Seq#Length_3395| s@@7)) n@@7) (= (|Seq#Drop_4579| (|Seq#Append_4579| s@@7 t@@0) n@@7) (|Seq#Drop_4579| t@@0 (|Seq#Sub| n@@7 (|Seq#Length_3395| s@@7))))))
 :qid |stdinbpl.447:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_4579| (|Seq#Append_4579| s@@7 t@@0) n@@7))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_29378) (SummandMask1 T@PolymorphicMapType_29378) (SummandMask2 T@PolymorphicMapType_29378) (o_2@@19 T@Ref) (f_4@@19 T@Field_20221_84987) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_29378_20221_89109#PolymorphicMapType_29378| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_29378_20221_89109#PolymorphicMapType_29378| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_29378_20221_89109#PolymorphicMapType_29378| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_29378_20221_89109#PolymorphicMapType_29378| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_29378_20221_89109#PolymorphicMapType_29378| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_29378_20221_89109#PolymorphicMapType_29378| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_29378) (SummandMask1@@0 T@PolymorphicMapType_29378) (SummandMask2@@0 T@PolymorphicMapType_29378) (o_2@@20 T@Ref) (f_4@@20 T@Field_20221_84854) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_29378_20221_84854#PolymorphicMapType_29378| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_29378_20221_84854#PolymorphicMapType_29378| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_29378_20221_84854#PolymorphicMapType_29378| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_29378_20221_84854#PolymorphicMapType_29378| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_29378_20221_84854#PolymorphicMapType_29378| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_29378_20221_84854#PolymorphicMapType_29378| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_29378) (SummandMask1@@1 T@PolymorphicMapType_29378) (SummandMask2@@1 T@PolymorphicMapType_29378) (o_2@@21 T@Ref) (f_4@@21 T@Field_29430_29431) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_29378_20221_29431#PolymorphicMapType_29378| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_29378_20221_29431#PolymorphicMapType_29378| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_29378_20221_29431#PolymorphicMapType_29378| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_29378_20221_29431#PolymorphicMapType_29378| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_29378_20221_29431#PolymorphicMapType_29378| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_29378_20221_29431#PolymorphicMapType_29378| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_29378) (SummandMask1@@2 T@PolymorphicMapType_29378) (SummandMask2@@2 T@PolymorphicMapType_29378) (o_2@@22 T@Ref) (f_4@@22 T@Field_29417_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_29378_20221_53#PolymorphicMapType_29378| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_29378_20221_53#PolymorphicMapType_29378| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_29378_20221_53#PolymorphicMapType_29378| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_29378_20221_53#PolymorphicMapType_29378| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_29378_20221_53#PolymorphicMapType_29378| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_29378_20221_53#PolymorphicMapType_29378| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_29378) (SummandMask1@@3 T@PolymorphicMapType_29378) (SummandMask2@@3 T@PolymorphicMapType_29378) (o_2@@23 T@Ref) (f_4@@23 T@Field_35588_3612) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3395| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3395| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.612:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3395| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_3395) (b T@Seq_3395) ) (!  (=> (|Seq#Equal_3395| a b) (= a b))
 :qid |stdinbpl.585:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3395| a b))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_29357) (Mask@@22 T@PolymorphicMapType_29378) (i@@4 Int) ) (!  (=> (state Heap@@13 Mask@@22) (= (|dummy'| Heap@@13 i@@4) (|dummy#frame| EmptyFrame i@@4)))
 :qid |stdinbpl.684:15|
 :skolemid |63|
 :pattern ( (state Heap@@13 Mask@@22) (|dummy'| Heap@@13 i@@4))
)))
(assert (forall ((a_2 T@IArrayDomainType) ) (! (>= (len_1 a_2) 0)
 :qid |stdinbpl.647:15|
 :skolemid |59|
 :pattern ( (len_1 a_2))
)))
(assert (forall ((s@@8 T@Seq_3395) (i@@5 Int) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_3395| s@@8))) (|Seq#ContainsTrigger_3395| s@@8 (|Seq#Index_3395| s@@8 i@@5)))
 :qid |stdinbpl.478:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3395| s@@8 i@@5))
)))
(assert (forall ((s0@@1 T@Seq_3395) (s1@@1 T@Seq_3395) ) (!  (and (=> (= s0@@1 |Seq#Empty_3395|) (= (|Seq#Append_4579| s0@@1 s1@@1) s1@@1)) (=> (= s1@@1 |Seq#Empty_3395|) (= (|Seq#Append_4579| s0@@1 s1@@1) s0@@1)))
 :qid |stdinbpl.296:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_4579| s0@@1 s1@@1))
)))
(assert (forall ((t@@1 Int) ) (! (= (|Seq#Index_3395| (|Seq#Singleton_4579| t@@1) 0) t@@1)
 :qid |stdinbpl.300:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_4579| t@@1))
)))
(assert (forall ((s@@9 T@Seq_3395) ) (! (<= 0 (|Seq#Length_3395| s@@9))
 :qid |stdinbpl.279:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3395| s@@9))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_29357) (i@@6 Int) ) (!  (and (= (dummy Heap@@14 i@@6) (|dummy'| Heap@@14 i@@6)) (dummyFunction_3791 (|dummy#triggerStateless| i@@6)))
 :qid |stdinbpl.667:15|
 :skolemid |60|
 :pattern ( (dummy Heap@@14 i@@6))
)))
(assert (forall ((s0@@2 T@Seq_3395) (s1@@2 T@Seq_3395) ) (!  (=> (|Seq#Equal_3395| s0@@2 s1@@2) (and (= (|Seq#Length_3395| s0@@2) (|Seq#Length_3395| s1@@2)) (forall ((j@@4 Int) ) (!  (=> (and (<= 0 j@@4) (< j@@4 (|Seq#Length_3395| s0@@2))) (= (|Seq#Index_3395| s0@@2 j@@4) (|Seq#Index_3395| s1@@2 j@@4)))
 :qid |stdinbpl.575:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3395| s0@@2 j@@4))
 :pattern ( (|Seq#Index_3395| s1@@2 j@@4))
))))
 :qid |stdinbpl.572:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3395| s0@@2 s1@@2))
)))
(assert (forall ((t@@2 Int) ) (! (= (|Seq#Length_3395| (|Seq#Singleton_4579| t@@2)) 1)
 :qid |stdinbpl.287:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_4579| t@@2))
)))
(assert (forall ((s@@10 T@Seq_3395) (t@@3 T@Seq_3395) (n@@8 Int) ) (!  (=> (and (< 0 n@@8) (<= n@@8 (|Seq#Length_3395| s@@10))) (= (|Seq#Take_4579| (|Seq#Append_4579| s@@10 t@@3) n@@8) (|Seq#Take_4579| s@@10 n@@8)))
 :qid |stdinbpl.429:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_4579| (|Seq#Append_4579| s@@10 t@@3) n@@8))
)))
(assert (forall ((s@@11 T@Seq_3395) (i@@7 Int) (v@@1 Int) ) (!  (=> (and (<= 0 i@@7) (< i@@7 (|Seq#Length_3395| s@@11))) (= (|Seq#Length_3395| (|Seq#Update_3395| s@@11 i@@7 v@@1)) (|Seq#Length_3395| s@@11)))
 :qid |stdinbpl.328:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3395| (|Seq#Update_3395| s@@11 i@@7 v@@1)))
 :pattern ( (|Seq#Length_3395| s@@11) (|Seq#Update_3395| s@@11 i@@7 v@@1))
)))
(assert (forall ((a_2@@0 T@IArrayDomainType) (i@@8 Int) ) (!  (and (= (first (loc a_2@@0 i@@8)) a_2@@0) (= (second (loc a_2@@0 i@@8)) i@@8))
 :qid |stdinbpl.641:15|
 :skolemid |58|
 :pattern ( (loc a_2@@0 i@@8))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_29357) (o_36 T@Ref) (f_43 T@Field_20221_84854) (v@@2 T@FrameType) ) (! (succHeap Heap@@15 (PolymorphicMapType_29357 (|PolymorphicMapType_29357_19977_53#PolymorphicMapType_29357| Heap@@15) (|PolymorphicMapType_29357_19980_19981#PolymorphicMapType_29357| Heap@@15) (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| Heap@@15) (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| Heap@@15) (store (|PolymorphicMapType_29357_29417_84854#PolymorphicMapType_29357| Heap@@15) o_36 f_43 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_29357 (|PolymorphicMapType_29357_19977_53#PolymorphicMapType_29357| Heap@@15) (|PolymorphicMapType_29357_19980_19981#PolymorphicMapType_29357| Heap@@15) (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| Heap@@15) (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| Heap@@15) (store (|PolymorphicMapType_29357_29417_84854#PolymorphicMapType_29357| Heap@@15) o_36 f_43 v@@2)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_29357) (o_36@@0 T@Ref) (f_43@@0 T@Field_20221_84987) (v@@3 T@PolymorphicMapType_29906) ) (! (succHeap Heap@@16 (PolymorphicMapType_29357 (|PolymorphicMapType_29357_19977_53#PolymorphicMapType_29357| Heap@@16) (|PolymorphicMapType_29357_19980_19981#PolymorphicMapType_29357| Heap@@16) (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| Heap@@16) (store (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| Heap@@16) o_36@@0 f_43@@0 v@@3) (|PolymorphicMapType_29357_29417_84854#PolymorphicMapType_29357| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_29357 (|PolymorphicMapType_29357_19977_53#PolymorphicMapType_29357| Heap@@16) (|PolymorphicMapType_29357_19980_19981#PolymorphicMapType_29357| Heap@@16) (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| Heap@@16) (store (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| Heap@@16) o_36@@0 f_43@@0 v@@3) (|PolymorphicMapType_29357_29417_84854#PolymorphicMapType_29357| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_29357) (o_36@@1 T@Ref) (f_43@@1 T@Field_35588_3612) (v@@4 Int) ) (! (succHeap Heap@@17 (PolymorphicMapType_29357 (|PolymorphicMapType_29357_19977_53#PolymorphicMapType_29357| Heap@@17) (|PolymorphicMapType_29357_19980_19981#PolymorphicMapType_29357| Heap@@17) (store (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| Heap@@17) o_36@@1 f_43@@1 v@@4) (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| Heap@@17) (|PolymorphicMapType_29357_29417_84854#PolymorphicMapType_29357| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_29357 (|PolymorphicMapType_29357_19977_53#PolymorphicMapType_29357| Heap@@17) (|PolymorphicMapType_29357_19980_19981#PolymorphicMapType_29357| Heap@@17) (store (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| Heap@@17) o_36@@1 f_43@@1 v@@4) (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| Heap@@17) (|PolymorphicMapType_29357_29417_84854#PolymorphicMapType_29357| Heap@@17)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_29357) (o_36@@2 T@Ref) (f_43@@2 T@Field_29430_29431) (v@@5 T@Ref) ) (! (succHeap Heap@@18 (PolymorphicMapType_29357 (|PolymorphicMapType_29357_19977_53#PolymorphicMapType_29357| Heap@@18) (store (|PolymorphicMapType_29357_19980_19981#PolymorphicMapType_29357| Heap@@18) o_36@@2 f_43@@2 v@@5) (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| Heap@@18) (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| Heap@@18) (|PolymorphicMapType_29357_29417_84854#PolymorphicMapType_29357| Heap@@18)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_29357 (|PolymorphicMapType_29357_19977_53#PolymorphicMapType_29357| Heap@@18) (store (|PolymorphicMapType_29357_19980_19981#PolymorphicMapType_29357| Heap@@18) o_36@@2 f_43@@2 v@@5) (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| Heap@@18) (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| Heap@@18) (|PolymorphicMapType_29357_29417_84854#PolymorphicMapType_29357| Heap@@18)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_29357) (o_36@@3 T@Ref) (f_43@@3 T@Field_29417_53) (v@@6 Bool) ) (! (succHeap Heap@@19 (PolymorphicMapType_29357 (store (|PolymorphicMapType_29357_19977_53#PolymorphicMapType_29357| Heap@@19) o_36@@3 f_43@@3 v@@6) (|PolymorphicMapType_29357_19980_19981#PolymorphicMapType_29357| Heap@@19) (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| Heap@@19) (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| Heap@@19) (|PolymorphicMapType_29357_29417_84854#PolymorphicMapType_29357| Heap@@19)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_29357 (store (|PolymorphicMapType_29357_19977_53#PolymorphicMapType_29357| Heap@@19) o_36@@3 f_43@@3 v@@6) (|PolymorphicMapType_29357_19980_19981#PolymorphicMapType_29357| Heap@@19) (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| Heap@@19) (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| Heap@@19) (|PolymorphicMapType_29357_29417_84854#PolymorphicMapType_29357| Heap@@19)))
)))
(assert (forall ((s@@12 T@Seq_3395) (t@@4 T@Seq_3395) (n@@9 Int) ) (!  (=> (and (< 0 n@@9) (<= n@@9 (|Seq#Length_3395| s@@12))) (= (|Seq#Drop_4579| (|Seq#Append_4579| s@@12 t@@4) n@@9) (|Seq#Append_4579| (|Seq#Drop_4579| s@@12 n@@9) t@@4)))
 :qid |stdinbpl.443:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_4579| (|Seq#Append_4579| s@@12 t@@4) n@@9))
)))
(assert (forall ((s@@13 T@Seq_3395) (n@@10 Int) (i@@9 Int) ) (!  (=> (and (and (< 0 n@@10) (<= n@@10 i@@9)) (< i@@9 (|Seq#Length_3395| s@@13))) (and (= (|Seq#Add| (|Seq#Sub| i@@9 n@@10) n@@10) i@@9) (= (|Seq#Index_3395| (|Seq#Drop_4579| s@@13 n@@10) (|Seq#Sub| i@@9 n@@10)) (|Seq#Index_3395| s@@13 i@@9))))
 :qid |stdinbpl.379:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_4579| s@@13 n@@10) (|Seq#Index_3395| s@@13 i@@9))
)))
(assert (forall ((s0@@3 T@Seq_3395) (s1@@3 T@Seq_3395) (n@@11 Int) ) (!  (=> (and (and (and (not (= s0@@3 |Seq#Empty_3395|)) (not (= s1@@3 |Seq#Empty_3395|))) (<= 0 n@@11)) (< n@@11 (|Seq#Length_3395| s0@@3))) (= (|Seq#Index_3395| (|Seq#Append_4579| s0@@3 s1@@3) n@@11) (|Seq#Index_3395| s0@@3 n@@11)))
 :qid |stdinbpl.319:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3395| (|Seq#Append_4579| s0@@3 s1@@3) n@@11))
 :pattern ( (|Seq#Index_3395| s0@@3 n@@11) (|Seq#Append_4579| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3395) (s1@@4 T@Seq_3395) (m Int) ) (!  (=> (and (and (and (not (= s0@@4 |Seq#Empty_3395|)) (not (= s1@@4 |Seq#Empty_3395|))) (<= 0 m)) (< m (|Seq#Length_3395| s1@@4))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_3395| s0@@4)) (|Seq#Length_3395| s0@@4)) m) (= (|Seq#Index_3395| (|Seq#Append_4579| s0@@4 s1@@4) (|Seq#Add| m (|Seq#Length_3395| s0@@4))) (|Seq#Index_3395| s1@@4 m))))
 :qid |stdinbpl.324:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3395| s1@@4 m) (|Seq#Append_4579| s0@@4 s1@@4))
)))
(assert (forall ((o_36@@4 T@Ref) (f_41 T@Field_29430_29431) (Heap@@20 T@PolymorphicMapType_29357) ) (!  (=> (select (|PolymorphicMapType_29357_19977_53#PolymorphicMapType_29357| Heap@@20) o_36@@4 $allocated) (select (|PolymorphicMapType_29357_19977_53#PolymorphicMapType_29357| Heap@@20) (select (|PolymorphicMapType_29357_19980_19981#PolymorphicMapType_29357| Heap@@20) o_36@@4 f_41) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_29357_19980_19981#PolymorphicMapType_29357| Heap@@20) o_36@@4 f_41))
)))
(assert (forall ((s@@14 T@Seq_3395) (x@@1 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_3395| s@@14))) (= (|Seq#Index_3395| s@@14 i@@10) x@@1)) (|Seq#Contains_3395| s@@14 x@@1))
 :qid |stdinbpl.476:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3395| s@@14 x@@1) (|Seq#Index_3395| s@@14 i@@10))
)))
(assert (forall ((s0@@5 T@Seq_3395) (s1@@5 T@Seq_3395) ) (!  (or (or (and (= s0@@5 s1@@5) (|Seq#Equal_3395| s0@@5 s1@@5)) (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_3395| s0@@5 s1@@5))) (not (= (|Seq#Length_3395| s0@@5) (|Seq#Length_3395| s1@@5))))) (and (and (and (and (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_3395| s0@@5 s1@@5))) (= (|Seq#Length_3395| s0@@5) (|Seq#Length_3395| s1@@5))) (= (|Seq#SkolemDiff_3395| s0@@5 s1@@5) (|Seq#SkolemDiff_3395| s1@@5 s0@@5))) (<= 0 (|Seq#SkolemDiff_3395| s0@@5 s1@@5))) (< (|Seq#SkolemDiff_3395| s0@@5 s1@@5) (|Seq#Length_3395| s0@@5))) (not (= (|Seq#Index_3395| s0@@5 (|Seq#SkolemDiff_3395| s0@@5 s1@@5)) (|Seq#Index_3395| s1@@5 (|Seq#SkolemDiff_3395| s0@@5 s1@@5))))))
 :qid |stdinbpl.580:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3395| s0@@5 s1@@5))
)))
(assert (forall ((p@@1 T@Field_20221_84854) (v_1@@0 T@FrameType) (q T@Field_20221_84854) (w@@0 T@FrameType) (r T@Field_20221_84854) (u T@FrameType) ) (!  (=> (and (InsidePredicate_29417_29417 p@@1 v_1@@0 q w@@0) (InsidePredicate_29417_29417 q w@@0 r u)) (InsidePredicate_29417_29417 p@@1 v_1@@0 r u))
 :qid |stdinbpl.247:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29417_29417 p@@1 v_1@@0 q w@@0) (InsidePredicate_29417_29417 q w@@0 r u))
)))
(assert (forall ((s@@15 T@Seq_3395) ) (!  (=> (= (|Seq#Length_3395| s@@15) 0) (= s@@15 |Seq#Empty_3395|))
 :qid |stdinbpl.283:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3395| s@@15))
)))
(assert (forall ((s@@16 T@Seq_3395) (n@@12 Int) ) (!  (=> (<= n@@12 0) (= (|Seq#Take_4579| s@@16 n@@12) |Seq#Empty_3395|))
 :qid |stdinbpl.459:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_4579| s@@16 n@@12))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id |dummy#definedness|)
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
(declare-sort T@Field_29417_53 0)
(declare-sort T@Field_29430_29431 0)
(declare-sort T@Field_35588_3612 0)
(declare-sort T@Field_20221_84987 0)
(declare-sort T@Field_20221_84854 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_29378 0)) (((PolymorphicMapType_29378 (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| (Array T@Ref T@Field_35588_3612 Real)) (|PolymorphicMapType_29378_20221_53#PolymorphicMapType_29378| (Array T@Ref T@Field_29417_53 Real)) (|PolymorphicMapType_29378_20221_29431#PolymorphicMapType_29378| (Array T@Ref T@Field_29430_29431 Real)) (|PolymorphicMapType_29378_20221_84854#PolymorphicMapType_29378| (Array T@Ref T@Field_20221_84854 Real)) (|PolymorphicMapType_29378_20221_89109#PolymorphicMapType_29378| (Array T@Ref T@Field_20221_84987 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_29906 0)) (((PolymorphicMapType_29906 (|PolymorphicMapType_29906_29417_53#PolymorphicMapType_29906| (Array T@Ref T@Field_29417_53 Bool)) (|PolymorphicMapType_29906_29417_29431#PolymorphicMapType_29906| (Array T@Ref T@Field_29430_29431 Bool)) (|PolymorphicMapType_29906_29417_3612#PolymorphicMapType_29906| (Array T@Ref T@Field_35588_3612 Bool)) (|PolymorphicMapType_29906_29417_84854#PolymorphicMapType_29906| (Array T@Ref T@Field_20221_84854 Bool)) (|PolymorphicMapType_29906_29417_86165#PolymorphicMapType_29906| (Array T@Ref T@Field_20221_84987 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_29357 0)) (((PolymorphicMapType_29357 (|PolymorphicMapType_29357_19977_53#PolymorphicMapType_29357| (Array T@Ref T@Field_29417_53 Bool)) (|PolymorphicMapType_29357_19980_19981#PolymorphicMapType_29357| (Array T@Ref T@Field_29430_29431 T@Ref)) (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| (Array T@Ref T@Field_35588_3612 Int)) (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| (Array T@Ref T@Field_20221_84987 T@PolymorphicMapType_29906)) (|PolymorphicMapType_29357_29417_84854#PolymorphicMapType_29357| (Array T@Ref T@Field_20221_84854 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_29417_53)
(declare-fun val () T@Field_35588_3612)
(declare-sort T@Seq_3395 0)
(declare-fun |Seq#Length_3395| (T@Seq_3395) Int)
(declare-fun |Seq#Drop_4579| (T@Seq_3395 Int) T@Seq_3395)
(declare-fun succHeap (T@PolymorphicMapType_29357 T@PolymorphicMapType_29357) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_29357 T@PolymorphicMapType_29357) Bool)
(declare-fun state (T@PolymorphicMapType_29357 T@PolymorphicMapType_29378) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_29378) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_29906)
(declare-fun |Seq#Index_3395| (T@Seq_3395 Int) Int)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Empty_3395| () T@Seq_3395)
(declare-fun |dummy'| (T@PolymorphicMapType_29357 Int) Bool)
(declare-fun dummyFunction_3791 (Bool) Bool)
(declare-fun |dummy#triggerStateless| (Int) Bool)
(declare-fun |Seq#Update_3395| (T@Seq_3395 Int Int) T@Seq_3395)
(declare-fun |Seq#Take_4579| (T@Seq_3395 Int) T@Seq_3395)
(declare-fun |Seq#Contains_3395| (T@Seq_3395 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3395)
(declare-fun |Seq#Skolem_3395| (T@Seq_3395 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_29357 T@PolymorphicMapType_29357 T@PolymorphicMapType_29378) Bool)
(declare-fun IsPredicateField_20221_84945 (T@Field_20221_84854) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_20221 (T@Field_20221_84854) T@Field_20221_84987)
(declare-fun HasDirectPerm_20221_84918 (T@PolymorphicMapType_29378 T@Ref T@Field_20221_84854) Bool)
(declare-fun IsWandField_20221_86692 (T@Field_20221_84854) Bool)
(declare-fun WandMaskField_20221 (T@Field_20221_84854) T@Field_20221_84987)
(declare-fun |Seq#Singleton_4579| (Int) T@Seq_3395)
(declare-fun dummy (T@PolymorphicMapType_29357 Int) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |Seq#Append_4579| (T@Seq_3395 T@Seq_3395) T@Seq_3395)
(declare-fun dummyHeap () T@PolymorphicMapType_29357)
(declare-fun ZeroMask () T@PolymorphicMapType_29378)
(declare-fun InsidePredicate_29417_29417 (T@Field_20221_84854 T@FrameType T@Field_20221_84854 T@FrameType) Bool)
(declare-fun IsPredicateField_20221_3612 (T@Field_35588_3612) Bool)
(declare-fun IsWandField_20221_3612 (T@Field_35588_3612) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_20221_90238 (T@Field_20221_84987) Bool)
(declare-fun IsWandField_20221_90254 (T@Field_20221_84987) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_20221_29431 (T@Field_29430_29431) Bool)
(declare-fun IsWandField_20221_29431 (T@Field_29430_29431) Bool)
(declare-fun IsPredicateField_20221_53 (T@Field_29417_53) Bool)
(declare-fun IsWandField_20221_53 (T@Field_29417_53) Bool)
(declare-fun HasDirectPerm_20221_90692 (T@PolymorphicMapType_29378 T@Ref T@Field_20221_84987) Bool)
(declare-fun HasDirectPerm_20221_29431 (T@PolymorphicMapType_29378 T@Ref T@Field_29430_29431) Bool)
(declare-fun HasDirectPerm_20221_53 (T@PolymorphicMapType_29378 T@Ref T@Field_29417_53) Bool)
(declare-fun HasDirectPerm_20221_3612 (T@PolymorphicMapType_29378 T@Ref T@Field_35588_3612) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_29378 T@PolymorphicMapType_29378 T@PolymorphicMapType_29378) Bool)
(declare-fun |Seq#Equal_3395| (T@Seq_3395 T@Seq_3395) Bool)
(declare-fun |dummy#frame| (T@FrameType Int) Bool)
(declare-sort T@IArrayDomainType 0)
(declare-fun len_1 (T@IArrayDomainType) Int)
(declare-fun |Seq#ContainsTrigger_3395| (T@Seq_3395 Int) Bool)
(declare-fun loc (T@IArrayDomainType Int) T@Ref)
(declare-fun first (T@Ref) T@IArrayDomainType)
(declare-fun second (T@Ref) Int)
(declare-fun |Seq#SkolemDiff_3395| (T@Seq_3395 T@Seq_3395) Int)
(assert (forall ((s T@Seq_3395) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_3395| s)) (= (|Seq#Length_3395| (|Seq#Drop_4579| s n)) (- (|Seq#Length_3395| s) n))) (=> (< (|Seq#Length_3395| s) n) (= (|Seq#Length_3395| (|Seq#Drop_4579| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_3395| (|Seq#Drop_4579| s n)) (|Seq#Length_3395| s))))
 :qid |stdinbpl.354:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3395| (|Seq#Drop_4579| s n)))
 :pattern ( (|Seq#Length_3395| s) (|Seq#Drop_4579| s n))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_29357) (Heap1 T@PolymorphicMapType_29357) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_29357) (Mask T@PolymorphicMapType_29378) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_29357) (Heap1@@0 T@PolymorphicMapType_29357) (Heap2 T@PolymorphicMapType_29357) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_20221_84987) ) (!  (not (select (|PolymorphicMapType_29906_29417_86165#PolymorphicMapType_29906| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_29906_29417_86165#PolymorphicMapType_29906| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_20221_84854) ) (!  (not (select (|PolymorphicMapType_29906_29417_84854#PolymorphicMapType_29906| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_29906_29417_84854#PolymorphicMapType_29906| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_35588_3612) ) (!  (not (select (|PolymorphicMapType_29906_29417_3612#PolymorphicMapType_29906| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_29906_29417_3612#PolymorphicMapType_29906| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_29430_29431) ) (!  (not (select (|PolymorphicMapType_29906_29417_29431#PolymorphicMapType_29906| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_29906_29417_29431#PolymorphicMapType_29906| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_29417_53) ) (!  (not (select (|PolymorphicMapType_29906_29417_53#PolymorphicMapType_29906| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_29906_29417_53#PolymorphicMapType_29906| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((s@@0 T@Seq_3395) (n@@0 Int) (j Int) ) (!  (=> (and (and (< 0 n@@0) (<= 0 j)) (< j (- (|Seq#Length_3395| s@@0) n@@0))) (and (= (|Seq#Sub| (|Seq#Add| j n@@0) n@@0) j) (= (|Seq#Index_3395| (|Seq#Drop_4579| s@@0 n@@0) j) (|Seq#Index_3395| s@@0 (|Seq#Add| j n@@0)))))
 :qid |stdinbpl.375:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3395| (|Seq#Drop_4579| s@@0 n@@0) j))
)))
(assert (= (|Seq#Length_3395| |Seq#Empty_3395|) 0))
(assert (forall ((Heap@@0 T@PolymorphicMapType_29357) (i Int) ) (! (dummyFunction_3791 (|dummy#triggerStateless| i))
 :qid |stdinbpl.671:15|
 :skolemid |61|
 :pattern ( (|dummy'| Heap@@0 i))
)))
(assert (forall ((s@@1 T@Seq_3395) (i@@0 Int) (v Int) (n@@1 Int) ) (!  (=> (and (<= 0 n@@1) (< n@@1 (|Seq#Length_3395| s@@1))) (and (=> (= i@@0 n@@1) (= (|Seq#Index_3395| (|Seq#Update_3395| s@@1 i@@0 v) n@@1) v)) (=> (not (= i@@0 n@@1)) (= (|Seq#Index_3395| (|Seq#Update_3395| s@@1 i@@0 v) n@@1) (|Seq#Index_3395| s@@1 n@@1)))))
 :qid |stdinbpl.330:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3395| (|Seq#Update_3395| s@@1 i@@0 v) n@@1))
 :pattern ( (|Seq#Index_3395| s@@1 n@@1) (|Seq#Update_3395| s@@1 i@@0 v))
)))
(assert (forall ((s@@2 T@Seq_3395) (n@@2 Int) ) (!  (and (=> (<= 0 n@@2) (and (=> (<= n@@2 (|Seq#Length_3395| s@@2)) (= (|Seq#Length_3395| (|Seq#Take_4579| s@@2 n@@2)) n@@2)) (=> (< (|Seq#Length_3395| s@@2) n@@2) (= (|Seq#Length_3395| (|Seq#Take_4579| s@@2 n@@2)) (|Seq#Length_3395| s@@2))))) (=> (< n@@2 0) (= (|Seq#Length_3395| (|Seq#Take_4579| s@@2 n@@2)) 0)))
 :qid |stdinbpl.341:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3395| (|Seq#Take_4579| s@@2 n@@2)))
 :pattern ( (|Seq#Take_4579| s@@2 n@@2) (|Seq#Length_3395| s@@2))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@0 Int) ) (! (= (|Seq#Contains_3395| (|Seq#Range| q@min q@max) v@@0)  (and (<= q@min v@@0) (< v@@0 q@max)))
 :qid |stdinbpl.615:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3395| (|Seq#Range| q@min q@max) v@@0))
)))
(assert (forall ((s@@3 T@Seq_3395) (x Int) ) (!  (=> (|Seq#Contains_3395| s@@3 x) (and (and (<= 0 (|Seq#Skolem_3395| s@@3 x)) (< (|Seq#Skolem_3395| s@@3 x) (|Seq#Length_3395| s@@3))) (= (|Seq#Index_3395| s@@3 (|Seq#Skolem_3395| s@@3 x)) x)))
 :qid |stdinbpl.473:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3395| s@@3 x))
)))
(assert (forall ((s@@4 T@Seq_3395) (n@@3 Int) ) (!  (=> (<= n@@3 0) (= (|Seq#Drop_4579| s@@4 n@@3) s@@4))
 :qid |stdinbpl.457:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_4579| s@@4 n@@3))
)))
(assert (forall ((i@@1 Int) (j@@0 Int) ) (! (= (|Seq#Sub| i@@1 j@@0) (- i@@1 j@@0))
 :qid |stdinbpl.310:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@0))
)))
(assert (forall ((i@@2 Int) (j@@1 Int) ) (! (= (|Seq#Add| i@@2 j@@1) (+ i@@2 j@@1))
 :qid |stdinbpl.308:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@1))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_29357) (ExhaleHeap T@PolymorphicMapType_29357) (Mask@@0 T@PolymorphicMapType_29378) (pm_f_14 T@Field_20221_84854) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_20221_84918 Mask@@0 null pm_f_14) (IsPredicateField_20221_84945 pm_f_14)) (= (select (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| Heap@@1) null (PredicateMaskField_20221 pm_f_14)) (select (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| ExhaleHeap) null (PredicateMaskField_20221 pm_f_14)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_20221_84945 pm_f_14) (select (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| ExhaleHeap) null (PredicateMaskField_20221 pm_f_14)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_29357) (ExhaleHeap@@0 T@PolymorphicMapType_29357) (Mask@@1 T@PolymorphicMapType_29378) (pm_f_14@@0 T@Field_20221_84854) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_20221_84918 Mask@@1 null pm_f_14@@0) (IsWandField_20221_86692 pm_f_14@@0)) (= (select (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| Heap@@2) null (WandMaskField_20221 pm_f_14@@0)) (select (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| ExhaleHeap@@0) null (WandMaskField_20221 pm_f_14@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsWandField_20221_86692 pm_f_14@@0) (select (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| ExhaleHeap@@0) null (WandMaskField_20221 pm_f_14@@0)))
)))
(assert (forall ((x@@0 Int) (y Int) ) (! (= (|Seq#Contains_3395| (|Seq#Singleton_4579| x@@0) y) (= x@@0 y))
 :qid |stdinbpl.598:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3395| (|Seq#Singleton_4579| x@@0) y))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_29357) (Mask@@2 T@PolymorphicMapType_29378) (i@@3 Int) ) (!  (=> (and (state Heap@@3 Mask@@2) (< AssumeFunctionsAbove 0)) (dummy Heap@@3 i@@3))
 :qid |stdinbpl.677:15|
 :skolemid |62|
 :pattern ( (state Heap@@3 Mask@@2) (dummy Heap@@3 i@@3))
)))
(assert (forall ((s@@5 T@Seq_3395) (n@@4 Int) (j@@2 Int) ) (!  (=> (and (and (<= 0 j@@2) (< j@@2 n@@4)) (< j@@2 (|Seq#Length_3395| s@@5))) (= (|Seq#Index_3395| (|Seq#Take_4579| s@@5 n@@4) j@@2) (|Seq#Index_3395| s@@5 j@@2)))
 :qid |stdinbpl.349:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3395| (|Seq#Take_4579| s@@5 n@@4) j@@2))
 :pattern ( (|Seq#Index_3395| s@@5 j@@2) (|Seq#Take_4579| s@@5 n@@4))
)))
(assert (forall ((s@@6 T@Seq_3395) (t T@Seq_3395) (n@@5 Int) ) (!  (=> (and (and (> n@@5 0) (> n@@5 (|Seq#Length_3395| s@@6))) (< n@@5 (|Seq#Length_3395| (|Seq#Append_4579| s@@6 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@5 (|Seq#Length_3395| s@@6)) (|Seq#Length_3395| s@@6)) n@@5) (= (|Seq#Take_4579| (|Seq#Append_4579| s@@6 t) n@@5) (|Seq#Append_4579| s@@6 (|Seq#Take_4579| t (|Seq#Sub| n@@5 (|Seq#Length_3395| s@@6)))))))
 :qid |stdinbpl.434:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_4579| (|Seq#Append_4579| s@@6 t) n@@5))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@4 T@PolymorphicMapType_29357) (ExhaleHeap@@1 T@PolymorphicMapType_29357) (Mask@@3 T@PolymorphicMapType_29378) (o_37 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@3) (=> (select (|PolymorphicMapType_29357_19977_53#PolymorphicMapType_29357| Heap@@4) o_37 $allocated) (select (|PolymorphicMapType_29357_19977_53#PolymorphicMapType_29357| ExhaleHeap@@1) o_37 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@3) (select (|PolymorphicMapType_29357_19977_53#PolymorphicMapType_29357| ExhaleHeap@@1) o_37 $allocated))
)))
(assert (forall ((p T@Field_20221_84854) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_29417_29417 p v_1 p w))
 :qid |stdinbpl.252:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_29417_29417 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_3395) (s1 T@Seq_3395) (n@@6 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_3395|)) (not (= s1 |Seq#Empty_3395|))) (<= (|Seq#Length_3395| s0) n@@6)) (< n@@6 (|Seq#Length_3395| (|Seq#Append_4579| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@6 (|Seq#Length_3395| s0)) (|Seq#Length_3395| s0)) n@@6) (= (|Seq#Index_3395| (|Seq#Append_4579| s0 s1) n@@6) (|Seq#Index_3395| s1 (|Seq#Sub| n@@6 (|Seq#Length_3395| s0))))))
 :qid |stdinbpl.321:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3395| (|Seq#Append_4579| s0 s1) n@@6))
)))
(assert  (not (IsPredicateField_20221_3612 val)))
(assert  (not (IsWandField_20221_3612 val)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_29357) (ExhaleHeap@@2 T@PolymorphicMapType_29357) (Mask@@4 T@PolymorphicMapType_29378) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@4) (succHeap Heap@@5 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_29378) (o_2@@4 T@Ref) (f_4@@4 T@Field_20221_84987) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_29378_20221_89109#PolymorphicMapType_29378| Mask@@5) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_20221_90238 f_4@@4))) (not (IsWandField_20221_90254 f_4@@4))) (<= (select (|PolymorphicMapType_29378_20221_89109#PolymorphicMapType_29378| Mask@@5) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_29378_20221_89109#PolymorphicMapType_29378| Mask@@5) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_29378) (o_2@@5 T@Ref) (f_4@@5 T@Field_20221_84854) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_29378_20221_84854#PolymorphicMapType_29378| Mask@@6) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_20221_84945 f_4@@5))) (not (IsWandField_20221_86692 f_4@@5))) (<= (select (|PolymorphicMapType_29378_20221_84854#PolymorphicMapType_29378| Mask@@6) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_29378_20221_84854#PolymorphicMapType_29378| Mask@@6) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_29378) (o_2@@6 T@Ref) (f_4@@6 T@Field_29430_29431) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_29378_20221_29431#PolymorphicMapType_29378| Mask@@7) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_20221_29431 f_4@@6))) (not (IsWandField_20221_29431 f_4@@6))) (<= (select (|PolymorphicMapType_29378_20221_29431#PolymorphicMapType_29378| Mask@@7) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_29378_20221_29431#PolymorphicMapType_29378| Mask@@7) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_29378) (o_2@@7 T@Ref) (f_4@@7 T@Field_29417_53) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_29378_20221_53#PolymorphicMapType_29378| Mask@@8) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_20221_53 f_4@@7))) (not (IsWandField_20221_53 f_4@@7))) (<= (select (|PolymorphicMapType_29378_20221_53#PolymorphicMapType_29378| Mask@@8) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_29378_20221_53#PolymorphicMapType_29378| Mask@@8) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_29378) (o_2@@8 T@Ref) (f_4@@8 T@Field_35588_3612) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| Mask@@9) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_20221_3612 f_4@@8))) (not (IsWandField_20221_3612 f_4@@8))) (<= (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| Mask@@9) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| Mask@@9) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_29378) (o_2@@9 T@Ref) (f_4@@9 T@Field_20221_84987) ) (! (= (HasDirectPerm_20221_90692 Mask@@10 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_29378_20221_89109#PolymorphicMapType_29378| Mask@@10) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20221_90692 Mask@@10 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_29378) (o_2@@10 T@Ref) (f_4@@10 T@Field_20221_84854) ) (! (= (HasDirectPerm_20221_84918 Mask@@11 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_29378_20221_84854#PolymorphicMapType_29378| Mask@@11) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20221_84918 Mask@@11 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_29378) (o_2@@11 T@Ref) (f_4@@11 T@Field_29430_29431) ) (! (= (HasDirectPerm_20221_29431 Mask@@12 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_29378_20221_29431#PolymorphicMapType_29378| Mask@@12) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20221_29431 Mask@@12 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_29378) (o_2@@12 T@Ref) (f_4@@12 T@Field_29417_53) ) (! (= (HasDirectPerm_20221_53 Mask@@13 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_29378_20221_53#PolymorphicMapType_29378| Mask@@13) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20221_53 Mask@@13 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_29378) (o_2@@13 T@Ref) (f_4@@13 T@Field_35588_3612) ) (! (= (HasDirectPerm_20221_3612 Mask@@14 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| Mask@@14) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20221_3612 Mask@@14 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_29357) (ExhaleHeap@@3 T@PolymorphicMapType_29357) (Mask@@15 T@PolymorphicMapType_29378) (pm_f_14@@1 T@Field_20221_84854) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@15) (=> (and (HasDirectPerm_20221_84918 Mask@@15 null pm_f_14@@1) (IsPredicateField_20221_84945 pm_f_14@@1)) (and (and (and (and (forall ((o2_14 T@Ref) (f_42 T@Field_29417_53) ) (!  (=> (select (|PolymorphicMapType_29906_29417_53#PolymorphicMapType_29906| (select (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| Heap@@6) null (PredicateMaskField_20221 pm_f_14@@1))) o2_14 f_42) (= (select (|PolymorphicMapType_29357_19977_53#PolymorphicMapType_29357| Heap@@6) o2_14 f_42) (select (|PolymorphicMapType_29357_19977_53#PolymorphicMapType_29357| ExhaleHeap@@3) o2_14 f_42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_29357_19977_53#PolymorphicMapType_29357| ExhaleHeap@@3) o2_14 f_42))
)) (forall ((o2_14@@0 T@Ref) (f_42@@0 T@Field_29430_29431) ) (!  (=> (select (|PolymorphicMapType_29906_29417_29431#PolymorphicMapType_29906| (select (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| Heap@@6) null (PredicateMaskField_20221 pm_f_14@@1))) o2_14@@0 f_42@@0) (= (select (|PolymorphicMapType_29357_19980_19981#PolymorphicMapType_29357| Heap@@6) o2_14@@0 f_42@@0) (select (|PolymorphicMapType_29357_19980_19981#PolymorphicMapType_29357| ExhaleHeap@@3) o2_14@@0 f_42@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_29357_19980_19981#PolymorphicMapType_29357| ExhaleHeap@@3) o2_14@@0 f_42@@0))
))) (forall ((o2_14@@1 T@Ref) (f_42@@1 T@Field_35588_3612) ) (!  (=> (select (|PolymorphicMapType_29906_29417_3612#PolymorphicMapType_29906| (select (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| Heap@@6) null (PredicateMaskField_20221 pm_f_14@@1))) o2_14@@1 f_42@@1) (= (select (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| Heap@@6) o2_14@@1 f_42@@1) (select (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| ExhaleHeap@@3) o2_14@@1 f_42@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| ExhaleHeap@@3) o2_14@@1 f_42@@1))
))) (forall ((o2_14@@2 T@Ref) (f_42@@2 T@Field_20221_84854) ) (!  (=> (select (|PolymorphicMapType_29906_29417_84854#PolymorphicMapType_29906| (select (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| Heap@@6) null (PredicateMaskField_20221 pm_f_14@@1))) o2_14@@2 f_42@@2) (= (select (|PolymorphicMapType_29357_29417_84854#PolymorphicMapType_29357| Heap@@6) o2_14@@2 f_42@@2) (select (|PolymorphicMapType_29357_29417_84854#PolymorphicMapType_29357| ExhaleHeap@@3) o2_14@@2 f_42@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_29357_29417_84854#PolymorphicMapType_29357| ExhaleHeap@@3) o2_14@@2 f_42@@2))
))) (forall ((o2_14@@3 T@Ref) (f_42@@3 T@Field_20221_84987) ) (!  (=> (select (|PolymorphicMapType_29906_29417_86165#PolymorphicMapType_29906| (select (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| Heap@@6) null (PredicateMaskField_20221 pm_f_14@@1))) o2_14@@3 f_42@@3) (= (select (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| Heap@@6) o2_14@@3 f_42@@3) (select (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| ExhaleHeap@@3) o2_14@@3 f_42@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| ExhaleHeap@@3) o2_14@@3 f_42@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@15) (IsPredicateField_20221_84945 pm_f_14@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_29357) (ExhaleHeap@@4 T@PolymorphicMapType_29357) (Mask@@16 T@PolymorphicMapType_29378) (pm_f_14@@2 T@Field_20221_84854) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@16) (=> (and (HasDirectPerm_20221_84918 Mask@@16 null pm_f_14@@2) (IsWandField_20221_86692 pm_f_14@@2)) (and (and (and (and (forall ((o2_14@@4 T@Ref) (f_42@@4 T@Field_29417_53) ) (!  (=> (select (|PolymorphicMapType_29906_29417_53#PolymorphicMapType_29906| (select (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| Heap@@7) null (WandMaskField_20221 pm_f_14@@2))) o2_14@@4 f_42@@4) (= (select (|PolymorphicMapType_29357_19977_53#PolymorphicMapType_29357| Heap@@7) o2_14@@4 f_42@@4) (select (|PolymorphicMapType_29357_19977_53#PolymorphicMapType_29357| ExhaleHeap@@4) o2_14@@4 f_42@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_29357_19977_53#PolymorphicMapType_29357| ExhaleHeap@@4) o2_14@@4 f_42@@4))
)) (forall ((o2_14@@5 T@Ref) (f_42@@5 T@Field_29430_29431) ) (!  (=> (select (|PolymorphicMapType_29906_29417_29431#PolymorphicMapType_29906| (select (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| Heap@@7) null (WandMaskField_20221 pm_f_14@@2))) o2_14@@5 f_42@@5) (= (select (|PolymorphicMapType_29357_19980_19981#PolymorphicMapType_29357| Heap@@7) o2_14@@5 f_42@@5) (select (|PolymorphicMapType_29357_19980_19981#PolymorphicMapType_29357| ExhaleHeap@@4) o2_14@@5 f_42@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_29357_19980_19981#PolymorphicMapType_29357| ExhaleHeap@@4) o2_14@@5 f_42@@5))
))) (forall ((o2_14@@6 T@Ref) (f_42@@6 T@Field_35588_3612) ) (!  (=> (select (|PolymorphicMapType_29906_29417_3612#PolymorphicMapType_29906| (select (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| Heap@@7) null (WandMaskField_20221 pm_f_14@@2))) o2_14@@6 f_42@@6) (= (select (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| Heap@@7) o2_14@@6 f_42@@6) (select (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| ExhaleHeap@@4) o2_14@@6 f_42@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| ExhaleHeap@@4) o2_14@@6 f_42@@6))
))) (forall ((o2_14@@7 T@Ref) (f_42@@7 T@Field_20221_84854) ) (!  (=> (select (|PolymorphicMapType_29906_29417_84854#PolymorphicMapType_29906| (select (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| Heap@@7) null (WandMaskField_20221 pm_f_14@@2))) o2_14@@7 f_42@@7) (= (select (|PolymorphicMapType_29357_29417_84854#PolymorphicMapType_29357| Heap@@7) o2_14@@7 f_42@@7) (select (|PolymorphicMapType_29357_29417_84854#PolymorphicMapType_29357| ExhaleHeap@@4) o2_14@@7 f_42@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_29357_29417_84854#PolymorphicMapType_29357| ExhaleHeap@@4) o2_14@@7 f_42@@7))
))) (forall ((o2_14@@8 T@Ref) (f_42@@8 T@Field_20221_84987) ) (!  (=> (select (|PolymorphicMapType_29906_29417_86165#PolymorphicMapType_29906| (select (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| Heap@@7) null (WandMaskField_20221 pm_f_14@@2))) o2_14@@8 f_42@@8) (= (select (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| Heap@@7) o2_14@@8 f_42@@8) (select (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| ExhaleHeap@@4) o2_14@@8 f_42@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| ExhaleHeap@@4) o2_14@@8 f_42@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@16) (IsWandField_20221_86692 pm_f_14@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.240:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@3 Int) ) (!  (=> (and (<= 0 j@@3) (< j@@3 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3395| (|Seq#Range| q@min@@0 q@max@@0) j@@3) (+ q@min@@0 j@@3)))
 :qid |stdinbpl.613:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3395| (|Seq#Range| q@min@@0 q@max@@0) j@@3))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_29357) (ExhaleHeap@@5 T@PolymorphicMapType_29357) (Mask@@17 T@PolymorphicMapType_29378) (o_37@@0 T@Ref) (f_42@@9 T@Field_20221_84987) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@17) (=> (HasDirectPerm_20221_90692 Mask@@17 o_37@@0 f_42@@9) (= (select (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| Heap@@8) o_37@@0 f_42@@9) (select (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| ExhaleHeap@@5) o_37@@0 f_42@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@17) (select (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| ExhaleHeap@@5) o_37@@0 f_42@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_29357) (ExhaleHeap@@6 T@PolymorphicMapType_29357) (Mask@@18 T@PolymorphicMapType_29378) (o_37@@1 T@Ref) (f_42@@10 T@Field_20221_84854) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@18) (=> (HasDirectPerm_20221_84918 Mask@@18 o_37@@1 f_42@@10) (= (select (|PolymorphicMapType_29357_29417_84854#PolymorphicMapType_29357| Heap@@9) o_37@@1 f_42@@10) (select (|PolymorphicMapType_29357_29417_84854#PolymorphicMapType_29357| ExhaleHeap@@6) o_37@@1 f_42@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@18) (select (|PolymorphicMapType_29357_29417_84854#PolymorphicMapType_29357| ExhaleHeap@@6) o_37@@1 f_42@@10))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_29357) (ExhaleHeap@@7 T@PolymorphicMapType_29357) (Mask@@19 T@PolymorphicMapType_29378) (o_37@@2 T@Ref) (f_42@@11 T@Field_29430_29431) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@19) (=> (HasDirectPerm_20221_29431 Mask@@19 o_37@@2 f_42@@11) (= (select (|PolymorphicMapType_29357_19980_19981#PolymorphicMapType_29357| Heap@@10) o_37@@2 f_42@@11) (select (|PolymorphicMapType_29357_19980_19981#PolymorphicMapType_29357| ExhaleHeap@@7) o_37@@2 f_42@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@19) (select (|PolymorphicMapType_29357_19980_19981#PolymorphicMapType_29357| ExhaleHeap@@7) o_37@@2 f_42@@11))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_29357) (ExhaleHeap@@8 T@PolymorphicMapType_29357) (Mask@@20 T@PolymorphicMapType_29378) (o_37@@3 T@Ref) (f_42@@12 T@Field_29417_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@20) (=> (HasDirectPerm_20221_53 Mask@@20 o_37@@3 f_42@@12) (= (select (|PolymorphicMapType_29357_19977_53#PolymorphicMapType_29357| Heap@@11) o_37@@3 f_42@@12) (select (|PolymorphicMapType_29357_19977_53#PolymorphicMapType_29357| ExhaleHeap@@8) o_37@@3 f_42@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@20) (select (|PolymorphicMapType_29357_19977_53#PolymorphicMapType_29357| ExhaleHeap@@8) o_37@@3 f_42@@12))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_29357) (ExhaleHeap@@9 T@PolymorphicMapType_29357) (Mask@@21 T@PolymorphicMapType_29378) (o_37@@4 T@Ref) (f_42@@13 T@Field_35588_3612) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@21) (=> (HasDirectPerm_20221_3612 Mask@@21 o_37@@4 f_42@@13) (= (select (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| Heap@@12) o_37@@4 f_42@@13) (select (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| ExhaleHeap@@9) o_37@@4 f_42@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@21) (select (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| ExhaleHeap@@9) o_37@@4 f_42@@13))
)))
(assert (forall ((s0@@0 T@Seq_3395) (s1@@0 T@Seq_3395) ) (!  (=> (and (not (= s0@@0 |Seq#Empty_3395|)) (not (= s1@@0 |Seq#Empty_3395|))) (= (|Seq#Length_3395| (|Seq#Append_4579| s0@@0 s1@@0)) (+ (|Seq#Length_3395| s0@@0) (|Seq#Length_3395| s1@@0))))
 :qid |stdinbpl.290:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3395| (|Seq#Append_4579| s0@@0 s1@@0)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_20221_84987) ) (! (= (select (|PolymorphicMapType_29378_20221_89109#PolymorphicMapType_29378| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_29378_20221_89109#PolymorphicMapType_29378| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_20221_84854) ) (! (= (select (|PolymorphicMapType_29378_20221_84854#PolymorphicMapType_29378| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_29378_20221_84854#PolymorphicMapType_29378| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_29430_29431) ) (! (= (select (|PolymorphicMapType_29378_20221_29431#PolymorphicMapType_29378| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_29378_20221_29431#PolymorphicMapType_29378| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_29417_53) ) (! (= (select (|PolymorphicMapType_29378_20221_53#PolymorphicMapType_29378| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_29378_20221_53#PolymorphicMapType_29378| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_35588_3612) ) (! (= (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((s@@7 T@Seq_3395) (t@@0 T@Seq_3395) (n@@7 Int) ) (!  (=> (and (> n@@7 0) (> n@@7 (|Seq#Length_3395| s@@7))) (and (= (|Seq#Add| (|Seq#Sub| n@@7 (|Seq#Length_3395| s@@7)) (|Seq#Length_3395| s@@7)) n@@7) (= (|Seq#Drop_4579| (|Seq#Append_4579| s@@7 t@@0) n@@7) (|Seq#Drop_4579| t@@0 (|Seq#Sub| n@@7 (|Seq#Length_3395| s@@7))))))
 :qid |stdinbpl.447:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_4579| (|Seq#Append_4579| s@@7 t@@0) n@@7))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_29378) (SummandMask1 T@PolymorphicMapType_29378) (SummandMask2 T@PolymorphicMapType_29378) (o_2@@19 T@Ref) (f_4@@19 T@Field_20221_84987) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_29378_20221_89109#PolymorphicMapType_29378| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_29378_20221_89109#PolymorphicMapType_29378| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_29378_20221_89109#PolymorphicMapType_29378| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_29378_20221_89109#PolymorphicMapType_29378| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_29378_20221_89109#PolymorphicMapType_29378| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_29378_20221_89109#PolymorphicMapType_29378| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_29378) (SummandMask1@@0 T@PolymorphicMapType_29378) (SummandMask2@@0 T@PolymorphicMapType_29378) (o_2@@20 T@Ref) (f_4@@20 T@Field_20221_84854) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_29378_20221_84854#PolymorphicMapType_29378| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_29378_20221_84854#PolymorphicMapType_29378| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_29378_20221_84854#PolymorphicMapType_29378| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_29378_20221_84854#PolymorphicMapType_29378| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_29378_20221_84854#PolymorphicMapType_29378| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_29378_20221_84854#PolymorphicMapType_29378| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_29378) (SummandMask1@@1 T@PolymorphicMapType_29378) (SummandMask2@@1 T@PolymorphicMapType_29378) (o_2@@21 T@Ref) (f_4@@21 T@Field_29430_29431) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_29378_20221_29431#PolymorphicMapType_29378| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_29378_20221_29431#PolymorphicMapType_29378| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_29378_20221_29431#PolymorphicMapType_29378| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_29378_20221_29431#PolymorphicMapType_29378| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_29378_20221_29431#PolymorphicMapType_29378| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_29378_20221_29431#PolymorphicMapType_29378| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_29378) (SummandMask1@@2 T@PolymorphicMapType_29378) (SummandMask2@@2 T@PolymorphicMapType_29378) (o_2@@22 T@Ref) (f_4@@22 T@Field_29417_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_29378_20221_53#PolymorphicMapType_29378| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_29378_20221_53#PolymorphicMapType_29378| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_29378_20221_53#PolymorphicMapType_29378| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_29378_20221_53#PolymorphicMapType_29378| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_29378_20221_53#PolymorphicMapType_29378| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_29378_20221_53#PolymorphicMapType_29378| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_29378) (SummandMask1@@3 T@PolymorphicMapType_29378) (SummandMask2@@3 T@PolymorphicMapType_29378) (o_2@@23 T@Ref) (f_4@@23 T@Field_35588_3612) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3395| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3395| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.612:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3395| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_3395) (b T@Seq_3395) ) (!  (=> (|Seq#Equal_3395| a b) (= a b))
 :qid |stdinbpl.585:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3395| a b))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_29357) (Mask@@22 T@PolymorphicMapType_29378) (i@@4 Int) ) (!  (=> (state Heap@@13 Mask@@22) (= (|dummy'| Heap@@13 i@@4) (|dummy#frame| EmptyFrame i@@4)))
 :qid |stdinbpl.684:15|
 :skolemid |63|
 :pattern ( (state Heap@@13 Mask@@22) (|dummy'| Heap@@13 i@@4))
)))
(assert (forall ((a_2 T@IArrayDomainType) ) (! (>= (len_1 a_2) 0)
 :qid |stdinbpl.647:15|
 :skolemid |59|
 :pattern ( (len_1 a_2))
)))
(assert (forall ((s@@8 T@Seq_3395) (i@@5 Int) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_3395| s@@8))) (|Seq#ContainsTrigger_3395| s@@8 (|Seq#Index_3395| s@@8 i@@5)))
 :qid |stdinbpl.478:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3395| s@@8 i@@5))
)))
(assert (forall ((s0@@1 T@Seq_3395) (s1@@1 T@Seq_3395) ) (!  (and (=> (= s0@@1 |Seq#Empty_3395|) (= (|Seq#Append_4579| s0@@1 s1@@1) s1@@1)) (=> (= s1@@1 |Seq#Empty_3395|) (= (|Seq#Append_4579| s0@@1 s1@@1) s0@@1)))
 :qid |stdinbpl.296:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_4579| s0@@1 s1@@1))
)))
(assert (forall ((t@@1 Int) ) (! (= (|Seq#Index_3395| (|Seq#Singleton_4579| t@@1) 0) t@@1)
 :qid |stdinbpl.300:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_4579| t@@1))
)))
(assert (forall ((s@@9 T@Seq_3395) ) (! (<= 0 (|Seq#Length_3395| s@@9))
 :qid |stdinbpl.279:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3395| s@@9))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_29357) (i@@6 Int) ) (!  (and (= (dummy Heap@@14 i@@6) (|dummy'| Heap@@14 i@@6)) (dummyFunction_3791 (|dummy#triggerStateless| i@@6)))
 :qid |stdinbpl.667:15|
 :skolemid |60|
 :pattern ( (dummy Heap@@14 i@@6))
)))
(assert (forall ((s0@@2 T@Seq_3395) (s1@@2 T@Seq_3395) ) (!  (=> (|Seq#Equal_3395| s0@@2 s1@@2) (and (= (|Seq#Length_3395| s0@@2) (|Seq#Length_3395| s1@@2)) (forall ((j@@4 Int) ) (!  (=> (and (<= 0 j@@4) (< j@@4 (|Seq#Length_3395| s0@@2))) (= (|Seq#Index_3395| s0@@2 j@@4) (|Seq#Index_3395| s1@@2 j@@4)))
 :qid |stdinbpl.575:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3395| s0@@2 j@@4))
 :pattern ( (|Seq#Index_3395| s1@@2 j@@4))
))))
 :qid |stdinbpl.572:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3395| s0@@2 s1@@2))
)))
(assert (forall ((t@@2 Int) ) (! (= (|Seq#Length_3395| (|Seq#Singleton_4579| t@@2)) 1)
 :qid |stdinbpl.287:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_4579| t@@2))
)))
(assert (forall ((s@@10 T@Seq_3395) (t@@3 T@Seq_3395) (n@@8 Int) ) (!  (=> (and (< 0 n@@8) (<= n@@8 (|Seq#Length_3395| s@@10))) (= (|Seq#Take_4579| (|Seq#Append_4579| s@@10 t@@3) n@@8) (|Seq#Take_4579| s@@10 n@@8)))
 :qid |stdinbpl.429:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_4579| (|Seq#Append_4579| s@@10 t@@3) n@@8))
)))
(assert (forall ((s@@11 T@Seq_3395) (i@@7 Int) (v@@1 Int) ) (!  (=> (and (<= 0 i@@7) (< i@@7 (|Seq#Length_3395| s@@11))) (= (|Seq#Length_3395| (|Seq#Update_3395| s@@11 i@@7 v@@1)) (|Seq#Length_3395| s@@11)))
 :qid |stdinbpl.328:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3395| (|Seq#Update_3395| s@@11 i@@7 v@@1)))
 :pattern ( (|Seq#Length_3395| s@@11) (|Seq#Update_3395| s@@11 i@@7 v@@1))
)))
(assert (forall ((a_2@@0 T@IArrayDomainType) (i@@8 Int) ) (!  (and (= (first (loc a_2@@0 i@@8)) a_2@@0) (= (second (loc a_2@@0 i@@8)) i@@8))
 :qid |stdinbpl.641:15|
 :skolemid |58|
 :pattern ( (loc a_2@@0 i@@8))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_29357) (o_36 T@Ref) (f_43 T@Field_20221_84854) (v@@2 T@FrameType) ) (! (succHeap Heap@@15 (PolymorphicMapType_29357 (|PolymorphicMapType_29357_19977_53#PolymorphicMapType_29357| Heap@@15) (|PolymorphicMapType_29357_19980_19981#PolymorphicMapType_29357| Heap@@15) (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| Heap@@15) (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| Heap@@15) (store (|PolymorphicMapType_29357_29417_84854#PolymorphicMapType_29357| Heap@@15) o_36 f_43 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_29357 (|PolymorphicMapType_29357_19977_53#PolymorphicMapType_29357| Heap@@15) (|PolymorphicMapType_29357_19980_19981#PolymorphicMapType_29357| Heap@@15) (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| Heap@@15) (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| Heap@@15) (store (|PolymorphicMapType_29357_29417_84854#PolymorphicMapType_29357| Heap@@15) o_36 f_43 v@@2)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_29357) (o_36@@0 T@Ref) (f_43@@0 T@Field_20221_84987) (v@@3 T@PolymorphicMapType_29906) ) (! (succHeap Heap@@16 (PolymorphicMapType_29357 (|PolymorphicMapType_29357_19977_53#PolymorphicMapType_29357| Heap@@16) (|PolymorphicMapType_29357_19980_19981#PolymorphicMapType_29357| Heap@@16) (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| Heap@@16) (store (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| Heap@@16) o_36@@0 f_43@@0 v@@3) (|PolymorphicMapType_29357_29417_84854#PolymorphicMapType_29357| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_29357 (|PolymorphicMapType_29357_19977_53#PolymorphicMapType_29357| Heap@@16) (|PolymorphicMapType_29357_19980_19981#PolymorphicMapType_29357| Heap@@16) (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| Heap@@16) (store (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| Heap@@16) o_36@@0 f_43@@0 v@@3) (|PolymorphicMapType_29357_29417_84854#PolymorphicMapType_29357| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_29357) (o_36@@1 T@Ref) (f_43@@1 T@Field_35588_3612) (v@@4 Int) ) (! (succHeap Heap@@17 (PolymorphicMapType_29357 (|PolymorphicMapType_29357_19977_53#PolymorphicMapType_29357| Heap@@17) (|PolymorphicMapType_29357_19980_19981#PolymorphicMapType_29357| Heap@@17) (store (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| Heap@@17) o_36@@1 f_43@@1 v@@4) (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| Heap@@17) (|PolymorphicMapType_29357_29417_84854#PolymorphicMapType_29357| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_29357 (|PolymorphicMapType_29357_19977_53#PolymorphicMapType_29357| Heap@@17) (|PolymorphicMapType_29357_19980_19981#PolymorphicMapType_29357| Heap@@17) (store (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| Heap@@17) o_36@@1 f_43@@1 v@@4) (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| Heap@@17) (|PolymorphicMapType_29357_29417_84854#PolymorphicMapType_29357| Heap@@17)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_29357) (o_36@@2 T@Ref) (f_43@@2 T@Field_29430_29431) (v@@5 T@Ref) ) (! (succHeap Heap@@18 (PolymorphicMapType_29357 (|PolymorphicMapType_29357_19977_53#PolymorphicMapType_29357| Heap@@18) (store (|PolymorphicMapType_29357_19980_19981#PolymorphicMapType_29357| Heap@@18) o_36@@2 f_43@@2 v@@5) (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| Heap@@18) (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| Heap@@18) (|PolymorphicMapType_29357_29417_84854#PolymorphicMapType_29357| Heap@@18)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_29357 (|PolymorphicMapType_29357_19977_53#PolymorphicMapType_29357| Heap@@18) (store (|PolymorphicMapType_29357_19980_19981#PolymorphicMapType_29357| Heap@@18) o_36@@2 f_43@@2 v@@5) (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| Heap@@18) (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| Heap@@18) (|PolymorphicMapType_29357_29417_84854#PolymorphicMapType_29357| Heap@@18)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_29357) (o_36@@3 T@Ref) (f_43@@3 T@Field_29417_53) (v@@6 Bool) ) (! (succHeap Heap@@19 (PolymorphicMapType_29357 (store (|PolymorphicMapType_29357_19977_53#PolymorphicMapType_29357| Heap@@19) o_36@@3 f_43@@3 v@@6) (|PolymorphicMapType_29357_19980_19981#PolymorphicMapType_29357| Heap@@19) (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| Heap@@19) (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| Heap@@19) (|PolymorphicMapType_29357_29417_84854#PolymorphicMapType_29357| Heap@@19)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_29357 (store (|PolymorphicMapType_29357_19977_53#PolymorphicMapType_29357| Heap@@19) o_36@@3 f_43@@3 v@@6) (|PolymorphicMapType_29357_19980_19981#PolymorphicMapType_29357| Heap@@19) (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| Heap@@19) (|PolymorphicMapType_29357_20221_85031#PolymorphicMapType_29357| Heap@@19) (|PolymorphicMapType_29357_29417_84854#PolymorphicMapType_29357| Heap@@19)))
)))
(assert (forall ((s@@12 T@Seq_3395) (t@@4 T@Seq_3395) (n@@9 Int) ) (!  (=> (and (< 0 n@@9) (<= n@@9 (|Seq#Length_3395| s@@12))) (= (|Seq#Drop_4579| (|Seq#Append_4579| s@@12 t@@4) n@@9) (|Seq#Append_4579| (|Seq#Drop_4579| s@@12 n@@9) t@@4)))
 :qid |stdinbpl.443:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_4579| (|Seq#Append_4579| s@@12 t@@4) n@@9))
)))
(assert (forall ((s@@13 T@Seq_3395) (n@@10 Int) (i@@9 Int) ) (!  (=> (and (and (< 0 n@@10) (<= n@@10 i@@9)) (< i@@9 (|Seq#Length_3395| s@@13))) (and (= (|Seq#Add| (|Seq#Sub| i@@9 n@@10) n@@10) i@@9) (= (|Seq#Index_3395| (|Seq#Drop_4579| s@@13 n@@10) (|Seq#Sub| i@@9 n@@10)) (|Seq#Index_3395| s@@13 i@@9))))
 :qid |stdinbpl.379:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_4579| s@@13 n@@10) (|Seq#Index_3395| s@@13 i@@9))
)))
(assert (forall ((s0@@3 T@Seq_3395) (s1@@3 T@Seq_3395) (n@@11 Int) ) (!  (=> (and (and (and (not (= s0@@3 |Seq#Empty_3395|)) (not (= s1@@3 |Seq#Empty_3395|))) (<= 0 n@@11)) (< n@@11 (|Seq#Length_3395| s0@@3))) (= (|Seq#Index_3395| (|Seq#Append_4579| s0@@3 s1@@3) n@@11) (|Seq#Index_3395| s0@@3 n@@11)))
 :qid |stdinbpl.319:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3395| (|Seq#Append_4579| s0@@3 s1@@3) n@@11))
 :pattern ( (|Seq#Index_3395| s0@@3 n@@11) (|Seq#Append_4579| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3395) (s1@@4 T@Seq_3395) (m Int) ) (!  (=> (and (and (and (not (= s0@@4 |Seq#Empty_3395|)) (not (= s1@@4 |Seq#Empty_3395|))) (<= 0 m)) (< m (|Seq#Length_3395| s1@@4))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_3395| s0@@4)) (|Seq#Length_3395| s0@@4)) m) (= (|Seq#Index_3395| (|Seq#Append_4579| s0@@4 s1@@4) (|Seq#Add| m (|Seq#Length_3395| s0@@4))) (|Seq#Index_3395| s1@@4 m))))
 :qid |stdinbpl.324:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3395| s1@@4 m) (|Seq#Append_4579| s0@@4 s1@@4))
)))
(assert (forall ((o_36@@4 T@Ref) (f_41 T@Field_29430_29431) (Heap@@20 T@PolymorphicMapType_29357) ) (!  (=> (select (|PolymorphicMapType_29357_19977_53#PolymorphicMapType_29357| Heap@@20) o_36@@4 $allocated) (select (|PolymorphicMapType_29357_19977_53#PolymorphicMapType_29357| Heap@@20) (select (|PolymorphicMapType_29357_19980_19981#PolymorphicMapType_29357| Heap@@20) o_36@@4 f_41) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_29357_19980_19981#PolymorphicMapType_29357| Heap@@20) o_36@@4 f_41))
)))
(assert (forall ((s@@14 T@Seq_3395) (x@@1 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_3395| s@@14))) (= (|Seq#Index_3395| s@@14 i@@10) x@@1)) (|Seq#Contains_3395| s@@14 x@@1))
 :qid |stdinbpl.476:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3395| s@@14 x@@1) (|Seq#Index_3395| s@@14 i@@10))
)))
(assert (forall ((s0@@5 T@Seq_3395) (s1@@5 T@Seq_3395) ) (!  (or (or (and (= s0@@5 s1@@5) (|Seq#Equal_3395| s0@@5 s1@@5)) (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_3395| s0@@5 s1@@5))) (not (= (|Seq#Length_3395| s0@@5) (|Seq#Length_3395| s1@@5))))) (and (and (and (and (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_3395| s0@@5 s1@@5))) (= (|Seq#Length_3395| s0@@5) (|Seq#Length_3395| s1@@5))) (= (|Seq#SkolemDiff_3395| s0@@5 s1@@5) (|Seq#SkolemDiff_3395| s1@@5 s0@@5))) (<= 0 (|Seq#SkolemDiff_3395| s0@@5 s1@@5))) (< (|Seq#SkolemDiff_3395| s0@@5 s1@@5) (|Seq#Length_3395| s0@@5))) (not (= (|Seq#Index_3395| s0@@5 (|Seq#SkolemDiff_3395| s0@@5 s1@@5)) (|Seq#Index_3395| s1@@5 (|Seq#SkolemDiff_3395| s0@@5 s1@@5))))))
 :qid |stdinbpl.580:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3395| s0@@5 s1@@5))
)))
(assert (forall ((p@@1 T@Field_20221_84854) (v_1@@0 T@FrameType) (q T@Field_20221_84854) (w@@0 T@FrameType) (r T@Field_20221_84854) (u T@FrameType) ) (!  (=> (and (InsidePredicate_29417_29417 p@@1 v_1@@0 q w@@0) (InsidePredicate_29417_29417 q w@@0 r u)) (InsidePredicate_29417_29417 p@@1 v_1@@0 r u))
 :qid |stdinbpl.247:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29417_29417 p@@1 v_1@@0 q w@@0) (InsidePredicate_29417_29417 q w@@0 r u))
)))
(assert (forall ((s@@15 T@Seq_3395) ) (!  (=> (= (|Seq#Length_3395| s@@15) 0) (= s@@15 |Seq#Empty_3395|))
 :qid |stdinbpl.283:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3395| s@@15))
)))
(assert (forall ((s@@16 T@Seq_3395) (n@@12 Int) ) (!  (=> (<= n@@12 0) (= (|Seq#Take_4579| s@@16 n@@12) |Seq#Empty_3395|))
 :qid |stdinbpl.459:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_4579| s@@16 n@@12))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid

