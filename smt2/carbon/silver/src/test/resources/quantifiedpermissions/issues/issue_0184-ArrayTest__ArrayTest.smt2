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
(declare-sort T@Field_9856_53 0)
(declare-sort T@Field_9869_9870 0)
(declare-sort T@Field_15880_15885 0)
(declare-sort T@Seq_15883 0)
(declare-sort T@Field_15994_3074 0)
(declare-sort T@Field_5804_30135 0)
(declare-sort T@Field_5804_30002 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_9817 0)) (((PolymorphicMapType_9817 (|PolymorphicMapType_9817_5800_16678#PolymorphicMapType_9817| (Array T@Ref T@Field_15880_15885 Real)) (|PolymorphicMapType_9817_5804_5805#PolymorphicMapType_9817| (Array T@Ref T@Field_9869_9870 Real)) (|PolymorphicMapType_9817_5807_3074#PolymorphicMapType_9817| (Array T@Ref T@Field_15994_3074 Real)) (|PolymorphicMapType_9817_5800_53#PolymorphicMapType_9817| (Array T@Ref T@Field_9856_53 Real)) (|PolymorphicMapType_9817_5800_30002#PolymorphicMapType_9817| (Array T@Ref T@Field_5804_30002 Real)) (|PolymorphicMapType_9817_5800_34814#PolymorphicMapType_9817| (Array T@Ref T@Field_5804_30135 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10345 0)) (((PolymorphicMapType_10345 (|PolymorphicMapType_10345_9856_53#PolymorphicMapType_10345| (Array T@Ref T@Field_9856_53 Bool)) (|PolymorphicMapType_10345_9856_9870#PolymorphicMapType_10345| (Array T@Ref T@Field_9869_9870 Bool)) (|PolymorphicMapType_10345_9856_15885#PolymorphicMapType_10345| (Array T@Ref T@Field_15880_15885 Bool)) (|PolymorphicMapType_10345_9856_3074#PolymorphicMapType_10345| (Array T@Ref T@Field_15994_3074 Bool)) (|PolymorphicMapType_10345_9856_30002#PolymorphicMapType_10345| (Array T@Ref T@Field_5804_30002 Bool)) (|PolymorphicMapType_10345_9856_31517#PolymorphicMapType_10345| (Array T@Ref T@Field_5804_30135 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9796 0)) (((PolymorphicMapType_9796 (|PolymorphicMapType_9796_5607_53#PolymorphicMapType_9796| (Array T@Ref T@Field_9856_53 Bool)) (|PolymorphicMapType_9796_5610_5611#PolymorphicMapType_9796| (Array T@Ref T@Field_9869_9870 T@Ref)) (|PolymorphicMapType_9796_5800_18568#PolymorphicMapType_9796| (Array T@Ref T@Field_15880_15885 T@Seq_15883)) (|PolymorphicMapType_9796_5807_3074#PolymorphicMapType_9796| (Array T@Ref T@Field_15994_3074 Int)) (|PolymorphicMapType_9796_5804_30179#PolymorphicMapType_9796| (Array T@Ref T@Field_5804_30135 T@PolymorphicMapType_10345)) (|PolymorphicMapType_9796_9856_30002#PolymorphicMapType_9796| (Array T@Ref T@Field_5804_30002 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_9856_53)
(declare-fun ArrayTest__x () T@Field_15880_15885)
(declare-fun ArrayTest__twin () T@Field_9869_9870)
(declare-fun Ref__Integer_value () T@Field_15994_3074)
(declare-fun |Seq#Length_5801| (T@Seq_15883) Int)
(declare-fun |Seq#Drop_5801| (T@Seq_15883 Int) T@Seq_15883)
(declare-sort T@Seq_2912 0)
(declare-fun |Seq#Length_2912| (T@Seq_2912) Int)
(declare-fun |Seq#Drop_2912| (T@Seq_2912 Int) T@Seq_2912)
(declare-fun succHeap (T@PolymorphicMapType_9796 T@PolymorphicMapType_9796) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_9796 T@PolymorphicMapType_9796) Bool)
(declare-fun state (T@PolymorphicMapType_9796 T@PolymorphicMapType_9817) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_9817) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_10345)
(declare-fun |Seq#Index_5801| (T@Seq_15883 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_2912| (T@Seq_2912 Int) Int)
(declare-fun |Seq#Empty_5801| () T@Seq_15883)
(declare-fun |Seq#Empty_2912| () T@Seq_2912)
(declare-fun |Seq#Update_5801| (T@Seq_15883 Int T@Ref) T@Seq_15883)
(declare-fun |Seq#Update_2912| (T@Seq_2912 Int Int) T@Seq_2912)
(declare-fun |Seq#Take_5801| (T@Seq_15883 Int) T@Seq_15883)
(declare-fun |Seq#Take_2912| (T@Seq_2912 Int) T@Seq_2912)
(declare-fun |Seq#Contains_2912| (T@Seq_2912 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2912)
(declare-fun |Seq#Contains_15883| (T@Seq_15883 T@Ref) Bool)
(declare-fun |Seq#Skolem_15883| (T@Seq_15883 T@Ref) Int)
(declare-fun |Seq#Skolem_2912| (T@Seq_2912 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_9796 T@PolymorphicMapType_9796 T@PolymorphicMapType_9817) Bool)
(declare-fun IsPredicateField_5804_30093 (T@Field_5804_30002) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_5804 (T@Field_5804_30002) T@Field_5804_30135)
(declare-fun HasDirectPerm_5804_30066 (T@PolymorphicMapType_9817 T@Ref T@Field_5804_30002) Bool)
(declare-fun IsWandField_5804_32044 (T@Field_5804_30002) Bool)
(declare-fun WandMaskField_5804 (T@Field_5804_30002) T@Field_5804_30135)
(declare-fun |Seq#Singleton_5801| (T@Ref) T@Seq_15883)
(declare-fun |Seq#Singleton_2912| (Int) T@Seq_2912)
(declare-fun |Seq#Append_15883| (T@Seq_15883 T@Seq_15883) T@Seq_15883)
(declare-fun |Seq#Append_2912| (T@Seq_2912 T@Seq_2912) T@Seq_2912)
(declare-fun dummyHeap () T@PolymorphicMapType_9796)
(declare-fun ZeroMask () T@PolymorphicMapType_9817)
(declare-fun InsidePredicate_9856_9856 (T@Field_5804_30002 T@FrameType T@Field_5804_30002 T@FrameType) Bool)
(declare-fun IsPredicateField_5800_15907 (T@Field_15880_15885) Bool)
(declare-fun IsWandField_5800_15933 (T@Field_15880_15885) Bool)
(declare-fun IsPredicateField_5804_5805 (T@Field_9869_9870) Bool)
(declare-fun IsWandField_5804_5805 (T@Field_9869_9870) Bool)
(declare-fun IsPredicateField_5807_3074 (T@Field_15994_3074) Bool)
(declare-fun IsWandField_5807_3074 (T@Field_15994_3074) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5800_36149 (T@Field_5804_30135) Bool)
(declare-fun IsWandField_5800_36165 (T@Field_5804_30135) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_5800_53 (T@Field_9856_53) Bool)
(declare-fun IsWandField_5800_53 (T@Field_9856_53) Bool)
(declare-fun HasDirectPerm_5804_36686 (T@PolymorphicMapType_9817 T@Ref T@Field_5804_30135) Bool)
(declare-fun HasDirectPerm_5804_53 (T@PolymorphicMapType_9817 T@Ref T@Field_9856_53) Bool)
(declare-fun HasDirectPerm_5807_3074 (T@PolymorphicMapType_9817 T@Ref T@Field_15994_3074) Bool)
(declare-fun HasDirectPerm_5800_18501 (T@PolymorphicMapType_9817 T@Ref T@Field_15880_15885) Bool)
(declare-fun HasDirectPerm_5804_5805 (T@PolymorphicMapType_9817 T@Ref T@Field_9869_9870) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_9817 T@PolymorphicMapType_9817 T@PolymorphicMapType_9817) Bool)
(declare-fun |Seq#Equal_15883| (T@Seq_15883 T@Seq_15883) Bool)
(declare-fun |Seq#Equal_2912| (T@Seq_2912 T@Seq_2912) Bool)
(declare-fun |Seq#ContainsTrigger_5801| (T@Seq_15883 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_2912| (T@Seq_2912 Int) Bool)
(declare-fun |Seq#SkolemDiff_15883| (T@Seq_15883 T@Seq_15883) Int)
(declare-fun |Seq#SkolemDiff_2912| (T@Seq_2912 T@Seq_2912) Int)
(assert (forall ((s T@Seq_15883) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_5801| s)) (= (|Seq#Length_5801| (|Seq#Drop_5801| s n)) (- (|Seq#Length_5801| s) n))) (=> (< (|Seq#Length_5801| s) n) (= (|Seq#Length_5801| (|Seq#Drop_5801| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_5801| (|Seq#Drop_5801| s n)) (|Seq#Length_5801| s))))
 :qid |stdinbpl.291:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_5801| (|Seq#Drop_5801| s n)))
 :pattern ( (|Seq#Length_5801| s) (|Seq#Drop_5801| s n))
)))
(assert (forall ((s@@0 T@Seq_2912) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_2912| s@@0)) (= (|Seq#Length_2912| (|Seq#Drop_2912| s@@0 n@@0)) (- (|Seq#Length_2912| s@@0) n@@0))) (=> (< (|Seq#Length_2912| s@@0) n@@0) (= (|Seq#Length_2912| (|Seq#Drop_2912| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_2912| (|Seq#Drop_2912| s@@0 n@@0)) (|Seq#Length_2912| s@@0))))
 :qid |stdinbpl.291:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2912| (|Seq#Drop_2912| s@@0 n@@0)))
 :pattern ( (|Seq#Length_2912| s@@0) (|Seq#Drop_2912| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_9796) (Heap1 T@PolymorphicMapType_9796) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_9796) (Mask T@PolymorphicMapType_9817) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_9796) (Heap1@@0 T@PolymorphicMapType_9796) (Heap2 T@PolymorphicMapType_9796) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_5804_30135) ) (!  (not (select (|PolymorphicMapType_10345_9856_31517#PolymorphicMapType_10345| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10345_9856_31517#PolymorphicMapType_10345| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_5804_30002) ) (!  (not (select (|PolymorphicMapType_10345_9856_30002#PolymorphicMapType_10345| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10345_9856_30002#PolymorphicMapType_10345| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_15994_3074) ) (!  (not (select (|PolymorphicMapType_10345_9856_3074#PolymorphicMapType_10345| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10345_9856_3074#PolymorphicMapType_10345| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_15880_15885) ) (!  (not (select (|PolymorphicMapType_10345_9856_15885#PolymorphicMapType_10345| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10345_9856_15885#PolymorphicMapType_10345| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_9869_9870) ) (!  (not (select (|PolymorphicMapType_10345_9856_9870#PolymorphicMapType_10345| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10345_9856_9870#PolymorphicMapType_10345| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_9856_53) ) (!  (not (select (|PolymorphicMapType_10345_9856_53#PolymorphicMapType_10345| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10345_9856_53#PolymorphicMapType_10345| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((s@@1 T@Seq_15883) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_5801| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_5801| (|Seq#Drop_5801| s@@1 n@@1) j) (|Seq#Index_5801| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.312:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_5801| (|Seq#Drop_5801| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_2912) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_2912| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_2912| (|Seq#Drop_2912| s@@2 n@@2) j@@0) (|Seq#Index_2912| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.312:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2912| (|Seq#Drop_2912| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_5801| |Seq#Empty_5801|) 0))
(assert (= (|Seq#Length_2912| |Seq#Empty_2912|) 0))
(assert (forall ((s@@3 T@Seq_15883) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_5801| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_5801| (|Seq#Update_5801| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_5801| (|Seq#Update_5801| s@@3 i v) n@@3) (|Seq#Index_5801| s@@3 n@@3)))))
 :qid |stdinbpl.267:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_5801| (|Seq#Update_5801| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_5801| s@@3 n@@3) (|Seq#Update_5801| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_2912) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_2912| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_2912| (|Seq#Update_2912| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_2912| (|Seq#Update_2912| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_2912| s@@4 n@@4)))))
 :qid |stdinbpl.267:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2912| (|Seq#Update_2912| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_2912| s@@4 n@@4) (|Seq#Update_2912| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_15883) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_5801| s@@5)) (= (|Seq#Length_5801| (|Seq#Take_5801| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_5801| s@@5) n@@5) (= (|Seq#Length_5801| (|Seq#Take_5801| s@@5 n@@5)) (|Seq#Length_5801| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_5801| (|Seq#Take_5801| s@@5 n@@5)) 0)))
 :qid |stdinbpl.278:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_5801| (|Seq#Take_5801| s@@5 n@@5)))
 :pattern ( (|Seq#Take_5801| s@@5 n@@5) (|Seq#Length_5801| s@@5))
)))
(assert (forall ((s@@6 T@Seq_2912) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_2912| s@@6)) (= (|Seq#Length_2912| (|Seq#Take_2912| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_2912| s@@6) n@@6) (= (|Seq#Length_2912| (|Seq#Take_2912| s@@6 n@@6)) (|Seq#Length_2912| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_2912| (|Seq#Take_2912| s@@6 n@@6)) 0)))
 :qid |stdinbpl.278:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2912| (|Seq#Take_2912| s@@6 n@@6)))
 :pattern ( (|Seq#Take_2912| s@@6 n@@6) (|Seq#Length_2912| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_2912| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.552:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2912| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_15883) (x T@Ref) ) (!  (=> (|Seq#Contains_15883| s@@7 x) (and (and (<= 0 (|Seq#Skolem_15883| s@@7 x)) (< (|Seq#Skolem_15883| s@@7 x) (|Seq#Length_5801| s@@7))) (= (|Seq#Index_5801| s@@7 (|Seq#Skolem_15883| s@@7 x)) x)))
 :qid |stdinbpl.410:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_15883| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_2912) (x@@0 Int) ) (!  (=> (|Seq#Contains_2912| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_2912| s@@8 x@@0)) (< (|Seq#Skolem_2912| s@@8 x@@0) (|Seq#Length_2912| s@@8))) (= (|Seq#Index_2912| s@@8 (|Seq#Skolem_2912| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.410:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2912| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_15883) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_5801| s@@9 n@@7) s@@9))
 :qid |stdinbpl.394:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_5801| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_2912) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_2912| s@@10 n@@8) s@@10))
 :qid |stdinbpl.394:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_2912| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.247:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.245:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_9796) (ExhaleHeap T@PolymorphicMapType_9796) (Mask@@0 T@PolymorphicMapType_9817) (pm_f_1 T@Field_5804_30002) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_5804_30066 Mask@@0 null pm_f_1) (IsPredicateField_5804_30093 pm_f_1)) (= (select (|PolymorphicMapType_9796_5804_30179#PolymorphicMapType_9796| Heap@@0) null (PredicateMaskField_5804 pm_f_1)) (select (|PolymorphicMapType_9796_5804_30179#PolymorphicMapType_9796| ExhaleHeap) null (PredicateMaskField_5804 pm_f_1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_5804_30093 pm_f_1) (select (|PolymorphicMapType_9796_5804_30179#PolymorphicMapType_9796| ExhaleHeap) null (PredicateMaskField_5804 pm_f_1)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_9796) (ExhaleHeap@@0 T@PolymorphicMapType_9796) (Mask@@1 T@PolymorphicMapType_9817) (pm_f_1@@0 T@Field_5804_30002) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_5804_30066 Mask@@1 null pm_f_1@@0) (IsWandField_5804_32044 pm_f_1@@0)) (= (select (|PolymorphicMapType_9796_5804_30179#PolymorphicMapType_9796| Heap@@1) null (WandMaskField_5804 pm_f_1@@0)) (select (|PolymorphicMapType_9796_5804_30179#PolymorphicMapType_9796| ExhaleHeap@@0) null (WandMaskField_5804 pm_f_1@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_5804_32044 pm_f_1@@0) (select (|PolymorphicMapType_9796_5804_30179#PolymorphicMapType_9796| ExhaleHeap@@0) null (WandMaskField_5804 pm_f_1@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_15883| (|Seq#Singleton_5801| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.535:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_15883| (|Seq#Singleton_5801| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_2912| (|Seq#Singleton_2912| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.535:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2912| (|Seq#Singleton_2912| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_15883) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_5801| s@@11))) (= (|Seq#Index_5801| (|Seq#Take_5801| s@@11 n@@9) j@@3) (|Seq#Index_5801| s@@11 j@@3)))
 :qid |stdinbpl.286:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_5801| (|Seq#Take_5801| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_5801| s@@11 j@@3) (|Seq#Take_5801| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_2912) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_2912| s@@12))) (= (|Seq#Index_2912| (|Seq#Take_2912| s@@12 n@@10) j@@4) (|Seq#Index_2912| s@@12 j@@4)))
 :qid |stdinbpl.286:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2912| (|Seq#Take_2912| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_2912| s@@12 j@@4) (|Seq#Take_2912| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_15883) (t T@Seq_15883) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_5801| s@@13))) (< n@@11 (|Seq#Length_5801| (|Seq#Append_15883| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_5801| s@@13)) (|Seq#Length_5801| s@@13)) n@@11) (= (|Seq#Take_5801| (|Seq#Append_15883| s@@13 t) n@@11) (|Seq#Append_15883| s@@13 (|Seq#Take_5801| t (|Seq#Sub| n@@11 (|Seq#Length_5801| s@@13)))))))
 :qid |stdinbpl.371:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_5801| (|Seq#Append_15883| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_2912) (t@@0 T@Seq_2912) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_2912| s@@14))) (< n@@12 (|Seq#Length_2912| (|Seq#Append_2912| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_2912| s@@14)) (|Seq#Length_2912| s@@14)) n@@12) (= (|Seq#Take_2912| (|Seq#Append_2912| s@@14 t@@0) n@@12) (|Seq#Append_2912| s@@14 (|Seq#Take_2912| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_2912| s@@14)))))))
 :qid |stdinbpl.371:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2912| (|Seq#Append_2912| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_9796) (ExhaleHeap@@1 T@PolymorphicMapType_9796) (Mask@@2 T@PolymorphicMapType_9817) (o_4 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_9796_5607_53#PolymorphicMapType_9796| Heap@@2) o_4 $allocated) (select (|PolymorphicMapType_9796_5607_53#PolymorphicMapType_9796| ExhaleHeap@@1) o_4 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_9796_5607_53#PolymorphicMapType_9796| ExhaleHeap@@1) o_4 $allocated))
)))
(assert (forall ((p T@Field_5804_30002) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_9856_9856 p v_1 p w))
 :qid |stdinbpl.189:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_9856_9856 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_15883) (s1 T@Seq_15883) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_5801|)) (not (= s1 |Seq#Empty_5801|))) (<= (|Seq#Length_5801| s0) n@@13)) (< n@@13 (|Seq#Length_5801| (|Seq#Append_15883| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_5801| s0)) (|Seq#Length_5801| s0)) n@@13) (= (|Seq#Index_5801| (|Seq#Append_15883| s0 s1) n@@13) (|Seq#Index_5801| s1 (|Seq#Sub| n@@13 (|Seq#Length_5801| s0))))))
 :qid |stdinbpl.258:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_5801| (|Seq#Append_15883| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_2912) (s1@@0 T@Seq_2912) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_2912|)) (not (= s1@@0 |Seq#Empty_2912|))) (<= (|Seq#Length_2912| s0@@0) n@@14)) (< n@@14 (|Seq#Length_2912| (|Seq#Append_2912| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_2912| s0@@0)) (|Seq#Length_2912| s0@@0)) n@@14) (= (|Seq#Index_2912| (|Seq#Append_2912| s0@@0 s1@@0) n@@14) (|Seq#Index_2912| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_2912| s0@@0))))))
 :qid |stdinbpl.258:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2912| (|Seq#Append_2912| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_5800_15907 ArrayTest__x)))
(assert  (not (IsWandField_5800_15933 ArrayTest__x)))
(assert  (not (IsPredicateField_5804_5805 ArrayTest__twin)))
(assert  (not (IsWandField_5804_5805 ArrayTest__twin)))
(assert  (not (IsPredicateField_5807_3074 Ref__Integer_value)))
(assert  (not (IsWandField_5807_3074 Ref__Integer_value)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_9796) (ExhaleHeap@@2 T@PolymorphicMapType_9796) (Mask@@3 T@PolymorphicMapType_9817) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_9817) (o_2@@5 T@Ref) (f_4@@5 T@Field_5804_30135) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_9817_5800_34814#PolymorphicMapType_9817| Mask@@4) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_5800_36149 f_4@@5))) (not (IsWandField_5800_36165 f_4@@5))) (<= (select (|PolymorphicMapType_9817_5800_34814#PolymorphicMapType_9817| Mask@@4) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_9817_5800_34814#PolymorphicMapType_9817| Mask@@4) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_9817) (o_2@@6 T@Ref) (f_4@@6 T@Field_5804_30002) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_9817_5800_30002#PolymorphicMapType_9817| Mask@@5) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_5804_30093 f_4@@6))) (not (IsWandField_5804_32044 f_4@@6))) (<= (select (|PolymorphicMapType_9817_5800_30002#PolymorphicMapType_9817| Mask@@5) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_9817_5800_30002#PolymorphicMapType_9817| Mask@@5) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_9817) (o_2@@7 T@Ref) (f_4@@7 T@Field_9856_53) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_9817_5800_53#PolymorphicMapType_9817| Mask@@6) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_5800_53 f_4@@7))) (not (IsWandField_5800_53 f_4@@7))) (<= (select (|PolymorphicMapType_9817_5800_53#PolymorphicMapType_9817| Mask@@6) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_9817_5800_53#PolymorphicMapType_9817| Mask@@6) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_9817) (o_2@@8 T@Ref) (f_4@@8 T@Field_15994_3074) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_9817_5807_3074#PolymorphicMapType_9817| Mask@@7) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_5807_3074 f_4@@8))) (not (IsWandField_5807_3074 f_4@@8))) (<= (select (|PolymorphicMapType_9817_5807_3074#PolymorphicMapType_9817| Mask@@7) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_9817_5807_3074#PolymorphicMapType_9817| Mask@@7) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_9817) (o_2@@9 T@Ref) (f_4@@9 T@Field_9869_9870) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_9817_5804_5805#PolymorphicMapType_9817| Mask@@8) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_5804_5805 f_4@@9))) (not (IsWandField_5804_5805 f_4@@9))) (<= (select (|PolymorphicMapType_9817_5804_5805#PolymorphicMapType_9817| Mask@@8) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_9817_5804_5805#PolymorphicMapType_9817| Mask@@8) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_9817) (o_2@@10 T@Ref) (f_4@@10 T@Field_15880_15885) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_9817_5800_16678#PolymorphicMapType_9817| Mask@@9) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_5800_15907 f_4@@10))) (not (IsWandField_5800_15933 f_4@@10))) (<= (select (|PolymorphicMapType_9817_5800_16678#PolymorphicMapType_9817| Mask@@9) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_9817_5800_16678#PolymorphicMapType_9817| Mask@@9) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_9817) (o_2@@11 T@Ref) (f_4@@11 T@Field_5804_30135) ) (! (= (HasDirectPerm_5804_36686 Mask@@10 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_9817_5800_34814#PolymorphicMapType_9817| Mask@@10) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5804_36686 Mask@@10 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_9817) (o_2@@12 T@Ref) (f_4@@12 T@Field_5804_30002) ) (! (= (HasDirectPerm_5804_30066 Mask@@11 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_9817_5800_30002#PolymorphicMapType_9817| Mask@@11) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5804_30066 Mask@@11 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_9817) (o_2@@13 T@Ref) (f_4@@13 T@Field_9856_53) ) (! (= (HasDirectPerm_5804_53 Mask@@12 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_9817_5800_53#PolymorphicMapType_9817| Mask@@12) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5804_53 Mask@@12 o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_9817) (o_2@@14 T@Ref) (f_4@@14 T@Field_15994_3074) ) (! (= (HasDirectPerm_5807_3074 Mask@@13 o_2@@14 f_4@@14) (> (select (|PolymorphicMapType_9817_5807_3074#PolymorphicMapType_9817| Mask@@13) o_2@@14 f_4@@14) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5807_3074 Mask@@13 o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_9817) (o_2@@15 T@Ref) (f_4@@15 T@Field_15880_15885) ) (! (= (HasDirectPerm_5800_18501 Mask@@14 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_9817_5800_16678#PolymorphicMapType_9817| Mask@@14) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5800_18501 Mask@@14 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_9817) (o_2@@16 T@Ref) (f_4@@16 T@Field_9869_9870) ) (! (= (HasDirectPerm_5804_5805 Mask@@15 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_9817_5804_5805#PolymorphicMapType_9817| Mask@@15) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5804_5805 Mask@@15 o_2@@16 f_4@@16))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.177:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2912| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.550:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2912| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_9796) (ExhaleHeap@@3 T@PolymorphicMapType_9796) (Mask@@16 T@PolymorphicMapType_9817) (o_4@@0 T@Ref) (f_9 T@Field_5804_30135) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@16) (=> (HasDirectPerm_5804_36686 Mask@@16 o_4@@0 f_9) (= (select (|PolymorphicMapType_9796_5804_30179#PolymorphicMapType_9796| Heap@@4) o_4@@0 f_9) (select (|PolymorphicMapType_9796_5804_30179#PolymorphicMapType_9796| ExhaleHeap@@3) o_4@@0 f_9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@16) (select (|PolymorphicMapType_9796_5804_30179#PolymorphicMapType_9796| ExhaleHeap@@3) o_4@@0 f_9))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_9796) (ExhaleHeap@@4 T@PolymorphicMapType_9796) (Mask@@17 T@PolymorphicMapType_9817) (o_4@@1 T@Ref) (f_9@@0 T@Field_5804_30002) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@17) (=> (HasDirectPerm_5804_30066 Mask@@17 o_4@@1 f_9@@0) (= (select (|PolymorphicMapType_9796_9856_30002#PolymorphicMapType_9796| Heap@@5) o_4@@1 f_9@@0) (select (|PolymorphicMapType_9796_9856_30002#PolymorphicMapType_9796| ExhaleHeap@@4) o_4@@1 f_9@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@17) (select (|PolymorphicMapType_9796_9856_30002#PolymorphicMapType_9796| ExhaleHeap@@4) o_4@@1 f_9@@0))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_9796) (ExhaleHeap@@5 T@PolymorphicMapType_9796) (Mask@@18 T@PolymorphicMapType_9817) (o_4@@2 T@Ref) (f_9@@1 T@Field_9856_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@18) (=> (HasDirectPerm_5804_53 Mask@@18 o_4@@2 f_9@@1) (= (select (|PolymorphicMapType_9796_5607_53#PolymorphicMapType_9796| Heap@@6) o_4@@2 f_9@@1) (select (|PolymorphicMapType_9796_5607_53#PolymorphicMapType_9796| ExhaleHeap@@5) o_4@@2 f_9@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@18) (select (|PolymorphicMapType_9796_5607_53#PolymorphicMapType_9796| ExhaleHeap@@5) o_4@@2 f_9@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_9796) (ExhaleHeap@@6 T@PolymorphicMapType_9796) (Mask@@19 T@PolymorphicMapType_9817) (o_4@@3 T@Ref) (f_9@@2 T@Field_15994_3074) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@19) (=> (HasDirectPerm_5807_3074 Mask@@19 o_4@@3 f_9@@2) (= (select (|PolymorphicMapType_9796_5807_3074#PolymorphicMapType_9796| Heap@@7) o_4@@3 f_9@@2) (select (|PolymorphicMapType_9796_5807_3074#PolymorphicMapType_9796| ExhaleHeap@@6) o_4@@3 f_9@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@19) (select (|PolymorphicMapType_9796_5807_3074#PolymorphicMapType_9796| ExhaleHeap@@6) o_4@@3 f_9@@2))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_9796) (ExhaleHeap@@7 T@PolymorphicMapType_9796) (Mask@@20 T@PolymorphicMapType_9817) (o_4@@4 T@Ref) (f_9@@3 T@Field_15880_15885) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@20) (=> (HasDirectPerm_5800_18501 Mask@@20 o_4@@4 f_9@@3) (= (select (|PolymorphicMapType_9796_5800_18568#PolymorphicMapType_9796| Heap@@8) o_4@@4 f_9@@3) (select (|PolymorphicMapType_9796_5800_18568#PolymorphicMapType_9796| ExhaleHeap@@7) o_4@@4 f_9@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@20) (select (|PolymorphicMapType_9796_5800_18568#PolymorphicMapType_9796| ExhaleHeap@@7) o_4@@4 f_9@@3))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_9796) (ExhaleHeap@@8 T@PolymorphicMapType_9796) (Mask@@21 T@PolymorphicMapType_9817) (o_4@@5 T@Ref) (f_9@@4 T@Field_9869_9870) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@21) (=> (HasDirectPerm_5804_5805 Mask@@21 o_4@@5 f_9@@4) (= (select (|PolymorphicMapType_9796_5610_5611#PolymorphicMapType_9796| Heap@@9) o_4@@5 f_9@@4) (select (|PolymorphicMapType_9796_5610_5611#PolymorphicMapType_9796| ExhaleHeap@@8) o_4@@5 f_9@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@21) (select (|PolymorphicMapType_9796_5610_5611#PolymorphicMapType_9796| ExhaleHeap@@8) o_4@@5 f_9@@4))
)))
(assert (forall ((s0@@1 T@Seq_15883) (s1@@1 T@Seq_15883) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_5801|)) (not (= s1@@1 |Seq#Empty_5801|))) (= (|Seq#Length_5801| (|Seq#Append_15883| s0@@1 s1@@1)) (+ (|Seq#Length_5801| s0@@1) (|Seq#Length_5801| s1@@1))))
 :qid |stdinbpl.227:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_5801| (|Seq#Append_15883| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_2912) (s1@@2 T@Seq_2912) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_2912|)) (not (= s1@@2 |Seq#Empty_2912|))) (= (|Seq#Length_2912| (|Seq#Append_2912| s0@@2 s1@@2)) (+ (|Seq#Length_2912| s0@@2) (|Seq#Length_2912| s1@@2))))
 :qid |stdinbpl.227:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2912| (|Seq#Append_2912| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_5804_30135) ) (! (= (select (|PolymorphicMapType_9817_5800_34814#PolymorphicMapType_9817| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9817_5800_34814#PolymorphicMapType_9817| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_5804_30002) ) (! (= (select (|PolymorphicMapType_9817_5800_30002#PolymorphicMapType_9817| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9817_5800_30002#PolymorphicMapType_9817| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((o_2@@19 T@Ref) (f_4@@19 T@Field_9856_53) ) (! (= (select (|PolymorphicMapType_9817_5800_53#PolymorphicMapType_9817| ZeroMask) o_2@@19 f_4@@19) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9817_5800_53#PolymorphicMapType_9817| ZeroMask) o_2@@19 f_4@@19))
)))
(assert (forall ((o_2@@20 T@Ref) (f_4@@20 T@Field_15994_3074) ) (! (= (select (|PolymorphicMapType_9817_5807_3074#PolymorphicMapType_9817| ZeroMask) o_2@@20 f_4@@20) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9817_5807_3074#PolymorphicMapType_9817| ZeroMask) o_2@@20 f_4@@20))
)))
(assert (forall ((o_2@@21 T@Ref) (f_4@@21 T@Field_9869_9870) ) (! (= (select (|PolymorphicMapType_9817_5804_5805#PolymorphicMapType_9817| ZeroMask) o_2@@21 f_4@@21) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9817_5804_5805#PolymorphicMapType_9817| ZeroMask) o_2@@21 f_4@@21))
)))
(assert (forall ((o_2@@22 T@Ref) (f_4@@22 T@Field_15880_15885) ) (! (= (select (|PolymorphicMapType_9817_5800_16678#PolymorphicMapType_9817| ZeroMask) o_2@@22 f_4@@22) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9817_5800_16678#PolymorphicMapType_9817| ZeroMask) o_2@@22 f_4@@22))
)))
(assert (forall ((s@@15 T@Seq_15883) (t@@1 T@Seq_15883) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_5801| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_5801| s@@15)) (|Seq#Length_5801| s@@15)) n@@15) (= (|Seq#Drop_5801| (|Seq#Append_15883| s@@15 t@@1) n@@15) (|Seq#Drop_5801| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_5801| s@@15))))))
 :qid |stdinbpl.384:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_5801| (|Seq#Append_15883| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_2912) (t@@2 T@Seq_2912) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_2912| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_2912| s@@16)) (|Seq#Length_2912| s@@16)) n@@16) (= (|Seq#Drop_2912| (|Seq#Append_2912| s@@16 t@@2) n@@16) (|Seq#Drop_2912| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_2912| s@@16))))))
 :qid |stdinbpl.384:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_2912| (|Seq#Append_2912| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_9817) (SummandMask1 T@PolymorphicMapType_9817) (SummandMask2 T@PolymorphicMapType_9817) (o_2@@23 T@Ref) (f_4@@23 T@Field_5804_30135) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_9817_5800_34814#PolymorphicMapType_9817| ResultMask) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_9817_5800_34814#PolymorphicMapType_9817| SummandMask1) o_2@@23 f_4@@23) (select (|PolymorphicMapType_9817_5800_34814#PolymorphicMapType_9817| SummandMask2) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9817_5800_34814#PolymorphicMapType_9817| ResultMask) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9817_5800_34814#PolymorphicMapType_9817| SummandMask1) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9817_5800_34814#PolymorphicMapType_9817| SummandMask2) o_2@@23 f_4@@23))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_9817) (SummandMask1@@0 T@PolymorphicMapType_9817) (SummandMask2@@0 T@PolymorphicMapType_9817) (o_2@@24 T@Ref) (f_4@@24 T@Field_5804_30002) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_9817_5800_30002#PolymorphicMapType_9817| ResultMask@@0) o_2@@24 f_4@@24) (+ (select (|PolymorphicMapType_9817_5800_30002#PolymorphicMapType_9817| SummandMask1@@0) o_2@@24 f_4@@24) (select (|PolymorphicMapType_9817_5800_30002#PolymorphicMapType_9817| SummandMask2@@0) o_2@@24 f_4@@24))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9817_5800_30002#PolymorphicMapType_9817| ResultMask@@0) o_2@@24 f_4@@24))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9817_5800_30002#PolymorphicMapType_9817| SummandMask1@@0) o_2@@24 f_4@@24))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9817_5800_30002#PolymorphicMapType_9817| SummandMask2@@0) o_2@@24 f_4@@24))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_9817) (SummandMask1@@1 T@PolymorphicMapType_9817) (SummandMask2@@1 T@PolymorphicMapType_9817) (o_2@@25 T@Ref) (f_4@@25 T@Field_9856_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_9817_5800_53#PolymorphicMapType_9817| ResultMask@@1) o_2@@25 f_4@@25) (+ (select (|PolymorphicMapType_9817_5800_53#PolymorphicMapType_9817| SummandMask1@@1) o_2@@25 f_4@@25) (select (|PolymorphicMapType_9817_5800_53#PolymorphicMapType_9817| SummandMask2@@1) o_2@@25 f_4@@25))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9817_5800_53#PolymorphicMapType_9817| ResultMask@@1) o_2@@25 f_4@@25))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9817_5800_53#PolymorphicMapType_9817| SummandMask1@@1) o_2@@25 f_4@@25))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9817_5800_53#PolymorphicMapType_9817| SummandMask2@@1) o_2@@25 f_4@@25))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_9817) (SummandMask1@@2 T@PolymorphicMapType_9817) (SummandMask2@@2 T@PolymorphicMapType_9817) (o_2@@26 T@Ref) (f_4@@26 T@Field_15994_3074) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_9817_5807_3074#PolymorphicMapType_9817| ResultMask@@2) o_2@@26 f_4@@26) (+ (select (|PolymorphicMapType_9817_5807_3074#PolymorphicMapType_9817| SummandMask1@@2) o_2@@26 f_4@@26) (select (|PolymorphicMapType_9817_5807_3074#PolymorphicMapType_9817| SummandMask2@@2) o_2@@26 f_4@@26))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9817_5807_3074#PolymorphicMapType_9817| ResultMask@@2) o_2@@26 f_4@@26))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9817_5807_3074#PolymorphicMapType_9817| SummandMask1@@2) o_2@@26 f_4@@26))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9817_5807_3074#PolymorphicMapType_9817| SummandMask2@@2) o_2@@26 f_4@@26))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_9817) (SummandMask1@@3 T@PolymorphicMapType_9817) (SummandMask2@@3 T@PolymorphicMapType_9817) (o_2@@27 T@Ref) (f_4@@27 T@Field_9869_9870) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_9817_5804_5805#PolymorphicMapType_9817| ResultMask@@3) o_2@@27 f_4@@27) (+ (select (|PolymorphicMapType_9817_5804_5805#PolymorphicMapType_9817| SummandMask1@@3) o_2@@27 f_4@@27) (select (|PolymorphicMapType_9817_5804_5805#PolymorphicMapType_9817| SummandMask2@@3) o_2@@27 f_4@@27))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9817_5804_5805#PolymorphicMapType_9817| ResultMask@@3) o_2@@27 f_4@@27))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9817_5804_5805#PolymorphicMapType_9817| SummandMask1@@3) o_2@@27 f_4@@27))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9817_5804_5805#PolymorphicMapType_9817| SummandMask2@@3) o_2@@27 f_4@@27))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_9817) (SummandMask1@@4 T@PolymorphicMapType_9817) (SummandMask2@@4 T@PolymorphicMapType_9817) (o_2@@28 T@Ref) (f_4@@28 T@Field_15880_15885) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_9817_5800_16678#PolymorphicMapType_9817| ResultMask@@4) o_2@@28 f_4@@28) (+ (select (|PolymorphicMapType_9817_5800_16678#PolymorphicMapType_9817| SummandMask1@@4) o_2@@28 f_4@@28) (select (|PolymorphicMapType_9817_5800_16678#PolymorphicMapType_9817| SummandMask2@@4) o_2@@28 f_4@@28))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9817_5800_16678#PolymorphicMapType_9817| ResultMask@@4) o_2@@28 f_4@@28))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9817_5800_16678#PolymorphicMapType_9817| SummandMask1@@4) o_2@@28 f_4@@28))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9817_5800_16678#PolymorphicMapType_9817| SummandMask2@@4) o_2@@28 f_4@@28))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2912| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2912| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.549:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2912| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_15883) (b T@Seq_15883) ) (!  (=> (|Seq#Equal_15883| a b) (= a b))
 :qid |stdinbpl.522:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_15883| a b))
)))
(assert (forall ((a@@0 T@Seq_2912) (b@@0 T@Seq_2912) ) (!  (=> (|Seq#Equal_2912| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.522:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_2912| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_15883) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_5801| s@@17))) (|Seq#ContainsTrigger_5801| s@@17 (|Seq#Index_5801| s@@17 i@@3)))
 :qid |stdinbpl.415:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_5801| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_2912) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_2912| s@@18))) (|Seq#ContainsTrigger_2912| s@@18 (|Seq#Index_2912| s@@18 i@@4)))
 :qid |stdinbpl.415:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2912| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_15883) (s1@@3 T@Seq_15883) ) (!  (and (=> (= s0@@3 |Seq#Empty_5801|) (= (|Seq#Append_15883| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_5801|) (= (|Seq#Append_15883| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.233:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_15883| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2912) (s1@@4 T@Seq_2912) ) (!  (and (=> (= s0@@4 |Seq#Empty_2912|) (= (|Seq#Append_2912| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_2912|) (= (|Seq#Append_2912| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.233:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_2912| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_5801| (|Seq#Singleton_5801| t@@3) 0) t@@3)
 :qid |stdinbpl.237:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_5801| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_2912| (|Seq#Singleton_2912| t@@4) 0) t@@4)
 :qid |stdinbpl.237:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_2912| t@@4))
)))
(assert (forall ((s@@19 T@Seq_15883) ) (! (<= 0 (|Seq#Length_5801| s@@19))
 :qid |stdinbpl.216:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_5801| s@@19))
)))
(assert (forall ((s@@20 T@Seq_2912) ) (! (<= 0 (|Seq#Length_2912| s@@20))
 :qid |stdinbpl.216:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2912| s@@20))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_9796) (ExhaleHeap@@9 T@PolymorphicMapType_9796) (Mask@@22 T@PolymorphicMapType_9817) (pm_f_1@@1 T@Field_5804_30002) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@22) (=> (and (HasDirectPerm_5804_30066 Mask@@22 null pm_f_1@@1) (IsPredicateField_5804_30093 pm_f_1@@1)) (and (and (and (and (and (forall ((o2_1 T@Ref) (f_9@@5 T@Field_9856_53) ) (!  (=> (select (|PolymorphicMapType_10345_9856_53#PolymorphicMapType_10345| (select (|PolymorphicMapType_9796_5804_30179#PolymorphicMapType_9796| Heap@@10) null (PredicateMaskField_5804 pm_f_1@@1))) o2_1 f_9@@5) (= (select (|PolymorphicMapType_9796_5607_53#PolymorphicMapType_9796| Heap@@10) o2_1 f_9@@5) (select (|PolymorphicMapType_9796_5607_53#PolymorphicMapType_9796| ExhaleHeap@@9) o2_1 f_9@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9796_5607_53#PolymorphicMapType_9796| ExhaleHeap@@9) o2_1 f_9@@5))
)) (forall ((o2_1@@0 T@Ref) (f_9@@6 T@Field_9869_9870) ) (!  (=> (select (|PolymorphicMapType_10345_9856_9870#PolymorphicMapType_10345| (select (|PolymorphicMapType_9796_5804_30179#PolymorphicMapType_9796| Heap@@10) null (PredicateMaskField_5804 pm_f_1@@1))) o2_1@@0 f_9@@6) (= (select (|PolymorphicMapType_9796_5610_5611#PolymorphicMapType_9796| Heap@@10) o2_1@@0 f_9@@6) (select (|PolymorphicMapType_9796_5610_5611#PolymorphicMapType_9796| ExhaleHeap@@9) o2_1@@0 f_9@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9796_5610_5611#PolymorphicMapType_9796| ExhaleHeap@@9) o2_1@@0 f_9@@6))
))) (forall ((o2_1@@1 T@Ref) (f_9@@7 T@Field_15880_15885) ) (!  (=> (select (|PolymorphicMapType_10345_9856_15885#PolymorphicMapType_10345| (select (|PolymorphicMapType_9796_5804_30179#PolymorphicMapType_9796| Heap@@10) null (PredicateMaskField_5804 pm_f_1@@1))) o2_1@@1 f_9@@7) (= (select (|PolymorphicMapType_9796_5800_18568#PolymorphicMapType_9796| Heap@@10) o2_1@@1 f_9@@7) (select (|PolymorphicMapType_9796_5800_18568#PolymorphicMapType_9796| ExhaleHeap@@9) o2_1@@1 f_9@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9796_5800_18568#PolymorphicMapType_9796| ExhaleHeap@@9) o2_1@@1 f_9@@7))
))) (forall ((o2_1@@2 T@Ref) (f_9@@8 T@Field_15994_3074) ) (!  (=> (select (|PolymorphicMapType_10345_9856_3074#PolymorphicMapType_10345| (select (|PolymorphicMapType_9796_5804_30179#PolymorphicMapType_9796| Heap@@10) null (PredicateMaskField_5804 pm_f_1@@1))) o2_1@@2 f_9@@8) (= (select (|PolymorphicMapType_9796_5807_3074#PolymorphicMapType_9796| Heap@@10) o2_1@@2 f_9@@8) (select (|PolymorphicMapType_9796_5807_3074#PolymorphicMapType_9796| ExhaleHeap@@9) o2_1@@2 f_9@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9796_5807_3074#PolymorphicMapType_9796| ExhaleHeap@@9) o2_1@@2 f_9@@8))
))) (forall ((o2_1@@3 T@Ref) (f_9@@9 T@Field_5804_30002) ) (!  (=> (select (|PolymorphicMapType_10345_9856_30002#PolymorphicMapType_10345| (select (|PolymorphicMapType_9796_5804_30179#PolymorphicMapType_9796| Heap@@10) null (PredicateMaskField_5804 pm_f_1@@1))) o2_1@@3 f_9@@9) (= (select (|PolymorphicMapType_9796_9856_30002#PolymorphicMapType_9796| Heap@@10) o2_1@@3 f_9@@9) (select (|PolymorphicMapType_9796_9856_30002#PolymorphicMapType_9796| ExhaleHeap@@9) o2_1@@3 f_9@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9796_9856_30002#PolymorphicMapType_9796| ExhaleHeap@@9) o2_1@@3 f_9@@9))
))) (forall ((o2_1@@4 T@Ref) (f_9@@10 T@Field_5804_30135) ) (!  (=> (select (|PolymorphicMapType_10345_9856_31517#PolymorphicMapType_10345| (select (|PolymorphicMapType_9796_5804_30179#PolymorphicMapType_9796| Heap@@10) null (PredicateMaskField_5804 pm_f_1@@1))) o2_1@@4 f_9@@10) (= (select (|PolymorphicMapType_9796_5804_30179#PolymorphicMapType_9796| Heap@@10) o2_1@@4 f_9@@10) (select (|PolymorphicMapType_9796_5804_30179#PolymorphicMapType_9796| ExhaleHeap@@9) o2_1@@4 f_9@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9796_5804_30179#PolymorphicMapType_9796| ExhaleHeap@@9) o2_1@@4 f_9@@10))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@22) (IsPredicateField_5804_30093 pm_f_1@@1))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_9796) (ExhaleHeap@@10 T@PolymorphicMapType_9796) (Mask@@23 T@PolymorphicMapType_9817) (pm_f_1@@2 T@Field_5804_30002) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@23) (=> (and (HasDirectPerm_5804_30066 Mask@@23 null pm_f_1@@2) (IsWandField_5804_32044 pm_f_1@@2)) (and (and (and (and (and (forall ((o2_1@@5 T@Ref) (f_9@@11 T@Field_9856_53) ) (!  (=> (select (|PolymorphicMapType_10345_9856_53#PolymorphicMapType_10345| (select (|PolymorphicMapType_9796_5804_30179#PolymorphicMapType_9796| Heap@@11) null (WandMaskField_5804 pm_f_1@@2))) o2_1@@5 f_9@@11) (= (select (|PolymorphicMapType_9796_5607_53#PolymorphicMapType_9796| Heap@@11) o2_1@@5 f_9@@11) (select (|PolymorphicMapType_9796_5607_53#PolymorphicMapType_9796| ExhaleHeap@@10) o2_1@@5 f_9@@11)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9796_5607_53#PolymorphicMapType_9796| ExhaleHeap@@10) o2_1@@5 f_9@@11))
)) (forall ((o2_1@@6 T@Ref) (f_9@@12 T@Field_9869_9870) ) (!  (=> (select (|PolymorphicMapType_10345_9856_9870#PolymorphicMapType_10345| (select (|PolymorphicMapType_9796_5804_30179#PolymorphicMapType_9796| Heap@@11) null (WandMaskField_5804 pm_f_1@@2))) o2_1@@6 f_9@@12) (= (select (|PolymorphicMapType_9796_5610_5611#PolymorphicMapType_9796| Heap@@11) o2_1@@6 f_9@@12) (select (|PolymorphicMapType_9796_5610_5611#PolymorphicMapType_9796| ExhaleHeap@@10) o2_1@@6 f_9@@12)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9796_5610_5611#PolymorphicMapType_9796| ExhaleHeap@@10) o2_1@@6 f_9@@12))
))) (forall ((o2_1@@7 T@Ref) (f_9@@13 T@Field_15880_15885) ) (!  (=> (select (|PolymorphicMapType_10345_9856_15885#PolymorphicMapType_10345| (select (|PolymorphicMapType_9796_5804_30179#PolymorphicMapType_9796| Heap@@11) null (WandMaskField_5804 pm_f_1@@2))) o2_1@@7 f_9@@13) (= (select (|PolymorphicMapType_9796_5800_18568#PolymorphicMapType_9796| Heap@@11) o2_1@@7 f_9@@13) (select (|PolymorphicMapType_9796_5800_18568#PolymorphicMapType_9796| ExhaleHeap@@10) o2_1@@7 f_9@@13)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9796_5800_18568#PolymorphicMapType_9796| ExhaleHeap@@10) o2_1@@7 f_9@@13))
))) (forall ((o2_1@@8 T@Ref) (f_9@@14 T@Field_15994_3074) ) (!  (=> (select (|PolymorphicMapType_10345_9856_3074#PolymorphicMapType_10345| (select (|PolymorphicMapType_9796_5804_30179#PolymorphicMapType_9796| Heap@@11) null (WandMaskField_5804 pm_f_1@@2))) o2_1@@8 f_9@@14) (= (select (|PolymorphicMapType_9796_5807_3074#PolymorphicMapType_9796| Heap@@11) o2_1@@8 f_9@@14) (select (|PolymorphicMapType_9796_5807_3074#PolymorphicMapType_9796| ExhaleHeap@@10) o2_1@@8 f_9@@14)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9796_5807_3074#PolymorphicMapType_9796| ExhaleHeap@@10) o2_1@@8 f_9@@14))
))) (forall ((o2_1@@9 T@Ref) (f_9@@15 T@Field_5804_30002) ) (!  (=> (select (|PolymorphicMapType_10345_9856_30002#PolymorphicMapType_10345| (select (|PolymorphicMapType_9796_5804_30179#PolymorphicMapType_9796| Heap@@11) null (WandMaskField_5804 pm_f_1@@2))) o2_1@@9 f_9@@15) (= (select (|PolymorphicMapType_9796_9856_30002#PolymorphicMapType_9796| Heap@@11) o2_1@@9 f_9@@15) (select (|PolymorphicMapType_9796_9856_30002#PolymorphicMapType_9796| ExhaleHeap@@10) o2_1@@9 f_9@@15)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9796_9856_30002#PolymorphicMapType_9796| ExhaleHeap@@10) o2_1@@9 f_9@@15))
))) (forall ((o2_1@@10 T@Ref) (f_9@@16 T@Field_5804_30135) ) (!  (=> (select (|PolymorphicMapType_10345_9856_31517#PolymorphicMapType_10345| (select (|PolymorphicMapType_9796_5804_30179#PolymorphicMapType_9796| Heap@@11) null (WandMaskField_5804 pm_f_1@@2))) o2_1@@10 f_9@@16) (= (select (|PolymorphicMapType_9796_5804_30179#PolymorphicMapType_9796| Heap@@11) o2_1@@10 f_9@@16) (select (|PolymorphicMapType_9796_5804_30179#PolymorphicMapType_9796| ExhaleHeap@@10) o2_1@@10 f_9@@16)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9796_5804_30179#PolymorphicMapType_9796| ExhaleHeap@@10) o2_1@@10 f_9@@16))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@23) (IsWandField_5804_32044 pm_f_1@@2))
)))
(assert (forall ((s0@@5 T@Seq_15883) (s1@@5 T@Seq_15883) ) (!  (=> (|Seq#Equal_15883| s0@@5 s1@@5) (and (= (|Seq#Length_5801| s0@@5) (|Seq#Length_5801| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_5801| s0@@5))) (= (|Seq#Index_5801| s0@@5 j@@6) (|Seq#Index_5801| s1@@5 j@@6)))
 :qid |stdinbpl.512:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_5801| s0@@5 j@@6))
 :pattern ( (|Seq#Index_5801| s1@@5 j@@6))
))))
 :qid |stdinbpl.509:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_15883| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_2912) (s1@@6 T@Seq_2912) ) (!  (=> (|Seq#Equal_2912| s0@@6 s1@@6) (and (= (|Seq#Length_2912| s0@@6) (|Seq#Length_2912| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_2912| s0@@6))) (= (|Seq#Index_2912| s0@@6 j@@7) (|Seq#Index_2912| s1@@6 j@@7)))
 :qid |stdinbpl.512:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2912| s0@@6 j@@7))
 :pattern ( (|Seq#Index_2912| s1@@6 j@@7))
))))
 :qid |stdinbpl.509:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_2912| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_5801| (|Seq#Singleton_5801| t@@5)) 1)
 :qid |stdinbpl.224:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_5801| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_2912| (|Seq#Singleton_2912| t@@6)) 1)
 :qid |stdinbpl.224:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_2912| t@@6))
)))
(assert (forall ((s@@21 T@Seq_15883) (t@@7 T@Seq_15883) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_5801| s@@21))) (= (|Seq#Take_5801| (|Seq#Append_15883| s@@21 t@@7) n@@17) (|Seq#Take_5801| s@@21 n@@17)))
 :qid |stdinbpl.366:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_5801| (|Seq#Append_15883| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_2912) (t@@8 T@Seq_2912) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_2912| s@@22))) (= (|Seq#Take_2912| (|Seq#Append_2912| s@@22 t@@8) n@@18) (|Seq#Take_2912| s@@22 n@@18)))
 :qid |stdinbpl.366:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2912| (|Seq#Append_2912| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_15883) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_5801| s@@23))) (= (|Seq#Length_5801| (|Seq#Update_5801| s@@23 i@@5 v@@2)) (|Seq#Length_5801| s@@23)))
 :qid |stdinbpl.265:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_5801| (|Seq#Update_5801| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_5801| s@@23) (|Seq#Update_5801| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_2912) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_2912| s@@24))) (= (|Seq#Length_2912| (|Seq#Update_2912| s@@24 i@@6 v@@3)) (|Seq#Length_2912| s@@24)))
 :qid |stdinbpl.265:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2912| (|Seq#Update_2912| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_2912| s@@24) (|Seq#Update_2912| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_9796) (o_3 T@Ref) (f_10 T@Field_5804_30002) (v@@4 T@FrameType) ) (! (succHeap Heap@@12 (PolymorphicMapType_9796 (|PolymorphicMapType_9796_5607_53#PolymorphicMapType_9796| Heap@@12) (|PolymorphicMapType_9796_5610_5611#PolymorphicMapType_9796| Heap@@12) (|PolymorphicMapType_9796_5800_18568#PolymorphicMapType_9796| Heap@@12) (|PolymorphicMapType_9796_5807_3074#PolymorphicMapType_9796| Heap@@12) (|PolymorphicMapType_9796_5804_30179#PolymorphicMapType_9796| Heap@@12) (store (|PolymorphicMapType_9796_9856_30002#PolymorphicMapType_9796| Heap@@12) o_3 f_10 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9796 (|PolymorphicMapType_9796_5607_53#PolymorphicMapType_9796| Heap@@12) (|PolymorphicMapType_9796_5610_5611#PolymorphicMapType_9796| Heap@@12) (|PolymorphicMapType_9796_5800_18568#PolymorphicMapType_9796| Heap@@12) (|PolymorphicMapType_9796_5807_3074#PolymorphicMapType_9796| Heap@@12) (|PolymorphicMapType_9796_5804_30179#PolymorphicMapType_9796| Heap@@12) (store (|PolymorphicMapType_9796_9856_30002#PolymorphicMapType_9796| Heap@@12) o_3 f_10 v@@4)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_9796) (o_3@@0 T@Ref) (f_10@@0 T@Field_5804_30135) (v@@5 T@PolymorphicMapType_10345) ) (! (succHeap Heap@@13 (PolymorphicMapType_9796 (|PolymorphicMapType_9796_5607_53#PolymorphicMapType_9796| Heap@@13) (|PolymorphicMapType_9796_5610_5611#PolymorphicMapType_9796| Heap@@13) (|PolymorphicMapType_9796_5800_18568#PolymorphicMapType_9796| Heap@@13) (|PolymorphicMapType_9796_5807_3074#PolymorphicMapType_9796| Heap@@13) (store (|PolymorphicMapType_9796_5804_30179#PolymorphicMapType_9796| Heap@@13) o_3@@0 f_10@@0 v@@5) (|PolymorphicMapType_9796_9856_30002#PolymorphicMapType_9796| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9796 (|PolymorphicMapType_9796_5607_53#PolymorphicMapType_9796| Heap@@13) (|PolymorphicMapType_9796_5610_5611#PolymorphicMapType_9796| Heap@@13) (|PolymorphicMapType_9796_5800_18568#PolymorphicMapType_9796| Heap@@13) (|PolymorphicMapType_9796_5807_3074#PolymorphicMapType_9796| Heap@@13) (store (|PolymorphicMapType_9796_5804_30179#PolymorphicMapType_9796| Heap@@13) o_3@@0 f_10@@0 v@@5) (|PolymorphicMapType_9796_9856_30002#PolymorphicMapType_9796| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_9796) (o_3@@1 T@Ref) (f_10@@1 T@Field_15994_3074) (v@@6 Int) ) (! (succHeap Heap@@14 (PolymorphicMapType_9796 (|PolymorphicMapType_9796_5607_53#PolymorphicMapType_9796| Heap@@14) (|PolymorphicMapType_9796_5610_5611#PolymorphicMapType_9796| Heap@@14) (|PolymorphicMapType_9796_5800_18568#PolymorphicMapType_9796| Heap@@14) (store (|PolymorphicMapType_9796_5807_3074#PolymorphicMapType_9796| Heap@@14) o_3@@1 f_10@@1 v@@6) (|PolymorphicMapType_9796_5804_30179#PolymorphicMapType_9796| Heap@@14) (|PolymorphicMapType_9796_9856_30002#PolymorphicMapType_9796| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9796 (|PolymorphicMapType_9796_5607_53#PolymorphicMapType_9796| Heap@@14) (|PolymorphicMapType_9796_5610_5611#PolymorphicMapType_9796| Heap@@14) (|PolymorphicMapType_9796_5800_18568#PolymorphicMapType_9796| Heap@@14) (store (|PolymorphicMapType_9796_5807_3074#PolymorphicMapType_9796| Heap@@14) o_3@@1 f_10@@1 v@@6) (|PolymorphicMapType_9796_5804_30179#PolymorphicMapType_9796| Heap@@14) (|PolymorphicMapType_9796_9856_30002#PolymorphicMapType_9796| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_9796) (o_3@@2 T@Ref) (f_10@@2 T@Field_15880_15885) (v@@7 T@Seq_15883) ) (! (succHeap Heap@@15 (PolymorphicMapType_9796 (|PolymorphicMapType_9796_5607_53#PolymorphicMapType_9796| Heap@@15) (|PolymorphicMapType_9796_5610_5611#PolymorphicMapType_9796| Heap@@15) (store (|PolymorphicMapType_9796_5800_18568#PolymorphicMapType_9796| Heap@@15) o_3@@2 f_10@@2 v@@7) (|PolymorphicMapType_9796_5807_3074#PolymorphicMapType_9796| Heap@@15) (|PolymorphicMapType_9796_5804_30179#PolymorphicMapType_9796| Heap@@15) (|PolymorphicMapType_9796_9856_30002#PolymorphicMapType_9796| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9796 (|PolymorphicMapType_9796_5607_53#PolymorphicMapType_9796| Heap@@15) (|PolymorphicMapType_9796_5610_5611#PolymorphicMapType_9796| Heap@@15) (store (|PolymorphicMapType_9796_5800_18568#PolymorphicMapType_9796| Heap@@15) o_3@@2 f_10@@2 v@@7) (|PolymorphicMapType_9796_5807_3074#PolymorphicMapType_9796| Heap@@15) (|PolymorphicMapType_9796_5804_30179#PolymorphicMapType_9796| Heap@@15) (|PolymorphicMapType_9796_9856_30002#PolymorphicMapType_9796| Heap@@15)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_9796) (o_3@@3 T@Ref) (f_10@@3 T@Field_9869_9870) (v@@8 T@Ref) ) (! (succHeap Heap@@16 (PolymorphicMapType_9796 (|PolymorphicMapType_9796_5607_53#PolymorphicMapType_9796| Heap@@16) (store (|PolymorphicMapType_9796_5610_5611#PolymorphicMapType_9796| Heap@@16) o_3@@3 f_10@@3 v@@8) (|PolymorphicMapType_9796_5800_18568#PolymorphicMapType_9796| Heap@@16) (|PolymorphicMapType_9796_5807_3074#PolymorphicMapType_9796| Heap@@16) (|PolymorphicMapType_9796_5804_30179#PolymorphicMapType_9796| Heap@@16) (|PolymorphicMapType_9796_9856_30002#PolymorphicMapType_9796| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9796 (|PolymorphicMapType_9796_5607_53#PolymorphicMapType_9796| Heap@@16) (store (|PolymorphicMapType_9796_5610_5611#PolymorphicMapType_9796| Heap@@16) o_3@@3 f_10@@3 v@@8) (|PolymorphicMapType_9796_5800_18568#PolymorphicMapType_9796| Heap@@16) (|PolymorphicMapType_9796_5807_3074#PolymorphicMapType_9796| Heap@@16) (|PolymorphicMapType_9796_5804_30179#PolymorphicMapType_9796| Heap@@16) (|PolymorphicMapType_9796_9856_30002#PolymorphicMapType_9796| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_9796) (o_3@@4 T@Ref) (f_10@@4 T@Field_9856_53) (v@@9 Bool) ) (! (succHeap Heap@@17 (PolymorphicMapType_9796 (store (|PolymorphicMapType_9796_5607_53#PolymorphicMapType_9796| Heap@@17) o_3@@4 f_10@@4 v@@9) (|PolymorphicMapType_9796_5610_5611#PolymorphicMapType_9796| Heap@@17) (|PolymorphicMapType_9796_5800_18568#PolymorphicMapType_9796| Heap@@17) (|PolymorphicMapType_9796_5807_3074#PolymorphicMapType_9796| Heap@@17) (|PolymorphicMapType_9796_5804_30179#PolymorphicMapType_9796| Heap@@17) (|PolymorphicMapType_9796_9856_30002#PolymorphicMapType_9796| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9796 (store (|PolymorphicMapType_9796_5607_53#PolymorphicMapType_9796| Heap@@17) o_3@@4 f_10@@4 v@@9) (|PolymorphicMapType_9796_5610_5611#PolymorphicMapType_9796| Heap@@17) (|PolymorphicMapType_9796_5800_18568#PolymorphicMapType_9796| Heap@@17) (|PolymorphicMapType_9796_5807_3074#PolymorphicMapType_9796| Heap@@17) (|PolymorphicMapType_9796_5804_30179#PolymorphicMapType_9796| Heap@@17) (|PolymorphicMapType_9796_9856_30002#PolymorphicMapType_9796| Heap@@17)))
)))
(assert (forall ((s@@25 T@Seq_15883) (t@@9 T@Seq_15883) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_5801| s@@25))) (= (|Seq#Drop_5801| (|Seq#Append_15883| s@@25 t@@9) n@@19) (|Seq#Append_15883| (|Seq#Drop_5801| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.380:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_5801| (|Seq#Append_15883| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_2912) (t@@10 T@Seq_2912) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_2912| s@@26))) (= (|Seq#Drop_2912| (|Seq#Append_2912| s@@26 t@@10) n@@20) (|Seq#Append_2912| (|Seq#Drop_2912| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.380:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_2912| (|Seq#Append_2912| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_15883) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_5801| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_5801| (|Seq#Drop_5801| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_5801| s@@27 i@@7))))
 :qid |stdinbpl.316:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_5801| s@@27 n@@21) (|Seq#Index_5801| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_2912) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_2912| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_2912| (|Seq#Drop_2912| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_2912| s@@28 i@@8))))
 :qid |stdinbpl.316:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_2912| s@@28 n@@22) (|Seq#Index_2912| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_15883) (s1@@7 T@Seq_15883) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_5801|)) (not (= s1@@7 |Seq#Empty_5801|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_5801| s0@@7))) (= (|Seq#Index_5801| (|Seq#Append_15883| s0@@7 s1@@7) n@@23) (|Seq#Index_5801| s0@@7 n@@23)))
 :qid |stdinbpl.256:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_5801| (|Seq#Append_15883| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_5801| s0@@7 n@@23) (|Seq#Append_15883| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_2912) (s1@@8 T@Seq_2912) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_2912|)) (not (= s1@@8 |Seq#Empty_2912|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_2912| s0@@8))) (= (|Seq#Index_2912| (|Seq#Append_2912| s0@@8 s1@@8) n@@24) (|Seq#Index_2912| s0@@8 n@@24)))
 :qid |stdinbpl.256:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2912| (|Seq#Append_2912| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_2912| s0@@8 n@@24) (|Seq#Append_2912| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_15883) (s1@@9 T@Seq_15883) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_5801|)) (not (= s1@@9 |Seq#Empty_5801|))) (<= 0 m)) (< m (|Seq#Length_5801| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_5801| s0@@9)) (|Seq#Length_5801| s0@@9)) m) (= (|Seq#Index_5801| (|Seq#Append_15883| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_5801| s0@@9))) (|Seq#Index_5801| s1@@9 m))))
 :qid |stdinbpl.261:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_5801| s1@@9 m) (|Seq#Append_15883| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_2912) (s1@@10 T@Seq_2912) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_2912|)) (not (= s1@@10 |Seq#Empty_2912|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_2912| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_2912| s0@@10)) (|Seq#Length_2912| s0@@10)) m@@0) (= (|Seq#Index_2912| (|Seq#Append_2912| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_2912| s0@@10))) (|Seq#Index_2912| s1@@10 m@@0))))
 :qid |stdinbpl.261:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2912| s1@@10 m@@0) (|Seq#Append_2912| s0@@10 s1@@10))
)))
(assert (forall ((o_3@@5 T@Ref) (f_8 T@Field_9869_9870) (Heap@@18 T@PolymorphicMapType_9796) ) (!  (=> (select (|PolymorphicMapType_9796_5607_53#PolymorphicMapType_9796| Heap@@18) o_3@@5 $allocated) (select (|PolymorphicMapType_9796_5607_53#PolymorphicMapType_9796| Heap@@18) (select (|PolymorphicMapType_9796_5610_5611#PolymorphicMapType_9796| Heap@@18) o_3@@5 f_8) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_9796_5610_5611#PolymorphicMapType_9796| Heap@@18) o_3@@5 f_8))
)))
(assert (forall ((s@@29 T@Seq_15883) (x@@3 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_5801| s@@29))) (= (|Seq#Index_5801| s@@29 i@@9) x@@3)) (|Seq#Contains_15883| s@@29 x@@3))
 :qid |stdinbpl.413:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_15883| s@@29 x@@3) (|Seq#Index_5801| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_2912) (x@@4 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_2912| s@@30))) (= (|Seq#Index_2912| s@@30 i@@10) x@@4)) (|Seq#Contains_2912| s@@30 x@@4))
 :qid |stdinbpl.413:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2912| s@@30 x@@4) (|Seq#Index_2912| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_15883) (s1@@11 T@Seq_15883) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_15883| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_15883| s0@@11 s1@@11))) (not (= (|Seq#Length_5801| s0@@11) (|Seq#Length_5801| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_15883| s0@@11 s1@@11))) (= (|Seq#Length_5801| s0@@11) (|Seq#Length_5801| s1@@11))) (= (|Seq#SkolemDiff_15883| s0@@11 s1@@11) (|Seq#SkolemDiff_15883| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_15883| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_15883| s0@@11 s1@@11) (|Seq#Length_5801| s0@@11))) (not (= (|Seq#Index_5801| s0@@11 (|Seq#SkolemDiff_15883| s0@@11 s1@@11)) (|Seq#Index_5801| s1@@11 (|Seq#SkolemDiff_15883| s0@@11 s1@@11))))))
 :qid |stdinbpl.517:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_15883| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_2912) (s1@@12 T@Seq_2912) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_2912| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2912| s0@@12 s1@@12))) (not (= (|Seq#Length_2912| s0@@12) (|Seq#Length_2912| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2912| s0@@12 s1@@12))) (= (|Seq#Length_2912| s0@@12) (|Seq#Length_2912| s1@@12))) (= (|Seq#SkolemDiff_2912| s0@@12 s1@@12) (|Seq#SkolemDiff_2912| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_2912| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_2912| s0@@12 s1@@12) (|Seq#Length_2912| s0@@12))) (not (= (|Seq#Index_2912| s0@@12 (|Seq#SkolemDiff_2912| s0@@12 s1@@12)) (|Seq#Index_2912| s1@@12 (|Seq#SkolemDiff_2912| s0@@12 s1@@12))))))
 :qid |stdinbpl.517:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_2912| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_5804_30002) (v_1@@0 T@FrameType) (q T@Field_5804_30002) (w@@0 T@FrameType) (r T@Field_5804_30002) (u T@FrameType) ) (!  (=> (and (InsidePredicate_9856_9856 p@@1 v_1@@0 q w@@0) (InsidePredicate_9856_9856 q w@@0 r u)) (InsidePredicate_9856_9856 p@@1 v_1@@0 r u))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9856_9856 p@@1 v_1@@0 q w@@0) (InsidePredicate_9856_9856 q w@@0 r u))
)))
(assert (forall ((s@@31 T@Seq_15883) ) (!  (=> (= (|Seq#Length_5801| s@@31) 0) (= s@@31 |Seq#Empty_5801|))
 :qid |stdinbpl.220:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_5801| s@@31))
)))
(assert (forall ((s@@32 T@Seq_2912) ) (!  (=> (= (|Seq#Length_2912| s@@32) 0) (= s@@32 |Seq#Empty_2912|))
 :qid |stdinbpl.220:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2912| s@@32))
)))
(assert (forall ((s@@33 T@Seq_15883) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_5801| s@@33 n@@25) |Seq#Empty_5801|))
 :qid |stdinbpl.396:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_5801| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_2912) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_2912| s@@34 n@@26) |Seq#Empty_2912|))
 :qid |stdinbpl.396:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_2912| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@19 () T@PolymorphicMapType_9796)
(declare-fun current_thread_id () Int)
(set-info :boogie-vc-id ArrayTest__ArrayTest)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon3_Else_correct true))
(let ((anon3_Then_correct true))
(let ((anon0_correct  (=> (and (and (state Heap@@19 ZeroMask) AssumePermUpperBound) (and (>= current_thread_id 0) (state Heap@@19 ZeroMask))) (and (=> (= (ControlFlow 0 5) 1) anon3_Then_correct) (=> (= (ControlFlow 0 5) 3) anon3_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 6) 5) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
