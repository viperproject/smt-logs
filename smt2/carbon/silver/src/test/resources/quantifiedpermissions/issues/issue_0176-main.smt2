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
(declare-sort T@Field_9955_53 0)
(declare-sort T@Field_9968_9969 0)
(declare-sort T@Field_15982_3106 0)
(declare-sort T@Field_6750_26866 0)
(declare-sort T@Field_6750_26733 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_9916 0)) (((PolymorphicMapType_9916 (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| (Array T@Ref T@Field_15982_3106 Real)) (|PolymorphicMapType_9916_6750_53#PolymorphicMapType_9916| (Array T@Ref T@Field_9955_53 Real)) (|PolymorphicMapType_9916_6750_9969#PolymorphicMapType_9916| (Array T@Ref T@Field_9968_9969 Real)) (|PolymorphicMapType_9916_6750_26733#PolymorphicMapType_9916| (Array T@Ref T@Field_6750_26733 Real)) (|PolymorphicMapType_9916_6750_30988#PolymorphicMapType_9916| (Array T@Ref T@Field_6750_26866 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10444 0)) (((PolymorphicMapType_10444 (|PolymorphicMapType_10444_9955_53#PolymorphicMapType_10444| (Array T@Ref T@Field_9955_53 Bool)) (|PolymorphicMapType_10444_9955_9969#PolymorphicMapType_10444| (Array T@Ref T@Field_9968_9969 Bool)) (|PolymorphicMapType_10444_9955_3106#PolymorphicMapType_10444| (Array T@Ref T@Field_15982_3106 Bool)) (|PolymorphicMapType_10444_9955_26733#PolymorphicMapType_10444| (Array T@Ref T@Field_6750_26733 Bool)) (|PolymorphicMapType_10444_9955_28044#PolymorphicMapType_10444| (Array T@Ref T@Field_6750_26866 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9895 0)) (((PolymorphicMapType_9895 (|PolymorphicMapType_9895_6552_53#PolymorphicMapType_9895| (Array T@Ref T@Field_9955_53 Bool)) (|PolymorphicMapType_9895_6555_6556#PolymorphicMapType_9895| (Array T@Ref T@Field_9968_9969 T@Ref)) (|PolymorphicMapType_9895_6750_3106#PolymorphicMapType_9895| (Array T@Ref T@Field_15982_3106 Int)) (|PolymorphicMapType_9895_6750_26910#PolymorphicMapType_9895| (Array T@Ref T@Field_6750_26866 T@PolymorphicMapType_10444)) (|PolymorphicMapType_9895_9955_26733#PolymorphicMapType_9895| (Array T@Ref T@Field_6750_26733 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_9955_53)
(declare-fun val () T@Field_15982_3106)
(declare-sort T@Seq_16068 0)
(declare-fun |Seq#Length_6755| (T@Seq_16068) Int)
(declare-fun |Seq#Drop_6755| (T@Seq_16068 Int) T@Seq_16068)
(declare-sort T@Seq_2984 0)
(declare-fun |Seq#Length_2984| (T@Seq_2984) Int)
(declare-fun |Seq#Drop_2984| (T@Seq_2984 Int) T@Seq_2984)
(declare-fun succHeap (T@PolymorphicMapType_9895 T@PolymorphicMapType_9895) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_9895 T@PolymorphicMapType_9895) Bool)
(declare-fun state (T@PolymorphicMapType_9895 T@PolymorphicMapType_9916) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_9916) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_10444)
(declare-fun |Seq#Index_6755| (T@Seq_16068 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_2984| (T@Seq_2984 Int) Int)
(declare-fun |Seq#Empty_6764| () T@Seq_16068)
(declare-fun |Seq#Empty_2984| () T@Seq_2984)
(declare-fun |Seq#Update_6755| (T@Seq_16068 Int T@Ref) T@Seq_16068)
(declare-fun |Seq#Update_2984| (T@Seq_2984 Int Int) T@Seq_2984)
(declare-fun |Seq#Take_6755| (T@Seq_16068 Int) T@Seq_16068)
(declare-fun |Seq#Take_2984| (T@Seq_2984 Int) T@Seq_2984)
(declare-fun |Seq#Contains_2984| (T@Seq_2984 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2984)
(declare-fun |Seq#Contains_16068| (T@Seq_16068 T@Ref) Bool)
(declare-fun |Seq#Skolem_16068| (T@Seq_16068 T@Ref) Int)
(declare-fun |Seq#Skolem_2984| (T@Seq_2984 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_9895 T@PolymorphicMapType_9895 T@PolymorphicMapType_9916) Bool)
(declare-fun IsPredicateField_6750_26824 (T@Field_6750_26733) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_6750 (T@Field_6750_26733) T@Field_6750_26866)
(declare-fun HasDirectPerm_6750_26797 (T@PolymorphicMapType_9916 T@Ref T@Field_6750_26733) Bool)
(declare-fun IsWandField_6750_28571 (T@Field_6750_26733) Bool)
(declare-fun WandMaskField_6750 (T@Field_6750_26733) T@Field_6750_26866)
(declare-fun |Seq#Singleton_6754| (T@Ref) T@Seq_16068)
(declare-fun |Seq#Singleton_2984| (Int) T@Seq_2984)
(declare-fun |Seq#Append_6755| (T@Seq_16068 T@Seq_16068) T@Seq_16068)
(declare-fun |Seq#Append_2984| (T@Seq_2984 T@Seq_2984) T@Seq_2984)
(declare-fun dummyHeap () T@PolymorphicMapType_9895)
(declare-fun ZeroMask () T@PolymorphicMapType_9916)
(declare-fun InsidePredicate_9955_9955 (T@Field_6750_26733 T@FrameType T@Field_6750_26733 T@FrameType) Bool)
(declare-fun IsPredicateField_6750_3106 (T@Field_15982_3106) Bool)
(declare-fun IsWandField_6750_3106 (T@Field_15982_3106) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6750_32117 (T@Field_6750_26866) Bool)
(declare-fun IsWandField_6750_32133 (T@Field_6750_26866) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_6750_9969 (T@Field_9968_9969) Bool)
(declare-fun IsWandField_6750_9969 (T@Field_9968_9969) Bool)
(declare-fun IsPredicateField_6750_53 (T@Field_9955_53) Bool)
(declare-fun IsWandField_6750_53 (T@Field_9955_53) Bool)
(declare-fun HasDirectPerm_6750_32571 (T@PolymorphicMapType_9916 T@Ref T@Field_6750_26866) Bool)
(declare-fun HasDirectPerm_6750_9969 (T@PolymorphicMapType_9916 T@Ref T@Field_9968_9969) Bool)
(declare-fun HasDirectPerm_6750_53 (T@PolymorphicMapType_9916 T@Ref T@Field_9955_53) Bool)
(declare-fun HasDirectPerm_6750_3106 (T@PolymorphicMapType_9916 T@Ref T@Field_15982_3106) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_9916 T@PolymorphicMapType_9916 T@PolymorphicMapType_9916) Bool)
(declare-fun |Seq#Equal_16068| (T@Seq_16068 T@Seq_16068) Bool)
(declare-fun |Seq#Equal_2984| (T@Seq_2984 T@Seq_2984) Bool)
(declare-fun |Seq#ContainsTrigger_6755| (T@Seq_16068 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_2984| (T@Seq_2984 Int) Bool)
(declare-fun |Seq#SkolemDiff_16068| (T@Seq_16068 T@Seq_16068) Int)
(declare-fun |Seq#SkolemDiff_2984| (T@Seq_2984 T@Seq_2984) Int)
(assert (forall ((s T@Seq_16068) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_6755| s)) (= (|Seq#Length_6755| (|Seq#Drop_6755| s n)) (- (|Seq#Length_6755| s) n))) (=> (< (|Seq#Length_6755| s) n) (= (|Seq#Length_6755| (|Seq#Drop_6755| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_6755| (|Seq#Drop_6755| s n)) (|Seq#Length_6755| s))))
 :qid |stdinbpl.300:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_6755| (|Seq#Drop_6755| s n)))
 :pattern ( (|Seq#Length_6755| s) (|Seq#Drop_6755| s n))
)))
(assert (forall ((s@@0 T@Seq_2984) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_2984| s@@0)) (= (|Seq#Length_2984| (|Seq#Drop_2984| s@@0 n@@0)) (- (|Seq#Length_2984| s@@0) n@@0))) (=> (< (|Seq#Length_2984| s@@0) n@@0) (= (|Seq#Length_2984| (|Seq#Drop_2984| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_2984| (|Seq#Drop_2984| s@@0 n@@0)) (|Seq#Length_2984| s@@0))))
 :qid |stdinbpl.300:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2984| (|Seq#Drop_2984| s@@0 n@@0)))
 :pattern ( (|Seq#Length_2984| s@@0) (|Seq#Drop_2984| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_9895) (Heap1 T@PolymorphicMapType_9895) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_9895) (Mask T@PolymorphicMapType_9916) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_9895) (Heap1@@0 T@PolymorphicMapType_9895) (Heap2 T@PolymorphicMapType_9895) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_6750_26866) ) (!  (not (select (|PolymorphicMapType_10444_9955_28044#PolymorphicMapType_10444| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10444_9955_28044#PolymorphicMapType_10444| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_6750_26733) ) (!  (not (select (|PolymorphicMapType_10444_9955_26733#PolymorphicMapType_10444| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10444_9955_26733#PolymorphicMapType_10444| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_15982_3106) ) (!  (not (select (|PolymorphicMapType_10444_9955_3106#PolymorphicMapType_10444| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10444_9955_3106#PolymorphicMapType_10444| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_9968_9969) ) (!  (not (select (|PolymorphicMapType_10444_9955_9969#PolymorphicMapType_10444| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10444_9955_9969#PolymorphicMapType_10444| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_9955_53) ) (!  (not (select (|PolymorphicMapType_10444_9955_53#PolymorphicMapType_10444| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10444_9955_53#PolymorphicMapType_10444| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((s@@1 T@Seq_16068) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_6755| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_6755| (|Seq#Drop_6755| s@@1 n@@1) j) (|Seq#Index_6755| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.321:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_6755| (|Seq#Drop_6755| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_2984) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_2984| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_2984| (|Seq#Drop_2984| s@@2 n@@2) j@@0) (|Seq#Index_2984| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.321:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2984| (|Seq#Drop_2984| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_6755| |Seq#Empty_6764|) 0))
(assert (= (|Seq#Length_2984| |Seq#Empty_2984|) 0))
(assert (forall ((s@@3 T@Seq_16068) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_6755| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_6755| (|Seq#Update_6755| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_6755| (|Seq#Update_6755| s@@3 i v) n@@3) (|Seq#Index_6755| s@@3 n@@3)))))
 :qid |stdinbpl.276:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_6755| (|Seq#Update_6755| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_6755| s@@3 n@@3) (|Seq#Update_6755| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_2984) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_2984| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_2984| (|Seq#Update_2984| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_2984| (|Seq#Update_2984| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_2984| s@@4 n@@4)))))
 :qid |stdinbpl.276:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2984| (|Seq#Update_2984| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_2984| s@@4 n@@4) (|Seq#Update_2984| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_16068) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_6755| s@@5)) (= (|Seq#Length_6755| (|Seq#Take_6755| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_6755| s@@5) n@@5) (= (|Seq#Length_6755| (|Seq#Take_6755| s@@5 n@@5)) (|Seq#Length_6755| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_6755| (|Seq#Take_6755| s@@5 n@@5)) 0)))
 :qid |stdinbpl.287:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_6755| (|Seq#Take_6755| s@@5 n@@5)))
 :pattern ( (|Seq#Take_6755| s@@5 n@@5) (|Seq#Length_6755| s@@5))
)))
(assert (forall ((s@@6 T@Seq_2984) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_2984| s@@6)) (= (|Seq#Length_2984| (|Seq#Take_2984| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_2984| s@@6) n@@6) (= (|Seq#Length_2984| (|Seq#Take_2984| s@@6 n@@6)) (|Seq#Length_2984| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_2984| (|Seq#Take_2984| s@@6 n@@6)) 0)))
 :qid |stdinbpl.287:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2984| (|Seq#Take_2984| s@@6 n@@6)))
 :pattern ( (|Seq#Take_2984| s@@6 n@@6) (|Seq#Length_2984| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_2984| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.561:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2984| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_16068) (x T@Ref) ) (!  (=> (|Seq#Contains_16068| s@@7 x) (and (and (<= 0 (|Seq#Skolem_16068| s@@7 x)) (< (|Seq#Skolem_16068| s@@7 x) (|Seq#Length_6755| s@@7))) (= (|Seq#Index_6755| s@@7 (|Seq#Skolem_16068| s@@7 x)) x)))
 :qid |stdinbpl.419:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_16068| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_2984) (x@@0 Int) ) (!  (=> (|Seq#Contains_2984| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_2984| s@@8 x@@0)) (< (|Seq#Skolem_2984| s@@8 x@@0) (|Seq#Length_2984| s@@8))) (= (|Seq#Index_2984| s@@8 (|Seq#Skolem_2984| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.419:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2984| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_16068) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_6755| s@@9 n@@7) s@@9))
 :qid |stdinbpl.403:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_6755| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_2984) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_2984| s@@10 n@@8) s@@10))
 :qid |stdinbpl.403:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_2984| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.256:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.254:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_9895) (ExhaleHeap T@PolymorphicMapType_9895) (Mask@@0 T@PolymorphicMapType_9916) (pm_f_13 T@Field_6750_26733) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_6750_26797 Mask@@0 null pm_f_13) (IsPredicateField_6750_26824 pm_f_13)) (= (select (|PolymorphicMapType_9895_6750_26910#PolymorphicMapType_9895| Heap@@0) null (PredicateMaskField_6750 pm_f_13)) (select (|PolymorphicMapType_9895_6750_26910#PolymorphicMapType_9895| ExhaleHeap) null (PredicateMaskField_6750 pm_f_13)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_6750_26824 pm_f_13) (select (|PolymorphicMapType_9895_6750_26910#PolymorphicMapType_9895| ExhaleHeap) null (PredicateMaskField_6750 pm_f_13)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_9895) (ExhaleHeap@@0 T@PolymorphicMapType_9895) (Mask@@1 T@PolymorphicMapType_9916) (pm_f_13@@0 T@Field_6750_26733) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_6750_26797 Mask@@1 null pm_f_13@@0) (IsWandField_6750_28571 pm_f_13@@0)) (= (select (|PolymorphicMapType_9895_6750_26910#PolymorphicMapType_9895| Heap@@1) null (WandMaskField_6750 pm_f_13@@0)) (select (|PolymorphicMapType_9895_6750_26910#PolymorphicMapType_9895| ExhaleHeap@@0) null (WandMaskField_6750 pm_f_13@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_6750_28571 pm_f_13@@0) (select (|PolymorphicMapType_9895_6750_26910#PolymorphicMapType_9895| ExhaleHeap@@0) null (WandMaskField_6750 pm_f_13@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_16068| (|Seq#Singleton_6754| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.544:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_16068| (|Seq#Singleton_6754| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_2984| (|Seq#Singleton_2984| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.544:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2984| (|Seq#Singleton_2984| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_16068) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_6755| s@@11))) (= (|Seq#Index_6755| (|Seq#Take_6755| s@@11 n@@9) j@@3) (|Seq#Index_6755| s@@11 j@@3)))
 :qid |stdinbpl.295:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_6755| (|Seq#Take_6755| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_6755| s@@11 j@@3) (|Seq#Take_6755| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_2984) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_2984| s@@12))) (= (|Seq#Index_2984| (|Seq#Take_2984| s@@12 n@@10) j@@4) (|Seq#Index_2984| s@@12 j@@4)))
 :qid |stdinbpl.295:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2984| (|Seq#Take_2984| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_2984| s@@12 j@@4) (|Seq#Take_2984| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_16068) (t T@Seq_16068) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_6755| s@@13))) (< n@@11 (|Seq#Length_6755| (|Seq#Append_6755| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_6755| s@@13)) (|Seq#Length_6755| s@@13)) n@@11) (= (|Seq#Take_6755| (|Seq#Append_6755| s@@13 t) n@@11) (|Seq#Append_6755| s@@13 (|Seq#Take_6755| t (|Seq#Sub| n@@11 (|Seq#Length_6755| s@@13)))))))
 :qid |stdinbpl.380:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_6755| (|Seq#Append_6755| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_2984) (t@@0 T@Seq_2984) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_2984| s@@14))) (< n@@12 (|Seq#Length_2984| (|Seq#Append_2984| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_2984| s@@14)) (|Seq#Length_2984| s@@14)) n@@12) (= (|Seq#Take_2984| (|Seq#Append_2984| s@@14 t@@0) n@@12) (|Seq#Append_2984| s@@14 (|Seq#Take_2984| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_2984| s@@14)))))))
 :qid |stdinbpl.380:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2984| (|Seq#Append_2984| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_9895) (ExhaleHeap@@1 T@PolymorphicMapType_9895) (Mask@@2 T@PolymorphicMapType_9916) (o_22 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_9895_6552_53#PolymorphicMapType_9895| Heap@@2) o_22 $allocated) (select (|PolymorphicMapType_9895_6552_53#PolymorphicMapType_9895| ExhaleHeap@@1) o_22 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_9895_6552_53#PolymorphicMapType_9895| ExhaleHeap@@1) o_22 $allocated))
)))
(assert (forall ((p T@Field_6750_26733) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_9955_9955 p v_1 p w))
 :qid |stdinbpl.198:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_9955_9955 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_16068) (s1 T@Seq_16068) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_6764|)) (not (= s1 |Seq#Empty_6764|))) (<= (|Seq#Length_6755| s0) n@@13)) (< n@@13 (|Seq#Length_6755| (|Seq#Append_6755| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_6755| s0)) (|Seq#Length_6755| s0)) n@@13) (= (|Seq#Index_6755| (|Seq#Append_6755| s0 s1) n@@13) (|Seq#Index_6755| s1 (|Seq#Sub| n@@13 (|Seq#Length_6755| s0))))))
 :qid |stdinbpl.267:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_6755| (|Seq#Append_6755| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_2984) (s1@@0 T@Seq_2984) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_2984|)) (not (= s1@@0 |Seq#Empty_2984|))) (<= (|Seq#Length_2984| s0@@0) n@@14)) (< n@@14 (|Seq#Length_2984| (|Seq#Append_2984| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_2984| s0@@0)) (|Seq#Length_2984| s0@@0)) n@@14) (= (|Seq#Index_2984| (|Seq#Append_2984| s0@@0 s1@@0) n@@14) (|Seq#Index_2984| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_2984| s0@@0))))))
 :qid |stdinbpl.267:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2984| (|Seq#Append_2984| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_6750_3106 val)))
(assert  (not (IsWandField_6750_3106 val)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_9895) (ExhaleHeap@@2 T@PolymorphicMapType_9895) (Mask@@3 T@PolymorphicMapType_9916) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_9916) (o_2@@4 T@Ref) (f_4@@4 T@Field_6750_26866) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_9916_6750_30988#PolymorphicMapType_9916| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_6750_32117 f_4@@4))) (not (IsWandField_6750_32133 f_4@@4))) (<= (select (|PolymorphicMapType_9916_6750_30988#PolymorphicMapType_9916| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_9916_6750_30988#PolymorphicMapType_9916| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_9916) (o_2@@5 T@Ref) (f_4@@5 T@Field_6750_26733) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_9916_6750_26733#PolymorphicMapType_9916| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_6750_26824 f_4@@5))) (not (IsWandField_6750_28571 f_4@@5))) (<= (select (|PolymorphicMapType_9916_6750_26733#PolymorphicMapType_9916| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_9916_6750_26733#PolymorphicMapType_9916| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_9916) (o_2@@6 T@Ref) (f_4@@6 T@Field_9968_9969) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_9916_6750_9969#PolymorphicMapType_9916| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_6750_9969 f_4@@6))) (not (IsWandField_6750_9969 f_4@@6))) (<= (select (|PolymorphicMapType_9916_6750_9969#PolymorphicMapType_9916| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_9916_6750_9969#PolymorphicMapType_9916| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_9916) (o_2@@7 T@Ref) (f_4@@7 T@Field_9955_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_9916_6750_53#PolymorphicMapType_9916| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_6750_53 f_4@@7))) (not (IsWandField_6750_53 f_4@@7))) (<= (select (|PolymorphicMapType_9916_6750_53#PolymorphicMapType_9916| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_9916_6750_53#PolymorphicMapType_9916| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_9916) (o_2@@8 T@Ref) (f_4@@8 T@Field_15982_3106) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_6750_3106 f_4@@8))) (not (IsWandField_6750_3106 f_4@@8))) (<= (select (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_9916) (o_2@@9 T@Ref) (f_4@@9 T@Field_6750_26866) ) (! (= (HasDirectPerm_6750_32571 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_9916_6750_30988#PolymorphicMapType_9916| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6750_32571 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_9916) (o_2@@10 T@Ref) (f_4@@10 T@Field_6750_26733) ) (! (= (HasDirectPerm_6750_26797 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_9916_6750_26733#PolymorphicMapType_9916| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6750_26797 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_9916) (o_2@@11 T@Ref) (f_4@@11 T@Field_9968_9969) ) (! (= (HasDirectPerm_6750_9969 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_9916_6750_9969#PolymorphicMapType_9916| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6750_9969 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_9916) (o_2@@12 T@Ref) (f_4@@12 T@Field_9955_53) ) (! (= (HasDirectPerm_6750_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_9916_6750_53#PolymorphicMapType_9916| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6750_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_9916) (o_2@@13 T@Ref) (f_4@@13 T@Field_15982_3106) ) (! (= (HasDirectPerm_6750_3106 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6750_3106 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_9895) (ExhaleHeap@@3 T@PolymorphicMapType_9895) (Mask@@14 T@PolymorphicMapType_9916) (pm_f_13@@1 T@Field_6750_26733) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_6750_26797 Mask@@14 null pm_f_13@@1) (IsPredicateField_6750_26824 pm_f_13@@1)) (and (and (and (and (forall ((o2_13 T@Ref) (f_30 T@Field_9955_53) ) (!  (=> (select (|PolymorphicMapType_10444_9955_53#PolymorphicMapType_10444| (select (|PolymorphicMapType_9895_6750_26910#PolymorphicMapType_9895| Heap@@4) null (PredicateMaskField_6750 pm_f_13@@1))) o2_13 f_30) (= (select (|PolymorphicMapType_9895_6552_53#PolymorphicMapType_9895| Heap@@4) o2_13 f_30) (select (|PolymorphicMapType_9895_6552_53#PolymorphicMapType_9895| ExhaleHeap@@3) o2_13 f_30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9895_6552_53#PolymorphicMapType_9895| ExhaleHeap@@3) o2_13 f_30))
)) (forall ((o2_13@@0 T@Ref) (f_30@@0 T@Field_9968_9969) ) (!  (=> (select (|PolymorphicMapType_10444_9955_9969#PolymorphicMapType_10444| (select (|PolymorphicMapType_9895_6750_26910#PolymorphicMapType_9895| Heap@@4) null (PredicateMaskField_6750 pm_f_13@@1))) o2_13@@0 f_30@@0) (= (select (|PolymorphicMapType_9895_6555_6556#PolymorphicMapType_9895| Heap@@4) o2_13@@0 f_30@@0) (select (|PolymorphicMapType_9895_6555_6556#PolymorphicMapType_9895| ExhaleHeap@@3) o2_13@@0 f_30@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9895_6555_6556#PolymorphicMapType_9895| ExhaleHeap@@3) o2_13@@0 f_30@@0))
))) (forall ((o2_13@@1 T@Ref) (f_30@@1 T@Field_15982_3106) ) (!  (=> (select (|PolymorphicMapType_10444_9955_3106#PolymorphicMapType_10444| (select (|PolymorphicMapType_9895_6750_26910#PolymorphicMapType_9895| Heap@@4) null (PredicateMaskField_6750 pm_f_13@@1))) o2_13@@1 f_30@@1) (= (select (|PolymorphicMapType_9895_6750_3106#PolymorphicMapType_9895| Heap@@4) o2_13@@1 f_30@@1) (select (|PolymorphicMapType_9895_6750_3106#PolymorphicMapType_9895| ExhaleHeap@@3) o2_13@@1 f_30@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9895_6750_3106#PolymorphicMapType_9895| ExhaleHeap@@3) o2_13@@1 f_30@@1))
))) (forall ((o2_13@@2 T@Ref) (f_30@@2 T@Field_6750_26733) ) (!  (=> (select (|PolymorphicMapType_10444_9955_26733#PolymorphicMapType_10444| (select (|PolymorphicMapType_9895_6750_26910#PolymorphicMapType_9895| Heap@@4) null (PredicateMaskField_6750 pm_f_13@@1))) o2_13@@2 f_30@@2) (= (select (|PolymorphicMapType_9895_9955_26733#PolymorphicMapType_9895| Heap@@4) o2_13@@2 f_30@@2) (select (|PolymorphicMapType_9895_9955_26733#PolymorphicMapType_9895| ExhaleHeap@@3) o2_13@@2 f_30@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9895_9955_26733#PolymorphicMapType_9895| ExhaleHeap@@3) o2_13@@2 f_30@@2))
))) (forall ((o2_13@@3 T@Ref) (f_30@@3 T@Field_6750_26866) ) (!  (=> (select (|PolymorphicMapType_10444_9955_28044#PolymorphicMapType_10444| (select (|PolymorphicMapType_9895_6750_26910#PolymorphicMapType_9895| Heap@@4) null (PredicateMaskField_6750 pm_f_13@@1))) o2_13@@3 f_30@@3) (= (select (|PolymorphicMapType_9895_6750_26910#PolymorphicMapType_9895| Heap@@4) o2_13@@3 f_30@@3) (select (|PolymorphicMapType_9895_6750_26910#PolymorphicMapType_9895| ExhaleHeap@@3) o2_13@@3 f_30@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9895_6750_26910#PolymorphicMapType_9895| ExhaleHeap@@3) o2_13@@3 f_30@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_6750_26824 pm_f_13@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_9895) (ExhaleHeap@@4 T@PolymorphicMapType_9895) (Mask@@15 T@PolymorphicMapType_9916) (pm_f_13@@2 T@Field_6750_26733) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_6750_26797 Mask@@15 null pm_f_13@@2) (IsWandField_6750_28571 pm_f_13@@2)) (and (and (and (and (forall ((o2_13@@4 T@Ref) (f_30@@4 T@Field_9955_53) ) (!  (=> (select (|PolymorphicMapType_10444_9955_53#PolymorphicMapType_10444| (select (|PolymorphicMapType_9895_6750_26910#PolymorphicMapType_9895| Heap@@5) null (WandMaskField_6750 pm_f_13@@2))) o2_13@@4 f_30@@4) (= (select (|PolymorphicMapType_9895_6552_53#PolymorphicMapType_9895| Heap@@5) o2_13@@4 f_30@@4) (select (|PolymorphicMapType_9895_6552_53#PolymorphicMapType_9895| ExhaleHeap@@4) o2_13@@4 f_30@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9895_6552_53#PolymorphicMapType_9895| ExhaleHeap@@4) o2_13@@4 f_30@@4))
)) (forall ((o2_13@@5 T@Ref) (f_30@@5 T@Field_9968_9969) ) (!  (=> (select (|PolymorphicMapType_10444_9955_9969#PolymorphicMapType_10444| (select (|PolymorphicMapType_9895_6750_26910#PolymorphicMapType_9895| Heap@@5) null (WandMaskField_6750 pm_f_13@@2))) o2_13@@5 f_30@@5) (= (select (|PolymorphicMapType_9895_6555_6556#PolymorphicMapType_9895| Heap@@5) o2_13@@5 f_30@@5) (select (|PolymorphicMapType_9895_6555_6556#PolymorphicMapType_9895| ExhaleHeap@@4) o2_13@@5 f_30@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9895_6555_6556#PolymorphicMapType_9895| ExhaleHeap@@4) o2_13@@5 f_30@@5))
))) (forall ((o2_13@@6 T@Ref) (f_30@@6 T@Field_15982_3106) ) (!  (=> (select (|PolymorphicMapType_10444_9955_3106#PolymorphicMapType_10444| (select (|PolymorphicMapType_9895_6750_26910#PolymorphicMapType_9895| Heap@@5) null (WandMaskField_6750 pm_f_13@@2))) o2_13@@6 f_30@@6) (= (select (|PolymorphicMapType_9895_6750_3106#PolymorphicMapType_9895| Heap@@5) o2_13@@6 f_30@@6) (select (|PolymorphicMapType_9895_6750_3106#PolymorphicMapType_9895| ExhaleHeap@@4) o2_13@@6 f_30@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9895_6750_3106#PolymorphicMapType_9895| ExhaleHeap@@4) o2_13@@6 f_30@@6))
))) (forall ((o2_13@@7 T@Ref) (f_30@@7 T@Field_6750_26733) ) (!  (=> (select (|PolymorphicMapType_10444_9955_26733#PolymorphicMapType_10444| (select (|PolymorphicMapType_9895_6750_26910#PolymorphicMapType_9895| Heap@@5) null (WandMaskField_6750 pm_f_13@@2))) o2_13@@7 f_30@@7) (= (select (|PolymorphicMapType_9895_9955_26733#PolymorphicMapType_9895| Heap@@5) o2_13@@7 f_30@@7) (select (|PolymorphicMapType_9895_9955_26733#PolymorphicMapType_9895| ExhaleHeap@@4) o2_13@@7 f_30@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9895_9955_26733#PolymorphicMapType_9895| ExhaleHeap@@4) o2_13@@7 f_30@@7))
))) (forall ((o2_13@@8 T@Ref) (f_30@@8 T@Field_6750_26866) ) (!  (=> (select (|PolymorphicMapType_10444_9955_28044#PolymorphicMapType_10444| (select (|PolymorphicMapType_9895_6750_26910#PolymorphicMapType_9895| Heap@@5) null (WandMaskField_6750 pm_f_13@@2))) o2_13@@8 f_30@@8) (= (select (|PolymorphicMapType_9895_6750_26910#PolymorphicMapType_9895| Heap@@5) o2_13@@8 f_30@@8) (select (|PolymorphicMapType_9895_6750_26910#PolymorphicMapType_9895| ExhaleHeap@@4) o2_13@@8 f_30@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9895_6750_26910#PolymorphicMapType_9895| ExhaleHeap@@4) o2_13@@8 f_30@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_6750_28571 pm_f_13@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.186:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2984| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.559:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2984| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_9895) (ExhaleHeap@@5 T@PolymorphicMapType_9895) (Mask@@16 T@PolymorphicMapType_9916) (o_22@@0 T@Ref) (f_30@@9 T@Field_6750_26866) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_6750_32571 Mask@@16 o_22@@0 f_30@@9) (= (select (|PolymorphicMapType_9895_6750_26910#PolymorphicMapType_9895| Heap@@6) o_22@@0 f_30@@9) (select (|PolymorphicMapType_9895_6750_26910#PolymorphicMapType_9895| ExhaleHeap@@5) o_22@@0 f_30@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_9895_6750_26910#PolymorphicMapType_9895| ExhaleHeap@@5) o_22@@0 f_30@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_9895) (ExhaleHeap@@6 T@PolymorphicMapType_9895) (Mask@@17 T@PolymorphicMapType_9916) (o_22@@1 T@Ref) (f_30@@10 T@Field_6750_26733) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_6750_26797 Mask@@17 o_22@@1 f_30@@10) (= (select (|PolymorphicMapType_9895_9955_26733#PolymorphicMapType_9895| Heap@@7) o_22@@1 f_30@@10) (select (|PolymorphicMapType_9895_9955_26733#PolymorphicMapType_9895| ExhaleHeap@@6) o_22@@1 f_30@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_9895_9955_26733#PolymorphicMapType_9895| ExhaleHeap@@6) o_22@@1 f_30@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_9895) (ExhaleHeap@@7 T@PolymorphicMapType_9895) (Mask@@18 T@PolymorphicMapType_9916) (o_22@@2 T@Ref) (f_30@@11 T@Field_9968_9969) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_6750_9969 Mask@@18 o_22@@2 f_30@@11) (= (select (|PolymorphicMapType_9895_6555_6556#PolymorphicMapType_9895| Heap@@8) o_22@@2 f_30@@11) (select (|PolymorphicMapType_9895_6555_6556#PolymorphicMapType_9895| ExhaleHeap@@7) o_22@@2 f_30@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_9895_6555_6556#PolymorphicMapType_9895| ExhaleHeap@@7) o_22@@2 f_30@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_9895) (ExhaleHeap@@8 T@PolymorphicMapType_9895) (Mask@@19 T@PolymorphicMapType_9916) (o_22@@3 T@Ref) (f_30@@12 T@Field_9955_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_6750_53 Mask@@19 o_22@@3 f_30@@12) (= (select (|PolymorphicMapType_9895_6552_53#PolymorphicMapType_9895| Heap@@9) o_22@@3 f_30@@12) (select (|PolymorphicMapType_9895_6552_53#PolymorphicMapType_9895| ExhaleHeap@@8) o_22@@3 f_30@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_9895_6552_53#PolymorphicMapType_9895| ExhaleHeap@@8) o_22@@3 f_30@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_9895) (ExhaleHeap@@9 T@PolymorphicMapType_9895) (Mask@@20 T@PolymorphicMapType_9916) (o_22@@4 T@Ref) (f_30@@13 T@Field_15982_3106) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_6750_3106 Mask@@20 o_22@@4 f_30@@13) (= (select (|PolymorphicMapType_9895_6750_3106#PolymorphicMapType_9895| Heap@@10) o_22@@4 f_30@@13) (select (|PolymorphicMapType_9895_6750_3106#PolymorphicMapType_9895| ExhaleHeap@@9) o_22@@4 f_30@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_9895_6750_3106#PolymorphicMapType_9895| ExhaleHeap@@9) o_22@@4 f_30@@13))
)))
(assert (forall ((s0@@1 T@Seq_16068) (s1@@1 T@Seq_16068) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_6764|)) (not (= s1@@1 |Seq#Empty_6764|))) (= (|Seq#Length_6755| (|Seq#Append_6755| s0@@1 s1@@1)) (+ (|Seq#Length_6755| s0@@1) (|Seq#Length_6755| s1@@1))))
 :qid |stdinbpl.236:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_6755| (|Seq#Append_6755| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_2984) (s1@@2 T@Seq_2984) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_2984|)) (not (= s1@@2 |Seq#Empty_2984|))) (= (|Seq#Length_2984| (|Seq#Append_2984| s0@@2 s1@@2)) (+ (|Seq#Length_2984| s0@@2) (|Seq#Length_2984| s1@@2))))
 :qid |stdinbpl.236:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2984| (|Seq#Append_2984| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_6750_26866) ) (! (= (select (|PolymorphicMapType_9916_6750_30988#PolymorphicMapType_9916| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9916_6750_30988#PolymorphicMapType_9916| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_6750_26733) ) (! (= (select (|PolymorphicMapType_9916_6750_26733#PolymorphicMapType_9916| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9916_6750_26733#PolymorphicMapType_9916| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_9968_9969) ) (! (= (select (|PolymorphicMapType_9916_6750_9969#PolymorphicMapType_9916| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9916_6750_9969#PolymorphicMapType_9916| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_9955_53) ) (! (= (select (|PolymorphicMapType_9916_6750_53#PolymorphicMapType_9916| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9916_6750_53#PolymorphicMapType_9916| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_15982_3106) ) (! (= (select (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((s@@15 T@Seq_16068) (t@@1 T@Seq_16068) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_6755| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_6755| s@@15)) (|Seq#Length_6755| s@@15)) n@@15) (= (|Seq#Drop_6755| (|Seq#Append_6755| s@@15 t@@1) n@@15) (|Seq#Drop_6755| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_6755| s@@15))))))
 :qid |stdinbpl.393:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_6755| (|Seq#Append_6755| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_2984) (t@@2 T@Seq_2984) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_2984| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_2984| s@@16)) (|Seq#Length_2984| s@@16)) n@@16) (= (|Seq#Drop_2984| (|Seq#Append_2984| s@@16 t@@2) n@@16) (|Seq#Drop_2984| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_2984| s@@16))))))
 :qid |stdinbpl.393:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_2984| (|Seq#Append_2984| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_9916) (SummandMask1 T@PolymorphicMapType_9916) (SummandMask2 T@PolymorphicMapType_9916) (o_2@@19 T@Ref) (f_4@@19 T@Field_6750_26866) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_9916_6750_30988#PolymorphicMapType_9916| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_9916_6750_30988#PolymorphicMapType_9916| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_9916_6750_30988#PolymorphicMapType_9916| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9916_6750_30988#PolymorphicMapType_9916| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9916_6750_30988#PolymorphicMapType_9916| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9916_6750_30988#PolymorphicMapType_9916| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_9916) (SummandMask1@@0 T@PolymorphicMapType_9916) (SummandMask2@@0 T@PolymorphicMapType_9916) (o_2@@20 T@Ref) (f_4@@20 T@Field_6750_26733) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_9916_6750_26733#PolymorphicMapType_9916| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_9916_6750_26733#PolymorphicMapType_9916| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_9916_6750_26733#PolymorphicMapType_9916| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9916_6750_26733#PolymorphicMapType_9916| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9916_6750_26733#PolymorphicMapType_9916| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9916_6750_26733#PolymorphicMapType_9916| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_9916) (SummandMask1@@1 T@PolymorphicMapType_9916) (SummandMask2@@1 T@PolymorphicMapType_9916) (o_2@@21 T@Ref) (f_4@@21 T@Field_9968_9969) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_9916_6750_9969#PolymorphicMapType_9916| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_9916_6750_9969#PolymorphicMapType_9916| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_9916_6750_9969#PolymorphicMapType_9916| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9916_6750_9969#PolymorphicMapType_9916| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9916_6750_9969#PolymorphicMapType_9916| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9916_6750_9969#PolymorphicMapType_9916| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_9916) (SummandMask1@@2 T@PolymorphicMapType_9916) (SummandMask2@@2 T@PolymorphicMapType_9916) (o_2@@22 T@Ref) (f_4@@22 T@Field_9955_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_9916_6750_53#PolymorphicMapType_9916| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_9916_6750_53#PolymorphicMapType_9916| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_9916_6750_53#PolymorphicMapType_9916| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9916_6750_53#PolymorphicMapType_9916| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9916_6750_53#PolymorphicMapType_9916| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9916_6750_53#PolymorphicMapType_9916| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_9916) (SummandMask1@@3 T@PolymorphicMapType_9916) (SummandMask2@@3 T@PolymorphicMapType_9916) (o_2@@23 T@Ref) (f_4@@23 T@Field_15982_3106) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2984| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2984| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.558:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2984| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_16068) (b T@Seq_16068) ) (!  (=> (|Seq#Equal_16068| a b) (= a b))
 :qid |stdinbpl.531:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_16068| a b))
)))
(assert (forall ((a@@0 T@Seq_2984) (b@@0 T@Seq_2984) ) (!  (=> (|Seq#Equal_2984| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.531:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_2984| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_16068) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_6755| s@@17))) (|Seq#ContainsTrigger_6755| s@@17 (|Seq#Index_6755| s@@17 i@@3)))
 :qid |stdinbpl.424:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_6755| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_2984) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_2984| s@@18))) (|Seq#ContainsTrigger_2984| s@@18 (|Seq#Index_2984| s@@18 i@@4)))
 :qid |stdinbpl.424:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2984| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_16068) (s1@@3 T@Seq_16068) ) (!  (and (=> (= s0@@3 |Seq#Empty_6764|) (= (|Seq#Append_6755| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_6764|) (= (|Seq#Append_6755| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.242:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_6755| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2984) (s1@@4 T@Seq_2984) ) (!  (and (=> (= s0@@4 |Seq#Empty_2984|) (= (|Seq#Append_2984| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_2984|) (= (|Seq#Append_2984| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.242:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_2984| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_6755| (|Seq#Singleton_6754| t@@3) 0) t@@3)
 :qid |stdinbpl.246:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_6754| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_2984| (|Seq#Singleton_2984| t@@4) 0) t@@4)
 :qid |stdinbpl.246:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_2984| t@@4))
)))
(assert (forall ((s@@19 T@Seq_16068) ) (! (<= 0 (|Seq#Length_6755| s@@19))
 :qid |stdinbpl.225:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_6755| s@@19))
)))
(assert (forall ((s@@20 T@Seq_2984) ) (! (<= 0 (|Seq#Length_2984| s@@20))
 :qid |stdinbpl.225:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2984| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_16068) (s1@@5 T@Seq_16068) ) (!  (=> (|Seq#Equal_16068| s0@@5 s1@@5) (and (= (|Seq#Length_6755| s0@@5) (|Seq#Length_6755| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_6755| s0@@5))) (= (|Seq#Index_6755| s0@@5 j@@6) (|Seq#Index_6755| s1@@5 j@@6)))
 :qid |stdinbpl.521:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_6755| s0@@5 j@@6))
 :pattern ( (|Seq#Index_6755| s1@@5 j@@6))
))))
 :qid |stdinbpl.518:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_16068| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_2984) (s1@@6 T@Seq_2984) ) (!  (=> (|Seq#Equal_2984| s0@@6 s1@@6) (and (= (|Seq#Length_2984| s0@@6) (|Seq#Length_2984| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_2984| s0@@6))) (= (|Seq#Index_2984| s0@@6 j@@7) (|Seq#Index_2984| s1@@6 j@@7)))
 :qid |stdinbpl.521:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2984| s0@@6 j@@7))
 :pattern ( (|Seq#Index_2984| s1@@6 j@@7))
))))
 :qid |stdinbpl.518:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_2984| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_6755| (|Seq#Singleton_6754| t@@5)) 1)
 :qid |stdinbpl.233:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_6754| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_2984| (|Seq#Singleton_2984| t@@6)) 1)
 :qid |stdinbpl.233:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_2984| t@@6))
)))
(assert (forall ((s@@21 T@Seq_16068) (t@@7 T@Seq_16068) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_6755| s@@21))) (= (|Seq#Take_6755| (|Seq#Append_6755| s@@21 t@@7) n@@17) (|Seq#Take_6755| s@@21 n@@17)))
 :qid |stdinbpl.375:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_6755| (|Seq#Append_6755| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_2984) (t@@8 T@Seq_2984) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_2984| s@@22))) (= (|Seq#Take_2984| (|Seq#Append_2984| s@@22 t@@8) n@@18) (|Seq#Take_2984| s@@22 n@@18)))
 :qid |stdinbpl.375:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2984| (|Seq#Append_2984| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_16068) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_6755| s@@23))) (= (|Seq#Length_6755| (|Seq#Update_6755| s@@23 i@@5 v@@2)) (|Seq#Length_6755| s@@23)))
 :qid |stdinbpl.274:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_6755| (|Seq#Update_6755| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_6755| s@@23) (|Seq#Update_6755| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_2984) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_2984| s@@24))) (= (|Seq#Length_2984| (|Seq#Update_2984| s@@24 i@@6 v@@3)) (|Seq#Length_2984| s@@24)))
 :qid |stdinbpl.274:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2984| (|Seq#Update_2984| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_2984| s@@24) (|Seq#Update_2984| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_9895) (o_35 T@Ref) (f_11 T@Field_6750_26733) (v@@4 T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_9895 (|PolymorphicMapType_9895_6552_53#PolymorphicMapType_9895| Heap@@11) (|PolymorphicMapType_9895_6555_6556#PolymorphicMapType_9895| Heap@@11) (|PolymorphicMapType_9895_6750_3106#PolymorphicMapType_9895| Heap@@11) (|PolymorphicMapType_9895_6750_26910#PolymorphicMapType_9895| Heap@@11) (store (|PolymorphicMapType_9895_9955_26733#PolymorphicMapType_9895| Heap@@11) o_35 f_11 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9895 (|PolymorphicMapType_9895_6552_53#PolymorphicMapType_9895| Heap@@11) (|PolymorphicMapType_9895_6555_6556#PolymorphicMapType_9895| Heap@@11) (|PolymorphicMapType_9895_6750_3106#PolymorphicMapType_9895| Heap@@11) (|PolymorphicMapType_9895_6750_26910#PolymorphicMapType_9895| Heap@@11) (store (|PolymorphicMapType_9895_9955_26733#PolymorphicMapType_9895| Heap@@11) o_35 f_11 v@@4)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_9895) (o_35@@0 T@Ref) (f_11@@0 T@Field_6750_26866) (v@@5 T@PolymorphicMapType_10444) ) (! (succHeap Heap@@12 (PolymorphicMapType_9895 (|PolymorphicMapType_9895_6552_53#PolymorphicMapType_9895| Heap@@12) (|PolymorphicMapType_9895_6555_6556#PolymorphicMapType_9895| Heap@@12) (|PolymorphicMapType_9895_6750_3106#PolymorphicMapType_9895| Heap@@12) (store (|PolymorphicMapType_9895_6750_26910#PolymorphicMapType_9895| Heap@@12) o_35@@0 f_11@@0 v@@5) (|PolymorphicMapType_9895_9955_26733#PolymorphicMapType_9895| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9895 (|PolymorphicMapType_9895_6552_53#PolymorphicMapType_9895| Heap@@12) (|PolymorphicMapType_9895_6555_6556#PolymorphicMapType_9895| Heap@@12) (|PolymorphicMapType_9895_6750_3106#PolymorphicMapType_9895| Heap@@12) (store (|PolymorphicMapType_9895_6750_26910#PolymorphicMapType_9895| Heap@@12) o_35@@0 f_11@@0 v@@5) (|PolymorphicMapType_9895_9955_26733#PolymorphicMapType_9895| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_9895) (o_35@@1 T@Ref) (f_11@@1 T@Field_15982_3106) (v@@6 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_9895 (|PolymorphicMapType_9895_6552_53#PolymorphicMapType_9895| Heap@@13) (|PolymorphicMapType_9895_6555_6556#PolymorphicMapType_9895| Heap@@13) (store (|PolymorphicMapType_9895_6750_3106#PolymorphicMapType_9895| Heap@@13) o_35@@1 f_11@@1 v@@6) (|PolymorphicMapType_9895_6750_26910#PolymorphicMapType_9895| Heap@@13) (|PolymorphicMapType_9895_9955_26733#PolymorphicMapType_9895| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9895 (|PolymorphicMapType_9895_6552_53#PolymorphicMapType_9895| Heap@@13) (|PolymorphicMapType_9895_6555_6556#PolymorphicMapType_9895| Heap@@13) (store (|PolymorphicMapType_9895_6750_3106#PolymorphicMapType_9895| Heap@@13) o_35@@1 f_11@@1 v@@6) (|PolymorphicMapType_9895_6750_26910#PolymorphicMapType_9895| Heap@@13) (|PolymorphicMapType_9895_9955_26733#PolymorphicMapType_9895| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_9895) (o_35@@2 T@Ref) (f_11@@2 T@Field_9968_9969) (v@@7 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_9895 (|PolymorphicMapType_9895_6552_53#PolymorphicMapType_9895| Heap@@14) (store (|PolymorphicMapType_9895_6555_6556#PolymorphicMapType_9895| Heap@@14) o_35@@2 f_11@@2 v@@7) (|PolymorphicMapType_9895_6750_3106#PolymorphicMapType_9895| Heap@@14) (|PolymorphicMapType_9895_6750_26910#PolymorphicMapType_9895| Heap@@14) (|PolymorphicMapType_9895_9955_26733#PolymorphicMapType_9895| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9895 (|PolymorphicMapType_9895_6552_53#PolymorphicMapType_9895| Heap@@14) (store (|PolymorphicMapType_9895_6555_6556#PolymorphicMapType_9895| Heap@@14) o_35@@2 f_11@@2 v@@7) (|PolymorphicMapType_9895_6750_3106#PolymorphicMapType_9895| Heap@@14) (|PolymorphicMapType_9895_6750_26910#PolymorphicMapType_9895| Heap@@14) (|PolymorphicMapType_9895_9955_26733#PolymorphicMapType_9895| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_9895) (o_35@@3 T@Ref) (f_11@@3 T@Field_9955_53) (v@@8 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_9895 (store (|PolymorphicMapType_9895_6552_53#PolymorphicMapType_9895| Heap@@15) o_35@@3 f_11@@3 v@@8) (|PolymorphicMapType_9895_6555_6556#PolymorphicMapType_9895| Heap@@15) (|PolymorphicMapType_9895_6750_3106#PolymorphicMapType_9895| Heap@@15) (|PolymorphicMapType_9895_6750_26910#PolymorphicMapType_9895| Heap@@15) (|PolymorphicMapType_9895_9955_26733#PolymorphicMapType_9895| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9895 (store (|PolymorphicMapType_9895_6552_53#PolymorphicMapType_9895| Heap@@15) o_35@@3 f_11@@3 v@@8) (|PolymorphicMapType_9895_6555_6556#PolymorphicMapType_9895| Heap@@15) (|PolymorphicMapType_9895_6750_3106#PolymorphicMapType_9895| Heap@@15) (|PolymorphicMapType_9895_6750_26910#PolymorphicMapType_9895| Heap@@15) (|PolymorphicMapType_9895_9955_26733#PolymorphicMapType_9895| Heap@@15)))
)))
(assert (forall ((s@@25 T@Seq_16068) (t@@9 T@Seq_16068) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_6755| s@@25))) (= (|Seq#Drop_6755| (|Seq#Append_6755| s@@25 t@@9) n@@19) (|Seq#Append_6755| (|Seq#Drop_6755| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.389:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_6755| (|Seq#Append_6755| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_2984) (t@@10 T@Seq_2984) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_2984| s@@26))) (= (|Seq#Drop_2984| (|Seq#Append_2984| s@@26 t@@10) n@@20) (|Seq#Append_2984| (|Seq#Drop_2984| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.389:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_2984| (|Seq#Append_2984| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_16068) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_6755| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_6755| (|Seq#Drop_6755| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_6755| s@@27 i@@7))))
 :qid |stdinbpl.325:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_6755| s@@27 n@@21) (|Seq#Index_6755| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_2984) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_2984| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_2984| (|Seq#Drop_2984| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_2984| s@@28 i@@8))))
 :qid |stdinbpl.325:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_2984| s@@28 n@@22) (|Seq#Index_2984| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_16068) (s1@@7 T@Seq_16068) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_6764|)) (not (= s1@@7 |Seq#Empty_6764|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_6755| s0@@7))) (= (|Seq#Index_6755| (|Seq#Append_6755| s0@@7 s1@@7) n@@23) (|Seq#Index_6755| s0@@7 n@@23)))
 :qid |stdinbpl.265:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_6755| (|Seq#Append_6755| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_6755| s0@@7 n@@23) (|Seq#Append_6755| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_2984) (s1@@8 T@Seq_2984) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_2984|)) (not (= s1@@8 |Seq#Empty_2984|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_2984| s0@@8))) (= (|Seq#Index_2984| (|Seq#Append_2984| s0@@8 s1@@8) n@@24) (|Seq#Index_2984| s0@@8 n@@24)))
 :qid |stdinbpl.265:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2984| (|Seq#Append_2984| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_2984| s0@@8 n@@24) (|Seq#Append_2984| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_16068) (s1@@9 T@Seq_16068) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_6764|)) (not (= s1@@9 |Seq#Empty_6764|))) (<= 0 m)) (< m (|Seq#Length_6755| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_6755| s0@@9)) (|Seq#Length_6755| s0@@9)) m) (= (|Seq#Index_6755| (|Seq#Append_6755| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_6755| s0@@9))) (|Seq#Index_6755| s1@@9 m))))
 :qid |stdinbpl.270:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_6755| s1@@9 m) (|Seq#Append_6755| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_2984) (s1@@10 T@Seq_2984) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_2984|)) (not (= s1@@10 |Seq#Empty_2984|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_2984| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_2984| s0@@10)) (|Seq#Length_2984| s0@@10)) m@@0) (= (|Seq#Index_2984| (|Seq#Append_2984| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_2984| s0@@10))) (|Seq#Index_2984| s1@@10 m@@0))))
 :qid |stdinbpl.270:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2984| s1@@10 m@@0) (|Seq#Append_2984| s0@@10 s1@@10))
)))
(assert (forall ((o_35@@4 T@Ref) (f_31 T@Field_9968_9969) (Heap@@16 T@PolymorphicMapType_9895) ) (!  (=> (select (|PolymorphicMapType_9895_6552_53#PolymorphicMapType_9895| Heap@@16) o_35@@4 $allocated) (select (|PolymorphicMapType_9895_6552_53#PolymorphicMapType_9895| Heap@@16) (select (|PolymorphicMapType_9895_6555_6556#PolymorphicMapType_9895| Heap@@16) o_35@@4 f_31) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_9895_6555_6556#PolymorphicMapType_9895| Heap@@16) o_35@@4 f_31))
)))
(assert (forall ((s@@29 T@Seq_16068) (x@@3 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_6755| s@@29))) (= (|Seq#Index_6755| s@@29 i@@9) x@@3)) (|Seq#Contains_16068| s@@29 x@@3))
 :qid |stdinbpl.422:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_16068| s@@29 x@@3) (|Seq#Index_6755| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_2984) (x@@4 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_2984| s@@30))) (= (|Seq#Index_2984| s@@30 i@@10) x@@4)) (|Seq#Contains_2984| s@@30 x@@4))
 :qid |stdinbpl.422:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2984| s@@30 x@@4) (|Seq#Index_2984| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_16068) (s1@@11 T@Seq_16068) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_16068| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_16068| s0@@11 s1@@11))) (not (= (|Seq#Length_6755| s0@@11) (|Seq#Length_6755| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_16068| s0@@11 s1@@11))) (= (|Seq#Length_6755| s0@@11) (|Seq#Length_6755| s1@@11))) (= (|Seq#SkolemDiff_16068| s0@@11 s1@@11) (|Seq#SkolemDiff_16068| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_16068| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_16068| s0@@11 s1@@11) (|Seq#Length_6755| s0@@11))) (not (= (|Seq#Index_6755| s0@@11 (|Seq#SkolemDiff_16068| s0@@11 s1@@11)) (|Seq#Index_6755| s1@@11 (|Seq#SkolemDiff_16068| s0@@11 s1@@11))))))
 :qid |stdinbpl.526:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_16068| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_2984) (s1@@12 T@Seq_2984) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_2984| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2984| s0@@12 s1@@12))) (not (= (|Seq#Length_2984| s0@@12) (|Seq#Length_2984| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2984| s0@@12 s1@@12))) (= (|Seq#Length_2984| s0@@12) (|Seq#Length_2984| s1@@12))) (= (|Seq#SkolemDiff_2984| s0@@12 s1@@12) (|Seq#SkolemDiff_2984| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_2984| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_2984| s0@@12 s1@@12) (|Seq#Length_2984| s0@@12))) (not (= (|Seq#Index_2984| s0@@12 (|Seq#SkolemDiff_2984| s0@@12 s1@@12)) (|Seq#Index_2984| s1@@12 (|Seq#SkolemDiff_2984| s0@@12 s1@@12))))))
 :qid |stdinbpl.526:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_2984| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_6750_26733) (v_1@@0 T@FrameType) (q T@Field_6750_26733) (w@@0 T@FrameType) (r T@Field_6750_26733) (u T@FrameType) ) (!  (=> (and (InsidePredicate_9955_9955 p@@1 v_1@@0 q w@@0) (InsidePredicate_9955_9955 q w@@0 r u)) (InsidePredicate_9955_9955 p@@1 v_1@@0 r u))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9955_9955 p@@1 v_1@@0 q w@@0) (InsidePredicate_9955_9955 q w@@0 r u))
)))
(assert (forall ((s@@31 T@Seq_16068) ) (!  (=> (= (|Seq#Length_6755| s@@31) 0) (= s@@31 |Seq#Empty_6764|))
 :qid |stdinbpl.229:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_6755| s@@31))
)))
(assert (forall ((s@@32 T@Seq_2984) ) (!  (=> (= (|Seq#Length_2984| s@@32) 0) (= s@@32 |Seq#Empty_2984|))
 :qid |stdinbpl.229:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2984| s@@32))
)))
(assert (forall ((s@@33 T@Seq_16068) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_6755| s@@33 n@@25) |Seq#Empty_6764|))
 :qid |stdinbpl.405:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_6755| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_2984) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_2984| s@@34 n@@26) |Seq#Empty_2984|))
 :qid |stdinbpl.405:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_2984| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun i@0 () Int)
(declare-fun j_6 () Int)
(declare-fun v_2@1 () T@Seq_16068)
(declare-fun QPMask@4 () T@PolymorphicMapType_9916)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_9916)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_9895)
(declare-fun j@@8 () Int)
(declare-fun i1_17 () Int)
(declare-fun i2_7 () Int)
(declare-fun i@1 () Int)
(declare-fun j_10_2 () Int)
(declare-fun Heap@1 () T@PolymorphicMapType_9895)
(declare-fun v_2@2 () T@Seq_16068)
(declare-fun neverTriggered4 (Int) Bool)
(declare-fun Mask@0 () T@PolymorphicMapType_9916)
(declare-fun qpRange4 (T@Ref) Bool)
(declare-fun invRecv4 (T@Ref) Int)
(declare-fun QPMask@3 () T@PolymorphicMapType_9916)
(declare-fun i1_5 () Int)
(declare-fun i2_5 () Int)
(declare-fun qpRange3 (T@Ref) Bool)
(declare-fun invRecv3 (T@Ref) Int)
(declare-fun QPMask@1 () T@PolymorphicMapType_9916)
(declare-fun freshObj@0 () T@Ref)
(declare-fun Heap@0 () T@PolymorphicMapType_9895)
(declare-fun j_15_1 () Int)
(declare-fun j_2 () Int)
(declare-fun QPMask@2 () T@PolymorphicMapType_9916)
(declare-fun qpRange5 (T@Ref) Bool)
(declare-fun invRecv5 (T@Ref) Int)
(declare-fun v_2@0 () T@Seq_16068)
(declare-fun Heap@@17 () T@PolymorphicMapType_9895)
(declare-fun tmp@0 () T@Ref)
(declare-fun j_1 () Int)
(declare-fun neverTriggered1 (Int) Bool)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) Int)
(declare-fun i1 () Int)
(declare-fun i2_1 () Int)
(declare-fun tmp () T@Ref)
(set-info :boogie-vc-id main)
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
 (=> (= (ControlFlow 0 0) 69) (let ((anon20_correct true))
(let ((anon51_Else_correct  (=> (and (not (|Seq#Contains_2984| (|Seq#Range| 0 i@0) j_6)) (= (ControlFlow 0 57) 52)) anon20_correct)))
(let ((anon51_Then_correct  (=> (|Seq#Contains_2984| (|Seq#Range| 0 i@0) j_6) (and (=> (= (ControlFlow 0 53) (- 0 56)) (>= j_6 0)) (=> (>= j_6 0) (and (=> (= (ControlFlow 0 53) (- 0 55)) (< j_6 (|Seq#Length_6755| v_2@1))) (=> (< j_6 (|Seq#Length_6755| v_2@1)) (and (=> (= (ControlFlow 0 53) (- 0 54)) (HasDirectPerm_6750_3106 QPMask@4 (|Seq#Index_6755| v_2@1 j_6) val)) (=> (HasDirectPerm_6750_3106 QPMask@4 (|Seq#Index_6755| v_2@1 j_6) val) (=> (= (ControlFlow 0 53) 52) anon20_correct))))))))))
(let ((anon50_Else_correct true))
(let ((anon48_Else_correct  (and (=> (= (ControlFlow 0 58) (- 0 59)) (forall ((j_4_1 Int) (j_4_2 Int) ) (!  (=> (and (and (and (and (not (= j_4_1 j_4_2)) (|Seq#Contains_2984| (|Seq#Range| 0 i@0) j_4_1)) (|Seq#Contains_2984| (|Seq#Range| 0 i@0) j_4_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_6755| v_2@1 j_4_1) (|Seq#Index_6755| v_2@1 j_4_2))))
 :qid |stdinbpl.756:19|
 :skolemid |67|
))) (=> (forall ((j_4_1@@0 Int) (j_4_2@@0 Int) ) (!  (=> (and (and (and (and (not (= j_4_1@@0 j_4_2@@0)) (|Seq#Contains_2984| (|Seq#Range| 0 i@0) j_4_1@@0)) (|Seq#Contains_2984| (|Seq#Range| 0 i@0) j_4_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_6755| v_2@1 j_4_1@@0) (|Seq#Index_6755| v_2@1 j_4_2@@0))))
 :qid |stdinbpl.756:19|
 :skolemid |67|
)) (=> (and (and (forall ((j_4_1@@1 Int) ) (!  (=> (and (|Seq#Contains_2984| (|Seq#Range| 0 i@0) j_4_1@@1) (< NoPerm FullPerm)) (and (qpRange2 (|Seq#Index_6755| v_2@1 j_4_1@@1)) (= (invRecv2 (|Seq#Index_6755| v_2@1 j_4_1@@1)) j_4_1@@1)))
 :qid |stdinbpl.762:26|
 :skolemid |68|
 :pattern ( (|Seq#Index_6755| v_2@1 j_4_1@@1))
 :pattern ( (|Seq#ContainsTrigger_2984| (|Seq#Range| 0 i@0) j_4_1@@1))
 :pattern ( (|Seq#Contains_2984| (|Seq#Range| 0 i@0) j_4_1@@1))
 :pattern ( (|Seq#Index_6755| v_2@1 j_4_1@@1))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (|Seq#Contains_2984| (|Seq#Range| 0 i@0) (invRecv2 o_4)) (< NoPerm FullPerm)) (qpRange2 o_4)) (= (|Seq#Index_6755| v_2@1 (invRecv2 o_4)) o_4))
 :qid |stdinbpl.766:26|
 :skolemid |69|
 :pattern ( (invRecv2 o_4))
))) (and (forall ((j_4_1@@2 Int) ) (!  (=> (|Seq#Contains_2984| (|Seq#Range| 0 i@0) j_4_1@@2) (not (= (|Seq#Index_6755| v_2@1 j_4_1@@2) null)))
 :qid |stdinbpl.772:26|
 :skolemid |70|
 :pattern ( (|Seq#Index_6755| v_2@1 j_4_1@@2))
 :pattern ( (|Seq#ContainsTrigger_2984| (|Seq#Range| 0 i@0) j_4_1@@2))
 :pattern ( (|Seq#Contains_2984| (|Seq#Range| 0 i@0) j_4_1@@2))
 :pattern ( (|Seq#Index_6755| v_2@1 j_4_1@@2))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_2984| (|Seq#Range| 0 i@0) (invRecv2 o_4@@0)) (< NoPerm FullPerm)) (qpRange2 o_4@@0)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_6755| v_2@1 (invRecv2 o_4@@0)) o_4@@0)) (= (select (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| QPMask@4) o_4@@0 val) (+ (select (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| QPMask@0) o_4@@0 val) FullPerm)))) (=> (not (and (and (|Seq#Contains_2984| (|Seq#Range| 0 i@0) (invRecv2 o_4@@0)) (< NoPerm FullPerm)) (qpRange2 o_4@@0))) (= (select (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| QPMask@4) o_4@@0 val) (select (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| QPMask@0) o_4@@0 val))))
 :qid |stdinbpl.778:26|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| QPMask@4) o_4@@0 val))
)))) (=> (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_9955_53) ) (!  (=> true (= (select (|PolymorphicMapType_9916_6750_53#PolymorphicMapType_9916| QPMask@0) o_4@@1 f_5) (select (|PolymorphicMapType_9916_6750_53#PolymorphicMapType_9916| QPMask@4) o_4@@1 f_5)))
 :qid |stdinbpl.782:33|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_9916_6750_53#PolymorphicMapType_9916| QPMask@0) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_9916_6750_53#PolymorphicMapType_9916| QPMask@4) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_9968_9969) ) (!  (=> true (= (select (|PolymorphicMapType_9916_6750_9969#PolymorphicMapType_9916| QPMask@0) o_4@@2 f_5@@0) (select (|PolymorphicMapType_9916_6750_9969#PolymorphicMapType_9916| QPMask@4) o_4@@2 f_5@@0)))
 :qid |stdinbpl.782:33|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_9916_6750_9969#PolymorphicMapType_9916| QPMask@0) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_9916_6750_9969#PolymorphicMapType_9916| QPMask@4) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_15982_3106) ) (!  (=> (not (= f_5@@1 val)) (= (select (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| QPMask@0) o_4@@3 f_5@@1) (select (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| QPMask@4) o_4@@3 f_5@@1)))
 :qid |stdinbpl.782:33|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| QPMask@0) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| QPMask@4) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_6750_26733) ) (!  (=> true (= (select (|PolymorphicMapType_9916_6750_26733#PolymorphicMapType_9916| QPMask@0) o_4@@4 f_5@@2) (select (|PolymorphicMapType_9916_6750_26733#PolymorphicMapType_9916| QPMask@4) o_4@@4 f_5@@2)))
 :qid |stdinbpl.782:33|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_9916_6750_26733#PolymorphicMapType_9916| QPMask@0) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_9916_6750_26733#PolymorphicMapType_9916| QPMask@4) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_6750_26866) ) (!  (=> true (= (select (|PolymorphicMapType_9916_6750_30988#PolymorphicMapType_9916| QPMask@0) o_4@@5 f_5@@3) (select (|PolymorphicMapType_9916_6750_30988#PolymorphicMapType_9916| QPMask@4) o_4@@5 f_5@@3)))
 :qid |stdinbpl.782:33|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_9916_6750_30988#PolymorphicMapType_9916| QPMask@0) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_9916_6750_30988#PolymorphicMapType_9916| QPMask@4) o_4@@5 f_5@@3))
))) (and (state ExhaleHeap@0 QPMask@4) (state ExhaleHeap@0 QPMask@4))) (and (and (=> (= (ControlFlow 0 58) 51) anon50_Else_correct) (=> (= (ControlFlow 0 58) 53) anon51_Then_correct)) (=> (= (ControlFlow 0 58) 57) anon51_Else_correct))))))))
(let ((anon16_correct true))
(let ((anon49_Else_correct  (=> (and (not (|Seq#Contains_2984| (|Seq#Range| 0 i@0) j@@8)) (= (ControlFlow 0 50) 46)) anon16_correct)))
(let ((anon49_Then_correct  (=> (|Seq#Contains_2984| (|Seq#Range| 0 i@0) j@@8) (and (=> (= (ControlFlow 0 47) (- 0 49)) (>= j@@8 0)) (=> (>= j@@8 0) (and (=> (= (ControlFlow 0 47) (- 0 48)) (< j@@8 (|Seq#Length_6755| v_2@1))) (=> (< j@@8 (|Seq#Length_6755| v_2@1)) (=> (= (ControlFlow 0 47) 46) anon16_correct))))))))
(let ((anon46_Else_correct  (=> (and (forall ((i1_3 Int) (i2_3 Int) ) (!  (=> (and (|Seq#Contains_2984| (|Seq#Range| 0 i@0) i1_3) (and (|Seq#Contains_2984| (|Seq#Range| 0 i@0) i2_3) (not (= i1_3 i2_3)))) (not (= (|Seq#Index_6755| v_2@1 i1_3) (|Seq#Index_6755| v_2@1 i2_3))))
 :qid |stdinbpl.738:24|
 :skolemid |66|
 :pattern ( (|Seq#ContainsTrigger_2984| (|Seq#Range| 0 i@0) i1_3) (|Seq#ContainsTrigger_2984| (|Seq#Range| 0 i@0) i2_3))
 :pattern ( (|Seq#ContainsTrigger_2984| (|Seq#Range| 0 i@0) i1_3) (|Seq#Contains_2984| (|Seq#Range| 0 i@0) i2_3))
 :pattern ( (|Seq#Contains_2984| (|Seq#Range| 0 i@0) i1_3) (|Seq#ContainsTrigger_2984| (|Seq#Range| 0 i@0) i2_3))
 :pattern ( (|Seq#Contains_2984| (|Seq#Range| 0 i@0) i1_3) (|Seq#Contains_2984| (|Seq#Range| 0 i@0) i2_3))
 :pattern ( (|Seq#ContainsTrigger_2984| (|Seq#Range| 0 i@0) i1_3) (|Seq#Index_6755| v_2@1 i2_3))
 :pattern ( (|Seq#Contains_2984| (|Seq#Range| 0 i@0) i1_3) (|Seq#Index_6755| v_2@1 i2_3))
 :pattern ( (|Seq#ContainsTrigger_2984| (|Seq#Range| 0 i@0) i2_3) (|Seq#Index_6755| v_2@1 i1_3))
 :pattern ( (|Seq#Contains_2984| (|Seq#Range| 0 i@0) i2_3) (|Seq#Index_6755| v_2@1 i1_3))
 :pattern ( (|Seq#Index_6755| v_2@1 i1_3) (|Seq#Index_6755| v_2@1 i2_3))
)) (state ExhaleHeap@0 QPMask@0)) (and (and (=> (= (ControlFlow 0 60) 58) anon48_Else_correct) (=> (= (ControlFlow 0 60) 47) anon49_Then_correct)) (=> (= (ControlFlow 0 60) 50) anon49_Else_correct)))))
(let ((anon12_correct true))
(let ((anon47_Else_correct  (=> (and (not (and (|Seq#Contains_2984| (|Seq#Range| 0 i@0) i1_17) (and (|Seq#Contains_2984| (|Seq#Range| 0 i@0) i2_7) (not (= i1_17 i2_7))))) (= (ControlFlow 0 45) 39)) anon12_correct)))
(let ((anon47_Then_correct  (=> (and (|Seq#Contains_2984| (|Seq#Range| 0 i@0) i1_17) (and (|Seq#Contains_2984| (|Seq#Range| 0 i@0) i2_7) (not (= i1_17 i2_7)))) (and (=> (= (ControlFlow 0 40) (- 0 44)) (>= i1_17 0)) (=> (>= i1_17 0) (and (=> (= (ControlFlow 0 40) (- 0 43)) (< i1_17 (|Seq#Length_6755| v_2@1))) (=> (< i1_17 (|Seq#Length_6755| v_2@1)) (and (=> (= (ControlFlow 0 40) (- 0 42)) (>= i2_7 0)) (=> (>= i2_7 0) (and (=> (= (ControlFlow 0 40) (- 0 41)) (< i2_7 (|Seq#Length_6755| v_2@1))) (=> (< i2_7 (|Seq#Length_6755| v_2@1)) (=> (= (ControlFlow 0 40) 39) anon12_correct))))))))))))
(let ((anon45_Then_correct  (=> (and (and (<= i@0 10) (state ExhaleHeap@0 QPMask@0)) (and (= (|Seq#Length_6755| v_2@1) i@0) (state ExhaleHeap@0 QPMask@0))) (and (and (=> (= (ControlFlow 0 61) 60) anon46_Else_correct) (=> (= (ControlFlow 0 61) 40) anon47_Then_correct)) (=> (= (ControlFlow 0 61) 45) anon47_Else_correct)))))
(let ((anon30_correct true))
(let ((anon56_Else_correct  (=> (and (not (|Seq#Contains_2984| (|Seq#Range| 0 i@1) j_10_2)) (= (ControlFlow 0 30) 27)) anon30_correct)))
(let ((anon56_Then_correct  (=> (|Seq#Contains_2984| (|Seq#Range| 0 i@1) j_10_2) (and (=> (= (ControlFlow 0 28) (- 0 29)) (= (select (|PolymorphicMapType_9895_6750_3106#PolymorphicMapType_9895| Heap@1) (|Seq#Index_6755| v_2@2 j_10_2) val) 1)) (=> (= (select (|PolymorphicMapType_9895_6750_3106#PolymorphicMapType_9895| Heap@1) (|Seq#Index_6755| v_2@2 j_10_2) val) 1) (=> (= (ControlFlow 0 28) 27) anon30_correct))))))
(let ((anon55_Else_correct true))
(let ((anon53_Else_correct  (=> (forall ((i1_6_1_1 Int) (i2_6_1 Int) ) (!  (=> (and (|Seq#Contains_2984| (|Seq#Range| 0 i@1) i1_6_1_1) (and (|Seq#Contains_2984| (|Seq#Range| 0 i@1) i2_6_1) (not (= i1_6_1_1 i2_6_1)))) (not (= (|Seq#Index_6755| v_2@2 i1_6_1_1) (|Seq#Index_6755| v_2@2 i2_6_1))))
 :qid |stdinbpl.904:24|
 :skolemid |82|
 :pattern ( (|Seq#ContainsTrigger_2984| (|Seq#Range| 0 i@1) i1_6_1_1) (|Seq#ContainsTrigger_2984| (|Seq#Range| 0 i@1) i2_6_1))
 :pattern ( (|Seq#ContainsTrigger_2984| (|Seq#Range| 0 i@1) i1_6_1_1) (|Seq#Contains_2984| (|Seq#Range| 0 i@1) i2_6_1))
 :pattern ( (|Seq#Contains_2984| (|Seq#Range| 0 i@1) i1_6_1_1) (|Seq#ContainsTrigger_2984| (|Seq#Range| 0 i@1) i2_6_1))
 :pattern ( (|Seq#Contains_2984| (|Seq#Range| 0 i@1) i1_6_1_1) (|Seq#Contains_2984| (|Seq#Range| 0 i@1) i2_6_1))
 :pattern ( (|Seq#ContainsTrigger_2984| (|Seq#Range| 0 i@1) i1_6_1_1) (|Seq#Index_6755| v_2@2 i2_6_1))
 :pattern ( (|Seq#Contains_2984| (|Seq#Range| 0 i@1) i1_6_1_1) (|Seq#Index_6755| v_2@2 i2_6_1))
 :pattern ( (|Seq#ContainsTrigger_2984| (|Seq#Range| 0 i@1) i2_6_1) (|Seq#Index_6755| v_2@2 i1_6_1_1))
 :pattern ( (|Seq#Contains_2984| (|Seq#Range| 0 i@1) i2_6_1) (|Seq#Index_6755| v_2@2 i1_6_1_1))
 :pattern ( (|Seq#Index_6755| v_2@2 i1_6_1_1) (|Seq#Index_6755| v_2@2 i2_6_1))
)) (and (=> (= (ControlFlow 0 31) (- 0 33)) (forall ((j_9_1 Int) (j_9_2 Int) ) (!  (=> (and (and (and (and (not (= j_9_1 j_9_2)) (|Seq#Contains_2984| (|Seq#Range| 0 i@1) j_9_1)) (|Seq#Contains_2984| (|Seq#Range| 0 i@1) j_9_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_6755| v_2@2 j_9_1) (|Seq#Index_6755| v_2@2 j_9_2))))
 :qid |stdinbpl.915:21|
 :skolemid |83|
 :pattern ( (neverTriggered4 j_9_1) (neverTriggered4 j_9_2))
))) (=> (forall ((j_9_1@@0 Int) (j_9_2@@0 Int) ) (!  (=> (and (and (and (and (not (= j_9_1@@0 j_9_2@@0)) (|Seq#Contains_2984| (|Seq#Range| 0 i@1) j_9_1@@0)) (|Seq#Contains_2984| (|Seq#Range| 0 i@1) j_9_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_6755| v_2@2 j_9_1@@0) (|Seq#Index_6755| v_2@2 j_9_2@@0))))
 :qid |stdinbpl.915:21|
 :skolemid |83|
 :pattern ( (neverTriggered4 j_9_1@@0) (neverTriggered4 j_9_2@@0))
)) (and (=> (= (ControlFlow 0 31) (- 0 32)) (forall ((j_9_1@@1 Int) ) (!  (=> (|Seq#Contains_2984| (|Seq#Range| 0 i@1) j_9_1@@1) (>= (select (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| Mask@0) (|Seq#Index_6755| v_2@2 j_9_1@@1) val) FullPerm))
 :qid |stdinbpl.922:21|
 :skolemid |84|
 :pattern ( (|Seq#Index_6755| v_2@2 j_9_1@@1))
 :pattern ( (|Seq#ContainsTrigger_2984| (|Seq#Range| 0 i@1) j_9_1@@1))
 :pattern ( (|Seq#Contains_2984| (|Seq#Range| 0 i@1) j_9_1@@1))
 :pattern ( (|Seq#Index_6755| v_2@2 j_9_1@@1))
))) (=> (forall ((j_9_1@@2 Int) ) (!  (=> (|Seq#Contains_2984| (|Seq#Range| 0 i@1) j_9_1@@2) (>= (select (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| Mask@0) (|Seq#Index_6755| v_2@2 j_9_1@@2) val) FullPerm))
 :qid |stdinbpl.922:21|
 :skolemid |84|
 :pattern ( (|Seq#Index_6755| v_2@2 j_9_1@@2))
 :pattern ( (|Seq#ContainsTrigger_2984| (|Seq#Range| 0 i@1) j_9_1@@2))
 :pattern ( (|Seq#Contains_2984| (|Seq#Range| 0 i@1) j_9_1@@2))
 :pattern ( (|Seq#Index_6755| v_2@2 j_9_1@@2))
)) (=> (forall ((j_9_1@@3 Int) ) (!  (=> (and (|Seq#Contains_2984| (|Seq#Range| 0 i@1) j_9_1@@3) (< NoPerm FullPerm)) (and (qpRange4 (|Seq#Index_6755| v_2@2 j_9_1@@3)) (= (invRecv4 (|Seq#Index_6755| v_2@2 j_9_1@@3)) j_9_1@@3)))
 :qid |stdinbpl.928:26|
 :skolemid |85|
 :pattern ( (|Seq#Index_6755| v_2@2 j_9_1@@3))
 :pattern ( (|Seq#ContainsTrigger_2984| (|Seq#Range| 0 i@1) j_9_1@@3))
 :pattern ( (|Seq#Contains_2984| (|Seq#Range| 0 i@1) j_9_1@@3))
 :pattern ( (|Seq#Index_6755| v_2@2 j_9_1@@3))
)) (=> (and (forall ((o_4@@6 T@Ref) ) (!  (=> (and (|Seq#Contains_2984| (|Seq#Range| 0 i@1) (invRecv4 o_4@@6)) (and (< NoPerm FullPerm) (qpRange4 o_4@@6))) (= (|Seq#Index_6755| v_2@2 (invRecv4 o_4@@6)) o_4@@6))
 :qid |stdinbpl.932:26|
 :skolemid |86|
 :pattern ( (invRecv4 o_4@@6))
)) (forall ((o_4@@7 T@Ref) ) (!  (and (=> (and (|Seq#Contains_2984| (|Seq#Range| 0 i@1) (invRecv4 o_4@@7)) (and (< NoPerm FullPerm) (qpRange4 o_4@@7))) (and (= (|Seq#Index_6755| v_2@2 (invRecv4 o_4@@7)) o_4@@7) (= (select (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| QPMask@3) o_4@@7 val) (- (select (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| Mask@0) o_4@@7 val) FullPerm)))) (=> (not (and (|Seq#Contains_2984| (|Seq#Range| 0 i@1) (invRecv4 o_4@@7)) (and (< NoPerm FullPerm) (qpRange4 o_4@@7)))) (= (select (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| QPMask@3) o_4@@7 val) (select (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| Mask@0) o_4@@7 val))))
 :qid |stdinbpl.938:26|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| QPMask@3) o_4@@7 val))
))) (=> (and (and (and (and (forall ((o_4@@8 T@Ref) (f_5@@4 T@Field_9955_53) ) (!  (=> true (= (select (|PolymorphicMapType_9916_6750_53#PolymorphicMapType_9916| Mask@0) o_4@@8 f_5@@4) (select (|PolymorphicMapType_9916_6750_53#PolymorphicMapType_9916| QPMask@3) o_4@@8 f_5@@4)))
 :qid |stdinbpl.944:33|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_9916_6750_53#PolymorphicMapType_9916| QPMask@3) o_4@@8 f_5@@4))
)) (forall ((o_4@@9 T@Ref) (f_5@@5 T@Field_9968_9969) ) (!  (=> true (= (select (|PolymorphicMapType_9916_6750_9969#PolymorphicMapType_9916| Mask@0) o_4@@9 f_5@@5) (select (|PolymorphicMapType_9916_6750_9969#PolymorphicMapType_9916| QPMask@3) o_4@@9 f_5@@5)))
 :qid |stdinbpl.944:33|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_9916_6750_9969#PolymorphicMapType_9916| QPMask@3) o_4@@9 f_5@@5))
))) (forall ((o_4@@10 T@Ref) (f_5@@6 T@Field_15982_3106) ) (!  (=> (not (= f_5@@6 val)) (= (select (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| Mask@0) o_4@@10 f_5@@6) (select (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| QPMask@3) o_4@@10 f_5@@6)))
 :qid |stdinbpl.944:33|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| QPMask@3) o_4@@10 f_5@@6))
))) (forall ((o_4@@11 T@Ref) (f_5@@7 T@Field_6750_26733) ) (!  (=> true (= (select (|PolymorphicMapType_9916_6750_26733#PolymorphicMapType_9916| Mask@0) o_4@@11 f_5@@7) (select (|PolymorphicMapType_9916_6750_26733#PolymorphicMapType_9916| QPMask@3) o_4@@11 f_5@@7)))
 :qid |stdinbpl.944:33|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_9916_6750_26733#PolymorphicMapType_9916| QPMask@3) o_4@@11 f_5@@7))
))) (forall ((o_4@@12 T@Ref) (f_5@@8 T@Field_6750_26866) ) (!  (=> true (= (select (|PolymorphicMapType_9916_6750_30988#PolymorphicMapType_9916| Mask@0) o_4@@12 f_5@@8) (select (|PolymorphicMapType_9916_6750_30988#PolymorphicMapType_9916| QPMask@3) o_4@@12 f_5@@8)))
 :qid |stdinbpl.944:33|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_9916_6750_30988#PolymorphicMapType_9916| QPMask@3) o_4@@12 f_5@@8))
))) (and (and (=> (= (ControlFlow 0 31) 26) anon55_Else_correct) (=> (= (ControlFlow 0 31) 28) anon56_Then_correct)) (=> (= (ControlFlow 0 31) 30) anon56_Else_correct))))))))))))
(let ((anon26_correct true))
(let ((anon54_Else_correct  (=> (and (not (and (|Seq#Contains_2984| (|Seq#Range| 0 i@1) i1_5) (and (|Seq#Contains_2984| (|Seq#Range| 0 i@1) i2_5) (not (= i1_5 i2_5))))) (= (ControlFlow 0 25) 22)) anon26_correct)))
(let ((anon54_Then_correct  (=> (and (|Seq#Contains_2984| (|Seq#Range| 0 i@1) i1_5) (and (|Seq#Contains_2984| (|Seq#Range| 0 i@1) i2_5) (not (= i1_5 i2_5)))) (and (=> (= (ControlFlow 0 23) (- 0 24)) (not (= (|Seq#Index_6755| v_2@2 i1_5) (|Seq#Index_6755| v_2@2 i2_5)))) (=> (not (= (|Seq#Index_6755| v_2@2 i1_5) (|Seq#Index_6755| v_2@2 i2_5))) (=> (= (ControlFlow 0 23) 22) anon26_correct))))))
(let ((anon52_Then_correct  (=> (and (and (state ExhaleHeap@0 ZeroMask) (<= i@0 10)) (and (= (|Seq#Length_6755| v_2@1) i@0) (forall ((i1_4_1 Int) (i2_4 Int) ) (!  (=> (and (|Seq#Contains_2984| (|Seq#Range| 0 i@0) i1_4_1) (and (|Seq#Contains_2984| (|Seq#Range| 0 i@0) i2_4) (not (= i1_4_1 i2_4)))) (not (= (|Seq#Index_6755| v_2@1 i1_4_1) (|Seq#Index_6755| v_2@1 i2_4))))
 :qid |stdinbpl.820:24|
 :skolemid |74|
 :pattern ( (|Seq#ContainsTrigger_2984| (|Seq#Range| 0 i@0) i1_4_1) (|Seq#ContainsTrigger_2984| (|Seq#Range| 0 i@0) i2_4))
 :pattern ( (|Seq#ContainsTrigger_2984| (|Seq#Range| 0 i@0) i1_4_1) (|Seq#Contains_2984| (|Seq#Range| 0 i@0) i2_4))
 :pattern ( (|Seq#Contains_2984| (|Seq#Range| 0 i@0) i1_4_1) (|Seq#ContainsTrigger_2984| (|Seq#Range| 0 i@0) i2_4))
 :pattern ( (|Seq#Contains_2984| (|Seq#Range| 0 i@0) i1_4_1) (|Seq#Contains_2984| (|Seq#Range| 0 i@0) i2_4))
 :pattern ( (|Seq#ContainsTrigger_2984| (|Seq#Range| 0 i@0) i1_4_1) (|Seq#Index_6755| v_2@1 i2_4))
 :pattern ( (|Seq#Contains_2984| (|Seq#Range| 0 i@0) i1_4_1) (|Seq#Index_6755| v_2@1 i2_4))
 :pattern ( (|Seq#ContainsTrigger_2984| (|Seq#Range| 0 i@0) i2_4) (|Seq#Index_6755| v_2@1 i1_4_1))
 :pattern ( (|Seq#Contains_2984| (|Seq#Range| 0 i@0) i2_4) (|Seq#Index_6755| v_2@1 i1_4_1))
 :pattern ( (|Seq#Index_6755| v_2@1 i1_4_1) (|Seq#Index_6755| v_2@1 i2_4))
)))) (and (=> (= (ControlFlow 0 34) (- 0 38)) (forall ((j_7_1 Int) (j_7_2 Int) ) (!  (=> (and (and (and (and (not (= j_7_1 j_7_2)) (|Seq#Contains_2984| (|Seq#Range| 0 i@0) j_7_1)) (|Seq#Contains_2984| (|Seq#Range| 0 i@0) j_7_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_6755| v_2@1 j_7_1) (|Seq#Index_6755| v_2@1 j_7_2))))
 :qid |stdinbpl.826:19|
 :skolemid |75|
))) (=> (forall ((j_7_1@@0 Int) (j_7_2@@0 Int) ) (!  (=> (and (and (and (and (not (= j_7_1@@0 j_7_2@@0)) (|Seq#Contains_2984| (|Seq#Range| 0 i@0) j_7_1@@0)) (|Seq#Contains_2984| (|Seq#Range| 0 i@0) j_7_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_6755| v_2@1 j_7_1@@0) (|Seq#Index_6755| v_2@1 j_7_2@@0))))
 :qid |stdinbpl.826:19|
 :skolemid |75|
)) (=> (and (and (forall ((j_7_1@@1 Int) ) (!  (=> (and (|Seq#Contains_2984| (|Seq#Range| 0 i@0) j_7_1@@1) (< NoPerm FullPerm)) (and (qpRange3 (|Seq#Index_6755| v_2@1 j_7_1@@1)) (= (invRecv3 (|Seq#Index_6755| v_2@1 j_7_1@@1)) j_7_1@@1)))
 :qid |stdinbpl.832:26|
 :skolemid |76|
 :pattern ( (|Seq#Index_6755| v_2@1 j_7_1@@1))
 :pattern ( (|Seq#ContainsTrigger_2984| (|Seq#Range| 0 i@0) j_7_1@@1))
 :pattern ( (|Seq#Contains_2984| (|Seq#Range| 0 i@0) j_7_1@@1))
 :pattern ( (|Seq#Index_6755| v_2@1 j_7_1@@1))
)) (forall ((o_4@@13 T@Ref) ) (!  (=> (and (and (|Seq#Contains_2984| (|Seq#Range| 0 i@0) (invRecv3 o_4@@13)) (< NoPerm FullPerm)) (qpRange3 o_4@@13)) (= (|Seq#Index_6755| v_2@1 (invRecv3 o_4@@13)) o_4@@13))
 :qid |stdinbpl.836:26|
 :skolemid |77|
 :pattern ( (invRecv3 o_4@@13))
))) (and (forall ((j_7_1@@2 Int) ) (!  (=> (|Seq#Contains_2984| (|Seq#Range| 0 i@0) j_7_1@@2) (not (= (|Seq#Index_6755| v_2@1 j_7_1@@2) null)))
 :qid |stdinbpl.842:26|
 :skolemid |78|
 :pattern ( (|Seq#Index_6755| v_2@1 j_7_1@@2))
 :pattern ( (|Seq#ContainsTrigger_2984| (|Seq#Range| 0 i@0) j_7_1@@2))
 :pattern ( (|Seq#Contains_2984| (|Seq#Range| 0 i@0) j_7_1@@2))
 :pattern ( (|Seq#Index_6755| v_2@1 j_7_1@@2))
)) (forall ((o_4@@14 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_2984| (|Seq#Range| 0 i@0) (invRecv3 o_4@@14)) (< NoPerm FullPerm)) (qpRange3 o_4@@14)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_6755| v_2@1 (invRecv3 o_4@@14)) o_4@@14)) (= (select (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| QPMask@1) o_4@@14 val) (+ (select (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| ZeroMask) o_4@@14 val) FullPerm)))) (=> (not (and (and (|Seq#Contains_2984| (|Seq#Range| 0 i@0) (invRecv3 o_4@@14)) (< NoPerm FullPerm)) (qpRange3 o_4@@14))) (= (select (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| QPMask@1) o_4@@14 val) (select (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| ZeroMask) o_4@@14 val))))
 :qid |stdinbpl.848:26|
 :skolemid |79|
 :pattern ( (select (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| QPMask@1) o_4@@14 val))
)))) (=> (and (and (and (and (and (and (and (forall ((o_4@@15 T@Ref) (f_5@@9 T@Field_9955_53) ) (!  (=> true (= (select (|PolymorphicMapType_9916_6750_53#PolymorphicMapType_9916| ZeroMask) o_4@@15 f_5@@9) (select (|PolymorphicMapType_9916_6750_53#PolymorphicMapType_9916| QPMask@1) o_4@@15 f_5@@9)))
 :qid |stdinbpl.852:33|
 :skolemid |80|
 :pattern ( (select (|PolymorphicMapType_9916_6750_53#PolymorphicMapType_9916| ZeroMask) o_4@@15 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_9916_6750_53#PolymorphicMapType_9916| QPMask@1) o_4@@15 f_5@@9))
)) (forall ((o_4@@16 T@Ref) (f_5@@10 T@Field_9968_9969) ) (!  (=> true (= (select (|PolymorphicMapType_9916_6750_9969#PolymorphicMapType_9916| ZeroMask) o_4@@16 f_5@@10) (select (|PolymorphicMapType_9916_6750_9969#PolymorphicMapType_9916| QPMask@1) o_4@@16 f_5@@10)))
 :qid |stdinbpl.852:33|
 :skolemid |80|
 :pattern ( (select (|PolymorphicMapType_9916_6750_9969#PolymorphicMapType_9916| ZeroMask) o_4@@16 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_9916_6750_9969#PolymorphicMapType_9916| QPMask@1) o_4@@16 f_5@@10))
))) (forall ((o_4@@17 T@Ref) (f_5@@11 T@Field_15982_3106) ) (!  (=> (not (= f_5@@11 val)) (= (select (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| ZeroMask) o_4@@17 f_5@@11) (select (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| QPMask@1) o_4@@17 f_5@@11)))
 :qid |stdinbpl.852:33|
 :skolemid |80|
 :pattern ( (select (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| ZeroMask) o_4@@17 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| QPMask@1) o_4@@17 f_5@@11))
))) (forall ((o_4@@18 T@Ref) (f_5@@12 T@Field_6750_26733) ) (!  (=> true (= (select (|PolymorphicMapType_9916_6750_26733#PolymorphicMapType_9916| ZeroMask) o_4@@18 f_5@@12) (select (|PolymorphicMapType_9916_6750_26733#PolymorphicMapType_9916| QPMask@1) o_4@@18 f_5@@12)))
 :qid |stdinbpl.852:33|
 :skolemid |80|
 :pattern ( (select (|PolymorphicMapType_9916_6750_26733#PolymorphicMapType_9916| ZeroMask) o_4@@18 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_9916_6750_26733#PolymorphicMapType_9916| QPMask@1) o_4@@18 f_5@@12))
))) (forall ((o_4@@19 T@Ref) (f_5@@13 T@Field_6750_26866) ) (!  (=> true (= (select (|PolymorphicMapType_9916_6750_30988#PolymorphicMapType_9916| ZeroMask) o_4@@19 f_5@@13) (select (|PolymorphicMapType_9916_6750_30988#PolymorphicMapType_9916| QPMask@1) o_4@@19 f_5@@13)))
 :qid |stdinbpl.852:33|
 :skolemid |80|
 :pattern ( (select (|PolymorphicMapType_9916_6750_30988#PolymorphicMapType_9916| ZeroMask) o_4@@19 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_9916_6750_30988#PolymorphicMapType_9916| QPMask@1) o_4@@19 f_5@@13))
))) (state ExhaleHeap@0 QPMask@1)) (and (and (forall ((j_8 Int) ) (!  (=> (|Seq#Contains_2984| (|Seq#Range| 0 i@0) j_8) (= (select (|PolymorphicMapType_9895_6750_3106#PolymorphicMapType_9895| ExhaleHeap@0) (|Seq#Index_6755| v_2@1 j_8) val) 1))
 :qid |stdinbpl.858:24|
 :skolemid |81|
 :pattern ( (|Seq#ContainsTrigger_2984| (|Seq#Range| 0 i@0) j_8))
 :pattern ( (|Seq#Contains_2984| (|Seq#Range| 0 i@0) j_8))
 :pattern ( (|Seq#Index_6755| v_2@1 j_8))
)) (state ExhaleHeap@0 QPMask@1)) (and (< i@0 10) (state ExhaleHeap@0 QPMask@1)))) (and (and (and (not (= freshObj@0 null)) (not (select (|PolymorphicMapType_9895_6552_53#PolymorphicMapType_9895| ExhaleHeap@0) freshObj@0 $allocated))) (= Heap@0 (PolymorphicMapType_9895 (store (|PolymorphicMapType_9895_6552_53#PolymorphicMapType_9895| ExhaleHeap@0) freshObj@0 $allocated true) (|PolymorphicMapType_9895_6555_6556#PolymorphicMapType_9895| ExhaleHeap@0) (|PolymorphicMapType_9895_6750_3106#PolymorphicMapType_9895| ExhaleHeap@0) (|PolymorphicMapType_9895_6750_26910#PolymorphicMapType_9895| ExhaleHeap@0) (|PolymorphicMapType_9895_9955_26733#PolymorphicMapType_9895| ExhaleHeap@0)))) (and (= Mask@0 (PolymorphicMapType_9916 (store (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| QPMask@1) freshObj@0 val (+ (select (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| QPMask@1) freshObj@0 val) FullPerm)) (|PolymorphicMapType_9916_6750_53#PolymorphicMapType_9916| QPMask@1) (|PolymorphicMapType_9916_6750_9969#PolymorphicMapType_9916| QPMask@1) (|PolymorphicMapType_9916_6750_26733#PolymorphicMapType_9916| QPMask@1) (|PolymorphicMapType_9916_6750_30988#PolymorphicMapType_9916| QPMask@1))) (state Heap@0 Mask@0)))) (and (=> (= (ControlFlow 0 34) (- 0 37)) (= FullPerm (select (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| Mask@0) freshObj@0 val))) (=> (= FullPerm (select (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| Mask@0) freshObj@0 val)) (=> (and (= Heap@1 (PolymorphicMapType_9895 (|PolymorphicMapType_9895_6552_53#PolymorphicMapType_9895| Heap@0) (|PolymorphicMapType_9895_6555_6556#PolymorphicMapType_9895| Heap@0) (store (|PolymorphicMapType_9895_6750_3106#PolymorphicMapType_9895| Heap@0) freshObj@0 val 1) (|PolymorphicMapType_9895_6750_26910#PolymorphicMapType_9895| Heap@0) (|PolymorphicMapType_9895_9955_26733#PolymorphicMapType_9895| Heap@0))) (state Heap@1 Mask@0)) (=> (and (and (= v_2@2 (|Seq#Append_6755| v_2@1 (|Seq#Singleton_6754| freshObj@0))) (state Heap@1 Mask@0)) (and (= i@1 (+ i@0 1)) (state Heap@1 Mask@0))) (and (=> (= (ControlFlow 0 34) (- 0 36)) (<= i@1 10)) (=> (<= i@1 10) (and (=> (= (ControlFlow 0 34) (- 0 35)) (= (|Seq#Length_6755| v_2@2) i@1)) (=> (= (|Seq#Length_6755| v_2@2) i@1) (and (and (=> (= (ControlFlow 0 34) 31) anon53_Else_correct) (=> (= (ControlFlow 0 34) 23) anon54_Then_correct)) (=> (= (ControlFlow 0 34) 25) anon54_Else_correct)))))))))))))))))
(let ((anon39_correct true))
(let ((anon60_Else_correct  (=> (and (not (|Seq#Contains_2984| (|Seq#Range| 0 10) j_15_1)) (= (ControlFlow 0 19) 16)) anon39_correct)))
(let ((anon60_Then_correct  (=> (|Seq#Contains_2984| (|Seq#Range| 0 10) j_15_1) (and (=> (= (ControlFlow 0 17) (- 0 18)) (> (select (|PolymorphicMapType_9895_6750_3106#PolymorphicMapType_9895| ExhaleHeap@0) (|Seq#Index_6755| v_2@1 j_15_1) val) 0)) (=> (> (select (|PolymorphicMapType_9895_6750_3106#PolymorphicMapType_9895| ExhaleHeap@0) (|Seq#Index_6755| v_2@1 j_15_1) val) 0) (=> (= (ControlFlow 0 17) 16) anon39_correct))))))
(let ((anon35_correct true))
(let ((anon58_Else_correct  (=> (and (not (|Seq#Contains_2984| (|Seq#Range| 0 10) j_2)) (= (ControlFlow 0 15) 10)) anon35_correct)))
(let ((anon58_Then_correct  (=> (|Seq#Contains_2984| (|Seq#Range| 0 10) j_2) (and (=> (= (ControlFlow 0 11) (- 0 14)) (>= j_2 0)) (=> (>= j_2 0) (and (=> (= (ControlFlow 0 11) (- 0 13)) (< j_2 (|Seq#Length_6755| v_2@1))) (=> (< j_2 (|Seq#Length_6755| v_2@1)) (and (=> (= (ControlFlow 0 11) (- 0 12)) (HasDirectPerm_6750_3106 QPMask@2 (|Seq#Index_6755| v_2@1 j_2) val)) (=> (HasDirectPerm_6750_3106 QPMask@2 (|Seq#Index_6755| v_2@1 j_2) val) (=> (= (ControlFlow 0 11) 10) anon35_correct))))))))))
(let ((anon59_Else_correct true))
(let ((anon52_Else_correct  (=> (not (< i@0 10)) (=> (and (and (state ExhaleHeap@0 QPMask@0) (<= i@0 10)) (and (= (|Seq#Length_6755| v_2@1) i@0) (forall ((i1_7 Int) (i2_7_2 Int) ) (!  (=> (and (|Seq#Contains_2984| (|Seq#Range| 0 i@0) i1_7) (and (|Seq#Contains_2984| (|Seq#Range| 0 i@0) i2_7_2) (not (= i1_7 i2_7_2)))) (not (= (|Seq#Index_6755| v_2@1 i1_7) (|Seq#Index_6755| v_2@1 i2_7_2))))
 :qid |stdinbpl.973:22|
 :skolemid |90|
 :pattern ( (|Seq#ContainsTrigger_2984| (|Seq#Range| 0 i@0) i1_7) (|Seq#ContainsTrigger_2984| (|Seq#Range| 0 i@0) i2_7_2))
 :pattern ( (|Seq#ContainsTrigger_2984| (|Seq#Range| 0 i@0) i1_7) (|Seq#Contains_2984| (|Seq#Range| 0 i@0) i2_7_2))
 :pattern ( (|Seq#Contains_2984| (|Seq#Range| 0 i@0) i1_7) (|Seq#ContainsTrigger_2984| (|Seq#Range| 0 i@0) i2_7_2))
 :pattern ( (|Seq#Contains_2984| (|Seq#Range| 0 i@0) i1_7) (|Seq#Contains_2984| (|Seq#Range| 0 i@0) i2_7_2))
 :pattern ( (|Seq#ContainsTrigger_2984| (|Seq#Range| 0 i@0) i1_7) (|Seq#Index_6755| v_2@1 i2_7_2))
 :pattern ( (|Seq#Contains_2984| (|Seq#Range| 0 i@0) i1_7) (|Seq#Index_6755| v_2@1 i2_7_2))
 :pattern ( (|Seq#ContainsTrigger_2984| (|Seq#Range| 0 i@0) i2_7_2) (|Seq#Index_6755| v_2@1 i1_7))
 :pattern ( (|Seq#Contains_2984| (|Seq#Range| 0 i@0) i2_7_2) (|Seq#Index_6755| v_2@1 i1_7))
 :pattern ( (|Seq#Index_6755| v_2@1 i1_7) (|Seq#Index_6755| v_2@1 i2_7_2))
)))) (and (=> (= (ControlFlow 0 20) (- 0 21)) (forall ((j_12_2 Int) (j_12_3 Int) ) (!  (=> (and (and (and (and (not (= j_12_2 j_12_3)) (|Seq#Contains_2984| (|Seq#Range| 0 i@0) j_12_2)) (|Seq#Contains_2984| (|Seq#Range| 0 i@0) j_12_3)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_6755| v_2@1 j_12_2) (|Seq#Index_6755| v_2@1 j_12_3))))
 :qid |stdinbpl.979:17|
 :skolemid |91|
))) (=> (forall ((j_12_2@@0 Int) (j_12_3@@0 Int) ) (!  (=> (and (and (and (and (not (= j_12_2@@0 j_12_3@@0)) (|Seq#Contains_2984| (|Seq#Range| 0 i@0) j_12_2@@0)) (|Seq#Contains_2984| (|Seq#Range| 0 i@0) j_12_3@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_6755| v_2@1 j_12_2@@0) (|Seq#Index_6755| v_2@1 j_12_3@@0))))
 :qid |stdinbpl.979:17|
 :skolemid |91|
)) (=> (and (and (forall ((j_12_2@@1 Int) ) (!  (=> (and (|Seq#Contains_2984| (|Seq#Range| 0 i@0) j_12_2@@1) (< NoPerm FullPerm)) (and (qpRange5 (|Seq#Index_6755| v_2@1 j_12_2@@1)) (= (invRecv5 (|Seq#Index_6755| v_2@1 j_12_2@@1)) j_12_2@@1)))
 :qid |stdinbpl.985:24|
 :skolemid |92|
 :pattern ( (|Seq#Index_6755| v_2@1 j_12_2@@1))
 :pattern ( (|Seq#ContainsTrigger_2984| (|Seq#Range| 0 i@0) j_12_2@@1))
 :pattern ( (|Seq#Contains_2984| (|Seq#Range| 0 i@0) j_12_2@@1))
 :pattern ( (|Seq#Index_6755| v_2@1 j_12_2@@1))
)) (forall ((o_4@@20 T@Ref) ) (!  (=> (and (and (|Seq#Contains_2984| (|Seq#Range| 0 i@0) (invRecv5 o_4@@20)) (< NoPerm FullPerm)) (qpRange5 o_4@@20)) (= (|Seq#Index_6755| v_2@1 (invRecv5 o_4@@20)) o_4@@20))
 :qid |stdinbpl.989:24|
 :skolemid |93|
 :pattern ( (invRecv5 o_4@@20))
))) (and (forall ((j_12_2@@2 Int) ) (!  (=> (|Seq#Contains_2984| (|Seq#Range| 0 i@0) j_12_2@@2) (not (= (|Seq#Index_6755| v_2@1 j_12_2@@2) null)))
 :qid |stdinbpl.995:24|
 :skolemid |94|
 :pattern ( (|Seq#Index_6755| v_2@1 j_12_2@@2))
 :pattern ( (|Seq#ContainsTrigger_2984| (|Seq#Range| 0 i@0) j_12_2@@2))
 :pattern ( (|Seq#Contains_2984| (|Seq#Range| 0 i@0) j_12_2@@2))
 :pattern ( (|Seq#Index_6755| v_2@1 j_12_2@@2))
)) (forall ((o_4@@21 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_2984| (|Seq#Range| 0 i@0) (invRecv5 o_4@@21)) (< NoPerm FullPerm)) (qpRange5 o_4@@21)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_6755| v_2@1 (invRecv5 o_4@@21)) o_4@@21)) (= (select (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| QPMask@2) o_4@@21 val) (+ (select (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| QPMask@0) o_4@@21 val) FullPerm)))) (=> (not (and (and (|Seq#Contains_2984| (|Seq#Range| 0 i@0) (invRecv5 o_4@@21)) (< NoPerm FullPerm)) (qpRange5 o_4@@21))) (= (select (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| QPMask@2) o_4@@21 val) (select (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| QPMask@0) o_4@@21 val))))
 :qid |stdinbpl.1001:24|
 :skolemid |95|
 :pattern ( (select (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| QPMask@2) o_4@@21 val))
)))) (=> (and (and (and (and (and (forall ((o_4@@22 T@Ref) (f_5@@14 T@Field_9955_53) ) (!  (=> true (= (select (|PolymorphicMapType_9916_6750_53#PolymorphicMapType_9916| QPMask@0) o_4@@22 f_5@@14) (select (|PolymorphicMapType_9916_6750_53#PolymorphicMapType_9916| QPMask@2) o_4@@22 f_5@@14)))
 :qid |stdinbpl.1005:31|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_9916_6750_53#PolymorphicMapType_9916| QPMask@0) o_4@@22 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_9916_6750_53#PolymorphicMapType_9916| QPMask@2) o_4@@22 f_5@@14))
)) (forall ((o_4@@23 T@Ref) (f_5@@15 T@Field_9968_9969) ) (!  (=> true (= (select (|PolymorphicMapType_9916_6750_9969#PolymorphicMapType_9916| QPMask@0) o_4@@23 f_5@@15) (select (|PolymorphicMapType_9916_6750_9969#PolymorphicMapType_9916| QPMask@2) o_4@@23 f_5@@15)))
 :qid |stdinbpl.1005:31|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_9916_6750_9969#PolymorphicMapType_9916| QPMask@0) o_4@@23 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_9916_6750_9969#PolymorphicMapType_9916| QPMask@2) o_4@@23 f_5@@15))
))) (forall ((o_4@@24 T@Ref) (f_5@@16 T@Field_15982_3106) ) (!  (=> (not (= f_5@@16 val)) (= (select (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| QPMask@0) o_4@@24 f_5@@16) (select (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| QPMask@2) o_4@@24 f_5@@16)))
 :qid |stdinbpl.1005:31|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| QPMask@0) o_4@@24 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| QPMask@2) o_4@@24 f_5@@16))
))) (forall ((o_4@@25 T@Ref) (f_5@@17 T@Field_6750_26733) ) (!  (=> true (= (select (|PolymorphicMapType_9916_6750_26733#PolymorphicMapType_9916| QPMask@0) o_4@@25 f_5@@17) (select (|PolymorphicMapType_9916_6750_26733#PolymorphicMapType_9916| QPMask@2) o_4@@25 f_5@@17)))
 :qid |stdinbpl.1005:31|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_9916_6750_26733#PolymorphicMapType_9916| QPMask@0) o_4@@25 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_9916_6750_26733#PolymorphicMapType_9916| QPMask@2) o_4@@25 f_5@@17))
))) (forall ((o_4@@26 T@Ref) (f_5@@18 T@Field_6750_26866) ) (!  (=> true (= (select (|PolymorphicMapType_9916_6750_30988#PolymorphicMapType_9916| QPMask@0) o_4@@26 f_5@@18) (select (|PolymorphicMapType_9916_6750_30988#PolymorphicMapType_9916| QPMask@2) o_4@@26 f_5@@18)))
 :qid |stdinbpl.1005:31|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_9916_6750_30988#PolymorphicMapType_9916| QPMask@0) o_4@@26 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_9916_6750_30988#PolymorphicMapType_9916| QPMask@2) o_4@@26 f_5@@18))
))) (and (and (state ExhaleHeap@0 QPMask@2) (forall ((j_13_2 Int) ) (!  (=> (|Seq#Contains_2984| (|Seq#Range| 0 i@0) j_13_2) (= (select (|PolymorphicMapType_9895_6750_3106#PolymorphicMapType_9895| ExhaleHeap@0) (|Seq#Index_6755| v_2@1 j_13_2) val) 1))
 :qid |stdinbpl.1011:22|
 :skolemid |97|
 :pattern ( (|Seq#ContainsTrigger_2984| (|Seq#Range| 0 i@0) j_13_2))
 :pattern ( (|Seq#Contains_2984| (|Seq#Range| 0 i@0) j_13_2))
 :pattern ( (|Seq#Index_6755| v_2@1 j_13_2))
))) (and (state ExhaleHeap@0 QPMask@2) (state ExhaleHeap@0 QPMask@2)))) (and (and (and (and (=> (= (ControlFlow 0 20) 9) anon59_Else_correct) (=> (= (ControlFlow 0 20) 17) anon60_Then_correct)) (=> (= (ControlFlow 0 20) 19) anon60_Else_correct)) (=> (= (ControlFlow 0 20) 11) anon58_Then_correct)) (=> (= (ControlFlow 0 20) 15) anon58_Else_correct))))))))))
(let ((anon43_Else_correct  (=> (forall ((j_2_1_1 Int) ) (!  (=> (|Seq#Contains_2984| (|Seq#Range| 0 0) j_2_1_1) (= (select (|PolymorphicMapType_9895_6750_3106#PolymorphicMapType_9895| Heap@@17) (|Seq#Index_6755| v_2@0 j_2_1_1) val) 1))
 :qid |stdinbpl.704:24|
 :skolemid |65|
 :pattern ( (|Seq#ContainsTrigger_2984| (|Seq#Range| 0 0) j_2_1_1))
 :pattern ( (|Seq#Contains_2984| (|Seq#Range| 0 0) j_2_1_1))
 :pattern ( (|Seq#Index_6755| v_2@0 j_2_1_1))
)) (=> (and (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@0 QPMask@0) (select (|PolymorphicMapType_9895_6552_53#PolymorphicMapType_9895| ExhaleHeap@0) tmp@0 $allocated)) (and (and (=> (= (ControlFlow 0 62) 61) anon45_Then_correct) (=> (= (ControlFlow 0 62) 34) anon52_Then_correct)) (=> (= (ControlFlow 0 62) 20) anon52_Else_correct))))))
(let ((anon7_correct true))
(let ((anon44_Else_correct  (=> (and (not (|Seq#Contains_2984| (|Seq#Range| 0 0) j_1)) (= (ControlFlow 0 8) 5)) anon7_correct)))
(let ((anon44_Then_correct  (=> (|Seq#Contains_2984| (|Seq#Range| 0 0) j_1) (and (=> (= (ControlFlow 0 6) (- 0 7)) (= (select (|PolymorphicMapType_9895_6750_3106#PolymorphicMapType_9895| Heap@@17) (|Seq#Index_6755| v_2@0 j_1) val) 1)) (=> (= (select (|PolymorphicMapType_9895_6750_3106#PolymorphicMapType_9895| Heap@@17) (|Seq#Index_6755| v_2@0 j_1) val) 1) (=> (= (ControlFlow 0 6) 5) anon7_correct))))))
(let ((anon41_Else_correct  (=> (forall ((i1_1_1_1 Int) (i2_1_1_1 Int) ) (!  (=> (and (|Seq#Contains_2984| (|Seq#Range| 0 0) i1_1_1_1) (and (|Seq#Contains_2984| (|Seq#Range| 0 0) i2_1_1_1) (not (= i1_1_1_1 i2_1_1_1)))) (not (= (|Seq#Index_6755| v_2@0 i1_1_1_1) (|Seq#Index_6755| v_2@0 i2_1_1_1))))
 :qid |stdinbpl.652:24|
 :skolemid |58|
 :pattern ( (|Seq#ContainsTrigger_2984| (|Seq#Range| 0 0) i1_1_1_1) (|Seq#ContainsTrigger_2984| (|Seq#Range| 0 0) i2_1_1_1))
 :pattern ( (|Seq#ContainsTrigger_2984| (|Seq#Range| 0 0) i1_1_1_1) (|Seq#Contains_2984| (|Seq#Range| 0 0) i2_1_1_1))
 :pattern ( (|Seq#Contains_2984| (|Seq#Range| 0 0) i1_1_1_1) (|Seq#ContainsTrigger_2984| (|Seq#Range| 0 0) i2_1_1_1))
 :pattern ( (|Seq#Contains_2984| (|Seq#Range| 0 0) i1_1_1_1) (|Seq#Contains_2984| (|Seq#Range| 0 0) i2_1_1_1))
 :pattern ( (|Seq#ContainsTrigger_2984| (|Seq#Range| 0 0) i1_1_1_1) (|Seq#Index_6755| v_2@0 i2_1_1_1))
 :pattern ( (|Seq#Contains_2984| (|Seq#Range| 0 0) i1_1_1_1) (|Seq#Index_6755| v_2@0 i2_1_1_1))
 :pattern ( (|Seq#ContainsTrigger_2984| (|Seq#Range| 0 0) i2_1_1_1) (|Seq#Index_6755| v_2@0 i1_1_1_1))
 :pattern ( (|Seq#Contains_2984| (|Seq#Range| 0 0) i2_1_1_1) (|Seq#Index_6755| v_2@0 i1_1_1_1))
 :pattern ( (|Seq#Index_6755| v_2@0 i1_1_1_1) (|Seq#Index_6755| v_2@0 i2_1_1_1))
)) (and (=> (= (ControlFlow 0 63) (- 0 65)) (forall ((j_9 Int) (j_26 Int) ) (!  (=> (and (and (and (and (not (= j_9 j_26)) (|Seq#Contains_2984| (|Seq#Range| 0 0) j_9)) (|Seq#Contains_2984| (|Seq#Range| 0 0) j_26)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_6755| v_2@0 j_9) (|Seq#Index_6755| v_2@0 j_26))))
 :qid |stdinbpl.663:21|
 :skolemid |59|
 :pattern ( (neverTriggered1 j_9) (neverTriggered1 j_26))
))) (=> (forall ((j_9@@0 Int) (j_26@@0 Int) ) (!  (=> (and (and (and (and (not (= j_9@@0 j_26@@0)) (|Seq#Contains_2984| (|Seq#Range| 0 0) j_9@@0)) (|Seq#Contains_2984| (|Seq#Range| 0 0) j_26@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_6755| v_2@0 j_9@@0) (|Seq#Index_6755| v_2@0 j_26@@0))))
 :qid |stdinbpl.663:21|
 :skolemid |59|
 :pattern ( (neverTriggered1 j_9@@0) (neverTriggered1 j_26@@0))
)) (and (=> (= (ControlFlow 0 63) (- 0 64)) (forall ((j_9@@1 Int) ) (!  (=> (|Seq#Contains_2984| (|Seq#Range| 0 0) j_9@@1) (>= (select (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| ZeroMask) (|Seq#Index_6755| v_2@0 j_9@@1) val) FullPerm))
 :qid |stdinbpl.670:21|
 :skolemid |60|
 :pattern ( (|Seq#Index_6755| v_2@0 j_9@@1))
 :pattern ( (|Seq#ContainsTrigger_2984| (|Seq#Range| 0 0) j_9@@1))
 :pattern ( (|Seq#Contains_2984| (|Seq#Range| 0 0) j_9@@1))
 :pattern ( (|Seq#Index_6755| v_2@0 j_9@@1))
))) (=> (forall ((j_9@@2 Int) ) (!  (=> (|Seq#Contains_2984| (|Seq#Range| 0 0) j_9@@2) (>= (select (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| ZeroMask) (|Seq#Index_6755| v_2@0 j_9@@2) val) FullPerm))
 :qid |stdinbpl.670:21|
 :skolemid |60|
 :pattern ( (|Seq#Index_6755| v_2@0 j_9@@2))
 :pattern ( (|Seq#ContainsTrigger_2984| (|Seq#Range| 0 0) j_9@@2))
 :pattern ( (|Seq#Contains_2984| (|Seq#Range| 0 0) j_9@@2))
 :pattern ( (|Seq#Index_6755| v_2@0 j_9@@2))
)) (=> (forall ((j_9@@3 Int) ) (!  (=> (and (|Seq#Contains_2984| (|Seq#Range| 0 0) j_9@@3) (< NoPerm FullPerm)) (and (qpRange1 (|Seq#Index_6755| v_2@0 j_9@@3)) (= (invRecv1 (|Seq#Index_6755| v_2@0 j_9@@3)) j_9@@3)))
 :qid |stdinbpl.676:26|
 :skolemid |61|
 :pattern ( (|Seq#Index_6755| v_2@0 j_9@@3))
 :pattern ( (|Seq#ContainsTrigger_2984| (|Seq#Range| 0 0) j_9@@3))
 :pattern ( (|Seq#Contains_2984| (|Seq#Range| 0 0) j_9@@3))
 :pattern ( (|Seq#Index_6755| v_2@0 j_9@@3))
)) (=> (and (forall ((o_4@@27 T@Ref) ) (!  (=> (and (|Seq#Contains_2984| (|Seq#Range| 0 0) (invRecv1 o_4@@27)) (and (< NoPerm FullPerm) (qpRange1 o_4@@27))) (= (|Seq#Index_6755| v_2@0 (invRecv1 o_4@@27)) o_4@@27))
 :qid |stdinbpl.680:26|
 :skolemid |62|
 :pattern ( (invRecv1 o_4@@27))
)) (forall ((o_4@@28 T@Ref) ) (!  (and (=> (and (|Seq#Contains_2984| (|Seq#Range| 0 0) (invRecv1 o_4@@28)) (and (< NoPerm FullPerm) (qpRange1 o_4@@28))) (and (= (|Seq#Index_6755| v_2@0 (invRecv1 o_4@@28)) o_4@@28) (= (select (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| QPMask@0) o_4@@28 val) (- (select (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| ZeroMask) o_4@@28 val) FullPerm)))) (=> (not (and (|Seq#Contains_2984| (|Seq#Range| 0 0) (invRecv1 o_4@@28)) (and (< NoPerm FullPerm) (qpRange1 o_4@@28)))) (= (select (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| QPMask@0) o_4@@28 val) (select (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| ZeroMask) o_4@@28 val))))
 :qid |stdinbpl.686:26|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| QPMask@0) o_4@@28 val))
))) (=> (and (and (and (and (forall ((o_4@@29 T@Ref) (f_5@@19 T@Field_9955_53) ) (!  (=> true (= (select (|PolymorphicMapType_9916_6750_53#PolymorphicMapType_9916| ZeroMask) o_4@@29 f_5@@19) (select (|PolymorphicMapType_9916_6750_53#PolymorphicMapType_9916| QPMask@0) o_4@@29 f_5@@19)))
 :qid |stdinbpl.692:33|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_9916_6750_53#PolymorphicMapType_9916| QPMask@0) o_4@@29 f_5@@19))
)) (forall ((o_4@@30 T@Ref) (f_5@@20 T@Field_9968_9969) ) (!  (=> true (= (select (|PolymorphicMapType_9916_6750_9969#PolymorphicMapType_9916| ZeroMask) o_4@@30 f_5@@20) (select (|PolymorphicMapType_9916_6750_9969#PolymorphicMapType_9916| QPMask@0) o_4@@30 f_5@@20)))
 :qid |stdinbpl.692:33|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_9916_6750_9969#PolymorphicMapType_9916| QPMask@0) o_4@@30 f_5@@20))
))) (forall ((o_4@@31 T@Ref) (f_5@@21 T@Field_15982_3106) ) (!  (=> (not (= f_5@@21 val)) (= (select (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| ZeroMask) o_4@@31 f_5@@21) (select (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| QPMask@0) o_4@@31 f_5@@21)))
 :qid |stdinbpl.692:33|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_9916_6750_3106#PolymorphicMapType_9916| QPMask@0) o_4@@31 f_5@@21))
))) (forall ((o_4@@32 T@Ref) (f_5@@22 T@Field_6750_26733) ) (!  (=> true (= (select (|PolymorphicMapType_9916_6750_26733#PolymorphicMapType_9916| ZeroMask) o_4@@32 f_5@@22) (select (|PolymorphicMapType_9916_6750_26733#PolymorphicMapType_9916| QPMask@0) o_4@@32 f_5@@22)))
 :qid |stdinbpl.692:33|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_9916_6750_26733#PolymorphicMapType_9916| QPMask@0) o_4@@32 f_5@@22))
))) (forall ((o_4@@33 T@Ref) (f_5@@23 T@Field_6750_26866) ) (!  (=> true (= (select (|PolymorphicMapType_9916_6750_30988#PolymorphicMapType_9916| ZeroMask) o_4@@33 f_5@@23) (select (|PolymorphicMapType_9916_6750_30988#PolymorphicMapType_9916| QPMask@0) o_4@@33 f_5@@23)))
 :qid |stdinbpl.692:33|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_9916_6750_30988#PolymorphicMapType_9916| QPMask@0) o_4@@33 f_5@@23))
))) (and (and (=> (= (ControlFlow 0 63) 62) anon43_Else_correct) (=> (= (ControlFlow 0 63) 6) anon44_Then_correct)) (=> (= (ControlFlow 0 63) 8) anon44_Else_correct))))))))))))
(let ((anon3_correct true))
(let ((anon42_Else_correct  (=> (and (not (and (|Seq#Contains_2984| (|Seq#Range| 0 0) i1) (and (|Seq#Contains_2984| (|Seq#Range| 0 0) i2_1) (not (= i1 i2_1))))) (= (ControlFlow 0 4) 1)) anon3_correct)))
(let ((anon42_Then_correct  (=> (and (|Seq#Contains_2984| (|Seq#Range| 0 0) i1) (and (|Seq#Contains_2984| (|Seq#Range| 0 0) i2_1) (not (= i1 i2_1)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (not (= (|Seq#Index_6755| v_2@0 i1) (|Seq#Index_6755| v_2@0 i2_1)))) (=> (not (= (|Seq#Index_6755| v_2@0 i1) (|Seq#Index_6755| v_2@0 i2_1))) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))
(let ((anon0_correct  (=> (state Heap@@17 ZeroMask) (=> (and AssumePermUpperBound (select (|PolymorphicMapType_9895_6552_53#PolymorphicMapType_9895| Heap@@17) tmp $allocated)) (=> (and (and (= v_2@0 |Seq#Empty_6764|) (state Heap@@17 ZeroMask)) (and (state Heap@@17 ZeroMask) (state Heap@@17 ZeroMask))) (and (=> (= (ControlFlow 0 66) (- 0 68)) (<= 0 10)) (=> (<= 0 10) (and (=> (= (ControlFlow 0 66) (- 0 67)) (= (|Seq#Length_6755| v_2@0) 0)) (=> (= (|Seq#Length_6755| v_2@0) 0) (and (and (=> (= (ControlFlow 0 66) 63) anon41_Else_correct) (=> (= (ControlFlow 0 66) 2) anon42_Then_correct)) (=> (= (ControlFlow 0 66) 4) anon42_Else_correct)))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 69) 66) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
