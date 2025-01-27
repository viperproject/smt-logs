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
(declare-sort T@Field_18938_53 0)
(declare-sort T@Field_18951_18952 0)
(declare-sort T@Field_24981_3298 0)
(declare-sort T@Field_25058_25063 0)
(declare-sort T@Seq_25061 0)
(declare-sort T@Field_12477_55966 0)
(declare-sort T@Field_12477_55833 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_18899 0)) (((PolymorphicMapType_18899 (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| (Array T@Ref T@Field_24981_3298 Real)) (|PolymorphicMapType_18899_12481_44015#PolymorphicMapType_18899| (Array T@Ref T@Field_25058_25063 Real)) (|PolymorphicMapType_18899_12477_53#PolymorphicMapType_18899| (Array T@Ref T@Field_18938_53 Real)) (|PolymorphicMapType_18899_12477_18952#PolymorphicMapType_18899| (Array T@Ref T@Field_18951_18952 Real)) (|PolymorphicMapType_18899_12477_55833#PolymorphicMapType_18899| (Array T@Ref T@Field_12477_55833 Real)) (|PolymorphicMapType_18899_12477_60660#PolymorphicMapType_18899| (Array T@Ref T@Field_12477_55966 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_19427 0)) (((PolymorphicMapType_19427 (|PolymorphicMapType_19427_18938_53#PolymorphicMapType_19427| (Array T@Ref T@Field_18938_53 Bool)) (|PolymorphicMapType_19427_18938_18952#PolymorphicMapType_19427| (Array T@Ref T@Field_18951_18952 Bool)) (|PolymorphicMapType_19427_18938_3298#PolymorphicMapType_19427| (Array T@Ref T@Field_24981_3298 Bool)) (|PolymorphicMapType_19427_18938_25063#PolymorphicMapType_19427| (Array T@Ref T@Field_25058_25063 Bool)) (|PolymorphicMapType_19427_18938_55833#PolymorphicMapType_19427| (Array T@Ref T@Field_12477_55833 Bool)) (|PolymorphicMapType_19427_18938_57348#PolymorphicMapType_19427| (Array T@Ref T@Field_12477_55966 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_18878 0)) (((PolymorphicMapType_18878 (|PolymorphicMapType_18878_12263_53#PolymorphicMapType_18878| (Array T@Ref T@Field_18938_53 Bool)) (|PolymorphicMapType_18878_12266_12267#PolymorphicMapType_18878| (Array T@Ref T@Field_18951_18952 T@Ref)) (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| (Array T@Ref T@Field_24981_3298 Int)) (|PolymorphicMapType_18878_12481_44279#PolymorphicMapType_18878| (Array T@Ref T@Field_25058_25063 T@Seq_25061)) (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| (Array T@Ref T@Field_12477_55966 T@PolymorphicMapType_19427)) (|PolymorphicMapType_18878_18938_55833#PolymorphicMapType_18878| (Array T@Ref T@Field_12477_55833 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_18938_53)
(declare-fun f_7 () T@Field_24981_3298)
(declare-fun value_1 () T@Field_24981_3298)
(declare-fun array_1 () T@Field_25058_25063)
(declare-fun |Seq#Length_12487| (T@Seq_25061) Int)
(declare-fun |Seq#Drop_12487| (T@Seq_25061 Int) T@Seq_25061)
(declare-sort T@Seq_3176 0)
(declare-fun |Seq#Length_3176| (T@Seq_3176) Int)
(declare-fun |Seq#Drop_3176| (T@Seq_3176 Int) T@Seq_3176)
(declare-fun succHeap (T@PolymorphicMapType_18878 T@PolymorphicMapType_18878) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_18878 T@PolymorphicMapType_18878) Bool)
(declare-fun state (T@PolymorphicMapType_18878 T@PolymorphicMapType_18899) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_18899) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_19427)
(declare-fun |Seq#Index_12487| (T@Seq_25061 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3176| (T@Seq_3176 Int) Int)
(declare-fun |Seq#Empty_12487| () T@Seq_25061)
(declare-fun |Seq#Empty_3176| () T@Seq_3176)
(declare-fun |Seq#Update_12487| (T@Seq_25061 Int T@Ref) T@Seq_25061)
(declare-fun |Seq#Update_3176| (T@Seq_3176 Int Int) T@Seq_3176)
(declare-fun |Seq#Take_12487| (T@Seq_25061 Int) T@Seq_25061)
(declare-fun |Seq#Take_3176| (T@Seq_3176 Int) T@Seq_3176)
(declare-fun |Seq#Contains_3176| (T@Seq_3176 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3176)
(declare-fun |Seq#Contains_25061| (T@Seq_25061 T@Ref) Bool)
(declare-fun |Seq#Skolem_25061| (T@Seq_25061 T@Ref) Int)
(declare-fun |Seq#Skolem_3176| (T@Seq_3176 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_18878 T@PolymorphicMapType_18878 T@PolymorphicMapType_18899) Bool)
(declare-fun IsPredicateField_12477_55924 (T@Field_12477_55833) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_12477 (T@Field_12477_55833) T@Field_12477_55966)
(declare-fun HasDirectPerm_12477_55897 (T@PolymorphicMapType_18899 T@Ref T@Field_12477_55833) Bool)
(declare-fun IsWandField_12477_57875 (T@Field_12477_55833) Bool)
(declare-fun WandMaskField_12477 (T@Field_12477_55833) T@Field_12477_55966)
(declare-fun |Seq#Singleton_12487| (T@Ref) T@Seq_25061)
(declare-fun |Seq#Singleton_3176| (Int) T@Seq_3176)
(declare-fun |Seq#Append_25061| (T@Seq_25061 T@Seq_25061) T@Seq_25061)
(declare-fun |Seq#Append_3176| (T@Seq_3176 T@Seq_3176) T@Seq_3176)
(declare-fun dummyHeap () T@PolymorphicMapType_18878)
(declare-fun ZeroMask () T@PolymorphicMapType_18899)
(declare-fun InsidePredicate_18938_18938 (T@Field_12477_55833 T@FrameType T@Field_12477_55833 T@FrameType) Bool)
(declare-fun IsPredicateField_12477_3298 (T@Field_24981_3298) Bool)
(declare-fun IsWandField_12477_3298 (T@Field_24981_3298) Bool)
(declare-fun IsPredicateField_12481_25085 (T@Field_25058_25063) Bool)
(declare-fun IsWandField_12481_25111 (T@Field_25058_25063) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_12477_62009 (T@Field_12477_55966) Bool)
(declare-fun IsWandField_12477_62025 (T@Field_12477_55966) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_12477_18952 (T@Field_18951_18952) Bool)
(declare-fun IsWandField_12477_18952 (T@Field_18951_18952) Bool)
(declare-fun IsPredicateField_12477_53 (T@Field_18938_53) Bool)
(declare-fun IsWandField_12477_53 (T@Field_18938_53) Bool)
(declare-fun HasDirectPerm_12477_62546 (T@PolymorphicMapType_18899 T@Ref T@Field_12477_55966) Bool)
(declare-fun HasDirectPerm_12477_18952 (T@PolymorphicMapType_18899 T@Ref T@Field_18951_18952) Bool)
(declare-fun HasDirectPerm_12477_53 (T@PolymorphicMapType_18899 T@Ref T@Field_18938_53) Bool)
(declare-fun HasDirectPerm_12481_44212 (T@PolymorphicMapType_18899 T@Ref T@Field_25058_25063) Bool)
(declare-fun HasDirectPerm_12477_3298 (T@PolymorphicMapType_18899 T@Ref T@Field_24981_3298) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_18899 T@PolymorphicMapType_18899 T@PolymorphicMapType_18899) Bool)
(declare-fun |Seq#Equal_25061| (T@Seq_25061 T@Seq_25061) Bool)
(declare-fun |Seq#Equal_3176| (T@Seq_3176 T@Seq_3176) Bool)
(declare-fun |Seq#ContainsTrigger_12487| (T@Seq_25061 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3176| (T@Seq_3176 Int) Bool)
(declare-fun |Seq#SkolemDiff_25061| (T@Seq_25061 T@Seq_25061) Int)
(declare-fun |Seq#SkolemDiff_3176| (T@Seq_3176 T@Seq_3176) Int)
(assert (distinct f_7 value_1)
)
(assert (forall ((s T@Seq_25061) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_12487| s)) (= (|Seq#Length_12487| (|Seq#Drop_12487| s n)) (- (|Seq#Length_12487| s) n))) (=> (< (|Seq#Length_12487| s) n) (= (|Seq#Length_12487| (|Seq#Drop_12487| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_12487| (|Seq#Drop_12487| s n)) (|Seq#Length_12487| s))))
 :qid |stdinbpl.324:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_12487| (|Seq#Drop_12487| s n)))
 :pattern ( (|Seq#Length_12487| s) (|Seq#Drop_12487| s n))
)))
(assert (forall ((s@@0 T@Seq_3176) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3176| s@@0)) (= (|Seq#Length_3176| (|Seq#Drop_3176| s@@0 n@@0)) (- (|Seq#Length_3176| s@@0) n@@0))) (=> (< (|Seq#Length_3176| s@@0) n@@0) (= (|Seq#Length_3176| (|Seq#Drop_3176| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3176| (|Seq#Drop_3176| s@@0 n@@0)) (|Seq#Length_3176| s@@0))))
 :qid |stdinbpl.324:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3176| (|Seq#Drop_3176| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3176| s@@0) (|Seq#Drop_3176| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_18878) (Heap1 T@PolymorphicMapType_18878) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_18878) (Mask T@PolymorphicMapType_18899) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_18878) (Heap1@@0 T@PolymorphicMapType_18878) (Heap2 T@PolymorphicMapType_18878) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_12477_55966) ) (!  (not (select (|PolymorphicMapType_19427_18938_57348#PolymorphicMapType_19427| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19427_18938_57348#PolymorphicMapType_19427| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_12477_55833) ) (!  (not (select (|PolymorphicMapType_19427_18938_55833#PolymorphicMapType_19427| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19427_18938_55833#PolymorphicMapType_19427| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_25058_25063) ) (!  (not (select (|PolymorphicMapType_19427_18938_25063#PolymorphicMapType_19427| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19427_18938_25063#PolymorphicMapType_19427| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_24981_3298) ) (!  (not (select (|PolymorphicMapType_19427_18938_3298#PolymorphicMapType_19427| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19427_18938_3298#PolymorphicMapType_19427| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_18951_18952) ) (!  (not (select (|PolymorphicMapType_19427_18938_18952#PolymorphicMapType_19427| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19427_18938_18952#PolymorphicMapType_19427| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_18938_53) ) (!  (not (select (|PolymorphicMapType_19427_18938_53#PolymorphicMapType_19427| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19427_18938_53#PolymorphicMapType_19427| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((s@@1 T@Seq_25061) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_12487| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_12487| (|Seq#Drop_12487| s@@1 n@@1) j) (|Seq#Index_12487| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.345:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_12487| (|Seq#Drop_12487| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3176) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3176| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3176| (|Seq#Drop_3176| s@@2 n@@2) j@@0) (|Seq#Index_3176| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.345:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3176| (|Seq#Drop_3176| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_12487| |Seq#Empty_12487|) 0))
(assert (= (|Seq#Length_3176| |Seq#Empty_3176|) 0))
(assert (forall ((s@@3 T@Seq_25061) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_12487| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_12487| (|Seq#Update_12487| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_12487| (|Seq#Update_12487| s@@3 i v) n@@3) (|Seq#Index_12487| s@@3 n@@3)))))
 :qid |stdinbpl.300:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_12487| (|Seq#Update_12487| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_12487| s@@3 n@@3) (|Seq#Update_12487| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_3176) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3176| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_3176| (|Seq#Update_3176| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_3176| (|Seq#Update_3176| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_3176| s@@4 n@@4)))))
 :qid |stdinbpl.300:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3176| (|Seq#Update_3176| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_3176| s@@4 n@@4) (|Seq#Update_3176| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_25061) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_12487| s@@5)) (= (|Seq#Length_12487| (|Seq#Take_12487| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_12487| s@@5) n@@5) (= (|Seq#Length_12487| (|Seq#Take_12487| s@@5 n@@5)) (|Seq#Length_12487| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_12487| (|Seq#Take_12487| s@@5 n@@5)) 0)))
 :qid |stdinbpl.311:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_12487| (|Seq#Take_12487| s@@5 n@@5)))
 :pattern ( (|Seq#Take_12487| s@@5 n@@5) (|Seq#Length_12487| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3176) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3176| s@@6)) (= (|Seq#Length_3176| (|Seq#Take_3176| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3176| s@@6) n@@6) (= (|Seq#Length_3176| (|Seq#Take_3176| s@@6 n@@6)) (|Seq#Length_3176| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3176| (|Seq#Take_3176| s@@6 n@@6)) 0)))
 :qid |stdinbpl.311:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3176| (|Seq#Take_3176| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3176| s@@6 n@@6) (|Seq#Length_3176| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3176| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.585:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_25061) (x T@Ref) ) (!  (=> (|Seq#Contains_25061| s@@7 x) (and (and (<= 0 (|Seq#Skolem_25061| s@@7 x)) (< (|Seq#Skolem_25061| s@@7 x) (|Seq#Length_12487| s@@7))) (= (|Seq#Index_12487| s@@7 (|Seq#Skolem_25061| s@@7 x)) x)))
 :qid |stdinbpl.443:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_25061| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3176) (x@@0 Int) ) (!  (=> (|Seq#Contains_3176| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3176| s@@8 x@@0)) (< (|Seq#Skolem_3176| s@@8 x@@0) (|Seq#Length_3176| s@@8))) (= (|Seq#Index_3176| s@@8 (|Seq#Skolem_3176| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.443:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3176| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_25061) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_12487| s@@9 n@@7) s@@9))
 :qid |stdinbpl.427:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_12487| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3176) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3176| s@@10 n@@8) s@@10))
 :qid |stdinbpl.427:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3176| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.280:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.278:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_18878) (ExhaleHeap T@PolymorphicMapType_18878) (Mask@@0 T@PolymorphicMapType_18899) (pm_f_37 T@Field_12477_55833) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_12477_55897 Mask@@0 null pm_f_37) (IsPredicateField_12477_55924 pm_f_37)) (= (select (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| Heap@@0) null (PredicateMaskField_12477 pm_f_37)) (select (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| ExhaleHeap) null (PredicateMaskField_12477 pm_f_37)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_12477_55924 pm_f_37) (select (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| ExhaleHeap) null (PredicateMaskField_12477 pm_f_37)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_18878) (ExhaleHeap@@0 T@PolymorphicMapType_18878) (Mask@@1 T@PolymorphicMapType_18899) (pm_f_37@@0 T@Field_12477_55833) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_12477_55897 Mask@@1 null pm_f_37@@0) (IsWandField_12477_57875 pm_f_37@@0)) (= (select (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| Heap@@1) null (WandMaskField_12477 pm_f_37@@0)) (select (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| ExhaleHeap@@0) null (WandMaskField_12477 pm_f_37@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_12477_57875 pm_f_37@@0) (select (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| ExhaleHeap@@0) null (WandMaskField_12477 pm_f_37@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_25061| (|Seq#Singleton_12487| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.568:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_25061| (|Seq#Singleton_12487| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3176| (|Seq#Singleton_3176| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.568:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3176| (|Seq#Singleton_3176| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_25061) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_12487| s@@11))) (= (|Seq#Index_12487| (|Seq#Take_12487| s@@11 n@@9) j@@3) (|Seq#Index_12487| s@@11 j@@3)))
 :qid |stdinbpl.319:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_12487| (|Seq#Take_12487| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_12487| s@@11 j@@3) (|Seq#Take_12487| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3176) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3176| s@@12))) (= (|Seq#Index_3176| (|Seq#Take_3176| s@@12 n@@10) j@@4) (|Seq#Index_3176| s@@12 j@@4)))
 :qid |stdinbpl.319:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3176| (|Seq#Take_3176| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3176| s@@12 j@@4) (|Seq#Take_3176| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_25061) (t T@Seq_25061) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_12487| s@@13))) (< n@@11 (|Seq#Length_12487| (|Seq#Append_25061| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_12487| s@@13)) (|Seq#Length_12487| s@@13)) n@@11) (= (|Seq#Take_12487| (|Seq#Append_25061| s@@13 t) n@@11) (|Seq#Append_25061| s@@13 (|Seq#Take_12487| t (|Seq#Sub| n@@11 (|Seq#Length_12487| s@@13)))))))
 :qid |stdinbpl.404:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_12487| (|Seq#Append_25061| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3176) (t@@0 T@Seq_3176) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3176| s@@14))) (< n@@12 (|Seq#Length_3176| (|Seq#Append_3176| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3176| s@@14)) (|Seq#Length_3176| s@@14)) n@@12) (= (|Seq#Take_3176| (|Seq#Append_3176| s@@14 t@@0) n@@12) (|Seq#Append_3176| s@@14 (|Seq#Take_3176| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3176| s@@14)))))))
 :qid |stdinbpl.404:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3176| (|Seq#Append_3176| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_18878) (ExhaleHeap@@1 T@PolymorphicMapType_18878) (Mask@@2 T@PolymorphicMapType_18899) (o_20 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_18878_12263_53#PolymorphicMapType_18878| Heap@@2) o_20 $allocated) (select (|PolymorphicMapType_18878_12263_53#PolymorphicMapType_18878| ExhaleHeap@@1) o_20 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_18878_12263_53#PolymorphicMapType_18878| ExhaleHeap@@1) o_20 $allocated))
)))
(assert (forall ((p T@Field_12477_55833) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_18938_18938 p v_1 p w))
 :qid |stdinbpl.222:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_18938_18938 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_25061) (s1 T@Seq_25061) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_12487|)) (not (= s1 |Seq#Empty_12487|))) (<= (|Seq#Length_12487| s0) n@@13)) (< n@@13 (|Seq#Length_12487| (|Seq#Append_25061| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_12487| s0)) (|Seq#Length_12487| s0)) n@@13) (= (|Seq#Index_12487| (|Seq#Append_25061| s0 s1) n@@13) (|Seq#Index_12487| s1 (|Seq#Sub| n@@13 (|Seq#Length_12487| s0))))))
 :qid |stdinbpl.291:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_12487| (|Seq#Append_25061| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3176) (s1@@0 T@Seq_3176) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3176|)) (not (= s1@@0 |Seq#Empty_3176|))) (<= (|Seq#Length_3176| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3176| (|Seq#Append_3176| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3176| s0@@0)) (|Seq#Length_3176| s0@@0)) n@@14) (= (|Seq#Index_3176| (|Seq#Append_3176| s0@@0 s1@@0) n@@14) (|Seq#Index_3176| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3176| s0@@0))))))
 :qid |stdinbpl.291:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3176| (|Seq#Append_3176| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_12477_3298 f_7)))
(assert  (not (IsWandField_12477_3298 f_7)))
(assert  (not (IsPredicateField_12477_3298 value_1)))
(assert  (not (IsWandField_12477_3298 value_1)))
(assert  (not (IsPredicateField_12481_25085 array_1)))
(assert  (not (IsWandField_12481_25111 array_1)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_18878) (ExhaleHeap@@2 T@PolymorphicMapType_18878) (Mask@@3 T@PolymorphicMapType_18899) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_18899) (o_2@@5 T@Ref) (f_4@@5 T@Field_12477_55966) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_18899_12477_60660#PolymorphicMapType_18899| Mask@@4) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_12477_62009 f_4@@5))) (not (IsWandField_12477_62025 f_4@@5))) (<= (select (|PolymorphicMapType_18899_12477_60660#PolymorphicMapType_18899| Mask@@4) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_18899_12477_60660#PolymorphicMapType_18899| Mask@@4) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_18899) (o_2@@6 T@Ref) (f_4@@6 T@Field_12477_55833) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_18899_12477_55833#PolymorphicMapType_18899| Mask@@5) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_12477_55924 f_4@@6))) (not (IsWandField_12477_57875 f_4@@6))) (<= (select (|PolymorphicMapType_18899_12477_55833#PolymorphicMapType_18899| Mask@@5) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_18899_12477_55833#PolymorphicMapType_18899| Mask@@5) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_18899) (o_2@@7 T@Ref) (f_4@@7 T@Field_18951_18952) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_18899_12477_18952#PolymorphicMapType_18899| Mask@@6) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_12477_18952 f_4@@7))) (not (IsWandField_12477_18952 f_4@@7))) (<= (select (|PolymorphicMapType_18899_12477_18952#PolymorphicMapType_18899| Mask@@6) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_18899_12477_18952#PolymorphicMapType_18899| Mask@@6) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_18899) (o_2@@8 T@Ref) (f_4@@8 T@Field_18938_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_18899_12477_53#PolymorphicMapType_18899| Mask@@7) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_12477_53 f_4@@8))) (not (IsWandField_12477_53 f_4@@8))) (<= (select (|PolymorphicMapType_18899_12477_53#PolymorphicMapType_18899| Mask@@7) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_18899_12477_53#PolymorphicMapType_18899| Mask@@7) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_18899) (o_2@@9 T@Ref) (f_4@@9 T@Field_25058_25063) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_18899_12481_44015#PolymorphicMapType_18899| Mask@@8) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_12481_25085 f_4@@9))) (not (IsWandField_12481_25111 f_4@@9))) (<= (select (|PolymorphicMapType_18899_12481_44015#PolymorphicMapType_18899| Mask@@8) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_18899_12481_44015#PolymorphicMapType_18899| Mask@@8) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_18899) (o_2@@10 T@Ref) (f_4@@10 T@Field_24981_3298) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| Mask@@9) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_12477_3298 f_4@@10))) (not (IsWandField_12477_3298 f_4@@10))) (<= (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| Mask@@9) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| Mask@@9) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_18899) (o_2@@11 T@Ref) (f_4@@11 T@Field_12477_55966) ) (! (= (HasDirectPerm_12477_62546 Mask@@10 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_18899_12477_60660#PolymorphicMapType_18899| Mask@@10) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12477_62546 Mask@@10 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_18899) (o_2@@12 T@Ref) (f_4@@12 T@Field_12477_55833) ) (! (= (HasDirectPerm_12477_55897 Mask@@11 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_18899_12477_55833#PolymorphicMapType_18899| Mask@@11) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12477_55897 Mask@@11 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_18899) (o_2@@13 T@Ref) (f_4@@13 T@Field_18951_18952) ) (! (= (HasDirectPerm_12477_18952 Mask@@12 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_18899_12477_18952#PolymorphicMapType_18899| Mask@@12) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12477_18952 Mask@@12 o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_18899) (o_2@@14 T@Ref) (f_4@@14 T@Field_18938_53) ) (! (= (HasDirectPerm_12477_53 Mask@@13 o_2@@14 f_4@@14) (> (select (|PolymorphicMapType_18899_12477_53#PolymorphicMapType_18899| Mask@@13) o_2@@14 f_4@@14) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12477_53 Mask@@13 o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_18899) (o_2@@15 T@Ref) (f_4@@15 T@Field_25058_25063) ) (! (= (HasDirectPerm_12481_44212 Mask@@14 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_18899_12481_44015#PolymorphicMapType_18899| Mask@@14) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12481_44212 Mask@@14 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_18899) (o_2@@16 T@Ref) (f_4@@16 T@Field_24981_3298) ) (! (= (HasDirectPerm_12477_3298 Mask@@15 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| Mask@@15) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12477_3298 Mask@@15 o_2@@16 f_4@@16))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.210:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3176| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.583:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3176| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_18878) (ExhaleHeap@@3 T@PolymorphicMapType_18878) (Mask@@16 T@PolymorphicMapType_18899) (o_20@@0 T@Ref) (f_29 T@Field_12477_55966) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@16) (=> (HasDirectPerm_12477_62546 Mask@@16 o_20@@0 f_29) (= (select (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| Heap@@4) o_20@@0 f_29) (select (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| ExhaleHeap@@3) o_20@@0 f_29))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@16) (select (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| ExhaleHeap@@3) o_20@@0 f_29))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_18878) (ExhaleHeap@@4 T@PolymorphicMapType_18878) (Mask@@17 T@PolymorphicMapType_18899) (o_20@@1 T@Ref) (f_29@@0 T@Field_12477_55833) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@17) (=> (HasDirectPerm_12477_55897 Mask@@17 o_20@@1 f_29@@0) (= (select (|PolymorphicMapType_18878_18938_55833#PolymorphicMapType_18878| Heap@@5) o_20@@1 f_29@@0) (select (|PolymorphicMapType_18878_18938_55833#PolymorphicMapType_18878| ExhaleHeap@@4) o_20@@1 f_29@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@17) (select (|PolymorphicMapType_18878_18938_55833#PolymorphicMapType_18878| ExhaleHeap@@4) o_20@@1 f_29@@0))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_18878) (ExhaleHeap@@5 T@PolymorphicMapType_18878) (Mask@@18 T@PolymorphicMapType_18899) (o_20@@2 T@Ref) (f_29@@1 T@Field_18951_18952) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@18) (=> (HasDirectPerm_12477_18952 Mask@@18 o_20@@2 f_29@@1) (= (select (|PolymorphicMapType_18878_12266_12267#PolymorphicMapType_18878| Heap@@6) o_20@@2 f_29@@1) (select (|PolymorphicMapType_18878_12266_12267#PolymorphicMapType_18878| ExhaleHeap@@5) o_20@@2 f_29@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@18) (select (|PolymorphicMapType_18878_12266_12267#PolymorphicMapType_18878| ExhaleHeap@@5) o_20@@2 f_29@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_18878) (ExhaleHeap@@6 T@PolymorphicMapType_18878) (Mask@@19 T@PolymorphicMapType_18899) (o_20@@3 T@Ref) (f_29@@2 T@Field_18938_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@19) (=> (HasDirectPerm_12477_53 Mask@@19 o_20@@3 f_29@@2) (= (select (|PolymorphicMapType_18878_12263_53#PolymorphicMapType_18878| Heap@@7) o_20@@3 f_29@@2) (select (|PolymorphicMapType_18878_12263_53#PolymorphicMapType_18878| ExhaleHeap@@6) o_20@@3 f_29@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@19) (select (|PolymorphicMapType_18878_12263_53#PolymorphicMapType_18878| ExhaleHeap@@6) o_20@@3 f_29@@2))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_18878) (ExhaleHeap@@7 T@PolymorphicMapType_18878) (Mask@@20 T@PolymorphicMapType_18899) (o_20@@4 T@Ref) (f_29@@3 T@Field_25058_25063) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@20) (=> (HasDirectPerm_12481_44212 Mask@@20 o_20@@4 f_29@@3) (= (select (|PolymorphicMapType_18878_12481_44279#PolymorphicMapType_18878| Heap@@8) o_20@@4 f_29@@3) (select (|PolymorphicMapType_18878_12481_44279#PolymorphicMapType_18878| ExhaleHeap@@7) o_20@@4 f_29@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@20) (select (|PolymorphicMapType_18878_12481_44279#PolymorphicMapType_18878| ExhaleHeap@@7) o_20@@4 f_29@@3))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_18878) (ExhaleHeap@@8 T@PolymorphicMapType_18878) (Mask@@21 T@PolymorphicMapType_18899) (o_20@@5 T@Ref) (f_29@@4 T@Field_24981_3298) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@21) (=> (HasDirectPerm_12477_3298 Mask@@21 o_20@@5 f_29@@4) (= (select (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| Heap@@9) o_20@@5 f_29@@4) (select (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| ExhaleHeap@@8) o_20@@5 f_29@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@21) (select (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| ExhaleHeap@@8) o_20@@5 f_29@@4))
)))
(assert (forall ((s0@@1 T@Seq_25061) (s1@@1 T@Seq_25061) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_12487|)) (not (= s1@@1 |Seq#Empty_12487|))) (= (|Seq#Length_12487| (|Seq#Append_25061| s0@@1 s1@@1)) (+ (|Seq#Length_12487| s0@@1) (|Seq#Length_12487| s1@@1))))
 :qid |stdinbpl.260:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_12487| (|Seq#Append_25061| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3176) (s1@@2 T@Seq_3176) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3176|)) (not (= s1@@2 |Seq#Empty_3176|))) (= (|Seq#Length_3176| (|Seq#Append_3176| s0@@2 s1@@2)) (+ (|Seq#Length_3176| s0@@2) (|Seq#Length_3176| s1@@2))))
 :qid |stdinbpl.260:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3176| (|Seq#Append_3176| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_12477_55966) ) (! (= (select (|PolymorphicMapType_18899_12477_60660#PolymorphicMapType_18899| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18899_12477_60660#PolymorphicMapType_18899| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_12477_55833) ) (! (= (select (|PolymorphicMapType_18899_12477_55833#PolymorphicMapType_18899| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18899_12477_55833#PolymorphicMapType_18899| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((o_2@@19 T@Ref) (f_4@@19 T@Field_18951_18952) ) (! (= (select (|PolymorphicMapType_18899_12477_18952#PolymorphicMapType_18899| ZeroMask) o_2@@19 f_4@@19) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18899_12477_18952#PolymorphicMapType_18899| ZeroMask) o_2@@19 f_4@@19))
)))
(assert (forall ((o_2@@20 T@Ref) (f_4@@20 T@Field_18938_53) ) (! (= (select (|PolymorphicMapType_18899_12477_53#PolymorphicMapType_18899| ZeroMask) o_2@@20 f_4@@20) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18899_12477_53#PolymorphicMapType_18899| ZeroMask) o_2@@20 f_4@@20))
)))
(assert (forall ((o_2@@21 T@Ref) (f_4@@21 T@Field_25058_25063) ) (! (= (select (|PolymorphicMapType_18899_12481_44015#PolymorphicMapType_18899| ZeroMask) o_2@@21 f_4@@21) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18899_12481_44015#PolymorphicMapType_18899| ZeroMask) o_2@@21 f_4@@21))
)))
(assert (forall ((o_2@@22 T@Ref) (f_4@@22 T@Field_24981_3298) ) (! (= (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| ZeroMask) o_2@@22 f_4@@22) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| ZeroMask) o_2@@22 f_4@@22))
)))
(assert (forall ((s@@15 T@Seq_25061) (t@@1 T@Seq_25061) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_12487| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_12487| s@@15)) (|Seq#Length_12487| s@@15)) n@@15) (= (|Seq#Drop_12487| (|Seq#Append_25061| s@@15 t@@1) n@@15) (|Seq#Drop_12487| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_12487| s@@15))))))
 :qid |stdinbpl.417:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_12487| (|Seq#Append_25061| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3176) (t@@2 T@Seq_3176) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3176| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3176| s@@16)) (|Seq#Length_3176| s@@16)) n@@16) (= (|Seq#Drop_3176| (|Seq#Append_3176| s@@16 t@@2) n@@16) (|Seq#Drop_3176| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3176| s@@16))))))
 :qid |stdinbpl.417:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3176| (|Seq#Append_3176| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_18899) (SummandMask1 T@PolymorphicMapType_18899) (SummandMask2 T@PolymorphicMapType_18899) (o_2@@23 T@Ref) (f_4@@23 T@Field_12477_55966) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_18899_12477_60660#PolymorphicMapType_18899| ResultMask) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_18899_12477_60660#PolymorphicMapType_18899| SummandMask1) o_2@@23 f_4@@23) (select (|PolymorphicMapType_18899_12477_60660#PolymorphicMapType_18899| SummandMask2) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_18899_12477_60660#PolymorphicMapType_18899| ResultMask) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_18899_12477_60660#PolymorphicMapType_18899| SummandMask1) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_18899_12477_60660#PolymorphicMapType_18899| SummandMask2) o_2@@23 f_4@@23))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_18899) (SummandMask1@@0 T@PolymorphicMapType_18899) (SummandMask2@@0 T@PolymorphicMapType_18899) (o_2@@24 T@Ref) (f_4@@24 T@Field_12477_55833) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_18899_12477_55833#PolymorphicMapType_18899| ResultMask@@0) o_2@@24 f_4@@24) (+ (select (|PolymorphicMapType_18899_12477_55833#PolymorphicMapType_18899| SummandMask1@@0) o_2@@24 f_4@@24) (select (|PolymorphicMapType_18899_12477_55833#PolymorphicMapType_18899| SummandMask2@@0) o_2@@24 f_4@@24))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_18899_12477_55833#PolymorphicMapType_18899| ResultMask@@0) o_2@@24 f_4@@24))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_18899_12477_55833#PolymorphicMapType_18899| SummandMask1@@0) o_2@@24 f_4@@24))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_18899_12477_55833#PolymorphicMapType_18899| SummandMask2@@0) o_2@@24 f_4@@24))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_18899) (SummandMask1@@1 T@PolymorphicMapType_18899) (SummandMask2@@1 T@PolymorphicMapType_18899) (o_2@@25 T@Ref) (f_4@@25 T@Field_18951_18952) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_18899_12477_18952#PolymorphicMapType_18899| ResultMask@@1) o_2@@25 f_4@@25) (+ (select (|PolymorphicMapType_18899_12477_18952#PolymorphicMapType_18899| SummandMask1@@1) o_2@@25 f_4@@25) (select (|PolymorphicMapType_18899_12477_18952#PolymorphicMapType_18899| SummandMask2@@1) o_2@@25 f_4@@25))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_18899_12477_18952#PolymorphicMapType_18899| ResultMask@@1) o_2@@25 f_4@@25))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_18899_12477_18952#PolymorphicMapType_18899| SummandMask1@@1) o_2@@25 f_4@@25))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_18899_12477_18952#PolymorphicMapType_18899| SummandMask2@@1) o_2@@25 f_4@@25))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_18899) (SummandMask1@@2 T@PolymorphicMapType_18899) (SummandMask2@@2 T@PolymorphicMapType_18899) (o_2@@26 T@Ref) (f_4@@26 T@Field_18938_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_18899_12477_53#PolymorphicMapType_18899| ResultMask@@2) o_2@@26 f_4@@26) (+ (select (|PolymorphicMapType_18899_12477_53#PolymorphicMapType_18899| SummandMask1@@2) o_2@@26 f_4@@26) (select (|PolymorphicMapType_18899_12477_53#PolymorphicMapType_18899| SummandMask2@@2) o_2@@26 f_4@@26))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_18899_12477_53#PolymorphicMapType_18899| ResultMask@@2) o_2@@26 f_4@@26))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_18899_12477_53#PolymorphicMapType_18899| SummandMask1@@2) o_2@@26 f_4@@26))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_18899_12477_53#PolymorphicMapType_18899| SummandMask2@@2) o_2@@26 f_4@@26))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_18899) (SummandMask1@@3 T@PolymorphicMapType_18899) (SummandMask2@@3 T@PolymorphicMapType_18899) (o_2@@27 T@Ref) (f_4@@27 T@Field_25058_25063) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_18899_12481_44015#PolymorphicMapType_18899| ResultMask@@3) o_2@@27 f_4@@27) (+ (select (|PolymorphicMapType_18899_12481_44015#PolymorphicMapType_18899| SummandMask1@@3) o_2@@27 f_4@@27) (select (|PolymorphicMapType_18899_12481_44015#PolymorphicMapType_18899| SummandMask2@@3) o_2@@27 f_4@@27))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_18899_12481_44015#PolymorphicMapType_18899| ResultMask@@3) o_2@@27 f_4@@27))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_18899_12481_44015#PolymorphicMapType_18899| SummandMask1@@3) o_2@@27 f_4@@27))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_18899_12481_44015#PolymorphicMapType_18899| SummandMask2@@3) o_2@@27 f_4@@27))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_18899) (SummandMask1@@4 T@PolymorphicMapType_18899) (SummandMask2@@4 T@PolymorphicMapType_18899) (o_2@@28 T@Ref) (f_4@@28 T@Field_24981_3298) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| ResultMask@@4) o_2@@28 f_4@@28) (+ (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| SummandMask1@@4) o_2@@28 f_4@@28) (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| SummandMask2@@4) o_2@@28 f_4@@28))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| ResultMask@@4) o_2@@28 f_4@@28))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| SummandMask1@@4) o_2@@28 f_4@@28))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| SummandMask2@@4) o_2@@28 f_4@@28))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3176| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3176| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.582:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3176| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_25061) (b T@Seq_25061) ) (!  (=> (|Seq#Equal_25061| a b) (= a b))
 :qid |stdinbpl.555:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_25061| a b))
)))
(assert (forall ((a@@0 T@Seq_3176) (b@@0 T@Seq_3176) ) (!  (=> (|Seq#Equal_3176| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.555:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3176| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_25061) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_12487| s@@17))) (|Seq#ContainsTrigger_12487| s@@17 (|Seq#Index_12487| s@@17 i@@3)))
 :qid |stdinbpl.448:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_12487| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_3176) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_3176| s@@18))) (|Seq#ContainsTrigger_3176| s@@18 (|Seq#Index_3176| s@@18 i@@4)))
 :qid |stdinbpl.448:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3176| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_25061) (s1@@3 T@Seq_25061) ) (!  (and (=> (= s0@@3 |Seq#Empty_12487|) (= (|Seq#Append_25061| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_12487|) (= (|Seq#Append_25061| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.266:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_25061| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3176) (s1@@4 T@Seq_3176) ) (!  (and (=> (= s0@@4 |Seq#Empty_3176|) (= (|Seq#Append_3176| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3176|) (= (|Seq#Append_3176| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.266:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3176| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_12487| (|Seq#Singleton_12487| t@@3) 0) t@@3)
 :qid |stdinbpl.270:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_12487| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3176| (|Seq#Singleton_3176| t@@4) 0) t@@4)
 :qid |stdinbpl.270:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3176| t@@4))
)))
(assert (forall ((s@@19 T@Seq_25061) ) (! (<= 0 (|Seq#Length_12487| s@@19))
 :qid |stdinbpl.249:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_12487| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3176) ) (! (<= 0 (|Seq#Length_3176| s@@20))
 :qid |stdinbpl.249:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3176| s@@20))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_18878) (ExhaleHeap@@9 T@PolymorphicMapType_18878) (Mask@@22 T@PolymorphicMapType_18899) (pm_f_37@@1 T@Field_12477_55833) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@22) (=> (and (HasDirectPerm_12477_55897 Mask@@22 null pm_f_37@@1) (IsPredicateField_12477_55924 pm_f_37@@1)) (and (and (and (and (and (forall ((o2_37 T@Ref) (f_29@@5 T@Field_18938_53) ) (!  (=> (select (|PolymorphicMapType_19427_18938_53#PolymorphicMapType_19427| (select (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| Heap@@10) null (PredicateMaskField_12477 pm_f_37@@1))) o2_37 f_29@@5) (= (select (|PolymorphicMapType_18878_12263_53#PolymorphicMapType_18878| Heap@@10) o2_37 f_29@@5) (select (|PolymorphicMapType_18878_12263_53#PolymorphicMapType_18878| ExhaleHeap@@9) o2_37 f_29@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18878_12263_53#PolymorphicMapType_18878| ExhaleHeap@@9) o2_37 f_29@@5))
)) (forall ((o2_37@@0 T@Ref) (f_29@@6 T@Field_18951_18952) ) (!  (=> (select (|PolymorphicMapType_19427_18938_18952#PolymorphicMapType_19427| (select (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| Heap@@10) null (PredicateMaskField_12477 pm_f_37@@1))) o2_37@@0 f_29@@6) (= (select (|PolymorphicMapType_18878_12266_12267#PolymorphicMapType_18878| Heap@@10) o2_37@@0 f_29@@6) (select (|PolymorphicMapType_18878_12266_12267#PolymorphicMapType_18878| ExhaleHeap@@9) o2_37@@0 f_29@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18878_12266_12267#PolymorphicMapType_18878| ExhaleHeap@@9) o2_37@@0 f_29@@6))
))) (forall ((o2_37@@1 T@Ref) (f_29@@7 T@Field_24981_3298) ) (!  (=> (select (|PolymorphicMapType_19427_18938_3298#PolymorphicMapType_19427| (select (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| Heap@@10) null (PredicateMaskField_12477 pm_f_37@@1))) o2_37@@1 f_29@@7) (= (select (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| Heap@@10) o2_37@@1 f_29@@7) (select (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| ExhaleHeap@@9) o2_37@@1 f_29@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| ExhaleHeap@@9) o2_37@@1 f_29@@7))
))) (forall ((o2_37@@2 T@Ref) (f_29@@8 T@Field_25058_25063) ) (!  (=> (select (|PolymorphicMapType_19427_18938_25063#PolymorphicMapType_19427| (select (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| Heap@@10) null (PredicateMaskField_12477 pm_f_37@@1))) o2_37@@2 f_29@@8) (= (select (|PolymorphicMapType_18878_12481_44279#PolymorphicMapType_18878| Heap@@10) o2_37@@2 f_29@@8) (select (|PolymorphicMapType_18878_12481_44279#PolymorphicMapType_18878| ExhaleHeap@@9) o2_37@@2 f_29@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18878_12481_44279#PolymorphicMapType_18878| ExhaleHeap@@9) o2_37@@2 f_29@@8))
))) (forall ((o2_37@@3 T@Ref) (f_29@@9 T@Field_12477_55833) ) (!  (=> (select (|PolymorphicMapType_19427_18938_55833#PolymorphicMapType_19427| (select (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| Heap@@10) null (PredicateMaskField_12477 pm_f_37@@1))) o2_37@@3 f_29@@9) (= (select (|PolymorphicMapType_18878_18938_55833#PolymorphicMapType_18878| Heap@@10) o2_37@@3 f_29@@9) (select (|PolymorphicMapType_18878_18938_55833#PolymorphicMapType_18878| ExhaleHeap@@9) o2_37@@3 f_29@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18878_18938_55833#PolymorphicMapType_18878| ExhaleHeap@@9) o2_37@@3 f_29@@9))
))) (forall ((o2_37@@4 T@Ref) (f_29@@10 T@Field_12477_55966) ) (!  (=> (select (|PolymorphicMapType_19427_18938_57348#PolymorphicMapType_19427| (select (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| Heap@@10) null (PredicateMaskField_12477 pm_f_37@@1))) o2_37@@4 f_29@@10) (= (select (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| Heap@@10) o2_37@@4 f_29@@10) (select (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| ExhaleHeap@@9) o2_37@@4 f_29@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| ExhaleHeap@@9) o2_37@@4 f_29@@10))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@22) (IsPredicateField_12477_55924 pm_f_37@@1))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_18878) (ExhaleHeap@@10 T@PolymorphicMapType_18878) (Mask@@23 T@PolymorphicMapType_18899) (pm_f_37@@2 T@Field_12477_55833) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@23) (=> (and (HasDirectPerm_12477_55897 Mask@@23 null pm_f_37@@2) (IsWandField_12477_57875 pm_f_37@@2)) (and (and (and (and (and (forall ((o2_37@@5 T@Ref) (f_29@@11 T@Field_18938_53) ) (!  (=> (select (|PolymorphicMapType_19427_18938_53#PolymorphicMapType_19427| (select (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| Heap@@11) null (WandMaskField_12477 pm_f_37@@2))) o2_37@@5 f_29@@11) (= (select (|PolymorphicMapType_18878_12263_53#PolymorphicMapType_18878| Heap@@11) o2_37@@5 f_29@@11) (select (|PolymorphicMapType_18878_12263_53#PolymorphicMapType_18878| ExhaleHeap@@10) o2_37@@5 f_29@@11)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18878_12263_53#PolymorphicMapType_18878| ExhaleHeap@@10) o2_37@@5 f_29@@11))
)) (forall ((o2_37@@6 T@Ref) (f_29@@12 T@Field_18951_18952) ) (!  (=> (select (|PolymorphicMapType_19427_18938_18952#PolymorphicMapType_19427| (select (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| Heap@@11) null (WandMaskField_12477 pm_f_37@@2))) o2_37@@6 f_29@@12) (= (select (|PolymorphicMapType_18878_12266_12267#PolymorphicMapType_18878| Heap@@11) o2_37@@6 f_29@@12) (select (|PolymorphicMapType_18878_12266_12267#PolymorphicMapType_18878| ExhaleHeap@@10) o2_37@@6 f_29@@12)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18878_12266_12267#PolymorphicMapType_18878| ExhaleHeap@@10) o2_37@@6 f_29@@12))
))) (forall ((o2_37@@7 T@Ref) (f_29@@13 T@Field_24981_3298) ) (!  (=> (select (|PolymorphicMapType_19427_18938_3298#PolymorphicMapType_19427| (select (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| Heap@@11) null (WandMaskField_12477 pm_f_37@@2))) o2_37@@7 f_29@@13) (= (select (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| Heap@@11) o2_37@@7 f_29@@13) (select (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| ExhaleHeap@@10) o2_37@@7 f_29@@13)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| ExhaleHeap@@10) o2_37@@7 f_29@@13))
))) (forall ((o2_37@@8 T@Ref) (f_29@@14 T@Field_25058_25063) ) (!  (=> (select (|PolymorphicMapType_19427_18938_25063#PolymorphicMapType_19427| (select (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| Heap@@11) null (WandMaskField_12477 pm_f_37@@2))) o2_37@@8 f_29@@14) (= (select (|PolymorphicMapType_18878_12481_44279#PolymorphicMapType_18878| Heap@@11) o2_37@@8 f_29@@14) (select (|PolymorphicMapType_18878_12481_44279#PolymorphicMapType_18878| ExhaleHeap@@10) o2_37@@8 f_29@@14)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18878_12481_44279#PolymorphicMapType_18878| ExhaleHeap@@10) o2_37@@8 f_29@@14))
))) (forall ((o2_37@@9 T@Ref) (f_29@@15 T@Field_12477_55833) ) (!  (=> (select (|PolymorphicMapType_19427_18938_55833#PolymorphicMapType_19427| (select (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| Heap@@11) null (WandMaskField_12477 pm_f_37@@2))) o2_37@@9 f_29@@15) (= (select (|PolymorphicMapType_18878_18938_55833#PolymorphicMapType_18878| Heap@@11) o2_37@@9 f_29@@15) (select (|PolymorphicMapType_18878_18938_55833#PolymorphicMapType_18878| ExhaleHeap@@10) o2_37@@9 f_29@@15)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18878_18938_55833#PolymorphicMapType_18878| ExhaleHeap@@10) o2_37@@9 f_29@@15))
))) (forall ((o2_37@@10 T@Ref) (f_29@@16 T@Field_12477_55966) ) (!  (=> (select (|PolymorphicMapType_19427_18938_57348#PolymorphicMapType_19427| (select (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| Heap@@11) null (WandMaskField_12477 pm_f_37@@2))) o2_37@@10 f_29@@16) (= (select (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| Heap@@11) o2_37@@10 f_29@@16) (select (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| ExhaleHeap@@10) o2_37@@10 f_29@@16)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| ExhaleHeap@@10) o2_37@@10 f_29@@16))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@23) (IsWandField_12477_57875 pm_f_37@@2))
)))
(assert (forall ((s0@@5 T@Seq_25061) (s1@@5 T@Seq_25061) ) (!  (=> (|Seq#Equal_25061| s0@@5 s1@@5) (and (= (|Seq#Length_12487| s0@@5) (|Seq#Length_12487| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_12487| s0@@5))) (= (|Seq#Index_12487| s0@@5 j@@6) (|Seq#Index_12487| s1@@5 j@@6)))
 :qid |stdinbpl.545:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_12487| s0@@5 j@@6))
 :pattern ( (|Seq#Index_12487| s1@@5 j@@6))
))))
 :qid |stdinbpl.542:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_25061| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3176) (s1@@6 T@Seq_3176) ) (!  (=> (|Seq#Equal_3176| s0@@6 s1@@6) (and (= (|Seq#Length_3176| s0@@6) (|Seq#Length_3176| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_3176| s0@@6))) (= (|Seq#Index_3176| s0@@6 j@@7) (|Seq#Index_3176| s1@@6 j@@7)))
 :qid |stdinbpl.545:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3176| s0@@6 j@@7))
 :pattern ( (|Seq#Index_3176| s1@@6 j@@7))
))))
 :qid |stdinbpl.542:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3176| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_12487| (|Seq#Singleton_12487| t@@5)) 1)
 :qid |stdinbpl.257:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_12487| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3176| (|Seq#Singleton_3176| t@@6)) 1)
 :qid |stdinbpl.257:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3176| t@@6))
)))
(assert (forall ((s@@21 T@Seq_25061) (t@@7 T@Seq_25061) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_12487| s@@21))) (= (|Seq#Take_12487| (|Seq#Append_25061| s@@21 t@@7) n@@17) (|Seq#Take_12487| s@@21 n@@17)))
 :qid |stdinbpl.399:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_12487| (|Seq#Append_25061| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3176) (t@@8 T@Seq_3176) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3176| s@@22))) (= (|Seq#Take_3176| (|Seq#Append_3176| s@@22 t@@8) n@@18) (|Seq#Take_3176| s@@22 n@@18)))
 :qid |stdinbpl.399:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3176| (|Seq#Append_3176| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_25061) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_12487| s@@23))) (= (|Seq#Length_12487| (|Seq#Update_12487| s@@23 i@@5 v@@2)) (|Seq#Length_12487| s@@23)))
 :qid |stdinbpl.298:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_12487| (|Seq#Update_12487| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_12487| s@@23) (|Seq#Update_12487| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3176) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_3176| s@@24))) (= (|Seq#Length_3176| (|Seq#Update_3176| s@@24 i@@6 v@@3)) (|Seq#Length_3176| s@@24)))
 :qid |stdinbpl.298:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3176| (|Seq#Update_3176| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_3176| s@@24) (|Seq#Update_3176| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_18878) (o_13 T@Ref) (f_66 T@Field_12477_55833) (v@@4 T@FrameType) ) (! (succHeap Heap@@12 (PolymorphicMapType_18878 (|PolymorphicMapType_18878_12263_53#PolymorphicMapType_18878| Heap@@12) (|PolymorphicMapType_18878_12266_12267#PolymorphicMapType_18878| Heap@@12) (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| Heap@@12) (|PolymorphicMapType_18878_12481_44279#PolymorphicMapType_18878| Heap@@12) (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| Heap@@12) (store (|PolymorphicMapType_18878_18938_55833#PolymorphicMapType_18878| Heap@@12) o_13 f_66 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18878 (|PolymorphicMapType_18878_12263_53#PolymorphicMapType_18878| Heap@@12) (|PolymorphicMapType_18878_12266_12267#PolymorphicMapType_18878| Heap@@12) (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| Heap@@12) (|PolymorphicMapType_18878_12481_44279#PolymorphicMapType_18878| Heap@@12) (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| Heap@@12) (store (|PolymorphicMapType_18878_18938_55833#PolymorphicMapType_18878| Heap@@12) o_13 f_66 v@@4)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_18878) (o_13@@0 T@Ref) (f_66@@0 T@Field_12477_55966) (v@@5 T@PolymorphicMapType_19427) ) (! (succHeap Heap@@13 (PolymorphicMapType_18878 (|PolymorphicMapType_18878_12263_53#PolymorphicMapType_18878| Heap@@13) (|PolymorphicMapType_18878_12266_12267#PolymorphicMapType_18878| Heap@@13) (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| Heap@@13) (|PolymorphicMapType_18878_12481_44279#PolymorphicMapType_18878| Heap@@13) (store (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| Heap@@13) o_13@@0 f_66@@0 v@@5) (|PolymorphicMapType_18878_18938_55833#PolymorphicMapType_18878| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18878 (|PolymorphicMapType_18878_12263_53#PolymorphicMapType_18878| Heap@@13) (|PolymorphicMapType_18878_12266_12267#PolymorphicMapType_18878| Heap@@13) (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| Heap@@13) (|PolymorphicMapType_18878_12481_44279#PolymorphicMapType_18878| Heap@@13) (store (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| Heap@@13) o_13@@0 f_66@@0 v@@5) (|PolymorphicMapType_18878_18938_55833#PolymorphicMapType_18878| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_18878) (o_13@@1 T@Ref) (f_66@@1 T@Field_25058_25063) (v@@6 T@Seq_25061) ) (! (succHeap Heap@@14 (PolymorphicMapType_18878 (|PolymorphicMapType_18878_12263_53#PolymorphicMapType_18878| Heap@@14) (|PolymorphicMapType_18878_12266_12267#PolymorphicMapType_18878| Heap@@14) (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| Heap@@14) (store (|PolymorphicMapType_18878_12481_44279#PolymorphicMapType_18878| Heap@@14) o_13@@1 f_66@@1 v@@6) (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| Heap@@14) (|PolymorphicMapType_18878_18938_55833#PolymorphicMapType_18878| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18878 (|PolymorphicMapType_18878_12263_53#PolymorphicMapType_18878| Heap@@14) (|PolymorphicMapType_18878_12266_12267#PolymorphicMapType_18878| Heap@@14) (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| Heap@@14) (store (|PolymorphicMapType_18878_12481_44279#PolymorphicMapType_18878| Heap@@14) o_13@@1 f_66@@1 v@@6) (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| Heap@@14) (|PolymorphicMapType_18878_18938_55833#PolymorphicMapType_18878| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_18878) (o_13@@2 T@Ref) (f_66@@2 T@Field_24981_3298) (v@@7 Int) ) (! (succHeap Heap@@15 (PolymorphicMapType_18878 (|PolymorphicMapType_18878_12263_53#PolymorphicMapType_18878| Heap@@15) (|PolymorphicMapType_18878_12266_12267#PolymorphicMapType_18878| Heap@@15) (store (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| Heap@@15) o_13@@2 f_66@@2 v@@7) (|PolymorphicMapType_18878_12481_44279#PolymorphicMapType_18878| Heap@@15) (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| Heap@@15) (|PolymorphicMapType_18878_18938_55833#PolymorphicMapType_18878| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18878 (|PolymorphicMapType_18878_12263_53#PolymorphicMapType_18878| Heap@@15) (|PolymorphicMapType_18878_12266_12267#PolymorphicMapType_18878| Heap@@15) (store (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| Heap@@15) o_13@@2 f_66@@2 v@@7) (|PolymorphicMapType_18878_12481_44279#PolymorphicMapType_18878| Heap@@15) (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| Heap@@15) (|PolymorphicMapType_18878_18938_55833#PolymorphicMapType_18878| Heap@@15)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_18878) (o_13@@3 T@Ref) (f_66@@3 T@Field_18951_18952) (v@@8 T@Ref) ) (! (succHeap Heap@@16 (PolymorphicMapType_18878 (|PolymorphicMapType_18878_12263_53#PolymorphicMapType_18878| Heap@@16) (store (|PolymorphicMapType_18878_12266_12267#PolymorphicMapType_18878| Heap@@16) o_13@@3 f_66@@3 v@@8) (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| Heap@@16) (|PolymorphicMapType_18878_12481_44279#PolymorphicMapType_18878| Heap@@16) (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| Heap@@16) (|PolymorphicMapType_18878_18938_55833#PolymorphicMapType_18878| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18878 (|PolymorphicMapType_18878_12263_53#PolymorphicMapType_18878| Heap@@16) (store (|PolymorphicMapType_18878_12266_12267#PolymorphicMapType_18878| Heap@@16) o_13@@3 f_66@@3 v@@8) (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| Heap@@16) (|PolymorphicMapType_18878_12481_44279#PolymorphicMapType_18878| Heap@@16) (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| Heap@@16) (|PolymorphicMapType_18878_18938_55833#PolymorphicMapType_18878| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_18878) (o_13@@4 T@Ref) (f_66@@4 T@Field_18938_53) (v@@9 Bool) ) (! (succHeap Heap@@17 (PolymorphicMapType_18878 (store (|PolymorphicMapType_18878_12263_53#PolymorphicMapType_18878| Heap@@17) o_13@@4 f_66@@4 v@@9) (|PolymorphicMapType_18878_12266_12267#PolymorphicMapType_18878| Heap@@17) (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| Heap@@17) (|PolymorphicMapType_18878_12481_44279#PolymorphicMapType_18878| Heap@@17) (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| Heap@@17) (|PolymorphicMapType_18878_18938_55833#PolymorphicMapType_18878| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18878 (store (|PolymorphicMapType_18878_12263_53#PolymorphicMapType_18878| Heap@@17) o_13@@4 f_66@@4 v@@9) (|PolymorphicMapType_18878_12266_12267#PolymorphicMapType_18878| Heap@@17) (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| Heap@@17) (|PolymorphicMapType_18878_12481_44279#PolymorphicMapType_18878| Heap@@17) (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| Heap@@17) (|PolymorphicMapType_18878_18938_55833#PolymorphicMapType_18878| Heap@@17)))
)))
(assert (forall ((s@@25 T@Seq_25061) (t@@9 T@Seq_25061) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_12487| s@@25))) (= (|Seq#Drop_12487| (|Seq#Append_25061| s@@25 t@@9) n@@19) (|Seq#Append_25061| (|Seq#Drop_12487| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.413:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_12487| (|Seq#Append_25061| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3176) (t@@10 T@Seq_3176) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3176| s@@26))) (= (|Seq#Drop_3176| (|Seq#Append_3176| s@@26 t@@10) n@@20) (|Seq#Append_3176| (|Seq#Drop_3176| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.413:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3176| (|Seq#Append_3176| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_25061) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_12487| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_12487| (|Seq#Drop_12487| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_12487| s@@27 i@@7))))
 :qid |stdinbpl.349:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_12487| s@@27 n@@21) (|Seq#Index_12487| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_3176) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_3176| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_3176| (|Seq#Drop_3176| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_3176| s@@28 i@@8))))
 :qid |stdinbpl.349:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3176| s@@28 n@@22) (|Seq#Index_3176| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_25061) (s1@@7 T@Seq_25061) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_12487|)) (not (= s1@@7 |Seq#Empty_12487|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_12487| s0@@7))) (= (|Seq#Index_12487| (|Seq#Append_25061| s0@@7 s1@@7) n@@23) (|Seq#Index_12487| s0@@7 n@@23)))
 :qid |stdinbpl.289:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_12487| (|Seq#Append_25061| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_12487| s0@@7 n@@23) (|Seq#Append_25061| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3176) (s1@@8 T@Seq_3176) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3176|)) (not (= s1@@8 |Seq#Empty_3176|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3176| s0@@8))) (= (|Seq#Index_3176| (|Seq#Append_3176| s0@@8 s1@@8) n@@24) (|Seq#Index_3176| s0@@8 n@@24)))
 :qid |stdinbpl.289:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3176| (|Seq#Append_3176| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3176| s0@@8 n@@24) (|Seq#Append_3176| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_25061) (s1@@9 T@Seq_25061) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_12487|)) (not (= s1@@9 |Seq#Empty_12487|))) (<= 0 m)) (< m (|Seq#Length_12487| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_12487| s0@@9)) (|Seq#Length_12487| s0@@9)) m) (= (|Seq#Index_12487| (|Seq#Append_25061| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_12487| s0@@9))) (|Seq#Index_12487| s1@@9 m))))
 :qid |stdinbpl.294:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_12487| s1@@9 m) (|Seq#Append_25061| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3176) (s1@@10 T@Seq_3176) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3176|)) (not (= s1@@10 |Seq#Empty_3176|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3176| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3176| s0@@10)) (|Seq#Length_3176| s0@@10)) m@@0) (= (|Seq#Index_3176| (|Seq#Append_3176| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3176| s0@@10))) (|Seq#Index_3176| s1@@10 m@@0))))
 :qid |stdinbpl.294:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3176| s1@@10 m@@0) (|Seq#Append_3176| s0@@10 s1@@10))
)))
(assert (forall ((o_13@@5 T@Ref) (f_20 T@Field_18951_18952) (Heap@@18 T@PolymorphicMapType_18878) ) (!  (=> (select (|PolymorphicMapType_18878_12263_53#PolymorphicMapType_18878| Heap@@18) o_13@@5 $allocated) (select (|PolymorphicMapType_18878_12263_53#PolymorphicMapType_18878| Heap@@18) (select (|PolymorphicMapType_18878_12266_12267#PolymorphicMapType_18878| Heap@@18) o_13@@5 f_20) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_18878_12266_12267#PolymorphicMapType_18878| Heap@@18) o_13@@5 f_20))
)))
(assert (forall ((s@@29 T@Seq_25061) (x@@3 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_12487| s@@29))) (= (|Seq#Index_12487| s@@29 i@@9) x@@3)) (|Seq#Contains_25061| s@@29 x@@3))
 :qid |stdinbpl.446:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_25061| s@@29 x@@3) (|Seq#Index_12487| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_3176) (x@@4 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_3176| s@@30))) (= (|Seq#Index_3176| s@@30 i@@10) x@@4)) (|Seq#Contains_3176| s@@30 x@@4))
 :qid |stdinbpl.446:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3176| s@@30 x@@4) (|Seq#Index_3176| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_25061) (s1@@11 T@Seq_25061) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_25061| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_25061| s0@@11 s1@@11))) (not (= (|Seq#Length_12487| s0@@11) (|Seq#Length_12487| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_25061| s0@@11 s1@@11))) (= (|Seq#Length_12487| s0@@11) (|Seq#Length_12487| s1@@11))) (= (|Seq#SkolemDiff_25061| s0@@11 s1@@11) (|Seq#SkolemDiff_25061| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_25061| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_25061| s0@@11 s1@@11) (|Seq#Length_12487| s0@@11))) (not (= (|Seq#Index_12487| s0@@11 (|Seq#SkolemDiff_25061| s0@@11 s1@@11)) (|Seq#Index_12487| s1@@11 (|Seq#SkolemDiff_25061| s0@@11 s1@@11))))))
 :qid |stdinbpl.550:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_25061| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3176) (s1@@12 T@Seq_3176) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3176| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3176| s0@@12 s1@@12))) (not (= (|Seq#Length_3176| s0@@12) (|Seq#Length_3176| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3176| s0@@12 s1@@12))) (= (|Seq#Length_3176| s0@@12) (|Seq#Length_3176| s1@@12))) (= (|Seq#SkolemDiff_3176| s0@@12 s1@@12) (|Seq#SkolemDiff_3176| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3176| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3176| s0@@12 s1@@12) (|Seq#Length_3176| s0@@12))) (not (= (|Seq#Index_3176| s0@@12 (|Seq#SkolemDiff_3176| s0@@12 s1@@12)) (|Seq#Index_3176| s1@@12 (|Seq#SkolemDiff_3176| s0@@12 s1@@12))))))
 :qid |stdinbpl.550:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3176| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_12477_55833) (v_1@@0 T@FrameType) (q T@Field_12477_55833) (w@@0 T@FrameType) (r T@Field_12477_55833) (u T@FrameType) ) (!  (=> (and (InsidePredicate_18938_18938 p@@1 v_1@@0 q w@@0) (InsidePredicate_18938_18938 q w@@0 r u)) (InsidePredicate_18938_18938 p@@1 v_1@@0 r u))
 :qid |stdinbpl.217:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18938_18938 p@@1 v_1@@0 q w@@0) (InsidePredicate_18938_18938 q w@@0 r u))
)))
(assert (forall ((s@@31 T@Seq_25061) ) (!  (=> (= (|Seq#Length_12487| s@@31) 0) (= s@@31 |Seq#Empty_12487|))
 :qid |stdinbpl.253:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_12487| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3176) ) (!  (=> (= (|Seq#Length_3176| s@@32) 0) (= s@@32 |Seq#Empty_3176|))
 :qid |stdinbpl.253:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3176| s@@32))
)))
(assert (forall ((s@@33 T@Seq_25061) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_12487| s@@33 n@@25) |Seq#Empty_12487|))
 :qid |stdinbpl.429:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_12487| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3176) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3176| s@@34 n@@26) |Seq#Empty_3176|))
 :qid |stdinbpl.429:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3176| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun n@@27 () Int)
(declare-fun i_7 () Int)
(declare-fun xs () T@Seq_25061)
(declare-fun dummyFunction_3298 (Int) Bool)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_18878)
(declare-fun neverTriggered5 (Int) Bool)
(declare-fun QPMask@1 () T@PolymorphicMapType_18899)
(declare-fun Heap@@19 () T@PolymorphicMapType_18878)
(declare-fun neverTriggered4 (Int) Bool)
(declare-fun QPMask@0 () T@PolymorphicMapType_18899)
(declare-fun qpRange4 (T@Ref) Bool)
(declare-fun invRecv4 (T@Ref) Int)
(declare-fun i_15 () Int)
(declare-fun qpRange3 (T@Ref) Bool)
(declare-fun invRecv3 (T@Ref) Int)
(declare-fun i_5 () Int)
(declare-fun i1_25 () Int)
(declare-fun i2_16 () Int)
(set-info :boogie-vc-id test2_1)
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
 (=> (= (ControlFlow 0 0) 35) (let ((anon15_correct true))
(let ((anon24_Else_correct  (=> (and (not (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_7)) (= (ControlFlow 0 26) 22)) anon15_correct)))
(let ((anon24_Then_correct  (=> (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_7) (and (=> (= (ControlFlow 0 23) (- 0 25)) (>= i_7 0)) (=> (>= i_7 0) (and (=> (= (ControlFlow 0 23) (- 0 24)) (< i_7 (|Seq#Length_12487| xs))) (=> (< i_7 (|Seq#Length_12487| xs)) (=> (= (ControlFlow 0 23) 22) anon15_correct))))))))
(let ((anon23_Else_correct  (and (=> (= (ControlFlow 0 19) (- 0 21)) (forall ((i_5_1 Int) ) (!  (=> (and (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_5_1) (dummyFunction_3298 (select (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| ExhaleHeap@0) (|Seq#Index_12487| xs i_5_1) f_7))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.990:17|
 :skolemid |85|
 :pattern ( (|Seq#Index_12487| xs i_5_1))
 :pattern ( (|Seq#ContainsTrigger_3176| (|Seq#Range| 0 n@@27) i_5_1))
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_5_1))
 :pattern ( (|Seq#Index_12487| xs i_5_1))
))) (=> (forall ((i_5_1@@0 Int) ) (!  (=> (and (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_5_1@@0) (dummyFunction_3298 (select (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| ExhaleHeap@0) (|Seq#Index_12487| xs i_5_1@@0) f_7))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.990:17|
 :skolemid |85|
 :pattern ( (|Seq#Index_12487| xs i_5_1@@0))
 :pattern ( (|Seq#ContainsTrigger_3176| (|Seq#Range| 0 n@@27) i_5_1@@0))
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_5_1@@0))
 :pattern ( (|Seq#Index_12487| xs i_5_1@@0))
)) (and (=> (= (ControlFlow 0 19) (- 0 20)) (forall ((i_5_1@@1 Int) (i_5_2 Int) ) (!  (=> (and (and (and (and (not (= i_5_1@@1 i_5_2)) (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_5_1@@1)) (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_5_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_12487| xs i_5_1@@1) (|Seq#Index_12487| xs i_5_2))))
 :qid |stdinbpl.997:17|
 :skolemid |86|
 :pattern ( (neverTriggered5 i_5_1@@1) (neverTriggered5 i_5_2))
))) (=> (forall ((i_5_1@@2 Int) (i_5_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_5_1@@2 i_5_2@@0)) (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_5_1@@2)) (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_5_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_12487| xs i_5_1@@2) (|Seq#Index_12487| xs i_5_2@@0))))
 :qid |stdinbpl.997:17|
 :skolemid |86|
 :pattern ( (neverTriggered5 i_5_1@@2) (neverTriggered5 i_5_2@@0))
)) (=> (= (ControlFlow 0 19) (- 0 18)) (forall ((i_5_1@@3 Int) ) (!  (=> (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_5_1@@3) (>= (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| QPMask@1) (|Seq#Index_12487| xs i_5_1@@3) f_7) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.1004:17|
 :skolemid |87|
 :pattern ( (|Seq#Index_12487| xs i_5_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3176| (|Seq#Range| 0 n@@27) i_5_1@@3))
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_5_1@@3))
 :pattern ( (|Seq#Index_12487| xs i_5_1@@3))
)))))))))
(let ((anon21_Else_correct  (and (=> (= (ControlFlow 0 27) (- 0 30)) (forall ((i_3_2 Int) ) (!  (=> (and (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_3_2) (dummyFunction_3298 (select (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| Heap@@19) (|Seq#Index_12487| xs i_3_2) f_7))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.922:17|
 :skolemid |78|
 :pattern ( (|Seq#Index_12487| xs i_3_2))
 :pattern ( (|Seq#ContainsTrigger_3176| (|Seq#Range| 0 n@@27) i_3_2))
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_3_2))
 :pattern ( (|Seq#Index_12487| xs i_3_2))
))) (=> (forall ((i_3_2@@0 Int) ) (!  (=> (and (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_3_2@@0) (dummyFunction_3298 (select (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| Heap@@19) (|Seq#Index_12487| xs i_3_2@@0) f_7))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.922:17|
 :skolemid |78|
 :pattern ( (|Seq#Index_12487| xs i_3_2@@0))
 :pattern ( (|Seq#ContainsTrigger_3176| (|Seq#Range| 0 n@@27) i_3_2@@0))
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_3_2@@0))
 :pattern ( (|Seq#Index_12487| xs i_3_2@@0))
)) (and (=> (= (ControlFlow 0 27) (- 0 29)) (forall ((i_3_2@@1 Int) (i_3_3 Int) ) (!  (=> (and (and (and (and (not (= i_3_2@@1 i_3_3)) (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_3_2@@1)) (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_3_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_12487| xs i_3_2@@1) (|Seq#Index_12487| xs i_3_3))))
 :qid |stdinbpl.929:17|
 :skolemid |79|
 :pattern ( (neverTriggered4 i_3_2@@1) (neverTriggered4 i_3_3))
))) (=> (forall ((i_3_2@@2 Int) (i_3_3@@0 Int) ) (!  (=> (and (and (and (and (not (= i_3_2@@2 i_3_3@@0)) (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_3_2@@2)) (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_3_3@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_12487| xs i_3_2@@2) (|Seq#Index_12487| xs i_3_3@@0))))
 :qid |stdinbpl.929:17|
 :skolemid |79|
 :pattern ( (neverTriggered4 i_3_2@@2) (neverTriggered4 i_3_3@@0))
)) (and (=> (= (ControlFlow 0 27) (- 0 28)) (forall ((i_3_2@@3 Int) ) (!  (=> (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_3_2@@3) (>= (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| QPMask@0) (|Seq#Index_12487| xs i_3_2@@3) f_7) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.936:17|
 :skolemid |80|
 :pattern ( (|Seq#Index_12487| xs i_3_2@@3))
 :pattern ( (|Seq#ContainsTrigger_3176| (|Seq#Range| 0 n@@27) i_3_2@@3))
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_3_2@@3))
 :pattern ( (|Seq#Index_12487| xs i_3_2@@3))
))) (=> (forall ((i_3_2@@4 Int) ) (!  (=> (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_3_2@@4) (>= (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| QPMask@0) (|Seq#Index_12487| xs i_3_2@@4) f_7) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.936:17|
 :skolemid |80|
 :pattern ( (|Seq#Index_12487| xs i_3_2@@4))
 :pattern ( (|Seq#ContainsTrigger_3176| (|Seq#Range| 0 n@@27) i_3_2@@4))
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_3_2@@4))
 :pattern ( (|Seq#Index_12487| xs i_3_2@@4))
)) (=> (forall ((i_3_2@@5 Int) ) (!  (=> (and (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_3_2@@5) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange4 (|Seq#Index_12487| xs i_3_2@@5)) (= (invRecv4 (|Seq#Index_12487| xs i_3_2@@5)) i_3_2@@5)))
 :qid |stdinbpl.942:22|
 :skolemid |81|
 :pattern ( (|Seq#Index_12487| xs i_3_2@@5))
 :pattern ( (|Seq#ContainsTrigger_3176| (|Seq#Range| 0 n@@27) i_3_2@@5))
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_3_2@@5))
 :pattern ( (|Seq#Index_12487| xs i_3_2@@5))
)) (=> (and (forall ((o_9 T@Ref) ) (!  (=> (and (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) (invRecv4 o_9)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange4 o_9))) (= (|Seq#Index_12487| xs (invRecv4 o_9)) o_9))
 :qid |stdinbpl.946:22|
 :skolemid |82|
 :pattern ( (invRecv4 o_9))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) (invRecv4 o_9@@0)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange4 o_9@@0))) (and (= (|Seq#Index_12487| xs (invRecv4 o_9@@0)) o_9@@0) (= (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| QPMask@1) o_9@@0 f_7) (- (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| QPMask@0) o_9@@0 f_7) (/ (to_real 1) (to_real 2)))))) (=> (not (and (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) (invRecv4 o_9@@0)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange4 o_9@@0)))) (= (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| QPMask@1) o_9@@0 f_7) (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| QPMask@0) o_9@@0 f_7))))
 :qid |stdinbpl.952:22|
 :skolemid |83|
 :pattern ( (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| QPMask@1) o_9@@0 f_7))
))) (=> (and (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_18938_53) ) (!  (=> true (= (select (|PolymorphicMapType_18899_12477_53#PolymorphicMapType_18899| QPMask@0) o_9@@1 f_5) (select (|PolymorphicMapType_18899_12477_53#PolymorphicMapType_18899| QPMask@1) o_9@@1 f_5)))
 :qid |stdinbpl.958:29|
 :skolemid |84|
 :pattern ( (select (|PolymorphicMapType_18899_12477_53#PolymorphicMapType_18899| QPMask@1) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_18951_18952) ) (!  (=> true (= (select (|PolymorphicMapType_18899_12477_18952#PolymorphicMapType_18899| QPMask@0) o_9@@2 f_5@@0) (select (|PolymorphicMapType_18899_12477_18952#PolymorphicMapType_18899| QPMask@1) o_9@@2 f_5@@0)))
 :qid |stdinbpl.958:29|
 :skolemid |84|
 :pattern ( (select (|PolymorphicMapType_18899_12477_18952#PolymorphicMapType_18899| QPMask@1) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_24981_3298) ) (!  (=> (not (= f_5@@1 f_7)) (= (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| QPMask@0) o_9@@3 f_5@@1) (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| QPMask@1) o_9@@3 f_5@@1)))
 :qid |stdinbpl.958:29|
 :skolemid |84|
 :pattern ( (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| QPMask@1) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_25058_25063) ) (!  (=> true (= (select (|PolymorphicMapType_18899_12481_44015#PolymorphicMapType_18899| QPMask@0) o_9@@4 f_5@@2) (select (|PolymorphicMapType_18899_12481_44015#PolymorphicMapType_18899| QPMask@1) o_9@@4 f_5@@2)))
 :qid |stdinbpl.958:29|
 :skolemid |84|
 :pattern ( (select (|PolymorphicMapType_18899_12481_44015#PolymorphicMapType_18899| QPMask@1) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_12477_55833) ) (!  (=> true (= (select (|PolymorphicMapType_18899_12477_55833#PolymorphicMapType_18899| QPMask@0) o_9@@5 f_5@@3) (select (|PolymorphicMapType_18899_12477_55833#PolymorphicMapType_18899| QPMask@1) o_9@@5 f_5@@3)))
 :qid |stdinbpl.958:29|
 :skolemid |84|
 :pattern ( (select (|PolymorphicMapType_18899_12477_55833#PolymorphicMapType_18899| QPMask@1) o_9@@5 f_5@@3))
))) (forall ((o_9@@6 T@Ref) (f_5@@4 T@Field_12477_55966) ) (!  (=> true (= (select (|PolymorphicMapType_18899_12477_60660#PolymorphicMapType_18899| QPMask@0) o_9@@6 f_5@@4) (select (|PolymorphicMapType_18899_12477_60660#PolymorphicMapType_18899| QPMask@1) o_9@@6 f_5@@4)))
 :qid |stdinbpl.958:29|
 :skolemid |84|
 :pattern ( (select (|PolymorphicMapType_18899_12477_60660#PolymorphicMapType_18899| QPMask@1) o_9@@6 f_5@@4))
))) (and (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@0 QPMask@1) (state ExhaleHeap@0 QPMask@1))) (and (and (=> (= (ControlFlow 0 27) 19) anon23_Else_correct) (=> (= (ControlFlow 0 27) 23) anon24_Then_correct)) (=> (= (ControlFlow 0 27) 26) anon24_Else_correct)))))))))))))
(let ((anon11_correct true))
(let ((anon22_Else_correct  (=> (and (not (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_15)) (= (ControlFlow 0 17) 13)) anon11_correct)))
(let ((anon22_Then_correct  (=> (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_15) (and (=> (= (ControlFlow 0 14) (- 0 16)) (>= i_15 0)) (=> (>= i_15 0) (and (=> (= (ControlFlow 0 14) (- 0 15)) (< i_15 (|Seq#Length_12487| xs))) (=> (< i_15 (|Seq#Length_12487| xs)) (=> (= (ControlFlow 0 14) 13) anon11_correct))))))))
(let ((anon19_Else_correct  (and (=> (= (ControlFlow 0 31) (- 0 32)) (forall ((i_1 Int) (i_1_1 Int) ) (!  (=> (and (and (and (and (not (= i_1 i_1_1)) (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_1)) (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_12487| xs i_1) (|Seq#Index_12487| xs i_1_1))))
 :qid |stdinbpl.866:15|
 :skolemid |72|
))) (=> (forall ((i_1@@0 Int) (i_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_1@@0 i_1_1@@0)) (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_1@@0)) (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_12487| xs i_1@@0) (|Seq#Index_12487| xs i_1_1@@0))))
 :qid |stdinbpl.866:15|
 :skolemid |72|
)) (=> (and (and (forall ((i_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_1@@1) (< NoPerm FullPerm)) (and (qpRange3 (|Seq#Index_12487| xs i_1@@1)) (= (invRecv3 (|Seq#Index_12487| xs i_1@@1)) i_1@@1)))
 :qid |stdinbpl.872:22|
 :skolemid |73|
 :pattern ( (|Seq#Index_12487| xs i_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3176| (|Seq#Range| 0 n@@27) i_1@@1))
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_1@@1))
 :pattern ( (|Seq#Index_12487| xs i_1@@1))
)) (forall ((o_9@@7 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) (invRecv3 o_9@@7)) (< NoPerm FullPerm)) (qpRange3 o_9@@7)) (= (|Seq#Index_12487| xs (invRecv3 o_9@@7)) o_9@@7))
 :qid |stdinbpl.876:22|
 :skolemid |74|
 :pattern ( (invRecv3 o_9@@7))
))) (and (forall ((i_1@@2 Int) ) (!  (=> (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_1@@2) (not (= (|Seq#Index_12487| xs i_1@@2) null)))
 :qid |stdinbpl.882:22|
 :skolemid |75|
 :pattern ( (|Seq#Index_12487| xs i_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3176| (|Seq#Range| 0 n@@27) i_1@@2))
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_1@@2))
 :pattern ( (|Seq#Index_12487| xs i_1@@2))
)) (forall ((o_9@@8 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) (invRecv3 o_9@@8)) (< NoPerm FullPerm)) (qpRange3 o_9@@8)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_12487| xs (invRecv3 o_9@@8)) o_9@@8)) (= (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| QPMask@0) o_9@@8 f_7) (+ (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| ZeroMask) o_9@@8 f_7) FullPerm)))) (=> (not (and (and (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) (invRecv3 o_9@@8)) (< NoPerm FullPerm)) (qpRange3 o_9@@8))) (= (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| QPMask@0) o_9@@8 f_7) (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| ZeroMask) o_9@@8 f_7))))
 :qid |stdinbpl.888:22|
 :skolemid |76|
 :pattern ( (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| QPMask@0) o_9@@8 f_7))
)))) (=> (and (and (and (and (and (and (and (forall ((o_9@@9 T@Ref) (f_5@@5 T@Field_18938_53) ) (!  (=> true (= (select (|PolymorphicMapType_18899_12477_53#PolymorphicMapType_18899| ZeroMask) o_9@@9 f_5@@5) (select (|PolymorphicMapType_18899_12477_53#PolymorphicMapType_18899| QPMask@0) o_9@@9 f_5@@5)))
 :qid |stdinbpl.892:29|
 :skolemid |77|
 :pattern ( (select (|PolymorphicMapType_18899_12477_53#PolymorphicMapType_18899| ZeroMask) o_9@@9 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_18899_12477_53#PolymorphicMapType_18899| QPMask@0) o_9@@9 f_5@@5))
)) (forall ((o_9@@10 T@Ref) (f_5@@6 T@Field_18951_18952) ) (!  (=> true (= (select (|PolymorphicMapType_18899_12477_18952#PolymorphicMapType_18899| ZeroMask) o_9@@10 f_5@@6) (select (|PolymorphicMapType_18899_12477_18952#PolymorphicMapType_18899| QPMask@0) o_9@@10 f_5@@6)))
 :qid |stdinbpl.892:29|
 :skolemid |77|
 :pattern ( (select (|PolymorphicMapType_18899_12477_18952#PolymorphicMapType_18899| ZeroMask) o_9@@10 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_18899_12477_18952#PolymorphicMapType_18899| QPMask@0) o_9@@10 f_5@@6))
))) (forall ((o_9@@11 T@Ref) (f_5@@7 T@Field_24981_3298) ) (!  (=> (not (= f_5@@7 f_7)) (= (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| ZeroMask) o_9@@11 f_5@@7) (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| QPMask@0) o_9@@11 f_5@@7)))
 :qid |stdinbpl.892:29|
 :skolemid |77|
 :pattern ( (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| ZeroMask) o_9@@11 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| QPMask@0) o_9@@11 f_5@@7))
))) (forall ((o_9@@12 T@Ref) (f_5@@8 T@Field_25058_25063) ) (!  (=> true (= (select (|PolymorphicMapType_18899_12481_44015#PolymorphicMapType_18899| ZeroMask) o_9@@12 f_5@@8) (select (|PolymorphicMapType_18899_12481_44015#PolymorphicMapType_18899| QPMask@0) o_9@@12 f_5@@8)))
 :qid |stdinbpl.892:29|
 :skolemid |77|
 :pattern ( (select (|PolymorphicMapType_18899_12481_44015#PolymorphicMapType_18899| ZeroMask) o_9@@12 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_18899_12481_44015#PolymorphicMapType_18899| QPMask@0) o_9@@12 f_5@@8))
))) (forall ((o_9@@13 T@Ref) (f_5@@9 T@Field_12477_55833) ) (!  (=> true (= (select (|PolymorphicMapType_18899_12477_55833#PolymorphicMapType_18899| ZeroMask) o_9@@13 f_5@@9) (select (|PolymorphicMapType_18899_12477_55833#PolymorphicMapType_18899| QPMask@0) o_9@@13 f_5@@9)))
 :qid |stdinbpl.892:29|
 :skolemid |77|
 :pattern ( (select (|PolymorphicMapType_18899_12477_55833#PolymorphicMapType_18899| ZeroMask) o_9@@13 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_18899_12477_55833#PolymorphicMapType_18899| QPMask@0) o_9@@13 f_5@@9))
))) (forall ((o_9@@14 T@Ref) (f_5@@10 T@Field_12477_55966) ) (!  (=> true (= (select (|PolymorphicMapType_18899_12477_60660#PolymorphicMapType_18899| ZeroMask) o_9@@14 f_5@@10) (select (|PolymorphicMapType_18899_12477_60660#PolymorphicMapType_18899| QPMask@0) o_9@@14 f_5@@10)))
 :qid |stdinbpl.892:29|
 :skolemid |77|
 :pattern ( (select (|PolymorphicMapType_18899_12477_60660#PolymorphicMapType_18899| ZeroMask) o_9@@14 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_18899_12477_60660#PolymorphicMapType_18899| QPMask@0) o_9@@14 f_5@@10))
))) (state Heap@@19 QPMask@0)) (and (state Heap@@19 QPMask@0) (state Heap@@19 QPMask@0))) (and (and (=> (= (ControlFlow 0 31) 27) anon21_Else_correct) (=> (= (ControlFlow 0 31) 14) anon22_Then_correct)) (=> (= (ControlFlow 0 31) 17) anon22_Else_correct))))))))
(let ((anon7_correct true))
(let ((anon20_Else_correct  (=> (and (not (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_5)) (= (ControlFlow 0 12) 8)) anon7_correct)))
(let ((anon20_Then_correct  (=> (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_5) (and (=> (= (ControlFlow 0 9) (- 0 11)) (>= i_5 0)) (=> (>= i_5 0) (and (=> (= (ControlFlow 0 9) (- 0 10)) (< i_5 (|Seq#Length_12487| xs))) (=> (< i_5 (|Seq#Length_12487| xs)) (=> (= (ControlFlow 0 9) 8) anon7_correct))))))))
(let ((anon17_Else_correct  (=> (forall ((i1_1 Int) (i2_1 Int) ) (!  (=> (and (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i1_1) (and (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i2_1) (not (= i1_1 i2_1)))) (not (= (|Seq#Index_12487| xs i1_1) (|Seq#Index_12487| xs i2_1))))
 :qid |stdinbpl.842:20|
 :skolemid |71|
 :pattern ( (|Seq#ContainsTrigger_3176| (|Seq#Range| 0 n@@27) i1_1) (|Seq#ContainsTrigger_3176| (|Seq#Range| 0 n@@27) i2_1))
 :pattern ( (|Seq#ContainsTrigger_3176| (|Seq#Range| 0 n@@27) i1_1) (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i2_1))
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i1_1) (|Seq#ContainsTrigger_3176| (|Seq#Range| 0 n@@27) i2_1))
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i1_1) (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i2_1))
 :pattern ( (|Seq#ContainsTrigger_3176| (|Seq#Range| 0 n@@27) i1_1) (|Seq#Index_12487| xs i2_1))
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i1_1) (|Seq#Index_12487| xs i2_1))
 :pattern ( (|Seq#ContainsTrigger_3176| (|Seq#Range| 0 n@@27) i2_1) (|Seq#Index_12487| xs i1_1))
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i2_1) (|Seq#Index_12487| xs i1_1))
 :pattern ( (|Seq#Index_12487| xs i1_1) (|Seq#Index_12487| xs i2_1))
)) (=> (and (state Heap@@19 ZeroMask) (state Heap@@19 ZeroMask)) (and (and (=> (= (ControlFlow 0 33) 31) anon19_Else_correct) (=> (= (ControlFlow 0 33) 9) anon20_Then_correct)) (=> (= (ControlFlow 0 33) 12) anon20_Else_correct))))))
(let ((anon3_correct true))
(let ((anon18_Else_correct  (=> (and (not (and (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i1_25) (and (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i2_16) (not (= i1_25 i2_16))))) (= (ControlFlow 0 7) 1)) anon3_correct)))
(let ((anon18_Then_correct  (=> (and (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i1_25) (and (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i2_16) (not (= i1_25 i2_16)))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= i1_25 0)) (=> (>= i1_25 0) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< i1_25 (|Seq#Length_12487| xs))) (=> (< i1_25 (|Seq#Length_12487| xs)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= i2_16 0)) (=> (>= i2_16 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< i2_16 (|Seq#Length_12487| xs))) (=> (< i2_16 (|Seq#Length_12487| xs)) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))))))))
(let ((anon0_correct  (=> (and (state Heap@@19 ZeroMask) AssumePermUpperBound) (=> (and (and (= (|Seq#Length_12487| xs) n@@27) (state Heap@@19 ZeroMask)) (and (> n@@27 2) (state Heap@@19 ZeroMask))) (and (and (=> (= (ControlFlow 0 34) 33) anon17_Else_correct) (=> (= (ControlFlow 0 34) 2) anon18_Then_correct)) (=> (= (ControlFlow 0 34) 7) anon18_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 35) 34) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
