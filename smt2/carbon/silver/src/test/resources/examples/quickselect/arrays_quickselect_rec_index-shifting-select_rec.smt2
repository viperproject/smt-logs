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
(declare-fun i_32 () Int)
(declare-fun pw () T@Seq_3395)
(declare-fun QPMask@8 () T@PolymorphicMapType_29378)
(declare-fun a_2@@1 () T@IArrayDomainType)
(declare-fun left_1 () Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_29378)
(declare-fun PostHeap@0 () T@PolymorphicMapType_29357)
(declare-fun i_31 () Int)
(declare-fun j_19 () Int)
(declare-fun right () Int)
(declare-fun i_30 () Int)
(declare-fun storeIndex () Int)
(declare-fun i_29 () Int)
(declare-fun i_24 () Int)
(declare-fun qpRange10 (T@Ref) Bool)
(declare-fun invRecv10 (T@Ref) Int)
(declare-fun n@@13 () Int)
(declare-fun pwRec@0 () T@Seq_3395)
(declare-fun i_34 () Int)
(declare-fun pwPar@0 () T@Seq_3395)
(declare-fun i_33 () Int)
(declare-fun i_23 () Int)
(declare-fun pw@2 () T@Seq_3395)
(declare-fun Heap@2 () T@PolymorphicMapType_29357)
(declare-fun Heap@@21 () T@PolymorphicMapType_29357)
(declare-fun i_21 () Int)
(declare-fun j_2_1 () Int)
(declare-fun i_19 () Int)
(declare-fun storeIndex@4 () Int)
(declare-fun i_17 () Int)
(declare-fun i_15 () Int)
(declare-fun Mask@2 () T@PolymorphicMapType_29378)
(declare-fun neverTriggered11 (Int) Bool)
(declare-fun qpRange11 (T@Ref) Bool)
(declare-fun invRecv11 (T@Ref) Int)
(declare-fun QPMask@7 () T@PolymorphicMapType_29378)
(declare-fun Heap@1 () T@PolymorphicMapType_29357)
(declare-fun Mask@1 () T@PolymorphicMapType_29378)
(declare-fun storeIndex@3 () Int)
(declare-fun pw@1 () T@Seq_3395)
(declare-fun Heap@0 () T@PolymorphicMapType_29357)
(declare-fun Mask@0 () T@PolymorphicMapType_29378)
(declare-fun storeIndex@2 () Int)
(declare-fun ExhaleHeap@1 () T@PolymorphicMapType_29357)
(declare-fun QPMask@4 () T@PolymorphicMapType_29378)
(declare-fun storeIndex@0 () Int)
(declare-fun pivotIndex@0 () Int)
(declare-fun arg_right@0 () Int)
(declare-fun neverTriggered14 (Int) Bool)
(declare-fun QPMask@2 () T@PolymorphicMapType_29378)
(declare-fun qpRange14 (T@Ref) Bool)
(declare-fun invRecv14 (T@Ref) Int)
(declare-fun QPMask@3 () T@PolymorphicMapType_29378)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_29357)
(declare-fun qpRange15 (T@Ref) Bool)
(declare-fun invRecv15 (T@Ref) Int)
(declare-fun pwRec@1 () T@Seq_3395)
(declare-fun ExhaleHeap@2 () T@PolymorphicMapType_29357)
(declare-fun QPMask@6 () T@PolymorphicMapType_29378)
(declare-fun storeIndex@1 () Int)
(declare-fun pw@0 () T@Seq_3395)
(declare-fun i_36 () Int)
(declare-fun i_35 () Int)
(declare-fun arg_left@0 () Int)
(declare-fun neverTriggered16 (Int) Bool)
(declare-fun qpRange16 (T@Ref) Bool)
(declare-fun invRecv16 (T@Ref) Int)
(declare-fun QPMask@5 () T@PolymorphicMapType_29378)
(declare-fun qpRange17 (T@Ref) Bool)
(declare-fun invRecv17 (T@Ref) Int)
(declare-fun pivotIndex () Int)
(declare-fun neverTriggered12 (Int) Bool)
(declare-fun qpRange12 (T@Ref) Bool)
(declare-fun invRecv12 (T@Ref) Int)
(declare-fun QPMask@1 () T@PolymorphicMapType_29378)
(declare-fun qpRange13 (T@Ref) Bool)
(declare-fun invRecv13 (T@Ref) Int)
(declare-fun qpRange9 (T@Ref) Bool)
(declare-fun invRecv9 (T@Ref) Int)
(set-info :boogie-vc-id select_rec)
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
 (=> (= (ControlFlow 0 0) 158) (let ((anon25_correct true))
(let ((anon90_Else_correct  (=> (and (not (and (<= 0 i_32) (< i_32 (|Seq#Length_3395| pw)))) (= (ControlFlow 0 147) 141)) anon25_correct)))
(let ((anon90_Then_correct  (=> (and (<= 0 i_32) (< i_32 (|Seq#Length_3395| pw))) (and (=> (= (ControlFlow 0 142) (- 0 146)) (HasDirectPerm_20221_3612 QPMask@8 (loc a_2@@1 (+ left_1 i_32)) val)) (=> (HasDirectPerm_20221_3612 QPMask@8 (loc a_2@@1 (+ left_1 i_32)) val) (and (=> (= (ControlFlow 0 142) (- 0 145)) (>= i_32 0)) (=> (>= i_32 0) (and (=> (= (ControlFlow 0 142) (- 0 144)) (< i_32 (|Seq#Length_3395| pw))) (=> (< i_32 (|Seq#Length_3395| pw)) (and (=> (= (ControlFlow 0 142) (- 0 143)) (HasDirectPerm_20221_3612 QPMask@0 (loc a_2@@1 (|Seq#Index_3395| pw i_32)) val)) (=> (HasDirectPerm_20221_3612 QPMask@0 (loc a_2@@1 (|Seq#Index_3395| pw i_32)) val) (=> (= (ControlFlow 0 142) 141) anon25_correct))))))))))))
(let ((anon89_Else_correct true))
(let ((anon87_Else_correct  (=> (and (forall ((i_11_1 Int) (j_1 Int) ) (!  (=> (and (<= 0 i_11_1) (and (< i_11_1 j_1) (< j_1 (|Seq#Length_3395| pw)))) (not (= (|Seq#Index_3395| pw i_11_1) (|Seq#Index_3395| pw j_1))))
 :qid |stdinbpl.2218:20|
 :skolemid |162|
 :pattern ( (|Seq#Index_3395| pw i_11_1) (|Seq#Index_3395| pw j_1))
)) (state PostHeap@0 QPMask@8)) (and (and (=> (= (ControlFlow 0 148) 140) anon89_Else_correct) (=> (= (ControlFlow 0 148) 142) anon90_Then_correct)) (=> (= (ControlFlow 0 148) 147) anon90_Else_correct)))))
(let ((anon21_correct true))
(let ((anon88_Else_correct  (=> (and (not (and (<= 0 i_31) (and (< i_31 j_19) (< j_19 (|Seq#Length_3395| pw))))) (= (ControlFlow 0 139) 133)) anon21_correct)))
(let ((anon88_Then_correct  (=> (and (<= 0 i_31) (and (< i_31 j_19) (< j_19 (|Seq#Length_3395| pw)))) (and (=> (= (ControlFlow 0 134) (- 0 138)) (>= i_31 0)) (=> (>= i_31 0) (and (=> (= (ControlFlow 0 134) (- 0 137)) (< i_31 (|Seq#Length_3395| pw))) (=> (< i_31 (|Seq#Length_3395| pw)) (and (=> (= (ControlFlow 0 134) (- 0 136)) (>= j_19 0)) (=> (>= j_19 0) (and (=> (= (ControlFlow 0 134) (- 0 135)) (< j_19 (|Seq#Length_3395| pw))) (=> (< j_19 (|Seq#Length_3395| pw)) (=> (= (ControlFlow 0 134) 133) anon21_correct))))))))))))
(let ((anon84_Else_correct  (=> (and (forall ((i_9_1 Int) ) (!  (=> (and (<= 0 i_9_1) (< i_9_1 (|Seq#Length_3395| pw))) (and (<= left_1 (|Seq#Index_3395| pw i_9_1)) (<= (|Seq#Index_3395| pw i_9_1) right)))
 :qid |stdinbpl.2198:20|
 :skolemid |161|
 :pattern ( (|Seq#Index_3395| pw i_9_1))
)) (state PostHeap@0 QPMask@8)) (and (and (=> (= (ControlFlow 0 149) 148) anon87_Else_correct) (=> (= (ControlFlow 0 149) 134) anon88_Then_correct)) (=> (= (ControlFlow 0 149) 139) anon88_Else_correct)))))
(let ((anon17_correct true))
(let ((anon86_Else_correct  (=> (and (< (|Seq#Index_3395| pw i_30) left_1) (= (ControlFlow 0 129) 124)) anon17_correct)))
(let ((anon86_Then_correct  (=> (<= left_1 (|Seq#Index_3395| pw i_30)) (and (=> (= (ControlFlow 0 126) (- 0 128)) (>= i_30 0)) (=> (>= i_30 0) (and (=> (= (ControlFlow 0 126) (- 0 127)) (< i_30 (|Seq#Length_3395| pw))) (=> (< i_30 (|Seq#Length_3395| pw)) (=> (= (ControlFlow 0 126) 124) anon17_correct))))))))
(let ((anon85_Then_correct  (=> (and (<= 0 i_30) (< i_30 (|Seq#Length_3395| pw))) (and (=> (= (ControlFlow 0 130) (- 0 132)) (>= i_30 0)) (=> (>= i_30 0) (and (=> (= (ControlFlow 0 130) (- 0 131)) (< i_30 (|Seq#Length_3395| pw))) (=> (< i_30 (|Seq#Length_3395| pw)) (and (=> (= (ControlFlow 0 130) 126) anon86_Then_correct) (=> (= (ControlFlow 0 130) 129) anon86_Else_correct)))))))))
(let ((anon85_Else_correct  (=> (and (not (and (<= 0 i_30) (< i_30 (|Seq#Length_3395| pw)))) (= (ControlFlow 0 125) 124)) anon17_correct)))
(let ((anon82_Else_correct  (=> (and (and (forall ((i_7_1 Int) ) (!  (=> (and (< storeIndex i_7_1) (<= i_7_1 right)) (<= (select (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| PostHeap@0) (loc a_2@@1 storeIndex) val) (select (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| PostHeap@0) (loc a_2@@1 i_7_1) val)))
 :qid |stdinbpl.2174:20|
 :skolemid |160|
 :pattern ( (loc a_2@@1 i_7_1))
)) (state PostHeap@0 QPMask@8)) (and (= (|Seq#Length_3395| pw) (- (+ right 1) left_1)) (state PostHeap@0 QPMask@8))) (and (and (=> (= (ControlFlow 0 150) 149) anon84_Else_correct) (=> (= (ControlFlow 0 150) 130) anon85_Then_correct)) (=> (= (ControlFlow 0 150) 125) anon85_Else_correct)))))
(let ((anon12_correct true))
(let ((anon83_Else_correct  (=> (and (not (and (< storeIndex i_29) (<= i_29 right))) (= (ControlFlow 0 123) 119)) anon12_correct)))
(let ((anon83_Then_correct  (=> (and (< storeIndex i_29) (<= i_29 right)) (and (=> (= (ControlFlow 0 120) (- 0 122)) (HasDirectPerm_20221_3612 QPMask@8 (loc a_2@@1 storeIndex) val)) (=> (HasDirectPerm_20221_3612 QPMask@8 (loc a_2@@1 storeIndex) val) (and (=> (= (ControlFlow 0 120) (- 0 121)) (HasDirectPerm_20221_3612 QPMask@8 (loc a_2@@1 i_29) val)) (=> (HasDirectPerm_20221_3612 QPMask@8 (loc a_2@@1 i_29) val) (=> (= (ControlFlow 0 120) 119) anon12_correct))))))))
(let ((anon80_Else_correct  (=> (and (forall ((i_5 Int) ) (!  (=> (and (<= left_1 i_5) (< i_5 storeIndex)) (<= (select (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| PostHeap@0) (loc a_2@@1 i_5) val) (select (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| PostHeap@0) (loc a_2@@1 storeIndex) val)))
 :qid |stdinbpl.2158:20|
 :skolemid |159|
 :pattern ( (loc a_2@@1 i_5))
)) (state PostHeap@0 QPMask@8)) (and (and (=> (= (ControlFlow 0 151) 150) anon82_Else_correct) (=> (= (ControlFlow 0 151) 120) anon83_Then_correct)) (=> (= (ControlFlow 0 151) 123) anon83_Else_correct)))))
(let ((anon8_correct true))
(let ((anon81_Else_correct  (=> (and (not (and (<= left_1 i_24) (< i_24 storeIndex))) (= (ControlFlow 0 118) 114)) anon8_correct)))
(let ((anon81_Then_correct  (=> (and (<= left_1 i_24) (< i_24 storeIndex)) (and (=> (= (ControlFlow 0 115) (- 0 117)) (HasDirectPerm_20221_3612 QPMask@8 (loc a_2@@1 i_24) val)) (=> (HasDirectPerm_20221_3612 QPMask@8 (loc a_2@@1 i_24) val) (and (=> (= (ControlFlow 0 115) (- 0 116)) (HasDirectPerm_20221_3612 QPMask@8 (loc a_2@@1 storeIndex) val)) (=> (HasDirectPerm_20221_3612 QPMask@8 (loc a_2@@1 storeIndex) val) (=> (= (ControlFlow 0 115) 114) anon8_correct))))))))
(let ((anon79_Else_correct  (and (=> (= (ControlFlow 0 152) (- 0 153)) (forall ((i_3 Int) (i_3_1 Int) ) (!  (=> (and (and (and (and (not (= i_3 i_3_1)) (and (<= left_1 i_3) (<= i_3 right))) (and (<= left_1 i_3_1) (<= i_3_1 right))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i_3) (loc a_2@@1 i_3_1))))
 :qid |stdinbpl.2112:15|
 :skolemid |153|
))) (=> (forall ((i_3@@0 Int) (i_3_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_3@@0 i_3_1@@0)) (and (<= left_1 i_3@@0) (<= i_3@@0 right))) (and (<= left_1 i_3_1@@0) (<= i_3_1@@0 right))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i_3@@0) (loc a_2@@1 i_3_1@@0))))
 :qid |stdinbpl.2112:15|
 :skolemid |153|
)) (=> (and (and (forall ((i_3@@1 Int) ) (!  (=> (and (and (<= left_1 i_3@@1) (<= i_3@@1 right)) (< NoPerm FullPerm)) (and (qpRange10 (loc a_2@@1 i_3@@1)) (= (invRecv10 (loc a_2@@1 i_3@@1)) i_3@@1)))
 :qid |stdinbpl.2118:22|
 :skolemid |154|
 :pattern ( (loc a_2@@1 i_3@@1))
 :pattern ( (loc a_2@@1 i_3@@1))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (and (<= left_1 (invRecv10 o_4)) (<= (invRecv10 o_4) right)) (< NoPerm FullPerm)) (qpRange10 o_4)) (= (loc a_2@@1 (invRecv10 o_4)) o_4))
 :qid |stdinbpl.2122:22|
 :skolemid |155|
 :pattern ( (invRecv10 o_4))
))) (and (forall ((i_3@@2 Int) ) (!  (=> (and (<= left_1 i_3@@2) (<= i_3@@2 right)) (not (= (loc a_2@@1 i_3@@2) null)))
 :qid |stdinbpl.2128:22|
 :skolemid |156|
 :pattern ( (loc a_2@@1 i_3@@2))
 :pattern ( (loc a_2@@1 i_3@@2))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (and (<= left_1 (invRecv10 o_4@@0)) (<= (invRecv10 o_4@@0) right)) (< NoPerm FullPerm)) (qpRange10 o_4@@0)) (and (=> (< NoPerm FullPerm) (= (loc a_2@@1 (invRecv10 o_4@@0)) o_4@@0)) (= (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@8) o_4@@0 val) (+ (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| ZeroMask) o_4@@0 val) FullPerm)))) (=> (not (and (and (and (<= left_1 (invRecv10 o_4@@0)) (<= (invRecv10 o_4@@0) right)) (< NoPerm FullPerm)) (qpRange10 o_4@@0))) (= (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@8) o_4@@0 val) (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| ZeroMask) o_4@@0 val))))
 :qid |stdinbpl.2134:22|
 :skolemid |157|
 :pattern ( (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@8) o_4@@0 val))
)))) (=> (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_29417_53) ) (!  (=> true (= (select (|PolymorphicMapType_29378_20221_53#PolymorphicMapType_29378| ZeroMask) o_4@@1 f_5) (select (|PolymorphicMapType_29378_20221_53#PolymorphicMapType_29378| QPMask@8) o_4@@1 f_5)))
 :qid |stdinbpl.2138:29|
 :skolemid |158|
 :pattern ( (select (|PolymorphicMapType_29378_20221_53#PolymorphicMapType_29378| ZeroMask) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_29378_20221_53#PolymorphicMapType_29378| QPMask@8) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_29430_29431) ) (!  (=> true (= (select (|PolymorphicMapType_29378_20221_29431#PolymorphicMapType_29378| ZeroMask) o_4@@2 f_5@@0) (select (|PolymorphicMapType_29378_20221_29431#PolymorphicMapType_29378| QPMask@8) o_4@@2 f_5@@0)))
 :qid |stdinbpl.2138:29|
 :skolemid |158|
 :pattern ( (select (|PolymorphicMapType_29378_20221_29431#PolymorphicMapType_29378| ZeroMask) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_29378_20221_29431#PolymorphicMapType_29378| QPMask@8) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_35588_3612) ) (!  (=> (not (= f_5@@1 val)) (= (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| ZeroMask) o_4@@3 f_5@@1) (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@8) o_4@@3 f_5@@1)))
 :qid |stdinbpl.2138:29|
 :skolemid |158|
 :pattern ( (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| ZeroMask) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@8) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_20221_84854) ) (!  (=> true (= (select (|PolymorphicMapType_29378_20221_84854#PolymorphicMapType_29378| ZeroMask) o_4@@4 f_5@@2) (select (|PolymorphicMapType_29378_20221_84854#PolymorphicMapType_29378| QPMask@8) o_4@@4 f_5@@2)))
 :qid |stdinbpl.2138:29|
 :skolemid |158|
 :pattern ( (select (|PolymorphicMapType_29378_20221_84854#PolymorphicMapType_29378| ZeroMask) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_29378_20221_84854#PolymorphicMapType_29378| QPMask@8) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_20221_84987) ) (!  (=> true (= (select (|PolymorphicMapType_29378_20221_89109#PolymorphicMapType_29378| ZeroMask) o_4@@5 f_5@@3) (select (|PolymorphicMapType_29378_20221_89109#PolymorphicMapType_29378| QPMask@8) o_4@@5 f_5@@3)))
 :qid |stdinbpl.2138:29|
 :skolemid |158|
 :pattern ( (select (|PolymorphicMapType_29378_20221_89109#PolymorphicMapType_29378| ZeroMask) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_29378_20221_89109#PolymorphicMapType_29378| QPMask@8) o_4@@5 f_5@@3))
))) (and (and (state PostHeap@0 QPMask@8) (state PostHeap@0 QPMask@8)) (and (= storeIndex n@@13) (state PostHeap@0 QPMask@8)))) (and (and (=> (= (ControlFlow 0 152) 151) anon80_Else_correct) (=> (= (ControlFlow 0 152) 115) anon81_Then_correct)) (=> (= (ControlFlow 0 152) 118) anon81_Else_correct))))))))
(let ((anon79_Then_correct true))
(let ((anon78_Then_correct  (=> (and (and (state PostHeap@0 ZeroMask) (<= left_1 storeIndex)) (and (<= storeIndex right) (state PostHeap@0 ZeroMask))) (and (=> (= (ControlFlow 0 154) 113) anon79_Then_correct) (=> (= (ControlFlow 0 154) 152) anon79_Else_correct)))))
(let ((anon41_correct true))
(let ((anon98_Else_correct  (=> (and (not (and (<= (|Seq#Length_3395| pwRec@0) i_34) (< i_34 (|Seq#Length_3395| pwPar@0)))) (= (ControlFlow 0 88) 82)) anon41_correct)))
(let ((anon98_Then_correct  (=> (and (<= (|Seq#Length_3395| pwRec@0) i_34) (< i_34 (|Seq#Length_3395| pwPar@0))) (and (=> (= (ControlFlow 0 83) (- 0 87)) (>= i_34 0)) (=> (>= i_34 0) (and (=> (= (ControlFlow 0 83) (- 0 86)) (< i_34 (|Seq#Length_3395| pw))) (=> (< i_34 (|Seq#Length_3395| pw)) (and (=> (= (ControlFlow 0 83) (- 0 85)) (>= i_34 0)) (=> (>= i_34 0) (and (=> (= (ControlFlow 0 83) (- 0 84)) (< i_34 (|Seq#Length_3395| pwPar@0))) (=> (< i_34 (|Seq#Length_3395| pwPar@0)) (=> (= (ControlFlow 0 83) 82) anon41_correct))))))))))))
(let ((anon37_correct true))
(let ((anon96_Else_correct  (=> (and (not (and (<= 0 i_33) (< i_33 (|Seq#Length_3395| pwRec@0)))) (= (ControlFlow 0 80) 72)) anon37_correct)))
(let ((anon96_Then_correct  (=> (and (<= 0 i_33) (< i_33 (|Seq#Length_3395| pwRec@0))) (and (=> (= (ControlFlow 0 73) (- 0 79)) (>= i_33 0)) (=> (>= i_33 0) (and (=> (= (ControlFlow 0 73) (- 0 78)) (< i_33 (|Seq#Length_3395| pw))) (=> (< i_33 (|Seq#Length_3395| pw)) (and (=> (= (ControlFlow 0 73) (- 0 77)) (>= i_33 0)) (=> (>= i_33 0) (and (=> (= (ControlFlow 0 73) (- 0 76)) (< i_33 (|Seq#Length_3395| pwRec@0))) (=> (< i_33 (|Seq#Length_3395| pwRec@0)) (and (=> (= (ControlFlow 0 73) (- 0 75)) (>= (- (|Seq#Index_3395| pwRec@0 i_33) left_1) 0)) (=> (>= (- (|Seq#Index_3395| pwRec@0 i_33) left_1) 0) (and (=> (= (ControlFlow 0 73) (- 0 74)) (< (- (|Seq#Index_3395| pwRec@0 i_33) left_1) (|Seq#Length_3395| pwPar@0))) (=> (< (- (|Seq#Index_3395| pwRec@0 i_33) left_1) (|Seq#Length_3395| pwPar@0)) (=> (= (ControlFlow 0 73) 72) anon37_correct))))))))))))))))
(let ((anon94_Then_correct true))
(let ((anon75_correct true))
(let ((anon113_Else_correct  (=> (and (not (and (<= 0 i_23) (< i_23 (|Seq#Length_3395| pw@2)))) (= (ControlFlow 0 40) 37)) anon75_correct)))
(let ((anon113_Then_correct  (=> (and (<= 0 i_23) (< i_23 (|Seq#Length_3395| pw@2))) (and (=> (= (ControlFlow 0 38) (- 0 39)) (= (select (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| Heap@2) (loc a_2@@1 (+ left_1 i_23)) val) (select (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| Heap@@21) (loc a_2@@1 (|Seq#Index_3395| pw@2 i_23)) val))) (=> (= (select (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| Heap@2) (loc a_2@@1 (+ left_1 i_23)) val) (select (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| Heap@@21) (loc a_2@@1 (|Seq#Index_3395| pw@2 i_23)) val)) (=> (= (ControlFlow 0 38) 37) anon75_correct))))))
(let ((anon112_Else_correct true))
(let ((anon110_Else_correct  (=> (forall ((i_22_1_1 Int) (j_3_1_1 Int) ) (!  (=> (and (<= 0 i_22_1_1) (and (< i_22_1_1 j_3_1_1) (< j_3_1_1 (|Seq#Length_3395| pw@2)))) (not (= (|Seq#Index_3395| pw@2 i_22_1_1) (|Seq#Index_3395| pw@2 j_3_1_1))))
 :qid |stdinbpl.2924:20|
 :skolemid |228|
 :pattern ( (|Seq#Index_3395| pw@2 i_22_1_1) (|Seq#Index_3395| pw@2 j_3_1_1))
)) (and (and (=> (= (ControlFlow 0 41) 36) anon112_Else_correct) (=> (= (ControlFlow 0 41) 38) anon113_Then_correct)) (=> (= (ControlFlow 0 41) 40) anon113_Else_correct)))))
(let ((anon71_correct true))
(let ((anon111_Else_correct  (=> (and (not (and (<= 0 i_21) (and (< i_21 j_2_1) (< j_2_1 (|Seq#Length_3395| pw@2))))) (= (ControlFlow 0 35) 32)) anon71_correct)))
(let ((anon111_Then_correct  (=> (and (<= 0 i_21) (and (< i_21 j_2_1) (< j_2_1 (|Seq#Length_3395| pw@2)))) (and (=> (= (ControlFlow 0 33) (- 0 34)) (not (= (|Seq#Index_3395| pw@2 i_21) (|Seq#Index_3395| pw@2 j_2_1)))) (=> (not (= (|Seq#Index_3395| pw@2 i_21) (|Seq#Index_3395| pw@2 j_2_1))) (=> (= (ControlFlow 0 33) 32) anon71_correct))))))
(let ((anon108_Else_correct  (=> (forall ((i_20_1_1 Int) ) (!  (=> (and (<= 0 i_20_1_1) (< i_20_1_1 (|Seq#Length_3395| pw@2))) (and (<= left_1 (|Seq#Index_3395| pw@2 i_20_1_1)) (<= (|Seq#Index_3395| pw@2 i_20_1_1) right)))
 :qid |stdinbpl.2913:20|
 :skolemid |227|
 :pattern ( (|Seq#Index_3395| pw@2 i_20_1_1))
)) (and (and (=> (= (ControlFlow 0 42) 41) anon110_Else_correct) (=> (= (ControlFlow 0 42) 33) anon111_Then_correct)) (=> (= (ControlFlow 0 42) 35) anon111_Else_correct)))))
(let ((anon67_correct true))
(let ((anon109_Else_correct  (=> (and (not (and (<= 0 i_19) (< i_19 (|Seq#Length_3395| pw@2)))) (= (ControlFlow 0 31) 27)) anon67_correct)))
(let ((anon109_Then_correct  (=> (and (<= 0 i_19) (< i_19 (|Seq#Length_3395| pw@2))) (and (=> (= (ControlFlow 0 28) (- 0 30)) (<= left_1 (|Seq#Index_3395| pw@2 i_19))) (=> (<= left_1 (|Seq#Index_3395| pw@2 i_19)) (and (=> (= (ControlFlow 0 28) (- 0 29)) (<= (|Seq#Index_3395| pw@2 i_19) right)) (=> (<= (|Seq#Index_3395| pw@2 i_19) right) (=> (= (ControlFlow 0 28) 27) anon67_correct))))))))
(let ((anon106_Else_correct  (=> (forall ((i_18_1_1 Int) ) (!  (=> (and (< storeIndex@4 i_18_1_1) (<= i_18_1_1 right)) (<= (select (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| Heap@2) (loc a_2@@1 storeIndex@4) val) (select (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| Heap@2) (loc a_2@@1 i_18_1_1) val)))
 :qid |stdinbpl.2898:20|
 :skolemid |226|
 :pattern ( (loc a_2@@1 i_18_1_1))
)) (and (=> (= (ControlFlow 0 43) (- 0 44)) (= (|Seq#Length_3395| pw@2) (- (+ right 1) left_1))) (=> (= (|Seq#Length_3395| pw@2) (- (+ right 1) left_1)) (and (and (=> (= (ControlFlow 0 43) 42) anon108_Else_correct) (=> (= (ControlFlow 0 43) 28) anon109_Then_correct)) (=> (= (ControlFlow 0 43) 31) anon109_Else_correct)))))))
(let ((anon63_correct true))
(let ((anon107_Else_correct  (=> (and (not (and (< storeIndex@4 i_17) (<= i_17 right))) (= (ControlFlow 0 26) 23)) anon63_correct)))
(let ((anon107_Then_correct  (=> (and (< storeIndex@4 i_17) (<= i_17 right)) (and (=> (= (ControlFlow 0 24) (- 0 25)) (<= (select (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| Heap@2) (loc a_2@@1 storeIndex@4) val) (select (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| Heap@2) (loc a_2@@1 i_17) val))) (=> (<= (select (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| Heap@2) (loc a_2@@1 storeIndex@4) val) (select (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| Heap@2) (loc a_2@@1 i_17) val)) (=> (= (ControlFlow 0 24) 23) anon63_correct))))))
(let ((anon104_Else_correct  (=> (forall ((i_16_1_1 Int) ) (!  (=> (and (<= left_1 i_16_1_1) (< i_16_1_1 storeIndex@4)) (<= (select (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| Heap@2) (loc a_2@@1 i_16_1_1) val) (select (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| Heap@2) (loc a_2@@1 storeIndex@4) val)))
 :qid |stdinbpl.2887:20|
 :skolemid |225|
 :pattern ( (loc a_2@@1 i_16_1_1))
)) (and (and (=> (= (ControlFlow 0 45) 43) anon106_Else_correct) (=> (= (ControlFlow 0 45) 24) anon107_Then_correct)) (=> (= (ControlFlow 0 45) 26) anon107_Else_correct)))))
(let ((anon59_correct true))
(let ((anon105_Else_correct  (=> (and (not (and (<= left_1 i_15) (< i_15 storeIndex@4))) (= (ControlFlow 0 22) 19)) anon59_correct)))
(let ((anon105_Then_correct  (=> (and (<= left_1 i_15) (< i_15 storeIndex@4)) (and (=> (= (ControlFlow 0 20) (- 0 21)) (<= (select (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| Heap@2) (loc a_2@@1 i_15) val) (select (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| Heap@2) (loc a_2@@1 storeIndex@4) val))) (=> (<= (select (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| Heap@2) (loc a_2@@1 i_15) val) (select (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| Heap@2) (loc a_2@@1 storeIndex@4) val)) (=> (= (ControlFlow 0 20) 19) anon59_correct))))))
(let ((anon56_correct  (=> (state Heap@2 Mask@2) (and (=> (= (ControlFlow 0 46) (- 0 51)) (<= left_1 storeIndex@4)) (=> (<= left_1 storeIndex@4) (and (=> (= (ControlFlow 0 46) (- 0 50)) (<= storeIndex@4 right)) (=> (<= storeIndex@4 right) (and (=> (= (ControlFlow 0 46) (- 0 49)) (forall ((i_14_1 Int) (i_14_2 Int) ) (!  (=> (and (and (and (and (not (= i_14_1 i_14_2)) (and (<= left_1 i_14_1) (<= i_14_1 right))) (and (<= left_1 i_14_2) (<= i_14_2 right))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i_14_1) (loc a_2@@1 i_14_2))))
 :qid |stdinbpl.2844:17|
 :skolemid |219|
 :pattern ( (neverTriggered11 i_14_1) (neverTriggered11 i_14_2))
))) (=> (forall ((i_14_1@@0 Int) (i_14_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_14_1@@0 i_14_2@@0)) (and (<= left_1 i_14_1@@0) (<= i_14_1@@0 right))) (and (<= left_1 i_14_2@@0) (<= i_14_2@@0 right))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i_14_1@@0) (loc a_2@@1 i_14_2@@0))))
 :qid |stdinbpl.2844:17|
 :skolemid |219|
 :pattern ( (neverTriggered11 i_14_1@@0) (neverTriggered11 i_14_2@@0))
)) (and (=> (= (ControlFlow 0 46) (- 0 48)) (forall ((i_14_1@@1 Int) ) (!  (=> (and (<= left_1 i_14_1@@1) (<= i_14_1@@1 right)) (>= (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| Mask@2) (loc a_2@@1 i_14_1@@1) val) FullPerm))
 :qid |stdinbpl.2851:17|
 :skolemid |220|
 :pattern ( (loc a_2@@1 i_14_1@@1))
 :pattern ( (loc a_2@@1 i_14_1@@1))
))) (=> (forall ((i_14_1@@2 Int) ) (!  (=> (and (<= left_1 i_14_1@@2) (<= i_14_1@@2 right)) (>= (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| Mask@2) (loc a_2@@1 i_14_1@@2) val) FullPerm))
 :qid |stdinbpl.2851:17|
 :skolemid |220|
 :pattern ( (loc a_2@@1 i_14_1@@2))
 :pattern ( (loc a_2@@1 i_14_1@@2))
)) (=> (forall ((i_14_1@@3 Int) ) (!  (=> (and (and (<= left_1 i_14_1@@3) (<= i_14_1@@3 right)) (< NoPerm FullPerm)) (and (qpRange11 (loc a_2@@1 i_14_1@@3)) (= (invRecv11 (loc a_2@@1 i_14_1@@3)) i_14_1@@3)))
 :qid |stdinbpl.2857:22|
 :skolemid |221|
 :pattern ( (loc a_2@@1 i_14_1@@3))
 :pattern ( (loc a_2@@1 i_14_1@@3))
)) (=> (and (forall ((o_4@@6 T@Ref) ) (!  (=> (and (and (<= left_1 (invRecv11 o_4@@6)) (<= (invRecv11 o_4@@6) right)) (and (< NoPerm FullPerm) (qpRange11 o_4@@6))) (= (loc a_2@@1 (invRecv11 o_4@@6)) o_4@@6))
 :qid |stdinbpl.2861:22|
 :skolemid |222|
 :pattern ( (invRecv11 o_4@@6))
)) (forall ((o_4@@7 T@Ref) ) (!  (and (=> (and (and (<= left_1 (invRecv11 o_4@@7)) (<= (invRecv11 o_4@@7) right)) (and (< NoPerm FullPerm) (qpRange11 o_4@@7))) (and (= (loc a_2@@1 (invRecv11 o_4@@7)) o_4@@7) (= (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@7) o_4@@7 val) (- (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| Mask@2) o_4@@7 val) FullPerm)))) (=> (not (and (and (<= left_1 (invRecv11 o_4@@7)) (<= (invRecv11 o_4@@7) right)) (and (< NoPerm FullPerm) (qpRange11 o_4@@7)))) (= (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@7) o_4@@7 val) (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| Mask@2) o_4@@7 val))))
 :qid |stdinbpl.2867:22|
 :skolemid |223|
 :pattern ( (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@7) o_4@@7 val))
))) (=> (and (and (and (and (forall ((o_4@@8 T@Ref) (f_5@@4 T@Field_29417_53) ) (!  (=> true (= (select (|PolymorphicMapType_29378_20221_53#PolymorphicMapType_29378| Mask@2) o_4@@8 f_5@@4) (select (|PolymorphicMapType_29378_20221_53#PolymorphicMapType_29378| QPMask@7) o_4@@8 f_5@@4)))
 :qid |stdinbpl.2873:29|
 :skolemid |224|
 :pattern ( (select (|PolymorphicMapType_29378_20221_53#PolymorphicMapType_29378| QPMask@7) o_4@@8 f_5@@4))
)) (forall ((o_4@@9 T@Ref) (f_5@@5 T@Field_29430_29431) ) (!  (=> true (= (select (|PolymorphicMapType_29378_20221_29431#PolymorphicMapType_29378| Mask@2) o_4@@9 f_5@@5) (select (|PolymorphicMapType_29378_20221_29431#PolymorphicMapType_29378| QPMask@7) o_4@@9 f_5@@5)))
 :qid |stdinbpl.2873:29|
 :skolemid |224|
 :pattern ( (select (|PolymorphicMapType_29378_20221_29431#PolymorphicMapType_29378| QPMask@7) o_4@@9 f_5@@5))
))) (forall ((o_4@@10 T@Ref) (f_5@@6 T@Field_35588_3612) ) (!  (=> (not (= f_5@@6 val)) (= (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| Mask@2) o_4@@10 f_5@@6) (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@7) o_4@@10 f_5@@6)))
 :qid |stdinbpl.2873:29|
 :skolemid |224|
 :pattern ( (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@7) o_4@@10 f_5@@6))
))) (forall ((o_4@@11 T@Ref) (f_5@@7 T@Field_20221_84854) ) (!  (=> true (= (select (|PolymorphicMapType_29378_20221_84854#PolymorphicMapType_29378| Mask@2) o_4@@11 f_5@@7) (select (|PolymorphicMapType_29378_20221_84854#PolymorphicMapType_29378| QPMask@7) o_4@@11 f_5@@7)))
 :qid |stdinbpl.2873:29|
 :skolemid |224|
 :pattern ( (select (|PolymorphicMapType_29378_20221_84854#PolymorphicMapType_29378| QPMask@7) o_4@@11 f_5@@7))
))) (forall ((o_4@@12 T@Ref) (f_5@@8 T@Field_20221_84987) ) (!  (=> true (= (select (|PolymorphicMapType_29378_20221_89109#PolymorphicMapType_29378| Mask@2) o_4@@12 f_5@@8) (select (|PolymorphicMapType_29378_20221_89109#PolymorphicMapType_29378| QPMask@7) o_4@@12 f_5@@8)))
 :qid |stdinbpl.2873:29|
 :skolemid |224|
 :pattern ( (select (|PolymorphicMapType_29378_20221_89109#PolymorphicMapType_29378| QPMask@7) o_4@@12 f_5@@8))
))) (and (=> (= (ControlFlow 0 46) (- 0 47)) (= storeIndex@4 n@@13)) (=> (= storeIndex@4 n@@13) (and (and (=> (= (ControlFlow 0 46) 45) anon104_Else_correct) (=> (= (ControlFlow 0 46) 20) anon105_Then_correct)) (=> (= (ControlFlow 0 46) 22) anon105_Else_correct))))))))))))))))))
(let ((anon55_correct  (=> (and (state Heap@1 Mask@1) (= Heap@2 Heap@1)) (=> (and (and (= Mask@2 Mask@1) (= storeIndex@4 storeIndex@3)) (and (= pw@2 pw@1) (= (ControlFlow 0 53) 46))) anon56_correct))))
(let ((anon54_correct  (=> (and (state Heap@0 Mask@0) (= Mask@1 Mask@0)) (=> (and (and (= Heap@1 Heap@0) (= storeIndex@3 storeIndex@2)) (and (= pw@1 pw) (= (ControlFlow 0 55) 53))) anon55_correct))))
(let ((anon97_Else_correct  (=> (forall ((i_42 Int) ) (!  (=> (and (<= (|Seq#Length_3395| pwRec@0) i_42) (< i_42 (|Seq#Length_3395| pwPar@0))) (= (|Seq#Index_3395| pw i_42) (|Seq#Index_3395| pwPar@0 i_42)))
 :qid |stdinbpl.2609:32|
 :skolemid |199|
 :pattern ( (|Seq#Index_3395| pw i_42))
 :pattern ( (|Seq#Index_3395| pwPar@0 i_42))
)) (=> (and (state ExhaleHeap@1 QPMask@4) (state ExhaleHeap@1 QPMask@4)) (=> (and (and (= Mask@0 QPMask@4) (= Heap@0 ExhaleHeap@1)) (and (= storeIndex@2 storeIndex@0) (= (ControlFlow 0 81) 55))) anon54_correct)))))
(let ((anon95_Else_correct  (=> (forall ((i_40 Int) ) (!  (=> (and (<= 0 i_40) (< i_40 (|Seq#Length_3395| pwRec@0))) (= (|Seq#Index_3395| pw i_40) (|Seq#Index_3395| pwPar@0 (- (|Seq#Index_3395| pwRec@0 i_40) left_1))))
 :qid |stdinbpl.2583:32|
 :skolemid |198|
 :pattern ( (|Seq#Index_3395| pw i_40))
 :pattern ( (|Seq#Index_3395| pwRec@0 i_40))
)) (=> (and (state ExhaleHeap@1 QPMask@4) (state ExhaleHeap@1 QPMask@4)) (and (and (=> (= (ControlFlow 0 89) 81) anon97_Else_correct) (=> (= (ControlFlow 0 89) 83) anon98_Then_correct)) (=> (= (ControlFlow 0 89) 88) anon98_Else_correct))))))
(let ((anon94_Else_correct  (and (=> (= (ControlFlow 0 90) (- 0 91)) (dummy ExhaleHeap@1 (|Seq#Index_3395| pwRec@0 (- storeIndex@0 left_1)))) (=> (dummy ExhaleHeap@1 (|Seq#Index_3395| pwRec@0 (- storeIndex@0 left_1))) (=> (and (and (state ExhaleHeap@1 QPMask@4) (= (|Seq#Length_3395| pw) (|Seq#Length_3395| pwPar@0))) (and (state ExhaleHeap@1 QPMask@4) (state ExhaleHeap@1 QPMask@4))) (and (and (=> (= (ControlFlow 0 90) 89) anon95_Else_correct) (=> (= (ControlFlow 0 90) 73) anon96_Then_correct)) (=> (= (ControlFlow 0 90) 80) anon96_Else_correct)))))))
(let ((anon93_Then_correct  (=> (and (< n@@13 pivotIndex@0) (= arg_right@0 (- pivotIndex@0 1))) (and (=> (= (ControlFlow 0 92) (- 0 102)) (<= 0 left_1)) (=> (<= 0 left_1) (and (=> (= (ControlFlow 0 92) (- 0 101)) (<= left_1 arg_right@0)) (=> (<= left_1 arg_right@0) (and (=> (= (ControlFlow 0 92) (- 0 100)) (< arg_right@0 (len_1 a_2@@1))) (=> (< arg_right@0 (len_1 a_2@@1)) (and (=> (= (ControlFlow 0 92) (- 0 99)) (<= left_1 n@@13)) (=> (<= left_1 n@@13) (and (=> (= (ControlFlow 0 92) (- 0 98)) (<= n@@13 arg_right@0)) (=> (<= n@@13 arg_right@0) (and (=> (= (ControlFlow 0 92) (- 0 97)) (forall ((i_32_2 Int) (i_32_3 Int) ) (!  (=> (and (and (and (and (not (= i_32_2 i_32_3)) (and (<= left_1 i_32_2) (<= i_32_2 arg_right@0))) (and (<= left_1 i_32_3) (<= i_32_3 arg_right@0))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i_32_2) (loc a_2@@1 i_32_3))))
 :qid |stdinbpl.2434:31|
 :skolemid |181|
 :pattern ( (neverTriggered14 i_32_2) (neverTriggered14 i_32_3))
))) (=> (forall ((i_32_2@@0 Int) (i_32_3@@0 Int) ) (!  (=> (and (and (and (and (not (= i_32_2@@0 i_32_3@@0)) (and (<= left_1 i_32_2@@0) (<= i_32_2@@0 arg_right@0))) (and (<= left_1 i_32_3@@0) (<= i_32_3@@0 arg_right@0))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i_32_2@@0) (loc a_2@@1 i_32_3@@0))))
 :qid |stdinbpl.2434:31|
 :skolemid |181|
 :pattern ( (neverTriggered14 i_32_2@@0) (neverTriggered14 i_32_3@@0))
)) (and (=> (= (ControlFlow 0 92) (- 0 96)) (forall ((i_32_2@@1 Int) ) (!  (=> (and (<= left_1 i_32_2@@1) (<= i_32_2@@1 arg_right@0)) (>= (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@2) (loc a_2@@1 i_32_2@@1) val) FullPerm))
 :qid |stdinbpl.2441:31|
 :skolemid |182|
 :pattern ( (loc a_2@@1 i_32_2@@1))
 :pattern ( (loc a_2@@1 i_32_2@@1))
))) (=> (forall ((i_32_2@@2 Int) ) (!  (=> (and (<= left_1 i_32_2@@2) (<= i_32_2@@2 arg_right@0)) (>= (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@2) (loc a_2@@1 i_32_2@@2) val) FullPerm))
 :qid |stdinbpl.2441:31|
 :skolemid |182|
 :pattern ( (loc a_2@@1 i_32_2@@2))
 :pattern ( (loc a_2@@1 i_32_2@@2))
)) (=> (forall ((i_32_2@@3 Int) ) (!  (=> (and (and (<= left_1 i_32_2@@3) (<= i_32_2@@3 arg_right@0)) (< NoPerm FullPerm)) (and (qpRange14 (loc a_2@@1 i_32_2@@3)) (= (invRecv14 (loc a_2@@1 i_32_2@@3)) i_32_2@@3)))
 :qid |stdinbpl.2447:36|
 :skolemid |183|
 :pattern ( (loc a_2@@1 i_32_2@@3))
 :pattern ( (loc a_2@@1 i_32_2@@3))
)) (=> (and (forall ((o_4@@13 T@Ref) ) (!  (=> (and (and (<= left_1 (invRecv14 o_4@@13)) (<= (invRecv14 o_4@@13) arg_right@0)) (and (< NoPerm FullPerm) (qpRange14 o_4@@13))) (= (loc a_2@@1 (invRecv14 o_4@@13)) o_4@@13))
 :qid |stdinbpl.2451:36|
 :skolemid |184|
 :pattern ( (invRecv14 o_4@@13))
)) (forall ((o_4@@14 T@Ref) ) (!  (and (=> (and (and (<= left_1 (invRecv14 o_4@@14)) (<= (invRecv14 o_4@@14) arg_right@0)) (and (< NoPerm FullPerm) (qpRange14 o_4@@14))) (and (= (loc a_2@@1 (invRecv14 o_4@@14)) o_4@@14) (= (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@3) o_4@@14 val) (- (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@2) o_4@@14 val) FullPerm)))) (=> (not (and (and (<= left_1 (invRecv14 o_4@@14)) (<= (invRecv14 o_4@@14) arg_right@0)) (and (< NoPerm FullPerm) (qpRange14 o_4@@14)))) (= (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@3) o_4@@14 val) (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@2) o_4@@14 val))))
 :qid |stdinbpl.2457:36|
 :skolemid |185|
 :pattern ( (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@3) o_4@@14 val))
))) (=> (and (and (and (and (and (and (forall ((o_4@@15 T@Ref) (f_5@@9 T@Field_29417_53) ) (!  (=> true (= (select (|PolymorphicMapType_29378_20221_53#PolymorphicMapType_29378| QPMask@2) o_4@@15 f_5@@9) (select (|PolymorphicMapType_29378_20221_53#PolymorphicMapType_29378| QPMask@3) o_4@@15 f_5@@9)))
 :qid |stdinbpl.2463:43|
 :skolemid |186|
 :pattern ( (select (|PolymorphicMapType_29378_20221_53#PolymorphicMapType_29378| QPMask@3) o_4@@15 f_5@@9))
)) (forall ((o_4@@16 T@Ref) (f_5@@10 T@Field_29430_29431) ) (!  (=> true (= (select (|PolymorphicMapType_29378_20221_29431#PolymorphicMapType_29378| QPMask@2) o_4@@16 f_5@@10) (select (|PolymorphicMapType_29378_20221_29431#PolymorphicMapType_29378| QPMask@3) o_4@@16 f_5@@10)))
 :qid |stdinbpl.2463:43|
 :skolemid |186|
 :pattern ( (select (|PolymorphicMapType_29378_20221_29431#PolymorphicMapType_29378| QPMask@3) o_4@@16 f_5@@10))
))) (forall ((o_4@@17 T@Ref) (f_5@@11 T@Field_35588_3612) ) (!  (=> (not (= f_5@@11 val)) (= (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@2) o_4@@17 f_5@@11) (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@3) o_4@@17 f_5@@11)))
 :qid |stdinbpl.2463:43|
 :skolemid |186|
 :pattern ( (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@3) o_4@@17 f_5@@11))
))) (forall ((o_4@@18 T@Ref) (f_5@@12 T@Field_20221_84854) ) (!  (=> true (= (select (|PolymorphicMapType_29378_20221_84854#PolymorphicMapType_29378| QPMask@2) o_4@@18 f_5@@12) (select (|PolymorphicMapType_29378_20221_84854#PolymorphicMapType_29378| QPMask@3) o_4@@18 f_5@@12)))
 :qid |stdinbpl.2463:43|
 :skolemid |186|
 :pattern ( (select (|PolymorphicMapType_29378_20221_84854#PolymorphicMapType_29378| QPMask@3) o_4@@18 f_5@@12))
))) (forall ((o_4@@19 T@Ref) (f_5@@13 T@Field_20221_84987) ) (!  (=> true (= (select (|PolymorphicMapType_29378_20221_89109#PolymorphicMapType_29378| QPMask@2) o_4@@19 f_5@@13) (select (|PolymorphicMapType_29378_20221_89109#PolymorphicMapType_29378| QPMask@3) o_4@@19 f_5@@13)))
 :qid |stdinbpl.2463:43|
 :skolemid |186|
 :pattern ( (select (|PolymorphicMapType_29378_20221_89109#PolymorphicMapType_29378| QPMask@3) o_4@@19 f_5@@13))
))) (IdenticalOnKnownLocations ExhaleHeap@0 ExhaleHeap@1 QPMask@3)) (and (<= left_1 storeIndex@0) (<= storeIndex@0 arg_right@0))) (and (=> (= (ControlFlow 0 92) (- 0 95)) (forall ((i_33_1 Int) (i_33_2 Int) ) (!  (=> (and (and (and (and (not (= i_33_1 i_33_2)) (and (<= left_1 i_33_1) (<= i_33_1 arg_right@0))) (and (<= left_1 i_33_2) (<= i_33_2 arg_right@0))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i_33_1) (loc a_2@@1 i_33_2))))
 :qid |stdinbpl.2481:29|
 :skolemid |187|
))) (=> (forall ((i_33_1@@0 Int) (i_33_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_33_1@@0 i_33_2@@0)) (and (<= left_1 i_33_1@@0) (<= i_33_1@@0 arg_right@0))) (and (<= left_1 i_33_2@@0) (<= i_33_2@@0 arg_right@0))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i_33_1@@0) (loc a_2@@1 i_33_2@@0))))
 :qid |stdinbpl.2481:29|
 :skolemid |187|
)) (=> (and (and (forall ((i_33_1@@1 Int) ) (!  (=> (and (and (<= left_1 i_33_1@@1) (<= i_33_1@@1 arg_right@0)) (< NoPerm FullPerm)) (and (qpRange15 (loc a_2@@1 i_33_1@@1)) (= (invRecv15 (loc a_2@@1 i_33_1@@1)) i_33_1@@1)))
 :qid |stdinbpl.2487:36|
 :skolemid |188|
 :pattern ( (loc a_2@@1 i_33_1@@1))
 :pattern ( (loc a_2@@1 i_33_1@@1))
)) (forall ((o_4@@20 T@Ref) ) (!  (=> (and (and (and (<= left_1 (invRecv15 o_4@@20)) (<= (invRecv15 o_4@@20) arg_right@0)) (< NoPerm FullPerm)) (qpRange15 o_4@@20)) (= (loc a_2@@1 (invRecv15 o_4@@20)) o_4@@20))
 :qid |stdinbpl.2491:36|
 :skolemid |189|
 :pattern ( (invRecv15 o_4@@20))
))) (and (forall ((i_33_1@@2 Int) ) (!  (=> (and (<= left_1 i_33_1@@2) (<= i_33_1@@2 arg_right@0)) (not (= (loc a_2@@1 i_33_1@@2) null)))
 :qid |stdinbpl.2497:36|
 :skolemid |190|
 :pattern ( (loc a_2@@1 i_33_1@@2))
 :pattern ( (loc a_2@@1 i_33_1@@2))
)) (forall ((o_4@@21 T@Ref) ) (!  (and (=> (and (and (and (<= left_1 (invRecv15 o_4@@21)) (<= (invRecv15 o_4@@21) arg_right@0)) (< NoPerm FullPerm)) (qpRange15 o_4@@21)) (and (=> (< NoPerm FullPerm) (= (loc a_2@@1 (invRecv15 o_4@@21)) o_4@@21)) (= (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@4) o_4@@21 val) (+ (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@3) o_4@@21 val) FullPerm)))) (=> (not (and (and (and (<= left_1 (invRecv15 o_4@@21)) (<= (invRecv15 o_4@@21) arg_right@0)) (< NoPerm FullPerm)) (qpRange15 o_4@@21))) (= (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@4) o_4@@21 val) (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@3) o_4@@21 val))))
 :qid |stdinbpl.2503:36|
 :skolemid |191|
 :pattern ( (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@4) o_4@@21 val))
)))) (=> (and (and (and (and (and (and (forall ((o_4@@22 T@Ref) (f_5@@14 T@Field_29417_53) ) (!  (=> true (= (select (|PolymorphicMapType_29378_20221_53#PolymorphicMapType_29378| QPMask@3) o_4@@22 f_5@@14) (select (|PolymorphicMapType_29378_20221_53#PolymorphicMapType_29378| QPMask@4) o_4@@22 f_5@@14)))
 :qid |stdinbpl.2507:43|
 :skolemid |192|
 :pattern ( (select (|PolymorphicMapType_29378_20221_53#PolymorphicMapType_29378| QPMask@3) o_4@@22 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_29378_20221_53#PolymorphicMapType_29378| QPMask@4) o_4@@22 f_5@@14))
)) (forall ((o_4@@23 T@Ref) (f_5@@15 T@Field_29430_29431) ) (!  (=> true (= (select (|PolymorphicMapType_29378_20221_29431#PolymorphicMapType_29378| QPMask@3) o_4@@23 f_5@@15) (select (|PolymorphicMapType_29378_20221_29431#PolymorphicMapType_29378| QPMask@4) o_4@@23 f_5@@15)))
 :qid |stdinbpl.2507:43|
 :skolemid |192|
 :pattern ( (select (|PolymorphicMapType_29378_20221_29431#PolymorphicMapType_29378| QPMask@3) o_4@@23 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_29378_20221_29431#PolymorphicMapType_29378| QPMask@4) o_4@@23 f_5@@15))
))) (forall ((o_4@@24 T@Ref) (f_5@@16 T@Field_35588_3612) ) (!  (=> (not (= f_5@@16 val)) (= (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@3) o_4@@24 f_5@@16) (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@4) o_4@@24 f_5@@16)))
 :qid |stdinbpl.2507:43|
 :skolemid |192|
 :pattern ( (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@3) o_4@@24 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@4) o_4@@24 f_5@@16))
))) (forall ((o_4@@25 T@Ref) (f_5@@17 T@Field_20221_84854) ) (!  (=> true (= (select (|PolymorphicMapType_29378_20221_84854#PolymorphicMapType_29378| QPMask@3) o_4@@25 f_5@@17) (select (|PolymorphicMapType_29378_20221_84854#PolymorphicMapType_29378| QPMask@4) o_4@@25 f_5@@17)))
 :qid |stdinbpl.2507:43|
 :skolemid |192|
 :pattern ( (select (|PolymorphicMapType_29378_20221_84854#PolymorphicMapType_29378| QPMask@3) o_4@@25 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_29378_20221_84854#PolymorphicMapType_29378| QPMask@4) o_4@@25 f_5@@17))
))) (forall ((o_4@@26 T@Ref) (f_5@@18 T@Field_20221_84987) ) (!  (=> true (= (select (|PolymorphicMapType_29378_20221_89109#PolymorphicMapType_29378| QPMask@3) o_4@@26 f_5@@18) (select (|PolymorphicMapType_29378_20221_89109#PolymorphicMapType_29378| QPMask@4) o_4@@26 f_5@@18)))
 :qid |stdinbpl.2507:43|
 :skolemid |192|
 :pattern ( (select (|PolymorphicMapType_29378_20221_89109#PolymorphicMapType_29378| QPMask@3) o_4@@26 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_29378_20221_89109#PolymorphicMapType_29378| QPMask@4) o_4@@26 f_5@@18))
))) (and (state ExhaleHeap@1 QPMask@4) (= storeIndex@0 n@@13))) (and (and (and (forall ((i_34_2 Int) ) (!  (=> (and (<= left_1 i_34_2) (< i_34_2 storeIndex@0)) (<= (select (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| ExhaleHeap@1) (loc a_2@@1 i_34_2) val) (select (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| ExhaleHeap@1) (loc a_2@@1 storeIndex@0) val)))
 :qid |stdinbpl.2514:34|
 :skolemid |193|
 :pattern ( (loc a_2@@1 i_34_2))
)) (forall ((i_35_1 Int) ) (!  (=> (and (< storeIndex@0 i_35_1) (<= i_35_1 arg_right@0)) (<= (select (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| ExhaleHeap@1) (loc a_2@@1 storeIndex@0) val) (select (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| ExhaleHeap@1) (loc a_2@@1 i_35_1) val)))
 :qid |stdinbpl.2518:34|
 :skolemid |194|
 :pattern ( (loc a_2@@1 i_35_1))
))) (and (= (|Seq#Length_3395| pwRec@0) (- (+ arg_right@0 1) left_1)) (forall ((i_36_2 Int) ) (!  (=> (and (<= 0 i_36_2) (< i_36_2 (|Seq#Length_3395| pwRec@0))) (and (<= left_1 (|Seq#Index_3395| pwRec@0 i_36_2)) (<= (|Seq#Index_3395| pwRec@0 i_36_2) arg_right@0)))
 :qid |stdinbpl.2523:34|
 :skolemid |195|
 :pattern ( (|Seq#Index_3395| pwRec@0 i_36_2))
)))) (and (and (forall ((i_37 Int) (j_5_1 Int) ) (!  (=> (and (<= 0 i_37) (and (< i_37 j_5_1) (< j_5_1 (|Seq#Length_3395| pwRec@0)))) (not (= (|Seq#Index_3395| pwRec@0 i_37) (|Seq#Index_3395| pwRec@0 j_5_1))))
 :qid |stdinbpl.2527:34|
 :skolemid |196|
 :pattern ( (|Seq#Index_3395| pwRec@0 i_37) (|Seq#Index_3395| pwRec@0 j_5_1))
)) (forall ((i_38 Int) ) (!  (=> (and (<= 0 i_38) (< i_38 (|Seq#Length_3395| pwRec@0))) (= (select (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| ExhaleHeap@1) (loc a_2@@1 (+ left_1 i_38)) val) (select (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| ExhaleHeap@0) (loc a_2@@1 (|Seq#Index_3395| pwRec@0 i_38)) val)))
 :qid |stdinbpl.2531:34|
 :skolemid |197|
 :pattern ( (|Seq#Index_3395| pwRec@0 i_38))
))) (and (state ExhaleHeap@1 QPMask@4) (state ExhaleHeap@1 QPMask@4))))) (and (=> (= (ControlFlow 0 92) (- 0 94)) (>= (- storeIndex@0 left_1) 0)) (=> (>= (- storeIndex@0 left_1) 0) (and (=> (= (ControlFlow 0 92) (- 0 93)) (< (- storeIndex@0 left_1) (|Seq#Length_3395| pwRec@0))) (=> (< (- storeIndex@0 left_1) (|Seq#Length_3395| pwRec@0)) (and (=> (= (ControlFlow 0 92) 71) anon94_Then_correct) (=> (= (ControlFlow 0 92) 90) anon94_Else_correct))))))))))))))))))))))))))))))
(let ((anon102_Else_correct  (=> (forall ((i_53 Int) ) (!  (=> (and (<= (- (+ pivotIndex@0 1) left_1) i_53) (< i_53 (|Seq#Length_3395| pw))) (= (|Seq#Index_3395| pw i_53) (|Seq#Index_3395| pwPar@0 (- (|Seq#Index_3395| pwRec@1 (- i_53 (- (+ pivotIndex@0 1) left_1))) left_1))))
 :qid |stdinbpl.2817:32|
 :skolemid |218|
 :pattern ( (|Seq#Index_3395| pw i_53))
)) (=> (and (state ExhaleHeap@2 QPMask@6) (state ExhaleHeap@2 QPMask@6)) (=> (and (and (= Mask@0 QPMask@6) (= Heap@0 ExhaleHeap@2)) (and (= storeIndex@2 storeIndex@1) (= (ControlFlow 0 56) 55))) anon54_correct)))))
(let ((anon92_Then_correct  (=> (and (and (and (= n@@13 pivotIndex@0) (state ExhaleHeap@0 QPMask@2)) (and (state ExhaleHeap@0 QPMask@2) (= Mask@1 QPMask@2))) (and (and (= Heap@1 ExhaleHeap@0) (= storeIndex@3 pivotIndex@0)) (and (= pw@1 pwPar@0) (= (ControlFlow 0 54) 53)))) anon55_correct)))
(let ((anon91_Then_correct  (=> (= left_1 right) (=> (and (and (and (state Heap@@21 QPMask@0) (= pw@0 (|Seq#Singleton_4579| left_1))) (and (state Heap@@21 QPMask@0) (= Heap@2 Heap@@21))) (and (and (= Mask@2 QPMask@0) (= storeIndex@4 left_1)) (and (= pw@2 pw@0) (= (ControlFlow 0 52) 46)))) anon56_correct))))
(let ((anon52_correct true))
(let ((anon103_Else_correct  (=> (and (not (and (<= (- (+ pivotIndex@0 1) left_1) i_36) (< i_36 (|Seq#Length_3395| pw)))) (= (ControlFlow 0 18) 10)) anon52_correct)))
(let ((anon103_Then_correct  (=> (and (<= (- (+ pivotIndex@0 1) left_1) i_36) (< i_36 (|Seq#Length_3395| pw))) (and (=> (= (ControlFlow 0 11) (- 0 17)) (>= i_36 0)) (=> (>= i_36 0) (and (=> (= (ControlFlow 0 11) (- 0 16)) (< i_36 (|Seq#Length_3395| pw))) (=> (< i_36 (|Seq#Length_3395| pw)) (and (=> (= (ControlFlow 0 11) (- 0 15)) (>= (- i_36 (- (+ pivotIndex@0 1) left_1)) 0)) (=> (>= (- i_36 (- (+ pivotIndex@0 1) left_1)) 0) (and (=> (= (ControlFlow 0 11) (- 0 14)) (< (- i_36 (- (+ pivotIndex@0 1) left_1)) (|Seq#Length_3395| pwRec@1))) (=> (< (- i_36 (- (+ pivotIndex@0 1) left_1)) (|Seq#Length_3395| pwRec@1)) (and (=> (= (ControlFlow 0 11) (- 0 13)) (>= (- (|Seq#Index_3395| pwRec@1 (- i_36 (- (+ pivotIndex@0 1) left_1))) left_1) 0)) (=> (>= (- (|Seq#Index_3395| pwRec@1 (- i_36 (- (+ pivotIndex@0 1) left_1))) left_1) 0) (and (=> (= (ControlFlow 0 11) (- 0 12)) (< (- (|Seq#Index_3395| pwRec@1 (- i_36 (- (+ pivotIndex@0 1) left_1))) left_1) (|Seq#Length_3395| pwPar@0))) (=> (< (- (|Seq#Index_3395| pwRec@1 (- i_36 (- (+ pivotIndex@0 1) left_1))) left_1) (|Seq#Length_3395| pwPar@0)) (=> (= (ControlFlow 0 11) 10) anon52_correct))))))))))))))))
(let ((anon100_Else_correct  (=> (forall ((i_51 Int) ) (!  (=> (and (<= 0 i_51) (<= i_51 (- pivotIndex@0 left_1))) (= (|Seq#Index_3395| pw i_51) (|Seq#Index_3395| pwPar@0 i_51)))
 :qid |stdinbpl.2787:32|
 :skolemid |217|
 :pattern ( (|Seq#Index_3395| pw i_51))
 :pattern ( (|Seq#Index_3395| pwPar@0 i_51))
)) (=> (and (state ExhaleHeap@2 QPMask@6) (state ExhaleHeap@2 QPMask@6)) (and (and (=> (= (ControlFlow 0 57) 56) anon102_Else_correct) (=> (= (ControlFlow 0 57) 11) anon103_Then_correct)) (=> (= (ControlFlow 0 57) 18) anon103_Else_correct))))))
(let ((anon48_correct true))
(let ((anon101_Else_correct  (=> (and (not (and (<= 0 i_35) (<= i_35 (- pivotIndex@0 left_1)))) (= (ControlFlow 0 9) 3)) anon48_correct)))
(let ((anon101_Then_correct  (=> (and (<= 0 i_35) (<= i_35 (- pivotIndex@0 left_1))) (and (=> (= (ControlFlow 0 4) (- 0 8)) (>= i_35 0)) (=> (>= i_35 0) (and (=> (= (ControlFlow 0 4) (- 0 7)) (< i_35 (|Seq#Length_3395| pw))) (=> (< i_35 (|Seq#Length_3395| pw)) (and (=> (= (ControlFlow 0 4) (- 0 6)) (>= i_35 0)) (=> (>= i_35 0) (and (=> (= (ControlFlow 0 4) (- 0 5)) (< i_35 (|Seq#Length_3395| pwPar@0))) (=> (< i_35 (|Seq#Length_3395| pwPar@0)) (=> (= (ControlFlow 0 4) 3) anon48_correct))))))))))))
(let ((anon99_Else_correct  (and (=> (= (ControlFlow 0 58) (- 0 59)) (dummy ExhaleHeap@2 (|Seq#Index_3395| pwRec@1 (- storeIndex@1 (+ pivotIndex@0 1))))) (=> (dummy ExhaleHeap@2 (|Seq#Index_3395| pwRec@1 (- storeIndex@1 (+ pivotIndex@0 1)))) (=> (and (and (state ExhaleHeap@2 QPMask@6) (= (|Seq#Length_3395| pw) (|Seq#Length_3395| pwPar@0))) (and (state ExhaleHeap@2 QPMask@6) (state ExhaleHeap@2 QPMask@6))) (and (and (=> (= (ControlFlow 0 58) 57) anon100_Else_correct) (=> (= (ControlFlow 0 58) 4) anon101_Then_correct)) (=> (= (ControlFlow 0 58) 9) anon101_Else_correct)))))))
(let ((anon99_Then_correct true))
(let ((anon93_Else_correct  (=> (and (<= pivotIndex@0 n@@13) (= arg_left@0 (+ pivotIndex@0 1))) (and (=> (= (ControlFlow 0 60) (- 0 70)) (<= 0 arg_left@0)) (=> (<= 0 arg_left@0) (and (=> (= (ControlFlow 0 60) (- 0 69)) (<= arg_left@0 right)) (=> (<= arg_left@0 right) (and (=> (= (ControlFlow 0 60) (- 0 68)) (< right (len_1 a_2@@1))) (=> (< right (len_1 a_2@@1)) (and (=> (= (ControlFlow 0 60) (- 0 67)) (<= arg_left@0 n@@13)) (=> (<= arg_left@0 n@@13) (and (=> (= (ControlFlow 0 60) (- 0 66)) (<= n@@13 right)) (=> (<= n@@13 right) (and (=> (= (ControlFlow 0 60) (- 0 65)) (forall ((i_43_2 Int) (i_43_3 Int) ) (!  (=> (and (and (and (and (not (= i_43_2 i_43_3)) (and (<= arg_left@0 i_43_2) (<= i_43_2 right))) (and (<= arg_left@0 i_43_3) (<= i_43_3 right))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i_43_2) (loc a_2@@1 i_43_3))))
 :qid |stdinbpl.2642:31|
 :skolemid |200|
 :pattern ( (neverTriggered16 i_43_2) (neverTriggered16 i_43_3))
))) (=> (forall ((i_43_2@@0 Int) (i_43_3@@0 Int) ) (!  (=> (and (and (and (and (not (= i_43_2@@0 i_43_3@@0)) (and (<= arg_left@0 i_43_2@@0) (<= i_43_2@@0 right))) (and (<= arg_left@0 i_43_3@@0) (<= i_43_3@@0 right))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i_43_2@@0) (loc a_2@@1 i_43_3@@0))))
 :qid |stdinbpl.2642:31|
 :skolemid |200|
 :pattern ( (neverTriggered16 i_43_2@@0) (neverTriggered16 i_43_3@@0))
)) (and (=> (= (ControlFlow 0 60) (- 0 64)) (forall ((i_43_2@@1 Int) ) (!  (=> (and (<= arg_left@0 i_43_2@@1) (<= i_43_2@@1 right)) (>= (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@2) (loc a_2@@1 i_43_2@@1) val) FullPerm))
 :qid |stdinbpl.2649:31|
 :skolemid |201|
 :pattern ( (loc a_2@@1 i_43_2@@1))
 :pattern ( (loc a_2@@1 i_43_2@@1))
))) (=> (forall ((i_43_2@@2 Int) ) (!  (=> (and (<= arg_left@0 i_43_2@@2) (<= i_43_2@@2 right)) (>= (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@2) (loc a_2@@1 i_43_2@@2) val) FullPerm))
 :qid |stdinbpl.2649:31|
 :skolemid |201|
 :pattern ( (loc a_2@@1 i_43_2@@2))
 :pattern ( (loc a_2@@1 i_43_2@@2))
)) (=> (forall ((i_43_2@@3 Int) ) (!  (=> (and (and (<= arg_left@0 i_43_2@@3) (<= i_43_2@@3 right)) (< NoPerm FullPerm)) (and (qpRange16 (loc a_2@@1 i_43_2@@3)) (= (invRecv16 (loc a_2@@1 i_43_2@@3)) i_43_2@@3)))
 :qid |stdinbpl.2655:36|
 :skolemid |202|
 :pattern ( (loc a_2@@1 i_43_2@@3))
 :pattern ( (loc a_2@@1 i_43_2@@3))
)) (=> (and (forall ((o_4@@27 T@Ref) ) (!  (=> (and (and (<= arg_left@0 (invRecv16 o_4@@27)) (<= (invRecv16 o_4@@27) right)) (and (< NoPerm FullPerm) (qpRange16 o_4@@27))) (= (loc a_2@@1 (invRecv16 o_4@@27)) o_4@@27))
 :qid |stdinbpl.2659:36|
 :skolemid |203|
 :pattern ( (invRecv16 o_4@@27))
)) (forall ((o_4@@28 T@Ref) ) (!  (and (=> (and (and (<= arg_left@0 (invRecv16 o_4@@28)) (<= (invRecv16 o_4@@28) right)) (and (< NoPerm FullPerm) (qpRange16 o_4@@28))) (and (= (loc a_2@@1 (invRecv16 o_4@@28)) o_4@@28) (= (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@5) o_4@@28 val) (- (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@2) o_4@@28 val) FullPerm)))) (=> (not (and (and (<= arg_left@0 (invRecv16 o_4@@28)) (<= (invRecv16 o_4@@28) right)) (and (< NoPerm FullPerm) (qpRange16 o_4@@28)))) (= (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@5) o_4@@28 val) (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@2) o_4@@28 val))))
 :qid |stdinbpl.2665:36|
 :skolemid |204|
 :pattern ( (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@5) o_4@@28 val))
))) (=> (and (and (and (and (and (and (forall ((o_4@@29 T@Ref) (f_5@@19 T@Field_29417_53) ) (!  (=> true (= (select (|PolymorphicMapType_29378_20221_53#PolymorphicMapType_29378| QPMask@2) o_4@@29 f_5@@19) (select (|PolymorphicMapType_29378_20221_53#PolymorphicMapType_29378| QPMask@5) o_4@@29 f_5@@19)))
 :qid |stdinbpl.2671:43|
 :skolemid |205|
 :pattern ( (select (|PolymorphicMapType_29378_20221_53#PolymorphicMapType_29378| QPMask@5) o_4@@29 f_5@@19))
)) (forall ((o_4@@30 T@Ref) (f_5@@20 T@Field_29430_29431) ) (!  (=> true (= (select (|PolymorphicMapType_29378_20221_29431#PolymorphicMapType_29378| QPMask@2) o_4@@30 f_5@@20) (select (|PolymorphicMapType_29378_20221_29431#PolymorphicMapType_29378| QPMask@5) o_4@@30 f_5@@20)))
 :qid |stdinbpl.2671:43|
 :skolemid |205|
 :pattern ( (select (|PolymorphicMapType_29378_20221_29431#PolymorphicMapType_29378| QPMask@5) o_4@@30 f_5@@20))
))) (forall ((o_4@@31 T@Ref) (f_5@@21 T@Field_35588_3612) ) (!  (=> (not (= f_5@@21 val)) (= (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@2) o_4@@31 f_5@@21) (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@5) o_4@@31 f_5@@21)))
 :qid |stdinbpl.2671:43|
 :skolemid |205|
 :pattern ( (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@5) o_4@@31 f_5@@21))
))) (forall ((o_4@@32 T@Ref) (f_5@@22 T@Field_20221_84854) ) (!  (=> true (= (select (|PolymorphicMapType_29378_20221_84854#PolymorphicMapType_29378| QPMask@2) o_4@@32 f_5@@22) (select (|PolymorphicMapType_29378_20221_84854#PolymorphicMapType_29378| QPMask@5) o_4@@32 f_5@@22)))
 :qid |stdinbpl.2671:43|
 :skolemid |205|
 :pattern ( (select (|PolymorphicMapType_29378_20221_84854#PolymorphicMapType_29378| QPMask@5) o_4@@32 f_5@@22))
))) (forall ((o_4@@33 T@Ref) (f_5@@23 T@Field_20221_84987) ) (!  (=> true (= (select (|PolymorphicMapType_29378_20221_89109#PolymorphicMapType_29378| QPMask@2) o_4@@33 f_5@@23) (select (|PolymorphicMapType_29378_20221_89109#PolymorphicMapType_29378| QPMask@5) o_4@@33 f_5@@23)))
 :qid |stdinbpl.2671:43|
 :skolemid |205|
 :pattern ( (select (|PolymorphicMapType_29378_20221_89109#PolymorphicMapType_29378| QPMask@5) o_4@@33 f_5@@23))
))) (IdenticalOnKnownLocations ExhaleHeap@0 ExhaleHeap@2 QPMask@5)) (and (<= arg_left@0 storeIndex@1) (<= storeIndex@1 right))) (and (=> (= (ControlFlow 0 60) (- 0 63)) (forall ((i_44 Int) (i_44_1 Int) ) (!  (=> (and (and (and (and (not (= i_44 i_44_1)) (and (<= arg_left@0 i_44) (<= i_44 right))) (and (<= arg_left@0 i_44_1) (<= i_44_1 right))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i_44) (loc a_2@@1 i_44_1))))
 :qid |stdinbpl.2689:29|
 :skolemid |206|
))) (=> (forall ((i_44@@0 Int) (i_44_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_44@@0 i_44_1@@0)) (and (<= arg_left@0 i_44@@0) (<= i_44@@0 right))) (and (<= arg_left@0 i_44_1@@0) (<= i_44_1@@0 right))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i_44@@0) (loc a_2@@1 i_44_1@@0))))
 :qid |stdinbpl.2689:29|
 :skolemid |206|
)) (=> (and (and (forall ((i_44@@1 Int) ) (!  (=> (and (and (<= arg_left@0 i_44@@1) (<= i_44@@1 right)) (< NoPerm FullPerm)) (and (qpRange17 (loc a_2@@1 i_44@@1)) (= (invRecv17 (loc a_2@@1 i_44@@1)) i_44@@1)))
 :qid |stdinbpl.2695:36|
 :skolemid |207|
 :pattern ( (loc a_2@@1 i_44@@1))
 :pattern ( (loc a_2@@1 i_44@@1))
)) (forall ((o_4@@34 T@Ref) ) (!  (=> (and (and (and (<= arg_left@0 (invRecv17 o_4@@34)) (<= (invRecv17 o_4@@34) right)) (< NoPerm FullPerm)) (qpRange17 o_4@@34)) (= (loc a_2@@1 (invRecv17 o_4@@34)) o_4@@34))
 :qid |stdinbpl.2699:36|
 :skolemid |208|
 :pattern ( (invRecv17 o_4@@34))
))) (and (forall ((i_44@@2 Int) ) (!  (=> (and (<= arg_left@0 i_44@@2) (<= i_44@@2 right)) (not (= (loc a_2@@1 i_44@@2) null)))
 :qid |stdinbpl.2705:36|
 :skolemid |209|
 :pattern ( (loc a_2@@1 i_44@@2))
 :pattern ( (loc a_2@@1 i_44@@2))
)) (forall ((o_4@@35 T@Ref) ) (!  (and (=> (and (and (and (<= arg_left@0 (invRecv17 o_4@@35)) (<= (invRecv17 o_4@@35) right)) (< NoPerm FullPerm)) (qpRange17 o_4@@35)) (and (=> (< NoPerm FullPerm) (= (loc a_2@@1 (invRecv17 o_4@@35)) o_4@@35)) (= (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@6) o_4@@35 val) (+ (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@5) o_4@@35 val) FullPerm)))) (=> (not (and (and (and (<= arg_left@0 (invRecv17 o_4@@35)) (<= (invRecv17 o_4@@35) right)) (< NoPerm FullPerm)) (qpRange17 o_4@@35))) (= (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@6) o_4@@35 val) (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@5) o_4@@35 val))))
 :qid |stdinbpl.2711:36|
 :skolemid |210|
 :pattern ( (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@6) o_4@@35 val))
)))) (=> (and (and (and (and (and (and (forall ((o_4@@36 T@Ref) (f_5@@24 T@Field_29417_53) ) (!  (=> true (= (select (|PolymorphicMapType_29378_20221_53#PolymorphicMapType_29378| QPMask@5) o_4@@36 f_5@@24) (select (|PolymorphicMapType_29378_20221_53#PolymorphicMapType_29378| QPMask@6) o_4@@36 f_5@@24)))
 :qid |stdinbpl.2715:43|
 :skolemid |211|
 :pattern ( (select (|PolymorphicMapType_29378_20221_53#PolymorphicMapType_29378| QPMask@5) o_4@@36 f_5@@24))
 :pattern ( (select (|PolymorphicMapType_29378_20221_53#PolymorphicMapType_29378| QPMask@6) o_4@@36 f_5@@24))
)) (forall ((o_4@@37 T@Ref) (f_5@@25 T@Field_29430_29431) ) (!  (=> true (= (select (|PolymorphicMapType_29378_20221_29431#PolymorphicMapType_29378| QPMask@5) o_4@@37 f_5@@25) (select (|PolymorphicMapType_29378_20221_29431#PolymorphicMapType_29378| QPMask@6) o_4@@37 f_5@@25)))
 :qid |stdinbpl.2715:43|
 :skolemid |211|
 :pattern ( (select (|PolymorphicMapType_29378_20221_29431#PolymorphicMapType_29378| QPMask@5) o_4@@37 f_5@@25))
 :pattern ( (select (|PolymorphicMapType_29378_20221_29431#PolymorphicMapType_29378| QPMask@6) o_4@@37 f_5@@25))
))) (forall ((o_4@@38 T@Ref) (f_5@@26 T@Field_35588_3612) ) (!  (=> (not (= f_5@@26 val)) (= (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@5) o_4@@38 f_5@@26) (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@6) o_4@@38 f_5@@26)))
 :qid |stdinbpl.2715:43|
 :skolemid |211|
 :pattern ( (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@5) o_4@@38 f_5@@26))
 :pattern ( (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@6) o_4@@38 f_5@@26))
))) (forall ((o_4@@39 T@Ref) (f_5@@27 T@Field_20221_84854) ) (!  (=> true (= (select (|PolymorphicMapType_29378_20221_84854#PolymorphicMapType_29378| QPMask@5) o_4@@39 f_5@@27) (select (|PolymorphicMapType_29378_20221_84854#PolymorphicMapType_29378| QPMask@6) o_4@@39 f_5@@27)))
 :qid |stdinbpl.2715:43|
 :skolemid |211|
 :pattern ( (select (|PolymorphicMapType_29378_20221_84854#PolymorphicMapType_29378| QPMask@5) o_4@@39 f_5@@27))
 :pattern ( (select (|PolymorphicMapType_29378_20221_84854#PolymorphicMapType_29378| QPMask@6) o_4@@39 f_5@@27))
))) (forall ((o_4@@40 T@Ref) (f_5@@28 T@Field_20221_84987) ) (!  (=> true (= (select (|PolymorphicMapType_29378_20221_89109#PolymorphicMapType_29378| QPMask@5) o_4@@40 f_5@@28) (select (|PolymorphicMapType_29378_20221_89109#PolymorphicMapType_29378| QPMask@6) o_4@@40 f_5@@28)))
 :qid |stdinbpl.2715:43|
 :skolemid |211|
 :pattern ( (select (|PolymorphicMapType_29378_20221_89109#PolymorphicMapType_29378| QPMask@5) o_4@@40 f_5@@28))
 :pattern ( (select (|PolymorphicMapType_29378_20221_89109#PolymorphicMapType_29378| QPMask@6) o_4@@40 f_5@@28))
))) (and (state ExhaleHeap@2 QPMask@6) (= storeIndex@1 n@@13))) (and (and (and (forall ((i_45_2 Int) ) (!  (=> (and (<= arg_left@0 i_45_2) (< i_45_2 storeIndex@1)) (<= (select (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| ExhaleHeap@2) (loc a_2@@1 i_45_2) val) (select (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| ExhaleHeap@2) (loc a_2@@1 storeIndex@1) val)))
 :qid |stdinbpl.2722:34|
 :skolemid |212|
 :pattern ( (loc a_2@@1 i_45_2))
)) (forall ((i_46 Int) ) (!  (=> (and (< storeIndex@1 i_46) (<= i_46 right)) (<= (select (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| ExhaleHeap@2) (loc a_2@@1 storeIndex@1) val) (select (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| ExhaleHeap@2) (loc a_2@@1 i_46) val)))
 :qid |stdinbpl.2726:34|
 :skolemid |213|
 :pattern ( (loc a_2@@1 i_46))
))) (and (= (|Seq#Length_3395| pwRec@1) (- (+ right 1) arg_left@0)) (forall ((i_47_2 Int) ) (!  (=> (and (<= 0 i_47_2) (< i_47_2 (|Seq#Length_3395| pwRec@1))) (and (<= arg_left@0 (|Seq#Index_3395| pwRec@1 i_47_2)) (<= (|Seq#Index_3395| pwRec@1 i_47_2) right)))
 :qid |stdinbpl.2731:34|
 :skolemid |214|
 :pattern ( (|Seq#Index_3395| pwRec@1 i_47_2))
)))) (and (and (forall ((i_48_2 Int) (j_6_1 Int) ) (!  (=> (and (<= 0 i_48_2) (and (< i_48_2 j_6_1) (< j_6_1 (|Seq#Length_3395| pwRec@1)))) (not (= (|Seq#Index_3395| pwRec@1 i_48_2) (|Seq#Index_3395| pwRec@1 j_6_1))))
 :qid |stdinbpl.2735:34|
 :skolemid |215|
 :pattern ( (|Seq#Index_3395| pwRec@1 i_48_2) (|Seq#Index_3395| pwRec@1 j_6_1))
)) (forall ((i_49 Int) ) (!  (=> (and (<= 0 i_49) (< i_49 (|Seq#Length_3395| pwRec@1))) (= (select (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| ExhaleHeap@2) (loc a_2@@1 (+ arg_left@0 i_49)) val) (select (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| ExhaleHeap@0) (loc a_2@@1 (|Seq#Index_3395| pwRec@1 i_49)) val)))
 :qid |stdinbpl.2739:34|
 :skolemid |216|
 :pattern ( (|Seq#Index_3395| pwRec@1 i_49))
))) (and (state ExhaleHeap@2 QPMask@6) (state ExhaleHeap@2 QPMask@6))))) (and (=> (= (ControlFlow 0 60) (- 0 62)) (>= (- storeIndex@1 (+ pivotIndex@0 1)) 0)) (=> (>= (- storeIndex@1 (+ pivotIndex@0 1)) 0) (and (=> (= (ControlFlow 0 60) (- 0 61)) (< (- storeIndex@1 (+ pivotIndex@0 1)) (|Seq#Length_3395| pwRec@1))) (=> (< (- storeIndex@1 (+ pivotIndex@0 1)) (|Seq#Length_3395| pwRec@1)) (and (=> (= (ControlFlow 0 60) 2) anon99_Then_correct) (=> (= (ControlFlow 0 60) 58) anon99_Else_correct))))))))))))))))))))))))))))))
(let ((anon92_Else_correct  (=> (not (= n@@13 pivotIndex@0)) (and (=> (= (ControlFlow 0 103) 92) anon93_Then_correct) (=> (= (ControlFlow 0 103) 60) anon93_Else_correct)))))
(let ((anon91_Else_correct  (=> (not (= left_1 right)) (=> (and (and (<= left_1 pivotIndex) (<= pivotIndex right)) (and (state Heap@@21 QPMask@0) (state Heap@@21 QPMask@0))) (and (=> (= (ControlFlow 0 104) (- 0 112)) (<= 0 left_1)) (=> (<= 0 left_1) (and (=> (= (ControlFlow 0 104) (- 0 111)) (< left_1 right)) (=> (< left_1 right) (and (=> (= (ControlFlow 0 104) (- 0 110)) (< right (len_1 a_2@@1))) (=> (< right (len_1 a_2@@1)) (and (=> (= (ControlFlow 0 104) (- 0 109)) (<= left_1 pivotIndex)) (=> (<= left_1 pivotIndex) (and (=> (= (ControlFlow 0 104) (- 0 108)) (<= pivotIndex right)) (=> (<= pivotIndex right) (and (=> (= (ControlFlow 0 104) (- 0 107)) (forall ((i_25 Int) (i_25_2 Int) ) (!  (=> (and (and (and (and (not (= i_25 i_25_2)) (and (<= left_1 i_25) (<= i_25 right))) (and (<= left_1 i_25_2) (<= i_25_2 right))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i_25) (loc a_2@@1 i_25_2))))
 :qid |stdinbpl.2290:23|
 :skolemid |164|
 :pattern ( (neverTriggered12 i_25) (neverTriggered12 i_25_2))
))) (=> (forall ((i_25@@0 Int) (i_25_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_25@@0 i_25_2@@0)) (and (<= left_1 i_25@@0) (<= i_25@@0 right))) (and (<= left_1 i_25_2@@0) (<= i_25_2@@0 right))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i_25@@0) (loc a_2@@1 i_25_2@@0))))
 :qid |stdinbpl.2290:23|
 :skolemid |164|
 :pattern ( (neverTriggered12 i_25@@0) (neverTriggered12 i_25_2@@0))
)) (and (=> (= (ControlFlow 0 104) (- 0 106)) (forall ((i_25@@1 Int) ) (!  (=> (and (<= left_1 i_25@@1) (<= i_25@@1 right)) (>= (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@0) (loc a_2@@1 i_25@@1) val) FullPerm))
 :qid |stdinbpl.2297:23|
 :skolemid |165|
 :pattern ( (loc a_2@@1 i_25@@1))
 :pattern ( (loc a_2@@1 i_25@@1))
))) (=> (forall ((i_25@@2 Int) ) (!  (=> (and (<= left_1 i_25@@2) (<= i_25@@2 right)) (>= (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@0) (loc a_2@@1 i_25@@2) val) FullPerm))
 :qid |stdinbpl.2297:23|
 :skolemid |165|
 :pattern ( (loc a_2@@1 i_25@@2))
 :pattern ( (loc a_2@@1 i_25@@2))
)) (=> (forall ((i_25@@3 Int) ) (!  (=> (and (and (<= left_1 i_25@@3) (<= i_25@@3 right)) (< NoPerm FullPerm)) (and (qpRange12 (loc a_2@@1 i_25@@3)) (= (invRecv12 (loc a_2@@1 i_25@@3)) i_25@@3)))
 :qid |stdinbpl.2303:28|
 :skolemid |166|
 :pattern ( (loc a_2@@1 i_25@@3))
 :pattern ( (loc a_2@@1 i_25@@3))
)) (=> (and (forall ((o_4@@41 T@Ref) ) (!  (=> (and (and (<= left_1 (invRecv12 o_4@@41)) (<= (invRecv12 o_4@@41) right)) (and (< NoPerm FullPerm) (qpRange12 o_4@@41))) (= (loc a_2@@1 (invRecv12 o_4@@41)) o_4@@41))
 :qid |stdinbpl.2307:28|
 :skolemid |167|
 :pattern ( (invRecv12 o_4@@41))
)) (forall ((o_4@@42 T@Ref) ) (!  (and (=> (and (and (<= left_1 (invRecv12 o_4@@42)) (<= (invRecv12 o_4@@42) right)) (and (< NoPerm FullPerm) (qpRange12 o_4@@42))) (and (= (loc a_2@@1 (invRecv12 o_4@@42)) o_4@@42) (= (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@1) o_4@@42 val) (- (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@0) o_4@@42 val) FullPerm)))) (=> (not (and (and (<= left_1 (invRecv12 o_4@@42)) (<= (invRecv12 o_4@@42) right)) (and (< NoPerm FullPerm) (qpRange12 o_4@@42)))) (= (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@1) o_4@@42 val) (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@0) o_4@@42 val))))
 :qid |stdinbpl.2313:28|
 :skolemid |168|
 :pattern ( (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@1) o_4@@42 val))
))) (=> (and (and (and (and (and (and (forall ((o_4@@43 T@Ref) (f_5@@29 T@Field_29417_53) ) (!  (=> true (= (select (|PolymorphicMapType_29378_20221_53#PolymorphicMapType_29378| QPMask@0) o_4@@43 f_5@@29) (select (|PolymorphicMapType_29378_20221_53#PolymorphicMapType_29378| QPMask@1) o_4@@43 f_5@@29)))
 :qid |stdinbpl.2319:35|
 :skolemid |169|
 :pattern ( (select (|PolymorphicMapType_29378_20221_53#PolymorphicMapType_29378| QPMask@1) o_4@@43 f_5@@29))
)) (forall ((o_4@@44 T@Ref) (f_5@@30 T@Field_29430_29431) ) (!  (=> true (= (select (|PolymorphicMapType_29378_20221_29431#PolymorphicMapType_29378| QPMask@0) o_4@@44 f_5@@30) (select (|PolymorphicMapType_29378_20221_29431#PolymorphicMapType_29378| QPMask@1) o_4@@44 f_5@@30)))
 :qid |stdinbpl.2319:35|
 :skolemid |169|
 :pattern ( (select (|PolymorphicMapType_29378_20221_29431#PolymorphicMapType_29378| QPMask@1) o_4@@44 f_5@@30))
))) (forall ((o_4@@45 T@Ref) (f_5@@31 T@Field_35588_3612) ) (!  (=> (not (= f_5@@31 val)) (= (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@0) o_4@@45 f_5@@31) (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@1) o_4@@45 f_5@@31)))
 :qid |stdinbpl.2319:35|
 :skolemid |169|
 :pattern ( (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@1) o_4@@45 f_5@@31))
))) (forall ((o_4@@46 T@Ref) (f_5@@32 T@Field_20221_84854) ) (!  (=> true (= (select (|PolymorphicMapType_29378_20221_84854#PolymorphicMapType_29378| QPMask@0) o_4@@46 f_5@@32) (select (|PolymorphicMapType_29378_20221_84854#PolymorphicMapType_29378| QPMask@1) o_4@@46 f_5@@32)))
 :qid |stdinbpl.2319:35|
 :skolemid |169|
 :pattern ( (select (|PolymorphicMapType_29378_20221_84854#PolymorphicMapType_29378| QPMask@1) o_4@@46 f_5@@32))
))) (forall ((o_4@@47 T@Ref) (f_5@@33 T@Field_20221_84987) ) (!  (=> true (= (select (|PolymorphicMapType_29378_20221_89109#PolymorphicMapType_29378| QPMask@0) o_4@@47 f_5@@33) (select (|PolymorphicMapType_29378_20221_89109#PolymorphicMapType_29378| QPMask@1) o_4@@47 f_5@@33)))
 :qid |stdinbpl.2319:35|
 :skolemid |169|
 :pattern ( (select (|PolymorphicMapType_29378_20221_89109#PolymorphicMapType_29378| QPMask@1) o_4@@47 f_5@@33))
))) (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@0 QPMask@1)) (and (<= left_1 pivotIndex@0) (<= pivotIndex@0 right))) (and (=> (= (ControlFlow 0 104) (- 0 105)) (forall ((i_26 Int) (i_26_1 Int) ) (!  (=> (and (and (and (and (not (= i_26 i_26_1)) (and (<= left_1 i_26) (<= i_26 right))) (and (<= left_1 i_26_1) (<= i_26_1 right))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i_26) (loc a_2@@1 i_26_1))))
 :qid |stdinbpl.2337:21|
 :skolemid |170|
))) (=> (forall ((i_26@@0 Int) (i_26_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_26@@0 i_26_1@@0)) (and (<= left_1 i_26@@0) (<= i_26@@0 right))) (and (<= left_1 i_26_1@@0) (<= i_26_1@@0 right))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i_26@@0) (loc a_2@@1 i_26_1@@0))))
 :qid |stdinbpl.2337:21|
 :skolemid |170|
)) (=> (and (and (forall ((i_26@@1 Int) ) (!  (=> (and (and (<= left_1 i_26@@1) (<= i_26@@1 right)) (< NoPerm FullPerm)) (and (qpRange13 (loc a_2@@1 i_26@@1)) (= (invRecv13 (loc a_2@@1 i_26@@1)) i_26@@1)))
 :qid |stdinbpl.2343:28|
 :skolemid |171|
 :pattern ( (loc a_2@@1 i_26@@1))
 :pattern ( (loc a_2@@1 i_26@@1))
)) (forall ((o_4@@48 T@Ref) ) (!  (=> (and (and (and (<= left_1 (invRecv13 o_4@@48)) (<= (invRecv13 o_4@@48) right)) (< NoPerm FullPerm)) (qpRange13 o_4@@48)) (= (loc a_2@@1 (invRecv13 o_4@@48)) o_4@@48))
 :qid |stdinbpl.2347:28|
 :skolemid |172|
 :pattern ( (invRecv13 o_4@@48))
))) (and (forall ((i_26@@2 Int) ) (!  (=> (and (<= left_1 i_26@@2) (<= i_26@@2 right)) (not (= (loc a_2@@1 i_26@@2) null)))
 :qid |stdinbpl.2353:28|
 :skolemid |173|
 :pattern ( (loc a_2@@1 i_26@@2))
 :pattern ( (loc a_2@@1 i_26@@2))
)) (forall ((o_4@@49 T@Ref) ) (!  (and (=> (and (and (and (<= left_1 (invRecv13 o_4@@49)) (<= (invRecv13 o_4@@49) right)) (< NoPerm FullPerm)) (qpRange13 o_4@@49)) (and (=> (< NoPerm FullPerm) (= (loc a_2@@1 (invRecv13 o_4@@49)) o_4@@49)) (= (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@2) o_4@@49 val) (+ (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@1) o_4@@49 val) FullPerm)))) (=> (not (and (and (and (<= left_1 (invRecv13 o_4@@49)) (<= (invRecv13 o_4@@49) right)) (< NoPerm FullPerm)) (qpRange13 o_4@@49))) (= (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@2) o_4@@49 val) (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@1) o_4@@49 val))))
 :qid |stdinbpl.2359:28|
 :skolemid |174|
 :pattern ( (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@2) o_4@@49 val))
)))) (=> (and (and (and (and (and (and (forall ((o_4@@50 T@Ref) (f_5@@34 T@Field_29417_53) ) (!  (=> true (= (select (|PolymorphicMapType_29378_20221_53#PolymorphicMapType_29378| QPMask@1) o_4@@50 f_5@@34) (select (|PolymorphicMapType_29378_20221_53#PolymorphicMapType_29378| QPMask@2) o_4@@50 f_5@@34)))
 :qid |stdinbpl.2363:35|
 :skolemid |175|
 :pattern ( (select (|PolymorphicMapType_29378_20221_53#PolymorphicMapType_29378| QPMask@1) o_4@@50 f_5@@34))
 :pattern ( (select (|PolymorphicMapType_29378_20221_53#PolymorphicMapType_29378| QPMask@2) o_4@@50 f_5@@34))
)) (forall ((o_4@@51 T@Ref) (f_5@@35 T@Field_29430_29431) ) (!  (=> true (= (select (|PolymorphicMapType_29378_20221_29431#PolymorphicMapType_29378| QPMask@1) o_4@@51 f_5@@35) (select (|PolymorphicMapType_29378_20221_29431#PolymorphicMapType_29378| QPMask@2) o_4@@51 f_5@@35)))
 :qid |stdinbpl.2363:35|
 :skolemid |175|
 :pattern ( (select (|PolymorphicMapType_29378_20221_29431#PolymorphicMapType_29378| QPMask@1) o_4@@51 f_5@@35))
 :pattern ( (select (|PolymorphicMapType_29378_20221_29431#PolymorphicMapType_29378| QPMask@2) o_4@@51 f_5@@35))
))) (forall ((o_4@@52 T@Ref) (f_5@@36 T@Field_35588_3612) ) (!  (=> (not (= f_5@@36 val)) (= (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@1) o_4@@52 f_5@@36) (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@2) o_4@@52 f_5@@36)))
 :qid |stdinbpl.2363:35|
 :skolemid |175|
 :pattern ( (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@1) o_4@@52 f_5@@36))
 :pattern ( (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@2) o_4@@52 f_5@@36))
))) (forall ((o_4@@53 T@Ref) (f_5@@37 T@Field_20221_84854) ) (!  (=> true (= (select (|PolymorphicMapType_29378_20221_84854#PolymorphicMapType_29378| QPMask@1) o_4@@53 f_5@@37) (select (|PolymorphicMapType_29378_20221_84854#PolymorphicMapType_29378| QPMask@2) o_4@@53 f_5@@37)))
 :qid |stdinbpl.2363:35|
 :skolemid |175|
 :pattern ( (select (|PolymorphicMapType_29378_20221_84854#PolymorphicMapType_29378| QPMask@1) o_4@@53 f_5@@37))
 :pattern ( (select (|PolymorphicMapType_29378_20221_84854#PolymorphicMapType_29378| QPMask@2) o_4@@53 f_5@@37))
))) (forall ((o_4@@54 T@Ref) (f_5@@38 T@Field_20221_84987) ) (!  (=> true (= (select (|PolymorphicMapType_29378_20221_89109#PolymorphicMapType_29378| QPMask@1) o_4@@54 f_5@@38) (select (|PolymorphicMapType_29378_20221_89109#PolymorphicMapType_29378| QPMask@2) o_4@@54 f_5@@38)))
 :qid |stdinbpl.2363:35|
 :skolemid |175|
 :pattern ( (select (|PolymorphicMapType_29378_20221_89109#PolymorphicMapType_29378| QPMask@1) o_4@@54 f_5@@38))
 :pattern ( (select (|PolymorphicMapType_29378_20221_89109#PolymorphicMapType_29378| QPMask@2) o_4@@54 f_5@@38))
))) (and (state ExhaleHeap@0 QPMask@2) (= (select (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| ExhaleHeap@0) (loc a_2@@1 pivotIndex@0) val) (select (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| Heap@@21) (loc a_2@@1 pivotIndex) val)))) (and (and (and (forall ((i_27 Int) ) (!  (=> (and (<= left_1 i_27) (< i_27 pivotIndex@0)) (< (select (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| ExhaleHeap@0) (loc a_2@@1 i_27) val) (select (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| ExhaleHeap@0) (loc a_2@@1 pivotIndex@0) val)))
 :qid |stdinbpl.2370:26|
 :skolemid |176|
 :pattern ( (loc a_2@@1 i_27))
)) (forall ((i_28 Int) ) (!  (=> (and (< pivotIndex@0 i_28) (<= i_28 right)) (<= (select (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| ExhaleHeap@0) (loc a_2@@1 pivotIndex@0) val) (select (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| ExhaleHeap@0) (loc a_2@@1 i_28) val)))
 :qid |stdinbpl.2374:26|
 :skolemid |177|
 :pattern ( (loc a_2@@1 i_28))
))) (and (= (|Seq#Length_3395| pwPar@0) (- (+ right 1) left_1)) (forall ((i_29_1 Int) ) (!  (=> (and (<= 0 i_29_1) (< i_29_1 (|Seq#Length_3395| pwPar@0))) (and (<= left_1 (|Seq#Index_3395| pwPar@0 i_29_1)) (<= (|Seq#Index_3395| pwPar@0 i_29_1) right)))
 :qid |stdinbpl.2379:26|
 :skolemid |178|
 :pattern ( (|Seq#Index_3395| pwPar@0 i_29_1))
)))) (and (and (forall ((i_30_2 Int) (j_4_1 Int) ) (!  (=> (and (<= 0 i_30_2) (and (< i_30_2 j_4_1) (< j_4_1 (|Seq#Length_3395| pwPar@0)))) (not (= (|Seq#Index_3395| pwPar@0 i_30_2) (|Seq#Index_3395| pwPar@0 j_4_1))))
 :qid |stdinbpl.2383:26|
 :skolemid |179|
 :pattern ( (|Seq#Index_3395| pwPar@0 i_30_2) (|Seq#Index_3395| pwPar@0 j_4_1))
)) (forall ((i_31_1 Int) ) (!  (=> (and (<= 0 i_31_1) (< i_31_1 (|Seq#Length_3395| pwPar@0))) (= (select (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| ExhaleHeap@0) (loc a_2@@1 (+ left_1 i_31_1)) val) (select (|PolymorphicMapType_29357_20221_3612#PolymorphicMapType_29357| Heap@@21) (loc a_2@@1 (|Seq#Index_3395| pwPar@0 i_31_1)) val)))
 :qid |stdinbpl.2387:26|
 :skolemid |180|
 :pattern ( (|Seq#Index_3395| pwPar@0 i_31_1))
))) (and (state ExhaleHeap@0 QPMask@2) (state ExhaleHeap@0 QPMask@2))))) (and (=> (= (ControlFlow 0 104) 54) anon92_Then_correct) (=> (= (ControlFlow 0 104) 103) anon92_Else_correct)))))))))))))))))))))))))))
(let ((anon77_Else_correct  (and (=> (= (ControlFlow 0 155) (- 0 156)) (forall ((i_1 Int) (i_1_1 Int) ) (!  (=> (and (and (and (and (not (= i_1 i_1_1)) (and (<= left_1 i_1) (<= i_1 right))) (and (<= left_1 i_1_1) (<= i_1_1 right))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i_1) (loc a_2@@1 i_1_1))))
 :qid |stdinbpl.2058:15|
 :skolemid |147|
))) (=> (forall ((i_1@@0 Int) (i_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_1@@0 i_1_1@@0)) (and (<= left_1 i_1@@0) (<= i_1@@0 right))) (and (<= left_1 i_1_1@@0) (<= i_1_1@@0 right))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i_1@@0) (loc a_2@@1 i_1_1@@0))))
 :qid |stdinbpl.2058:15|
 :skolemid |147|
)) (=> (and (and (forall ((i_1@@1 Int) ) (!  (=> (and (and (<= left_1 i_1@@1) (<= i_1@@1 right)) (< NoPerm FullPerm)) (and (qpRange9 (loc a_2@@1 i_1@@1)) (= (invRecv9 (loc a_2@@1 i_1@@1)) i_1@@1)))
 :qid |stdinbpl.2064:22|
 :skolemid |148|
 :pattern ( (loc a_2@@1 i_1@@1))
 :pattern ( (loc a_2@@1 i_1@@1))
)) (forall ((o_4@@55 T@Ref) ) (!  (=> (and (and (and (<= left_1 (invRecv9 o_4@@55)) (<= (invRecv9 o_4@@55) right)) (< NoPerm FullPerm)) (qpRange9 o_4@@55)) (= (loc a_2@@1 (invRecv9 o_4@@55)) o_4@@55))
 :qid |stdinbpl.2068:22|
 :skolemid |149|
 :pattern ( (invRecv9 o_4@@55))
))) (and (forall ((i_1@@2 Int) ) (!  (=> (and (<= left_1 i_1@@2) (<= i_1@@2 right)) (not (= (loc a_2@@1 i_1@@2) null)))
 :qid |stdinbpl.2074:22|
 :skolemid |150|
 :pattern ( (loc a_2@@1 i_1@@2))
 :pattern ( (loc a_2@@1 i_1@@2))
)) (forall ((o_4@@56 T@Ref) ) (!  (and (=> (and (and (and (<= left_1 (invRecv9 o_4@@56)) (<= (invRecv9 o_4@@56) right)) (< NoPerm FullPerm)) (qpRange9 o_4@@56)) (and (=> (< NoPerm FullPerm) (= (loc a_2@@1 (invRecv9 o_4@@56)) o_4@@56)) (= (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@0) o_4@@56 val) (+ (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| ZeroMask) o_4@@56 val) FullPerm)))) (=> (not (and (and (and (<= left_1 (invRecv9 o_4@@56)) (<= (invRecv9 o_4@@56) right)) (< NoPerm FullPerm)) (qpRange9 o_4@@56))) (= (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@0) o_4@@56 val) (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| ZeroMask) o_4@@56 val))))
 :qid |stdinbpl.2080:22|
 :skolemid |151|
 :pattern ( (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@0) o_4@@56 val))
)))) (=> (and (and (and (and (and (forall ((o_4@@57 T@Ref) (f_5@@39 T@Field_29417_53) ) (!  (=> true (= (select (|PolymorphicMapType_29378_20221_53#PolymorphicMapType_29378| ZeroMask) o_4@@57 f_5@@39) (select (|PolymorphicMapType_29378_20221_53#PolymorphicMapType_29378| QPMask@0) o_4@@57 f_5@@39)))
 :qid |stdinbpl.2084:29|
 :skolemid |152|
 :pattern ( (select (|PolymorphicMapType_29378_20221_53#PolymorphicMapType_29378| ZeroMask) o_4@@57 f_5@@39))
 :pattern ( (select (|PolymorphicMapType_29378_20221_53#PolymorphicMapType_29378| QPMask@0) o_4@@57 f_5@@39))
)) (forall ((o_4@@58 T@Ref) (f_5@@40 T@Field_29430_29431) ) (!  (=> true (= (select (|PolymorphicMapType_29378_20221_29431#PolymorphicMapType_29378| ZeroMask) o_4@@58 f_5@@40) (select (|PolymorphicMapType_29378_20221_29431#PolymorphicMapType_29378| QPMask@0) o_4@@58 f_5@@40)))
 :qid |stdinbpl.2084:29|
 :skolemid |152|
 :pattern ( (select (|PolymorphicMapType_29378_20221_29431#PolymorphicMapType_29378| ZeroMask) o_4@@58 f_5@@40))
 :pattern ( (select (|PolymorphicMapType_29378_20221_29431#PolymorphicMapType_29378| QPMask@0) o_4@@58 f_5@@40))
))) (forall ((o_4@@59 T@Ref) (f_5@@41 T@Field_35588_3612) ) (!  (=> (not (= f_5@@41 val)) (= (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| ZeroMask) o_4@@59 f_5@@41) (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@0) o_4@@59 f_5@@41)))
 :qid |stdinbpl.2084:29|
 :skolemid |152|
 :pattern ( (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| ZeroMask) o_4@@59 f_5@@41))
 :pattern ( (select (|PolymorphicMapType_29378_20221_3612#PolymorphicMapType_29378| QPMask@0) o_4@@59 f_5@@41))
))) (forall ((o_4@@60 T@Ref) (f_5@@42 T@Field_20221_84854) ) (!  (=> true (= (select (|PolymorphicMapType_29378_20221_84854#PolymorphicMapType_29378| ZeroMask) o_4@@60 f_5@@42) (select (|PolymorphicMapType_29378_20221_84854#PolymorphicMapType_29378| QPMask@0) o_4@@60 f_5@@42)))
 :qid |stdinbpl.2084:29|
 :skolemid |152|
 :pattern ( (select (|PolymorphicMapType_29378_20221_84854#PolymorphicMapType_29378| ZeroMask) o_4@@60 f_5@@42))
 :pattern ( (select (|PolymorphicMapType_29378_20221_84854#PolymorphicMapType_29378| QPMask@0) o_4@@60 f_5@@42))
))) (forall ((o_4@@61 T@Ref) (f_5@@43 T@Field_20221_84987) ) (!  (=> true (= (select (|PolymorphicMapType_29378_20221_89109#PolymorphicMapType_29378| ZeroMask) o_4@@61 f_5@@43) (select (|PolymorphicMapType_29378_20221_89109#PolymorphicMapType_29378| QPMask@0) o_4@@61 f_5@@43)))
 :qid |stdinbpl.2084:29|
 :skolemid |152|
 :pattern ( (select (|PolymorphicMapType_29378_20221_89109#PolymorphicMapType_29378| ZeroMask) o_4@@61 f_5@@43))
 :pattern ( (select (|PolymorphicMapType_29378_20221_89109#PolymorphicMapType_29378| QPMask@0) o_4@@61 f_5@@43))
))) (and (state Heap@@21 QPMask@0) (state Heap@@21 QPMask@0))) (and (and (=> (= (ControlFlow 0 155) 154) anon78_Then_correct) (=> (= (ControlFlow 0 155) 52) anon91_Then_correct)) (=> (= (ControlFlow 0 155) 104) anon91_Else_correct))))))))
(let ((anon77_Then_correct true))
(let ((anon0_correct  (=> (and (state Heap@@21 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (=> (and (and (and AssumePermUpperBound (<= 0 left_1)) (and (<= left_1 right) (< right (len_1 a_2@@1)))) (and (and (state Heap@@21 ZeroMask) (<= left_1 n@@13)) (and (<= n@@13 right) (state Heap@@21 ZeroMask)))) (and (=> (= (ControlFlow 0 157) 1) anon77_Then_correct) (=> (= (ControlFlow 0 157) 155) anon77_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 158) 157) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
