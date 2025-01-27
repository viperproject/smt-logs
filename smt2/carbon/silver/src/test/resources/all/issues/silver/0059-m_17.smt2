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
(declare-sort T@Field_5600_53 0)
(declare-sort T@Field_5613_5614 0)
(declare-sort T@Field_5600_13511 0)
(declare-sort T@Field_5600_13378 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_5561 0)) (((PolymorphicMapType_5561 (|PolymorphicMapType_5561_5600_53#PolymorphicMapType_5561| (Array T@Ref T@Field_5600_53 Real)) (|PolymorphicMapType_5561_5600_5614#PolymorphicMapType_5561| (Array T@Ref T@Field_5613_5614 Real)) (|PolymorphicMapType_5561_5600_13378#PolymorphicMapType_5561| (Array T@Ref T@Field_5600_13378 Real)) (|PolymorphicMapType_5561_5600_17072#PolymorphicMapType_5561| (Array T@Ref T@Field_5600_13511 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6089 0)) (((PolymorphicMapType_6089 (|PolymorphicMapType_6089_5600_53#PolymorphicMapType_6089| (Array T@Ref T@Field_5600_53 Bool)) (|PolymorphicMapType_6089_5600_5614#PolymorphicMapType_6089| (Array T@Ref T@Field_5613_5614 Bool)) (|PolymorphicMapType_6089_5600_13378#PolymorphicMapType_6089| (Array T@Ref T@Field_5600_13378 Bool)) (|PolymorphicMapType_6089_5600_14491#PolymorphicMapType_6089| (Array T@Ref T@Field_5600_13511 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5540 0)) (((PolymorphicMapType_5540 (|PolymorphicMapType_5540_3500_53#PolymorphicMapType_5540| (Array T@Ref T@Field_5600_53 Bool)) (|PolymorphicMapType_5540_3503_3504#PolymorphicMapType_5540| (Array T@Ref T@Field_5613_5614 T@Ref)) (|PolymorphicMapType_5540_5600_13555#PolymorphicMapType_5540| (Array T@Ref T@Field_5600_13511 T@PolymorphicMapType_6089)) (|PolymorphicMapType_5540_5600_13378#PolymorphicMapType_5540| (Array T@Ref T@Field_5600_13378 T@FrameType)) ) ) ))
(declare-sort T@Seq_2864 0)
(declare-fun |Seq#Length_2864| (T@Seq_2864) Int)
(declare-fun |Seq#Drop_2864| (T@Seq_2864 Int) T@Seq_2864)
(declare-fun succHeap (T@PolymorphicMapType_5540 T@PolymorphicMapType_5540) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_5540 T@PolymorphicMapType_5540) Bool)
(declare-fun state (T@PolymorphicMapType_5540 T@PolymorphicMapType_5561) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_5561) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_6089)
(declare-fun |Seq#Index_2864| (T@Seq_2864 Int) Int)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Empty_2864| () T@Seq_2864)
(declare-fun |Seq#Update_2864| (T@Seq_2864 Int Int) T@Seq_2864)
(declare-fun |Seq#Take_2864| (T@Seq_2864 Int) T@Seq_2864)
(declare-fun |Seq#Contains_2864| (T@Seq_2864 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2864)
(declare-fun |Seq#Skolem_2864| (T@Seq_2864 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_5540 T@PolymorphicMapType_5540 T@PolymorphicMapType_5561) Bool)
(declare-fun IsPredicateField_5600_13469 (T@Field_5600_13378) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_5600 (T@Field_5600_13378) T@Field_5600_13511)
(declare-fun HasDirectPerm_5600_13442 (T@PolymorphicMapType_5561 T@Ref T@Field_5600_13378) Bool)
(declare-fun IsWandField_5600_15018 (T@Field_5600_13378) Bool)
(declare-fun WandMaskField_5600 (T@Field_5600_13378) T@Field_5600_13511)
(declare-fun |Seq#Singleton_2864| (Int) T@Seq_2864)
(declare-fun |Seq#Append_2864| (T@Seq_2864 T@Seq_2864) T@Seq_2864)
(declare-fun dummyHeap () T@PolymorphicMapType_5540)
(declare-fun ZeroMask () T@PolymorphicMapType_5561)
(declare-fun $allocated () T@Field_5600_53)
(declare-fun InsidePredicate_5600_5600 (T@Field_5600_13378 T@FrameType T@Field_5600_13378 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5600_17981 (T@Field_5600_13511) Bool)
(declare-fun IsWandField_5600_17997 (T@Field_5600_13511) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_5600_5614 (T@Field_5613_5614) Bool)
(declare-fun IsWandField_5600_5614 (T@Field_5613_5614) Bool)
(declare-fun IsPredicateField_5600_53 (T@Field_5600_53) Bool)
(declare-fun IsWandField_5600_53 (T@Field_5600_53) Bool)
(declare-fun HasDirectPerm_5600_18352 (T@PolymorphicMapType_5561 T@Ref T@Field_5600_13511) Bool)
(declare-fun HasDirectPerm_5600_5614 (T@PolymorphicMapType_5561 T@Ref T@Field_5613_5614) Bool)
(declare-fun HasDirectPerm_5600_53 (T@PolymorphicMapType_5561 T@Ref T@Field_5600_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_5561 T@PolymorphicMapType_5561 T@PolymorphicMapType_5561) Bool)
(declare-fun |Seq#Equal_2864| (T@Seq_2864 T@Seq_2864) Bool)
(declare-fun |Seq#ContainsTrigger_2985| (T@Seq_2864 Int) Bool)
(declare-fun |Seq#SkolemDiff_2864| (T@Seq_2864 T@Seq_2864) Int)
(assert (forall ((s T@Seq_2864) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_2864| s)) (= (|Seq#Length_2864| (|Seq#Drop_2864| s n)) (- (|Seq#Length_2864| s) n))) (=> (< (|Seq#Length_2864| s) n) (= (|Seq#Length_2864| (|Seq#Drop_2864| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_2864| (|Seq#Drop_2864| s n)) (|Seq#Length_2864| s))))
 :qid |stdinbpl.273:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2864| (|Seq#Drop_2864| s n)))
 :pattern ( (|Seq#Length_2864| s) (|Seq#Drop_2864| s n))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_5540) (Heap1 T@PolymorphicMapType_5540) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_5540) (Mask T@PolymorphicMapType_5561) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_5540) (Heap1@@0 T@PolymorphicMapType_5540) (Heap2 T@PolymorphicMapType_5540) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_5600_13511) ) (!  (not (select (|PolymorphicMapType_6089_5600_14491#PolymorphicMapType_6089| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6089_5600_14491#PolymorphicMapType_6089| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_5600_13378) ) (!  (not (select (|PolymorphicMapType_6089_5600_13378#PolymorphicMapType_6089| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6089_5600_13378#PolymorphicMapType_6089| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_5613_5614) ) (!  (not (select (|PolymorphicMapType_6089_5600_5614#PolymorphicMapType_6089| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6089_5600_5614#PolymorphicMapType_6089| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_5600_53) ) (!  (not (select (|PolymorphicMapType_6089_5600_53#PolymorphicMapType_6089| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6089_5600_53#PolymorphicMapType_6089| ZeroPMask) o_2@@2 f_4@@2))
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
(assert (forall ((Heap@@0 T@PolymorphicMapType_5540) (ExhaleHeap T@PolymorphicMapType_5540) (Mask@@0 T@PolymorphicMapType_5561) (pm_f_20 T@Field_5600_13378) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_5600_13442 Mask@@0 null pm_f_20) (IsPredicateField_5600_13469 pm_f_20)) (= (select (|PolymorphicMapType_5540_5600_13555#PolymorphicMapType_5540| Heap@@0) null (PredicateMaskField_5600 pm_f_20)) (select (|PolymorphicMapType_5540_5600_13555#PolymorphicMapType_5540| ExhaleHeap) null (PredicateMaskField_5600 pm_f_20)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_5600_13469 pm_f_20) (select (|PolymorphicMapType_5540_5600_13555#PolymorphicMapType_5540| ExhaleHeap) null (PredicateMaskField_5600 pm_f_20)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_5540) (ExhaleHeap@@0 T@PolymorphicMapType_5540) (Mask@@1 T@PolymorphicMapType_5561) (pm_f_20@@0 T@Field_5600_13378) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_5600_13442 Mask@@1 null pm_f_20@@0) (IsWandField_5600_15018 pm_f_20@@0)) (= (select (|PolymorphicMapType_5540_5600_13555#PolymorphicMapType_5540| Heap@@1) null (WandMaskField_5600 pm_f_20@@0)) (select (|PolymorphicMapType_5540_5600_13555#PolymorphicMapType_5540| ExhaleHeap@@0) null (WandMaskField_5600 pm_f_20@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_5600_15018 pm_f_20@@0) (select (|PolymorphicMapType_5540_5600_13555#PolymorphicMapType_5540| ExhaleHeap@@0) null (WandMaskField_5600 pm_f_20@@0)))
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
(assert (forall ((Heap@@2 T@PolymorphicMapType_5540) (ExhaleHeap@@1 T@PolymorphicMapType_5540) (Mask@@2 T@PolymorphicMapType_5561) (pm_f_20@@1 T@Field_5600_13378) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_5600_13442 Mask@@2 null pm_f_20@@1) (IsPredicateField_5600_13469 pm_f_20@@1)) (and (and (and (forall ((o2_20 T@Ref) (f_53 T@Field_5600_53) ) (!  (=> (select (|PolymorphicMapType_6089_5600_53#PolymorphicMapType_6089| (select (|PolymorphicMapType_5540_5600_13555#PolymorphicMapType_5540| Heap@@2) null (PredicateMaskField_5600 pm_f_20@@1))) o2_20 f_53) (= (select (|PolymorphicMapType_5540_3500_53#PolymorphicMapType_5540| Heap@@2) o2_20 f_53) (select (|PolymorphicMapType_5540_3500_53#PolymorphicMapType_5540| ExhaleHeap@@1) o2_20 f_53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5540_3500_53#PolymorphicMapType_5540| ExhaleHeap@@1) o2_20 f_53))
)) (forall ((o2_20@@0 T@Ref) (f_53@@0 T@Field_5613_5614) ) (!  (=> (select (|PolymorphicMapType_6089_5600_5614#PolymorphicMapType_6089| (select (|PolymorphicMapType_5540_5600_13555#PolymorphicMapType_5540| Heap@@2) null (PredicateMaskField_5600 pm_f_20@@1))) o2_20@@0 f_53@@0) (= (select (|PolymorphicMapType_5540_3503_3504#PolymorphicMapType_5540| Heap@@2) o2_20@@0 f_53@@0) (select (|PolymorphicMapType_5540_3503_3504#PolymorphicMapType_5540| ExhaleHeap@@1) o2_20@@0 f_53@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5540_3503_3504#PolymorphicMapType_5540| ExhaleHeap@@1) o2_20@@0 f_53@@0))
))) (forall ((o2_20@@1 T@Ref) (f_53@@1 T@Field_5600_13378) ) (!  (=> (select (|PolymorphicMapType_6089_5600_13378#PolymorphicMapType_6089| (select (|PolymorphicMapType_5540_5600_13555#PolymorphicMapType_5540| Heap@@2) null (PredicateMaskField_5600 pm_f_20@@1))) o2_20@@1 f_53@@1) (= (select (|PolymorphicMapType_5540_5600_13378#PolymorphicMapType_5540| Heap@@2) o2_20@@1 f_53@@1) (select (|PolymorphicMapType_5540_5600_13378#PolymorphicMapType_5540| ExhaleHeap@@1) o2_20@@1 f_53@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5540_5600_13378#PolymorphicMapType_5540| ExhaleHeap@@1) o2_20@@1 f_53@@1))
))) (forall ((o2_20@@2 T@Ref) (f_53@@2 T@Field_5600_13511) ) (!  (=> (select (|PolymorphicMapType_6089_5600_14491#PolymorphicMapType_6089| (select (|PolymorphicMapType_5540_5600_13555#PolymorphicMapType_5540| Heap@@2) null (PredicateMaskField_5600 pm_f_20@@1))) o2_20@@2 f_53@@2) (= (select (|PolymorphicMapType_5540_5600_13555#PolymorphicMapType_5540| Heap@@2) o2_20@@2 f_53@@2) (select (|PolymorphicMapType_5540_5600_13555#PolymorphicMapType_5540| ExhaleHeap@@1) o2_20@@2 f_53@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5540_5600_13555#PolymorphicMapType_5540| ExhaleHeap@@1) o2_20@@2 f_53@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsPredicateField_5600_13469 pm_f_20@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_5540) (ExhaleHeap@@2 T@PolymorphicMapType_5540) (Mask@@3 T@PolymorphicMapType_5561) (pm_f_20@@2 T@Field_5600_13378) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_5600_13442 Mask@@3 null pm_f_20@@2) (IsWandField_5600_15018 pm_f_20@@2)) (and (and (and (forall ((o2_20@@3 T@Ref) (f_53@@3 T@Field_5600_53) ) (!  (=> (select (|PolymorphicMapType_6089_5600_53#PolymorphicMapType_6089| (select (|PolymorphicMapType_5540_5600_13555#PolymorphicMapType_5540| Heap@@3) null (WandMaskField_5600 pm_f_20@@2))) o2_20@@3 f_53@@3) (= (select (|PolymorphicMapType_5540_3500_53#PolymorphicMapType_5540| Heap@@3) o2_20@@3 f_53@@3) (select (|PolymorphicMapType_5540_3500_53#PolymorphicMapType_5540| ExhaleHeap@@2) o2_20@@3 f_53@@3)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5540_3500_53#PolymorphicMapType_5540| ExhaleHeap@@2) o2_20@@3 f_53@@3))
)) (forall ((o2_20@@4 T@Ref) (f_53@@4 T@Field_5613_5614) ) (!  (=> (select (|PolymorphicMapType_6089_5600_5614#PolymorphicMapType_6089| (select (|PolymorphicMapType_5540_5600_13555#PolymorphicMapType_5540| Heap@@3) null (WandMaskField_5600 pm_f_20@@2))) o2_20@@4 f_53@@4) (= (select (|PolymorphicMapType_5540_3503_3504#PolymorphicMapType_5540| Heap@@3) o2_20@@4 f_53@@4) (select (|PolymorphicMapType_5540_3503_3504#PolymorphicMapType_5540| ExhaleHeap@@2) o2_20@@4 f_53@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5540_3503_3504#PolymorphicMapType_5540| ExhaleHeap@@2) o2_20@@4 f_53@@4))
))) (forall ((o2_20@@5 T@Ref) (f_53@@5 T@Field_5600_13378) ) (!  (=> (select (|PolymorphicMapType_6089_5600_13378#PolymorphicMapType_6089| (select (|PolymorphicMapType_5540_5600_13555#PolymorphicMapType_5540| Heap@@3) null (WandMaskField_5600 pm_f_20@@2))) o2_20@@5 f_53@@5) (= (select (|PolymorphicMapType_5540_5600_13378#PolymorphicMapType_5540| Heap@@3) o2_20@@5 f_53@@5) (select (|PolymorphicMapType_5540_5600_13378#PolymorphicMapType_5540| ExhaleHeap@@2) o2_20@@5 f_53@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5540_5600_13378#PolymorphicMapType_5540| ExhaleHeap@@2) o2_20@@5 f_53@@5))
))) (forall ((o2_20@@6 T@Ref) (f_53@@6 T@Field_5600_13511) ) (!  (=> (select (|PolymorphicMapType_6089_5600_14491#PolymorphicMapType_6089| (select (|PolymorphicMapType_5540_5600_13555#PolymorphicMapType_5540| Heap@@3) null (WandMaskField_5600 pm_f_20@@2))) o2_20@@6 f_53@@6) (= (select (|PolymorphicMapType_5540_5600_13555#PolymorphicMapType_5540| Heap@@3) o2_20@@6 f_53@@6) (select (|PolymorphicMapType_5540_5600_13555#PolymorphicMapType_5540| ExhaleHeap@@2) o2_20@@6 f_53@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5540_5600_13555#PolymorphicMapType_5540| ExhaleHeap@@2) o2_20@@6 f_53@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_5600_15018 pm_f_20@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@4 T@PolymorphicMapType_5540) (ExhaleHeap@@3 T@PolymorphicMapType_5540) (Mask@@4 T@PolymorphicMapType_5561) (o_41 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_5540_3500_53#PolymorphicMapType_5540| Heap@@4) o_41 $allocated) (select (|PolymorphicMapType_5540_3500_53#PolymorphicMapType_5540| ExhaleHeap@@3) o_41 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_5540_3500_53#PolymorphicMapType_5540| ExhaleHeap@@3) o_41 $allocated))
)))
(assert (forall ((p T@Field_5600_13378) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_5600_5600 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_5600_5600 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_2864) (s1 T@Seq_2864) (n@@6 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_2864|)) (not (= s1 |Seq#Empty_2864|))) (<= (|Seq#Length_2864| s0) n@@6)) (< n@@6 (|Seq#Length_2864| (|Seq#Append_2864| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@6 (|Seq#Length_2864| s0)) (|Seq#Length_2864| s0)) n@@6) (= (|Seq#Index_2864| (|Seq#Append_2864| s0 s1) n@@6) (|Seq#Index_2864| s1 (|Seq#Sub| n@@6 (|Seq#Length_2864| s0))))))
 :qid |stdinbpl.240:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2864| (|Seq#Append_2864| s0 s1) n@@6))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_5540) (ExhaleHeap@@4 T@PolymorphicMapType_5540) (Mask@@5 T@PolymorphicMapType_5561) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (succHeap Heap@@5 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_5561) (o_2@@3 T@Ref) (f_4@@3 T@Field_5600_13511) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_5561_5600_17072#PolymorphicMapType_5561| Mask@@6) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_5600_17981 f_4@@3))) (not (IsWandField_5600_17997 f_4@@3))) (<= (select (|PolymorphicMapType_5561_5600_17072#PolymorphicMapType_5561| Mask@@6) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_5561_5600_17072#PolymorphicMapType_5561| Mask@@6) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_5561) (o_2@@4 T@Ref) (f_4@@4 T@Field_5600_13378) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_5561_5600_13378#PolymorphicMapType_5561| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_5600_13469 f_4@@4))) (not (IsWandField_5600_15018 f_4@@4))) (<= (select (|PolymorphicMapType_5561_5600_13378#PolymorphicMapType_5561| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_5561_5600_13378#PolymorphicMapType_5561| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_5561) (o_2@@5 T@Ref) (f_4@@5 T@Field_5613_5614) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_5561_5600_5614#PolymorphicMapType_5561| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_5600_5614 f_4@@5))) (not (IsWandField_5600_5614 f_4@@5))) (<= (select (|PolymorphicMapType_5561_5600_5614#PolymorphicMapType_5561| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_5561_5600_5614#PolymorphicMapType_5561| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_5561) (o_2@@6 T@Ref) (f_4@@6 T@Field_5600_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_5561_5600_53#PolymorphicMapType_5561| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_5600_53 f_4@@6))) (not (IsWandField_5600_53 f_4@@6))) (<= (select (|PolymorphicMapType_5561_5600_53#PolymorphicMapType_5561| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_5561_5600_53#PolymorphicMapType_5561| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_5561) (o_2@@7 T@Ref) (f_4@@7 T@Field_5600_13511) ) (! (= (HasDirectPerm_5600_18352 Mask@@10 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_5561_5600_17072#PolymorphicMapType_5561| Mask@@10) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5600_18352 Mask@@10 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_5561) (o_2@@8 T@Ref) (f_4@@8 T@Field_5600_13378) ) (! (= (HasDirectPerm_5600_13442 Mask@@11 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_5561_5600_13378#PolymorphicMapType_5561| Mask@@11) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5600_13442 Mask@@11 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_5561) (o_2@@9 T@Ref) (f_4@@9 T@Field_5613_5614) ) (! (= (HasDirectPerm_5600_5614 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_5561_5600_5614#PolymorphicMapType_5561| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5600_5614 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_5561) (o_2@@10 T@Ref) (f_4@@10 T@Field_5600_53) ) (! (= (HasDirectPerm_5600_53 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_5561_5600_53#PolymorphicMapType_5561| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5600_53 Mask@@13 o_2@@10 f_4@@10))
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
(assert (forall ((Heap@@6 T@PolymorphicMapType_5540) (ExhaleHeap@@5 T@PolymorphicMapType_5540) (Mask@@14 T@PolymorphicMapType_5561) (o_41@@0 T@Ref) (f_53@@7 T@Field_5600_13511) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (=> (HasDirectPerm_5600_18352 Mask@@14 o_41@@0 f_53@@7) (= (select (|PolymorphicMapType_5540_5600_13555#PolymorphicMapType_5540| Heap@@6) o_41@@0 f_53@@7) (select (|PolymorphicMapType_5540_5600_13555#PolymorphicMapType_5540| ExhaleHeap@@5) o_41@@0 f_53@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (select (|PolymorphicMapType_5540_5600_13555#PolymorphicMapType_5540| ExhaleHeap@@5) o_41@@0 f_53@@7))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_5540) (ExhaleHeap@@6 T@PolymorphicMapType_5540) (Mask@@15 T@PolymorphicMapType_5561) (o_41@@1 T@Ref) (f_53@@8 T@Field_5600_13378) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (=> (HasDirectPerm_5600_13442 Mask@@15 o_41@@1 f_53@@8) (= (select (|PolymorphicMapType_5540_5600_13378#PolymorphicMapType_5540| Heap@@7) o_41@@1 f_53@@8) (select (|PolymorphicMapType_5540_5600_13378#PolymorphicMapType_5540| ExhaleHeap@@6) o_41@@1 f_53@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (select (|PolymorphicMapType_5540_5600_13378#PolymorphicMapType_5540| ExhaleHeap@@6) o_41@@1 f_53@@8))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_5540) (ExhaleHeap@@7 T@PolymorphicMapType_5540) (Mask@@16 T@PolymorphicMapType_5561) (o_41@@2 T@Ref) (f_53@@9 T@Field_5613_5614) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (=> (HasDirectPerm_5600_5614 Mask@@16 o_41@@2 f_53@@9) (= (select (|PolymorphicMapType_5540_3503_3504#PolymorphicMapType_5540| Heap@@8) o_41@@2 f_53@@9) (select (|PolymorphicMapType_5540_3503_3504#PolymorphicMapType_5540| ExhaleHeap@@7) o_41@@2 f_53@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (select (|PolymorphicMapType_5540_3503_3504#PolymorphicMapType_5540| ExhaleHeap@@7) o_41@@2 f_53@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_5540) (ExhaleHeap@@8 T@PolymorphicMapType_5540) (Mask@@17 T@PolymorphicMapType_5561) (o_41@@3 T@Ref) (f_53@@10 T@Field_5600_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (=> (HasDirectPerm_5600_53 Mask@@17 o_41@@3 f_53@@10) (= (select (|PolymorphicMapType_5540_3500_53#PolymorphicMapType_5540| Heap@@9) o_41@@3 f_53@@10) (select (|PolymorphicMapType_5540_3500_53#PolymorphicMapType_5540| ExhaleHeap@@8) o_41@@3 f_53@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (select (|PolymorphicMapType_5540_3500_53#PolymorphicMapType_5540| ExhaleHeap@@8) o_41@@3 f_53@@10))
)))
(assert (forall ((s0@@0 T@Seq_2864) (s1@@0 T@Seq_2864) ) (!  (=> (and (not (= s0@@0 |Seq#Empty_2864|)) (not (= s1@@0 |Seq#Empty_2864|))) (= (|Seq#Length_2864| (|Seq#Append_2864| s0@@0 s1@@0)) (+ (|Seq#Length_2864| s0@@0) (|Seq#Length_2864| s1@@0))))
 :qid |stdinbpl.209:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2864| (|Seq#Append_2864| s0@@0 s1@@0)))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_5600_13511) ) (! (= (select (|PolymorphicMapType_5561_5600_17072#PolymorphicMapType_5561| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5561_5600_17072#PolymorphicMapType_5561| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_5600_13378) ) (! (= (select (|PolymorphicMapType_5561_5600_13378#PolymorphicMapType_5561| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5561_5600_13378#PolymorphicMapType_5561| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_5613_5614) ) (! (= (select (|PolymorphicMapType_5561_5600_5614#PolymorphicMapType_5561| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5561_5600_5614#PolymorphicMapType_5561| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_5600_53) ) (! (= (select (|PolymorphicMapType_5561_5600_53#PolymorphicMapType_5561| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5561_5600_53#PolymorphicMapType_5561| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((s@@7 T@Seq_2864) (t@@0 T@Seq_2864) (n@@7 Int) ) (!  (=> (and (> n@@7 0) (> n@@7 (|Seq#Length_2864| s@@7))) (and (= (|Seq#Add| (|Seq#Sub| n@@7 (|Seq#Length_2864| s@@7)) (|Seq#Length_2864| s@@7)) n@@7) (= (|Seq#Drop_2864| (|Seq#Append_2864| s@@7 t@@0) n@@7) (|Seq#Drop_2864| t@@0 (|Seq#Sub| n@@7 (|Seq#Length_2864| s@@7))))))
 :qid |stdinbpl.366:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_2864| (|Seq#Append_2864| s@@7 t@@0) n@@7))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_5561) (SummandMask1 T@PolymorphicMapType_5561) (SummandMask2 T@PolymorphicMapType_5561) (o_2@@15 T@Ref) (f_4@@15 T@Field_5600_13511) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_5561_5600_17072#PolymorphicMapType_5561| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_5561_5600_17072#PolymorphicMapType_5561| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_5561_5600_17072#PolymorphicMapType_5561| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5561_5600_17072#PolymorphicMapType_5561| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5561_5600_17072#PolymorphicMapType_5561| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5561_5600_17072#PolymorphicMapType_5561| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_5561) (SummandMask1@@0 T@PolymorphicMapType_5561) (SummandMask2@@0 T@PolymorphicMapType_5561) (o_2@@16 T@Ref) (f_4@@16 T@Field_5600_13378) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_5561_5600_13378#PolymorphicMapType_5561| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_5561_5600_13378#PolymorphicMapType_5561| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_5561_5600_13378#PolymorphicMapType_5561| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5561_5600_13378#PolymorphicMapType_5561| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5561_5600_13378#PolymorphicMapType_5561| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5561_5600_13378#PolymorphicMapType_5561| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_5561) (SummandMask1@@1 T@PolymorphicMapType_5561) (SummandMask2@@1 T@PolymorphicMapType_5561) (o_2@@17 T@Ref) (f_4@@17 T@Field_5613_5614) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_5561_5600_5614#PolymorphicMapType_5561| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_5561_5600_5614#PolymorphicMapType_5561| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_5561_5600_5614#PolymorphicMapType_5561| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5561_5600_5614#PolymorphicMapType_5561| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5561_5600_5614#PolymorphicMapType_5561| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5561_5600_5614#PolymorphicMapType_5561| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_5561) (SummandMask1@@2 T@PolymorphicMapType_5561) (SummandMask2@@2 T@PolymorphicMapType_5561) (o_2@@18 T@Ref) (f_4@@18 T@Field_5600_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_5561_5600_53#PolymorphicMapType_5561| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_5561_5600_53#PolymorphicMapType_5561| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_5561_5600_53#PolymorphicMapType_5561| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5561_5600_53#PolymorphicMapType_5561| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5561_5600_53#PolymorphicMapType_5561| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5561_5600_53#PolymorphicMapType_5561| SummandMask2@@2) o_2@@18 f_4@@18))
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
(assert (forall ((s@@8 T@Seq_2864) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length_2864| s@@8))) (|Seq#ContainsTrigger_2985| s@@8 (|Seq#Index_2864| s@@8 i@@2)))
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
(assert (forall ((Heap@@10 T@PolymorphicMapType_5540) (o_15 T@Ref) (f_54 T@Field_5600_13378) (v@@2 T@FrameType) ) (! (succHeap Heap@@10 (PolymorphicMapType_5540 (|PolymorphicMapType_5540_3500_53#PolymorphicMapType_5540| Heap@@10) (|PolymorphicMapType_5540_3503_3504#PolymorphicMapType_5540| Heap@@10) (|PolymorphicMapType_5540_5600_13555#PolymorphicMapType_5540| Heap@@10) (store (|PolymorphicMapType_5540_5600_13378#PolymorphicMapType_5540| Heap@@10) o_15 f_54 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5540 (|PolymorphicMapType_5540_3500_53#PolymorphicMapType_5540| Heap@@10) (|PolymorphicMapType_5540_3503_3504#PolymorphicMapType_5540| Heap@@10) (|PolymorphicMapType_5540_5600_13555#PolymorphicMapType_5540| Heap@@10) (store (|PolymorphicMapType_5540_5600_13378#PolymorphicMapType_5540| Heap@@10) o_15 f_54 v@@2)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_5540) (o_15@@0 T@Ref) (f_54@@0 T@Field_5600_13511) (v@@3 T@PolymorphicMapType_6089) ) (! (succHeap Heap@@11 (PolymorphicMapType_5540 (|PolymorphicMapType_5540_3500_53#PolymorphicMapType_5540| Heap@@11) (|PolymorphicMapType_5540_3503_3504#PolymorphicMapType_5540| Heap@@11) (store (|PolymorphicMapType_5540_5600_13555#PolymorphicMapType_5540| Heap@@11) o_15@@0 f_54@@0 v@@3) (|PolymorphicMapType_5540_5600_13378#PolymorphicMapType_5540| Heap@@11)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5540 (|PolymorphicMapType_5540_3500_53#PolymorphicMapType_5540| Heap@@11) (|PolymorphicMapType_5540_3503_3504#PolymorphicMapType_5540| Heap@@11) (store (|PolymorphicMapType_5540_5600_13555#PolymorphicMapType_5540| Heap@@11) o_15@@0 f_54@@0 v@@3) (|PolymorphicMapType_5540_5600_13378#PolymorphicMapType_5540| Heap@@11)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_5540) (o_15@@1 T@Ref) (f_54@@1 T@Field_5613_5614) (v@@4 T@Ref) ) (! (succHeap Heap@@12 (PolymorphicMapType_5540 (|PolymorphicMapType_5540_3500_53#PolymorphicMapType_5540| Heap@@12) (store (|PolymorphicMapType_5540_3503_3504#PolymorphicMapType_5540| Heap@@12) o_15@@1 f_54@@1 v@@4) (|PolymorphicMapType_5540_5600_13555#PolymorphicMapType_5540| Heap@@12) (|PolymorphicMapType_5540_5600_13378#PolymorphicMapType_5540| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5540 (|PolymorphicMapType_5540_3500_53#PolymorphicMapType_5540| Heap@@12) (store (|PolymorphicMapType_5540_3503_3504#PolymorphicMapType_5540| Heap@@12) o_15@@1 f_54@@1 v@@4) (|PolymorphicMapType_5540_5600_13555#PolymorphicMapType_5540| Heap@@12) (|PolymorphicMapType_5540_5600_13378#PolymorphicMapType_5540| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_5540) (o_15@@2 T@Ref) (f_54@@2 T@Field_5600_53) (v@@5 Bool) ) (! (succHeap Heap@@13 (PolymorphicMapType_5540 (store (|PolymorphicMapType_5540_3500_53#PolymorphicMapType_5540| Heap@@13) o_15@@2 f_54@@2 v@@5) (|PolymorphicMapType_5540_3503_3504#PolymorphicMapType_5540| Heap@@13) (|PolymorphicMapType_5540_5600_13555#PolymorphicMapType_5540| Heap@@13) (|PolymorphicMapType_5540_5600_13378#PolymorphicMapType_5540| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5540 (store (|PolymorphicMapType_5540_3500_53#PolymorphicMapType_5540| Heap@@13) o_15@@2 f_54@@2 v@@5) (|PolymorphicMapType_5540_3503_3504#PolymorphicMapType_5540| Heap@@13) (|PolymorphicMapType_5540_5600_13555#PolymorphicMapType_5540| Heap@@13) (|PolymorphicMapType_5540_5600_13378#PolymorphicMapType_5540| Heap@@13)))
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
(assert (forall ((o_15@@3 T@Ref) (f_23 T@Field_5613_5614) (Heap@@14 T@PolymorphicMapType_5540) ) (!  (=> (select (|PolymorphicMapType_5540_3500_53#PolymorphicMapType_5540| Heap@@14) o_15@@3 $allocated) (select (|PolymorphicMapType_5540_3500_53#PolymorphicMapType_5540| Heap@@14) (select (|PolymorphicMapType_5540_3503_3504#PolymorphicMapType_5540| Heap@@14) o_15@@3 f_23) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_5540_3503_3504#PolymorphicMapType_5540| Heap@@14) o_15@@3 f_23))
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
(assert (forall ((p@@1 T@Field_5600_13378) (v_1@@0 T@FrameType) (q T@Field_5600_13378) (w@@0 T@FrameType) (r T@Field_5600_13378) (u T@FrameType) ) (!  (=> (and (InsidePredicate_5600_5600 p@@1 v_1@@0 q w@@0) (InsidePredicate_5600_5600 q w@@0 r u)) (InsidePredicate_5600_5600 p@@1 v_1@@0 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5600_5600 p@@1 v_1@@0 q w@@0) (InsidePredicate_5600_5600 q w@@0 r u))
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
(declare-fun a_2 () T@Seq_2864)
(declare-fun j_11_1 () Int)
(declare-fun j_17 () Int)
(declare-fun Heap@@15 () T@PolymorphicMapType_5540)
(declare-fun j_16 () Int)
(declare-fun j_13 () Int)
(declare-fun j_15 () Int)
(set-info :boogie-vc-id m_17)
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
 (=> (= (ControlFlow 0 0) 34) (let ((anon25_correct true))
(let ((anon40_Else_correct  (=> (and (not (|Seq#Contains_2864| a_2 j_11_1)) (= (ControlFlow 0 25) 22)) anon25_correct)))
(let ((anon40_Then_correct  (=> (|Seq#Contains_2864| a_2 j_11_1) (and (=> (= (ControlFlow 0 23) (- 0 24)) (exists ((k_3 Int) ) (!  (and (|Seq#Contains_2864| a_2 k_3) (> k_3 0))
 :qid |stdinbpl.668:19|
 :skolemid |64|
 :pattern ( (|Seq#ContainsTrigger_2985| a_2 k_3))
 :pattern ( (|Seq#Contains_2864| a_2 k_3))
))) (=> (exists ((k_3@@0 Int) ) (!  (and (|Seq#Contains_2864| a_2 k_3@@0) (> k_3@@0 0))
 :qid |stdinbpl.668:19|
 :skolemid |64|
 :pattern ( (|Seq#ContainsTrigger_2985| a_2 k_3@@0))
 :pattern ( (|Seq#Contains_2864| a_2 k_3@@0))
)) (=> (= (ControlFlow 0 23) 22) anon25_correct))))))
(let ((anon38_Then_correct true))
(let ((anon21_correct true))
(let ((anon37_Then_correct  (=> (|Seq#Contains_2864| a_2 j_17) (and (=> (= (ControlFlow 0 21) 20) anon38_Then_correct) (=> (= (ControlFlow 0 21) 18) anon21_correct)))))
(let ((anon37_Else_correct  (=> (and (not (|Seq#Contains_2864| a_2 j_17)) (= (ControlFlow 0 19) 18)) anon21_correct)))
(let ((anon39_Else_correct true))
(let ((anon34_Else_correct  (and (=> (= (ControlFlow 0 26) (- 0 27)) (exists ((j_9_1 Int) ) (!  (and (and (<= 0 j_9_1) (< j_9_1 (|Seq#Length_2864| a_2))) (> (|Seq#Index_2864| a_2 j_9_1) 0))
 :qid |stdinbpl.644:15|
 :skolemid |63|
 :pattern ( (|Seq#Index_2864| a_2 j_9_1))
))) (=> (exists ((j_9_1@@0 Int) ) (!  (and (and (<= 0 j_9_1@@0) (< j_9_1@@0 (|Seq#Length_2864| a_2))) (> (|Seq#Index_2864| a_2 j_9_1@@0) 0))
 :qid |stdinbpl.644:15|
 :skolemid |63|
 :pattern ( (|Seq#Index_2864| a_2 j_9_1@@0))
)) (=> (state Heap@@15 ZeroMask) (and (and (and (and (=> (= (ControlFlow 0 26) 17) anon39_Else_correct) (=> (= (ControlFlow 0 26) 23) anon40_Then_correct)) (=> (= (ControlFlow 0 26) 25) anon40_Else_correct)) (=> (= (ControlFlow 0 26) 21) anon37_Then_correct)) (=> (= (ControlFlow 0 26) 19) anon37_Else_correct)))))))
(let ((anon16_correct true))
(let ((anon35_Else_correct  (=> (and (not (and (<= 0 j_16) (< j_16 (|Seq#Length_2864| a_2)))) (= (ControlFlow 0 16) 12)) anon16_correct)))
(let ((anon35_Then_correct  (=> (and (<= 0 j_16) (< j_16 (|Seq#Length_2864| a_2))) (and (=> (= (ControlFlow 0 13) (- 0 15)) (>= j_16 0)) (=> (>= j_16 0) (and (=> (= (ControlFlow 0 13) (- 0 14)) (< j_16 (|Seq#Length_2864| a_2))) (=> (< j_16 (|Seq#Length_2864| a_2)) (=> (= (ControlFlow 0 13) 12) anon16_correct))))))))
(let ((anon33_Else_correct  (and (=> (= (ControlFlow 0 28) (- 0 29)) (exists ((j_7_1 Int) ) (!  (and (|Seq#Contains_2864| a_2 j_7_1) (> j_7_1 0))
 :qid |stdinbpl.623:15|
 :skolemid |62|
 :pattern ( (|Seq#ContainsTrigger_2985| a_2 j_7_1))
 :pattern ( (|Seq#Contains_2864| a_2 j_7_1))
))) (=> (exists ((j_7_1@@0 Int) ) (!  (and (|Seq#Contains_2864| a_2 j_7_1@@0) (> j_7_1@@0 0))
 :qid |stdinbpl.623:15|
 :skolemid |62|
 :pattern ( (|Seq#ContainsTrigger_2985| a_2 j_7_1@@0))
 :pattern ( (|Seq#Contains_2864| a_2 j_7_1@@0))
)) (=> (state Heap@@15 ZeroMask) (and (and (=> (= (ControlFlow 0 28) 26) anon34_Else_correct) (=> (= (ControlFlow 0 28) 13) anon35_Then_correct)) (=> (= (ControlFlow 0 28) 16) anon35_Else_correct)))))))
(let ((anon33_Then_correct true))
(let ((anon30_Else_correct  (=> (and (forall ((j_5 Int) ) (!  (=> (|Seq#Contains_2864| a_2 j_5) (exists ((k_1 Int) ) (!  (and (|Seq#Contains_2864| a_2 k_1) (> k_1 0))
 :qid |stdinbpl.601:42|
 :skolemid |60|
 :pattern ( (|Seq#ContainsTrigger_2985| a_2 k_1))
 :pattern ( (|Seq#Contains_2864| a_2 k_1))
)))
 :qid |stdinbpl.599:20|
 :skolemid |61|
 :pattern ( (|Seq#ContainsTrigger_2985| a_2 j_5))
 :pattern ( (|Seq#Contains_2864| a_2 j_5))
)) (state Heap@@15 ZeroMask)) (and (=> (= (ControlFlow 0 30) 11) anon33_Then_correct) (=> (= (ControlFlow 0 30) 28) anon33_Else_correct)))))
(let ((anon32_Then_correct true))
(let ((anon10_correct true))
(let ((anon31_Then_correct  (=> (|Seq#Contains_2864| a_2 j_13) (and (=> (= (ControlFlow 0 10) 9) anon32_Then_correct) (=> (= (ControlFlow 0 10) 7) anon10_correct)))))
(let ((anon31_Else_correct  (=> (and (not (|Seq#Contains_2864| a_2 j_13)) (= (ControlFlow 0 8) 7)) anon10_correct)))
(let ((anon28_Else_correct  (=> (and (exists ((j_3 Int) ) (!  (and (and (<= 0 j_3) (< j_3 (|Seq#Length_2864| a_2))) (> (|Seq#Index_2864| a_2 j_3) 0))
 :qid |stdinbpl.584:20|
 :skolemid |59|
 :pattern ( (|Seq#Index_2864| a_2 j_3))
)) (state Heap@@15 ZeroMask)) (and (and (=> (= (ControlFlow 0 31) 30) anon30_Else_correct) (=> (= (ControlFlow 0 31) 10) anon31_Then_correct)) (=> (= (ControlFlow 0 31) 8) anon31_Else_correct)))))
(let ((anon5_correct true))
(let ((anon29_Else_correct  (=> (and (not (and (<= 0 j_15) (< j_15 (|Seq#Length_2864| a_2)))) (= (ControlFlow 0 6) 2)) anon5_correct)))
(let ((anon29_Then_correct  (=> (and (<= 0 j_15) (< j_15 (|Seq#Length_2864| a_2))) (and (=> (= (ControlFlow 0 3) (- 0 5)) (>= j_15 0)) (=> (>= j_15 0) (and (=> (= (ControlFlow 0 3) (- 0 4)) (< j_15 (|Seq#Length_2864| a_2))) (=> (< j_15 (|Seq#Length_2864| a_2)) (=> (= (ControlFlow 0 3) 2) anon5_correct))))))))
(let ((anon27_Else_correct  (=> (and (exists ((j_1 Int) ) (!  (and (|Seq#Contains_2864| a_2 j_1) (> j_1 0))
 :qid |stdinbpl.568:20|
 :skolemid |58|
 :pattern ( (|Seq#ContainsTrigger_2985| a_2 j_1))
 :pattern ( (|Seq#Contains_2864| a_2 j_1))
)) (state Heap@@15 ZeroMask)) (and (and (=> (= (ControlFlow 0 32) 31) anon28_Else_correct) (=> (= (ControlFlow 0 32) 3) anon29_Then_correct)) (=> (= (ControlFlow 0 32) 6) anon29_Else_correct)))))
(let ((anon27_Then_correct true))
(let ((anon0_correct  (=> (and (state Heap@@15 ZeroMask) AssumePermUpperBound) (and (=> (= (ControlFlow 0 33) 1) anon27_Then_correct) (=> (= (ControlFlow 0 33) 32) anon27_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 34) 33) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
