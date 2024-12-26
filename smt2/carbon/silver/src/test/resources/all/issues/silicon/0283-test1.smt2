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
(declare-sort T@Field_5298_53 0)
(declare-sort T@Field_5311_5312 0)
(declare-sort T@Field_5298_12824 0)
(declare-sort T@Field_5298_12691 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_5259 0)) (((PolymorphicMapType_5259 (|PolymorphicMapType_5259_5298_53#PolymorphicMapType_5259| (Array T@Ref T@Field_5298_53 Real)) (|PolymorphicMapType_5259_5298_5312#PolymorphicMapType_5259| (Array T@Ref T@Field_5311_5312 Real)) (|PolymorphicMapType_5259_5298_12691#PolymorphicMapType_5259| (Array T@Ref T@Field_5298_12691 Real)) (|PolymorphicMapType_5259_5298_16385#PolymorphicMapType_5259| (Array T@Ref T@Field_5298_12824 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5787 0)) (((PolymorphicMapType_5787 (|PolymorphicMapType_5787_5298_53#PolymorphicMapType_5787| (Array T@Ref T@Field_5298_53 Bool)) (|PolymorphicMapType_5787_5298_5312#PolymorphicMapType_5787| (Array T@Ref T@Field_5311_5312 Bool)) (|PolymorphicMapType_5787_5298_12691#PolymorphicMapType_5787| (Array T@Ref T@Field_5298_12691 Bool)) (|PolymorphicMapType_5787_5298_13804#PolymorphicMapType_5787| (Array T@Ref T@Field_5298_12824 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5238 0)) (((PolymorphicMapType_5238 (|PolymorphicMapType_5238_3250_53#PolymorphicMapType_5238| (Array T@Ref T@Field_5298_53 Bool)) (|PolymorphicMapType_5238_3253_3254#PolymorphicMapType_5238| (Array T@Ref T@Field_5311_5312 T@Ref)) (|PolymorphicMapType_5238_5298_12868#PolymorphicMapType_5238| (Array T@Ref T@Field_5298_12824 T@PolymorphicMapType_5787)) (|PolymorphicMapType_5238_5298_12691#PolymorphicMapType_5238| (Array T@Ref T@Field_5298_12691 T@FrameType)) ) ) ))
(declare-sort T@Seq_2864 0)
(declare-fun |Seq#Length_2864| (T@Seq_2864) Int)
(declare-fun |Seq#Drop_2864| (T@Seq_2864 Int) T@Seq_2864)
(declare-fun succHeap (T@PolymorphicMapType_5238 T@PolymorphicMapType_5238) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_5238 T@PolymorphicMapType_5238) Bool)
(declare-fun state (T@PolymorphicMapType_5238 T@PolymorphicMapType_5259) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_5259) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_5787)
(declare-fun |Seq#Index_2864| (T@Seq_2864 Int) Int)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Empty_2864| () T@Seq_2864)
(declare-fun |Seq#Update_2864| (T@Seq_2864 Int Int) T@Seq_2864)
(declare-fun |Seq#Take_2864| (T@Seq_2864 Int) T@Seq_2864)
(declare-fun |Seq#Contains_2864| (T@Seq_2864 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2864)
(declare-fun |Seq#Skolem_2864| (T@Seq_2864 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_5238 T@PolymorphicMapType_5238 T@PolymorphicMapType_5259) Bool)
(declare-fun IsPredicateField_5298_12782 (T@Field_5298_12691) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_5298 (T@Field_5298_12691) T@Field_5298_12824)
(declare-fun HasDirectPerm_5298_12755 (T@PolymorphicMapType_5259 T@Ref T@Field_5298_12691) Bool)
(declare-fun IsWandField_5298_14331 (T@Field_5298_12691) Bool)
(declare-fun WandMaskField_5298 (T@Field_5298_12691) T@Field_5298_12824)
(declare-fun |Seq#Singleton_2864| (Int) T@Seq_2864)
(declare-fun |Seq#Append_2864| (T@Seq_2864 T@Seq_2864) T@Seq_2864)
(declare-fun dummyHeap () T@PolymorphicMapType_5238)
(declare-fun ZeroMask () T@PolymorphicMapType_5259)
(declare-fun $allocated () T@Field_5298_53)
(declare-fun InsidePredicate_5298_5298 (T@Field_5298_12691 T@FrameType T@Field_5298_12691 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5298_17294 (T@Field_5298_12824) Bool)
(declare-fun IsWandField_5298_17310 (T@Field_5298_12824) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_5298_5312 (T@Field_5311_5312) Bool)
(declare-fun IsWandField_5298_5312 (T@Field_5311_5312) Bool)
(declare-fun IsPredicateField_5298_53 (T@Field_5298_53) Bool)
(declare-fun IsWandField_5298_53 (T@Field_5298_53) Bool)
(declare-fun HasDirectPerm_5298_17665 (T@PolymorphicMapType_5259 T@Ref T@Field_5298_12824) Bool)
(declare-fun HasDirectPerm_5298_5312 (T@PolymorphicMapType_5259 T@Ref T@Field_5311_5312) Bool)
(declare-fun HasDirectPerm_5298_53 (T@PolymorphicMapType_5259 T@Ref T@Field_5298_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_5259 T@PolymorphicMapType_5259 T@PolymorphicMapType_5259) Bool)
(declare-fun |Seq#Equal_2864| (T@Seq_2864 T@Seq_2864) Bool)
(declare-fun |Seq#ContainsTrigger_2864| (T@Seq_2864 Int) Bool)
(declare-fun |Seq#SkolemDiff_2864| (T@Seq_2864 T@Seq_2864) Int)
(assert (forall ((s T@Seq_2864) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_2864| s)) (= (|Seq#Length_2864| (|Seq#Drop_2864| s n)) (- (|Seq#Length_2864| s) n))) (=> (< (|Seq#Length_2864| s) n) (= (|Seq#Length_2864| (|Seq#Drop_2864| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_2864| (|Seq#Drop_2864| s n)) (|Seq#Length_2864| s))))
 :qid |stdinbpl.273:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2864| (|Seq#Drop_2864| s n)))
 :pattern ( (|Seq#Length_2864| s) (|Seq#Drop_2864| s n))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_5238) (Heap1 T@PolymorphicMapType_5238) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_5238) (Mask T@PolymorphicMapType_5259) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_5238) (Heap1@@0 T@PolymorphicMapType_5238) (Heap2 T@PolymorphicMapType_5238) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_5298_12824) ) (!  (not (select (|PolymorphicMapType_5787_5298_13804#PolymorphicMapType_5787| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5787_5298_13804#PolymorphicMapType_5787| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_5298_12691) ) (!  (not (select (|PolymorphicMapType_5787_5298_12691#PolymorphicMapType_5787| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5787_5298_12691#PolymorphicMapType_5787| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_5311_5312) ) (!  (not (select (|PolymorphicMapType_5787_5298_5312#PolymorphicMapType_5787| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5787_5298_5312#PolymorphicMapType_5787| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_5298_53) ) (!  (not (select (|PolymorphicMapType_5787_5298_53#PolymorphicMapType_5787| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5787_5298_53#PolymorphicMapType_5787| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((s@@0 T@Seq_2864) (n@@0 Int) (j Int) ) (!  (=> (and (and (< 0 n@@0) (<= 0 j)) (< j (- (|Seq#Length_2864| s@@0) n@@0))) (and (= (|Seq#Sub| (|Seq#Add| j n@@0) n@@0) j) (= (|Seq#Index_2864| (|Seq#Drop_2864| s@@0 n@@0) j) (|Seq#Index_2864| s@@0 (|Seq#Add| j n@@0)))))
 :qid |stdinbpl.294:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2864| (|Seq#Drop_2864| s@@0 n@@0) j))
)))
(assert (= (|Seq#Length_2864| |Seq#Empty_2864|) 0))
(assert (forall ((s@@1 T@Seq_2864) (i Int) (v Int) (n@@1 Int) ) (!  (=> (and (<= 0 n@@1) (< n@@1 (|Seq#Length_2864| s@@1))) (and (=> (= i n@@1) (= (|Seq#Index_2864| (|Seq#Update_2864| s@@1 i v) n@@1) v)) (=> (not (= i n@@1)) (= (|Seq#Index_2864| (|Seq#Update_2864| s@@1 i v) n@@1) (|Seq#Index_2864| s@@1 n@@1)))))
 :qid |stdinbpl.249:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2864| (|Seq#Update_2864| s@@1 i v) n@@1))
 :pattern ( (|Seq#Index_2864| s@@1 n@@1) (|Seq#Update_2864| s@@1 i v))
)))
(assert (forall ((s@@2 T@Seq_2864) (n@@2 Int) ) (!  (and (=> (<= 0 n@@2) (and (=> (<= n@@2 (|Seq#Length_2864| s@@2)) (= (|Seq#Length_2864| (|Seq#Take_2864| s@@2 n@@2)) n@@2)) (=> (< (|Seq#Length_2864| s@@2) n@@2) (= (|Seq#Length_2864| (|Seq#Take_2864| s@@2 n@@2)) (|Seq#Length_2864| s@@2))))) (=> (< n@@2 0) (= (|Seq#Length_2864| (|Seq#Take_2864| s@@2 n@@2)) 0)))
 :qid |stdinbpl.260:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2864| (|Seq#Take_2864| s@@2 n@@2)))
 :pattern ( (|Seq#Take_2864| s@@2 n@@2) (|Seq#Length_2864| s@@2))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@0 Int) ) (! (= (|Seq#Contains_2864| (|Seq#Range| q@min q@max) v@@0)  (and (<= q@min v@@0) (< v@@0 q@max)))
 :qid |stdinbpl.534:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2864| (|Seq#Range| q@min q@max) v@@0))
)))
(assert (forall ((s@@3 T@Seq_2864) (x Int) ) (!  (=> (|Seq#Contains_2864| s@@3 x) (and (and (<= 0 (|Seq#Skolem_2864| s@@3 x)) (< (|Seq#Skolem_2864| s@@3 x) (|Seq#Length_2864| s@@3))) (= (|Seq#Index_2864| s@@3 (|Seq#Skolem_2864| s@@3 x)) x)))
 :qid |stdinbpl.392:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2864| s@@3 x))
)))
(assert (forall ((s@@4 T@Seq_2864) (n@@3 Int) ) (!  (=> (<= n@@3 0) (= (|Seq#Drop_2864| s@@4 n@@3) s@@4))
 :qid |stdinbpl.376:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_2864| s@@4 n@@3))
)))
(assert (forall ((i@@0 Int) (j@@0 Int) ) (! (= (|Seq#Sub| i@@0 j@@0) (- i@@0 j@@0))
 :qid |stdinbpl.229:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@0 j@@0))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Add| i@@1 j@@1) (+ i@@1 j@@1))
 :qid |stdinbpl.227:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@1 j@@1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_5238) (ExhaleHeap T@PolymorphicMapType_5238) (Mask@@0 T@PolymorphicMapType_5259) (pm_f_5 T@Field_5298_12691) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_5298_12755 Mask@@0 null pm_f_5) (IsPredicateField_5298_12782 pm_f_5)) (= (select (|PolymorphicMapType_5238_5298_12868#PolymorphicMapType_5238| Heap@@0) null (PredicateMaskField_5298 pm_f_5)) (select (|PolymorphicMapType_5238_5298_12868#PolymorphicMapType_5238| ExhaleHeap) null (PredicateMaskField_5298 pm_f_5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_5298_12782 pm_f_5) (select (|PolymorphicMapType_5238_5298_12868#PolymorphicMapType_5238| ExhaleHeap) null (PredicateMaskField_5298 pm_f_5)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_5238) (ExhaleHeap@@0 T@PolymorphicMapType_5238) (Mask@@1 T@PolymorphicMapType_5259) (pm_f_5@@0 T@Field_5298_12691) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_5298_12755 Mask@@1 null pm_f_5@@0) (IsWandField_5298_14331 pm_f_5@@0)) (= (select (|PolymorphicMapType_5238_5298_12868#PolymorphicMapType_5238| Heap@@1) null (WandMaskField_5298 pm_f_5@@0)) (select (|PolymorphicMapType_5238_5298_12868#PolymorphicMapType_5238| ExhaleHeap@@0) null (WandMaskField_5298 pm_f_5@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_5298_14331 pm_f_5@@0) (select (|PolymorphicMapType_5238_5298_12868#PolymorphicMapType_5238| ExhaleHeap@@0) null (WandMaskField_5298 pm_f_5@@0)))
)))
(assert (forall ((x@@0 Int) (y Int) ) (! (= (|Seq#Contains_2864| (|Seq#Singleton_2864| x@@0) y) (= x@@0 y))
 :qid |stdinbpl.517:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2864| (|Seq#Singleton_2864| x@@0) y))
)))
(assert (forall ((s@@5 T@Seq_2864) (n@@4 Int) (j@@2 Int) ) (!  (=> (and (and (<= 0 j@@2) (< j@@2 n@@4)) (< j@@2 (|Seq#Length_2864| s@@5))) (= (|Seq#Index_2864| (|Seq#Take_2864| s@@5 n@@4) j@@2) (|Seq#Index_2864| s@@5 j@@2)))
 :qid |stdinbpl.268:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2864| (|Seq#Take_2864| s@@5 n@@4) j@@2))
 :pattern ( (|Seq#Index_2864| s@@5 j@@2) (|Seq#Take_2864| s@@5 n@@4))
)))
(assert (forall ((s@@6 T@Seq_2864) (t T@Seq_2864) (n@@5 Int) ) (!  (=> (and (and (> n@@5 0) (> n@@5 (|Seq#Length_2864| s@@6))) (< n@@5 (|Seq#Length_2864| (|Seq#Append_2864| s@@6 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@5 (|Seq#Length_2864| s@@6)) (|Seq#Length_2864| s@@6)) n@@5) (= (|Seq#Take_2864| (|Seq#Append_2864| s@@6 t) n@@5) (|Seq#Append_2864| s@@6 (|Seq#Take_2864| t (|Seq#Sub| n@@5 (|Seq#Length_2864| s@@6)))))))
 :qid |stdinbpl.353:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2864| (|Seq#Append_2864| s@@6 t) n@@5))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_5238) (ExhaleHeap@@1 T@PolymorphicMapType_5238) (Mask@@2 T@PolymorphicMapType_5259) (pm_f_5@@1 T@Field_5298_12691) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_5298_12755 Mask@@2 null pm_f_5@@1) (IsPredicateField_5298_12782 pm_f_5@@1)) (and (and (and (forall ((o2_5 T@Ref) (f_16 T@Field_5298_53) ) (!  (=> (select (|PolymorphicMapType_5787_5298_53#PolymorphicMapType_5787| (select (|PolymorphicMapType_5238_5298_12868#PolymorphicMapType_5238| Heap@@2) null (PredicateMaskField_5298 pm_f_5@@1))) o2_5 f_16) (= (select (|PolymorphicMapType_5238_3250_53#PolymorphicMapType_5238| Heap@@2) o2_5 f_16) (select (|PolymorphicMapType_5238_3250_53#PolymorphicMapType_5238| ExhaleHeap@@1) o2_5 f_16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5238_3250_53#PolymorphicMapType_5238| ExhaleHeap@@1) o2_5 f_16))
)) (forall ((o2_5@@0 T@Ref) (f_16@@0 T@Field_5311_5312) ) (!  (=> (select (|PolymorphicMapType_5787_5298_5312#PolymorphicMapType_5787| (select (|PolymorphicMapType_5238_5298_12868#PolymorphicMapType_5238| Heap@@2) null (PredicateMaskField_5298 pm_f_5@@1))) o2_5@@0 f_16@@0) (= (select (|PolymorphicMapType_5238_3253_3254#PolymorphicMapType_5238| Heap@@2) o2_5@@0 f_16@@0) (select (|PolymorphicMapType_5238_3253_3254#PolymorphicMapType_5238| ExhaleHeap@@1) o2_5@@0 f_16@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5238_3253_3254#PolymorphicMapType_5238| ExhaleHeap@@1) o2_5@@0 f_16@@0))
))) (forall ((o2_5@@1 T@Ref) (f_16@@1 T@Field_5298_12691) ) (!  (=> (select (|PolymorphicMapType_5787_5298_12691#PolymorphicMapType_5787| (select (|PolymorphicMapType_5238_5298_12868#PolymorphicMapType_5238| Heap@@2) null (PredicateMaskField_5298 pm_f_5@@1))) o2_5@@1 f_16@@1) (= (select (|PolymorphicMapType_5238_5298_12691#PolymorphicMapType_5238| Heap@@2) o2_5@@1 f_16@@1) (select (|PolymorphicMapType_5238_5298_12691#PolymorphicMapType_5238| ExhaleHeap@@1) o2_5@@1 f_16@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5238_5298_12691#PolymorphicMapType_5238| ExhaleHeap@@1) o2_5@@1 f_16@@1))
))) (forall ((o2_5@@2 T@Ref) (f_16@@2 T@Field_5298_12824) ) (!  (=> (select (|PolymorphicMapType_5787_5298_13804#PolymorphicMapType_5787| (select (|PolymorphicMapType_5238_5298_12868#PolymorphicMapType_5238| Heap@@2) null (PredicateMaskField_5298 pm_f_5@@1))) o2_5@@2 f_16@@2) (= (select (|PolymorphicMapType_5238_5298_12868#PolymorphicMapType_5238| Heap@@2) o2_5@@2 f_16@@2) (select (|PolymorphicMapType_5238_5298_12868#PolymorphicMapType_5238| ExhaleHeap@@1) o2_5@@2 f_16@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5238_5298_12868#PolymorphicMapType_5238| ExhaleHeap@@1) o2_5@@2 f_16@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsPredicateField_5298_12782 pm_f_5@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_5238) (ExhaleHeap@@2 T@PolymorphicMapType_5238) (Mask@@3 T@PolymorphicMapType_5259) (pm_f_5@@2 T@Field_5298_12691) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_5298_12755 Mask@@3 null pm_f_5@@2) (IsWandField_5298_14331 pm_f_5@@2)) (and (and (and (forall ((o2_5@@3 T@Ref) (f_16@@3 T@Field_5298_53) ) (!  (=> (select (|PolymorphicMapType_5787_5298_53#PolymorphicMapType_5787| (select (|PolymorphicMapType_5238_5298_12868#PolymorphicMapType_5238| Heap@@3) null (WandMaskField_5298 pm_f_5@@2))) o2_5@@3 f_16@@3) (= (select (|PolymorphicMapType_5238_3250_53#PolymorphicMapType_5238| Heap@@3) o2_5@@3 f_16@@3) (select (|PolymorphicMapType_5238_3250_53#PolymorphicMapType_5238| ExhaleHeap@@2) o2_5@@3 f_16@@3)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5238_3250_53#PolymorphicMapType_5238| ExhaleHeap@@2) o2_5@@3 f_16@@3))
)) (forall ((o2_5@@4 T@Ref) (f_16@@4 T@Field_5311_5312) ) (!  (=> (select (|PolymorphicMapType_5787_5298_5312#PolymorphicMapType_5787| (select (|PolymorphicMapType_5238_5298_12868#PolymorphicMapType_5238| Heap@@3) null (WandMaskField_5298 pm_f_5@@2))) o2_5@@4 f_16@@4) (= (select (|PolymorphicMapType_5238_3253_3254#PolymorphicMapType_5238| Heap@@3) o2_5@@4 f_16@@4) (select (|PolymorphicMapType_5238_3253_3254#PolymorphicMapType_5238| ExhaleHeap@@2) o2_5@@4 f_16@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5238_3253_3254#PolymorphicMapType_5238| ExhaleHeap@@2) o2_5@@4 f_16@@4))
))) (forall ((o2_5@@5 T@Ref) (f_16@@5 T@Field_5298_12691) ) (!  (=> (select (|PolymorphicMapType_5787_5298_12691#PolymorphicMapType_5787| (select (|PolymorphicMapType_5238_5298_12868#PolymorphicMapType_5238| Heap@@3) null (WandMaskField_5298 pm_f_5@@2))) o2_5@@5 f_16@@5) (= (select (|PolymorphicMapType_5238_5298_12691#PolymorphicMapType_5238| Heap@@3) o2_5@@5 f_16@@5) (select (|PolymorphicMapType_5238_5298_12691#PolymorphicMapType_5238| ExhaleHeap@@2) o2_5@@5 f_16@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5238_5298_12691#PolymorphicMapType_5238| ExhaleHeap@@2) o2_5@@5 f_16@@5))
))) (forall ((o2_5@@6 T@Ref) (f_16@@6 T@Field_5298_12824) ) (!  (=> (select (|PolymorphicMapType_5787_5298_13804#PolymorphicMapType_5787| (select (|PolymorphicMapType_5238_5298_12868#PolymorphicMapType_5238| Heap@@3) null (WandMaskField_5298 pm_f_5@@2))) o2_5@@6 f_16@@6) (= (select (|PolymorphicMapType_5238_5298_12868#PolymorphicMapType_5238| Heap@@3) o2_5@@6 f_16@@6) (select (|PolymorphicMapType_5238_5298_12868#PolymorphicMapType_5238| ExhaleHeap@@2) o2_5@@6 f_16@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5238_5298_12868#PolymorphicMapType_5238| ExhaleHeap@@2) o2_5@@6 f_16@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_5298_14331 pm_f_5@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@4 T@PolymorphicMapType_5238) (ExhaleHeap@@3 T@PolymorphicMapType_5238) (Mask@@4 T@PolymorphicMapType_5259) (o_12 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_5238_3250_53#PolymorphicMapType_5238| Heap@@4) o_12 $allocated) (select (|PolymorphicMapType_5238_3250_53#PolymorphicMapType_5238| ExhaleHeap@@3) o_12 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_5238_3250_53#PolymorphicMapType_5238| ExhaleHeap@@3) o_12 $allocated))
)))
(assert (forall ((p T@Field_5298_12691) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_5298_5298 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_5298_5298 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_2864) (s1 T@Seq_2864) (n@@6 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_2864|)) (not (= s1 |Seq#Empty_2864|))) (<= (|Seq#Length_2864| s0) n@@6)) (< n@@6 (|Seq#Length_2864| (|Seq#Append_2864| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@6 (|Seq#Length_2864| s0)) (|Seq#Length_2864| s0)) n@@6) (= (|Seq#Index_2864| (|Seq#Append_2864| s0 s1) n@@6) (|Seq#Index_2864| s1 (|Seq#Sub| n@@6 (|Seq#Length_2864| s0))))))
 :qid |stdinbpl.240:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2864| (|Seq#Append_2864| s0 s1) n@@6))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_5238) (ExhaleHeap@@4 T@PolymorphicMapType_5238) (Mask@@5 T@PolymorphicMapType_5259) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (succHeap Heap@@5 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_5259) (o_2@@3 T@Ref) (f_4@@3 T@Field_5298_12824) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_5259_5298_16385#PolymorphicMapType_5259| Mask@@6) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_5298_17294 f_4@@3))) (not (IsWandField_5298_17310 f_4@@3))) (<= (select (|PolymorphicMapType_5259_5298_16385#PolymorphicMapType_5259| Mask@@6) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_5259_5298_16385#PolymorphicMapType_5259| Mask@@6) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_5259) (o_2@@4 T@Ref) (f_4@@4 T@Field_5298_12691) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_5259_5298_12691#PolymorphicMapType_5259| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_5298_12782 f_4@@4))) (not (IsWandField_5298_14331 f_4@@4))) (<= (select (|PolymorphicMapType_5259_5298_12691#PolymorphicMapType_5259| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_5259_5298_12691#PolymorphicMapType_5259| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_5259) (o_2@@5 T@Ref) (f_4@@5 T@Field_5311_5312) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_5259_5298_5312#PolymorphicMapType_5259| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_5298_5312 f_4@@5))) (not (IsWandField_5298_5312 f_4@@5))) (<= (select (|PolymorphicMapType_5259_5298_5312#PolymorphicMapType_5259| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_5259_5298_5312#PolymorphicMapType_5259| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_5259) (o_2@@6 T@Ref) (f_4@@6 T@Field_5298_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_5259_5298_53#PolymorphicMapType_5259| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_5298_53 f_4@@6))) (not (IsWandField_5298_53 f_4@@6))) (<= (select (|PolymorphicMapType_5259_5298_53#PolymorphicMapType_5259| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_5259_5298_53#PolymorphicMapType_5259| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_5259) (o_2@@7 T@Ref) (f_4@@7 T@Field_5298_12824) ) (! (= (HasDirectPerm_5298_17665 Mask@@10 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_5259_5298_16385#PolymorphicMapType_5259| Mask@@10) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5298_17665 Mask@@10 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_5259) (o_2@@8 T@Ref) (f_4@@8 T@Field_5298_12691) ) (! (= (HasDirectPerm_5298_12755 Mask@@11 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_5259_5298_12691#PolymorphicMapType_5259| Mask@@11) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5298_12755 Mask@@11 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_5259) (o_2@@9 T@Ref) (f_4@@9 T@Field_5311_5312) ) (! (= (HasDirectPerm_5298_5312 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_5259_5298_5312#PolymorphicMapType_5259| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5298_5312 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_5259) (o_2@@10 T@Ref) (f_4@@10 T@Field_5298_53) ) (! (= (HasDirectPerm_5298_53 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_5259_5298_53#PolymorphicMapType_5259| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5298_53 Mask@@13 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@3 Int) ) (!  (=> (and (<= 0 j@@3) (< j@@3 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2864| (|Seq#Range| q@min@@0 q@max@@0) j@@3) (+ q@min@@0 j@@3)))
 :qid |stdinbpl.532:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2864| (|Seq#Range| q@min@@0 q@max@@0) j@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_5238) (ExhaleHeap@@5 T@PolymorphicMapType_5238) (Mask@@14 T@PolymorphicMapType_5259) (o_12@@0 T@Ref) (f_16@@7 T@Field_5298_12824) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (=> (HasDirectPerm_5298_17665 Mask@@14 o_12@@0 f_16@@7) (= (select (|PolymorphicMapType_5238_5298_12868#PolymorphicMapType_5238| Heap@@6) o_12@@0 f_16@@7) (select (|PolymorphicMapType_5238_5298_12868#PolymorphicMapType_5238| ExhaleHeap@@5) o_12@@0 f_16@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (select (|PolymorphicMapType_5238_5298_12868#PolymorphicMapType_5238| ExhaleHeap@@5) o_12@@0 f_16@@7))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_5238) (ExhaleHeap@@6 T@PolymorphicMapType_5238) (Mask@@15 T@PolymorphicMapType_5259) (o_12@@1 T@Ref) (f_16@@8 T@Field_5298_12691) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (=> (HasDirectPerm_5298_12755 Mask@@15 o_12@@1 f_16@@8) (= (select (|PolymorphicMapType_5238_5298_12691#PolymorphicMapType_5238| Heap@@7) o_12@@1 f_16@@8) (select (|PolymorphicMapType_5238_5298_12691#PolymorphicMapType_5238| ExhaleHeap@@6) o_12@@1 f_16@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (select (|PolymorphicMapType_5238_5298_12691#PolymorphicMapType_5238| ExhaleHeap@@6) o_12@@1 f_16@@8))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_5238) (ExhaleHeap@@7 T@PolymorphicMapType_5238) (Mask@@16 T@PolymorphicMapType_5259) (o_12@@2 T@Ref) (f_16@@9 T@Field_5311_5312) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (=> (HasDirectPerm_5298_5312 Mask@@16 o_12@@2 f_16@@9) (= (select (|PolymorphicMapType_5238_3253_3254#PolymorphicMapType_5238| Heap@@8) o_12@@2 f_16@@9) (select (|PolymorphicMapType_5238_3253_3254#PolymorphicMapType_5238| ExhaleHeap@@7) o_12@@2 f_16@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (select (|PolymorphicMapType_5238_3253_3254#PolymorphicMapType_5238| ExhaleHeap@@7) o_12@@2 f_16@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_5238) (ExhaleHeap@@8 T@PolymorphicMapType_5238) (Mask@@17 T@PolymorphicMapType_5259) (o_12@@3 T@Ref) (f_16@@10 T@Field_5298_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (=> (HasDirectPerm_5298_53 Mask@@17 o_12@@3 f_16@@10) (= (select (|PolymorphicMapType_5238_3250_53#PolymorphicMapType_5238| Heap@@9) o_12@@3 f_16@@10) (select (|PolymorphicMapType_5238_3250_53#PolymorphicMapType_5238| ExhaleHeap@@8) o_12@@3 f_16@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (select (|PolymorphicMapType_5238_3250_53#PolymorphicMapType_5238| ExhaleHeap@@8) o_12@@3 f_16@@10))
)))
(assert (forall ((s0@@0 T@Seq_2864) (s1@@0 T@Seq_2864) ) (!  (=> (and (not (= s0@@0 |Seq#Empty_2864|)) (not (= s1@@0 |Seq#Empty_2864|))) (= (|Seq#Length_2864| (|Seq#Append_2864| s0@@0 s1@@0)) (+ (|Seq#Length_2864| s0@@0) (|Seq#Length_2864| s1@@0))))
 :qid |stdinbpl.209:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2864| (|Seq#Append_2864| s0@@0 s1@@0)))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_5298_12824) ) (! (= (select (|PolymorphicMapType_5259_5298_16385#PolymorphicMapType_5259| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5259_5298_16385#PolymorphicMapType_5259| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_5298_12691) ) (! (= (select (|PolymorphicMapType_5259_5298_12691#PolymorphicMapType_5259| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5259_5298_12691#PolymorphicMapType_5259| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_5311_5312) ) (! (= (select (|PolymorphicMapType_5259_5298_5312#PolymorphicMapType_5259| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5259_5298_5312#PolymorphicMapType_5259| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_5298_53) ) (! (= (select (|PolymorphicMapType_5259_5298_53#PolymorphicMapType_5259| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5259_5298_53#PolymorphicMapType_5259| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((s@@7 T@Seq_2864) (t@@0 T@Seq_2864) (n@@7 Int) ) (!  (=> (and (> n@@7 0) (> n@@7 (|Seq#Length_2864| s@@7))) (and (= (|Seq#Add| (|Seq#Sub| n@@7 (|Seq#Length_2864| s@@7)) (|Seq#Length_2864| s@@7)) n@@7) (= (|Seq#Drop_2864| (|Seq#Append_2864| s@@7 t@@0) n@@7) (|Seq#Drop_2864| t@@0 (|Seq#Sub| n@@7 (|Seq#Length_2864| s@@7))))))
 :qid |stdinbpl.366:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_2864| (|Seq#Append_2864| s@@7 t@@0) n@@7))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_5259) (SummandMask1 T@PolymorphicMapType_5259) (SummandMask2 T@PolymorphicMapType_5259) (o_2@@15 T@Ref) (f_4@@15 T@Field_5298_12824) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_5259_5298_16385#PolymorphicMapType_5259| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_5259_5298_16385#PolymorphicMapType_5259| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_5259_5298_16385#PolymorphicMapType_5259| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5259_5298_16385#PolymorphicMapType_5259| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5259_5298_16385#PolymorphicMapType_5259| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5259_5298_16385#PolymorphicMapType_5259| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_5259) (SummandMask1@@0 T@PolymorphicMapType_5259) (SummandMask2@@0 T@PolymorphicMapType_5259) (o_2@@16 T@Ref) (f_4@@16 T@Field_5298_12691) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_5259_5298_12691#PolymorphicMapType_5259| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_5259_5298_12691#PolymorphicMapType_5259| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_5259_5298_12691#PolymorphicMapType_5259| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5259_5298_12691#PolymorphicMapType_5259| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5259_5298_12691#PolymorphicMapType_5259| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5259_5298_12691#PolymorphicMapType_5259| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_5259) (SummandMask1@@1 T@PolymorphicMapType_5259) (SummandMask2@@1 T@PolymorphicMapType_5259) (o_2@@17 T@Ref) (f_4@@17 T@Field_5311_5312) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_5259_5298_5312#PolymorphicMapType_5259| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_5259_5298_5312#PolymorphicMapType_5259| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_5259_5298_5312#PolymorphicMapType_5259| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5259_5298_5312#PolymorphicMapType_5259| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5259_5298_5312#PolymorphicMapType_5259| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5259_5298_5312#PolymorphicMapType_5259| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_5259) (SummandMask1@@2 T@PolymorphicMapType_5259) (SummandMask2@@2 T@PolymorphicMapType_5259) (o_2@@18 T@Ref) (f_4@@18 T@Field_5298_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_5259_5298_53#PolymorphicMapType_5259| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_5259_5298_53#PolymorphicMapType_5259| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_5259_5298_53#PolymorphicMapType_5259| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5259_5298_53#PolymorphicMapType_5259| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5259_5298_53#PolymorphicMapType_5259| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5259_5298_53#PolymorphicMapType_5259| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2864| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2864| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.531:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2864| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_2864) (b T@Seq_2864) ) (!  (=> (|Seq#Equal_2864| a b) (= a b))
 :qid |stdinbpl.504:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_2864| a b))
)))
(assert (forall ((s@@8 T@Seq_2864) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length_2864| s@@8))) (|Seq#ContainsTrigger_2864| s@@8 (|Seq#Index_2864| s@@8 i@@2)))
 :qid |stdinbpl.397:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2864| s@@8 i@@2))
)))
(assert (forall ((s0@@1 T@Seq_2864) (s1@@1 T@Seq_2864) ) (!  (and (=> (= s0@@1 |Seq#Empty_2864|) (= (|Seq#Append_2864| s0@@1 s1@@1) s1@@1)) (=> (= s1@@1 |Seq#Empty_2864|) (= (|Seq#Append_2864| s0@@1 s1@@1) s0@@1)))
 :qid |stdinbpl.215:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_2864| s0@@1 s1@@1))
)))
(assert (forall ((t@@1 Int) ) (! (= (|Seq#Index_2864| (|Seq#Singleton_2864| t@@1) 0) t@@1)
 :qid |stdinbpl.219:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_2864| t@@1))
)))
(assert (forall ((s@@9 T@Seq_2864) ) (! (<= 0 (|Seq#Length_2864| s@@9))
 :qid |stdinbpl.198:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2864| s@@9))
)))
(assert (forall ((s0@@2 T@Seq_2864) (s1@@2 T@Seq_2864) ) (!  (=> (|Seq#Equal_2864| s0@@2 s1@@2) (and (= (|Seq#Length_2864| s0@@2) (|Seq#Length_2864| s1@@2)) (forall ((j@@4 Int) ) (!  (=> (and (<= 0 j@@4) (< j@@4 (|Seq#Length_2864| s0@@2))) (= (|Seq#Index_2864| s0@@2 j@@4) (|Seq#Index_2864| s1@@2 j@@4)))
 :qid |stdinbpl.494:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2864| s0@@2 j@@4))
 :pattern ( (|Seq#Index_2864| s1@@2 j@@4))
))))
 :qid |stdinbpl.491:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_2864| s0@@2 s1@@2))
)))
(assert (forall ((t@@2 Int) ) (! (= (|Seq#Length_2864| (|Seq#Singleton_2864| t@@2)) 1)
 :qid |stdinbpl.206:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_2864| t@@2))
)))
(assert (forall ((s@@10 T@Seq_2864) (t@@3 T@Seq_2864) (n@@8 Int) ) (!  (=> (and (< 0 n@@8) (<= n@@8 (|Seq#Length_2864| s@@10))) (= (|Seq#Take_2864| (|Seq#Append_2864| s@@10 t@@3) n@@8) (|Seq#Take_2864| s@@10 n@@8)))
 :qid |stdinbpl.348:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2864| (|Seq#Append_2864| s@@10 t@@3) n@@8))
)))
(assert (forall ((s@@11 T@Seq_2864) (i@@3 Int) (v@@1 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_2864| s@@11))) (= (|Seq#Length_2864| (|Seq#Update_2864| s@@11 i@@3 v@@1)) (|Seq#Length_2864| s@@11)))
 :qid |stdinbpl.247:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2864| (|Seq#Update_2864| s@@11 i@@3 v@@1)))
 :pattern ( (|Seq#Length_2864| s@@11) (|Seq#Update_2864| s@@11 i@@3 v@@1))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_5238) (o_11 T@Ref) (f_17 T@Field_5298_12691) (v@@2 T@FrameType) ) (! (succHeap Heap@@10 (PolymorphicMapType_5238 (|PolymorphicMapType_5238_3250_53#PolymorphicMapType_5238| Heap@@10) (|PolymorphicMapType_5238_3253_3254#PolymorphicMapType_5238| Heap@@10) (|PolymorphicMapType_5238_5298_12868#PolymorphicMapType_5238| Heap@@10) (store (|PolymorphicMapType_5238_5298_12691#PolymorphicMapType_5238| Heap@@10) o_11 f_17 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5238 (|PolymorphicMapType_5238_3250_53#PolymorphicMapType_5238| Heap@@10) (|PolymorphicMapType_5238_3253_3254#PolymorphicMapType_5238| Heap@@10) (|PolymorphicMapType_5238_5298_12868#PolymorphicMapType_5238| Heap@@10) (store (|PolymorphicMapType_5238_5298_12691#PolymorphicMapType_5238| Heap@@10) o_11 f_17 v@@2)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_5238) (o_11@@0 T@Ref) (f_17@@0 T@Field_5298_12824) (v@@3 T@PolymorphicMapType_5787) ) (! (succHeap Heap@@11 (PolymorphicMapType_5238 (|PolymorphicMapType_5238_3250_53#PolymorphicMapType_5238| Heap@@11) (|PolymorphicMapType_5238_3253_3254#PolymorphicMapType_5238| Heap@@11) (store (|PolymorphicMapType_5238_5298_12868#PolymorphicMapType_5238| Heap@@11) o_11@@0 f_17@@0 v@@3) (|PolymorphicMapType_5238_5298_12691#PolymorphicMapType_5238| Heap@@11)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5238 (|PolymorphicMapType_5238_3250_53#PolymorphicMapType_5238| Heap@@11) (|PolymorphicMapType_5238_3253_3254#PolymorphicMapType_5238| Heap@@11) (store (|PolymorphicMapType_5238_5298_12868#PolymorphicMapType_5238| Heap@@11) o_11@@0 f_17@@0 v@@3) (|PolymorphicMapType_5238_5298_12691#PolymorphicMapType_5238| Heap@@11)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_5238) (o_11@@1 T@Ref) (f_17@@1 T@Field_5311_5312) (v@@4 T@Ref) ) (! (succHeap Heap@@12 (PolymorphicMapType_5238 (|PolymorphicMapType_5238_3250_53#PolymorphicMapType_5238| Heap@@12) (store (|PolymorphicMapType_5238_3253_3254#PolymorphicMapType_5238| Heap@@12) o_11@@1 f_17@@1 v@@4) (|PolymorphicMapType_5238_5298_12868#PolymorphicMapType_5238| Heap@@12) (|PolymorphicMapType_5238_5298_12691#PolymorphicMapType_5238| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5238 (|PolymorphicMapType_5238_3250_53#PolymorphicMapType_5238| Heap@@12) (store (|PolymorphicMapType_5238_3253_3254#PolymorphicMapType_5238| Heap@@12) o_11@@1 f_17@@1 v@@4) (|PolymorphicMapType_5238_5298_12868#PolymorphicMapType_5238| Heap@@12) (|PolymorphicMapType_5238_5298_12691#PolymorphicMapType_5238| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_5238) (o_11@@2 T@Ref) (f_17@@2 T@Field_5298_53) (v@@5 Bool) ) (! (succHeap Heap@@13 (PolymorphicMapType_5238 (store (|PolymorphicMapType_5238_3250_53#PolymorphicMapType_5238| Heap@@13) o_11@@2 f_17@@2 v@@5) (|PolymorphicMapType_5238_3253_3254#PolymorphicMapType_5238| Heap@@13) (|PolymorphicMapType_5238_5298_12868#PolymorphicMapType_5238| Heap@@13) (|PolymorphicMapType_5238_5298_12691#PolymorphicMapType_5238| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5238 (store (|PolymorphicMapType_5238_3250_53#PolymorphicMapType_5238| Heap@@13) o_11@@2 f_17@@2 v@@5) (|PolymorphicMapType_5238_3253_3254#PolymorphicMapType_5238| Heap@@13) (|PolymorphicMapType_5238_5298_12868#PolymorphicMapType_5238| Heap@@13) (|PolymorphicMapType_5238_5298_12691#PolymorphicMapType_5238| Heap@@13)))
)))
(assert (forall ((s@@12 T@Seq_2864) (t@@4 T@Seq_2864) (n@@9 Int) ) (!  (=> (and (< 0 n@@9) (<= n@@9 (|Seq#Length_2864| s@@12))) (= (|Seq#Drop_2864| (|Seq#Append_2864| s@@12 t@@4) n@@9) (|Seq#Append_2864| (|Seq#Drop_2864| s@@12 n@@9) t@@4)))
 :qid |stdinbpl.362:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_2864| (|Seq#Append_2864| s@@12 t@@4) n@@9))
)))
(assert (forall ((s@@13 T@Seq_2864) (n@@10 Int) (i@@4 Int) ) (!  (=> (and (and (< 0 n@@10) (<= n@@10 i@@4)) (< i@@4 (|Seq#Length_2864| s@@13))) (and (= (|Seq#Add| (|Seq#Sub| i@@4 n@@10) n@@10) i@@4) (= (|Seq#Index_2864| (|Seq#Drop_2864| s@@13 n@@10) (|Seq#Sub| i@@4 n@@10)) (|Seq#Index_2864| s@@13 i@@4))))
 :qid |stdinbpl.298:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_2864| s@@13 n@@10) (|Seq#Index_2864| s@@13 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_2864) (s1@@3 T@Seq_2864) (n@@11 Int) ) (!  (=> (and (and (and (not (= s0@@3 |Seq#Empty_2864|)) (not (= s1@@3 |Seq#Empty_2864|))) (<= 0 n@@11)) (< n@@11 (|Seq#Length_2864| s0@@3))) (= (|Seq#Index_2864| (|Seq#Append_2864| s0@@3 s1@@3) n@@11) (|Seq#Index_2864| s0@@3 n@@11)))
 :qid |stdinbpl.238:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2864| (|Seq#Append_2864| s0@@3 s1@@3) n@@11))
 :pattern ( (|Seq#Index_2864| s0@@3 n@@11) (|Seq#Append_2864| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2864) (s1@@4 T@Seq_2864) (m Int) ) (!  (=> (and (and (and (not (= s0@@4 |Seq#Empty_2864|)) (not (= s1@@4 |Seq#Empty_2864|))) (<= 0 m)) (< m (|Seq#Length_2864| s1@@4))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_2864| s0@@4)) (|Seq#Length_2864| s0@@4)) m) (= (|Seq#Index_2864| (|Seq#Append_2864| s0@@4 s1@@4) (|Seq#Add| m (|Seq#Length_2864| s0@@4))) (|Seq#Index_2864| s1@@4 m))))
 :qid |stdinbpl.243:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2864| s1@@4 m) (|Seq#Append_2864| s0@@4 s1@@4))
)))
(assert (forall ((o_11@@3 T@Ref) (f_10 T@Field_5311_5312) (Heap@@14 T@PolymorphicMapType_5238) ) (!  (=> (select (|PolymorphicMapType_5238_3250_53#PolymorphicMapType_5238| Heap@@14) o_11@@3 $allocated) (select (|PolymorphicMapType_5238_3250_53#PolymorphicMapType_5238| Heap@@14) (select (|PolymorphicMapType_5238_3253_3254#PolymorphicMapType_5238| Heap@@14) o_11@@3 f_10) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_5238_3253_3254#PolymorphicMapType_5238| Heap@@14) o_11@@3 f_10))
)))
(assert (forall ((s@@14 T@Seq_2864) (x@@1 Int) (i@@5 Int) ) (!  (=> (and (and (<= 0 i@@5) (< i@@5 (|Seq#Length_2864| s@@14))) (= (|Seq#Index_2864| s@@14 i@@5) x@@1)) (|Seq#Contains_2864| s@@14 x@@1))
 :qid |stdinbpl.395:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2864| s@@14 x@@1) (|Seq#Index_2864| s@@14 i@@5))
)))
(assert (forall ((s0@@5 T@Seq_2864) (s1@@5 T@Seq_2864) ) (!  (or (or (and (= s0@@5 s1@@5) (|Seq#Equal_2864| s0@@5 s1@@5)) (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_2864| s0@@5 s1@@5))) (not (= (|Seq#Length_2864| s0@@5) (|Seq#Length_2864| s1@@5))))) (and (and (and (and (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_2864| s0@@5 s1@@5))) (= (|Seq#Length_2864| s0@@5) (|Seq#Length_2864| s1@@5))) (= (|Seq#SkolemDiff_2864| s0@@5 s1@@5) (|Seq#SkolemDiff_2864| s1@@5 s0@@5))) (<= 0 (|Seq#SkolemDiff_2864| s0@@5 s1@@5))) (< (|Seq#SkolemDiff_2864| s0@@5 s1@@5) (|Seq#Length_2864| s0@@5))) (not (= (|Seq#Index_2864| s0@@5 (|Seq#SkolemDiff_2864| s0@@5 s1@@5)) (|Seq#Index_2864| s1@@5 (|Seq#SkolemDiff_2864| s0@@5 s1@@5))))))
 :qid |stdinbpl.499:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_2864| s0@@5 s1@@5))
)))
(assert (forall ((p@@1 T@Field_5298_12691) (v_1@@0 T@FrameType) (q T@Field_5298_12691) (w@@0 T@FrameType) (r T@Field_5298_12691) (u T@FrameType) ) (!  (=> (and (InsidePredicate_5298_5298 p@@1 v_1@@0 q w@@0) (InsidePredicate_5298_5298 q w@@0 r u)) (InsidePredicate_5298_5298 p@@1 v_1@@0 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5298_5298 p@@1 v_1@@0 q w@@0) (InsidePredicate_5298_5298 q w@@0 r u))
)))
(assert (forall ((s@@15 T@Seq_2864) ) (!  (=> (= (|Seq#Length_2864| s@@15) 0) (= s@@15 |Seq#Empty_2864|))
 :qid |stdinbpl.202:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2864| s@@15))
)))
(assert (forall ((s@@16 T@Seq_2864) (n@@12 Int) ) (!  (=> (<= n@@12 0) (= (|Seq#Take_2864| s@@16 n@@12) |Seq#Empty_2864|))
 :qid |stdinbpl.378:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_2864| s@@16 n@@12))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun i_14 () Int)
(declare-fun xs () T@Seq_2864)
(declare-fun Heap@@15 () T@PolymorphicMapType_5238)
(set-info :boogie-vc-id test1)
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
 (=> (= (ControlFlow 0 0) 8) (let ((anon3_correct true))
(let ((anon6_Else_correct  (=> (and (not (and (<= 0 i_14) (<= i_14 (|Seq#Length_2864| xs)))) (= (ControlFlow 0 6) 2)) anon3_correct)))
(let ((anon6_Then_correct  (=> (and (<= 0 i_14) (<= i_14 (|Seq#Length_2864| xs))) (and (=> (= (ControlFlow 0 3) (- 0 5)) (>= i_14 0)) (=> (>= i_14 0) (and (=> (= (ControlFlow 0 3) (- 0 4)) (< i_14 (|Seq#Length_2864| xs))) (=> (< i_14 (|Seq#Length_2864| xs)) (=> (= (ControlFlow 0 3) 2) anon3_correct))))))))
(let ((anon5_Else_correct true))
(let ((anon0_correct  (=> (and (state Heap@@15 ZeroMask) AssumePermUpperBound) (and (and (=> (= (ControlFlow 0 7) 1) anon5_Else_correct) (=> (= (ControlFlow 0 7) 3) anon6_Then_correct)) (=> (= (ControlFlow 0 7) 6) anon6_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 8) 7) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 3) (- 4))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
