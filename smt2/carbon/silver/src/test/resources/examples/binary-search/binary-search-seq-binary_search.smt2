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
(declare-sort T@Field_6847_53 0)
(declare-sort T@Field_6860_6861 0)
(declare-sort T@Field_6847_16858 0)
(declare-sort T@Field_6847_16725 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_6808 0)) (((PolymorphicMapType_6808 (|PolymorphicMapType_6808_6847_53#PolymorphicMapType_6808| (Array T@Ref T@Field_6847_53 Real)) (|PolymorphicMapType_6808_6847_6861#PolymorphicMapType_6808| (Array T@Ref T@Field_6860_6861 Real)) (|PolymorphicMapType_6808_6847_16725#PolymorphicMapType_6808| (Array T@Ref T@Field_6847_16725 Real)) (|PolymorphicMapType_6808_6847_20419#PolymorphicMapType_6808| (Array T@Ref T@Field_6847_16858 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7336 0)) (((PolymorphicMapType_7336 (|PolymorphicMapType_7336_6847_53#PolymorphicMapType_7336| (Array T@Ref T@Field_6847_53 Bool)) (|PolymorphicMapType_7336_6847_6861#PolymorphicMapType_7336| (Array T@Ref T@Field_6860_6861 Bool)) (|PolymorphicMapType_7336_6847_16725#PolymorphicMapType_7336| (Array T@Ref T@Field_6847_16725 Bool)) (|PolymorphicMapType_7336_6847_17838#PolymorphicMapType_7336| (Array T@Ref T@Field_6847_16858 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6787 0)) (((PolymorphicMapType_6787 (|PolymorphicMapType_6787_4385_53#PolymorphicMapType_6787| (Array T@Ref T@Field_6847_53 Bool)) (|PolymorphicMapType_6787_4388_4389#PolymorphicMapType_6787| (Array T@Ref T@Field_6860_6861 T@Ref)) (|PolymorphicMapType_6787_6847_16902#PolymorphicMapType_6787| (Array T@Ref T@Field_6847_16858 T@PolymorphicMapType_7336)) (|PolymorphicMapType_6787_6847_16725#PolymorphicMapType_6787| (Array T@Ref T@Field_6847_16725 T@FrameType)) ) ) ))
(declare-sort T@Seq_2864 0)
(declare-fun |Seq#Length_2864| (T@Seq_2864) Int)
(declare-fun |Seq#Drop_2864| (T@Seq_2864 Int) T@Seq_2864)
(declare-fun succHeap (T@PolymorphicMapType_6787 T@PolymorphicMapType_6787) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_6787 T@PolymorphicMapType_6787) Bool)
(declare-fun state (T@PolymorphicMapType_6787 T@PolymorphicMapType_6808) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_6808) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_7336)
(declare-fun |Seq#Index_2864| (T@Seq_2864 Int) Int)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Empty_2864| () T@Seq_2864)
(declare-fun |Seq#Update_2864| (T@Seq_2864 Int Int) T@Seq_2864)
(declare-fun |Seq#Take_2864| (T@Seq_2864 Int) T@Seq_2864)
(declare-fun |Seq#Contains_2864| (T@Seq_2864 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2864)
(declare-fun |Seq#Skolem_2864| (T@Seq_2864 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_6787 T@PolymorphicMapType_6787 T@PolymorphicMapType_6808) Bool)
(declare-fun IsPredicateField_6847_16816 (T@Field_6847_16725) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_6847 (T@Field_6847_16725) T@Field_6847_16858)
(declare-fun HasDirectPerm_6847_16789 (T@PolymorphicMapType_6808 T@Ref T@Field_6847_16725) Bool)
(declare-fun IsWandField_6847_18365 (T@Field_6847_16725) Bool)
(declare-fun WandMaskField_6847 (T@Field_6847_16725) T@Field_6847_16858)
(declare-fun |Seq#Singleton_2864| (Int) T@Seq_2864)
(declare-fun |Seq#Append_2864| (T@Seq_2864 T@Seq_2864) T@Seq_2864)
(declare-fun dummyHeap () T@PolymorphicMapType_6787)
(declare-fun ZeroMask () T@PolymorphicMapType_6808)
(declare-fun $allocated () T@Field_6847_53)
(declare-fun InsidePredicate_6847_6847 (T@Field_6847_16725 T@FrameType T@Field_6847_16725 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6847_21328 (T@Field_6847_16858) Bool)
(declare-fun IsWandField_6847_21344 (T@Field_6847_16858) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_6847_6861 (T@Field_6860_6861) Bool)
(declare-fun IsWandField_6847_6861 (T@Field_6860_6861) Bool)
(declare-fun IsPredicateField_6847_53 (T@Field_6847_53) Bool)
(declare-fun IsWandField_6847_53 (T@Field_6847_53) Bool)
(declare-fun HasDirectPerm_6847_21699 (T@PolymorphicMapType_6808 T@Ref T@Field_6847_16858) Bool)
(declare-fun HasDirectPerm_6847_6861 (T@PolymorphicMapType_6808 T@Ref T@Field_6860_6861) Bool)
(declare-fun HasDirectPerm_6847_53 (T@PolymorphicMapType_6808 T@Ref T@Field_6847_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_6808 T@PolymorphicMapType_6808 T@PolymorphicMapType_6808) Bool)
(declare-fun |Seq#Equal_2864| (T@Seq_2864 T@Seq_2864) Bool)
(declare-fun |Seq#ContainsTrigger_2864| (T@Seq_2864 Int) Bool)
(declare-fun |Seq#SkolemDiff_2864| (T@Seq_2864 T@Seq_2864) Int)
(assert (forall ((s T@Seq_2864) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_2864| s)) (= (|Seq#Length_2864| (|Seq#Drop_2864| s n)) (- (|Seq#Length_2864| s) n))) (=> (< (|Seq#Length_2864| s) n) (= (|Seq#Length_2864| (|Seq#Drop_2864| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_2864| (|Seq#Drop_2864| s n)) (|Seq#Length_2864| s))))
 :qid |stdinbpl.273:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2864| (|Seq#Drop_2864| s n)))
 :pattern ( (|Seq#Length_2864| s) (|Seq#Drop_2864| s n))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_6787) (Heap1 T@PolymorphicMapType_6787) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_6787) (Mask T@PolymorphicMapType_6808) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_6787) (Heap1@@0 T@PolymorphicMapType_6787) (Heap2 T@PolymorphicMapType_6787) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_6847_16858) ) (!  (not (select (|PolymorphicMapType_7336_6847_17838#PolymorphicMapType_7336| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7336_6847_17838#PolymorphicMapType_7336| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_6847_16725) ) (!  (not (select (|PolymorphicMapType_7336_6847_16725#PolymorphicMapType_7336| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7336_6847_16725#PolymorphicMapType_7336| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_6860_6861) ) (!  (not (select (|PolymorphicMapType_7336_6847_6861#PolymorphicMapType_7336| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7336_6847_6861#PolymorphicMapType_7336| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_6847_53) ) (!  (not (select (|PolymorphicMapType_7336_6847_53#PolymorphicMapType_7336| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7336_6847_53#PolymorphicMapType_7336| ZeroPMask) o_2@@2 f_4@@2))
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
(assert (forall ((Heap@@0 T@PolymorphicMapType_6787) (ExhaleHeap T@PolymorphicMapType_6787) (Mask@@0 T@PolymorphicMapType_6808) (pm_f_9 T@Field_6847_16725) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_6847_16789 Mask@@0 null pm_f_9) (IsPredicateField_6847_16816 pm_f_9)) (= (select (|PolymorphicMapType_6787_6847_16902#PolymorphicMapType_6787| Heap@@0) null (PredicateMaskField_6847 pm_f_9)) (select (|PolymorphicMapType_6787_6847_16902#PolymorphicMapType_6787| ExhaleHeap) null (PredicateMaskField_6847 pm_f_9)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_6847_16816 pm_f_9) (select (|PolymorphicMapType_6787_6847_16902#PolymorphicMapType_6787| ExhaleHeap) null (PredicateMaskField_6847 pm_f_9)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_6787) (ExhaleHeap@@0 T@PolymorphicMapType_6787) (Mask@@1 T@PolymorphicMapType_6808) (pm_f_9@@0 T@Field_6847_16725) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_6847_16789 Mask@@1 null pm_f_9@@0) (IsWandField_6847_18365 pm_f_9@@0)) (= (select (|PolymorphicMapType_6787_6847_16902#PolymorphicMapType_6787| Heap@@1) null (WandMaskField_6847 pm_f_9@@0)) (select (|PolymorphicMapType_6787_6847_16902#PolymorphicMapType_6787| ExhaleHeap@@0) null (WandMaskField_6847 pm_f_9@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_6847_18365 pm_f_9@@0) (select (|PolymorphicMapType_6787_6847_16902#PolymorphicMapType_6787| ExhaleHeap@@0) null (WandMaskField_6847 pm_f_9@@0)))
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
(assert (forall ((Heap@@2 T@PolymorphicMapType_6787) (ExhaleHeap@@1 T@PolymorphicMapType_6787) (Mask@@2 T@PolymorphicMapType_6808) (pm_f_9@@1 T@Field_6847_16725) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_6847_16789 Mask@@2 null pm_f_9@@1) (IsPredicateField_6847_16816 pm_f_9@@1)) (and (and (and (forall ((o2_9 T@Ref) (f_24 T@Field_6847_53) ) (!  (=> (select (|PolymorphicMapType_7336_6847_53#PolymorphicMapType_7336| (select (|PolymorphicMapType_6787_6847_16902#PolymorphicMapType_6787| Heap@@2) null (PredicateMaskField_6847 pm_f_9@@1))) o2_9 f_24) (= (select (|PolymorphicMapType_6787_4385_53#PolymorphicMapType_6787| Heap@@2) o2_9 f_24) (select (|PolymorphicMapType_6787_4385_53#PolymorphicMapType_6787| ExhaleHeap@@1) o2_9 f_24)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6787_4385_53#PolymorphicMapType_6787| ExhaleHeap@@1) o2_9 f_24))
)) (forall ((o2_9@@0 T@Ref) (f_24@@0 T@Field_6860_6861) ) (!  (=> (select (|PolymorphicMapType_7336_6847_6861#PolymorphicMapType_7336| (select (|PolymorphicMapType_6787_6847_16902#PolymorphicMapType_6787| Heap@@2) null (PredicateMaskField_6847 pm_f_9@@1))) o2_9@@0 f_24@@0) (= (select (|PolymorphicMapType_6787_4388_4389#PolymorphicMapType_6787| Heap@@2) o2_9@@0 f_24@@0) (select (|PolymorphicMapType_6787_4388_4389#PolymorphicMapType_6787| ExhaleHeap@@1) o2_9@@0 f_24@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6787_4388_4389#PolymorphicMapType_6787| ExhaleHeap@@1) o2_9@@0 f_24@@0))
))) (forall ((o2_9@@1 T@Ref) (f_24@@1 T@Field_6847_16725) ) (!  (=> (select (|PolymorphicMapType_7336_6847_16725#PolymorphicMapType_7336| (select (|PolymorphicMapType_6787_6847_16902#PolymorphicMapType_6787| Heap@@2) null (PredicateMaskField_6847 pm_f_9@@1))) o2_9@@1 f_24@@1) (= (select (|PolymorphicMapType_6787_6847_16725#PolymorphicMapType_6787| Heap@@2) o2_9@@1 f_24@@1) (select (|PolymorphicMapType_6787_6847_16725#PolymorphicMapType_6787| ExhaleHeap@@1) o2_9@@1 f_24@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6787_6847_16725#PolymorphicMapType_6787| ExhaleHeap@@1) o2_9@@1 f_24@@1))
))) (forall ((o2_9@@2 T@Ref) (f_24@@2 T@Field_6847_16858) ) (!  (=> (select (|PolymorphicMapType_7336_6847_17838#PolymorphicMapType_7336| (select (|PolymorphicMapType_6787_6847_16902#PolymorphicMapType_6787| Heap@@2) null (PredicateMaskField_6847 pm_f_9@@1))) o2_9@@2 f_24@@2) (= (select (|PolymorphicMapType_6787_6847_16902#PolymorphicMapType_6787| Heap@@2) o2_9@@2 f_24@@2) (select (|PolymorphicMapType_6787_6847_16902#PolymorphicMapType_6787| ExhaleHeap@@1) o2_9@@2 f_24@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6787_6847_16902#PolymorphicMapType_6787| ExhaleHeap@@1) o2_9@@2 f_24@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsPredicateField_6847_16816 pm_f_9@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_6787) (ExhaleHeap@@2 T@PolymorphicMapType_6787) (Mask@@3 T@PolymorphicMapType_6808) (pm_f_9@@2 T@Field_6847_16725) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_6847_16789 Mask@@3 null pm_f_9@@2) (IsWandField_6847_18365 pm_f_9@@2)) (and (and (and (forall ((o2_9@@3 T@Ref) (f_24@@3 T@Field_6847_53) ) (!  (=> (select (|PolymorphicMapType_7336_6847_53#PolymorphicMapType_7336| (select (|PolymorphicMapType_6787_6847_16902#PolymorphicMapType_6787| Heap@@3) null (WandMaskField_6847 pm_f_9@@2))) o2_9@@3 f_24@@3) (= (select (|PolymorphicMapType_6787_4385_53#PolymorphicMapType_6787| Heap@@3) o2_9@@3 f_24@@3) (select (|PolymorphicMapType_6787_4385_53#PolymorphicMapType_6787| ExhaleHeap@@2) o2_9@@3 f_24@@3)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6787_4385_53#PolymorphicMapType_6787| ExhaleHeap@@2) o2_9@@3 f_24@@3))
)) (forall ((o2_9@@4 T@Ref) (f_24@@4 T@Field_6860_6861) ) (!  (=> (select (|PolymorphicMapType_7336_6847_6861#PolymorphicMapType_7336| (select (|PolymorphicMapType_6787_6847_16902#PolymorphicMapType_6787| Heap@@3) null (WandMaskField_6847 pm_f_9@@2))) o2_9@@4 f_24@@4) (= (select (|PolymorphicMapType_6787_4388_4389#PolymorphicMapType_6787| Heap@@3) o2_9@@4 f_24@@4) (select (|PolymorphicMapType_6787_4388_4389#PolymorphicMapType_6787| ExhaleHeap@@2) o2_9@@4 f_24@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6787_4388_4389#PolymorphicMapType_6787| ExhaleHeap@@2) o2_9@@4 f_24@@4))
))) (forall ((o2_9@@5 T@Ref) (f_24@@5 T@Field_6847_16725) ) (!  (=> (select (|PolymorphicMapType_7336_6847_16725#PolymorphicMapType_7336| (select (|PolymorphicMapType_6787_6847_16902#PolymorphicMapType_6787| Heap@@3) null (WandMaskField_6847 pm_f_9@@2))) o2_9@@5 f_24@@5) (= (select (|PolymorphicMapType_6787_6847_16725#PolymorphicMapType_6787| Heap@@3) o2_9@@5 f_24@@5) (select (|PolymorphicMapType_6787_6847_16725#PolymorphicMapType_6787| ExhaleHeap@@2) o2_9@@5 f_24@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6787_6847_16725#PolymorphicMapType_6787| ExhaleHeap@@2) o2_9@@5 f_24@@5))
))) (forall ((o2_9@@6 T@Ref) (f_24@@6 T@Field_6847_16858) ) (!  (=> (select (|PolymorphicMapType_7336_6847_17838#PolymorphicMapType_7336| (select (|PolymorphicMapType_6787_6847_16902#PolymorphicMapType_6787| Heap@@3) null (WandMaskField_6847 pm_f_9@@2))) o2_9@@6 f_24@@6) (= (select (|PolymorphicMapType_6787_6847_16902#PolymorphicMapType_6787| Heap@@3) o2_9@@6 f_24@@6) (select (|PolymorphicMapType_6787_6847_16902#PolymorphicMapType_6787| ExhaleHeap@@2) o2_9@@6 f_24@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6787_6847_16902#PolymorphicMapType_6787| ExhaleHeap@@2) o2_9@@6 f_24@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_6847_18365 pm_f_9@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@4 T@PolymorphicMapType_6787) (ExhaleHeap@@3 T@PolymorphicMapType_6787) (Mask@@4 T@PolymorphicMapType_6808) (o_27 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_6787_4385_53#PolymorphicMapType_6787| Heap@@4) o_27 $allocated) (select (|PolymorphicMapType_6787_4385_53#PolymorphicMapType_6787| ExhaleHeap@@3) o_27 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_6787_4385_53#PolymorphicMapType_6787| ExhaleHeap@@3) o_27 $allocated))
)))
(assert (forall ((p T@Field_6847_16725) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_6847_6847 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6847_6847 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_2864) (s1 T@Seq_2864) (n@@6 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_2864|)) (not (= s1 |Seq#Empty_2864|))) (<= (|Seq#Length_2864| s0) n@@6)) (< n@@6 (|Seq#Length_2864| (|Seq#Append_2864| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@6 (|Seq#Length_2864| s0)) (|Seq#Length_2864| s0)) n@@6) (= (|Seq#Index_2864| (|Seq#Append_2864| s0 s1) n@@6) (|Seq#Index_2864| s1 (|Seq#Sub| n@@6 (|Seq#Length_2864| s0))))))
 :qid |stdinbpl.240:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2864| (|Seq#Append_2864| s0 s1) n@@6))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_6787) (ExhaleHeap@@4 T@PolymorphicMapType_6787) (Mask@@5 T@PolymorphicMapType_6808) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (succHeap Heap@@5 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_6808) (o_2@@3 T@Ref) (f_4@@3 T@Field_6847_16858) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_6808_6847_20419#PolymorphicMapType_6808| Mask@@6) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_6847_21328 f_4@@3))) (not (IsWandField_6847_21344 f_4@@3))) (<= (select (|PolymorphicMapType_6808_6847_20419#PolymorphicMapType_6808| Mask@@6) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_6808_6847_20419#PolymorphicMapType_6808| Mask@@6) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_6808) (o_2@@4 T@Ref) (f_4@@4 T@Field_6847_16725) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_6808_6847_16725#PolymorphicMapType_6808| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_6847_16816 f_4@@4))) (not (IsWandField_6847_18365 f_4@@4))) (<= (select (|PolymorphicMapType_6808_6847_16725#PolymorphicMapType_6808| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_6808_6847_16725#PolymorphicMapType_6808| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_6808) (o_2@@5 T@Ref) (f_4@@5 T@Field_6860_6861) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_6808_6847_6861#PolymorphicMapType_6808| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_6847_6861 f_4@@5))) (not (IsWandField_6847_6861 f_4@@5))) (<= (select (|PolymorphicMapType_6808_6847_6861#PolymorphicMapType_6808| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_6808_6847_6861#PolymorphicMapType_6808| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_6808) (o_2@@6 T@Ref) (f_4@@6 T@Field_6847_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_6808_6847_53#PolymorphicMapType_6808| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_6847_53 f_4@@6))) (not (IsWandField_6847_53 f_4@@6))) (<= (select (|PolymorphicMapType_6808_6847_53#PolymorphicMapType_6808| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_6808_6847_53#PolymorphicMapType_6808| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_6808) (o_2@@7 T@Ref) (f_4@@7 T@Field_6847_16858) ) (! (= (HasDirectPerm_6847_21699 Mask@@10 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_6808_6847_20419#PolymorphicMapType_6808| Mask@@10) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6847_21699 Mask@@10 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_6808) (o_2@@8 T@Ref) (f_4@@8 T@Field_6847_16725) ) (! (= (HasDirectPerm_6847_16789 Mask@@11 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_6808_6847_16725#PolymorphicMapType_6808| Mask@@11) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6847_16789 Mask@@11 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_6808) (o_2@@9 T@Ref) (f_4@@9 T@Field_6860_6861) ) (! (= (HasDirectPerm_6847_6861 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_6808_6847_6861#PolymorphicMapType_6808| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6847_6861 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_6808) (o_2@@10 T@Ref) (f_4@@10 T@Field_6847_53) ) (! (= (HasDirectPerm_6847_53 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_6808_6847_53#PolymorphicMapType_6808| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6847_53 Mask@@13 o_2@@10 f_4@@10))
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
(assert (forall ((Heap@@6 T@PolymorphicMapType_6787) (ExhaleHeap@@5 T@PolymorphicMapType_6787) (Mask@@14 T@PolymorphicMapType_6808) (o_27@@0 T@Ref) (f_24@@7 T@Field_6847_16858) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (=> (HasDirectPerm_6847_21699 Mask@@14 o_27@@0 f_24@@7) (= (select (|PolymorphicMapType_6787_6847_16902#PolymorphicMapType_6787| Heap@@6) o_27@@0 f_24@@7) (select (|PolymorphicMapType_6787_6847_16902#PolymorphicMapType_6787| ExhaleHeap@@5) o_27@@0 f_24@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (select (|PolymorphicMapType_6787_6847_16902#PolymorphicMapType_6787| ExhaleHeap@@5) o_27@@0 f_24@@7))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_6787) (ExhaleHeap@@6 T@PolymorphicMapType_6787) (Mask@@15 T@PolymorphicMapType_6808) (o_27@@1 T@Ref) (f_24@@8 T@Field_6847_16725) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (=> (HasDirectPerm_6847_16789 Mask@@15 o_27@@1 f_24@@8) (= (select (|PolymorphicMapType_6787_6847_16725#PolymorphicMapType_6787| Heap@@7) o_27@@1 f_24@@8) (select (|PolymorphicMapType_6787_6847_16725#PolymorphicMapType_6787| ExhaleHeap@@6) o_27@@1 f_24@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (select (|PolymorphicMapType_6787_6847_16725#PolymorphicMapType_6787| ExhaleHeap@@6) o_27@@1 f_24@@8))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_6787) (ExhaleHeap@@7 T@PolymorphicMapType_6787) (Mask@@16 T@PolymorphicMapType_6808) (o_27@@2 T@Ref) (f_24@@9 T@Field_6860_6861) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (=> (HasDirectPerm_6847_6861 Mask@@16 o_27@@2 f_24@@9) (= (select (|PolymorphicMapType_6787_4388_4389#PolymorphicMapType_6787| Heap@@8) o_27@@2 f_24@@9) (select (|PolymorphicMapType_6787_4388_4389#PolymorphicMapType_6787| ExhaleHeap@@7) o_27@@2 f_24@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (select (|PolymorphicMapType_6787_4388_4389#PolymorphicMapType_6787| ExhaleHeap@@7) o_27@@2 f_24@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_6787) (ExhaleHeap@@8 T@PolymorphicMapType_6787) (Mask@@17 T@PolymorphicMapType_6808) (o_27@@3 T@Ref) (f_24@@10 T@Field_6847_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (=> (HasDirectPerm_6847_53 Mask@@17 o_27@@3 f_24@@10) (= (select (|PolymorphicMapType_6787_4385_53#PolymorphicMapType_6787| Heap@@9) o_27@@3 f_24@@10) (select (|PolymorphicMapType_6787_4385_53#PolymorphicMapType_6787| ExhaleHeap@@8) o_27@@3 f_24@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (select (|PolymorphicMapType_6787_4385_53#PolymorphicMapType_6787| ExhaleHeap@@8) o_27@@3 f_24@@10))
)))
(assert (forall ((s0@@0 T@Seq_2864) (s1@@0 T@Seq_2864) ) (!  (=> (and (not (= s0@@0 |Seq#Empty_2864|)) (not (= s1@@0 |Seq#Empty_2864|))) (= (|Seq#Length_2864| (|Seq#Append_2864| s0@@0 s1@@0)) (+ (|Seq#Length_2864| s0@@0) (|Seq#Length_2864| s1@@0))))
 :qid |stdinbpl.209:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2864| (|Seq#Append_2864| s0@@0 s1@@0)))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_6847_16858) ) (! (= (select (|PolymorphicMapType_6808_6847_20419#PolymorphicMapType_6808| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6808_6847_20419#PolymorphicMapType_6808| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_6847_16725) ) (! (= (select (|PolymorphicMapType_6808_6847_16725#PolymorphicMapType_6808| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6808_6847_16725#PolymorphicMapType_6808| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_6860_6861) ) (! (= (select (|PolymorphicMapType_6808_6847_6861#PolymorphicMapType_6808| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6808_6847_6861#PolymorphicMapType_6808| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_6847_53) ) (! (= (select (|PolymorphicMapType_6808_6847_53#PolymorphicMapType_6808| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6808_6847_53#PolymorphicMapType_6808| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((s@@7 T@Seq_2864) (t@@0 T@Seq_2864) (n@@7 Int) ) (!  (=> (and (> n@@7 0) (> n@@7 (|Seq#Length_2864| s@@7))) (and (= (|Seq#Add| (|Seq#Sub| n@@7 (|Seq#Length_2864| s@@7)) (|Seq#Length_2864| s@@7)) n@@7) (= (|Seq#Drop_2864| (|Seq#Append_2864| s@@7 t@@0) n@@7) (|Seq#Drop_2864| t@@0 (|Seq#Sub| n@@7 (|Seq#Length_2864| s@@7))))))
 :qid |stdinbpl.366:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_2864| (|Seq#Append_2864| s@@7 t@@0) n@@7))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_6808) (SummandMask1 T@PolymorphicMapType_6808) (SummandMask2 T@PolymorphicMapType_6808) (o_2@@15 T@Ref) (f_4@@15 T@Field_6847_16858) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_6808_6847_20419#PolymorphicMapType_6808| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_6808_6847_20419#PolymorphicMapType_6808| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_6808_6847_20419#PolymorphicMapType_6808| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6808_6847_20419#PolymorphicMapType_6808| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6808_6847_20419#PolymorphicMapType_6808| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6808_6847_20419#PolymorphicMapType_6808| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_6808) (SummandMask1@@0 T@PolymorphicMapType_6808) (SummandMask2@@0 T@PolymorphicMapType_6808) (o_2@@16 T@Ref) (f_4@@16 T@Field_6847_16725) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_6808_6847_16725#PolymorphicMapType_6808| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_6808_6847_16725#PolymorphicMapType_6808| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_6808_6847_16725#PolymorphicMapType_6808| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6808_6847_16725#PolymorphicMapType_6808| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6808_6847_16725#PolymorphicMapType_6808| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6808_6847_16725#PolymorphicMapType_6808| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_6808) (SummandMask1@@1 T@PolymorphicMapType_6808) (SummandMask2@@1 T@PolymorphicMapType_6808) (o_2@@17 T@Ref) (f_4@@17 T@Field_6860_6861) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_6808_6847_6861#PolymorphicMapType_6808| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_6808_6847_6861#PolymorphicMapType_6808| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_6808_6847_6861#PolymorphicMapType_6808| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6808_6847_6861#PolymorphicMapType_6808| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6808_6847_6861#PolymorphicMapType_6808| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6808_6847_6861#PolymorphicMapType_6808| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_6808) (SummandMask1@@2 T@PolymorphicMapType_6808) (SummandMask2@@2 T@PolymorphicMapType_6808) (o_2@@18 T@Ref) (f_4@@18 T@Field_6847_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_6808_6847_53#PolymorphicMapType_6808| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_6808_6847_53#PolymorphicMapType_6808| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_6808_6847_53#PolymorphicMapType_6808| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6808_6847_53#PolymorphicMapType_6808| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6808_6847_53#PolymorphicMapType_6808| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6808_6847_53#PolymorphicMapType_6808| SummandMask2@@2) o_2@@18 f_4@@18))
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
(assert (forall ((Heap@@10 T@PolymorphicMapType_6787) (o_20 T@Ref) (f_31 T@Field_6847_16725) (v@@2 T@FrameType) ) (! (succHeap Heap@@10 (PolymorphicMapType_6787 (|PolymorphicMapType_6787_4385_53#PolymorphicMapType_6787| Heap@@10) (|PolymorphicMapType_6787_4388_4389#PolymorphicMapType_6787| Heap@@10) (|PolymorphicMapType_6787_6847_16902#PolymorphicMapType_6787| Heap@@10) (store (|PolymorphicMapType_6787_6847_16725#PolymorphicMapType_6787| Heap@@10) o_20 f_31 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6787 (|PolymorphicMapType_6787_4385_53#PolymorphicMapType_6787| Heap@@10) (|PolymorphicMapType_6787_4388_4389#PolymorphicMapType_6787| Heap@@10) (|PolymorphicMapType_6787_6847_16902#PolymorphicMapType_6787| Heap@@10) (store (|PolymorphicMapType_6787_6847_16725#PolymorphicMapType_6787| Heap@@10) o_20 f_31 v@@2)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_6787) (o_20@@0 T@Ref) (f_31@@0 T@Field_6847_16858) (v@@3 T@PolymorphicMapType_7336) ) (! (succHeap Heap@@11 (PolymorphicMapType_6787 (|PolymorphicMapType_6787_4385_53#PolymorphicMapType_6787| Heap@@11) (|PolymorphicMapType_6787_4388_4389#PolymorphicMapType_6787| Heap@@11) (store (|PolymorphicMapType_6787_6847_16902#PolymorphicMapType_6787| Heap@@11) o_20@@0 f_31@@0 v@@3) (|PolymorphicMapType_6787_6847_16725#PolymorphicMapType_6787| Heap@@11)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6787 (|PolymorphicMapType_6787_4385_53#PolymorphicMapType_6787| Heap@@11) (|PolymorphicMapType_6787_4388_4389#PolymorphicMapType_6787| Heap@@11) (store (|PolymorphicMapType_6787_6847_16902#PolymorphicMapType_6787| Heap@@11) o_20@@0 f_31@@0 v@@3) (|PolymorphicMapType_6787_6847_16725#PolymorphicMapType_6787| Heap@@11)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_6787) (o_20@@1 T@Ref) (f_31@@1 T@Field_6860_6861) (v@@4 T@Ref) ) (! (succHeap Heap@@12 (PolymorphicMapType_6787 (|PolymorphicMapType_6787_4385_53#PolymorphicMapType_6787| Heap@@12) (store (|PolymorphicMapType_6787_4388_4389#PolymorphicMapType_6787| Heap@@12) o_20@@1 f_31@@1 v@@4) (|PolymorphicMapType_6787_6847_16902#PolymorphicMapType_6787| Heap@@12) (|PolymorphicMapType_6787_6847_16725#PolymorphicMapType_6787| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6787 (|PolymorphicMapType_6787_4385_53#PolymorphicMapType_6787| Heap@@12) (store (|PolymorphicMapType_6787_4388_4389#PolymorphicMapType_6787| Heap@@12) o_20@@1 f_31@@1 v@@4) (|PolymorphicMapType_6787_6847_16902#PolymorphicMapType_6787| Heap@@12) (|PolymorphicMapType_6787_6847_16725#PolymorphicMapType_6787| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_6787) (o_20@@2 T@Ref) (f_31@@2 T@Field_6847_53) (v@@5 Bool) ) (! (succHeap Heap@@13 (PolymorphicMapType_6787 (store (|PolymorphicMapType_6787_4385_53#PolymorphicMapType_6787| Heap@@13) o_20@@2 f_31@@2 v@@5) (|PolymorphicMapType_6787_4388_4389#PolymorphicMapType_6787| Heap@@13) (|PolymorphicMapType_6787_6847_16902#PolymorphicMapType_6787| Heap@@13) (|PolymorphicMapType_6787_6847_16725#PolymorphicMapType_6787| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6787 (store (|PolymorphicMapType_6787_4385_53#PolymorphicMapType_6787| Heap@@13) o_20@@2 f_31@@2 v@@5) (|PolymorphicMapType_6787_4388_4389#PolymorphicMapType_6787| Heap@@13) (|PolymorphicMapType_6787_6847_16902#PolymorphicMapType_6787| Heap@@13) (|PolymorphicMapType_6787_6847_16725#PolymorphicMapType_6787| Heap@@13)))
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
(assert (forall ((o_20@@3 T@Ref) (f_17 T@Field_6860_6861) (Heap@@14 T@PolymorphicMapType_6787) ) (!  (=> (select (|PolymorphicMapType_6787_4385_53#PolymorphicMapType_6787| Heap@@14) o_20@@3 $allocated) (select (|PolymorphicMapType_6787_4385_53#PolymorphicMapType_6787| Heap@@14) (select (|PolymorphicMapType_6787_4388_4389#PolymorphicMapType_6787| Heap@@14) o_20@@3 f_17) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_6787_4388_4389#PolymorphicMapType_6787| Heap@@14) o_20@@3 f_17))
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
(assert (forall ((p@@1 T@Field_6847_16725) (v_1@@0 T@FrameType) (q T@Field_6847_16725) (w@@0 T@FrameType) (r T@Field_6847_16725) (u T@FrameType) ) (!  (=> (and (InsidePredicate_6847_6847 p@@1 v_1@@0 q w@@0) (InsidePredicate_6847_6847 q w@@0 r u)) (InsidePredicate_6847_6847 p@@1 v_1@@0 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6847_6847 p@@1 v_1@@0 q w@@0) (InsidePredicate_6847_6847 q w@@0 r u))
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
(declare-fun i_2 () Int)
(declare-fun xs () T@Seq_2864)
(declare-fun key_1 () Int)
(declare-fun index () Int)
(declare-fun PostHeap@0 () T@PolymorphicMapType_6787)
(declare-fun i_6_1 () Int)
(declare-fun high@0 () Int)
(declare-fun i_4 () Int)
(declare-fun low@0 () Int)
(declare-fun high@1 () Int)
(declare-fun index@1 () Int)
(declare-fun Heap@@15 () T@PolymorphicMapType_6787)
(declare-fun i_11_1 () Int)
(declare-fun low@2 () Int)
(declare-fun high@2 () Int)
(declare-fun index@3 () Int)
(declare-fun mid@0 () Int)
(declare-fun index@2 () Int)
(declare-fun low@1 () Int)
(declare-fun i_4_1 () Int)
(declare-fun index@0 () Int)
(declare-fun i_14 () Int)
(declare-fun j_5 () Int)
(set-info :boogie-vc-id binary_search)
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
 (=> (= (ControlFlow 0 0) 110) (let ((anon11_correct true))
(let ((anon70_Else_correct  (=> (and (not (and (<= 0 i_2) (< i_2 (|Seq#Length_2864| xs)))) (= (ControlFlow 0 100) 96)) anon11_correct)))
(let ((anon70_Then_correct  (=> (and (<= 0 i_2) (< i_2 (|Seq#Length_2864| xs))) (and (=> (= (ControlFlow 0 97) (- 0 99)) (>= i_2 0)) (=> (>= i_2 0) (and (=> (= (ControlFlow 0 97) (- 0 98)) (< i_2 (|Seq#Length_2864| xs))) (=> (< i_2 (|Seq#Length_2864| xs)) (=> (= (ControlFlow 0 97) 96) anon11_correct))))))))
(let ((anon13_correct true))
(let ((anon69_Else_correct  (=> (and (forall ((i_3 Int) ) (!  (=> (and (<= 0 i_3) (< i_3 (|Seq#Length_2864| xs))) (not (= (|Seq#Index_2864| xs i_3) key_1)))
 :qid |stdinbpl.628:22|
 :skolemid |59|
 :pattern ( (|Seq#Index_2864| xs i_3))
)) (= (ControlFlow 0 95) 93)) anon13_correct)))
(let ((anon68_Then_correct  (=> (= (- 0 1) index) (and (and (=> (= (ControlFlow 0 101) 95) anon69_Else_correct) (=> (= (ControlFlow 0 101) 97) anon70_Then_correct)) (=> (= (ControlFlow 0 101) 100) anon70_Else_correct)))))
(let ((anon68_Else_correct  (=> (and (not (= (- 0 1) index)) (= (ControlFlow 0 94) 93)) anon13_correct)))
(let ((anon7_correct  (=> (state PostHeap@0 ZeroMask) (and (=> (= (ControlFlow 0 102) 101) anon68_Then_correct) (=> (= (ControlFlow 0 102) 94) anon68_Else_correct)))))
(let ((anon67_Else_correct  (=> (and (< index 0) (= (ControlFlow 0 106) 102)) anon7_correct)))
(let ((anon67_Then_correct  (=> (<= 0 index) (and (=> (= (ControlFlow 0 103) (- 0 105)) (>= index 0)) (=> (>= index 0) (and (=> (= (ControlFlow 0 103) (- 0 104)) (< index (|Seq#Length_2864| xs))) (=> (< index (|Seq#Length_2864| xs)) (=> (and (= (|Seq#Index_2864| xs index) key_1) (= (ControlFlow 0 103) 102)) anon7_correct))))))))
(let ((anon66_Then_correct  (=> (and (and (state PostHeap@0 ZeroMask) (<= (- 0 1) index)) (and (< index (|Seq#Length_2864| xs)) (state PostHeap@0 ZeroMask))) (and (=> (= (ControlFlow 0 107) 103) anon67_Then_correct) (=> (= (ControlFlow 0 107) 106) anon67_Else_correct)))))
(let ((anon18_correct true))
(let ((anon73_Else_correct  (=> (and (not (and (<= 0 i_6_1) (and (< i_6_1 (|Seq#Length_2864| xs)) (not (and (<= 0 i_6_1) (< i_6_1 high@0)))))) (= (ControlFlow 0 87) 84)) anon18_correct)))
(let ((anon73_Then_correct  (=> (and (<= 0 i_6_1) (and (< i_6_1 (|Seq#Length_2864| xs)) (not (and (<= 0 i_6_1) (< i_6_1 high@0))))) (and (=> (= (ControlFlow 0 85) (- 0 86)) (not (= (|Seq#Index_2864| xs i_6_1) key_1))) (=> (not (= (|Seq#Index_2864| xs i_6_1) key_1)) (=> (= (ControlFlow 0 85) 84) anon18_correct))))))
(let ((anon27_correct true))
(let ((anon78_Else_correct  (=> (and (not (and (<= 0 i_4) (and (< i_4 (|Seq#Length_2864| xs)) (not (and (<= low@0 i_4) (< i_4 high@1)))))) (= (ControlFlow 0 73) 69)) anon27_correct)))
(let ((anon78_Then_correct  (=> (and (<= 0 i_4) (and (< i_4 (|Seq#Length_2864| xs)) (not (and (<= low@0 i_4) (< i_4 high@1))))) (and (=> (= (ControlFlow 0 70) (- 0 72)) (>= i_4 0)) (=> (>= i_4 0) (and (=> (= (ControlFlow 0 70) (- 0 71)) (< i_4 (|Seq#Length_2864| xs))) (=> (< i_4 (|Seq#Length_2864| xs)) (=> (= (ControlFlow 0 70) 69) anon27_correct))))))))
(let ((anon31_correct true))
(let ((anon79_Else_correct  (=> (and (< index@1 0) (= (ControlFlow 0 65) 61)) anon31_correct)))
(let ((anon79_Then_correct  (=> (<= 0 index@1) (and (=> (= (ControlFlow 0 62) (- 0 64)) (>= index@1 0)) (=> (>= index@1 0) (and (=> (= (ControlFlow 0 62) (- 0 63)) (< index@1 (|Seq#Length_2864| xs))) (=> (< index@1 (|Seq#Length_2864| xs)) (=> (and (= (|Seq#Index_2864| xs index@1) key_1) (= (ControlFlow 0 62) 61)) anon31_correct))))))))
(let ((anon29_correct  (=> (and (and (state Heap@@15 ZeroMask) (<= (- 0 1) index@1)) (and (< index@1 (|Seq#Length_2864| xs)) (state Heap@@15 ZeroMask))) (and (=> (= (ControlFlow 0 66) 62) anon79_Then_correct) (=> (= (ControlFlow 0 66) 65) anon79_Else_correct)))))
(let ((anon77_Else_correct  (=> (and (forall ((i_9_1 Int) ) (!  (=> (and (<= 0 i_9_1) (and (< i_9_1 (|Seq#Length_2864| xs)) (not (and (<= low@0 i_9_1) (< i_9_1 high@1))))) (not (= (|Seq#Index_2864| xs i_9_1) key_1)))
 :qid |stdinbpl.706:26|
 :skolemid |61|
 :pattern ( (|Seq#Index_2864| xs i_9_1))
)) (= (ControlFlow 0 68) 66)) anon29_correct)))
(let ((anon76_Then_correct  (=> (= index@1 (- 0 1)) (and (and (=> (= (ControlFlow 0 74) 68) anon77_Else_correct) (=> (= (ControlFlow 0 74) 70) anon78_Then_correct)) (=> (= (ControlFlow 0 74) 73) anon78_Else_correct)))))
(let ((anon76_Else_correct  (=> (and (not (= index@1 (- 0 1))) (= (ControlFlow 0 67) 66)) anon29_correct)))
(let ((anon75_Then_correct  (=> (and (and (<= 0 low@0) (<= low@0 high@1)) (and (<= high@1 (|Seq#Length_2864| xs)) (state Heap@@15 ZeroMask))) (and (=> (= (ControlFlow 0 75) 74) anon76_Then_correct) (=> (= (ControlFlow 0 75) 67) anon76_Else_correct)))))
(let ((anon47_correct true))
(let ((anon87_Else_correct  (=> (and (not (and (<= 0 i_11_1) (and (< i_11_1 (|Seq#Length_2864| xs)) (not (and (<= low@2 i_11_1) (< i_11_1 high@2)))))) (= (ControlFlow 0 39) 36)) anon47_correct)))
(let ((anon87_Then_correct  (=> (and (<= 0 i_11_1) (and (< i_11_1 (|Seq#Length_2864| xs)) (not (and (<= low@2 i_11_1) (< i_11_1 high@2))))) (and (=> (= (ControlFlow 0 37) (- 0 38)) (not (= (|Seq#Index_2864| xs i_11_1) key_1))) (=> (not (= (|Seq#Index_2864| xs i_11_1) key_1)) (=> (= (ControlFlow 0 37) 36) anon47_correct))))))
(let ((anon51_correct true))
(let ((anon88_Else_correct  (=> (and (< index@3 0) (= (ControlFlow 0 30) 27)) anon51_correct)))
(let ((anon88_Then_correct  (=> (<= 0 index@3) (and (=> (= (ControlFlow 0 28) (- 0 29)) (= (|Seq#Index_2864| xs index@3) key_1)) (=> (= (|Seq#Index_2864| xs index@3) key_1) (=> (= (ControlFlow 0 28) 27) anon51_correct))))))
(let ((anon49_correct  (and (=> (= (ControlFlow 0 31) (- 0 33)) (<= (- 0 1) index@3)) (=> (<= (- 0 1) index@3) (and (=> (= (ControlFlow 0 31) (- 0 32)) (< index@3 (|Seq#Length_2864| xs))) (=> (< index@3 (|Seq#Length_2864| xs)) (and (=> (= (ControlFlow 0 31) 28) anon88_Then_correct) (=> (= (ControlFlow 0 31) 30) anon88_Else_correct))))))))
(let ((anon86_Else_correct  (=> (and (forall ((i_12_1_1 Int) ) (!  (=> (and (<= 0 i_12_1_1) (and (< i_12_1_1 (|Seq#Length_2864| xs)) (not (and (<= low@2 i_12_1_1) (< i_12_1_1 high@2))))) (not (= (|Seq#Index_2864| xs i_12_1_1) key_1)))
 :qid |stdinbpl.817:26|
 :skolemid |63|
 :pattern ( (|Seq#Index_2864| xs i_12_1_1))
)) (= (ControlFlow 0 35) 31)) anon49_correct)))
(let ((anon85_Then_correct  (=> (= index@3 (- 0 1)) (and (and (=> (= (ControlFlow 0 40) 35) anon86_Else_correct) (=> (= (ControlFlow 0 40) 37) anon87_Then_correct)) (=> (= (ControlFlow 0 40) 39) anon87_Else_correct)))))
(let ((anon85_Else_correct  (=> (and (not (= index@3 (- 0 1))) (= (ControlFlow 0 34) 31)) anon49_correct)))
(let ((anon43_correct  (=> (state Heap@@15 ZeroMask) (and (=> (= (ControlFlow 0 41) (- 0 44)) (<= 0 low@2)) (=> (<= 0 low@2) (and (=> (= (ControlFlow 0 41) (- 0 43)) (<= low@2 high@2)) (=> (<= low@2 high@2) (and (=> (= (ControlFlow 0 41) (- 0 42)) (<= high@2 (|Seq#Length_2864| xs))) (=> (<= high@2 (|Seq#Length_2864| xs)) (and (=> (= (ControlFlow 0 41) 40) anon85_Then_correct) (=> (= (ControlFlow 0 41) 34) anon85_Else_correct)))))))))))
(let ((anon42_correct  (=> (state Heap@@15 ZeroMask) (=> (and (and (= low@2 low@0) (= high@2 mid@0)) (and (= index@3 index@2) (= (ControlFlow 0 46) 41))) anon43_correct))))
(let ((anon84_Else_correct  (=> (<= (|Seq#Index_2864| xs mid@0) key_1) (=> (and (and (state Heap@@15 ZeroMask) (state Heap@@15 ZeroMask)) (and (= index@2 mid@0) (= (ControlFlow 0 48) 46))) anon42_correct))))
(let ((anon84_Then_correct  (=> (and (and (< key_1 (|Seq#Index_2864| xs mid@0)) (state Heap@@15 ZeroMask)) (and (= index@2 index@1) (= (ControlFlow 0 47) 46))) anon42_correct)))
(let ((anon83_Else_correct  (=> (<= key_1 (|Seq#Index_2864| xs mid@0)) (and (=> (= (ControlFlow 0 49) (- 0 51)) (>= mid@0 0)) (=> (>= mid@0 0) (and (=> (= (ControlFlow 0 49) (- 0 50)) (< mid@0 (|Seq#Length_2864| xs))) (=> (< mid@0 (|Seq#Length_2864| xs)) (and (=> (= (ControlFlow 0 49) 47) anon84_Then_correct) (=> (= (ControlFlow 0 49) 48) anon84_Else_correct)))))))))
(let ((anon83_Then_correct  (=> (< (|Seq#Index_2864| xs mid@0) key_1) (=> (and (= low@1 (+ mid@0 1)) (state Heap@@15 ZeroMask)) (=> (and (and (= low@2 low@1) (= high@2 high@1)) (and (= index@3 index@1) (= (ControlFlow 0 45) 41))) anon43_correct)))))
(let ((anon37_correct  (=> (state Heap@@15 ZeroMask) (=> (and (and (and (< low@0 high@1) (= index@1 (- 0 1))) (state Heap@@15 ZeroMask)) (and (= mid@0 (div (+ low@0 high@1) 2)) (state Heap@@15 ZeroMask))) (and (=> (= (ControlFlow 0 52) (- 0 54)) (>= mid@0 0)) (=> (>= mid@0 0) (and (=> (= (ControlFlow 0 52) (- 0 53)) (< mid@0 (|Seq#Length_2864| xs))) (=> (< mid@0 (|Seq#Length_2864| xs)) (and (=> (= (ControlFlow 0 52) 45) anon83_Then_correct) (=> (= (ControlFlow 0 52) 49) anon83_Else_correct))))))))))
(let ((anon82_Else_correct  (=> (and (< index@1 0) (= (ControlFlow 0 56) 52)) anon37_correct)))
(let ((anon82_Then_correct  (=> (<= 0 index@1) (=> (and (= (|Seq#Index_2864| xs index@1) key_1) (= (ControlFlow 0 55) 52)) anon37_correct))))
(let ((anon35_correct  (=> (and (<= (- 0 1) index@1) (< index@1 (|Seq#Length_2864| xs))) (and (=> (= (ControlFlow 0 57) 55) anon82_Then_correct) (=> (= (ControlFlow 0 57) 56) anon82_Else_correct)))))
(let ((anon81_Else_correct  (=> (and (not (= index@1 (- 0 1))) (= (ControlFlow 0 59) 57)) anon35_correct)))
(let ((anon81_Then_correct  (=> (= index@1 (- 0 1)) (=> (and (forall ((i_10_1 Int) ) (!  (=> (and (<= 0 i_10_1) (and (< i_10_1 (|Seq#Length_2864| xs)) (not (and (<= low@0 i_10_1) (< i_10_1 high@1))))) (not (= (|Seq#Index_2864| xs i_10_1) key_1)))
 :qid |stdinbpl.740:26|
 :skolemid |62|
 :pattern ( (|Seq#Index_2864| xs i_10_1))
)) (= (ControlFlow 0 58) 57)) anon35_correct))))
(let ((anon80_Then_correct  (=> (and (and (state Heap@@15 ZeroMask) (<= 0 low@0)) (and (<= low@0 high@1) (<= high@1 (|Seq#Length_2864| xs)))) (and (=> (= (ControlFlow 0 60) 58) anon81_Then_correct) (=> (= (ControlFlow 0 60) 59) anon81_Else_correct)))))
(let ((anon62_correct true))
(let ((anon94_Else_correct  (=> (and (not (and (<= 0 i_4_1) (< i_4_1 (|Seq#Length_2864| xs)))) (= (ControlFlow 0 13) 10)) anon62_correct)))
(let ((anon94_Then_correct  (=> (and (<= 0 i_4_1) (< i_4_1 (|Seq#Length_2864| xs))) (and (=> (= (ControlFlow 0 11) (- 0 12)) (not (= (|Seq#Index_2864| xs i_4_1) key_1))) (=> (not (= (|Seq#Index_2864| xs i_4_1) key_1)) (=> (= (ControlFlow 0 11) 10) anon62_correct))))))
(let ((anon93_Else_correct true))
(let ((anon92_Then_correct  (=> (= (- 0 1) index@1) (and (and (=> (= (ControlFlow 0 14) 9) anon93_Else_correct) (=> (= (ControlFlow 0 14) 11) anon94_Then_correct)) (=> (= (ControlFlow 0 14) 13) anon94_Else_correct)))))
(let ((anon92_Else_correct true))
(let ((anon91_Else_correct  (=> (< index@1 0) (and (=> (= (ControlFlow 0 17) 14) anon92_Then_correct) (=> (= (ControlFlow 0 17) 8) anon92_Else_correct)))))
(let ((anon91_Then_correct  (=> (<= 0 index@1) (and (=> (= (ControlFlow 0 15) (- 0 16)) (= (|Seq#Index_2864| xs index@1) key_1)) (=> (= (|Seq#Index_2864| xs index@1) key_1) (and (=> (= (ControlFlow 0 15) 14) anon92_Then_correct) (=> (= (ControlFlow 0 15) 8) anon92_Else_correct)))))))
(let ((anon56_correct  (=> (and (state Heap@@15 ZeroMask) (state Heap@@15 ZeroMask)) (and (=> (= (ControlFlow 0 18) (- 0 20)) (<= (- 0 1) index@1)) (=> (<= (- 0 1) index@1) (and (=> (= (ControlFlow 0 18) (- 0 19)) (< index@1 (|Seq#Length_2864| xs))) (=> (< index@1 (|Seq#Length_2864| xs)) (and (=> (= (ControlFlow 0 18) 15) anon91_Then_correct) (=> (= (ControlFlow 0 18) 17) anon91_Else_correct)))))))))
(let ((anon90_Else_correct  (=> (and (< index@1 0) (= (ControlFlow 0 22) 18)) anon56_correct)))
(let ((anon90_Then_correct  (=> (<= 0 index@1) (=> (and (= (|Seq#Index_2864| xs index@1) key_1) (= (ControlFlow 0 21) 18)) anon56_correct))))
(let ((anon54_correct  (=> (and (<= (- 0 1) index@1) (< index@1 (|Seq#Length_2864| xs))) (and (=> (= (ControlFlow 0 23) 21) anon90_Then_correct) (=> (= (ControlFlow 0 23) 22) anon90_Else_correct)))))
(let ((anon89_Else_correct  (=> (and (not (= index@1 (- 0 1))) (= (ControlFlow 0 25) 23)) anon54_correct)))
(let ((anon89_Then_correct  (=> (= index@1 (- 0 1)) (=> (and (forall ((i_13_1 Int) ) (!  (=> (and (<= 0 i_13_1) (and (< i_13_1 (|Seq#Length_2864| xs)) (not (and (<= low@0 i_13_1) (< i_13_1 high@1))))) (not (= (|Seq#Index_2864| xs i_13_1) key_1)))
 :qid |stdinbpl.841:24|
 :skolemid |64|
 :pattern ( (|Seq#Index_2864| xs i_13_1))
)) (= (ControlFlow 0 24) 23)) anon54_correct))))
(let ((anon80_Else_correct  (=> (not (and (< low@0 high@1) (= index@1 (- 0 1)))) (=> (and (and (state Heap@@15 ZeroMask) (<= 0 low@0)) (and (<= low@0 high@1) (<= high@1 (|Seq#Length_2864| xs)))) (and (=> (= (ControlFlow 0 26) 24) anon89_Then_correct) (=> (= (ControlFlow 0 26) 25) anon89_Else_correct))))))
(let ((anon74_Else_correct  (=> (< index@0 0) (and (and (=> (= (ControlFlow 0 78) 75) anon75_Then_correct) (=> (= (ControlFlow 0 78) 60) anon80_Then_correct)) (=> (= (ControlFlow 0 78) 26) anon80_Else_correct)))))
(let ((anon74_Then_correct  (=> (<= 0 index@0) (and (=> (= (ControlFlow 0 76) (- 0 77)) (= (|Seq#Index_2864| xs index@0) key_1)) (=> (= (|Seq#Index_2864| xs index@0) key_1) (and (and (=> (= (ControlFlow 0 76) 75) anon75_Then_correct) (=> (= (ControlFlow 0 76) 60) anon80_Then_correct)) (=> (= (ControlFlow 0 76) 26) anon80_Else_correct)))))))
(let ((anon20_correct  (and (=> (= (ControlFlow 0 79) (- 0 81)) (<= (- 0 1) index@0)) (=> (<= (- 0 1) index@0) (and (=> (= (ControlFlow 0 79) (- 0 80)) (< index@0 (|Seq#Length_2864| xs))) (=> (< index@0 (|Seq#Length_2864| xs)) (and (=> (= (ControlFlow 0 79) 76) anon74_Then_correct) (=> (= (ControlFlow 0 79) 78) anon74_Else_correct))))))))
(let ((anon72_Else_correct  (=> (and (forall ((i_7_1_1 Int) ) (!  (=> (and (<= 0 i_7_1_1) (and (< i_7_1_1 (|Seq#Length_2864| xs)) (not (and (<= 0 i_7_1_1) (< i_7_1_1 high@0))))) (not (= (|Seq#Index_2864| xs i_7_1_1) key_1)))
 :qid |stdinbpl.671:26|
 :skolemid |60|
 :pattern ( (|Seq#Index_2864| xs i_7_1_1))
)) (= (ControlFlow 0 83) 79)) anon20_correct)))
(let ((anon71_Then_correct  (=> (= index@0 (- 0 1)) (and (and (=> (= (ControlFlow 0 88) 83) anon72_Else_correct) (=> (= (ControlFlow 0 88) 85) anon73_Then_correct)) (=> (= (ControlFlow 0 88) 87) anon73_Else_correct)))))
(let ((anon71_Else_correct  (=> (and (not (= index@0 (- 0 1))) (= (ControlFlow 0 82) 79)) anon20_correct)))
(let ((anon66_Else_correct  (=> (state Heap@@15 ZeroMask) (=> (and (and (= high@0 (|Seq#Length_2864| xs)) (state Heap@@15 ZeroMask)) (and (= index@0 (- 0 1)) (state Heap@@15 ZeroMask))) (and (=> (= (ControlFlow 0 89) (- 0 92)) (<= 0 0)) (=> (<= 0 0) (and (=> (= (ControlFlow 0 89) (- 0 91)) (<= 0 high@0)) (=> (<= 0 high@0) (and (=> (= (ControlFlow 0 89) (- 0 90)) (<= high@0 (|Seq#Length_2864| xs))) (=> (<= high@0 (|Seq#Length_2864| xs)) (and (=> (= (ControlFlow 0 89) 88) anon71_Then_correct) (=> (= (ControlFlow 0 89) 82) anon71_Else_correct))))))))))))
(let ((anon64_Else_correct  (=> (and (forall ((i_1 Int) (j_1 Int) ) (!  (=> (and (<= 0 i_1) (and (< j_1 (|Seq#Length_2864| xs)) (< i_1 j_1))) (< (|Seq#Index_2864| xs i_1) (|Seq#Index_2864| xs j_1)))
 :qid |stdinbpl.587:20|
 :skolemid |58|
 :pattern ( (|Seq#Index_2864| xs i_1) (|Seq#Index_2864| xs j_1))
)) (state Heap@@15 ZeroMask)) (and (=> (= (ControlFlow 0 108) 107) anon66_Then_correct) (=> (= (ControlFlow 0 108) 89) anon66_Else_correct)))))
(let ((anon3_correct true))
(let ((anon65_Else_correct  (=> (and (not (and (<= 0 i_14) (and (< j_5 (|Seq#Length_2864| xs)) (< i_14 j_5)))) (= (ControlFlow 0 7) 1)) anon3_correct)))
(let ((anon65_Then_correct  (=> (and (<= 0 i_14) (and (< j_5 (|Seq#Length_2864| xs)) (< i_14 j_5))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= i_14 0)) (=> (>= i_14 0) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< i_14 (|Seq#Length_2864| xs))) (=> (< i_14 (|Seq#Length_2864| xs)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= j_5 0)) (=> (>= j_5 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< j_5 (|Seq#Length_2864| xs))) (=> (< j_5 (|Seq#Length_2864| xs)) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))))))))
(let ((anon0_correct  (=> (and (state Heap@@15 ZeroMask) AssumePermUpperBound) (and (and (=> (= (ControlFlow 0 109) 108) anon64_Else_correct) (=> (= (ControlFlow 0 109) 2) anon65_Then_correct)) (=> (= (ControlFlow 0 109) 7) anon65_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 110) 109) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
