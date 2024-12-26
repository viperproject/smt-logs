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
(declare-sort T@Field_5856_53 0)
(declare-sort T@Field_5869_5870 0)
(declare-sort T@Field_11875_3010 0)
(declare-sort T@Field_3890_14691 0)
(declare-sort T@Field_3890_14558 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_5817 0)) (((PolymorphicMapType_5817 (|PolymorphicMapType_5817_3890_3010#PolymorphicMapType_5817| (Array T@Ref T@Field_11875_3010 Real)) (|PolymorphicMapType_5817_3890_53#PolymorphicMapType_5817| (Array T@Ref T@Field_5856_53 Real)) (|PolymorphicMapType_5817_3890_5870#PolymorphicMapType_5817| (Array T@Ref T@Field_5869_5870 Real)) (|PolymorphicMapType_5817_3890_14558#PolymorphicMapType_5817| (Array T@Ref T@Field_3890_14558 Real)) (|PolymorphicMapType_5817_3890_18813#PolymorphicMapType_5817| (Array T@Ref T@Field_3890_14691 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6345 0)) (((PolymorphicMapType_6345 (|PolymorphicMapType_6345_5856_53#PolymorphicMapType_6345| (Array T@Ref T@Field_5856_53 Bool)) (|PolymorphicMapType_6345_5856_5870#PolymorphicMapType_6345| (Array T@Ref T@Field_5869_5870 Bool)) (|PolymorphicMapType_6345_5856_3010#PolymorphicMapType_6345| (Array T@Ref T@Field_11875_3010 Bool)) (|PolymorphicMapType_6345_5856_14558#PolymorphicMapType_6345| (Array T@Ref T@Field_3890_14558 Bool)) (|PolymorphicMapType_6345_5856_15869#PolymorphicMapType_6345| (Array T@Ref T@Field_3890_14691 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5796 0)) (((PolymorphicMapType_5796 (|PolymorphicMapType_5796_3700_53#PolymorphicMapType_5796| (Array T@Ref T@Field_5856_53 Bool)) (|PolymorphicMapType_5796_3703_3704#PolymorphicMapType_5796| (Array T@Ref T@Field_5869_5870 T@Ref)) (|PolymorphicMapType_5796_3890_3010#PolymorphicMapType_5796| (Array T@Ref T@Field_11875_3010 Int)) (|PolymorphicMapType_5796_3890_14735#PolymorphicMapType_5796| (Array T@Ref T@Field_3890_14691 T@PolymorphicMapType_6345)) (|PolymorphicMapType_5796_5856_14558#PolymorphicMapType_5796| (Array T@Ref T@Field_3890_14558 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_5856_53)
(declare-fun f_7 () T@Field_11875_3010)
(declare-sort T@Seq_11920 0)
(declare-fun |Seq#Length_3894| (T@Seq_11920) Int)
(declare-fun |Seq#Drop_3894| (T@Seq_11920 Int) T@Seq_11920)
(declare-sort T@Seq_2888 0)
(declare-fun |Seq#Length_2888| (T@Seq_2888) Int)
(declare-fun |Seq#Drop_2888| (T@Seq_2888 Int) T@Seq_2888)
(declare-fun succHeap (T@PolymorphicMapType_5796 T@PolymorphicMapType_5796) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_5796 T@PolymorphicMapType_5796) Bool)
(declare-fun state (T@PolymorphicMapType_5796 T@PolymorphicMapType_5817) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_5817) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_6345)
(declare-fun |Seq#Index_3894| (T@Seq_11920 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_2888| (T@Seq_2888 Int) Int)
(declare-fun |Seq#Empty_3894| () T@Seq_11920)
(declare-fun |Seq#Empty_2888| () T@Seq_2888)
(declare-fun |Seq#Update_3894| (T@Seq_11920 Int T@Ref) T@Seq_11920)
(declare-fun |Seq#Update_2888| (T@Seq_2888 Int Int) T@Seq_2888)
(declare-fun |Seq#Take_3894| (T@Seq_11920 Int) T@Seq_11920)
(declare-fun |Seq#Take_2888| (T@Seq_2888 Int) T@Seq_2888)
(declare-fun |Seq#Contains_2888| (T@Seq_2888 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2888)
(declare-fun |Seq#Contains_11920| (T@Seq_11920 T@Ref) Bool)
(declare-fun |Seq#Skolem_11920| (T@Seq_11920 T@Ref) Int)
(declare-fun |Seq#Skolem_2888| (T@Seq_2888 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_5796 T@PolymorphicMapType_5796 T@PolymorphicMapType_5817) Bool)
(declare-fun IsPredicateField_3890_14649 (T@Field_3890_14558) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3890 (T@Field_3890_14558) T@Field_3890_14691)
(declare-fun HasDirectPerm_3890_14622 (T@PolymorphicMapType_5817 T@Ref T@Field_3890_14558) Bool)
(declare-fun IsWandField_3890_16396 (T@Field_3890_14558) Bool)
(declare-fun WandMaskField_3890 (T@Field_3890_14558) T@Field_3890_14691)
(declare-fun |Seq#Singleton_3894| (T@Ref) T@Seq_11920)
(declare-fun |Seq#Singleton_2888| (Int) T@Seq_2888)
(declare-fun |Seq#Append_11920| (T@Seq_11920 T@Seq_11920) T@Seq_11920)
(declare-fun |Seq#Append_2888| (T@Seq_2888 T@Seq_2888) T@Seq_2888)
(declare-fun dummyHeap () T@PolymorphicMapType_5796)
(declare-fun ZeroMask () T@PolymorphicMapType_5817)
(declare-fun InsidePredicate_5856_5856 (T@Field_3890_14558 T@FrameType T@Field_3890_14558 T@FrameType) Bool)
(declare-fun IsPredicateField_3890_3010 (T@Field_11875_3010) Bool)
(declare-fun IsWandField_3890_3010 (T@Field_11875_3010) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3890_19942 (T@Field_3890_14691) Bool)
(declare-fun IsWandField_3890_19958 (T@Field_3890_14691) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3890_5870 (T@Field_5869_5870) Bool)
(declare-fun IsWandField_3890_5870 (T@Field_5869_5870) Bool)
(declare-fun IsPredicateField_3890_53 (T@Field_5856_53) Bool)
(declare-fun IsWandField_3890_53 (T@Field_5856_53) Bool)
(declare-fun HasDirectPerm_3890_20396 (T@PolymorphicMapType_5817 T@Ref T@Field_3890_14691) Bool)
(declare-fun HasDirectPerm_3890_5870 (T@PolymorphicMapType_5817 T@Ref T@Field_5869_5870) Bool)
(declare-fun HasDirectPerm_3890_53 (T@PolymorphicMapType_5817 T@Ref T@Field_5856_53) Bool)
(declare-fun HasDirectPerm_3890_3010 (T@PolymorphicMapType_5817 T@Ref T@Field_11875_3010) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_5817 T@PolymorphicMapType_5817 T@PolymorphicMapType_5817) Bool)
(declare-fun |Seq#Equal_11920| (T@Seq_11920 T@Seq_11920) Bool)
(declare-fun |Seq#Equal_2888| (T@Seq_2888 T@Seq_2888) Bool)
(declare-fun |Seq#ContainsTrigger_3894| (T@Seq_11920 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_2888| (T@Seq_2888 Int) Bool)
(declare-fun |Seq#SkolemDiff_11920| (T@Seq_11920 T@Seq_11920) Int)
(declare-fun |Seq#SkolemDiff_2888| (T@Seq_2888 T@Seq_2888) Int)
(assert (forall ((s T@Seq_11920) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_3894| s)) (= (|Seq#Length_3894| (|Seq#Drop_3894| s n)) (- (|Seq#Length_3894| s) n))) (=> (< (|Seq#Length_3894| s) n) (= (|Seq#Length_3894| (|Seq#Drop_3894| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_3894| (|Seq#Drop_3894| s n)) (|Seq#Length_3894| s))))
 :qid |stdinbpl.288:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3894| (|Seq#Drop_3894| s n)))
 :pattern ( (|Seq#Length_3894| s) (|Seq#Drop_3894| s n))
)))
(assert (forall ((s@@0 T@Seq_2888) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_2888| s@@0)) (= (|Seq#Length_2888| (|Seq#Drop_2888| s@@0 n@@0)) (- (|Seq#Length_2888| s@@0) n@@0))) (=> (< (|Seq#Length_2888| s@@0) n@@0) (= (|Seq#Length_2888| (|Seq#Drop_2888| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_2888| (|Seq#Drop_2888| s@@0 n@@0)) (|Seq#Length_2888| s@@0))))
 :qid |stdinbpl.288:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2888| (|Seq#Drop_2888| s@@0 n@@0)))
 :pattern ( (|Seq#Length_2888| s@@0) (|Seq#Drop_2888| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_5796) (Heap1 T@PolymorphicMapType_5796) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_5796) (Mask T@PolymorphicMapType_5817) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_5796) (Heap1@@0 T@PolymorphicMapType_5796) (Heap2 T@PolymorphicMapType_5796) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_3890_14691) ) (!  (not (select (|PolymorphicMapType_6345_5856_15869#PolymorphicMapType_6345| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6345_5856_15869#PolymorphicMapType_6345| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_3890_14558) ) (!  (not (select (|PolymorphicMapType_6345_5856_14558#PolymorphicMapType_6345| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6345_5856_14558#PolymorphicMapType_6345| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_11875_3010) ) (!  (not (select (|PolymorphicMapType_6345_5856_3010#PolymorphicMapType_6345| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6345_5856_3010#PolymorphicMapType_6345| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_5869_5870) ) (!  (not (select (|PolymorphicMapType_6345_5856_5870#PolymorphicMapType_6345| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6345_5856_5870#PolymorphicMapType_6345| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_5856_53) ) (!  (not (select (|PolymorphicMapType_6345_5856_53#PolymorphicMapType_6345| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6345_5856_53#PolymorphicMapType_6345| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((s@@1 T@Seq_11920) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_3894| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_3894| (|Seq#Drop_3894| s@@1 n@@1) j) (|Seq#Index_3894| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.309:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3894| (|Seq#Drop_3894| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_2888) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_2888| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_2888| (|Seq#Drop_2888| s@@2 n@@2) j@@0) (|Seq#Index_2888| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.309:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2888| (|Seq#Drop_2888| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_3894| |Seq#Empty_3894|) 0))
(assert (= (|Seq#Length_2888| |Seq#Empty_2888|) 0))
(assert (forall ((s@@3 T@Seq_11920) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_3894| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_3894| (|Seq#Update_3894| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_3894| (|Seq#Update_3894| s@@3 i v) n@@3) (|Seq#Index_3894| s@@3 n@@3)))))
 :qid |stdinbpl.264:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3894| (|Seq#Update_3894| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_3894| s@@3 n@@3) (|Seq#Update_3894| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_2888) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_2888| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_2888| (|Seq#Update_2888| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_2888| (|Seq#Update_2888| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_2888| s@@4 n@@4)))))
 :qid |stdinbpl.264:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2888| (|Seq#Update_2888| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_2888| s@@4 n@@4) (|Seq#Update_2888| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_11920) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_3894| s@@5)) (= (|Seq#Length_3894| (|Seq#Take_3894| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_3894| s@@5) n@@5) (= (|Seq#Length_3894| (|Seq#Take_3894| s@@5 n@@5)) (|Seq#Length_3894| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_3894| (|Seq#Take_3894| s@@5 n@@5)) 0)))
 :qid |stdinbpl.275:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3894| (|Seq#Take_3894| s@@5 n@@5)))
 :pattern ( (|Seq#Take_3894| s@@5 n@@5) (|Seq#Length_3894| s@@5))
)))
(assert (forall ((s@@6 T@Seq_2888) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_2888| s@@6)) (= (|Seq#Length_2888| (|Seq#Take_2888| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_2888| s@@6) n@@6) (= (|Seq#Length_2888| (|Seq#Take_2888| s@@6 n@@6)) (|Seq#Length_2888| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_2888| (|Seq#Take_2888| s@@6 n@@6)) 0)))
 :qid |stdinbpl.275:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2888| (|Seq#Take_2888| s@@6 n@@6)))
 :pattern ( (|Seq#Take_2888| s@@6 n@@6) (|Seq#Length_2888| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_2888| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.549:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2888| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_11920) (x T@Ref) ) (!  (=> (|Seq#Contains_11920| s@@7 x) (and (and (<= 0 (|Seq#Skolem_11920| s@@7 x)) (< (|Seq#Skolem_11920| s@@7 x) (|Seq#Length_3894| s@@7))) (= (|Seq#Index_3894| s@@7 (|Seq#Skolem_11920| s@@7 x)) x)))
 :qid |stdinbpl.407:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_11920| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_2888) (x@@0 Int) ) (!  (=> (|Seq#Contains_2888| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_2888| s@@8 x@@0)) (< (|Seq#Skolem_2888| s@@8 x@@0) (|Seq#Length_2888| s@@8))) (= (|Seq#Index_2888| s@@8 (|Seq#Skolem_2888| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.407:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2888| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_11920) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_3894| s@@9 n@@7) s@@9))
 :qid |stdinbpl.391:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3894| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_2888) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_2888| s@@10 n@@8) s@@10))
 :qid |stdinbpl.391:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_2888| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.244:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.242:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_5796) (ExhaleHeap T@PolymorphicMapType_5796) (Mask@@0 T@PolymorphicMapType_5817) (pm_f_9 T@Field_3890_14558) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_3890_14622 Mask@@0 null pm_f_9) (IsPredicateField_3890_14649 pm_f_9)) (= (select (|PolymorphicMapType_5796_3890_14735#PolymorphicMapType_5796| Heap@@0) null (PredicateMaskField_3890 pm_f_9)) (select (|PolymorphicMapType_5796_3890_14735#PolymorphicMapType_5796| ExhaleHeap) null (PredicateMaskField_3890 pm_f_9)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_3890_14649 pm_f_9) (select (|PolymorphicMapType_5796_3890_14735#PolymorphicMapType_5796| ExhaleHeap) null (PredicateMaskField_3890 pm_f_9)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_5796) (ExhaleHeap@@0 T@PolymorphicMapType_5796) (Mask@@1 T@PolymorphicMapType_5817) (pm_f_9@@0 T@Field_3890_14558) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_3890_14622 Mask@@1 null pm_f_9@@0) (IsWandField_3890_16396 pm_f_9@@0)) (= (select (|PolymorphicMapType_5796_3890_14735#PolymorphicMapType_5796| Heap@@1) null (WandMaskField_3890 pm_f_9@@0)) (select (|PolymorphicMapType_5796_3890_14735#PolymorphicMapType_5796| ExhaleHeap@@0) null (WandMaskField_3890 pm_f_9@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_3890_16396 pm_f_9@@0) (select (|PolymorphicMapType_5796_3890_14735#PolymorphicMapType_5796| ExhaleHeap@@0) null (WandMaskField_3890 pm_f_9@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_11920| (|Seq#Singleton_3894| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.532:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_11920| (|Seq#Singleton_3894| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_2888| (|Seq#Singleton_2888| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.532:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2888| (|Seq#Singleton_2888| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_11920) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_3894| s@@11))) (= (|Seq#Index_3894| (|Seq#Take_3894| s@@11 n@@9) j@@3) (|Seq#Index_3894| s@@11 j@@3)))
 :qid |stdinbpl.283:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3894| (|Seq#Take_3894| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_3894| s@@11 j@@3) (|Seq#Take_3894| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_2888) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_2888| s@@12))) (= (|Seq#Index_2888| (|Seq#Take_2888| s@@12 n@@10) j@@4) (|Seq#Index_2888| s@@12 j@@4)))
 :qid |stdinbpl.283:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2888| (|Seq#Take_2888| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_2888| s@@12 j@@4) (|Seq#Take_2888| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_11920) (t T@Seq_11920) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_3894| s@@13))) (< n@@11 (|Seq#Length_3894| (|Seq#Append_11920| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_3894| s@@13)) (|Seq#Length_3894| s@@13)) n@@11) (= (|Seq#Take_3894| (|Seq#Append_11920| s@@13 t) n@@11) (|Seq#Append_11920| s@@13 (|Seq#Take_3894| t (|Seq#Sub| n@@11 (|Seq#Length_3894| s@@13)))))))
 :qid |stdinbpl.368:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3894| (|Seq#Append_11920| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_2888) (t@@0 T@Seq_2888) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_2888| s@@14))) (< n@@12 (|Seq#Length_2888| (|Seq#Append_2888| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_2888| s@@14)) (|Seq#Length_2888| s@@14)) n@@12) (= (|Seq#Take_2888| (|Seq#Append_2888| s@@14 t@@0) n@@12) (|Seq#Append_2888| s@@14 (|Seq#Take_2888| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_2888| s@@14)))))))
 :qid |stdinbpl.368:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2888| (|Seq#Append_2888| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_5796) (ExhaleHeap@@1 T@PolymorphicMapType_5796) (Mask@@2 T@PolymorphicMapType_5817) (o_27 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_5796_3700_53#PolymorphicMapType_5796| Heap@@2) o_27 $allocated) (select (|PolymorphicMapType_5796_3700_53#PolymorphicMapType_5796| ExhaleHeap@@1) o_27 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_5796_3700_53#PolymorphicMapType_5796| ExhaleHeap@@1) o_27 $allocated))
)))
(assert (forall ((p T@Field_3890_14558) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_5856_5856 p v_1 p w))
 :qid |stdinbpl.186:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_5856_5856 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_11920) (s1 T@Seq_11920) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_3894|)) (not (= s1 |Seq#Empty_3894|))) (<= (|Seq#Length_3894| s0) n@@13)) (< n@@13 (|Seq#Length_3894| (|Seq#Append_11920| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_3894| s0)) (|Seq#Length_3894| s0)) n@@13) (= (|Seq#Index_3894| (|Seq#Append_11920| s0 s1) n@@13) (|Seq#Index_3894| s1 (|Seq#Sub| n@@13 (|Seq#Length_3894| s0))))))
 :qid |stdinbpl.255:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3894| (|Seq#Append_11920| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_2888) (s1@@0 T@Seq_2888) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_2888|)) (not (= s1@@0 |Seq#Empty_2888|))) (<= (|Seq#Length_2888| s0@@0) n@@14)) (< n@@14 (|Seq#Length_2888| (|Seq#Append_2888| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_2888| s0@@0)) (|Seq#Length_2888| s0@@0)) n@@14) (= (|Seq#Index_2888| (|Seq#Append_2888| s0@@0 s1@@0) n@@14) (|Seq#Index_2888| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_2888| s0@@0))))))
 :qid |stdinbpl.255:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2888| (|Seq#Append_2888| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_3890_3010 f_7)))
(assert  (not (IsWandField_3890_3010 f_7)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_5796) (ExhaleHeap@@2 T@PolymorphicMapType_5796) (Mask@@3 T@PolymorphicMapType_5817) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_5817) (o_2@@4 T@Ref) (f_4@@4 T@Field_3890_14691) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_5817_3890_18813#PolymorphicMapType_5817| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_3890_19942 f_4@@4))) (not (IsWandField_3890_19958 f_4@@4))) (<= (select (|PolymorphicMapType_5817_3890_18813#PolymorphicMapType_5817| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_5817_3890_18813#PolymorphicMapType_5817| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_5817) (o_2@@5 T@Ref) (f_4@@5 T@Field_3890_14558) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_5817_3890_14558#PolymorphicMapType_5817| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_3890_14649 f_4@@5))) (not (IsWandField_3890_16396 f_4@@5))) (<= (select (|PolymorphicMapType_5817_3890_14558#PolymorphicMapType_5817| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_5817_3890_14558#PolymorphicMapType_5817| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_5817) (o_2@@6 T@Ref) (f_4@@6 T@Field_5869_5870) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_5817_3890_5870#PolymorphicMapType_5817| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_3890_5870 f_4@@6))) (not (IsWandField_3890_5870 f_4@@6))) (<= (select (|PolymorphicMapType_5817_3890_5870#PolymorphicMapType_5817| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_5817_3890_5870#PolymorphicMapType_5817| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_5817) (o_2@@7 T@Ref) (f_4@@7 T@Field_5856_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_5817_3890_53#PolymorphicMapType_5817| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_3890_53 f_4@@7))) (not (IsWandField_3890_53 f_4@@7))) (<= (select (|PolymorphicMapType_5817_3890_53#PolymorphicMapType_5817| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_5817_3890_53#PolymorphicMapType_5817| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_5817) (o_2@@8 T@Ref) (f_4@@8 T@Field_11875_3010) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_5817_3890_3010#PolymorphicMapType_5817| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_3890_3010 f_4@@8))) (not (IsWandField_3890_3010 f_4@@8))) (<= (select (|PolymorphicMapType_5817_3890_3010#PolymorphicMapType_5817| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_5817_3890_3010#PolymorphicMapType_5817| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_5817) (o_2@@9 T@Ref) (f_4@@9 T@Field_3890_14691) ) (! (= (HasDirectPerm_3890_20396 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_5817_3890_18813#PolymorphicMapType_5817| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3890_20396 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_5817) (o_2@@10 T@Ref) (f_4@@10 T@Field_3890_14558) ) (! (= (HasDirectPerm_3890_14622 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_5817_3890_14558#PolymorphicMapType_5817| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3890_14622 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_5817) (o_2@@11 T@Ref) (f_4@@11 T@Field_5869_5870) ) (! (= (HasDirectPerm_3890_5870 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_5817_3890_5870#PolymorphicMapType_5817| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3890_5870 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_5817) (o_2@@12 T@Ref) (f_4@@12 T@Field_5856_53) ) (! (= (HasDirectPerm_3890_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_5817_3890_53#PolymorphicMapType_5817| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3890_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_5817) (o_2@@13 T@Ref) (f_4@@13 T@Field_11875_3010) ) (! (= (HasDirectPerm_3890_3010 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_5817_3890_3010#PolymorphicMapType_5817| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3890_3010 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_5796) (ExhaleHeap@@3 T@PolymorphicMapType_5796) (Mask@@14 T@PolymorphicMapType_5817) (pm_f_9@@1 T@Field_3890_14558) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_3890_14622 Mask@@14 null pm_f_9@@1) (IsPredicateField_3890_14649 pm_f_9@@1)) (and (and (and (and (forall ((o2_9 T@Ref) (f_24 T@Field_5856_53) ) (!  (=> (select (|PolymorphicMapType_6345_5856_53#PolymorphicMapType_6345| (select (|PolymorphicMapType_5796_3890_14735#PolymorphicMapType_5796| Heap@@4) null (PredicateMaskField_3890 pm_f_9@@1))) o2_9 f_24) (= (select (|PolymorphicMapType_5796_3700_53#PolymorphicMapType_5796| Heap@@4) o2_9 f_24) (select (|PolymorphicMapType_5796_3700_53#PolymorphicMapType_5796| ExhaleHeap@@3) o2_9 f_24)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5796_3700_53#PolymorphicMapType_5796| ExhaleHeap@@3) o2_9 f_24))
)) (forall ((o2_9@@0 T@Ref) (f_24@@0 T@Field_5869_5870) ) (!  (=> (select (|PolymorphicMapType_6345_5856_5870#PolymorphicMapType_6345| (select (|PolymorphicMapType_5796_3890_14735#PolymorphicMapType_5796| Heap@@4) null (PredicateMaskField_3890 pm_f_9@@1))) o2_9@@0 f_24@@0) (= (select (|PolymorphicMapType_5796_3703_3704#PolymorphicMapType_5796| Heap@@4) o2_9@@0 f_24@@0) (select (|PolymorphicMapType_5796_3703_3704#PolymorphicMapType_5796| ExhaleHeap@@3) o2_9@@0 f_24@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5796_3703_3704#PolymorphicMapType_5796| ExhaleHeap@@3) o2_9@@0 f_24@@0))
))) (forall ((o2_9@@1 T@Ref) (f_24@@1 T@Field_11875_3010) ) (!  (=> (select (|PolymorphicMapType_6345_5856_3010#PolymorphicMapType_6345| (select (|PolymorphicMapType_5796_3890_14735#PolymorphicMapType_5796| Heap@@4) null (PredicateMaskField_3890 pm_f_9@@1))) o2_9@@1 f_24@@1) (= (select (|PolymorphicMapType_5796_3890_3010#PolymorphicMapType_5796| Heap@@4) o2_9@@1 f_24@@1) (select (|PolymorphicMapType_5796_3890_3010#PolymorphicMapType_5796| ExhaleHeap@@3) o2_9@@1 f_24@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5796_3890_3010#PolymorphicMapType_5796| ExhaleHeap@@3) o2_9@@1 f_24@@1))
))) (forall ((o2_9@@2 T@Ref) (f_24@@2 T@Field_3890_14558) ) (!  (=> (select (|PolymorphicMapType_6345_5856_14558#PolymorphicMapType_6345| (select (|PolymorphicMapType_5796_3890_14735#PolymorphicMapType_5796| Heap@@4) null (PredicateMaskField_3890 pm_f_9@@1))) o2_9@@2 f_24@@2) (= (select (|PolymorphicMapType_5796_5856_14558#PolymorphicMapType_5796| Heap@@4) o2_9@@2 f_24@@2) (select (|PolymorphicMapType_5796_5856_14558#PolymorphicMapType_5796| ExhaleHeap@@3) o2_9@@2 f_24@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5796_5856_14558#PolymorphicMapType_5796| ExhaleHeap@@3) o2_9@@2 f_24@@2))
))) (forall ((o2_9@@3 T@Ref) (f_24@@3 T@Field_3890_14691) ) (!  (=> (select (|PolymorphicMapType_6345_5856_15869#PolymorphicMapType_6345| (select (|PolymorphicMapType_5796_3890_14735#PolymorphicMapType_5796| Heap@@4) null (PredicateMaskField_3890 pm_f_9@@1))) o2_9@@3 f_24@@3) (= (select (|PolymorphicMapType_5796_3890_14735#PolymorphicMapType_5796| Heap@@4) o2_9@@3 f_24@@3) (select (|PolymorphicMapType_5796_3890_14735#PolymorphicMapType_5796| ExhaleHeap@@3) o2_9@@3 f_24@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5796_3890_14735#PolymorphicMapType_5796| ExhaleHeap@@3) o2_9@@3 f_24@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_3890_14649 pm_f_9@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_5796) (ExhaleHeap@@4 T@PolymorphicMapType_5796) (Mask@@15 T@PolymorphicMapType_5817) (pm_f_9@@2 T@Field_3890_14558) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_3890_14622 Mask@@15 null pm_f_9@@2) (IsWandField_3890_16396 pm_f_9@@2)) (and (and (and (and (forall ((o2_9@@4 T@Ref) (f_24@@4 T@Field_5856_53) ) (!  (=> (select (|PolymorphicMapType_6345_5856_53#PolymorphicMapType_6345| (select (|PolymorphicMapType_5796_3890_14735#PolymorphicMapType_5796| Heap@@5) null (WandMaskField_3890 pm_f_9@@2))) o2_9@@4 f_24@@4) (= (select (|PolymorphicMapType_5796_3700_53#PolymorphicMapType_5796| Heap@@5) o2_9@@4 f_24@@4) (select (|PolymorphicMapType_5796_3700_53#PolymorphicMapType_5796| ExhaleHeap@@4) o2_9@@4 f_24@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5796_3700_53#PolymorphicMapType_5796| ExhaleHeap@@4) o2_9@@4 f_24@@4))
)) (forall ((o2_9@@5 T@Ref) (f_24@@5 T@Field_5869_5870) ) (!  (=> (select (|PolymorphicMapType_6345_5856_5870#PolymorphicMapType_6345| (select (|PolymorphicMapType_5796_3890_14735#PolymorphicMapType_5796| Heap@@5) null (WandMaskField_3890 pm_f_9@@2))) o2_9@@5 f_24@@5) (= (select (|PolymorphicMapType_5796_3703_3704#PolymorphicMapType_5796| Heap@@5) o2_9@@5 f_24@@5) (select (|PolymorphicMapType_5796_3703_3704#PolymorphicMapType_5796| ExhaleHeap@@4) o2_9@@5 f_24@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5796_3703_3704#PolymorphicMapType_5796| ExhaleHeap@@4) o2_9@@5 f_24@@5))
))) (forall ((o2_9@@6 T@Ref) (f_24@@6 T@Field_11875_3010) ) (!  (=> (select (|PolymorphicMapType_6345_5856_3010#PolymorphicMapType_6345| (select (|PolymorphicMapType_5796_3890_14735#PolymorphicMapType_5796| Heap@@5) null (WandMaskField_3890 pm_f_9@@2))) o2_9@@6 f_24@@6) (= (select (|PolymorphicMapType_5796_3890_3010#PolymorphicMapType_5796| Heap@@5) o2_9@@6 f_24@@6) (select (|PolymorphicMapType_5796_3890_3010#PolymorphicMapType_5796| ExhaleHeap@@4) o2_9@@6 f_24@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5796_3890_3010#PolymorphicMapType_5796| ExhaleHeap@@4) o2_9@@6 f_24@@6))
))) (forall ((o2_9@@7 T@Ref) (f_24@@7 T@Field_3890_14558) ) (!  (=> (select (|PolymorphicMapType_6345_5856_14558#PolymorphicMapType_6345| (select (|PolymorphicMapType_5796_3890_14735#PolymorphicMapType_5796| Heap@@5) null (WandMaskField_3890 pm_f_9@@2))) o2_9@@7 f_24@@7) (= (select (|PolymorphicMapType_5796_5856_14558#PolymorphicMapType_5796| Heap@@5) o2_9@@7 f_24@@7) (select (|PolymorphicMapType_5796_5856_14558#PolymorphicMapType_5796| ExhaleHeap@@4) o2_9@@7 f_24@@7)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5796_5856_14558#PolymorphicMapType_5796| ExhaleHeap@@4) o2_9@@7 f_24@@7))
))) (forall ((o2_9@@8 T@Ref) (f_24@@8 T@Field_3890_14691) ) (!  (=> (select (|PolymorphicMapType_6345_5856_15869#PolymorphicMapType_6345| (select (|PolymorphicMapType_5796_3890_14735#PolymorphicMapType_5796| Heap@@5) null (WandMaskField_3890 pm_f_9@@2))) o2_9@@8 f_24@@8) (= (select (|PolymorphicMapType_5796_3890_14735#PolymorphicMapType_5796| Heap@@5) o2_9@@8 f_24@@8) (select (|PolymorphicMapType_5796_3890_14735#PolymorphicMapType_5796| ExhaleHeap@@4) o2_9@@8 f_24@@8)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5796_3890_14735#PolymorphicMapType_5796| ExhaleHeap@@4) o2_9@@8 f_24@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_3890_16396 pm_f_9@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.174:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2888| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.547:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2888| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_5796) (ExhaleHeap@@5 T@PolymorphicMapType_5796) (Mask@@16 T@PolymorphicMapType_5817) (o_27@@0 T@Ref) (f_24@@9 T@Field_3890_14691) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_3890_20396 Mask@@16 o_27@@0 f_24@@9) (= (select (|PolymorphicMapType_5796_3890_14735#PolymorphicMapType_5796| Heap@@6) o_27@@0 f_24@@9) (select (|PolymorphicMapType_5796_3890_14735#PolymorphicMapType_5796| ExhaleHeap@@5) o_27@@0 f_24@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_5796_3890_14735#PolymorphicMapType_5796| ExhaleHeap@@5) o_27@@0 f_24@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_5796) (ExhaleHeap@@6 T@PolymorphicMapType_5796) (Mask@@17 T@PolymorphicMapType_5817) (o_27@@1 T@Ref) (f_24@@10 T@Field_3890_14558) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_3890_14622 Mask@@17 o_27@@1 f_24@@10) (= (select (|PolymorphicMapType_5796_5856_14558#PolymorphicMapType_5796| Heap@@7) o_27@@1 f_24@@10) (select (|PolymorphicMapType_5796_5856_14558#PolymorphicMapType_5796| ExhaleHeap@@6) o_27@@1 f_24@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_5796_5856_14558#PolymorphicMapType_5796| ExhaleHeap@@6) o_27@@1 f_24@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_5796) (ExhaleHeap@@7 T@PolymorphicMapType_5796) (Mask@@18 T@PolymorphicMapType_5817) (o_27@@2 T@Ref) (f_24@@11 T@Field_5869_5870) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_3890_5870 Mask@@18 o_27@@2 f_24@@11) (= (select (|PolymorphicMapType_5796_3703_3704#PolymorphicMapType_5796| Heap@@8) o_27@@2 f_24@@11) (select (|PolymorphicMapType_5796_3703_3704#PolymorphicMapType_5796| ExhaleHeap@@7) o_27@@2 f_24@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_5796_3703_3704#PolymorphicMapType_5796| ExhaleHeap@@7) o_27@@2 f_24@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_5796) (ExhaleHeap@@8 T@PolymorphicMapType_5796) (Mask@@19 T@PolymorphicMapType_5817) (o_27@@3 T@Ref) (f_24@@12 T@Field_5856_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_3890_53 Mask@@19 o_27@@3 f_24@@12) (= (select (|PolymorphicMapType_5796_3700_53#PolymorphicMapType_5796| Heap@@9) o_27@@3 f_24@@12) (select (|PolymorphicMapType_5796_3700_53#PolymorphicMapType_5796| ExhaleHeap@@8) o_27@@3 f_24@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_5796_3700_53#PolymorphicMapType_5796| ExhaleHeap@@8) o_27@@3 f_24@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_5796) (ExhaleHeap@@9 T@PolymorphicMapType_5796) (Mask@@20 T@PolymorphicMapType_5817) (o_27@@4 T@Ref) (f_24@@13 T@Field_11875_3010) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_3890_3010 Mask@@20 o_27@@4 f_24@@13) (= (select (|PolymorphicMapType_5796_3890_3010#PolymorphicMapType_5796| Heap@@10) o_27@@4 f_24@@13) (select (|PolymorphicMapType_5796_3890_3010#PolymorphicMapType_5796| ExhaleHeap@@9) o_27@@4 f_24@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_5796_3890_3010#PolymorphicMapType_5796| ExhaleHeap@@9) o_27@@4 f_24@@13))
)))
(assert (forall ((s0@@1 T@Seq_11920) (s1@@1 T@Seq_11920) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_3894|)) (not (= s1@@1 |Seq#Empty_3894|))) (= (|Seq#Length_3894| (|Seq#Append_11920| s0@@1 s1@@1)) (+ (|Seq#Length_3894| s0@@1) (|Seq#Length_3894| s1@@1))))
 :qid |stdinbpl.224:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3894| (|Seq#Append_11920| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_2888) (s1@@2 T@Seq_2888) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_2888|)) (not (= s1@@2 |Seq#Empty_2888|))) (= (|Seq#Length_2888| (|Seq#Append_2888| s0@@2 s1@@2)) (+ (|Seq#Length_2888| s0@@2) (|Seq#Length_2888| s1@@2))))
 :qid |stdinbpl.224:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2888| (|Seq#Append_2888| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_3890_14691) ) (! (= (select (|PolymorphicMapType_5817_3890_18813#PolymorphicMapType_5817| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5817_3890_18813#PolymorphicMapType_5817| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_3890_14558) ) (! (= (select (|PolymorphicMapType_5817_3890_14558#PolymorphicMapType_5817| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5817_3890_14558#PolymorphicMapType_5817| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_5869_5870) ) (! (= (select (|PolymorphicMapType_5817_3890_5870#PolymorphicMapType_5817| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5817_3890_5870#PolymorphicMapType_5817| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_5856_53) ) (! (= (select (|PolymorphicMapType_5817_3890_53#PolymorphicMapType_5817| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5817_3890_53#PolymorphicMapType_5817| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_11875_3010) ) (! (= (select (|PolymorphicMapType_5817_3890_3010#PolymorphicMapType_5817| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5817_3890_3010#PolymorphicMapType_5817| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((s@@15 T@Seq_11920) (t@@1 T@Seq_11920) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_3894| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_3894| s@@15)) (|Seq#Length_3894| s@@15)) n@@15) (= (|Seq#Drop_3894| (|Seq#Append_11920| s@@15 t@@1) n@@15) (|Seq#Drop_3894| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_3894| s@@15))))))
 :qid |stdinbpl.381:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3894| (|Seq#Append_11920| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_2888) (t@@2 T@Seq_2888) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_2888| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_2888| s@@16)) (|Seq#Length_2888| s@@16)) n@@16) (= (|Seq#Drop_2888| (|Seq#Append_2888| s@@16 t@@2) n@@16) (|Seq#Drop_2888| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_2888| s@@16))))))
 :qid |stdinbpl.381:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_2888| (|Seq#Append_2888| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_5817) (SummandMask1 T@PolymorphicMapType_5817) (SummandMask2 T@PolymorphicMapType_5817) (o_2@@19 T@Ref) (f_4@@19 T@Field_3890_14691) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_5817_3890_18813#PolymorphicMapType_5817| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_5817_3890_18813#PolymorphicMapType_5817| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_5817_3890_18813#PolymorphicMapType_5817| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5817_3890_18813#PolymorphicMapType_5817| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5817_3890_18813#PolymorphicMapType_5817| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5817_3890_18813#PolymorphicMapType_5817| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_5817) (SummandMask1@@0 T@PolymorphicMapType_5817) (SummandMask2@@0 T@PolymorphicMapType_5817) (o_2@@20 T@Ref) (f_4@@20 T@Field_3890_14558) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_5817_3890_14558#PolymorphicMapType_5817| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_5817_3890_14558#PolymorphicMapType_5817| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_5817_3890_14558#PolymorphicMapType_5817| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5817_3890_14558#PolymorphicMapType_5817| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5817_3890_14558#PolymorphicMapType_5817| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5817_3890_14558#PolymorphicMapType_5817| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_5817) (SummandMask1@@1 T@PolymorphicMapType_5817) (SummandMask2@@1 T@PolymorphicMapType_5817) (o_2@@21 T@Ref) (f_4@@21 T@Field_5869_5870) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_5817_3890_5870#PolymorphicMapType_5817| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_5817_3890_5870#PolymorphicMapType_5817| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_5817_3890_5870#PolymorphicMapType_5817| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5817_3890_5870#PolymorphicMapType_5817| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5817_3890_5870#PolymorphicMapType_5817| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5817_3890_5870#PolymorphicMapType_5817| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_5817) (SummandMask1@@2 T@PolymorphicMapType_5817) (SummandMask2@@2 T@PolymorphicMapType_5817) (o_2@@22 T@Ref) (f_4@@22 T@Field_5856_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_5817_3890_53#PolymorphicMapType_5817| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_5817_3890_53#PolymorphicMapType_5817| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_5817_3890_53#PolymorphicMapType_5817| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5817_3890_53#PolymorphicMapType_5817| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5817_3890_53#PolymorphicMapType_5817| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5817_3890_53#PolymorphicMapType_5817| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_5817) (SummandMask1@@3 T@PolymorphicMapType_5817) (SummandMask2@@3 T@PolymorphicMapType_5817) (o_2@@23 T@Ref) (f_4@@23 T@Field_11875_3010) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_5817_3890_3010#PolymorphicMapType_5817| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_5817_3890_3010#PolymorphicMapType_5817| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_5817_3890_3010#PolymorphicMapType_5817| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5817_3890_3010#PolymorphicMapType_5817| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5817_3890_3010#PolymorphicMapType_5817| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5817_3890_3010#PolymorphicMapType_5817| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2888| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2888| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.546:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2888| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_11920) (b T@Seq_11920) ) (!  (=> (|Seq#Equal_11920| a b) (= a b))
 :qid |stdinbpl.519:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_11920| a b))
)))
(assert (forall ((a@@0 T@Seq_2888) (b@@0 T@Seq_2888) ) (!  (=> (|Seq#Equal_2888| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.519:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_2888| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_11920) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_3894| s@@17))) (|Seq#ContainsTrigger_3894| s@@17 (|Seq#Index_3894| s@@17 i@@3)))
 :qid |stdinbpl.412:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3894| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_2888) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_2888| s@@18))) (|Seq#ContainsTrigger_2888| s@@18 (|Seq#Index_2888| s@@18 i@@4)))
 :qid |stdinbpl.412:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2888| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_11920) (s1@@3 T@Seq_11920) ) (!  (and (=> (= s0@@3 |Seq#Empty_3894|) (= (|Seq#Append_11920| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_3894|) (= (|Seq#Append_11920| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.230:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_11920| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2888) (s1@@4 T@Seq_2888) ) (!  (and (=> (= s0@@4 |Seq#Empty_2888|) (= (|Seq#Append_2888| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_2888|) (= (|Seq#Append_2888| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.230:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_2888| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_3894| (|Seq#Singleton_3894| t@@3) 0) t@@3)
 :qid |stdinbpl.234:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3894| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_2888| (|Seq#Singleton_2888| t@@4) 0) t@@4)
 :qid |stdinbpl.234:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_2888| t@@4))
)))
(assert (forall ((s@@19 T@Seq_11920) ) (! (<= 0 (|Seq#Length_3894| s@@19))
 :qid |stdinbpl.213:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3894| s@@19))
)))
(assert (forall ((s@@20 T@Seq_2888) ) (! (<= 0 (|Seq#Length_2888| s@@20))
 :qid |stdinbpl.213:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2888| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_11920) (s1@@5 T@Seq_11920) ) (!  (=> (|Seq#Equal_11920| s0@@5 s1@@5) (and (= (|Seq#Length_3894| s0@@5) (|Seq#Length_3894| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_3894| s0@@5))) (= (|Seq#Index_3894| s0@@5 j@@6) (|Seq#Index_3894| s1@@5 j@@6)))
 :qid |stdinbpl.509:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3894| s0@@5 j@@6))
 :pattern ( (|Seq#Index_3894| s1@@5 j@@6))
))))
 :qid |stdinbpl.506:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_11920| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_2888) (s1@@6 T@Seq_2888) ) (!  (=> (|Seq#Equal_2888| s0@@6 s1@@6) (and (= (|Seq#Length_2888| s0@@6) (|Seq#Length_2888| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_2888| s0@@6))) (= (|Seq#Index_2888| s0@@6 j@@7) (|Seq#Index_2888| s1@@6 j@@7)))
 :qid |stdinbpl.509:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2888| s0@@6 j@@7))
 :pattern ( (|Seq#Index_2888| s1@@6 j@@7))
))))
 :qid |stdinbpl.506:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_2888| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_3894| (|Seq#Singleton_3894| t@@5)) 1)
 :qid |stdinbpl.221:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3894| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_2888| (|Seq#Singleton_2888| t@@6)) 1)
 :qid |stdinbpl.221:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_2888| t@@6))
)))
(assert (forall ((s@@21 T@Seq_11920) (t@@7 T@Seq_11920) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_3894| s@@21))) (= (|Seq#Take_3894| (|Seq#Append_11920| s@@21 t@@7) n@@17) (|Seq#Take_3894| s@@21 n@@17)))
 :qid |stdinbpl.363:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3894| (|Seq#Append_11920| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_2888) (t@@8 T@Seq_2888) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_2888| s@@22))) (= (|Seq#Take_2888| (|Seq#Append_2888| s@@22 t@@8) n@@18) (|Seq#Take_2888| s@@22 n@@18)))
 :qid |stdinbpl.363:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2888| (|Seq#Append_2888| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_11920) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_3894| s@@23))) (= (|Seq#Length_3894| (|Seq#Update_3894| s@@23 i@@5 v@@2)) (|Seq#Length_3894| s@@23)))
 :qid |stdinbpl.262:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3894| (|Seq#Update_3894| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_3894| s@@23) (|Seq#Update_3894| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_2888) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_2888| s@@24))) (= (|Seq#Length_2888| (|Seq#Update_2888| s@@24 i@@6 v@@3)) (|Seq#Length_2888| s@@24)))
 :qid |stdinbpl.262:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2888| (|Seq#Update_2888| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_2888| s@@24) (|Seq#Update_2888| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_5796) (o_20 T@Ref) (f_31 T@Field_3890_14558) (v@@4 T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_5796 (|PolymorphicMapType_5796_3700_53#PolymorphicMapType_5796| Heap@@11) (|PolymorphicMapType_5796_3703_3704#PolymorphicMapType_5796| Heap@@11) (|PolymorphicMapType_5796_3890_3010#PolymorphicMapType_5796| Heap@@11) (|PolymorphicMapType_5796_3890_14735#PolymorphicMapType_5796| Heap@@11) (store (|PolymorphicMapType_5796_5856_14558#PolymorphicMapType_5796| Heap@@11) o_20 f_31 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5796 (|PolymorphicMapType_5796_3700_53#PolymorphicMapType_5796| Heap@@11) (|PolymorphicMapType_5796_3703_3704#PolymorphicMapType_5796| Heap@@11) (|PolymorphicMapType_5796_3890_3010#PolymorphicMapType_5796| Heap@@11) (|PolymorphicMapType_5796_3890_14735#PolymorphicMapType_5796| Heap@@11) (store (|PolymorphicMapType_5796_5856_14558#PolymorphicMapType_5796| Heap@@11) o_20 f_31 v@@4)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_5796) (o_20@@0 T@Ref) (f_31@@0 T@Field_3890_14691) (v@@5 T@PolymorphicMapType_6345) ) (! (succHeap Heap@@12 (PolymorphicMapType_5796 (|PolymorphicMapType_5796_3700_53#PolymorphicMapType_5796| Heap@@12) (|PolymorphicMapType_5796_3703_3704#PolymorphicMapType_5796| Heap@@12) (|PolymorphicMapType_5796_3890_3010#PolymorphicMapType_5796| Heap@@12) (store (|PolymorphicMapType_5796_3890_14735#PolymorphicMapType_5796| Heap@@12) o_20@@0 f_31@@0 v@@5) (|PolymorphicMapType_5796_5856_14558#PolymorphicMapType_5796| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5796 (|PolymorphicMapType_5796_3700_53#PolymorphicMapType_5796| Heap@@12) (|PolymorphicMapType_5796_3703_3704#PolymorphicMapType_5796| Heap@@12) (|PolymorphicMapType_5796_3890_3010#PolymorphicMapType_5796| Heap@@12) (store (|PolymorphicMapType_5796_3890_14735#PolymorphicMapType_5796| Heap@@12) o_20@@0 f_31@@0 v@@5) (|PolymorphicMapType_5796_5856_14558#PolymorphicMapType_5796| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_5796) (o_20@@1 T@Ref) (f_31@@1 T@Field_11875_3010) (v@@6 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_5796 (|PolymorphicMapType_5796_3700_53#PolymorphicMapType_5796| Heap@@13) (|PolymorphicMapType_5796_3703_3704#PolymorphicMapType_5796| Heap@@13) (store (|PolymorphicMapType_5796_3890_3010#PolymorphicMapType_5796| Heap@@13) o_20@@1 f_31@@1 v@@6) (|PolymorphicMapType_5796_3890_14735#PolymorphicMapType_5796| Heap@@13) (|PolymorphicMapType_5796_5856_14558#PolymorphicMapType_5796| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5796 (|PolymorphicMapType_5796_3700_53#PolymorphicMapType_5796| Heap@@13) (|PolymorphicMapType_5796_3703_3704#PolymorphicMapType_5796| Heap@@13) (store (|PolymorphicMapType_5796_3890_3010#PolymorphicMapType_5796| Heap@@13) o_20@@1 f_31@@1 v@@6) (|PolymorphicMapType_5796_3890_14735#PolymorphicMapType_5796| Heap@@13) (|PolymorphicMapType_5796_5856_14558#PolymorphicMapType_5796| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_5796) (o_20@@2 T@Ref) (f_31@@2 T@Field_5869_5870) (v@@7 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_5796 (|PolymorphicMapType_5796_3700_53#PolymorphicMapType_5796| Heap@@14) (store (|PolymorphicMapType_5796_3703_3704#PolymorphicMapType_5796| Heap@@14) o_20@@2 f_31@@2 v@@7) (|PolymorphicMapType_5796_3890_3010#PolymorphicMapType_5796| Heap@@14) (|PolymorphicMapType_5796_3890_14735#PolymorphicMapType_5796| Heap@@14) (|PolymorphicMapType_5796_5856_14558#PolymorphicMapType_5796| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5796 (|PolymorphicMapType_5796_3700_53#PolymorphicMapType_5796| Heap@@14) (store (|PolymorphicMapType_5796_3703_3704#PolymorphicMapType_5796| Heap@@14) o_20@@2 f_31@@2 v@@7) (|PolymorphicMapType_5796_3890_3010#PolymorphicMapType_5796| Heap@@14) (|PolymorphicMapType_5796_3890_14735#PolymorphicMapType_5796| Heap@@14) (|PolymorphicMapType_5796_5856_14558#PolymorphicMapType_5796| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_5796) (o_20@@3 T@Ref) (f_31@@3 T@Field_5856_53) (v@@8 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_5796 (store (|PolymorphicMapType_5796_3700_53#PolymorphicMapType_5796| Heap@@15) o_20@@3 f_31@@3 v@@8) (|PolymorphicMapType_5796_3703_3704#PolymorphicMapType_5796| Heap@@15) (|PolymorphicMapType_5796_3890_3010#PolymorphicMapType_5796| Heap@@15) (|PolymorphicMapType_5796_3890_14735#PolymorphicMapType_5796| Heap@@15) (|PolymorphicMapType_5796_5856_14558#PolymorphicMapType_5796| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5796 (store (|PolymorphicMapType_5796_3700_53#PolymorphicMapType_5796| Heap@@15) o_20@@3 f_31@@3 v@@8) (|PolymorphicMapType_5796_3703_3704#PolymorphicMapType_5796| Heap@@15) (|PolymorphicMapType_5796_3890_3010#PolymorphicMapType_5796| Heap@@15) (|PolymorphicMapType_5796_3890_14735#PolymorphicMapType_5796| Heap@@15) (|PolymorphicMapType_5796_5856_14558#PolymorphicMapType_5796| Heap@@15)))
)))
(assert (forall ((s@@25 T@Seq_11920) (t@@9 T@Seq_11920) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_3894| s@@25))) (= (|Seq#Drop_3894| (|Seq#Append_11920| s@@25 t@@9) n@@19) (|Seq#Append_11920| (|Seq#Drop_3894| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.377:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3894| (|Seq#Append_11920| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_2888) (t@@10 T@Seq_2888) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_2888| s@@26))) (= (|Seq#Drop_2888| (|Seq#Append_2888| s@@26 t@@10) n@@20) (|Seq#Append_2888| (|Seq#Drop_2888| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.377:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_2888| (|Seq#Append_2888| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_11920) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_3894| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_3894| (|Seq#Drop_3894| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_3894| s@@27 i@@7))))
 :qid |stdinbpl.313:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3894| s@@27 n@@21) (|Seq#Index_3894| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_2888) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_2888| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_2888| (|Seq#Drop_2888| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_2888| s@@28 i@@8))))
 :qid |stdinbpl.313:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_2888| s@@28 n@@22) (|Seq#Index_2888| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_11920) (s1@@7 T@Seq_11920) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_3894|)) (not (= s1@@7 |Seq#Empty_3894|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_3894| s0@@7))) (= (|Seq#Index_3894| (|Seq#Append_11920| s0@@7 s1@@7) n@@23) (|Seq#Index_3894| s0@@7 n@@23)))
 :qid |stdinbpl.253:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3894| (|Seq#Append_11920| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_3894| s0@@7 n@@23) (|Seq#Append_11920| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_2888) (s1@@8 T@Seq_2888) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_2888|)) (not (= s1@@8 |Seq#Empty_2888|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_2888| s0@@8))) (= (|Seq#Index_2888| (|Seq#Append_2888| s0@@8 s1@@8) n@@24) (|Seq#Index_2888| s0@@8 n@@24)))
 :qid |stdinbpl.253:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2888| (|Seq#Append_2888| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_2888| s0@@8 n@@24) (|Seq#Append_2888| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_11920) (s1@@9 T@Seq_11920) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_3894|)) (not (= s1@@9 |Seq#Empty_3894|))) (<= 0 m)) (< m (|Seq#Length_3894| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_3894| s0@@9)) (|Seq#Length_3894| s0@@9)) m) (= (|Seq#Index_3894| (|Seq#Append_11920| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_3894| s0@@9))) (|Seq#Index_3894| s1@@9 m))))
 :qid |stdinbpl.258:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3894| s1@@9 m) (|Seq#Append_11920| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_2888) (s1@@10 T@Seq_2888) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_2888|)) (not (= s1@@10 |Seq#Empty_2888|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_2888| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_2888| s0@@10)) (|Seq#Length_2888| s0@@10)) m@@0) (= (|Seq#Index_2888| (|Seq#Append_2888| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_2888| s0@@10))) (|Seq#Index_2888| s1@@10 m@@0))))
 :qid |stdinbpl.258:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2888| s1@@10 m@@0) (|Seq#Append_2888| s0@@10 s1@@10))
)))
(assert (forall ((o_20@@4 T@Ref) (f_17 T@Field_5869_5870) (Heap@@16 T@PolymorphicMapType_5796) ) (!  (=> (select (|PolymorphicMapType_5796_3700_53#PolymorphicMapType_5796| Heap@@16) o_20@@4 $allocated) (select (|PolymorphicMapType_5796_3700_53#PolymorphicMapType_5796| Heap@@16) (select (|PolymorphicMapType_5796_3703_3704#PolymorphicMapType_5796| Heap@@16) o_20@@4 f_17) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_5796_3703_3704#PolymorphicMapType_5796| Heap@@16) o_20@@4 f_17))
)))
(assert (forall ((s@@29 T@Seq_11920) (x@@3 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_3894| s@@29))) (= (|Seq#Index_3894| s@@29 i@@9) x@@3)) (|Seq#Contains_11920| s@@29 x@@3))
 :qid |stdinbpl.410:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_11920| s@@29 x@@3) (|Seq#Index_3894| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_2888) (x@@4 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_2888| s@@30))) (= (|Seq#Index_2888| s@@30 i@@10) x@@4)) (|Seq#Contains_2888| s@@30 x@@4))
 :qid |stdinbpl.410:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2888| s@@30 x@@4) (|Seq#Index_2888| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_11920) (s1@@11 T@Seq_11920) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_11920| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_11920| s0@@11 s1@@11))) (not (= (|Seq#Length_3894| s0@@11) (|Seq#Length_3894| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_11920| s0@@11 s1@@11))) (= (|Seq#Length_3894| s0@@11) (|Seq#Length_3894| s1@@11))) (= (|Seq#SkolemDiff_11920| s0@@11 s1@@11) (|Seq#SkolemDiff_11920| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_11920| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_11920| s0@@11 s1@@11) (|Seq#Length_3894| s0@@11))) (not (= (|Seq#Index_3894| s0@@11 (|Seq#SkolemDiff_11920| s0@@11 s1@@11)) (|Seq#Index_3894| s1@@11 (|Seq#SkolemDiff_11920| s0@@11 s1@@11))))))
 :qid |stdinbpl.514:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_11920| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_2888) (s1@@12 T@Seq_2888) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_2888| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2888| s0@@12 s1@@12))) (not (= (|Seq#Length_2888| s0@@12) (|Seq#Length_2888| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2888| s0@@12 s1@@12))) (= (|Seq#Length_2888| s0@@12) (|Seq#Length_2888| s1@@12))) (= (|Seq#SkolemDiff_2888| s0@@12 s1@@12) (|Seq#SkolemDiff_2888| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_2888| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_2888| s0@@12 s1@@12) (|Seq#Length_2888| s0@@12))) (not (= (|Seq#Index_2888| s0@@12 (|Seq#SkolemDiff_2888| s0@@12 s1@@12)) (|Seq#Index_2888| s1@@12 (|Seq#SkolemDiff_2888| s0@@12 s1@@12))))))
 :qid |stdinbpl.514:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_2888| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_3890_14558) (v_1@@0 T@FrameType) (q T@Field_3890_14558) (w@@0 T@FrameType) (r T@Field_3890_14558) (u T@FrameType) ) (!  (=> (and (InsidePredicate_5856_5856 p@@1 v_1@@0 q w@@0) (InsidePredicate_5856_5856 q w@@0 r u)) (InsidePredicate_5856_5856 p@@1 v_1@@0 r u))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5856_5856 p@@1 v_1@@0 q w@@0) (InsidePredicate_5856_5856 q w@@0 r u))
)))
(assert (forall ((s@@31 T@Seq_11920) ) (!  (=> (= (|Seq#Length_3894| s@@31) 0) (= s@@31 |Seq#Empty_3894|))
 :qid |stdinbpl.217:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3894| s@@31))
)))
(assert (forall ((s@@32 T@Seq_2888) ) (!  (=> (= (|Seq#Length_2888| s@@32) 0) (= s@@32 |Seq#Empty_2888|))
 :qid |stdinbpl.217:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2888| s@@32))
)))
(assert (forall ((s@@33 T@Seq_11920) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_3894| s@@33 n@@25) |Seq#Empty_3894|))
 :qid |stdinbpl.393:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3894| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_2888) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_2888| s@@34 n@@26) |Seq#Empty_2888|))
 :qid |stdinbpl.393:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_2888| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun i_4 () Int)
(declare-fun x@@5 () T@Seq_11920)
(declare-fun y_3_2@0 () T@Ref)
(declare-fun QPMask@0 () T@PolymorphicMapType_5817)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) Int)
(declare-fun Heap@@17 () T@PolymorphicMapType_5796)
(declare-fun i_2 () Int)
(declare-fun y@0 () T@Ref)
(declare-fun i_14 () Int)
(declare-fun j_5 () Int)
(set-info :boogie-vc-id bar_1)
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
 (=> (= (ControlFlow 0 0) 28) (let ((anon13_correct true))
(let ((anon21_Else_correct  (=> (and (not (and (<= 0 i_4) (< i_4 (|Seq#Length_3894| x@@5)))) (= (ControlFlow 0 23) 18)) anon13_correct)))
(let ((anon21_Then_correct  (=> (and (<= 0 i_4) (< i_4 (|Seq#Length_3894| x@@5))) (and (=> (= (ControlFlow 0 19) (- 0 22)) (>= i_4 0)) (=> (>= i_4 0) (and (=> (= (ControlFlow 0 19) (- 0 21)) (< i_4 (|Seq#Length_3894| x@@5))) (=> (< i_4 (|Seq#Length_3894| x@@5)) (=> (= y_3_2@0 (|Seq#Index_3894| x@@5 i_4)) (and (=> (= (ControlFlow 0 19) (- 0 20)) (HasDirectPerm_3890_3010 QPMask@0 y_3_2@0 f_7)) (=> (HasDirectPerm_3890_3010 QPMask@0 y_3_2@0 f_7) (=> (= (ControlFlow 0 19) 18) anon13_correct)))))))))))
(let ((anon20_Else_correct true))
(let ((anon17_Else_correct  (and (=> (= (ControlFlow 0 24) (- 0 25)) (forall ((i_3 Int) (i_3_1 Int) ) (!  (=> (and (and (and (and (not (= i_3 i_3_1)) (and (<= 0 i_3) (< i_3 (|Seq#Length_3894| x@@5)))) (and (<= 0 i_3_1) (< i_3_1 (|Seq#Length_3894| x@@5)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_3894| x@@5 i_3) (|Seq#Index_3894| x@@5 i_3_1))))
 :qid |stdinbpl.626:15|
 :skolemid |59|
))) (=> (forall ((i_3@@0 Int) (i_3_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_3@@0 i_3_1@@0)) (and (<= 0 i_3@@0) (< i_3@@0 (|Seq#Length_3894| x@@5)))) (and (<= 0 i_3_1@@0) (< i_3_1@@0 (|Seq#Length_3894| x@@5)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_3894| x@@5 i_3@@0) (|Seq#Index_3894| x@@5 i_3_1@@0))))
 :qid |stdinbpl.626:15|
 :skolemid |59|
)) (=> (and (and (forall ((i_3@@1 Int) ) (!  (=> (and (and (<= 0 i_3@@1) (< i_3@@1 (|Seq#Length_3894| x@@5))) (< NoPerm FullPerm)) (and (qpRange1 (|Seq#Index_3894| x@@5 i_3@@1)) (= (invRecv1 (|Seq#Index_3894| x@@5 i_3@@1)) i_3@@1)))
 :qid |stdinbpl.632:22|
 :skolemid |60|
 :pattern ( (|Seq#Index_3894| x@@5 i_3@@1))
 :pattern ( (|Seq#Index_3894| x@@5 i_3@@1))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv1 o_4)) (< (invRecv1 o_4) (|Seq#Length_3894| x@@5))) (< NoPerm FullPerm)) (qpRange1 o_4)) (= (|Seq#Index_3894| x@@5 (invRecv1 o_4)) o_4))
 :qid |stdinbpl.636:22|
 :skolemid |61|
 :pattern ( (invRecv1 o_4))
))) (and (forall ((i_3@@2 Int) ) (!  (=> (and (<= 0 i_3@@2) (< i_3@@2 (|Seq#Length_3894| x@@5))) (not (= (|Seq#Index_3894| x@@5 i_3@@2) null)))
 :qid |stdinbpl.642:22|
 :skolemid |62|
 :pattern ( (|Seq#Index_3894| x@@5 i_3@@2))
 :pattern ( (|Seq#Index_3894| x@@5 i_3@@2))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv1 o_4@@0)) (< (invRecv1 o_4@@0) (|Seq#Length_3894| x@@5))) (< NoPerm FullPerm)) (qpRange1 o_4@@0)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_3894| x@@5 (invRecv1 o_4@@0)) o_4@@0)) (= (select (|PolymorphicMapType_5817_3890_3010#PolymorphicMapType_5817| QPMask@0) o_4@@0 f_7) (+ (select (|PolymorphicMapType_5817_3890_3010#PolymorphicMapType_5817| ZeroMask) o_4@@0 f_7) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv1 o_4@@0)) (< (invRecv1 o_4@@0) (|Seq#Length_3894| x@@5))) (< NoPerm FullPerm)) (qpRange1 o_4@@0))) (= (select (|PolymorphicMapType_5817_3890_3010#PolymorphicMapType_5817| QPMask@0) o_4@@0 f_7) (select (|PolymorphicMapType_5817_3890_3010#PolymorphicMapType_5817| ZeroMask) o_4@@0 f_7))))
 :qid |stdinbpl.648:22|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_5817_3890_3010#PolymorphicMapType_5817| QPMask@0) o_4@@0 f_7))
)))) (=> (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_5856_53) ) (!  (=> true (= (select (|PolymorphicMapType_5817_3890_53#PolymorphicMapType_5817| ZeroMask) o_4@@1 f_5) (select (|PolymorphicMapType_5817_3890_53#PolymorphicMapType_5817| QPMask@0) o_4@@1 f_5)))
 :qid |stdinbpl.652:29|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_5817_3890_53#PolymorphicMapType_5817| ZeroMask) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_5817_3890_53#PolymorphicMapType_5817| QPMask@0) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_5869_5870) ) (!  (=> true (= (select (|PolymorphicMapType_5817_3890_5870#PolymorphicMapType_5817| ZeroMask) o_4@@2 f_5@@0) (select (|PolymorphicMapType_5817_3890_5870#PolymorphicMapType_5817| QPMask@0) o_4@@2 f_5@@0)))
 :qid |stdinbpl.652:29|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_5817_3890_5870#PolymorphicMapType_5817| ZeroMask) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_5817_3890_5870#PolymorphicMapType_5817| QPMask@0) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_11875_3010) ) (!  (=> (not (= f_5@@1 f_7)) (= (select (|PolymorphicMapType_5817_3890_3010#PolymorphicMapType_5817| ZeroMask) o_4@@3 f_5@@1) (select (|PolymorphicMapType_5817_3890_3010#PolymorphicMapType_5817| QPMask@0) o_4@@3 f_5@@1)))
 :qid |stdinbpl.652:29|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_5817_3890_3010#PolymorphicMapType_5817| ZeroMask) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_5817_3890_3010#PolymorphicMapType_5817| QPMask@0) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_3890_14558) ) (!  (=> true (= (select (|PolymorphicMapType_5817_3890_14558#PolymorphicMapType_5817| ZeroMask) o_4@@4 f_5@@2) (select (|PolymorphicMapType_5817_3890_14558#PolymorphicMapType_5817| QPMask@0) o_4@@4 f_5@@2)))
 :qid |stdinbpl.652:29|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_5817_3890_14558#PolymorphicMapType_5817| ZeroMask) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_5817_3890_14558#PolymorphicMapType_5817| QPMask@0) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_3890_14691) ) (!  (=> true (= (select (|PolymorphicMapType_5817_3890_18813#PolymorphicMapType_5817| ZeroMask) o_4@@5 f_5@@3) (select (|PolymorphicMapType_5817_3890_18813#PolymorphicMapType_5817| QPMask@0) o_4@@5 f_5@@3)))
 :qid |stdinbpl.652:29|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_5817_3890_18813#PolymorphicMapType_5817| ZeroMask) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_5817_3890_18813#PolymorphicMapType_5817| QPMask@0) o_4@@5 f_5@@3))
))) (state Heap@@17 QPMask@0)) (and (and (=> (= (ControlFlow 0 24) 17) anon20_Else_correct) (=> (= (ControlFlow 0 24) 19) anon21_Then_correct)) (=> (= (ControlFlow 0 24) 23) anon21_Else_correct))))))))
(let ((anon9_correct true))
(let ((anon19_Else_correct  (=> (and (not (and (<= 0 i_2) (< i_2 (|Seq#Length_3894| x@@5)))) (= (ControlFlow 0 12) 8)) anon9_correct)))
(let ((anon19_Then_correct  (=> (and (<= 0 i_2) (< i_2 (|Seq#Length_3894| x@@5))) (and (=> (= (ControlFlow 0 9) (- 0 11)) (>= i_2 0)) (=> (>= i_2 0) (and (=> (= (ControlFlow 0 9) (- 0 10)) (< i_2 (|Seq#Length_3894| x@@5))) (=> (< i_2 (|Seq#Length_3894| x@@5)) (=> (= (ControlFlow 0 9) 8) anon9_correct))))))))
(let ((anon18_Else_correct  (=> (not (and (<= 0 i_2) (< i_2 (|Seq#Length_3894| x@@5)))) (and (=> (= (ControlFlow 0 16) 9) anon19_Then_correct) (=> (= (ControlFlow 0 16) 12) anon19_Else_correct)))))
(let ((anon18_Then_correct  (=> (and (<= 0 i_2) (< i_2 (|Seq#Length_3894| x@@5))) (and (=> (= (ControlFlow 0 13) (- 0 15)) (>= i_2 0)) (=> (>= i_2 0) (and (=> (= (ControlFlow 0 13) (- 0 14)) (< i_2 (|Seq#Length_3894| x@@5))) (=> (< i_2 (|Seq#Length_3894| x@@5)) (=> (= y@0 (|Seq#Index_3894| x@@5 i_2)) (and (=> (= (ControlFlow 0 13) 9) anon19_Then_correct) (=> (= (ControlFlow 0 13) 12) anon19_Else_correct))))))))))
(let ((anon15_Else_correct  (=> (and (forall ((i_1 Int) (j_1 Int) ) (!  (=> (and (<= 0 i_1) (and (< i_1 (|Seq#Length_3894| x@@5)) (and (<= 0 j_1) (and (< j_1 (|Seq#Length_3894| x@@5)) (not (= i_1 j_1)))))) (not (= (|Seq#Index_3894| x@@5 i_1) (|Seq#Index_3894| x@@5 j_1))))
 :qid |stdinbpl.601:20|
 :skolemid |58|
 :pattern ( (|Seq#Index_3894| x@@5 i_1) (|Seq#Index_3894| x@@5 j_1))
)) (state Heap@@17 ZeroMask)) (and (and (=> (= (ControlFlow 0 26) 24) anon17_Else_correct) (=> (= (ControlFlow 0 26) 13) anon18_Then_correct)) (=> (= (ControlFlow 0 26) 16) anon18_Else_correct)))))
(let ((anon3_correct true))
(let ((anon16_Else_correct  (=> (and (not (and (<= 0 i_14) (and (< i_14 (|Seq#Length_3894| x@@5)) (and (<= 0 j_5) (and (< j_5 (|Seq#Length_3894| x@@5)) (not (= i_14 j_5))))))) (= (ControlFlow 0 7) 1)) anon3_correct)))
(let ((anon16_Then_correct  (=> (and (<= 0 i_14) (and (< i_14 (|Seq#Length_3894| x@@5)) (and (<= 0 j_5) (and (< j_5 (|Seq#Length_3894| x@@5)) (not (= i_14 j_5)))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= i_14 0)) (=> (>= i_14 0) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< i_14 (|Seq#Length_3894| x@@5))) (=> (< i_14 (|Seq#Length_3894| x@@5)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= j_5 0)) (=> (>= j_5 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< j_5 (|Seq#Length_3894| x@@5))) (=> (< j_5 (|Seq#Length_3894| x@@5)) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))))))))
(let ((anon0_correct  (=> (and (state Heap@@17 ZeroMask) AssumePermUpperBound) (and (and (=> (= (ControlFlow 0 27) 26) anon15_Else_correct) (=> (= (ControlFlow 0 27) 2) anon16_Then_correct)) (=> (= (ControlFlow 0 27) 7) anon16_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 28) 27) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid