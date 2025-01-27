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
(declare-sort T@Field_5639_53 0)
(declare-sort T@Field_5652_5653 0)
(declare-sort T@Field_5639_13547 0)
(declare-sort T@Field_5639_13414 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_5600 0)) (((PolymorphicMapType_5600 (|PolymorphicMapType_5600_5639_53#PolymorphicMapType_5600| (Array T@Ref T@Field_5639_53 Real)) (|PolymorphicMapType_5600_5639_5653#PolymorphicMapType_5600| (Array T@Ref T@Field_5652_5653 Real)) (|PolymorphicMapType_5600_5639_13414#PolymorphicMapType_5600| (Array T@Ref T@Field_5639_13414 Real)) (|PolymorphicMapType_5600_5639_17108#PolymorphicMapType_5600| (Array T@Ref T@Field_5639_13547 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6128 0)) (((PolymorphicMapType_6128 (|PolymorphicMapType_6128_5639_53#PolymorphicMapType_6128| (Array T@Ref T@Field_5639_53 Bool)) (|PolymorphicMapType_6128_5639_5653#PolymorphicMapType_6128| (Array T@Ref T@Field_5652_5653 Bool)) (|PolymorphicMapType_6128_5639_13414#PolymorphicMapType_6128| (Array T@Ref T@Field_5639_13414 Bool)) (|PolymorphicMapType_6128_5639_14527#PolymorphicMapType_6128| (Array T@Ref T@Field_5639_13547 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5579 0)) (((PolymorphicMapType_5579 (|PolymorphicMapType_5579_3513_53#PolymorphicMapType_5579| (Array T@Ref T@Field_5639_53 Bool)) (|PolymorphicMapType_5579_3516_3517#PolymorphicMapType_5579| (Array T@Ref T@Field_5652_5653 T@Ref)) (|PolymorphicMapType_5579_5639_13591#PolymorphicMapType_5579| (Array T@Ref T@Field_5639_13547 T@PolymorphicMapType_6128)) (|PolymorphicMapType_5579_5639_13414#PolymorphicMapType_5579| (Array T@Ref T@Field_5639_13414 T@FrameType)) ) ) ))
(declare-sort T@Seq_2867 0)
(declare-fun |Seq#Length_2867| (T@Seq_2867) Int)
(declare-fun |Seq#Drop_2867| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun state (T@PolymorphicMapType_5579 T@PolymorphicMapType_5600) Bool)
(declare-fun |trigger_issue'| (T@PolymorphicMapType_5579 Int Int) Bool)
(declare-fun |trigger_issue#frame| (T@FrameType Int Int) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun succHeap (T@PolymorphicMapType_5579 T@PolymorphicMapType_5579) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_5579 T@PolymorphicMapType_5579) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_5600) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_6128)
(declare-fun dummyFunction_3230 (Bool) Bool)
(declare-fun |trigger_issue#triggerStateless| (Int Int) Bool)
(declare-fun |Seq#Index_2867| (T@Seq_2867 Int) Int)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Empty_2867| () T@Seq_2867)
(declare-fun |Seq#Update_2867| (T@Seq_2867 Int Int) T@Seq_2867)
(declare-fun |Seq#Take_2867| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun |Seq#Contains_2867| (T@Seq_2867 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2867)
(declare-fun |Seq#Skolem_2867| (T@Seq_2867 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_5579 T@PolymorphicMapType_5579 T@PolymorphicMapType_5600) Bool)
(declare-fun IsPredicateField_5639_13505 (T@Field_5639_13414) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_5639 (T@Field_5639_13414) T@Field_5639_13547)
(declare-fun HasDirectPerm_5639_13478 (T@PolymorphicMapType_5600 T@Ref T@Field_5639_13414) Bool)
(declare-fun IsWandField_5639_15054 (T@Field_5639_13414) Bool)
(declare-fun WandMaskField_5639 (T@Field_5639_13414) T@Field_5639_13547)
(declare-fun |Seq#Singleton_2867| (Int) T@Seq_2867)
(declare-fun |Seq#Append_2867| (T@Seq_2867 T@Seq_2867) T@Seq_2867)
(declare-fun dummyHeap () T@PolymorphicMapType_5579)
(declare-fun ZeroMask () T@PolymorphicMapType_5600)
(declare-fun $allocated () T@Field_5639_53)
(declare-fun InsidePredicate_5639_5639 (T@Field_5639_13414 T@FrameType T@Field_5639_13414 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5639_18017 (T@Field_5639_13547) Bool)
(declare-fun IsWandField_5639_18033 (T@Field_5639_13547) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_5639_5653 (T@Field_5652_5653) Bool)
(declare-fun IsWandField_5639_5653 (T@Field_5652_5653) Bool)
(declare-fun IsPredicateField_5639_53 (T@Field_5639_53) Bool)
(declare-fun IsWandField_5639_53 (T@Field_5639_53) Bool)
(declare-fun HasDirectPerm_5639_18388 (T@PolymorphicMapType_5600 T@Ref T@Field_5639_13547) Bool)
(declare-fun HasDirectPerm_5639_5653 (T@PolymorphicMapType_5600 T@Ref T@Field_5652_5653) Bool)
(declare-fun HasDirectPerm_5639_53 (T@PolymorphicMapType_5600 T@Ref T@Field_5639_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_5600 T@PolymorphicMapType_5600 T@PolymorphicMapType_5600) Bool)
(declare-fun |Seq#Equal_2867| (T@Seq_2867 T@Seq_2867) Bool)
(declare-fun |Seq#ContainsTrigger_2867| (T@Seq_2867 Int) Bool)
(declare-fun trigger_issue (T@PolymorphicMapType_5579 Int Int) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |Seq#SkolemDiff_2867| (T@Seq_2867 T@Seq_2867) Int)
(assert (forall ((s T@Seq_2867) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_2867| s)) (= (|Seq#Length_2867| (|Seq#Drop_2867| s n)) (- (|Seq#Length_2867| s) n))) (=> (< (|Seq#Length_2867| s) n) (= (|Seq#Length_2867| (|Seq#Drop_2867| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_2867| (|Seq#Drop_2867| s n)) (|Seq#Length_2867| s))))
 :qid |stdinbpl.276:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2867| (|Seq#Drop_2867| s n)))
 :pattern ( (|Seq#Length_2867| s) (|Seq#Drop_2867| s n))
)))
(assert (forall ((Heap T@PolymorphicMapType_5579) (Mask T@PolymorphicMapType_5600) (lo Int) (hi Int) ) (!  (=> (state Heap Mask) (= (|trigger_issue'| Heap lo hi) (|trigger_issue#frame| EmptyFrame lo hi)))
 :qid |stdinbpl.570:15|
 :skolemid |62|
 :pattern ( (state Heap Mask) (|trigger_issue'| Heap lo hi))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_5579) (Heap1 T@PolymorphicMapType_5579) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_5579) (Mask@@0 T@PolymorphicMapType_5600) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_5579) (Heap1@@0 T@PolymorphicMapType_5579) (Heap2 T@PolymorphicMapType_5579) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_5639_13547) ) (!  (not (select (|PolymorphicMapType_6128_5639_14527#PolymorphicMapType_6128| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6128_5639_14527#PolymorphicMapType_6128| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_5639_13414) ) (!  (not (select (|PolymorphicMapType_6128_5639_13414#PolymorphicMapType_6128| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6128_5639_13414#PolymorphicMapType_6128| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_5652_5653) ) (!  (not (select (|PolymorphicMapType_6128_5639_5653#PolymorphicMapType_6128| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6128_5639_5653#PolymorphicMapType_6128| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_5639_53) ) (!  (not (select (|PolymorphicMapType_6128_5639_53#PolymorphicMapType_6128| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6128_5639_53#PolymorphicMapType_6128| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_5579) (lo@@0 Int) (hi@@0 Int) ) (! (dummyFunction_3230 (|trigger_issue#triggerStateless| lo@@0 hi@@0))
 :qid |stdinbpl.554:15|
 :skolemid |59|
 :pattern ( (|trigger_issue'| Heap@@1 lo@@0 hi@@0))
)))
(assert (forall ((s@@0 T@Seq_2867) (n@@0 Int) (j Int) ) (!  (=> (and (and (< 0 n@@0) (<= 0 j)) (< j (- (|Seq#Length_2867| s@@0) n@@0))) (and (= (|Seq#Sub| (|Seq#Add| j n@@0) n@@0) j) (= (|Seq#Index_2867| (|Seq#Drop_2867| s@@0 n@@0) j) (|Seq#Index_2867| s@@0 (|Seq#Add| j n@@0)))))
 :qid |stdinbpl.297:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2867| (|Seq#Drop_2867| s@@0 n@@0) j))
)))
(assert (= (|Seq#Length_2867| |Seq#Empty_2867|) 0))
(assert (forall ((s@@1 T@Seq_2867) (i Int) (v Int) (n@@1 Int) ) (!  (=> (and (<= 0 n@@1) (< n@@1 (|Seq#Length_2867| s@@1))) (and (=> (= i n@@1) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@1 i v) n@@1) v)) (=> (not (= i n@@1)) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@1 i v) n@@1) (|Seq#Index_2867| s@@1 n@@1)))))
 :qid |stdinbpl.252:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2867| (|Seq#Update_2867| s@@1 i v) n@@1))
 :pattern ( (|Seq#Index_2867| s@@1 n@@1) (|Seq#Update_2867| s@@1 i v))
)))
(assert (forall ((s@@2 T@Seq_2867) (n@@2 Int) ) (!  (and (=> (<= 0 n@@2) (and (=> (<= n@@2 (|Seq#Length_2867| s@@2)) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@2 n@@2)) n@@2)) (=> (< (|Seq#Length_2867| s@@2) n@@2) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@2 n@@2)) (|Seq#Length_2867| s@@2))))) (=> (< n@@2 0) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@2 n@@2)) 0)))
 :qid |stdinbpl.263:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2867| (|Seq#Take_2867| s@@2 n@@2)))
 :pattern ( (|Seq#Take_2867| s@@2 n@@2) (|Seq#Length_2867| s@@2))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@0 Int) ) (! (= (|Seq#Contains_2867| (|Seq#Range| q@min q@max) v@@0)  (and (<= q@min v@@0) (< v@@0 q@max)))
 :qid |stdinbpl.537:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2867| (|Seq#Range| q@min q@max) v@@0))
)))
(assert (forall ((s@@3 T@Seq_2867) (x Int) ) (!  (=> (|Seq#Contains_2867| s@@3 x) (and (and (<= 0 (|Seq#Skolem_2867| s@@3 x)) (< (|Seq#Skolem_2867| s@@3 x) (|Seq#Length_2867| s@@3))) (= (|Seq#Index_2867| s@@3 (|Seq#Skolem_2867| s@@3 x)) x)))
 :qid |stdinbpl.395:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2867| s@@3 x))
)))
(assert (forall ((s@@4 T@Seq_2867) (n@@3 Int) ) (!  (=> (<= n@@3 0) (= (|Seq#Drop_2867| s@@4 n@@3) s@@4))
 :qid |stdinbpl.379:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_2867| s@@4 n@@3))
)))
(assert (forall ((i@@0 Int) (j@@0 Int) ) (! (= (|Seq#Sub| i@@0 j@@0) (- i@@0 j@@0))
 :qid |stdinbpl.232:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@0 j@@0))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Add| i@@1 j@@1) (+ i@@1 j@@1))
 :qid |stdinbpl.230:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@1 j@@1))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_5579) (ExhaleHeap T@PolymorphicMapType_5579) (Mask@@1 T@PolymorphicMapType_5600) (pm_f_26 T@Field_5639_13414) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_5639_13478 Mask@@1 null pm_f_26) (IsPredicateField_5639_13505 pm_f_26)) (= (select (|PolymorphicMapType_5579_5639_13591#PolymorphicMapType_5579| Heap@@2) null (PredicateMaskField_5639 pm_f_26)) (select (|PolymorphicMapType_5579_5639_13591#PolymorphicMapType_5579| ExhaleHeap) null (PredicateMaskField_5639 pm_f_26)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@1) (IsPredicateField_5639_13505 pm_f_26) (select (|PolymorphicMapType_5579_5639_13591#PolymorphicMapType_5579| ExhaleHeap) null (PredicateMaskField_5639 pm_f_26)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_5579) (ExhaleHeap@@0 T@PolymorphicMapType_5579) (Mask@@2 T@PolymorphicMapType_5600) (pm_f_26@@0 T@Field_5639_13414) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_5639_13478 Mask@@2 null pm_f_26@@0) (IsWandField_5639_15054 pm_f_26@@0)) (= (select (|PolymorphicMapType_5579_5639_13591#PolymorphicMapType_5579| Heap@@3) null (WandMaskField_5639 pm_f_26@@0)) (select (|PolymorphicMapType_5579_5639_13591#PolymorphicMapType_5579| ExhaleHeap@@0) null (WandMaskField_5639 pm_f_26@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@2) (IsWandField_5639_15054 pm_f_26@@0) (select (|PolymorphicMapType_5579_5639_13591#PolymorphicMapType_5579| ExhaleHeap@@0) null (WandMaskField_5639 pm_f_26@@0)))
)))
(assert (forall ((x@@0 Int) (y Int) ) (! (= (|Seq#Contains_2867| (|Seq#Singleton_2867| x@@0) y) (= x@@0 y))
 :qid |stdinbpl.520:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2867| (|Seq#Singleton_2867| x@@0) y))
)))
(assert (forall ((s@@5 T@Seq_2867) (n@@4 Int) (j@@2 Int) ) (!  (=> (and (and (<= 0 j@@2) (< j@@2 n@@4)) (< j@@2 (|Seq#Length_2867| s@@5))) (= (|Seq#Index_2867| (|Seq#Take_2867| s@@5 n@@4) j@@2) (|Seq#Index_2867| s@@5 j@@2)))
 :qid |stdinbpl.271:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2867| (|Seq#Take_2867| s@@5 n@@4) j@@2))
 :pattern ( (|Seq#Index_2867| s@@5 j@@2) (|Seq#Take_2867| s@@5 n@@4))
)))
(assert (forall ((s@@6 T@Seq_2867) (t T@Seq_2867) (n@@5 Int) ) (!  (=> (and (and (> n@@5 0) (> n@@5 (|Seq#Length_2867| s@@6))) (< n@@5 (|Seq#Length_2867| (|Seq#Append_2867| s@@6 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@5 (|Seq#Length_2867| s@@6)) (|Seq#Length_2867| s@@6)) n@@5) (= (|Seq#Take_2867| (|Seq#Append_2867| s@@6 t) n@@5) (|Seq#Append_2867| s@@6 (|Seq#Take_2867| t (|Seq#Sub| n@@5 (|Seq#Length_2867| s@@6)))))))
 :qid |stdinbpl.356:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2867| (|Seq#Append_2867| s@@6 t) n@@5))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_5579) (ExhaleHeap@@1 T@PolymorphicMapType_5579) (Mask@@3 T@PolymorphicMapType_5600) (pm_f_26@@1 T@Field_5639_13414) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_5639_13478 Mask@@3 null pm_f_26@@1) (IsPredicateField_5639_13505 pm_f_26@@1)) (and (and (and (forall ((o2_26 T@Ref) (f_51 T@Field_5639_53) ) (!  (=> (select (|PolymorphicMapType_6128_5639_53#PolymorphicMapType_6128| (select (|PolymorphicMapType_5579_5639_13591#PolymorphicMapType_5579| Heap@@4) null (PredicateMaskField_5639 pm_f_26@@1))) o2_26 f_51) (= (select (|PolymorphicMapType_5579_3513_53#PolymorphicMapType_5579| Heap@@4) o2_26 f_51) (select (|PolymorphicMapType_5579_3513_53#PolymorphicMapType_5579| ExhaleHeap@@1) o2_26 f_51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5579_3513_53#PolymorphicMapType_5579| ExhaleHeap@@1) o2_26 f_51))
)) (forall ((o2_26@@0 T@Ref) (f_51@@0 T@Field_5652_5653) ) (!  (=> (select (|PolymorphicMapType_6128_5639_5653#PolymorphicMapType_6128| (select (|PolymorphicMapType_5579_5639_13591#PolymorphicMapType_5579| Heap@@4) null (PredicateMaskField_5639 pm_f_26@@1))) o2_26@@0 f_51@@0) (= (select (|PolymorphicMapType_5579_3516_3517#PolymorphicMapType_5579| Heap@@4) o2_26@@0 f_51@@0) (select (|PolymorphicMapType_5579_3516_3517#PolymorphicMapType_5579| ExhaleHeap@@1) o2_26@@0 f_51@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5579_3516_3517#PolymorphicMapType_5579| ExhaleHeap@@1) o2_26@@0 f_51@@0))
))) (forall ((o2_26@@1 T@Ref) (f_51@@1 T@Field_5639_13414) ) (!  (=> (select (|PolymorphicMapType_6128_5639_13414#PolymorphicMapType_6128| (select (|PolymorphicMapType_5579_5639_13591#PolymorphicMapType_5579| Heap@@4) null (PredicateMaskField_5639 pm_f_26@@1))) o2_26@@1 f_51@@1) (= (select (|PolymorphicMapType_5579_5639_13414#PolymorphicMapType_5579| Heap@@4) o2_26@@1 f_51@@1) (select (|PolymorphicMapType_5579_5639_13414#PolymorphicMapType_5579| ExhaleHeap@@1) o2_26@@1 f_51@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5579_5639_13414#PolymorphicMapType_5579| ExhaleHeap@@1) o2_26@@1 f_51@@1))
))) (forall ((o2_26@@2 T@Ref) (f_51@@2 T@Field_5639_13547) ) (!  (=> (select (|PolymorphicMapType_6128_5639_14527#PolymorphicMapType_6128| (select (|PolymorphicMapType_5579_5639_13591#PolymorphicMapType_5579| Heap@@4) null (PredicateMaskField_5639 pm_f_26@@1))) o2_26@@2 f_51@@2) (= (select (|PolymorphicMapType_5579_5639_13591#PolymorphicMapType_5579| Heap@@4) o2_26@@2 f_51@@2) (select (|PolymorphicMapType_5579_5639_13591#PolymorphicMapType_5579| ExhaleHeap@@1) o2_26@@2 f_51@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5579_5639_13591#PolymorphicMapType_5579| ExhaleHeap@@1) o2_26@@2 f_51@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@3) (IsPredicateField_5639_13505 pm_f_26@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_5579) (ExhaleHeap@@2 T@PolymorphicMapType_5579) (Mask@@4 T@PolymorphicMapType_5600) (pm_f_26@@2 T@Field_5639_13414) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_5639_13478 Mask@@4 null pm_f_26@@2) (IsWandField_5639_15054 pm_f_26@@2)) (and (and (and (forall ((o2_26@@3 T@Ref) (f_51@@3 T@Field_5639_53) ) (!  (=> (select (|PolymorphicMapType_6128_5639_53#PolymorphicMapType_6128| (select (|PolymorphicMapType_5579_5639_13591#PolymorphicMapType_5579| Heap@@5) null (WandMaskField_5639 pm_f_26@@2))) o2_26@@3 f_51@@3) (= (select (|PolymorphicMapType_5579_3513_53#PolymorphicMapType_5579| Heap@@5) o2_26@@3 f_51@@3) (select (|PolymorphicMapType_5579_3513_53#PolymorphicMapType_5579| ExhaleHeap@@2) o2_26@@3 f_51@@3)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5579_3513_53#PolymorphicMapType_5579| ExhaleHeap@@2) o2_26@@3 f_51@@3))
)) (forall ((o2_26@@4 T@Ref) (f_51@@4 T@Field_5652_5653) ) (!  (=> (select (|PolymorphicMapType_6128_5639_5653#PolymorphicMapType_6128| (select (|PolymorphicMapType_5579_5639_13591#PolymorphicMapType_5579| Heap@@5) null (WandMaskField_5639 pm_f_26@@2))) o2_26@@4 f_51@@4) (= (select (|PolymorphicMapType_5579_3516_3517#PolymorphicMapType_5579| Heap@@5) o2_26@@4 f_51@@4) (select (|PolymorphicMapType_5579_3516_3517#PolymorphicMapType_5579| ExhaleHeap@@2) o2_26@@4 f_51@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5579_3516_3517#PolymorphicMapType_5579| ExhaleHeap@@2) o2_26@@4 f_51@@4))
))) (forall ((o2_26@@5 T@Ref) (f_51@@5 T@Field_5639_13414) ) (!  (=> (select (|PolymorphicMapType_6128_5639_13414#PolymorphicMapType_6128| (select (|PolymorphicMapType_5579_5639_13591#PolymorphicMapType_5579| Heap@@5) null (WandMaskField_5639 pm_f_26@@2))) o2_26@@5 f_51@@5) (= (select (|PolymorphicMapType_5579_5639_13414#PolymorphicMapType_5579| Heap@@5) o2_26@@5 f_51@@5) (select (|PolymorphicMapType_5579_5639_13414#PolymorphicMapType_5579| ExhaleHeap@@2) o2_26@@5 f_51@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5579_5639_13414#PolymorphicMapType_5579| ExhaleHeap@@2) o2_26@@5 f_51@@5))
))) (forall ((o2_26@@6 T@Ref) (f_51@@6 T@Field_5639_13547) ) (!  (=> (select (|PolymorphicMapType_6128_5639_14527#PolymorphicMapType_6128| (select (|PolymorphicMapType_5579_5639_13591#PolymorphicMapType_5579| Heap@@5) null (WandMaskField_5639 pm_f_26@@2))) o2_26@@6 f_51@@6) (= (select (|PolymorphicMapType_5579_5639_13591#PolymorphicMapType_5579| Heap@@5) o2_26@@6 f_51@@6) (select (|PolymorphicMapType_5579_5639_13591#PolymorphicMapType_5579| ExhaleHeap@@2) o2_26@@6 f_51@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5579_5639_13591#PolymorphicMapType_5579| ExhaleHeap@@2) o2_26@@6 f_51@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@4) (IsWandField_5639_15054 pm_f_26@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@6 T@PolymorphicMapType_5579) (ExhaleHeap@@3 T@PolymorphicMapType_5579) (Mask@@5 T@PolymorphicMapType_5600) (o_38 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@5) (=> (select (|PolymorphicMapType_5579_3513_53#PolymorphicMapType_5579| Heap@@6) o_38 $allocated) (select (|PolymorphicMapType_5579_3513_53#PolymorphicMapType_5579| ExhaleHeap@@3) o_38 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@5) (select (|PolymorphicMapType_5579_3513_53#PolymorphicMapType_5579| ExhaleHeap@@3) o_38 $allocated))
)))
(assert (forall ((p T@Field_5639_13414) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_5639_5639 p v_1 p w))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_5639_5639 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_2867) (s1 T@Seq_2867) (n@@6 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_2867|)) (not (= s1 |Seq#Empty_2867|))) (<= (|Seq#Length_2867| s0) n@@6)) (< n@@6 (|Seq#Length_2867| (|Seq#Append_2867| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@6 (|Seq#Length_2867| s0)) (|Seq#Length_2867| s0)) n@@6) (= (|Seq#Index_2867| (|Seq#Append_2867| s0 s1) n@@6) (|Seq#Index_2867| s1 (|Seq#Sub| n@@6 (|Seq#Length_2867| s0))))))
 :qid |stdinbpl.243:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_2867| s0 s1) n@@6))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_5579) (ExhaleHeap@@4 T@PolymorphicMapType_5579) (Mask@@6 T@PolymorphicMapType_5600) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@6) (succHeap Heap@@7 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_5600) (o_2@@3 T@Ref) (f_4@@3 T@Field_5639_13547) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_5600_5639_17108#PolymorphicMapType_5600| Mask@@7) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_5639_18017 f_4@@3))) (not (IsWandField_5639_18033 f_4@@3))) (<= (select (|PolymorphicMapType_5600_5639_17108#PolymorphicMapType_5600| Mask@@7) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_5600_5639_17108#PolymorphicMapType_5600| Mask@@7) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_5600) (o_2@@4 T@Ref) (f_4@@4 T@Field_5639_13414) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_5600_5639_13414#PolymorphicMapType_5600| Mask@@8) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_5639_13505 f_4@@4))) (not (IsWandField_5639_15054 f_4@@4))) (<= (select (|PolymorphicMapType_5600_5639_13414#PolymorphicMapType_5600| Mask@@8) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_5600_5639_13414#PolymorphicMapType_5600| Mask@@8) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_5600) (o_2@@5 T@Ref) (f_4@@5 T@Field_5652_5653) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_5600_5639_5653#PolymorphicMapType_5600| Mask@@9) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_5639_5653 f_4@@5))) (not (IsWandField_5639_5653 f_4@@5))) (<= (select (|PolymorphicMapType_5600_5639_5653#PolymorphicMapType_5600| Mask@@9) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_5600_5639_5653#PolymorphicMapType_5600| Mask@@9) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_5600) (o_2@@6 T@Ref) (f_4@@6 T@Field_5639_53) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_5600_5639_53#PolymorphicMapType_5600| Mask@@10) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_5639_53 f_4@@6))) (not (IsWandField_5639_53 f_4@@6))) (<= (select (|PolymorphicMapType_5600_5639_53#PolymorphicMapType_5600| Mask@@10) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_5600_5639_53#PolymorphicMapType_5600| Mask@@10) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_5600) (o_2@@7 T@Ref) (f_4@@7 T@Field_5639_13547) ) (! (= (HasDirectPerm_5639_18388 Mask@@11 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_5600_5639_17108#PolymorphicMapType_5600| Mask@@11) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5639_18388 Mask@@11 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_5600) (o_2@@8 T@Ref) (f_4@@8 T@Field_5639_13414) ) (! (= (HasDirectPerm_5639_13478 Mask@@12 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_5600_5639_13414#PolymorphicMapType_5600| Mask@@12) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5639_13478 Mask@@12 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_5600) (o_2@@9 T@Ref) (f_4@@9 T@Field_5652_5653) ) (! (= (HasDirectPerm_5639_5653 Mask@@13 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_5600_5639_5653#PolymorphicMapType_5600| Mask@@13) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5639_5653 Mask@@13 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_5600) (o_2@@10 T@Ref) (f_4@@10 T@Field_5639_53) ) (! (= (HasDirectPerm_5639_53 Mask@@14 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_5600_5639_53#PolymorphicMapType_5600| Mask@@14) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5639_53 Mask@@14 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.162:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@3 Int) ) (!  (=> (and (<= 0 j@@3) (< j@@3 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2867| (|Seq#Range| q@min@@0 q@max@@0) j@@3) (+ q@min@@0 j@@3)))
 :qid |stdinbpl.535:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2867| (|Seq#Range| q@min@@0 q@max@@0) j@@3))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_5579) (ExhaleHeap@@5 T@PolymorphicMapType_5579) (Mask@@15 T@PolymorphicMapType_5600) (o_38@@0 T@Ref) (f_51@@7 T@Field_5639_13547) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@15) (=> (HasDirectPerm_5639_18388 Mask@@15 o_38@@0 f_51@@7) (= (select (|PolymorphicMapType_5579_5639_13591#PolymorphicMapType_5579| Heap@@8) o_38@@0 f_51@@7) (select (|PolymorphicMapType_5579_5639_13591#PolymorphicMapType_5579| ExhaleHeap@@5) o_38@@0 f_51@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@15) (select (|PolymorphicMapType_5579_5639_13591#PolymorphicMapType_5579| ExhaleHeap@@5) o_38@@0 f_51@@7))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_5579) (ExhaleHeap@@6 T@PolymorphicMapType_5579) (Mask@@16 T@PolymorphicMapType_5600) (o_38@@1 T@Ref) (f_51@@8 T@Field_5639_13414) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@16) (=> (HasDirectPerm_5639_13478 Mask@@16 o_38@@1 f_51@@8) (= (select (|PolymorphicMapType_5579_5639_13414#PolymorphicMapType_5579| Heap@@9) o_38@@1 f_51@@8) (select (|PolymorphicMapType_5579_5639_13414#PolymorphicMapType_5579| ExhaleHeap@@6) o_38@@1 f_51@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@16) (select (|PolymorphicMapType_5579_5639_13414#PolymorphicMapType_5579| ExhaleHeap@@6) o_38@@1 f_51@@8))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_5579) (ExhaleHeap@@7 T@PolymorphicMapType_5579) (Mask@@17 T@PolymorphicMapType_5600) (o_38@@2 T@Ref) (f_51@@9 T@Field_5652_5653) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@17) (=> (HasDirectPerm_5639_5653 Mask@@17 o_38@@2 f_51@@9) (= (select (|PolymorphicMapType_5579_3516_3517#PolymorphicMapType_5579| Heap@@10) o_38@@2 f_51@@9) (select (|PolymorphicMapType_5579_3516_3517#PolymorphicMapType_5579| ExhaleHeap@@7) o_38@@2 f_51@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@17) (select (|PolymorphicMapType_5579_3516_3517#PolymorphicMapType_5579| ExhaleHeap@@7) o_38@@2 f_51@@9))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_5579) (ExhaleHeap@@8 T@PolymorphicMapType_5579) (Mask@@18 T@PolymorphicMapType_5600) (o_38@@3 T@Ref) (f_51@@10 T@Field_5639_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@18) (=> (HasDirectPerm_5639_53 Mask@@18 o_38@@3 f_51@@10) (= (select (|PolymorphicMapType_5579_3513_53#PolymorphicMapType_5579| Heap@@11) o_38@@3 f_51@@10) (select (|PolymorphicMapType_5579_3513_53#PolymorphicMapType_5579| ExhaleHeap@@8) o_38@@3 f_51@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@18) (select (|PolymorphicMapType_5579_3513_53#PolymorphicMapType_5579| ExhaleHeap@@8) o_38@@3 f_51@@10))
)))
(assert (forall ((s0@@0 T@Seq_2867) (s1@@0 T@Seq_2867) ) (!  (=> (and (not (= s0@@0 |Seq#Empty_2867|)) (not (= s1@@0 |Seq#Empty_2867|))) (= (|Seq#Length_2867| (|Seq#Append_2867| s0@@0 s1@@0)) (+ (|Seq#Length_2867| s0@@0) (|Seq#Length_2867| s1@@0))))
 :qid |stdinbpl.212:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2867| (|Seq#Append_2867| s0@@0 s1@@0)))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_5639_13547) ) (! (= (select (|PolymorphicMapType_5600_5639_17108#PolymorphicMapType_5600| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5600_5639_17108#PolymorphicMapType_5600| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_5639_13414) ) (! (= (select (|PolymorphicMapType_5600_5639_13414#PolymorphicMapType_5600| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5600_5639_13414#PolymorphicMapType_5600| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_5652_5653) ) (! (= (select (|PolymorphicMapType_5600_5639_5653#PolymorphicMapType_5600| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5600_5639_5653#PolymorphicMapType_5600| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_5639_53) ) (! (= (select (|PolymorphicMapType_5600_5639_53#PolymorphicMapType_5600| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5600_5639_53#PolymorphicMapType_5600| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((s@@7 T@Seq_2867) (t@@0 T@Seq_2867) (n@@7 Int) ) (!  (=> (and (> n@@7 0) (> n@@7 (|Seq#Length_2867| s@@7))) (and (= (|Seq#Add| (|Seq#Sub| n@@7 (|Seq#Length_2867| s@@7)) (|Seq#Length_2867| s@@7)) n@@7) (= (|Seq#Drop_2867| (|Seq#Append_2867| s@@7 t@@0) n@@7) (|Seq#Drop_2867| t@@0 (|Seq#Sub| n@@7 (|Seq#Length_2867| s@@7))))))
 :qid |stdinbpl.369:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_2867| (|Seq#Append_2867| s@@7 t@@0) n@@7))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_5600) (SummandMask1 T@PolymorphicMapType_5600) (SummandMask2 T@PolymorphicMapType_5600) (o_2@@15 T@Ref) (f_4@@15 T@Field_5639_13547) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_5600_5639_17108#PolymorphicMapType_5600| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_5600_5639_17108#PolymorphicMapType_5600| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_5600_5639_17108#PolymorphicMapType_5600| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5600_5639_17108#PolymorphicMapType_5600| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5600_5639_17108#PolymorphicMapType_5600| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5600_5639_17108#PolymorphicMapType_5600| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_5600) (SummandMask1@@0 T@PolymorphicMapType_5600) (SummandMask2@@0 T@PolymorphicMapType_5600) (o_2@@16 T@Ref) (f_4@@16 T@Field_5639_13414) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_5600_5639_13414#PolymorphicMapType_5600| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_5600_5639_13414#PolymorphicMapType_5600| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_5600_5639_13414#PolymorphicMapType_5600| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5600_5639_13414#PolymorphicMapType_5600| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5600_5639_13414#PolymorphicMapType_5600| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5600_5639_13414#PolymorphicMapType_5600| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_5600) (SummandMask1@@1 T@PolymorphicMapType_5600) (SummandMask2@@1 T@PolymorphicMapType_5600) (o_2@@17 T@Ref) (f_4@@17 T@Field_5652_5653) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_5600_5639_5653#PolymorphicMapType_5600| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_5600_5639_5653#PolymorphicMapType_5600| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_5600_5639_5653#PolymorphicMapType_5600| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5600_5639_5653#PolymorphicMapType_5600| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5600_5639_5653#PolymorphicMapType_5600| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5600_5639_5653#PolymorphicMapType_5600| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_5600) (SummandMask1@@2 T@PolymorphicMapType_5600) (SummandMask2@@2 T@PolymorphicMapType_5600) (o_2@@18 T@Ref) (f_4@@18 T@Field_5639_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_5600_5639_53#PolymorphicMapType_5600| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_5600_5639_53#PolymorphicMapType_5600| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_5600_5639_53#PolymorphicMapType_5600| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5600_5639_53#PolymorphicMapType_5600| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5600_5639_53#PolymorphicMapType_5600| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5600_5639_53#PolymorphicMapType_5600| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.534:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_2867) (b T@Seq_2867) ) (!  (=> (|Seq#Equal_2867| a b) (= a b))
 :qid |stdinbpl.507:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_2867| a b))
)))
(assert (forall ((s@@8 T@Seq_2867) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length_2867| s@@8))) (|Seq#ContainsTrigger_2867| s@@8 (|Seq#Index_2867| s@@8 i@@2)))
 :qid |stdinbpl.400:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2867| s@@8 i@@2))
)))
(assert (forall ((s0@@1 T@Seq_2867) (s1@@1 T@Seq_2867) ) (!  (and (=> (= s0@@1 |Seq#Empty_2867|) (= (|Seq#Append_2867| s0@@1 s1@@1) s1@@1)) (=> (= s1@@1 |Seq#Empty_2867|) (= (|Seq#Append_2867| s0@@1 s1@@1) s0@@1)))
 :qid |stdinbpl.218:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_2867| s0@@1 s1@@1))
)))
(assert (forall ((t@@1 Int) ) (! (= (|Seq#Index_2867| (|Seq#Singleton_2867| t@@1) 0) t@@1)
 :qid |stdinbpl.222:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_2867| t@@1))
)))
(assert (forall ((s@@9 T@Seq_2867) ) (! (<= 0 (|Seq#Length_2867| s@@9))
 :qid |stdinbpl.201:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2867| s@@9))
)))
(assert (forall ((s0@@2 T@Seq_2867) (s1@@2 T@Seq_2867) ) (!  (=> (|Seq#Equal_2867| s0@@2 s1@@2) (and (= (|Seq#Length_2867| s0@@2) (|Seq#Length_2867| s1@@2)) (forall ((j@@4 Int) ) (!  (=> (and (<= 0 j@@4) (< j@@4 (|Seq#Length_2867| s0@@2))) (= (|Seq#Index_2867| s0@@2 j@@4) (|Seq#Index_2867| s1@@2 j@@4)))
 :qid |stdinbpl.497:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2867| s0@@2 j@@4))
 :pattern ( (|Seq#Index_2867| s1@@2 j@@4))
))))
 :qid |stdinbpl.494:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_2867| s0@@2 s1@@2))
)))
(assert (forall ((t@@2 Int) ) (! (= (|Seq#Length_2867| (|Seq#Singleton_2867| t@@2)) 1)
 :qid |stdinbpl.209:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_2867| t@@2))
)))
(assert (forall ((s@@10 T@Seq_2867) (t@@3 T@Seq_2867) (n@@8 Int) ) (!  (=> (and (< 0 n@@8) (<= n@@8 (|Seq#Length_2867| s@@10))) (= (|Seq#Take_2867| (|Seq#Append_2867| s@@10 t@@3) n@@8) (|Seq#Take_2867| s@@10 n@@8)))
 :qid |stdinbpl.351:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2867| (|Seq#Append_2867| s@@10 t@@3) n@@8))
)))
(assert (forall ((s@@11 T@Seq_2867) (i@@3 Int) (v@@1 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_2867| s@@11))) (= (|Seq#Length_2867| (|Seq#Update_2867| s@@11 i@@3 v@@1)) (|Seq#Length_2867| s@@11)))
 :qid |stdinbpl.250:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2867| (|Seq#Update_2867| s@@11 i@@3 v@@1)))
 :pattern ( (|Seq#Length_2867| s@@11) (|Seq#Update_2867| s@@11 i@@3 v@@1))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_5579) (o_56 T@Ref) (f_22 T@Field_5639_13414) (v@@2 T@FrameType) ) (! (succHeap Heap@@12 (PolymorphicMapType_5579 (|PolymorphicMapType_5579_3513_53#PolymorphicMapType_5579| Heap@@12) (|PolymorphicMapType_5579_3516_3517#PolymorphicMapType_5579| Heap@@12) (|PolymorphicMapType_5579_5639_13591#PolymorphicMapType_5579| Heap@@12) (store (|PolymorphicMapType_5579_5639_13414#PolymorphicMapType_5579| Heap@@12) o_56 f_22 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5579 (|PolymorphicMapType_5579_3513_53#PolymorphicMapType_5579| Heap@@12) (|PolymorphicMapType_5579_3516_3517#PolymorphicMapType_5579| Heap@@12) (|PolymorphicMapType_5579_5639_13591#PolymorphicMapType_5579| Heap@@12) (store (|PolymorphicMapType_5579_5639_13414#PolymorphicMapType_5579| Heap@@12) o_56 f_22 v@@2)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_5579) (o_56@@0 T@Ref) (f_22@@0 T@Field_5639_13547) (v@@3 T@PolymorphicMapType_6128) ) (! (succHeap Heap@@13 (PolymorphicMapType_5579 (|PolymorphicMapType_5579_3513_53#PolymorphicMapType_5579| Heap@@13) (|PolymorphicMapType_5579_3516_3517#PolymorphicMapType_5579| Heap@@13) (store (|PolymorphicMapType_5579_5639_13591#PolymorphicMapType_5579| Heap@@13) o_56@@0 f_22@@0 v@@3) (|PolymorphicMapType_5579_5639_13414#PolymorphicMapType_5579| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5579 (|PolymorphicMapType_5579_3513_53#PolymorphicMapType_5579| Heap@@13) (|PolymorphicMapType_5579_3516_3517#PolymorphicMapType_5579| Heap@@13) (store (|PolymorphicMapType_5579_5639_13591#PolymorphicMapType_5579| Heap@@13) o_56@@0 f_22@@0 v@@3) (|PolymorphicMapType_5579_5639_13414#PolymorphicMapType_5579| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_5579) (o_56@@1 T@Ref) (f_22@@1 T@Field_5652_5653) (v@@4 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_5579 (|PolymorphicMapType_5579_3513_53#PolymorphicMapType_5579| Heap@@14) (store (|PolymorphicMapType_5579_3516_3517#PolymorphicMapType_5579| Heap@@14) o_56@@1 f_22@@1 v@@4) (|PolymorphicMapType_5579_5639_13591#PolymorphicMapType_5579| Heap@@14) (|PolymorphicMapType_5579_5639_13414#PolymorphicMapType_5579| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5579 (|PolymorphicMapType_5579_3513_53#PolymorphicMapType_5579| Heap@@14) (store (|PolymorphicMapType_5579_3516_3517#PolymorphicMapType_5579| Heap@@14) o_56@@1 f_22@@1 v@@4) (|PolymorphicMapType_5579_5639_13591#PolymorphicMapType_5579| Heap@@14) (|PolymorphicMapType_5579_5639_13414#PolymorphicMapType_5579| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_5579) (o_56@@2 T@Ref) (f_22@@2 T@Field_5639_53) (v@@5 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_5579 (store (|PolymorphicMapType_5579_3513_53#PolymorphicMapType_5579| Heap@@15) o_56@@2 f_22@@2 v@@5) (|PolymorphicMapType_5579_3516_3517#PolymorphicMapType_5579| Heap@@15) (|PolymorphicMapType_5579_5639_13591#PolymorphicMapType_5579| Heap@@15) (|PolymorphicMapType_5579_5639_13414#PolymorphicMapType_5579| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5579 (store (|PolymorphicMapType_5579_3513_53#PolymorphicMapType_5579| Heap@@15) o_56@@2 f_22@@2 v@@5) (|PolymorphicMapType_5579_3516_3517#PolymorphicMapType_5579| Heap@@15) (|PolymorphicMapType_5579_5639_13591#PolymorphicMapType_5579| Heap@@15) (|PolymorphicMapType_5579_5639_13414#PolymorphicMapType_5579| Heap@@15)))
)))
(assert (forall ((s@@12 T@Seq_2867) (t@@4 T@Seq_2867) (n@@9 Int) ) (!  (=> (and (< 0 n@@9) (<= n@@9 (|Seq#Length_2867| s@@12))) (= (|Seq#Drop_2867| (|Seq#Append_2867| s@@12 t@@4) n@@9) (|Seq#Append_2867| (|Seq#Drop_2867| s@@12 n@@9) t@@4)))
 :qid |stdinbpl.365:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_2867| (|Seq#Append_2867| s@@12 t@@4) n@@9))
)))
(assert (forall ((s@@13 T@Seq_2867) (n@@10 Int) (i@@4 Int) ) (!  (=> (and (and (< 0 n@@10) (<= n@@10 i@@4)) (< i@@4 (|Seq#Length_2867| s@@13))) (and (= (|Seq#Add| (|Seq#Sub| i@@4 n@@10) n@@10) i@@4) (= (|Seq#Index_2867| (|Seq#Drop_2867| s@@13 n@@10) (|Seq#Sub| i@@4 n@@10)) (|Seq#Index_2867| s@@13 i@@4))))
 :qid |stdinbpl.301:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_2867| s@@13 n@@10) (|Seq#Index_2867| s@@13 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_2867) (s1@@3 T@Seq_2867) (n@@11 Int) ) (!  (=> (and (and (and (not (= s0@@3 |Seq#Empty_2867|)) (not (= s1@@3 |Seq#Empty_2867|))) (<= 0 n@@11)) (< n@@11 (|Seq#Length_2867| s0@@3))) (= (|Seq#Index_2867| (|Seq#Append_2867| s0@@3 s1@@3) n@@11) (|Seq#Index_2867| s0@@3 n@@11)))
 :qid |stdinbpl.241:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_2867| s0@@3 s1@@3) n@@11))
 :pattern ( (|Seq#Index_2867| s0@@3 n@@11) (|Seq#Append_2867| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2867) (s1@@4 T@Seq_2867) (m Int) ) (!  (=> (and (and (and (not (= s0@@4 |Seq#Empty_2867|)) (not (= s1@@4 |Seq#Empty_2867|))) (<= 0 m)) (< m (|Seq#Length_2867| s1@@4))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_2867| s0@@4)) (|Seq#Length_2867| s0@@4)) m) (= (|Seq#Index_2867| (|Seq#Append_2867| s0@@4 s1@@4) (|Seq#Add| m (|Seq#Length_2867| s0@@4))) (|Seq#Index_2867| s1@@4 m))))
 :qid |stdinbpl.246:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2867| s1@@4 m) (|Seq#Append_2867| s0@@4 s1@@4))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_5579) (Mask@@19 T@PolymorphicMapType_5600) (lo@@1 Int) (hi@@1 Int) ) (!  (=> (and (state Heap@@16 Mask@@19) (< AssumeFunctionsAbove 0)) (=> (forall ((k Int) ) (!  (=> (|Seq#Contains_2867| (|Seq#Range| lo@@1 hi@@1) k) (< k (+ k 1)))
 :qid |stdinbpl.562:61|
 :skolemid |60|
 :pattern ( (|Seq#ContainsTrigger_2867| (|Seq#Range| lo@@1 hi@@1) k))
 :pattern ( (|Seq#Contains_2867| (|Seq#Range| lo@@1 hi@@1) k))
)) (trigger_issue Heap@@16 lo@@1 hi@@1)))
 :qid |stdinbpl.560:15|
 :skolemid |61|
 :pattern ( (state Heap@@16 Mask@@19) (trigger_issue Heap@@16 lo@@1 hi@@1))
)))
(assert (forall ((o_56@@3 T@Ref) (f_3 T@Field_5652_5653) (Heap@@17 T@PolymorphicMapType_5579) ) (!  (=> (select (|PolymorphicMapType_5579_3513_53#PolymorphicMapType_5579| Heap@@17) o_56@@3 $allocated) (select (|PolymorphicMapType_5579_3513_53#PolymorphicMapType_5579| Heap@@17) (select (|PolymorphicMapType_5579_3516_3517#PolymorphicMapType_5579| Heap@@17) o_56@@3 f_3) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_5579_3516_3517#PolymorphicMapType_5579| Heap@@17) o_56@@3 f_3))
)))
(assert (forall ((s@@14 T@Seq_2867) (x@@1 Int) (i@@5 Int) ) (!  (=> (and (and (<= 0 i@@5) (< i@@5 (|Seq#Length_2867| s@@14))) (= (|Seq#Index_2867| s@@14 i@@5) x@@1)) (|Seq#Contains_2867| s@@14 x@@1))
 :qid |stdinbpl.398:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2867| s@@14 x@@1) (|Seq#Index_2867| s@@14 i@@5))
)))
(assert (forall ((s0@@5 T@Seq_2867) (s1@@5 T@Seq_2867) ) (!  (or (or (and (= s0@@5 s1@@5) (|Seq#Equal_2867| s0@@5 s1@@5)) (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_2867| s0@@5 s1@@5))) (not (= (|Seq#Length_2867| s0@@5) (|Seq#Length_2867| s1@@5))))) (and (and (and (and (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_2867| s0@@5 s1@@5))) (= (|Seq#Length_2867| s0@@5) (|Seq#Length_2867| s1@@5))) (= (|Seq#SkolemDiff_2867| s0@@5 s1@@5) (|Seq#SkolemDiff_2867| s1@@5 s0@@5))) (<= 0 (|Seq#SkolemDiff_2867| s0@@5 s1@@5))) (< (|Seq#SkolemDiff_2867| s0@@5 s1@@5) (|Seq#Length_2867| s0@@5))) (not (= (|Seq#Index_2867| s0@@5 (|Seq#SkolemDiff_2867| s0@@5 s1@@5)) (|Seq#Index_2867| s1@@5 (|Seq#SkolemDiff_2867| s0@@5 s1@@5))))))
 :qid |stdinbpl.502:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_2867| s0@@5 s1@@5))
)))
(assert (forall ((p@@1 T@Field_5639_13414) (v_1@@0 T@FrameType) (q T@Field_5639_13414) (w@@0 T@FrameType) (r T@Field_5639_13414) (u T@FrameType) ) (!  (=> (and (InsidePredicate_5639_5639 p@@1 v_1@@0 q w@@0) (InsidePredicate_5639_5639 q w@@0 r u)) (InsidePredicate_5639_5639 p@@1 v_1@@0 r u))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5639_5639 p@@1 v_1@@0 q w@@0) (InsidePredicate_5639_5639 q w@@0 r u))
)))
(assert (forall ((s@@15 T@Seq_2867) ) (!  (=> (= (|Seq#Length_2867| s@@15) 0) (= s@@15 |Seq#Empty_2867|))
 :qid |stdinbpl.205:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2867| s@@15))
)))
(assert (forall ((s@@16 T@Seq_2867) (n@@12 Int) ) (!  (=> (<= n@@12 0) (= (|Seq#Take_2867| s@@16 n@@12) |Seq#Empty_2867|))
 :qid |stdinbpl.381:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_2867| s@@16 n@@12))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@18 T@PolymorphicMapType_5579) (lo@@2 Int) (hi@@2 Int) ) (!  (and (= (trigger_issue Heap@@18 lo@@2 hi@@2) (|trigger_issue'| Heap@@18 lo@@2 hi@@2)) (dummyFunction_3230 (|trigger_issue#triggerStateless| lo@@2 hi@@2)))
 :qid |stdinbpl.550:15|
 :skolemid |58|
 :pattern ( (trigger_issue Heap@@18 lo@@2 hi@@2))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x@@2 () Int)
(declare-fun y@@0 () Int)
(declare-fun k@@0 () Int)
(declare-fun Heap@@19 () T@PolymorphicMapType_5579)
(set-info :boogie-vc-id problem)
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
 (=> (= (ControlFlow 0 0) 9) (let ((anon4_correct true))
(let ((anon9_Else_correct  (=> (and (not (|Seq#Contains_2867| (|Seq#Range| 0 (* x@@2 y@@0)) k@@0)) (= (ControlFlow 0 7) 4)) anon4_correct)))
(let ((anon9_Then_correct  (=> (|Seq#Contains_2867| (|Seq#Range| 0 (* x@@2 y@@0)) k@@0) (and (=> (= (ControlFlow 0 5) (- 0 6)) (< k@@0 (+ k@@0 1))) (=> (< k@@0 (+ k@@0 1)) (=> (= (ControlFlow 0 5) 4) anon4_correct))))))
(let ((anon8_Else_correct true))
(let ((anon7_Else_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (trigger_issue Heap@@19 0 (* x@@2 y@@0)))))
(let ((anon0_correct  (=> (state Heap@@19 ZeroMask) (=> (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (and (and (=> (= (ControlFlow 0 8) 2) anon7_Else_correct) (=> (= (ControlFlow 0 8) 3) anon8_Else_correct)) (=> (= (ControlFlow 0 8) 5) anon9_Then_correct)) (=> (= (ControlFlow 0 8) 7) anon9_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 9) 8) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
