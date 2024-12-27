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
(declare-sort T@Field_10585_53 0)
(declare-sort T@Field_10598_10599 0)
(declare-sort T@Field_16618_3178 0)
(declare-sort T@Field_10585_29320 0)
(declare-sort T@Field_10585_29187 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_10546 0)) (((PolymorphicMapType_10546 (|PolymorphicMapType_10546_7157_3178#PolymorphicMapType_10546| (Array T@Ref T@Field_16618_3178 Real)) (|PolymorphicMapType_10546_7157_53#PolymorphicMapType_10546| (Array T@Ref T@Field_10585_53 Real)) (|PolymorphicMapType_10546_7157_10599#PolymorphicMapType_10546| (Array T@Ref T@Field_10598_10599 Real)) (|PolymorphicMapType_10546_7157_29187#PolymorphicMapType_10546| (Array T@Ref T@Field_10585_29187 Real)) (|PolymorphicMapType_10546_7157_33442#PolymorphicMapType_10546| (Array T@Ref T@Field_10585_29320 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_11074 0)) (((PolymorphicMapType_11074 (|PolymorphicMapType_11074_10585_53#PolymorphicMapType_11074| (Array T@Ref T@Field_10585_53 Bool)) (|PolymorphicMapType_11074_10585_10599#PolymorphicMapType_11074| (Array T@Ref T@Field_10598_10599 Bool)) (|PolymorphicMapType_11074_10585_3178#PolymorphicMapType_11074| (Array T@Ref T@Field_16618_3178 Bool)) (|PolymorphicMapType_11074_10585_29187#PolymorphicMapType_11074| (Array T@Ref T@Field_10585_29187 Bool)) (|PolymorphicMapType_11074_10585_30498#PolymorphicMapType_11074| (Array T@Ref T@Field_10585_29320 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10525 0)) (((PolymorphicMapType_10525 (|PolymorphicMapType_10525_6953_53#PolymorphicMapType_10525| (Array T@Ref T@Field_10585_53 Bool)) (|PolymorphicMapType_10525_6956_6957#PolymorphicMapType_10525| (Array T@Ref T@Field_10598_10599 T@Ref)) (|PolymorphicMapType_10525_7157_3178#PolymorphicMapType_10525| (Array T@Ref T@Field_16618_3178 Int)) (|PolymorphicMapType_10525_10585_29364#PolymorphicMapType_10525| (Array T@Ref T@Field_10585_29320 T@PolymorphicMapType_11074)) (|PolymorphicMapType_10525_10585_29187#PolymorphicMapType_10525| (Array T@Ref T@Field_10585_29187 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_10585_53)
(declare-fun f_7 () T@Field_16618_3178)
(declare-sort T@Seq_16663 0)
(declare-fun |Seq#Length_7162| (T@Seq_16663) Int)
(declare-fun |Seq#Drop_7162| (T@Seq_16663 Int) T@Seq_16663)
(declare-sort T@Seq_3056 0)
(declare-fun |Seq#Length_3056| (T@Seq_3056) Int)
(declare-fun |Seq#Drop_3056| (T@Seq_3056 Int) T@Seq_3056)
(declare-fun succHeap (T@PolymorphicMapType_10525 T@PolymorphicMapType_10525) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_10525 T@PolymorphicMapType_10525) Bool)
(declare-fun state (T@PolymorphicMapType_10525 T@PolymorphicMapType_10546) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_10546) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_11074)
(declare-fun |Seq#Index_7162| (T@Seq_16663 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3056| (T@Seq_3056 Int) Int)
(declare-fun |Seq#Empty_7162| () T@Seq_16663)
(declare-fun |Seq#Empty_3056| () T@Seq_3056)
(declare-fun |Seq#Update_7162| (T@Seq_16663 Int T@Ref) T@Seq_16663)
(declare-fun |Seq#Update_3056| (T@Seq_3056 Int Int) T@Seq_3056)
(declare-fun |Seq#Take_7162| (T@Seq_16663 Int) T@Seq_16663)
(declare-fun |Seq#Take_3056| (T@Seq_3056 Int) T@Seq_3056)
(declare-fun |Seq#Contains_3056| (T@Seq_3056 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3056)
(declare-fun |Seq#Contains_16663| (T@Seq_16663 T@Ref) Bool)
(declare-fun |Seq#Skolem_16663| (T@Seq_16663 T@Ref) Int)
(declare-fun |Seq#Skolem_3056| (T@Seq_3056 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_10525 T@PolymorphicMapType_10525 T@PolymorphicMapType_10546) Bool)
(declare-fun IsPredicateField_10585_29278 (T@Field_10585_29187) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_10585 (T@Field_10585_29187) T@Field_10585_29320)
(declare-fun HasDirectPerm_10585_29251 (T@PolymorphicMapType_10546 T@Ref T@Field_10585_29187) Bool)
(declare-fun IsWandField_10585_31025 (T@Field_10585_29187) Bool)
(declare-fun WandMaskField_10585 (T@Field_10585_29187) T@Field_10585_29320)
(declare-fun |Seq#Singleton_7162| (T@Ref) T@Seq_16663)
(declare-fun |Seq#Singleton_3056| (Int) T@Seq_3056)
(declare-fun |Seq#Append_16663| (T@Seq_16663 T@Seq_16663) T@Seq_16663)
(declare-fun |Seq#Append_3056| (T@Seq_3056 T@Seq_3056) T@Seq_3056)
(declare-fun dummyHeap () T@PolymorphicMapType_10525)
(declare-fun ZeroMask () T@PolymorphicMapType_10546)
(declare-fun InsidePredicate_10585_10585 (T@Field_10585_29187 T@FrameType T@Field_10585_29187 T@FrameType) Bool)
(declare-fun IsPredicateField_7157_3178 (T@Field_16618_3178) Bool)
(declare-fun IsWandField_7157_3178 (T@Field_16618_3178) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_7157_34571 (T@Field_10585_29320) Bool)
(declare-fun IsWandField_7157_34587 (T@Field_10585_29320) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_7157_10599 (T@Field_10598_10599) Bool)
(declare-fun IsWandField_7157_10599 (T@Field_10598_10599) Bool)
(declare-fun IsPredicateField_7157_53 (T@Field_10585_53) Bool)
(declare-fun IsWandField_7157_53 (T@Field_10585_53) Bool)
(declare-fun HasDirectPerm_10585_35025 (T@PolymorphicMapType_10546 T@Ref T@Field_10585_29320) Bool)
(declare-fun HasDirectPerm_10585_3178 (T@PolymorphicMapType_10546 T@Ref T@Field_16618_3178) Bool)
(declare-fun HasDirectPerm_10585_10599 (T@PolymorphicMapType_10546 T@Ref T@Field_10598_10599) Bool)
(declare-fun HasDirectPerm_10585_53 (T@PolymorphicMapType_10546 T@Ref T@Field_10585_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_10546 T@PolymorphicMapType_10546 T@PolymorphicMapType_10546) Bool)
(declare-fun |Seq#Equal_16663| (T@Seq_16663 T@Seq_16663) Bool)
(declare-fun |Seq#Equal_3056| (T@Seq_3056 T@Seq_3056) Bool)
(declare-fun |Seq#ContainsTrigger_7162| (T@Seq_16663 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3056| (T@Seq_3056 Int) Bool)
(declare-fun |Seq#SkolemDiff_16663| (T@Seq_16663 T@Seq_16663) Int)
(declare-fun |Seq#SkolemDiff_3056| (T@Seq_3056 T@Seq_3056) Int)
(assert (forall ((s T@Seq_16663) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_7162| s)) (= (|Seq#Length_7162| (|Seq#Drop_7162| s n)) (- (|Seq#Length_7162| s) n))) (=> (< (|Seq#Length_7162| s) n) (= (|Seq#Length_7162| (|Seq#Drop_7162| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_7162| (|Seq#Drop_7162| s n)) (|Seq#Length_7162| s))))
 :qid |stdinbpl.309:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_7162| (|Seq#Drop_7162| s n)))
 :pattern ( (|Seq#Length_7162| s) (|Seq#Drop_7162| s n))
)))
(assert (forall ((s@@0 T@Seq_3056) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3056| s@@0)) (= (|Seq#Length_3056| (|Seq#Drop_3056| s@@0 n@@0)) (- (|Seq#Length_3056| s@@0) n@@0))) (=> (< (|Seq#Length_3056| s@@0) n@@0) (= (|Seq#Length_3056| (|Seq#Drop_3056| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3056| (|Seq#Drop_3056| s@@0 n@@0)) (|Seq#Length_3056| s@@0))))
 :qid |stdinbpl.309:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3056| (|Seq#Drop_3056| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3056| s@@0) (|Seq#Drop_3056| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_10525) (Heap1 T@PolymorphicMapType_10525) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_10525) (Mask T@PolymorphicMapType_10546) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_10525) (Heap1@@0 T@PolymorphicMapType_10525) (Heap2 T@PolymorphicMapType_10525) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_10585_29320) ) (!  (not (select (|PolymorphicMapType_11074_10585_30498#PolymorphicMapType_11074| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11074_10585_30498#PolymorphicMapType_11074| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_10585_29187) ) (!  (not (select (|PolymorphicMapType_11074_10585_29187#PolymorphicMapType_11074| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11074_10585_29187#PolymorphicMapType_11074| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_16618_3178) ) (!  (not (select (|PolymorphicMapType_11074_10585_3178#PolymorphicMapType_11074| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11074_10585_3178#PolymorphicMapType_11074| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_10598_10599) ) (!  (not (select (|PolymorphicMapType_11074_10585_10599#PolymorphicMapType_11074| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11074_10585_10599#PolymorphicMapType_11074| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_10585_53) ) (!  (not (select (|PolymorphicMapType_11074_10585_53#PolymorphicMapType_11074| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11074_10585_53#PolymorphicMapType_11074| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((s@@1 T@Seq_16663) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_7162| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_7162| (|Seq#Drop_7162| s@@1 n@@1) j) (|Seq#Index_7162| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.330:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_7162| (|Seq#Drop_7162| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3056) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3056| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3056| (|Seq#Drop_3056| s@@2 n@@2) j@@0) (|Seq#Index_3056| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.330:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3056| (|Seq#Drop_3056| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_7162| |Seq#Empty_7162|) 0))
(assert (= (|Seq#Length_3056| |Seq#Empty_3056|) 0))
(assert (forall ((s@@3 T@Seq_16663) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_7162| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_7162| (|Seq#Update_7162| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_7162| (|Seq#Update_7162| s@@3 i v) n@@3) (|Seq#Index_7162| s@@3 n@@3)))))
 :qid |stdinbpl.285:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_7162| (|Seq#Update_7162| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_7162| s@@3 n@@3) (|Seq#Update_7162| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_3056) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3056| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_3056| (|Seq#Update_3056| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_3056| (|Seq#Update_3056| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_3056| s@@4 n@@4)))))
 :qid |stdinbpl.285:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3056| (|Seq#Update_3056| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_3056| s@@4 n@@4) (|Seq#Update_3056| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_16663) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_7162| s@@5)) (= (|Seq#Length_7162| (|Seq#Take_7162| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_7162| s@@5) n@@5) (= (|Seq#Length_7162| (|Seq#Take_7162| s@@5 n@@5)) (|Seq#Length_7162| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_7162| (|Seq#Take_7162| s@@5 n@@5)) 0)))
 :qid |stdinbpl.296:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_7162| (|Seq#Take_7162| s@@5 n@@5)))
 :pattern ( (|Seq#Take_7162| s@@5 n@@5) (|Seq#Length_7162| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3056) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3056| s@@6)) (= (|Seq#Length_3056| (|Seq#Take_3056| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3056| s@@6) n@@6) (= (|Seq#Length_3056| (|Seq#Take_3056| s@@6 n@@6)) (|Seq#Length_3056| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3056| (|Seq#Take_3056| s@@6 n@@6)) 0)))
 :qid |stdinbpl.296:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3056| (|Seq#Take_3056| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3056| s@@6 n@@6) (|Seq#Length_3056| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3056| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.570:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3056| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_16663) (x T@Ref) ) (!  (=> (|Seq#Contains_16663| s@@7 x) (and (and (<= 0 (|Seq#Skolem_16663| s@@7 x)) (< (|Seq#Skolem_16663| s@@7 x) (|Seq#Length_7162| s@@7))) (= (|Seq#Index_7162| s@@7 (|Seq#Skolem_16663| s@@7 x)) x)))
 :qid |stdinbpl.428:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_16663| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3056) (x@@0 Int) ) (!  (=> (|Seq#Contains_3056| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3056| s@@8 x@@0)) (< (|Seq#Skolem_3056| s@@8 x@@0) (|Seq#Length_3056| s@@8))) (= (|Seq#Index_3056| s@@8 (|Seq#Skolem_3056| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.428:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3056| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_16663) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_7162| s@@9 n@@7) s@@9))
 :qid |stdinbpl.412:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_7162| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3056) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3056| s@@10 n@@8) s@@10))
 :qid |stdinbpl.412:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3056| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.265:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.263:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_10525) (ExhaleHeap T@PolymorphicMapType_10525) (Mask@@0 T@PolymorphicMapType_10546) (pm_f_28 T@Field_10585_29187) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_10585_29251 Mask@@0 null pm_f_28) (IsPredicateField_10585_29278 pm_f_28)) (= (select (|PolymorphicMapType_10525_10585_29364#PolymorphicMapType_10525| Heap@@0) null (PredicateMaskField_10585 pm_f_28)) (select (|PolymorphicMapType_10525_10585_29364#PolymorphicMapType_10525| ExhaleHeap) null (PredicateMaskField_10585 pm_f_28)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_10585_29278 pm_f_28) (select (|PolymorphicMapType_10525_10585_29364#PolymorphicMapType_10525| ExhaleHeap) null (PredicateMaskField_10585 pm_f_28)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_10525) (ExhaleHeap@@0 T@PolymorphicMapType_10525) (Mask@@1 T@PolymorphicMapType_10546) (pm_f_28@@0 T@Field_10585_29187) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_10585_29251 Mask@@1 null pm_f_28@@0) (IsWandField_10585_31025 pm_f_28@@0)) (= (select (|PolymorphicMapType_10525_10585_29364#PolymorphicMapType_10525| Heap@@1) null (WandMaskField_10585 pm_f_28@@0)) (select (|PolymorphicMapType_10525_10585_29364#PolymorphicMapType_10525| ExhaleHeap@@0) null (WandMaskField_10585 pm_f_28@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_10585_31025 pm_f_28@@0) (select (|PolymorphicMapType_10525_10585_29364#PolymorphicMapType_10525| ExhaleHeap@@0) null (WandMaskField_10585 pm_f_28@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_16663| (|Seq#Singleton_7162| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.553:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_16663| (|Seq#Singleton_7162| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3056| (|Seq#Singleton_3056| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.553:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3056| (|Seq#Singleton_3056| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_16663) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_7162| s@@11))) (= (|Seq#Index_7162| (|Seq#Take_7162| s@@11 n@@9) j@@3) (|Seq#Index_7162| s@@11 j@@3)))
 :qid |stdinbpl.304:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_7162| (|Seq#Take_7162| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_7162| s@@11 j@@3) (|Seq#Take_7162| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3056) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3056| s@@12))) (= (|Seq#Index_3056| (|Seq#Take_3056| s@@12 n@@10) j@@4) (|Seq#Index_3056| s@@12 j@@4)))
 :qid |stdinbpl.304:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3056| (|Seq#Take_3056| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3056| s@@12 j@@4) (|Seq#Take_3056| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_16663) (t T@Seq_16663) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_7162| s@@13))) (< n@@11 (|Seq#Length_7162| (|Seq#Append_16663| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_7162| s@@13)) (|Seq#Length_7162| s@@13)) n@@11) (= (|Seq#Take_7162| (|Seq#Append_16663| s@@13 t) n@@11) (|Seq#Append_16663| s@@13 (|Seq#Take_7162| t (|Seq#Sub| n@@11 (|Seq#Length_7162| s@@13)))))))
 :qid |stdinbpl.389:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_7162| (|Seq#Append_16663| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3056) (t@@0 T@Seq_3056) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3056| s@@14))) (< n@@12 (|Seq#Length_3056| (|Seq#Append_3056| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3056| s@@14)) (|Seq#Length_3056| s@@14)) n@@12) (= (|Seq#Take_3056| (|Seq#Append_3056| s@@14 t@@0) n@@12) (|Seq#Append_3056| s@@14 (|Seq#Take_3056| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3056| s@@14)))))))
 :qid |stdinbpl.389:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3056| (|Seq#Append_3056| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_10525) (ExhaleHeap@@1 T@PolymorphicMapType_10525) (Mask@@2 T@PolymorphicMapType_10546) (o_41 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_10525_6953_53#PolymorphicMapType_10525| Heap@@2) o_41 $allocated) (select (|PolymorphicMapType_10525_6953_53#PolymorphicMapType_10525| ExhaleHeap@@1) o_41 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_10525_6953_53#PolymorphicMapType_10525| ExhaleHeap@@1) o_41 $allocated))
)))
(assert (forall ((p T@Field_10585_29187) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_10585_10585 p v_1 p w))
 :qid |stdinbpl.207:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_10585_10585 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_16663) (s1 T@Seq_16663) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_7162|)) (not (= s1 |Seq#Empty_7162|))) (<= (|Seq#Length_7162| s0) n@@13)) (< n@@13 (|Seq#Length_7162| (|Seq#Append_16663| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_7162| s0)) (|Seq#Length_7162| s0)) n@@13) (= (|Seq#Index_7162| (|Seq#Append_16663| s0 s1) n@@13) (|Seq#Index_7162| s1 (|Seq#Sub| n@@13 (|Seq#Length_7162| s0))))))
 :qid |stdinbpl.276:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_7162| (|Seq#Append_16663| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3056) (s1@@0 T@Seq_3056) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3056|)) (not (= s1@@0 |Seq#Empty_3056|))) (<= (|Seq#Length_3056| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3056| (|Seq#Append_3056| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3056| s0@@0)) (|Seq#Length_3056| s0@@0)) n@@14) (= (|Seq#Index_3056| (|Seq#Append_3056| s0@@0 s1@@0) n@@14) (|Seq#Index_3056| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3056| s0@@0))))))
 :qid |stdinbpl.276:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3056| (|Seq#Append_3056| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_7157_3178 f_7)))
(assert  (not (IsWandField_7157_3178 f_7)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_10525) (ExhaleHeap@@2 T@PolymorphicMapType_10525) (Mask@@3 T@PolymorphicMapType_10546) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_10546) (o_2@@4 T@Ref) (f_4@@4 T@Field_10585_29320) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_10546_7157_33442#PolymorphicMapType_10546| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_7157_34571 f_4@@4))) (not (IsWandField_7157_34587 f_4@@4))) (<= (select (|PolymorphicMapType_10546_7157_33442#PolymorphicMapType_10546| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_10546_7157_33442#PolymorphicMapType_10546| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_10546) (o_2@@5 T@Ref) (f_4@@5 T@Field_10585_29187) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_10546_7157_29187#PolymorphicMapType_10546| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_10585_29278 f_4@@5))) (not (IsWandField_10585_31025 f_4@@5))) (<= (select (|PolymorphicMapType_10546_7157_29187#PolymorphicMapType_10546| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_10546_7157_29187#PolymorphicMapType_10546| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_10546) (o_2@@6 T@Ref) (f_4@@6 T@Field_10598_10599) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_10546_7157_10599#PolymorphicMapType_10546| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_7157_10599 f_4@@6))) (not (IsWandField_7157_10599 f_4@@6))) (<= (select (|PolymorphicMapType_10546_7157_10599#PolymorphicMapType_10546| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_10546_7157_10599#PolymorphicMapType_10546| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_10546) (o_2@@7 T@Ref) (f_4@@7 T@Field_10585_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_10546_7157_53#PolymorphicMapType_10546| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_7157_53 f_4@@7))) (not (IsWandField_7157_53 f_4@@7))) (<= (select (|PolymorphicMapType_10546_7157_53#PolymorphicMapType_10546| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_10546_7157_53#PolymorphicMapType_10546| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_10546) (o_2@@8 T@Ref) (f_4@@8 T@Field_16618_3178) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_10546_7157_3178#PolymorphicMapType_10546| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_7157_3178 f_4@@8))) (not (IsWandField_7157_3178 f_4@@8))) (<= (select (|PolymorphicMapType_10546_7157_3178#PolymorphicMapType_10546| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_10546_7157_3178#PolymorphicMapType_10546| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_10546) (o_2@@9 T@Ref) (f_4@@9 T@Field_10585_29320) ) (! (= (HasDirectPerm_10585_35025 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_10546_7157_33442#PolymorphicMapType_10546| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10585_35025 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_10546) (o_2@@10 T@Ref) (f_4@@10 T@Field_10585_29187) ) (! (= (HasDirectPerm_10585_29251 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_10546_7157_29187#PolymorphicMapType_10546| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10585_29251 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_10546) (o_2@@11 T@Ref) (f_4@@11 T@Field_16618_3178) ) (! (= (HasDirectPerm_10585_3178 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_10546_7157_3178#PolymorphicMapType_10546| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10585_3178 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_10546) (o_2@@12 T@Ref) (f_4@@12 T@Field_10598_10599) ) (! (= (HasDirectPerm_10585_10599 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_10546_7157_10599#PolymorphicMapType_10546| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10585_10599 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_10546) (o_2@@13 T@Ref) (f_4@@13 T@Field_10585_53) ) (! (= (HasDirectPerm_10585_53 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_10546_7157_53#PolymorphicMapType_10546| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10585_53 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_10525) (ExhaleHeap@@3 T@PolymorphicMapType_10525) (Mask@@14 T@PolymorphicMapType_10546) (pm_f_28@@1 T@Field_10585_29187) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_10585_29251 Mask@@14 null pm_f_28@@1) (IsPredicateField_10585_29278 pm_f_28@@1)) (and (and (and (and (forall ((o2_28 T@Ref) (f_27 T@Field_10585_53) ) (!  (=> (select (|PolymorphicMapType_11074_10585_53#PolymorphicMapType_11074| (select (|PolymorphicMapType_10525_10585_29364#PolymorphicMapType_10525| Heap@@4) null (PredicateMaskField_10585 pm_f_28@@1))) o2_28 f_27) (= (select (|PolymorphicMapType_10525_6953_53#PolymorphicMapType_10525| Heap@@4) o2_28 f_27) (select (|PolymorphicMapType_10525_6953_53#PolymorphicMapType_10525| ExhaleHeap@@3) o2_28 f_27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10525_6953_53#PolymorphicMapType_10525| ExhaleHeap@@3) o2_28 f_27))
)) (forall ((o2_28@@0 T@Ref) (f_27@@0 T@Field_10598_10599) ) (!  (=> (select (|PolymorphicMapType_11074_10585_10599#PolymorphicMapType_11074| (select (|PolymorphicMapType_10525_10585_29364#PolymorphicMapType_10525| Heap@@4) null (PredicateMaskField_10585 pm_f_28@@1))) o2_28@@0 f_27@@0) (= (select (|PolymorphicMapType_10525_6956_6957#PolymorphicMapType_10525| Heap@@4) o2_28@@0 f_27@@0) (select (|PolymorphicMapType_10525_6956_6957#PolymorphicMapType_10525| ExhaleHeap@@3) o2_28@@0 f_27@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10525_6956_6957#PolymorphicMapType_10525| ExhaleHeap@@3) o2_28@@0 f_27@@0))
))) (forall ((o2_28@@1 T@Ref) (f_27@@1 T@Field_16618_3178) ) (!  (=> (select (|PolymorphicMapType_11074_10585_3178#PolymorphicMapType_11074| (select (|PolymorphicMapType_10525_10585_29364#PolymorphicMapType_10525| Heap@@4) null (PredicateMaskField_10585 pm_f_28@@1))) o2_28@@1 f_27@@1) (= (select (|PolymorphicMapType_10525_7157_3178#PolymorphicMapType_10525| Heap@@4) o2_28@@1 f_27@@1) (select (|PolymorphicMapType_10525_7157_3178#PolymorphicMapType_10525| ExhaleHeap@@3) o2_28@@1 f_27@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10525_7157_3178#PolymorphicMapType_10525| ExhaleHeap@@3) o2_28@@1 f_27@@1))
))) (forall ((o2_28@@2 T@Ref) (f_27@@2 T@Field_10585_29187) ) (!  (=> (select (|PolymorphicMapType_11074_10585_29187#PolymorphicMapType_11074| (select (|PolymorphicMapType_10525_10585_29364#PolymorphicMapType_10525| Heap@@4) null (PredicateMaskField_10585 pm_f_28@@1))) o2_28@@2 f_27@@2) (= (select (|PolymorphicMapType_10525_10585_29187#PolymorphicMapType_10525| Heap@@4) o2_28@@2 f_27@@2) (select (|PolymorphicMapType_10525_10585_29187#PolymorphicMapType_10525| ExhaleHeap@@3) o2_28@@2 f_27@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10525_10585_29187#PolymorphicMapType_10525| ExhaleHeap@@3) o2_28@@2 f_27@@2))
))) (forall ((o2_28@@3 T@Ref) (f_27@@3 T@Field_10585_29320) ) (!  (=> (select (|PolymorphicMapType_11074_10585_30498#PolymorphicMapType_11074| (select (|PolymorphicMapType_10525_10585_29364#PolymorphicMapType_10525| Heap@@4) null (PredicateMaskField_10585 pm_f_28@@1))) o2_28@@3 f_27@@3) (= (select (|PolymorphicMapType_10525_10585_29364#PolymorphicMapType_10525| Heap@@4) o2_28@@3 f_27@@3) (select (|PolymorphicMapType_10525_10585_29364#PolymorphicMapType_10525| ExhaleHeap@@3) o2_28@@3 f_27@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10525_10585_29364#PolymorphicMapType_10525| ExhaleHeap@@3) o2_28@@3 f_27@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_10585_29278 pm_f_28@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_10525) (ExhaleHeap@@4 T@PolymorphicMapType_10525) (Mask@@15 T@PolymorphicMapType_10546) (pm_f_28@@2 T@Field_10585_29187) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_10585_29251 Mask@@15 null pm_f_28@@2) (IsWandField_10585_31025 pm_f_28@@2)) (and (and (and (and (forall ((o2_28@@4 T@Ref) (f_27@@4 T@Field_10585_53) ) (!  (=> (select (|PolymorphicMapType_11074_10585_53#PolymorphicMapType_11074| (select (|PolymorphicMapType_10525_10585_29364#PolymorphicMapType_10525| Heap@@5) null (WandMaskField_10585 pm_f_28@@2))) o2_28@@4 f_27@@4) (= (select (|PolymorphicMapType_10525_6953_53#PolymorphicMapType_10525| Heap@@5) o2_28@@4 f_27@@4) (select (|PolymorphicMapType_10525_6953_53#PolymorphicMapType_10525| ExhaleHeap@@4) o2_28@@4 f_27@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10525_6953_53#PolymorphicMapType_10525| ExhaleHeap@@4) o2_28@@4 f_27@@4))
)) (forall ((o2_28@@5 T@Ref) (f_27@@5 T@Field_10598_10599) ) (!  (=> (select (|PolymorphicMapType_11074_10585_10599#PolymorphicMapType_11074| (select (|PolymorphicMapType_10525_10585_29364#PolymorphicMapType_10525| Heap@@5) null (WandMaskField_10585 pm_f_28@@2))) o2_28@@5 f_27@@5) (= (select (|PolymorphicMapType_10525_6956_6957#PolymorphicMapType_10525| Heap@@5) o2_28@@5 f_27@@5) (select (|PolymorphicMapType_10525_6956_6957#PolymorphicMapType_10525| ExhaleHeap@@4) o2_28@@5 f_27@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10525_6956_6957#PolymorphicMapType_10525| ExhaleHeap@@4) o2_28@@5 f_27@@5))
))) (forall ((o2_28@@6 T@Ref) (f_27@@6 T@Field_16618_3178) ) (!  (=> (select (|PolymorphicMapType_11074_10585_3178#PolymorphicMapType_11074| (select (|PolymorphicMapType_10525_10585_29364#PolymorphicMapType_10525| Heap@@5) null (WandMaskField_10585 pm_f_28@@2))) o2_28@@6 f_27@@6) (= (select (|PolymorphicMapType_10525_7157_3178#PolymorphicMapType_10525| Heap@@5) o2_28@@6 f_27@@6) (select (|PolymorphicMapType_10525_7157_3178#PolymorphicMapType_10525| ExhaleHeap@@4) o2_28@@6 f_27@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10525_7157_3178#PolymorphicMapType_10525| ExhaleHeap@@4) o2_28@@6 f_27@@6))
))) (forall ((o2_28@@7 T@Ref) (f_27@@7 T@Field_10585_29187) ) (!  (=> (select (|PolymorphicMapType_11074_10585_29187#PolymorphicMapType_11074| (select (|PolymorphicMapType_10525_10585_29364#PolymorphicMapType_10525| Heap@@5) null (WandMaskField_10585 pm_f_28@@2))) o2_28@@7 f_27@@7) (= (select (|PolymorphicMapType_10525_10585_29187#PolymorphicMapType_10525| Heap@@5) o2_28@@7 f_27@@7) (select (|PolymorphicMapType_10525_10585_29187#PolymorphicMapType_10525| ExhaleHeap@@4) o2_28@@7 f_27@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10525_10585_29187#PolymorphicMapType_10525| ExhaleHeap@@4) o2_28@@7 f_27@@7))
))) (forall ((o2_28@@8 T@Ref) (f_27@@8 T@Field_10585_29320) ) (!  (=> (select (|PolymorphicMapType_11074_10585_30498#PolymorphicMapType_11074| (select (|PolymorphicMapType_10525_10585_29364#PolymorphicMapType_10525| Heap@@5) null (WandMaskField_10585 pm_f_28@@2))) o2_28@@8 f_27@@8) (= (select (|PolymorphicMapType_10525_10585_29364#PolymorphicMapType_10525| Heap@@5) o2_28@@8 f_27@@8) (select (|PolymorphicMapType_10525_10585_29364#PolymorphicMapType_10525| ExhaleHeap@@4) o2_28@@8 f_27@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10525_10585_29364#PolymorphicMapType_10525| ExhaleHeap@@4) o2_28@@8 f_27@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_10585_31025 pm_f_28@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.195:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3056| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.568:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3056| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_10525) (ExhaleHeap@@5 T@PolymorphicMapType_10525) (Mask@@16 T@PolymorphicMapType_10546) (o_41@@0 T@Ref) (f_27@@9 T@Field_10585_29320) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_10585_35025 Mask@@16 o_41@@0 f_27@@9) (= (select (|PolymorphicMapType_10525_10585_29364#PolymorphicMapType_10525| Heap@@6) o_41@@0 f_27@@9) (select (|PolymorphicMapType_10525_10585_29364#PolymorphicMapType_10525| ExhaleHeap@@5) o_41@@0 f_27@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_10525_10585_29364#PolymorphicMapType_10525| ExhaleHeap@@5) o_41@@0 f_27@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_10525) (ExhaleHeap@@6 T@PolymorphicMapType_10525) (Mask@@17 T@PolymorphicMapType_10546) (o_41@@1 T@Ref) (f_27@@10 T@Field_10585_29187) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_10585_29251 Mask@@17 o_41@@1 f_27@@10) (= (select (|PolymorphicMapType_10525_10585_29187#PolymorphicMapType_10525| Heap@@7) o_41@@1 f_27@@10) (select (|PolymorphicMapType_10525_10585_29187#PolymorphicMapType_10525| ExhaleHeap@@6) o_41@@1 f_27@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_10525_10585_29187#PolymorphicMapType_10525| ExhaleHeap@@6) o_41@@1 f_27@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_10525) (ExhaleHeap@@7 T@PolymorphicMapType_10525) (Mask@@18 T@PolymorphicMapType_10546) (o_41@@2 T@Ref) (f_27@@11 T@Field_16618_3178) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_10585_3178 Mask@@18 o_41@@2 f_27@@11) (= (select (|PolymorphicMapType_10525_7157_3178#PolymorphicMapType_10525| Heap@@8) o_41@@2 f_27@@11) (select (|PolymorphicMapType_10525_7157_3178#PolymorphicMapType_10525| ExhaleHeap@@7) o_41@@2 f_27@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_10525_7157_3178#PolymorphicMapType_10525| ExhaleHeap@@7) o_41@@2 f_27@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_10525) (ExhaleHeap@@8 T@PolymorphicMapType_10525) (Mask@@19 T@PolymorphicMapType_10546) (o_41@@3 T@Ref) (f_27@@12 T@Field_10598_10599) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_10585_10599 Mask@@19 o_41@@3 f_27@@12) (= (select (|PolymorphicMapType_10525_6956_6957#PolymorphicMapType_10525| Heap@@9) o_41@@3 f_27@@12) (select (|PolymorphicMapType_10525_6956_6957#PolymorphicMapType_10525| ExhaleHeap@@8) o_41@@3 f_27@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_10525_6956_6957#PolymorphicMapType_10525| ExhaleHeap@@8) o_41@@3 f_27@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_10525) (ExhaleHeap@@9 T@PolymorphicMapType_10525) (Mask@@20 T@PolymorphicMapType_10546) (o_41@@4 T@Ref) (f_27@@13 T@Field_10585_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_10585_53 Mask@@20 o_41@@4 f_27@@13) (= (select (|PolymorphicMapType_10525_6953_53#PolymorphicMapType_10525| Heap@@10) o_41@@4 f_27@@13) (select (|PolymorphicMapType_10525_6953_53#PolymorphicMapType_10525| ExhaleHeap@@9) o_41@@4 f_27@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_10525_6953_53#PolymorphicMapType_10525| ExhaleHeap@@9) o_41@@4 f_27@@13))
)))
(assert (forall ((s0@@1 T@Seq_16663) (s1@@1 T@Seq_16663) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_7162|)) (not (= s1@@1 |Seq#Empty_7162|))) (= (|Seq#Length_7162| (|Seq#Append_16663| s0@@1 s1@@1)) (+ (|Seq#Length_7162| s0@@1) (|Seq#Length_7162| s1@@1))))
 :qid |stdinbpl.245:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_7162| (|Seq#Append_16663| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3056) (s1@@2 T@Seq_3056) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3056|)) (not (= s1@@2 |Seq#Empty_3056|))) (= (|Seq#Length_3056| (|Seq#Append_3056| s0@@2 s1@@2)) (+ (|Seq#Length_3056| s0@@2) (|Seq#Length_3056| s1@@2))))
 :qid |stdinbpl.245:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3056| (|Seq#Append_3056| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_10585_29320) ) (! (= (select (|PolymorphicMapType_10546_7157_33442#PolymorphicMapType_10546| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10546_7157_33442#PolymorphicMapType_10546| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_10585_29187) ) (! (= (select (|PolymorphicMapType_10546_7157_29187#PolymorphicMapType_10546| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10546_7157_29187#PolymorphicMapType_10546| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_10598_10599) ) (! (= (select (|PolymorphicMapType_10546_7157_10599#PolymorphicMapType_10546| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10546_7157_10599#PolymorphicMapType_10546| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_10585_53) ) (! (= (select (|PolymorphicMapType_10546_7157_53#PolymorphicMapType_10546| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10546_7157_53#PolymorphicMapType_10546| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_16618_3178) ) (! (= (select (|PolymorphicMapType_10546_7157_3178#PolymorphicMapType_10546| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10546_7157_3178#PolymorphicMapType_10546| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((s@@15 T@Seq_16663) (t@@1 T@Seq_16663) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_7162| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_7162| s@@15)) (|Seq#Length_7162| s@@15)) n@@15) (= (|Seq#Drop_7162| (|Seq#Append_16663| s@@15 t@@1) n@@15) (|Seq#Drop_7162| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_7162| s@@15))))))
 :qid |stdinbpl.402:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_7162| (|Seq#Append_16663| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3056) (t@@2 T@Seq_3056) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3056| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3056| s@@16)) (|Seq#Length_3056| s@@16)) n@@16) (= (|Seq#Drop_3056| (|Seq#Append_3056| s@@16 t@@2) n@@16) (|Seq#Drop_3056| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3056| s@@16))))))
 :qid |stdinbpl.402:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3056| (|Seq#Append_3056| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_10546) (SummandMask1 T@PolymorphicMapType_10546) (SummandMask2 T@PolymorphicMapType_10546) (o_2@@19 T@Ref) (f_4@@19 T@Field_10585_29320) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_10546_7157_33442#PolymorphicMapType_10546| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_10546_7157_33442#PolymorphicMapType_10546| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_10546_7157_33442#PolymorphicMapType_10546| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10546_7157_33442#PolymorphicMapType_10546| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10546_7157_33442#PolymorphicMapType_10546| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10546_7157_33442#PolymorphicMapType_10546| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_10546) (SummandMask1@@0 T@PolymorphicMapType_10546) (SummandMask2@@0 T@PolymorphicMapType_10546) (o_2@@20 T@Ref) (f_4@@20 T@Field_10585_29187) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_10546_7157_29187#PolymorphicMapType_10546| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_10546_7157_29187#PolymorphicMapType_10546| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_10546_7157_29187#PolymorphicMapType_10546| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10546_7157_29187#PolymorphicMapType_10546| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10546_7157_29187#PolymorphicMapType_10546| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10546_7157_29187#PolymorphicMapType_10546| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_10546) (SummandMask1@@1 T@PolymorphicMapType_10546) (SummandMask2@@1 T@PolymorphicMapType_10546) (o_2@@21 T@Ref) (f_4@@21 T@Field_10598_10599) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_10546_7157_10599#PolymorphicMapType_10546| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_10546_7157_10599#PolymorphicMapType_10546| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_10546_7157_10599#PolymorphicMapType_10546| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10546_7157_10599#PolymorphicMapType_10546| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10546_7157_10599#PolymorphicMapType_10546| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10546_7157_10599#PolymorphicMapType_10546| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_10546) (SummandMask1@@2 T@PolymorphicMapType_10546) (SummandMask2@@2 T@PolymorphicMapType_10546) (o_2@@22 T@Ref) (f_4@@22 T@Field_10585_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_10546_7157_53#PolymorphicMapType_10546| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_10546_7157_53#PolymorphicMapType_10546| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_10546_7157_53#PolymorphicMapType_10546| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10546_7157_53#PolymorphicMapType_10546| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10546_7157_53#PolymorphicMapType_10546| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10546_7157_53#PolymorphicMapType_10546| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_10546) (SummandMask1@@3 T@PolymorphicMapType_10546) (SummandMask2@@3 T@PolymorphicMapType_10546) (o_2@@23 T@Ref) (f_4@@23 T@Field_16618_3178) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_10546_7157_3178#PolymorphicMapType_10546| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_10546_7157_3178#PolymorphicMapType_10546| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_10546_7157_3178#PolymorphicMapType_10546| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10546_7157_3178#PolymorphicMapType_10546| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10546_7157_3178#PolymorphicMapType_10546| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10546_7157_3178#PolymorphicMapType_10546| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3056| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3056| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.567:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3056| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_16663) (b T@Seq_16663) ) (!  (=> (|Seq#Equal_16663| a b) (= a b))
 :qid |stdinbpl.540:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_16663| a b))
)))
(assert (forall ((a@@0 T@Seq_3056) (b@@0 T@Seq_3056) ) (!  (=> (|Seq#Equal_3056| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.540:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3056| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_16663) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_7162| s@@17))) (|Seq#ContainsTrigger_7162| s@@17 (|Seq#Index_7162| s@@17 i@@3)))
 :qid |stdinbpl.433:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_7162| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_3056) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_3056| s@@18))) (|Seq#ContainsTrigger_3056| s@@18 (|Seq#Index_3056| s@@18 i@@4)))
 :qid |stdinbpl.433:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3056| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_16663) (s1@@3 T@Seq_16663) ) (!  (and (=> (= s0@@3 |Seq#Empty_7162|) (= (|Seq#Append_16663| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_7162|) (= (|Seq#Append_16663| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.251:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_16663| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3056) (s1@@4 T@Seq_3056) ) (!  (and (=> (= s0@@4 |Seq#Empty_3056|) (= (|Seq#Append_3056| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3056|) (= (|Seq#Append_3056| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.251:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3056| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_7162| (|Seq#Singleton_7162| t@@3) 0) t@@3)
 :qid |stdinbpl.255:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_7162| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3056| (|Seq#Singleton_3056| t@@4) 0) t@@4)
 :qid |stdinbpl.255:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3056| t@@4))
)))
(assert (forall ((s@@19 T@Seq_16663) ) (! (<= 0 (|Seq#Length_7162| s@@19))
 :qid |stdinbpl.234:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_7162| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3056) ) (! (<= 0 (|Seq#Length_3056| s@@20))
 :qid |stdinbpl.234:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3056| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_16663) (s1@@5 T@Seq_16663) ) (!  (=> (|Seq#Equal_16663| s0@@5 s1@@5) (and (= (|Seq#Length_7162| s0@@5) (|Seq#Length_7162| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_7162| s0@@5))) (= (|Seq#Index_7162| s0@@5 j@@6) (|Seq#Index_7162| s1@@5 j@@6)))
 :qid |stdinbpl.530:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_7162| s0@@5 j@@6))
 :pattern ( (|Seq#Index_7162| s1@@5 j@@6))
))))
 :qid |stdinbpl.527:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_16663| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3056) (s1@@6 T@Seq_3056) ) (!  (=> (|Seq#Equal_3056| s0@@6 s1@@6) (and (= (|Seq#Length_3056| s0@@6) (|Seq#Length_3056| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_3056| s0@@6))) (= (|Seq#Index_3056| s0@@6 j@@7) (|Seq#Index_3056| s1@@6 j@@7)))
 :qid |stdinbpl.530:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3056| s0@@6 j@@7))
 :pattern ( (|Seq#Index_3056| s1@@6 j@@7))
))))
 :qid |stdinbpl.527:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3056| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_7162| (|Seq#Singleton_7162| t@@5)) 1)
 :qid |stdinbpl.242:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_7162| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3056| (|Seq#Singleton_3056| t@@6)) 1)
 :qid |stdinbpl.242:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3056| t@@6))
)))
(assert (forall ((s@@21 T@Seq_16663) (t@@7 T@Seq_16663) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_7162| s@@21))) (= (|Seq#Take_7162| (|Seq#Append_16663| s@@21 t@@7) n@@17) (|Seq#Take_7162| s@@21 n@@17)))
 :qid |stdinbpl.384:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_7162| (|Seq#Append_16663| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3056) (t@@8 T@Seq_3056) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3056| s@@22))) (= (|Seq#Take_3056| (|Seq#Append_3056| s@@22 t@@8) n@@18) (|Seq#Take_3056| s@@22 n@@18)))
 :qid |stdinbpl.384:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3056| (|Seq#Append_3056| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_16663) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_7162| s@@23))) (= (|Seq#Length_7162| (|Seq#Update_7162| s@@23 i@@5 v@@2)) (|Seq#Length_7162| s@@23)))
 :qid |stdinbpl.283:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_7162| (|Seq#Update_7162| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_7162| s@@23) (|Seq#Update_7162| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3056) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_3056| s@@24))) (= (|Seq#Length_3056| (|Seq#Update_3056| s@@24 i@@6 v@@3)) (|Seq#Length_3056| s@@24)))
 :qid |stdinbpl.283:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3056| (|Seq#Update_3056| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_3056| s@@24) (|Seq#Update_3056| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_10525) (o_22 T@Ref) (f_12 T@Field_10585_29187) (v@@4 T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_10525 (|PolymorphicMapType_10525_6953_53#PolymorphicMapType_10525| Heap@@11) (|PolymorphicMapType_10525_6956_6957#PolymorphicMapType_10525| Heap@@11) (|PolymorphicMapType_10525_7157_3178#PolymorphicMapType_10525| Heap@@11) (|PolymorphicMapType_10525_10585_29364#PolymorphicMapType_10525| Heap@@11) (store (|PolymorphicMapType_10525_10585_29187#PolymorphicMapType_10525| Heap@@11) o_22 f_12 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10525 (|PolymorphicMapType_10525_6953_53#PolymorphicMapType_10525| Heap@@11) (|PolymorphicMapType_10525_6956_6957#PolymorphicMapType_10525| Heap@@11) (|PolymorphicMapType_10525_7157_3178#PolymorphicMapType_10525| Heap@@11) (|PolymorphicMapType_10525_10585_29364#PolymorphicMapType_10525| Heap@@11) (store (|PolymorphicMapType_10525_10585_29187#PolymorphicMapType_10525| Heap@@11) o_22 f_12 v@@4)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_10525) (o_22@@0 T@Ref) (f_12@@0 T@Field_10585_29320) (v@@5 T@PolymorphicMapType_11074) ) (! (succHeap Heap@@12 (PolymorphicMapType_10525 (|PolymorphicMapType_10525_6953_53#PolymorphicMapType_10525| Heap@@12) (|PolymorphicMapType_10525_6956_6957#PolymorphicMapType_10525| Heap@@12) (|PolymorphicMapType_10525_7157_3178#PolymorphicMapType_10525| Heap@@12) (store (|PolymorphicMapType_10525_10585_29364#PolymorphicMapType_10525| Heap@@12) o_22@@0 f_12@@0 v@@5) (|PolymorphicMapType_10525_10585_29187#PolymorphicMapType_10525| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10525 (|PolymorphicMapType_10525_6953_53#PolymorphicMapType_10525| Heap@@12) (|PolymorphicMapType_10525_6956_6957#PolymorphicMapType_10525| Heap@@12) (|PolymorphicMapType_10525_7157_3178#PolymorphicMapType_10525| Heap@@12) (store (|PolymorphicMapType_10525_10585_29364#PolymorphicMapType_10525| Heap@@12) o_22@@0 f_12@@0 v@@5) (|PolymorphicMapType_10525_10585_29187#PolymorphicMapType_10525| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_10525) (o_22@@1 T@Ref) (f_12@@1 T@Field_16618_3178) (v@@6 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_10525 (|PolymorphicMapType_10525_6953_53#PolymorphicMapType_10525| Heap@@13) (|PolymorphicMapType_10525_6956_6957#PolymorphicMapType_10525| Heap@@13) (store (|PolymorphicMapType_10525_7157_3178#PolymorphicMapType_10525| Heap@@13) o_22@@1 f_12@@1 v@@6) (|PolymorphicMapType_10525_10585_29364#PolymorphicMapType_10525| Heap@@13) (|PolymorphicMapType_10525_10585_29187#PolymorphicMapType_10525| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10525 (|PolymorphicMapType_10525_6953_53#PolymorphicMapType_10525| Heap@@13) (|PolymorphicMapType_10525_6956_6957#PolymorphicMapType_10525| Heap@@13) (store (|PolymorphicMapType_10525_7157_3178#PolymorphicMapType_10525| Heap@@13) o_22@@1 f_12@@1 v@@6) (|PolymorphicMapType_10525_10585_29364#PolymorphicMapType_10525| Heap@@13) (|PolymorphicMapType_10525_10585_29187#PolymorphicMapType_10525| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_10525) (o_22@@2 T@Ref) (f_12@@2 T@Field_10598_10599) (v@@7 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_10525 (|PolymorphicMapType_10525_6953_53#PolymorphicMapType_10525| Heap@@14) (store (|PolymorphicMapType_10525_6956_6957#PolymorphicMapType_10525| Heap@@14) o_22@@2 f_12@@2 v@@7) (|PolymorphicMapType_10525_7157_3178#PolymorphicMapType_10525| Heap@@14) (|PolymorphicMapType_10525_10585_29364#PolymorphicMapType_10525| Heap@@14) (|PolymorphicMapType_10525_10585_29187#PolymorphicMapType_10525| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10525 (|PolymorphicMapType_10525_6953_53#PolymorphicMapType_10525| Heap@@14) (store (|PolymorphicMapType_10525_6956_6957#PolymorphicMapType_10525| Heap@@14) o_22@@2 f_12@@2 v@@7) (|PolymorphicMapType_10525_7157_3178#PolymorphicMapType_10525| Heap@@14) (|PolymorphicMapType_10525_10585_29364#PolymorphicMapType_10525| Heap@@14) (|PolymorphicMapType_10525_10585_29187#PolymorphicMapType_10525| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_10525) (o_22@@3 T@Ref) (f_12@@3 T@Field_10585_53) (v@@8 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_10525 (store (|PolymorphicMapType_10525_6953_53#PolymorphicMapType_10525| Heap@@15) o_22@@3 f_12@@3 v@@8) (|PolymorphicMapType_10525_6956_6957#PolymorphicMapType_10525| Heap@@15) (|PolymorphicMapType_10525_7157_3178#PolymorphicMapType_10525| Heap@@15) (|PolymorphicMapType_10525_10585_29364#PolymorphicMapType_10525| Heap@@15) (|PolymorphicMapType_10525_10585_29187#PolymorphicMapType_10525| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10525 (store (|PolymorphicMapType_10525_6953_53#PolymorphicMapType_10525| Heap@@15) o_22@@3 f_12@@3 v@@8) (|PolymorphicMapType_10525_6956_6957#PolymorphicMapType_10525| Heap@@15) (|PolymorphicMapType_10525_7157_3178#PolymorphicMapType_10525| Heap@@15) (|PolymorphicMapType_10525_10585_29364#PolymorphicMapType_10525| Heap@@15) (|PolymorphicMapType_10525_10585_29187#PolymorphicMapType_10525| Heap@@15)))
)))
(assert (forall ((s@@25 T@Seq_16663) (t@@9 T@Seq_16663) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_7162| s@@25))) (= (|Seq#Drop_7162| (|Seq#Append_16663| s@@25 t@@9) n@@19) (|Seq#Append_16663| (|Seq#Drop_7162| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.398:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_7162| (|Seq#Append_16663| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3056) (t@@10 T@Seq_3056) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3056| s@@26))) (= (|Seq#Drop_3056| (|Seq#Append_3056| s@@26 t@@10) n@@20) (|Seq#Append_3056| (|Seq#Drop_3056| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.398:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3056| (|Seq#Append_3056| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_16663) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_7162| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_7162| (|Seq#Drop_7162| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_7162| s@@27 i@@7))))
 :qid |stdinbpl.334:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_7162| s@@27 n@@21) (|Seq#Index_7162| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_3056) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_3056| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_3056| (|Seq#Drop_3056| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_3056| s@@28 i@@8))))
 :qid |stdinbpl.334:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3056| s@@28 n@@22) (|Seq#Index_3056| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_16663) (s1@@7 T@Seq_16663) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_7162|)) (not (= s1@@7 |Seq#Empty_7162|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_7162| s0@@7))) (= (|Seq#Index_7162| (|Seq#Append_16663| s0@@7 s1@@7) n@@23) (|Seq#Index_7162| s0@@7 n@@23)))
 :qid |stdinbpl.274:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_7162| (|Seq#Append_16663| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_7162| s0@@7 n@@23) (|Seq#Append_16663| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3056) (s1@@8 T@Seq_3056) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3056|)) (not (= s1@@8 |Seq#Empty_3056|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3056| s0@@8))) (= (|Seq#Index_3056| (|Seq#Append_3056| s0@@8 s1@@8) n@@24) (|Seq#Index_3056| s0@@8 n@@24)))
 :qid |stdinbpl.274:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3056| (|Seq#Append_3056| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3056| s0@@8 n@@24) (|Seq#Append_3056| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_16663) (s1@@9 T@Seq_16663) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_7162|)) (not (= s1@@9 |Seq#Empty_7162|))) (<= 0 m)) (< m (|Seq#Length_7162| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_7162| s0@@9)) (|Seq#Length_7162| s0@@9)) m) (= (|Seq#Index_7162| (|Seq#Append_16663| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_7162| s0@@9))) (|Seq#Index_7162| s1@@9 m))))
 :qid |stdinbpl.279:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_7162| s1@@9 m) (|Seq#Append_16663| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3056) (s1@@10 T@Seq_3056) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3056|)) (not (= s1@@10 |Seq#Empty_3056|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3056| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3056| s0@@10)) (|Seq#Length_3056| s0@@10)) m@@0) (= (|Seq#Index_3056| (|Seq#Append_3056| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3056| s0@@10))) (|Seq#Index_3056| s1@@10 m@@0))))
 :qid |stdinbpl.279:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3056| s1@@10 m@@0) (|Seq#Append_3056| s0@@10 s1@@10))
)))
(assert (forall ((o_22@@4 T@Ref) (f_30 T@Field_10598_10599) (Heap@@16 T@PolymorphicMapType_10525) ) (!  (=> (select (|PolymorphicMapType_10525_6953_53#PolymorphicMapType_10525| Heap@@16) o_22@@4 $allocated) (select (|PolymorphicMapType_10525_6953_53#PolymorphicMapType_10525| Heap@@16) (select (|PolymorphicMapType_10525_6956_6957#PolymorphicMapType_10525| Heap@@16) o_22@@4 f_30) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_10525_6956_6957#PolymorphicMapType_10525| Heap@@16) o_22@@4 f_30))
)))
(assert (forall ((s@@29 T@Seq_16663) (x@@3 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_7162| s@@29))) (= (|Seq#Index_7162| s@@29 i@@9) x@@3)) (|Seq#Contains_16663| s@@29 x@@3))
 :qid |stdinbpl.431:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_16663| s@@29 x@@3) (|Seq#Index_7162| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_3056) (x@@4 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_3056| s@@30))) (= (|Seq#Index_3056| s@@30 i@@10) x@@4)) (|Seq#Contains_3056| s@@30 x@@4))
 :qid |stdinbpl.431:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3056| s@@30 x@@4) (|Seq#Index_3056| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_16663) (s1@@11 T@Seq_16663) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_16663| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_16663| s0@@11 s1@@11))) (not (= (|Seq#Length_7162| s0@@11) (|Seq#Length_7162| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_16663| s0@@11 s1@@11))) (= (|Seq#Length_7162| s0@@11) (|Seq#Length_7162| s1@@11))) (= (|Seq#SkolemDiff_16663| s0@@11 s1@@11) (|Seq#SkolemDiff_16663| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_16663| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_16663| s0@@11 s1@@11) (|Seq#Length_7162| s0@@11))) (not (= (|Seq#Index_7162| s0@@11 (|Seq#SkolemDiff_16663| s0@@11 s1@@11)) (|Seq#Index_7162| s1@@11 (|Seq#SkolemDiff_16663| s0@@11 s1@@11))))))
 :qid |stdinbpl.535:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_16663| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3056) (s1@@12 T@Seq_3056) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3056| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3056| s0@@12 s1@@12))) (not (= (|Seq#Length_3056| s0@@12) (|Seq#Length_3056| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3056| s0@@12 s1@@12))) (= (|Seq#Length_3056| s0@@12) (|Seq#Length_3056| s1@@12))) (= (|Seq#SkolemDiff_3056| s0@@12 s1@@12) (|Seq#SkolemDiff_3056| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3056| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3056| s0@@12 s1@@12) (|Seq#Length_3056| s0@@12))) (not (= (|Seq#Index_3056| s0@@12 (|Seq#SkolemDiff_3056| s0@@12 s1@@12)) (|Seq#Index_3056| s1@@12 (|Seq#SkolemDiff_3056| s0@@12 s1@@12))))))
 :qid |stdinbpl.535:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3056| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_10585_29187) (v_1@@0 T@FrameType) (q T@Field_10585_29187) (w@@0 T@FrameType) (r T@Field_10585_29187) (u T@FrameType) ) (!  (=> (and (InsidePredicate_10585_10585 p@@1 v_1@@0 q w@@0) (InsidePredicate_10585_10585 q w@@0 r u)) (InsidePredicate_10585_10585 p@@1 v_1@@0 r u))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10585_10585 p@@1 v_1@@0 q w@@0) (InsidePredicate_10585_10585 q w@@0 r u))
)))
(assert (forall ((s@@31 T@Seq_16663) ) (!  (=> (= (|Seq#Length_7162| s@@31) 0) (= s@@31 |Seq#Empty_7162|))
 :qid |stdinbpl.238:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_7162| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3056) ) (!  (=> (= (|Seq#Length_3056| s@@32) 0) (= s@@32 |Seq#Empty_3056|))
 :qid |stdinbpl.238:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3056| s@@32))
)))
(assert (forall ((s@@33 T@Seq_16663) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_7162| s@@33 n@@25) |Seq#Empty_7162|))
 :qid |stdinbpl.414:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_7162| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3056) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3056| s@@34 n@@26) |Seq#Empty_3056|))
 :qid |stdinbpl.414:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3056| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun i_7 () Int)
(declare-fun xs () T@Seq_16663)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_10525)
(declare-fun dummyFunction_3178 (Int) Bool)
(declare-fun p_1 () Real)
(declare-fun neverTriggered4 (Int) Bool)
(declare-fun QPMask@2 () T@PolymorphicMapType_10546)
(declare-fun k () Int)
(declare-fun qpRange3 (T@Ref) Bool)
(declare-fun invRecv3 (T@Ref) Int)
(declare-fun QPMask@1 () T@PolymorphicMapType_10546)
(declare-fun i_6 () Int)
(declare-fun Heap@@17 () T@PolymorphicMapType_10525)
(declare-fun neverTriggered2 (Int) Bool)
(declare-fun QPMask@0 () T@PolymorphicMapType_10546)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) Int)
(declare-fun i_4 () Int)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) Int)
(declare-fun i_2 () Int)
(declare-fun i_14 () Int)
(declare-fun j_5 () Int)
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
 (=> (= (ControlFlow 0 0) 44) (let ((anon19_correct true))
(let ((anon30_Else_correct  (=> (and (not (and (<= 0 i_7) (< i_7 (|Seq#Length_7162| xs)))) (= (ControlFlow 0 31) 27)) anon19_correct)))
(let ((anon30_Then_correct  (=> (and (<= 0 i_7) (< i_7 (|Seq#Length_7162| xs))) (and (=> (= (ControlFlow 0 28) (- 0 30)) (>= i_7 0)) (=> (>= i_7 0) (and (=> (= (ControlFlow 0 28) (- 0 29)) (< i_7 (|Seq#Length_7162| xs))) (=> (< i_7 (|Seq#Length_7162| xs)) (=> (= (ControlFlow 0 28) 27) anon19_correct))))))))
(let ((anon29_Else_correct  (and (=> (= (ControlFlow 0 24) (- 0 26)) (forall ((i_9_1 Int) ) (!  (=> (and (and (<= 0 i_9_1) (< i_9_1 (|Seq#Length_7162| xs))) (dummyFunction_3178 (select (|PolymorphicMapType_10525_7157_3178#PolymorphicMapType_10525| ExhaleHeap@0) (|Seq#Index_7162| xs i_9_1) f_7))) (>= p_1 NoPerm))
 :qid |stdinbpl.859:17|
 :skolemid |80|
 :pattern ( (|Seq#Index_7162| xs i_9_1))
 :pattern ( (select (|PolymorphicMapType_10525_7157_3178#PolymorphicMapType_10525| ExhaleHeap@0) (|Seq#Index_7162| xs i_9_1) f_7))
))) (=> (forall ((i_9_1@@0 Int) ) (!  (=> (and (and (<= 0 i_9_1@@0) (< i_9_1@@0 (|Seq#Length_7162| xs))) (dummyFunction_3178 (select (|PolymorphicMapType_10525_7157_3178#PolymorphicMapType_10525| ExhaleHeap@0) (|Seq#Index_7162| xs i_9_1@@0) f_7))) (>= p_1 NoPerm))
 :qid |stdinbpl.859:17|
 :skolemid |80|
 :pattern ( (|Seq#Index_7162| xs i_9_1@@0))
 :pattern ( (select (|PolymorphicMapType_10525_7157_3178#PolymorphicMapType_10525| ExhaleHeap@0) (|Seq#Index_7162| xs i_9_1@@0) f_7))
)) (and (=> (= (ControlFlow 0 24) (- 0 25)) (forall ((i_9_1@@1 Int) (i_9_2 Int) ) (!  (=> (and (and (and (and (not (= i_9_1@@1 i_9_2)) (and (<= 0 i_9_1@@1) (< i_9_1@@1 (|Seq#Length_7162| xs)))) (and (<= 0 i_9_2) (< i_9_2 (|Seq#Length_7162| xs)))) (< NoPerm p_1)) (< NoPerm p_1)) (not (= (|Seq#Index_7162| xs i_9_1@@1) (|Seq#Index_7162| xs i_9_2))))
 :qid |stdinbpl.866:17|
 :skolemid |81|
 :pattern ( (neverTriggered4 i_9_1@@1) (neverTriggered4 i_9_2))
))) (=> (forall ((i_9_1@@2 Int) (i_9_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_9_1@@2 i_9_2@@0)) (and (<= 0 i_9_1@@2) (< i_9_1@@2 (|Seq#Length_7162| xs)))) (and (<= 0 i_9_2@@0) (< i_9_2@@0 (|Seq#Length_7162| xs)))) (< NoPerm p_1)) (< NoPerm p_1)) (not (= (|Seq#Index_7162| xs i_9_1@@2) (|Seq#Index_7162| xs i_9_2@@0))))
 :qid |stdinbpl.866:17|
 :skolemid |81|
 :pattern ( (neverTriggered4 i_9_1@@2) (neverTriggered4 i_9_2@@0))
)) (=> (= (ControlFlow 0 24) (- 0 23)) (forall ((i_9_1@@3 Int) ) (!  (=> (and (<= 0 i_9_1@@3) (< i_9_1@@3 (|Seq#Length_7162| xs))) (>= (select (|PolymorphicMapType_10546_7157_3178#PolymorphicMapType_10546| QPMask@2) (|Seq#Index_7162| xs i_9_1@@3) f_7) p_1))
 :qid |stdinbpl.873:17|
 :skolemid |82|
 :pattern ( (|Seq#Index_7162| xs i_9_1@@3))
 :pattern ( (select (|PolymorphicMapType_10525_7157_3178#PolymorphicMapType_10525| ExhaleHeap@0) (|Seq#Index_7162| xs i_9_1@@3) f_7))
)))))))))
(let ((anon27_Else_correct  (and (=> (= (ControlFlow 0 32) (- 0 34)) (forall ((i_7_1 Int) (i_7_2 Int) ) (!  (=> (and (and (and (and (not (= i_7_1 i_7_2)) (and (<= k i_7_1) (< i_7_1 (|Seq#Length_7162| xs)))) (and (<= k i_7_2) (< i_7_2 (|Seq#Length_7162| xs)))) (< NoPerm (/ p_1 (to_real 2)))) (< NoPerm (/ p_1 (to_real 2)))) (not (= (|Seq#Index_7162| xs i_7_1) (|Seq#Index_7162| xs i_7_2))))
 :qid |stdinbpl.798:15|
 :skolemid |73|
))) (=> (forall ((i_7_1@@0 Int) (i_7_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_7_1@@0 i_7_2@@0)) (and (<= k i_7_1@@0) (< i_7_1@@0 (|Seq#Length_7162| xs)))) (and (<= k i_7_2@@0) (< i_7_2@@0 (|Seq#Length_7162| xs)))) (< NoPerm (/ p_1 (to_real 2)))) (< NoPerm (/ p_1 (to_real 2)))) (not (= (|Seq#Index_7162| xs i_7_1@@0) (|Seq#Index_7162| xs i_7_2@@0))))
 :qid |stdinbpl.798:15|
 :skolemid |73|
)) (=> (and (forall ((i_7_1@@1 Int) ) (!  (=> (and (and (<= k i_7_1@@1) (< i_7_1@@1 (|Seq#Length_7162| xs))) (< NoPerm (/ p_1 (to_real 2)))) (and (qpRange3 (|Seq#Index_7162| xs i_7_1@@1)) (= (invRecv3 (|Seq#Index_7162| xs i_7_1@@1)) i_7_1@@1)))
 :qid |stdinbpl.804:22|
 :skolemid |74|
 :pattern ( (|Seq#Index_7162| xs i_7_1@@1))
 :pattern ( (select (|PolymorphicMapType_10525_7157_3178#PolymorphicMapType_10525| ExhaleHeap@0) (|Seq#Index_7162| xs i_7_1@@1) f_7))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (and (<= k (invRecv3 o_4)) (< (invRecv3 o_4) (|Seq#Length_7162| xs))) (< NoPerm (/ p_1 (to_real 2)))) (qpRange3 o_4)) (= (|Seq#Index_7162| xs (invRecv3 o_4)) o_4))
 :qid |stdinbpl.808:22|
 :skolemid |75|
 :pattern ( (invRecv3 o_4))
))) (and (=> (= (ControlFlow 0 32) (- 0 33)) (forall ((i_7_1@@2 Int) ) (!  (=> (and (<= k i_7_1@@2) (< i_7_1@@2 (|Seq#Length_7162| xs))) (>= (/ p_1 (to_real 2)) NoPerm))
 :qid |stdinbpl.814:15|
 :skolemid |76|
 :pattern ( (|Seq#Index_7162| xs i_7_1@@2))
 :pattern ( (select (|PolymorphicMapType_10525_7157_3178#PolymorphicMapType_10525| ExhaleHeap@0) (|Seq#Index_7162| xs i_7_1@@2) f_7))
))) (=> (forall ((i_7_1@@3 Int) ) (!  (=> (and (<= k i_7_1@@3) (< i_7_1@@3 (|Seq#Length_7162| xs))) (>= (/ p_1 (to_real 2)) NoPerm))
 :qid |stdinbpl.814:15|
 :skolemid |76|
 :pattern ( (|Seq#Index_7162| xs i_7_1@@3))
 :pattern ( (select (|PolymorphicMapType_10525_7157_3178#PolymorphicMapType_10525| ExhaleHeap@0) (|Seq#Index_7162| xs i_7_1@@3) f_7))
)) (=> (and (forall ((i_7_1@@4 Int) ) (!  (=> (and (and (<= k i_7_1@@4) (< i_7_1@@4 (|Seq#Length_7162| xs))) (> (/ p_1 (to_real 2)) NoPerm)) (not (= (|Seq#Index_7162| xs i_7_1@@4) null)))
 :qid |stdinbpl.820:22|
 :skolemid |77|
 :pattern ( (|Seq#Index_7162| xs i_7_1@@4))
 :pattern ( (select (|PolymorphicMapType_10525_7157_3178#PolymorphicMapType_10525| ExhaleHeap@0) (|Seq#Index_7162| xs i_7_1@@4) f_7))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (and (<= k (invRecv3 o_4@@0)) (< (invRecv3 o_4@@0) (|Seq#Length_7162| xs))) (< NoPerm (/ p_1 (to_real 2)))) (qpRange3 o_4@@0)) (and (=> (< NoPerm (/ p_1 (to_real 2))) (= (|Seq#Index_7162| xs (invRecv3 o_4@@0)) o_4@@0)) (= (select (|PolymorphicMapType_10546_7157_3178#PolymorphicMapType_10546| QPMask@2) o_4@@0 f_7) (+ (select (|PolymorphicMapType_10546_7157_3178#PolymorphicMapType_10546| QPMask@1) o_4@@0 f_7) (/ p_1 (to_real 2)))))) (=> (not (and (and (and (<= k (invRecv3 o_4@@0)) (< (invRecv3 o_4@@0) (|Seq#Length_7162| xs))) (< NoPerm (/ p_1 (to_real 2)))) (qpRange3 o_4@@0))) (= (select (|PolymorphicMapType_10546_7157_3178#PolymorphicMapType_10546| QPMask@2) o_4@@0 f_7) (select (|PolymorphicMapType_10546_7157_3178#PolymorphicMapType_10546| QPMask@1) o_4@@0 f_7))))
 :qid |stdinbpl.826:22|
 :skolemid |78|
 :pattern ( (select (|PolymorphicMapType_10546_7157_3178#PolymorphicMapType_10546| QPMask@2) o_4@@0 f_7))
))) (=> (and (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_10585_53) ) (!  (=> true (= (select (|PolymorphicMapType_10546_7157_53#PolymorphicMapType_10546| QPMask@1) o_4@@1 f_5) (select (|PolymorphicMapType_10546_7157_53#PolymorphicMapType_10546| QPMask@2) o_4@@1 f_5)))
 :qid |stdinbpl.830:29|
 :skolemid |79|
 :pattern ( (select (|PolymorphicMapType_10546_7157_53#PolymorphicMapType_10546| QPMask@1) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_10546_7157_53#PolymorphicMapType_10546| QPMask@2) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_10598_10599) ) (!  (=> true (= (select (|PolymorphicMapType_10546_7157_10599#PolymorphicMapType_10546| QPMask@1) o_4@@2 f_5@@0) (select (|PolymorphicMapType_10546_7157_10599#PolymorphicMapType_10546| QPMask@2) o_4@@2 f_5@@0)))
 :qid |stdinbpl.830:29|
 :skolemid |79|
 :pattern ( (select (|PolymorphicMapType_10546_7157_10599#PolymorphicMapType_10546| QPMask@1) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_10546_7157_10599#PolymorphicMapType_10546| QPMask@2) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_16618_3178) ) (!  (=> (not (= f_5@@1 f_7)) (= (select (|PolymorphicMapType_10546_7157_3178#PolymorphicMapType_10546| QPMask@1) o_4@@3 f_5@@1) (select (|PolymorphicMapType_10546_7157_3178#PolymorphicMapType_10546| QPMask@2) o_4@@3 f_5@@1)))
 :qid |stdinbpl.830:29|
 :skolemid |79|
 :pattern ( (select (|PolymorphicMapType_10546_7157_3178#PolymorphicMapType_10546| QPMask@1) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_10546_7157_3178#PolymorphicMapType_10546| QPMask@2) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_10585_29187) ) (!  (=> true (= (select (|PolymorphicMapType_10546_7157_29187#PolymorphicMapType_10546| QPMask@1) o_4@@4 f_5@@2) (select (|PolymorphicMapType_10546_7157_29187#PolymorphicMapType_10546| QPMask@2) o_4@@4 f_5@@2)))
 :qid |stdinbpl.830:29|
 :skolemid |79|
 :pattern ( (select (|PolymorphicMapType_10546_7157_29187#PolymorphicMapType_10546| QPMask@1) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_10546_7157_29187#PolymorphicMapType_10546| QPMask@2) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_10585_29320) ) (!  (=> true (= (select (|PolymorphicMapType_10546_7157_33442#PolymorphicMapType_10546| QPMask@1) o_4@@5 f_5@@3) (select (|PolymorphicMapType_10546_7157_33442#PolymorphicMapType_10546| QPMask@2) o_4@@5 f_5@@3)))
 :qid |stdinbpl.830:29|
 :skolemid |79|
 :pattern ( (select (|PolymorphicMapType_10546_7157_33442#PolymorphicMapType_10546| QPMask@1) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_10546_7157_33442#PolymorphicMapType_10546| QPMask@2) o_4@@5 f_5@@3))
))) (state ExhaleHeap@0 QPMask@2)) (and (state ExhaleHeap@0 QPMask@2) (state ExhaleHeap@0 QPMask@2))) (and (and (=> (= (ControlFlow 0 32) 24) anon29_Else_correct) (=> (= (ControlFlow 0 32) 28) anon30_Then_correct)) (=> (= (ControlFlow 0 32) 31) anon30_Else_correct)))))))))))
(let ((anon15_correct true))
(let ((anon28_Else_correct  (=> (and (not (and (<= k i_6) (< i_6 (|Seq#Length_7162| xs)))) (= (ControlFlow 0 22) 18)) anon15_correct)))
(let ((anon28_Then_correct  (=> (and (<= k i_6) (< i_6 (|Seq#Length_7162| xs))) (and (=> (= (ControlFlow 0 19) (- 0 21)) (>= i_6 0)) (=> (>= i_6 0) (and (=> (= (ControlFlow 0 19) (- 0 20)) (< i_6 (|Seq#Length_7162| xs))) (=> (< i_6 (|Seq#Length_7162| xs)) (=> (= (ControlFlow 0 19) 18) anon15_correct))))))))
(let ((anon25_Else_correct  (and (=> (= (ControlFlow 0 35) (- 0 38)) (forall ((i_5 Int) ) (!  (=> (and (and (<= k i_5) (< i_5 (|Seq#Length_7162| xs))) (dummyFunction_3178 (select (|PolymorphicMapType_10525_7157_3178#PolymorphicMapType_10525| Heap@@17) (|Seq#Index_7162| xs i_5) f_7))) (>= (/ p_1 (to_real 2)) NoPerm))
 :qid |stdinbpl.735:17|
 :skolemid |66|
 :pattern ( (|Seq#Index_7162| xs i_5))
 :pattern ( (select (|PolymorphicMapType_10525_7157_3178#PolymorphicMapType_10525| Heap@@17) (|Seq#Index_7162| xs i_5) f_7))
))) (=> (forall ((i_5@@0 Int) ) (!  (=> (and (and (<= k i_5@@0) (< i_5@@0 (|Seq#Length_7162| xs))) (dummyFunction_3178 (select (|PolymorphicMapType_10525_7157_3178#PolymorphicMapType_10525| Heap@@17) (|Seq#Index_7162| xs i_5@@0) f_7))) (>= (/ p_1 (to_real 2)) NoPerm))
 :qid |stdinbpl.735:17|
 :skolemid |66|
 :pattern ( (|Seq#Index_7162| xs i_5@@0))
 :pattern ( (select (|PolymorphicMapType_10525_7157_3178#PolymorphicMapType_10525| Heap@@17) (|Seq#Index_7162| xs i_5@@0) f_7))
)) (and (=> (= (ControlFlow 0 35) (- 0 37)) (forall ((i_5@@1 Int) (i_5_1 Int) ) (!  (=> (and (and (and (and (not (= i_5@@1 i_5_1)) (and (<= k i_5@@1) (< i_5@@1 (|Seq#Length_7162| xs)))) (and (<= k i_5_1) (< i_5_1 (|Seq#Length_7162| xs)))) (< NoPerm (/ p_1 (to_real 2)))) (< NoPerm (/ p_1 (to_real 2)))) (not (= (|Seq#Index_7162| xs i_5@@1) (|Seq#Index_7162| xs i_5_1))))
 :qid |stdinbpl.742:17|
 :skolemid |67|
 :pattern ( (neverTriggered2 i_5@@1) (neverTriggered2 i_5_1))
))) (=> (forall ((i_5@@2 Int) (i_5_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_5@@2 i_5_1@@0)) (and (<= k i_5@@2) (< i_5@@2 (|Seq#Length_7162| xs)))) (and (<= k i_5_1@@0) (< i_5_1@@0 (|Seq#Length_7162| xs)))) (< NoPerm (/ p_1 (to_real 2)))) (< NoPerm (/ p_1 (to_real 2)))) (not (= (|Seq#Index_7162| xs i_5@@2) (|Seq#Index_7162| xs i_5_1@@0))))
 :qid |stdinbpl.742:17|
 :skolemid |67|
 :pattern ( (neverTriggered2 i_5@@2) (neverTriggered2 i_5_1@@0))
)) (and (=> (= (ControlFlow 0 35) (- 0 36)) (forall ((i_5@@3 Int) ) (!  (=> (and (<= k i_5@@3) (< i_5@@3 (|Seq#Length_7162| xs))) (>= (select (|PolymorphicMapType_10546_7157_3178#PolymorphicMapType_10546| QPMask@0) (|Seq#Index_7162| xs i_5@@3) f_7) (/ p_1 (to_real 2))))
 :qid |stdinbpl.749:17|
 :skolemid |68|
 :pattern ( (|Seq#Index_7162| xs i_5@@3))
 :pattern ( (select (|PolymorphicMapType_10525_7157_3178#PolymorphicMapType_10525| Heap@@17) (|Seq#Index_7162| xs i_5@@3) f_7))
))) (=> (forall ((i_5@@4 Int) ) (!  (=> (and (<= k i_5@@4) (< i_5@@4 (|Seq#Length_7162| xs))) (>= (select (|PolymorphicMapType_10546_7157_3178#PolymorphicMapType_10546| QPMask@0) (|Seq#Index_7162| xs i_5@@4) f_7) (/ p_1 (to_real 2))))
 :qid |stdinbpl.749:17|
 :skolemid |68|
 :pattern ( (|Seq#Index_7162| xs i_5@@4))
 :pattern ( (select (|PolymorphicMapType_10525_7157_3178#PolymorphicMapType_10525| Heap@@17) (|Seq#Index_7162| xs i_5@@4) f_7))
)) (=> (forall ((i_5@@5 Int) ) (!  (=> (and (and (<= k i_5@@5) (< i_5@@5 (|Seq#Length_7162| xs))) (< NoPerm (/ p_1 (to_real 2)))) (and (qpRange2 (|Seq#Index_7162| xs i_5@@5)) (= (invRecv2 (|Seq#Index_7162| xs i_5@@5)) i_5@@5)))
 :qid |stdinbpl.755:22|
 :skolemid |69|
 :pattern ( (|Seq#Index_7162| xs i_5@@5))
 :pattern ( (select (|PolymorphicMapType_10525_7157_3178#PolymorphicMapType_10525| Heap@@17) (|Seq#Index_7162| xs i_5@@5) f_7))
)) (=> (and (forall ((o_4@@6 T@Ref) ) (!  (=> (and (and (<= k (invRecv2 o_4@@6)) (< (invRecv2 o_4@@6) (|Seq#Length_7162| xs))) (and (< NoPerm (/ p_1 (to_real 2))) (qpRange2 o_4@@6))) (= (|Seq#Index_7162| xs (invRecv2 o_4@@6)) o_4@@6))
 :qid |stdinbpl.759:22|
 :skolemid |70|
 :pattern ( (invRecv2 o_4@@6))
)) (forall ((o_4@@7 T@Ref) ) (!  (and (=> (and (and (<= k (invRecv2 o_4@@7)) (< (invRecv2 o_4@@7) (|Seq#Length_7162| xs))) (and (< NoPerm (/ p_1 (to_real 2))) (qpRange2 o_4@@7))) (and (= (|Seq#Index_7162| xs (invRecv2 o_4@@7)) o_4@@7) (= (select (|PolymorphicMapType_10546_7157_3178#PolymorphicMapType_10546| QPMask@1) o_4@@7 f_7) (- (select (|PolymorphicMapType_10546_7157_3178#PolymorphicMapType_10546| QPMask@0) o_4@@7 f_7) (/ p_1 (to_real 2)))))) (=> (not (and (and (<= k (invRecv2 o_4@@7)) (< (invRecv2 o_4@@7) (|Seq#Length_7162| xs))) (and (< NoPerm (/ p_1 (to_real 2))) (qpRange2 o_4@@7)))) (= (select (|PolymorphicMapType_10546_7157_3178#PolymorphicMapType_10546| QPMask@1) o_4@@7 f_7) (select (|PolymorphicMapType_10546_7157_3178#PolymorphicMapType_10546| QPMask@0) o_4@@7 f_7))))
 :qid |stdinbpl.765:22|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_10546_7157_3178#PolymorphicMapType_10546| QPMask@1) o_4@@7 f_7))
))) (=> (and (and (and (and (and (forall ((o_4@@8 T@Ref) (f_5@@4 T@Field_10585_53) ) (!  (=> true (= (select (|PolymorphicMapType_10546_7157_53#PolymorphicMapType_10546| QPMask@0) o_4@@8 f_5@@4) (select (|PolymorphicMapType_10546_7157_53#PolymorphicMapType_10546| QPMask@1) o_4@@8 f_5@@4)))
 :qid |stdinbpl.771:29|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_10546_7157_53#PolymorphicMapType_10546| QPMask@1) o_4@@8 f_5@@4))
)) (forall ((o_4@@9 T@Ref) (f_5@@5 T@Field_10598_10599) ) (!  (=> true (= (select (|PolymorphicMapType_10546_7157_10599#PolymorphicMapType_10546| QPMask@0) o_4@@9 f_5@@5) (select (|PolymorphicMapType_10546_7157_10599#PolymorphicMapType_10546| QPMask@1) o_4@@9 f_5@@5)))
 :qid |stdinbpl.771:29|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_10546_7157_10599#PolymorphicMapType_10546| QPMask@1) o_4@@9 f_5@@5))
))) (forall ((o_4@@10 T@Ref) (f_5@@6 T@Field_16618_3178) ) (!  (=> (not (= f_5@@6 f_7)) (= (select (|PolymorphicMapType_10546_7157_3178#PolymorphicMapType_10546| QPMask@0) o_4@@10 f_5@@6) (select (|PolymorphicMapType_10546_7157_3178#PolymorphicMapType_10546| QPMask@1) o_4@@10 f_5@@6)))
 :qid |stdinbpl.771:29|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_10546_7157_3178#PolymorphicMapType_10546| QPMask@1) o_4@@10 f_5@@6))
))) (forall ((o_4@@11 T@Ref) (f_5@@7 T@Field_10585_29187) ) (!  (=> true (= (select (|PolymorphicMapType_10546_7157_29187#PolymorphicMapType_10546| QPMask@0) o_4@@11 f_5@@7) (select (|PolymorphicMapType_10546_7157_29187#PolymorphicMapType_10546| QPMask@1) o_4@@11 f_5@@7)))
 :qid |stdinbpl.771:29|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_10546_7157_29187#PolymorphicMapType_10546| QPMask@1) o_4@@11 f_5@@7))
))) (forall ((o_4@@12 T@Ref) (f_5@@8 T@Field_10585_29320) ) (!  (=> true (= (select (|PolymorphicMapType_10546_7157_33442#PolymorphicMapType_10546| QPMask@0) o_4@@12 f_5@@8) (select (|PolymorphicMapType_10546_7157_33442#PolymorphicMapType_10546| QPMask@1) o_4@@12 f_5@@8)))
 :qid |stdinbpl.771:29|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_10546_7157_33442#PolymorphicMapType_10546| QPMask@1) o_4@@12 f_5@@8))
))) (and (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@0 QPMask@1) (state ExhaleHeap@0 QPMask@1))) (and (and (=> (= (ControlFlow 0 35) 32) anon27_Else_correct) (=> (= (ControlFlow 0 35) 19) anon28_Then_correct)) (=> (= (ControlFlow 0 35) 22) anon28_Else_correct)))))))))))))
(let ((anon11_correct true))
(let ((anon26_Else_correct  (=> (and (not (and (<= k i_4) (< i_4 (|Seq#Length_7162| xs)))) (= (ControlFlow 0 17) 13)) anon11_correct)))
(let ((anon26_Then_correct  (=> (and (<= k i_4) (< i_4 (|Seq#Length_7162| xs))) (and (=> (= (ControlFlow 0 14) (- 0 16)) (>= i_4 0)) (=> (>= i_4 0) (and (=> (= (ControlFlow 0 14) (- 0 15)) (< i_4 (|Seq#Length_7162| xs))) (=> (< i_4 (|Seq#Length_7162| xs)) (=> (= (ControlFlow 0 14) 13) anon11_correct))))))))
(let ((anon23_Else_correct  (and (=> (= (ControlFlow 0 39) (- 0 41)) (forall ((i_3 Int) (i_3_1 Int) ) (!  (=> (and (and (and (and (not (= i_3 i_3_1)) (and (<= 0 i_3) (< i_3 (|Seq#Length_7162| xs)))) (and (<= 0 i_3_1) (< i_3_1 (|Seq#Length_7162| xs)))) (< NoPerm p_1)) (< NoPerm p_1)) (not (= (|Seq#Index_7162| xs i_3) (|Seq#Index_7162| xs i_3_1))))
 :qid |stdinbpl.664:15|
 :skolemid |59|
))) (=> (forall ((i_3@@0 Int) (i_3_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_3@@0 i_3_1@@0)) (and (<= 0 i_3@@0) (< i_3@@0 (|Seq#Length_7162| xs)))) (and (<= 0 i_3_1@@0) (< i_3_1@@0 (|Seq#Length_7162| xs)))) (< NoPerm p_1)) (< NoPerm p_1)) (not (= (|Seq#Index_7162| xs i_3@@0) (|Seq#Index_7162| xs i_3_1@@0))))
 :qid |stdinbpl.664:15|
 :skolemid |59|
)) (=> (and (forall ((i_3@@1 Int) ) (!  (=> (and (and (<= 0 i_3@@1) (< i_3@@1 (|Seq#Length_7162| xs))) (< NoPerm p_1)) (and (qpRange1 (|Seq#Index_7162| xs i_3@@1)) (= (invRecv1 (|Seq#Index_7162| xs i_3@@1)) i_3@@1)))
 :qid |stdinbpl.670:22|
 :skolemid |60|
 :pattern ( (|Seq#Index_7162| xs i_3@@1))
 :pattern ( (select (|PolymorphicMapType_10525_7157_3178#PolymorphicMapType_10525| Heap@@17) (|Seq#Index_7162| xs i_3@@1) f_7))
)) (forall ((o_4@@13 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv1 o_4@@13)) (< (invRecv1 o_4@@13) (|Seq#Length_7162| xs))) (< NoPerm p_1)) (qpRange1 o_4@@13)) (= (|Seq#Index_7162| xs (invRecv1 o_4@@13)) o_4@@13))
 :qid |stdinbpl.674:22|
 :skolemid |61|
 :pattern ( (invRecv1 o_4@@13))
))) (and (=> (= (ControlFlow 0 39) (- 0 40)) (forall ((i_3@@2 Int) ) (!  (=> (and (<= 0 i_3@@2) (< i_3@@2 (|Seq#Length_7162| xs))) (>= p_1 NoPerm))
 :qid |stdinbpl.680:15|
 :skolemid |62|
 :pattern ( (|Seq#Index_7162| xs i_3@@2))
 :pattern ( (select (|PolymorphicMapType_10525_7157_3178#PolymorphicMapType_10525| Heap@@17) (|Seq#Index_7162| xs i_3@@2) f_7))
))) (=> (forall ((i_3@@3 Int) ) (!  (=> (and (<= 0 i_3@@3) (< i_3@@3 (|Seq#Length_7162| xs))) (>= p_1 NoPerm))
 :qid |stdinbpl.680:15|
 :skolemid |62|
 :pattern ( (|Seq#Index_7162| xs i_3@@3))
 :pattern ( (select (|PolymorphicMapType_10525_7157_3178#PolymorphicMapType_10525| Heap@@17) (|Seq#Index_7162| xs i_3@@3) f_7))
)) (=> (and (forall ((i_3@@4 Int) ) (!  (=> (and (and (<= 0 i_3@@4) (< i_3@@4 (|Seq#Length_7162| xs))) (> p_1 NoPerm)) (not (= (|Seq#Index_7162| xs i_3@@4) null)))
 :qid |stdinbpl.686:22|
 :skolemid |63|
 :pattern ( (|Seq#Index_7162| xs i_3@@4))
 :pattern ( (select (|PolymorphicMapType_10525_7157_3178#PolymorphicMapType_10525| Heap@@17) (|Seq#Index_7162| xs i_3@@4) f_7))
)) (forall ((o_4@@14 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv1 o_4@@14)) (< (invRecv1 o_4@@14) (|Seq#Length_7162| xs))) (< NoPerm p_1)) (qpRange1 o_4@@14)) (and (=> (< NoPerm p_1) (= (|Seq#Index_7162| xs (invRecv1 o_4@@14)) o_4@@14)) (= (select (|PolymorphicMapType_10546_7157_3178#PolymorphicMapType_10546| QPMask@0) o_4@@14 f_7) (+ (select (|PolymorphicMapType_10546_7157_3178#PolymorphicMapType_10546| ZeroMask) o_4@@14 f_7) p_1)))) (=> (not (and (and (and (<= 0 (invRecv1 o_4@@14)) (< (invRecv1 o_4@@14) (|Seq#Length_7162| xs))) (< NoPerm p_1)) (qpRange1 o_4@@14))) (= (select (|PolymorphicMapType_10546_7157_3178#PolymorphicMapType_10546| QPMask@0) o_4@@14 f_7) (select (|PolymorphicMapType_10546_7157_3178#PolymorphicMapType_10546| ZeroMask) o_4@@14 f_7))))
 :qid |stdinbpl.692:22|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_10546_7157_3178#PolymorphicMapType_10546| QPMask@0) o_4@@14 f_7))
))) (=> (and (and (and (and (and (and (forall ((o_4@@15 T@Ref) (f_5@@9 T@Field_10585_53) ) (!  (=> true (= (select (|PolymorphicMapType_10546_7157_53#PolymorphicMapType_10546| ZeroMask) o_4@@15 f_5@@9) (select (|PolymorphicMapType_10546_7157_53#PolymorphicMapType_10546| QPMask@0) o_4@@15 f_5@@9)))
 :qid |stdinbpl.696:29|
 :skolemid |65|
 :pattern ( (select (|PolymorphicMapType_10546_7157_53#PolymorphicMapType_10546| ZeroMask) o_4@@15 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_10546_7157_53#PolymorphicMapType_10546| QPMask@0) o_4@@15 f_5@@9))
)) (forall ((o_4@@16 T@Ref) (f_5@@10 T@Field_10598_10599) ) (!  (=> true (= (select (|PolymorphicMapType_10546_7157_10599#PolymorphicMapType_10546| ZeroMask) o_4@@16 f_5@@10) (select (|PolymorphicMapType_10546_7157_10599#PolymorphicMapType_10546| QPMask@0) o_4@@16 f_5@@10)))
 :qid |stdinbpl.696:29|
 :skolemid |65|
 :pattern ( (select (|PolymorphicMapType_10546_7157_10599#PolymorphicMapType_10546| ZeroMask) o_4@@16 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_10546_7157_10599#PolymorphicMapType_10546| QPMask@0) o_4@@16 f_5@@10))
))) (forall ((o_4@@17 T@Ref) (f_5@@11 T@Field_16618_3178) ) (!  (=> (not (= f_5@@11 f_7)) (= (select (|PolymorphicMapType_10546_7157_3178#PolymorphicMapType_10546| ZeroMask) o_4@@17 f_5@@11) (select (|PolymorphicMapType_10546_7157_3178#PolymorphicMapType_10546| QPMask@0) o_4@@17 f_5@@11)))
 :qid |stdinbpl.696:29|
 :skolemid |65|
 :pattern ( (select (|PolymorphicMapType_10546_7157_3178#PolymorphicMapType_10546| ZeroMask) o_4@@17 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_10546_7157_3178#PolymorphicMapType_10546| QPMask@0) o_4@@17 f_5@@11))
))) (forall ((o_4@@18 T@Ref) (f_5@@12 T@Field_10585_29187) ) (!  (=> true (= (select (|PolymorphicMapType_10546_7157_29187#PolymorphicMapType_10546| ZeroMask) o_4@@18 f_5@@12) (select (|PolymorphicMapType_10546_7157_29187#PolymorphicMapType_10546| QPMask@0) o_4@@18 f_5@@12)))
 :qid |stdinbpl.696:29|
 :skolemid |65|
 :pattern ( (select (|PolymorphicMapType_10546_7157_29187#PolymorphicMapType_10546| ZeroMask) o_4@@18 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_10546_7157_29187#PolymorphicMapType_10546| QPMask@0) o_4@@18 f_5@@12))
))) (forall ((o_4@@19 T@Ref) (f_5@@13 T@Field_10585_29320) ) (!  (=> true (= (select (|PolymorphicMapType_10546_7157_33442#PolymorphicMapType_10546| ZeroMask) o_4@@19 f_5@@13) (select (|PolymorphicMapType_10546_7157_33442#PolymorphicMapType_10546| QPMask@0) o_4@@19 f_5@@13)))
 :qid |stdinbpl.696:29|
 :skolemid |65|
 :pattern ( (select (|PolymorphicMapType_10546_7157_33442#PolymorphicMapType_10546| ZeroMask) o_4@@19 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_10546_7157_33442#PolymorphicMapType_10546| QPMask@0) o_4@@19 f_5@@13))
))) (state Heap@@17 QPMask@0)) (and (and (and (state Heap@@17 QPMask@0) (state Heap@@17 QPMask@0)) (and (<= 0 k) (state Heap@@17 QPMask@0))) (and (and (state Heap@@17 QPMask@0) (< k (|Seq#Length_7162| xs))) (and (state Heap@@17 QPMask@0) (state Heap@@17 QPMask@0))))) (and (and (=> (= (ControlFlow 0 39) 35) anon25_Else_correct) (=> (= (ControlFlow 0 39) 14) anon26_Then_correct)) (=> (= (ControlFlow 0 39) 17) anon26_Else_correct)))))))))))
(let ((anon7_correct true))
(let ((anon24_Else_correct  (=> (and (not (and (<= 0 i_2) (< i_2 (|Seq#Length_7162| xs)))) (= (ControlFlow 0 12) 8)) anon7_correct)))
(let ((anon24_Then_correct  (=> (and (<= 0 i_2) (< i_2 (|Seq#Length_7162| xs))) (and (=> (= (ControlFlow 0 9) (- 0 11)) (>= i_2 0)) (=> (>= i_2 0) (and (=> (= (ControlFlow 0 9) (- 0 10)) (< i_2 (|Seq#Length_7162| xs))) (=> (< i_2 (|Seq#Length_7162| xs)) (=> (= (ControlFlow 0 9) 8) anon7_correct))))))))
(let ((anon21_Else_correct  (=> (forall ((i_1 Int) (j_1 Int) ) (!  (=> (and (>= i_1 0) (and (< i_1 (|Seq#Length_7162| xs)) (and (>= j_1 0) (and (< j_1 (|Seq#Length_7162| xs)) (not (= i_1 j_1)))))) (not (= (|Seq#Index_7162| xs i_1) (|Seq#Index_7162| xs j_1))))
 :qid |stdinbpl.641:20|
 :skolemid |58|
 :pattern ( (|Seq#Index_7162| xs i_1) (|Seq#Index_7162| xs j_1))
)) (=> (and (state Heap@@17 ZeroMask) (state Heap@@17 ZeroMask)) (and (and (=> (= (ControlFlow 0 42) 39) anon23_Else_correct) (=> (= (ControlFlow 0 42) 9) anon24_Then_correct)) (=> (= (ControlFlow 0 42) 12) anon24_Else_correct))))))
(let ((anon3_correct true))
(let ((anon22_Else_correct  (=> (and (not (and (>= i_14 0) (and (< i_14 (|Seq#Length_7162| xs)) (and (>= j_5 0) (and (< j_5 (|Seq#Length_7162| xs)) (not (= i_14 j_5))))))) (= (ControlFlow 0 7) 1)) anon3_correct)))
(let ((anon22_Then_correct  (=> (and (>= i_14 0) (and (< i_14 (|Seq#Length_7162| xs)) (and (>= j_5 0) (and (< j_5 (|Seq#Length_7162| xs)) (not (= i_14 j_5)))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= i_14 0)) (=> (>= i_14 0) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< i_14 (|Seq#Length_7162| xs))) (=> (< i_14 (|Seq#Length_7162| xs)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= j_5 0)) (=> (>= j_5 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< j_5 (|Seq#Length_7162| xs))) (=> (< j_5 (|Seq#Length_7162| xs)) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))))))))
(let ((anon0_correct  (=> (and (state Heap@@17 ZeroMask) AssumePermUpperBound) (=> (and (and (< NoPerm p_1) (< p_1 FullPerm)) (and (state Heap@@17 ZeroMask) (state Heap@@17 ZeroMask))) (and (and (=> (= (ControlFlow 0 43) 42) anon21_Else_correct) (=> (= (ControlFlow 0 43) 2) anon22_Then_correct)) (=> (= (ControlFlow 0 43) 7) anon22_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 44) 43) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid