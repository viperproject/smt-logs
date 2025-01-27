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
(declare-sort T@Field_25262_53 0)
(declare-sort T@Field_25275_25276 0)
(declare-sort T@Field_31327_3562 0)
(declare-sort T@Field_17088_73098 0)
(declare-sort T@Field_17088_72965 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_25223 0)) (((PolymorphicMapType_25223 (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| (Array T@Ref T@Field_31327_3562 Real)) (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| (Array T@Ref T@Field_25262_53 Real)) (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| (Array T@Ref T@Field_25275_25276 Real)) (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| (Array T@Ref T@Field_17088_72965 Real)) (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| (Array T@Ref T@Field_17088_73098 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_25751 0)) (((PolymorphicMapType_25751 (|PolymorphicMapType_25751_25262_53#PolymorphicMapType_25751| (Array T@Ref T@Field_25262_53 Bool)) (|PolymorphicMapType_25751_25262_25276#PolymorphicMapType_25751| (Array T@Ref T@Field_25275_25276 Bool)) (|PolymorphicMapType_25751_25262_3562#PolymorphicMapType_25751| (Array T@Ref T@Field_31327_3562 Bool)) (|PolymorphicMapType_25751_25262_72965#PolymorphicMapType_25751| (Array T@Ref T@Field_17088_72965 Bool)) (|PolymorphicMapType_25751_25262_74276#PolymorphicMapType_25751| (Array T@Ref T@Field_17088_73098 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_25202 0)) (((PolymorphicMapType_25202 (|PolymorphicMapType_25202_16850_53#PolymorphicMapType_25202| (Array T@Ref T@Field_25262_53 Bool)) (|PolymorphicMapType_25202_16853_16854#PolymorphicMapType_25202| (Array T@Ref T@Field_25275_25276 T@Ref)) (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| (Array T@Ref T@Field_31327_3562 Int)) (|PolymorphicMapType_25202_17088_73142#PolymorphicMapType_25202| (Array T@Ref T@Field_17088_73098 T@PolymorphicMapType_25751)) (|PolymorphicMapType_25202_25262_72965#PolymorphicMapType_25202| (Array T@Ref T@Field_17088_72965 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_25262_53)
(declare-fun Exercise4__Integer_value () T@Field_31327_3562)
(declare-fun Ref__Integer_value () T@Field_31327_3562)
(declare-sort T@Seq_31403 0)
(declare-fun |Seq#Length_17098| (T@Seq_31403) Int)
(declare-fun |Seq#Drop_17098| (T@Seq_31403 Int) T@Seq_31403)
(declare-sort T@Seq_3440 0)
(declare-fun |Seq#Length_3440| (T@Seq_3440) Int)
(declare-fun |Seq#Drop_3440| (T@Seq_3440 Int) T@Seq_3440)
(declare-fun succHeap (T@PolymorphicMapType_25202 T@PolymorphicMapType_25202) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_25202 T@PolymorphicMapType_25202) Bool)
(declare-fun state (T@PolymorphicMapType_25202 T@PolymorphicMapType_25223) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_25223) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_25751)
(declare-fun |Seq#Index_17098| (T@Seq_31403 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3440| (T@Seq_3440 Int) Int)
(declare-fun |Seq#Empty_17098| () T@Seq_31403)
(declare-fun |Seq#Empty_3440| () T@Seq_3440)
(declare-fun |Seq#Update_17098| (T@Seq_31403 Int T@Ref) T@Seq_31403)
(declare-fun |Seq#Update_3440| (T@Seq_3440 Int Int) T@Seq_3440)
(declare-fun |Seq#Take_17098| (T@Seq_31403 Int) T@Seq_31403)
(declare-fun |Seq#Take_3440| (T@Seq_3440 Int) T@Seq_3440)
(declare-fun |Seq#Contains_3440| (T@Seq_3440 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3440)
(declare-fun |Seq#Contains_31403| (T@Seq_31403 T@Ref) Bool)
(declare-fun |Seq#Skolem_31403| (T@Seq_31403 T@Ref) Int)
(declare-fun |Seq#Skolem_3440| (T@Seq_3440 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_25202 T@PolymorphicMapType_25202 T@PolymorphicMapType_25223) Bool)
(declare-fun IsPredicateField_17088_73056 (T@Field_17088_72965) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_17088 (T@Field_17088_72965) T@Field_17088_73098)
(declare-fun HasDirectPerm_17088_73029 (T@PolymorphicMapType_25223 T@Ref T@Field_17088_72965) Bool)
(declare-fun IsWandField_17088_74803 (T@Field_17088_72965) Bool)
(declare-fun WandMaskField_17088 (T@Field_17088_72965) T@Field_17088_73098)
(declare-fun |Seq#Singleton_17098| (T@Ref) T@Seq_31403)
(declare-fun |Seq#Singleton_3440| (Int) T@Seq_3440)
(declare-fun |Seq#Append_31403| (T@Seq_31403 T@Seq_31403) T@Seq_31403)
(declare-fun |Seq#Append_3440| (T@Seq_3440 T@Seq_3440) T@Seq_3440)
(declare-fun dummyHeap () T@PolymorphicMapType_25202)
(declare-fun ZeroMask () T@PolymorphicMapType_25223)
(declare-fun InsidePredicate_25262_25262 (T@Field_17088_72965 T@FrameType T@Field_17088_72965 T@FrameType) Bool)
(declare-fun IsPredicateField_17086_3562 (T@Field_31327_3562) Bool)
(declare-fun IsWandField_17086_3562 (T@Field_31327_3562) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_17088_78349 (T@Field_17088_73098) Bool)
(declare-fun IsWandField_17088_78365 (T@Field_17088_73098) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_17088_25276 (T@Field_25275_25276) Bool)
(declare-fun IsWandField_17088_25276 (T@Field_25275_25276) Bool)
(declare-fun IsPredicateField_17088_53 (T@Field_25262_53) Bool)
(declare-fun IsWandField_17088_53 (T@Field_25262_53) Bool)
(declare-fun HasDirectPerm_17088_78803 (T@PolymorphicMapType_25223 T@Ref T@Field_17088_73098) Bool)
(declare-fun HasDirectPerm_17088_25276 (T@PolymorphicMapType_25223 T@Ref T@Field_25275_25276) Bool)
(declare-fun HasDirectPerm_17088_53 (T@PolymorphicMapType_25223 T@Ref T@Field_25262_53) Bool)
(declare-fun HasDirectPerm_17088_3577 (T@PolymorphicMapType_25223 T@Ref T@Field_31327_3562) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_25223 T@PolymorphicMapType_25223 T@PolymorphicMapType_25223) Bool)
(declare-fun |Seq#Equal_31403| (T@Seq_31403 T@Seq_31403) Bool)
(declare-fun |Seq#Equal_3440| (T@Seq_3440 T@Seq_3440) Bool)
(declare-fun |Seq#ContainsTrigger_17098| (T@Seq_31403 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3440| (T@Seq_3440 Int) Bool)
(declare-fun |Seq#SkolemDiff_31403| (T@Seq_31403 T@Seq_31403) Int)
(declare-fun |Seq#SkolemDiff_3440| (T@Seq_3440 T@Seq_3440) Int)
(assert (distinct Exercise4__Integer_value Ref__Integer_value)
)
(assert (forall ((s T@Seq_31403) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_17098| s)) (= (|Seq#Length_17098| (|Seq#Drop_17098| s n)) (- (|Seq#Length_17098| s) n))) (=> (< (|Seq#Length_17098| s) n) (= (|Seq#Length_17098| (|Seq#Drop_17098| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_17098| (|Seq#Drop_17098| s n)) (|Seq#Length_17098| s))))
 :qid |stdinbpl.357:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_17098| (|Seq#Drop_17098| s n)))
 :pattern ( (|Seq#Length_17098| s) (|Seq#Drop_17098| s n))
)))
(assert (forall ((s@@0 T@Seq_3440) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3440| s@@0)) (= (|Seq#Length_3440| (|Seq#Drop_3440| s@@0 n@@0)) (- (|Seq#Length_3440| s@@0) n@@0))) (=> (< (|Seq#Length_3440| s@@0) n@@0) (= (|Seq#Length_3440| (|Seq#Drop_3440| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3440| (|Seq#Drop_3440| s@@0 n@@0)) (|Seq#Length_3440| s@@0))))
 :qid |stdinbpl.357:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3440| (|Seq#Drop_3440| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3440| s@@0) (|Seq#Drop_3440| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_25202) (Heap1 T@PolymorphicMapType_25202) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_25202) (Mask T@PolymorphicMapType_25223) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_25202) (Heap1@@0 T@PolymorphicMapType_25202) (Heap2 T@PolymorphicMapType_25202) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_17088_73098) ) (!  (not (select (|PolymorphicMapType_25751_25262_74276#PolymorphicMapType_25751| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_25751_25262_74276#PolymorphicMapType_25751| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_17088_72965) ) (!  (not (select (|PolymorphicMapType_25751_25262_72965#PolymorphicMapType_25751| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_25751_25262_72965#PolymorphicMapType_25751| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_31327_3562) ) (!  (not (select (|PolymorphicMapType_25751_25262_3562#PolymorphicMapType_25751| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_25751_25262_3562#PolymorphicMapType_25751| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_25275_25276) ) (!  (not (select (|PolymorphicMapType_25751_25262_25276#PolymorphicMapType_25751| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_25751_25262_25276#PolymorphicMapType_25751| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_25262_53) ) (!  (not (select (|PolymorphicMapType_25751_25262_53#PolymorphicMapType_25751| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_25751_25262_53#PolymorphicMapType_25751| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((s@@1 T@Seq_31403) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_17098| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_17098| (|Seq#Drop_17098| s@@1 n@@1) j) (|Seq#Index_17098| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.378:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_17098| (|Seq#Drop_17098| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3440) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3440| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3440| (|Seq#Drop_3440| s@@2 n@@2) j@@0) (|Seq#Index_3440| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.378:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3440| (|Seq#Drop_3440| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_17098| |Seq#Empty_17098|) 0))
(assert (= (|Seq#Length_3440| |Seq#Empty_3440|) 0))
(assert (forall ((s@@3 T@Seq_31403) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_17098| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_17098| (|Seq#Update_17098| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_17098| (|Seq#Update_17098| s@@3 i v) n@@3) (|Seq#Index_17098| s@@3 n@@3)))))
 :qid |stdinbpl.333:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_17098| (|Seq#Update_17098| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_17098| s@@3 n@@3) (|Seq#Update_17098| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_3440) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3440| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_3440| (|Seq#Update_3440| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_3440| (|Seq#Update_3440| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_3440| s@@4 n@@4)))))
 :qid |stdinbpl.333:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3440| (|Seq#Update_3440| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_3440| s@@4 n@@4) (|Seq#Update_3440| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_31403) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_17098| s@@5)) (= (|Seq#Length_17098| (|Seq#Take_17098| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_17098| s@@5) n@@5) (= (|Seq#Length_17098| (|Seq#Take_17098| s@@5 n@@5)) (|Seq#Length_17098| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_17098| (|Seq#Take_17098| s@@5 n@@5)) 0)))
 :qid |stdinbpl.344:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_17098| (|Seq#Take_17098| s@@5 n@@5)))
 :pattern ( (|Seq#Take_17098| s@@5 n@@5) (|Seq#Length_17098| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3440) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3440| s@@6)) (= (|Seq#Length_3440| (|Seq#Take_3440| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3440| s@@6) n@@6) (= (|Seq#Length_3440| (|Seq#Take_3440| s@@6 n@@6)) (|Seq#Length_3440| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3440| (|Seq#Take_3440| s@@6 n@@6)) 0)))
 :qid |stdinbpl.344:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3440| (|Seq#Take_3440| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3440| s@@6 n@@6) (|Seq#Length_3440| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3440| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.618:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_31403) (x T@Ref) ) (!  (=> (|Seq#Contains_31403| s@@7 x) (and (and (<= 0 (|Seq#Skolem_31403| s@@7 x)) (< (|Seq#Skolem_31403| s@@7 x) (|Seq#Length_17098| s@@7))) (= (|Seq#Index_17098| s@@7 (|Seq#Skolem_31403| s@@7 x)) x)))
 :qid |stdinbpl.476:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_31403| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3440) (x@@0 Int) ) (!  (=> (|Seq#Contains_3440| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3440| s@@8 x@@0)) (< (|Seq#Skolem_3440| s@@8 x@@0) (|Seq#Length_3440| s@@8))) (= (|Seq#Index_3440| s@@8 (|Seq#Skolem_3440| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.476:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3440| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_31403) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_17098| s@@9 n@@7) s@@9))
 :qid |stdinbpl.460:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_17098| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3440) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3440| s@@10 n@@8) s@@10))
 :qid |stdinbpl.460:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3440| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.313:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.311:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_25202) (ExhaleHeap T@PolymorphicMapType_25202) (Mask@@0 T@PolymorphicMapType_25223) (pm_f_8 T@Field_17088_72965) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_17088_73029 Mask@@0 null pm_f_8) (IsPredicateField_17088_73056 pm_f_8)) (= (select (|PolymorphicMapType_25202_17088_73142#PolymorphicMapType_25202| Heap@@0) null (PredicateMaskField_17088 pm_f_8)) (select (|PolymorphicMapType_25202_17088_73142#PolymorphicMapType_25202| ExhaleHeap) null (PredicateMaskField_17088 pm_f_8)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_17088_73056 pm_f_8) (select (|PolymorphicMapType_25202_17088_73142#PolymorphicMapType_25202| ExhaleHeap) null (PredicateMaskField_17088 pm_f_8)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_25202) (ExhaleHeap@@0 T@PolymorphicMapType_25202) (Mask@@1 T@PolymorphicMapType_25223) (pm_f_8@@0 T@Field_17088_72965) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_17088_73029 Mask@@1 null pm_f_8@@0) (IsWandField_17088_74803 pm_f_8@@0)) (= (select (|PolymorphicMapType_25202_17088_73142#PolymorphicMapType_25202| Heap@@1) null (WandMaskField_17088 pm_f_8@@0)) (select (|PolymorphicMapType_25202_17088_73142#PolymorphicMapType_25202| ExhaleHeap@@0) null (WandMaskField_17088 pm_f_8@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_17088_74803 pm_f_8@@0) (select (|PolymorphicMapType_25202_17088_73142#PolymorphicMapType_25202| ExhaleHeap@@0) null (WandMaskField_17088 pm_f_8@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_31403| (|Seq#Singleton_17098| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.601:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_31403| (|Seq#Singleton_17098| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3440| (|Seq#Singleton_3440| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.601:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3440| (|Seq#Singleton_3440| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_31403) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_17098| s@@11))) (= (|Seq#Index_17098| (|Seq#Take_17098| s@@11 n@@9) j@@3) (|Seq#Index_17098| s@@11 j@@3)))
 :qid |stdinbpl.352:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_17098| (|Seq#Take_17098| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_17098| s@@11 j@@3) (|Seq#Take_17098| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3440) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3440| s@@12))) (= (|Seq#Index_3440| (|Seq#Take_3440| s@@12 n@@10) j@@4) (|Seq#Index_3440| s@@12 j@@4)))
 :qid |stdinbpl.352:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3440| (|Seq#Take_3440| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3440| s@@12 j@@4) (|Seq#Take_3440| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_31403) (t T@Seq_31403) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_17098| s@@13))) (< n@@11 (|Seq#Length_17098| (|Seq#Append_31403| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_17098| s@@13)) (|Seq#Length_17098| s@@13)) n@@11) (= (|Seq#Take_17098| (|Seq#Append_31403| s@@13 t) n@@11) (|Seq#Append_31403| s@@13 (|Seq#Take_17098| t (|Seq#Sub| n@@11 (|Seq#Length_17098| s@@13)))))))
 :qid |stdinbpl.437:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_17098| (|Seq#Append_31403| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3440) (t@@0 T@Seq_3440) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3440| s@@14))) (< n@@12 (|Seq#Length_3440| (|Seq#Append_3440| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3440| s@@14)) (|Seq#Length_3440| s@@14)) n@@12) (= (|Seq#Take_3440| (|Seq#Append_3440| s@@14 t@@0) n@@12) (|Seq#Append_3440| s@@14 (|Seq#Take_3440| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3440| s@@14)))))))
 :qid |stdinbpl.437:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3440| (|Seq#Append_3440| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_25202) (ExhaleHeap@@1 T@PolymorphicMapType_25202) (Mask@@2 T@PolymorphicMapType_25223) (o_18 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_25202_16850_53#PolymorphicMapType_25202| Heap@@2) o_18 $allocated) (select (|PolymorphicMapType_25202_16850_53#PolymorphicMapType_25202| ExhaleHeap@@1) o_18 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_25202_16850_53#PolymorphicMapType_25202| ExhaleHeap@@1) o_18 $allocated))
)))
(assert (forall ((p T@Field_17088_72965) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_25262_25262 p v_1 p w))
 :qid |stdinbpl.255:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_25262_25262 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_31403) (s1 T@Seq_31403) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_17098|)) (not (= s1 |Seq#Empty_17098|))) (<= (|Seq#Length_17098| s0) n@@13)) (< n@@13 (|Seq#Length_17098| (|Seq#Append_31403| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_17098| s0)) (|Seq#Length_17098| s0)) n@@13) (= (|Seq#Index_17098| (|Seq#Append_31403| s0 s1) n@@13) (|Seq#Index_17098| s1 (|Seq#Sub| n@@13 (|Seq#Length_17098| s0))))))
 :qid |stdinbpl.324:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_17098| (|Seq#Append_31403| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3440) (s1@@0 T@Seq_3440) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3440|)) (not (= s1@@0 |Seq#Empty_3440|))) (<= (|Seq#Length_3440| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3440| (|Seq#Append_3440| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3440| s0@@0)) (|Seq#Length_3440| s0@@0)) n@@14) (= (|Seq#Index_3440| (|Seq#Append_3440| s0@@0 s1@@0) n@@14) (|Seq#Index_3440| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3440| s0@@0))))))
 :qid |stdinbpl.324:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3440| (|Seq#Append_3440| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_17086_3562 Exercise4__Integer_value)))
(assert  (not (IsWandField_17086_3562 Exercise4__Integer_value)))
(assert  (not (IsPredicateField_17086_3562 Ref__Integer_value)))
(assert  (not (IsWandField_17086_3562 Ref__Integer_value)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_25202) (ExhaleHeap@@2 T@PolymorphicMapType_25202) (Mask@@3 T@PolymorphicMapType_25223) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_25223) (o_2@@4 T@Ref) (f_4@@4 T@Field_17088_73098) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_17088_78349 f_4@@4))) (not (IsWandField_17088_78365 f_4@@4))) (<= (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_25223) (o_2@@5 T@Ref) (f_4@@5 T@Field_17088_72965) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_17088_73056 f_4@@5))) (not (IsWandField_17088_74803 f_4@@5))) (<= (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_25223) (o_2@@6 T@Ref) (f_4@@6 T@Field_25275_25276) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_17088_25276 f_4@@6))) (not (IsWandField_17088_25276 f_4@@6))) (<= (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_25223) (o_2@@7 T@Ref) (f_4@@7 T@Field_25262_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_17088_53 f_4@@7))) (not (IsWandField_17088_53 f_4@@7))) (<= (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_25223) (o_2@@8 T@Ref) (f_4@@8 T@Field_31327_3562) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_17086_3562 f_4@@8))) (not (IsWandField_17086_3562 f_4@@8))) (<= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_25223) (o_2@@9 T@Ref) (f_4@@9 T@Field_17088_73098) ) (! (= (HasDirectPerm_17088_78803 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17088_78803 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_25223) (o_2@@10 T@Ref) (f_4@@10 T@Field_17088_72965) ) (! (= (HasDirectPerm_17088_73029 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17088_73029 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_25223) (o_2@@11 T@Ref) (f_4@@11 T@Field_25275_25276) ) (! (= (HasDirectPerm_17088_25276 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17088_25276 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_25223) (o_2@@12 T@Ref) (f_4@@12 T@Field_25262_53) ) (! (= (HasDirectPerm_17088_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17088_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_25223) (o_2@@13 T@Ref) (f_4@@13 T@Field_31327_3562) ) (! (= (HasDirectPerm_17088_3577 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17088_3577 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_25202) (ExhaleHeap@@3 T@PolymorphicMapType_25202) (Mask@@14 T@PolymorphicMapType_25223) (pm_f_8@@1 T@Field_17088_72965) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_17088_73029 Mask@@14 null pm_f_8@@1) (IsPredicateField_17088_73056 pm_f_8@@1)) (and (and (and (and (forall ((o2_8 T@Ref) (f_26 T@Field_25262_53) ) (!  (=> (select (|PolymorphicMapType_25751_25262_53#PolymorphicMapType_25751| (select (|PolymorphicMapType_25202_17088_73142#PolymorphicMapType_25202| Heap@@4) null (PredicateMaskField_17088 pm_f_8@@1))) o2_8 f_26) (= (select (|PolymorphicMapType_25202_16850_53#PolymorphicMapType_25202| Heap@@4) o2_8 f_26) (select (|PolymorphicMapType_25202_16850_53#PolymorphicMapType_25202| ExhaleHeap@@3) o2_8 f_26)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25202_16850_53#PolymorphicMapType_25202| ExhaleHeap@@3) o2_8 f_26))
)) (forall ((o2_8@@0 T@Ref) (f_26@@0 T@Field_25275_25276) ) (!  (=> (select (|PolymorphicMapType_25751_25262_25276#PolymorphicMapType_25751| (select (|PolymorphicMapType_25202_17088_73142#PolymorphicMapType_25202| Heap@@4) null (PredicateMaskField_17088 pm_f_8@@1))) o2_8@@0 f_26@@0) (= (select (|PolymorphicMapType_25202_16853_16854#PolymorphicMapType_25202| Heap@@4) o2_8@@0 f_26@@0) (select (|PolymorphicMapType_25202_16853_16854#PolymorphicMapType_25202| ExhaleHeap@@3) o2_8@@0 f_26@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25202_16853_16854#PolymorphicMapType_25202| ExhaleHeap@@3) o2_8@@0 f_26@@0))
))) (forall ((o2_8@@1 T@Ref) (f_26@@1 T@Field_31327_3562) ) (!  (=> (select (|PolymorphicMapType_25751_25262_3562#PolymorphicMapType_25751| (select (|PolymorphicMapType_25202_17088_73142#PolymorphicMapType_25202| Heap@@4) null (PredicateMaskField_17088 pm_f_8@@1))) o2_8@@1 f_26@@1) (= (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| Heap@@4) o2_8@@1 f_26@@1) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@@3) o2_8@@1 f_26@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@@3) o2_8@@1 f_26@@1))
))) (forall ((o2_8@@2 T@Ref) (f_26@@2 T@Field_17088_72965) ) (!  (=> (select (|PolymorphicMapType_25751_25262_72965#PolymorphicMapType_25751| (select (|PolymorphicMapType_25202_17088_73142#PolymorphicMapType_25202| Heap@@4) null (PredicateMaskField_17088 pm_f_8@@1))) o2_8@@2 f_26@@2) (= (select (|PolymorphicMapType_25202_25262_72965#PolymorphicMapType_25202| Heap@@4) o2_8@@2 f_26@@2) (select (|PolymorphicMapType_25202_25262_72965#PolymorphicMapType_25202| ExhaleHeap@@3) o2_8@@2 f_26@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25202_25262_72965#PolymorphicMapType_25202| ExhaleHeap@@3) o2_8@@2 f_26@@2))
))) (forall ((o2_8@@3 T@Ref) (f_26@@3 T@Field_17088_73098) ) (!  (=> (select (|PolymorphicMapType_25751_25262_74276#PolymorphicMapType_25751| (select (|PolymorphicMapType_25202_17088_73142#PolymorphicMapType_25202| Heap@@4) null (PredicateMaskField_17088 pm_f_8@@1))) o2_8@@3 f_26@@3) (= (select (|PolymorphicMapType_25202_17088_73142#PolymorphicMapType_25202| Heap@@4) o2_8@@3 f_26@@3) (select (|PolymorphicMapType_25202_17088_73142#PolymorphicMapType_25202| ExhaleHeap@@3) o2_8@@3 f_26@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25202_17088_73142#PolymorphicMapType_25202| ExhaleHeap@@3) o2_8@@3 f_26@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_17088_73056 pm_f_8@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_25202) (ExhaleHeap@@4 T@PolymorphicMapType_25202) (Mask@@15 T@PolymorphicMapType_25223) (pm_f_8@@2 T@Field_17088_72965) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_17088_73029 Mask@@15 null pm_f_8@@2) (IsWandField_17088_74803 pm_f_8@@2)) (and (and (and (and (forall ((o2_8@@4 T@Ref) (f_26@@4 T@Field_25262_53) ) (!  (=> (select (|PolymorphicMapType_25751_25262_53#PolymorphicMapType_25751| (select (|PolymorphicMapType_25202_17088_73142#PolymorphicMapType_25202| Heap@@5) null (WandMaskField_17088 pm_f_8@@2))) o2_8@@4 f_26@@4) (= (select (|PolymorphicMapType_25202_16850_53#PolymorphicMapType_25202| Heap@@5) o2_8@@4 f_26@@4) (select (|PolymorphicMapType_25202_16850_53#PolymorphicMapType_25202| ExhaleHeap@@4) o2_8@@4 f_26@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25202_16850_53#PolymorphicMapType_25202| ExhaleHeap@@4) o2_8@@4 f_26@@4))
)) (forall ((o2_8@@5 T@Ref) (f_26@@5 T@Field_25275_25276) ) (!  (=> (select (|PolymorphicMapType_25751_25262_25276#PolymorphicMapType_25751| (select (|PolymorphicMapType_25202_17088_73142#PolymorphicMapType_25202| Heap@@5) null (WandMaskField_17088 pm_f_8@@2))) o2_8@@5 f_26@@5) (= (select (|PolymorphicMapType_25202_16853_16854#PolymorphicMapType_25202| Heap@@5) o2_8@@5 f_26@@5) (select (|PolymorphicMapType_25202_16853_16854#PolymorphicMapType_25202| ExhaleHeap@@4) o2_8@@5 f_26@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25202_16853_16854#PolymorphicMapType_25202| ExhaleHeap@@4) o2_8@@5 f_26@@5))
))) (forall ((o2_8@@6 T@Ref) (f_26@@6 T@Field_31327_3562) ) (!  (=> (select (|PolymorphicMapType_25751_25262_3562#PolymorphicMapType_25751| (select (|PolymorphicMapType_25202_17088_73142#PolymorphicMapType_25202| Heap@@5) null (WandMaskField_17088 pm_f_8@@2))) o2_8@@6 f_26@@6) (= (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| Heap@@5) o2_8@@6 f_26@@6) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@@4) o2_8@@6 f_26@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@@4) o2_8@@6 f_26@@6))
))) (forall ((o2_8@@7 T@Ref) (f_26@@7 T@Field_17088_72965) ) (!  (=> (select (|PolymorphicMapType_25751_25262_72965#PolymorphicMapType_25751| (select (|PolymorphicMapType_25202_17088_73142#PolymorphicMapType_25202| Heap@@5) null (WandMaskField_17088 pm_f_8@@2))) o2_8@@7 f_26@@7) (= (select (|PolymorphicMapType_25202_25262_72965#PolymorphicMapType_25202| Heap@@5) o2_8@@7 f_26@@7) (select (|PolymorphicMapType_25202_25262_72965#PolymorphicMapType_25202| ExhaleHeap@@4) o2_8@@7 f_26@@7)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25202_25262_72965#PolymorphicMapType_25202| ExhaleHeap@@4) o2_8@@7 f_26@@7))
))) (forall ((o2_8@@8 T@Ref) (f_26@@8 T@Field_17088_73098) ) (!  (=> (select (|PolymorphicMapType_25751_25262_74276#PolymorphicMapType_25751| (select (|PolymorphicMapType_25202_17088_73142#PolymorphicMapType_25202| Heap@@5) null (WandMaskField_17088 pm_f_8@@2))) o2_8@@8 f_26@@8) (= (select (|PolymorphicMapType_25202_17088_73142#PolymorphicMapType_25202| Heap@@5) o2_8@@8 f_26@@8) (select (|PolymorphicMapType_25202_17088_73142#PolymorphicMapType_25202| ExhaleHeap@@4) o2_8@@8 f_26@@8)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25202_17088_73142#PolymorphicMapType_25202| ExhaleHeap@@4) o2_8@@8 f_26@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_17088_74803 pm_f_8@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.243:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3440| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.616:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3440| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_25202) (ExhaleHeap@@5 T@PolymorphicMapType_25202) (Mask@@16 T@PolymorphicMapType_25223) (o_18@@0 T@Ref) (f_26@@9 T@Field_17088_73098) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_17088_78803 Mask@@16 o_18@@0 f_26@@9) (= (select (|PolymorphicMapType_25202_17088_73142#PolymorphicMapType_25202| Heap@@6) o_18@@0 f_26@@9) (select (|PolymorphicMapType_25202_17088_73142#PolymorphicMapType_25202| ExhaleHeap@@5) o_18@@0 f_26@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_25202_17088_73142#PolymorphicMapType_25202| ExhaleHeap@@5) o_18@@0 f_26@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_25202) (ExhaleHeap@@6 T@PolymorphicMapType_25202) (Mask@@17 T@PolymorphicMapType_25223) (o_18@@1 T@Ref) (f_26@@10 T@Field_17088_72965) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_17088_73029 Mask@@17 o_18@@1 f_26@@10) (= (select (|PolymorphicMapType_25202_25262_72965#PolymorphicMapType_25202| Heap@@7) o_18@@1 f_26@@10) (select (|PolymorphicMapType_25202_25262_72965#PolymorphicMapType_25202| ExhaleHeap@@6) o_18@@1 f_26@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_25202_25262_72965#PolymorphicMapType_25202| ExhaleHeap@@6) o_18@@1 f_26@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_25202) (ExhaleHeap@@7 T@PolymorphicMapType_25202) (Mask@@18 T@PolymorphicMapType_25223) (o_18@@2 T@Ref) (f_26@@11 T@Field_25275_25276) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_17088_25276 Mask@@18 o_18@@2 f_26@@11) (= (select (|PolymorphicMapType_25202_16853_16854#PolymorphicMapType_25202| Heap@@8) o_18@@2 f_26@@11) (select (|PolymorphicMapType_25202_16853_16854#PolymorphicMapType_25202| ExhaleHeap@@7) o_18@@2 f_26@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_25202_16853_16854#PolymorphicMapType_25202| ExhaleHeap@@7) o_18@@2 f_26@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_25202) (ExhaleHeap@@8 T@PolymorphicMapType_25202) (Mask@@19 T@PolymorphicMapType_25223) (o_18@@3 T@Ref) (f_26@@12 T@Field_25262_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_17088_53 Mask@@19 o_18@@3 f_26@@12) (= (select (|PolymorphicMapType_25202_16850_53#PolymorphicMapType_25202| Heap@@9) o_18@@3 f_26@@12) (select (|PolymorphicMapType_25202_16850_53#PolymorphicMapType_25202| ExhaleHeap@@8) o_18@@3 f_26@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_25202_16850_53#PolymorphicMapType_25202| ExhaleHeap@@8) o_18@@3 f_26@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_25202) (ExhaleHeap@@9 T@PolymorphicMapType_25202) (Mask@@20 T@PolymorphicMapType_25223) (o_18@@4 T@Ref) (f_26@@13 T@Field_31327_3562) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_17088_3577 Mask@@20 o_18@@4 f_26@@13) (= (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| Heap@@10) o_18@@4 f_26@@13) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@@9) o_18@@4 f_26@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@@9) o_18@@4 f_26@@13))
)))
(assert (forall ((s0@@1 T@Seq_31403) (s1@@1 T@Seq_31403) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_17098|)) (not (= s1@@1 |Seq#Empty_17098|))) (= (|Seq#Length_17098| (|Seq#Append_31403| s0@@1 s1@@1)) (+ (|Seq#Length_17098| s0@@1) (|Seq#Length_17098| s1@@1))))
 :qid |stdinbpl.293:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_17098| (|Seq#Append_31403| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3440) (s1@@2 T@Seq_3440) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3440|)) (not (= s1@@2 |Seq#Empty_3440|))) (= (|Seq#Length_3440| (|Seq#Append_3440| s0@@2 s1@@2)) (+ (|Seq#Length_3440| s0@@2) (|Seq#Length_3440| s1@@2))))
 :qid |stdinbpl.293:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3440| (|Seq#Append_3440| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_17088_73098) ) (! (= (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_17088_72965) ) (! (= (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_25275_25276) ) (! (= (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_25262_53) ) (! (= (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_31327_3562) ) (! (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((s@@15 T@Seq_31403) (t@@1 T@Seq_31403) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_17098| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_17098| s@@15)) (|Seq#Length_17098| s@@15)) n@@15) (= (|Seq#Drop_17098| (|Seq#Append_31403| s@@15 t@@1) n@@15) (|Seq#Drop_17098| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_17098| s@@15))))))
 :qid |stdinbpl.450:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_17098| (|Seq#Append_31403| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3440) (t@@2 T@Seq_3440) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3440| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3440| s@@16)) (|Seq#Length_3440| s@@16)) n@@16) (= (|Seq#Drop_3440| (|Seq#Append_3440| s@@16 t@@2) n@@16) (|Seq#Drop_3440| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3440| s@@16))))))
 :qid |stdinbpl.450:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3440| (|Seq#Append_3440| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_25223) (SummandMask1 T@PolymorphicMapType_25223) (SummandMask2 T@PolymorphicMapType_25223) (o_2@@19 T@Ref) (f_4@@19 T@Field_17088_73098) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_25223) (SummandMask1@@0 T@PolymorphicMapType_25223) (SummandMask2@@0 T@PolymorphicMapType_25223) (o_2@@20 T@Ref) (f_4@@20 T@Field_17088_72965) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_25223) (SummandMask1@@1 T@PolymorphicMapType_25223) (SummandMask2@@1 T@PolymorphicMapType_25223) (o_2@@21 T@Ref) (f_4@@21 T@Field_25275_25276) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_25223) (SummandMask1@@2 T@PolymorphicMapType_25223) (SummandMask2@@2 T@PolymorphicMapType_25223) (o_2@@22 T@Ref) (f_4@@22 T@Field_25262_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_25223) (SummandMask1@@3 T@PolymorphicMapType_25223) (SummandMask2@@3 T@PolymorphicMapType_25223) (o_2@@23 T@Ref) (f_4@@23 T@Field_31327_3562) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3440| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3440| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.615:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3440| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_31403) (b T@Seq_31403) ) (!  (=> (|Seq#Equal_31403| a b) (= a b))
 :qid |stdinbpl.588:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_31403| a b))
)))
(assert (forall ((a@@0 T@Seq_3440) (b@@0 T@Seq_3440) ) (!  (=> (|Seq#Equal_3440| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.588:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3440| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_31403) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_17098| s@@17))) (|Seq#ContainsTrigger_17098| s@@17 (|Seq#Index_17098| s@@17 i@@3)))
 :qid |stdinbpl.481:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_17098| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_3440) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_3440| s@@18))) (|Seq#ContainsTrigger_3440| s@@18 (|Seq#Index_3440| s@@18 i@@4)))
 :qid |stdinbpl.481:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3440| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_31403) (s1@@3 T@Seq_31403) ) (!  (and (=> (= s0@@3 |Seq#Empty_17098|) (= (|Seq#Append_31403| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_17098|) (= (|Seq#Append_31403| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.299:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_31403| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3440) (s1@@4 T@Seq_3440) ) (!  (and (=> (= s0@@4 |Seq#Empty_3440|) (= (|Seq#Append_3440| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3440|) (= (|Seq#Append_3440| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.299:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3440| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_17098| (|Seq#Singleton_17098| t@@3) 0) t@@3)
 :qid |stdinbpl.303:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_17098| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3440| (|Seq#Singleton_3440| t@@4) 0) t@@4)
 :qid |stdinbpl.303:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3440| t@@4))
)))
(assert (forall ((s@@19 T@Seq_31403) ) (! (<= 0 (|Seq#Length_17098| s@@19))
 :qid |stdinbpl.282:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_17098| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3440) ) (! (<= 0 (|Seq#Length_3440| s@@20))
 :qid |stdinbpl.282:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3440| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_31403) (s1@@5 T@Seq_31403) ) (!  (=> (|Seq#Equal_31403| s0@@5 s1@@5) (and (= (|Seq#Length_17098| s0@@5) (|Seq#Length_17098| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_17098| s0@@5))) (= (|Seq#Index_17098| s0@@5 j@@6) (|Seq#Index_17098| s1@@5 j@@6)))
 :qid |stdinbpl.578:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_17098| s0@@5 j@@6))
 :pattern ( (|Seq#Index_17098| s1@@5 j@@6))
))))
 :qid |stdinbpl.575:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_31403| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3440) (s1@@6 T@Seq_3440) ) (!  (=> (|Seq#Equal_3440| s0@@6 s1@@6) (and (= (|Seq#Length_3440| s0@@6) (|Seq#Length_3440| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_3440| s0@@6))) (= (|Seq#Index_3440| s0@@6 j@@7) (|Seq#Index_3440| s1@@6 j@@7)))
 :qid |stdinbpl.578:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3440| s0@@6 j@@7))
 :pattern ( (|Seq#Index_3440| s1@@6 j@@7))
))))
 :qid |stdinbpl.575:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3440| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_17098| (|Seq#Singleton_17098| t@@5)) 1)
 :qid |stdinbpl.290:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_17098| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3440| (|Seq#Singleton_3440| t@@6)) 1)
 :qid |stdinbpl.290:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3440| t@@6))
)))
(assert (forall ((s@@21 T@Seq_31403) (t@@7 T@Seq_31403) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_17098| s@@21))) (= (|Seq#Take_17098| (|Seq#Append_31403| s@@21 t@@7) n@@17) (|Seq#Take_17098| s@@21 n@@17)))
 :qid |stdinbpl.432:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_17098| (|Seq#Append_31403| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3440) (t@@8 T@Seq_3440) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3440| s@@22))) (= (|Seq#Take_3440| (|Seq#Append_3440| s@@22 t@@8) n@@18) (|Seq#Take_3440| s@@22 n@@18)))
 :qid |stdinbpl.432:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3440| (|Seq#Append_3440| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_31403) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_17098| s@@23))) (= (|Seq#Length_17098| (|Seq#Update_17098| s@@23 i@@5 v@@2)) (|Seq#Length_17098| s@@23)))
 :qid |stdinbpl.331:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_17098| (|Seq#Update_17098| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_17098| s@@23) (|Seq#Update_17098| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3440) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_3440| s@@24))) (= (|Seq#Length_3440| (|Seq#Update_3440| s@@24 i@@6 v@@3)) (|Seq#Length_3440| s@@24)))
 :qid |stdinbpl.331:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3440| (|Seq#Update_3440| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_3440| s@@24) (|Seq#Update_3440| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_25202) (o_20 T@Ref) (f_30 T@Field_17088_72965) (v@@4 T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_25202 (|PolymorphicMapType_25202_16850_53#PolymorphicMapType_25202| Heap@@11) (|PolymorphicMapType_25202_16853_16854#PolymorphicMapType_25202| Heap@@11) (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| Heap@@11) (|PolymorphicMapType_25202_17088_73142#PolymorphicMapType_25202| Heap@@11) (store (|PolymorphicMapType_25202_25262_72965#PolymorphicMapType_25202| Heap@@11) o_20 f_30 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25202 (|PolymorphicMapType_25202_16850_53#PolymorphicMapType_25202| Heap@@11) (|PolymorphicMapType_25202_16853_16854#PolymorphicMapType_25202| Heap@@11) (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| Heap@@11) (|PolymorphicMapType_25202_17088_73142#PolymorphicMapType_25202| Heap@@11) (store (|PolymorphicMapType_25202_25262_72965#PolymorphicMapType_25202| Heap@@11) o_20 f_30 v@@4)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_25202) (o_20@@0 T@Ref) (f_30@@0 T@Field_17088_73098) (v@@5 T@PolymorphicMapType_25751) ) (! (succHeap Heap@@12 (PolymorphicMapType_25202 (|PolymorphicMapType_25202_16850_53#PolymorphicMapType_25202| Heap@@12) (|PolymorphicMapType_25202_16853_16854#PolymorphicMapType_25202| Heap@@12) (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| Heap@@12) (store (|PolymorphicMapType_25202_17088_73142#PolymorphicMapType_25202| Heap@@12) o_20@@0 f_30@@0 v@@5) (|PolymorphicMapType_25202_25262_72965#PolymorphicMapType_25202| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25202 (|PolymorphicMapType_25202_16850_53#PolymorphicMapType_25202| Heap@@12) (|PolymorphicMapType_25202_16853_16854#PolymorphicMapType_25202| Heap@@12) (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| Heap@@12) (store (|PolymorphicMapType_25202_17088_73142#PolymorphicMapType_25202| Heap@@12) o_20@@0 f_30@@0 v@@5) (|PolymorphicMapType_25202_25262_72965#PolymorphicMapType_25202| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_25202) (o_20@@1 T@Ref) (f_30@@1 T@Field_31327_3562) (v@@6 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_25202 (|PolymorphicMapType_25202_16850_53#PolymorphicMapType_25202| Heap@@13) (|PolymorphicMapType_25202_16853_16854#PolymorphicMapType_25202| Heap@@13) (store (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| Heap@@13) o_20@@1 f_30@@1 v@@6) (|PolymorphicMapType_25202_17088_73142#PolymorphicMapType_25202| Heap@@13) (|PolymorphicMapType_25202_25262_72965#PolymorphicMapType_25202| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25202 (|PolymorphicMapType_25202_16850_53#PolymorphicMapType_25202| Heap@@13) (|PolymorphicMapType_25202_16853_16854#PolymorphicMapType_25202| Heap@@13) (store (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| Heap@@13) o_20@@1 f_30@@1 v@@6) (|PolymorphicMapType_25202_17088_73142#PolymorphicMapType_25202| Heap@@13) (|PolymorphicMapType_25202_25262_72965#PolymorphicMapType_25202| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_25202) (o_20@@2 T@Ref) (f_30@@2 T@Field_25275_25276) (v@@7 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_25202 (|PolymorphicMapType_25202_16850_53#PolymorphicMapType_25202| Heap@@14) (store (|PolymorphicMapType_25202_16853_16854#PolymorphicMapType_25202| Heap@@14) o_20@@2 f_30@@2 v@@7) (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| Heap@@14) (|PolymorphicMapType_25202_17088_73142#PolymorphicMapType_25202| Heap@@14) (|PolymorphicMapType_25202_25262_72965#PolymorphicMapType_25202| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25202 (|PolymorphicMapType_25202_16850_53#PolymorphicMapType_25202| Heap@@14) (store (|PolymorphicMapType_25202_16853_16854#PolymorphicMapType_25202| Heap@@14) o_20@@2 f_30@@2 v@@7) (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| Heap@@14) (|PolymorphicMapType_25202_17088_73142#PolymorphicMapType_25202| Heap@@14) (|PolymorphicMapType_25202_25262_72965#PolymorphicMapType_25202| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_25202) (o_20@@3 T@Ref) (f_30@@3 T@Field_25262_53) (v@@8 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_25202 (store (|PolymorphicMapType_25202_16850_53#PolymorphicMapType_25202| Heap@@15) o_20@@3 f_30@@3 v@@8) (|PolymorphicMapType_25202_16853_16854#PolymorphicMapType_25202| Heap@@15) (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| Heap@@15) (|PolymorphicMapType_25202_17088_73142#PolymorphicMapType_25202| Heap@@15) (|PolymorphicMapType_25202_25262_72965#PolymorphicMapType_25202| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25202 (store (|PolymorphicMapType_25202_16850_53#PolymorphicMapType_25202| Heap@@15) o_20@@3 f_30@@3 v@@8) (|PolymorphicMapType_25202_16853_16854#PolymorphicMapType_25202| Heap@@15) (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| Heap@@15) (|PolymorphicMapType_25202_17088_73142#PolymorphicMapType_25202| Heap@@15) (|PolymorphicMapType_25202_25262_72965#PolymorphicMapType_25202| Heap@@15)))
)))
(assert (forall ((s@@25 T@Seq_31403) (t@@9 T@Seq_31403) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_17098| s@@25))) (= (|Seq#Drop_17098| (|Seq#Append_31403| s@@25 t@@9) n@@19) (|Seq#Append_31403| (|Seq#Drop_17098| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.446:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_17098| (|Seq#Append_31403| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3440) (t@@10 T@Seq_3440) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3440| s@@26))) (= (|Seq#Drop_3440| (|Seq#Append_3440| s@@26 t@@10) n@@20) (|Seq#Append_3440| (|Seq#Drop_3440| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.446:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3440| (|Seq#Append_3440| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_31403) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_17098| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_17098| (|Seq#Drop_17098| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_17098| s@@27 i@@7))))
 :qid |stdinbpl.382:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_17098| s@@27 n@@21) (|Seq#Index_17098| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_3440) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_3440| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_3440| (|Seq#Drop_3440| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_3440| s@@28 i@@8))))
 :qid |stdinbpl.382:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3440| s@@28 n@@22) (|Seq#Index_3440| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_31403) (s1@@7 T@Seq_31403) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_17098|)) (not (= s1@@7 |Seq#Empty_17098|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_17098| s0@@7))) (= (|Seq#Index_17098| (|Seq#Append_31403| s0@@7 s1@@7) n@@23) (|Seq#Index_17098| s0@@7 n@@23)))
 :qid |stdinbpl.322:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_17098| (|Seq#Append_31403| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_17098| s0@@7 n@@23) (|Seq#Append_31403| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3440) (s1@@8 T@Seq_3440) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3440|)) (not (= s1@@8 |Seq#Empty_3440|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3440| s0@@8))) (= (|Seq#Index_3440| (|Seq#Append_3440| s0@@8 s1@@8) n@@24) (|Seq#Index_3440| s0@@8 n@@24)))
 :qid |stdinbpl.322:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3440| (|Seq#Append_3440| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3440| s0@@8 n@@24) (|Seq#Append_3440| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_31403) (s1@@9 T@Seq_31403) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_17098|)) (not (= s1@@9 |Seq#Empty_17098|))) (<= 0 m)) (< m (|Seq#Length_17098| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_17098| s0@@9)) (|Seq#Length_17098| s0@@9)) m) (= (|Seq#Index_17098| (|Seq#Append_31403| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_17098| s0@@9))) (|Seq#Index_17098| s1@@9 m))))
 :qid |stdinbpl.327:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_17098| s1@@9 m) (|Seq#Append_31403| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3440) (s1@@10 T@Seq_3440) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3440|)) (not (= s1@@10 |Seq#Empty_3440|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3440| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3440| s0@@10)) (|Seq#Length_3440| s0@@10)) m@@0) (= (|Seq#Index_3440| (|Seq#Append_3440| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3440| s0@@10))) (|Seq#Index_3440| s1@@10 m@@0))))
 :qid |stdinbpl.327:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3440| s1@@10 m@@0) (|Seq#Append_3440| s0@@10 s1@@10))
)))
(assert (forall ((o_20@@4 T@Ref) (f_29 T@Field_25275_25276) (Heap@@16 T@PolymorphicMapType_25202) ) (!  (=> (select (|PolymorphicMapType_25202_16850_53#PolymorphicMapType_25202| Heap@@16) o_20@@4 $allocated) (select (|PolymorphicMapType_25202_16850_53#PolymorphicMapType_25202| Heap@@16) (select (|PolymorphicMapType_25202_16853_16854#PolymorphicMapType_25202| Heap@@16) o_20@@4 f_29) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_25202_16853_16854#PolymorphicMapType_25202| Heap@@16) o_20@@4 f_29))
)))
(assert (forall ((s@@29 T@Seq_31403) (x@@3 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_17098| s@@29))) (= (|Seq#Index_17098| s@@29 i@@9) x@@3)) (|Seq#Contains_31403| s@@29 x@@3))
 :qid |stdinbpl.479:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_31403| s@@29 x@@3) (|Seq#Index_17098| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_3440) (x@@4 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_3440| s@@30))) (= (|Seq#Index_3440| s@@30 i@@10) x@@4)) (|Seq#Contains_3440| s@@30 x@@4))
 :qid |stdinbpl.479:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3440| s@@30 x@@4) (|Seq#Index_3440| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_31403) (s1@@11 T@Seq_31403) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_31403| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_31403| s0@@11 s1@@11))) (not (= (|Seq#Length_17098| s0@@11) (|Seq#Length_17098| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_31403| s0@@11 s1@@11))) (= (|Seq#Length_17098| s0@@11) (|Seq#Length_17098| s1@@11))) (= (|Seq#SkolemDiff_31403| s0@@11 s1@@11) (|Seq#SkolemDiff_31403| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_31403| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_31403| s0@@11 s1@@11) (|Seq#Length_17098| s0@@11))) (not (= (|Seq#Index_17098| s0@@11 (|Seq#SkolemDiff_31403| s0@@11 s1@@11)) (|Seq#Index_17098| s1@@11 (|Seq#SkolemDiff_31403| s0@@11 s1@@11))))))
 :qid |stdinbpl.583:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_31403| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3440) (s1@@12 T@Seq_3440) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3440| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3440| s0@@12 s1@@12))) (not (= (|Seq#Length_3440| s0@@12) (|Seq#Length_3440| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3440| s0@@12 s1@@12))) (= (|Seq#Length_3440| s0@@12) (|Seq#Length_3440| s1@@12))) (= (|Seq#SkolemDiff_3440| s0@@12 s1@@12) (|Seq#SkolemDiff_3440| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3440| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3440| s0@@12 s1@@12) (|Seq#Length_3440| s0@@12))) (not (= (|Seq#Index_3440| s0@@12 (|Seq#SkolemDiff_3440| s0@@12 s1@@12)) (|Seq#Index_3440| s1@@12 (|Seq#SkolemDiff_3440| s0@@12 s1@@12))))))
 :qid |stdinbpl.583:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3440| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_17088_72965) (v_1@@0 T@FrameType) (q T@Field_17088_72965) (w@@0 T@FrameType) (r T@Field_17088_72965) (u T@FrameType) ) (!  (=> (and (InsidePredicate_25262_25262 p@@1 v_1@@0 q w@@0) (InsidePredicate_25262_25262 q w@@0 r u)) (InsidePredicate_25262_25262 p@@1 v_1@@0 r u))
 :qid |stdinbpl.250:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25262_25262 p@@1 v_1@@0 q w@@0) (InsidePredicate_25262_25262 q w@@0 r u))
)))
(assert (forall ((s@@31 T@Seq_31403) ) (!  (=> (= (|Seq#Length_17098| s@@31) 0) (= s@@31 |Seq#Empty_17098|))
 :qid |stdinbpl.286:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_17098| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3440) ) (!  (=> (= (|Seq#Length_3440| s@@32) 0) (= s@@32 |Seq#Empty_3440|))
 :qid |stdinbpl.286:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3440| s@@32))
)))
(assert (forall ((s@@33 T@Seq_31403) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_17098| s@@33 n@@25) |Seq#Empty_17098|))
 :qid |stdinbpl.462:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_17098| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3440) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3440| s@@34 n@@26) |Seq#Empty_3440|))
 :qid |stdinbpl.462:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3440| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun i_17 () Int)
(declare-fun res () T@Seq_31403)
(declare-fun QPMask@23 () T@PolymorphicMapType_25223)
(declare-fun a_2 () T@Seq_31403)
(declare-fun b_24 () T@Seq_31403)
(declare-fun PostHeap@0 () T@PolymorphicMapType_25202)
(declare-fun i_10 () Int)
(declare-fun i_9 () Int)
(declare-fun i_19 () Int)
(declare-fun qpRange6 (T@Ref) Bool)
(declare-fun invRecv6 (T@Ref) Int)
(declare-fun QPMask@22 () T@PolymorphicMapType_25223)
(declare-fun i_8 () Int)
(declare-fun qpRange5 (T@Ref) Bool)
(declare-fun invRecv5 (T@Ref) Int)
(declare-fun QPMask@21 () T@PolymorphicMapType_25223)
(declare-fun i_21 () Int)
(declare-fun qpRange4 (T@Ref) Bool)
(declare-fun invRecv4 (T@Ref) Int)
(declare-fun i_7 () Int)
(declare-fun k@0 () Int)
(declare-fun i_27 () Int)
(declare-fun QPMask@20 () T@PolymorphicMapType_25223)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_25202)
(declare-fun i_25 () Int)
(declare-fun i_24 () Int)
(declare-fun i_23 () Int)
(declare-fun qpRange15 (T@Ref) Bool)
(declare-fun invRecv15 (T@Ref) Int)
(declare-fun QPMask@19 () T@PolymorphicMapType_25223)
(declare-fun i_13 () Int)
(declare-fun qpRange14 (T@Ref) Bool)
(declare-fun invRecv14 (T@Ref) Int)
(declare-fun QPMask@18 () T@PolymorphicMapType_25223)
(declare-fun i_12 () Int)
(declare-fun qpRange13 (T@Ref) Bool)
(declare-fun invRecv13 (T@Ref) Int)
(declare-fun QPMask@5 () T@PolymorphicMapType_25223)
(declare-fun i_11 () Int)
(declare-fun __flatten_10@1 () Int)
(declare-fun i_78 () Int)
(declare-fun Heap@1 () T@PolymorphicMapType_25202)
(declare-fun i_76 () Int)
(declare-fun i_74_1 () Int)
(declare-fun i_72_1 () Int)
(declare-fun qpRange16 (T@Ref) Bool)
(declare-fun invRecv16 (T@Ref) Int)
(declare-fun QPMask@6 () T@PolymorphicMapType_25223)
(declare-fun qpRange17 (T@Ref) Bool)
(declare-fun invRecv17 (T@Ref) Int)
(declare-fun QPMask@7 () T@PolymorphicMapType_25223)
(declare-fun qpRange18 (T@Ref) Bool)
(declare-fun invRecv18 (T@Ref) Int)
(declare-fun QPMask@8 () T@PolymorphicMapType_25223)
(declare-fun __flatten_5@1 () T@Ref)
(declare-fun __flatten_4@1 () Int)
(declare-fun __flatten_6@1 () T@Ref)
(declare-fun Heap@0 () T@PolymorphicMapType_25202)
(declare-fun __flatten_8@1 () T@Ref)
(declare-fun __flatten_7@1 () Int)
(declare-fun __flatten_9@1 () T@Ref)
(declare-fun neverTriggered19 (Int) Bool)
(declare-fun qpRange19 (T@Ref) Bool)
(declare-fun invRecv19 (T@Ref) Int)
(declare-fun QPMask@9 () T@PolymorphicMapType_25223)
(declare-fun neverTriggered20 (Int) Bool)
(declare-fun qpRange20 (T@Ref) Bool)
(declare-fun invRecv20 (T@Ref) Int)
(declare-fun QPMask@10 () T@PolymorphicMapType_25223)
(declare-fun neverTriggered21 (Int) Bool)
(declare-fun qpRange21 (T@Ref) Bool)
(declare-fun invRecv21 (T@Ref) Int)
(declare-fun QPMask@11 () T@PolymorphicMapType_25223)
(declare-fun i_35 () Int)
(declare-fun i_33 () Int)
(declare-fun i_31 () Int)
(declare-fun i_29 () Int)
(declare-fun QPMask@14 () T@PolymorphicMapType_25223)
(declare-fun neverTriggered7 (Int) Bool)
(declare-fun qpRange7 (T@Ref) Bool)
(declare-fun invRecv7 (T@Ref) Int)
(declare-fun QPMask@15 () T@PolymorphicMapType_25223)
(declare-fun neverTriggered8 (Int) Bool)
(declare-fun qpRange8 (T@Ref) Bool)
(declare-fun invRecv8 (T@Ref) Int)
(declare-fun QPMask@16 () T@PolymorphicMapType_25223)
(declare-fun neverTriggered9 (Int) Bool)
(declare-fun qpRange9 (T@Ref) Bool)
(declare-fun invRecv9 (T@Ref) Int)
(declare-fun QPMask@17 () T@PolymorphicMapType_25223)
(declare-fun i_97 () Int)
(declare-fun i_53 () Int)
(declare-fun i_94 () Int)
(declare-fun i_51 () Int)
(declare-fun i_91 () Int)
(declare-fun i_42 () Int)
(declare-fun i_88 () Int)
(declare-fun i_16 () Int)
(declare-fun qpRange22 (T@Ref) Bool)
(declare-fun invRecv22 (T@Ref) Int)
(declare-fun QPMask@12 () T@PolymorphicMapType_25223)
(declare-fun qpRange23 (T@Ref) Bool)
(declare-fun invRecv23 (T@Ref) Int)
(declare-fun QPMask@13 () T@PolymorphicMapType_25223)
(declare-fun qpRange24 (T@Ref) Bool)
(declare-fun invRecv24 (T@Ref) Int)
(declare-fun Heap@@17 () T@PolymorphicMapType_25202)
(declare-fun __flatten_9@0 () T@Ref)
(declare-fun __flatten_8@0 () T@Ref)
(declare-fun __flatten_6@0 () T@Ref)
(declare-fun __flatten_5@0 () T@Ref)
(declare-fun i_46 () Int)
(declare-fun i_44 () Int)
(declare-fun i_42_1 () Int)
(declare-fun i_40 () Int)
(declare-fun __flatten_5 () T@Ref)
(declare-fun __flatten_6 () T@Ref)
(declare-fun __flatten_8 () T@Ref)
(declare-fun __flatten_9 () T@Ref)
(declare-fun QPMask@2 () T@PolymorphicMapType_25223)
(declare-fun neverTriggered10 (Int) Bool)
(declare-fun qpRange10 (T@Ref) Bool)
(declare-fun invRecv10 (T@Ref) Int)
(declare-fun QPMask@3 () T@PolymorphicMapType_25223)
(declare-fun neverTriggered11 (Int) Bool)
(declare-fun qpRange11 (T@Ref) Bool)
(declare-fun invRecv11 (T@Ref) Int)
(declare-fun QPMask@4 () T@PolymorphicMapType_25223)
(declare-fun neverTriggered12 (Int) Bool)
(declare-fun qpRange12 (T@Ref) Bool)
(declare-fun invRecv12 (T@Ref) Int)
(declare-fun qpRange3 (T@Ref) Bool)
(declare-fun invRecv3 (T@Ref) Int)
(declare-fun QPMask@1 () T@PolymorphicMapType_25223)
(declare-fun i_15 () Int)
(declare-fun i_5 () Int)
(declare-fun j_2 () Int)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_25223)
(declare-fun i_14 () Int)
(declare-fun i_4 () Int)
(declare-fun j_12 () Int)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) Int)
(declare-fun i_3 () Int)
(declare-fun i_18 () Int)
(declare-fun j_14 () Int)
(declare-fun diz () T@Ref)
(set-info :boogie-vc-id Exercise4__zip)
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
 (=> (= (ControlFlow 0 0) 341) (let ((anon52_correct true))
(let ((anon193_Else_correct  (=> (and (not (and (<= 0 i_17) (and (= (mod i_17 2) 0) (< i_17 (|Seq#Length_17098| res))))) (= (ControlFlow 0 320) 312)) anon52_correct)))
(let ((anon193_Then_correct  (=> (and (<= 0 i_17) (and (= (mod i_17 2) 0) (< i_17 (|Seq#Length_17098| res)))) (and (=> (= (ControlFlow 0 313) (- 0 319)) (>= i_17 0)) (=> (>= i_17 0) (and (=> (= (ControlFlow 0 313) (- 0 318)) (< i_17 (|Seq#Length_17098| res))) (=> (< i_17 (|Seq#Length_17098| res)) (and (=> (= (ControlFlow 0 313) (- 0 317)) (HasDirectPerm_17088_3577 QPMask@23 (|Seq#Index_17098| res i_17) Ref__Integer_value)) (=> (HasDirectPerm_17088_3577 QPMask@23 (|Seq#Index_17098| res i_17) Ref__Integer_value) (and (=> (= (ControlFlow 0 313) (- 0 316)) (>= (div i_17 2) 0)) (=> (>= (div i_17 2) 0) (and (=> (= (ControlFlow 0 313) (- 0 315)) (< (div i_17 2) (|Seq#Length_17098| a_2))) (=> (< (div i_17 2) (|Seq#Length_17098| a_2)) (and (=> (= (ControlFlow 0 313) (- 0 314)) (HasDirectPerm_17088_3577 QPMask@23 (|Seq#Index_17098| a_2 (div i_17 2)) Ref__Integer_value)) (=> (HasDirectPerm_17088_3577 QPMask@23 (|Seq#Index_17098| a_2 (div i_17 2)) Ref__Integer_value) (=> (= (ControlFlow 0 313) 312) anon52_correct))))))))))))))))
(let ((anon192_Else_correct true))
(let ((anon190_Else_correct  (=> (and (forall ((i_23_1 Int) ) (!  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_23_1) (= (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| PostHeap@0) (|Seq#Index_17098| res (+ (* 2 i_23_1) 1)) Ref__Integer_value) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| PostHeap@0) (|Seq#Index_17098| b_24 i_23_1) Ref__Integer_value)))
 :qid |stdinbpl.1142:20|
 :skolemid |99|
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_23_1))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_23_1))
 :pattern ( (|Seq#Index_17098| b_24 i_23_1))
)) (state PostHeap@0 QPMask@23)) (and (and (=> (= (ControlFlow 0 321) 311) anon192_Else_correct) (=> (= (ControlFlow 0 321) 313) anon193_Then_correct)) (=> (= (ControlFlow 0 321) 320) anon193_Else_correct)))))
(let ((anon48_correct true))
(let ((anon191_Else_correct  (=> (and (not (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_10)) (= (ControlFlow 0 310) 302)) anon48_correct)))
(let ((anon191_Then_correct  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_10) (and (=> (= (ControlFlow 0 303) (- 0 309)) (>= (+ (* 2 i_10) 1) 0)) (=> (>= (+ (* 2 i_10) 1) 0) (and (=> (= (ControlFlow 0 303) (- 0 308)) (< (+ (* 2 i_10) 1) (|Seq#Length_17098| res))) (=> (< (+ (* 2 i_10) 1) (|Seq#Length_17098| res)) (and (=> (= (ControlFlow 0 303) (- 0 307)) (HasDirectPerm_17088_3577 QPMask@23 (|Seq#Index_17098| res (+ (* 2 i_10) 1)) Ref__Integer_value)) (=> (HasDirectPerm_17088_3577 QPMask@23 (|Seq#Index_17098| res (+ (* 2 i_10) 1)) Ref__Integer_value) (and (=> (= (ControlFlow 0 303) (- 0 306)) (>= i_10 0)) (=> (>= i_10 0) (and (=> (= (ControlFlow 0 303) (- 0 305)) (< i_10 (|Seq#Length_17098| b_24))) (=> (< i_10 (|Seq#Length_17098| b_24)) (and (=> (= (ControlFlow 0 303) (- 0 304)) (HasDirectPerm_17088_3577 QPMask@23 (|Seq#Index_17098| b_24 i_10) Ref__Integer_value)) (=> (HasDirectPerm_17088_3577 QPMask@23 (|Seq#Index_17098| b_24 i_10) Ref__Integer_value) (=> (= (ControlFlow 0 303) 302) anon48_correct))))))))))))))))
(let ((anon188_Else_correct  (=> (and (forall ((i_21_1 Int) ) (!  (=> (and (<= 0 i_21_1) (and (= (mod i_21_1 2) 1) (< i_21_1 (|Seq#Length_17098| res)))) (= (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| PostHeap@0) (|Seq#Index_17098| res i_21_1) Ref__Integer_value) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| PostHeap@0) (|Seq#Index_17098| b_24 (div i_21_1 2)) Ref__Integer_value)))
 :qid |stdinbpl.1118:20|
 :skolemid |98|
 :pattern ( (|Seq#Index_17098| res i_21_1))
)) (state PostHeap@0 QPMask@23)) (and (and (=> (= (ControlFlow 0 322) 321) anon190_Else_correct) (=> (= (ControlFlow 0 322) 303) anon191_Then_correct)) (=> (= (ControlFlow 0 322) 310) anon191_Else_correct)))))
(let ((anon44_correct true))
(let ((anon189_Else_correct  (=> (and (not (and (<= 0 i_9) (and (= (mod i_9 2) 1) (< i_9 (|Seq#Length_17098| res))))) (= (ControlFlow 0 301) 293)) anon44_correct)))
(let ((anon189_Then_correct  (=> (and (<= 0 i_9) (and (= (mod i_9 2) 1) (< i_9 (|Seq#Length_17098| res)))) (and (=> (= (ControlFlow 0 294) (- 0 300)) (>= i_9 0)) (=> (>= i_9 0) (and (=> (= (ControlFlow 0 294) (- 0 299)) (< i_9 (|Seq#Length_17098| res))) (=> (< i_9 (|Seq#Length_17098| res)) (and (=> (= (ControlFlow 0 294) (- 0 298)) (HasDirectPerm_17088_3577 QPMask@23 (|Seq#Index_17098| res i_9) Ref__Integer_value)) (=> (HasDirectPerm_17088_3577 QPMask@23 (|Seq#Index_17098| res i_9) Ref__Integer_value) (and (=> (= (ControlFlow 0 294) (- 0 297)) (>= (div i_9 2) 0)) (=> (>= (div i_9 2) 0) (and (=> (= (ControlFlow 0 294) (- 0 296)) (< (div i_9 2) (|Seq#Length_17098| b_24))) (=> (< (div i_9 2) (|Seq#Length_17098| b_24)) (and (=> (= (ControlFlow 0 294) (- 0 295)) (HasDirectPerm_17088_3577 QPMask@23 (|Seq#Index_17098| b_24 (div i_9 2)) Ref__Integer_value)) (=> (HasDirectPerm_17088_3577 QPMask@23 (|Seq#Index_17098| b_24 (div i_9 2)) Ref__Integer_value) (=> (= (ControlFlow 0 294) 293) anon44_correct))))))))))))))))
(let ((anon186_Else_correct  (=> (and (forall ((i_19_1 Int) ) (!  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_19_1) (= (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| PostHeap@0) (|Seq#Index_17098| res (* 2 i_19_1)) Ref__Integer_value) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| PostHeap@0) (|Seq#Index_17098| a_2 i_19_1) Ref__Integer_value)))
 :qid |stdinbpl.1094:20|
 :skolemid |97|
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_19_1))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_19_1))
 :pattern ( (|Seq#Index_17098| a_2 i_19_1))
)) (state PostHeap@0 QPMask@23)) (and (and (=> (= (ControlFlow 0 323) 322) anon188_Else_correct) (=> (= (ControlFlow 0 323) 294) anon189_Then_correct)) (=> (= (ControlFlow 0 323) 301) anon189_Else_correct)))))
(let ((anon40_correct true))
(let ((anon187_Else_correct  (=> (and (not (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_19)) (= (ControlFlow 0 292) 284)) anon40_correct)))
(let ((anon187_Then_correct  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_19) (and (=> (= (ControlFlow 0 285) (- 0 291)) (>= (* 2 i_19) 0)) (=> (>= (* 2 i_19) 0) (and (=> (= (ControlFlow 0 285) (- 0 290)) (< (* 2 i_19) (|Seq#Length_17098| res))) (=> (< (* 2 i_19) (|Seq#Length_17098| res)) (and (=> (= (ControlFlow 0 285) (- 0 289)) (HasDirectPerm_17088_3577 QPMask@23 (|Seq#Index_17098| res (* 2 i_19)) Ref__Integer_value)) (=> (HasDirectPerm_17088_3577 QPMask@23 (|Seq#Index_17098| res (* 2 i_19)) Ref__Integer_value) (and (=> (= (ControlFlow 0 285) (- 0 288)) (>= i_19 0)) (=> (>= i_19 0) (and (=> (= (ControlFlow 0 285) (- 0 287)) (< i_19 (|Seq#Length_17098| a_2))) (=> (< i_19 (|Seq#Length_17098| a_2)) (and (=> (= (ControlFlow 0 285) (- 0 286)) (HasDirectPerm_17088_3577 QPMask@23 (|Seq#Index_17098| a_2 i_19) Ref__Integer_value)) (=> (HasDirectPerm_17088_3577 QPMask@23 (|Seq#Index_17098| a_2 i_19) Ref__Integer_value) (=> (= (ControlFlow 0 285) 284) anon40_correct))))))))))))))))
(let ((anon184_Else_correct  (and (=> (= (ControlFlow 0 324) (- 0 325)) (forall ((i_17_1 Int) (i_17_2 Int) ) (!  (=> (and (and (and (and (not (= i_17_1 i_17_2)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_17_1)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_17_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17098| res i_17_1) (|Seq#Index_17098| res i_17_2))))
 :qid |stdinbpl.1042:15|
 :skolemid |91|
))) (=> (forall ((i_17_1@@0 Int) (i_17_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_17_1@@0 i_17_2@@0)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_17_1@@0)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_17_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17098| res i_17_1@@0) (|Seq#Index_17098| res i_17_2@@0))))
 :qid |stdinbpl.1042:15|
 :skolemid |91|
)) (=> (and (and (forall ((i_17_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_17_1@@1) (< NoPerm FullPerm)) (and (qpRange6 (|Seq#Index_17098| res i_17_1@@1)) (= (invRecv6 (|Seq#Index_17098| res i_17_1@@1)) i_17_1@@1)))
 :qid |stdinbpl.1048:22|
 :skolemid |92|
 :pattern ( (|Seq#Index_17098| res i_17_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_17_1@@1))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_17_1@@1))
 :pattern ( (|Seq#Index_17098| res i_17_1@@1))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) (invRecv6 o_9)) (< NoPerm FullPerm)) (qpRange6 o_9)) (= (|Seq#Index_17098| res (invRecv6 o_9)) o_9))
 :qid |stdinbpl.1052:22|
 :skolemid |93|
 :pattern ( (invRecv6 o_9))
))) (and (forall ((i_17_1@@2 Int) ) (!  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_17_1@@2) (not (= (|Seq#Index_17098| res i_17_1@@2) null)))
 :qid |stdinbpl.1058:22|
 :skolemid |94|
 :pattern ( (|Seq#Index_17098| res i_17_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_17_1@@2))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_17_1@@2))
 :pattern ( (|Seq#Index_17098| res i_17_1@@2))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) (invRecv6 o_9@@0)) (< NoPerm FullPerm)) (qpRange6 o_9@@0)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_17098| res (invRecv6 o_9@@0)) o_9@@0)) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@23) o_9@@0 Ref__Integer_value) (+ (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@22) o_9@@0 Ref__Integer_value) FullPerm)))) (=> (not (and (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) (invRecv6 o_9@@0)) (< NoPerm FullPerm)) (qpRange6 o_9@@0))) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@23) o_9@@0 Ref__Integer_value) (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@22) o_9@@0 Ref__Integer_value))))
 :qid |stdinbpl.1064:22|
 :skolemid |95|
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@23) o_9@@0 Ref__Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_25262_53) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@22) o_9@@1 f_5) (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@23) o_9@@1 f_5)))
 :qid |stdinbpl.1068:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@22) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@23) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_25275_25276) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@22) o_9@@2 f_5@@0) (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@23) o_9@@2 f_5@@0)))
 :qid |stdinbpl.1068:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@22) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@23) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_31327_3562) ) (!  (=> (not (= f_5@@1 Ref__Integer_value)) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@22) o_9@@3 f_5@@1) (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@23) o_9@@3 f_5@@1)))
 :qid |stdinbpl.1068:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@22) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@23) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_17088_72965) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@22) o_9@@4 f_5@@2) (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@23) o_9@@4 f_5@@2)))
 :qid |stdinbpl.1068:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@22) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@23) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_17088_73098) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@22) o_9@@5 f_5@@3) (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@23) o_9@@5 f_5@@3)))
 :qid |stdinbpl.1068:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@22) o_9@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@23) o_9@@5 f_5@@3))
))) (and (state PostHeap@0 QPMask@23) (state PostHeap@0 QPMask@23))) (and (and (=> (= (ControlFlow 0 324) 323) anon186_Else_correct) (=> (= (ControlFlow 0 324) 285) anon187_Then_correct)) (=> (= (ControlFlow 0 324) 292) anon187_Else_correct))))))))
(let ((anon36_correct true))
(let ((anon185_Else_correct  (=> (and (not (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_8)) (= (ControlFlow 0 283) 279)) anon36_correct)))
(let ((anon185_Then_correct  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_8) (and (=> (= (ControlFlow 0 280) (- 0 282)) (>= i_8 0)) (=> (>= i_8 0) (and (=> (= (ControlFlow 0 280) (- 0 281)) (< i_8 (|Seq#Length_17098| res))) (=> (< i_8 (|Seq#Length_17098| res)) (=> (= (ControlFlow 0 280) 279) anon36_correct))))))))
(let ((anon182_Else_correct  (and (=> (= (ControlFlow 0 326) (- 0 327)) (forall ((i_15_1 Int) (i_15_2 Int) ) (!  (=> (and (and (and (and (not (= i_15_1 i_15_2)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_15_1)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_15_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17098| b_24 i_15_1) (|Seq#Index_17098| b_24 i_15_2))))
 :qid |stdinbpl.996:15|
 :skolemid |85|
))) (=> (forall ((i_15_1@@0 Int) (i_15_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_15_1@@0 i_15_2@@0)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_15_1@@0)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_15_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17098| b_24 i_15_1@@0) (|Seq#Index_17098| b_24 i_15_2@@0))))
 :qid |stdinbpl.996:15|
 :skolemid |85|
)) (=> (and (and (forall ((i_15_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_15_1@@1) (< NoPerm FullPerm)) (and (qpRange5 (|Seq#Index_17098| b_24 i_15_1@@1)) (= (invRecv5 (|Seq#Index_17098| b_24 i_15_1@@1)) i_15_1@@1)))
 :qid |stdinbpl.1002:22|
 :skolemid |86|
 :pattern ( (|Seq#Index_17098| b_24 i_15_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_15_1@@1))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_15_1@@1))
 :pattern ( (|Seq#Index_17098| b_24 i_15_1@@1))
)) (forall ((o_9@@6 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) (invRecv5 o_9@@6)) (< NoPerm FullPerm)) (qpRange5 o_9@@6)) (= (|Seq#Index_17098| b_24 (invRecv5 o_9@@6)) o_9@@6))
 :qid |stdinbpl.1006:22|
 :skolemid |87|
 :pattern ( (invRecv5 o_9@@6))
))) (and (forall ((i_15_1@@2 Int) ) (!  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_15_1@@2) (not (= (|Seq#Index_17098| b_24 i_15_1@@2) null)))
 :qid |stdinbpl.1012:22|
 :skolemid |88|
 :pattern ( (|Seq#Index_17098| b_24 i_15_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_15_1@@2))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_15_1@@2))
 :pattern ( (|Seq#Index_17098| b_24 i_15_1@@2))
)) (forall ((o_9@@7 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) (invRecv5 o_9@@7)) (< NoPerm FullPerm)) (qpRange5 o_9@@7)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_17098| b_24 (invRecv5 o_9@@7)) o_9@@7)) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@22) o_9@@7 Ref__Integer_value) (+ (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@21) o_9@@7 Ref__Integer_value) FullPerm)))) (=> (not (and (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) (invRecv5 o_9@@7)) (< NoPerm FullPerm)) (qpRange5 o_9@@7))) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@22) o_9@@7 Ref__Integer_value) (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@21) o_9@@7 Ref__Integer_value))))
 :qid |stdinbpl.1018:22|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@22) o_9@@7 Ref__Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_9@@8 T@Ref) (f_5@@4 T@Field_25262_53) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@21) o_9@@8 f_5@@4) (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@22) o_9@@8 f_5@@4)))
 :qid |stdinbpl.1022:29|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@21) o_9@@8 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@22) o_9@@8 f_5@@4))
)) (forall ((o_9@@9 T@Ref) (f_5@@5 T@Field_25275_25276) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@21) o_9@@9 f_5@@5) (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@22) o_9@@9 f_5@@5)))
 :qid |stdinbpl.1022:29|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@21) o_9@@9 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@22) o_9@@9 f_5@@5))
))) (forall ((o_9@@10 T@Ref) (f_5@@6 T@Field_31327_3562) ) (!  (=> (not (= f_5@@6 Ref__Integer_value)) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@21) o_9@@10 f_5@@6) (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@22) o_9@@10 f_5@@6)))
 :qid |stdinbpl.1022:29|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@21) o_9@@10 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@22) o_9@@10 f_5@@6))
))) (forall ((o_9@@11 T@Ref) (f_5@@7 T@Field_17088_72965) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@21) o_9@@11 f_5@@7) (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@22) o_9@@11 f_5@@7)))
 :qid |stdinbpl.1022:29|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@21) o_9@@11 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@22) o_9@@11 f_5@@7))
))) (forall ((o_9@@12 T@Ref) (f_5@@8 T@Field_17088_73098) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@21) o_9@@12 f_5@@8) (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@22) o_9@@12 f_5@@8)))
 :qid |stdinbpl.1022:29|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@21) o_9@@12 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@22) o_9@@12 f_5@@8))
))) (and (state PostHeap@0 QPMask@22) (state PostHeap@0 QPMask@22))) (and (and (=> (= (ControlFlow 0 326) 324) anon184_Else_correct) (=> (= (ControlFlow 0 326) 280) anon185_Then_correct)) (=> (= (ControlFlow 0 326) 283) anon185_Else_correct))))))))
(let ((anon32_correct true))
(let ((anon183_Else_correct  (=> (and (not (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_21)) (= (ControlFlow 0 278) 274)) anon32_correct)))
(let ((anon183_Then_correct  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_21) (and (=> (= (ControlFlow 0 275) (- 0 277)) (>= i_21 0)) (=> (>= i_21 0) (and (=> (= (ControlFlow 0 275) (- 0 276)) (< i_21 (|Seq#Length_17098| b_24))) (=> (< i_21 (|Seq#Length_17098| b_24)) (=> (= (ControlFlow 0 275) 274) anon32_correct))))))))
(let ((anon180_Else_correct  (and (=> (= (ControlFlow 0 328) (- 0 329)) (forall ((i_13_1 Int) (i_13_2 Int) ) (!  (=> (and (and (and (and (not (= i_13_1 i_13_2)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_13_1)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_13_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17098| a_2 i_13_1) (|Seq#Index_17098| a_2 i_13_2))))
 :qid |stdinbpl.950:15|
 :skolemid |79|
))) (=> (forall ((i_13_1@@0 Int) (i_13_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_13_1@@0 i_13_2@@0)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_13_1@@0)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_13_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17098| a_2 i_13_1@@0) (|Seq#Index_17098| a_2 i_13_2@@0))))
 :qid |stdinbpl.950:15|
 :skolemid |79|
)) (=> (and (and (forall ((i_13_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_13_1@@1) (< NoPerm FullPerm)) (and (qpRange4 (|Seq#Index_17098| a_2 i_13_1@@1)) (= (invRecv4 (|Seq#Index_17098| a_2 i_13_1@@1)) i_13_1@@1)))
 :qid |stdinbpl.956:22|
 :skolemid |80|
 :pattern ( (|Seq#Index_17098| a_2 i_13_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_13_1@@1))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_13_1@@1))
 :pattern ( (|Seq#Index_17098| a_2 i_13_1@@1))
)) (forall ((o_9@@13 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) (invRecv4 o_9@@13)) (< NoPerm FullPerm)) (qpRange4 o_9@@13)) (= (|Seq#Index_17098| a_2 (invRecv4 o_9@@13)) o_9@@13))
 :qid |stdinbpl.960:22|
 :skolemid |81|
 :pattern ( (invRecv4 o_9@@13))
))) (and (forall ((i_13_1@@2 Int) ) (!  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_13_1@@2) (not (= (|Seq#Index_17098| a_2 i_13_1@@2) null)))
 :qid |stdinbpl.966:22|
 :skolemid |82|
 :pattern ( (|Seq#Index_17098| a_2 i_13_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_13_1@@2))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_13_1@@2))
 :pattern ( (|Seq#Index_17098| a_2 i_13_1@@2))
)) (forall ((o_9@@14 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) (invRecv4 o_9@@14)) (< NoPerm FullPerm)) (qpRange4 o_9@@14)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_17098| a_2 (invRecv4 o_9@@14)) o_9@@14)) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@21) o_9@@14 Ref__Integer_value) (+ (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| ZeroMask) o_9@@14 Ref__Integer_value) FullPerm)))) (=> (not (and (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) (invRecv4 o_9@@14)) (< NoPerm FullPerm)) (qpRange4 o_9@@14))) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@21) o_9@@14 Ref__Integer_value) (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| ZeroMask) o_9@@14 Ref__Integer_value))))
 :qid |stdinbpl.972:22|
 :skolemid |83|
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@21) o_9@@14 Ref__Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_9@@15 T@Ref) (f_5@@9 T@Field_25262_53) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| ZeroMask) o_9@@15 f_5@@9) (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@21) o_9@@15 f_5@@9)))
 :qid |stdinbpl.976:29|
 :skolemid |84|
 :pattern ( (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| ZeroMask) o_9@@15 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@21) o_9@@15 f_5@@9))
)) (forall ((o_9@@16 T@Ref) (f_5@@10 T@Field_25275_25276) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| ZeroMask) o_9@@16 f_5@@10) (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@21) o_9@@16 f_5@@10)))
 :qid |stdinbpl.976:29|
 :skolemid |84|
 :pattern ( (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| ZeroMask) o_9@@16 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@21) o_9@@16 f_5@@10))
))) (forall ((o_9@@17 T@Ref) (f_5@@11 T@Field_31327_3562) ) (!  (=> (not (= f_5@@11 Ref__Integer_value)) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| ZeroMask) o_9@@17 f_5@@11) (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@21) o_9@@17 f_5@@11)))
 :qid |stdinbpl.976:29|
 :skolemid |84|
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| ZeroMask) o_9@@17 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@21) o_9@@17 f_5@@11))
))) (forall ((o_9@@18 T@Ref) (f_5@@12 T@Field_17088_72965) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| ZeroMask) o_9@@18 f_5@@12) (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@21) o_9@@18 f_5@@12)))
 :qid |stdinbpl.976:29|
 :skolemid |84|
 :pattern ( (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| ZeroMask) o_9@@18 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@21) o_9@@18 f_5@@12))
))) (forall ((o_9@@19 T@Ref) (f_5@@13 T@Field_17088_73098) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| ZeroMask) o_9@@19 f_5@@13) (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@21) o_9@@19 f_5@@13)))
 :qid |stdinbpl.976:29|
 :skolemid |84|
 :pattern ( (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| ZeroMask) o_9@@19 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@21) o_9@@19 f_5@@13))
))) (and (state PostHeap@0 QPMask@21) (state PostHeap@0 QPMask@21))) (and (and (=> (= (ControlFlow 0 328) 326) anon182_Else_correct) (=> (= (ControlFlow 0 328) 275) anon183_Then_correct)) (=> (= (ControlFlow 0 328) 278) anon183_Else_correct))))))))
(let ((anon28_correct true))
(let ((anon181_Else_correct  (=> (and (not (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_7)) (= (ControlFlow 0 273) 269)) anon28_correct)))
(let ((anon181_Then_correct  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_7) (and (=> (= (ControlFlow 0 270) (- 0 272)) (>= i_7 0)) (=> (>= i_7 0) (and (=> (= (ControlFlow 0 270) (- 0 271)) (< i_7 (|Seq#Length_17098| a_2))) (=> (< i_7 (|Seq#Length_17098| a_2)) (=> (= (ControlFlow 0 270) 269) anon28_correct))))))))
(let ((anon179_Then_correct  (=> (state PostHeap@0 ZeroMask) (=> (and (= (|Seq#Length_17098| res) (* 2 (|Seq#Length_17098| a_2))) (state PostHeap@0 ZeroMask)) (=> (and (and (= (|Seq#Length_17098| a_2) (|Seq#Length_17098| b_24)) (state PostHeap@0 ZeroMask)) (and (= (|Seq#Length_17098| res) (* 2 (|Seq#Length_17098| b_24))) (state PostHeap@0 ZeroMask))) (and (and (=> (= (ControlFlow 0 330) 328) anon180_Else_correct) (=> (= (ControlFlow 0 330) 270) anon181_Then_correct)) (=> (= (ControlFlow 0 330) 273) anon181_Else_correct)))))))
(let ((anon98_correct true))
(let ((anon216_Else_correct  (=> (and (not (|Seq#Contains_3440| (|Seq#Range| 0 (div k@0 2)) i_27)) (= (ControlFlow 0 242) 234)) anon98_correct)))
(let ((anon216_Then_correct  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (div k@0 2)) i_27) (and (=> (= (ControlFlow 0 235) (- 0 241)) (>= (+ (* 2 i_27) 1) 0)) (=> (>= (+ (* 2 i_27) 1) 0) (and (=> (= (ControlFlow 0 235) (- 0 240)) (< (+ (* 2 i_27) 1) (|Seq#Length_17098| res))) (=> (< (+ (* 2 i_27) 1) (|Seq#Length_17098| res)) (and (=> (= (ControlFlow 0 235) (- 0 239)) (HasDirectPerm_17088_3577 QPMask@20 (|Seq#Index_17098| res (+ (* 2 i_27) 1)) Ref__Integer_value)) (=> (HasDirectPerm_17088_3577 QPMask@20 (|Seq#Index_17098| res (+ (* 2 i_27) 1)) Ref__Integer_value) (and (=> (= (ControlFlow 0 235) (- 0 238)) (>= i_27 0)) (=> (>= i_27 0) (and (=> (= (ControlFlow 0 235) (- 0 237)) (< i_27 (|Seq#Length_17098| b_24))) (=> (< i_27 (|Seq#Length_17098| b_24)) (and (=> (= (ControlFlow 0 235) (- 0 236)) (HasDirectPerm_17088_3577 QPMask@20 (|Seq#Index_17098| b_24 i_27) Ref__Integer_value)) (=> (HasDirectPerm_17088_3577 QPMask@20 (|Seq#Index_17098| b_24 i_27) Ref__Integer_value) (=> (= (ControlFlow 0 235) 234) anon98_correct))))))))))))))))
(let ((anon215_Else_correct true))
(let ((anon213_Else_correct  (=> (and (forall ((i_59 Int) ) (!  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (div k@0 2)) i_59) (= (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| res (* 2 i_59)) Ref__Integer_value) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| a_2 i_59) Ref__Integer_value)))
 :qid |stdinbpl.1598:24|
 :skolemid |143|
 :pattern ( (|Seq#Index_17098| a_2 i_59))
)) (state ExhaleHeap@0 QPMask@20)) (and (and (=> (= (ControlFlow 0 243) 233) anon215_Else_correct) (=> (= (ControlFlow 0 243) 235) anon216_Then_correct)) (=> (= (ControlFlow 0 243) 242) anon216_Else_correct)))))
(let ((anon94_correct true))
(let ((anon214_Else_correct  (=> (and (not (|Seq#Contains_3440| (|Seq#Range| 0 (div k@0 2)) i_25)) (= (ControlFlow 0 232) 224)) anon94_correct)))
(let ((anon214_Then_correct  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (div k@0 2)) i_25) (and (=> (= (ControlFlow 0 225) (- 0 231)) (>= (* 2 i_25) 0)) (=> (>= (* 2 i_25) 0) (and (=> (= (ControlFlow 0 225) (- 0 230)) (< (* 2 i_25) (|Seq#Length_17098| res))) (=> (< (* 2 i_25) (|Seq#Length_17098| res)) (and (=> (= (ControlFlow 0 225) (- 0 229)) (HasDirectPerm_17088_3577 QPMask@20 (|Seq#Index_17098| res (* 2 i_25)) Ref__Integer_value)) (=> (HasDirectPerm_17088_3577 QPMask@20 (|Seq#Index_17098| res (* 2 i_25)) Ref__Integer_value) (and (=> (= (ControlFlow 0 225) (- 0 228)) (>= i_25 0)) (=> (>= i_25 0) (and (=> (= (ControlFlow 0 225) (- 0 227)) (< i_25 (|Seq#Length_17098| a_2))) (=> (< i_25 (|Seq#Length_17098| a_2)) (and (=> (= (ControlFlow 0 225) (- 0 226)) (HasDirectPerm_17088_3577 QPMask@20 (|Seq#Index_17098| a_2 i_25) Ref__Integer_value)) (=> (HasDirectPerm_17088_3577 QPMask@20 (|Seq#Index_17098| a_2 i_25) Ref__Integer_value) (=> (= (ControlFlow 0 225) 224) anon94_correct))))))))))))))))
(let ((anon211_Else_correct  (=> (and (forall ((i_57_2 Int) ) (!  (=> (and (<= 0 i_57_2) (and (= (mod i_57_2 2) 1) (< i_57_2 k@0))) (= (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| res i_57_2) Ref__Integer_value) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| b_24 (div i_57_2 2)) Ref__Integer_value)))
 :qid |stdinbpl.1574:24|
 :skolemid |142|
 :pattern ( (|Seq#Index_17098| res i_57_2))
)) (state ExhaleHeap@0 QPMask@20)) (and (and (=> (= (ControlFlow 0 244) 243) anon213_Else_correct) (=> (= (ControlFlow 0 244) 225) anon214_Then_correct)) (=> (= (ControlFlow 0 244) 232) anon214_Else_correct)))))
(let ((anon90_correct true))
(let ((anon212_Else_correct  (=> (and (not (and (<= 0 i_24) (and (= (mod i_24 2) 1) (< i_24 k@0)))) (= (ControlFlow 0 223) 215)) anon90_correct)))
(let ((anon212_Then_correct  (=> (and (<= 0 i_24) (and (= (mod i_24 2) 1) (< i_24 k@0))) (and (=> (= (ControlFlow 0 216) (- 0 222)) (>= i_24 0)) (=> (>= i_24 0) (and (=> (= (ControlFlow 0 216) (- 0 221)) (< i_24 (|Seq#Length_17098| res))) (=> (< i_24 (|Seq#Length_17098| res)) (and (=> (= (ControlFlow 0 216) (- 0 220)) (HasDirectPerm_17088_3577 QPMask@20 (|Seq#Index_17098| res i_24) Ref__Integer_value)) (=> (HasDirectPerm_17088_3577 QPMask@20 (|Seq#Index_17098| res i_24) Ref__Integer_value) (and (=> (= (ControlFlow 0 216) (- 0 219)) (>= (div i_24 2) 0)) (=> (>= (div i_24 2) 0) (and (=> (= (ControlFlow 0 216) (- 0 218)) (< (div i_24 2) (|Seq#Length_17098| b_24))) (=> (< (div i_24 2) (|Seq#Length_17098| b_24)) (and (=> (= (ControlFlow 0 216) (- 0 217)) (HasDirectPerm_17088_3577 QPMask@20 (|Seq#Index_17098| b_24 (div i_24 2)) Ref__Integer_value)) (=> (HasDirectPerm_17088_3577 QPMask@20 (|Seq#Index_17098| b_24 (div i_24 2)) Ref__Integer_value) (=> (= (ControlFlow 0 216) 215) anon90_correct))))))))))))))))
(let ((anon209_Else_correct  (=> (and (forall ((i_55_2 Int) ) (!  (=> (and (<= 0 i_55_2) (and (= (mod i_55_2 2) 0) (< i_55_2 k@0))) (= (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| res i_55_2) Ref__Integer_value) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| a_2 (div i_55_2 2)) Ref__Integer_value)))
 :qid |stdinbpl.1550:24|
 :skolemid |141|
 :pattern ( (|Seq#Index_17098| res i_55_2))
)) (state ExhaleHeap@0 QPMask@20)) (and (and (=> (= (ControlFlow 0 245) 244) anon211_Else_correct) (=> (= (ControlFlow 0 245) 216) anon212_Then_correct)) (=> (= (ControlFlow 0 245) 223) anon212_Else_correct)))))
(let ((anon86_correct true))
(let ((anon210_Else_correct  (=> (and (not (and (<= 0 i_23) (and (= (mod i_23 2) 0) (< i_23 k@0)))) (= (ControlFlow 0 214) 206)) anon86_correct)))
(let ((anon210_Then_correct  (=> (and (<= 0 i_23) (and (= (mod i_23 2) 0) (< i_23 k@0))) (and (=> (= (ControlFlow 0 207) (- 0 213)) (>= i_23 0)) (=> (>= i_23 0) (and (=> (= (ControlFlow 0 207) (- 0 212)) (< i_23 (|Seq#Length_17098| res))) (=> (< i_23 (|Seq#Length_17098| res)) (and (=> (= (ControlFlow 0 207) (- 0 211)) (HasDirectPerm_17088_3577 QPMask@20 (|Seq#Index_17098| res i_23) Ref__Integer_value)) (=> (HasDirectPerm_17088_3577 QPMask@20 (|Seq#Index_17098| res i_23) Ref__Integer_value) (and (=> (= (ControlFlow 0 207) (- 0 210)) (>= (div i_23 2) 0)) (=> (>= (div i_23 2) 0) (and (=> (= (ControlFlow 0 207) (- 0 209)) (< (div i_23 2) (|Seq#Length_17098| a_2))) (=> (< (div i_23 2) (|Seq#Length_17098| a_2)) (and (=> (= (ControlFlow 0 207) (- 0 208)) (HasDirectPerm_17088_3577 QPMask@20 (|Seq#Index_17098| a_2 (div i_23 2)) Ref__Integer_value)) (=> (HasDirectPerm_17088_3577 QPMask@20 (|Seq#Index_17098| a_2 (div i_23 2)) Ref__Integer_value) (=> (= (ControlFlow 0 207) 206) anon86_correct))))))))))))))))
(let ((anon207_Else_correct  (and (=> (= (ControlFlow 0 246) (- 0 247)) (forall ((i_53_2 Int) (i_53_3 Int) ) (!  (=> (and (and (and (and (not (= i_53_2 i_53_3)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_53_2)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_53_3)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17098| res i_53_2) (|Seq#Index_17098| res i_53_3))))
 :qid |stdinbpl.1498:19|
 :skolemid |135|
))) (=> (forall ((i_53_2@@0 Int) (i_53_3@@0 Int) ) (!  (=> (and (and (and (and (not (= i_53_2@@0 i_53_3@@0)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_53_2@@0)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_53_3@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17098| res i_53_2@@0) (|Seq#Index_17098| res i_53_3@@0))))
 :qid |stdinbpl.1498:19|
 :skolemid |135|
)) (=> (and (and (forall ((i_53_2@@1 Int) ) (!  (=> (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_53_2@@1) (< NoPerm FullPerm)) (and (qpRange15 (|Seq#Index_17098| res i_53_2@@1)) (= (invRecv15 (|Seq#Index_17098| res i_53_2@@1)) i_53_2@@1)))
 :qid |stdinbpl.1504:26|
 :skolemid |136|
 :pattern ( (|Seq#Index_17098| res i_53_2@@1))
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_53_2@@1))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_53_2@@1))
 :pattern ( (|Seq#Index_17098| res i_53_2@@1))
)) (forall ((o_9@@20 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) (invRecv15 o_9@@20)) (< NoPerm FullPerm)) (qpRange15 o_9@@20)) (= (|Seq#Index_17098| res (invRecv15 o_9@@20)) o_9@@20))
 :qid |stdinbpl.1508:26|
 :skolemid |137|
 :pattern ( (invRecv15 o_9@@20))
))) (and (forall ((i_53_2@@2 Int) ) (!  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_53_2@@2) (not (= (|Seq#Index_17098| res i_53_2@@2) null)))
 :qid |stdinbpl.1514:26|
 :skolemid |138|
 :pattern ( (|Seq#Index_17098| res i_53_2@@2))
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_53_2@@2))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_53_2@@2))
 :pattern ( (|Seq#Index_17098| res i_53_2@@2))
)) (forall ((o_9@@21 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) (invRecv15 o_9@@21)) (< NoPerm FullPerm)) (qpRange15 o_9@@21)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_17098| res (invRecv15 o_9@@21)) o_9@@21)) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@20) o_9@@21 Ref__Integer_value) (+ (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@19) o_9@@21 Ref__Integer_value) FullPerm)))) (=> (not (and (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) (invRecv15 o_9@@21)) (< NoPerm FullPerm)) (qpRange15 o_9@@21))) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@20) o_9@@21 Ref__Integer_value) (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@19) o_9@@21 Ref__Integer_value))))
 :qid |stdinbpl.1520:26|
 :skolemid |139|
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@20) o_9@@21 Ref__Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_9@@22 T@Ref) (f_5@@14 T@Field_25262_53) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@19) o_9@@22 f_5@@14) (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@20) o_9@@22 f_5@@14)))
 :qid |stdinbpl.1524:33|
 :skolemid |140|
 :pattern ( (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@19) o_9@@22 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@20) o_9@@22 f_5@@14))
)) (forall ((o_9@@23 T@Ref) (f_5@@15 T@Field_25275_25276) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@19) o_9@@23 f_5@@15) (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@20) o_9@@23 f_5@@15)))
 :qid |stdinbpl.1524:33|
 :skolemid |140|
 :pattern ( (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@19) o_9@@23 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@20) o_9@@23 f_5@@15))
))) (forall ((o_9@@24 T@Ref) (f_5@@16 T@Field_31327_3562) ) (!  (=> (not (= f_5@@16 Ref__Integer_value)) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@19) o_9@@24 f_5@@16) (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@20) o_9@@24 f_5@@16)))
 :qid |stdinbpl.1524:33|
 :skolemid |140|
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@19) o_9@@24 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@20) o_9@@24 f_5@@16))
))) (forall ((o_9@@25 T@Ref) (f_5@@17 T@Field_17088_72965) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@19) o_9@@25 f_5@@17) (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@20) o_9@@25 f_5@@17)))
 :qid |stdinbpl.1524:33|
 :skolemid |140|
 :pattern ( (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@19) o_9@@25 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@20) o_9@@25 f_5@@17))
))) (forall ((o_9@@26 T@Ref) (f_5@@18 T@Field_17088_73098) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@19) o_9@@26 f_5@@18) (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@20) o_9@@26 f_5@@18)))
 :qid |stdinbpl.1524:33|
 :skolemid |140|
 :pattern ( (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@19) o_9@@26 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@20) o_9@@26 f_5@@18))
))) (and (state ExhaleHeap@0 QPMask@20) (state ExhaleHeap@0 QPMask@20))) (and (and (=> (= (ControlFlow 0 246) 245) anon209_Else_correct) (=> (= (ControlFlow 0 246) 207) anon210_Then_correct)) (=> (= (ControlFlow 0 246) 214) anon210_Else_correct))))))))
(let ((anon82_correct true))
(let ((anon208_Else_correct  (=> (and (not (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_13)) (= (ControlFlow 0 205) 201)) anon82_correct)))
(let ((anon208_Then_correct  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_13) (and (=> (= (ControlFlow 0 202) (- 0 204)) (>= i_13 0)) (=> (>= i_13 0) (and (=> (= (ControlFlow 0 202) (- 0 203)) (< i_13 (|Seq#Length_17098| res))) (=> (< i_13 (|Seq#Length_17098| res)) (=> (= (ControlFlow 0 202) 201) anon82_correct))))))))
(let ((anon205_Else_correct  (and (=> (= (ControlFlow 0 248) (- 0 249)) (forall ((i_51_2 Int) (i_51_3 Int) ) (!  (=> (and (and (and (and (not (= i_51_2 i_51_3)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_51_2)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_51_3)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17098| b_24 i_51_2) (|Seq#Index_17098| b_24 i_51_3))))
 :qid |stdinbpl.1452:19|
 :skolemid |129|
))) (=> (forall ((i_51_2@@0 Int) (i_51_3@@0 Int) ) (!  (=> (and (and (and (and (not (= i_51_2@@0 i_51_3@@0)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_51_2@@0)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_51_3@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17098| b_24 i_51_2@@0) (|Seq#Index_17098| b_24 i_51_3@@0))))
 :qid |stdinbpl.1452:19|
 :skolemid |129|
)) (=> (and (and (forall ((i_51_2@@1 Int) ) (!  (=> (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_51_2@@1) (< NoPerm FullPerm)) (and (qpRange14 (|Seq#Index_17098| b_24 i_51_2@@1)) (= (invRecv14 (|Seq#Index_17098| b_24 i_51_2@@1)) i_51_2@@1)))
 :qid |stdinbpl.1458:26|
 :skolemid |130|
 :pattern ( (|Seq#Index_17098| b_24 i_51_2@@1))
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_51_2@@1))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_51_2@@1))
 :pattern ( (|Seq#Index_17098| b_24 i_51_2@@1))
)) (forall ((o_9@@27 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) (invRecv14 o_9@@27)) (< NoPerm FullPerm)) (qpRange14 o_9@@27)) (= (|Seq#Index_17098| b_24 (invRecv14 o_9@@27)) o_9@@27))
 :qid |stdinbpl.1462:26|
 :skolemid |131|
 :pattern ( (invRecv14 o_9@@27))
))) (and (forall ((i_51_2@@2 Int) ) (!  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_51_2@@2) (not (= (|Seq#Index_17098| b_24 i_51_2@@2) null)))
 :qid |stdinbpl.1468:26|
 :skolemid |132|
 :pattern ( (|Seq#Index_17098| b_24 i_51_2@@2))
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_51_2@@2))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_51_2@@2))
 :pattern ( (|Seq#Index_17098| b_24 i_51_2@@2))
)) (forall ((o_9@@28 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) (invRecv14 o_9@@28)) (< NoPerm FullPerm)) (qpRange14 o_9@@28)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_17098| b_24 (invRecv14 o_9@@28)) o_9@@28)) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@19) o_9@@28 Ref__Integer_value) (+ (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@18) o_9@@28 Ref__Integer_value) FullPerm)))) (=> (not (and (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) (invRecv14 o_9@@28)) (< NoPerm FullPerm)) (qpRange14 o_9@@28))) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@19) o_9@@28 Ref__Integer_value) (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@18) o_9@@28 Ref__Integer_value))))
 :qid |stdinbpl.1474:26|
 :skolemid |133|
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@19) o_9@@28 Ref__Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_9@@29 T@Ref) (f_5@@19 T@Field_25262_53) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@18) o_9@@29 f_5@@19) (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@19) o_9@@29 f_5@@19)))
 :qid |stdinbpl.1478:33|
 :skolemid |134|
 :pattern ( (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@18) o_9@@29 f_5@@19))
 :pattern ( (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@19) o_9@@29 f_5@@19))
)) (forall ((o_9@@30 T@Ref) (f_5@@20 T@Field_25275_25276) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@18) o_9@@30 f_5@@20) (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@19) o_9@@30 f_5@@20)))
 :qid |stdinbpl.1478:33|
 :skolemid |134|
 :pattern ( (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@18) o_9@@30 f_5@@20))
 :pattern ( (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@19) o_9@@30 f_5@@20))
))) (forall ((o_9@@31 T@Ref) (f_5@@21 T@Field_31327_3562) ) (!  (=> (not (= f_5@@21 Ref__Integer_value)) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@18) o_9@@31 f_5@@21) (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@19) o_9@@31 f_5@@21)))
 :qid |stdinbpl.1478:33|
 :skolemid |134|
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@18) o_9@@31 f_5@@21))
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@19) o_9@@31 f_5@@21))
))) (forall ((o_9@@32 T@Ref) (f_5@@22 T@Field_17088_72965) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@18) o_9@@32 f_5@@22) (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@19) o_9@@32 f_5@@22)))
 :qid |stdinbpl.1478:33|
 :skolemid |134|
 :pattern ( (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@18) o_9@@32 f_5@@22))
 :pattern ( (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@19) o_9@@32 f_5@@22))
))) (forall ((o_9@@33 T@Ref) (f_5@@23 T@Field_17088_73098) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@18) o_9@@33 f_5@@23) (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@19) o_9@@33 f_5@@23)))
 :qid |stdinbpl.1478:33|
 :skolemid |134|
 :pattern ( (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@18) o_9@@33 f_5@@23))
 :pattern ( (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@19) o_9@@33 f_5@@23))
))) (and (state ExhaleHeap@0 QPMask@19) (state ExhaleHeap@0 QPMask@19))) (and (and (=> (= (ControlFlow 0 248) 246) anon207_Else_correct) (=> (= (ControlFlow 0 248) 202) anon208_Then_correct)) (=> (= (ControlFlow 0 248) 205) anon208_Else_correct))))))))
(let ((anon78_correct true))
(let ((anon206_Else_correct  (=> (and (not (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_12)) (= (ControlFlow 0 200) 196)) anon78_correct)))
(let ((anon206_Then_correct  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_12) (and (=> (= (ControlFlow 0 197) (- 0 199)) (>= i_12 0)) (=> (>= i_12 0) (and (=> (= (ControlFlow 0 197) (- 0 198)) (< i_12 (|Seq#Length_17098| b_24))) (=> (< i_12 (|Seq#Length_17098| b_24)) (=> (= (ControlFlow 0 197) 196) anon78_correct))))))))
(let ((anon203_Else_correct  (and (=> (= (ControlFlow 0 250) (- 0 251)) (forall ((i_49 Int) (i_49_1 Int) ) (!  (=> (and (and (and (and (not (= i_49 i_49_1)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_49)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_49_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17098| a_2 i_49) (|Seq#Index_17098| a_2 i_49_1))))
 :qid |stdinbpl.1406:19|
 :skolemid |123|
))) (=> (forall ((i_49@@0 Int) (i_49_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_49@@0 i_49_1@@0)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_49@@0)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_49_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17098| a_2 i_49@@0) (|Seq#Index_17098| a_2 i_49_1@@0))))
 :qid |stdinbpl.1406:19|
 :skolemid |123|
)) (=> (and (and (forall ((i_49@@1 Int) ) (!  (=> (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_49@@1) (< NoPerm FullPerm)) (and (qpRange13 (|Seq#Index_17098| a_2 i_49@@1)) (= (invRecv13 (|Seq#Index_17098| a_2 i_49@@1)) i_49@@1)))
 :qid |stdinbpl.1412:26|
 :skolemid |124|
 :pattern ( (|Seq#Index_17098| a_2 i_49@@1))
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_49@@1))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_49@@1))
 :pattern ( (|Seq#Index_17098| a_2 i_49@@1))
)) (forall ((o_9@@34 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) (invRecv13 o_9@@34)) (< NoPerm FullPerm)) (qpRange13 o_9@@34)) (= (|Seq#Index_17098| a_2 (invRecv13 o_9@@34)) o_9@@34))
 :qid |stdinbpl.1416:26|
 :skolemid |125|
 :pattern ( (invRecv13 o_9@@34))
))) (and (forall ((i_49@@2 Int) ) (!  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_49@@2) (not (= (|Seq#Index_17098| a_2 i_49@@2) null)))
 :qid |stdinbpl.1422:26|
 :skolemid |126|
 :pattern ( (|Seq#Index_17098| a_2 i_49@@2))
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_49@@2))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_49@@2))
 :pattern ( (|Seq#Index_17098| a_2 i_49@@2))
)) (forall ((o_9@@35 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) (invRecv13 o_9@@35)) (< NoPerm FullPerm)) (qpRange13 o_9@@35)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_17098| a_2 (invRecv13 o_9@@35)) o_9@@35)) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@18) o_9@@35 Ref__Integer_value) (+ (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@5) o_9@@35 Ref__Integer_value) FullPerm)))) (=> (not (and (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) (invRecv13 o_9@@35)) (< NoPerm FullPerm)) (qpRange13 o_9@@35))) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@18) o_9@@35 Ref__Integer_value) (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@5) o_9@@35 Ref__Integer_value))))
 :qid |stdinbpl.1428:26|
 :skolemid |127|
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@18) o_9@@35 Ref__Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_9@@36 T@Ref) (f_5@@24 T@Field_25262_53) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@5) o_9@@36 f_5@@24) (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@18) o_9@@36 f_5@@24)))
 :qid |stdinbpl.1432:33|
 :skolemid |128|
 :pattern ( (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@5) o_9@@36 f_5@@24))
 :pattern ( (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@18) o_9@@36 f_5@@24))
)) (forall ((o_9@@37 T@Ref) (f_5@@25 T@Field_25275_25276) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@5) o_9@@37 f_5@@25) (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@18) o_9@@37 f_5@@25)))
 :qid |stdinbpl.1432:33|
 :skolemid |128|
 :pattern ( (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@5) o_9@@37 f_5@@25))
 :pattern ( (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@18) o_9@@37 f_5@@25))
))) (forall ((o_9@@38 T@Ref) (f_5@@26 T@Field_31327_3562) ) (!  (=> (not (= f_5@@26 Ref__Integer_value)) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@5) o_9@@38 f_5@@26) (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@18) o_9@@38 f_5@@26)))
 :qid |stdinbpl.1432:33|
 :skolemid |128|
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@5) o_9@@38 f_5@@26))
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@18) o_9@@38 f_5@@26))
))) (forall ((o_9@@39 T@Ref) (f_5@@27 T@Field_17088_72965) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@5) o_9@@39 f_5@@27) (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@18) o_9@@39 f_5@@27)))
 :qid |stdinbpl.1432:33|
 :skolemid |128|
 :pattern ( (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@5) o_9@@39 f_5@@27))
 :pattern ( (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@18) o_9@@39 f_5@@27))
))) (forall ((o_9@@40 T@Ref) (f_5@@28 T@Field_17088_73098) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@5) o_9@@40 f_5@@28) (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@18) o_9@@40 f_5@@28)))
 :qid |stdinbpl.1432:33|
 :skolemid |128|
 :pattern ( (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@5) o_9@@40 f_5@@28))
 :pattern ( (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@18) o_9@@40 f_5@@28))
))) (and (state ExhaleHeap@0 QPMask@18) (state ExhaleHeap@0 QPMask@18))) (and (and (=> (= (ControlFlow 0 250) 248) anon205_Else_correct) (=> (= (ControlFlow 0 250) 197) anon206_Then_correct)) (=> (= (ControlFlow 0 250) 200) anon206_Else_correct))))))))
(let ((anon74_correct true))
(let ((anon204_Else_correct  (=> (and (not (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_11)) (= (ControlFlow 0 195) 191)) anon74_correct)))
(let ((anon204_Then_correct  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_11) (and (=> (= (ControlFlow 0 192) (- 0 194)) (>= i_11 0)) (=> (>= i_11 0) (and (=> (= (ControlFlow 0 192) (- 0 193)) (< i_11 (|Seq#Length_17098| a_2))) (=> (< i_11 (|Seq#Length_17098| a_2)) (=> (= (ControlFlow 0 192) 191) anon74_correct))))))))
(let ((anon202_Then_correct  (=> (and (<= 0 k@0) (state ExhaleHeap@0 QPMask@5)) (=> (and (and (and (= (mod k@0 2) 0) (state ExhaleHeap@0 QPMask@5)) (and (<= k@0 (|Seq#Length_17098| res)) (state ExhaleHeap@0 QPMask@5))) (and (and (= (|Seq#Length_17098| a_2) (|Seq#Length_17098| b_24)) (state ExhaleHeap@0 QPMask@5)) (and (= (|Seq#Length_17098| res) (* 2 (|Seq#Length_17098| a_2))) (state ExhaleHeap@0 QPMask@5)))) (and (and (=> (= (ControlFlow 0 252) 250) anon203_Else_correct) (=> (= (ControlFlow 0 252) 192) anon204_Then_correct)) (=> (= (ControlFlow 0 252) 195) anon204_Else_correct))))))
(let ((anon116_correct true))
(let ((anon225_Else_correct  (=> (and (not (|Seq#Contains_3440| (|Seq#Range| 0 (div __flatten_10@1 2)) i_78)) (= (ControlFlow 0 160) 157)) anon116_correct)))
(let ((anon225_Then_correct  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (div __flatten_10@1 2)) i_78) (and (=> (= (ControlFlow 0 158) (- 0 159)) (= (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| Heap@1) (|Seq#Index_17098| res (+ (* 2 i_78) 1)) Ref__Integer_value) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| Heap@1) (|Seq#Index_17098| b_24 i_78) Ref__Integer_value))) (=> (= (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| Heap@1) (|Seq#Index_17098| res (+ (* 2 i_78) 1)) Ref__Integer_value) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| Heap@1) (|Seq#Index_17098| b_24 i_78) Ref__Integer_value)) (=> (= (ControlFlow 0 158) 157) anon116_correct))))))
(let ((anon224_Else_correct true))
(let ((anon222_Else_correct  (=> (forall ((i_77_1 Int) ) (!  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (div __flatten_10@1 2)) i_77_1) (= (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| Heap@1) (|Seq#Index_17098| res (* 2 i_77_1)) Ref__Integer_value) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| Heap@1) (|Seq#Index_17098| a_2 i_77_1) Ref__Integer_value)))
 :qid |stdinbpl.2020:24|
 :skolemid |187|
 :pattern ( (|Seq#Index_17098| a_2 i_77_1))
)) (and (and (=> (= (ControlFlow 0 161) 156) anon224_Else_correct) (=> (= (ControlFlow 0 161) 158) anon225_Then_correct)) (=> (= (ControlFlow 0 161) 160) anon225_Else_correct)))))
(let ((anon112_correct true))
(let ((anon223_Else_correct  (=> (and (not (|Seq#Contains_3440| (|Seq#Range| 0 (div __flatten_10@1 2)) i_76)) (= (ControlFlow 0 155) 152)) anon112_correct)))
(let ((anon223_Then_correct  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (div __flatten_10@1 2)) i_76) (and (=> (= (ControlFlow 0 153) (- 0 154)) (= (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| Heap@1) (|Seq#Index_17098| res (* 2 i_76)) Ref__Integer_value) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| Heap@1) (|Seq#Index_17098| a_2 i_76) Ref__Integer_value))) (=> (= (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| Heap@1) (|Seq#Index_17098| res (* 2 i_76)) Ref__Integer_value) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| Heap@1) (|Seq#Index_17098| a_2 i_76) Ref__Integer_value)) (=> (= (ControlFlow 0 153) 152) anon112_correct))))))
(let ((anon220_Else_correct  (=> (forall ((i_75_1 Int) ) (!  (=> (and (<= 0 i_75_1) (and (= (mod i_75_1 2) 1) (< i_75_1 __flatten_10@1))) (= (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| Heap@1) (|Seq#Index_17098| res i_75_1) Ref__Integer_value) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| Heap@1) (|Seq#Index_17098| b_24 (div i_75_1 2)) Ref__Integer_value)))
 :qid |stdinbpl.2009:24|
 :skolemid |186|
 :pattern ( (|Seq#Index_17098| res i_75_1))
)) (and (and (=> (= (ControlFlow 0 162) 161) anon222_Else_correct) (=> (= (ControlFlow 0 162) 153) anon223_Then_correct)) (=> (= (ControlFlow 0 162) 155) anon223_Else_correct)))))
(let ((anon108_correct true))
(let ((anon221_Else_correct  (=> (and (not (and (<= 0 i_74_1) (and (= (mod i_74_1 2) 1) (< i_74_1 __flatten_10@1)))) (= (ControlFlow 0 151) 148)) anon108_correct)))
(let ((anon221_Then_correct  (=> (and (<= 0 i_74_1) (and (= (mod i_74_1 2) 1) (< i_74_1 __flatten_10@1))) (and (=> (= (ControlFlow 0 149) (- 0 150)) (= (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| Heap@1) (|Seq#Index_17098| res i_74_1) Ref__Integer_value) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| Heap@1) (|Seq#Index_17098| b_24 (div i_74_1 2)) Ref__Integer_value))) (=> (= (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| Heap@1) (|Seq#Index_17098| res i_74_1) Ref__Integer_value) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| Heap@1) (|Seq#Index_17098| b_24 (div i_74_1 2)) Ref__Integer_value)) (=> (= (ControlFlow 0 149) 148) anon108_correct))))))
(let ((anon218_Else_correct  (=> (forall ((i_73_1 Int) ) (!  (=> (and (<= 0 i_73_1) (and (= (mod i_73_1 2) 0) (< i_73_1 __flatten_10@1))) (= (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| Heap@1) (|Seq#Index_17098| res i_73_1) Ref__Integer_value) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| Heap@1) (|Seq#Index_17098| a_2 (div i_73_1 2)) Ref__Integer_value)))
 :qid |stdinbpl.1998:24|
 :skolemid |185|
 :pattern ( (|Seq#Index_17098| res i_73_1))
)) (and (and (=> (= (ControlFlow 0 163) 162) anon220_Else_correct) (=> (= (ControlFlow 0 163) 149) anon221_Then_correct)) (=> (= (ControlFlow 0 163) 151) anon221_Else_correct)))))
(let ((anon104_correct true))
(let ((anon219_Else_correct  (=> (and (not (and (<= 0 i_72_1) (and (= (mod i_72_1 2) 0) (< i_72_1 __flatten_10@1)))) (= (ControlFlow 0 147) 144)) anon104_correct)))
(let ((anon219_Then_correct  (=> (and (<= 0 i_72_1) (and (= (mod i_72_1 2) 0) (< i_72_1 __flatten_10@1))) (and (=> (= (ControlFlow 0 145) (- 0 146)) (= (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| Heap@1) (|Seq#Index_17098| res i_72_1) Ref__Integer_value) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| Heap@1) (|Seq#Index_17098| a_2 (div i_72_1 2)) Ref__Integer_value))) (=> (= (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| Heap@1) (|Seq#Index_17098| res i_72_1) Ref__Integer_value) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| Heap@1) (|Seq#Index_17098| a_2 (div i_72_1 2)) Ref__Integer_value)) (=> (= (ControlFlow 0 145) 144) anon104_correct))))))
(let ((anon217_Then_correct  (=> (and (state ExhaleHeap@0 ZeroMask) (<= 0 k@0)) (=> (and (and (= (mod k@0 2) 0) (<= k@0 (|Seq#Length_17098| res))) (and (= (|Seq#Length_17098| a_2) (|Seq#Length_17098| b_24)) (= (|Seq#Length_17098| res) (* 2 (|Seq#Length_17098| a_2))))) (and (=> (= (ControlFlow 0 164) (- 0 190)) (forall ((i_62 Int) (i_62_1 Int) ) (!  (=> (and (and (and (and (not (= i_62 i_62_1)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_62)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_62_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17098| a_2 i_62) (|Seq#Index_17098| a_2 i_62_1))))
 :qid |stdinbpl.1645:19|
 :skolemid |145|
))) (=> (forall ((i_62@@0 Int) (i_62_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_62@@0 i_62_1@@0)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_62@@0)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_62_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17098| a_2 i_62@@0) (|Seq#Index_17098| a_2 i_62_1@@0))))
 :qid |stdinbpl.1645:19|
 :skolemid |145|
)) (=> (and (and (forall ((i_62@@1 Int) ) (!  (=> (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_62@@1) (< NoPerm FullPerm)) (and (qpRange16 (|Seq#Index_17098| a_2 i_62@@1)) (= (invRecv16 (|Seq#Index_17098| a_2 i_62@@1)) i_62@@1)))
 :qid |stdinbpl.1651:26|
 :skolemid |146|
 :pattern ( (|Seq#Index_17098| a_2 i_62@@1))
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_62@@1))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_62@@1))
 :pattern ( (|Seq#Index_17098| a_2 i_62@@1))
)) (forall ((o_9@@41 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) (invRecv16 o_9@@41)) (< NoPerm FullPerm)) (qpRange16 o_9@@41)) (= (|Seq#Index_17098| a_2 (invRecv16 o_9@@41)) o_9@@41))
 :qid |stdinbpl.1655:26|
 :skolemid |147|
 :pattern ( (invRecv16 o_9@@41))
))) (and (forall ((i_62@@2 Int) ) (!  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_62@@2) (not (= (|Seq#Index_17098| a_2 i_62@@2) null)))
 :qid |stdinbpl.1661:26|
 :skolemid |148|
 :pattern ( (|Seq#Index_17098| a_2 i_62@@2))
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_62@@2))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_62@@2))
 :pattern ( (|Seq#Index_17098| a_2 i_62@@2))
)) (forall ((o_9@@42 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) (invRecv16 o_9@@42)) (< NoPerm FullPerm)) (qpRange16 o_9@@42)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_17098| a_2 (invRecv16 o_9@@42)) o_9@@42)) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@6) o_9@@42 Ref__Integer_value) (+ (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| ZeroMask) o_9@@42 Ref__Integer_value) FullPerm)))) (=> (not (and (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) (invRecv16 o_9@@42)) (< NoPerm FullPerm)) (qpRange16 o_9@@42))) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@6) o_9@@42 Ref__Integer_value) (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| ZeroMask) o_9@@42 Ref__Integer_value))))
 :qid |stdinbpl.1667:26|
 :skolemid |149|
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@6) o_9@@42 Ref__Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_9@@43 T@Ref) (f_5@@29 T@Field_25262_53) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| ZeroMask) o_9@@43 f_5@@29) (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@6) o_9@@43 f_5@@29)))
 :qid |stdinbpl.1671:33|
 :skolemid |150|
 :pattern ( (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| ZeroMask) o_9@@43 f_5@@29))
 :pattern ( (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@6) o_9@@43 f_5@@29))
)) (forall ((o_9@@44 T@Ref) (f_5@@30 T@Field_25275_25276) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| ZeroMask) o_9@@44 f_5@@30) (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@6) o_9@@44 f_5@@30)))
 :qid |stdinbpl.1671:33|
 :skolemid |150|
 :pattern ( (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| ZeroMask) o_9@@44 f_5@@30))
 :pattern ( (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@6) o_9@@44 f_5@@30))
))) (forall ((o_9@@45 T@Ref) (f_5@@31 T@Field_31327_3562) ) (!  (=> (not (= f_5@@31 Ref__Integer_value)) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| ZeroMask) o_9@@45 f_5@@31) (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@6) o_9@@45 f_5@@31)))
 :qid |stdinbpl.1671:33|
 :skolemid |150|
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| ZeroMask) o_9@@45 f_5@@31))
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@6) o_9@@45 f_5@@31))
))) (forall ((o_9@@46 T@Ref) (f_5@@32 T@Field_17088_72965) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| ZeroMask) o_9@@46 f_5@@32) (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@6) o_9@@46 f_5@@32)))
 :qid |stdinbpl.1671:33|
 :skolemid |150|
 :pattern ( (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| ZeroMask) o_9@@46 f_5@@32))
 :pattern ( (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@6) o_9@@46 f_5@@32))
))) (forall ((o_9@@47 T@Ref) (f_5@@33 T@Field_17088_73098) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| ZeroMask) o_9@@47 f_5@@33) (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@6) o_9@@47 f_5@@33)))
 :qid |stdinbpl.1671:33|
 :skolemid |150|
 :pattern ( (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| ZeroMask) o_9@@47 f_5@@33))
 :pattern ( (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@6) o_9@@47 f_5@@33))
))) (state ExhaleHeap@0 QPMask@6)) (and (=> (= (ControlFlow 0 164) (- 0 189)) (forall ((i_63_1 Int) (i_63_2 Int) ) (!  (=> (and (and (and (and (not (= i_63_1 i_63_2)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_63_1)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_63_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17098| b_24 i_63_1) (|Seq#Index_17098| b_24 i_63_2))))
 :qid |stdinbpl.1679:19|
 :skolemid |151|
))) (=> (forall ((i_63_1@@0 Int) (i_63_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_63_1@@0 i_63_2@@0)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_63_1@@0)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_63_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17098| b_24 i_63_1@@0) (|Seq#Index_17098| b_24 i_63_2@@0))))
 :qid |stdinbpl.1679:19|
 :skolemid |151|
)) (=> (and (and (forall ((i_63_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_63_1@@1) (< NoPerm FullPerm)) (and (qpRange17 (|Seq#Index_17098| b_24 i_63_1@@1)) (= (invRecv17 (|Seq#Index_17098| b_24 i_63_1@@1)) i_63_1@@1)))
 :qid |stdinbpl.1685:26|
 :skolemid |152|
 :pattern ( (|Seq#Index_17098| b_24 i_63_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_63_1@@1))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_63_1@@1))
 :pattern ( (|Seq#Index_17098| b_24 i_63_1@@1))
)) (forall ((o_9@@48 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) (invRecv17 o_9@@48)) (< NoPerm FullPerm)) (qpRange17 o_9@@48)) (= (|Seq#Index_17098| b_24 (invRecv17 o_9@@48)) o_9@@48))
 :qid |stdinbpl.1689:26|
 :skolemid |153|
 :pattern ( (invRecv17 o_9@@48))
))) (and (forall ((i_63_1@@2 Int) ) (!  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_63_1@@2) (not (= (|Seq#Index_17098| b_24 i_63_1@@2) null)))
 :qid |stdinbpl.1695:26|
 :skolemid |154|
 :pattern ( (|Seq#Index_17098| b_24 i_63_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_63_1@@2))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_63_1@@2))
 :pattern ( (|Seq#Index_17098| b_24 i_63_1@@2))
)) (forall ((o_9@@49 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) (invRecv17 o_9@@49)) (< NoPerm FullPerm)) (qpRange17 o_9@@49)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_17098| b_24 (invRecv17 o_9@@49)) o_9@@49)) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@7) o_9@@49 Ref__Integer_value) (+ (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@6) o_9@@49 Ref__Integer_value) FullPerm)))) (=> (not (and (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) (invRecv17 o_9@@49)) (< NoPerm FullPerm)) (qpRange17 o_9@@49))) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@7) o_9@@49 Ref__Integer_value) (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@6) o_9@@49 Ref__Integer_value))))
 :qid |stdinbpl.1701:26|
 :skolemid |155|
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@7) o_9@@49 Ref__Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_9@@50 T@Ref) (f_5@@34 T@Field_25262_53) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@6) o_9@@50 f_5@@34) (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@7) o_9@@50 f_5@@34)))
 :qid |stdinbpl.1705:33|
 :skolemid |156|
 :pattern ( (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@6) o_9@@50 f_5@@34))
 :pattern ( (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@7) o_9@@50 f_5@@34))
)) (forall ((o_9@@51 T@Ref) (f_5@@35 T@Field_25275_25276) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@6) o_9@@51 f_5@@35) (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@7) o_9@@51 f_5@@35)))
 :qid |stdinbpl.1705:33|
 :skolemid |156|
 :pattern ( (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@6) o_9@@51 f_5@@35))
 :pattern ( (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@7) o_9@@51 f_5@@35))
))) (forall ((o_9@@52 T@Ref) (f_5@@36 T@Field_31327_3562) ) (!  (=> (not (= f_5@@36 Ref__Integer_value)) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@6) o_9@@52 f_5@@36) (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@7) o_9@@52 f_5@@36)))
 :qid |stdinbpl.1705:33|
 :skolemid |156|
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@6) o_9@@52 f_5@@36))
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@7) o_9@@52 f_5@@36))
))) (forall ((o_9@@53 T@Ref) (f_5@@37 T@Field_17088_72965) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@6) o_9@@53 f_5@@37) (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@7) o_9@@53 f_5@@37)))
 :qid |stdinbpl.1705:33|
 :skolemid |156|
 :pattern ( (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@6) o_9@@53 f_5@@37))
 :pattern ( (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@7) o_9@@53 f_5@@37))
))) (forall ((o_9@@54 T@Ref) (f_5@@38 T@Field_17088_73098) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@6) o_9@@54 f_5@@38) (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@7) o_9@@54 f_5@@38)))
 :qid |stdinbpl.1705:33|
 :skolemid |156|
 :pattern ( (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@6) o_9@@54 f_5@@38))
 :pattern ( (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@7) o_9@@54 f_5@@38))
))) (state ExhaleHeap@0 QPMask@7)) (and (=> (= (ControlFlow 0 164) (- 0 188)) (forall ((i_64_1 Int) (i_64_2 Int) ) (!  (=> (and (and (and (and (not (= i_64_1 i_64_2)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_64_1)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_64_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17098| res i_64_1) (|Seq#Index_17098| res i_64_2))))
 :qid |stdinbpl.1713:19|
 :skolemid |157|
))) (=> (forall ((i_64_1@@0 Int) (i_64_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_64_1@@0 i_64_2@@0)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_64_1@@0)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_64_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17098| res i_64_1@@0) (|Seq#Index_17098| res i_64_2@@0))))
 :qid |stdinbpl.1713:19|
 :skolemid |157|
)) (=> (and (and (forall ((i_64_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_64_1@@1) (< NoPerm FullPerm)) (and (qpRange18 (|Seq#Index_17098| res i_64_1@@1)) (= (invRecv18 (|Seq#Index_17098| res i_64_1@@1)) i_64_1@@1)))
 :qid |stdinbpl.1719:26|
 :skolemid |158|
 :pattern ( (|Seq#Index_17098| res i_64_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_64_1@@1))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_64_1@@1))
 :pattern ( (|Seq#Index_17098| res i_64_1@@1))
)) (forall ((o_9@@55 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) (invRecv18 o_9@@55)) (< NoPerm FullPerm)) (qpRange18 o_9@@55)) (= (|Seq#Index_17098| res (invRecv18 o_9@@55)) o_9@@55))
 :qid |stdinbpl.1723:26|
 :skolemid |159|
 :pattern ( (invRecv18 o_9@@55))
))) (and (forall ((i_64_1@@2 Int) ) (!  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_64_1@@2) (not (= (|Seq#Index_17098| res i_64_1@@2) null)))
 :qid |stdinbpl.1729:26|
 :skolemid |160|
 :pattern ( (|Seq#Index_17098| res i_64_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_64_1@@2))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_64_1@@2))
 :pattern ( (|Seq#Index_17098| res i_64_1@@2))
)) (forall ((o_9@@56 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) (invRecv18 o_9@@56)) (< NoPerm FullPerm)) (qpRange18 o_9@@56)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_17098| res (invRecv18 o_9@@56)) o_9@@56)) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@8) o_9@@56 Ref__Integer_value) (+ (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@7) o_9@@56 Ref__Integer_value) FullPerm)))) (=> (not (and (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) (invRecv18 o_9@@56)) (< NoPerm FullPerm)) (qpRange18 o_9@@56))) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@8) o_9@@56 Ref__Integer_value) (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@7) o_9@@56 Ref__Integer_value))))
 :qid |stdinbpl.1735:26|
 :skolemid |161|
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@8) o_9@@56 Ref__Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_9@@57 T@Ref) (f_5@@39 T@Field_25262_53) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@7) o_9@@57 f_5@@39) (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@8) o_9@@57 f_5@@39)))
 :qid |stdinbpl.1739:33|
 :skolemid |162|
 :pattern ( (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@7) o_9@@57 f_5@@39))
 :pattern ( (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@8) o_9@@57 f_5@@39))
)) (forall ((o_9@@58 T@Ref) (f_5@@40 T@Field_25275_25276) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@7) o_9@@58 f_5@@40) (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@8) o_9@@58 f_5@@40)))
 :qid |stdinbpl.1739:33|
 :skolemid |162|
 :pattern ( (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@7) o_9@@58 f_5@@40))
 :pattern ( (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@8) o_9@@58 f_5@@40))
))) (forall ((o_9@@59 T@Ref) (f_5@@41 T@Field_31327_3562) ) (!  (=> (not (= f_5@@41 Ref__Integer_value)) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@7) o_9@@59 f_5@@41) (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@8) o_9@@59 f_5@@41)))
 :qid |stdinbpl.1739:33|
 :skolemid |162|
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@7) o_9@@59 f_5@@41))
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@8) o_9@@59 f_5@@41))
))) (forall ((o_9@@60 T@Ref) (f_5@@42 T@Field_17088_72965) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@7) o_9@@60 f_5@@42) (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@8) o_9@@60 f_5@@42)))
 :qid |stdinbpl.1739:33|
 :skolemid |162|
 :pattern ( (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@7) o_9@@60 f_5@@42))
 :pattern ( (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@8) o_9@@60 f_5@@42))
))) (forall ((o_9@@61 T@Ref) (f_5@@43 T@Field_17088_73098) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@7) o_9@@61 f_5@@43) (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@8) o_9@@61 f_5@@43)))
 :qid |stdinbpl.1739:33|
 :skolemid |162|
 :pattern ( (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@7) o_9@@61 f_5@@43))
 :pattern ( (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@8) o_9@@61 f_5@@43))
))) (and (and (and (state ExhaleHeap@0 QPMask@8) (forall ((i_65_1 Int) ) (!  (=> (and (<= 0 i_65_1) (and (= (mod i_65_1 2) 0) (< i_65_1 k@0))) (= (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| res i_65_1) Ref__Integer_value) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| a_2 (div i_65_1 2)) Ref__Integer_value)))
 :qid |stdinbpl.1745:24|
 :skolemid |163|
 :pattern ( (|Seq#Index_17098| res i_65_1))
))) (and (forall ((i_66_1 Int) ) (!  (=> (and (<= 0 i_66_1) (and (= (mod i_66_1 2) 1) (< i_66_1 k@0))) (= (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| res i_66_1) Ref__Integer_value) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| b_24 (div i_66_1 2)) Ref__Integer_value)))
 :qid |stdinbpl.1749:24|
 :skolemid |164|
 :pattern ( (|Seq#Index_17098| res i_66_1))
)) (forall ((i_67_1 Int) ) (!  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (div k@0 2)) i_67_1) (= (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| res (* 2 i_67_1)) Ref__Integer_value) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| a_2 i_67_1) Ref__Integer_value)))
 :qid |stdinbpl.1753:24|
 :skolemid |165|
 :pattern ( (|Seq#Index_17098| a_2 i_67_1))
)))) (and (and (forall ((i_68_1 Int) ) (!  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (div k@0 2)) i_68_1) (= (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| res (+ (* 2 i_68_1) 1)) Ref__Integer_value) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| b_24 i_68_1) Ref__Integer_value)))
 :qid |stdinbpl.1757:24|
 :skolemid |166|
 :pattern ( (|Seq#Index_17098| b_24 i_68_1))
)) (state ExhaleHeap@0 QPMask@8)) (and (< k@0 (|Seq#Length_17098| res)) (state ExhaleHeap@0 QPMask@8))))) (and (=> (= (ControlFlow 0 164) (- 0 187)) (>= (div k@0 2) 0)) (=> (>= (div k@0 2) 0) (and (=> (= (ControlFlow 0 164) (- 0 186)) (< (div k@0 2) (|Seq#Length_17098| a_2))) (=> (< (div k@0 2) (|Seq#Length_17098| a_2)) (=> (and (= __flatten_5@1 (|Seq#Index_17098| a_2 (div k@0 2))) (state ExhaleHeap@0 QPMask@8)) (and (=> (= (ControlFlow 0 164) (- 0 185)) (HasDirectPerm_17088_3577 QPMask@8 __flatten_5@1 Ref__Integer_value)) (=> (HasDirectPerm_17088_3577 QPMask@8 __flatten_5@1 Ref__Integer_value) (=> (= __flatten_4@1 (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) __flatten_5@1 Ref__Integer_value)) (=> (and (state ExhaleHeap@0 QPMask@8) (state ExhaleHeap@0 QPMask@8)) (and (=> (= (ControlFlow 0 164) (- 0 184)) (>= k@0 0)) (=> (>= k@0 0) (and (=> (= (ControlFlow 0 164) (- 0 183)) (< k@0 (|Seq#Length_17098| res))) (=> (< k@0 (|Seq#Length_17098| res)) (=> (and (= __flatten_6@1 (|Seq#Index_17098| res k@0)) (state ExhaleHeap@0 QPMask@8)) (and (=> (= (ControlFlow 0 164) (- 0 182)) (= FullPerm (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@8) __flatten_6@1 Ref__Integer_value))) (=> (= FullPerm (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@8) __flatten_6@1 Ref__Integer_value)) (=> (and (= Heap@0 (PolymorphicMapType_25202 (|PolymorphicMapType_25202_16850_53#PolymorphicMapType_25202| ExhaleHeap@0) (|PolymorphicMapType_25202_16853_16854#PolymorphicMapType_25202| ExhaleHeap@0) (store (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) __flatten_6@1 Ref__Integer_value __flatten_4@1) (|PolymorphicMapType_25202_17088_73142#PolymorphicMapType_25202| ExhaleHeap@0) (|PolymorphicMapType_25202_25262_72965#PolymorphicMapType_25202| ExhaleHeap@0))) (state Heap@0 QPMask@8)) (and (=> (= (ControlFlow 0 164) (- 0 181)) (>= (div k@0 2) 0)) (=> (>= (div k@0 2) 0) (and (=> (= (ControlFlow 0 164) (- 0 180)) (< (div k@0 2) (|Seq#Length_17098| b_24))) (=> (< (div k@0 2) (|Seq#Length_17098| b_24)) (=> (and (= __flatten_8@1 (|Seq#Index_17098| b_24 (div k@0 2))) (state Heap@0 QPMask@8)) (and (=> (= (ControlFlow 0 164) (- 0 179)) (HasDirectPerm_17088_3577 QPMask@8 __flatten_8@1 Ref__Integer_value)) (=> (HasDirectPerm_17088_3577 QPMask@8 __flatten_8@1 Ref__Integer_value) (=> (= __flatten_7@1 (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| Heap@0) __flatten_8@1 Ref__Integer_value)) (=> (and (state Heap@0 QPMask@8) (state Heap@0 QPMask@8)) (and (=> (= (ControlFlow 0 164) (- 0 178)) (>= (+ k@0 1) 0)) (=> (>= (+ k@0 1) 0) (and (=> (= (ControlFlow 0 164) (- 0 177)) (< (+ k@0 1) (|Seq#Length_17098| res))) (=> (< (+ k@0 1) (|Seq#Length_17098| res)) (=> (and (= __flatten_9@1 (|Seq#Index_17098| res (+ k@0 1))) (state Heap@0 QPMask@8)) (and (=> (= (ControlFlow 0 164) (- 0 176)) (= FullPerm (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@8) __flatten_9@1 Ref__Integer_value))) (=> (= FullPerm (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@8) __flatten_9@1 Ref__Integer_value)) (=> (and (= Heap@1 (PolymorphicMapType_25202 (|PolymorphicMapType_25202_16850_53#PolymorphicMapType_25202| Heap@0) (|PolymorphicMapType_25202_16853_16854#PolymorphicMapType_25202| Heap@0) (store (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| Heap@0) __flatten_9@1 Ref__Integer_value __flatten_7@1) (|PolymorphicMapType_25202_17088_73142#PolymorphicMapType_25202| Heap@0) (|PolymorphicMapType_25202_25262_72965#PolymorphicMapType_25202| Heap@0))) (state Heap@1 QPMask@8)) (=> (and (and (= __flatten_10@1 (+ k@0 2)) (state Heap@1 QPMask@8)) (and (state Heap@1 QPMask@8) (state Heap@1 QPMask@8))) (and (=> (= (ControlFlow 0 164) (- 0 175)) (<= 0 __flatten_10@1)) (=> (<= 0 __flatten_10@1) (and (=> (= (ControlFlow 0 164) (- 0 174)) (= (mod __flatten_10@1 2) 0)) (=> (= (mod __flatten_10@1 2) 0) (and (=> (= (ControlFlow 0 164) (- 0 173)) (<= __flatten_10@1 (|Seq#Length_17098| res))) (=> (<= __flatten_10@1 (|Seq#Length_17098| res)) (and (=> (= (ControlFlow 0 164) (- 0 172)) (= (|Seq#Length_17098| a_2) (|Seq#Length_17098| b_24))) (=> (= (|Seq#Length_17098| a_2) (|Seq#Length_17098| b_24)) (and (=> (= (ControlFlow 0 164) (- 0 171)) (= (|Seq#Length_17098| res) (* 2 (|Seq#Length_17098| a_2)))) (=> (= (|Seq#Length_17098| res) (* 2 (|Seq#Length_17098| a_2))) (and (=> (= (ControlFlow 0 164) (- 0 170)) (forall ((i_69_1 Int) (i_69_2 Int) ) (!  (=> (and (and (and (and (not (= i_69_1 i_69_2)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_69_1)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_69_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17098| a_2 i_69_1) (|Seq#Index_17098| a_2 i_69_2))))
 :qid |stdinbpl.1875:21|
 :skolemid |167|
 :pattern ( (neverTriggered19 i_69_1) (neverTriggered19 i_69_2))
))) (=> (forall ((i_69_1@@0 Int) (i_69_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_69_1@@0 i_69_2@@0)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_69_1@@0)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_69_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17098| a_2 i_69_1@@0) (|Seq#Index_17098| a_2 i_69_2@@0))))
 :qid |stdinbpl.1875:21|
 :skolemid |167|
 :pattern ( (neverTriggered19 i_69_1@@0) (neverTriggered19 i_69_2@@0))
)) (and (=> (= (ControlFlow 0 164) (- 0 169)) (forall ((i_69_1@@1 Int) ) (!  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_69_1@@1) (>= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@8) (|Seq#Index_17098| a_2 i_69_1@@1) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.1882:21|
 :skolemid |168|
 :pattern ( (|Seq#Index_17098| a_2 i_69_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_69_1@@1))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_69_1@@1))
 :pattern ( (|Seq#Index_17098| a_2 i_69_1@@1))
))) (=> (forall ((i_69_1@@2 Int) ) (!  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_69_1@@2) (>= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@8) (|Seq#Index_17098| a_2 i_69_1@@2) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.1882:21|
 :skolemid |168|
 :pattern ( (|Seq#Index_17098| a_2 i_69_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_69_1@@2))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_69_1@@2))
 :pattern ( (|Seq#Index_17098| a_2 i_69_1@@2))
)) (=> (forall ((i_69_1@@3 Int) ) (!  (=> (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_69_1@@3) (< NoPerm FullPerm)) (and (qpRange19 (|Seq#Index_17098| a_2 i_69_1@@3)) (= (invRecv19 (|Seq#Index_17098| a_2 i_69_1@@3)) i_69_1@@3)))
 :qid |stdinbpl.1888:26|
 :skolemid |169|
 :pattern ( (|Seq#Index_17098| a_2 i_69_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_69_1@@3))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_69_1@@3))
 :pattern ( (|Seq#Index_17098| a_2 i_69_1@@3))
)) (=> (and (forall ((o_9@@62 T@Ref) ) (!  (=> (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) (invRecv19 o_9@@62)) (and (< NoPerm FullPerm) (qpRange19 o_9@@62))) (= (|Seq#Index_17098| a_2 (invRecv19 o_9@@62)) o_9@@62))
 :qid |stdinbpl.1892:26|
 :skolemid |170|
 :pattern ( (invRecv19 o_9@@62))
)) (forall ((o_9@@63 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) (invRecv19 o_9@@63)) (and (< NoPerm FullPerm) (qpRange19 o_9@@63))) (and (= (|Seq#Index_17098| a_2 (invRecv19 o_9@@63)) o_9@@63) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@9) o_9@@63 Ref__Integer_value) (- (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@8) o_9@@63 Ref__Integer_value) FullPerm)))) (=> (not (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) (invRecv19 o_9@@63)) (and (< NoPerm FullPerm) (qpRange19 o_9@@63)))) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@9) o_9@@63 Ref__Integer_value) (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@8) o_9@@63 Ref__Integer_value))))
 :qid |stdinbpl.1898:26|
 :skolemid |171|
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@9) o_9@@63 Ref__Integer_value))
))) (=> (and (and (and (and (forall ((o_9@@64 T@Ref) (f_5@@44 T@Field_25262_53) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@8) o_9@@64 f_5@@44) (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@9) o_9@@64 f_5@@44)))
 :qid |stdinbpl.1904:33|
 :skolemid |172|
 :pattern ( (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@9) o_9@@64 f_5@@44))
)) (forall ((o_9@@65 T@Ref) (f_5@@45 T@Field_25275_25276) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@8) o_9@@65 f_5@@45) (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@9) o_9@@65 f_5@@45)))
 :qid |stdinbpl.1904:33|
 :skolemid |172|
 :pattern ( (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@9) o_9@@65 f_5@@45))
))) (forall ((o_9@@66 T@Ref) (f_5@@46 T@Field_31327_3562) ) (!  (=> (not (= f_5@@46 Ref__Integer_value)) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@8) o_9@@66 f_5@@46) (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@9) o_9@@66 f_5@@46)))
 :qid |stdinbpl.1904:33|
 :skolemid |172|
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@9) o_9@@66 f_5@@46))
))) (forall ((o_9@@67 T@Ref) (f_5@@47 T@Field_17088_72965) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@8) o_9@@67 f_5@@47) (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@9) o_9@@67 f_5@@47)))
 :qid |stdinbpl.1904:33|
 :skolemid |172|
 :pattern ( (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@9) o_9@@67 f_5@@47))
))) (forall ((o_9@@68 T@Ref) (f_5@@48 T@Field_17088_73098) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@8) o_9@@68 f_5@@48) (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@9) o_9@@68 f_5@@48)))
 :qid |stdinbpl.1904:33|
 :skolemid |172|
 :pattern ( (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@9) o_9@@68 f_5@@48))
))) (and (=> (= (ControlFlow 0 164) (- 0 168)) (forall ((i_70_1 Int) (i_70_2 Int) ) (!  (=> (and (and (and (and (not (= i_70_1 i_70_2)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_70_1)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_70_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17098| b_24 i_70_1) (|Seq#Index_17098| b_24 i_70_2))))
 :qid |stdinbpl.1916:21|
 :skolemid |173|
 :pattern ( (neverTriggered20 i_70_1) (neverTriggered20 i_70_2))
))) (=> (forall ((i_70_1@@0 Int) (i_70_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_70_1@@0 i_70_2@@0)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_70_1@@0)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_70_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17098| b_24 i_70_1@@0) (|Seq#Index_17098| b_24 i_70_2@@0))))
 :qid |stdinbpl.1916:21|
 :skolemid |173|
 :pattern ( (neverTriggered20 i_70_1@@0) (neverTriggered20 i_70_2@@0))
)) (and (=> (= (ControlFlow 0 164) (- 0 167)) (forall ((i_70_1@@1 Int) ) (!  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_70_1@@1) (>= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@9) (|Seq#Index_17098| b_24 i_70_1@@1) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.1923:21|
 :skolemid |174|
 :pattern ( (|Seq#Index_17098| b_24 i_70_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_70_1@@1))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_70_1@@1))
 :pattern ( (|Seq#Index_17098| b_24 i_70_1@@1))
))) (=> (forall ((i_70_1@@2 Int) ) (!  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_70_1@@2) (>= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@9) (|Seq#Index_17098| b_24 i_70_1@@2) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.1923:21|
 :skolemid |174|
 :pattern ( (|Seq#Index_17098| b_24 i_70_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_70_1@@2))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_70_1@@2))
 :pattern ( (|Seq#Index_17098| b_24 i_70_1@@2))
)) (=> (forall ((i_70_1@@3 Int) ) (!  (=> (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_70_1@@3) (< NoPerm FullPerm)) (and (qpRange20 (|Seq#Index_17098| b_24 i_70_1@@3)) (= (invRecv20 (|Seq#Index_17098| b_24 i_70_1@@3)) i_70_1@@3)))
 :qid |stdinbpl.1929:26|
 :skolemid |175|
 :pattern ( (|Seq#Index_17098| b_24 i_70_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_70_1@@3))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_70_1@@3))
 :pattern ( (|Seq#Index_17098| b_24 i_70_1@@3))
)) (=> (and (forall ((o_9@@69 T@Ref) ) (!  (=> (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) (invRecv20 o_9@@69)) (and (< NoPerm FullPerm) (qpRange20 o_9@@69))) (= (|Seq#Index_17098| b_24 (invRecv20 o_9@@69)) o_9@@69))
 :qid |stdinbpl.1933:26|
 :skolemid |176|
 :pattern ( (invRecv20 o_9@@69))
)) (forall ((o_9@@70 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) (invRecv20 o_9@@70)) (and (< NoPerm FullPerm) (qpRange20 o_9@@70))) (and (= (|Seq#Index_17098| b_24 (invRecv20 o_9@@70)) o_9@@70) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@10) o_9@@70 Ref__Integer_value) (- (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@9) o_9@@70 Ref__Integer_value) FullPerm)))) (=> (not (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) (invRecv20 o_9@@70)) (and (< NoPerm FullPerm) (qpRange20 o_9@@70)))) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@10) o_9@@70 Ref__Integer_value) (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@9) o_9@@70 Ref__Integer_value))))
 :qid |stdinbpl.1939:26|
 :skolemid |177|
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@10) o_9@@70 Ref__Integer_value))
))) (=> (and (and (and (and (forall ((o_9@@71 T@Ref) (f_5@@49 T@Field_25262_53) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@9) o_9@@71 f_5@@49) (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@10) o_9@@71 f_5@@49)))
 :qid |stdinbpl.1945:33|
 :skolemid |178|
 :pattern ( (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@10) o_9@@71 f_5@@49))
)) (forall ((o_9@@72 T@Ref) (f_5@@50 T@Field_25275_25276) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@9) o_9@@72 f_5@@50) (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@10) o_9@@72 f_5@@50)))
 :qid |stdinbpl.1945:33|
 :skolemid |178|
 :pattern ( (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@10) o_9@@72 f_5@@50))
))) (forall ((o_9@@73 T@Ref) (f_5@@51 T@Field_31327_3562) ) (!  (=> (not (= f_5@@51 Ref__Integer_value)) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@9) o_9@@73 f_5@@51) (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@10) o_9@@73 f_5@@51)))
 :qid |stdinbpl.1945:33|
 :skolemid |178|
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@10) o_9@@73 f_5@@51))
))) (forall ((o_9@@74 T@Ref) (f_5@@52 T@Field_17088_72965) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@9) o_9@@74 f_5@@52) (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@10) o_9@@74 f_5@@52)))
 :qid |stdinbpl.1945:33|
 :skolemid |178|
 :pattern ( (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@10) o_9@@74 f_5@@52))
))) (forall ((o_9@@75 T@Ref) (f_5@@53 T@Field_17088_73098) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@9) o_9@@75 f_5@@53) (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@10) o_9@@75 f_5@@53)))
 :qid |stdinbpl.1945:33|
 :skolemid |178|
 :pattern ( (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@10) o_9@@75 f_5@@53))
))) (and (=> (= (ControlFlow 0 164) (- 0 166)) (forall ((i_71_1 Int) (i_71_2 Int) ) (!  (=> (and (and (and (and (not (= i_71_1 i_71_2)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_71_1)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_71_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17098| res i_71_1) (|Seq#Index_17098| res i_71_2))))
 :qid |stdinbpl.1957:21|
 :skolemid |179|
 :pattern ( (neverTriggered21 i_71_1) (neverTriggered21 i_71_2))
))) (=> (forall ((i_71_1@@0 Int) (i_71_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_71_1@@0 i_71_2@@0)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_71_1@@0)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_71_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17098| res i_71_1@@0) (|Seq#Index_17098| res i_71_2@@0))))
 :qid |stdinbpl.1957:21|
 :skolemid |179|
 :pattern ( (neverTriggered21 i_71_1@@0) (neverTriggered21 i_71_2@@0))
)) (and (=> (= (ControlFlow 0 164) (- 0 165)) (forall ((i_71_1@@1 Int) ) (!  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_71_1@@1) (>= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@10) (|Seq#Index_17098| res i_71_1@@1) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.1964:21|
 :skolemid |180|
 :pattern ( (|Seq#Index_17098| res i_71_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_71_1@@1))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_71_1@@1))
 :pattern ( (|Seq#Index_17098| res i_71_1@@1))
))) (=> (forall ((i_71_1@@2 Int) ) (!  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_71_1@@2) (>= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@10) (|Seq#Index_17098| res i_71_1@@2) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.1964:21|
 :skolemid |180|
 :pattern ( (|Seq#Index_17098| res i_71_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_71_1@@2))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_71_1@@2))
 :pattern ( (|Seq#Index_17098| res i_71_1@@2))
)) (=> (forall ((i_71_1@@3 Int) ) (!  (=> (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_71_1@@3) (< NoPerm FullPerm)) (and (qpRange21 (|Seq#Index_17098| res i_71_1@@3)) (= (invRecv21 (|Seq#Index_17098| res i_71_1@@3)) i_71_1@@3)))
 :qid |stdinbpl.1970:26|
 :skolemid |181|
 :pattern ( (|Seq#Index_17098| res i_71_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_71_1@@3))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_71_1@@3))
 :pattern ( (|Seq#Index_17098| res i_71_1@@3))
)) (=> (and (forall ((o_9@@76 T@Ref) ) (!  (=> (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) (invRecv21 o_9@@76)) (and (< NoPerm FullPerm) (qpRange21 o_9@@76))) (= (|Seq#Index_17098| res (invRecv21 o_9@@76)) o_9@@76))
 :qid |stdinbpl.1974:26|
 :skolemid |182|
 :pattern ( (invRecv21 o_9@@76))
)) (forall ((o_9@@77 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) (invRecv21 o_9@@77)) (and (< NoPerm FullPerm) (qpRange21 o_9@@77))) (and (= (|Seq#Index_17098| res (invRecv21 o_9@@77)) o_9@@77) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@11) o_9@@77 Ref__Integer_value) (- (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@10) o_9@@77 Ref__Integer_value) FullPerm)))) (=> (not (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) (invRecv21 o_9@@77)) (and (< NoPerm FullPerm) (qpRange21 o_9@@77)))) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@11) o_9@@77 Ref__Integer_value) (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@10) o_9@@77 Ref__Integer_value))))
 :qid |stdinbpl.1980:26|
 :skolemid |183|
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@11) o_9@@77 Ref__Integer_value))
))) (=> (and (and (and (and (forall ((o_9@@78 T@Ref) (f_5@@54 T@Field_25262_53) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@10) o_9@@78 f_5@@54) (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@11) o_9@@78 f_5@@54)))
 :qid |stdinbpl.1986:33|
 :skolemid |184|
 :pattern ( (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@11) o_9@@78 f_5@@54))
)) (forall ((o_9@@79 T@Ref) (f_5@@55 T@Field_25275_25276) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@10) o_9@@79 f_5@@55) (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@11) o_9@@79 f_5@@55)))
 :qid |stdinbpl.1986:33|
 :skolemid |184|
 :pattern ( (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@11) o_9@@79 f_5@@55))
))) (forall ((o_9@@80 T@Ref) (f_5@@56 T@Field_31327_3562) ) (!  (=> (not (= f_5@@56 Ref__Integer_value)) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@10) o_9@@80 f_5@@56) (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@11) o_9@@80 f_5@@56)))
 :qid |stdinbpl.1986:33|
 :skolemid |184|
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@11) o_9@@80 f_5@@56))
))) (forall ((o_9@@81 T@Ref) (f_5@@57 T@Field_17088_72965) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@10) o_9@@81 f_5@@57) (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@11) o_9@@81 f_5@@57)))
 :qid |stdinbpl.1986:33|
 :skolemid |184|
 :pattern ( (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@11) o_9@@81 f_5@@57))
))) (forall ((o_9@@82 T@Ref) (f_5@@58 T@Field_17088_73098) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@10) o_9@@82 f_5@@58) (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@11) o_9@@82 f_5@@58)))
 :qid |stdinbpl.1986:33|
 :skolemid |184|
 :pattern ( (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@11) o_9@@82 f_5@@58))
))) (and (and (=> (= (ControlFlow 0 164) 163) anon218_Else_correct) (=> (= (ControlFlow 0 164) 145) anon219_Then_correct)) (=> (= (ControlFlow 0 164) 147) anon219_Else_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((anon165_correct true))
(let ((anon249_Else_correct  (=> (and (not (and (<= 0 i_35) (and (= (mod i_35 2) 0) (< i_35 (|Seq#Length_17098| res))))) (= (ControlFlow 0 121) 118)) anon165_correct)))
(let ((anon249_Then_correct  (=> (and (<= 0 i_35) (and (= (mod i_35 2) 0) (< i_35 (|Seq#Length_17098| res)))) (and (=> (= (ControlFlow 0 119) (- 0 120)) (= (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| res i_35) Ref__Integer_value) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| a_2 (div i_35 2)) Ref__Integer_value))) (=> (= (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| res i_35) Ref__Integer_value) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| a_2 (div i_35 2)) Ref__Integer_value)) (=> (= (ControlFlow 0 119) 118) anon165_correct))))))
(let ((anon248_Else_correct true))
(let ((anon246_Else_correct  (=> (forall ((i_34_1 Int) ) (!  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_34_1) (= (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| res (+ (* 2 i_34_1) 1)) Ref__Integer_value) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| b_24 i_34_1) Ref__Integer_value)))
 :qid |stdinbpl.2499:20|
 :skolemid |235|
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_34_1))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_34_1))
 :pattern ( (|Seq#Index_17098| b_24 i_34_1))
)) (and (and (=> (= (ControlFlow 0 122) 117) anon248_Else_correct) (=> (= (ControlFlow 0 122) 119) anon249_Then_correct)) (=> (= (ControlFlow 0 122) 121) anon249_Else_correct)))))
(let ((anon161_correct true))
(let ((anon247_Else_correct  (=> (and (not (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_33)) (= (ControlFlow 0 116) 113)) anon161_correct)))
(let ((anon247_Then_correct  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_33) (and (=> (= (ControlFlow 0 114) (- 0 115)) (= (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| res (+ (* 2 i_33) 1)) Ref__Integer_value) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| b_24 i_33) Ref__Integer_value))) (=> (= (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| res (+ (* 2 i_33) 1)) Ref__Integer_value) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| b_24 i_33) Ref__Integer_value)) (=> (= (ControlFlow 0 114) 113) anon161_correct))))))
(let ((anon244_Else_correct  (=> (forall ((i_32_1_1 Int) ) (!  (=> (and (<= 0 i_32_1_1) (and (= (mod i_32_1_1 2) 1) (< i_32_1_1 (|Seq#Length_17098| res)))) (= (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| res i_32_1_1) Ref__Integer_value) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| b_24 (div i_32_1_1 2)) Ref__Integer_value)))
 :qid |stdinbpl.2488:20|
 :skolemid |234|
 :pattern ( (|Seq#Index_17098| res i_32_1_1))
)) (and (and (=> (= (ControlFlow 0 123) 122) anon246_Else_correct) (=> (= (ControlFlow 0 123) 114) anon247_Then_correct)) (=> (= (ControlFlow 0 123) 116) anon247_Else_correct)))))
(let ((anon157_correct true))
(let ((anon245_Else_correct  (=> (and (not (and (<= 0 i_31) (and (= (mod i_31 2) 1) (< i_31 (|Seq#Length_17098| res))))) (= (ControlFlow 0 112) 109)) anon157_correct)))
(let ((anon245_Then_correct  (=> (and (<= 0 i_31) (and (= (mod i_31 2) 1) (< i_31 (|Seq#Length_17098| res)))) (and (=> (= (ControlFlow 0 110) (- 0 111)) (= (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| res i_31) Ref__Integer_value) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| b_24 (div i_31 2)) Ref__Integer_value))) (=> (= (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| res i_31) Ref__Integer_value) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| b_24 (div i_31 2)) Ref__Integer_value)) (=> (= (ControlFlow 0 110) 109) anon157_correct))))))
(let ((anon242_Else_correct  (=> (forall ((i_30_1_1 Int) ) (!  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_30_1_1) (= (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| res (* 2 i_30_1_1)) Ref__Integer_value) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| a_2 i_30_1_1) Ref__Integer_value)))
 :qid |stdinbpl.2477:20|
 :skolemid |233|
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_30_1_1))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_30_1_1))
 :pattern ( (|Seq#Index_17098| a_2 i_30_1_1))
)) (and (and (=> (= (ControlFlow 0 124) 123) anon244_Else_correct) (=> (= (ControlFlow 0 124) 110) anon245_Then_correct)) (=> (= (ControlFlow 0 124) 112) anon245_Else_correct)))))
(let ((anon153_correct true))
(let ((anon243_Else_correct  (=> (and (not (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_29)) (= (ControlFlow 0 108) 105)) anon153_correct)))
(let ((anon243_Then_correct  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_29) (and (=> (= (ControlFlow 0 106) (- 0 107)) (= (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| res (* 2 i_29)) Ref__Integer_value) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| a_2 i_29) Ref__Integer_value))) (=> (= (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| res (* 2 i_29)) Ref__Integer_value) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| a_2 i_29) Ref__Integer_value)) (=> (= (ControlFlow 0 106) 105) anon153_correct))))))
(let ((anon240_Else_correct  (=> (and (forall ((i_98_1 Int) ) (!  (=> (and (<= 0 i_98_1) (and (= (mod i_98_1 2) 0) (< i_98_1 (|Seq#Length_17098| res)))) (= (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| res i_98_1) Ref__Integer_value) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| a_2 (div i_98_1 2)) Ref__Integer_value)))
 :qid |stdinbpl.2332:20|
 :skolemid |214|
 :pattern ( (|Seq#Index_17098| res i_98_1))
)) (state ExhaleHeap@0 QPMask@14)) (and (=> (= (ControlFlow 0 125) (- 0 134)) (= (|Seq#Length_17098| res) (* 2 (|Seq#Length_17098| a_2)))) (=> (= (|Seq#Length_17098| res) (* 2 (|Seq#Length_17098| a_2))) (and (=> (= (ControlFlow 0 125) (- 0 133)) (= (|Seq#Length_17098| a_2) (|Seq#Length_17098| b_24))) (=> (= (|Seq#Length_17098| a_2) (|Seq#Length_17098| b_24)) (and (=> (= (ControlFlow 0 125) (- 0 132)) (= (|Seq#Length_17098| res) (* 2 (|Seq#Length_17098| b_24)))) (=> (= (|Seq#Length_17098| res) (* 2 (|Seq#Length_17098| b_24))) (and (=> (= (ControlFlow 0 125) (- 0 131)) (forall ((i_26_1 Int) (i_26_2 Int) ) (!  (=> (and (and (and (and (not (= i_26_1 i_26_2)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_26_1)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_26_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17098| a_2 i_26_1) (|Seq#Index_17098| a_2 i_26_2))))
 :qid |stdinbpl.2354:17|
 :skolemid |215|
 :pattern ( (neverTriggered7 i_26_1) (neverTriggered7 i_26_2))
))) (=> (forall ((i_26_1@@0 Int) (i_26_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_26_1@@0 i_26_2@@0)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_26_1@@0)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_26_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17098| a_2 i_26_1@@0) (|Seq#Index_17098| a_2 i_26_2@@0))))
 :qid |stdinbpl.2354:17|
 :skolemid |215|
 :pattern ( (neverTriggered7 i_26_1@@0) (neverTriggered7 i_26_2@@0))
)) (and (=> (= (ControlFlow 0 125) (- 0 130)) (forall ((i_26_1@@1 Int) ) (!  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_26_1@@1) (>= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@14) (|Seq#Index_17098| a_2 i_26_1@@1) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.2361:17|
 :skolemid |216|
 :pattern ( (|Seq#Index_17098| a_2 i_26_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_26_1@@1))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_26_1@@1))
 :pattern ( (|Seq#Index_17098| a_2 i_26_1@@1))
))) (=> (forall ((i_26_1@@2 Int) ) (!  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_26_1@@2) (>= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@14) (|Seq#Index_17098| a_2 i_26_1@@2) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.2361:17|
 :skolemid |216|
 :pattern ( (|Seq#Index_17098| a_2 i_26_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_26_1@@2))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_26_1@@2))
 :pattern ( (|Seq#Index_17098| a_2 i_26_1@@2))
)) (=> (forall ((i_26_1@@3 Int) ) (!  (=> (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_26_1@@3) (< NoPerm FullPerm)) (and (qpRange7 (|Seq#Index_17098| a_2 i_26_1@@3)) (= (invRecv7 (|Seq#Index_17098| a_2 i_26_1@@3)) i_26_1@@3)))
 :qid |stdinbpl.2367:22|
 :skolemid |217|
 :pattern ( (|Seq#Index_17098| a_2 i_26_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_26_1@@3))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_26_1@@3))
 :pattern ( (|Seq#Index_17098| a_2 i_26_1@@3))
)) (=> (and (forall ((o_9@@83 T@Ref) ) (!  (=> (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) (invRecv7 o_9@@83)) (and (< NoPerm FullPerm) (qpRange7 o_9@@83))) (= (|Seq#Index_17098| a_2 (invRecv7 o_9@@83)) o_9@@83))
 :qid |stdinbpl.2371:22|
 :skolemid |218|
 :pattern ( (invRecv7 o_9@@83))
)) (forall ((o_9@@84 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) (invRecv7 o_9@@84)) (and (< NoPerm FullPerm) (qpRange7 o_9@@84))) (and (= (|Seq#Index_17098| a_2 (invRecv7 o_9@@84)) o_9@@84) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@15) o_9@@84 Ref__Integer_value) (- (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@14) o_9@@84 Ref__Integer_value) FullPerm)))) (=> (not (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) (invRecv7 o_9@@84)) (and (< NoPerm FullPerm) (qpRange7 o_9@@84)))) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@15) o_9@@84 Ref__Integer_value) (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@14) o_9@@84 Ref__Integer_value))))
 :qid |stdinbpl.2377:22|
 :skolemid |219|
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@15) o_9@@84 Ref__Integer_value))
))) (=> (and (and (and (and (forall ((o_9@@85 T@Ref) (f_5@@59 T@Field_25262_53) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@14) o_9@@85 f_5@@59) (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@15) o_9@@85 f_5@@59)))
 :qid |stdinbpl.2383:29|
 :skolemid |220|
 :pattern ( (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@15) o_9@@85 f_5@@59))
)) (forall ((o_9@@86 T@Ref) (f_5@@60 T@Field_25275_25276) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@14) o_9@@86 f_5@@60) (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@15) o_9@@86 f_5@@60)))
 :qid |stdinbpl.2383:29|
 :skolemid |220|
 :pattern ( (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@15) o_9@@86 f_5@@60))
))) (forall ((o_9@@87 T@Ref) (f_5@@61 T@Field_31327_3562) ) (!  (=> (not (= f_5@@61 Ref__Integer_value)) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@14) o_9@@87 f_5@@61) (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@15) o_9@@87 f_5@@61)))
 :qid |stdinbpl.2383:29|
 :skolemid |220|
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@15) o_9@@87 f_5@@61))
))) (forall ((o_9@@88 T@Ref) (f_5@@62 T@Field_17088_72965) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@14) o_9@@88 f_5@@62) (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@15) o_9@@88 f_5@@62)))
 :qid |stdinbpl.2383:29|
 :skolemid |220|
 :pattern ( (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@15) o_9@@88 f_5@@62))
))) (forall ((o_9@@89 T@Ref) (f_5@@63 T@Field_17088_73098) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@14) o_9@@89 f_5@@63) (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@15) o_9@@89 f_5@@63)))
 :qid |stdinbpl.2383:29|
 :skolemid |220|
 :pattern ( (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@15) o_9@@89 f_5@@63))
))) (and (=> (= (ControlFlow 0 125) (- 0 129)) (forall ((i_27_2 Int) (i_27_3 Int) ) (!  (=> (and (and (and (and (not (= i_27_2 i_27_3)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_27_2)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_27_3)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17098| b_24 i_27_2) (|Seq#Index_17098| b_24 i_27_3))))
 :qid |stdinbpl.2395:17|
 :skolemid |221|
 :pattern ( (neverTriggered8 i_27_2) (neverTriggered8 i_27_3))
))) (=> (forall ((i_27_2@@0 Int) (i_27_3@@0 Int) ) (!  (=> (and (and (and (and (not (= i_27_2@@0 i_27_3@@0)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_27_2@@0)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_27_3@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17098| b_24 i_27_2@@0) (|Seq#Index_17098| b_24 i_27_3@@0))))
 :qid |stdinbpl.2395:17|
 :skolemid |221|
 :pattern ( (neverTriggered8 i_27_2@@0) (neverTriggered8 i_27_3@@0))
)) (and (=> (= (ControlFlow 0 125) (- 0 128)) (forall ((i_27_2@@1 Int) ) (!  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_27_2@@1) (>= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@15) (|Seq#Index_17098| b_24 i_27_2@@1) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.2402:17|
 :skolemid |222|
 :pattern ( (|Seq#Index_17098| b_24 i_27_2@@1))
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_27_2@@1))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_27_2@@1))
 :pattern ( (|Seq#Index_17098| b_24 i_27_2@@1))
))) (=> (forall ((i_27_2@@2 Int) ) (!  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_27_2@@2) (>= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@15) (|Seq#Index_17098| b_24 i_27_2@@2) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.2402:17|
 :skolemid |222|
 :pattern ( (|Seq#Index_17098| b_24 i_27_2@@2))
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_27_2@@2))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_27_2@@2))
 :pattern ( (|Seq#Index_17098| b_24 i_27_2@@2))
)) (=> (forall ((i_27_2@@3 Int) ) (!  (=> (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_27_2@@3) (< NoPerm FullPerm)) (and (qpRange8 (|Seq#Index_17098| b_24 i_27_2@@3)) (= (invRecv8 (|Seq#Index_17098| b_24 i_27_2@@3)) i_27_2@@3)))
 :qid |stdinbpl.2408:22|
 :skolemid |223|
 :pattern ( (|Seq#Index_17098| b_24 i_27_2@@3))
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_27_2@@3))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_27_2@@3))
 :pattern ( (|Seq#Index_17098| b_24 i_27_2@@3))
)) (=> (and (forall ((o_9@@90 T@Ref) ) (!  (=> (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) (invRecv8 o_9@@90)) (and (< NoPerm FullPerm) (qpRange8 o_9@@90))) (= (|Seq#Index_17098| b_24 (invRecv8 o_9@@90)) o_9@@90))
 :qid |stdinbpl.2412:22|
 :skolemid |224|
 :pattern ( (invRecv8 o_9@@90))
)) (forall ((o_9@@91 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) (invRecv8 o_9@@91)) (and (< NoPerm FullPerm) (qpRange8 o_9@@91))) (and (= (|Seq#Index_17098| b_24 (invRecv8 o_9@@91)) o_9@@91) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@16) o_9@@91 Ref__Integer_value) (- (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@15) o_9@@91 Ref__Integer_value) FullPerm)))) (=> (not (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) (invRecv8 o_9@@91)) (and (< NoPerm FullPerm) (qpRange8 o_9@@91)))) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@16) o_9@@91 Ref__Integer_value) (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@15) o_9@@91 Ref__Integer_value))))
 :qid |stdinbpl.2418:22|
 :skolemid |225|
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@16) o_9@@91 Ref__Integer_value))
))) (=> (and (and (and (and (forall ((o_9@@92 T@Ref) (f_5@@64 T@Field_25262_53) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@15) o_9@@92 f_5@@64) (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@16) o_9@@92 f_5@@64)))
 :qid |stdinbpl.2424:29|
 :skolemid |226|
 :pattern ( (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@16) o_9@@92 f_5@@64))
)) (forall ((o_9@@93 T@Ref) (f_5@@65 T@Field_25275_25276) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@15) o_9@@93 f_5@@65) (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@16) o_9@@93 f_5@@65)))
 :qid |stdinbpl.2424:29|
 :skolemid |226|
 :pattern ( (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@16) o_9@@93 f_5@@65))
))) (forall ((o_9@@94 T@Ref) (f_5@@66 T@Field_31327_3562) ) (!  (=> (not (= f_5@@66 Ref__Integer_value)) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@15) o_9@@94 f_5@@66) (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@16) o_9@@94 f_5@@66)))
 :qid |stdinbpl.2424:29|
 :skolemid |226|
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@16) o_9@@94 f_5@@66))
))) (forall ((o_9@@95 T@Ref) (f_5@@67 T@Field_17088_72965) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@15) o_9@@95 f_5@@67) (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@16) o_9@@95 f_5@@67)))
 :qid |stdinbpl.2424:29|
 :skolemid |226|
 :pattern ( (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@16) o_9@@95 f_5@@67))
))) (forall ((o_9@@96 T@Ref) (f_5@@68 T@Field_17088_73098) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@15) o_9@@96 f_5@@68) (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@16) o_9@@96 f_5@@68)))
 :qid |stdinbpl.2424:29|
 :skolemid |226|
 :pattern ( (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@16) o_9@@96 f_5@@68))
))) (and (=> (= (ControlFlow 0 125) (- 0 127)) (forall ((i_28 Int) (i_28_2 Int) ) (!  (=> (and (and (and (and (not (= i_28 i_28_2)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_28)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_28_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17098| res i_28) (|Seq#Index_17098| res i_28_2))))
 :qid |stdinbpl.2436:17|
 :skolemid |227|
 :pattern ( (neverTriggered9 i_28) (neverTriggered9 i_28_2))
))) (=> (forall ((i_28@@0 Int) (i_28_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_28@@0 i_28_2@@0)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_28@@0)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_28_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17098| res i_28@@0) (|Seq#Index_17098| res i_28_2@@0))))
 :qid |stdinbpl.2436:17|
 :skolemid |227|
 :pattern ( (neverTriggered9 i_28@@0) (neverTriggered9 i_28_2@@0))
)) (and (=> (= (ControlFlow 0 125) (- 0 126)) (forall ((i_28@@1 Int) ) (!  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_28@@1) (>= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@16) (|Seq#Index_17098| res i_28@@1) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.2443:17|
 :skolemid |228|
 :pattern ( (|Seq#Index_17098| res i_28@@1))
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_28@@1))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_28@@1))
 :pattern ( (|Seq#Index_17098| res i_28@@1))
))) (=> (forall ((i_28@@2 Int) ) (!  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_28@@2) (>= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@16) (|Seq#Index_17098| res i_28@@2) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.2443:17|
 :skolemid |228|
 :pattern ( (|Seq#Index_17098| res i_28@@2))
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_28@@2))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_28@@2))
 :pattern ( (|Seq#Index_17098| res i_28@@2))
)) (=> (forall ((i_28@@3 Int) ) (!  (=> (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_28@@3) (< NoPerm FullPerm)) (and (qpRange9 (|Seq#Index_17098| res i_28@@3)) (= (invRecv9 (|Seq#Index_17098| res i_28@@3)) i_28@@3)))
 :qid |stdinbpl.2449:22|
 :skolemid |229|
 :pattern ( (|Seq#Index_17098| res i_28@@3))
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_28@@3))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_28@@3))
 :pattern ( (|Seq#Index_17098| res i_28@@3))
)) (=> (and (forall ((o_9@@97 T@Ref) ) (!  (=> (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) (invRecv9 o_9@@97)) (and (< NoPerm FullPerm) (qpRange9 o_9@@97))) (= (|Seq#Index_17098| res (invRecv9 o_9@@97)) o_9@@97))
 :qid |stdinbpl.2453:22|
 :skolemid |230|
 :pattern ( (invRecv9 o_9@@97))
)) (forall ((o_9@@98 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) (invRecv9 o_9@@98)) (and (< NoPerm FullPerm) (qpRange9 o_9@@98))) (and (= (|Seq#Index_17098| res (invRecv9 o_9@@98)) o_9@@98) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@17) o_9@@98 Ref__Integer_value) (- (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@16) o_9@@98 Ref__Integer_value) FullPerm)))) (=> (not (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) (invRecv9 o_9@@98)) (and (< NoPerm FullPerm) (qpRange9 o_9@@98)))) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@17) o_9@@98 Ref__Integer_value) (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@16) o_9@@98 Ref__Integer_value))))
 :qid |stdinbpl.2459:22|
 :skolemid |231|
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@17) o_9@@98 Ref__Integer_value))
))) (=> (and (and (and (and (forall ((o_9@@99 T@Ref) (f_5@@69 T@Field_25262_53) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@16) o_9@@99 f_5@@69) (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@17) o_9@@99 f_5@@69)))
 :qid |stdinbpl.2465:29|
 :skolemid |232|
 :pattern ( (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@17) o_9@@99 f_5@@69))
)) (forall ((o_9@@100 T@Ref) (f_5@@70 T@Field_25275_25276) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@16) o_9@@100 f_5@@70) (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@17) o_9@@100 f_5@@70)))
 :qid |stdinbpl.2465:29|
 :skolemid |232|
 :pattern ( (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@17) o_9@@100 f_5@@70))
))) (forall ((o_9@@101 T@Ref) (f_5@@71 T@Field_31327_3562) ) (!  (=> (not (= f_5@@71 Ref__Integer_value)) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@16) o_9@@101 f_5@@71) (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@17) o_9@@101 f_5@@71)))
 :qid |stdinbpl.2465:29|
 :skolemid |232|
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@17) o_9@@101 f_5@@71))
))) (forall ((o_9@@102 T@Ref) (f_5@@72 T@Field_17088_72965) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@16) o_9@@102 f_5@@72) (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@17) o_9@@102 f_5@@72)))
 :qid |stdinbpl.2465:29|
 :skolemid |232|
 :pattern ( (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@17) o_9@@102 f_5@@72))
))) (forall ((o_9@@103 T@Ref) (f_5@@73 T@Field_17088_73098) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@16) o_9@@103 f_5@@73) (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@17) o_9@@103 f_5@@73)))
 :qid |stdinbpl.2465:29|
 :skolemid |232|
 :pattern ( (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@17) o_9@@103 f_5@@73))
))) (and (and (=> (= (ControlFlow 0 125) 124) anon242_Else_correct) (=> (= (ControlFlow 0 125) 106) anon243_Then_correct)) (=> (= (ControlFlow 0 125) 108) anon243_Else_correct))))))))))))))))))))))))))))))))
(let ((anon149_correct true))
(let ((anon241_Else_correct  (=> (and (not (and (<= 0 i_97) (and (= (mod i_97 2) 0) (< i_97 (|Seq#Length_17098| res))))) (= (ControlFlow 0 104) 101)) anon149_correct)))
(let ((anon241_Then_correct  (=> (and (<= 0 i_97) (and (= (mod i_97 2) 0) (< i_97 (|Seq#Length_17098| res)))) (and (=> (= (ControlFlow 0 102) (- 0 103)) (= (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| res i_97) Ref__Integer_value) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| a_2 (div i_97 2)) Ref__Integer_value))) (=> (= (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| res i_97) Ref__Integer_value) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| a_2 (div i_97 2)) Ref__Integer_value)) (=> (= (ControlFlow 0 102) 101) anon149_correct))))))
(let ((anon145_correct true))
(let ((anon239_Else_correct  (=> (and (not (and (<= 0 i_53) (and (= (mod i_53 2) 0) (< i_53 (|Seq#Length_17098| res))))) (= (ControlFlow 0 100) 92)) anon145_correct)))
(let ((anon239_Then_correct  (=> (and (<= 0 i_53) (and (= (mod i_53 2) 0) (< i_53 (|Seq#Length_17098| res)))) (and (=> (= (ControlFlow 0 93) (- 0 99)) (>= i_53 0)) (=> (>= i_53 0) (and (=> (= (ControlFlow 0 93) (- 0 98)) (< i_53 (|Seq#Length_17098| res))) (=> (< i_53 (|Seq#Length_17098| res)) (and (=> (= (ControlFlow 0 93) (- 0 97)) (HasDirectPerm_17088_3577 QPMask@14 (|Seq#Index_17098| res i_53) Ref__Integer_value)) (=> (HasDirectPerm_17088_3577 QPMask@14 (|Seq#Index_17098| res i_53) Ref__Integer_value) (and (=> (= (ControlFlow 0 93) (- 0 96)) (>= (div i_53 2) 0)) (=> (>= (div i_53 2) 0) (and (=> (= (ControlFlow 0 93) (- 0 95)) (< (div i_53 2) (|Seq#Length_17098| a_2))) (=> (< (div i_53 2) (|Seq#Length_17098| a_2)) (and (=> (= (ControlFlow 0 93) (- 0 94)) (HasDirectPerm_17088_3577 QPMask@14 (|Seq#Index_17098| a_2 (div i_53 2)) Ref__Integer_value)) (=> (HasDirectPerm_17088_3577 QPMask@14 (|Seq#Index_17098| a_2 (div i_53 2)) Ref__Integer_value) (=> (= (ControlFlow 0 93) 92) anon145_correct))))))))))))))))
(let ((anon236_Else_correct  (=> (and (forall ((i_95_1 Int) ) (!  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (div (|Seq#Length_17098| res) 2)) i_95_1) (= (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| res (+ (* 2 i_95_1) 1)) Ref__Integer_value) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| b_24 i_95_1) Ref__Integer_value)))
 :qid |stdinbpl.2294:20|
 :skolemid |213|
 :pattern ( (|Seq#Index_17098| b_24 i_95_1))
)) (state ExhaleHeap@0 QPMask@14)) (and (and (and (and (=> (= (ControlFlow 0 135) 125) anon240_Else_correct) (=> (= (ControlFlow 0 135) 102) anon241_Then_correct)) (=> (= (ControlFlow 0 135) 104) anon241_Else_correct)) (=> (= (ControlFlow 0 135) 93) anon239_Then_correct)) (=> (= (ControlFlow 0 135) 100) anon239_Else_correct)))))
(let ((anon141_correct true))
(let ((anon237_Else_correct  (=> (and (not (|Seq#Contains_3440| (|Seq#Range| 0 (div (|Seq#Length_17098| res) 2)) i_94)) (= (ControlFlow 0 91) 88)) anon141_correct)))
(let ((anon237_Then_correct  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (div (|Seq#Length_17098| res) 2)) i_94) (and (=> (= (ControlFlow 0 89) (- 0 90)) (= (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| res (+ (* 2 i_94) 1)) Ref__Integer_value) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| b_24 i_94) Ref__Integer_value))) (=> (= (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| res (+ (* 2 i_94) 1)) Ref__Integer_value) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| b_24 i_94) Ref__Integer_value)) (=> (= (ControlFlow 0 89) 88) anon141_correct))))))
(let ((anon137_correct true))
(let ((anon235_Else_correct  (=> (and (not (|Seq#Contains_3440| (|Seq#Range| 0 (div (|Seq#Length_17098| res) 2)) i_51)) (= (ControlFlow 0 87) 79)) anon137_correct)))
(let ((anon235_Then_correct  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (div (|Seq#Length_17098| res) 2)) i_51) (and (=> (= (ControlFlow 0 80) (- 0 86)) (>= (+ (* 2 i_51) 1) 0)) (=> (>= (+ (* 2 i_51) 1) 0) (and (=> (= (ControlFlow 0 80) (- 0 85)) (< (+ (* 2 i_51) 1) (|Seq#Length_17098| res))) (=> (< (+ (* 2 i_51) 1) (|Seq#Length_17098| res)) (and (=> (= (ControlFlow 0 80) (- 0 84)) (HasDirectPerm_17088_3577 QPMask@14 (|Seq#Index_17098| res (+ (* 2 i_51) 1)) Ref__Integer_value)) (=> (HasDirectPerm_17088_3577 QPMask@14 (|Seq#Index_17098| res (+ (* 2 i_51) 1)) Ref__Integer_value) (and (=> (= (ControlFlow 0 80) (- 0 83)) (>= i_51 0)) (=> (>= i_51 0) (and (=> (= (ControlFlow 0 80) (- 0 82)) (< i_51 (|Seq#Length_17098| b_24))) (=> (< i_51 (|Seq#Length_17098| b_24)) (and (=> (= (ControlFlow 0 80) (- 0 81)) (HasDirectPerm_17088_3577 QPMask@14 (|Seq#Index_17098| b_24 i_51) Ref__Integer_value)) (=> (HasDirectPerm_17088_3577 QPMask@14 (|Seq#Index_17098| b_24 i_51) Ref__Integer_value) (=> (= (ControlFlow 0 80) 79) anon137_correct))))))))))))))))
(let ((anon232_Else_correct  (=> (and (forall ((i_92_1 Int) ) (!  (=> (and (<= 0 i_92_1) (and (= (mod i_92_1 2) 1) (< i_92_1 (|Seq#Length_17098| res)))) (= (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| res i_92_1) Ref__Integer_value) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| b_24 (div i_92_1 2)) Ref__Integer_value)))
 :qid |stdinbpl.2256:20|
 :skolemid |212|
 :pattern ( (|Seq#Index_17098| res i_92_1))
)) (state ExhaleHeap@0 QPMask@14)) (and (and (and (and (=> (= (ControlFlow 0 136) 135) anon236_Else_correct) (=> (= (ControlFlow 0 136) 89) anon237_Then_correct)) (=> (= (ControlFlow 0 136) 91) anon237_Else_correct)) (=> (= (ControlFlow 0 136) 80) anon235_Then_correct)) (=> (= (ControlFlow 0 136) 87) anon235_Else_correct)))))
(let ((anon133_correct true))
(let ((anon233_Else_correct  (=> (and (not (and (<= 0 i_91) (and (= (mod i_91 2) 1) (< i_91 (|Seq#Length_17098| res))))) (= (ControlFlow 0 78) 75)) anon133_correct)))
(let ((anon233_Then_correct  (=> (and (<= 0 i_91) (and (= (mod i_91 2) 1) (< i_91 (|Seq#Length_17098| res)))) (and (=> (= (ControlFlow 0 76) (- 0 77)) (= (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| res i_91) Ref__Integer_value) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| b_24 (div i_91 2)) Ref__Integer_value))) (=> (= (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| res i_91) Ref__Integer_value) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| b_24 (div i_91 2)) Ref__Integer_value)) (=> (= (ControlFlow 0 76) 75) anon133_correct))))))
(let ((anon129_correct true))
(let ((anon231_Else_correct  (=> (and (not (and (<= 0 i_42) (and (= (mod i_42 2) 1) (< i_42 (|Seq#Length_17098| res))))) (= (ControlFlow 0 74) 66)) anon129_correct)))
(let ((anon231_Then_correct  (=> (and (<= 0 i_42) (and (= (mod i_42 2) 1) (< i_42 (|Seq#Length_17098| res)))) (and (=> (= (ControlFlow 0 67) (- 0 73)) (>= i_42 0)) (=> (>= i_42 0) (and (=> (= (ControlFlow 0 67) (- 0 72)) (< i_42 (|Seq#Length_17098| res))) (=> (< i_42 (|Seq#Length_17098| res)) (and (=> (= (ControlFlow 0 67) (- 0 71)) (HasDirectPerm_17088_3577 QPMask@14 (|Seq#Index_17098| res i_42) Ref__Integer_value)) (=> (HasDirectPerm_17088_3577 QPMask@14 (|Seq#Index_17098| res i_42) Ref__Integer_value) (and (=> (= (ControlFlow 0 67) (- 0 70)) (>= (div i_42 2) 0)) (=> (>= (div i_42 2) 0) (and (=> (= (ControlFlow 0 67) (- 0 69)) (< (div i_42 2) (|Seq#Length_17098| b_24))) (=> (< (div i_42 2) (|Seq#Length_17098| b_24)) (and (=> (= (ControlFlow 0 67) (- 0 68)) (HasDirectPerm_17088_3577 QPMask@14 (|Seq#Index_17098| b_24 (div i_42 2)) Ref__Integer_value)) (=> (HasDirectPerm_17088_3577 QPMask@14 (|Seq#Index_17098| b_24 (div i_42 2)) Ref__Integer_value) (=> (= (ControlFlow 0 67) 66) anon129_correct))))))))))))))))
(let ((anon228_Else_correct  (=> (and (forall ((i_89_1 Int) ) (!  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (div (|Seq#Length_17098| res) 2)) i_89_1) (= (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| res (* 2 i_89_1)) Ref__Integer_value) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| a_2 i_89_1) Ref__Integer_value)))
 :qid |stdinbpl.2218:20|
 :skolemid |211|
 :pattern ( (|Seq#Index_17098| a_2 i_89_1))
)) (state ExhaleHeap@0 QPMask@14)) (and (and (and (and (=> (= (ControlFlow 0 137) 136) anon232_Else_correct) (=> (= (ControlFlow 0 137) 76) anon233_Then_correct)) (=> (= (ControlFlow 0 137) 78) anon233_Else_correct)) (=> (= (ControlFlow 0 137) 67) anon231_Then_correct)) (=> (= (ControlFlow 0 137) 74) anon231_Else_correct)))))
(let ((anon125_correct true))
(let ((anon229_Else_correct  (=> (and (not (|Seq#Contains_3440| (|Seq#Range| 0 (div (|Seq#Length_17098| res) 2)) i_88)) (= (ControlFlow 0 65) 62)) anon125_correct)))
(let ((anon229_Then_correct  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (div (|Seq#Length_17098| res) 2)) i_88) (and (=> (= (ControlFlow 0 63) (- 0 64)) (= (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| res (* 2 i_88)) Ref__Integer_value) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| a_2 i_88) Ref__Integer_value))) (=> (= (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| res (* 2 i_88)) Ref__Integer_value) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| a_2 i_88) Ref__Integer_value)) (=> (= (ControlFlow 0 63) 62) anon125_correct))))))
(let ((anon121_correct true))
(let ((anon227_Else_correct  (=> (and (not (|Seq#Contains_3440| (|Seq#Range| 0 (div (|Seq#Length_17098| res) 2)) i_16)) (= (ControlFlow 0 61) 53)) anon121_correct)))
(let ((anon227_Then_correct  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (div (|Seq#Length_17098| res) 2)) i_16) (and (=> (= (ControlFlow 0 54) (- 0 60)) (>= (* 2 i_16) 0)) (=> (>= (* 2 i_16) 0) (and (=> (= (ControlFlow 0 54) (- 0 59)) (< (* 2 i_16) (|Seq#Length_17098| res))) (=> (< (* 2 i_16) (|Seq#Length_17098| res)) (and (=> (= (ControlFlow 0 54) (- 0 58)) (HasDirectPerm_17088_3577 QPMask@14 (|Seq#Index_17098| res (* 2 i_16)) Ref__Integer_value)) (=> (HasDirectPerm_17088_3577 QPMask@14 (|Seq#Index_17098| res (* 2 i_16)) Ref__Integer_value) (and (=> (= (ControlFlow 0 54) (- 0 57)) (>= i_16 0)) (=> (>= i_16 0) (and (=> (= (ControlFlow 0 54) (- 0 56)) (< i_16 (|Seq#Length_17098| a_2))) (=> (< i_16 (|Seq#Length_17098| a_2)) (and (=> (= (ControlFlow 0 54) (- 0 55)) (HasDirectPerm_17088_3577 QPMask@14 (|Seq#Index_17098| a_2 i_16) Ref__Integer_value)) (=> (HasDirectPerm_17088_3577 QPMask@14 (|Seq#Index_17098| a_2 i_16) Ref__Integer_value) (=> (= (ControlFlow 0 54) 53) anon121_correct))))))))))))))))
(let ((anon217_Else_correct  (=> (not (< k@0 (|Seq#Length_17098| res))) (=> (and (state ExhaleHeap@0 QPMask@5) (<= 0 k@0)) (=> (and (and (= (mod k@0 2) 0) (<= k@0 (|Seq#Length_17098| res))) (and (= (|Seq#Length_17098| a_2) (|Seq#Length_17098| b_24)) (= (|Seq#Length_17098| res) (* 2 (|Seq#Length_17098| a_2))))) (and (=> (= (ControlFlow 0 138) (- 0 143)) (forall ((i_80 Int) (i_80_1 Int) ) (!  (=> (and (and (and (and (not (= i_80 i_80_1)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_80)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_80_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17098| a_2 i_80) (|Seq#Index_17098| a_2 i_80_1))))
 :qid |stdinbpl.2053:17|
 :skolemid |189|
))) (=> (forall ((i_80@@0 Int) (i_80_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_80@@0 i_80_1@@0)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_80@@0)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_80_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17098| a_2 i_80@@0) (|Seq#Index_17098| a_2 i_80_1@@0))))
 :qid |stdinbpl.2053:17|
 :skolemid |189|
)) (=> (and (and (forall ((i_80@@1 Int) ) (!  (=> (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_80@@1) (< NoPerm FullPerm)) (and (qpRange22 (|Seq#Index_17098| a_2 i_80@@1)) (= (invRecv22 (|Seq#Index_17098| a_2 i_80@@1)) i_80@@1)))
 :qid |stdinbpl.2059:24|
 :skolemid |190|
 :pattern ( (|Seq#Index_17098| a_2 i_80@@1))
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_80@@1))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_80@@1))
 :pattern ( (|Seq#Index_17098| a_2 i_80@@1))
)) (forall ((o_9@@104 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) (invRecv22 o_9@@104)) (< NoPerm FullPerm)) (qpRange22 o_9@@104)) (= (|Seq#Index_17098| a_2 (invRecv22 o_9@@104)) o_9@@104))
 :qid |stdinbpl.2063:24|
 :skolemid |191|
 :pattern ( (invRecv22 o_9@@104))
))) (and (forall ((i_80@@2 Int) ) (!  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_80@@2) (not (= (|Seq#Index_17098| a_2 i_80@@2) null)))
 :qid |stdinbpl.2069:24|
 :skolemid |192|
 :pattern ( (|Seq#Index_17098| a_2 i_80@@2))
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_80@@2))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_80@@2))
 :pattern ( (|Seq#Index_17098| a_2 i_80@@2))
)) (forall ((o_9@@105 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) (invRecv22 o_9@@105)) (< NoPerm FullPerm)) (qpRange22 o_9@@105)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_17098| a_2 (invRecv22 o_9@@105)) o_9@@105)) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@12) o_9@@105 Ref__Integer_value) (+ (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@5) o_9@@105 Ref__Integer_value) FullPerm)))) (=> (not (and (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) (invRecv22 o_9@@105)) (< NoPerm FullPerm)) (qpRange22 o_9@@105))) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@12) o_9@@105 Ref__Integer_value) (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@5) o_9@@105 Ref__Integer_value))))
 :qid |stdinbpl.2075:24|
 :skolemid |193|
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@12) o_9@@105 Ref__Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_9@@106 T@Ref) (f_5@@74 T@Field_25262_53) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@5) o_9@@106 f_5@@74) (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@12) o_9@@106 f_5@@74)))
 :qid |stdinbpl.2079:31|
 :skolemid |194|
 :pattern ( (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@5) o_9@@106 f_5@@74))
 :pattern ( (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@12) o_9@@106 f_5@@74))
)) (forall ((o_9@@107 T@Ref) (f_5@@75 T@Field_25275_25276) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@5) o_9@@107 f_5@@75) (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@12) o_9@@107 f_5@@75)))
 :qid |stdinbpl.2079:31|
 :skolemid |194|
 :pattern ( (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@5) o_9@@107 f_5@@75))
 :pattern ( (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@12) o_9@@107 f_5@@75))
))) (forall ((o_9@@108 T@Ref) (f_5@@76 T@Field_31327_3562) ) (!  (=> (not (= f_5@@76 Ref__Integer_value)) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@5) o_9@@108 f_5@@76) (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@12) o_9@@108 f_5@@76)))
 :qid |stdinbpl.2079:31|
 :skolemid |194|
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@5) o_9@@108 f_5@@76))
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@12) o_9@@108 f_5@@76))
))) (forall ((o_9@@109 T@Ref) (f_5@@77 T@Field_17088_72965) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@5) o_9@@109 f_5@@77) (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@12) o_9@@109 f_5@@77)))
 :qid |stdinbpl.2079:31|
 :skolemid |194|
 :pattern ( (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@5) o_9@@109 f_5@@77))
 :pattern ( (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@12) o_9@@109 f_5@@77))
))) (forall ((o_9@@110 T@Ref) (f_5@@78 T@Field_17088_73098) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@5) o_9@@110 f_5@@78) (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@12) o_9@@110 f_5@@78)))
 :qid |stdinbpl.2079:31|
 :skolemid |194|
 :pattern ( (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@5) o_9@@110 f_5@@78))
 :pattern ( (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@12) o_9@@110 f_5@@78))
))) (state ExhaleHeap@0 QPMask@12)) (and (=> (= (ControlFlow 0 138) (- 0 142)) (forall ((i_81 Int) (i_81_1 Int) ) (!  (=> (and (and (and (and (not (= i_81 i_81_1)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_81)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_81_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17098| b_24 i_81) (|Seq#Index_17098| b_24 i_81_1))))
 :qid |stdinbpl.2087:17|
 :skolemid |195|
))) (=> (forall ((i_81@@0 Int) (i_81_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_81@@0 i_81_1@@0)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_81@@0)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_81_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17098| b_24 i_81@@0) (|Seq#Index_17098| b_24 i_81_1@@0))))
 :qid |stdinbpl.2087:17|
 :skolemid |195|
)) (=> (and (and (forall ((i_81@@1 Int) ) (!  (=> (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_81@@1) (< NoPerm FullPerm)) (and (qpRange23 (|Seq#Index_17098| b_24 i_81@@1)) (= (invRecv23 (|Seq#Index_17098| b_24 i_81@@1)) i_81@@1)))
 :qid |stdinbpl.2093:24|
 :skolemid |196|
 :pattern ( (|Seq#Index_17098| b_24 i_81@@1))
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_81@@1))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_81@@1))
 :pattern ( (|Seq#Index_17098| b_24 i_81@@1))
)) (forall ((o_9@@111 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) (invRecv23 o_9@@111)) (< NoPerm FullPerm)) (qpRange23 o_9@@111)) (= (|Seq#Index_17098| b_24 (invRecv23 o_9@@111)) o_9@@111))
 :qid |stdinbpl.2097:24|
 :skolemid |197|
 :pattern ( (invRecv23 o_9@@111))
))) (and (forall ((i_81@@2 Int) ) (!  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_81@@2) (not (= (|Seq#Index_17098| b_24 i_81@@2) null)))
 :qid |stdinbpl.2103:24|
 :skolemid |198|
 :pattern ( (|Seq#Index_17098| b_24 i_81@@2))
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_81@@2))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_81@@2))
 :pattern ( (|Seq#Index_17098| b_24 i_81@@2))
)) (forall ((o_9@@112 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) (invRecv23 o_9@@112)) (< NoPerm FullPerm)) (qpRange23 o_9@@112)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_17098| b_24 (invRecv23 o_9@@112)) o_9@@112)) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@13) o_9@@112 Ref__Integer_value) (+ (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@12) o_9@@112 Ref__Integer_value) FullPerm)))) (=> (not (and (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) (invRecv23 o_9@@112)) (< NoPerm FullPerm)) (qpRange23 o_9@@112))) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@13) o_9@@112 Ref__Integer_value) (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@12) o_9@@112 Ref__Integer_value))))
 :qid |stdinbpl.2109:24|
 :skolemid |199|
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@13) o_9@@112 Ref__Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_9@@113 T@Ref) (f_5@@79 T@Field_25262_53) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@12) o_9@@113 f_5@@79) (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@13) o_9@@113 f_5@@79)))
 :qid |stdinbpl.2113:31|
 :skolemid |200|
 :pattern ( (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@12) o_9@@113 f_5@@79))
 :pattern ( (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@13) o_9@@113 f_5@@79))
)) (forall ((o_9@@114 T@Ref) (f_5@@80 T@Field_25275_25276) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@12) o_9@@114 f_5@@80) (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@13) o_9@@114 f_5@@80)))
 :qid |stdinbpl.2113:31|
 :skolemid |200|
 :pattern ( (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@12) o_9@@114 f_5@@80))
 :pattern ( (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@13) o_9@@114 f_5@@80))
))) (forall ((o_9@@115 T@Ref) (f_5@@81 T@Field_31327_3562) ) (!  (=> (not (= f_5@@81 Ref__Integer_value)) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@12) o_9@@115 f_5@@81) (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@13) o_9@@115 f_5@@81)))
 :qid |stdinbpl.2113:31|
 :skolemid |200|
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@12) o_9@@115 f_5@@81))
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@13) o_9@@115 f_5@@81))
))) (forall ((o_9@@116 T@Ref) (f_5@@82 T@Field_17088_72965) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@12) o_9@@116 f_5@@82) (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@13) o_9@@116 f_5@@82)))
 :qid |stdinbpl.2113:31|
 :skolemid |200|
 :pattern ( (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@12) o_9@@116 f_5@@82))
 :pattern ( (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@13) o_9@@116 f_5@@82))
))) (forall ((o_9@@117 T@Ref) (f_5@@83 T@Field_17088_73098) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@12) o_9@@117 f_5@@83) (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@13) o_9@@117 f_5@@83)))
 :qid |stdinbpl.2113:31|
 :skolemid |200|
 :pattern ( (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@12) o_9@@117 f_5@@83))
 :pattern ( (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@13) o_9@@117 f_5@@83))
))) (state ExhaleHeap@0 QPMask@13)) (and (=> (= (ControlFlow 0 138) (- 0 141)) (forall ((i_82 Int) (i_82_1 Int) ) (!  (=> (and (and (and (and (not (= i_82 i_82_1)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_82)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_82_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17098| res i_82) (|Seq#Index_17098| res i_82_1))))
 :qid |stdinbpl.2121:17|
 :skolemid |201|
))) (=> (forall ((i_82@@0 Int) (i_82_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_82@@0 i_82_1@@0)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_82@@0)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_82_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17098| res i_82@@0) (|Seq#Index_17098| res i_82_1@@0))))
 :qid |stdinbpl.2121:17|
 :skolemid |201|
)) (=> (and (and (forall ((i_82@@1 Int) ) (!  (=> (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_82@@1) (< NoPerm FullPerm)) (and (qpRange24 (|Seq#Index_17098| res i_82@@1)) (= (invRecv24 (|Seq#Index_17098| res i_82@@1)) i_82@@1)))
 :qid |stdinbpl.2127:24|
 :skolemid |202|
 :pattern ( (|Seq#Index_17098| res i_82@@1))
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_82@@1))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_82@@1))
 :pattern ( (|Seq#Index_17098| res i_82@@1))
)) (forall ((o_9@@118 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) (invRecv24 o_9@@118)) (< NoPerm FullPerm)) (qpRange24 o_9@@118)) (= (|Seq#Index_17098| res (invRecv24 o_9@@118)) o_9@@118))
 :qid |stdinbpl.2131:24|
 :skolemid |203|
 :pattern ( (invRecv24 o_9@@118))
))) (and (forall ((i_82@@2 Int) ) (!  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_82@@2) (not (= (|Seq#Index_17098| res i_82@@2) null)))
 :qid |stdinbpl.2137:24|
 :skolemid |204|
 :pattern ( (|Seq#Index_17098| res i_82@@2))
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_82@@2))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_82@@2))
 :pattern ( (|Seq#Index_17098| res i_82@@2))
)) (forall ((o_9@@119 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) (invRecv24 o_9@@119)) (< NoPerm FullPerm)) (qpRange24 o_9@@119)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_17098| res (invRecv24 o_9@@119)) o_9@@119)) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@14) o_9@@119 Ref__Integer_value) (+ (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@13) o_9@@119 Ref__Integer_value) FullPerm)))) (=> (not (and (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) (invRecv24 o_9@@119)) (< NoPerm FullPerm)) (qpRange24 o_9@@119))) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@14) o_9@@119 Ref__Integer_value) (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@13) o_9@@119 Ref__Integer_value))))
 :qid |stdinbpl.2143:24|
 :skolemid |205|
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@14) o_9@@119 Ref__Integer_value))
)))) (=> (and (and (and (and (and (and (and (forall ((o_9@@120 T@Ref) (f_5@@84 T@Field_25262_53) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@13) o_9@@120 f_5@@84) (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@14) o_9@@120 f_5@@84)))
 :qid |stdinbpl.2147:31|
 :skolemid |206|
 :pattern ( (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@13) o_9@@120 f_5@@84))
 :pattern ( (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@14) o_9@@120 f_5@@84))
)) (forall ((o_9@@121 T@Ref) (f_5@@85 T@Field_25275_25276) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@13) o_9@@121 f_5@@85) (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@14) o_9@@121 f_5@@85)))
 :qid |stdinbpl.2147:31|
 :skolemid |206|
 :pattern ( (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@13) o_9@@121 f_5@@85))
 :pattern ( (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@14) o_9@@121 f_5@@85))
))) (forall ((o_9@@122 T@Ref) (f_5@@86 T@Field_31327_3562) ) (!  (=> (not (= f_5@@86 Ref__Integer_value)) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@13) o_9@@122 f_5@@86) (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@14) o_9@@122 f_5@@86)))
 :qid |stdinbpl.2147:31|
 :skolemid |206|
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@13) o_9@@122 f_5@@86))
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@14) o_9@@122 f_5@@86))
))) (forall ((o_9@@123 T@Ref) (f_5@@87 T@Field_17088_72965) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@13) o_9@@123 f_5@@87) (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@14) o_9@@123 f_5@@87)))
 :qid |stdinbpl.2147:31|
 :skolemid |206|
 :pattern ( (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@13) o_9@@123 f_5@@87))
 :pattern ( (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@14) o_9@@123 f_5@@87))
))) (forall ((o_9@@124 T@Ref) (f_5@@88 T@Field_17088_73098) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@13) o_9@@124 f_5@@88) (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@14) o_9@@124 f_5@@88)))
 :qid |stdinbpl.2147:31|
 :skolemid |206|
 :pattern ( (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@13) o_9@@124 f_5@@88))
 :pattern ( (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@14) o_9@@124 f_5@@88))
))) (state ExhaleHeap@0 QPMask@14)) (and (forall ((i_83 Int) ) (!  (=> (and (<= 0 i_83) (and (= (mod i_83 2) 0) (< i_83 k@0))) (= (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| res i_83) Ref__Integer_value) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| a_2 (div i_83 2)) Ref__Integer_value)))
 :qid |stdinbpl.2153:22|
 :skolemid |207|
 :pattern ( (|Seq#Index_17098| res i_83))
)) (forall ((i_84 Int) ) (!  (=> (and (<= 0 i_84) (and (= (mod i_84 2) 1) (< i_84 k@0))) (= (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| res i_84) Ref__Integer_value) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| b_24 (div i_84 2)) Ref__Integer_value)))
 :qid |stdinbpl.2157:22|
 :skolemid |208|
 :pattern ( (|Seq#Index_17098| res i_84))
)))) (and (and (forall ((i_85 Int) ) (!  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (div k@0 2)) i_85) (= (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| res (* 2 i_85)) Ref__Integer_value) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| a_2 i_85) Ref__Integer_value)))
 :qid |stdinbpl.2161:22|
 :skolemid |209|
 :pattern ( (|Seq#Index_17098| a_2 i_85))
)) (forall ((i_86 Int) ) (!  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (div k@0 2)) i_86) (= (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| res (+ (* 2 i_86) 1)) Ref__Integer_value) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| ExhaleHeap@0) (|Seq#Index_17098| b_24 i_86) Ref__Integer_value)))
 :qid |stdinbpl.2165:22|
 :skolemid |210|
 :pattern ( (|Seq#Index_17098| b_24 i_86))
))) (and (state ExhaleHeap@0 QPMask@14) (state ExhaleHeap@0 QPMask@14)))) (and (=> (= (ControlFlow 0 138) (- 0 140)) (= k@0 (|Seq#Length_17098| res))) (=> (= k@0 (|Seq#Length_17098| res)) (=> (state ExhaleHeap@0 QPMask@14) (and (=> (= (ControlFlow 0 138) (- 0 139)) (= (div (|Seq#Length_17098| res) 2) (div k@0 2))) (=> (= (div (|Seq#Length_17098| res) 2) (div k@0 2)) (=> (state ExhaleHeap@0 QPMask@14) (and (and (and (and (=> (= (ControlFlow 0 138) 137) anon228_Else_correct) (=> (= (ControlFlow 0 138) 63) anon229_Then_correct)) (=> (= (ControlFlow 0 138) 65) anon229_Else_correct)) (=> (= (ControlFlow 0 138) 54) anon227_Then_correct)) (=> (= (ControlFlow 0 138) 61) anon227_Else_correct)))))))))))))))))))))))))
(let ((anon200_Else_correct  (=> (and (forall ((i_47_1 Int) ) (!  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (div 0 2)) i_47_1) (= (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| Heap@@17) (|Seq#Index_17098| res (+ (* 2 i_47_1) 1)) Ref__Integer_value) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| Heap@@17) (|Seq#Index_17098| b_24 i_47_1) Ref__Integer_value)))
 :qid |stdinbpl.1365:24|
 :skolemid |122|
 :pattern ( (|Seq#Index_17098| b_24 i_47_1))
)) (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@0 QPMask@5)) (=> (and (and (select (|PolymorphicMapType_25202_16850_53#PolymorphicMapType_25202| ExhaleHeap@0) __flatten_9@0 $allocated) (select (|PolymorphicMapType_25202_16850_53#PolymorphicMapType_25202| ExhaleHeap@0) __flatten_8@0 $allocated)) (and (select (|PolymorphicMapType_25202_16850_53#PolymorphicMapType_25202| ExhaleHeap@0) __flatten_6@0 $allocated) (select (|PolymorphicMapType_25202_16850_53#PolymorphicMapType_25202| ExhaleHeap@0) __flatten_5@0 $allocated))) (and (and (=> (= (ControlFlow 0 253) 252) anon202_Then_correct) (=> (= (ControlFlow 0 253) 164) anon217_Then_correct)) (=> (= (ControlFlow 0 253) 138) anon217_Else_correct))))))
(let ((anon69_correct true))
(let ((anon201_Else_correct  (=> (and (not (|Seq#Contains_3440| (|Seq#Range| 0 (div 0 2)) i_46)) (= (ControlFlow 0 52) 49)) anon69_correct)))
(let ((anon201_Then_correct  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (div 0 2)) i_46) (and (=> (= (ControlFlow 0 50) (- 0 51)) (= (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| Heap@@17) (|Seq#Index_17098| res (+ (* 2 i_46) 1)) Ref__Integer_value) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| Heap@@17) (|Seq#Index_17098| b_24 i_46) Ref__Integer_value))) (=> (= (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| Heap@@17) (|Seq#Index_17098| res (+ (* 2 i_46) 1)) Ref__Integer_value) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| Heap@@17) (|Seq#Index_17098| b_24 i_46) Ref__Integer_value)) (=> (= (ControlFlow 0 50) 49) anon69_correct))))))
(let ((anon198_Else_correct  (=> (forall ((i_45_1 Int) ) (!  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (div 0 2)) i_45_1) (= (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| Heap@@17) (|Seq#Index_17098| res (* 2 i_45_1)) Ref__Integer_value) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| Heap@@17) (|Seq#Index_17098| a_2 i_45_1) Ref__Integer_value)))
 :qid |stdinbpl.1354:24|
 :skolemid |121|
 :pattern ( (|Seq#Index_17098| a_2 i_45_1))
)) (and (and (=> (= (ControlFlow 0 254) 253) anon200_Else_correct) (=> (= (ControlFlow 0 254) 50) anon201_Then_correct)) (=> (= (ControlFlow 0 254) 52) anon201_Else_correct)))))
(let ((anon65_correct true))
(let ((anon199_Else_correct  (=> (and (not (|Seq#Contains_3440| (|Seq#Range| 0 (div 0 2)) i_44)) (= (ControlFlow 0 48) 45)) anon65_correct)))
(let ((anon199_Then_correct  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (div 0 2)) i_44) (and (=> (= (ControlFlow 0 46) (- 0 47)) (= (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| Heap@@17) (|Seq#Index_17098| res (* 2 i_44)) Ref__Integer_value) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| Heap@@17) (|Seq#Index_17098| a_2 i_44) Ref__Integer_value))) (=> (= (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| Heap@@17) (|Seq#Index_17098| res (* 2 i_44)) Ref__Integer_value) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| Heap@@17) (|Seq#Index_17098| a_2 i_44) Ref__Integer_value)) (=> (= (ControlFlow 0 46) 45) anon65_correct))))))
(let ((anon196_Else_correct  (=> (forall ((i_43_1_1 Int) ) (!  (=> (and (<= 0 i_43_1_1) (and (= (mod i_43_1_1 2) 1) (< i_43_1_1 0))) (= (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| Heap@@17) (|Seq#Index_17098| res i_43_1_1) Ref__Integer_value) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| Heap@@17) (|Seq#Index_17098| b_24 (div i_43_1_1 2)) Ref__Integer_value)))
 :qid |stdinbpl.1343:24|
 :skolemid |120|
 :pattern ( (|Seq#Index_17098| res i_43_1_1))
)) (and (and (=> (= (ControlFlow 0 255) 254) anon198_Else_correct) (=> (= (ControlFlow 0 255) 46) anon199_Then_correct)) (=> (= (ControlFlow 0 255) 48) anon199_Else_correct)))))
(let ((anon61_correct true))
(let ((anon197_Else_correct  (=> (and (not (and (<= 0 i_42_1) (and (= (mod i_42_1 2) 1) (< i_42_1 0)))) (= (ControlFlow 0 44) 41)) anon61_correct)))
(let ((anon197_Then_correct  (=> (and (<= 0 i_42_1) (and (= (mod i_42_1 2) 1) (< i_42_1 0))) (and (=> (= (ControlFlow 0 42) (- 0 43)) (= (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| Heap@@17) (|Seq#Index_17098| res i_42_1) Ref__Integer_value) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| Heap@@17) (|Seq#Index_17098| b_24 (div i_42_1 2)) Ref__Integer_value))) (=> (= (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| Heap@@17) (|Seq#Index_17098| res i_42_1) Ref__Integer_value) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| Heap@@17) (|Seq#Index_17098| b_24 (div i_42_1 2)) Ref__Integer_value)) (=> (= (ControlFlow 0 42) 41) anon61_correct))))))
(let ((anon194_Else_correct  (=> (forall ((i_41_1 Int) ) (!  (=> (and (<= 0 i_41_1) (and (= (mod i_41_1 2) 0) (< i_41_1 0))) (= (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| Heap@@17) (|Seq#Index_17098| res i_41_1) Ref__Integer_value) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| Heap@@17) (|Seq#Index_17098| a_2 (div i_41_1 2)) Ref__Integer_value)))
 :qid |stdinbpl.1332:24|
 :skolemid |119|
 :pattern ( (|Seq#Index_17098| res i_41_1))
)) (and (and (=> (= (ControlFlow 0 256) 255) anon196_Else_correct) (=> (= (ControlFlow 0 256) 42) anon197_Then_correct)) (=> (= (ControlFlow 0 256) 44) anon197_Else_correct)))))
(let ((anon57_correct true))
(let ((anon195_Else_correct  (=> (and (not (and (<= 0 i_40) (and (= (mod i_40 2) 0) (< i_40 0)))) (= (ControlFlow 0 40) 37)) anon57_correct)))
(let ((anon195_Then_correct  (=> (and (<= 0 i_40) (and (= (mod i_40 2) 0) (< i_40 0))) (and (=> (= (ControlFlow 0 38) (- 0 39)) (= (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| Heap@@17) (|Seq#Index_17098| res i_40) Ref__Integer_value) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| Heap@@17) (|Seq#Index_17098| a_2 (div i_40 2)) Ref__Integer_value))) (=> (= (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| Heap@@17) (|Seq#Index_17098| res i_40) Ref__Integer_value) (select (|PolymorphicMapType_25202_17088_3577#PolymorphicMapType_25202| Heap@@17) (|Seq#Index_17098| a_2 (div i_40 2)) Ref__Integer_value)) (=> (= (ControlFlow 0 38) 37) anon57_correct))))))
(let ((anon179_Else_correct  (=> (select (|PolymorphicMapType_25202_16850_53#PolymorphicMapType_25202| Heap@@17) __flatten_5 $allocated) (=> (and (and (select (|PolymorphicMapType_25202_16850_53#PolymorphicMapType_25202| Heap@@17) __flatten_6 $allocated) (select (|PolymorphicMapType_25202_16850_53#PolymorphicMapType_25202| Heap@@17) __flatten_8 $allocated)) (and (select (|PolymorphicMapType_25202_16850_53#PolymorphicMapType_25202| Heap@@17) __flatten_9 $allocated) (state Heap@@17 QPMask@2))) (and (=> (= (ControlFlow 0 257) (- 0 268)) (<= 0 0)) (=> (<= 0 0) (and (=> (= (ControlFlow 0 257) (- 0 267)) (= (mod 0 2) 0)) (=> (= (mod 0 2) 0) (and (=> (= (ControlFlow 0 257) (- 0 266)) (<= 0 (|Seq#Length_17098| res))) (=> (<= 0 (|Seq#Length_17098| res)) (and (=> (= (ControlFlow 0 257) (- 0 265)) (= (|Seq#Length_17098| a_2) (|Seq#Length_17098| b_24))) (=> (= (|Seq#Length_17098| a_2) (|Seq#Length_17098| b_24)) (and (=> (= (ControlFlow 0 257) (- 0 264)) (= (|Seq#Length_17098| res) (* 2 (|Seq#Length_17098| a_2)))) (=> (= (|Seq#Length_17098| res) (* 2 (|Seq#Length_17098| a_2))) (and (=> (= (ControlFlow 0 257) (- 0 263)) (forall ((i_37 Int) (i_37_1 Int) ) (!  (=> (and (and (and (and (not (= i_37 i_37_1)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_37)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_37_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17098| a_2 i_37) (|Seq#Index_17098| a_2 i_37_1))))
 :qid |stdinbpl.1209:21|
 :skolemid |101|
 :pattern ( (neverTriggered10 i_37) (neverTriggered10 i_37_1))
))) (=> (forall ((i_37@@0 Int) (i_37_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_37@@0 i_37_1@@0)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_37@@0)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_37_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17098| a_2 i_37@@0) (|Seq#Index_17098| a_2 i_37_1@@0))))
 :qid |stdinbpl.1209:21|
 :skolemid |101|
 :pattern ( (neverTriggered10 i_37@@0) (neverTriggered10 i_37_1@@0))
)) (and (=> (= (ControlFlow 0 257) (- 0 262)) (forall ((i_37@@1 Int) ) (!  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_37@@1) (>= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@2) (|Seq#Index_17098| a_2 i_37@@1) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.1216:21|
 :skolemid |102|
 :pattern ( (|Seq#Index_17098| a_2 i_37@@1))
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_37@@1))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_37@@1))
 :pattern ( (|Seq#Index_17098| a_2 i_37@@1))
))) (=> (forall ((i_37@@2 Int) ) (!  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_37@@2) (>= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@2) (|Seq#Index_17098| a_2 i_37@@2) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.1216:21|
 :skolemid |102|
 :pattern ( (|Seq#Index_17098| a_2 i_37@@2))
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_37@@2))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_37@@2))
 :pattern ( (|Seq#Index_17098| a_2 i_37@@2))
)) (=> (forall ((i_37@@3 Int) ) (!  (=> (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_37@@3) (< NoPerm FullPerm)) (and (qpRange10 (|Seq#Index_17098| a_2 i_37@@3)) (= (invRecv10 (|Seq#Index_17098| a_2 i_37@@3)) i_37@@3)))
 :qid |stdinbpl.1222:26|
 :skolemid |103|
 :pattern ( (|Seq#Index_17098| a_2 i_37@@3))
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_37@@3))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_37@@3))
 :pattern ( (|Seq#Index_17098| a_2 i_37@@3))
)) (=> (and (forall ((o_9@@125 T@Ref) ) (!  (=> (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) (invRecv10 o_9@@125)) (and (< NoPerm FullPerm) (qpRange10 o_9@@125))) (= (|Seq#Index_17098| a_2 (invRecv10 o_9@@125)) o_9@@125))
 :qid |stdinbpl.1226:26|
 :skolemid |104|
 :pattern ( (invRecv10 o_9@@125))
)) (forall ((o_9@@126 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) (invRecv10 o_9@@126)) (and (< NoPerm FullPerm) (qpRange10 o_9@@126))) (and (= (|Seq#Index_17098| a_2 (invRecv10 o_9@@126)) o_9@@126) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@3) o_9@@126 Ref__Integer_value) (- (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@2) o_9@@126 Ref__Integer_value) FullPerm)))) (=> (not (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) (invRecv10 o_9@@126)) (and (< NoPerm FullPerm) (qpRange10 o_9@@126)))) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@3) o_9@@126 Ref__Integer_value) (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@2) o_9@@126 Ref__Integer_value))))
 :qid |stdinbpl.1232:26|
 :skolemid |105|
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@3) o_9@@126 Ref__Integer_value))
))) (=> (and (and (and (and (forall ((o_9@@127 T@Ref) (f_5@@89 T@Field_25262_53) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@2) o_9@@127 f_5@@89) (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@3) o_9@@127 f_5@@89)))
 :qid |stdinbpl.1238:33|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@3) o_9@@127 f_5@@89))
)) (forall ((o_9@@128 T@Ref) (f_5@@90 T@Field_25275_25276) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@2) o_9@@128 f_5@@90) (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@3) o_9@@128 f_5@@90)))
 :qid |stdinbpl.1238:33|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@3) o_9@@128 f_5@@90))
))) (forall ((o_9@@129 T@Ref) (f_5@@91 T@Field_31327_3562) ) (!  (=> (not (= f_5@@91 Ref__Integer_value)) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@2) o_9@@129 f_5@@91) (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@3) o_9@@129 f_5@@91)))
 :qid |stdinbpl.1238:33|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@3) o_9@@129 f_5@@91))
))) (forall ((o_9@@130 T@Ref) (f_5@@92 T@Field_17088_72965) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@2) o_9@@130 f_5@@92) (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@3) o_9@@130 f_5@@92)))
 :qid |stdinbpl.1238:33|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@3) o_9@@130 f_5@@92))
))) (forall ((o_9@@131 T@Ref) (f_5@@93 T@Field_17088_73098) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@2) o_9@@131 f_5@@93) (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@3) o_9@@131 f_5@@93)))
 :qid |stdinbpl.1238:33|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@3) o_9@@131 f_5@@93))
))) (and (=> (= (ControlFlow 0 257) (- 0 261)) (forall ((i_38 Int) (i_38_1 Int) ) (!  (=> (and (and (and (and (not (= i_38 i_38_1)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_38)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_38_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17098| b_24 i_38) (|Seq#Index_17098| b_24 i_38_1))))
 :qid |stdinbpl.1250:21|
 :skolemid |107|
 :pattern ( (neverTriggered11 i_38) (neverTriggered11 i_38_1))
))) (=> (forall ((i_38@@0 Int) (i_38_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_38@@0 i_38_1@@0)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_38@@0)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_38_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17098| b_24 i_38@@0) (|Seq#Index_17098| b_24 i_38_1@@0))))
 :qid |stdinbpl.1250:21|
 :skolemid |107|
 :pattern ( (neverTriggered11 i_38@@0) (neverTriggered11 i_38_1@@0))
)) (and (=> (= (ControlFlow 0 257) (- 0 260)) (forall ((i_38@@1 Int) ) (!  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_38@@1) (>= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@3) (|Seq#Index_17098| b_24 i_38@@1) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.1257:21|
 :skolemid |108|
 :pattern ( (|Seq#Index_17098| b_24 i_38@@1))
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_38@@1))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_38@@1))
 :pattern ( (|Seq#Index_17098| b_24 i_38@@1))
))) (=> (forall ((i_38@@2 Int) ) (!  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_38@@2) (>= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@3) (|Seq#Index_17098| b_24 i_38@@2) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.1257:21|
 :skolemid |108|
 :pattern ( (|Seq#Index_17098| b_24 i_38@@2))
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_38@@2))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_38@@2))
 :pattern ( (|Seq#Index_17098| b_24 i_38@@2))
)) (=> (forall ((i_38@@3 Int) ) (!  (=> (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_38@@3) (< NoPerm FullPerm)) (and (qpRange11 (|Seq#Index_17098| b_24 i_38@@3)) (= (invRecv11 (|Seq#Index_17098| b_24 i_38@@3)) i_38@@3)))
 :qid |stdinbpl.1263:26|
 :skolemid |109|
 :pattern ( (|Seq#Index_17098| b_24 i_38@@3))
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_38@@3))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_38@@3))
 :pattern ( (|Seq#Index_17098| b_24 i_38@@3))
)) (=> (and (forall ((o_9@@132 T@Ref) ) (!  (=> (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) (invRecv11 o_9@@132)) (and (< NoPerm FullPerm) (qpRange11 o_9@@132))) (= (|Seq#Index_17098| b_24 (invRecv11 o_9@@132)) o_9@@132))
 :qid |stdinbpl.1267:26|
 :skolemid |110|
 :pattern ( (invRecv11 o_9@@132))
)) (forall ((o_9@@133 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) (invRecv11 o_9@@133)) (and (< NoPerm FullPerm) (qpRange11 o_9@@133))) (and (= (|Seq#Index_17098| b_24 (invRecv11 o_9@@133)) o_9@@133) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@4) o_9@@133 Ref__Integer_value) (- (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@3) o_9@@133 Ref__Integer_value) FullPerm)))) (=> (not (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) (invRecv11 o_9@@133)) (and (< NoPerm FullPerm) (qpRange11 o_9@@133)))) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@4) o_9@@133 Ref__Integer_value) (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@3) o_9@@133 Ref__Integer_value))))
 :qid |stdinbpl.1273:26|
 :skolemid |111|
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@4) o_9@@133 Ref__Integer_value))
))) (=> (and (and (and (and (forall ((o_9@@134 T@Ref) (f_5@@94 T@Field_25262_53) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@3) o_9@@134 f_5@@94) (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@4) o_9@@134 f_5@@94)))
 :qid |stdinbpl.1279:33|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@4) o_9@@134 f_5@@94))
)) (forall ((o_9@@135 T@Ref) (f_5@@95 T@Field_25275_25276) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@3) o_9@@135 f_5@@95) (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@4) o_9@@135 f_5@@95)))
 :qid |stdinbpl.1279:33|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@4) o_9@@135 f_5@@95))
))) (forall ((o_9@@136 T@Ref) (f_5@@96 T@Field_31327_3562) ) (!  (=> (not (= f_5@@96 Ref__Integer_value)) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@3) o_9@@136 f_5@@96) (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@4) o_9@@136 f_5@@96)))
 :qid |stdinbpl.1279:33|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@4) o_9@@136 f_5@@96))
))) (forall ((o_9@@137 T@Ref) (f_5@@97 T@Field_17088_72965) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@3) o_9@@137 f_5@@97) (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@4) o_9@@137 f_5@@97)))
 :qid |stdinbpl.1279:33|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@4) o_9@@137 f_5@@97))
))) (forall ((o_9@@138 T@Ref) (f_5@@98 T@Field_17088_73098) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@3) o_9@@138 f_5@@98) (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@4) o_9@@138 f_5@@98)))
 :qid |stdinbpl.1279:33|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@4) o_9@@138 f_5@@98))
))) (and (=> (= (ControlFlow 0 257) (- 0 259)) (forall ((i_39 Int) (i_39_1 Int) ) (!  (=> (and (and (and (and (not (= i_39 i_39_1)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_39)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_39_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17098| res i_39) (|Seq#Index_17098| res i_39_1))))
 :qid |stdinbpl.1291:21|
 :skolemid |113|
 :pattern ( (neverTriggered12 i_39) (neverTriggered12 i_39_1))
))) (=> (forall ((i_39@@0 Int) (i_39_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_39@@0 i_39_1@@0)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_39@@0)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_39_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17098| res i_39@@0) (|Seq#Index_17098| res i_39_1@@0))))
 :qid |stdinbpl.1291:21|
 :skolemid |113|
 :pattern ( (neverTriggered12 i_39@@0) (neverTriggered12 i_39_1@@0))
)) (and (=> (= (ControlFlow 0 257) (- 0 258)) (forall ((i_39@@1 Int) ) (!  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_39@@1) (>= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@4) (|Seq#Index_17098| res i_39@@1) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.1298:21|
 :skolemid |114|
 :pattern ( (|Seq#Index_17098| res i_39@@1))
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_39@@1))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_39@@1))
 :pattern ( (|Seq#Index_17098| res i_39@@1))
))) (=> (forall ((i_39@@2 Int) ) (!  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_39@@2) (>= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@4) (|Seq#Index_17098| res i_39@@2) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.1298:21|
 :skolemid |114|
 :pattern ( (|Seq#Index_17098| res i_39@@2))
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_39@@2))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_39@@2))
 :pattern ( (|Seq#Index_17098| res i_39@@2))
)) (=> (forall ((i_39@@3 Int) ) (!  (=> (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_39@@3) (< NoPerm FullPerm)) (and (qpRange12 (|Seq#Index_17098| res i_39@@3)) (= (invRecv12 (|Seq#Index_17098| res i_39@@3)) i_39@@3)))
 :qid |stdinbpl.1304:26|
 :skolemid |115|
 :pattern ( (|Seq#Index_17098| res i_39@@3))
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_39@@3))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_39@@3))
 :pattern ( (|Seq#Index_17098| res i_39@@3))
)) (=> (and (forall ((o_9@@139 T@Ref) ) (!  (=> (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) (invRecv12 o_9@@139)) (and (< NoPerm FullPerm) (qpRange12 o_9@@139))) (= (|Seq#Index_17098| res (invRecv12 o_9@@139)) o_9@@139))
 :qid |stdinbpl.1308:26|
 :skolemid |116|
 :pattern ( (invRecv12 o_9@@139))
)) (forall ((o_9@@140 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) (invRecv12 o_9@@140)) (and (< NoPerm FullPerm) (qpRange12 o_9@@140))) (and (= (|Seq#Index_17098| res (invRecv12 o_9@@140)) o_9@@140) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@5) o_9@@140 Ref__Integer_value) (- (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@4) o_9@@140 Ref__Integer_value) FullPerm)))) (=> (not (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) (invRecv12 o_9@@140)) (and (< NoPerm FullPerm) (qpRange12 o_9@@140)))) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@5) o_9@@140 Ref__Integer_value) (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@4) o_9@@140 Ref__Integer_value))))
 :qid |stdinbpl.1314:26|
 :skolemid |117|
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@5) o_9@@140 Ref__Integer_value))
))) (=> (and (and (and (and (forall ((o_9@@141 T@Ref) (f_5@@99 T@Field_25262_53) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@4) o_9@@141 f_5@@99) (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@5) o_9@@141 f_5@@99)))
 :qid |stdinbpl.1320:33|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@5) o_9@@141 f_5@@99))
)) (forall ((o_9@@142 T@Ref) (f_5@@100 T@Field_25275_25276) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@4) o_9@@142 f_5@@100) (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@5) o_9@@142 f_5@@100)))
 :qid |stdinbpl.1320:33|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@5) o_9@@142 f_5@@100))
))) (forall ((o_9@@143 T@Ref) (f_5@@101 T@Field_31327_3562) ) (!  (=> (not (= f_5@@101 Ref__Integer_value)) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@4) o_9@@143 f_5@@101) (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@5) o_9@@143 f_5@@101)))
 :qid |stdinbpl.1320:33|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@5) o_9@@143 f_5@@101))
))) (forall ((o_9@@144 T@Ref) (f_5@@102 T@Field_17088_72965) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@4) o_9@@144 f_5@@102) (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@5) o_9@@144 f_5@@102)))
 :qid |stdinbpl.1320:33|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@5) o_9@@144 f_5@@102))
))) (forall ((o_9@@145 T@Ref) (f_5@@103 T@Field_17088_73098) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@4) o_9@@145 f_5@@103) (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@5) o_9@@145 f_5@@103)))
 :qid |stdinbpl.1320:33|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@5) o_9@@145 f_5@@103))
))) (and (and (=> (= (ControlFlow 0 257) 256) anon194_Else_correct) (=> (= (ControlFlow 0 257) 38) anon195_Then_correct)) (=> (= (ControlFlow 0 257) 40) anon195_Else_correct)))))))))))))))))))))))))))))))))))))
(let ((anon177_Else_correct  (and (=> (= (ControlFlow 0 331) (- 0 332)) (forall ((i_11_1 Int) (i_11_2 Int) ) (!  (=> (and (and (and (and (not (= i_11_1 i_11_2)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_11_1)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_11_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17098| res i_11_1) (|Seq#Index_17098| res i_11_2))))
 :qid |stdinbpl.887:15|
 :skolemid |73|
))) (=> (forall ((i_11_1@@0 Int) (i_11_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_11_1@@0 i_11_2@@0)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_11_1@@0)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_11_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17098| res i_11_1@@0) (|Seq#Index_17098| res i_11_2@@0))))
 :qid |stdinbpl.887:15|
 :skolemid |73|
)) (=> (and (and (forall ((i_11_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_11_1@@1) (< NoPerm FullPerm)) (and (qpRange3 (|Seq#Index_17098| res i_11_1@@1)) (= (invRecv3 (|Seq#Index_17098| res i_11_1@@1)) i_11_1@@1)))
 :qid |stdinbpl.893:22|
 :skolemid |74|
 :pattern ( (|Seq#Index_17098| res i_11_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_11_1@@1))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_11_1@@1))
 :pattern ( (|Seq#Index_17098| res i_11_1@@1))
)) (forall ((o_9@@146 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) (invRecv3 o_9@@146)) (< NoPerm FullPerm)) (qpRange3 o_9@@146)) (= (|Seq#Index_17098| res (invRecv3 o_9@@146)) o_9@@146))
 :qid |stdinbpl.897:22|
 :skolemid |75|
 :pattern ( (invRecv3 o_9@@146))
))) (and (forall ((i_11_1@@2 Int) ) (!  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_11_1@@2) (not (= (|Seq#Index_17098| res i_11_1@@2) null)))
 :qid |stdinbpl.903:22|
 :skolemid |76|
 :pattern ( (|Seq#Index_17098| res i_11_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_11_1@@2))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_11_1@@2))
 :pattern ( (|Seq#Index_17098| res i_11_1@@2))
)) (forall ((o_9@@147 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) (invRecv3 o_9@@147)) (< NoPerm FullPerm)) (qpRange3 o_9@@147)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_17098| res (invRecv3 o_9@@147)) o_9@@147)) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@2) o_9@@147 Ref__Integer_value) (+ (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@1) o_9@@147 Ref__Integer_value) FullPerm)))) (=> (not (and (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) (invRecv3 o_9@@147)) (< NoPerm FullPerm)) (qpRange3 o_9@@147))) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@2) o_9@@147 Ref__Integer_value) (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@1) o_9@@147 Ref__Integer_value))))
 :qid |stdinbpl.909:22|
 :skolemid |77|
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@2) o_9@@147 Ref__Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_9@@148 T@Ref) (f_5@@104 T@Field_25262_53) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@1) o_9@@148 f_5@@104) (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@2) o_9@@148 f_5@@104)))
 :qid |stdinbpl.913:29|
 :skolemid |78|
 :pattern ( (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@1) o_9@@148 f_5@@104))
 :pattern ( (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@2) o_9@@148 f_5@@104))
)) (forall ((o_9@@149 T@Ref) (f_5@@105 T@Field_25275_25276) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@1) o_9@@149 f_5@@105) (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@2) o_9@@149 f_5@@105)))
 :qid |stdinbpl.913:29|
 :skolemid |78|
 :pattern ( (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@1) o_9@@149 f_5@@105))
 :pattern ( (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@2) o_9@@149 f_5@@105))
))) (forall ((o_9@@150 T@Ref) (f_5@@106 T@Field_31327_3562) ) (!  (=> (not (= f_5@@106 Ref__Integer_value)) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@1) o_9@@150 f_5@@106) (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@2) o_9@@150 f_5@@106)))
 :qid |stdinbpl.913:29|
 :skolemid |78|
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@1) o_9@@150 f_5@@106))
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@2) o_9@@150 f_5@@106))
))) (forall ((o_9@@151 T@Ref) (f_5@@107 T@Field_17088_72965) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@1) o_9@@151 f_5@@107) (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@2) o_9@@151 f_5@@107)))
 :qid |stdinbpl.913:29|
 :skolemid |78|
 :pattern ( (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@1) o_9@@151 f_5@@107))
 :pattern ( (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@2) o_9@@151 f_5@@107))
))) (forall ((o_9@@152 T@Ref) (f_5@@108 T@Field_17088_73098) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@1) o_9@@152 f_5@@108) (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@2) o_9@@152 f_5@@108)))
 :qid |stdinbpl.913:29|
 :skolemid |78|
 :pattern ( (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@1) o_9@@152 f_5@@108))
 :pattern ( (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@2) o_9@@152 f_5@@108))
))) (and (state Heap@@17 QPMask@2) (state Heap@@17 QPMask@2))) (and (=> (= (ControlFlow 0 331) 330) anon179_Then_correct) (=> (= (ControlFlow 0 331) 257) anon179_Else_correct))))))))
(let ((anon23_correct true))
(let ((anon178_Else_correct  (=> (and (not (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_15)) (= (ControlFlow 0 36) 32)) anon23_correct)))
(let ((anon178_Then_correct  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| res)) i_15) (and (=> (= (ControlFlow 0 33) (- 0 35)) (>= i_15 0)) (=> (>= i_15 0) (and (=> (= (ControlFlow 0 33) (- 0 34)) (< i_15 (|Seq#Length_17098| res))) (=> (< i_15 (|Seq#Length_17098| res)) (=> (= (ControlFlow 0 33) 32) anon23_correct))))))))
(let ((anon175_Else_correct  (=> (and (forall ((i_9_1 Int) (j_5 Int) ) (!  (=> (and (<= 0 i_9_1) (and (< i_9_1 (|Seq#Length_17098| res)) (and (<= 0 j_5) (and (< j_5 (|Seq#Length_17098| res)) (not (= i_9_1 j_5)))))) (not (= (|Seq#Index_17098| res i_9_1) (|Seq#Index_17098| res j_5))))
 :qid |stdinbpl.869:20|
 :skolemid |72|
 :pattern ( (|Seq#Index_17098| res i_9_1) (|Seq#Index_17098| res j_5))
)) (state Heap@@17 QPMask@1)) (and (and (=> (= (ControlFlow 0 333) 331) anon177_Else_correct) (=> (= (ControlFlow 0 333) 33) anon178_Then_correct)) (=> (= (ControlFlow 0 333) 36) anon178_Else_correct)))))
(let ((anon19_correct true))
(let ((anon176_Else_correct  (=> (and (not (and (<= 0 i_5) (and (< i_5 (|Seq#Length_17098| res)) (and (<= 0 j_2) (and (< j_2 (|Seq#Length_17098| res)) (not (= i_5 j_2))))))) (= (ControlFlow 0 31) 25)) anon19_correct)))
(let ((anon176_Then_correct  (=> (and (<= 0 i_5) (and (< i_5 (|Seq#Length_17098| res)) (and (<= 0 j_2) (and (< j_2 (|Seq#Length_17098| res)) (not (= i_5 j_2)))))) (and (=> (= (ControlFlow 0 26) (- 0 30)) (>= i_5 0)) (=> (>= i_5 0) (and (=> (= (ControlFlow 0 26) (- 0 29)) (< i_5 (|Seq#Length_17098| res))) (=> (< i_5 (|Seq#Length_17098| res)) (and (=> (= (ControlFlow 0 26) (- 0 28)) (>= j_2 0)) (=> (>= j_2 0) (and (=> (= (ControlFlow 0 26) (- 0 27)) (< j_2 (|Seq#Length_17098| res))) (=> (< j_2 (|Seq#Length_17098| res)) (=> (= (ControlFlow 0 26) 25) anon19_correct))))))))))))
(let ((anon173_Else_correct  (and (=> (= (ControlFlow 0 334) (- 0 335)) (forall ((i_7_1 Int) (i_7_2 Int) ) (!  (=> (and (and (and (and (not (= i_7_1 i_7_2)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_7_1)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_7_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17098| b_24 i_7_1) (|Seq#Index_17098| b_24 i_7_2))))
 :qid |stdinbpl.821:15|
 :skolemid |66|
))) (=> (forall ((i_7_1@@0 Int) (i_7_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_7_1@@0 i_7_2@@0)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_7_1@@0)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_7_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17098| b_24 i_7_1@@0) (|Seq#Index_17098| b_24 i_7_2@@0))))
 :qid |stdinbpl.821:15|
 :skolemid |66|
)) (=> (and (and (forall ((i_7_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_7_1@@1) (< NoPerm FullPerm)) (and (qpRange2 (|Seq#Index_17098| b_24 i_7_1@@1)) (= (invRecv2 (|Seq#Index_17098| b_24 i_7_1@@1)) i_7_1@@1)))
 :qid |stdinbpl.827:22|
 :skolemid |67|
 :pattern ( (|Seq#Index_17098| b_24 i_7_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_7_1@@1))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_7_1@@1))
 :pattern ( (|Seq#Index_17098| b_24 i_7_1@@1))
)) (forall ((o_9@@153 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) (invRecv2 o_9@@153)) (< NoPerm FullPerm)) (qpRange2 o_9@@153)) (= (|Seq#Index_17098| b_24 (invRecv2 o_9@@153)) o_9@@153))
 :qid |stdinbpl.831:22|
 :skolemid |68|
 :pattern ( (invRecv2 o_9@@153))
))) (and (forall ((i_7_1@@2 Int) ) (!  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_7_1@@2) (not (= (|Seq#Index_17098| b_24 i_7_1@@2) null)))
 :qid |stdinbpl.837:22|
 :skolemid |69|
 :pattern ( (|Seq#Index_17098| b_24 i_7_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_7_1@@2))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_7_1@@2))
 :pattern ( (|Seq#Index_17098| b_24 i_7_1@@2))
)) (forall ((o_9@@154 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) (invRecv2 o_9@@154)) (< NoPerm FullPerm)) (qpRange2 o_9@@154)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_17098| b_24 (invRecv2 o_9@@154)) o_9@@154)) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@1) o_9@@154 Ref__Integer_value) (+ (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@0) o_9@@154 Ref__Integer_value) FullPerm)))) (=> (not (and (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) (invRecv2 o_9@@154)) (< NoPerm FullPerm)) (qpRange2 o_9@@154))) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@1) o_9@@154 Ref__Integer_value) (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@0) o_9@@154 Ref__Integer_value))))
 :qid |stdinbpl.843:22|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@1) o_9@@154 Ref__Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_9@@155 T@Ref) (f_5@@109 T@Field_25262_53) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@0) o_9@@155 f_5@@109) (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@1) o_9@@155 f_5@@109)))
 :qid |stdinbpl.847:29|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@0) o_9@@155 f_5@@109))
 :pattern ( (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@1) o_9@@155 f_5@@109))
)) (forall ((o_9@@156 T@Ref) (f_5@@110 T@Field_25275_25276) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@0) o_9@@156 f_5@@110) (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@1) o_9@@156 f_5@@110)))
 :qid |stdinbpl.847:29|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@0) o_9@@156 f_5@@110))
 :pattern ( (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@1) o_9@@156 f_5@@110))
))) (forall ((o_9@@157 T@Ref) (f_5@@111 T@Field_31327_3562) ) (!  (=> (not (= f_5@@111 Ref__Integer_value)) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@0) o_9@@157 f_5@@111) (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@1) o_9@@157 f_5@@111)))
 :qid |stdinbpl.847:29|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@0) o_9@@157 f_5@@111))
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@1) o_9@@157 f_5@@111))
))) (forall ((o_9@@158 T@Ref) (f_5@@112 T@Field_17088_72965) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@0) o_9@@158 f_5@@112) (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@1) o_9@@158 f_5@@112)))
 :qid |stdinbpl.847:29|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@0) o_9@@158 f_5@@112))
 :pattern ( (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@1) o_9@@158 f_5@@112))
))) (forall ((o_9@@159 T@Ref) (f_5@@113 T@Field_17088_73098) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@0) o_9@@159 f_5@@113) (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@1) o_9@@159 f_5@@113)))
 :qid |stdinbpl.847:29|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@0) o_9@@159 f_5@@113))
 :pattern ( (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@1) o_9@@159 f_5@@113))
))) (and (state Heap@@17 QPMask@1) (state Heap@@17 QPMask@1))) (and (and (=> (= (ControlFlow 0 334) 333) anon175_Else_correct) (=> (= (ControlFlow 0 334) 26) anon176_Then_correct)) (=> (= (ControlFlow 0 334) 31) anon176_Else_correct))))))))
(let ((anon15_correct true))
(let ((anon174_Else_correct  (=> (and (not (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_14)) (= (ControlFlow 0 24) 20)) anon15_correct)))
(let ((anon174_Then_correct  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| b_24)) i_14) (and (=> (= (ControlFlow 0 21) (- 0 23)) (>= i_14 0)) (=> (>= i_14 0) (and (=> (= (ControlFlow 0 21) (- 0 22)) (< i_14 (|Seq#Length_17098| b_24))) (=> (< i_14 (|Seq#Length_17098| b_24)) (=> (= (ControlFlow 0 21) 20) anon15_correct))))))))
(let ((anon171_Else_correct  (=> (and (forall ((i_5_1 Int) (j_3 Int) ) (!  (=> (and (<= 0 i_5_1) (and (< i_5_1 (|Seq#Length_17098| b_24)) (and (<= 0 j_3) (and (< j_3 (|Seq#Length_17098| b_24)) (not (= i_5_1 j_3)))))) (not (= (|Seq#Index_17098| b_24 i_5_1) (|Seq#Index_17098| b_24 j_3))))
 :qid |stdinbpl.803:20|
 :skolemid |65|
 :pattern ( (|Seq#Index_17098| b_24 i_5_1) (|Seq#Index_17098| b_24 j_3))
)) (state Heap@@17 QPMask@0)) (and (and (=> (= (ControlFlow 0 336) 334) anon173_Else_correct) (=> (= (ControlFlow 0 336) 21) anon174_Then_correct)) (=> (= (ControlFlow 0 336) 24) anon174_Else_correct)))))
(let ((anon11_correct true))
(let ((anon172_Else_correct  (=> (and (not (and (<= 0 i_4) (and (< i_4 (|Seq#Length_17098| b_24)) (and (<= 0 j_12) (and (< j_12 (|Seq#Length_17098| b_24)) (not (= i_4 j_12))))))) (= (ControlFlow 0 19) 13)) anon11_correct)))
(let ((anon172_Then_correct  (=> (and (<= 0 i_4) (and (< i_4 (|Seq#Length_17098| b_24)) (and (<= 0 j_12) (and (< j_12 (|Seq#Length_17098| b_24)) (not (= i_4 j_12)))))) (and (=> (= (ControlFlow 0 14) (- 0 18)) (>= i_4 0)) (=> (>= i_4 0) (and (=> (= (ControlFlow 0 14) (- 0 17)) (< i_4 (|Seq#Length_17098| b_24))) (=> (< i_4 (|Seq#Length_17098| b_24)) (and (=> (= (ControlFlow 0 14) (- 0 16)) (>= j_12 0)) (=> (>= j_12 0) (and (=> (= (ControlFlow 0 14) (- 0 15)) (< j_12 (|Seq#Length_17098| b_24))) (=> (< j_12 (|Seq#Length_17098| b_24)) (=> (= (ControlFlow 0 14) 13) anon11_correct))))))))))))
(let ((anon169_Else_correct  (and (=> (= (ControlFlow 0 337) (- 0 338)) (forall ((i_3_2 Int) (i_3_3 Int) ) (!  (=> (and (and (and (and (not (= i_3_2 i_3_3)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_3_2)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_3_3)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17098| a_2 i_3_2) (|Seq#Index_17098| a_2 i_3_3))))
 :qid |stdinbpl.755:15|
 :skolemid |59|
))) (=> (forall ((i_3_2@@0 Int) (i_3_3@@0 Int) ) (!  (=> (and (and (and (and (not (= i_3_2@@0 i_3_3@@0)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_3_2@@0)) (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_3_3@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17098| a_2 i_3_2@@0) (|Seq#Index_17098| a_2 i_3_3@@0))))
 :qid |stdinbpl.755:15|
 :skolemid |59|
)) (=> (and (and (forall ((i_3_2@@1 Int) ) (!  (=> (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_3_2@@1) (< NoPerm FullPerm)) (and (qpRange1 (|Seq#Index_17098| a_2 i_3_2@@1)) (= (invRecv1 (|Seq#Index_17098| a_2 i_3_2@@1)) i_3_2@@1)))
 :qid |stdinbpl.761:22|
 :skolemid |60|
 :pattern ( (|Seq#Index_17098| a_2 i_3_2@@1))
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_3_2@@1))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_3_2@@1))
 :pattern ( (|Seq#Index_17098| a_2 i_3_2@@1))
)) (forall ((o_9@@160 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) (invRecv1 o_9@@160)) (< NoPerm FullPerm)) (qpRange1 o_9@@160)) (= (|Seq#Index_17098| a_2 (invRecv1 o_9@@160)) o_9@@160))
 :qid |stdinbpl.765:22|
 :skolemid |61|
 :pattern ( (invRecv1 o_9@@160))
))) (and (forall ((i_3_2@@2 Int) ) (!  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_3_2@@2) (not (= (|Seq#Index_17098| a_2 i_3_2@@2) null)))
 :qid |stdinbpl.771:22|
 :skolemid |62|
 :pattern ( (|Seq#Index_17098| a_2 i_3_2@@2))
 :pattern ( (|Seq#ContainsTrigger_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_3_2@@2))
 :pattern ( (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_3_2@@2))
 :pattern ( (|Seq#Index_17098| a_2 i_3_2@@2))
)) (forall ((o_9@@161 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) (invRecv1 o_9@@161)) (< NoPerm FullPerm)) (qpRange1 o_9@@161)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_17098| a_2 (invRecv1 o_9@@161)) o_9@@161)) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@0) o_9@@161 Ref__Integer_value) (+ (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| ZeroMask) o_9@@161 Ref__Integer_value) FullPerm)))) (=> (not (and (and (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) (invRecv1 o_9@@161)) (< NoPerm FullPerm)) (qpRange1 o_9@@161))) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@0) o_9@@161 Ref__Integer_value) (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| ZeroMask) o_9@@161 Ref__Integer_value))))
 :qid |stdinbpl.777:22|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@0) o_9@@161 Ref__Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_9@@162 T@Ref) (f_5@@114 T@Field_25262_53) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| ZeroMask) o_9@@162 f_5@@114) (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@0) o_9@@162 f_5@@114)))
 :qid |stdinbpl.781:29|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| ZeroMask) o_9@@162 f_5@@114))
 :pattern ( (select (|PolymorphicMapType_25223_17088_53#PolymorphicMapType_25223| QPMask@0) o_9@@162 f_5@@114))
)) (forall ((o_9@@163 T@Ref) (f_5@@115 T@Field_25275_25276) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| ZeroMask) o_9@@163 f_5@@115) (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@0) o_9@@163 f_5@@115)))
 :qid |stdinbpl.781:29|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| ZeroMask) o_9@@163 f_5@@115))
 :pattern ( (select (|PolymorphicMapType_25223_17088_25276#PolymorphicMapType_25223| QPMask@0) o_9@@163 f_5@@115))
))) (forall ((o_9@@164 T@Ref) (f_5@@116 T@Field_31327_3562) ) (!  (=> (not (= f_5@@116 Ref__Integer_value)) (= (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| ZeroMask) o_9@@164 f_5@@116) (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@0) o_9@@164 f_5@@116)))
 :qid |stdinbpl.781:29|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| ZeroMask) o_9@@164 f_5@@116))
 :pattern ( (select (|PolymorphicMapType_25223_17088_3577#PolymorphicMapType_25223| QPMask@0) o_9@@164 f_5@@116))
))) (forall ((o_9@@165 T@Ref) (f_5@@117 T@Field_17088_72965) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| ZeroMask) o_9@@165 f_5@@117) (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@0) o_9@@165 f_5@@117)))
 :qid |stdinbpl.781:29|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| ZeroMask) o_9@@165 f_5@@117))
 :pattern ( (select (|PolymorphicMapType_25223_17088_72965#PolymorphicMapType_25223| QPMask@0) o_9@@165 f_5@@117))
))) (forall ((o_9@@166 T@Ref) (f_5@@118 T@Field_17088_73098) ) (!  (=> true (= (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| ZeroMask) o_9@@166 f_5@@118) (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@0) o_9@@166 f_5@@118)))
 :qid |stdinbpl.781:29|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| ZeroMask) o_9@@166 f_5@@118))
 :pattern ( (select (|PolymorphicMapType_25223_17088_77220#PolymorphicMapType_25223| QPMask@0) o_9@@166 f_5@@118))
))) (and (state Heap@@17 QPMask@0) (state Heap@@17 QPMask@0))) (and (and (=> (= (ControlFlow 0 337) 336) anon171_Else_correct) (=> (= (ControlFlow 0 337) 14) anon172_Then_correct)) (=> (= (ControlFlow 0 337) 19) anon172_Else_correct))))))))
(let ((anon7_correct true))
(let ((anon170_Else_correct  (=> (and (not (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_3)) (= (ControlFlow 0 12) 8)) anon7_correct)))
(let ((anon170_Then_correct  (=> (|Seq#Contains_3440| (|Seq#Range| 0 (|Seq#Length_17098| a_2)) i_3) (and (=> (= (ControlFlow 0 9) (- 0 11)) (>= i_3 0)) (=> (>= i_3 0) (and (=> (= (ControlFlow 0 9) (- 0 10)) (< i_3 (|Seq#Length_17098| a_2))) (=> (< i_3 (|Seq#Length_17098| a_2)) (=> (= (ControlFlow 0 9) 8) anon7_correct))))))))
(let ((anon167_Else_correct  (=> (and (forall ((i_1 Int) (j_1 Int) ) (!  (=> (and (<= 0 i_1) (and (< i_1 (|Seq#Length_17098| a_2)) (and (<= 0 j_1) (and (< j_1 (|Seq#Length_17098| a_2)) (not (= i_1 j_1)))))) (not (= (|Seq#Index_17098| a_2 i_1) (|Seq#Index_17098| a_2 j_1))))
 :qid |stdinbpl.737:20|
 :skolemid |58|
 :pattern ( (|Seq#Index_17098| a_2 i_1) (|Seq#Index_17098| a_2 j_1))
)) (state Heap@@17 ZeroMask)) (and (and (=> (= (ControlFlow 0 339) 337) anon169_Else_correct) (=> (= (ControlFlow 0 339) 9) anon170_Then_correct)) (=> (= (ControlFlow 0 339) 12) anon170_Else_correct)))))
(let ((anon3_correct true))
(let ((anon168_Else_correct  (=> (and (not (and (<= 0 i_18) (and (< i_18 (|Seq#Length_17098| a_2)) (and (<= 0 j_14) (and (< j_14 (|Seq#Length_17098| a_2)) (not (= i_18 j_14))))))) (= (ControlFlow 0 7) 1)) anon3_correct)))
(let ((anon168_Then_correct  (=> (and (<= 0 i_18) (and (< i_18 (|Seq#Length_17098| a_2)) (and (<= 0 j_14) (and (< j_14 (|Seq#Length_17098| a_2)) (not (= i_18 j_14)))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= i_18 0)) (=> (>= i_18 0) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< i_18 (|Seq#Length_17098| a_2))) (=> (< i_18 (|Seq#Length_17098| a_2)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= j_14 0)) (=> (>= j_14 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< j_14 (|Seq#Length_17098| a_2))) (=> (< j_14 (|Seq#Length_17098| a_2)) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))))))))
(let ((anon0_correct  (=> (state Heap@@17 ZeroMask) (=> (and (and (and AssumePermUpperBound (select (|PolymorphicMapType_25202_16850_53#PolymorphicMapType_25202| Heap@@17) diz $allocated)) (and (not (= diz null)) (state Heap@@17 ZeroMask))) (and (and (= (|Seq#Length_17098| a_2) (|Seq#Length_17098| b_24)) (state Heap@@17 ZeroMask)) (and (= (|Seq#Length_17098| res) (* 2 (|Seq#Length_17098| a_2))) (state Heap@@17 ZeroMask)))) (and (and (=> (= (ControlFlow 0 340) 339) anon167_Else_correct) (=> (= (ControlFlow 0 340) 2) anon168_Then_correct)) (=> (= (ControlFlow 0 340) 7) anon168_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 341) 340) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
