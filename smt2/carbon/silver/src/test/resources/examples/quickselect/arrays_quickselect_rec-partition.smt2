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
(declare-sort T@Field_28611_53 0)
(declare-sort T@Field_28624_28625 0)
(declare-sort T@Field_34782_3612 0)
(declare-sort T@Field_19693_82751 0)
(declare-sort T@Field_19693_82618 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_28572 0)) (((PolymorphicMapType_28572 (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| (Array T@Ref T@Field_34782_3612 Real)) (|PolymorphicMapType_28572_19693_53#PolymorphicMapType_28572| (Array T@Ref T@Field_28611_53 Real)) (|PolymorphicMapType_28572_19693_28625#PolymorphicMapType_28572| (Array T@Ref T@Field_28624_28625 Real)) (|PolymorphicMapType_28572_19693_82618#PolymorphicMapType_28572| (Array T@Ref T@Field_19693_82618 Real)) (|PolymorphicMapType_28572_19693_86873#PolymorphicMapType_28572| (Array T@Ref T@Field_19693_82751 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_29100 0)) (((PolymorphicMapType_29100 (|PolymorphicMapType_29100_28611_53#PolymorphicMapType_29100| (Array T@Ref T@Field_28611_53 Bool)) (|PolymorphicMapType_29100_28611_28625#PolymorphicMapType_29100| (Array T@Ref T@Field_28624_28625 Bool)) (|PolymorphicMapType_29100_28611_3612#PolymorphicMapType_29100| (Array T@Ref T@Field_34782_3612 Bool)) (|PolymorphicMapType_29100_28611_82618#PolymorphicMapType_29100| (Array T@Ref T@Field_19693_82618 Bool)) (|PolymorphicMapType_29100_28611_83929#PolymorphicMapType_29100| (Array T@Ref T@Field_19693_82751 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_28551 0)) (((PolymorphicMapType_28551 (|PolymorphicMapType_28551_19449_53#PolymorphicMapType_28551| (Array T@Ref T@Field_28611_53 Bool)) (|PolymorphicMapType_28551_19452_19453#PolymorphicMapType_28551| (Array T@Ref T@Field_28624_28625 T@Ref)) (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| (Array T@Ref T@Field_34782_3612 Int)) (|PolymorphicMapType_28551_19693_82795#PolymorphicMapType_28551| (Array T@Ref T@Field_19693_82751 T@PolymorphicMapType_29100)) (|PolymorphicMapType_28551_28611_82618#PolymorphicMapType_28551| (Array T@Ref T@Field_19693_82618 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_28611_53)
(declare-fun val () T@Field_34782_3612)
(declare-sort T@Seq_3395 0)
(declare-fun |Seq#Length_3395| (T@Seq_3395) Int)
(declare-fun |Seq#Drop_4579| (T@Seq_3395 Int) T@Seq_3395)
(declare-fun succHeap (T@PolymorphicMapType_28551 T@PolymorphicMapType_28551) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_28551 T@PolymorphicMapType_28551) Bool)
(declare-fun state (T@PolymorphicMapType_28551 T@PolymorphicMapType_28572) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_28572) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_29100)
(declare-fun |Seq#Index_3395| (T@Seq_3395 Int) Int)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Empty_3395| () T@Seq_3395)
(declare-fun |dummy'| (T@PolymorphicMapType_28551 Int) Bool)
(declare-fun dummyFunction_3791 (Bool) Bool)
(declare-fun |dummy#triggerStateless| (Int) Bool)
(declare-fun |Seq#Update_3395| (T@Seq_3395 Int Int) T@Seq_3395)
(declare-fun |Seq#Take_4579| (T@Seq_3395 Int) T@Seq_3395)
(declare-fun |Seq#Contains_3395| (T@Seq_3395 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3395)
(declare-fun |Seq#Skolem_3395| (T@Seq_3395 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_28551 T@PolymorphicMapType_28551 T@PolymorphicMapType_28572) Bool)
(declare-fun IsPredicateField_19693_82709 (T@Field_19693_82618) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_19693 (T@Field_19693_82618) T@Field_19693_82751)
(declare-fun HasDirectPerm_19693_82682 (T@PolymorphicMapType_28572 T@Ref T@Field_19693_82618) Bool)
(declare-fun IsWandField_19693_84456 (T@Field_19693_82618) Bool)
(declare-fun WandMaskField_19693 (T@Field_19693_82618) T@Field_19693_82751)
(declare-fun |Seq#Singleton_4579| (Int) T@Seq_3395)
(declare-fun dummy (T@PolymorphicMapType_28551 Int) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |Seq#Append_4579| (T@Seq_3395 T@Seq_3395) T@Seq_3395)
(declare-fun dummyHeap () T@PolymorphicMapType_28551)
(declare-fun ZeroMask () T@PolymorphicMapType_28572)
(declare-fun InsidePredicate_28611_28611 (T@Field_19693_82618 T@FrameType T@Field_19693_82618 T@FrameType) Bool)
(declare-fun IsPredicateField_19693_3612 (T@Field_34782_3612) Bool)
(declare-fun IsWandField_19693_3612 (T@Field_34782_3612) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_19693_88002 (T@Field_19693_82751) Bool)
(declare-fun IsWandField_19693_88018 (T@Field_19693_82751) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_19693_28625 (T@Field_28624_28625) Bool)
(declare-fun IsWandField_19693_28625 (T@Field_28624_28625) Bool)
(declare-fun IsPredicateField_19693_53 (T@Field_28611_53) Bool)
(declare-fun IsWandField_19693_53 (T@Field_28611_53) Bool)
(declare-fun HasDirectPerm_19693_88456 (T@PolymorphicMapType_28572 T@Ref T@Field_19693_82751) Bool)
(declare-fun HasDirectPerm_19693_28625 (T@PolymorphicMapType_28572 T@Ref T@Field_28624_28625) Bool)
(declare-fun HasDirectPerm_19693_53 (T@PolymorphicMapType_28572 T@Ref T@Field_28611_53) Bool)
(declare-fun HasDirectPerm_19693_3612 (T@PolymorphicMapType_28572 T@Ref T@Field_34782_3612) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_28572 T@PolymorphicMapType_28572 T@PolymorphicMapType_28572) Bool)
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
(assert (forall ((Heap0 T@PolymorphicMapType_28551) (Heap1 T@PolymorphicMapType_28551) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_28551) (Mask T@PolymorphicMapType_28572) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_28551) (Heap1@@0 T@PolymorphicMapType_28551) (Heap2 T@PolymorphicMapType_28551) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_19693_82751) ) (!  (not (select (|PolymorphicMapType_29100_28611_83929#PolymorphicMapType_29100| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_29100_28611_83929#PolymorphicMapType_29100| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_19693_82618) ) (!  (not (select (|PolymorphicMapType_29100_28611_82618#PolymorphicMapType_29100| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_29100_28611_82618#PolymorphicMapType_29100| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_34782_3612) ) (!  (not (select (|PolymorphicMapType_29100_28611_3612#PolymorphicMapType_29100| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_29100_28611_3612#PolymorphicMapType_29100| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_28624_28625) ) (!  (not (select (|PolymorphicMapType_29100_28611_28625#PolymorphicMapType_29100| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_29100_28611_28625#PolymorphicMapType_29100| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_28611_53) ) (!  (not (select (|PolymorphicMapType_29100_28611_53#PolymorphicMapType_29100| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_29100_28611_53#PolymorphicMapType_29100| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((s@@0 T@Seq_3395) (n@@0 Int) (j Int) ) (!  (=> (and (and (< 0 n@@0) (<= 0 j)) (< j (- (|Seq#Length_3395| s@@0) n@@0))) (and (= (|Seq#Sub| (|Seq#Add| j n@@0) n@@0) j) (= (|Seq#Index_3395| (|Seq#Drop_4579| s@@0 n@@0) j) (|Seq#Index_3395| s@@0 (|Seq#Add| j n@@0)))))
 :qid |stdinbpl.375:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3395| (|Seq#Drop_4579| s@@0 n@@0) j))
)))
(assert (= (|Seq#Length_3395| |Seq#Empty_3395|) 0))
(assert (forall ((Heap@@0 T@PolymorphicMapType_28551) (i Int) ) (! (dummyFunction_3791 (|dummy#triggerStateless| i))
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
(assert (forall ((Heap@@1 T@PolymorphicMapType_28551) (ExhaleHeap T@PolymorphicMapType_28551) (Mask@@0 T@PolymorphicMapType_28572) (pm_f_14 T@Field_19693_82618) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_19693_82682 Mask@@0 null pm_f_14) (IsPredicateField_19693_82709 pm_f_14)) (= (select (|PolymorphicMapType_28551_19693_82795#PolymorphicMapType_28551| Heap@@1) null (PredicateMaskField_19693 pm_f_14)) (select (|PolymorphicMapType_28551_19693_82795#PolymorphicMapType_28551| ExhaleHeap) null (PredicateMaskField_19693 pm_f_14)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_19693_82709 pm_f_14) (select (|PolymorphicMapType_28551_19693_82795#PolymorphicMapType_28551| ExhaleHeap) null (PredicateMaskField_19693 pm_f_14)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_28551) (ExhaleHeap@@0 T@PolymorphicMapType_28551) (Mask@@1 T@PolymorphicMapType_28572) (pm_f_14@@0 T@Field_19693_82618) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_19693_82682 Mask@@1 null pm_f_14@@0) (IsWandField_19693_84456 pm_f_14@@0)) (= (select (|PolymorphicMapType_28551_19693_82795#PolymorphicMapType_28551| Heap@@2) null (WandMaskField_19693 pm_f_14@@0)) (select (|PolymorphicMapType_28551_19693_82795#PolymorphicMapType_28551| ExhaleHeap@@0) null (WandMaskField_19693 pm_f_14@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsWandField_19693_84456 pm_f_14@@0) (select (|PolymorphicMapType_28551_19693_82795#PolymorphicMapType_28551| ExhaleHeap@@0) null (WandMaskField_19693 pm_f_14@@0)))
)))
(assert (forall ((x@@0 Int) (y Int) ) (! (= (|Seq#Contains_3395| (|Seq#Singleton_4579| x@@0) y) (= x@@0 y))
 :qid |stdinbpl.598:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3395| (|Seq#Singleton_4579| x@@0) y))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_28551) (Mask@@2 T@PolymorphicMapType_28572) (i@@3 Int) ) (!  (=> (and (state Heap@@3 Mask@@2) (< AssumeFunctionsAbove 0)) (dummy Heap@@3 i@@3))
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
(assert (forall ((Heap@@4 T@PolymorphicMapType_28551) (ExhaleHeap@@1 T@PolymorphicMapType_28551) (Mask@@3 T@PolymorphicMapType_28572) (o_37 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@3) (=> (select (|PolymorphicMapType_28551_19449_53#PolymorphicMapType_28551| Heap@@4) o_37 $allocated) (select (|PolymorphicMapType_28551_19449_53#PolymorphicMapType_28551| ExhaleHeap@@1) o_37 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@3) (select (|PolymorphicMapType_28551_19449_53#PolymorphicMapType_28551| ExhaleHeap@@1) o_37 $allocated))
)))
(assert (forall ((p T@Field_19693_82618) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_28611_28611 p v_1 p w))
 :qid |stdinbpl.252:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_28611_28611 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_3395) (s1 T@Seq_3395) (n@@6 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_3395|)) (not (= s1 |Seq#Empty_3395|))) (<= (|Seq#Length_3395| s0) n@@6)) (< n@@6 (|Seq#Length_3395| (|Seq#Append_4579| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@6 (|Seq#Length_3395| s0)) (|Seq#Length_3395| s0)) n@@6) (= (|Seq#Index_3395| (|Seq#Append_4579| s0 s1) n@@6) (|Seq#Index_3395| s1 (|Seq#Sub| n@@6 (|Seq#Length_3395| s0))))))
 :qid |stdinbpl.321:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3395| (|Seq#Append_4579| s0 s1) n@@6))
)))
(assert  (not (IsPredicateField_19693_3612 val)))
(assert  (not (IsWandField_19693_3612 val)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_28551) (ExhaleHeap@@2 T@PolymorphicMapType_28551) (Mask@@4 T@PolymorphicMapType_28572) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@4) (succHeap Heap@@5 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_28572) (o_2@@4 T@Ref) (f_4@@4 T@Field_19693_82751) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_28572_19693_86873#PolymorphicMapType_28572| Mask@@5) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_19693_88002 f_4@@4))) (not (IsWandField_19693_88018 f_4@@4))) (<= (select (|PolymorphicMapType_28572_19693_86873#PolymorphicMapType_28572| Mask@@5) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_28572_19693_86873#PolymorphicMapType_28572| Mask@@5) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_28572) (o_2@@5 T@Ref) (f_4@@5 T@Field_19693_82618) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_28572_19693_82618#PolymorphicMapType_28572| Mask@@6) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_19693_82709 f_4@@5))) (not (IsWandField_19693_84456 f_4@@5))) (<= (select (|PolymorphicMapType_28572_19693_82618#PolymorphicMapType_28572| Mask@@6) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_28572_19693_82618#PolymorphicMapType_28572| Mask@@6) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_28572) (o_2@@6 T@Ref) (f_4@@6 T@Field_28624_28625) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_28572_19693_28625#PolymorphicMapType_28572| Mask@@7) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_19693_28625 f_4@@6))) (not (IsWandField_19693_28625 f_4@@6))) (<= (select (|PolymorphicMapType_28572_19693_28625#PolymorphicMapType_28572| Mask@@7) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_28572_19693_28625#PolymorphicMapType_28572| Mask@@7) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_28572) (o_2@@7 T@Ref) (f_4@@7 T@Field_28611_53) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_28572_19693_53#PolymorphicMapType_28572| Mask@@8) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_19693_53 f_4@@7))) (not (IsWandField_19693_53 f_4@@7))) (<= (select (|PolymorphicMapType_28572_19693_53#PolymorphicMapType_28572| Mask@@8) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_28572_19693_53#PolymorphicMapType_28572| Mask@@8) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_28572) (o_2@@8 T@Ref) (f_4@@8 T@Field_34782_3612) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| Mask@@9) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_19693_3612 f_4@@8))) (not (IsWandField_19693_3612 f_4@@8))) (<= (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| Mask@@9) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| Mask@@9) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_28572) (o_2@@9 T@Ref) (f_4@@9 T@Field_19693_82751) ) (! (= (HasDirectPerm_19693_88456 Mask@@10 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_28572_19693_86873#PolymorphicMapType_28572| Mask@@10) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19693_88456 Mask@@10 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_28572) (o_2@@10 T@Ref) (f_4@@10 T@Field_19693_82618) ) (! (= (HasDirectPerm_19693_82682 Mask@@11 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_28572_19693_82618#PolymorphicMapType_28572| Mask@@11) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19693_82682 Mask@@11 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_28572) (o_2@@11 T@Ref) (f_4@@11 T@Field_28624_28625) ) (! (= (HasDirectPerm_19693_28625 Mask@@12 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_28572_19693_28625#PolymorphicMapType_28572| Mask@@12) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19693_28625 Mask@@12 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_28572) (o_2@@12 T@Ref) (f_4@@12 T@Field_28611_53) ) (! (= (HasDirectPerm_19693_53 Mask@@13 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_28572_19693_53#PolymorphicMapType_28572| Mask@@13) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19693_53 Mask@@13 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_28572) (o_2@@13 T@Ref) (f_4@@13 T@Field_34782_3612) ) (! (= (HasDirectPerm_19693_3612 Mask@@14 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| Mask@@14) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19693_3612 Mask@@14 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_28551) (ExhaleHeap@@3 T@PolymorphicMapType_28551) (Mask@@15 T@PolymorphicMapType_28572) (pm_f_14@@1 T@Field_19693_82618) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@15) (=> (and (HasDirectPerm_19693_82682 Mask@@15 null pm_f_14@@1) (IsPredicateField_19693_82709 pm_f_14@@1)) (and (and (and (and (forall ((o2_14 T@Ref) (f_42 T@Field_28611_53) ) (!  (=> (select (|PolymorphicMapType_29100_28611_53#PolymorphicMapType_29100| (select (|PolymorphicMapType_28551_19693_82795#PolymorphicMapType_28551| Heap@@6) null (PredicateMaskField_19693 pm_f_14@@1))) o2_14 f_42) (= (select (|PolymorphicMapType_28551_19449_53#PolymorphicMapType_28551| Heap@@6) o2_14 f_42) (select (|PolymorphicMapType_28551_19449_53#PolymorphicMapType_28551| ExhaleHeap@@3) o2_14 f_42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28551_19449_53#PolymorphicMapType_28551| ExhaleHeap@@3) o2_14 f_42))
)) (forall ((o2_14@@0 T@Ref) (f_42@@0 T@Field_28624_28625) ) (!  (=> (select (|PolymorphicMapType_29100_28611_28625#PolymorphicMapType_29100| (select (|PolymorphicMapType_28551_19693_82795#PolymorphicMapType_28551| Heap@@6) null (PredicateMaskField_19693 pm_f_14@@1))) o2_14@@0 f_42@@0) (= (select (|PolymorphicMapType_28551_19452_19453#PolymorphicMapType_28551| Heap@@6) o2_14@@0 f_42@@0) (select (|PolymorphicMapType_28551_19452_19453#PolymorphicMapType_28551| ExhaleHeap@@3) o2_14@@0 f_42@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28551_19452_19453#PolymorphicMapType_28551| ExhaleHeap@@3) o2_14@@0 f_42@@0))
))) (forall ((o2_14@@1 T@Ref) (f_42@@1 T@Field_34782_3612) ) (!  (=> (select (|PolymorphicMapType_29100_28611_3612#PolymorphicMapType_29100| (select (|PolymorphicMapType_28551_19693_82795#PolymorphicMapType_28551| Heap@@6) null (PredicateMaskField_19693 pm_f_14@@1))) o2_14@@1 f_42@@1) (= (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| Heap@@6) o2_14@@1 f_42@@1) (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| ExhaleHeap@@3) o2_14@@1 f_42@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| ExhaleHeap@@3) o2_14@@1 f_42@@1))
))) (forall ((o2_14@@2 T@Ref) (f_42@@2 T@Field_19693_82618) ) (!  (=> (select (|PolymorphicMapType_29100_28611_82618#PolymorphicMapType_29100| (select (|PolymorphicMapType_28551_19693_82795#PolymorphicMapType_28551| Heap@@6) null (PredicateMaskField_19693 pm_f_14@@1))) o2_14@@2 f_42@@2) (= (select (|PolymorphicMapType_28551_28611_82618#PolymorphicMapType_28551| Heap@@6) o2_14@@2 f_42@@2) (select (|PolymorphicMapType_28551_28611_82618#PolymorphicMapType_28551| ExhaleHeap@@3) o2_14@@2 f_42@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28551_28611_82618#PolymorphicMapType_28551| ExhaleHeap@@3) o2_14@@2 f_42@@2))
))) (forall ((o2_14@@3 T@Ref) (f_42@@3 T@Field_19693_82751) ) (!  (=> (select (|PolymorphicMapType_29100_28611_83929#PolymorphicMapType_29100| (select (|PolymorphicMapType_28551_19693_82795#PolymorphicMapType_28551| Heap@@6) null (PredicateMaskField_19693 pm_f_14@@1))) o2_14@@3 f_42@@3) (= (select (|PolymorphicMapType_28551_19693_82795#PolymorphicMapType_28551| Heap@@6) o2_14@@3 f_42@@3) (select (|PolymorphicMapType_28551_19693_82795#PolymorphicMapType_28551| ExhaleHeap@@3) o2_14@@3 f_42@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28551_19693_82795#PolymorphicMapType_28551| ExhaleHeap@@3) o2_14@@3 f_42@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@15) (IsPredicateField_19693_82709 pm_f_14@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_28551) (ExhaleHeap@@4 T@PolymorphicMapType_28551) (Mask@@16 T@PolymorphicMapType_28572) (pm_f_14@@2 T@Field_19693_82618) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@16) (=> (and (HasDirectPerm_19693_82682 Mask@@16 null pm_f_14@@2) (IsWandField_19693_84456 pm_f_14@@2)) (and (and (and (and (forall ((o2_14@@4 T@Ref) (f_42@@4 T@Field_28611_53) ) (!  (=> (select (|PolymorphicMapType_29100_28611_53#PolymorphicMapType_29100| (select (|PolymorphicMapType_28551_19693_82795#PolymorphicMapType_28551| Heap@@7) null (WandMaskField_19693 pm_f_14@@2))) o2_14@@4 f_42@@4) (= (select (|PolymorphicMapType_28551_19449_53#PolymorphicMapType_28551| Heap@@7) o2_14@@4 f_42@@4) (select (|PolymorphicMapType_28551_19449_53#PolymorphicMapType_28551| ExhaleHeap@@4) o2_14@@4 f_42@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28551_19449_53#PolymorphicMapType_28551| ExhaleHeap@@4) o2_14@@4 f_42@@4))
)) (forall ((o2_14@@5 T@Ref) (f_42@@5 T@Field_28624_28625) ) (!  (=> (select (|PolymorphicMapType_29100_28611_28625#PolymorphicMapType_29100| (select (|PolymorphicMapType_28551_19693_82795#PolymorphicMapType_28551| Heap@@7) null (WandMaskField_19693 pm_f_14@@2))) o2_14@@5 f_42@@5) (= (select (|PolymorphicMapType_28551_19452_19453#PolymorphicMapType_28551| Heap@@7) o2_14@@5 f_42@@5) (select (|PolymorphicMapType_28551_19452_19453#PolymorphicMapType_28551| ExhaleHeap@@4) o2_14@@5 f_42@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28551_19452_19453#PolymorphicMapType_28551| ExhaleHeap@@4) o2_14@@5 f_42@@5))
))) (forall ((o2_14@@6 T@Ref) (f_42@@6 T@Field_34782_3612) ) (!  (=> (select (|PolymorphicMapType_29100_28611_3612#PolymorphicMapType_29100| (select (|PolymorphicMapType_28551_19693_82795#PolymorphicMapType_28551| Heap@@7) null (WandMaskField_19693 pm_f_14@@2))) o2_14@@6 f_42@@6) (= (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| Heap@@7) o2_14@@6 f_42@@6) (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| ExhaleHeap@@4) o2_14@@6 f_42@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| ExhaleHeap@@4) o2_14@@6 f_42@@6))
))) (forall ((o2_14@@7 T@Ref) (f_42@@7 T@Field_19693_82618) ) (!  (=> (select (|PolymorphicMapType_29100_28611_82618#PolymorphicMapType_29100| (select (|PolymorphicMapType_28551_19693_82795#PolymorphicMapType_28551| Heap@@7) null (WandMaskField_19693 pm_f_14@@2))) o2_14@@7 f_42@@7) (= (select (|PolymorphicMapType_28551_28611_82618#PolymorphicMapType_28551| Heap@@7) o2_14@@7 f_42@@7) (select (|PolymorphicMapType_28551_28611_82618#PolymorphicMapType_28551| ExhaleHeap@@4) o2_14@@7 f_42@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28551_28611_82618#PolymorphicMapType_28551| ExhaleHeap@@4) o2_14@@7 f_42@@7))
))) (forall ((o2_14@@8 T@Ref) (f_42@@8 T@Field_19693_82751) ) (!  (=> (select (|PolymorphicMapType_29100_28611_83929#PolymorphicMapType_29100| (select (|PolymorphicMapType_28551_19693_82795#PolymorphicMapType_28551| Heap@@7) null (WandMaskField_19693 pm_f_14@@2))) o2_14@@8 f_42@@8) (= (select (|PolymorphicMapType_28551_19693_82795#PolymorphicMapType_28551| Heap@@7) o2_14@@8 f_42@@8) (select (|PolymorphicMapType_28551_19693_82795#PolymorphicMapType_28551| ExhaleHeap@@4) o2_14@@8 f_42@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28551_19693_82795#PolymorphicMapType_28551| ExhaleHeap@@4) o2_14@@8 f_42@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@16) (IsWandField_19693_84456 pm_f_14@@2))
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
(assert (forall ((Heap@@8 T@PolymorphicMapType_28551) (ExhaleHeap@@5 T@PolymorphicMapType_28551) (Mask@@17 T@PolymorphicMapType_28572) (o_37@@0 T@Ref) (f_42@@9 T@Field_19693_82751) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@17) (=> (HasDirectPerm_19693_88456 Mask@@17 o_37@@0 f_42@@9) (= (select (|PolymorphicMapType_28551_19693_82795#PolymorphicMapType_28551| Heap@@8) o_37@@0 f_42@@9) (select (|PolymorphicMapType_28551_19693_82795#PolymorphicMapType_28551| ExhaleHeap@@5) o_37@@0 f_42@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@17) (select (|PolymorphicMapType_28551_19693_82795#PolymorphicMapType_28551| ExhaleHeap@@5) o_37@@0 f_42@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_28551) (ExhaleHeap@@6 T@PolymorphicMapType_28551) (Mask@@18 T@PolymorphicMapType_28572) (o_37@@1 T@Ref) (f_42@@10 T@Field_19693_82618) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@18) (=> (HasDirectPerm_19693_82682 Mask@@18 o_37@@1 f_42@@10) (= (select (|PolymorphicMapType_28551_28611_82618#PolymorphicMapType_28551| Heap@@9) o_37@@1 f_42@@10) (select (|PolymorphicMapType_28551_28611_82618#PolymorphicMapType_28551| ExhaleHeap@@6) o_37@@1 f_42@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@18) (select (|PolymorphicMapType_28551_28611_82618#PolymorphicMapType_28551| ExhaleHeap@@6) o_37@@1 f_42@@10))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_28551) (ExhaleHeap@@7 T@PolymorphicMapType_28551) (Mask@@19 T@PolymorphicMapType_28572) (o_37@@2 T@Ref) (f_42@@11 T@Field_28624_28625) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@19) (=> (HasDirectPerm_19693_28625 Mask@@19 o_37@@2 f_42@@11) (= (select (|PolymorphicMapType_28551_19452_19453#PolymorphicMapType_28551| Heap@@10) o_37@@2 f_42@@11) (select (|PolymorphicMapType_28551_19452_19453#PolymorphicMapType_28551| ExhaleHeap@@7) o_37@@2 f_42@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@19) (select (|PolymorphicMapType_28551_19452_19453#PolymorphicMapType_28551| ExhaleHeap@@7) o_37@@2 f_42@@11))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_28551) (ExhaleHeap@@8 T@PolymorphicMapType_28551) (Mask@@20 T@PolymorphicMapType_28572) (o_37@@3 T@Ref) (f_42@@12 T@Field_28611_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@20) (=> (HasDirectPerm_19693_53 Mask@@20 o_37@@3 f_42@@12) (= (select (|PolymorphicMapType_28551_19449_53#PolymorphicMapType_28551| Heap@@11) o_37@@3 f_42@@12) (select (|PolymorphicMapType_28551_19449_53#PolymorphicMapType_28551| ExhaleHeap@@8) o_37@@3 f_42@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@20) (select (|PolymorphicMapType_28551_19449_53#PolymorphicMapType_28551| ExhaleHeap@@8) o_37@@3 f_42@@12))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_28551) (ExhaleHeap@@9 T@PolymorphicMapType_28551) (Mask@@21 T@PolymorphicMapType_28572) (o_37@@4 T@Ref) (f_42@@13 T@Field_34782_3612) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@21) (=> (HasDirectPerm_19693_3612 Mask@@21 o_37@@4 f_42@@13) (= (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| Heap@@12) o_37@@4 f_42@@13) (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| ExhaleHeap@@9) o_37@@4 f_42@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@21) (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| ExhaleHeap@@9) o_37@@4 f_42@@13))
)))
(assert (forall ((s0@@0 T@Seq_3395) (s1@@0 T@Seq_3395) ) (!  (=> (and (not (= s0@@0 |Seq#Empty_3395|)) (not (= s1@@0 |Seq#Empty_3395|))) (= (|Seq#Length_3395| (|Seq#Append_4579| s0@@0 s1@@0)) (+ (|Seq#Length_3395| s0@@0) (|Seq#Length_3395| s1@@0))))
 :qid |stdinbpl.290:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3395| (|Seq#Append_4579| s0@@0 s1@@0)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_19693_82751) ) (! (= (select (|PolymorphicMapType_28572_19693_86873#PolymorphicMapType_28572| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_28572_19693_86873#PolymorphicMapType_28572| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_19693_82618) ) (! (= (select (|PolymorphicMapType_28572_19693_82618#PolymorphicMapType_28572| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_28572_19693_82618#PolymorphicMapType_28572| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_28624_28625) ) (! (= (select (|PolymorphicMapType_28572_19693_28625#PolymorphicMapType_28572| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_28572_19693_28625#PolymorphicMapType_28572| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_28611_53) ) (! (= (select (|PolymorphicMapType_28572_19693_53#PolymorphicMapType_28572| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_28572_19693_53#PolymorphicMapType_28572| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_34782_3612) ) (! (= (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((s@@7 T@Seq_3395) (t@@0 T@Seq_3395) (n@@7 Int) ) (!  (=> (and (> n@@7 0) (> n@@7 (|Seq#Length_3395| s@@7))) (and (= (|Seq#Add| (|Seq#Sub| n@@7 (|Seq#Length_3395| s@@7)) (|Seq#Length_3395| s@@7)) n@@7) (= (|Seq#Drop_4579| (|Seq#Append_4579| s@@7 t@@0) n@@7) (|Seq#Drop_4579| t@@0 (|Seq#Sub| n@@7 (|Seq#Length_3395| s@@7))))))
 :qid |stdinbpl.447:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_4579| (|Seq#Append_4579| s@@7 t@@0) n@@7))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_28572) (SummandMask1 T@PolymorphicMapType_28572) (SummandMask2 T@PolymorphicMapType_28572) (o_2@@19 T@Ref) (f_4@@19 T@Field_19693_82751) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_28572_19693_86873#PolymorphicMapType_28572| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_28572_19693_86873#PolymorphicMapType_28572| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_28572_19693_86873#PolymorphicMapType_28572| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_28572_19693_86873#PolymorphicMapType_28572| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_28572_19693_86873#PolymorphicMapType_28572| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_28572_19693_86873#PolymorphicMapType_28572| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_28572) (SummandMask1@@0 T@PolymorphicMapType_28572) (SummandMask2@@0 T@PolymorphicMapType_28572) (o_2@@20 T@Ref) (f_4@@20 T@Field_19693_82618) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_28572_19693_82618#PolymorphicMapType_28572| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_28572_19693_82618#PolymorphicMapType_28572| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_28572_19693_82618#PolymorphicMapType_28572| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_28572_19693_82618#PolymorphicMapType_28572| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_28572_19693_82618#PolymorphicMapType_28572| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_28572_19693_82618#PolymorphicMapType_28572| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_28572) (SummandMask1@@1 T@PolymorphicMapType_28572) (SummandMask2@@1 T@PolymorphicMapType_28572) (o_2@@21 T@Ref) (f_4@@21 T@Field_28624_28625) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_28572_19693_28625#PolymorphicMapType_28572| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_28572_19693_28625#PolymorphicMapType_28572| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_28572_19693_28625#PolymorphicMapType_28572| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_28572_19693_28625#PolymorphicMapType_28572| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_28572_19693_28625#PolymorphicMapType_28572| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_28572_19693_28625#PolymorphicMapType_28572| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_28572) (SummandMask1@@2 T@PolymorphicMapType_28572) (SummandMask2@@2 T@PolymorphicMapType_28572) (o_2@@22 T@Ref) (f_4@@22 T@Field_28611_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_28572_19693_53#PolymorphicMapType_28572| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_28572_19693_53#PolymorphicMapType_28572| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_28572_19693_53#PolymorphicMapType_28572| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_28572_19693_53#PolymorphicMapType_28572| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_28572_19693_53#PolymorphicMapType_28572| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_28572_19693_53#PolymorphicMapType_28572| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_28572) (SummandMask1@@3 T@PolymorphicMapType_28572) (SummandMask2@@3 T@PolymorphicMapType_28572) (o_2@@23 T@Ref) (f_4@@23 T@Field_34782_3612) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| SummandMask2@@3) o_2@@23 f_4@@23))
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
(assert (forall ((Heap@@13 T@PolymorphicMapType_28551) (Mask@@22 T@PolymorphicMapType_28572) (i@@4 Int) ) (!  (=> (state Heap@@13 Mask@@22) (= (|dummy'| Heap@@13 i@@4) (|dummy#frame| EmptyFrame i@@4)))
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
(assert (forall ((Heap@@14 T@PolymorphicMapType_28551) (i@@6 Int) ) (!  (and (= (dummy Heap@@14 i@@6) (|dummy'| Heap@@14 i@@6)) (dummyFunction_3791 (|dummy#triggerStateless| i@@6)))
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
(assert (forall ((Heap@@15 T@PolymorphicMapType_28551) (o_36 T@Ref) (f_43 T@Field_19693_82618) (v@@2 T@FrameType) ) (! (succHeap Heap@@15 (PolymorphicMapType_28551 (|PolymorphicMapType_28551_19449_53#PolymorphicMapType_28551| Heap@@15) (|PolymorphicMapType_28551_19452_19453#PolymorphicMapType_28551| Heap@@15) (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| Heap@@15) (|PolymorphicMapType_28551_19693_82795#PolymorphicMapType_28551| Heap@@15) (store (|PolymorphicMapType_28551_28611_82618#PolymorphicMapType_28551| Heap@@15) o_36 f_43 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_28551 (|PolymorphicMapType_28551_19449_53#PolymorphicMapType_28551| Heap@@15) (|PolymorphicMapType_28551_19452_19453#PolymorphicMapType_28551| Heap@@15) (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| Heap@@15) (|PolymorphicMapType_28551_19693_82795#PolymorphicMapType_28551| Heap@@15) (store (|PolymorphicMapType_28551_28611_82618#PolymorphicMapType_28551| Heap@@15) o_36 f_43 v@@2)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_28551) (o_36@@0 T@Ref) (f_43@@0 T@Field_19693_82751) (v@@3 T@PolymorphicMapType_29100) ) (! (succHeap Heap@@16 (PolymorphicMapType_28551 (|PolymorphicMapType_28551_19449_53#PolymorphicMapType_28551| Heap@@16) (|PolymorphicMapType_28551_19452_19453#PolymorphicMapType_28551| Heap@@16) (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| Heap@@16) (store (|PolymorphicMapType_28551_19693_82795#PolymorphicMapType_28551| Heap@@16) o_36@@0 f_43@@0 v@@3) (|PolymorphicMapType_28551_28611_82618#PolymorphicMapType_28551| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_28551 (|PolymorphicMapType_28551_19449_53#PolymorphicMapType_28551| Heap@@16) (|PolymorphicMapType_28551_19452_19453#PolymorphicMapType_28551| Heap@@16) (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| Heap@@16) (store (|PolymorphicMapType_28551_19693_82795#PolymorphicMapType_28551| Heap@@16) o_36@@0 f_43@@0 v@@3) (|PolymorphicMapType_28551_28611_82618#PolymorphicMapType_28551| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_28551) (o_36@@1 T@Ref) (f_43@@1 T@Field_34782_3612) (v@@4 Int) ) (! (succHeap Heap@@17 (PolymorphicMapType_28551 (|PolymorphicMapType_28551_19449_53#PolymorphicMapType_28551| Heap@@17) (|PolymorphicMapType_28551_19452_19453#PolymorphicMapType_28551| Heap@@17) (store (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| Heap@@17) o_36@@1 f_43@@1 v@@4) (|PolymorphicMapType_28551_19693_82795#PolymorphicMapType_28551| Heap@@17) (|PolymorphicMapType_28551_28611_82618#PolymorphicMapType_28551| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_28551 (|PolymorphicMapType_28551_19449_53#PolymorphicMapType_28551| Heap@@17) (|PolymorphicMapType_28551_19452_19453#PolymorphicMapType_28551| Heap@@17) (store (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| Heap@@17) o_36@@1 f_43@@1 v@@4) (|PolymorphicMapType_28551_19693_82795#PolymorphicMapType_28551| Heap@@17) (|PolymorphicMapType_28551_28611_82618#PolymorphicMapType_28551| Heap@@17)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_28551) (o_36@@2 T@Ref) (f_43@@2 T@Field_28624_28625) (v@@5 T@Ref) ) (! (succHeap Heap@@18 (PolymorphicMapType_28551 (|PolymorphicMapType_28551_19449_53#PolymorphicMapType_28551| Heap@@18) (store (|PolymorphicMapType_28551_19452_19453#PolymorphicMapType_28551| Heap@@18) o_36@@2 f_43@@2 v@@5) (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| Heap@@18) (|PolymorphicMapType_28551_19693_82795#PolymorphicMapType_28551| Heap@@18) (|PolymorphicMapType_28551_28611_82618#PolymorphicMapType_28551| Heap@@18)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_28551 (|PolymorphicMapType_28551_19449_53#PolymorphicMapType_28551| Heap@@18) (store (|PolymorphicMapType_28551_19452_19453#PolymorphicMapType_28551| Heap@@18) o_36@@2 f_43@@2 v@@5) (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| Heap@@18) (|PolymorphicMapType_28551_19693_82795#PolymorphicMapType_28551| Heap@@18) (|PolymorphicMapType_28551_28611_82618#PolymorphicMapType_28551| Heap@@18)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_28551) (o_36@@3 T@Ref) (f_43@@3 T@Field_28611_53) (v@@6 Bool) ) (! (succHeap Heap@@19 (PolymorphicMapType_28551 (store (|PolymorphicMapType_28551_19449_53#PolymorphicMapType_28551| Heap@@19) o_36@@3 f_43@@3 v@@6) (|PolymorphicMapType_28551_19452_19453#PolymorphicMapType_28551| Heap@@19) (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| Heap@@19) (|PolymorphicMapType_28551_19693_82795#PolymorphicMapType_28551| Heap@@19) (|PolymorphicMapType_28551_28611_82618#PolymorphicMapType_28551| Heap@@19)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_28551 (store (|PolymorphicMapType_28551_19449_53#PolymorphicMapType_28551| Heap@@19) o_36@@3 f_43@@3 v@@6) (|PolymorphicMapType_28551_19452_19453#PolymorphicMapType_28551| Heap@@19) (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| Heap@@19) (|PolymorphicMapType_28551_19693_82795#PolymorphicMapType_28551| Heap@@19) (|PolymorphicMapType_28551_28611_82618#PolymorphicMapType_28551| Heap@@19)))
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
(assert (forall ((o_36@@4 T@Ref) (f_41 T@Field_28624_28625) (Heap@@20 T@PolymorphicMapType_28551) ) (!  (=> (select (|PolymorphicMapType_28551_19449_53#PolymorphicMapType_28551| Heap@@20) o_36@@4 $allocated) (select (|PolymorphicMapType_28551_19449_53#PolymorphicMapType_28551| Heap@@20) (select (|PolymorphicMapType_28551_19452_19453#PolymorphicMapType_28551| Heap@@20) o_36@@4 f_41) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_28551_19452_19453#PolymorphicMapType_28551| Heap@@20) o_36@@4 f_41))
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
(assert (forall ((p@@1 T@Field_19693_82618) (v_1@@0 T@FrameType) (q T@Field_19693_82618) (w@@0 T@FrameType) (r T@Field_19693_82618) (u T@FrameType) ) (!  (=> (and (InsidePredicate_28611_28611 p@@1 v_1@@0 q w@@0) (InsidePredicate_28611_28611 q w@@0 r u)) (InsidePredicate_28611_28611 p@@1 v_1@@0 r u))
 :qid |stdinbpl.247:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28611_28611 p@@1 v_1@@0 q w@@0) (InsidePredicate_28611_28611 q w@@0 r u))
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
(declare-fun left_1 () Int)
(declare-fun i_9 () Int)
(declare-fun right () Int)
(declare-fun QPMask@7 () T@PolymorphicMapType_28572)
(declare-fun a_2@@1 () T@IArrayDomainType)
(declare-fun pw () T@Seq_3395)
(declare-fun QPMask@0 () T@PolymorphicMapType_28572)
(declare-fun PostHeap@0 () T@PolymorphicMapType_28551)
(declare-fun i_8 () Int)
(declare-fun k_12 () Int)
(declare-fun i_7 () Int)
(declare-fun storeIndex () Int)
(declare-fun i_6 () Int)
(declare-fun i_4 () Int)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) Int)
(declare-fun pivotIndex () Int)
(declare-fun Heap@@21 () T@PolymorphicMapType_28551)
(declare-fun i$0_4 () Int)
(declare-fun QPMask@6 () T@PolymorphicMapType_28572)
(declare-fun pw@2 () T@Seq_3395)
(declare-fun ExhaleHeap@1 () T@PolymorphicMapType_28551)
(declare-fun i_18 () Int)
(declare-fun k_20 () Int)
(declare-fun i_16 () Int)
(declare-fun storeIndex@0 () Int)
(declare-fun j_9@0 () Int)
(declare-fun pivotValue@0 () Int)
(declare-fun i_12 () Int)
(declare-fun i_11 () Int)
(declare-fun qpRange5 (T@Ref) Bool)
(declare-fun invRecv5 (T@Ref) Int)
(declare-fun QPMask@1 () T@PolymorphicMapType_28572)
(declare-fun i$0_5 () Int)
(declare-fun Heap@0 () T@PolymorphicMapType_28551)
(declare-fun pw@5 () T@Seq_3395)
(declare-fun i_56_1 () Int)
(declare-fun k_9 () Int)
(declare-fun i_54_1 () Int)
(declare-fun storeIndex@2 () Int)
(declare-fun j_9@1 () Int)
(declare-fun i_52_1 () Int)
(declare-fun i_50_1 () Int)
(declare-fun Mask@18 () T@PolymorphicMapType_28572)
(declare-fun neverTriggered7 (Int) Bool)
(declare-fun qpRange7 (T@Ref) Bool)
(declare-fun invRecv7 (T@Ref) Int)
(declare-fun QPMask@5 () T@PolymorphicMapType_28572)
(declare-fun ExhaleHeap@4 () T@PolymorphicMapType_28551)
(declare-fun Mask@17 () T@PolymorphicMapType_28572)
(declare-fun pw@4 () T@Seq_3395)
(declare-fun storeIndex@1 () Int)
(declare-fun Mask@15 () T@PolymorphicMapType_28572)
(declare-fun Mask@16 () T@PolymorphicMapType_28572)
(declare-fun Mask@14 () T@PolymorphicMapType_28572)
(declare-fun Mask@13 () T@PolymorphicMapType_28572)
(declare-fun Mask@12 () T@PolymorphicMapType_28572)
(declare-fun QPMask@2 () T@PolymorphicMapType_28572)
(declare-fun qpRange6 (T@Ref) Bool)
(declare-fun invRecv6 (T@Ref) Int)
(declare-fun i_23 () Int)
(declare-fun ExhaleHeap@2 () T@PolymorphicMapType_28551)
(declare-fun pw@3 () T@Seq_3395)
(declare-fun i_21 () Int)
(declare-fun k_2_1 () Int)
(declare-fun i_19 () Int)
(declare-fun i_17 () Int)
(declare-fun i_15 () Int)
(declare-fun Mask@11 () T@PolymorphicMapType_28572)
(declare-fun neverTriggered3 (Int) Bool)
(declare-fun qpRange3 (T@Ref) Bool)
(declare-fun invRecv3 (T@Ref) Int)
(declare-fun QPMask@4 () T@PolymorphicMapType_28572)
(declare-fun Mask@9 () T@PolymorphicMapType_28572)
(declare-fun Mask@10 () T@PolymorphicMapType_28572)
(declare-fun Mask@8 () T@PolymorphicMapType_28572)
(declare-fun Mask@7 () T@PolymorphicMapType_28572)
(declare-fun Mask@6 () T@PolymorphicMapType_28572)
(declare-fun QPMask@3 () T@PolymorphicMapType_28572)
(declare-fun qpRange8 (T@Ref) Bool)
(declare-fun invRecv8 (T@Ref) Int)
(declare-fun pw@1 () T@Seq_3395)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_28551)
(declare-fun i$0 () Int)
(declare-fun i_32_2 () Int)
(declare-fun k_4_1 () Int)
(declare-fun i_30_2 () Int)
(declare-fun i_28 () Int)
(declare-fun i_26 () Int)
(declare-fun Mask@5 () T@PolymorphicMapType_28572)
(declare-fun pw@0 () T@Seq_3395)
(declare-fun neverTriggered4 (Int) Bool)
(declare-fun qpRange4 (T@Ref) Bool)
(declare-fun invRecv4 (T@Ref) Int)
(declare-fun Mask@3 () T@PolymorphicMapType_28572)
(declare-fun Mask@4 () T@PolymorphicMapType_28572)
(declare-fun Mask@2 () T@PolymorphicMapType_28572)
(declare-fun Mask@1 () T@PolymorphicMapType_28572)
(declare-fun Mask@0 () T@PolymorphicMapType_28572)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) Int)
(set-info :boogie-vc-id partition)
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
 (=> (= (ControlFlow 0 0) 266) (let ((anon25_correct true))
(let ((anon154_Else_correct  (=> (and (not (and (<= left_1 i_9) (<= i_9 right))) (= (ControlFlow 0 253) 247)) anon25_correct)))
(let ((anon154_Then_correct  (=> (and (<= left_1 i_9) (<= i_9 right)) (and (=> (= (ControlFlow 0 248) (- 0 252)) (HasDirectPerm_19693_3612 QPMask@7 (loc a_2@@1 i_9) val)) (=> (HasDirectPerm_19693_3612 QPMask@7 (loc a_2@@1 i_9) val) (and (=> (= (ControlFlow 0 248) (- 0 251)) (>= i_9 0)) (=> (>= i_9 0) (and (=> (= (ControlFlow 0 248) (- 0 250)) (< i_9 (|Seq#Length_3395| pw))) (=> (< i_9 (|Seq#Length_3395| pw)) (and (=> (= (ControlFlow 0 248) (- 0 249)) (HasDirectPerm_19693_3612 QPMask@0 (loc a_2@@1 (|Seq#Index_3395| pw i_9)) val)) (=> (HasDirectPerm_19693_3612 QPMask@0 (loc a_2@@1 (|Seq#Index_3395| pw i_9)) val) (=> (= (ControlFlow 0 248) 247) anon25_correct))))))))))))
(let ((anon153_Else_correct true))
(let ((anon151_Else_correct  (=> (and (forall ((i_11_1 Int) (k_1_1 Int) ) (!  (=> (and (<= left_1 i_11_1) (and (< i_11_1 k_1_1) (<= k_1_1 right))) (not (= (|Seq#Index_3395| pw i_11_1) (|Seq#Index_3395| pw k_1_1))))
 :qid |stdinbpl.1086:20|
 :skolemid |79|
 :pattern ( (|Seq#Index_3395| pw i_11_1) (|Seq#Index_3395| pw k_1_1))
)) (state PostHeap@0 QPMask@7)) (and (and (=> (= (ControlFlow 0 254) 246) anon153_Else_correct) (=> (= (ControlFlow 0 254) 248) anon154_Then_correct)) (=> (= (ControlFlow 0 254) 253) anon154_Else_correct)))))
(let ((anon21_correct true))
(let ((anon152_Else_correct  (=> (and (not (and (<= left_1 i_8) (and (< i_8 k_12) (<= k_12 right)))) (= (ControlFlow 0 245) 239)) anon21_correct)))
(let ((anon152_Then_correct  (=> (and (<= left_1 i_8) (and (< i_8 k_12) (<= k_12 right))) (and (=> (= (ControlFlow 0 240) (- 0 244)) (>= i_8 0)) (=> (>= i_8 0) (and (=> (= (ControlFlow 0 240) (- 0 243)) (< i_8 (|Seq#Length_3395| pw))) (=> (< i_8 (|Seq#Length_3395| pw)) (and (=> (= (ControlFlow 0 240) (- 0 242)) (>= k_12 0)) (=> (>= k_12 0) (and (=> (= (ControlFlow 0 240) (- 0 241)) (< k_12 (|Seq#Length_3395| pw))) (=> (< k_12 (|Seq#Length_3395| pw)) (=> (= (ControlFlow 0 240) 239) anon21_correct))))))))))))
(let ((anon148_Else_correct  (=> (and (forall ((i_9_1 Int) ) (!  (=> (and (<= left_1 i_9_1) (<= i_9_1 right)) (and (<= left_1 (|Seq#Index_3395| pw i_9_1)) (<= (|Seq#Index_3395| pw i_9_1) right)))
 :qid |stdinbpl.1066:20|
 :skolemid |78|
 :pattern ( (|Seq#Index_3395| pw i_9_1))
)) (state PostHeap@0 QPMask@7)) (and (and (=> (= (ControlFlow 0 255) 254) anon151_Else_correct) (=> (= (ControlFlow 0 255) 240) anon152_Then_correct)) (=> (= (ControlFlow 0 255) 245) anon152_Else_correct)))))
(let ((anon17_correct true))
(let ((anon150_Else_correct  (=> (and (< (|Seq#Index_3395| pw i_7) left_1) (= (ControlFlow 0 235) 230)) anon17_correct)))
(let ((anon150_Then_correct  (=> (<= left_1 (|Seq#Index_3395| pw i_7)) (and (=> (= (ControlFlow 0 232) (- 0 234)) (>= i_7 0)) (=> (>= i_7 0) (and (=> (= (ControlFlow 0 232) (- 0 233)) (< i_7 (|Seq#Length_3395| pw))) (=> (< i_7 (|Seq#Length_3395| pw)) (=> (= (ControlFlow 0 232) 230) anon17_correct))))))))
(let ((anon149_Then_correct  (=> (and (<= left_1 i_7) (<= i_7 right)) (and (=> (= (ControlFlow 0 236) (- 0 238)) (>= i_7 0)) (=> (>= i_7 0) (and (=> (= (ControlFlow 0 236) (- 0 237)) (< i_7 (|Seq#Length_3395| pw))) (=> (< i_7 (|Seq#Length_3395| pw)) (and (=> (= (ControlFlow 0 236) 232) anon150_Then_correct) (=> (= (ControlFlow 0 236) 235) anon150_Else_correct)))))))))
(let ((anon149_Else_correct  (=> (and (not (and (<= left_1 i_7) (<= i_7 right))) (= (ControlFlow 0 231) 230)) anon17_correct)))
(let ((anon146_Else_correct  (=> (and (and (forall ((i_7_1 Int) ) (!  (=> (and (< storeIndex i_7_1) (<= i_7_1 right)) (<= (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| PostHeap@0) (loc a_2@@1 storeIndex) val) (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| PostHeap@0) (loc a_2@@1 i_7_1) val)))
 :qid |stdinbpl.1042:20|
 :skolemid |77|
 :pattern ( (loc a_2@@1 i_7_1))
)) (state PostHeap@0 QPMask@7)) (and (= (|Seq#Length_3395| pw) (+ right 1)) (state PostHeap@0 QPMask@7))) (and (and (=> (= (ControlFlow 0 256) 255) anon148_Else_correct) (=> (= (ControlFlow 0 256) 236) anon149_Then_correct)) (=> (= (ControlFlow 0 256) 231) anon149_Else_correct)))))
(let ((anon12_correct true))
(let ((anon147_Else_correct  (=> (and (not (and (< storeIndex i_6) (<= i_6 right))) (= (ControlFlow 0 229) 225)) anon12_correct)))
(let ((anon147_Then_correct  (=> (and (< storeIndex i_6) (<= i_6 right)) (and (=> (= (ControlFlow 0 226) (- 0 228)) (HasDirectPerm_19693_3612 QPMask@7 (loc a_2@@1 storeIndex) val)) (=> (HasDirectPerm_19693_3612 QPMask@7 (loc a_2@@1 storeIndex) val) (and (=> (= (ControlFlow 0 226) (- 0 227)) (HasDirectPerm_19693_3612 QPMask@7 (loc a_2@@1 i_6) val)) (=> (HasDirectPerm_19693_3612 QPMask@7 (loc a_2@@1 i_6) val) (=> (= (ControlFlow 0 226) 225) anon12_correct))))))))
(let ((anon144_Else_correct  (=> (and (forall ((i_5 Int) ) (!  (=> (and (<= left_1 i_5) (< i_5 storeIndex)) (< (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| PostHeap@0) (loc a_2@@1 i_5) val) (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| PostHeap@0) (loc a_2@@1 storeIndex) val)))
 :qid |stdinbpl.1026:20|
 :skolemid |76|
 :pattern ( (loc a_2@@1 i_5))
)) (state PostHeap@0 QPMask@7)) (and (and (=> (= (ControlFlow 0 257) 256) anon146_Else_correct) (=> (= (ControlFlow 0 257) 226) anon147_Then_correct)) (=> (= (ControlFlow 0 257) 229) anon147_Else_correct)))))
(let ((anon8_correct true))
(let ((anon145_Else_correct  (=> (and (not (and (<= left_1 i_4) (< i_4 storeIndex))) (= (ControlFlow 0 224) 220)) anon8_correct)))
(let ((anon145_Then_correct  (=> (and (<= left_1 i_4) (< i_4 storeIndex)) (and (=> (= (ControlFlow 0 221) (- 0 223)) (HasDirectPerm_19693_3612 QPMask@7 (loc a_2@@1 i_4) val)) (=> (HasDirectPerm_19693_3612 QPMask@7 (loc a_2@@1 i_4) val) (and (=> (= (ControlFlow 0 221) (- 0 222)) (HasDirectPerm_19693_3612 QPMask@7 (loc a_2@@1 storeIndex) val)) (=> (HasDirectPerm_19693_3612 QPMask@7 (loc a_2@@1 storeIndex) val) (=> (= (ControlFlow 0 221) 220) anon8_correct))))))))
(let ((anon143_Else_correct  (and (=> (= (ControlFlow 0 258) (- 0 261)) (forall ((i_3 Int) (i_3_1 Int) ) (!  (=> (and (and (and (and (not (= i_3 i_3_1)) (and (<= left_1 i_3) (<= i_3 right))) (and (<= left_1 i_3_1) (<= i_3_1 right))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i_3) (loc a_2@@1 i_3_1))))
 :qid |stdinbpl.974:15|
 :skolemid |70|
))) (=> (forall ((i_3@@0 Int) (i_3_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_3@@0 i_3_1@@0)) (and (<= left_1 i_3@@0) (<= i_3@@0 right))) (and (<= left_1 i_3_1@@0) (<= i_3_1@@0 right))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i_3@@0) (loc a_2@@1 i_3_1@@0))))
 :qid |stdinbpl.974:15|
 :skolemid |70|
)) (=> (and (and (forall ((i_3@@1 Int) ) (!  (=> (and (and (<= left_1 i_3@@1) (<= i_3@@1 right)) (< NoPerm FullPerm)) (and (qpRange2 (loc a_2@@1 i_3@@1)) (= (invRecv2 (loc a_2@@1 i_3@@1)) i_3@@1)))
 :qid |stdinbpl.980:22|
 :skolemid |71|
 :pattern ( (loc a_2@@1 i_3@@1))
 :pattern ( (loc a_2@@1 i_3@@1))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (and (<= left_1 (invRecv2 o_4)) (<= (invRecv2 o_4) right)) (< NoPerm FullPerm)) (qpRange2 o_4)) (= (loc a_2@@1 (invRecv2 o_4)) o_4))
 :qid |stdinbpl.984:22|
 :skolemid |72|
 :pattern ( (invRecv2 o_4))
))) (and (forall ((i_3@@2 Int) ) (!  (=> (and (<= left_1 i_3@@2) (<= i_3@@2 right)) (not (= (loc a_2@@1 i_3@@2) null)))
 :qid |stdinbpl.990:22|
 :skolemid |73|
 :pattern ( (loc a_2@@1 i_3@@2))
 :pattern ( (loc a_2@@1 i_3@@2))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (and (<= left_1 (invRecv2 o_4@@0)) (<= (invRecv2 o_4@@0) right)) (< NoPerm FullPerm)) (qpRange2 o_4@@0)) (and (=> (< NoPerm FullPerm) (= (loc a_2@@1 (invRecv2 o_4@@0)) o_4@@0)) (= (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| QPMask@7) o_4@@0 val) (+ (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| ZeroMask) o_4@@0 val) FullPerm)))) (=> (not (and (and (and (<= left_1 (invRecv2 o_4@@0)) (<= (invRecv2 o_4@@0) right)) (< NoPerm FullPerm)) (qpRange2 o_4@@0))) (= (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| QPMask@7) o_4@@0 val) (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| ZeroMask) o_4@@0 val))))
 :qid |stdinbpl.996:22|
 :skolemid |74|
 :pattern ( (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| QPMask@7) o_4@@0 val))
)))) (=> (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_28611_53) ) (!  (=> true (= (select (|PolymorphicMapType_28572_19693_53#PolymorphicMapType_28572| ZeroMask) o_4@@1 f_5) (select (|PolymorphicMapType_28572_19693_53#PolymorphicMapType_28572| QPMask@7) o_4@@1 f_5)))
 :qid |stdinbpl.1000:29|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_28572_19693_53#PolymorphicMapType_28572| ZeroMask) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_28572_19693_53#PolymorphicMapType_28572| QPMask@7) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_28624_28625) ) (!  (=> true (= (select (|PolymorphicMapType_28572_19693_28625#PolymorphicMapType_28572| ZeroMask) o_4@@2 f_5@@0) (select (|PolymorphicMapType_28572_19693_28625#PolymorphicMapType_28572| QPMask@7) o_4@@2 f_5@@0)))
 :qid |stdinbpl.1000:29|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_28572_19693_28625#PolymorphicMapType_28572| ZeroMask) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_28572_19693_28625#PolymorphicMapType_28572| QPMask@7) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_34782_3612) ) (!  (=> (not (= f_5@@1 val)) (= (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| ZeroMask) o_4@@3 f_5@@1) (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| QPMask@7) o_4@@3 f_5@@1)))
 :qid |stdinbpl.1000:29|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| ZeroMask) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| QPMask@7) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_19693_82618) ) (!  (=> true (= (select (|PolymorphicMapType_28572_19693_82618#PolymorphicMapType_28572| ZeroMask) o_4@@4 f_5@@2) (select (|PolymorphicMapType_28572_19693_82618#PolymorphicMapType_28572| QPMask@7) o_4@@4 f_5@@2)))
 :qid |stdinbpl.1000:29|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_28572_19693_82618#PolymorphicMapType_28572| ZeroMask) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_28572_19693_82618#PolymorphicMapType_28572| QPMask@7) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_19693_82751) ) (!  (=> true (= (select (|PolymorphicMapType_28572_19693_86873#PolymorphicMapType_28572| ZeroMask) o_4@@5 f_5@@3) (select (|PolymorphicMapType_28572_19693_86873#PolymorphicMapType_28572| QPMask@7) o_4@@5 f_5@@3)))
 :qid |stdinbpl.1000:29|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_28572_19693_86873#PolymorphicMapType_28572| ZeroMask) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_28572_19693_86873#PolymorphicMapType_28572| QPMask@7) o_4@@5 f_5@@3))
))) (and (state PostHeap@0 QPMask@7) (state PostHeap@0 QPMask@7))) (and (=> (= (ControlFlow 0 258) (- 0 260)) (HasDirectPerm_19693_3612 QPMask@7 (loc a_2@@1 storeIndex) val)) (=> (HasDirectPerm_19693_3612 QPMask@7 (loc a_2@@1 storeIndex) val) (and (=> (= (ControlFlow 0 258) (- 0 259)) (HasDirectPerm_19693_3612 QPMask@0 (loc a_2@@1 pivotIndex) val)) (=> (HasDirectPerm_19693_3612 QPMask@0 (loc a_2@@1 pivotIndex) val) (=> (and (= (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| PostHeap@0) (loc a_2@@1 storeIndex) val) (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| Heap@@21) (loc a_2@@1 pivotIndex) val)) (state PostHeap@0 QPMask@7)) (and (and (=> (= (ControlFlow 0 258) 257) anon144_Else_correct) (=> (= (ControlFlow 0 258) 221) anon145_Then_correct)) (=> (= (ControlFlow 0 258) 224) anon145_Else_correct)))))))))))))
(let ((anon143_Then_correct true))
(let ((anon142_Then_correct  (=> (and (and (state PostHeap@0 ZeroMask) (<= left_1 storeIndex)) (and (<= storeIndex right) (state PostHeap@0 ZeroMask))) (and (=> (= (ControlFlow 0 262) 219) anon143_Then_correct) (=> (= (ControlFlow 0 262) 258) anon143_Else_correct)))))
(let ((anon78_correct true))
(let ((anon181_Else_correct  (=> (and (not (and (<= left_1 i$0_4) (<= i$0_4 right))) (= (ControlFlow 0 173) 167)) anon78_correct)))
(let ((anon181_Then_correct  (=> (and (<= left_1 i$0_4) (<= i$0_4 right)) (and (=> (= (ControlFlow 0 168) (- 0 172)) (HasDirectPerm_19693_3612 QPMask@6 (loc a_2@@1 i$0_4) val)) (=> (HasDirectPerm_19693_3612 QPMask@6 (loc a_2@@1 i$0_4) val) (and (=> (= (ControlFlow 0 168) (- 0 171)) (>= i$0_4 0)) (=> (>= i$0_4 0) (and (=> (= (ControlFlow 0 168) (- 0 170)) (< i$0_4 (|Seq#Length_3395| pw@2))) (=> (< i$0_4 (|Seq#Length_3395| pw@2)) (and (=> (= (ControlFlow 0 168) (- 0 169)) (HasDirectPerm_19693_3612 QPMask@0 (loc a_2@@1 (|Seq#Index_3395| pw@2 i$0_4)) val)) (=> (HasDirectPerm_19693_3612 QPMask@0 (loc a_2@@1 (|Seq#Index_3395| pw@2 i$0_4)) val) (=> (= (ControlFlow 0 168) 167) anon78_correct))))))))))))
(let ((anon180_Else_correct true))
(let ((anon178_Else_correct  (=> (and (forall ((i_43_2 Int) (k_7_1 Int) ) (!  (=> (and (<= left_1 i_43_2) (and (< i_43_2 k_7_1) (<= k_7_1 right))) (not (= (|Seq#Index_3395| pw@2 i_43_2) (|Seq#Index_3395| pw@2 k_7_1))))
 :qid |stdinbpl.1445:24|
 :skolemid |101|
 :pattern ( (|Seq#Index_3395| pw@2 i_43_2) (|Seq#Index_3395| pw@2 k_7_1))
)) (state ExhaleHeap@1 QPMask@6)) (and (and (=> (= (ControlFlow 0 174) 166) anon180_Else_correct) (=> (= (ControlFlow 0 174) 168) anon181_Then_correct)) (=> (= (ControlFlow 0 174) 173) anon181_Else_correct)))))
(let ((anon74_correct true))
(let ((anon179_Else_correct  (=> (and (not (and (<= left_1 i_18) (and (< i_18 k_20) (<= k_20 right)))) (= (ControlFlow 0 165) 159)) anon74_correct)))
(let ((anon179_Then_correct  (=> (and (<= left_1 i_18) (and (< i_18 k_20) (<= k_20 right))) (and (=> (= (ControlFlow 0 160) (- 0 164)) (>= i_18 0)) (=> (>= i_18 0) (and (=> (= (ControlFlow 0 160) (- 0 163)) (< i_18 (|Seq#Length_3395| pw@2))) (=> (< i_18 (|Seq#Length_3395| pw@2)) (and (=> (= (ControlFlow 0 160) (- 0 162)) (>= k_20 0)) (=> (>= k_20 0) (and (=> (= (ControlFlow 0 160) (- 0 161)) (< k_20 (|Seq#Length_3395| pw@2))) (=> (< k_20 (|Seq#Length_3395| pw@2)) (=> (= (ControlFlow 0 160) 159) anon74_correct))))))))))))
(let ((anon175_Else_correct  (=> (and (forall ((i_41_2 Int) ) (!  (=> (and (<= left_1 i_41_2) (<= i_41_2 right)) (and (<= left_1 (|Seq#Index_3395| pw@2 i_41_2)) (<= (|Seq#Index_3395| pw@2 i_41_2) right)))
 :qid |stdinbpl.1425:24|
 :skolemid |100|
 :pattern ( (|Seq#Index_3395| pw@2 i_41_2))
)) (state ExhaleHeap@1 QPMask@6)) (and (and (=> (= (ControlFlow 0 175) 174) anon178_Else_correct) (=> (= (ControlFlow 0 175) 160) anon179_Then_correct)) (=> (= (ControlFlow 0 175) 165) anon179_Else_correct)))))
(let ((anon70_correct true))
(let ((anon177_Else_correct  (=> (and (< (|Seq#Index_3395| pw@2 i_16) left_1) (= (ControlFlow 0 155) 150)) anon70_correct)))
(let ((anon177_Then_correct  (=> (<= left_1 (|Seq#Index_3395| pw@2 i_16)) (and (=> (= (ControlFlow 0 152) (- 0 154)) (>= i_16 0)) (=> (>= i_16 0) (and (=> (= (ControlFlow 0 152) (- 0 153)) (< i_16 (|Seq#Length_3395| pw@2))) (=> (< i_16 (|Seq#Length_3395| pw@2)) (=> (= (ControlFlow 0 152) 150) anon70_correct))))))))
(let ((anon176_Then_correct  (=> (and (<= left_1 i_16) (<= i_16 right)) (and (=> (= (ControlFlow 0 156) (- 0 158)) (>= i_16 0)) (=> (>= i_16 0) (and (=> (= (ControlFlow 0 156) (- 0 157)) (< i_16 (|Seq#Length_3395| pw@2))) (=> (< i_16 (|Seq#Length_3395| pw@2)) (and (=> (= (ControlFlow 0 156) 152) anon177_Then_correct) (=> (= (ControlFlow 0 156) 155) anon177_Else_correct)))))))))
(let ((anon176_Else_correct  (=> (and (not (and (<= left_1 i_16) (<= i_16 right))) (= (ControlFlow 0 151) 150)) anon70_correct)))
(let ((anon173_Else_correct  (=> (and (and (forall ((i_39 Int) ) (!  (=> (and (<= storeIndex@0 i_39) (< i_39 j_9@0)) (<= pivotValue@0 (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| ExhaleHeap@1) (loc a_2@@1 i_39) val)))
 :qid |stdinbpl.1401:24|
 :skolemid |99|
 :pattern ( (loc a_2@@1 i_39))
)) (state ExhaleHeap@1 QPMask@6)) (and (= (|Seq#Length_3395| pw@2) (+ right 1)) (state ExhaleHeap@1 QPMask@6))) (and (and (=> (= (ControlFlow 0 176) 175) anon175_Else_correct) (=> (= (ControlFlow 0 176) 156) anon176_Then_correct)) (=> (= (ControlFlow 0 176) 151) anon176_Else_correct)))))
(let ((anon65_correct true))
(let ((anon174_Else_correct  (=> (and (not (and (<= storeIndex@0 i_12) (< i_12 j_9@0))) (= (ControlFlow 0 149) 146)) anon65_correct)))
(let ((anon174_Then_correct  (=> (and (<= storeIndex@0 i_12) (< i_12 j_9@0)) (and (=> (= (ControlFlow 0 147) (- 0 148)) (HasDirectPerm_19693_3612 QPMask@6 (loc a_2@@1 i_12) val)) (=> (HasDirectPerm_19693_3612 QPMask@6 (loc a_2@@1 i_12) val) (=> (= (ControlFlow 0 147) 146) anon65_correct))))))
(let ((anon171_Else_correct  (=> (and (forall ((i_37 Int) ) (!  (=> (and (<= left_1 i_37) (< i_37 storeIndex@0)) (< (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| ExhaleHeap@1) (loc a_2@@1 i_37) val) pivotValue@0))
 :qid |stdinbpl.1387:24|
 :skolemid |98|
 :pattern ( (loc a_2@@1 i_37))
)) (state ExhaleHeap@1 QPMask@6)) (and (and (=> (= (ControlFlow 0 177) 176) anon173_Else_correct) (=> (= (ControlFlow 0 177) 147) anon174_Then_correct)) (=> (= (ControlFlow 0 177) 149) anon174_Else_correct)))))
(let ((anon61_correct true))
(let ((anon172_Else_correct  (=> (and (not (and (<= left_1 i_11) (< i_11 storeIndex@0))) (= (ControlFlow 0 145) 142)) anon61_correct)))
(let ((anon172_Then_correct  (=> (and (<= left_1 i_11) (< i_11 storeIndex@0)) (and (=> (= (ControlFlow 0 143) (- 0 144)) (HasDirectPerm_19693_3612 QPMask@6 (loc a_2@@1 i_11) val)) (=> (HasDirectPerm_19693_3612 QPMask@6 (loc a_2@@1 i_11) val) (=> (= (ControlFlow 0 143) 142) anon61_correct))))))
(let ((anon170_Else_correct  (and (=> (= (ControlFlow 0 178) (- 0 180)) (forall ((i_35_1 Int) (i_35_2 Int) ) (!  (=> (and (and (and (and (not (= i_35_1 i_35_2)) (and (<= left_1 i_35_1) (<= i_35_1 right))) (and (<= left_1 i_35_2) (<= i_35_2 right))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i_35_1) (loc a_2@@1 i_35_2))))
 :qid |stdinbpl.1339:19|
 :skolemid |92|
))) (=> (forall ((i_35_1@@0 Int) (i_35_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_35_1@@0 i_35_2@@0)) (and (<= left_1 i_35_1@@0) (<= i_35_1@@0 right))) (and (<= left_1 i_35_2@@0) (<= i_35_2@@0 right))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i_35_1@@0) (loc a_2@@1 i_35_2@@0))))
 :qid |stdinbpl.1339:19|
 :skolemid |92|
)) (=> (and (and (forall ((i_35_1@@1 Int) ) (!  (=> (and (and (<= left_1 i_35_1@@1) (<= i_35_1@@1 right)) (< NoPerm FullPerm)) (and (qpRange5 (loc a_2@@1 i_35_1@@1)) (= (invRecv5 (loc a_2@@1 i_35_1@@1)) i_35_1@@1)))
 :qid |stdinbpl.1345:26|
 :skolemid |93|
 :pattern ( (loc a_2@@1 i_35_1@@1))
 :pattern ( (loc a_2@@1 i_35_1@@1))
)) (forall ((o_4@@6 T@Ref) ) (!  (=> (and (and (and (<= left_1 (invRecv5 o_4@@6)) (<= (invRecv5 o_4@@6) right)) (< NoPerm FullPerm)) (qpRange5 o_4@@6)) (= (loc a_2@@1 (invRecv5 o_4@@6)) o_4@@6))
 :qid |stdinbpl.1349:26|
 :skolemid |94|
 :pattern ( (invRecv5 o_4@@6))
))) (and (forall ((i_35_1@@2 Int) ) (!  (=> (and (<= left_1 i_35_1@@2) (<= i_35_1@@2 right)) (not (= (loc a_2@@1 i_35_1@@2) null)))
 :qid |stdinbpl.1355:26|
 :skolemid |95|
 :pattern ( (loc a_2@@1 i_35_1@@2))
 :pattern ( (loc a_2@@1 i_35_1@@2))
)) (forall ((o_4@@7 T@Ref) ) (!  (and (=> (and (and (and (<= left_1 (invRecv5 o_4@@7)) (<= (invRecv5 o_4@@7) right)) (< NoPerm FullPerm)) (qpRange5 o_4@@7)) (and (=> (< NoPerm FullPerm) (= (loc a_2@@1 (invRecv5 o_4@@7)) o_4@@7)) (= (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| QPMask@6) o_4@@7 val) (+ (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| QPMask@1) o_4@@7 val) FullPerm)))) (=> (not (and (and (and (<= left_1 (invRecv5 o_4@@7)) (<= (invRecv5 o_4@@7) right)) (< NoPerm FullPerm)) (qpRange5 o_4@@7))) (= (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| QPMask@6) o_4@@7 val) (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| QPMask@1) o_4@@7 val))))
 :qid |stdinbpl.1361:26|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| QPMask@6) o_4@@7 val))
)))) (=> (and (and (and (and (and (forall ((o_4@@8 T@Ref) (f_5@@4 T@Field_28611_53) ) (!  (=> true (= (select (|PolymorphicMapType_28572_19693_53#PolymorphicMapType_28572| QPMask@1) o_4@@8 f_5@@4) (select (|PolymorphicMapType_28572_19693_53#PolymorphicMapType_28572| QPMask@6) o_4@@8 f_5@@4)))
 :qid |stdinbpl.1365:33|
 :skolemid |97|
 :pattern ( (select (|PolymorphicMapType_28572_19693_53#PolymorphicMapType_28572| QPMask@1) o_4@@8 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_28572_19693_53#PolymorphicMapType_28572| QPMask@6) o_4@@8 f_5@@4))
)) (forall ((o_4@@9 T@Ref) (f_5@@5 T@Field_28624_28625) ) (!  (=> true (= (select (|PolymorphicMapType_28572_19693_28625#PolymorphicMapType_28572| QPMask@1) o_4@@9 f_5@@5) (select (|PolymorphicMapType_28572_19693_28625#PolymorphicMapType_28572| QPMask@6) o_4@@9 f_5@@5)))
 :qid |stdinbpl.1365:33|
 :skolemid |97|
 :pattern ( (select (|PolymorphicMapType_28572_19693_28625#PolymorphicMapType_28572| QPMask@1) o_4@@9 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_28572_19693_28625#PolymorphicMapType_28572| QPMask@6) o_4@@9 f_5@@5))
))) (forall ((o_4@@10 T@Ref) (f_5@@6 T@Field_34782_3612) ) (!  (=> (not (= f_5@@6 val)) (= (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| QPMask@1) o_4@@10 f_5@@6) (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| QPMask@6) o_4@@10 f_5@@6)))
 :qid |stdinbpl.1365:33|
 :skolemid |97|
 :pattern ( (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| QPMask@1) o_4@@10 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| QPMask@6) o_4@@10 f_5@@6))
))) (forall ((o_4@@11 T@Ref) (f_5@@7 T@Field_19693_82618) ) (!  (=> true (= (select (|PolymorphicMapType_28572_19693_82618#PolymorphicMapType_28572| QPMask@1) o_4@@11 f_5@@7) (select (|PolymorphicMapType_28572_19693_82618#PolymorphicMapType_28572| QPMask@6) o_4@@11 f_5@@7)))
 :qid |stdinbpl.1365:33|
 :skolemid |97|
 :pattern ( (select (|PolymorphicMapType_28572_19693_82618#PolymorphicMapType_28572| QPMask@1) o_4@@11 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_28572_19693_82618#PolymorphicMapType_28572| QPMask@6) o_4@@11 f_5@@7))
))) (forall ((o_4@@12 T@Ref) (f_5@@8 T@Field_19693_82751) ) (!  (=> true (= (select (|PolymorphicMapType_28572_19693_86873#PolymorphicMapType_28572| QPMask@1) o_4@@12 f_5@@8) (select (|PolymorphicMapType_28572_19693_86873#PolymorphicMapType_28572| QPMask@6) o_4@@12 f_5@@8)))
 :qid |stdinbpl.1365:33|
 :skolemid |97|
 :pattern ( (select (|PolymorphicMapType_28572_19693_86873#PolymorphicMapType_28572| QPMask@1) o_4@@12 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_28572_19693_86873#PolymorphicMapType_28572| QPMask@6) o_4@@12 f_5@@8))
))) (and (state ExhaleHeap@1 QPMask@6) (state ExhaleHeap@1 QPMask@6))) (and (=> (= (ControlFlow 0 178) (- 0 179)) (HasDirectPerm_19693_3612 QPMask@6 (loc a_2@@1 right) val)) (=> (HasDirectPerm_19693_3612 QPMask@6 (loc a_2@@1 right) val) (=> (and (= (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| ExhaleHeap@1) (loc a_2@@1 right) val) pivotValue@0) (state ExhaleHeap@1 QPMask@6)) (and (and (=> (= (ControlFlow 0 178) 177) anon171_Else_correct) (=> (= (ControlFlow 0 178) 143) anon172_Then_correct)) (=> (= (ControlFlow 0 178) 145) anon172_Else_correct)))))))))))
(let ((anon170_Then_correct true))
(let ((anon169_Then_correct  (=> (and (<= left_1 j_9@0) (<= j_9@0 right)) (=> (and (and (state ExhaleHeap@1 QPMask@1) (<= left_1 storeIndex@0)) (and (<= storeIndex@0 j_9@0) (state ExhaleHeap@1 QPMask@1))) (and (=> (= (ControlFlow 0 181) 141) anon170_Then_correct) (=> (= (ControlFlow 0 181) 178) anon170_Else_correct))))))
(let ((anon110_correct true))
(let ((anon197_Else_correct  (=> (and (not (and (<= left_1 i$0_5) (<= i$0_5 right))) (= (ControlFlow 0 100) 97)) anon110_correct)))
(let ((anon197_Then_correct  (=> (and (<= left_1 i$0_5) (<= i$0_5 right)) (and (=> (= (ControlFlow 0 98) (- 0 99)) (= (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| Heap@0) (loc a_2@@1 i$0_5) val) (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| Heap@@21) (loc a_2@@1 (|Seq#Index_3395| pw@5 i$0_5)) val))) (=> (= (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| Heap@0) (loc a_2@@1 i$0_5) val) (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| Heap@@21) (loc a_2@@1 (|Seq#Index_3395| pw@5 i$0_5)) val)) (=> (= (ControlFlow 0 98) 97) anon110_correct))))))
(let ((anon196_Else_correct true))
(let ((anon194_Else_correct  (=> (forall ((i_57_1 Int) (k_10_1 Int) ) (!  (=> (and (<= left_1 i_57_1) (and (< i_57_1 k_10_1) (<= k_10_1 right))) (not (= (|Seq#Index_3395| pw@5 i_57_1) (|Seq#Index_3395| pw@5 k_10_1))))
 :qid |stdinbpl.1726:24|
 :skolemid |123|
 :pattern ( (|Seq#Index_3395| pw@5 i_57_1) (|Seq#Index_3395| pw@5 k_10_1))
)) (and (and (=> (= (ControlFlow 0 101) 96) anon196_Else_correct) (=> (= (ControlFlow 0 101) 98) anon197_Then_correct)) (=> (= (ControlFlow 0 101) 100) anon197_Else_correct)))))
(let ((anon106_correct true))
(let ((anon195_Else_correct  (=> (and (not (and (<= left_1 i_56_1) (and (< i_56_1 k_9) (<= k_9 right)))) (= (ControlFlow 0 95) 92)) anon106_correct)))
(let ((anon195_Then_correct  (=> (and (<= left_1 i_56_1) (and (< i_56_1 k_9) (<= k_9 right))) (and (=> (= (ControlFlow 0 93) (- 0 94)) (not (= (|Seq#Index_3395| pw@5 i_56_1) (|Seq#Index_3395| pw@5 k_9)))) (=> (not (= (|Seq#Index_3395| pw@5 i_56_1) (|Seq#Index_3395| pw@5 k_9))) (=> (= (ControlFlow 0 93) 92) anon106_correct))))))
(let ((anon192_Else_correct  (=> (forall ((i_55_1 Int) ) (!  (=> (and (<= left_1 i_55_1) (<= i_55_1 right)) (and (<= left_1 (|Seq#Index_3395| pw@5 i_55_1)) (<= (|Seq#Index_3395| pw@5 i_55_1) right)))
 :qid |stdinbpl.1715:24|
 :skolemid |122|
 :pattern ( (|Seq#Index_3395| pw@5 i_55_1))
)) (and (and (=> (= (ControlFlow 0 102) 101) anon194_Else_correct) (=> (= (ControlFlow 0 102) 93) anon195_Then_correct)) (=> (= (ControlFlow 0 102) 95) anon195_Else_correct)))))
(let ((anon102_correct true))
(let ((anon193_Else_correct  (=> (and (not (and (<= left_1 i_54_1) (<= i_54_1 right))) (= (ControlFlow 0 91) 87)) anon102_correct)))
(let ((anon193_Then_correct  (=> (and (<= left_1 i_54_1) (<= i_54_1 right)) (and (=> (= (ControlFlow 0 88) (- 0 90)) (<= left_1 (|Seq#Index_3395| pw@5 i_54_1))) (=> (<= left_1 (|Seq#Index_3395| pw@5 i_54_1)) (and (=> (= (ControlFlow 0 88) (- 0 89)) (<= (|Seq#Index_3395| pw@5 i_54_1) right)) (=> (<= (|Seq#Index_3395| pw@5 i_54_1) right) (=> (= (ControlFlow 0 88) 87) anon102_correct))))))))
(let ((anon190_Else_correct  (=> (forall ((i_53_1_1 Int) ) (!  (=> (and (<= storeIndex@2 i_53_1_1) (< i_53_1_1 j_9@1)) (<= pivotValue@0 (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| Heap@0) (loc a_2@@1 i_53_1_1) val)))
 :qid |stdinbpl.1700:24|
 :skolemid |121|
 :pattern ( (loc a_2@@1 i_53_1_1))
)) (and (=> (= (ControlFlow 0 103) (- 0 104)) (= (|Seq#Length_3395| pw@5) (+ right 1))) (=> (= (|Seq#Length_3395| pw@5) (+ right 1)) (and (and (=> (= (ControlFlow 0 103) 102) anon192_Else_correct) (=> (= (ControlFlow 0 103) 88) anon193_Then_correct)) (=> (= (ControlFlow 0 103) 91) anon193_Else_correct)))))))
(let ((anon98_correct true))
(let ((anon191_Else_correct  (=> (and (not (and (<= storeIndex@2 i_52_1) (< i_52_1 j_9@1))) (= (ControlFlow 0 86) 83)) anon98_correct)))
(let ((anon191_Then_correct  (=> (and (<= storeIndex@2 i_52_1) (< i_52_1 j_9@1)) (and (=> (= (ControlFlow 0 84) (- 0 85)) (<= pivotValue@0 (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| Heap@0) (loc a_2@@1 i_52_1) val))) (=> (<= pivotValue@0 (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| Heap@0) (loc a_2@@1 i_52_1) val)) (=> (= (ControlFlow 0 84) 83) anon98_correct))))))
(let ((anon188_Else_correct  (=> (forall ((i_51_1_1 Int) ) (!  (=> (and (<= left_1 i_51_1_1) (< i_51_1_1 storeIndex@2)) (< (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| Heap@0) (loc a_2@@1 i_51_1_1) val) pivotValue@0))
 :qid |stdinbpl.1689:24|
 :skolemid |120|
 :pattern ( (loc a_2@@1 i_51_1_1))
)) (and (and (=> (= (ControlFlow 0 105) 103) anon190_Else_correct) (=> (= (ControlFlow 0 105) 84) anon191_Then_correct)) (=> (= (ControlFlow 0 105) 86) anon191_Else_correct)))))
(let ((anon94_correct true))
(let ((anon189_Else_correct  (=> (and (not (and (<= left_1 i_50_1) (< i_50_1 storeIndex@2))) (= (ControlFlow 0 82) 79)) anon94_correct)))
(let ((anon189_Then_correct  (=> (and (<= left_1 i_50_1) (< i_50_1 storeIndex@2)) (and (=> (= (ControlFlow 0 80) (- 0 81)) (< (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| Heap@0) (loc a_2@@1 i_50_1) val) pivotValue@0)) (=> (< (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| Heap@0) (loc a_2@@1 i_50_1) val) pivotValue@0) (=> (= (ControlFlow 0 80) 79) anon94_correct))))))
(let ((anon91_correct  (=> (state Heap@0 Mask@18) (=> (and (= j_9@1 (+ j_9@0 1)) (state Heap@0 Mask@18)) (and (=> (= (ControlFlow 0 106) (- 0 113)) (<= left_1 j_9@1)) (=> (<= left_1 j_9@1) (and (=> (= (ControlFlow 0 106) (- 0 112)) (<= j_9@1 right)) (=> (<= j_9@1 right) (and (=> (= (ControlFlow 0 106) (- 0 111)) (<= left_1 storeIndex@2)) (=> (<= left_1 storeIndex@2) (and (=> (= (ControlFlow 0 106) (- 0 110)) (<= storeIndex@2 j_9@1)) (=> (<= storeIndex@2 j_9@1) (and (=> (= (ControlFlow 0 106) (- 0 109)) (forall ((i_49 Int) (i_49_1 Int) ) (!  (=> (and (and (and (and (not (= i_49 i_49_1)) (and (<= left_1 i_49) (<= i_49 right))) (and (<= left_1 i_49_1) (<= i_49_1 right))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i_49) (loc a_2@@1 i_49_1))))
 :qid |stdinbpl.1646:21|
 :skolemid |114|
 :pattern ( (neverTriggered7 i_49) (neverTriggered7 i_49_1))
))) (=> (forall ((i_49@@0 Int) (i_49_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_49@@0 i_49_1@@0)) (and (<= left_1 i_49@@0) (<= i_49@@0 right))) (and (<= left_1 i_49_1@@0) (<= i_49_1@@0 right))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i_49@@0) (loc a_2@@1 i_49_1@@0))))
 :qid |stdinbpl.1646:21|
 :skolemid |114|
 :pattern ( (neverTriggered7 i_49@@0) (neverTriggered7 i_49_1@@0))
)) (and (=> (= (ControlFlow 0 106) (- 0 108)) (forall ((i_49@@1 Int) ) (!  (=> (and (<= left_1 i_49@@1) (<= i_49@@1 right)) (>= (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| Mask@18) (loc a_2@@1 i_49@@1) val) FullPerm))
 :qid |stdinbpl.1653:21|
 :skolemid |115|
 :pattern ( (loc a_2@@1 i_49@@1))
 :pattern ( (loc a_2@@1 i_49@@1))
))) (=> (forall ((i_49@@2 Int) ) (!  (=> (and (<= left_1 i_49@@2) (<= i_49@@2 right)) (>= (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| Mask@18) (loc a_2@@1 i_49@@2) val) FullPerm))
 :qid |stdinbpl.1653:21|
 :skolemid |115|
 :pattern ( (loc a_2@@1 i_49@@2))
 :pattern ( (loc a_2@@1 i_49@@2))
)) (=> (forall ((i_49@@3 Int) ) (!  (=> (and (and (<= left_1 i_49@@3) (<= i_49@@3 right)) (< NoPerm FullPerm)) (and (qpRange7 (loc a_2@@1 i_49@@3)) (= (invRecv7 (loc a_2@@1 i_49@@3)) i_49@@3)))
 :qid |stdinbpl.1659:26|
 :skolemid |116|
 :pattern ( (loc a_2@@1 i_49@@3))
 :pattern ( (loc a_2@@1 i_49@@3))
)) (=> (and (forall ((o_4@@13 T@Ref) ) (!  (=> (and (and (<= left_1 (invRecv7 o_4@@13)) (<= (invRecv7 o_4@@13) right)) (and (< NoPerm FullPerm) (qpRange7 o_4@@13))) (= (loc a_2@@1 (invRecv7 o_4@@13)) o_4@@13))
 :qid |stdinbpl.1663:26|
 :skolemid |117|
 :pattern ( (invRecv7 o_4@@13))
)) (forall ((o_4@@14 T@Ref) ) (!  (and (=> (and (and (<= left_1 (invRecv7 o_4@@14)) (<= (invRecv7 o_4@@14) right)) (and (< NoPerm FullPerm) (qpRange7 o_4@@14))) (and (= (loc a_2@@1 (invRecv7 o_4@@14)) o_4@@14) (= (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| QPMask@5) o_4@@14 val) (- (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| Mask@18) o_4@@14 val) FullPerm)))) (=> (not (and (and (<= left_1 (invRecv7 o_4@@14)) (<= (invRecv7 o_4@@14) right)) (and (< NoPerm FullPerm) (qpRange7 o_4@@14)))) (= (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| QPMask@5) o_4@@14 val) (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| Mask@18) o_4@@14 val))))
 :qid |stdinbpl.1669:26|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| QPMask@5) o_4@@14 val))
))) (=> (and (and (and (and (forall ((o_4@@15 T@Ref) (f_5@@9 T@Field_28611_53) ) (!  (=> true (= (select (|PolymorphicMapType_28572_19693_53#PolymorphicMapType_28572| Mask@18) o_4@@15 f_5@@9) (select (|PolymorphicMapType_28572_19693_53#PolymorphicMapType_28572| QPMask@5) o_4@@15 f_5@@9)))
 :qid |stdinbpl.1675:33|
 :skolemid |119|
 :pattern ( (select (|PolymorphicMapType_28572_19693_53#PolymorphicMapType_28572| QPMask@5) o_4@@15 f_5@@9))
)) (forall ((o_4@@16 T@Ref) (f_5@@10 T@Field_28624_28625) ) (!  (=> true (= (select (|PolymorphicMapType_28572_19693_28625#PolymorphicMapType_28572| Mask@18) o_4@@16 f_5@@10) (select (|PolymorphicMapType_28572_19693_28625#PolymorphicMapType_28572| QPMask@5) o_4@@16 f_5@@10)))
 :qid |stdinbpl.1675:33|
 :skolemid |119|
 :pattern ( (select (|PolymorphicMapType_28572_19693_28625#PolymorphicMapType_28572| QPMask@5) o_4@@16 f_5@@10))
))) (forall ((o_4@@17 T@Ref) (f_5@@11 T@Field_34782_3612) ) (!  (=> (not (= f_5@@11 val)) (= (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| Mask@18) o_4@@17 f_5@@11) (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| QPMask@5) o_4@@17 f_5@@11)))
 :qid |stdinbpl.1675:33|
 :skolemid |119|
 :pattern ( (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| QPMask@5) o_4@@17 f_5@@11))
))) (forall ((o_4@@18 T@Ref) (f_5@@12 T@Field_19693_82618) ) (!  (=> true (= (select (|PolymorphicMapType_28572_19693_82618#PolymorphicMapType_28572| Mask@18) o_4@@18 f_5@@12) (select (|PolymorphicMapType_28572_19693_82618#PolymorphicMapType_28572| QPMask@5) o_4@@18 f_5@@12)))
 :qid |stdinbpl.1675:33|
 :skolemid |119|
 :pattern ( (select (|PolymorphicMapType_28572_19693_82618#PolymorphicMapType_28572| QPMask@5) o_4@@18 f_5@@12))
))) (forall ((o_4@@19 T@Ref) (f_5@@13 T@Field_19693_82751) ) (!  (=> true (= (select (|PolymorphicMapType_28572_19693_86873#PolymorphicMapType_28572| Mask@18) o_4@@19 f_5@@13) (select (|PolymorphicMapType_28572_19693_86873#PolymorphicMapType_28572| QPMask@5) o_4@@19 f_5@@13)))
 :qid |stdinbpl.1675:33|
 :skolemid |119|
 :pattern ( (select (|PolymorphicMapType_28572_19693_86873#PolymorphicMapType_28572| QPMask@5) o_4@@19 f_5@@13))
))) (and (=> (= (ControlFlow 0 106) (- 0 107)) (= (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| Heap@0) (loc a_2@@1 right) val) pivotValue@0)) (=> (= (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| Heap@0) (loc a_2@@1 right) val) pivotValue@0) (and (and (=> (= (ControlFlow 0 106) 105) anon188_Else_correct) (=> (= (ControlFlow 0 106) 80) anon189_Then_correct)) (=> (= (ControlFlow 0 106) 82) anon189_Else_correct)))))))))))))))))))))))
(let ((anon90_correct  (=> (and (and (= (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| ExhaleHeap@4) (loc a_2@@1 j_9@0) val) (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| ExhaleHeap@1) (loc a_2@@1 storeIndex@0) val)) (= (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| ExhaleHeap@4) (loc a_2@@1 storeIndex@0) val) (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| ExhaleHeap@1) (loc a_2@@1 j_9@0) val))) (and (state ExhaleHeap@4 Mask@17) (state ExhaleHeap@4 Mask@17))) (and (=> (= (ControlFlow 0 115) (- 0 119)) (>= j_9@0 0)) (=> (>= j_9@0 0) (and (=> (= (ControlFlow 0 115) (- 0 118)) (< j_9@0 (|Seq#Length_3395| pw@2))) (=> (< j_9@0 (|Seq#Length_3395| pw@2)) (and (=> (= (ControlFlow 0 115) (- 0 117)) (>= storeIndex@0 0)) (=> (>= storeIndex@0 0) (and (=> (= (ControlFlow 0 115) (- 0 116)) (< storeIndex@0 (|Seq#Length_3395| pw@2))) (=> (< storeIndex@0 (|Seq#Length_3395| pw@2)) (=> (= pw@4 (|Seq#Append_4579| (|Seq#Take_4579| (|Seq#Append_4579| (|Seq#Take_4579| pw@2 storeIndex@0) (|Seq#Append_4579| (|Seq#Singleton_4579| (|Seq#Index_3395| pw@2 j_9@0)) (|Seq#Drop_4579| pw@2 (+ storeIndex@0 1)))) j_9@0) (|Seq#Append_4579| (|Seq#Singleton_4579| (|Seq#Index_3395| pw@2 storeIndex@0)) (|Seq#Drop_4579| (|Seq#Append_4579| (|Seq#Take_4579| pw@2 storeIndex@0) (|Seq#Append_4579| (|Seq#Singleton_4579| (|Seq#Index_3395| pw@2 j_9@0)) (|Seq#Drop_4579| pw@2 (+ storeIndex@0 1)))) (+ j_9@0 1))))) (=> (and (and (and (state ExhaleHeap@4 Mask@17) (= storeIndex@1 (+ storeIndex@0 1))) (and (state ExhaleHeap@4 Mask@17) (= pw@5 pw@4))) (and (and (= storeIndex@2 storeIndex@1) (= Heap@0 ExhaleHeap@4)) (and (= Mask@18 Mask@17) (= (ControlFlow 0 115) 106)))) anon91_correct)))))))))))))
(let ((anon187_Else_correct  (=> (= j_9@0 storeIndex@0) (=> (and (= Mask@17 Mask@15) (= (ControlFlow 0 121) 115)) anon90_correct))))
(let ((anon187_Then_correct  (=> (and (not (= j_9@0 storeIndex@0)) (not (= (loc a_2@@1 storeIndex@0) null))) (=> (and (and (= Mask@16 (PolymorphicMapType_28572 (store (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| Mask@15) (loc a_2@@1 storeIndex@0) val (+ (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| Mask@15) (loc a_2@@1 storeIndex@0) val) FullPerm)) (|PolymorphicMapType_28572_19693_53#PolymorphicMapType_28572| Mask@15) (|PolymorphicMapType_28572_19693_28625#PolymorphicMapType_28572| Mask@15) (|PolymorphicMapType_28572_19693_82618#PolymorphicMapType_28572| Mask@15) (|PolymorphicMapType_28572_19693_86873#PolymorphicMapType_28572| Mask@15))) (state ExhaleHeap@4 Mask@16)) (and (= Mask@17 Mask@16) (= (ControlFlow 0 120) 115))) anon90_correct))))
(let ((anon88_correct  (=> (and (and (IdenticalOnKnownLocations ExhaleHeap@1 ExhaleHeap@4 Mask@14) (not (= (loc a_2@@1 j_9@0) null))) (and (= Mask@15 (PolymorphicMapType_28572 (store (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| Mask@14) (loc a_2@@1 j_9@0) val (+ (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| Mask@14) (loc a_2@@1 j_9@0) val) FullPerm)) (|PolymorphicMapType_28572_19693_53#PolymorphicMapType_28572| Mask@14) (|PolymorphicMapType_28572_19693_28625#PolymorphicMapType_28572| Mask@14) (|PolymorphicMapType_28572_19693_82618#PolymorphicMapType_28572| Mask@14) (|PolymorphicMapType_28572_19693_86873#PolymorphicMapType_28572| Mask@14))) (state ExhaleHeap@4 Mask@15))) (and (=> (= (ControlFlow 0 122) 120) anon187_Then_correct) (=> (= (ControlFlow 0 122) 121) anon187_Else_correct)))))
(let ((anon87_correct  (=> (= Mask@13 (PolymorphicMapType_28572 (store (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| Mask@12) (loc a_2@@1 storeIndex@0) val (- (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| Mask@12) (loc a_2@@1 storeIndex@0) val) FullPerm)) (|PolymorphicMapType_28572_19693_53#PolymorphicMapType_28572| Mask@12) (|PolymorphicMapType_28572_19693_28625#PolymorphicMapType_28572| Mask@12) (|PolymorphicMapType_28572_19693_82618#PolymorphicMapType_28572| Mask@12) (|PolymorphicMapType_28572_19693_86873#PolymorphicMapType_28572| Mask@12))) (=> (and (= Mask@14 Mask@13) (= (ControlFlow 0 124) 122)) anon88_correct))))
(let ((anon186_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 127) 124)) anon87_correct)))
(let ((anon186_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 125) (- 0 126)) (<= FullPerm (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| Mask@12) (loc a_2@@1 storeIndex@0) val))) (=> (<= FullPerm (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| Mask@12) (loc a_2@@1 storeIndex@0) val)) (=> (= (ControlFlow 0 125) 124) anon87_correct))))))
(let ((anon185_Then_correct  (=> (not (= j_9@0 storeIndex@0)) (and (=> (= (ControlFlow 0 128) 125) anon186_Then_correct) (=> (= (ControlFlow 0 128) 127) anon186_Else_correct)))))
(let ((anon185_Else_correct  (=> (= j_9@0 storeIndex@0) (=> (and (= Mask@14 Mask@12) (= (ControlFlow 0 123) 122)) anon88_correct))))
(let ((anon84_correct  (=> (= Mask@12 (PolymorphicMapType_28572 (store (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| QPMask@2) (loc a_2@@1 j_9@0) val (- (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| QPMask@2) (loc a_2@@1 j_9@0) val) FullPerm)) (|PolymorphicMapType_28572_19693_53#PolymorphicMapType_28572| QPMask@2) (|PolymorphicMapType_28572_19693_28625#PolymorphicMapType_28572| QPMask@2) (|PolymorphicMapType_28572_19693_82618#PolymorphicMapType_28572| QPMask@2) (|PolymorphicMapType_28572_19693_86873#PolymorphicMapType_28572| QPMask@2))) (and (=> (= (ControlFlow 0 129) 128) anon185_Then_correct) (=> (= (ControlFlow 0 129) 123) anon185_Else_correct)))))
(let ((anon184_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 132) 129)) anon84_correct)))
(let ((anon184_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 130) (- 0 131)) (<= FullPerm (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| QPMask@2) (loc a_2@@1 j_9@0) val))) (=> (<= FullPerm (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| QPMask@2) (loc a_2@@1 j_9@0) val)) (=> (= (ControlFlow 0 130) 129) anon84_correct))))))
(let ((anon183_Then_correct  (=> (< (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| ExhaleHeap@1) (loc a_2@@1 j_9@0) val) pivotValue@0) (and (=> (= (ControlFlow 0 133) (- 0 137)) (<= 0 j_9@0)) (=> (<= 0 j_9@0) (and (=> (= (ControlFlow 0 133) (- 0 136)) (< j_9@0 (len_1 a_2@@1))) (=> (< j_9@0 (len_1 a_2@@1)) (and (=> (= (ControlFlow 0 133) (- 0 135)) (<= 0 storeIndex@0)) (=> (<= 0 storeIndex@0) (and (=> (= (ControlFlow 0 133) (- 0 134)) (< storeIndex@0 (len_1 a_2@@1))) (=> (< storeIndex@0 (len_1 a_2@@1)) (and (=> (= (ControlFlow 0 133) 130) anon184_Then_correct) (=> (= (ControlFlow 0 133) 132) anon184_Else_correct)))))))))))))
(let ((anon183_Else_correct  (=> (and (<= pivotValue@0 (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| ExhaleHeap@1) (loc a_2@@1 j_9@0) val)) (= pw@5 pw@2)) (=> (and (and (= storeIndex@2 storeIndex@0) (= Heap@0 ExhaleHeap@1)) (and (= Mask@18 QPMask@2) (= (ControlFlow 0 114) 106))) anon91_correct))))
(let ((anon182_Then_correct  (=> (state ExhaleHeap@1 ZeroMask) (=> (and (and (<= left_1 j_9@0) (<= j_9@0 right)) (and (<= left_1 storeIndex@0) (<= storeIndex@0 j_9@0))) (and (=> (= (ControlFlow 0 138) (- 0 140)) (forall ((i_44 Int) (i_44_1 Int) ) (!  (=> (and (and (and (and (not (= i_44 i_44_1)) (and (<= left_1 i_44) (<= i_44 right))) (and (<= left_1 i_44_1) (<= i_44_1 right))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i_44) (loc a_2@@1 i_44_1))))
 :qid |stdinbpl.1487:19|
 :skolemid |103|
))) (=> (forall ((i_44@@0 Int) (i_44_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_44@@0 i_44_1@@0)) (and (<= left_1 i_44@@0) (<= i_44@@0 right))) (and (<= left_1 i_44_1@@0) (<= i_44_1@@0 right))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i_44@@0) (loc a_2@@1 i_44_1@@0))))
 :qid |stdinbpl.1487:19|
 :skolemid |103|
)) (=> (and (and (forall ((i_44@@1 Int) ) (!  (=> (and (and (<= left_1 i_44@@1) (<= i_44@@1 right)) (< NoPerm FullPerm)) (and (qpRange6 (loc a_2@@1 i_44@@1)) (= (invRecv6 (loc a_2@@1 i_44@@1)) i_44@@1)))
 :qid |stdinbpl.1493:26|
 :skolemid |104|
 :pattern ( (loc a_2@@1 i_44@@1))
 :pattern ( (loc a_2@@1 i_44@@1))
)) (forall ((o_4@@20 T@Ref) ) (!  (=> (and (and (and (<= left_1 (invRecv6 o_4@@20)) (<= (invRecv6 o_4@@20) right)) (< NoPerm FullPerm)) (qpRange6 o_4@@20)) (= (loc a_2@@1 (invRecv6 o_4@@20)) o_4@@20))
 :qid |stdinbpl.1497:26|
 :skolemid |105|
 :pattern ( (invRecv6 o_4@@20))
))) (and (forall ((i_44@@2 Int) ) (!  (=> (and (<= left_1 i_44@@2) (<= i_44@@2 right)) (not (= (loc a_2@@1 i_44@@2) null)))
 :qid |stdinbpl.1503:26|
 :skolemid |106|
 :pattern ( (loc a_2@@1 i_44@@2))
 :pattern ( (loc a_2@@1 i_44@@2))
)) (forall ((o_4@@21 T@Ref) ) (!  (and (=> (and (and (and (<= left_1 (invRecv6 o_4@@21)) (<= (invRecv6 o_4@@21) right)) (< NoPerm FullPerm)) (qpRange6 o_4@@21)) (and (=> (< NoPerm FullPerm) (= (loc a_2@@1 (invRecv6 o_4@@21)) o_4@@21)) (= (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| QPMask@2) o_4@@21 val) (+ (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| ZeroMask) o_4@@21 val) FullPerm)))) (=> (not (and (and (and (<= left_1 (invRecv6 o_4@@21)) (<= (invRecv6 o_4@@21) right)) (< NoPerm FullPerm)) (qpRange6 o_4@@21))) (= (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| QPMask@2) o_4@@21 val) (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| ZeroMask) o_4@@21 val))))
 :qid |stdinbpl.1509:26|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| QPMask@2) o_4@@21 val))
)))) (=> (and (and (and (and (and (and (and (forall ((o_4@@22 T@Ref) (f_5@@14 T@Field_28611_53) ) (!  (=> true (= (select (|PolymorphicMapType_28572_19693_53#PolymorphicMapType_28572| ZeroMask) o_4@@22 f_5@@14) (select (|PolymorphicMapType_28572_19693_53#PolymorphicMapType_28572| QPMask@2) o_4@@22 f_5@@14)))
 :qid |stdinbpl.1513:33|
 :skolemid |108|
 :pattern ( (select (|PolymorphicMapType_28572_19693_53#PolymorphicMapType_28572| ZeroMask) o_4@@22 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_28572_19693_53#PolymorphicMapType_28572| QPMask@2) o_4@@22 f_5@@14))
)) (forall ((o_4@@23 T@Ref) (f_5@@15 T@Field_28624_28625) ) (!  (=> true (= (select (|PolymorphicMapType_28572_19693_28625#PolymorphicMapType_28572| ZeroMask) o_4@@23 f_5@@15) (select (|PolymorphicMapType_28572_19693_28625#PolymorphicMapType_28572| QPMask@2) o_4@@23 f_5@@15)))
 :qid |stdinbpl.1513:33|
 :skolemid |108|
 :pattern ( (select (|PolymorphicMapType_28572_19693_28625#PolymorphicMapType_28572| ZeroMask) o_4@@23 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_28572_19693_28625#PolymorphicMapType_28572| QPMask@2) o_4@@23 f_5@@15))
))) (forall ((o_4@@24 T@Ref) (f_5@@16 T@Field_34782_3612) ) (!  (=> (not (= f_5@@16 val)) (= (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| ZeroMask) o_4@@24 f_5@@16) (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| QPMask@2) o_4@@24 f_5@@16)))
 :qid |stdinbpl.1513:33|
 :skolemid |108|
 :pattern ( (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| ZeroMask) o_4@@24 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| QPMask@2) o_4@@24 f_5@@16))
))) (forall ((o_4@@25 T@Ref) (f_5@@17 T@Field_19693_82618) ) (!  (=> true (= (select (|PolymorphicMapType_28572_19693_82618#PolymorphicMapType_28572| ZeroMask) o_4@@25 f_5@@17) (select (|PolymorphicMapType_28572_19693_82618#PolymorphicMapType_28572| QPMask@2) o_4@@25 f_5@@17)))
 :qid |stdinbpl.1513:33|
 :skolemid |108|
 :pattern ( (select (|PolymorphicMapType_28572_19693_82618#PolymorphicMapType_28572| ZeroMask) o_4@@25 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_28572_19693_82618#PolymorphicMapType_28572| QPMask@2) o_4@@25 f_5@@17))
))) (forall ((o_4@@26 T@Ref) (f_5@@18 T@Field_19693_82751) ) (!  (=> true (= (select (|PolymorphicMapType_28572_19693_86873#PolymorphicMapType_28572| ZeroMask) o_4@@26 f_5@@18) (select (|PolymorphicMapType_28572_19693_86873#PolymorphicMapType_28572| QPMask@2) o_4@@26 f_5@@18)))
 :qid |stdinbpl.1513:33|
 :skolemid |108|
 :pattern ( (select (|PolymorphicMapType_28572_19693_86873#PolymorphicMapType_28572| ZeroMask) o_4@@26 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_28572_19693_86873#PolymorphicMapType_28572| QPMask@2) o_4@@26 f_5@@18))
))) (state ExhaleHeap@1 QPMask@2)) (and (= (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| ExhaleHeap@1) (loc a_2@@1 right) val) pivotValue@0) (forall ((i_45_2 Int) ) (!  (=> (and (<= left_1 i_45_2) (< i_45_2 storeIndex@0)) (< (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| ExhaleHeap@1) (loc a_2@@1 i_45_2) val) pivotValue@0))
 :qid |stdinbpl.1520:24|
 :skolemid |109|
 :pattern ( (loc a_2@@1 i_45_2))
)))) (and (and (and (forall ((i_46 Int) ) (!  (=> (and (<= storeIndex@0 i_46) (< i_46 j_9@0)) (<= pivotValue@0 (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| ExhaleHeap@1) (loc a_2@@1 i_46) val)))
 :qid |stdinbpl.1524:24|
 :skolemid |110|
 :pattern ( (loc a_2@@1 i_46))
)) (= (|Seq#Length_3395| pw@2) (+ right 1))) (and (forall ((i_47_2 Int) ) (!  (=> (and (<= left_1 i_47_2) (<= i_47_2 right)) (and (<= left_1 (|Seq#Index_3395| pw@2 i_47_2)) (<= (|Seq#Index_3395| pw@2 i_47_2) right)))
 :qid |stdinbpl.1529:24|
 :skolemid |111|
 :pattern ( (|Seq#Index_3395| pw@2 i_47_2))
)) (forall ((i_48_2 Int) (k_8 Int) ) (!  (=> (and (<= left_1 i_48_2) (and (< i_48_2 k_8) (<= k_8 right))) (not (= (|Seq#Index_3395| pw@2 i_48_2) (|Seq#Index_3395| pw@2 k_8))))
 :qid |stdinbpl.1533:24|
 :skolemid |112|
 :pattern ( (|Seq#Index_3395| pw@2 i_48_2) (|Seq#Index_3395| pw@2 k_8))
)))) (and (and (forall ((i$0_4_1 Int) ) (!  (=> (and (<= left_1 i$0_4_1) (<= i$0_4_1 right)) (= (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| ExhaleHeap@1) (loc a_2@@1 i$0_4_1) val) (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| Heap@@21) (loc a_2@@1 (|Seq#Index_3395| pw@2 i$0_4_1)) val)))
 :qid |stdinbpl.1537:24|
 :skolemid |113|
 :pattern ( (|Seq#Index_3395| pw@2 i$0_4_1))
)) (state ExhaleHeap@1 QPMask@2)) (and (< j_9@0 right) (state ExhaleHeap@1 QPMask@2))))) (and (=> (= (ControlFlow 0 138) (- 0 139)) (HasDirectPerm_19693_3612 QPMask@2 (loc a_2@@1 j_9@0) val)) (=> (HasDirectPerm_19693_3612 QPMask@2 (loc a_2@@1 j_9@0) val) (and (=> (= (ControlFlow 0 138) 133) anon183_Then_correct) (=> (= (ControlFlow 0 138) 114) anon183_Else_correct))))))))))))
(let ((anon139_correct true))
(let ((anon211_Else_correct  (=> (and (not (and (<= left_1 i_23) (<= i_23 right))) (= (ControlFlow 0 44) 41)) anon139_correct)))
(let ((anon211_Then_correct  (=> (and (<= left_1 i_23) (<= i_23 right)) (and (=> (= (ControlFlow 0 42) (- 0 43)) (= (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| ExhaleHeap@2) (loc a_2@@1 i_23) val) (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| Heap@@21) (loc a_2@@1 (|Seq#Index_3395| pw@3 i_23)) val))) (=> (= (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| ExhaleHeap@2) (loc a_2@@1 i_23) val) (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| Heap@@21) (loc a_2@@1 (|Seq#Index_3395| pw@3 i_23)) val)) (=> (= (ControlFlow 0 42) 41) anon139_correct))))))
(let ((anon210_Else_correct true))
(let ((anon208_Else_correct  (=> (forall ((i_22_1_1 Int) (k_3_1_1 Int) ) (!  (=> (and (<= left_1 i_22_1_1) (and (< i_22_1_1 k_3_1_1) (<= k_3_1_1 right))) (not (= (|Seq#Index_3395| pw@3 i_22_1_1) (|Seq#Index_3395| pw@3 k_3_1_1))))
 :qid |stdinbpl.1973:20|
 :skolemid |145|
 :pattern ( (|Seq#Index_3395| pw@3 i_22_1_1) (|Seq#Index_3395| pw@3 k_3_1_1))
)) (and (and (=> (= (ControlFlow 0 45) 40) anon210_Else_correct) (=> (= (ControlFlow 0 45) 42) anon211_Then_correct)) (=> (= (ControlFlow 0 45) 44) anon211_Else_correct)))))
(let ((anon135_correct true))
(let ((anon209_Else_correct  (=> (and (not (and (<= left_1 i_21) (and (< i_21 k_2_1) (<= k_2_1 right)))) (= (ControlFlow 0 39) 36)) anon135_correct)))
(let ((anon209_Then_correct  (=> (and (<= left_1 i_21) (and (< i_21 k_2_1) (<= k_2_1 right))) (and (=> (= (ControlFlow 0 37) (- 0 38)) (not (= (|Seq#Index_3395| pw@3 i_21) (|Seq#Index_3395| pw@3 k_2_1)))) (=> (not (= (|Seq#Index_3395| pw@3 i_21) (|Seq#Index_3395| pw@3 k_2_1))) (=> (= (ControlFlow 0 37) 36) anon135_correct))))))
(let ((anon206_Else_correct  (=> (forall ((i_20_1_1 Int) ) (!  (=> (and (<= left_1 i_20_1_1) (<= i_20_1_1 right)) (and (<= left_1 (|Seq#Index_3395| pw@3 i_20_1_1)) (<= (|Seq#Index_3395| pw@3 i_20_1_1) right)))
 :qid |stdinbpl.1962:20|
 :skolemid |144|
 :pattern ( (|Seq#Index_3395| pw@3 i_20_1_1))
)) (and (and (=> (= (ControlFlow 0 46) 45) anon208_Else_correct) (=> (= (ControlFlow 0 46) 37) anon209_Then_correct)) (=> (= (ControlFlow 0 46) 39) anon209_Else_correct)))))
(let ((anon131_correct true))
(let ((anon207_Else_correct  (=> (and (not (and (<= left_1 i_19) (<= i_19 right))) (= (ControlFlow 0 35) 31)) anon131_correct)))
(let ((anon207_Then_correct  (=> (and (<= left_1 i_19) (<= i_19 right)) (and (=> (= (ControlFlow 0 32) (- 0 34)) (<= left_1 (|Seq#Index_3395| pw@3 i_19))) (=> (<= left_1 (|Seq#Index_3395| pw@3 i_19)) (and (=> (= (ControlFlow 0 32) (- 0 33)) (<= (|Seq#Index_3395| pw@3 i_19) right)) (=> (<= (|Seq#Index_3395| pw@3 i_19) right) (=> (= (ControlFlow 0 32) 31) anon131_correct))))))))
(let ((anon204_Else_correct  (=> (forall ((i_18_1_1 Int) ) (!  (=> (and (< storeIndex@0 i_18_1_1) (<= i_18_1_1 right)) (<= (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| ExhaleHeap@2) (loc a_2@@1 storeIndex@0) val) (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| ExhaleHeap@2) (loc a_2@@1 i_18_1_1) val)))
 :qid |stdinbpl.1947:20|
 :skolemid |143|
 :pattern ( (loc a_2@@1 i_18_1_1))
)) (and (=> (= (ControlFlow 0 47) (- 0 48)) (= (|Seq#Length_3395| pw@3) (+ right 1))) (=> (= (|Seq#Length_3395| pw@3) (+ right 1)) (and (and (=> (= (ControlFlow 0 47) 46) anon206_Else_correct) (=> (= (ControlFlow 0 47) 32) anon207_Then_correct)) (=> (= (ControlFlow 0 47) 35) anon207_Else_correct)))))))
(let ((anon127_correct true))
(let ((anon205_Else_correct  (=> (and (not (and (< storeIndex@0 i_17) (<= i_17 right))) (= (ControlFlow 0 30) 27)) anon127_correct)))
(let ((anon205_Then_correct  (=> (and (< storeIndex@0 i_17) (<= i_17 right)) (and (=> (= (ControlFlow 0 28) (- 0 29)) (<= (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| ExhaleHeap@2) (loc a_2@@1 storeIndex@0) val) (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| ExhaleHeap@2) (loc a_2@@1 i_17) val))) (=> (<= (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| ExhaleHeap@2) (loc a_2@@1 storeIndex@0) val) (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| ExhaleHeap@2) (loc a_2@@1 i_17) val)) (=> (= (ControlFlow 0 28) 27) anon127_correct))))))
(let ((anon202_Else_correct  (=> (forall ((i_16_1_1 Int) ) (!  (=> (and (<= left_1 i_16_1_1) (< i_16_1_1 storeIndex@0)) (< (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| ExhaleHeap@2) (loc a_2@@1 i_16_1_1) val) (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| ExhaleHeap@2) (loc a_2@@1 storeIndex@0) val)))
 :qid |stdinbpl.1936:20|
 :skolemid |142|
 :pattern ( (loc a_2@@1 i_16_1_1))
)) (and (and (=> (= (ControlFlow 0 49) 47) anon204_Else_correct) (=> (= (ControlFlow 0 49) 28) anon205_Then_correct)) (=> (= (ControlFlow 0 49) 30) anon205_Else_correct)))))
(let ((anon123_correct true))
(let ((anon203_Else_correct  (=> (and (not (and (<= left_1 i_15) (< i_15 storeIndex@0))) (= (ControlFlow 0 26) 23)) anon123_correct)))
(let ((anon203_Then_correct  (=> (and (<= left_1 i_15) (< i_15 storeIndex@0)) (and (=> (= (ControlFlow 0 24) (- 0 25)) (< (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| ExhaleHeap@2) (loc a_2@@1 i_15) val) (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| ExhaleHeap@2) (loc a_2@@1 storeIndex@0) val))) (=> (< (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| ExhaleHeap@2) (loc a_2@@1 i_15) val) (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| ExhaleHeap@2) (loc a_2@@1 storeIndex@0) val)) (=> (= (ControlFlow 0 24) 23) anon123_correct))))))
(let ((anon120_correct  (=> (and (and (= (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| ExhaleHeap@2) (loc a_2@@1 right) val) (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| ExhaleHeap@1) (loc a_2@@1 storeIndex@0) val)) (= (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| ExhaleHeap@2) (loc a_2@@1 storeIndex@0) val) (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| ExhaleHeap@1) (loc a_2@@1 right) val))) (and (state ExhaleHeap@2 Mask@11) (state ExhaleHeap@2 Mask@11))) (and (=> (= (ControlFlow 0 50) (- 0 59)) (>= right 0)) (=> (>= right 0) (and (=> (= (ControlFlow 0 50) (- 0 58)) (< right (|Seq#Length_3395| pw@2))) (=> (< right (|Seq#Length_3395| pw@2)) (and (=> (= (ControlFlow 0 50) (- 0 57)) (>= storeIndex@0 0)) (=> (>= storeIndex@0 0) (and (=> (= (ControlFlow 0 50) (- 0 56)) (< storeIndex@0 (|Seq#Length_3395| pw@2))) (=> (< storeIndex@0 (|Seq#Length_3395| pw@2)) (=> (and (= pw@3 (|Seq#Append_4579| (|Seq#Take_4579| (|Seq#Append_4579| (|Seq#Take_4579| pw@2 storeIndex@0) (|Seq#Append_4579| (|Seq#Singleton_4579| (|Seq#Index_3395| pw@2 right)) (|Seq#Drop_4579| pw@2 (+ storeIndex@0 1)))) right) (|Seq#Append_4579| (|Seq#Singleton_4579| (|Seq#Index_3395| pw@2 storeIndex@0)) (|Seq#Drop_4579| (|Seq#Append_4579| (|Seq#Take_4579| pw@2 storeIndex@0) (|Seq#Append_4579| (|Seq#Singleton_4579| (|Seq#Index_3395| pw@2 right)) (|Seq#Drop_4579| pw@2 (+ storeIndex@0 1)))) (+ right 1))))) (state ExhaleHeap@2 Mask@11)) (and (=> (= (ControlFlow 0 50) (- 0 55)) (<= left_1 storeIndex@0)) (=> (<= left_1 storeIndex@0) (and (=> (= (ControlFlow 0 50) (- 0 54)) (<= storeIndex@0 right)) (=> (<= storeIndex@0 right) (and (=> (= (ControlFlow 0 50) (- 0 53)) (forall ((i_14_1 Int) (i_14_2 Int) ) (!  (=> (and (and (and (and (not (= i_14_1 i_14_2)) (and (<= left_1 i_14_1) (<= i_14_1 right))) (and (<= left_1 i_14_2) (<= i_14_2 right))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i_14_1) (loc a_2@@1 i_14_2))))
 :qid |stdinbpl.1893:17|
 :skolemid |136|
 :pattern ( (neverTriggered3 i_14_1) (neverTriggered3 i_14_2))
))) (=> (forall ((i_14_1@@0 Int) (i_14_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_14_1@@0 i_14_2@@0)) (and (<= left_1 i_14_1@@0) (<= i_14_1@@0 right))) (and (<= left_1 i_14_2@@0) (<= i_14_2@@0 right))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i_14_1@@0) (loc a_2@@1 i_14_2@@0))))
 :qid |stdinbpl.1893:17|
 :skolemid |136|
 :pattern ( (neverTriggered3 i_14_1@@0) (neverTriggered3 i_14_2@@0))
)) (and (=> (= (ControlFlow 0 50) (- 0 52)) (forall ((i_14_1@@1 Int) ) (!  (=> (and (<= left_1 i_14_1@@1) (<= i_14_1@@1 right)) (>= (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| Mask@11) (loc a_2@@1 i_14_1@@1) val) FullPerm))
 :qid |stdinbpl.1900:17|
 :skolemid |137|
 :pattern ( (loc a_2@@1 i_14_1@@1))
 :pattern ( (loc a_2@@1 i_14_1@@1))
))) (=> (forall ((i_14_1@@2 Int) ) (!  (=> (and (<= left_1 i_14_1@@2) (<= i_14_1@@2 right)) (>= (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| Mask@11) (loc a_2@@1 i_14_1@@2) val) FullPerm))
 :qid |stdinbpl.1900:17|
 :skolemid |137|
 :pattern ( (loc a_2@@1 i_14_1@@2))
 :pattern ( (loc a_2@@1 i_14_1@@2))
)) (=> (forall ((i_14_1@@3 Int) ) (!  (=> (and (and (<= left_1 i_14_1@@3) (<= i_14_1@@3 right)) (< NoPerm FullPerm)) (and (qpRange3 (loc a_2@@1 i_14_1@@3)) (= (invRecv3 (loc a_2@@1 i_14_1@@3)) i_14_1@@3)))
 :qid |stdinbpl.1906:22|
 :skolemid |138|
 :pattern ( (loc a_2@@1 i_14_1@@3))
 :pattern ( (loc a_2@@1 i_14_1@@3))
)) (=> (and (forall ((o_4@@27 T@Ref) ) (!  (=> (and (and (<= left_1 (invRecv3 o_4@@27)) (<= (invRecv3 o_4@@27) right)) (and (< NoPerm FullPerm) (qpRange3 o_4@@27))) (= (loc a_2@@1 (invRecv3 o_4@@27)) o_4@@27))
 :qid |stdinbpl.1910:22|
 :skolemid |139|
 :pattern ( (invRecv3 o_4@@27))
)) (forall ((o_4@@28 T@Ref) ) (!  (and (=> (and (and (<= left_1 (invRecv3 o_4@@28)) (<= (invRecv3 o_4@@28) right)) (and (< NoPerm FullPerm) (qpRange3 o_4@@28))) (and (= (loc a_2@@1 (invRecv3 o_4@@28)) o_4@@28) (= (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| QPMask@4) o_4@@28 val) (- (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| Mask@11) o_4@@28 val) FullPerm)))) (=> (not (and (and (<= left_1 (invRecv3 o_4@@28)) (<= (invRecv3 o_4@@28) right)) (and (< NoPerm FullPerm) (qpRange3 o_4@@28)))) (= (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| QPMask@4) o_4@@28 val) (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| Mask@11) o_4@@28 val))))
 :qid |stdinbpl.1916:22|
 :skolemid |140|
 :pattern ( (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| QPMask@4) o_4@@28 val))
))) (=> (and (and (and (and (forall ((o_4@@29 T@Ref) (f_5@@19 T@Field_28611_53) ) (!  (=> true (= (select (|PolymorphicMapType_28572_19693_53#PolymorphicMapType_28572| Mask@11) o_4@@29 f_5@@19) (select (|PolymorphicMapType_28572_19693_53#PolymorphicMapType_28572| QPMask@4) o_4@@29 f_5@@19)))
 :qid |stdinbpl.1922:29|
 :skolemid |141|
 :pattern ( (select (|PolymorphicMapType_28572_19693_53#PolymorphicMapType_28572| QPMask@4) o_4@@29 f_5@@19))
)) (forall ((o_4@@30 T@Ref) (f_5@@20 T@Field_28624_28625) ) (!  (=> true (= (select (|PolymorphicMapType_28572_19693_28625#PolymorphicMapType_28572| Mask@11) o_4@@30 f_5@@20) (select (|PolymorphicMapType_28572_19693_28625#PolymorphicMapType_28572| QPMask@4) o_4@@30 f_5@@20)))
 :qid |stdinbpl.1922:29|
 :skolemid |141|
 :pattern ( (select (|PolymorphicMapType_28572_19693_28625#PolymorphicMapType_28572| QPMask@4) o_4@@30 f_5@@20))
))) (forall ((o_4@@31 T@Ref) (f_5@@21 T@Field_34782_3612) ) (!  (=> (not (= f_5@@21 val)) (= (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| Mask@11) o_4@@31 f_5@@21) (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| QPMask@4) o_4@@31 f_5@@21)))
 :qid |stdinbpl.1922:29|
 :skolemid |141|
 :pattern ( (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| QPMask@4) o_4@@31 f_5@@21))
))) (forall ((o_4@@32 T@Ref) (f_5@@22 T@Field_19693_82618) ) (!  (=> true (= (select (|PolymorphicMapType_28572_19693_82618#PolymorphicMapType_28572| Mask@11) o_4@@32 f_5@@22) (select (|PolymorphicMapType_28572_19693_82618#PolymorphicMapType_28572| QPMask@4) o_4@@32 f_5@@22)))
 :qid |stdinbpl.1922:29|
 :skolemid |141|
 :pattern ( (select (|PolymorphicMapType_28572_19693_82618#PolymorphicMapType_28572| QPMask@4) o_4@@32 f_5@@22))
))) (forall ((o_4@@33 T@Ref) (f_5@@23 T@Field_19693_82751) ) (!  (=> true (= (select (|PolymorphicMapType_28572_19693_86873#PolymorphicMapType_28572| Mask@11) o_4@@33 f_5@@23) (select (|PolymorphicMapType_28572_19693_86873#PolymorphicMapType_28572| QPMask@4) o_4@@33 f_5@@23)))
 :qid |stdinbpl.1922:29|
 :skolemid |141|
 :pattern ( (select (|PolymorphicMapType_28572_19693_86873#PolymorphicMapType_28572| QPMask@4) o_4@@33 f_5@@23))
))) (and (=> (= (ControlFlow 0 50) (- 0 51)) (= (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| ExhaleHeap@2) (loc a_2@@1 storeIndex@0) val) (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| Heap@@21) (loc a_2@@1 pivotIndex) val))) (=> (= (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| ExhaleHeap@2) (loc a_2@@1 storeIndex@0) val) (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| Heap@@21) (loc a_2@@1 pivotIndex) val)) (and (and (=> (= (ControlFlow 0 50) 49) anon202_Else_correct) (=> (= (ControlFlow 0 50) 24) anon203_Then_correct)) (=> (= (ControlFlow 0 50) 26) anon203_Else_correct)))))))))))))))))))))))))))
(let ((anon201_Else_correct  (=> (= right storeIndex@0) (=> (and (= Mask@11 Mask@9) (= (ControlFlow 0 61) 50)) anon120_correct))))
(let ((anon201_Then_correct  (=> (and (not (= right storeIndex@0)) (not (= (loc a_2@@1 storeIndex@0) null))) (=> (and (and (= Mask@10 (PolymorphicMapType_28572 (store (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| Mask@9) (loc a_2@@1 storeIndex@0) val (+ (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| Mask@9) (loc a_2@@1 storeIndex@0) val) FullPerm)) (|PolymorphicMapType_28572_19693_53#PolymorphicMapType_28572| Mask@9) (|PolymorphicMapType_28572_19693_28625#PolymorphicMapType_28572| Mask@9) (|PolymorphicMapType_28572_19693_82618#PolymorphicMapType_28572| Mask@9) (|PolymorphicMapType_28572_19693_86873#PolymorphicMapType_28572| Mask@9))) (state ExhaleHeap@2 Mask@10)) (and (= Mask@11 Mask@10) (= (ControlFlow 0 60) 50))) anon120_correct))))
(let ((anon118_correct  (=> (and (and (IdenticalOnKnownLocations ExhaleHeap@1 ExhaleHeap@2 Mask@8) (not (= (loc a_2@@1 right) null))) (and (= Mask@9 (PolymorphicMapType_28572 (store (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| Mask@8) (loc a_2@@1 right) val (+ (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| Mask@8) (loc a_2@@1 right) val) FullPerm)) (|PolymorphicMapType_28572_19693_53#PolymorphicMapType_28572| Mask@8) (|PolymorphicMapType_28572_19693_28625#PolymorphicMapType_28572| Mask@8) (|PolymorphicMapType_28572_19693_82618#PolymorphicMapType_28572| Mask@8) (|PolymorphicMapType_28572_19693_86873#PolymorphicMapType_28572| Mask@8))) (state ExhaleHeap@2 Mask@9))) (and (=> (= (ControlFlow 0 62) 60) anon201_Then_correct) (=> (= (ControlFlow 0 62) 61) anon201_Else_correct)))))
(let ((anon117_correct  (=> (= Mask@7 (PolymorphicMapType_28572 (store (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| Mask@6) (loc a_2@@1 storeIndex@0) val (- (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| Mask@6) (loc a_2@@1 storeIndex@0) val) FullPerm)) (|PolymorphicMapType_28572_19693_53#PolymorphicMapType_28572| Mask@6) (|PolymorphicMapType_28572_19693_28625#PolymorphicMapType_28572| Mask@6) (|PolymorphicMapType_28572_19693_82618#PolymorphicMapType_28572| Mask@6) (|PolymorphicMapType_28572_19693_86873#PolymorphicMapType_28572| Mask@6))) (=> (and (= Mask@8 Mask@7) (= (ControlFlow 0 64) 62)) anon118_correct))))
(let ((anon200_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 67) 64)) anon117_correct)))
(let ((anon200_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 65) (- 0 66)) (<= FullPerm (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| Mask@6) (loc a_2@@1 storeIndex@0) val))) (=> (<= FullPerm (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| Mask@6) (loc a_2@@1 storeIndex@0) val)) (=> (= (ControlFlow 0 65) 64) anon117_correct))))))
(let ((anon199_Then_correct  (=> (not (= right storeIndex@0)) (and (=> (= (ControlFlow 0 68) 65) anon200_Then_correct) (=> (= (ControlFlow 0 68) 67) anon200_Else_correct)))))
(let ((anon199_Else_correct  (=> (= right storeIndex@0) (=> (and (= Mask@8 Mask@6) (= (ControlFlow 0 63) 62)) anon118_correct))))
(let ((anon114_correct  (=> (= Mask@6 (PolymorphicMapType_28572 (store (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| QPMask@3) (loc a_2@@1 right) val (- (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| QPMask@3) (loc a_2@@1 right) val) FullPerm)) (|PolymorphicMapType_28572_19693_53#PolymorphicMapType_28572| QPMask@3) (|PolymorphicMapType_28572_19693_28625#PolymorphicMapType_28572| QPMask@3) (|PolymorphicMapType_28572_19693_82618#PolymorphicMapType_28572| QPMask@3) (|PolymorphicMapType_28572_19693_86873#PolymorphicMapType_28572| QPMask@3))) (and (=> (= (ControlFlow 0 69) 68) anon199_Then_correct) (=> (= (ControlFlow 0 69) 63) anon199_Else_correct)))))
(let ((anon198_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 72) 69)) anon114_correct)))
(let ((anon198_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 70) (- 0 71)) (<= FullPerm (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| QPMask@3) (loc a_2@@1 right) val))) (=> (<= FullPerm (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| QPMask@3) (loc a_2@@1 right) val)) (=> (= (ControlFlow 0 70) 69) anon114_correct))))))
(let ((anon182_Else_correct  (=> (and (not (< j_9@0 right)) (state ExhaleHeap@1 QPMask@1)) (=> (and (and (<= left_1 j_9@0) (<= j_9@0 right)) (and (<= left_1 storeIndex@0) (<= storeIndex@0 j_9@0))) (and (=> (= (ControlFlow 0 73) (- 0 78)) (forall ((i_58_1 Int) (i_58_2 Int) ) (!  (=> (and (and (and (and (not (= i_58_1 i_58_2)) (and (<= left_1 i_58_1) (<= i_58_1 right))) (and (<= left_1 i_58_2) (<= i_58_2 right))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i_58_1) (loc a_2@@1 i_58_2))))
 :qid |stdinbpl.1758:17|
 :skolemid |125|
))) (=> (forall ((i_58_1@@0 Int) (i_58_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_58_1@@0 i_58_2@@0)) (and (<= left_1 i_58_1@@0) (<= i_58_1@@0 right))) (and (<= left_1 i_58_2@@0) (<= i_58_2@@0 right))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i_58_1@@0) (loc a_2@@1 i_58_2@@0))))
 :qid |stdinbpl.1758:17|
 :skolemid |125|
)) (=> (and (and (forall ((i_58_1@@1 Int) ) (!  (=> (and (and (<= left_1 i_58_1@@1) (<= i_58_1@@1 right)) (< NoPerm FullPerm)) (and (qpRange8 (loc a_2@@1 i_58_1@@1)) (= (invRecv8 (loc a_2@@1 i_58_1@@1)) i_58_1@@1)))
 :qid |stdinbpl.1764:24|
 :skolemid |126|
 :pattern ( (loc a_2@@1 i_58_1@@1))
 :pattern ( (loc a_2@@1 i_58_1@@1))
)) (forall ((o_4@@34 T@Ref) ) (!  (=> (and (and (and (<= left_1 (invRecv8 o_4@@34)) (<= (invRecv8 o_4@@34) right)) (< NoPerm FullPerm)) (qpRange8 o_4@@34)) (= (loc a_2@@1 (invRecv8 o_4@@34)) o_4@@34))
 :qid |stdinbpl.1768:24|
 :skolemid |127|
 :pattern ( (invRecv8 o_4@@34))
))) (and (forall ((i_58_1@@2 Int) ) (!  (=> (and (<= left_1 i_58_1@@2) (<= i_58_1@@2 right)) (not (= (loc a_2@@1 i_58_1@@2) null)))
 :qid |stdinbpl.1774:24|
 :skolemid |128|
 :pattern ( (loc a_2@@1 i_58_1@@2))
 :pattern ( (loc a_2@@1 i_58_1@@2))
)) (forall ((o_4@@35 T@Ref) ) (!  (and (=> (and (and (and (<= left_1 (invRecv8 o_4@@35)) (<= (invRecv8 o_4@@35) right)) (< NoPerm FullPerm)) (qpRange8 o_4@@35)) (and (=> (< NoPerm FullPerm) (= (loc a_2@@1 (invRecv8 o_4@@35)) o_4@@35)) (= (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| QPMask@3) o_4@@35 val) (+ (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| QPMask@1) o_4@@35 val) FullPerm)))) (=> (not (and (and (and (<= left_1 (invRecv8 o_4@@35)) (<= (invRecv8 o_4@@35) right)) (< NoPerm FullPerm)) (qpRange8 o_4@@35))) (= (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| QPMask@3) o_4@@35 val) (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| QPMask@1) o_4@@35 val))))
 :qid |stdinbpl.1780:24|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| QPMask@3) o_4@@35 val))
)))) (=> (and (and (and (and (and (and (forall ((o_4@@36 T@Ref) (f_5@@24 T@Field_28611_53) ) (!  (=> true (= (select (|PolymorphicMapType_28572_19693_53#PolymorphicMapType_28572| QPMask@1) o_4@@36 f_5@@24) (select (|PolymorphicMapType_28572_19693_53#PolymorphicMapType_28572| QPMask@3) o_4@@36 f_5@@24)))
 :qid |stdinbpl.1784:31|
 :skolemid |130|
 :pattern ( (select (|PolymorphicMapType_28572_19693_53#PolymorphicMapType_28572| QPMask@1) o_4@@36 f_5@@24))
 :pattern ( (select (|PolymorphicMapType_28572_19693_53#PolymorphicMapType_28572| QPMask@3) o_4@@36 f_5@@24))
)) (forall ((o_4@@37 T@Ref) (f_5@@25 T@Field_28624_28625) ) (!  (=> true (= (select (|PolymorphicMapType_28572_19693_28625#PolymorphicMapType_28572| QPMask@1) o_4@@37 f_5@@25) (select (|PolymorphicMapType_28572_19693_28625#PolymorphicMapType_28572| QPMask@3) o_4@@37 f_5@@25)))
 :qid |stdinbpl.1784:31|
 :skolemid |130|
 :pattern ( (select (|PolymorphicMapType_28572_19693_28625#PolymorphicMapType_28572| QPMask@1) o_4@@37 f_5@@25))
 :pattern ( (select (|PolymorphicMapType_28572_19693_28625#PolymorphicMapType_28572| QPMask@3) o_4@@37 f_5@@25))
))) (forall ((o_4@@38 T@Ref) (f_5@@26 T@Field_34782_3612) ) (!  (=> (not (= f_5@@26 val)) (= (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| QPMask@1) o_4@@38 f_5@@26) (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| QPMask@3) o_4@@38 f_5@@26)))
 :qid |stdinbpl.1784:31|
 :skolemid |130|
 :pattern ( (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| QPMask@1) o_4@@38 f_5@@26))
 :pattern ( (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| QPMask@3) o_4@@38 f_5@@26))
))) (forall ((o_4@@39 T@Ref) (f_5@@27 T@Field_19693_82618) ) (!  (=> true (= (select (|PolymorphicMapType_28572_19693_82618#PolymorphicMapType_28572| QPMask@1) o_4@@39 f_5@@27) (select (|PolymorphicMapType_28572_19693_82618#PolymorphicMapType_28572| QPMask@3) o_4@@39 f_5@@27)))
 :qid |stdinbpl.1784:31|
 :skolemid |130|
 :pattern ( (select (|PolymorphicMapType_28572_19693_82618#PolymorphicMapType_28572| QPMask@1) o_4@@39 f_5@@27))
 :pattern ( (select (|PolymorphicMapType_28572_19693_82618#PolymorphicMapType_28572| QPMask@3) o_4@@39 f_5@@27))
))) (forall ((o_4@@40 T@Ref) (f_5@@28 T@Field_19693_82751) ) (!  (=> true (= (select (|PolymorphicMapType_28572_19693_86873#PolymorphicMapType_28572| QPMask@1) o_4@@40 f_5@@28) (select (|PolymorphicMapType_28572_19693_86873#PolymorphicMapType_28572| QPMask@3) o_4@@40 f_5@@28)))
 :qid |stdinbpl.1784:31|
 :skolemid |130|
 :pattern ( (select (|PolymorphicMapType_28572_19693_86873#PolymorphicMapType_28572| QPMask@1) o_4@@40 f_5@@28))
 :pattern ( (select (|PolymorphicMapType_28572_19693_86873#PolymorphicMapType_28572| QPMask@3) o_4@@40 f_5@@28))
))) (and (state ExhaleHeap@1 QPMask@3) (= (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| ExhaleHeap@1) (loc a_2@@1 right) val) pivotValue@0))) (and (and (and (forall ((i_59 Int) ) (!  (=> (and (<= left_1 i_59) (< i_59 storeIndex@0)) (< (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| ExhaleHeap@1) (loc a_2@@1 i_59) val) pivotValue@0))
 :qid |stdinbpl.1791:22|
 :skolemid |131|
 :pattern ( (loc a_2@@1 i_59))
)) (forall ((i_60_1 Int) ) (!  (=> (and (<= storeIndex@0 i_60_1) (< i_60_1 j_9@0)) (<= pivotValue@0 (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| ExhaleHeap@1) (loc a_2@@1 i_60_1) val)))
 :qid |stdinbpl.1795:22|
 :skolemid |132|
 :pattern ( (loc a_2@@1 i_60_1))
))) (and (= (|Seq#Length_3395| pw@2) (+ right 1)) (forall ((i_61 Int) ) (!  (=> (and (<= left_1 i_61) (<= i_61 right)) (and (<= left_1 (|Seq#Index_3395| pw@2 i_61)) (<= (|Seq#Index_3395| pw@2 i_61) right)))
 :qid |stdinbpl.1800:22|
 :skolemid |133|
 :pattern ( (|Seq#Index_3395| pw@2 i_61))
)))) (and (and (forall ((i_62 Int) (k_11 Int) ) (!  (=> (and (<= left_1 i_62) (and (< i_62 k_11) (<= k_11 right))) (not (= (|Seq#Index_3395| pw@2 i_62) (|Seq#Index_3395| pw@2 k_11))))
 :qid |stdinbpl.1804:22|
 :skolemid |134|
 :pattern ( (|Seq#Index_3395| pw@2 i_62) (|Seq#Index_3395| pw@2 k_11))
)) (forall ((i$0_7 Int) ) (!  (=> (and (<= left_1 i$0_7) (<= i$0_7 right)) (= (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| ExhaleHeap@1) (loc a_2@@1 i$0_7) val) (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| Heap@@21) (loc a_2@@1 (|Seq#Index_3395| pw@2 i$0_7)) val)))
 :qid |stdinbpl.1808:22|
 :skolemid |135|
 :pattern ( (|Seq#Index_3395| pw@2 i$0_7))
))) (and (state ExhaleHeap@1 QPMask@3) (state ExhaleHeap@1 QPMask@3))))) (and (=> (= (ControlFlow 0 73) (- 0 77)) (<= 0 right)) (=> (<= 0 right) (and (=> (= (ControlFlow 0 73) (- 0 76)) (< right (len_1 a_2@@1))) (=> (< right (len_1 a_2@@1)) (and (=> (= (ControlFlow 0 73) (- 0 75)) (<= 0 storeIndex@0)) (=> (<= 0 storeIndex@0) (and (=> (= (ControlFlow 0 73) (- 0 74)) (< storeIndex@0 (len_1 a_2@@1))) (=> (< storeIndex@0 (len_1 a_2@@1)) (and (=> (= (ControlFlow 0 73) 70) anon198_Then_correct) (=> (= (ControlFlow 0 73) 72) anon198_Else_correct))))))))))))))))))
(let ((anon167_Else_correct  (=> (and (forall ((i$0_1_1_1 Int) ) (!  (=> (and (<= left_1 i$0_1_1_1) (<= i$0_1_1_1 right)) (= (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| ExhaleHeap@0) (loc a_2@@1 i$0_1_1_1) val) (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| Heap@@21) (loc a_2@@1 (|Seq#Index_3395| pw@1 i$0_1_1_1)) val)))
 :qid |stdinbpl.1312:24|
 :skolemid |91|
 :pattern ( (|Seq#Index_3395| pw@1 i$0_1_1_1))
)) (IdenticalOnKnownLocations ExhaleHeap@0 ExhaleHeap@1 QPMask@1)) (and (and (=> (= (ControlFlow 0 182) 181) anon169_Then_correct) (=> (= (ControlFlow 0 182) 138) anon182_Then_correct)) (=> (= (ControlFlow 0 182) 73) anon182_Else_correct)))))
(let ((anon54_correct true))
(let ((anon168_Else_correct  (=> (and (not (and (<= left_1 i$0) (<= i$0 right))) (= (ControlFlow 0 22) 19)) anon54_correct)))
(let ((anon168_Then_correct  (=> (and (<= left_1 i$0) (<= i$0 right)) (and (=> (= (ControlFlow 0 20) (- 0 21)) (= (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| ExhaleHeap@0) (loc a_2@@1 i$0) val) (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| Heap@@21) (loc a_2@@1 (|Seq#Index_3395| pw@1 i$0)) val))) (=> (= (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| ExhaleHeap@0) (loc a_2@@1 i$0) val) (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| Heap@@21) (loc a_2@@1 (|Seq#Index_3395| pw@1 i$0)) val)) (=> (= (ControlFlow 0 20) 19) anon54_correct))))))
(let ((anon165_Else_correct  (=> (forall ((i_33_1_1 Int) (k_5_1_1 Int) ) (!  (=> (and (<= left_1 i_33_1_1) (and (< i_33_1_1 k_5_1_1) (<= k_5_1_1 right))) (not (= (|Seq#Index_3395| pw@1 i_33_1_1) (|Seq#Index_3395| pw@1 k_5_1_1))))
 :qid |stdinbpl.1301:24|
 :skolemid |90|
 :pattern ( (|Seq#Index_3395| pw@1 i_33_1_1) (|Seq#Index_3395| pw@1 k_5_1_1))
)) (and (and (=> (= (ControlFlow 0 183) 182) anon167_Else_correct) (=> (= (ControlFlow 0 183) 20) anon168_Then_correct)) (=> (= (ControlFlow 0 183) 22) anon168_Else_correct)))))
(let ((anon50_correct true))
(let ((anon166_Else_correct  (=> (and (not (and (<= left_1 i_32_2) (and (< i_32_2 k_4_1) (<= k_4_1 right)))) (= (ControlFlow 0 18) 15)) anon50_correct)))
(let ((anon166_Then_correct  (=> (and (<= left_1 i_32_2) (and (< i_32_2 k_4_1) (<= k_4_1 right))) (and (=> (= (ControlFlow 0 16) (- 0 17)) (not (= (|Seq#Index_3395| pw@1 i_32_2) (|Seq#Index_3395| pw@1 k_4_1)))) (=> (not (= (|Seq#Index_3395| pw@1 i_32_2) (|Seq#Index_3395| pw@1 k_4_1))) (=> (= (ControlFlow 0 16) 15) anon50_correct))))))
(let ((anon163_Else_correct  (=> (forall ((i_31_1_1 Int) ) (!  (=> (and (<= left_1 i_31_1_1) (<= i_31_1_1 right)) (and (<= left_1 (|Seq#Index_3395| pw@1 i_31_1_1)) (<= (|Seq#Index_3395| pw@1 i_31_1_1) right)))
 :qid |stdinbpl.1290:24|
 :skolemid |89|
 :pattern ( (|Seq#Index_3395| pw@1 i_31_1_1))
)) (and (and (=> (= (ControlFlow 0 184) 183) anon165_Else_correct) (=> (= (ControlFlow 0 184) 16) anon166_Then_correct)) (=> (= (ControlFlow 0 184) 18) anon166_Else_correct)))))
(let ((anon46_correct true))
(let ((anon164_Else_correct  (=> (and (not (and (<= left_1 i_30_2) (<= i_30_2 right))) (= (ControlFlow 0 14) 10)) anon46_correct)))
(let ((anon164_Then_correct  (=> (and (<= left_1 i_30_2) (<= i_30_2 right)) (and (=> (= (ControlFlow 0 11) (- 0 13)) (<= left_1 (|Seq#Index_3395| pw@1 i_30_2))) (=> (<= left_1 (|Seq#Index_3395| pw@1 i_30_2)) (and (=> (= (ControlFlow 0 11) (- 0 12)) (<= (|Seq#Index_3395| pw@1 i_30_2) right)) (=> (<= (|Seq#Index_3395| pw@1 i_30_2) right) (=> (= (ControlFlow 0 11) 10) anon46_correct))))))))
(let ((anon161_Else_correct  (=> (forall ((i_29_1_1 Int) ) (!  (=> (and (<= left_1 i_29_1_1) (< i_29_1_1 left_1)) (<= pivotValue@0 (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| ExhaleHeap@0) (loc a_2@@1 i_29_1_1) val)))
 :qid |stdinbpl.1275:24|
 :skolemid |88|
 :pattern ( (loc a_2@@1 i_29_1_1))
)) (and (=> (= (ControlFlow 0 185) (- 0 186)) (= (|Seq#Length_3395| pw@1) (+ right 1))) (=> (= (|Seq#Length_3395| pw@1) (+ right 1)) (and (and (=> (= (ControlFlow 0 185) 184) anon163_Else_correct) (=> (= (ControlFlow 0 185) 11) anon164_Then_correct)) (=> (= (ControlFlow 0 185) 14) anon164_Else_correct)))))))
(let ((anon42_correct true))
(let ((anon162_Else_correct  (=> (and (not (and (<= left_1 i_28) (< i_28 left_1))) (= (ControlFlow 0 9) 6)) anon42_correct)))
(let ((anon162_Then_correct  (=> (and (<= left_1 i_28) (< i_28 left_1)) (and (=> (= (ControlFlow 0 7) (- 0 8)) (<= pivotValue@0 (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| ExhaleHeap@0) (loc a_2@@1 i_28) val))) (=> (<= pivotValue@0 (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| ExhaleHeap@0) (loc a_2@@1 i_28) val)) (=> (= (ControlFlow 0 7) 6) anon42_correct))))))
(let ((anon159_Else_correct  (=> (forall ((i_27_1_1 Int) ) (!  (=> (and (<= left_1 i_27_1_1) (< i_27_1_1 left_1)) (< (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| ExhaleHeap@0) (loc a_2@@1 i_27_1_1) val) pivotValue@0))
 :qid |stdinbpl.1264:24|
 :skolemid |87|
 :pattern ( (loc a_2@@1 i_27_1_1))
)) (and (and (=> (= (ControlFlow 0 187) 185) anon161_Else_correct) (=> (= (ControlFlow 0 187) 7) anon162_Then_correct)) (=> (= (ControlFlow 0 187) 9) anon162_Else_correct)))))
(let ((anon38_correct true))
(let ((anon160_Else_correct  (=> (and (not (and (<= left_1 i_26) (< i_26 left_1))) (= (ControlFlow 0 5) 2)) anon38_correct)))
(let ((anon160_Then_correct  (=> (and (<= left_1 i_26) (< i_26 left_1)) (and (=> (= (ControlFlow 0 3) (- 0 4)) (< (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| ExhaleHeap@0) (loc a_2@@1 i_26) val) pivotValue@0)) (=> (< (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| ExhaleHeap@0) (loc a_2@@1 i_26) val) pivotValue@0) (=> (= (ControlFlow 0 3) 2) anon38_correct))))))
(let ((anon35_correct  (=> (and (and (= (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| ExhaleHeap@0) (loc a_2@@1 pivotIndex) val) (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| Heap@@21) (loc a_2@@1 right) val)) (= (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| ExhaleHeap@0) (loc a_2@@1 right) val) (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| Heap@@21) (loc a_2@@1 pivotIndex) val))) (and (state ExhaleHeap@0 Mask@5) (state ExhaleHeap@0 Mask@5))) (and (=> (= (ControlFlow 0 188) (- 0 199)) (>= right 0)) (=> (>= right 0) (and (=> (= (ControlFlow 0 188) (- 0 198)) (< right (|Seq#Length_3395| pw@0))) (=> (< right (|Seq#Length_3395| pw@0)) (and (=> (= (ControlFlow 0 188) (- 0 197)) (>= pivotIndex 0)) (=> (>= pivotIndex 0) (and (=> (= (ControlFlow 0 188) (- 0 196)) (< pivotIndex (|Seq#Length_3395| pw@0))) (=> (< pivotIndex (|Seq#Length_3395| pw@0)) (=> (and (and (= pw@1 (|Seq#Append_4579| (|Seq#Take_4579| (|Seq#Append_4579| (|Seq#Take_4579| pw@0 pivotIndex) (|Seq#Append_4579| (|Seq#Singleton_4579| (|Seq#Index_3395| pw@0 right)) (|Seq#Drop_4579| pw@0 (+ pivotIndex 1)))) right) (|Seq#Append_4579| (|Seq#Singleton_4579| (|Seq#Index_3395| pw@0 pivotIndex)) (|Seq#Drop_4579| (|Seq#Append_4579| (|Seq#Take_4579| pw@0 pivotIndex) (|Seq#Append_4579| (|Seq#Singleton_4579| (|Seq#Index_3395| pw@0 right)) (|Seq#Drop_4579| pw@0 (+ pivotIndex 1)))) (+ right 1))))) (state ExhaleHeap@0 Mask@5)) (and (state ExhaleHeap@0 Mask@5) (state ExhaleHeap@0 Mask@5))) (and (=> (= (ControlFlow 0 188) (- 0 195)) (<= left_1 left_1)) (=> (<= left_1 left_1) (and (=> (= (ControlFlow 0 188) (- 0 194)) (<= left_1 right)) (=> (<= left_1 right) (and (=> (= (ControlFlow 0 188) (- 0 193)) (<= left_1 left_1)) (=> (<= left_1 left_1) (and (=> (= (ControlFlow 0 188) (- 0 192)) (<= left_1 left_1)) (=> (<= left_1 left_1) (and (=> (= (ControlFlow 0 188) (- 0 191)) (forall ((i_25 Int) (i_25_2 Int) ) (!  (=> (and (and (and (and (not (= i_25 i_25_2)) (and (<= left_1 i_25) (<= i_25 right))) (and (<= left_1 i_25_2) (<= i_25_2 right))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i_25) (loc a_2@@1 i_25_2))))
 :qid |stdinbpl.1221:21|
 :skolemid |81|
 :pattern ( (neverTriggered4 i_25) (neverTriggered4 i_25_2))
))) (=> (forall ((i_25@@0 Int) (i_25_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_25@@0 i_25_2@@0)) (and (<= left_1 i_25@@0) (<= i_25@@0 right))) (and (<= left_1 i_25_2@@0) (<= i_25_2@@0 right))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i_25@@0) (loc a_2@@1 i_25_2@@0))))
 :qid |stdinbpl.1221:21|
 :skolemid |81|
 :pattern ( (neverTriggered4 i_25@@0) (neverTriggered4 i_25_2@@0))
)) (and (=> (= (ControlFlow 0 188) (- 0 190)) (forall ((i_25@@1 Int) ) (!  (=> (and (<= left_1 i_25@@1) (<= i_25@@1 right)) (>= (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| Mask@5) (loc a_2@@1 i_25@@1) val) FullPerm))
 :qid |stdinbpl.1228:21|
 :skolemid |82|
 :pattern ( (loc a_2@@1 i_25@@1))
 :pattern ( (loc a_2@@1 i_25@@1))
))) (=> (forall ((i_25@@2 Int) ) (!  (=> (and (<= left_1 i_25@@2) (<= i_25@@2 right)) (>= (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| Mask@5) (loc a_2@@1 i_25@@2) val) FullPerm))
 :qid |stdinbpl.1228:21|
 :skolemid |82|
 :pattern ( (loc a_2@@1 i_25@@2))
 :pattern ( (loc a_2@@1 i_25@@2))
)) (=> (forall ((i_25@@3 Int) ) (!  (=> (and (and (<= left_1 i_25@@3) (<= i_25@@3 right)) (< NoPerm FullPerm)) (and (qpRange4 (loc a_2@@1 i_25@@3)) (= (invRecv4 (loc a_2@@1 i_25@@3)) i_25@@3)))
 :qid |stdinbpl.1234:26|
 :skolemid |83|
 :pattern ( (loc a_2@@1 i_25@@3))
 :pattern ( (loc a_2@@1 i_25@@3))
)) (=> (and (forall ((o_4@@41 T@Ref) ) (!  (=> (and (and (<= left_1 (invRecv4 o_4@@41)) (<= (invRecv4 o_4@@41) right)) (and (< NoPerm FullPerm) (qpRange4 o_4@@41))) (= (loc a_2@@1 (invRecv4 o_4@@41)) o_4@@41))
 :qid |stdinbpl.1238:26|
 :skolemid |84|
 :pattern ( (invRecv4 o_4@@41))
)) (forall ((o_4@@42 T@Ref) ) (!  (and (=> (and (and (<= left_1 (invRecv4 o_4@@42)) (<= (invRecv4 o_4@@42) right)) (and (< NoPerm FullPerm) (qpRange4 o_4@@42))) (and (= (loc a_2@@1 (invRecv4 o_4@@42)) o_4@@42) (= (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| QPMask@1) o_4@@42 val) (- (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| Mask@5) o_4@@42 val) FullPerm)))) (=> (not (and (and (<= left_1 (invRecv4 o_4@@42)) (<= (invRecv4 o_4@@42) right)) (and (< NoPerm FullPerm) (qpRange4 o_4@@42)))) (= (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| QPMask@1) o_4@@42 val) (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| Mask@5) o_4@@42 val))))
 :qid |stdinbpl.1244:26|
 :skolemid |85|
 :pattern ( (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| QPMask@1) o_4@@42 val))
))) (=> (and (and (and (and (forall ((o_4@@43 T@Ref) (f_5@@29 T@Field_28611_53) ) (!  (=> true (= (select (|PolymorphicMapType_28572_19693_53#PolymorphicMapType_28572| Mask@5) o_4@@43 f_5@@29) (select (|PolymorphicMapType_28572_19693_53#PolymorphicMapType_28572| QPMask@1) o_4@@43 f_5@@29)))
 :qid |stdinbpl.1250:33|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_28572_19693_53#PolymorphicMapType_28572| QPMask@1) o_4@@43 f_5@@29))
)) (forall ((o_4@@44 T@Ref) (f_5@@30 T@Field_28624_28625) ) (!  (=> true (= (select (|PolymorphicMapType_28572_19693_28625#PolymorphicMapType_28572| Mask@5) o_4@@44 f_5@@30) (select (|PolymorphicMapType_28572_19693_28625#PolymorphicMapType_28572| QPMask@1) o_4@@44 f_5@@30)))
 :qid |stdinbpl.1250:33|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_28572_19693_28625#PolymorphicMapType_28572| QPMask@1) o_4@@44 f_5@@30))
))) (forall ((o_4@@45 T@Ref) (f_5@@31 T@Field_34782_3612) ) (!  (=> (not (= f_5@@31 val)) (= (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| Mask@5) o_4@@45 f_5@@31) (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| QPMask@1) o_4@@45 f_5@@31)))
 :qid |stdinbpl.1250:33|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| QPMask@1) o_4@@45 f_5@@31))
))) (forall ((o_4@@46 T@Ref) (f_5@@32 T@Field_19693_82618) ) (!  (=> true (= (select (|PolymorphicMapType_28572_19693_82618#PolymorphicMapType_28572| Mask@5) o_4@@46 f_5@@32) (select (|PolymorphicMapType_28572_19693_82618#PolymorphicMapType_28572| QPMask@1) o_4@@46 f_5@@32)))
 :qid |stdinbpl.1250:33|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_28572_19693_82618#PolymorphicMapType_28572| QPMask@1) o_4@@46 f_5@@32))
))) (forall ((o_4@@47 T@Ref) (f_5@@33 T@Field_19693_82751) ) (!  (=> true (= (select (|PolymorphicMapType_28572_19693_86873#PolymorphicMapType_28572| Mask@5) o_4@@47 f_5@@33) (select (|PolymorphicMapType_28572_19693_86873#PolymorphicMapType_28572| QPMask@1) o_4@@47 f_5@@33)))
 :qid |stdinbpl.1250:33|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_28572_19693_86873#PolymorphicMapType_28572| QPMask@1) o_4@@47 f_5@@33))
))) (and (=> (= (ControlFlow 0 188) (- 0 189)) (= (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| ExhaleHeap@0) (loc a_2@@1 right) val) pivotValue@0)) (=> (= (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| ExhaleHeap@0) (loc a_2@@1 right) val) pivotValue@0) (and (and (=> (= (ControlFlow 0 188) 187) anon159_Else_correct) (=> (= (ControlFlow 0 188) 3) anon160_Then_correct)) (=> (= (ControlFlow 0 188) 5) anon160_Else_correct)))))))))))))))))))))))))))))))
(let ((anon158_Else_correct  (=> (= pivotIndex right) (=> (and (= Mask@5 Mask@3) (= (ControlFlow 0 201) 188)) anon35_correct))))
(let ((anon158_Then_correct  (=> (and (not (= pivotIndex right)) (not (= (loc a_2@@1 right) null))) (=> (and (and (= Mask@4 (PolymorphicMapType_28572 (store (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| Mask@3) (loc a_2@@1 right) val (+ (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| Mask@3) (loc a_2@@1 right) val) FullPerm)) (|PolymorphicMapType_28572_19693_53#PolymorphicMapType_28572| Mask@3) (|PolymorphicMapType_28572_19693_28625#PolymorphicMapType_28572| Mask@3) (|PolymorphicMapType_28572_19693_82618#PolymorphicMapType_28572| Mask@3) (|PolymorphicMapType_28572_19693_86873#PolymorphicMapType_28572| Mask@3))) (state ExhaleHeap@0 Mask@4)) (and (= Mask@5 Mask@4) (= (ControlFlow 0 200) 188))) anon35_correct))))
(let ((anon33_correct  (=> (and (and (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@0 Mask@2) (not (= (loc a_2@@1 pivotIndex) null))) (and (= Mask@3 (PolymorphicMapType_28572 (store (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| Mask@2) (loc a_2@@1 pivotIndex) val (+ (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| Mask@2) (loc a_2@@1 pivotIndex) val) FullPerm)) (|PolymorphicMapType_28572_19693_53#PolymorphicMapType_28572| Mask@2) (|PolymorphicMapType_28572_19693_28625#PolymorphicMapType_28572| Mask@2) (|PolymorphicMapType_28572_19693_82618#PolymorphicMapType_28572| Mask@2) (|PolymorphicMapType_28572_19693_86873#PolymorphicMapType_28572| Mask@2))) (state ExhaleHeap@0 Mask@3))) (and (=> (= (ControlFlow 0 202) 200) anon158_Then_correct) (=> (= (ControlFlow 0 202) 201) anon158_Else_correct)))))
(let ((anon32_correct  (=> (= Mask@1 (PolymorphicMapType_28572 (store (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| Mask@0) (loc a_2@@1 right) val (- (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| Mask@0) (loc a_2@@1 right) val) FullPerm)) (|PolymorphicMapType_28572_19693_53#PolymorphicMapType_28572| Mask@0) (|PolymorphicMapType_28572_19693_28625#PolymorphicMapType_28572| Mask@0) (|PolymorphicMapType_28572_19693_82618#PolymorphicMapType_28572| Mask@0) (|PolymorphicMapType_28572_19693_86873#PolymorphicMapType_28572| Mask@0))) (=> (and (= Mask@2 Mask@1) (= (ControlFlow 0 204) 202)) anon33_correct))))
(let ((anon157_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 207) 204)) anon32_correct)))
(let ((anon157_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 205) (- 0 206)) (<= FullPerm (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| Mask@0) (loc a_2@@1 right) val))) (=> (<= FullPerm (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| Mask@0) (loc a_2@@1 right) val)) (=> (= (ControlFlow 0 205) 204) anon32_correct))))))
(let ((anon156_Then_correct  (=> (not (= pivotIndex right)) (and (=> (= (ControlFlow 0 208) 205) anon157_Then_correct) (=> (= (ControlFlow 0 208) 207) anon157_Else_correct)))))
(let ((anon156_Else_correct  (=> (= pivotIndex right) (=> (and (= Mask@2 Mask@0) (= (ControlFlow 0 203) 202)) anon33_correct))))
(let ((anon29_correct  (=> (= Mask@0 (PolymorphicMapType_28572 (store (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| QPMask@0) (loc a_2@@1 pivotIndex) val (- (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| QPMask@0) (loc a_2@@1 pivotIndex) val) FullPerm)) (|PolymorphicMapType_28572_19693_53#PolymorphicMapType_28572| QPMask@0) (|PolymorphicMapType_28572_19693_28625#PolymorphicMapType_28572| QPMask@0) (|PolymorphicMapType_28572_19693_82618#PolymorphicMapType_28572| QPMask@0) (|PolymorphicMapType_28572_19693_86873#PolymorphicMapType_28572| QPMask@0))) (and (=> (= (ControlFlow 0 209) 208) anon156_Then_correct) (=> (= (ControlFlow 0 209) 203) anon156_Else_correct)))))
(let ((anon155_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 212) 209)) anon29_correct)))
(let ((anon155_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 210) (- 0 211)) (<= FullPerm (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| QPMask@0) (loc a_2@@1 pivotIndex) val))) (=> (<= FullPerm (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| QPMask@0) (loc a_2@@1 pivotIndex) val)) (=> (= (ControlFlow 0 210) 209) anon29_correct))))))
(let ((anon142_Else_correct  (and (=> (= (ControlFlow 0 213) (- 0 218)) (HasDirectPerm_19693_3612 QPMask@0 (loc a_2@@1 pivotIndex) val)) (=> (HasDirectPerm_19693_3612 QPMask@0 (loc a_2@@1 pivotIndex) val) (=> (and (and (= pivotValue@0 (select (|PolymorphicMapType_28551_19693_3612#PolymorphicMapType_28551| Heap@@21) (loc a_2@@1 pivotIndex) val)) (state Heap@@21 QPMask@0)) (and (= pw@0 (|Seq#Range| 0 (+ right 1))) (state Heap@@21 QPMask@0))) (and (=> (= (ControlFlow 0 213) (- 0 217)) (<= 0 pivotIndex)) (=> (<= 0 pivotIndex) (and (=> (= (ControlFlow 0 213) (- 0 216)) (< pivotIndex (len_1 a_2@@1))) (=> (< pivotIndex (len_1 a_2@@1)) (and (=> (= (ControlFlow 0 213) (- 0 215)) (<= 0 right)) (=> (<= 0 right) (and (=> (= (ControlFlow 0 213) (- 0 214)) (< right (len_1 a_2@@1))) (=> (< right (len_1 a_2@@1)) (and (=> (= (ControlFlow 0 213) 210) anon155_Then_correct) (=> (= (ControlFlow 0 213) 212) anon155_Else_correct)))))))))))))))
(let ((anon141_Else_correct  (and (=> (= (ControlFlow 0 263) (- 0 264)) (forall ((i_1 Int) (i_1_1 Int) ) (!  (=> (and (and (and (and (not (= i_1 i_1_1)) (and (<= left_1 i_1) (<= i_1 right))) (and (<= left_1 i_1_1) (<= i_1_1 right))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i_1) (loc a_2@@1 i_1_1))))
 :qid |stdinbpl.920:15|
 :skolemid |64|
))) (=> (forall ((i_1@@0 Int) (i_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_1@@0 i_1_1@@0)) (and (<= left_1 i_1@@0) (<= i_1@@0 right))) (and (<= left_1 i_1_1@@0) (<= i_1_1@@0 right))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i_1@@0) (loc a_2@@1 i_1_1@@0))))
 :qid |stdinbpl.920:15|
 :skolemid |64|
)) (=> (and (and (forall ((i_1@@1 Int) ) (!  (=> (and (and (<= left_1 i_1@@1) (<= i_1@@1 right)) (< NoPerm FullPerm)) (and (qpRange1 (loc a_2@@1 i_1@@1)) (= (invRecv1 (loc a_2@@1 i_1@@1)) i_1@@1)))
 :qid |stdinbpl.926:22|
 :skolemid |65|
 :pattern ( (loc a_2@@1 i_1@@1))
 :pattern ( (loc a_2@@1 i_1@@1))
)) (forall ((o_4@@48 T@Ref) ) (!  (=> (and (and (and (<= left_1 (invRecv1 o_4@@48)) (<= (invRecv1 o_4@@48) right)) (< NoPerm FullPerm)) (qpRange1 o_4@@48)) (= (loc a_2@@1 (invRecv1 o_4@@48)) o_4@@48))
 :qid |stdinbpl.930:22|
 :skolemid |66|
 :pattern ( (invRecv1 o_4@@48))
))) (and (forall ((i_1@@2 Int) ) (!  (=> (and (<= left_1 i_1@@2) (<= i_1@@2 right)) (not (= (loc a_2@@1 i_1@@2) null)))
 :qid |stdinbpl.936:22|
 :skolemid |67|
 :pattern ( (loc a_2@@1 i_1@@2))
 :pattern ( (loc a_2@@1 i_1@@2))
)) (forall ((o_4@@49 T@Ref) ) (!  (and (=> (and (and (and (<= left_1 (invRecv1 o_4@@49)) (<= (invRecv1 o_4@@49) right)) (< NoPerm FullPerm)) (qpRange1 o_4@@49)) (and (=> (< NoPerm FullPerm) (= (loc a_2@@1 (invRecv1 o_4@@49)) o_4@@49)) (= (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| QPMask@0) o_4@@49 val) (+ (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| ZeroMask) o_4@@49 val) FullPerm)))) (=> (not (and (and (and (<= left_1 (invRecv1 o_4@@49)) (<= (invRecv1 o_4@@49) right)) (< NoPerm FullPerm)) (qpRange1 o_4@@49))) (= (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| QPMask@0) o_4@@49 val) (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| ZeroMask) o_4@@49 val))))
 :qid |stdinbpl.942:22|
 :skolemid |68|
 :pattern ( (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| QPMask@0) o_4@@49 val))
)))) (=> (and (and (and (and (and (forall ((o_4@@50 T@Ref) (f_5@@34 T@Field_28611_53) ) (!  (=> true (= (select (|PolymorphicMapType_28572_19693_53#PolymorphicMapType_28572| ZeroMask) o_4@@50 f_5@@34) (select (|PolymorphicMapType_28572_19693_53#PolymorphicMapType_28572| QPMask@0) o_4@@50 f_5@@34)))
 :qid |stdinbpl.946:29|
 :skolemid |69|
 :pattern ( (select (|PolymorphicMapType_28572_19693_53#PolymorphicMapType_28572| ZeroMask) o_4@@50 f_5@@34))
 :pattern ( (select (|PolymorphicMapType_28572_19693_53#PolymorphicMapType_28572| QPMask@0) o_4@@50 f_5@@34))
)) (forall ((o_4@@51 T@Ref) (f_5@@35 T@Field_28624_28625) ) (!  (=> true (= (select (|PolymorphicMapType_28572_19693_28625#PolymorphicMapType_28572| ZeroMask) o_4@@51 f_5@@35) (select (|PolymorphicMapType_28572_19693_28625#PolymorphicMapType_28572| QPMask@0) o_4@@51 f_5@@35)))
 :qid |stdinbpl.946:29|
 :skolemid |69|
 :pattern ( (select (|PolymorphicMapType_28572_19693_28625#PolymorphicMapType_28572| ZeroMask) o_4@@51 f_5@@35))
 :pattern ( (select (|PolymorphicMapType_28572_19693_28625#PolymorphicMapType_28572| QPMask@0) o_4@@51 f_5@@35))
))) (forall ((o_4@@52 T@Ref) (f_5@@36 T@Field_34782_3612) ) (!  (=> (not (= f_5@@36 val)) (= (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| ZeroMask) o_4@@52 f_5@@36) (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| QPMask@0) o_4@@52 f_5@@36)))
 :qid |stdinbpl.946:29|
 :skolemid |69|
 :pattern ( (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| ZeroMask) o_4@@52 f_5@@36))
 :pattern ( (select (|PolymorphicMapType_28572_19693_3612#PolymorphicMapType_28572| QPMask@0) o_4@@52 f_5@@36))
))) (forall ((o_4@@53 T@Ref) (f_5@@37 T@Field_19693_82618) ) (!  (=> true (= (select (|PolymorphicMapType_28572_19693_82618#PolymorphicMapType_28572| ZeroMask) o_4@@53 f_5@@37) (select (|PolymorphicMapType_28572_19693_82618#PolymorphicMapType_28572| QPMask@0) o_4@@53 f_5@@37)))
 :qid |stdinbpl.946:29|
 :skolemid |69|
 :pattern ( (select (|PolymorphicMapType_28572_19693_82618#PolymorphicMapType_28572| ZeroMask) o_4@@53 f_5@@37))
 :pattern ( (select (|PolymorphicMapType_28572_19693_82618#PolymorphicMapType_28572| QPMask@0) o_4@@53 f_5@@37))
))) (forall ((o_4@@54 T@Ref) (f_5@@38 T@Field_19693_82751) ) (!  (=> true (= (select (|PolymorphicMapType_28572_19693_86873#PolymorphicMapType_28572| ZeroMask) o_4@@54 f_5@@38) (select (|PolymorphicMapType_28572_19693_86873#PolymorphicMapType_28572| QPMask@0) o_4@@54 f_5@@38)))
 :qid |stdinbpl.946:29|
 :skolemid |69|
 :pattern ( (select (|PolymorphicMapType_28572_19693_86873#PolymorphicMapType_28572| ZeroMask) o_4@@54 f_5@@38))
 :pattern ( (select (|PolymorphicMapType_28572_19693_86873#PolymorphicMapType_28572| QPMask@0) o_4@@54 f_5@@38))
))) (and (state Heap@@21 QPMask@0) (state Heap@@21 QPMask@0))) (and (=> (= (ControlFlow 0 263) 262) anon142_Then_correct) (=> (= (ControlFlow 0 263) 213) anon142_Else_correct))))))))
(let ((anon141_Then_correct true))
(let ((anon0_correct  (=> (and (state Heap@@21 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (=> (and (and (and AssumePermUpperBound (<= 0 left_1)) (and (< left_1 right) (< right (len_1 a_2@@1)))) (and (and (state Heap@@21 ZeroMask) (<= left_1 pivotIndex)) (and (<= pivotIndex right) (state Heap@@21 ZeroMask)))) (and (=> (= (ControlFlow 0 265) 1) anon141_Then_correct) (=> (= (ControlFlow 0 265) 263) anon141_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 266) 265) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
