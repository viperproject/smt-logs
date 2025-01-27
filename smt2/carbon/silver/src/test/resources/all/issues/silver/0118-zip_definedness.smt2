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
(declare-sort T@Field_6622_53 0)
(declare-sort T@Field_6635_6636 0)
(declare-sort T@Field_6622_16726 0)
(declare-sort T@Field_6622_16593 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_6583 0)) (((PolymorphicMapType_6583 (|PolymorphicMapType_6583_6622_53#PolymorphicMapType_6583| (Array T@Ref T@Field_6622_53 Real)) (|PolymorphicMapType_6583_6622_6636#PolymorphicMapType_6583| (Array T@Ref T@Field_6635_6636 Real)) (|PolymorphicMapType_6583_6622_16593#PolymorphicMapType_6583| (Array T@Ref T@Field_6622_16593 Real)) (|PolymorphicMapType_6583_6622_20287#PolymorphicMapType_6583| (Array T@Ref T@Field_6622_16726 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7111 0)) (((PolymorphicMapType_7111 (|PolymorphicMapType_7111_6622_53#PolymorphicMapType_7111| (Array T@Ref T@Field_6622_53 Bool)) (|PolymorphicMapType_7111_6622_6636#PolymorphicMapType_7111| (Array T@Ref T@Field_6635_6636 Bool)) (|PolymorphicMapType_7111_6622_16593#PolymorphicMapType_7111| (Array T@Ref T@Field_6622_16593 Bool)) (|PolymorphicMapType_7111_6622_17706#PolymorphicMapType_7111| (Array T@Ref T@Field_6622_16726 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6562 0)) (((PolymorphicMapType_6562 (|PolymorphicMapType_6562_3974_53#PolymorphicMapType_6562| (Array T@Ref T@Field_6622_53 Bool)) (|PolymorphicMapType_6562_3977_3978#PolymorphicMapType_6562| (Array T@Ref T@Field_6635_6636 T@Ref)) (|PolymorphicMapType_6562_6622_16770#PolymorphicMapType_6562| (Array T@Ref T@Field_6622_16726 T@PolymorphicMapType_7111)) (|PolymorphicMapType_6562_6622_16593#PolymorphicMapType_6562| (Array T@Ref T@Field_6622_16593 T@FrameType)) ) ) ))
(declare-sort T@Seq_12642 0)
(declare-fun |Seq#Length_4188| (T@Seq_12642) Int)
(declare-fun |Seq#Drop_4188| (T@Seq_12642 Int) T@Seq_12642)
(declare-sort T@Seq_2867 0)
(declare-fun |Seq#Length_2867| (T@Seq_2867) Int)
(declare-fun |Seq#Drop_2867| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun succHeap (T@PolymorphicMapType_6562 T@PolymorphicMapType_6562) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_6562 T@PolymorphicMapType_6562) Bool)
(declare-fun state (T@PolymorphicMapType_6562 T@PolymorphicMapType_6583) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_6583) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_7111)
(declare-fun |zip'| (T@PolymorphicMapType_6562 T@Seq_12642 T@Seq_12642) T@Seq_12642)
(declare-fun dummyFunction_12772 (T@Seq_12642) Bool)
(declare-fun |zip#triggerStateless| (T@Seq_12642 T@Seq_12642) T@Seq_12642)
(declare-fun |Seq#Index_4188| (T@Seq_12642 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_2867| (T@Seq_2867 Int) Int)
(declare-fun |zip#frame| (T@FrameType T@Seq_12642 T@Seq_12642) T@Seq_12642)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |Seq#Empty_4192| () T@Seq_12642)
(declare-fun |Seq#Empty_2867| () T@Seq_2867)
(declare-fun |Seq#Update_4188| (T@Seq_12642 Int T@Ref) T@Seq_12642)
(declare-fun |Seq#Update_2867| (T@Seq_2867 Int Int) T@Seq_2867)
(declare-fun |Seq#Take_4188| (T@Seq_12642 Int) T@Seq_12642)
(declare-fun |Seq#Take_2867| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun |Seq#Contains_2867| (T@Seq_2867 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2867)
(declare-fun |Seq#Contains_12642| (T@Seq_12642 T@Ref) Bool)
(declare-fun |Seq#Skolem_12642| (T@Seq_12642 T@Ref) Int)
(declare-fun |Seq#Skolem_2867| (T@Seq_2867 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_6562 T@PolymorphicMapType_6562 T@PolymorphicMapType_6583) Bool)
(declare-fun IsPredicateField_6622_16684 (T@Field_6622_16593) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_6622 (T@Field_6622_16593) T@Field_6622_16726)
(declare-fun HasDirectPerm_6622_16657 (T@PolymorphicMapType_6583 T@Ref T@Field_6622_16593) Bool)
(declare-fun IsWandField_6622_18233 (T@Field_6622_16593) Bool)
(declare-fun WandMaskField_6622 (T@Field_6622_16593) T@Field_6622_16726)
(declare-fun |Seq#Singleton_4188| (T@Ref) T@Seq_12642)
(declare-fun |Seq#Singleton_2867| (Int) T@Seq_2867)
(declare-fun |Seq#Append_4188| (T@Seq_12642 T@Seq_12642) T@Seq_12642)
(declare-fun |Seq#Append_2867| (T@Seq_2867 T@Seq_2867) T@Seq_2867)
(declare-fun zip (T@PolymorphicMapType_6562 T@Seq_12642 T@Seq_12642) T@Seq_12642)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |Seq#Equal_4190| (T@Seq_12642 T@Seq_12642) Bool)
(declare-fun dummyHeap () T@PolymorphicMapType_6562)
(declare-fun ZeroMask () T@PolymorphicMapType_6583)
(declare-fun $allocated () T@Field_6622_53)
(declare-fun InsidePredicate_6622_6622 (T@Field_6622_16593 T@FrameType T@Field_6622_16593 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6622_21196 (T@Field_6622_16726) Bool)
(declare-fun IsWandField_6622_21212 (T@Field_6622_16726) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_6622_6636 (T@Field_6635_6636) Bool)
(declare-fun IsWandField_6622_6636 (T@Field_6635_6636) Bool)
(declare-fun IsPredicateField_6622_53 (T@Field_6622_53) Bool)
(declare-fun IsWandField_6622_53 (T@Field_6622_53) Bool)
(declare-fun HasDirectPerm_6622_21567 (T@PolymorphicMapType_6583 T@Ref T@Field_6622_16726) Bool)
(declare-fun HasDirectPerm_6622_6636 (T@PolymorphicMapType_6583 T@Ref T@Field_6635_6636) Bool)
(declare-fun HasDirectPerm_6622_53 (T@PolymorphicMapType_6583 T@Ref T@Field_6622_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_6583 T@PolymorphicMapType_6583 T@PolymorphicMapType_6583) Bool)
(declare-fun |Seq#Equal_2867| (T@Seq_2867 T@Seq_2867) Bool)
(declare-fun |Seq#ContainsTrigger_4188| (T@Seq_12642 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_2867| (T@Seq_2867 Int) Bool)
(declare-fun |Seq#SkolemDiff_12642| (T@Seq_12642 T@Seq_12642) Int)
(declare-fun |Seq#SkolemDiff_2867| (T@Seq_2867 T@Seq_2867) Int)
(assert (forall ((s T@Seq_12642) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_4188| s)) (= (|Seq#Length_4188| (|Seq#Drop_4188| s n)) (- (|Seq#Length_4188| s) n))) (=> (< (|Seq#Length_4188| s) n) (= (|Seq#Length_4188| (|Seq#Drop_4188| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_4188| (|Seq#Drop_4188| s n)) (|Seq#Length_4188| s))))
 :qid |stdinbpl.276:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_4188| (|Seq#Drop_4188| s n)))
 :pattern ( (|Seq#Length_4188| s) (|Seq#Drop_4188| s n))
)))
(assert (forall ((s@@0 T@Seq_2867) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_2867| s@@0)) (= (|Seq#Length_2867| (|Seq#Drop_2867| s@@0 n@@0)) (- (|Seq#Length_2867| s@@0) n@@0))) (=> (< (|Seq#Length_2867| s@@0) n@@0) (= (|Seq#Length_2867| (|Seq#Drop_2867| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_2867| (|Seq#Drop_2867| s@@0 n@@0)) (|Seq#Length_2867| s@@0))))
 :qid |stdinbpl.276:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2867| (|Seq#Drop_2867| s@@0 n@@0)))
 :pattern ( (|Seq#Length_2867| s@@0) (|Seq#Drop_2867| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_6562) (Heap1 T@PolymorphicMapType_6562) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_6562) (Mask T@PolymorphicMapType_6583) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_6562) (Heap1@@0 T@PolymorphicMapType_6562) (Heap2 T@PolymorphicMapType_6562) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_6622_16726) ) (!  (not (select (|PolymorphicMapType_7111_6622_17706#PolymorphicMapType_7111| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7111_6622_17706#PolymorphicMapType_7111| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_6622_16593) ) (!  (not (select (|PolymorphicMapType_7111_6622_16593#PolymorphicMapType_7111| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7111_6622_16593#PolymorphicMapType_7111| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_6635_6636) ) (!  (not (select (|PolymorphicMapType_7111_6622_6636#PolymorphicMapType_7111| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7111_6622_6636#PolymorphicMapType_7111| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_6622_53) ) (!  (not (select (|PolymorphicMapType_7111_6622_53#PolymorphicMapType_7111| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7111_6622_53#PolymorphicMapType_7111| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_6562) (xs T@Seq_12642) (ys T@Seq_12642) ) (! (dummyFunction_12772 (|zip#triggerStateless| xs ys))
 :qid |stdinbpl.554:15|
 :skolemid |59|
 :pattern ( (|zip'| Heap@@0 xs ys))
)))
(assert (forall ((s@@1 T@Seq_12642) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_4188| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_4188| (|Seq#Drop_4188| s@@1 n@@1) j) (|Seq#Index_4188| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.297:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_4188| (|Seq#Drop_4188| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_2867) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_2867| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_2867| (|Seq#Drop_2867| s@@2 n@@2) j@@0) (|Seq#Index_2867| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.297:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2867| (|Seq#Drop_2867| s@@2 n@@2) j@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_6562) (Mask@@0 T@PolymorphicMapType_6583) (xs@@0 T@Seq_12642) (ys@@0 T@Seq_12642) ) (!  (=> (state Heap@@1 Mask@@0) (= (|zip'| Heap@@1 xs@@0 ys@@0) (|zip#frame| EmptyFrame xs@@0 ys@@0)))
 :qid |stdinbpl.567:15|
 :skolemid |61|
 :pattern ( (state Heap@@1 Mask@@0) (|zip'| Heap@@1 xs@@0 ys@@0))
)))
(assert (= (|Seq#Length_4188| |Seq#Empty_4192|) 0))
(assert (= (|Seq#Length_2867| |Seq#Empty_2867|) 0))
(assert (forall ((s@@3 T@Seq_12642) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_4188| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_4188| (|Seq#Update_4188| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_4188| (|Seq#Update_4188| s@@3 i v) n@@3) (|Seq#Index_4188| s@@3 n@@3)))))
 :qid |stdinbpl.252:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_4188| (|Seq#Update_4188| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_4188| s@@3 n@@3) (|Seq#Update_4188| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_2867) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_2867| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_2867| s@@4 n@@4)))))
 :qid |stdinbpl.252:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2867| (|Seq#Update_2867| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_2867| s@@4 n@@4) (|Seq#Update_2867| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_12642) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_4188| s@@5)) (= (|Seq#Length_4188| (|Seq#Take_4188| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_4188| s@@5) n@@5) (= (|Seq#Length_4188| (|Seq#Take_4188| s@@5 n@@5)) (|Seq#Length_4188| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_4188| (|Seq#Take_4188| s@@5 n@@5)) 0)))
 :qid |stdinbpl.263:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_4188| (|Seq#Take_4188| s@@5 n@@5)))
 :pattern ( (|Seq#Take_4188| s@@5 n@@5) (|Seq#Length_4188| s@@5))
)))
(assert (forall ((s@@6 T@Seq_2867) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_2867| s@@6)) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_2867| s@@6) n@@6) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@6 n@@6)) (|Seq#Length_2867| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@6 n@@6)) 0)))
 :qid |stdinbpl.263:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2867| (|Seq#Take_2867| s@@6 n@@6)))
 :pattern ( (|Seq#Take_2867| s@@6 n@@6) (|Seq#Length_2867| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_2867| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.537:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2867| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_12642) (x T@Ref) ) (!  (=> (|Seq#Contains_12642| s@@7 x) (and (and (<= 0 (|Seq#Skolem_12642| s@@7 x)) (< (|Seq#Skolem_12642| s@@7 x) (|Seq#Length_4188| s@@7))) (= (|Seq#Index_4188| s@@7 (|Seq#Skolem_12642| s@@7 x)) x)))
 :qid |stdinbpl.395:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_12642| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_2867) (x@@0 Int) ) (!  (=> (|Seq#Contains_2867| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_2867| s@@8 x@@0)) (< (|Seq#Skolem_2867| s@@8 x@@0) (|Seq#Length_2867| s@@8))) (= (|Seq#Index_2867| s@@8 (|Seq#Skolem_2867| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.395:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2867| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_2867) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_2867| s@@9 n@@7) s@@9))
 :qid |stdinbpl.379:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_2867| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_12642) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_4188| s@@10 n@@8) s@@10))
 :qid |stdinbpl.379:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_4188| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.232:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.230:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_6562) (ExhaleHeap T@PolymorphicMapType_6562) (Mask@@1 T@PolymorphicMapType_6583) (pm_f T@Field_6622_16593) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_6622_16657 Mask@@1 null pm_f) (IsPredicateField_6622_16684 pm_f)) (= (select (|PolymorphicMapType_6562_6622_16770#PolymorphicMapType_6562| Heap@@2) null (PredicateMaskField_6622 pm_f)) (select (|PolymorphicMapType_6562_6622_16770#PolymorphicMapType_6562| ExhaleHeap) null (PredicateMaskField_6622 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@1) (IsPredicateField_6622_16684 pm_f) (select (|PolymorphicMapType_6562_6622_16770#PolymorphicMapType_6562| ExhaleHeap) null (PredicateMaskField_6622 pm_f)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_6562) (ExhaleHeap@@0 T@PolymorphicMapType_6562) (Mask@@2 T@PolymorphicMapType_6583) (pm_f@@0 T@Field_6622_16593) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_6622_16657 Mask@@2 null pm_f@@0) (IsWandField_6622_18233 pm_f@@0)) (= (select (|PolymorphicMapType_6562_6622_16770#PolymorphicMapType_6562| Heap@@3) null (WandMaskField_6622 pm_f@@0)) (select (|PolymorphicMapType_6562_6622_16770#PolymorphicMapType_6562| ExhaleHeap@@0) null (WandMaskField_6622 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@2) (IsWandField_6622_18233 pm_f@@0) (select (|PolymorphicMapType_6562_6622_16770#PolymorphicMapType_6562| ExhaleHeap@@0) null (WandMaskField_6622 pm_f@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_12642| (|Seq#Singleton_4188| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.520:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_12642| (|Seq#Singleton_4188| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_2867| (|Seq#Singleton_2867| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.520:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2867| (|Seq#Singleton_2867| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_12642) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_4188| s@@11))) (= (|Seq#Index_4188| (|Seq#Take_4188| s@@11 n@@9) j@@3) (|Seq#Index_4188| s@@11 j@@3)))
 :qid |stdinbpl.271:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_4188| (|Seq#Take_4188| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_4188| s@@11 j@@3) (|Seq#Take_4188| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_2867) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_2867| s@@12))) (= (|Seq#Index_2867| (|Seq#Take_2867| s@@12 n@@10) j@@4) (|Seq#Index_2867| s@@12 j@@4)))
 :qid |stdinbpl.271:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2867| (|Seq#Take_2867| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_2867| s@@12 j@@4) (|Seq#Take_2867| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_12642) (t T@Seq_12642) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_4188| s@@13))) (< n@@11 (|Seq#Length_4188| (|Seq#Append_4188| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_4188| s@@13)) (|Seq#Length_4188| s@@13)) n@@11) (= (|Seq#Take_4188| (|Seq#Append_4188| s@@13 t) n@@11) (|Seq#Append_4188| s@@13 (|Seq#Take_4188| t (|Seq#Sub| n@@11 (|Seq#Length_4188| s@@13)))))))
 :qid |stdinbpl.356:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_4188| (|Seq#Append_4188| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_2867) (t@@0 T@Seq_2867) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_2867| s@@14))) (< n@@12 (|Seq#Length_2867| (|Seq#Append_2867| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_2867| s@@14)) (|Seq#Length_2867| s@@14)) n@@12) (= (|Seq#Take_2867| (|Seq#Append_2867| s@@14 t@@0) n@@12) (|Seq#Append_2867| s@@14 (|Seq#Take_2867| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_2867| s@@14)))))))
 :qid |stdinbpl.356:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2867| (|Seq#Append_2867| s@@14 t@@0) n@@12))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_6562) (ExhaleHeap@@1 T@PolymorphicMapType_6562) (Mask@@3 T@PolymorphicMapType_6583) (pm_f@@1 T@Field_6622_16593) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_6622_16657 Mask@@3 null pm_f@@1) (IsPredicateField_6622_16684 pm_f@@1)) (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_6622_53) ) (!  (=> (select (|PolymorphicMapType_7111_6622_53#PolymorphicMapType_7111| (select (|PolymorphicMapType_6562_6622_16770#PolymorphicMapType_6562| Heap@@4) null (PredicateMaskField_6622 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_6562_3974_53#PolymorphicMapType_6562| Heap@@4) o2 f_2) (select (|PolymorphicMapType_6562_3974_53#PolymorphicMapType_6562| ExhaleHeap@@1) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6562_3974_53#PolymorphicMapType_6562| ExhaleHeap@@1) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_6635_6636) ) (!  (=> (select (|PolymorphicMapType_7111_6622_6636#PolymorphicMapType_7111| (select (|PolymorphicMapType_6562_6622_16770#PolymorphicMapType_6562| Heap@@4) null (PredicateMaskField_6622 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_6562_3977_3978#PolymorphicMapType_6562| Heap@@4) o2@@0 f_2@@0) (select (|PolymorphicMapType_6562_3977_3978#PolymorphicMapType_6562| ExhaleHeap@@1) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6562_3977_3978#PolymorphicMapType_6562| ExhaleHeap@@1) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_6622_16593) ) (!  (=> (select (|PolymorphicMapType_7111_6622_16593#PolymorphicMapType_7111| (select (|PolymorphicMapType_6562_6622_16770#PolymorphicMapType_6562| Heap@@4) null (PredicateMaskField_6622 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_6562_6622_16593#PolymorphicMapType_6562| Heap@@4) o2@@1 f_2@@1) (select (|PolymorphicMapType_6562_6622_16593#PolymorphicMapType_6562| ExhaleHeap@@1) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6562_6622_16593#PolymorphicMapType_6562| ExhaleHeap@@1) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_6622_16726) ) (!  (=> (select (|PolymorphicMapType_7111_6622_17706#PolymorphicMapType_7111| (select (|PolymorphicMapType_6562_6622_16770#PolymorphicMapType_6562| Heap@@4) null (PredicateMaskField_6622 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_6562_6622_16770#PolymorphicMapType_6562| Heap@@4) o2@@2 f_2@@2) (select (|PolymorphicMapType_6562_6622_16770#PolymorphicMapType_6562| ExhaleHeap@@1) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6562_6622_16770#PolymorphicMapType_6562| ExhaleHeap@@1) o2@@2 f_2@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@3) (IsPredicateField_6622_16684 pm_f@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_6562) (ExhaleHeap@@2 T@PolymorphicMapType_6562) (Mask@@4 T@PolymorphicMapType_6583) (pm_f@@2 T@Field_6622_16593) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_6622_16657 Mask@@4 null pm_f@@2) (IsWandField_6622_18233 pm_f@@2)) (and (and (and (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_6622_53) ) (!  (=> (select (|PolymorphicMapType_7111_6622_53#PolymorphicMapType_7111| (select (|PolymorphicMapType_6562_6622_16770#PolymorphicMapType_6562| Heap@@5) null (WandMaskField_6622 pm_f@@2))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_6562_3974_53#PolymorphicMapType_6562| Heap@@5) o2@@3 f_2@@3) (select (|PolymorphicMapType_6562_3974_53#PolymorphicMapType_6562| ExhaleHeap@@2) o2@@3 f_2@@3)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6562_3974_53#PolymorphicMapType_6562| ExhaleHeap@@2) o2@@3 f_2@@3))
)) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_6635_6636) ) (!  (=> (select (|PolymorphicMapType_7111_6622_6636#PolymorphicMapType_7111| (select (|PolymorphicMapType_6562_6622_16770#PolymorphicMapType_6562| Heap@@5) null (WandMaskField_6622 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_6562_3977_3978#PolymorphicMapType_6562| Heap@@5) o2@@4 f_2@@4) (select (|PolymorphicMapType_6562_3977_3978#PolymorphicMapType_6562| ExhaleHeap@@2) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6562_3977_3978#PolymorphicMapType_6562| ExhaleHeap@@2) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_6622_16593) ) (!  (=> (select (|PolymorphicMapType_7111_6622_16593#PolymorphicMapType_7111| (select (|PolymorphicMapType_6562_6622_16770#PolymorphicMapType_6562| Heap@@5) null (WandMaskField_6622 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_6562_6622_16593#PolymorphicMapType_6562| Heap@@5) o2@@5 f_2@@5) (select (|PolymorphicMapType_6562_6622_16593#PolymorphicMapType_6562| ExhaleHeap@@2) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6562_6622_16593#PolymorphicMapType_6562| ExhaleHeap@@2) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_6622_16726) ) (!  (=> (select (|PolymorphicMapType_7111_6622_17706#PolymorphicMapType_7111| (select (|PolymorphicMapType_6562_6622_16770#PolymorphicMapType_6562| Heap@@5) null (WandMaskField_6622 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_6562_6622_16770#PolymorphicMapType_6562| Heap@@5) o2@@6 f_2@@6) (select (|PolymorphicMapType_6562_6622_16770#PolymorphicMapType_6562| ExhaleHeap@@2) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6562_6622_16770#PolymorphicMapType_6562| ExhaleHeap@@2) o2@@6 f_2@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@4) (IsWandField_6622_18233 pm_f@@2))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_6562) (Mask@@5 T@PolymorphicMapType_6583) (xs@@1 T@Seq_12642) (ys@@1 T@Seq_12642) ) (!  (=> (and (state Heap@@6 Mask@@5) (< AssumeFunctionsAbove 0)) (=> (or (= (|Seq#Length_4188| xs@@1) (|Seq#Length_4188| ys@@1)) (= (|Seq#Length_4188| xs@@1) (+ (|Seq#Length_4188| ys@@1) 1))) (= (zip Heap@@6 xs@@1 ys@@1) (ite (|Seq#Equal_4190| ys@@1 |Seq#Empty_4192|) xs@@1 (|Seq#Append_4188| (|Seq#Append_4188| (|Seq#Singleton_4188| (|Seq#Index_4188| xs@@1 0)) (|Seq#Singleton_4188| (|Seq#Index_4188| ys@@1 0))) (|zip'| Heap@@6 (|Seq#Drop_4188| xs@@1 1) (|Seq#Drop_4188| ys@@1 1)))))))
 :qid |stdinbpl.560:15|
 :skolemid |60|
 :pattern ( (state Heap@@6 Mask@@5) (zip Heap@@6 xs@@1 ys@@1))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@7 T@PolymorphicMapType_6562) (ExhaleHeap@@3 T@PolymorphicMapType_6562) (Mask@@6 T@PolymorphicMapType_6583) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@6) (=> (select (|PolymorphicMapType_6562_3974_53#PolymorphicMapType_6562| Heap@@7) o_1 $allocated) (select (|PolymorphicMapType_6562_3974_53#PolymorphicMapType_6562| ExhaleHeap@@3) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@6) (select (|PolymorphicMapType_6562_3974_53#PolymorphicMapType_6562| ExhaleHeap@@3) o_1 $allocated))
)))
(assert (forall ((p T@Field_6622_16593) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_6622_6622 p v_1 p w))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6622_6622 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_12642) (s1 T@Seq_12642) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_4192|)) (not (= s1 |Seq#Empty_4192|))) (<= (|Seq#Length_4188| s0) n@@13)) (< n@@13 (|Seq#Length_4188| (|Seq#Append_4188| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_4188| s0)) (|Seq#Length_4188| s0)) n@@13) (= (|Seq#Index_4188| (|Seq#Append_4188| s0 s1) n@@13) (|Seq#Index_4188| s1 (|Seq#Sub| n@@13 (|Seq#Length_4188| s0))))))
 :qid |stdinbpl.243:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_4188| (|Seq#Append_4188| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_2867) (s1@@0 T@Seq_2867) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_2867|)) (not (= s1@@0 |Seq#Empty_2867|))) (<= (|Seq#Length_2867| s0@@0) n@@14)) (< n@@14 (|Seq#Length_2867| (|Seq#Append_2867| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_2867| s0@@0)) (|Seq#Length_2867| s0@@0)) n@@14) (= (|Seq#Index_2867| (|Seq#Append_2867| s0@@0 s1@@0) n@@14) (|Seq#Index_2867| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_2867| s0@@0))))))
 :qid |stdinbpl.243:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_2867| s0@@0 s1@@0) n@@14))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_6562) (ExhaleHeap@@4 T@PolymorphicMapType_6562) (Mask@@7 T@PolymorphicMapType_6583) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@7) (succHeap Heap@@8 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_6583) (o_2@@3 T@Ref) (f_4@@3 T@Field_6622_16726) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_6583_6622_20287#PolymorphicMapType_6583| Mask@@8) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_6622_21196 f_4@@3))) (not (IsWandField_6622_21212 f_4@@3))) (<= (select (|PolymorphicMapType_6583_6622_20287#PolymorphicMapType_6583| Mask@@8) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_6583_6622_20287#PolymorphicMapType_6583| Mask@@8) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_6583) (o_2@@4 T@Ref) (f_4@@4 T@Field_6622_16593) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_6583_6622_16593#PolymorphicMapType_6583| Mask@@9) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_6622_16684 f_4@@4))) (not (IsWandField_6622_18233 f_4@@4))) (<= (select (|PolymorphicMapType_6583_6622_16593#PolymorphicMapType_6583| Mask@@9) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_6583_6622_16593#PolymorphicMapType_6583| Mask@@9) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_6583) (o_2@@5 T@Ref) (f_4@@5 T@Field_6635_6636) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_6583_6622_6636#PolymorphicMapType_6583| Mask@@10) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_6622_6636 f_4@@5))) (not (IsWandField_6622_6636 f_4@@5))) (<= (select (|PolymorphicMapType_6583_6622_6636#PolymorphicMapType_6583| Mask@@10) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_6583_6622_6636#PolymorphicMapType_6583| Mask@@10) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_6583) (o_2@@6 T@Ref) (f_4@@6 T@Field_6622_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_6583_6622_53#PolymorphicMapType_6583| Mask@@11) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_6622_53 f_4@@6))) (not (IsWandField_6622_53 f_4@@6))) (<= (select (|PolymorphicMapType_6583_6622_53#PolymorphicMapType_6583| Mask@@11) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_6583_6622_53#PolymorphicMapType_6583| Mask@@11) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_6583) (o_2@@7 T@Ref) (f_4@@7 T@Field_6622_16726) ) (! (= (HasDirectPerm_6622_21567 Mask@@12 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_6583_6622_20287#PolymorphicMapType_6583| Mask@@12) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6622_21567 Mask@@12 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_6583) (o_2@@8 T@Ref) (f_4@@8 T@Field_6622_16593) ) (! (= (HasDirectPerm_6622_16657 Mask@@13 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_6583_6622_16593#PolymorphicMapType_6583| Mask@@13) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6622_16657 Mask@@13 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_6583) (o_2@@9 T@Ref) (f_4@@9 T@Field_6635_6636) ) (! (= (HasDirectPerm_6622_6636 Mask@@14 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_6583_6622_6636#PolymorphicMapType_6583| Mask@@14) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6622_6636 Mask@@14 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_6583) (o_2@@10 T@Ref) (f_4@@10 T@Field_6622_53) ) (! (= (HasDirectPerm_6622_53 Mask@@15 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_6583_6622_53#PolymorphicMapType_6583| Mask@@15) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6622_53 Mask@@15 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.162:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2867| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.535:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2867| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_6562) (ExhaleHeap@@5 T@PolymorphicMapType_6562) (Mask@@16 T@PolymorphicMapType_6583) (o_1@@0 T@Ref) (f_2@@7 T@Field_6622_16726) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_6622_21567 Mask@@16 o_1@@0 f_2@@7) (= (select (|PolymorphicMapType_6562_6622_16770#PolymorphicMapType_6562| Heap@@9) o_1@@0 f_2@@7) (select (|PolymorphicMapType_6562_6622_16770#PolymorphicMapType_6562| ExhaleHeap@@5) o_1@@0 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_6562_6622_16770#PolymorphicMapType_6562| ExhaleHeap@@5) o_1@@0 f_2@@7))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_6562) (ExhaleHeap@@6 T@PolymorphicMapType_6562) (Mask@@17 T@PolymorphicMapType_6583) (o_1@@1 T@Ref) (f_2@@8 T@Field_6622_16593) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_6622_16657 Mask@@17 o_1@@1 f_2@@8) (= (select (|PolymorphicMapType_6562_6622_16593#PolymorphicMapType_6562| Heap@@10) o_1@@1 f_2@@8) (select (|PolymorphicMapType_6562_6622_16593#PolymorphicMapType_6562| ExhaleHeap@@6) o_1@@1 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_6562_6622_16593#PolymorphicMapType_6562| ExhaleHeap@@6) o_1@@1 f_2@@8))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_6562) (ExhaleHeap@@7 T@PolymorphicMapType_6562) (Mask@@18 T@PolymorphicMapType_6583) (o_1@@2 T@Ref) (f_2@@9 T@Field_6635_6636) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_6622_6636 Mask@@18 o_1@@2 f_2@@9) (= (select (|PolymorphicMapType_6562_3977_3978#PolymorphicMapType_6562| Heap@@11) o_1@@2 f_2@@9) (select (|PolymorphicMapType_6562_3977_3978#PolymorphicMapType_6562| ExhaleHeap@@7) o_1@@2 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_6562_3977_3978#PolymorphicMapType_6562| ExhaleHeap@@7) o_1@@2 f_2@@9))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_6562) (ExhaleHeap@@8 T@PolymorphicMapType_6562) (Mask@@19 T@PolymorphicMapType_6583) (o_1@@3 T@Ref) (f_2@@10 T@Field_6622_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_6622_53 Mask@@19 o_1@@3 f_2@@10) (= (select (|PolymorphicMapType_6562_3974_53#PolymorphicMapType_6562| Heap@@12) o_1@@3 f_2@@10) (select (|PolymorphicMapType_6562_3974_53#PolymorphicMapType_6562| ExhaleHeap@@8) o_1@@3 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_6562_3974_53#PolymorphicMapType_6562| ExhaleHeap@@8) o_1@@3 f_2@@10))
)))
(assert (forall ((s0@@1 T@Seq_12642) (s1@@1 T@Seq_12642) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_4192|)) (not (= s1@@1 |Seq#Empty_4192|))) (= (|Seq#Length_4188| (|Seq#Append_4188| s0@@1 s1@@1)) (+ (|Seq#Length_4188| s0@@1) (|Seq#Length_4188| s1@@1))))
 :qid |stdinbpl.212:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_4188| (|Seq#Append_4188| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_2867) (s1@@2 T@Seq_2867) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_2867|)) (not (= s1@@2 |Seq#Empty_2867|))) (= (|Seq#Length_2867| (|Seq#Append_2867| s0@@2 s1@@2)) (+ (|Seq#Length_2867| s0@@2) (|Seq#Length_2867| s1@@2))))
 :qid |stdinbpl.212:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2867| (|Seq#Append_2867| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_6622_16726) ) (! (= (select (|PolymorphicMapType_6583_6622_20287#PolymorphicMapType_6583| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6583_6622_20287#PolymorphicMapType_6583| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_6622_16593) ) (! (= (select (|PolymorphicMapType_6583_6622_16593#PolymorphicMapType_6583| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6583_6622_16593#PolymorphicMapType_6583| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_6635_6636) ) (! (= (select (|PolymorphicMapType_6583_6622_6636#PolymorphicMapType_6583| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6583_6622_6636#PolymorphicMapType_6583| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_6622_53) ) (! (= (select (|PolymorphicMapType_6583_6622_53#PolymorphicMapType_6583| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6583_6622_53#PolymorphicMapType_6583| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((s@@15 T@Seq_12642) (t@@1 T@Seq_12642) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_4188| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_4188| s@@15)) (|Seq#Length_4188| s@@15)) n@@15) (= (|Seq#Drop_4188| (|Seq#Append_4188| s@@15 t@@1) n@@15) (|Seq#Drop_4188| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_4188| s@@15))))))
 :qid |stdinbpl.369:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_4188| (|Seq#Append_4188| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_2867) (t@@2 T@Seq_2867) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_2867| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_2867| s@@16)) (|Seq#Length_2867| s@@16)) n@@16) (= (|Seq#Drop_2867| (|Seq#Append_2867| s@@16 t@@2) n@@16) (|Seq#Drop_2867| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_2867| s@@16))))))
 :qid |stdinbpl.369:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_2867| (|Seq#Append_2867| s@@16 t@@2) n@@16))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_6562) (xs@@2 T@Seq_12642) (ys@@2 T@Seq_12642) ) (!  (and (= (zip Heap@@13 xs@@2 ys@@2) (|zip'| Heap@@13 xs@@2 ys@@2)) (dummyFunction_12772 (|zip#triggerStateless| xs@@2 ys@@2)))
 :qid |stdinbpl.550:15|
 :skolemid |58|
 :pattern ( (zip Heap@@13 xs@@2 ys@@2))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_6583) (SummandMask1 T@PolymorphicMapType_6583) (SummandMask2 T@PolymorphicMapType_6583) (o_2@@15 T@Ref) (f_4@@15 T@Field_6622_16726) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_6583_6622_20287#PolymorphicMapType_6583| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_6583_6622_20287#PolymorphicMapType_6583| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_6583_6622_20287#PolymorphicMapType_6583| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6583_6622_20287#PolymorphicMapType_6583| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6583_6622_20287#PolymorphicMapType_6583| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6583_6622_20287#PolymorphicMapType_6583| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_6583) (SummandMask1@@0 T@PolymorphicMapType_6583) (SummandMask2@@0 T@PolymorphicMapType_6583) (o_2@@16 T@Ref) (f_4@@16 T@Field_6622_16593) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_6583_6622_16593#PolymorphicMapType_6583| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_6583_6622_16593#PolymorphicMapType_6583| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_6583_6622_16593#PolymorphicMapType_6583| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6583_6622_16593#PolymorphicMapType_6583| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6583_6622_16593#PolymorphicMapType_6583| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6583_6622_16593#PolymorphicMapType_6583| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_6583) (SummandMask1@@1 T@PolymorphicMapType_6583) (SummandMask2@@1 T@PolymorphicMapType_6583) (o_2@@17 T@Ref) (f_4@@17 T@Field_6635_6636) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_6583_6622_6636#PolymorphicMapType_6583| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_6583_6622_6636#PolymorphicMapType_6583| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_6583_6622_6636#PolymorphicMapType_6583| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6583_6622_6636#PolymorphicMapType_6583| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6583_6622_6636#PolymorphicMapType_6583| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6583_6622_6636#PolymorphicMapType_6583| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_6583) (SummandMask1@@2 T@PolymorphicMapType_6583) (SummandMask2@@2 T@PolymorphicMapType_6583) (o_2@@18 T@Ref) (f_4@@18 T@Field_6622_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_6583_6622_53#PolymorphicMapType_6583| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_6583_6622_53#PolymorphicMapType_6583| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_6583_6622_53#PolymorphicMapType_6583| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6583_6622_53#PolymorphicMapType_6583| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6583_6622_53#PolymorphicMapType_6583| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6583_6622_53#PolymorphicMapType_6583| SummandMask2@@2) o_2@@18 f_4@@18))
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
(assert (forall ((a@@0 T@Seq_12642) (b@@0 T@Seq_12642) ) (!  (=> (|Seq#Equal_4190| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.507:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_4190| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_12642) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_4188| s@@17))) (|Seq#ContainsTrigger_4188| s@@17 (|Seq#Index_4188| s@@17 i@@3)))
 :qid |stdinbpl.400:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_4188| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_2867) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_2867| s@@18))) (|Seq#ContainsTrigger_2867| s@@18 (|Seq#Index_2867| s@@18 i@@4)))
 :qid |stdinbpl.400:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2867| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_12642) (s1@@3 T@Seq_12642) ) (!  (and (=> (= s0@@3 |Seq#Empty_4192|) (= (|Seq#Append_4188| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_4192|) (= (|Seq#Append_4188| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.218:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_4188| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2867) (s1@@4 T@Seq_2867) ) (!  (and (=> (= s0@@4 |Seq#Empty_2867|) (= (|Seq#Append_2867| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_2867|) (= (|Seq#Append_2867| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.218:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_2867| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_4188| (|Seq#Singleton_4188| t@@3) 0) t@@3)
 :qid |stdinbpl.222:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_4188| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_2867| (|Seq#Singleton_2867| t@@4) 0) t@@4)
 :qid |stdinbpl.222:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_2867| t@@4))
)))
(assert (forall ((s@@19 T@Seq_12642) ) (! (<= 0 (|Seq#Length_4188| s@@19))
 :qid |stdinbpl.201:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_4188| s@@19))
)))
(assert (forall ((s@@20 T@Seq_2867) ) (! (<= 0 (|Seq#Length_2867| s@@20))
 :qid |stdinbpl.201:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2867| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_2867) (s1@@5 T@Seq_2867) ) (!  (=> (|Seq#Equal_2867| s0@@5 s1@@5) (and (= (|Seq#Length_2867| s0@@5) (|Seq#Length_2867| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_2867| s0@@5))) (= (|Seq#Index_2867| s0@@5 j@@6) (|Seq#Index_2867| s1@@5 j@@6)))
 :qid |stdinbpl.497:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2867| s0@@5 j@@6))
 :pattern ( (|Seq#Index_2867| s1@@5 j@@6))
))))
 :qid |stdinbpl.494:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_2867| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_12642) (s1@@6 T@Seq_12642) ) (!  (=> (|Seq#Equal_4190| s0@@6 s1@@6) (and (= (|Seq#Length_4188| s0@@6) (|Seq#Length_4188| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_4188| s0@@6))) (= (|Seq#Index_4188| s0@@6 j@@7) (|Seq#Index_4188| s1@@6 j@@7)))
 :qid |stdinbpl.497:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_4188| s0@@6 j@@7))
 :pattern ( (|Seq#Index_4188| s1@@6 j@@7))
))))
 :qid |stdinbpl.494:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_4190| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_4188| (|Seq#Singleton_4188| t@@5)) 1)
 :qid |stdinbpl.209:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_4188| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_2867| (|Seq#Singleton_2867| t@@6)) 1)
 :qid |stdinbpl.209:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_2867| t@@6))
)))
(assert (forall ((s@@21 T@Seq_12642) (t@@7 T@Seq_12642) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_4188| s@@21))) (= (|Seq#Take_4188| (|Seq#Append_4188| s@@21 t@@7) n@@17) (|Seq#Take_4188| s@@21 n@@17)))
 :qid |stdinbpl.351:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_4188| (|Seq#Append_4188| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_2867) (t@@8 T@Seq_2867) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_2867| s@@22))) (= (|Seq#Take_2867| (|Seq#Append_2867| s@@22 t@@8) n@@18) (|Seq#Take_2867| s@@22 n@@18)))
 :qid |stdinbpl.351:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2867| (|Seq#Append_2867| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_12642) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_4188| s@@23))) (= (|Seq#Length_4188| (|Seq#Update_4188| s@@23 i@@5 v@@2)) (|Seq#Length_4188| s@@23)))
 :qid |stdinbpl.250:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_4188| (|Seq#Update_4188| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_4188| s@@23) (|Seq#Update_4188| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_2867) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_2867| s@@24))) (= (|Seq#Length_2867| (|Seq#Update_2867| s@@24 i@@6 v@@3)) (|Seq#Length_2867| s@@24)))
 :qid |stdinbpl.250:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2867| (|Seq#Update_2867| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_2867| s@@24) (|Seq#Update_2867| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_6562) (o T@Ref) (f_3 T@Field_6622_16593) (v@@4 T@FrameType) ) (! (succHeap Heap@@14 (PolymorphicMapType_6562 (|PolymorphicMapType_6562_3974_53#PolymorphicMapType_6562| Heap@@14) (|PolymorphicMapType_6562_3977_3978#PolymorphicMapType_6562| Heap@@14) (|PolymorphicMapType_6562_6622_16770#PolymorphicMapType_6562| Heap@@14) (store (|PolymorphicMapType_6562_6622_16593#PolymorphicMapType_6562| Heap@@14) o f_3 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6562 (|PolymorphicMapType_6562_3974_53#PolymorphicMapType_6562| Heap@@14) (|PolymorphicMapType_6562_3977_3978#PolymorphicMapType_6562| Heap@@14) (|PolymorphicMapType_6562_6622_16770#PolymorphicMapType_6562| Heap@@14) (store (|PolymorphicMapType_6562_6622_16593#PolymorphicMapType_6562| Heap@@14) o f_3 v@@4)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_6562) (o@@0 T@Ref) (f_3@@0 T@Field_6622_16726) (v@@5 T@PolymorphicMapType_7111) ) (! (succHeap Heap@@15 (PolymorphicMapType_6562 (|PolymorphicMapType_6562_3974_53#PolymorphicMapType_6562| Heap@@15) (|PolymorphicMapType_6562_3977_3978#PolymorphicMapType_6562| Heap@@15) (store (|PolymorphicMapType_6562_6622_16770#PolymorphicMapType_6562| Heap@@15) o@@0 f_3@@0 v@@5) (|PolymorphicMapType_6562_6622_16593#PolymorphicMapType_6562| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6562 (|PolymorphicMapType_6562_3974_53#PolymorphicMapType_6562| Heap@@15) (|PolymorphicMapType_6562_3977_3978#PolymorphicMapType_6562| Heap@@15) (store (|PolymorphicMapType_6562_6622_16770#PolymorphicMapType_6562| Heap@@15) o@@0 f_3@@0 v@@5) (|PolymorphicMapType_6562_6622_16593#PolymorphicMapType_6562| Heap@@15)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_6562) (o@@1 T@Ref) (f_3@@1 T@Field_6635_6636) (v@@6 T@Ref) ) (! (succHeap Heap@@16 (PolymorphicMapType_6562 (|PolymorphicMapType_6562_3974_53#PolymorphicMapType_6562| Heap@@16) (store (|PolymorphicMapType_6562_3977_3978#PolymorphicMapType_6562| Heap@@16) o@@1 f_3@@1 v@@6) (|PolymorphicMapType_6562_6622_16770#PolymorphicMapType_6562| Heap@@16) (|PolymorphicMapType_6562_6622_16593#PolymorphicMapType_6562| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6562 (|PolymorphicMapType_6562_3974_53#PolymorphicMapType_6562| Heap@@16) (store (|PolymorphicMapType_6562_3977_3978#PolymorphicMapType_6562| Heap@@16) o@@1 f_3@@1 v@@6) (|PolymorphicMapType_6562_6622_16770#PolymorphicMapType_6562| Heap@@16) (|PolymorphicMapType_6562_6622_16593#PolymorphicMapType_6562| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_6562) (o@@2 T@Ref) (f_3@@2 T@Field_6622_53) (v@@7 Bool) ) (! (succHeap Heap@@17 (PolymorphicMapType_6562 (store (|PolymorphicMapType_6562_3974_53#PolymorphicMapType_6562| Heap@@17) o@@2 f_3@@2 v@@7) (|PolymorphicMapType_6562_3977_3978#PolymorphicMapType_6562| Heap@@17) (|PolymorphicMapType_6562_6622_16770#PolymorphicMapType_6562| Heap@@17) (|PolymorphicMapType_6562_6622_16593#PolymorphicMapType_6562| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6562 (store (|PolymorphicMapType_6562_3974_53#PolymorphicMapType_6562| Heap@@17) o@@2 f_3@@2 v@@7) (|PolymorphicMapType_6562_3977_3978#PolymorphicMapType_6562| Heap@@17) (|PolymorphicMapType_6562_6622_16770#PolymorphicMapType_6562| Heap@@17) (|PolymorphicMapType_6562_6622_16593#PolymorphicMapType_6562| Heap@@17)))
)))
(assert (forall ((s@@25 T@Seq_12642) (t@@9 T@Seq_12642) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_4188| s@@25))) (= (|Seq#Drop_4188| (|Seq#Append_4188| s@@25 t@@9) n@@19) (|Seq#Append_4188| (|Seq#Drop_4188| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.365:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_4188| (|Seq#Append_4188| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_2867) (t@@10 T@Seq_2867) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_2867| s@@26))) (= (|Seq#Drop_2867| (|Seq#Append_2867| s@@26 t@@10) n@@20) (|Seq#Append_2867| (|Seq#Drop_2867| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.365:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_2867| (|Seq#Append_2867| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_12642) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_4188| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_4188| (|Seq#Drop_4188| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_4188| s@@27 i@@7))))
 :qid |stdinbpl.301:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_4188| s@@27 n@@21) (|Seq#Index_4188| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_2867) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_2867| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_2867| (|Seq#Drop_2867| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_2867| s@@28 i@@8))))
 :qid |stdinbpl.301:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_2867| s@@28 n@@22) (|Seq#Index_2867| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_12642) (s1@@7 T@Seq_12642) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_4192|)) (not (= s1@@7 |Seq#Empty_4192|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_4188| s0@@7))) (= (|Seq#Index_4188| (|Seq#Append_4188| s0@@7 s1@@7) n@@23) (|Seq#Index_4188| s0@@7 n@@23)))
 :qid |stdinbpl.241:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_4188| (|Seq#Append_4188| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_4188| s0@@7 n@@23) (|Seq#Append_4188| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_2867) (s1@@8 T@Seq_2867) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_2867|)) (not (= s1@@8 |Seq#Empty_2867|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_2867| s0@@8))) (= (|Seq#Index_2867| (|Seq#Append_2867| s0@@8 s1@@8) n@@24) (|Seq#Index_2867| s0@@8 n@@24)))
 :qid |stdinbpl.241:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_2867| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_2867| s0@@8 n@@24) (|Seq#Append_2867| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_12642) (s1@@9 T@Seq_12642) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_4192|)) (not (= s1@@9 |Seq#Empty_4192|))) (<= 0 m)) (< m (|Seq#Length_4188| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_4188| s0@@9)) (|Seq#Length_4188| s0@@9)) m) (= (|Seq#Index_4188| (|Seq#Append_4188| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_4188| s0@@9))) (|Seq#Index_4188| s1@@9 m))))
 :qid |stdinbpl.246:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_4188| s1@@9 m) (|Seq#Append_4188| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_2867) (s1@@10 T@Seq_2867) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_2867|)) (not (= s1@@10 |Seq#Empty_2867|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_2867| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_2867| s0@@10)) (|Seq#Length_2867| s0@@10)) m@@0) (= (|Seq#Index_2867| (|Seq#Append_2867| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_2867| s0@@10))) (|Seq#Index_2867| s1@@10 m@@0))))
 :qid |stdinbpl.246:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2867| s1@@10 m@@0) (|Seq#Append_2867| s0@@10 s1@@10))
)))
(assert (forall ((o@@3 T@Ref) (f T@Field_6635_6636) (Heap@@18 T@PolymorphicMapType_6562) ) (!  (=> (select (|PolymorphicMapType_6562_3974_53#PolymorphicMapType_6562| Heap@@18) o@@3 $allocated) (select (|PolymorphicMapType_6562_3974_53#PolymorphicMapType_6562| Heap@@18) (select (|PolymorphicMapType_6562_3977_3978#PolymorphicMapType_6562| Heap@@18) o@@3 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_6562_3977_3978#PolymorphicMapType_6562| Heap@@18) o@@3 f))
)))
(assert (forall ((s@@29 T@Seq_12642) (x@@3 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_4188| s@@29))) (= (|Seq#Index_4188| s@@29 i@@9) x@@3)) (|Seq#Contains_12642| s@@29 x@@3))
 :qid |stdinbpl.398:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_12642| s@@29 x@@3) (|Seq#Index_4188| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_2867) (x@@4 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_2867| s@@30))) (= (|Seq#Index_2867| s@@30 i@@10) x@@4)) (|Seq#Contains_2867| s@@30 x@@4))
 :qid |stdinbpl.398:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2867| s@@30 x@@4) (|Seq#Index_2867| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_12642) (s1@@11 T@Seq_12642) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_4190| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_4190| s0@@11 s1@@11))) (not (= (|Seq#Length_4188| s0@@11) (|Seq#Length_4188| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_4190| s0@@11 s1@@11))) (= (|Seq#Length_4188| s0@@11) (|Seq#Length_4188| s1@@11))) (= (|Seq#SkolemDiff_12642| s0@@11 s1@@11) (|Seq#SkolemDiff_12642| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_12642| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_12642| s0@@11 s1@@11) (|Seq#Length_4188| s0@@11))) (not (= (|Seq#Index_4188| s0@@11 (|Seq#SkolemDiff_12642| s0@@11 s1@@11)) (|Seq#Index_4188| s1@@11 (|Seq#SkolemDiff_12642| s0@@11 s1@@11))))))
 :qid |stdinbpl.502:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_4190| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_2867) (s1@@12 T@Seq_2867) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_2867| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2867| s0@@12 s1@@12))) (not (= (|Seq#Length_2867| s0@@12) (|Seq#Length_2867| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2867| s0@@12 s1@@12))) (= (|Seq#Length_2867| s0@@12) (|Seq#Length_2867| s1@@12))) (= (|Seq#SkolemDiff_2867| s0@@12 s1@@12) (|Seq#SkolemDiff_2867| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_2867| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_2867| s0@@12 s1@@12) (|Seq#Length_2867| s0@@12))) (not (= (|Seq#Index_2867| s0@@12 (|Seq#SkolemDiff_2867| s0@@12 s1@@12)) (|Seq#Index_2867| s1@@12 (|Seq#SkolemDiff_2867| s0@@12 s1@@12))))))
 :qid |stdinbpl.502:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_2867| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_6622_16593) (v_1@@0 T@FrameType) (q T@Field_6622_16593) (w@@0 T@FrameType) (r T@Field_6622_16593) (u T@FrameType) ) (!  (=> (and (InsidePredicate_6622_6622 p@@1 v_1@@0 q w@@0) (InsidePredicate_6622_6622 q w@@0 r u)) (InsidePredicate_6622_6622 p@@1 v_1@@0 r u))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6622_6622 p@@1 v_1@@0 q w@@0) (InsidePredicate_6622_6622 q w@@0 r u))
)))
(assert (forall ((s@@31 T@Seq_12642) ) (!  (=> (= (|Seq#Length_4188| s@@31) 0) (= s@@31 |Seq#Empty_4192|))
 :qid |stdinbpl.205:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_4188| s@@31))
)))
(assert (forall ((s@@32 T@Seq_2867) ) (!  (=> (= (|Seq#Length_2867| s@@32) 0) (= s@@32 |Seq#Empty_2867|))
 :qid |stdinbpl.205:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2867| s@@32))
)))
(assert (forall ((s@@33 T@Seq_12642) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_4188| s@@33 n@@25) |Seq#Empty_4192|))
 :qid |stdinbpl.381:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_4188| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_2867) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_2867| s@@34 n@@26) |Seq#Empty_2867|))
 :qid |stdinbpl.381:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_2867| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |zip#trigger| (T@FrameType T@Seq_12642 T@Seq_12642) Bool)
(declare-fun xs@@3 () T@Seq_12642)
(declare-fun ys@@3 () T@Seq_12642)
(declare-fun Heap@@19 () T@PolymorphicMapType_6562)
(set-info :boogie-vc-id |zip#definedness|)
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
 (=> (= (ControlFlow 0 0) 10) (let ((anon5_correct true))
(let ((anon7_Else_correct  (=> (and (|zip#trigger| EmptyFrame (|Seq#Drop_4188| xs@@3 1) (|Seq#Drop_4188| ys@@3 1)) (= (ControlFlow 0 5) 3)) anon5_correct)))
(let ((anon6_Then_correct  (=> (and (|Seq#Equal_4190| ys@@3 |Seq#Empty_4192|) (= (ControlFlow 0 4) 3)) anon5_correct)))
(let ((anon7_Then_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (or (= (|Seq#Length_4188| (|Seq#Drop_4188| xs@@3 1)) (|Seq#Length_4188| (|Seq#Drop_4188| ys@@3 1))) (= (|Seq#Length_4188| (|Seq#Drop_4188| xs@@3 1)) (+ (|Seq#Length_4188| (|Seq#Drop_4188| ys@@3 1)) 1))))))
(let ((anon6_Else_correct  (=> (not (|Seq#Equal_4190| ys@@3 |Seq#Empty_4192|)) (and (=> (= (ControlFlow 0 6) (- 0 8)) (< 0 (|Seq#Length_4188| xs@@3))) (=> (< 0 (|Seq#Length_4188| xs@@3)) (and (=> (= (ControlFlow 0 6) (- 0 7)) (< 0 (|Seq#Length_4188| ys@@3))) (=> (< 0 (|Seq#Length_4188| ys@@3)) (and (=> (= (ControlFlow 0 6) 2) anon7_Then_correct) (=> (= (ControlFlow 0 6) 5) anon7_Else_correct)))))))))
(let ((anon0_correct  (=> (state Heap@@19 ZeroMask) (=> (and (and (not AssumePermUpperBound) (= AssumeFunctionsAbove 0)) (and (or (= (|Seq#Length_4188| xs@@3) (|Seq#Length_4188| ys@@3)) (= (|Seq#Length_4188| xs@@3) (+ (|Seq#Length_4188| ys@@3) 1))) (state Heap@@19 ZeroMask))) (and (=> (= (ControlFlow 0 9) 4) anon6_Then_correct) (=> (= (ControlFlow 0 9) 6) anon6_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 10) 9) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
