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
(declare-sort T@Field_6425_53 0)
(declare-sort T@Field_6438_6439 0)
(declare-sort T@Field_6425_15876 0)
(declare-sort T@Field_6425_15743 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_6386 0)) (((PolymorphicMapType_6386 (|PolymorphicMapType_6386_6425_53#PolymorphicMapType_6386| (Array T@Ref T@Field_6425_53 Real)) (|PolymorphicMapType_6386_6425_6439#PolymorphicMapType_6386| (Array T@Ref T@Field_6438_6439 Real)) (|PolymorphicMapType_6386_6425_15743#PolymorphicMapType_6386| (Array T@Ref T@Field_6425_15743 Real)) (|PolymorphicMapType_6386_6425_19437#PolymorphicMapType_6386| (Array T@Ref T@Field_6425_15876 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6914 0)) (((PolymorphicMapType_6914 (|PolymorphicMapType_6914_6425_53#PolymorphicMapType_6914| (Array T@Ref T@Field_6425_53 Bool)) (|PolymorphicMapType_6914_6425_6439#PolymorphicMapType_6914| (Array T@Ref T@Field_6438_6439 Bool)) (|PolymorphicMapType_6914_6425_15743#PolymorphicMapType_6914| (Array T@Ref T@Field_6425_15743 Bool)) (|PolymorphicMapType_6914_6425_16856#PolymorphicMapType_6914| (Array T@Ref T@Field_6425_15876 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6365 0)) (((PolymorphicMapType_6365 (|PolymorphicMapType_6365_3899_53#PolymorphicMapType_6365| (Array T@Ref T@Field_6425_53 Bool)) (|PolymorphicMapType_6365_3902_3903#PolymorphicMapType_6365| (Array T@Ref T@Field_6438_6439 T@Ref)) (|PolymorphicMapType_6365_6425_15920#PolymorphicMapType_6365| (Array T@Ref T@Field_6425_15876 T@PolymorphicMapType_6914)) (|PolymorphicMapType_6365_6425_15743#PolymorphicMapType_6365| (Array T@Ref T@Field_6425_15743 T@FrameType)) ) ) ))
(declare-sort T@Seq_2867 0)
(declare-fun |Seq#Length_2867| (T@Seq_2867) Int)
(declare-fun |Seq#Drop_2867| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun succHeap (T@PolymorphicMapType_6365 T@PolymorphicMapType_6365) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_6365 T@PolymorphicMapType_6365) Bool)
(declare-fun state (T@PolymorphicMapType_6365 T@PolymorphicMapType_6386) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_6386) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_6914)
(declare-fun |Seq#Index_2867| (T@Seq_2867 Int) Int)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Empty_2867| () T@Seq_2867)
(declare-fun |reqIGt0'| (T@PolymorphicMapType_6365 Int) Int)
(declare-fun dummyFunction_3159 (Int) Bool)
(declare-fun |reqIGt0#triggerStateless| (Int) Int)
(declare-fun |Seq#Update_2867| (T@Seq_2867 Int Int) T@Seq_2867)
(declare-fun |Seq#Take_2867| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun |Seq#Contains_2867| (T@Seq_2867 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2867)
(declare-fun |Seq#Skolem_2867| (T@Seq_2867 Int) Int)
(declare-fun reqIGt0 (T@PolymorphicMapType_6365 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_6365 T@PolymorphicMapType_6365 T@PolymorphicMapType_6386) Bool)
(declare-fun IsPredicateField_6425_15834 (T@Field_6425_15743) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_6425 (T@Field_6425_15743) T@Field_6425_15876)
(declare-fun HasDirectPerm_6425_15807 (T@PolymorphicMapType_6386 T@Ref T@Field_6425_15743) Bool)
(declare-fun IsWandField_6425_17383 (T@Field_6425_15743) Bool)
(declare-fun WandMaskField_6425 (T@Field_6425_15743) T@Field_6425_15876)
(declare-fun |Seq#Singleton_3| (Int) T@Seq_2867)
(declare-fun |Seq#Append_3| (T@Seq_2867 T@Seq_2867) T@Seq_2867)
(declare-fun dummyHeap () T@PolymorphicMapType_6365)
(declare-fun ZeroMask () T@PolymorphicMapType_6386)
(declare-fun $allocated () T@Field_6425_53)
(declare-fun InsidePredicate_6425_6425 (T@Field_6425_15743 T@FrameType T@Field_6425_15743 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6425_20346 (T@Field_6425_15876) Bool)
(declare-fun IsWandField_6425_20362 (T@Field_6425_15876) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_6425_6439 (T@Field_6438_6439) Bool)
(declare-fun IsWandField_6425_6439 (T@Field_6438_6439) Bool)
(declare-fun IsPredicateField_6425_53 (T@Field_6425_53) Bool)
(declare-fun IsWandField_6425_53 (T@Field_6425_53) Bool)
(declare-fun HasDirectPerm_6425_20717 (T@PolymorphicMapType_6386 T@Ref T@Field_6425_15876) Bool)
(declare-fun HasDirectPerm_6425_6439 (T@PolymorphicMapType_6386 T@Ref T@Field_6438_6439) Bool)
(declare-fun HasDirectPerm_6425_53 (T@PolymorphicMapType_6386 T@Ref T@Field_6425_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun sumMask (T@PolymorphicMapType_6386 T@PolymorphicMapType_6386 T@PolymorphicMapType_6386) Bool)
(declare-fun |Seq#Equal_2867| (T@Seq_2867 T@Seq_2867) Bool)
(declare-fun |Seq#ContainsTrigger_3| (T@Seq_2867 Int) Bool)
(declare-fun |reqIGt0#frame| (T@FrameType Int) Int)
(declare-fun |Seq#SkolemDiff_2867| (T@Seq_2867 T@Seq_2867) Int)
(assert (forall ((s T@Seq_2867) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_2867| s)) (= (|Seq#Length_2867| (|Seq#Drop_2867| s n)) (- (|Seq#Length_2867| s) n))) (=> (< (|Seq#Length_2867| s) n) (= (|Seq#Length_2867| (|Seq#Drop_2867| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_2867| (|Seq#Drop_2867| s n)) (|Seq#Length_2867| s))))
 :qid |stdinbpl.276:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2867| (|Seq#Drop_2867| s n)))
 :pattern ( (|Seq#Length_2867| s) (|Seq#Drop_2867| s n))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_6365) (Heap1 T@PolymorphicMapType_6365) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_6365) (Mask T@PolymorphicMapType_6386) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_6365) (Heap1@@0 T@PolymorphicMapType_6365) (Heap2 T@PolymorphicMapType_6365) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_6425_15876) ) (!  (not (select (|PolymorphicMapType_6914_6425_16856#PolymorphicMapType_6914| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6914_6425_16856#PolymorphicMapType_6914| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_6425_15743) ) (!  (not (select (|PolymorphicMapType_6914_6425_15743#PolymorphicMapType_6914| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6914_6425_15743#PolymorphicMapType_6914| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_6438_6439) ) (!  (not (select (|PolymorphicMapType_6914_6425_6439#PolymorphicMapType_6914| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6914_6425_6439#PolymorphicMapType_6914| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_6425_53) ) (!  (not (select (|PolymorphicMapType_6914_6425_53#PolymorphicMapType_6914| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6914_6425_53#PolymorphicMapType_6914| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((s@@0 T@Seq_2867) (n@@0 Int) (j Int) ) (!  (=> (and (and (< 0 n@@0) (<= 0 j)) (< j (- (|Seq#Length_2867| s@@0) n@@0))) (and (= (|Seq#Sub| (|Seq#Add| j n@@0) n@@0) j) (= (|Seq#Index_2867| (|Seq#Drop_2867| s@@0 n@@0) j) (|Seq#Index_2867| s@@0 (|Seq#Add| j n@@0)))))
 :qid |stdinbpl.297:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2867| (|Seq#Drop_2867| s@@0 n@@0) j))
)))
(assert (= (|Seq#Length_2867| |Seq#Empty_2867|) 0))
(assert (forall ((Heap@@0 T@PolymorphicMapType_6365) (i Int) ) (! (dummyFunction_3159 (|reqIGt0#triggerStateless| i))
 :qid |stdinbpl.554:15|
 :skolemid |59|
 :pattern ( (|reqIGt0'| Heap@@0 i))
)))
(assert (forall ((s@@1 T@Seq_2867) (i@@0 Int) (v Int) (n@@1 Int) ) (!  (=> (and (<= 0 n@@1) (< n@@1 (|Seq#Length_2867| s@@1))) (and (=> (= i@@0 n@@1) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@1 i@@0 v) n@@1) v)) (=> (not (= i@@0 n@@1)) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@1 i@@0 v) n@@1) (|Seq#Index_2867| s@@1 n@@1)))))
 :qid |stdinbpl.252:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2867| (|Seq#Update_2867| s@@1 i@@0 v) n@@1))
 :pattern ( (|Seq#Index_2867| s@@1 n@@1) (|Seq#Update_2867| s@@1 i@@0 v))
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
(assert (forall ((Heap@@1 T@PolymorphicMapType_6365) (i@@1 Int) ) (!  (and (= (reqIGt0 Heap@@1 i@@1) (|reqIGt0'| Heap@@1 i@@1)) (dummyFunction_3159 (|reqIGt0#triggerStateless| i@@1)))
 :qid |stdinbpl.550:15|
 :skolemid |58|
 :pattern ( (reqIGt0 Heap@@1 i@@1))
)))
(assert (forall ((s@@4 T@Seq_2867) (n@@3 Int) ) (!  (=> (<= n@@3 0) (= (|Seq#Drop_2867| s@@4 n@@3) s@@4))
 :qid |stdinbpl.379:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_2867| s@@4 n@@3))
)))
(assert (forall ((i@@2 Int) (j@@0 Int) ) (! (= (|Seq#Sub| i@@2 j@@0) (- i@@2 j@@0))
 :qid |stdinbpl.232:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@2 j@@0))
)))
(assert (forall ((i@@3 Int) (j@@1 Int) ) (! (= (|Seq#Add| i@@3 j@@1) (+ i@@3 j@@1))
 :qid |stdinbpl.230:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@3 j@@1))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_6365) (ExhaleHeap T@PolymorphicMapType_6365) (Mask@@0 T@PolymorphicMapType_6386) (pm_f_9 T@Field_6425_15743) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_6425_15807 Mask@@0 null pm_f_9) (IsPredicateField_6425_15834 pm_f_9)) (= (select (|PolymorphicMapType_6365_6425_15920#PolymorphicMapType_6365| Heap@@2) null (PredicateMaskField_6425 pm_f_9)) (select (|PolymorphicMapType_6365_6425_15920#PolymorphicMapType_6365| ExhaleHeap) null (PredicateMaskField_6425 pm_f_9)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (IsPredicateField_6425_15834 pm_f_9) (select (|PolymorphicMapType_6365_6425_15920#PolymorphicMapType_6365| ExhaleHeap) null (PredicateMaskField_6425 pm_f_9)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_6365) (ExhaleHeap@@0 T@PolymorphicMapType_6365) (Mask@@1 T@PolymorphicMapType_6386) (pm_f_9@@0 T@Field_6425_15743) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_6425_15807 Mask@@1 null pm_f_9@@0) (IsWandField_6425_17383 pm_f_9@@0)) (= (select (|PolymorphicMapType_6365_6425_15920#PolymorphicMapType_6365| Heap@@3) null (WandMaskField_6425 pm_f_9@@0)) (select (|PolymorphicMapType_6365_6425_15920#PolymorphicMapType_6365| ExhaleHeap@@0) null (WandMaskField_6425 pm_f_9@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (IsWandField_6425_17383 pm_f_9@@0) (select (|PolymorphicMapType_6365_6425_15920#PolymorphicMapType_6365| ExhaleHeap@@0) null (WandMaskField_6425 pm_f_9@@0)))
)))
(assert (forall ((x@@0 Int) (y Int) ) (! (= (|Seq#Contains_2867| (|Seq#Singleton_3| x@@0) y) (= x@@0 y))
 :qid |stdinbpl.520:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2867| (|Seq#Singleton_3| x@@0) y))
)))
(assert (forall ((s@@5 T@Seq_2867) (n@@4 Int) (j@@2 Int) ) (!  (=> (and (and (<= 0 j@@2) (< j@@2 n@@4)) (< j@@2 (|Seq#Length_2867| s@@5))) (= (|Seq#Index_2867| (|Seq#Take_2867| s@@5 n@@4) j@@2) (|Seq#Index_2867| s@@5 j@@2)))
 :qid |stdinbpl.271:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2867| (|Seq#Take_2867| s@@5 n@@4) j@@2))
 :pattern ( (|Seq#Index_2867| s@@5 j@@2) (|Seq#Take_2867| s@@5 n@@4))
)))
(assert (forall ((s@@6 T@Seq_2867) (t T@Seq_2867) (n@@5 Int) ) (!  (=> (and (and (> n@@5 0) (> n@@5 (|Seq#Length_2867| s@@6))) (< n@@5 (|Seq#Length_2867| (|Seq#Append_3| s@@6 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@5 (|Seq#Length_2867| s@@6)) (|Seq#Length_2867| s@@6)) n@@5) (= (|Seq#Take_2867| (|Seq#Append_3| s@@6 t) n@@5) (|Seq#Append_3| s@@6 (|Seq#Take_2867| t (|Seq#Sub| n@@5 (|Seq#Length_2867| s@@6)))))))
 :qid |stdinbpl.356:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2867| (|Seq#Append_3| s@@6 t) n@@5))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_6365) (ExhaleHeap@@1 T@PolymorphicMapType_6365) (Mask@@2 T@PolymorphicMapType_6386) (pm_f_9@@1 T@Field_6425_15743) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_6425_15807 Mask@@2 null pm_f_9@@1) (IsPredicateField_6425_15834 pm_f_9@@1)) (and (and (and (forall ((o2_9 T@Ref) (f_24 T@Field_6425_53) ) (!  (=> (select (|PolymorphicMapType_6914_6425_53#PolymorphicMapType_6914| (select (|PolymorphicMapType_6365_6425_15920#PolymorphicMapType_6365| Heap@@4) null (PredicateMaskField_6425 pm_f_9@@1))) o2_9 f_24) (= (select (|PolymorphicMapType_6365_3899_53#PolymorphicMapType_6365| Heap@@4) o2_9 f_24) (select (|PolymorphicMapType_6365_3899_53#PolymorphicMapType_6365| ExhaleHeap@@1) o2_9 f_24)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6365_3899_53#PolymorphicMapType_6365| ExhaleHeap@@1) o2_9 f_24))
)) (forall ((o2_9@@0 T@Ref) (f_24@@0 T@Field_6438_6439) ) (!  (=> (select (|PolymorphicMapType_6914_6425_6439#PolymorphicMapType_6914| (select (|PolymorphicMapType_6365_6425_15920#PolymorphicMapType_6365| Heap@@4) null (PredicateMaskField_6425 pm_f_9@@1))) o2_9@@0 f_24@@0) (= (select (|PolymorphicMapType_6365_3902_3903#PolymorphicMapType_6365| Heap@@4) o2_9@@0 f_24@@0) (select (|PolymorphicMapType_6365_3902_3903#PolymorphicMapType_6365| ExhaleHeap@@1) o2_9@@0 f_24@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6365_3902_3903#PolymorphicMapType_6365| ExhaleHeap@@1) o2_9@@0 f_24@@0))
))) (forall ((o2_9@@1 T@Ref) (f_24@@1 T@Field_6425_15743) ) (!  (=> (select (|PolymorphicMapType_6914_6425_15743#PolymorphicMapType_6914| (select (|PolymorphicMapType_6365_6425_15920#PolymorphicMapType_6365| Heap@@4) null (PredicateMaskField_6425 pm_f_9@@1))) o2_9@@1 f_24@@1) (= (select (|PolymorphicMapType_6365_6425_15743#PolymorphicMapType_6365| Heap@@4) o2_9@@1 f_24@@1) (select (|PolymorphicMapType_6365_6425_15743#PolymorphicMapType_6365| ExhaleHeap@@1) o2_9@@1 f_24@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6365_6425_15743#PolymorphicMapType_6365| ExhaleHeap@@1) o2_9@@1 f_24@@1))
))) (forall ((o2_9@@2 T@Ref) (f_24@@2 T@Field_6425_15876) ) (!  (=> (select (|PolymorphicMapType_6914_6425_16856#PolymorphicMapType_6914| (select (|PolymorphicMapType_6365_6425_15920#PolymorphicMapType_6365| Heap@@4) null (PredicateMaskField_6425 pm_f_9@@1))) o2_9@@2 f_24@@2) (= (select (|PolymorphicMapType_6365_6425_15920#PolymorphicMapType_6365| Heap@@4) o2_9@@2 f_24@@2) (select (|PolymorphicMapType_6365_6425_15920#PolymorphicMapType_6365| ExhaleHeap@@1) o2_9@@2 f_24@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6365_6425_15920#PolymorphicMapType_6365| ExhaleHeap@@1) o2_9@@2 f_24@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (IsPredicateField_6425_15834 pm_f_9@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_6365) (ExhaleHeap@@2 T@PolymorphicMapType_6365) (Mask@@3 T@PolymorphicMapType_6386) (pm_f_9@@2 T@Field_6425_15743) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_6425_15807 Mask@@3 null pm_f_9@@2) (IsWandField_6425_17383 pm_f_9@@2)) (and (and (and (forall ((o2_9@@3 T@Ref) (f_24@@3 T@Field_6425_53) ) (!  (=> (select (|PolymorphicMapType_6914_6425_53#PolymorphicMapType_6914| (select (|PolymorphicMapType_6365_6425_15920#PolymorphicMapType_6365| Heap@@5) null (WandMaskField_6425 pm_f_9@@2))) o2_9@@3 f_24@@3) (= (select (|PolymorphicMapType_6365_3899_53#PolymorphicMapType_6365| Heap@@5) o2_9@@3 f_24@@3) (select (|PolymorphicMapType_6365_3899_53#PolymorphicMapType_6365| ExhaleHeap@@2) o2_9@@3 f_24@@3)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6365_3899_53#PolymorphicMapType_6365| ExhaleHeap@@2) o2_9@@3 f_24@@3))
)) (forall ((o2_9@@4 T@Ref) (f_24@@4 T@Field_6438_6439) ) (!  (=> (select (|PolymorphicMapType_6914_6425_6439#PolymorphicMapType_6914| (select (|PolymorphicMapType_6365_6425_15920#PolymorphicMapType_6365| Heap@@5) null (WandMaskField_6425 pm_f_9@@2))) o2_9@@4 f_24@@4) (= (select (|PolymorphicMapType_6365_3902_3903#PolymorphicMapType_6365| Heap@@5) o2_9@@4 f_24@@4) (select (|PolymorphicMapType_6365_3902_3903#PolymorphicMapType_6365| ExhaleHeap@@2) o2_9@@4 f_24@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6365_3902_3903#PolymorphicMapType_6365| ExhaleHeap@@2) o2_9@@4 f_24@@4))
))) (forall ((o2_9@@5 T@Ref) (f_24@@5 T@Field_6425_15743) ) (!  (=> (select (|PolymorphicMapType_6914_6425_15743#PolymorphicMapType_6914| (select (|PolymorphicMapType_6365_6425_15920#PolymorphicMapType_6365| Heap@@5) null (WandMaskField_6425 pm_f_9@@2))) o2_9@@5 f_24@@5) (= (select (|PolymorphicMapType_6365_6425_15743#PolymorphicMapType_6365| Heap@@5) o2_9@@5 f_24@@5) (select (|PolymorphicMapType_6365_6425_15743#PolymorphicMapType_6365| ExhaleHeap@@2) o2_9@@5 f_24@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6365_6425_15743#PolymorphicMapType_6365| ExhaleHeap@@2) o2_9@@5 f_24@@5))
))) (forall ((o2_9@@6 T@Ref) (f_24@@6 T@Field_6425_15876) ) (!  (=> (select (|PolymorphicMapType_6914_6425_16856#PolymorphicMapType_6914| (select (|PolymorphicMapType_6365_6425_15920#PolymorphicMapType_6365| Heap@@5) null (WandMaskField_6425 pm_f_9@@2))) o2_9@@6 f_24@@6) (= (select (|PolymorphicMapType_6365_6425_15920#PolymorphicMapType_6365| Heap@@5) o2_9@@6 f_24@@6) (select (|PolymorphicMapType_6365_6425_15920#PolymorphicMapType_6365| ExhaleHeap@@2) o2_9@@6 f_24@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6365_6425_15920#PolymorphicMapType_6365| ExhaleHeap@@2) o2_9@@6 f_24@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (IsWandField_6425_17383 pm_f_9@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@6 T@PolymorphicMapType_6365) (ExhaleHeap@@3 T@PolymorphicMapType_6365) (Mask@@4 T@PolymorphicMapType_6386) (o_27 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_6365_3899_53#PolymorphicMapType_6365| Heap@@6) o_27 $allocated) (select (|PolymorphicMapType_6365_3899_53#PolymorphicMapType_6365| ExhaleHeap@@3) o_27 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_6365_3899_53#PolymorphicMapType_6365| ExhaleHeap@@3) o_27 $allocated))
)))
(assert (forall ((p T@Field_6425_15743) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_6425_6425 p v_1 p w))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6425_6425 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_2867) (s1 T@Seq_2867) (n@@6 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_2867|)) (not (= s1 |Seq#Empty_2867|))) (<= (|Seq#Length_2867| s0) n@@6)) (< n@@6 (|Seq#Length_2867| (|Seq#Append_3| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@6 (|Seq#Length_2867| s0)) (|Seq#Length_2867| s0)) n@@6) (= (|Seq#Index_2867| (|Seq#Append_3| s0 s1) n@@6) (|Seq#Index_2867| s1 (|Seq#Sub| n@@6 (|Seq#Length_2867| s0))))))
 :qid |stdinbpl.243:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_3| s0 s1) n@@6))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_6365) (ExhaleHeap@@4 T@PolymorphicMapType_6365) (Mask@@5 T@PolymorphicMapType_6386) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (succHeap Heap@@7 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_6386) (o_2@@3 T@Ref) (f_4@@3 T@Field_6425_15876) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_6386_6425_19437#PolymorphicMapType_6386| Mask@@6) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_6425_20346 f_4@@3))) (not (IsWandField_6425_20362 f_4@@3))) (<= (select (|PolymorphicMapType_6386_6425_19437#PolymorphicMapType_6386| Mask@@6) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_6386_6425_19437#PolymorphicMapType_6386| Mask@@6) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_6386) (o_2@@4 T@Ref) (f_4@@4 T@Field_6425_15743) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_6386_6425_15743#PolymorphicMapType_6386| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_6425_15834 f_4@@4))) (not (IsWandField_6425_17383 f_4@@4))) (<= (select (|PolymorphicMapType_6386_6425_15743#PolymorphicMapType_6386| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_6386_6425_15743#PolymorphicMapType_6386| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_6386) (o_2@@5 T@Ref) (f_4@@5 T@Field_6438_6439) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_6386_6425_6439#PolymorphicMapType_6386| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_6425_6439 f_4@@5))) (not (IsWandField_6425_6439 f_4@@5))) (<= (select (|PolymorphicMapType_6386_6425_6439#PolymorphicMapType_6386| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_6386_6425_6439#PolymorphicMapType_6386| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_6386) (o_2@@6 T@Ref) (f_4@@6 T@Field_6425_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_6386_6425_53#PolymorphicMapType_6386| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_6425_53 f_4@@6))) (not (IsWandField_6425_53 f_4@@6))) (<= (select (|PolymorphicMapType_6386_6425_53#PolymorphicMapType_6386| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_6386_6425_53#PolymorphicMapType_6386| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_6386) (o_2@@7 T@Ref) (f_4@@7 T@Field_6425_15876) ) (! (= (HasDirectPerm_6425_20717 Mask@@10 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_6386_6425_19437#PolymorphicMapType_6386| Mask@@10) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6425_20717 Mask@@10 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_6386) (o_2@@8 T@Ref) (f_4@@8 T@Field_6425_15743) ) (! (= (HasDirectPerm_6425_15807 Mask@@11 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_6386_6425_15743#PolymorphicMapType_6386| Mask@@11) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6425_15807 Mask@@11 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_6386) (o_2@@9 T@Ref) (f_4@@9 T@Field_6438_6439) ) (! (= (HasDirectPerm_6425_6439 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_6386_6425_6439#PolymorphicMapType_6386| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6425_6439 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_6386) (o_2@@10 T@Ref) (f_4@@10 T@Field_6425_53) ) (! (= (HasDirectPerm_6425_53 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_6386_6425_53#PolymorphicMapType_6386| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6425_53 Mask@@13 o_2@@10 f_4@@10))
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
(assert (forall ((Heap@@8 T@PolymorphicMapType_6365) (ExhaleHeap@@5 T@PolymorphicMapType_6365) (Mask@@14 T@PolymorphicMapType_6386) (o_27@@0 T@Ref) (f_24@@7 T@Field_6425_15876) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@14) (=> (HasDirectPerm_6425_20717 Mask@@14 o_27@@0 f_24@@7) (= (select (|PolymorphicMapType_6365_6425_15920#PolymorphicMapType_6365| Heap@@8) o_27@@0 f_24@@7) (select (|PolymorphicMapType_6365_6425_15920#PolymorphicMapType_6365| ExhaleHeap@@5) o_27@@0 f_24@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@14) (select (|PolymorphicMapType_6365_6425_15920#PolymorphicMapType_6365| ExhaleHeap@@5) o_27@@0 f_24@@7))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_6365) (ExhaleHeap@@6 T@PolymorphicMapType_6365) (Mask@@15 T@PolymorphicMapType_6386) (o_27@@1 T@Ref) (f_24@@8 T@Field_6425_15743) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@15) (=> (HasDirectPerm_6425_15807 Mask@@15 o_27@@1 f_24@@8) (= (select (|PolymorphicMapType_6365_6425_15743#PolymorphicMapType_6365| Heap@@9) o_27@@1 f_24@@8) (select (|PolymorphicMapType_6365_6425_15743#PolymorphicMapType_6365| ExhaleHeap@@6) o_27@@1 f_24@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@15) (select (|PolymorphicMapType_6365_6425_15743#PolymorphicMapType_6365| ExhaleHeap@@6) o_27@@1 f_24@@8))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_6365) (ExhaleHeap@@7 T@PolymorphicMapType_6365) (Mask@@16 T@PolymorphicMapType_6386) (o_27@@2 T@Ref) (f_24@@9 T@Field_6438_6439) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@16) (=> (HasDirectPerm_6425_6439 Mask@@16 o_27@@2 f_24@@9) (= (select (|PolymorphicMapType_6365_3902_3903#PolymorphicMapType_6365| Heap@@10) o_27@@2 f_24@@9) (select (|PolymorphicMapType_6365_3902_3903#PolymorphicMapType_6365| ExhaleHeap@@7) o_27@@2 f_24@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@16) (select (|PolymorphicMapType_6365_3902_3903#PolymorphicMapType_6365| ExhaleHeap@@7) o_27@@2 f_24@@9))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_6365) (ExhaleHeap@@8 T@PolymorphicMapType_6365) (Mask@@17 T@PolymorphicMapType_6386) (o_27@@3 T@Ref) (f_24@@10 T@Field_6425_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@17) (=> (HasDirectPerm_6425_53 Mask@@17 o_27@@3 f_24@@10) (= (select (|PolymorphicMapType_6365_3899_53#PolymorphicMapType_6365| Heap@@11) o_27@@3 f_24@@10) (select (|PolymorphicMapType_6365_3899_53#PolymorphicMapType_6365| ExhaleHeap@@8) o_27@@3 f_24@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@17) (select (|PolymorphicMapType_6365_3899_53#PolymorphicMapType_6365| ExhaleHeap@@8) o_27@@3 f_24@@10))
)))
(assert (forall ((s0@@0 T@Seq_2867) (s1@@0 T@Seq_2867) ) (!  (=> (and (not (= s0@@0 |Seq#Empty_2867|)) (not (= s1@@0 |Seq#Empty_2867|))) (= (|Seq#Length_2867| (|Seq#Append_3| s0@@0 s1@@0)) (+ (|Seq#Length_2867| s0@@0) (|Seq#Length_2867| s1@@0))))
 :qid |stdinbpl.212:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2867| (|Seq#Append_3| s0@@0 s1@@0)))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_6425_15876) ) (! (= (select (|PolymorphicMapType_6386_6425_19437#PolymorphicMapType_6386| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6386_6425_19437#PolymorphicMapType_6386| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_6425_15743) ) (! (= (select (|PolymorphicMapType_6386_6425_15743#PolymorphicMapType_6386| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6386_6425_15743#PolymorphicMapType_6386| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_6438_6439) ) (! (= (select (|PolymorphicMapType_6386_6425_6439#PolymorphicMapType_6386| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6386_6425_6439#PolymorphicMapType_6386| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_6425_53) ) (! (= (select (|PolymorphicMapType_6386_6425_53#PolymorphicMapType_6386| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6386_6425_53#PolymorphicMapType_6386| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((s@@7 T@Seq_2867) (t@@0 T@Seq_2867) (n@@7 Int) ) (!  (=> (and (> n@@7 0) (> n@@7 (|Seq#Length_2867| s@@7))) (and (= (|Seq#Add| (|Seq#Sub| n@@7 (|Seq#Length_2867| s@@7)) (|Seq#Length_2867| s@@7)) n@@7) (= (|Seq#Drop_2867| (|Seq#Append_3| s@@7 t@@0) n@@7) (|Seq#Drop_2867| t@@0 (|Seq#Sub| n@@7 (|Seq#Length_2867| s@@7))))))
 :qid |stdinbpl.369:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_2867| (|Seq#Append_3| s@@7 t@@0) n@@7))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_6365) (Mask@@18 T@PolymorphicMapType_6386) (i@@4 Int) ) (!  (=> (and (state Heap@@12 Mask@@18) (< AssumeFunctionsAbove 0)) (=> (>= i@@4 0) (= (reqIGt0 Heap@@12 i@@4) i@@4)))
 :qid |stdinbpl.560:15|
 :skolemid |60|
 :pattern ( (state Heap@@12 Mask@@18) (reqIGt0 Heap@@12 i@@4))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_6386) (SummandMask1 T@PolymorphicMapType_6386) (SummandMask2 T@PolymorphicMapType_6386) (o_2@@15 T@Ref) (f_4@@15 T@Field_6425_15876) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_6386_6425_19437#PolymorphicMapType_6386| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_6386_6425_19437#PolymorphicMapType_6386| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_6386_6425_19437#PolymorphicMapType_6386| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6386_6425_19437#PolymorphicMapType_6386| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6386_6425_19437#PolymorphicMapType_6386| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6386_6425_19437#PolymorphicMapType_6386| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_6386) (SummandMask1@@0 T@PolymorphicMapType_6386) (SummandMask2@@0 T@PolymorphicMapType_6386) (o_2@@16 T@Ref) (f_4@@16 T@Field_6425_15743) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_6386_6425_15743#PolymorphicMapType_6386| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_6386_6425_15743#PolymorphicMapType_6386| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_6386_6425_15743#PolymorphicMapType_6386| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6386_6425_15743#PolymorphicMapType_6386| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6386_6425_15743#PolymorphicMapType_6386| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6386_6425_15743#PolymorphicMapType_6386| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_6386) (SummandMask1@@1 T@PolymorphicMapType_6386) (SummandMask2@@1 T@PolymorphicMapType_6386) (o_2@@17 T@Ref) (f_4@@17 T@Field_6438_6439) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_6386_6425_6439#PolymorphicMapType_6386| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_6386_6425_6439#PolymorphicMapType_6386| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_6386_6425_6439#PolymorphicMapType_6386| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6386_6425_6439#PolymorphicMapType_6386| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6386_6425_6439#PolymorphicMapType_6386| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6386_6425_6439#PolymorphicMapType_6386| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_6386) (SummandMask1@@2 T@PolymorphicMapType_6386) (SummandMask2@@2 T@PolymorphicMapType_6386) (o_2@@18 T@Ref) (f_4@@18 T@Field_6425_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_6386_6425_53#PolymorphicMapType_6386| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_6386_6425_53#PolymorphicMapType_6386| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_6386_6425_53#PolymorphicMapType_6386| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6386_6425_53#PolymorphicMapType_6386| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6386_6425_53#PolymorphicMapType_6386| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6386_6425_53#PolymorphicMapType_6386| SummandMask2@@2) o_2@@18 f_4@@18))
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
(assert (forall ((s@@8 T@Seq_2867) (i@@5 Int) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_2867| s@@8))) (|Seq#ContainsTrigger_3| s@@8 (|Seq#Index_2867| s@@8 i@@5)))
 :qid |stdinbpl.400:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2867| s@@8 i@@5))
)))
(assert (forall ((s0@@1 T@Seq_2867) (s1@@1 T@Seq_2867) ) (!  (and (=> (= s0@@1 |Seq#Empty_2867|) (= (|Seq#Append_3| s0@@1 s1@@1) s1@@1)) (=> (= s1@@1 |Seq#Empty_2867|) (= (|Seq#Append_3| s0@@1 s1@@1) s0@@1)))
 :qid |stdinbpl.218:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3| s0@@1 s1@@1))
)))
(assert (forall ((t@@1 Int) ) (! (= (|Seq#Index_2867| (|Seq#Singleton_3| t@@1) 0) t@@1)
 :qid |stdinbpl.222:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3| t@@1))
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
(assert (forall ((t@@2 Int) ) (! (= (|Seq#Length_2867| (|Seq#Singleton_3| t@@2)) 1)
 :qid |stdinbpl.209:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3| t@@2))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_6365) (Mask@@19 T@PolymorphicMapType_6386) (i@@6 Int) ) (!  (=> (state Heap@@13 Mask@@19) (= (|reqIGt0'| Heap@@13 i@@6) (|reqIGt0#frame| EmptyFrame i@@6)))
 :qid |stdinbpl.567:15|
 :skolemid |61|
 :pattern ( (state Heap@@13 Mask@@19) (|reqIGt0'| Heap@@13 i@@6))
)))
(assert (forall ((s@@10 T@Seq_2867) (t@@3 T@Seq_2867) (n@@8 Int) ) (!  (=> (and (< 0 n@@8) (<= n@@8 (|Seq#Length_2867| s@@10))) (= (|Seq#Take_2867| (|Seq#Append_3| s@@10 t@@3) n@@8) (|Seq#Take_2867| s@@10 n@@8)))
 :qid |stdinbpl.351:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2867| (|Seq#Append_3| s@@10 t@@3) n@@8))
)))
(assert (forall ((s@@11 T@Seq_2867) (i@@7 Int) (v@@1 Int) ) (!  (=> (and (<= 0 i@@7) (< i@@7 (|Seq#Length_2867| s@@11))) (= (|Seq#Length_2867| (|Seq#Update_2867| s@@11 i@@7 v@@1)) (|Seq#Length_2867| s@@11)))
 :qid |stdinbpl.250:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2867| (|Seq#Update_2867| s@@11 i@@7 v@@1)))
 :pattern ( (|Seq#Length_2867| s@@11) (|Seq#Update_2867| s@@11 i@@7 v@@1))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_6365) (o_20 T@Ref) (f_31 T@Field_6425_15743) (v@@2 T@FrameType) ) (! (succHeap Heap@@14 (PolymorphicMapType_6365 (|PolymorphicMapType_6365_3899_53#PolymorphicMapType_6365| Heap@@14) (|PolymorphicMapType_6365_3902_3903#PolymorphicMapType_6365| Heap@@14) (|PolymorphicMapType_6365_6425_15920#PolymorphicMapType_6365| Heap@@14) (store (|PolymorphicMapType_6365_6425_15743#PolymorphicMapType_6365| Heap@@14) o_20 f_31 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6365 (|PolymorphicMapType_6365_3899_53#PolymorphicMapType_6365| Heap@@14) (|PolymorphicMapType_6365_3902_3903#PolymorphicMapType_6365| Heap@@14) (|PolymorphicMapType_6365_6425_15920#PolymorphicMapType_6365| Heap@@14) (store (|PolymorphicMapType_6365_6425_15743#PolymorphicMapType_6365| Heap@@14) o_20 f_31 v@@2)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_6365) (o_20@@0 T@Ref) (f_31@@0 T@Field_6425_15876) (v@@3 T@PolymorphicMapType_6914) ) (! (succHeap Heap@@15 (PolymorphicMapType_6365 (|PolymorphicMapType_6365_3899_53#PolymorphicMapType_6365| Heap@@15) (|PolymorphicMapType_6365_3902_3903#PolymorphicMapType_6365| Heap@@15) (store (|PolymorphicMapType_6365_6425_15920#PolymorphicMapType_6365| Heap@@15) o_20@@0 f_31@@0 v@@3) (|PolymorphicMapType_6365_6425_15743#PolymorphicMapType_6365| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6365 (|PolymorphicMapType_6365_3899_53#PolymorphicMapType_6365| Heap@@15) (|PolymorphicMapType_6365_3902_3903#PolymorphicMapType_6365| Heap@@15) (store (|PolymorphicMapType_6365_6425_15920#PolymorphicMapType_6365| Heap@@15) o_20@@0 f_31@@0 v@@3) (|PolymorphicMapType_6365_6425_15743#PolymorphicMapType_6365| Heap@@15)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_6365) (o_20@@1 T@Ref) (f_31@@1 T@Field_6438_6439) (v@@4 T@Ref) ) (! (succHeap Heap@@16 (PolymorphicMapType_6365 (|PolymorphicMapType_6365_3899_53#PolymorphicMapType_6365| Heap@@16) (store (|PolymorphicMapType_6365_3902_3903#PolymorphicMapType_6365| Heap@@16) o_20@@1 f_31@@1 v@@4) (|PolymorphicMapType_6365_6425_15920#PolymorphicMapType_6365| Heap@@16) (|PolymorphicMapType_6365_6425_15743#PolymorphicMapType_6365| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6365 (|PolymorphicMapType_6365_3899_53#PolymorphicMapType_6365| Heap@@16) (store (|PolymorphicMapType_6365_3902_3903#PolymorphicMapType_6365| Heap@@16) o_20@@1 f_31@@1 v@@4) (|PolymorphicMapType_6365_6425_15920#PolymorphicMapType_6365| Heap@@16) (|PolymorphicMapType_6365_6425_15743#PolymorphicMapType_6365| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_6365) (o_20@@2 T@Ref) (f_31@@2 T@Field_6425_53) (v@@5 Bool) ) (! (succHeap Heap@@17 (PolymorphicMapType_6365 (store (|PolymorphicMapType_6365_3899_53#PolymorphicMapType_6365| Heap@@17) o_20@@2 f_31@@2 v@@5) (|PolymorphicMapType_6365_3902_3903#PolymorphicMapType_6365| Heap@@17) (|PolymorphicMapType_6365_6425_15920#PolymorphicMapType_6365| Heap@@17) (|PolymorphicMapType_6365_6425_15743#PolymorphicMapType_6365| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6365 (store (|PolymorphicMapType_6365_3899_53#PolymorphicMapType_6365| Heap@@17) o_20@@2 f_31@@2 v@@5) (|PolymorphicMapType_6365_3902_3903#PolymorphicMapType_6365| Heap@@17) (|PolymorphicMapType_6365_6425_15920#PolymorphicMapType_6365| Heap@@17) (|PolymorphicMapType_6365_6425_15743#PolymorphicMapType_6365| Heap@@17)))
)))
(assert (forall ((s@@12 T@Seq_2867) (t@@4 T@Seq_2867) (n@@9 Int) ) (!  (=> (and (< 0 n@@9) (<= n@@9 (|Seq#Length_2867| s@@12))) (= (|Seq#Drop_2867| (|Seq#Append_3| s@@12 t@@4) n@@9) (|Seq#Append_3| (|Seq#Drop_2867| s@@12 n@@9) t@@4)))
 :qid |stdinbpl.365:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_2867| (|Seq#Append_3| s@@12 t@@4) n@@9))
)))
(assert (forall ((s@@13 T@Seq_2867) (n@@10 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@10) (<= n@@10 i@@8)) (< i@@8 (|Seq#Length_2867| s@@13))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@10) n@@10) i@@8) (= (|Seq#Index_2867| (|Seq#Drop_2867| s@@13 n@@10) (|Seq#Sub| i@@8 n@@10)) (|Seq#Index_2867| s@@13 i@@8))))
 :qid |stdinbpl.301:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_2867| s@@13 n@@10) (|Seq#Index_2867| s@@13 i@@8))
)))
(assert (forall ((s0@@3 T@Seq_2867) (s1@@3 T@Seq_2867) (n@@11 Int) ) (!  (=> (and (and (and (not (= s0@@3 |Seq#Empty_2867|)) (not (= s1@@3 |Seq#Empty_2867|))) (<= 0 n@@11)) (< n@@11 (|Seq#Length_2867| s0@@3))) (= (|Seq#Index_2867| (|Seq#Append_3| s0@@3 s1@@3) n@@11) (|Seq#Index_2867| s0@@3 n@@11)))
 :qid |stdinbpl.241:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_3| s0@@3 s1@@3) n@@11))
 :pattern ( (|Seq#Index_2867| s0@@3 n@@11) (|Seq#Append_3| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2867) (s1@@4 T@Seq_2867) (m Int) ) (!  (=> (and (and (and (not (= s0@@4 |Seq#Empty_2867|)) (not (= s1@@4 |Seq#Empty_2867|))) (<= 0 m)) (< m (|Seq#Length_2867| s1@@4))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_2867| s0@@4)) (|Seq#Length_2867| s0@@4)) m) (= (|Seq#Index_2867| (|Seq#Append_3| s0@@4 s1@@4) (|Seq#Add| m (|Seq#Length_2867| s0@@4))) (|Seq#Index_2867| s1@@4 m))))
 :qid |stdinbpl.246:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2867| s1@@4 m) (|Seq#Append_3| s0@@4 s1@@4))
)))
(assert (forall ((o_20@@3 T@Ref) (f_17 T@Field_6438_6439) (Heap@@18 T@PolymorphicMapType_6365) ) (!  (=> (select (|PolymorphicMapType_6365_3899_53#PolymorphicMapType_6365| Heap@@18) o_20@@3 $allocated) (select (|PolymorphicMapType_6365_3899_53#PolymorphicMapType_6365| Heap@@18) (select (|PolymorphicMapType_6365_3902_3903#PolymorphicMapType_6365| Heap@@18) o_20@@3 f_17) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_6365_3902_3903#PolymorphicMapType_6365| Heap@@18) o_20@@3 f_17))
)))
(assert (forall ((s@@14 T@Seq_2867) (x@@1 Int) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_2867| s@@14))) (= (|Seq#Index_2867| s@@14 i@@9) x@@1)) (|Seq#Contains_2867| s@@14 x@@1))
 :qid |stdinbpl.398:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2867| s@@14 x@@1) (|Seq#Index_2867| s@@14 i@@9))
)))
(assert (forall ((s0@@5 T@Seq_2867) (s1@@5 T@Seq_2867) ) (!  (or (or (and (= s0@@5 s1@@5) (|Seq#Equal_2867| s0@@5 s1@@5)) (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_2867| s0@@5 s1@@5))) (not (= (|Seq#Length_2867| s0@@5) (|Seq#Length_2867| s1@@5))))) (and (and (and (and (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_2867| s0@@5 s1@@5))) (= (|Seq#Length_2867| s0@@5) (|Seq#Length_2867| s1@@5))) (= (|Seq#SkolemDiff_2867| s0@@5 s1@@5) (|Seq#SkolemDiff_2867| s1@@5 s0@@5))) (<= 0 (|Seq#SkolemDiff_2867| s0@@5 s1@@5))) (< (|Seq#SkolemDiff_2867| s0@@5 s1@@5) (|Seq#Length_2867| s0@@5))) (not (= (|Seq#Index_2867| s0@@5 (|Seq#SkolemDiff_2867| s0@@5 s1@@5)) (|Seq#Index_2867| s1@@5 (|Seq#SkolemDiff_2867| s0@@5 s1@@5))))))
 :qid |stdinbpl.502:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_2867| s0@@5 s1@@5))
)))
(assert (forall ((p@@1 T@Field_6425_15743) (v_1@@0 T@FrameType) (q T@Field_6425_15743) (w@@0 T@FrameType) (r T@Field_6425_15743) (u T@FrameType) ) (!  (=> (and (InsidePredicate_6425_6425 p@@1 v_1@@0 q w@@0) (InsidePredicate_6425_6425 q w@@0 r u)) (InsidePredicate_6425_6425 p@@1 v_1@@0 r u))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6425_6425 p@@1 v_1@@0 q w@@0) (InsidePredicate_6425_6425 q w@@0 r u))
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
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id |reqIGt0#definedness|)
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
