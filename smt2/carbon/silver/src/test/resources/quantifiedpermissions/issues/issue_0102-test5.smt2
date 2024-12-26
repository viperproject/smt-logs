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
(declare-fun value () T@Field_24981_3298)
(declare-fun array () T@Field_25058_25063)
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
(assert (distinct f_7 value)
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
(assert (forall ((Heap@@0 T@PolymorphicMapType_18878) (ExhaleHeap T@PolymorphicMapType_18878) (Mask@@0 T@PolymorphicMapType_18899) (pm_f_12 T@Field_12477_55833) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_12477_55897 Mask@@0 null pm_f_12) (IsPredicateField_12477_55924 pm_f_12)) (= (select (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| Heap@@0) null (PredicateMaskField_12477 pm_f_12)) (select (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| ExhaleHeap) null (PredicateMaskField_12477 pm_f_12)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_12477_55924 pm_f_12) (select (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| ExhaleHeap) null (PredicateMaskField_12477 pm_f_12)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_18878) (ExhaleHeap@@0 T@PolymorphicMapType_18878) (Mask@@1 T@PolymorphicMapType_18899) (pm_f_12@@0 T@Field_12477_55833) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_12477_55897 Mask@@1 null pm_f_12@@0) (IsWandField_12477_57875 pm_f_12@@0)) (= (select (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| Heap@@1) null (WandMaskField_12477 pm_f_12@@0)) (select (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| ExhaleHeap@@0) null (WandMaskField_12477 pm_f_12@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_12477_57875 pm_f_12@@0) (select (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| ExhaleHeap@@0) null (WandMaskField_12477 pm_f_12@@0)))
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
(assert (forall ((Heap@@2 T@PolymorphicMapType_18878) (ExhaleHeap@@1 T@PolymorphicMapType_18878) (Mask@@2 T@PolymorphicMapType_18899) (o_13 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_18878_12263_53#PolymorphicMapType_18878| Heap@@2) o_13 $allocated) (select (|PolymorphicMapType_18878_12263_53#PolymorphicMapType_18878| ExhaleHeap@@1) o_13 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_18878_12263_53#PolymorphicMapType_18878| ExhaleHeap@@1) o_13 $allocated))
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
(assert  (not (IsPredicateField_12477_3298 value)))
(assert  (not (IsWandField_12477_3298 value)))
(assert  (not (IsPredicateField_12481_25085 array)))
(assert  (not (IsWandField_12481_25111 array)))
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
(assert (forall ((Heap@@4 T@PolymorphicMapType_18878) (ExhaleHeap@@3 T@PolymorphicMapType_18878) (Mask@@16 T@PolymorphicMapType_18899) (o_13@@0 T@Ref) (f_18 T@Field_12477_55966) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@16) (=> (HasDirectPerm_12477_62546 Mask@@16 o_13@@0 f_18) (= (select (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| Heap@@4) o_13@@0 f_18) (select (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| ExhaleHeap@@3) o_13@@0 f_18))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@16) (select (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| ExhaleHeap@@3) o_13@@0 f_18))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_18878) (ExhaleHeap@@4 T@PolymorphicMapType_18878) (Mask@@17 T@PolymorphicMapType_18899) (o_13@@1 T@Ref) (f_18@@0 T@Field_12477_55833) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@17) (=> (HasDirectPerm_12477_55897 Mask@@17 o_13@@1 f_18@@0) (= (select (|PolymorphicMapType_18878_18938_55833#PolymorphicMapType_18878| Heap@@5) o_13@@1 f_18@@0) (select (|PolymorphicMapType_18878_18938_55833#PolymorphicMapType_18878| ExhaleHeap@@4) o_13@@1 f_18@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@17) (select (|PolymorphicMapType_18878_18938_55833#PolymorphicMapType_18878| ExhaleHeap@@4) o_13@@1 f_18@@0))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_18878) (ExhaleHeap@@5 T@PolymorphicMapType_18878) (Mask@@18 T@PolymorphicMapType_18899) (o_13@@2 T@Ref) (f_18@@1 T@Field_18951_18952) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@18) (=> (HasDirectPerm_12477_18952 Mask@@18 o_13@@2 f_18@@1) (= (select (|PolymorphicMapType_18878_12266_12267#PolymorphicMapType_18878| Heap@@6) o_13@@2 f_18@@1) (select (|PolymorphicMapType_18878_12266_12267#PolymorphicMapType_18878| ExhaleHeap@@5) o_13@@2 f_18@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@18) (select (|PolymorphicMapType_18878_12266_12267#PolymorphicMapType_18878| ExhaleHeap@@5) o_13@@2 f_18@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_18878) (ExhaleHeap@@6 T@PolymorphicMapType_18878) (Mask@@19 T@PolymorphicMapType_18899) (o_13@@3 T@Ref) (f_18@@2 T@Field_18938_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@19) (=> (HasDirectPerm_12477_53 Mask@@19 o_13@@3 f_18@@2) (= (select (|PolymorphicMapType_18878_12263_53#PolymorphicMapType_18878| Heap@@7) o_13@@3 f_18@@2) (select (|PolymorphicMapType_18878_12263_53#PolymorphicMapType_18878| ExhaleHeap@@6) o_13@@3 f_18@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@19) (select (|PolymorphicMapType_18878_12263_53#PolymorphicMapType_18878| ExhaleHeap@@6) o_13@@3 f_18@@2))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_18878) (ExhaleHeap@@7 T@PolymorphicMapType_18878) (Mask@@20 T@PolymorphicMapType_18899) (o_13@@4 T@Ref) (f_18@@3 T@Field_25058_25063) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@20) (=> (HasDirectPerm_12481_44212 Mask@@20 o_13@@4 f_18@@3) (= (select (|PolymorphicMapType_18878_12481_44279#PolymorphicMapType_18878| Heap@@8) o_13@@4 f_18@@3) (select (|PolymorphicMapType_18878_12481_44279#PolymorphicMapType_18878| ExhaleHeap@@7) o_13@@4 f_18@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@20) (select (|PolymorphicMapType_18878_12481_44279#PolymorphicMapType_18878| ExhaleHeap@@7) o_13@@4 f_18@@3))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_18878) (ExhaleHeap@@8 T@PolymorphicMapType_18878) (Mask@@21 T@PolymorphicMapType_18899) (o_13@@5 T@Ref) (f_18@@4 T@Field_24981_3298) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@21) (=> (HasDirectPerm_12477_3298 Mask@@21 o_13@@5 f_18@@4) (= (select (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| Heap@@9) o_13@@5 f_18@@4) (select (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| ExhaleHeap@@8) o_13@@5 f_18@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@21) (select (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| ExhaleHeap@@8) o_13@@5 f_18@@4))
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
(assert (forall ((Heap@@10 T@PolymorphicMapType_18878) (ExhaleHeap@@9 T@PolymorphicMapType_18878) (Mask@@22 T@PolymorphicMapType_18899) (pm_f_12@@1 T@Field_12477_55833) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@22) (=> (and (HasDirectPerm_12477_55897 Mask@@22 null pm_f_12@@1) (IsPredicateField_12477_55924 pm_f_12@@1)) (and (and (and (and (and (forall ((o2_12 T@Ref) (f_18@@5 T@Field_18938_53) ) (!  (=> (select (|PolymorphicMapType_19427_18938_53#PolymorphicMapType_19427| (select (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| Heap@@10) null (PredicateMaskField_12477 pm_f_12@@1))) o2_12 f_18@@5) (= (select (|PolymorphicMapType_18878_12263_53#PolymorphicMapType_18878| Heap@@10) o2_12 f_18@@5) (select (|PolymorphicMapType_18878_12263_53#PolymorphicMapType_18878| ExhaleHeap@@9) o2_12 f_18@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18878_12263_53#PolymorphicMapType_18878| ExhaleHeap@@9) o2_12 f_18@@5))
)) (forall ((o2_12@@0 T@Ref) (f_18@@6 T@Field_18951_18952) ) (!  (=> (select (|PolymorphicMapType_19427_18938_18952#PolymorphicMapType_19427| (select (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| Heap@@10) null (PredicateMaskField_12477 pm_f_12@@1))) o2_12@@0 f_18@@6) (= (select (|PolymorphicMapType_18878_12266_12267#PolymorphicMapType_18878| Heap@@10) o2_12@@0 f_18@@6) (select (|PolymorphicMapType_18878_12266_12267#PolymorphicMapType_18878| ExhaleHeap@@9) o2_12@@0 f_18@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18878_12266_12267#PolymorphicMapType_18878| ExhaleHeap@@9) o2_12@@0 f_18@@6))
))) (forall ((o2_12@@1 T@Ref) (f_18@@7 T@Field_24981_3298) ) (!  (=> (select (|PolymorphicMapType_19427_18938_3298#PolymorphicMapType_19427| (select (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| Heap@@10) null (PredicateMaskField_12477 pm_f_12@@1))) o2_12@@1 f_18@@7) (= (select (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| Heap@@10) o2_12@@1 f_18@@7) (select (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| ExhaleHeap@@9) o2_12@@1 f_18@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| ExhaleHeap@@9) o2_12@@1 f_18@@7))
))) (forall ((o2_12@@2 T@Ref) (f_18@@8 T@Field_25058_25063) ) (!  (=> (select (|PolymorphicMapType_19427_18938_25063#PolymorphicMapType_19427| (select (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| Heap@@10) null (PredicateMaskField_12477 pm_f_12@@1))) o2_12@@2 f_18@@8) (= (select (|PolymorphicMapType_18878_12481_44279#PolymorphicMapType_18878| Heap@@10) o2_12@@2 f_18@@8) (select (|PolymorphicMapType_18878_12481_44279#PolymorphicMapType_18878| ExhaleHeap@@9) o2_12@@2 f_18@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18878_12481_44279#PolymorphicMapType_18878| ExhaleHeap@@9) o2_12@@2 f_18@@8))
))) (forall ((o2_12@@3 T@Ref) (f_18@@9 T@Field_12477_55833) ) (!  (=> (select (|PolymorphicMapType_19427_18938_55833#PolymorphicMapType_19427| (select (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| Heap@@10) null (PredicateMaskField_12477 pm_f_12@@1))) o2_12@@3 f_18@@9) (= (select (|PolymorphicMapType_18878_18938_55833#PolymorphicMapType_18878| Heap@@10) o2_12@@3 f_18@@9) (select (|PolymorphicMapType_18878_18938_55833#PolymorphicMapType_18878| ExhaleHeap@@9) o2_12@@3 f_18@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18878_18938_55833#PolymorphicMapType_18878| ExhaleHeap@@9) o2_12@@3 f_18@@9))
))) (forall ((o2_12@@4 T@Ref) (f_18@@10 T@Field_12477_55966) ) (!  (=> (select (|PolymorphicMapType_19427_18938_57348#PolymorphicMapType_19427| (select (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| Heap@@10) null (PredicateMaskField_12477 pm_f_12@@1))) o2_12@@4 f_18@@10) (= (select (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| Heap@@10) o2_12@@4 f_18@@10) (select (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| ExhaleHeap@@9) o2_12@@4 f_18@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| ExhaleHeap@@9) o2_12@@4 f_18@@10))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@22) (IsPredicateField_12477_55924 pm_f_12@@1))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_18878) (ExhaleHeap@@10 T@PolymorphicMapType_18878) (Mask@@23 T@PolymorphicMapType_18899) (pm_f_12@@2 T@Field_12477_55833) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@23) (=> (and (HasDirectPerm_12477_55897 Mask@@23 null pm_f_12@@2) (IsWandField_12477_57875 pm_f_12@@2)) (and (and (and (and (and (forall ((o2_12@@5 T@Ref) (f_18@@11 T@Field_18938_53) ) (!  (=> (select (|PolymorphicMapType_19427_18938_53#PolymorphicMapType_19427| (select (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| Heap@@11) null (WandMaskField_12477 pm_f_12@@2))) o2_12@@5 f_18@@11) (= (select (|PolymorphicMapType_18878_12263_53#PolymorphicMapType_18878| Heap@@11) o2_12@@5 f_18@@11) (select (|PolymorphicMapType_18878_12263_53#PolymorphicMapType_18878| ExhaleHeap@@10) o2_12@@5 f_18@@11)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18878_12263_53#PolymorphicMapType_18878| ExhaleHeap@@10) o2_12@@5 f_18@@11))
)) (forall ((o2_12@@6 T@Ref) (f_18@@12 T@Field_18951_18952) ) (!  (=> (select (|PolymorphicMapType_19427_18938_18952#PolymorphicMapType_19427| (select (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| Heap@@11) null (WandMaskField_12477 pm_f_12@@2))) o2_12@@6 f_18@@12) (= (select (|PolymorphicMapType_18878_12266_12267#PolymorphicMapType_18878| Heap@@11) o2_12@@6 f_18@@12) (select (|PolymorphicMapType_18878_12266_12267#PolymorphicMapType_18878| ExhaleHeap@@10) o2_12@@6 f_18@@12)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18878_12266_12267#PolymorphicMapType_18878| ExhaleHeap@@10) o2_12@@6 f_18@@12))
))) (forall ((o2_12@@7 T@Ref) (f_18@@13 T@Field_24981_3298) ) (!  (=> (select (|PolymorphicMapType_19427_18938_3298#PolymorphicMapType_19427| (select (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| Heap@@11) null (WandMaskField_12477 pm_f_12@@2))) o2_12@@7 f_18@@13) (= (select (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| Heap@@11) o2_12@@7 f_18@@13) (select (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| ExhaleHeap@@10) o2_12@@7 f_18@@13)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| ExhaleHeap@@10) o2_12@@7 f_18@@13))
))) (forall ((o2_12@@8 T@Ref) (f_18@@14 T@Field_25058_25063) ) (!  (=> (select (|PolymorphicMapType_19427_18938_25063#PolymorphicMapType_19427| (select (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| Heap@@11) null (WandMaskField_12477 pm_f_12@@2))) o2_12@@8 f_18@@14) (= (select (|PolymorphicMapType_18878_12481_44279#PolymorphicMapType_18878| Heap@@11) o2_12@@8 f_18@@14) (select (|PolymorphicMapType_18878_12481_44279#PolymorphicMapType_18878| ExhaleHeap@@10) o2_12@@8 f_18@@14)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18878_12481_44279#PolymorphicMapType_18878| ExhaleHeap@@10) o2_12@@8 f_18@@14))
))) (forall ((o2_12@@9 T@Ref) (f_18@@15 T@Field_12477_55833) ) (!  (=> (select (|PolymorphicMapType_19427_18938_55833#PolymorphicMapType_19427| (select (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| Heap@@11) null (WandMaskField_12477 pm_f_12@@2))) o2_12@@9 f_18@@15) (= (select (|PolymorphicMapType_18878_18938_55833#PolymorphicMapType_18878| Heap@@11) o2_12@@9 f_18@@15) (select (|PolymorphicMapType_18878_18938_55833#PolymorphicMapType_18878| ExhaleHeap@@10) o2_12@@9 f_18@@15)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18878_18938_55833#PolymorphicMapType_18878| ExhaleHeap@@10) o2_12@@9 f_18@@15))
))) (forall ((o2_12@@10 T@Ref) (f_18@@16 T@Field_12477_55966) ) (!  (=> (select (|PolymorphicMapType_19427_18938_57348#PolymorphicMapType_19427| (select (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| Heap@@11) null (WandMaskField_12477 pm_f_12@@2))) o2_12@@10 f_18@@16) (= (select (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| Heap@@11) o2_12@@10 f_18@@16) (select (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| ExhaleHeap@@10) o2_12@@10 f_18@@16)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| ExhaleHeap@@10) o2_12@@10 f_18@@16))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@23) (IsWandField_12477_57875 pm_f_12@@2))
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
(assert (forall ((Heap@@12 T@PolymorphicMapType_18878) (o_34 T@Ref) (f_36 T@Field_12477_55833) (v@@4 T@FrameType) ) (! (succHeap Heap@@12 (PolymorphicMapType_18878 (|PolymorphicMapType_18878_12263_53#PolymorphicMapType_18878| Heap@@12) (|PolymorphicMapType_18878_12266_12267#PolymorphicMapType_18878| Heap@@12) (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| Heap@@12) (|PolymorphicMapType_18878_12481_44279#PolymorphicMapType_18878| Heap@@12) (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| Heap@@12) (store (|PolymorphicMapType_18878_18938_55833#PolymorphicMapType_18878| Heap@@12) o_34 f_36 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18878 (|PolymorphicMapType_18878_12263_53#PolymorphicMapType_18878| Heap@@12) (|PolymorphicMapType_18878_12266_12267#PolymorphicMapType_18878| Heap@@12) (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| Heap@@12) (|PolymorphicMapType_18878_12481_44279#PolymorphicMapType_18878| Heap@@12) (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| Heap@@12) (store (|PolymorphicMapType_18878_18938_55833#PolymorphicMapType_18878| Heap@@12) o_34 f_36 v@@4)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_18878) (o_34@@0 T@Ref) (f_36@@0 T@Field_12477_55966) (v@@5 T@PolymorphicMapType_19427) ) (! (succHeap Heap@@13 (PolymorphicMapType_18878 (|PolymorphicMapType_18878_12263_53#PolymorphicMapType_18878| Heap@@13) (|PolymorphicMapType_18878_12266_12267#PolymorphicMapType_18878| Heap@@13) (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| Heap@@13) (|PolymorphicMapType_18878_12481_44279#PolymorphicMapType_18878| Heap@@13) (store (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| Heap@@13) o_34@@0 f_36@@0 v@@5) (|PolymorphicMapType_18878_18938_55833#PolymorphicMapType_18878| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18878 (|PolymorphicMapType_18878_12263_53#PolymorphicMapType_18878| Heap@@13) (|PolymorphicMapType_18878_12266_12267#PolymorphicMapType_18878| Heap@@13) (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| Heap@@13) (|PolymorphicMapType_18878_12481_44279#PolymorphicMapType_18878| Heap@@13) (store (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| Heap@@13) o_34@@0 f_36@@0 v@@5) (|PolymorphicMapType_18878_18938_55833#PolymorphicMapType_18878| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_18878) (o_34@@1 T@Ref) (f_36@@1 T@Field_25058_25063) (v@@6 T@Seq_25061) ) (! (succHeap Heap@@14 (PolymorphicMapType_18878 (|PolymorphicMapType_18878_12263_53#PolymorphicMapType_18878| Heap@@14) (|PolymorphicMapType_18878_12266_12267#PolymorphicMapType_18878| Heap@@14) (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| Heap@@14) (store (|PolymorphicMapType_18878_12481_44279#PolymorphicMapType_18878| Heap@@14) o_34@@1 f_36@@1 v@@6) (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| Heap@@14) (|PolymorphicMapType_18878_18938_55833#PolymorphicMapType_18878| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18878 (|PolymorphicMapType_18878_12263_53#PolymorphicMapType_18878| Heap@@14) (|PolymorphicMapType_18878_12266_12267#PolymorphicMapType_18878| Heap@@14) (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| Heap@@14) (store (|PolymorphicMapType_18878_12481_44279#PolymorphicMapType_18878| Heap@@14) o_34@@1 f_36@@1 v@@6) (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| Heap@@14) (|PolymorphicMapType_18878_18938_55833#PolymorphicMapType_18878| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_18878) (o_34@@2 T@Ref) (f_36@@2 T@Field_24981_3298) (v@@7 Int) ) (! (succHeap Heap@@15 (PolymorphicMapType_18878 (|PolymorphicMapType_18878_12263_53#PolymorphicMapType_18878| Heap@@15) (|PolymorphicMapType_18878_12266_12267#PolymorphicMapType_18878| Heap@@15) (store (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| Heap@@15) o_34@@2 f_36@@2 v@@7) (|PolymorphicMapType_18878_12481_44279#PolymorphicMapType_18878| Heap@@15) (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| Heap@@15) (|PolymorphicMapType_18878_18938_55833#PolymorphicMapType_18878| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18878 (|PolymorphicMapType_18878_12263_53#PolymorphicMapType_18878| Heap@@15) (|PolymorphicMapType_18878_12266_12267#PolymorphicMapType_18878| Heap@@15) (store (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| Heap@@15) o_34@@2 f_36@@2 v@@7) (|PolymorphicMapType_18878_12481_44279#PolymorphicMapType_18878| Heap@@15) (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| Heap@@15) (|PolymorphicMapType_18878_18938_55833#PolymorphicMapType_18878| Heap@@15)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_18878) (o_34@@3 T@Ref) (f_36@@3 T@Field_18951_18952) (v@@8 T@Ref) ) (! (succHeap Heap@@16 (PolymorphicMapType_18878 (|PolymorphicMapType_18878_12263_53#PolymorphicMapType_18878| Heap@@16) (store (|PolymorphicMapType_18878_12266_12267#PolymorphicMapType_18878| Heap@@16) o_34@@3 f_36@@3 v@@8) (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| Heap@@16) (|PolymorphicMapType_18878_12481_44279#PolymorphicMapType_18878| Heap@@16) (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| Heap@@16) (|PolymorphicMapType_18878_18938_55833#PolymorphicMapType_18878| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18878 (|PolymorphicMapType_18878_12263_53#PolymorphicMapType_18878| Heap@@16) (store (|PolymorphicMapType_18878_12266_12267#PolymorphicMapType_18878| Heap@@16) o_34@@3 f_36@@3 v@@8) (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| Heap@@16) (|PolymorphicMapType_18878_12481_44279#PolymorphicMapType_18878| Heap@@16) (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| Heap@@16) (|PolymorphicMapType_18878_18938_55833#PolymorphicMapType_18878| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_18878) (o_34@@4 T@Ref) (f_36@@4 T@Field_18938_53) (v@@9 Bool) ) (! (succHeap Heap@@17 (PolymorphicMapType_18878 (store (|PolymorphicMapType_18878_12263_53#PolymorphicMapType_18878| Heap@@17) o_34@@4 f_36@@4 v@@9) (|PolymorphicMapType_18878_12266_12267#PolymorphicMapType_18878| Heap@@17) (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| Heap@@17) (|PolymorphicMapType_18878_12481_44279#PolymorphicMapType_18878| Heap@@17) (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| Heap@@17) (|PolymorphicMapType_18878_18938_55833#PolymorphicMapType_18878| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18878 (store (|PolymorphicMapType_18878_12263_53#PolymorphicMapType_18878| Heap@@17) o_34@@4 f_36@@4 v@@9) (|PolymorphicMapType_18878_12266_12267#PolymorphicMapType_18878| Heap@@17) (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| Heap@@17) (|PolymorphicMapType_18878_12481_44279#PolymorphicMapType_18878| Heap@@17) (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| Heap@@17) (|PolymorphicMapType_18878_18938_55833#PolymorphicMapType_18878| Heap@@17)))
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
(assert (forall ((o_34@@5 T@Ref) (f_40 T@Field_18951_18952) (Heap@@18 T@PolymorphicMapType_18878) ) (!  (=> (select (|PolymorphicMapType_18878_12263_53#PolymorphicMapType_18878| Heap@@18) o_34@@5 $allocated) (select (|PolymorphicMapType_18878_12263_53#PolymorphicMapType_18878| Heap@@18) (select (|PolymorphicMapType_18878_12266_12267#PolymorphicMapType_18878| Heap@@18) o_34@@5 f_40) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_18878_12266_12267#PolymorphicMapType_18878| Heap@@18) o_34@@5 f_40))
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
(declare-fun i_20 () Int)
(declare-fun xs () T@Seq_25061)
(declare-fun QPMask@2 () T@PolymorphicMapType_18899)
(declare-fun QPMask@0 () T@PolymorphicMapType_18899)
(declare-fun PostHeap@0 () T@PolymorphicMapType_18878)
(declare-fun Heap@@19 () T@PolymorphicMapType_18878)
(declare-fun qpRange9 (T@Ref) Bool)
(declare-fun invRecv9 (T@Ref) Int)
(declare-fun i_13 () Int)
(declare-fun i_7_1 () Int)
(declare-fun Heap@1 () T@PolymorphicMapType_18878)
(declare-fun y@@1 () T@Ref)
(declare-fun Heap@0 () T@PolymorphicMapType_18878)
(declare-fun x@@5 () T@Ref)
(declare-fun dummyFunction_3298 (Int) Bool)
(declare-fun neverTriggered10 (Int) Bool)
(declare-fun qpRange10 (T@Ref) Bool)
(declare-fun invRecv10 (T@Ref) Int)
(declare-fun QPMask@1 () T@PolymorphicMapType_18899)
(declare-fun qpRange8 (T@Ref) Bool)
(declare-fun invRecv8 (T@Ref) Int)
(declare-fun Mask@1 () T@PolymorphicMapType_18899)
(declare-fun i_18 () Int)
(declare-fun i1_21 () Int)
(declare-fun i2_11 () Int)
(declare-fun perm@0 () Real)
(declare-fun Mask@0 () T@PolymorphicMapType_18899)
(declare-fun perm@1 () Real)
(set-info :boogie-vc-id test5)
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
 (=> (= (ControlFlow 0 0) 67) (let ((anon16_correct true))
(let ((anon31_Else_correct  (=> (and (not (|Seq#Contains_3176| (|Seq#Range| 2 n@@27) i_20)) (= (ControlFlow 0 53) 45)) anon16_correct)))
(let ((anon31_Then_correct  (=> (|Seq#Contains_3176| (|Seq#Range| 2 n@@27) i_20) (and (=> (= (ControlFlow 0 46) (- 0 52)) (>= i_20 0)) (=> (>= i_20 0) (and (=> (= (ControlFlow 0 46) (- 0 51)) (< i_20 (|Seq#Length_12487| xs))) (=> (< i_20 (|Seq#Length_12487| xs)) (and (=> (= (ControlFlow 0 46) (- 0 50)) (HasDirectPerm_12477_3298 QPMask@2 (|Seq#Index_12487| xs i_20) f_7)) (=> (HasDirectPerm_12477_3298 QPMask@2 (|Seq#Index_12487| xs i_20) f_7) (and (=> (= (ControlFlow 0 46) (- 0 49)) (>= i_20 0)) (=> (>= i_20 0) (and (=> (= (ControlFlow 0 46) (- 0 48)) (< i_20 (|Seq#Length_12487| xs))) (=> (< i_20 (|Seq#Length_12487| xs)) (and (=> (= (ControlFlow 0 46) (- 0 47)) (HasDirectPerm_12477_3298 QPMask@0 (|Seq#Index_12487| xs i_20) f_7)) (=> (HasDirectPerm_12477_3298 QPMask@0 (|Seq#Index_12487| xs i_20) f_7) (=> (= (ControlFlow 0 46) 45) anon16_correct))))))))))))))))
(let ((anon30_Else_correct  (=> (and (forall ((i_5 Int) ) (!  (=> (|Seq#Contains_3176| (|Seq#Range| 2 n@@27) i_5) (= (select (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| PostHeap@0) (|Seq#Index_12487| xs i_5) f_7) (select (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| Heap@@19) (|Seq#Index_12487| xs i_5) f_7)))
 :qid |stdinbpl.1449:20|
 :skolemid |122|
 :pattern ( (|Seq#ContainsTrigger_3176| (|Seq#Range| 2 n@@27) i_5))
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| 2 n@@27) i_5))
 :pattern ( (|Seq#Index_12487| xs i_5))
)) (state PostHeap@0 QPMask@2)) (and (=> (= (ControlFlow 0 37) (- 0 44)) (< 0 (|Seq#Length_12487| xs))) (=> (< 0 (|Seq#Length_12487| xs)) (and (=> (= (ControlFlow 0 37) (- 0 43)) (HasDirectPerm_12477_3298 QPMask@2 (|Seq#Index_12487| xs 0) f_7)) (=> (HasDirectPerm_12477_3298 QPMask@2 (|Seq#Index_12487| xs 0) f_7) (and (=> (= (ControlFlow 0 37) (- 0 42)) (< 1 (|Seq#Length_12487| xs))) (=> (< 1 (|Seq#Length_12487| xs)) (and (=> (= (ControlFlow 0 37) (- 0 41)) (HasDirectPerm_12477_3298 QPMask@0 (|Seq#Index_12487| xs 1) f_7)) (=> (HasDirectPerm_12477_3298 QPMask@0 (|Seq#Index_12487| xs 1) f_7) (=> (and (= (select (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| PostHeap@0) (|Seq#Index_12487| xs 0) f_7) (+ (select (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| Heap@@19) (|Seq#Index_12487| xs 1) f_7) 1)) (state PostHeap@0 QPMask@2)) (and (=> (= (ControlFlow 0 37) (- 0 40)) (< 1 (|Seq#Length_12487| xs))) (=> (< 1 (|Seq#Length_12487| xs)) (and (=> (= (ControlFlow 0 37) (- 0 39)) (HasDirectPerm_12477_3298 QPMask@2 (|Seq#Index_12487| xs 1) f_7)) (=> (HasDirectPerm_12477_3298 QPMask@2 (|Seq#Index_12487| xs 1) f_7) (and (=> (= (ControlFlow 0 37) (- 0 38)) (< 1 (|Seq#Length_12487| xs))) (=> (< 1 (|Seq#Length_12487| xs)) (=> (= (ControlFlow 0 37) (- 0 36)) (HasDirectPerm_12477_3298 QPMask@0 (|Seq#Index_12487| xs 1) f_7))))))))))))))))))))
(let ((anon28_Else_correct  (and (=> (= (ControlFlow 0 54) (- 0 56)) (forall ((i_3 Int) (i_3_1 Int) ) (!  (=> (and (and (and (and (not (= i_3 i_3_1)) (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_3)) (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_3_1)) (< NoPerm (ite (< i_3 2) FullPerm (/ (to_real 1) (to_real 10))))) (< NoPerm (ite (< i_3_1 2) FullPerm (/ (to_real 1) (to_real 10))))) (not (= (|Seq#Index_12487| xs i_3) (|Seq#Index_12487| xs i_3_1))))
 :qid |stdinbpl.1391:15|
 :skolemid |115|
))) (=> (forall ((i_3@@0 Int) (i_3_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_3@@0 i_3_1@@0)) (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_3@@0)) (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_3_1@@0)) (< NoPerm (ite (< i_3@@0 2) FullPerm (/ (to_real 1) (to_real 10))))) (< NoPerm (ite (< i_3_1@@0 2) FullPerm (/ (to_real 1) (to_real 10))))) (not (= (|Seq#Index_12487| xs i_3@@0) (|Seq#Index_12487| xs i_3_1@@0))))
 :qid |stdinbpl.1391:15|
 :skolemid |115|
)) (=> (and (forall ((i_3@@1 Int) ) (!  (=> (and (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_3@@1) (< NoPerm (ite (< i_3@@1 2) FullPerm (/ (to_real 1) (to_real 10))))) (and (qpRange9 (|Seq#Index_12487| xs i_3@@1)) (= (invRecv9 (|Seq#Index_12487| xs i_3@@1)) i_3@@1)))
 :qid |stdinbpl.1397:22|
 :skolemid |116|
 :pattern ( (|Seq#Index_12487| xs i_3@@1))
 :pattern ( (|Seq#ContainsTrigger_3176| (|Seq#Range| 0 n@@27) i_3@@1))
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_3@@1))
 :pattern ( (|Seq#Index_12487| xs i_3@@1))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) (invRecv9 o_4)) (< NoPerm (ite (< (invRecv9 o_4) 2) FullPerm (/ (to_real 1) (to_real 10))))) (qpRange9 o_4)) (= (|Seq#Index_12487| xs (invRecv9 o_4)) o_4))
 :qid |stdinbpl.1401:22|
 :skolemid |117|
 :pattern ( (invRecv9 o_4))
))) (and (=> (= (ControlFlow 0 54) (- 0 55)) (forall ((i_3@@2 Int) ) (!  (=> (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_3@@2) (>= (ite (< i_3@@2 2) FullPerm (/ (to_real 1) (to_real 10))) NoPerm))
 :qid |stdinbpl.1407:15|
 :skolemid |118|
 :pattern ( (|Seq#Index_12487| xs i_3@@2))
 :pattern ( (|Seq#ContainsTrigger_3176| (|Seq#Range| 0 n@@27) i_3@@2))
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_3@@2))
 :pattern ( (|Seq#Index_12487| xs i_3@@2))
))) (=> (forall ((i_3@@3 Int) ) (!  (=> (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_3@@3) (>= (ite (< i_3@@3 2) FullPerm (/ (to_real 1) (to_real 10))) NoPerm))
 :qid |stdinbpl.1407:15|
 :skolemid |118|
 :pattern ( (|Seq#Index_12487| xs i_3@@3))
 :pattern ( (|Seq#ContainsTrigger_3176| (|Seq#Range| 0 n@@27) i_3@@3))
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_3@@3))
 :pattern ( (|Seq#Index_12487| xs i_3@@3))
)) (=> (and (forall ((i_3@@4 Int) ) (!  (=> (and (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_3@@4) (> (ite (< i_3@@4 2) FullPerm (/ (to_real 1) (to_real 10))) NoPerm)) (not (= (|Seq#Index_12487| xs i_3@@4) null)))
 :qid |stdinbpl.1413:22|
 :skolemid |119|
 :pattern ( (|Seq#Index_12487| xs i_3@@4))
 :pattern ( (|Seq#ContainsTrigger_3176| (|Seq#Range| 0 n@@27) i_3@@4))
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_3@@4))
 :pattern ( (|Seq#Index_12487| xs i_3@@4))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) (invRecv9 o_4@@0)) (< NoPerm (ite (< (invRecv9 o_4@@0) 2) FullPerm (/ (to_real 1) (to_real 10))))) (qpRange9 o_4@@0)) (and (=> (< NoPerm (ite (< (invRecv9 o_4@@0) 2) FullPerm (/ (to_real 1) (to_real 10)))) (= (|Seq#Index_12487| xs (invRecv9 o_4@@0)) o_4@@0)) (= (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| QPMask@2) o_4@@0 f_7) (+ (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| ZeroMask) o_4@@0 f_7) (ite (< (invRecv9 o_4@@0) 2) FullPerm (/ (to_real 1) (to_real 10))))))) (=> (not (and (and (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) (invRecv9 o_4@@0)) (< NoPerm (ite (< (invRecv9 o_4@@0) 2) FullPerm (/ (to_real 1) (to_real 10))))) (qpRange9 o_4@@0))) (= (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| QPMask@2) o_4@@0 f_7) (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| ZeroMask) o_4@@0 f_7))))
 :qid |stdinbpl.1419:22|
 :skolemid |120|
 :pattern ( (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| QPMask@2) o_4@@0 f_7))
))) (=> (and (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_18938_53) ) (!  (=> true (= (select (|PolymorphicMapType_18899_12477_53#PolymorphicMapType_18899| ZeroMask) o_4@@1 f_5) (select (|PolymorphicMapType_18899_12477_53#PolymorphicMapType_18899| QPMask@2) o_4@@1 f_5)))
 :qid |stdinbpl.1423:29|
 :skolemid |121|
 :pattern ( (select (|PolymorphicMapType_18899_12477_53#PolymorphicMapType_18899| ZeroMask) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_18899_12477_53#PolymorphicMapType_18899| QPMask@2) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_18951_18952) ) (!  (=> true (= (select (|PolymorphicMapType_18899_12477_18952#PolymorphicMapType_18899| ZeroMask) o_4@@2 f_5@@0) (select (|PolymorphicMapType_18899_12477_18952#PolymorphicMapType_18899| QPMask@2) o_4@@2 f_5@@0)))
 :qid |stdinbpl.1423:29|
 :skolemid |121|
 :pattern ( (select (|PolymorphicMapType_18899_12477_18952#PolymorphicMapType_18899| ZeroMask) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_18899_12477_18952#PolymorphicMapType_18899| QPMask@2) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_24981_3298) ) (!  (=> (not (= f_5@@1 f_7)) (= (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| ZeroMask) o_4@@3 f_5@@1) (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| QPMask@2) o_4@@3 f_5@@1)))
 :qid |stdinbpl.1423:29|
 :skolemid |121|
 :pattern ( (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| ZeroMask) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| QPMask@2) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_25058_25063) ) (!  (=> true (= (select (|PolymorphicMapType_18899_12481_44015#PolymorphicMapType_18899| ZeroMask) o_4@@4 f_5@@2) (select (|PolymorphicMapType_18899_12481_44015#PolymorphicMapType_18899| QPMask@2) o_4@@4 f_5@@2)))
 :qid |stdinbpl.1423:29|
 :skolemid |121|
 :pattern ( (select (|PolymorphicMapType_18899_12481_44015#PolymorphicMapType_18899| ZeroMask) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_18899_12481_44015#PolymorphicMapType_18899| QPMask@2) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_12477_55833) ) (!  (=> true (= (select (|PolymorphicMapType_18899_12477_55833#PolymorphicMapType_18899| ZeroMask) o_4@@5 f_5@@3) (select (|PolymorphicMapType_18899_12477_55833#PolymorphicMapType_18899| QPMask@2) o_4@@5 f_5@@3)))
 :qid |stdinbpl.1423:29|
 :skolemid |121|
 :pattern ( (select (|PolymorphicMapType_18899_12477_55833#PolymorphicMapType_18899| ZeroMask) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_18899_12477_55833#PolymorphicMapType_18899| QPMask@2) o_4@@5 f_5@@3))
))) (forall ((o_4@@6 T@Ref) (f_5@@4 T@Field_12477_55966) ) (!  (=> true (= (select (|PolymorphicMapType_18899_12477_60660#PolymorphicMapType_18899| ZeroMask) o_4@@6 f_5@@4) (select (|PolymorphicMapType_18899_12477_60660#PolymorphicMapType_18899| QPMask@2) o_4@@6 f_5@@4)))
 :qid |stdinbpl.1423:29|
 :skolemid |121|
 :pattern ( (select (|PolymorphicMapType_18899_12477_60660#PolymorphicMapType_18899| ZeroMask) o_4@@6 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_18899_12477_60660#PolymorphicMapType_18899| QPMask@2) o_4@@6 f_5@@4))
))) (and (state PostHeap@0 QPMask@2) (state PostHeap@0 QPMask@2))) (and (and (=> (= (ControlFlow 0 54) 37) anon30_Else_correct) (=> (= (ControlFlow 0 54) 46) anon31_Then_correct)) (=> (= (ControlFlow 0 54) 53) anon31_Else_correct)))))))))))
(let ((anon12_correct true))
(let ((anon29_Else_correct  (=> (and (not (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_13)) (= (ControlFlow 0 35) 31)) anon12_correct)))
(let ((anon29_Then_correct  (=> (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_13) (and (=> (= (ControlFlow 0 32) (- 0 34)) (>= i_13 0)) (=> (>= i_13 0) (and (=> (= (ControlFlow 0 32) (- 0 33)) (< i_13 (|Seq#Length_12487| xs))) (=> (< i_13 (|Seq#Length_12487| xs)) (=> (= (ControlFlow 0 32) 31) anon12_correct))))))))
(let ((anon27_Then_correct  (=> (state PostHeap@0 ZeroMask) (and (and (=> (= (ControlFlow 0 57) 54) anon28_Else_correct) (=> (= (ControlFlow 0 57) 32) anon29_Then_correct)) (=> (= (ControlFlow 0 57) 35) anon29_Else_correct)))))
(let ((anon21_correct true))
(let ((anon33_Else_correct  (=> (and (not (|Seq#Contains_3176| (|Seq#Range| 2 n@@27) i_7_1)) (= (ControlFlow 0 20) 17)) anon21_correct)))
(let ((anon33_Then_correct  (=> (|Seq#Contains_3176| (|Seq#Range| 2 n@@27) i_7_1) (and (=> (= (ControlFlow 0 18) (- 0 19)) (= (select (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| Heap@1) (|Seq#Index_12487| xs i_7_1) f_7) (select (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| Heap@@19) (|Seq#Index_12487| xs i_7_1) f_7))) (=> (= (select (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| Heap@1) (|Seq#Index_12487| xs i_7_1) f_7) (select (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| Heap@@19) (|Seq#Index_12487| xs i_7_1) f_7)) (=> (= (ControlFlow 0 18) 17) anon21_correct))))))
(let ((anon32_Else_correct  (=> (forall ((i_8_1 Int) ) (!  (=> (|Seq#Contains_3176| (|Seq#Range| 2 n@@27) i_8_1) (= (select (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| Heap@1) (|Seq#Index_12487| xs i_8_1) f_7) (select (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| Heap@@19) (|Seq#Index_12487| xs i_8_1) f_7)))
 :qid |stdinbpl.1567:20|
 :skolemid |130|
 :pattern ( (|Seq#ContainsTrigger_3176| (|Seq#Range| 2 n@@27) i_8_1))
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| 2 n@@27) i_8_1))
 :pattern ( (|Seq#Index_12487| xs i_8_1))
)) (and (=> (= (ControlFlow 0 14) (- 0 16)) (= (select (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| Heap@1) (|Seq#Index_12487| xs 0) f_7) (+ (select (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| Heap@@19) (|Seq#Index_12487| xs 1) f_7) 1))) (=> (= (select (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| Heap@1) (|Seq#Index_12487| xs 0) f_7) (+ (select (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| Heap@@19) (|Seq#Index_12487| xs 1) f_7) 1)) (and (=> (= (ControlFlow 0 14) (- 0 15)) (= (select (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| Heap@1) (|Seq#Index_12487| xs 1) f_7) (+ (select (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| Heap@@19) (|Seq#Index_12487| xs 1) f_7) 2))) (=> (= (select (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| Heap@1) (|Seq#Index_12487| xs 1) f_7) (+ (select (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| Heap@@19) (|Seq#Index_12487| xs 1) f_7) 2)) (=> (= (ControlFlow 0 14) (- 0 13)) false))))))))
(let ((anon27_Else_correct  (and (=> (= (ControlFlow 0 21) (- 0 30)) (< 0 (|Seq#Length_12487| xs))) (=> (< 0 (|Seq#Length_12487| xs)) (and (=> (= (ControlFlow 0 21) (- 0 29)) (HasDirectPerm_12477_3298 QPMask@0 y@@1 f_7)) (=> (HasDirectPerm_12477_3298 QPMask@0 y@@1 f_7) (and (=> (= (ControlFlow 0 21) (- 0 28)) (= FullPerm (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| QPMask@0) (|Seq#Index_12487| xs 0) f_7))) (=> (= FullPerm (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| QPMask@0) (|Seq#Index_12487| xs 0) f_7)) (=> (and (= Heap@0 (PolymorphicMapType_18878 (|PolymorphicMapType_18878_12263_53#PolymorphicMapType_18878| Heap@@19) (|PolymorphicMapType_18878_12266_12267#PolymorphicMapType_18878| Heap@@19) (store (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| Heap@@19) (|Seq#Index_12487| xs 0) f_7 (+ (select (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| Heap@@19) y@@1 f_7) 1)) (|PolymorphicMapType_18878_12481_44279#PolymorphicMapType_18878| Heap@@19) (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| Heap@@19) (|PolymorphicMapType_18878_18938_55833#PolymorphicMapType_18878| Heap@@19))) (state Heap@0 QPMask@0)) (and (=> (= (ControlFlow 0 21) (- 0 27)) (< 1 (|Seq#Length_12487| xs))) (=> (< 1 (|Seq#Length_12487| xs)) (and (=> (= (ControlFlow 0 21) (- 0 26)) (HasDirectPerm_12477_3298 QPMask@0 x@@5 f_7)) (=> (HasDirectPerm_12477_3298 QPMask@0 x@@5 f_7) (and (=> (= (ControlFlow 0 21) (- 0 25)) (= FullPerm (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| QPMask@0) (|Seq#Index_12487| xs 1) f_7))) (=> (= FullPerm (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| QPMask@0) (|Seq#Index_12487| xs 1) f_7)) (=> (and (= Heap@1 (PolymorphicMapType_18878 (|PolymorphicMapType_18878_12263_53#PolymorphicMapType_18878| Heap@0) (|PolymorphicMapType_18878_12266_12267#PolymorphicMapType_18878| Heap@0) (store (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| Heap@0) (|Seq#Index_12487| xs 1) f_7 (+ (select (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| Heap@0) x@@5 f_7) 1)) (|PolymorphicMapType_18878_12481_44279#PolymorphicMapType_18878| Heap@0) (|PolymorphicMapType_18878_12477_56010#PolymorphicMapType_18878| Heap@0) (|PolymorphicMapType_18878_18938_55833#PolymorphicMapType_18878| Heap@0))) (state Heap@1 QPMask@0)) (and (=> (= (ControlFlow 0 21) (- 0 24)) (forall ((i_6_1 Int) ) (!  (=> (and (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_6_1) (dummyFunction_3298 (select (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| Heap@1) (|Seq#Index_12487| xs i_6_1) f_7))) (>= (ite (< i_6_1 2) FullPerm (/ (to_real 1) (to_real 10))) NoPerm))
 :qid |stdinbpl.1519:17|
 :skolemid |123|
 :pattern ( (|Seq#Index_12487| xs i_6_1))
 :pattern ( (|Seq#ContainsTrigger_3176| (|Seq#Range| 0 n@@27) i_6_1))
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_6_1))
 :pattern ( (|Seq#Index_12487| xs i_6_1))
))) (=> (forall ((i_6_1@@0 Int) ) (!  (=> (and (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_6_1@@0) (dummyFunction_3298 (select (|PolymorphicMapType_18878_12477_3298#PolymorphicMapType_18878| Heap@1) (|Seq#Index_12487| xs i_6_1@@0) f_7))) (>= (ite (< i_6_1@@0 2) FullPerm (/ (to_real 1) (to_real 10))) NoPerm))
 :qid |stdinbpl.1519:17|
 :skolemid |123|
 :pattern ( (|Seq#Index_12487| xs i_6_1@@0))
 :pattern ( (|Seq#ContainsTrigger_3176| (|Seq#Range| 0 n@@27) i_6_1@@0))
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_6_1@@0))
 :pattern ( (|Seq#Index_12487| xs i_6_1@@0))
)) (and (=> (= (ControlFlow 0 21) (- 0 23)) (forall ((i_6_1@@1 Int) (i_6_2 Int) ) (!  (=> (and (and (and (and (not (= i_6_1@@1 i_6_2)) (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_6_1@@1)) (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_6_2)) (< NoPerm (ite (< i_6_1@@1 2) FullPerm (/ (to_real 1) (to_real 10))))) (< NoPerm (ite (< i_6_2 2) FullPerm (/ (to_real 1) (to_real 10))))) (not (= (|Seq#Index_12487| xs i_6_1@@1) (|Seq#Index_12487| xs i_6_2))))
 :qid |stdinbpl.1526:17|
 :skolemid |124|
 :pattern ( (neverTriggered10 i_6_1@@1) (neverTriggered10 i_6_2))
))) (=> (forall ((i_6_1@@2 Int) (i_6_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_6_1@@2 i_6_2@@0)) (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_6_1@@2)) (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_6_2@@0)) (< NoPerm (ite (< i_6_1@@2 2) FullPerm (/ (to_real 1) (to_real 10))))) (< NoPerm (ite (< i_6_2@@0 2) FullPerm (/ (to_real 1) (to_real 10))))) (not (= (|Seq#Index_12487| xs i_6_1@@2) (|Seq#Index_12487| xs i_6_2@@0))))
 :qid |stdinbpl.1526:17|
 :skolemid |124|
 :pattern ( (neverTriggered10 i_6_1@@2) (neverTriggered10 i_6_2@@0))
)) (and (=> (= (ControlFlow 0 21) (- 0 22)) (forall ((i_6_1@@3 Int) ) (!  (=> (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_6_1@@3) (>= (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| QPMask@0) (|Seq#Index_12487| xs i_6_1@@3) f_7) (ite (< i_6_1@@3 2) FullPerm (/ (to_real 1) (to_real 10)))))
 :qid |stdinbpl.1533:17|
 :skolemid |125|
 :pattern ( (|Seq#Index_12487| xs i_6_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3176| (|Seq#Range| 0 n@@27) i_6_1@@3))
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_6_1@@3))
 :pattern ( (|Seq#Index_12487| xs i_6_1@@3))
))) (=> (forall ((i_6_1@@4 Int) ) (!  (=> (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_6_1@@4) (>= (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| QPMask@0) (|Seq#Index_12487| xs i_6_1@@4) f_7) (ite (< i_6_1@@4 2) FullPerm (/ (to_real 1) (to_real 10)))))
 :qid |stdinbpl.1533:17|
 :skolemid |125|
 :pattern ( (|Seq#Index_12487| xs i_6_1@@4))
 :pattern ( (|Seq#ContainsTrigger_3176| (|Seq#Range| 0 n@@27) i_6_1@@4))
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_6_1@@4))
 :pattern ( (|Seq#Index_12487| xs i_6_1@@4))
)) (=> (forall ((i_6_1@@5 Int) ) (!  (=> (and (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_6_1@@5) (< NoPerm (ite (< i_6_1@@5 2) FullPerm (/ (to_real 1) (to_real 10))))) (and (qpRange10 (|Seq#Index_12487| xs i_6_1@@5)) (= (invRecv10 (|Seq#Index_12487| xs i_6_1@@5)) i_6_1@@5)))
 :qid |stdinbpl.1539:22|
 :skolemid |126|
 :pattern ( (|Seq#Index_12487| xs i_6_1@@5))
 :pattern ( (|Seq#ContainsTrigger_3176| (|Seq#Range| 0 n@@27) i_6_1@@5))
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_6_1@@5))
 :pattern ( (|Seq#Index_12487| xs i_6_1@@5))
)) (=> (and (forall ((o_4@@7 T@Ref) ) (!  (=> (and (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) (invRecv10 o_4@@7)) (and (< NoPerm (ite (< (invRecv10 o_4@@7) 2) FullPerm (/ (to_real 1) (to_real 10)))) (qpRange10 o_4@@7))) (= (|Seq#Index_12487| xs (invRecv10 o_4@@7)) o_4@@7))
 :qid |stdinbpl.1543:22|
 :skolemid |127|
 :pattern ( (invRecv10 o_4@@7))
)) (forall ((o_4@@8 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) (invRecv10 o_4@@8)) (and (< NoPerm (ite (< (invRecv10 o_4@@8) 2) FullPerm (/ (to_real 1) (to_real 10)))) (qpRange10 o_4@@8))) (and (= (|Seq#Index_12487| xs (invRecv10 o_4@@8)) o_4@@8) (= (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| QPMask@1) o_4@@8 f_7) (- (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| QPMask@0) o_4@@8 f_7) (ite (< (invRecv10 o_4@@8) 2) FullPerm (/ (to_real 1) (to_real 10))))))) (=> (not (and (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) (invRecv10 o_4@@8)) (and (< NoPerm (ite (< (invRecv10 o_4@@8) 2) FullPerm (/ (to_real 1) (to_real 10)))) (qpRange10 o_4@@8)))) (= (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| QPMask@1) o_4@@8 f_7) (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| QPMask@0) o_4@@8 f_7))))
 :qid |stdinbpl.1549:22|
 :skolemid |128|
 :pattern ( (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| QPMask@1) o_4@@8 f_7))
))) (=> (and (and (and (and (and (forall ((o_4@@9 T@Ref) (f_5@@5 T@Field_18938_53) ) (!  (=> true (= (select (|PolymorphicMapType_18899_12477_53#PolymorphicMapType_18899| QPMask@0) o_4@@9 f_5@@5) (select (|PolymorphicMapType_18899_12477_53#PolymorphicMapType_18899| QPMask@1) o_4@@9 f_5@@5)))
 :qid |stdinbpl.1555:29|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_18899_12477_53#PolymorphicMapType_18899| QPMask@1) o_4@@9 f_5@@5))
)) (forall ((o_4@@10 T@Ref) (f_5@@6 T@Field_18951_18952) ) (!  (=> true (= (select (|PolymorphicMapType_18899_12477_18952#PolymorphicMapType_18899| QPMask@0) o_4@@10 f_5@@6) (select (|PolymorphicMapType_18899_12477_18952#PolymorphicMapType_18899| QPMask@1) o_4@@10 f_5@@6)))
 :qid |stdinbpl.1555:29|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_18899_12477_18952#PolymorphicMapType_18899| QPMask@1) o_4@@10 f_5@@6))
))) (forall ((o_4@@11 T@Ref) (f_5@@7 T@Field_24981_3298) ) (!  (=> (not (= f_5@@7 f_7)) (= (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| QPMask@0) o_4@@11 f_5@@7) (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| QPMask@1) o_4@@11 f_5@@7)))
 :qid |stdinbpl.1555:29|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| QPMask@1) o_4@@11 f_5@@7))
))) (forall ((o_4@@12 T@Ref) (f_5@@8 T@Field_25058_25063) ) (!  (=> true (= (select (|PolymorphicMapType_18899_12481_44015#PolymorphicMapType_18899| QPMask@0) o_4@@12 f_5@@8) (select (|PolymorphicMapType_18899_12481_44015#PolymorphicMapType_18899| QPMask@1) o_4@@12 f_5@@8)))
 :qid |stdinbpl.1555:29|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_18899_12481_44015#PolymorphicMapType_18899| QPMask@1) o_4@@12 f_5@@8))
))) (forall ((o_4@@13 T@Ref) (f_5@@9 T@Field_12477_55833) ) (!  (=> true (= (select (|PolymorphicMapType_18899_12477_55833#PolymorphicMapType_18899| QPMask@0) o_4@@13 f_5@@9) (select (|PolymorphicMapType_18899_12477_55833#PolymorphicMapType_18899| QPMask@1) o_4@@13 f_5@@9)))
 :qid |stdinbpl.1555:29|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_18899_12477_55833#PolymorphicMapType_18899| QPMask@1) o_4@@13 f_5@@9))
))) (forall ((o_4@@14 T@Ref) (f_5@@10 T@Field_12477_55966) ) (!  (=> true (= (select (|PolymorphicMapType_18899_12477_60660#PolymorphicMapType_18899| QPMask@0) o_4@@14 f_5@@10) (select (|PolymorphicMapType_18899_12477_60660#PolymorphicMapType_18899| QPMask@1) o_4@@14 f_5@@10)))
 :qid |stdinbpl.1555:29|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_18899_12477_60660#PolymorphicMapType_18899| QPMask@1) o_4@@14 f_5@@10))
))) (and (and (=> (= (ControlFlow 0 21) 14) anon32_Else_correct) (=> (= (ControlFlow 0 21) 18) anon33_Then_correct)) (=> (= (ControlFlow 0 21) 20) anon33_Else_correct)))))))))))))))))))))))))))
(let ((anon25_Else_correct  (and (=> (= (ControlFlow 0 58) (- 0 60)) (forall ((i_1 Int) (i_1_1 Int) ) (!  (=> (and (and (and (and (not (= i_1 i_1_1)) (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_1)) (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_1_1)) (< NoPerm (/ (to_real 1) (to_real 10)))) (< NoPerm (/ (to_real 1) (to_real 10)))) (not (= (|Seq#Index_12487| xs i_1) (|Seq#Index_12487| xs i_1_1))))
 :qid |stdinbpl.1328:15|
 :skolemid |108|
))) (=> (forall ((i_1@@0 Int) (i_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_1@@0 i_1_1@@0)) (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_1@@0)) (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_1_1@@0)) (< NoPerm (/ (to_real 1) (to_real 10)))) (< NoPerm (/ (to_real 1) (to_real 10)))) (not (= (|Seq#Index_12487| xs i_1@@0) (|Seq#Index_12487| xs i_1_1@@0))))
 :qid |stdinbpl.1328:15|
 :skolemid |108|
)) (=> (and (forall ((i_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_1@@1) (< NoPerm (/ (to_real 1) (to_real 10)))) (and (qpRange8 (|Seq#Index_12487| xs i_1@@1)) (= (invRecv8 (|Seq#Index_12487| xs i_1@@1)) i_1@@1)))
 :qid |stdinbpl.1334:22|
 :skolemid |109|
 :pattern ( (|Seq#Index_12487| xs i_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3176| (|Seq#Range| 0 n@@27) i_1@@1))
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_1@@1))
 :pattern ( (|Seq#Index_12487| xs i_1@@1))
)) (forall ((o_4@@15 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) (invRecv8 o_4@@15)) (< NoPerm (/ (to_real 1) (to_real 10)))) (qpRange8 o_4@@15)) (= (|Seq#Index_12487| xs (invRecv8 o_4@@15)) o_4@@15))
 :qid |stdinbpl.1338:22|
 :skolemid |110|
 :pattern ( (invRecv8 o_4@@15))
))) (and (=> (= (ControlFlow 0 58) (- 0 59)) (forall ((i_1@@2 Int) ) (!  (=> (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_1@@2) (>= (/ (to_real 1) (to_real 10)) NoPerm))
 :qid |stdinbpl.1344:15|
 :skolemid |111|
 :pattern ( (|Seq#Index_12487| xs i_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3176| (|Seq#Range| 0 n@@27) i_1@@2))
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_1@@2))
 :pattern ( (|Seq#Index_12487| xs i_1@@2))
))) (=> (forall ((i_1@@3 Int) ) (!  (=> (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_1@@3) (>= (/ (to_real 1) (to_real 10)) NoPerm))
 :qid |stdinbpl.1344:15|
 :skolemid |111|
 :pattern ( (|Seq#Index_12487| xs i_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3176| (|Seq#Range| 0 n@@27) i_1@@3))
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_1@@3))
 :pattern ( (|Seq#Index_12487| xs i_1@@3))
)) (=> (and (forall ((i_1@@4 Int) ) (!  (=> (and (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_1@@4) (> (/ (to_real 1) (to_real 10)) NoPerm)) (not (= (|Seq#Index_12487| xs i_1@@4) null)))
 :qid |stdinbpl.1350:22|
 :skolemid |112|
 :pattern ( (|Seq#Index_12487| xs i_1@@4))
 :pattern ( (|Seq#ContainsTrigger_3176| (|Seq#Range| 0 n@@27) i_1@@4))
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_1@@4))
 :pattern ( (|Seq#Index_12487| xs i_1@@4))
)) (forall ((o_4@@16 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) (invRecv8 o_4@@16)) (< NoPerm (/ (to_real 1) (to_real 10)))) (qpRange8 o_4@@16)) (and (=> (< NoPerm (/ (to_real 1) (to_real 10))) (= (|Seq#Index_12487| xs (invRecv8 o_4@@16)) o_4@@16)) (= (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| QPMask@0) o_4@@16 f_7) (+ (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| Mask@1) o_4@@16 f_7) (/ (to_real 1) (to_real 10)))))) (=> (not (and (and (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) (invRecv8 o_4@@16)) (< NoPerm (/ (to_real 1) (to_real 10)))) (qpRange8 o_4@@16))) (= (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| QPMask@0) o_4@@16 f_7) (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| Mask@1) o_4@@16 f_7))))
 :qid |stdinbpl.1356:22|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| QPMask@0) o_4@@16 f_7))
))) (=> (and (and (and (and (and (and (forall ((o_4@@17 T@Ref) (f_5@@11 T@Field_18938_53) ) (!  (=> true (= (select (|PolymorphicMapType_18899_12477_53#PolymorphicMapType_18899| Mask@1) o_4@@17 f_5@@11) (select (|PolymorphicMapType_18899_12477_53#PolymorphicMapType_18899| QPMask@0) o_4@@17 f_5@@11)))
 :qid |stdinbpl.1360:29|
 :skolemid |114|
 :pattern ( (select (|PolymorphicMapType_18899_12477_53#PolymorphicMapType_18899| Mask@1) o_4@@17 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_18899_12477_53#PolymorphicMapType_18899| QPMask@0) o_4@@17 f_5@@11))
)) (forall ((o_4@@18 T@Ref) (f_5@@12 T@Field_18951_18952) ) (!  (=> true (= (select (|PolymorphicMapType_18899_12477_18952#PolymorphicMapType_18899| Mask@1) o_4@@18 f_5@@12) (select (|PolymorphicMapType_18899_12477_18952#PolymorphicMapType_18899| QPMask@0) o_4@@18 f_5@@12)))
 :qid |stdinbpl.1360:29|
 :skolemid |114|
 :pattern ( (select (|PolymorphicMapType_18899_12477_18952#PolymorphicMapType_18899| Mask@1) o_4@@18 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_18899_12477_18952#PolymorphicMapType_18899| QPMask@0) o_4@@18 f_5@@12))
))) (forall ((o_4@@19 T@Ref) (f_5@@13 T@Field_24981_3298) ) (!  (=> (not (= f_5@@13 f_7)) (= (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| Mask@1) o_4@@19 f_5@@13) (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| QPMask@0) o_4@@19 f_5@@13)))
 :qid |stdinbpl.1360:29|
 :skolemid |114|
 :pattern ( (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| Mask@1) o_4@@19 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| QPMask@0) o_4@@19 f_5@@13))
))) (forall ((o_4@@20 T@Ref) (f_5@@14 T@Field_25058_25063) ) (!  (=> true (= (select (|PolymorphicMapType_18899_12481_44015#PolymorphicMapType_18899| Mask@1) o_4@@20 f_5@@14) (select (|PolymorphicMapType_18899_12481_44015#PolymorphicMapType_18899| QPMask@0) o_4@@20 f_5@@14)))
 :qid |stdinbpl.1360:29|
 :skolemid |114|
 :pattern ( (select (|PolymorphicMapType_18899_12481_44015#PolymorphicMapType_18899| Mask@1) o_4@@20 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_18899_12481_44015#PolymorphicMapType_18899| QPMask@0) o_4@@20 f_5@@14))
))) (forall ((o_4@@21 T@Ref) (f_5@@15 T@Field_12477_55833) ) (!  (=> true (= (select (|PolymorphicMapType_18899_12477_55833#PolymorphicMapType_18899| Mask@1) o_4@@21 f_5@@15) (select (|PolymorphicMapType_18899_12477_55833#PolymorphicMapType_18899| QPMask@0) o_4@@21 f_5@@15)))
 :qid |stdinbpl.1360:29|
 :skolemid |114|
 :pattern ( (select (|PolymorphicMapType_18899_12477_55833#PolymorphicMapType_18899| Mask@1) o_4@@21 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_18899_12477_55833#PolymorphicMapType_18899| QPMask@0) o_4@@21 f_5@@15))
))) (forall ((o_4@@22 T@Ref) (f_5@@16 T@Field_12477_55966) ) (!  (=> true (= (select (|PolymorphicMapType_18899_12477_60660#PolymorphicMapType_18899| Mask@1) o_4@@22 f_5@@16) (select (|PolymorphicMapType_18899_12477_60660#PolymorphicMapType_18899| QPMask@0) o_4@@22 f_5@@16)))
 :qid |stdinbpl.1360:29|
 :skolemid |114|
 :pattern ( (select (|PolymorphicMapType_18899_12477_60660#PolymorphicMapType_18899| Mask@1) o_4@@22 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_18899_12477_60660#PolymorphicMapType_18899| QPMask@0) o_4@@22 f_5@@16))
))) (and (state Heap@@19 QPMask@0) (state Heap@@19 QPMask@0))) (and (=> (= (ControlFlow 0 58) 57) anon27_Then_correct) (=> (= (ControlFlow 0 58) 21) anon27_Else_correct)))))))))))
(let ((anon7_correct true))
(let ((anon26_Else_correct  (=> (and (not (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_18)) (= (ControlFlow 0 12) 8)) anon7_correct)))
(let ((anon26_Then_correct  (=> (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i_18) (and (=> (= (ControlFlow 0 9) (- 0 11)) (>= i_18 0)) (=> (>= i_18 0) (and (=> (= (ControlFlow 0 9) (- 0 10)) (< i_18 (|Seq#Length_12487| xs))) (=> (< i_18 (|Seq#Length_12487| xs)) (=> (= (ControlFlow 0 9) 8) anon7_correct))))))))
(let ((anon23_Else_correct  (=> (and (forall ((i1_1_1 Int) (i2_1_1 Int) ) (!  (=> (and (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i1_1_1) (and (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i2_1_1) (not (= i1_1_1 i2_1_1)))) (not (= (|Seq#Index_12487| xs i1_1_1) (|Seq#Index_12487| xs i2_1_1))))
 :qid |stdinbpl.1310:20|
 :skolemid |107|
 :pattern ( (|Seq#ContainsTrigger_3176| (|Seq#Range| 0 n@@27) i1_1_1) (|Seq#ContainsTrigger_3176| (|Seq#Range| 0 n@@27) i2_1_1))
 :pattern ( (|Seq#ContainsTrigger_3176| (|Seq#Range| 0 n@@27) i1_1_1) (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i2_1_1))
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i1_1_1) (|Seq#ContainsTrigger_3176| (|Seq#Range| 0 n@@27) i2_1_1))
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i1_1_1) (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i2_1_1))
 :pattern ( (|Seq#ContainsTrigger_3176| (|Seq#Range| 0 n@@27) i1_1_1) (|Seq#Index_12487| xs i2_1_1))
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i1_1_1) (|Seq#Index_12487| xs i2_1_1))
 :pattern ( (|Seq#ContainsTrigger_3176| (|Seq#Range| 0 n@@27) i2_1_1) (|Seq#Index_12487| xs i1_1_1))
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i2_1_1) (|Seq#Index_12487| xs i1_1_1))
 :pattern ( (|Seq#Index_12487| xs i1_1_1) (|Seq#Index_12487| xs i2_1_1))
)) (state Heap@@19 Mask@1)) (and (and (=> (= (ControlFlow 0 61) 58) anon25_Else_correct) (=> (= (ControlFlow 0 61) 9) anon26_Then_correct)) (=> (= (ControlFlow 0 61) 12) anon26_Else_correct)))))
(let ((anon3_correct true))
(let ((anon24_Else_correct  (=> (and (not (and (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i1_21) (and (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i2_11) (not (= i1_21 i2_11))))) (= (ControlFlow 0 7) 1)) anon3_correct)))
(let ((anon24_Then_correct  (=> (and (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i1_21) (and (|Seq#Contains_3176| (|Seq#Range| 0 n@@27) i2_11) (not (= i1_21 i2_11)))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= i1_21 0)) (=> (>= i1_21 0) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< i1_21 (|Seq#Length_12487| xs))) (=> (< i1_21 (|Seq#Length_12487| xs)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= i2_11 0)) (=> (>= i2_11 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< i2_11 (|Seq#Length_12487| xs))) (=> (< i2_11 (|Seq#Length_12487| xs)) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))))))))
(let ((anon0_correct  (=> (state Heap@@19 ZeroMask) (=> (and AssumePermUpperBound (select (|PolymorphicMapType_18878_12263_53#PolymorphicMapType_18878| Heap@@19) x@@5 $allocated)) (=> (and (and (select (|PolymorphicMapType_18878_12263_53#PolymorphicMapType_18878| Heap@@19) y@@1 $allocated) (= (|Seq#Length_12487| xs) n@@27)) (and (> n@@27 2) (state Heap@@19 ZeroMask))) (and (=> (= (ControlFlow 0 62) (- 0 66)) (< 0 (|Seq#Length_12487| xs))) (=> (< 0 (|Seq#Length_12487| xs)) (=> (= (|Seq#Index_12487| xs 0) x@@5) (and (=> (= (ControlFlow 0 62) (- 0 65)) (< 1 (|Seq#Length_12487| xs))) (=> (< 1 (|Seq#Length_12487| xs)) (=> (= (|Seq#Index_12487| xs 1) y@@1) (=> (and (state Heap@@19 ZeroMask) (= perm@0 (/ (to_real 9) (to_real 10)))) (and (=> (= (ControlFlow 0 62) (- 0 64)) (>= perm@0 NoPerm)) (=> (>= perm@0 NoPerm) (=> (and (and (=> (> perm@0 NoPerm) (not (= x@@5 null))) (= Mask@0 (PolymorphicMapType_18899 (store (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| ZeroMask) x@@5 f_7 (+ (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| ZeroMask) x@@5 f_7) perm@0)) (|PolymorphicMapType_18899_12481_44015#PolymorphicMapType_18899| ZeroMask) (|PolymorphicMapType_18899_12477_53#PolymorphicMapType_18899| ZeroMask) (|PolymorphicMapType_18899_12477_18952#PolymorphicMapType_18899| ZeroMask) (|PolymorphicMapType_18899_12477_55833#PolymorphicMapType_18899| ZeroMask) (|PolymorphicMapType_18899_12477_60660#PolymorphicMapType_18899| ZeroMask)))) (and (state Heap@@19 Mask@0) (= perm@1 (/ (to_real 9) (to_real 10))))) (and (=> (= (ControlFlow 0 62) (- 0 63)) (>= perm@1 NoPerm)) (=> (>= perm@1 NoPerm) (=> (and (and (=> (> perm@1 NoPerm) (not (= y@@1 null))) (= Mask@1 (PolymorphicMapType_18899 (store (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| Mask@0) y@@1 f_7 (+ (select (|PolymorphicMapType_18899_12477_3298#PolymorphicMapType_18899| Mask@0) y@@1 f_7) perm@1)) (|PolymorphicMapType_18899_12481_44015#PolymorphicMapType_18899| Mask@0) (|PolymorphicMapType_18899_12477_53#PolymorphicMapType_18899| Mask@0) (|PolymorphicMapType_18899_12477_18952#PolymorphicMapType_18899| Mask@0) (|PolymorphicMapType_18899_12477_55833#PolymorphicMapType_18899| Mask@0) (|PolymorphicMapType_18899_12477_60660#PolymorphicMapType_18899| Mask@0)))) (and (state Heap@@19 Mask@1) (state Heap@@19 Mask@1))) (and (and (=> (= (ControlFlow 0 62) 61) anon23_Else_correct) (=> (= (ControlFlow 0 62) 2) anon24_Then_correct)) (=> (= (ControlFlow 0 62) 7) anon24_Else_correct))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 67) 62) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 14) (- 13))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid