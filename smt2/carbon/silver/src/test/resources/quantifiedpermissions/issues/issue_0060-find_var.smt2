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
(declare-sort T@Field_9969_53 0)
(declare-sort T@Field_9982_9983 0)
(declare-sort T@Field_16000_3154 0)
(declare-sort T@Field_6657_27076 0)
(declare-sort T@Field_6657_26943 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_9930 0)) (((PolymorphicMapType_9930 (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| (Array T@Ref T@Field_16000_3154 Real)) (|PolymorphicMapType_9930_6657_53#PolymorphicMapType_9930| (Array T@Ref T@Field_9969_53 Real)) (|PolymorphicMapType_9930_6657_9983#PolymorphicMapType_9930| (Array T@Ref T@Field_9982_9983 Real)) (|PolymorphicMapType_9930_6657_26943#PolymorphicMapType_9930| (Array T@Ref T@Field_6657_26943 Real)) (|PolymorphicMapType_9930_6657_31198#PolymorphicMapType_9930| (Array T@Ref T@Field_6657_27076 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10458 0)) (((PolymorphicMapType_10458 (|PolymorphicMapType_10458_9969_53#PolymorphicMapType_10458| (Array T@Ref T@Field_9969_53 Bool)) (|PolymorphicMapType_10458_9969_9983#PolymorphicMapType_10458| (Array T@Ref T@Field_9982_9983 Bool)) (|PolymorphicMapType_10458_9969_3154#PolymorphicMapType_10458| (Array T@Ref T@Field_16000_3154 Bool)) (|PolymorphicMapType_10458_9969_26943#PolymorphicMapType_10458| (Array T@Ref T@Field_6657_26943 Bool)) (|PolymorphicMapType_10458_9969_28254#PolymorphicMapType_10458| (Array T@Ref T@Field_6657_27076 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9909 0)) (((PolymorphicMapType_9909 (|PolymorphicMapType_9909_6455_53#PolymorphicMapType_9909| (Array T@Ref T@Field_9969_53 Bool)) (|PolymorphicMapType_9909_6458_6459#PolymorphicMapType_9909| (Array T@Ref T@Field_9982_9983 T@Ref)) (|PolymorphicMapType_9909_6657_3154#PolymorphicMapType_9909| (Array T@Ref T@Field_16000_3154 Int)) (|PolymorphicMapType_9909_6657_27120#PolymorphicMapType_9909| (Array T@Ref T@Field_6657_27076 T@PolymorphicMapType_10458)) (|PolymorphicMapType_9909_9969_26943#PolymorphicMapType_9909| (Array T@Ref T@Field_6657_26943 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_9969_53)
(declare-fun f_7 () T@Field_16000_3154)
(declare-sort T@Seq_16045 0)
(declare-fun |Seq#Length_6661| (T@Seq_16045) Int)
(declare-fun |Seq#Drop_6661| (T@Seq_16045 Int) T@Seq_16045)
(declare-sort T@Seq_3032 0)
(declare-fun |Seq#Length_3032| (T@Seq_3032) Int)
(declare-fun |Seq#Drop_3032| (T@Seq_3032 Int) T@Seq_3032)
(declare-fun succHeap (T@PolymorphicMapType_9909 T@PolymorphicMapType_9909) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_9909 T@PolymorphicMapType_9909) Bool)
(declare-fun state (T@PolymorphicMapType_9909 T@PolymorphicMapType_9930) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_9930) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_10458)
(declare-fun |Seq#Index_6661| (T@Seq_16045 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3032| (T@Seq_3032 Int) Int)
(declare-fun |Seq#Empty_6661| () T@Seq_16045)
(declare-fun |Seq#Empty_3032| () T@Seq_3032)
(declare-fun |Seq#Update_6661| (T@Seq_16045 Int T@Ref) T@Seq_16045)
(declare-fun |Seq#Update_3032| (T@Seq_3032 Int Int) T@Seq_3032)
(declare-fun |Seq#Take_6661| (T@Seq_16045 Int) T@Seq_16045)
(declare-fun |Seq#Take_3032| (T@Seq_3032 Int) T@Seq_3032)
(declare-fun |Seq#Contains_3032| (T@Seq_3032 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3032)
(declare-fun |Seq#Contains_16045| (T@Seq_16045 T@Ref) Bool)
(declare-fun |Seq#Skolem_16045| (T@Seq_16045 T@Ref) Int)
(declare-fun |Seq#Skolem_3032| (T@Seq_3032 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_9909 T@PolymorphicMapType_9909 T@PolymorphicMapType_9930) Bool)
(declare-fun IsPredicateField_6657_27034 (T@Field_6657_26943) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_6657 (T@Field_6657_26943) T@Field_6657_27076)
(declare-fun HasDirectPerm_6657_27007 (T@PolymorphicMapType_9930 T@Ref T@Field_6657_26943) Bool)
(declare-fun IsWandField_6657_28781 (T@Field_6657_26943) Bool)
(declare-fun WandMaskField_6657 (T@Field_6657_26943) T@Field_6657_27076)
(declare-fun |Seq#Singleton_6661| (T@Ref) T@Seq_16045)
(declare-fun |Seq#Singleton_3032| (Int) T@Seq_3032)
(declare-fun |Seq#Append_16045| (T@Seq_16045 T@Seq_16045) T@Seq_16045)
(declare-fun |Seq#Append_3032| (T@Seq_3032 T@Seq_3032) T@Seq_3032)
(declare-fun dummyHeap () T@PolymorphicMapType_9909)
(declare-fun ZeroMask () T@PolymorphicMapType_9930)
(declare-fun InsidePredicate_9969_9969 (T@Field_6657_26943 T@FrameType T@Field_6657_26943 T@FrameType) Bool)
(declare-fun IsPredicateField_6657_3154 (T@Field_16000_3154) Bool)
(declare-fun IsWandField_6657_3154 (T@Field_16000_3154) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6657_32327 (T@Field_6657_27076) Bool)
(declare-fun IsWandField_6657_32343 (T@Field_6657_27076) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_6657_9983 (T@Field_9982_9983) Bool)
(declare-fun IsWandField_6657_9983 (T@Field_9982_9983) Bool)
(declare-fun IsPredicateField_6657_53 (T@Field_9969_53) Bool)
(declare-fun IsWandField_6657_53 (T@Field_9969_53) Bool)
(declare-fun HasDirectPerm_6657_32781 (T@PolymorphicMapType_9930 T@Ref T@Field_6657_27076) Bool)
(declare-fun HasDirectPerm_6657_9983 (T@PolymorphicMapType_9930 T@Ref T@Field_9982_9983) Bool)
(declare-fun HasDirectPerm_6657_53 (T@PolymorphicMapType_9930 T@Ref T@Field_9969_53) Bool)
(declare-fun HasDirectPerm_6657_3154 (T@PolymorphicMapType_9930 T@Ref T@Field_16000_3154) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_9930 T@PolymorphicMapType_9930 T@PolymorphicMapType_9930) Bool)
(declare-fun |Seq#Equal_16045| (T@Seq_16045 T@Seq_16045) Bool)
(declare-fun |Seq#Equal_3032| (T@Seq_3032 T@Seq_3032) Bool)
(declare-fun |Seq#ContainsTrigger_6661| (T@Seq_16045 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3032| (T@Seq_3032 Int) Bool)
(declare-fun |Seq#SkolemDiff_16045| (T@Seq_16045 T@Seq_16045) Int)
(declare-fun |Seq#SkolemDiff_3032| (T@Seq_3032 T@Seq_3032) Int)
(assert (forall ((s T@Seq_16045) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_6661| s)) (= (|Seq#Length_6661| (|Seq#Drop_6661| s n)) (- (|Seq#Length_6661| s) n))) (=> (< (|Seq#Length_6661| s) n) (= (|Seq#Length_6661| (|Seq#Drop_6661| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_6661| (|Seq#Drop_6661| s n)) (|Seq#Length_6661| s))))
 :qid |stdinbpl.306:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_6661| (|Seq#Drop_6661| s n)))
 :pattern ( (|Seq#Length_6661| s) (|Seq#Drop_6661| s n))
)))
(assert (forall ((s@@0 T@Seq_3032) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3032| s@@0)) (= (|Seq#Length_3032| (|Seq#Drop_3032| s@@0 n@@0)) (- (|Seq#Length_3032| s@@0) n@@0))) (=> (< (|Seq#Length_3032| s@@0) n@@0) (= (|Seq#Length_3032| (|Seq#Drop_3032| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3032| (|Seq#Drop_3032| s@@0 n@@0)) (|Seq#Length_3032| s@@0))))
 :qid |stdinbpl.306:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3032| (|Seq#Drop_3032| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3032| s@@0) (|Seq#Drop_3032| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_9909) (Heap1 T@PolymorphicMapType_9909) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_9909) (Mask T@PolymorphicMapType_9930) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_9909) (Heap1@@0 T@PolymorphicMapType_9909) (Heap2 T@PolymorphicMapType_9909) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_6657_27076) ) (!  (not (select (|PolymorphicMapType_10458_9969_28254#PolymorphicMapType_10458| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10458_9969_28254#PolymorphicMapType_10458| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_6657_26943) ) (!  (not (select (|PolymorphicMapType_10458_9969_26943#PolymorphicMapType_10458| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10458_9969_26943#PolymorphicMapType_10458| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_16000_3154) ) (!  (not (select (|PolymorphicMapType_10458_9969_3154#PolymorphicMapType_10458| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10458_9969_3154#PolymorphicMapType_10458| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_9982_9983) ) (!  (not (select (|PolymorphicMapType_10458_9969_9983#PolymorphicMapType_10458| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10458_9969_9983#PolymorphicMapType_10458| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_9969_53) ) (!  (not (select (|PolymorphicMapType_10458_9969_53#PolymorphicMapType_10458| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10458_9969_53#PolymorphicMapType_10458| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((s@@1 T@Seq_16045) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_6661| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_6661| (|Seq#Drop_6661| s@@1 n@@1) j) (|Seq#Index_6661| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.327:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_6661| (|Seq#Drop_6661| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3032) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3032| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3032| (|Seq#Drop_3032| s@@2 n@@2) j@@0) (|Seq#Index_3032| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.327:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3032| (|Seq#Drop_3032| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_6661| |Seq#Empty_6661|) 0))
(assert (= (|Seq#Length_3032| |Seq#Empty_3032|) 0))
(assert (forall ((s@@3 T@Seq_16045) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_6661| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_6661| (|Seq#Update_6661| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_6661| (|Seq#Update_6661| s@@3 i v) n@@3) (|Seq#Index_6661| s@@3 n@@3)))))
 :qid |stdinbpl.282:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_6661| (|Seq#Update_6661| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_6661| s@@3 n@@3) (|Seq#Update_6661| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_3032) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3032| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_3032| (|Seq#Update_3032| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_3032| (|Seq#Update_3032| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_3032| s@@4 n@@4)))))
 :qid |stdinbpl.282:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3032| (|Seq#Update_3032| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_3032| s@@4 n@@4) (|Seq#Update_3032| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_16045) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_6661| s@@5)) (= (|Seq#Length_6661| (|Seq#Take_6661| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_6661| s@@5) n@@5) (= (|Seq#Length_6661| (|Seq#Take_6661| s@@5 n@@5)) (|Seq#Length_6661| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_6661| (|Seq#Take_6661| s@@5 n@@5)) 0)))
 :qid |stdinbpl.293:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_6661| (|Seq#Take_6661| s@@5 n@@5)))
 :pattern ( (|Seq#Take_6661| s@@5 n@@5) (|Seq#Length_6661| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3032) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3032| s@@6)) (= (|Seq#Length_3032| (|Seq#Take_3032| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3032| s@@6) n@@6) (= (|Seq#Length_3032| (|Seq#Take_3032| s@@6 n@@6)) (|Seq#Length_3032| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3032| (|Seq#Take_3032| s@@6 n@@6)) 0)))
 :qid |stdinbpl.293:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3032| (|Seq#Take_3032| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3032| s@@6 n@@6) (|Seq#Length_3032| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3032| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.567:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_16045) (x T@Ref) ) (!  (=> (|Seq#Contains_16045| s@@7 x) (and (and (<= 0 (|Seq#Skolem_16045| s@@7 x)) (< (|Seq#Skolem_16045| s@@7 x) (|Seq#Length_6661| s@@7))) (= (|Seq#Index_6661| s@@7 (|Seq#Skolem_16045| s@@7 x)) x)))
 :qid |stdinbpl.425:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_16045| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3032) (x@@0 Int) ) (!  (=> (|Seq#Contains_3032| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3032| s@@8 x@@0)) (< (|Seq#Skolem_3032| s@@8 x@@0) (|Seq#Length_3032| s@@8))) (= (|Seq#Index_3032| s@@8 (|Seq#Skolem_3032| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.425:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3032| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_3032) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_3032| s@@9 n@@7) s@@9))
 :qid |stdinbpl.409:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3032| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_16045) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_6661| s@@10 n@@8) s@@10))
 :qid |stdinbpl.409:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_6661| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.262:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.260:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_9909) (ExhaleHeap T@PolymorphicMapType_9909) (Mask@@0 T@PolymorphicMapType_9930) (pm_f_32 T@Field_6657_26943) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_6657_27007 Mask@@0 null pm_f_32) (IsPredicateField_6657_27034 pm_f_32)) (= (select (|PolymorphicMapType_9909_6657_27120#PolymorphicMapType_9909| Heap@@0) null (PredicateMaskField_6657 pm_f_32)) (select (|PolymorphicMapType_9909_6657_27120#PolymorphicMapType_9909| ExhaleHeap) null (PredicateMaskField_6657 pm_f_32)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_6657_27034 pm_f_32) (select (|PolymorphicMapType_9909_6657_27120#PolymorphicMapType_9909| ExhaleHeap) null (PredicateMaskField_6657 pm_f_32)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_9909) (ExhaleHeap@@0 T@PolymorphicMapType_9909) (Mask@@1 T@PolymorphicMapType_9930) (pm_f_32@@0 T@Field_6657_26943) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_6657_27007 Mask@@1 null pm_f_32@@0) (IsWandField_6657_28781 pm_f_32@@0)) (= (select (|PolymorphicMapType_9909_6657_27120#PolymorphicMapType_9909| Heap@@1) null (WandMaskField_6657 pm_f_32@@0)) (select (|PolymorphicMapType_9909_6657_27120#PolymorphicMapType_9909| ExhaleHeap@@0) null (WandMaskField_6657 pm_f_32@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_6657_28781 pm_f_32@@0) (select (|PolymorphicMapType_9909_6657_27120#PolymorphicMapType_9909| ExhaleHeap@@0) null (WandMaskField_6657 pm_f_32@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_16045| (|Seq#Singleton_6661| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.550:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_16045| (|Seq#Singleton_6661| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3032| (|Seq#Singleton_3032| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.550:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3032| (|Seq#Singleton_3032| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_16045) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_6661| s@@11))) (= (|Seq#Index_6661| (|Seq#Take_6661| s@@11 n@@9) j@@3) (|Seq#Index_6661| s@@11 j@@3)))
 :qid |stdinbpl.301:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_6661| (|Seq#Take_6661| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_6661| s@@11 j@@3) (|Seq#Take_6661| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3032) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3032| s@@12))) (= (|Seq#Index_3032| (|Seq#Take_3032| s@@12 n@@10) j@@4) (|Seq#Index_3032| s@@12 j@@4)))
 :qid |stdinbpl.301:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3032| (|Seq#Take_3032| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3032| s@@12 j@@4) (|Seq#Take_3032| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_16045) (t T@Seq_16045) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_6661| s@@13))) (< n@@11 (|Seq#Length_6661| (|Seq#Append_16045| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_6661| s@@13)) (|Seq#Length_6661| s@@13)) n@@11) (= (|Seq#Take_6661| (|Seq#Append_16045| s@@13 t) n@@11) (|Seq#Append_16045| s@@13 (|Seq#Take_6661| t (|Seq#Sub| n@@11 (|Seq#Length_6661| s@@13)))))))
 :qid |stdinbpl.386:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_6661| (|Seq#Append_16045| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3032) (t@@0 T@Seq_3032) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3032| s@@14))) (< n@@12 (|Seq#Length_3032| (|Seq#Append_3032| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3032| s@@14)) (|Seq#Length_3032| s@@14)) n@@12) (= (|Seq#Take_3032| (|Seq#Append_3032| s@@14 t@@0) n@@12) (|Seq#Append_3032| s@@14 (|Seq#Take_3032| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3032| s@@14)))))))
 :qid |stdinbpl.386:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3032| (|Seq#Append_3032| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_9909) (ExhaleHeap@@1 T@PolymorphicMapType_9909) (Mask@@2 T@PolymorphicMapType_9930) (o_55 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_9909_6455_53#PolymorphicMapType_9909| Heap@@2) o_55 $allocated) (select (|PolymorphicMapType_9909_6455_53#PolymorphicMapType_9909| ExhaleHeap@@1) o_55 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_9909_6455_53#PolymorphicMapType_9909| ExhaleHeap@@1) o_55 $allocated))
)))
(assert (forall ((p T@Field_6657_26943) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_9969_9969 p v_1 p w))
 :qid |stdinbpl.204:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_9969_9969 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_16045) (s1 T@Seq_16045) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_6661|)) (not (= s1 |Seq#Empty_6661|))) (<= (|Seq#Length_6661| s0) n@@13)) (< n@@13 (|Seq#Length_6661| (|Seq#Append_16045| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_6661| s0)) (|Seq#Length_6661| s0)) n@@13) (= (|Seq#Index_6661| (|Seq#Append_16045| s0 s1) n@@13) (|Seq#Index_6661| s1 (|Seq#Sub| n@@13 (|Seq#Length_6661| s0))))))
 :qid |stdinbpl.273:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_6661| (|Seq#Append_16045| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3032) (s1@@0 T@Seq_3032) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3032|)) (not (= s1@@0 |Seq#Empty_3032|))) (<= (|Seq#Length_3032| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3032| (|Seq#Append_3032| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3032| s0@@0)) (|Seq#Length_3032| s0@@0)) n@@14) (= (|Seq#Index_3032| (|Seq#Append_3032| s0@@0 s1@@0) n@@14) (|Seq#Index_3032| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3032| s0@@0))))))
 :qid |stdinbpl.273:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3032| (|Seq#Append_3032| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_6657_3154 f_7)))
(assert  (not (IsWandField_6657_3154 f_7)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_9909) (ExhaleHeap@@2 T@PolymorphicMapType_9909) (Mask@@3 T@PolymorphicMapType_9930) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_9930) (o_2@@4 T@Ref) (f_4@@4 T@Field_6657_27076) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_9930_6657_31198#PolymorphicMapType_9930| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_6657_32327 f_4@@4))) (not (IsWandField_6657_32343 f_4@@4))) (<= (select (|PolymorphicMapType_9930_6657_31198#PolymorphicMapType_9930| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_9930_6657_31198#PolymorphicMapType_9930| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_9930) (o_2@@5 T@Ref) (f_4@@5 T@Field_6657_26943) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_9930_6657_26943#PolymorphicMapType_9930| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_6657_27034 f_4@@5))) (not (IsWandField_6657_28781 f_4@@5))) (<= (select (|PolymorphicMapType_9930_6657_26943#PolymorphicMapType_9930| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_9930_6657_26943#PolymorphicMapType_9930| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_9930) (o_2@@6 T@Ref) (f_4@@6 T@Field_9982_9983) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_9930_6657_9983#PolymorphicMapType_9930| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_6657_9983 f_4@@6))) (not (IsWandField_6657_9983 f_4@@6))) (<= (select (|PolymorphicMapType_9930_6657_9983#PolymorphicMapType_9930| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_9930_6657_9983#PolymorphicMapType_9930| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_9930) (o_2@@7 T@Ref) (f_4@@7 T@Field_9969_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_9930_6657_53#PolymorphicMapType_9930| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_6657_53 f_4@@7))) (not (IsWandField_6657_53 f_4@@7))) (<= (select (|PolymorphicMapType_9930_6657_53#PolymorphicMapType_9930| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_9930_6657_53#PolymorphicMapType_9930| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_9930) (o_2@@8 T@Ref) (f_4@@8 T@Field_16000_3154) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_6657_3154 f_4@@8))) (not (IsWandField_6657_3154 f_4@@8))) (<= (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_9930) (o_2@@9 T@Ref) (f_4@@9 T@Field_6657_27076) ) (! (= (HasDirectPerm_6657_32781 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_9930_6657_31198#PolymorphicMapType_9930| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6657_32781 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_9930) (o_2@@10 T@Ref) (f_4@@10 T@Field_6657_26943) ) (! (= (HasDirectPerm_6657_27007 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_9930_6657_26943#PolymorphicMapType_9930| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6657_27007 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_9930) (o_2@@11 T@Ref) (f_4@@11 T@Field_9982_9983) ) (! (= (HasDirectPerm_6657_9983 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_9930_6657_9983#PolymorphicMapType_9930| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6657_9983 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_9930) (o_2@@12 T@Ref) (f_4@@12 T@Field_9969_53) ) (! (= (HasDirectPerm_6657_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_9930_6657_53#PolymorphicMapType_9930| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6657_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_9930) (o_2@@13 T@Ref) (f_4@@13 T@Field_16000_3154) ) (! (= (HasDirectPerm_6657_3154 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6657_3154 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_9909) (ExhaleHeap@@3 T@PolymorphicMapType_9909) (Mask@@14 T@PolymorphicMapType_9930) (pm_f_32@@1 T@Field_6657_26943) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_6657_27007 Mask@@14 null pm_f_32@@1) (IsPredicateField_6657_27034 pm_f_32@@1)) (and (and (and (and (forall ((o2_32 T@Ref) (f_54 T@Field_9969_53) ) (!  (=> (select (|PolymorphicMapType_10458_9969_53#PolymorphicMapType_10458| (select (|PolymorphicMapType_9909_6657_27120#PolymorphicMapType_9909| Heap@@4) null (PredicateMaskField_6657 pm_f_32@@1))) o2_32 f_54) (= (select (|PolymorphicMapType_9909_6455_53#PolymorphicMapType_9909| Heap@@4) o2_32 f_54) (select (|PolymorphicMapType_9909_6455_53#PolymorphicMapType_9909| ExhaleHeap@@3) o2_32 f_54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9909_6455_53#PolymorphicMapType_9909| ExhaleHeap@@3) o2_32 f_54))
)) (forall ((o2_32@@0 T@Ref) (f_54@@0 T@Field_9982_9983) ) (!  (=> (select (|PolymorphicMapType_10458_9969_9983#PolymorphicMapType_10458| (select (|PolymorphicMapType_9909_6657_27120#PolymorphicMapType_9909| Heap@@4) null (PredicateMaskField_6657 pm_f_32@@1))) o2_32@@0 f_54@@0) (= (select (|PolymorphicMapType_9909_6458_6459#PolymorphicMapType_9909| Heap@@4) o2_32@@0 f_54@@0) (select (|PolymorphicMapType_9909_6458_6459#PolymorphicMapType_9909| ExhaleHeap@@3) o2_32@@0 f_54@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9909_6458_6459#PolymorphicMapType_9909| ExhaleHeap@@3) o2_32@@0 f_54@@0))
))) (forall ((o2_32@@1 T@Ref) (f_54@@1 T@Field_16000_3154) ) (!  (=> (select (|PolymorphicMapType_10458_9969_3154#PolymorphicMapType_10458| (select (|PolymorphicMapType_9909_6657_27120#PolymorphicMapType_9909| Heap@@4) null (PredicateMaskField_6657 pm_f_32@@1))) o2_32@@1 f_54@@1) (= (select (|PolymorphicMapType_9909_6657_3154#PolymorphicMapType_9909| Heap@@4) o2_32@@1 f_54@@1) (select (|PolymorphicMapType_9909_6657_3154#PolymorphicMapType_9909| ExhaleHeap@@3) o2_32@@1 f_54@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9909_6657_3154#PolymorphicMapType_9909| ExhaleHeap@@3) o2_32@@1 f_54@@1))
))) (forall ((o2_32@@2 T@Ref) (f_54@@2 T@Field_6657_26943) ) (!  (=> (select (|PolymorphicMapType_10458_9969_26943#PolymorphicMapType_10458| (select (|PolymorphicMapType_9909_6657_27120#PolymorphicMapType_9909| Heap@@4) null (PredicateMaskField_6657 pm_f_32@@1))) o2_32@@2 f_54@@2) (= (select (|PolymorphicMapType_9909_9969_26943#PolymorphicMapType_9909| Heap@@4) o2_32@@2 f_54@@2) (select (|PolymorphicMapType_9909_9969_26943#PolymorphicMapType_9909| ExhaleHeap@@3) o2_32@@2 f_54@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9909_9969_26943#PolymorphicMapType_9909| ExhaleHeap@@3) o2_32@@2 f_54@@2))
))) (forall ((o2_32@@3 T@Ref) (f_54@@3 T@Field_6657_27076) ) (!  (=> (select (|PolymorphicMapType_10458_9969_28254#PolymorphicMapType_10458| (select (|PolymorphicMapType_9909_6657_27120#PolymorphicMapType_9909| Heap@@4) null (PredicateMaskField_6657 pm_f_32@@1))) o2_32@@3 f_54@@3) (= (select (|PolymorphicMapType_9909_6657_27120#PolymorphicMapType_9909| Heap@@4) o2_32@@3 f_54@@3) (select (|PolymorphicMapType_9909_6657_27120#PolymorphicMapType_9909| ExhaleHeap@@3) o2_32@@3 f_54@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9909_6657_27120#PolymorphicMapType_9909| ExhaleHeap@@3) o2_32@@3 f_54@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_6657_27034 pm_f_32@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_9909) (ExhaleHeap@@4 T@PolymorphicMapType_9909) (Mask@@15 T@PolymorphicMapType_9930) (pm_f_32@@2 T@Field_6657_26943) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_6657_27007 Mask@@15 null pm_f_32@@2) (IsWandField_6657_28781 pm_f_32@@2)) (and (and (and (and (forall ((o2_32@@4 T@Ref) (f_54@@4 T@Field_9969_53) ) (!  (=> (select (|PolymorphicMapType_10458_9969_53#PolymorphicMapType_10458| (select (|PolymorphicMapType_9909_6657_27120#PolymorphicMapType_9909| Heap@@5) null (WandMaskField_6657 pm_f_32@@2))) o2_32@@4 f_54@@4) (= (select (|PolymorphicMapType_9909_6455_53#PolymorphicMapType_9909| Heap@@5) o2_32@@4 f_54@@4) (select (|PolymorphicMapType_9909_6455_53#PolymorphicMapType_9909| ExhaleHeap@@4) o2_32@@4 f_54@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9909_6455_53#PolymorphicMapType_9909| ExhaleHeap@@4) o2_32@@4 f_54@@4))
)) (forall ((o2_32@@5 T@Ref) (f_54@@5 T@Field_9982_9983) ) (!  (=> (select (|PolymorphicMapType_10458_9969_9983#PolymorphicMapType_10458| (select (|PolymorphicMapType_9909_6657_27120#PolymorphicMapType_9909| Heap@@5) null (WandMaskField_6657 pm_f_32@@2))) o2_32@@5 f_54@@5) (= (select (|PolymorphicMapType_9909_6458_6459#PolymorphicMapType_9909| Heap@@5) o2_32@@5 f_54@@5) (select (|PolymorphicMapType_9909_6458_6459#PolymorphicMapType_9909| ExhaleHeap@@4) o2_32@@5 f_54@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9909_6458_6459#PolymorphicMapType_9909| ExhaleHeap@@4) o2_32@@5 f_54@@5))
))) (forall ((o2_32@@6 T@Ref) (f_54@@6 T@Field_16000_3154) ) (!  (=> (select (|PolymorphicMapType_10458_9969_3154#PolymorphicMapType_10458| (select (|PolymorphicMapType_9909_6657_27120#PolymorphicMapType_9909| Heap@@5) null (WandMaskField_6657 pm_f_32@@2))) o2_32@@6 f_54@@6) (= (select (|PolymorphicMapType_9909_6657_3154#PolymorphicMapType_9909| Heap@@5) o2_32@@6 f_54@@6) (select (|PolymorphicMapType_9909_6657_3154#PolymorphicMapType_9909| ExhaleHeap@@4) o2_32@@6 f_54@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9909_6657_3154#PolymorphicMapType_9909| ExhaleHeap@@4) o2_32@@6 f_54@@6))
))) (forall ((o2_32@@7 T@Ref) (f_54@@7 T@Field_6657_26943) ) (!  (=> (select (|PolymorphicMapType_10458_9969_26943#PolymorphicMapType_10458| (select (|PolymorphicMapType_9909_6657_27120#PolymorphicMapType_9909| Heap@@5) null (WandMaskField_6657 pm_f_32@@2))) o2_32@@7 f_54@@7) (= (select (|PolymorphicMapType_9909_9969_26943#PolymorphicMapType_9909| Heap@@5) o2_32@@7 f_54@@7) (select (|PolymorphicMapType_9909_9969_26943#PolymorphicMapType_9909| ExhaleHeap@@4) o2_32@@7 f_54@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9909_9969_26943#PolymorphicMapType_9909| ExhaleHeap@@4) o2_32@@7 f_54@@7))
))) (forall ((o2_32@@8 T@Ref) (f_54@@8 T@Field_6657_27076) ) (!  (=> (select (|PolymorphicMapType_10458_9969_28254#PolymorphicMapType_10458| (select (|PolymorphicMapType_9909_6657_27120#PolymorphicMapType_9909| Heap@@5) null (WandMaskField_6657 pm_f_32@@2))) o2_32@@8 f_54@@8) (= (select (|PolymorphicMapType_9909_6657_27120#PolymorphicMapType_9909| Heap@@5) o2_32@@8 f_54@@8) (select (|PolymorphicMapType_9909_6657_27120#PolymorphicMapType_9909| ExhaleHeap@@4) o2_32@@8 f_54@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9909_6657_27120#PolymorphicMapType_9909| ExhaleHeap@@4) o2_32@@8 f_54@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_6657_28781 pm_f_32@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.192:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3032| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.565:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3032| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_9909) (ExhaleHeap@@5 T@PolymorphicMapType_9909) (Mask@@16 T@PolymorphicMapType_9930) (o_55@@0 T@Ref) (f_54@@9 T@Field_6657_27076) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_6657_32781 Mask@@16 o_55@@0 f_54@@9) (= (select (|PolymorphicMapType_9909_6657_27120#PolymorphicMapType_9909| Heap@@6) o_55@@0 f_54@@9) (select (|PolymorphicMapType_9909_6657_27120#PolymorphicMapType_9909| ExhaleHeap@@5) o_55@@0 f_54@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_9909_6657_27120#PolymorphicMapType_9909| ExhaleHeap@@5) o_55@@0 f_54@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_9909) (ExhaleHeap@@6 T@PolymorphicMapType_9909) (Mask@@17 T@PolymorphicMapType_9930) (o_55@@1 T@Ref) (f_54@@10 T@Field_6657_26943) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_6657_27007 Mask@@17 o_55@@1 f_54@@10) (= (select (|PolymorphicMapType_9909_9969_26943#PolymorphicMapType_9909| Heap@@7) o_55@@1 f_54@@10) (select (|PolymorphicMapType_9909_9969_26943#PolymorphicMapType_9909| ExhaleHeap@@6) o_55@@1 f_54@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_9909_9969_26943#PolymorphicMapType_9909| ExhaleHeap@@6) o_55@@1 f_54@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_9909) (ExhaleHeap@@7 T@PolymorphicMapType_9909) (Mask@@18 T@PolymorphicMapType_9930) (o_55@@2 T@Ref) (f_54@@11 T@Field_9982_9983) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_6657_9983 Mask@@18 o_55@@2 f_54@@11) (= (select (|PolymorphicMapType_9909_6458_6459#PolymorphicMapType_9909| Heap@@8) o_55@@2 f_54@@11) (select (|PolymorphicMapType_9909_6458_6459#PolymorphicMapType_9909| ExhaleHeap@@7) o_55@@2 f_54@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_9909_6458_6459#PolymorphicMapType_9909| ExhaleHeap@@7) o_55@@2 f_54@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_9909) (ExhaleHeap@@8 T@PolymorphicMapType_9909) (Mask@@19 T@PolymorphicMapType_9930) (o_55@@3 T@Ref) (f_54@@12 T@Field_9969_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_6657_53 Mask@@19 o_55@@3 f_54@@12) (= (select (|PolymorphicMapType_9909_6455_53#PolymorphicMapType_9909| Heap@@9) o_55@@3 f_54@@12) (select (|PolymorphicMapType_9909_6455_53#PolymorphicMapType_9909| ExhaleHeap@@8) o_55@@3 f_54@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_9909_6455_53#PolymorphicMapType_9909| ExhaleHeap@@8) o_55@@3 f_54@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_9909) (ExhaleHeap@@9 T@PolymorphicMapType_9909) (Mask@@20 T@PolymorphicMapType_9930) (o_55@@4 T@Ref) (f_54@@13 T@Field_16000_3154) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_6657_3154 Mask@@20 o_55@@4 f_54@@13) (= (select (|PolymorphicMapType_9909_6657_3154#PolymorphicMapType_9909| Heap@@10) o_55@@4 f_54@@13) (select (|PolymorphicMapType_9909_6657_3154#PolymorphicMapType_9909| ExhaleHeap@@9) o_55@@4 f_54@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_9909_6657_3154#PolymorphicMapType_9909| ExhaleHeap@@9) o_55@@4 f_54@@13))
)))
(assert (forall ((s0@@1 T@Seq_16045) (s1@@1 T@Seq_16045) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_6661|)) (not (= s1@@1 |Seq#Empty_6661|))) (= (|Seq#Length_6661| (|Seq#Append_16045| s0@@1 s1@@1)) (+ (|Seq#Length_6661| s0@@1) (|Seq#Length_6661| s1@@1))))
 :qid |stdinbpl.242:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_6661| (|Seq#Append_16045| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3032) (s1@@2 T@Seq_3032) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3032|)) (not (= s1@@2 |Seq#Empty_3032|))) (= (|Seq#Length_3032| (|Seq#Append_3032| s0@@2 s1@@2)) (+ (|Seq#Length_3032| s0@@2) (|Seq#Length_3032| s1@@2))))
 :qid |stdinbpl.242:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3032| (|Seq#Append_3032| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_6657_27076) ) (! (= (select (|PolymorphicMapType_9930_6657_31198#PolymorphicMapType_9930| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9930_6657_31198#PolymorphicMapType_9930| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_6657_26943) ) (! (= (select (|PolymorphicMapType_9930_6657_26943#PolymorphicMapType_9930| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9930_6657_26943#PolymorphicMapType_9930| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_9982_9983) ) (! (= (select (|PolymorphicMapType_9930_6657_9983#PolymorphicMapType_9930| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9930_6657_9983#PolymorphicMapType_9930| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_9969_53) ) (! (= (select (|PolymorphicMapType_9930_6657_53#PolymorphicMapType_9930| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9930_6657_53#PolymorphicMapType_9930| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_16000_3154) ) (! (= (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((s@@15 T@Seq_16045) (t@@1 T@Seq_16045) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_6661| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_6661| s@@15)) (|Seq#Length_6661| s@@15)) n@@15) (= (|Seq#Drop_6661| (|Seq#Append_16045| s@@15 t@@1) n@@15) (|Seq#Drop_6661| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_6661| s@@15))))))
 :qid |stdinbpl.399:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_6661| (|Seq#Append_16045| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3032) (t@@2 T@Seq_3032) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3032| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3032| s@@16)) (|Seq#Length_3032| s@@16)) n@@16) (= (|Seq#Drop_3032| (|Seq#Append_3032| s@@16 t@@2) n@@16) (|Seq#Drop_3032| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3032| s@@16))))))
 :qid |stdinbpl.399:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3032| (|Seq#Append_3032| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_9930) (SummandMask1 T@PolymorphicMapType_9930) (SummandMask2 T@PolymorphicMapType_9930) (o_2@@19 T@Ref) (f_4@@19 T@Field_6657_27076) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_9930_6657_31198#PolymorphicMapType_9930| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_9930_6657_31198#PolymorphicMapType_9930| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_9930_6657_31198#PolymorphicMapType_9930| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9930_6657_31198#PolymorphicMapType_9930| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9930_6657_31198#PolymorphicMapType_9930| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9930_6657_31198#PolymorphicMapType_9930| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_9930) (SummandMask1@@0 T@PolymorphicMapType_9930) (SummandMask2@@0 T@PolymorphicMapType_9930) (o_2@@20 T@Ref) (f_4@@20 T@Field_6657_26943) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_9930_6657_26943#PolymorphicMapType_9930| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_9930_6657_26943#PolymorphicMapType_9930| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_9930_6657_26943#PolymorphicMapType_9930| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9930_6657_26943#PolymorphicMapType_9930| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9930_6657_26943#PolymorphicMapType_9930| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9930_6657_26943#PolymorphicMapType_9930| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_9930) (SummandMask1@@1 T@PolymorphicMapType_9930) (SummandMask2@@1 T@PolymorphicMapType_9930) (o_2@@21 T@Ref) (f_4@@21 T@Field_9982_9983) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_9930_6657_9983#PolymorphicMapType_9930| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_9930_6657_9983#PolymorphicMapType_9930| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_9930_6657_9983#PolymorphicMapType_9930| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9930_6657_9983#PolymorphicMapType_9930| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9930_6657_9983#PolymorphicMapType_9930| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9930_6657_9983#PolymorphicMapType_9930| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_9930) (SummandMask1@@2 T@PolymorphicMapType_9930) (SummandMask2@@2 T@PolymorphicMapType_9930) (o_2@@22 T@Ref) (f_4@@22 T@Field_9969_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_9930_6657_53#PolymorphicMapType_9930| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_9930_6657_53#PolymorphicMapType_9930| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_9930_6657_53#PolymorphicMapType_9930| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9930_6657_53#PolymorphicMapType_9930| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9930_6657_53#PolymorphicMapType_9930| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9930_6657_53#PolymorphicMapType_9930| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_9930) (SummandMask1@@3 T@PolymorphicMapType_9930) (SummandMask2@@3 T@PolymorphicMapType_9930) (o_2@@23 T@Ref) (f_4@@23 T@Field_16000_3154) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3032| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3032| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.564:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3032| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_16045) (b T@Seq_16045) ) (!  (=> (|Seq#Equal_16045| a b) (= a b))
 :qid |stdinbpl.537:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_16045| a b))
)))
(assert (forall ((a@@0 T@Seq_3032) (b@@0 T@Seq_3032) ) (!  (=> (|Seq#Equal_3032| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.537:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3032| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_16045) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_6661| s@@17))) (|Seq#ContainsTrigger_6661| s@@17 (|Seq#Index_6661| s@@17 i@@3)))
 :qid |stdinbpl.430:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_6661| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_3032) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_3032| s@@18))) (|Seq#ContainsTrigger_3032| s@@18 (|Seq#Index_3032| s@@18 i@@4)))
 :qid |stdinbpl.430:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3032| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_16045) (s1@@3 T@Seq_16045) ) (!  (and (=> (= s0@@3 |Seq#Empty_6661|) (= (|Seq#Append_16045| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_6661|) (= (|Seq#Append_16045| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.248:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_16045| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3032) (s1@@4 T@Seq_3032) ) (!  (and (=> (= s0@@4 |Seq#Empty_3032|) (= (|Seq#Append_3032| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3032|) (= (|Seq#Append_3032| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.248:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3032| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_6661| (|Seq#Singleton_6661| t@@3) 0) t@@3)
 :qid |stdinbpl.252:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_6661| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3032| (|Seq#Singleton_3032| t@@4) 0) t@@4)
 :qid |stdinbpl.252:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3032| t@@4))
)))
(assert (forall ((s@@19 T@Seq_16045) ) (! (<= 0 (|Seq#Length_6661| s@@19))
 :qid |stdinbpl.231:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_6661| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3032) ) (! (<= 0 (|Seq#Length_3032| s@@20))
 :qid |stdinbpl.231:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3032| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_16045) (s1@@5 T@Seq_16045) ) (!  (=> (|Seq#Equal_16045| s0@@5 s1@@5) (and (= (|Seq#Length_6661| s0@@5) (|Seq#Length_6661| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_6661| s0@@5))) (= (|Seq#Index_6661| s0@@5 j@@6) (|Seq#Index_6661| s1@@5 j@@6)))
 :qid |stdinbpl.527:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_6661| s0@@5 j@@6))
 :pattern ( (|Seq#Index_6661| s1@@5 j@@6))
))))
 :qid |stdinbpl.524:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_16045| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3032) (s1@@6 T@Seq_3032) ) (!  (=> (|Seq#Equal_3032| s0@@6 s1@@6) (and (= (|Seq#Length_3032| s0@@6) (|Seq#Length_3032| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_3032| s0@@6))) (= (|Seq#Index_3032| s0@@6 j@@7) (|Seq#Index_3032| s1@@6 j@@7)))
 :qid |stdinbpl.527:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3032| s0@@6 j@@7))
 :pattern ( (|Seq#Index_3032| s1@@6 j@@7))
))))
 :qid |stdinbpl.524:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3032| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_6661| (|Seq#Singleton_6661| t@@5)) 1)
 :qid |stdinbpl.239:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_6661| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3032| (|Seq#Singleton_3032| t@@6)) 1)
 :qid |stdinbpl.239:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3032| t@@6))
)))
(assert (forall ((s@@21 T@Seq_16045) (t@@7 T@Seq_16045) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_6661| s@@21))) (= (|Seq#Take_6661| (|Seq#Append_16045| s@@21 t@@7) n@@17) (|Seq#Take_6661| s@@21 n@@17)))
 :qid |stdinbpl.381:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_6661| (|Seq#Append_16045| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3032) (t@@8 T@Seq_3032) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3032| s@@22))) (= (|Seq#Take_3032| (|Seq#Append_3032| s@@22 t@@8) n@@18) (|Seq#Take_3032| s@@22 n@@18)))
 :qid |stdinbpl.381:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3032| (|Seq#Append_3032| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_16045) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_6661| s@@23))) (= (|Seq#Length_6661| (|Seq#Update_6661| s@@23 i@@5 v@@2)) (|Seq#Length_6661| s@@23)))
 :qid |stdinbpl.280:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_6661| (|Seq#Update_6661| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_6661| s@@23) (|Seq#Update_6661| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3032) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_3032| s@@24))) (= (|Seq#Length_3032| (|Seq#Update_3032| s@@24 i@@6 v@@3)) (|Seq#Length_3032| s@@24)))
 :qid |stdinbpl.280:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3032| (|Seq#Update_3032| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_3032| s@@24) (|Seq#Update_3032| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_9909) (o_54 T@Ref) (f_8 T@Field_6657_26943) (v@@4 T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_9909 (|PolymorphicMapType_9909_6455_53#PolymorphicMapType_9909| Heap@@11) (|PolymorphicMapType_9909_6458_6459#PolymorphicMapType_9909| Heap@@11) (|PolymorphicMapType_9909_6657_3154#PolymorphicMapType_9909| Heap@@11) (|PolymorphicMapType_9909_6657_27120#PolymorphicMapType_9909| Heap@@11) (store (|PolymorphicMapType_9909_9969_26943#PolymorphicMapType_9909| Heap@@11) o_54 f_8 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9909 (|PolymorphicMapType_9909_6455_53#PolymorphicMapType_9909| Heap@@11) (|PolymorphicMapType_9909_6458_6459#PolymorphicMapType_9909| Heap@@11) (|PolymorphicMapType_9909_6657_3154#PolymorphicMapType_9909| Heap@@11) (|PolymorphicMapType_9909_6657_27120#PolymorphicMapType_9909| Heap@@11) (store (|PolymorphicMapType_9909_9969_26943#PolymorphicMapType_9909| Heap@@11) o_54 f_8 v@@4)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_9909) (o_54@@0 T@Ref) (f_8@@0 T@Field_6657_27076) (v@@5 T@PolymorphicMapType_10458) ) (! (succHeap Heap@@12 (PolymorphicMapType_9909 (|PolymorphicMapType_9909_6455_53#PolymorphicMapType_9909| Heap@@12) (|PolymorphicMapType_9909_6458_6459#PolymorphicMapType_9909| Heap@@12) (|PolymorphicMapType_9909_6657_3154#PolymorphicMapType_9909| Heap@@12) (store (|PolymorphicMapType_9909_6657_27120#PolymorphicMapType_9909| Heap@@12) o_54@@0 f_8@@0 v@@5) (|PolymorphicMapType_9909_9969_26943#PolymorphicMapType_9909| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9909 (|PolymorphicMapType_9909_6455_53#PolymorphicMapType_9909| Heap@@12) (|PolymorphicMapType_9909_6458_6459#PolymorphicMapType_9909| Heap@@12) (|PolymorphicMapType_9909_6657_3154#PolymorphicMapType_9909| Heap@@12) (store (|PolymorphicMapType_9909_6657_27120#PolymorphicMapType_9909| Heap@@12) o_54@@0 f_8@@0 v@@5) (|PolymorphicMapType_9909_9969_26943#PolymorphicMapType_9909| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_9909) (o_54@@1 T@Ref) (f_8@@1 T@Field_16000_3154) (v@@6 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_9909 (|PolymorphicMapType_9909_6455_53#PolymorphicMapType_9909| Heap@@13) (|PolymorphicMapType_9909_6458_6459#PolymorphicMapType_9909| Heap@@13) (store (|PolymorphicMapType_9909_6657_3154#PolymorphicMapType_9909| Heap@@13) o_54@@1 f_8@@1 v@@6) (|PolymorphicMapType_9909_6657_27120#PolymorphicMapType_9909| Heap@@13) (|PolymorphicMapType_9909_9969_26943#PolymorphicMapType_9909| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9909 (|PolymorphicMapType_9909_6455_53#PolymorphicMapType_9909| Heap@@13) (|PolymorphicMapType_9909_6458_6459#PolymorphicMapType_9909| Heap@@13) (store (|PolymorphicMapType_9909_6657_3154#PolymorphicMapType_9909| Heap@@13) o_54@@1 f_8@@1 v@@6) (|PolymorphicMapType_9909_6657_27120#PolymorphicMapType_9909| Heap@@13) (|PolymorphicMapType_9909_9969_26943#PolymorphicMapType_9909| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_9909) (o_54@@2 T@Ref) (f_8@@2 T@Field_9982_9983) (v@@7 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_9909 (|PolymorphicMapType_9909_6455_53#PolymorphicMapType_9909| Heap@@14) (store (|PolymorphicMapType_9909_6458_6459#PolymorphicMapType_9909| Heap@@14) o_54@@2 f_8@@2 v@@7) (|PolymorphicMapType_9909_6657_3154#PolymorphicMapType_9909| Heap@@14) (|PolymorphicMapType_9909_6657_27120#PolymorphicMapType_9909| Heap@@14) (|PolymorphicMapType_9909_9969_26943#PolymorphicMapType_9909| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9909 (|PolymorphicMapType_9909_6455_53#PolymorphicMapType_9909| Heap@@14) (store (|PolymorphicMapType_9909_6458_6459#PolymorphicMapType_9909| Heap@@14) o_54@@2 f_8@@2 v@@7) (|PolymorphicMapType_9909_6657_3154#PolymorphicMapType_9909| Heap@@14) (|PolymorphicMapType_9909_6657_27120#PolymorphicMapType_9909| Heap@@14) (|PolymorphicMapType_9909_9969_26943#PolymorphicMapType_9909| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_9909) (o_54@@3 T@Ref) (f_8@@3 T@Field_9969_53) (v@@8 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_9909 (store (|PolymorphicMapType_9909_6455_53#PolymorphicMapType_9909| Heap@@15) o_54@@3 f_8@@3 v@@8) (|PolymorphicMapType_9909_6458_6459#PolymorphicMapType_9909| Heap@@15) (|PolymorphicMapType_9909_6657_3154#PolymorphicMapType_9909| Heap@@15) (|PolymorphicMapType_9909_6657_27120#PolymorphicMapType_9909| Heap@@15) (|PolymorphicMapType_9909_9969_26943#PolymorphicMapType_9909| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9909 (store (|PolymorphicMapType_9909_6455_53#PolymorphicMapType_9909| Heap@@15) o_54@@3 f_8@@3 v@@8) (|PolymorphicMapType_9909_6458_6459#PolymorphicMapType_9909| Heap@@15) (|PolymorphicMapType_9909_6657_3154#PolymorphicMapType_9909| Heap@@15) (|PolymorphicMapType_9909_6657_27120#PolymorphicMapType_9909| Heap@@15) (|PolymorphicMapType_9909_9969_26943#PolymorphicMapType_9909| Heap@@15)))
)))
(assert (forall ((s@@25 T@Seq_16045) (t@@9 T@Seq_16045) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_6661| s@@25))) (= (|Seq#Drop_6661| (|Seq#Append_16045| s@@25 t@@9) n@@19) (|Seq#Append_16045| (|Seq#Drop_6661| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.395:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_6661| (|Seq#Append_16045| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3032) (t@@10 T@Seq_3032) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3032| s@@26))) (= (|Seq#Drop_3032| (|Seq#Append_3032| s@@26 t@@10) n@@20) (|Seq#Append_3032| (|Seq#Drop_3032| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.395:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3032| (|Seq#Append_3032| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_16045) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_6661| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_6661| (|Seq#Drop_6661| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_6661| s@@27 i@@7))))
 :qid |stdinbpl.331:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_6661| s@@27 n@@21) (|Seq#Index_6661| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_3032) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_3032| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_3032| (|Seq#Drop_3032| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_3032| s@@28 i@@8))))
 :qid |stdinbpl.331:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3032| s@@28 n@@22) (|Seq#Index_3032| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_16045) (s1@@7 T@Seq_16045) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_6661|)) (not (= s1@@7 |Seq#Empty_6661|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_6661| s0@@7))) (= (|Seq#Index_6661| (|Seq#Append_16045| s0@@7 s1@@7) n@@23) (|Seq#Index_6661| s0@@7 n@@23)))
 :qid |stdinbpl.271:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_6661| (|Seq#Append_16045| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_6661| s0@@7 n@@23) (|Seq#Append_16045| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3032) (s1@@8 T@Seq_3032) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3032|)) (not (= s1@@8 |Seq#Empty_3032|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3032| s0@@8))) (= (|Seq#Index_3032| (|Seq#Append_3032| s0@@8 s1@@8) n@@24) (|Seq#Index_3032| s0@@8 n@@24)))
 :qid |stdinbpl.271:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3032| (|Seq#Append_3032| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3032| s0@@8 n@@24) (|Seq#Append_3032| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_16045) (s1@@9 T@Seq_16045) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_6661|)) (not (= s1@@9 |Seq#Empty_6661|))) (<= 0 m)) (< m (|Seq#Length_6661| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_6661| s0@@9)) (|Seq#Length_6661| s0@@9)) m) (= (|Seq#Index_6661| (|Seq#Append_16045| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_6661| s0@@9))) (|Seq#Index_6661| s1@@9 m))))
 :qid |stdinbpl.276:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_6661| s1@@9 m) (|Seq#Append_16045| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3032) (s1@@10 T@Seq_3032) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3032|)) (not (= s1@@10 |Seq#Empty_3032|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3032| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3032| s0@@10)) (|Seq#Length_3032| s0@@10)) m@@0) (= (|Seq#Index_3032| (|Seq#Append_3032| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3032| s0@@10))) (|Seq#Index_3032| s1@@10 m@@0))))
 :qid |stdinbpl.276:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3032| s1@@10 m@@0) (|Seq#Append_3032| s0@@10 s1@@10))
)))
(assert (forall ((o_54@@4 T@Ref) (f_24 T@Field_9982_9983) (Heap@@16 T@PolymorphicMapType_9909) ) (!  (=> (select (|PolymorphicMapType_9909_6455_53#PolymorphicMapType_9909| Heap@@16) o_54@@4 $allocated) (select (|PolymorphicMapType_9909_6455_53#PolymorphicMapType_9909| Heap@@16) (select (|PolymorphicMapType_9909_6458_6459#PolymorphicMapType_9909| Heap@@16) o_54@@4 f_24) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_9909_6458_6459#PolymorphicMapType_9909| Heap@@16) o_54@@4 f_24))
)))
(assert (forall ((s@@29 T@Seq_16045) (x@@3 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_6661| s@@29))) (= (|Seq#Index_6661| s@@29 i@@9) x@@3)) (|Seq#Contains_16045| s@@29 x@@3))
 :qid |stdinbpl.428:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_16045| s@@29 x@@3) (|Seq#Index_6661| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_3032) (x@@4 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_3032| s@@30))) (= (|Seq#Index_3032| s@@30 i@@10) x@@4)) (|Seq#Contains_3032| s@@30 x@@4))
 :qid |stdinbpl.428:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3032| s@@30 x@@4) (|Seq#Index_3032| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_16045) (s1@@11 T@Seq_16045) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_16045| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_16045| s0@@11 s1@@11))) (not (= (|Seq#Length_6661| s0@@11) (|Seq#Length_6661| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_16045| s0@@11 s1@@11))) (= (|Seq#Length_6661| s0@@11) (|Seq#Length_6661| s1@@11))) (= (|Seq#SkolemDiff_16045| s0@@11 s1@@11) (|Seq#SkolemDiff_16045| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_16045| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_16045| s0@@11 s1@@11) (|Seq#Length_6661| s0@@11))) (not (= (|Seq#Index_6661| s0@@11 (|Seq#SkolemDiff_16045| s0@@11 s1@@11)) (|Seq#Index_6661| s1@@11 (|Seq#SkolemDiff_16045| s0@@11 s1@@11))))))
 :qid |stdinbpl.532:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_16045| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3032) (s1@@12 T@Seq_3032) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3032| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3032| s0@@12 s1@@12))) (not (= (|Seq#Length_3032| s0@@12) (|Seq#Length_3032| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3032| s0@@12 s1@@12))) (= (|Seq#Length_3032| s0@@12) (|Seq#Length_3032| s1@@12))) (= (|Seq#SkolemDiff_3032| s0@@12 s1@@12) (|Seq#SkolemDiff_3032| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3032| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3032| s0@@12 s1@@12) (|Seq#Length_3032| s0@@12))) (not (= (|Seq#Index_3032| s0@@12 (|Seq#SkolemDiff_3032| s0@@12 s1@@12)) (|Seq#Index_3032| s1@@12 (|Seq#SkolemDiff_3032| s0@@12 s1@@12))))))
 :qid |stdinbpl.532:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3032| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_6657_26943) (v_1@@0 T@FrameType) (q T@Field_6657_26943) (w@@0 T@FrameType) (r T@Field_6657_26943) (u T@FrameType) ) (!  (=> (and (InsidePredicate_9969_9969 p@@1 v_1@@0 q w@@0) (InsidePredicate_9969_9969 q w@@0 r u)) (InsidePredicate_9969_9969 p@@1 v_1@@0 r u))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9969_9969 p@@1 v_1@@0 q w@@0) (InsidePredicate_9969_9969 q w@@0 r u))
)))
(assert (forall ((s@@31 T@Seq_16045) ) (!  (=> (= (|Seq#Length_6661| s@@31) 0) (= s@@31 |Seq#Empty_6661|))
 :qid |stdinbpl.235:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_6661| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3032) ) (!  (=> (= (|Seq#Length_3032| s@@32) 0) (= s@@32 |Seq#Empty_3032|))
 :qid |stdinbpl.235:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3032| s@@32))
)))
(assert (forall ((s@@33 T@Seq_3032) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_3032| s@@33 n@@25) |Seq#Empty_3032|))
 :qid |stdinbpl.411:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3032| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_16045) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_6661| s@@34 n@@26) |Seq#Empty_6661|))
 :qid |stdinbpl.411:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_6661| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun index () Int)
(declare-fun S () T@Seq_16045)
(declare-fun QPMask@6 () T@PolymorphicMapType_9930)
(declare-fun PostHeap@0 () T@PolymorphicMapType_9909)
(declare-fun x@@5 () Int)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) Int)
(declare-fun j_12 () Int)
(declare-fun index@4 () Int)
(declare-fun Heap@1 () T@PolymorphicMapType_9909)
(declare-fun Mask@1 () T@PolymorphicMapType_9930)
(declare-fun neverTriggered3 (Int) Bool)
(declare-fun qpRange3 (T@Ref) Bool)
(declare-fun invRecv3 (T@Ref) Int)
(declare-fun QPMask@5 () T@PolymorphicMapType_9930)
(declare-fun Heap@0 () T@PolymorphicMapType_9909)
(declare-fun Mask@0 () T@PolymorphicMapType_9930)
(declare-fun index@3 () Int)
(declare-fun ExhaleHeap@1 () T@PolymorphicMapType_9909)
(declare-fun QPMask@4 () T@PolymorphicMapType_9930)
(declare-fun index@2 () Int)
(declare-fun f1_1@0 () Int)
(declare-fun k () Int)
(declare-fun index@1 () Int)
(declare-fun f2_1@0 () Int)
(declare-fun arg_S_1@0 () T@Seq_16045)
(declare-fun neverTriggered6 (Int) Bool)
(declare-fun QPMask@2 () T@PolymorphicMapType_9930)
(declare-fun qpRange6 (T@Ref) Bool)
(declare-fun invRecv6 (T@Ref) Int)
(declare-fun QPMask@3 () T@PolymorphicMapType_9930)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_9909)
(declare-fun qpRange7 (T@Ref) Bool)
(declare-fun invRecv7 (T@Ref) Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_9930)
(declare-fun index@0 () Int)
(declare-fun Heap@@17 () T@PolymorphicMapType_9909)
(declare-fun i_7_1 () Int)
(declare-fun j_8_2 () Int)
(declare-fun arg_S@0 () T@Seq_16045)
(declare-fun neverTriggered4 (Int) Bool)
(declare-fun qpRange4 (T@Ref) Bool)
(declare-fun invRecv4 (T@Ref) Int)
(declare-fun QPMask@1 () T@PolymorphicMapType_9930)
(declare-fun qpRange5 (T@Ref) Bool)
(declare-fun invRecv5 (T@Ref) Int)
(declare-fun i_4_1 () Int)
(declare-fun j_5 () Int)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) Int)
(declare-fun i_3 () Int)
(declare-fun i_18 () Int)
(declare-fun j_14 () Int)
(set-info :boogie-vc-id find_var)
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
 (=> (= (ControlFlow 0 0) 72) (let ((anon15_correct true))
(let ((anon47_Else_correct  (=> (and (not (and (<= 0 index) (< index (|Seq#Length_6661| S)))) (= (ControlFlow 0 64) 59)) anon15_correct)))
(let ((anon47_Then_correct  (=> (and (<= 0 index) (< index (|Seq#Length_6661| S))) (and (=> (= (ControlFlow 0 60) (- 0 63)) (>= index 0)) (=> (>= index 0) (and (=> (= (ControlFlow 0 60) (- 0 62)) (< index (|Seq#Length_6661| S))) (=> (< index (|Seq#Length_6661| S)) (and (=> (= (ControlFlow 0 60) (- 0 61)) (HasDirectPerm_6657_3154 QPMask@6 (|Seq#Index_6661| S index) f_7)) (=> (HasDirectPerm_6657_3154 QPMask@6 (|Seq#Index_6661| S index) f_7) (=> (and (= (select (|PolymorphicMapType_9909_6657_3154#PolymorphicMapType_9909| PostHeap@0) (|Seq#Index_6661| S index) f_7) x@@5) (= (ControlFlow 0 60) 59)) anon15_correct))))))))))
(let ((anon45_Else_correct  (and (=> (= (ControlFlow 0 65) (- 0 66)) (forall ((j_3 Int) (j_3_1 Int) ) (!  (=> (and (and (and (and (not (= j_3 j_3_1)) (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| S)) j_3)) (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| S)) j_3_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_6661| S j_3) (|Seq#Index_6661| S j_3_1))))
 :qid |stdinbpl.708:15|
 :skolemid |65|
))) (=> (forall ((j_3@@0 Int) (j_3_1@@0 Int) ) (!  (=> (and (and (and (and (not (= j_3@@0 j_3_1@@0)) (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| S)) j_3@@0)) (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| S)) j_3_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_6661| S j_3@@0) (|Seq#Index_6661| S j_3_1@@0))))
 :qid |stdinbpl.708:15|
 :skolemid |65|
)) (=> (and (and (forall ((j_3@@1 Int) ) (!  (=> (and (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| S)) j_3@@1) (< NoPerm FullPerm)) (and (qpRange2 (|Seq#Index_6661| S j_3@@1)) (= (invRecv2 (|Seq#Index_6661| S j_3@@1)) j_3@@1)))
 :qid |stdinbpl.714:22|
 :skolemid |66|
 :pattern ( (|Seq#Index_6661| S j_3@@1))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| 0 (|Seq#Length_6661| S)) j_3@@1))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| S)) j_3@@1))
 :pattern ( (|Seq#Index_6661| S j_3@@1))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| S)) (invRecv2 o_9)) (< NoPerm FullPerm)) (qpRange2 o_9)) (= (|Seq#Index_6661| S (invRecv2 o_9)) o_9))
 :qid |stdinbpl.718:22|
 :skolemid |67|
 :pattern ( (invRecv2 o_9))
))) (and (forall ((j_3@@2 Int) ) (!  (=> (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| S)) j_3@@2) (not (= (|Seq#Index_6661| S j_3@@2) null)))
 :qid |stdinbpl.724:22|
 :skolemid |68|
 :pattern ( (|Seq#Index_6661| S j_3@@2))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| 0 (|Seq#Length_6661| S)) j_3@@2))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| S)) j_3@@2))
 :pattern ( (|Seq#Index_6661| S j_3@@2))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| S)) (invRecv2 o_9@@0)) (< NoPerm FullPerm)) (qpRange2 o_9@@0)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_6661| S (invRecv2 o_9@@0)) o_9@@0)) (= (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| QPMask@6) o_9@@0 f_7) (+ (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| ZeroMask) o_9@@0 f_7) FullPerm)))) (=> (not (and (and (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| S)) (invRecv2 o_9@@0)) (< NoPerm FullPerm)) (qpRange2 o_9@@0))) (= (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| QPMask@6) o_9@@0 f_7) (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| ZeroMask) o_9@@0 f_7))))
 :qid |stdinbpl.730:22|
 :skolemid |69|
 :pattern ( (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| QPMask@6) o_9@@0 f_7))
)))) (=> (and (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_9969_53) ) (!  (=> true (= (select (|PolymorphicMapType_9930_6657_53#PolymorphicMapType_9930| ZeroMask) o_9@@1 f_5) (select (|PolymorphicMapType_9930_6657_53#PolymorphicMapType_9930| QPMask@6) o_9@@1 f_5)))
 :qid |stdinbpl.734:29|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_9930_6657_53#PolymorphicMapType_9930| ZeroMask) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_9930_6657_53#PolymorphicMapType_9930| QPMask@6) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_9982_9983) ) (!  (=> true (= (select (|PolymorphicMapType_9930_6657_9983#PolymorphicMapType_9930| ZeroMask) o_9@@2 f_5@@0) (select (|PolymorphicMapType_9930_6657_9983#PolymorphicMapType_9930| QPMask@6) o_9@@2 f_5@@0)))
 :qid |stdinbpl.734:29|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_9930_6657_9983#PolymorphicMapType_9930| ZeroMask) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_9930_6657_9983#PolymorphicMapType_9930| QPMask@6) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_16000_3154) ) (!  (=> (not (= f_5@@1 f_7)) (= (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| ZeroMask) o_9@@3 f_5@@1) (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| QPMask@6) o_9@@3 f_5@@1)))
 :qid |stdinbpl.734:29|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| ZeroMask) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| QPMask@6) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_6657_26943) ) (!  (=> true (= (select (|PolymorphicMapType_9930_6657_26943#PolymorphicMapType_9930| ZeroMask) o_9@@4 f_5@@2) (select (|PolymorphicMapType_9930_6657_26943#PolymorphicMapType_9930| QPMask@6) o_9@@4 f_5@@2)))
 :qid |stdinbpl.734:29|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_9930_6657_26943#PolymorphicMapType_9930| ZeroMask) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_9930_6657_26943#PolymorphicMapType_9930| QPMask@6) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_6657_27076) ) (!  (=> true (= (select (|PolymorphicMapType_9930_6657_31198#PolymorphicMapType_9930| ZeroMask) o_9@@5 f_5@@3) (select (|PolymorphicMapType_9930_6657_31198#PolymorphicMapType_9930| QPMask@6) o_9@@5 f_5@@3)))
 :qid |stdinbpl.734:29|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_9930_6657_31198#PolymorphicMapType_9930| ZeroMask) o_9@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_9930_6657_31198#PolymorphicMapType_9930| QPMask@6) o_9@@5 f_5@@3))
))) (state PostHeap@0 QPMask@6)) (and (and (state PostHeap@0 QPMask@6) (<= 0 index)) (and (<= index (|Seq#Length_6661| S)) (state PostHeap@0 QPMask@6)))) (and (=> (= (ControlFlow 0 65) 60) anon47_Then_correct) (=> (= (ControlFlow 0 65) 64) anon47_Else_correct))))))))
(let ((anon12_correct true))
(let ((anon46_Else_correct  (=> (and (not (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| S)) j_12)) (= (ControlFlow 0 58) 54)) anon12_correct)))
(let ((anon46_Then_correct  (=> (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| S)) j_12) (and (=> (= (ControlFlow 0 55) (- 0 57)) (>= j_12 0)) (=> (>= j_12 0) (and (=> (= (ControlFlow 0 55) (- 0 56)) (< j_12 (|Seq#Length_6661| S))) (=> (< j_12 (|Seq#Length_6661| S)) (=> (= (ControlFlow 0 55) 54) anon12_correct))))))))
(let ((anon44_Then_correct  (=> (state PostHeap@0 ZeroMask) (and (and (=> (= (ControlFlow 0 67) 65) anon45_Else_correct) (=> (= (ControlFlow 0 67) 55) anon46_Then_correct)) (=> (= (ControlFlow 0 67) 58) anon46_Else_correct)))))
(let ((anon39_correct true))
(let ((anon57_Else_correct  (=> (and (not (and (<= 0 index@4) (< index@4 (|Seq#Length_6661| S)))) (= (ControlFlow 0 24) 21)) anon39_correct)))
(let ((anon57_Then_correct  (=> (and (<= 0 index@4) (< index@4 (|Seq#Length_6661| S))) (and (=> (= (ControlFlow 0 22) (- 0 23)) (= (select (|PolymorphicMapType_9909_6657_3154#PolymorphicMapType_9909| Heap@1) (|Seq#Index_6661| S index@4) f_7) x@@5)) (=> (= (select (|PolymorphicMapType_9909_6657_3154#PolymorphicMapType_9909| Heap@1) (|Seq#Index_6661| S index@4) f_7) x@@5) (=> (= (ControlFlow 0 22) 21) anon39_correct))))))
(let ((anon37_correct  (=> (state Heap@1 Mask@1) (and (=> (= (ControlFlow 0 25) (- 0 29)) (forall ((j_4_1 Int) (j_4_2 Int) ) (!  (=> (and (and (and (and (not (= j_4_1 j_4_2)) (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| S)) j_4_1)) (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| S)) j_4_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_6661| S j_4_1) (|Seq#Index_6661| S j_4_2))))
 :qid |stdinbpl.1038:17|
 :skolemid |97|
 :pattern ( (neverTriggered3 j_4_1) (neverTriggered3 j_4_2))
))) (=> (forall ((j_4_1@@0 Int) (j_4_2@@0 Int) ) (!  (=> (and (and (and (and (not (= j_4_1@@0 j_4_2@@0)) (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| S)) j_4_1@@0)) (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| S)) j_4_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_6661| S j_4_1@@0) (|Seq#Index_6661| S j_4_2@@0))))
 :qid |stdinbpl.1038:17|
 :skolemid |97|
 :pattern ( (neverTriggered3 j_4_1@@0) (neverTriggered3 j_4_2@@0))
)) (and (=> (= (ControlFlow 0 25) (- 0 28)) (forall ((j_4_1@@1 Int) ) (!  (=> (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| S)) j_4_1@@1) (>= (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| Mask@1) (|Seq#Index_6661| S j_4_1@@1) f_7) FullPerm))
 :qid |stdinbpl.1045:17|
 :skolemid |98|
 :pattern ( (|Seq#Index_6661| S j_4_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| 0 (|Seq#Length_6661| S)) j_4_1@@1))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| S)) j_4_1@@1))
 :pattern ( (|Seq#Index_6661| S j_4_1@@1))
))) (=> (forall ((j_4_1@@2 Int) ) (!  (=> (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| S)) j_4_1@@2) (>= (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| Mask@1) (|Seq#Index_6661| S j_4_1@@2) f_7) FullPerm))
 :qid |stdinbpl.1045:17|
 :skolemid |98|
 :pattern ( (|Seq#Index_6661| S j_4_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| 0 (|Seq#Length_6661| S)) j_4_1@@2))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| S)) j_4_1@@2))
 :pattern ( (|Seq#Index_6661| S j_4_1@@2))
)) (=> (forall ((j_4_1@@3 Int) ) (!  (=> (and (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| S)) j_4_1@@3) (< NoPerm FullPerm)) (and (qpRange3 (|Seq#Index_6661| S j_4_1@@3)) (= (invRecv3 (|Seq#Index_6661| S j_4_1@@3)) j_4_1@@3)))
 :qid |stdinbpl.1051:22|
 :skolemid |99|
 :pattern ( (|Seq#Index_6661| S j_4_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| 0 (|Seq#Length_6661| S)) j_4_1@@3))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| S)) j_4_1@@3))
 :pattern ( (|Seq#Index_6661| S j_4_1@@3))
)) (=> (and (forall ((o_9@@6 T@Ref) ) (!  (=> (and (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| S)) (invRecv3 o_9@@6)) (and (< NoPerm FullPerm) (qpRange3 o_9@@6))) (= (|Seq#Index_6661| S (invRecv3 o_9@@6)) o_9@@6))
 :qid |stdinbpl.1055:22|
 :skolemid |100|
 :pattern ( (invRecv3 o_9@@6))
)) (forall ((o_9@@7 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| S)) (invRecv3 o_9@@7)) (and (< NoPerm FullPerm) (qpRange3 o_9@@7))) (and (= (|Seq#Index_6661| S (invRecv3 o_9@@7)) o_9@@7) (= (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| QPMask@5) o_9@@7 f_7) (- (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| Mask@1) o_9@@7 f_7) FullPerm)))) (=> (not (and (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| S)) (invRecv3 o_9@@7)) (and (< NoPerm FullPerm) (qpRange3 o_9@@7)))) (= (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| QPMask@5) o_9@@7 f_7) (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| Mask@1) o_9@@7 f_7))))
 :qid |stdinbpl.1061:22|
 :skolemid |101|
 :pattern ( (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| QPMask@5) o_9@@7 f_7))
))) (=> (and (and (and (and (forall ((o_9@@8 T@Ref) (f_5@@4 T@Field_9969_53) ) (!  (=> true (= (select (|PolymorphicMapType_9930_6657_53#PolymorphicMapType_9930| Mask@1) o_9@@8 f_5@@4) (select (|PolymorphicMapType_9930_6657_53#PolymorphicMapType_9930| QPMask@5) o_9@@8 f_5@@4)))
 :qid |stdinbpl.1067:29|
 :skolemid |102|
 :pattern ( (select (|PolymorphicMapType_9930_6657_53#PolymorphicMapType_9930| QPMask@5) o_9@@8 f_5@@4))
)) (forall ((o_9@@9 T@Ref) (f_5@@5 T@Field_9982_9983) ) (!  (=> true (= (select (|PolymorphicMapType_9930_6657_9983#PolymorphicMapType_9930| Mask@1) o_9@@9 f_5@@5) (select (|PolymorphicMapType_9930_6657_9983#PolymorphicMapType_9930| QPMask@5) o_9@@9 f_5@@5)))
 :qid |stdinbpl.1067:29|
 :skolemid |102|
 :pattern ( (select (|PolymorphicMapType_9930_6657_9983#PolymorphicMapType_9930| QPMask@5) o_9@@9 f_5@@5))
))) (forall ((o_9@@10 T@Ref) (f_5@@6 T@Field_16000_3154) ) (!  (=> (not (= f_5@@6 f_7)) (= (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| Mask@1) o_9@@10 f_5@@6) (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| QPMask@5) o_9@@10 f_5@@6)))
 :qid |stdinbpl.1067:29|
 :skolemid |102|
 :pattern ( (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| QPMask@5) o_9@@10 f_5@@6))
))) (forall ((o_9@@11 T@Ref) (f_5@@7 T@Field_6657_26943) ) (!  (=> true (= (select (|PolymorphicMapType_9930_6657_26943#PolymorphicMapType_9930| Mask@1) o_9@@11 f_5@@7) (select (|PolymorphicMapType_9930_6657_26943#PolymorphicMapType_9930| QPMask@5) o_9@@11 f_5@@7)))
 :qid |stdinbpl.1067:29|
 :skolemid |102|
 :pattern ( (select (|PolymorphicMapType_9930_6657_26943#PolymorphicMapType_9930| QPMask@5) o_9@@11 f_5@@7))
))) (forall ((o_9@@12 T@Ref) (f_5@@8 T@Field_6657_27076) ) (!  (=> true (= (select (|PolymorphicMapType_9930_6657_31198#PolymorphicMapType_9930| Mask@1) o_9@@12 f_5@@8) (select (|PolymorphicMapType_9930_6657_31198#PolymorphicMapType_9930| QPMask@5) o_9@@12 f_5@@8)))
 :qid |stdinbpl.1067:29|
 :skolemid |102|
 :pattern ( (select (|PolymorphicMapType_9930_6657_31198#PolymorphicMapType_9930| QPMask@5) o_9@@12 f_5@@8))
))) (and (=> (= (ControlFlow 0 25) (- 0 27)) (<= 0 index@4)) (=> (<= 0 index@4) (and (=> (= (ControlFlow 0 25) (- 0 26)) (<= index@4 (|Seq#Length_6661| S))) (=> (<= index@4 (|Seq#Length_6661| S)) (and (=> (= (ControlFlow 0 25) 22) anon57_Then_correct) (=> (= (ControlFlow 0 25) 24) anon57_Else_correct))))))))))))))))
(let ((anon36_correct  (=> (state Heap@0 Mask@0) (=> (and (and (= Heap@1 Heap@0) (= Mask@1 Mask@0)) (and (= index@4 index@3) (= (ControlFlow 0 31) 25))) anon37_correct))))
(let ((anon35_correct  (=> (state ExhaleHeap@1 QPMask@4) (=> (and (and (= Heap@0 ExhaleHeap@1) (= Mask@0 QPMask@4)) (and (= index@3 index@2) (= (ControlFlow 0 35) 31))) anon36_correct))))
(let ((anon56_Else_correct  (=> (= f1_1@0 k) (=> (and (and (= index@1 (+ k f2_1@0)) (state ExhaleHeap@1 QPMask@4)) (and (= index@2 index@1) (= (ControlFlow 0 37) 35))) anon35_correct))))
(let ((anon56_Then_correct  (=> (and (and (not (= f1_1@0 k)) (state ExhaleHeap@1 QPMask@4)) (and (= index@2 f1_1@0) (= (ControlFlow 0 36) 35))) anon35_correct)))
(let ((anon32_correct  (=> (and (state ExhaleHeap@1 QPMask@4) (state ExhaleHeap@1 QPMask@4)) (and (=> (= (ControlFlow 0 38) 36) anon56_Then_correct) (=> (= (ControlFlow 0 38) 37) anon56_Else_correct)))))
(let ((anon55_Else_correct  (=> (and (not (and (<= 0 f2_1@0) (< f2_1@0 (|Seq#Length_6661| arg_S_1@0)))) (= (ControlFlow 0 40) 38)) anon32_correct)))
(let ((anon55_Then_correct  (=> (and (and (<= 0 f2_1@0) (< f2_1@0 (|Seq#Length_6661| arg_S_1@0))) (and (= (select (|PolymorphicMapType_9909_6657_3154#PolymorphicMapType_9909| ExhaleHeap@1) (|Seq#Index_6661| arg_S_1@0 f2_1@0) f_7) x@@5) (= (ControlFlow 0 39) 38))) anon32_correct)))
(let ((anon53_Else_correct  (=> (forall ((i_8_1_1 Int) (j_9_1_1 Int) ) (!  (=> (and (<= 0 i_8_1_1) (and (< i_8_1_1 j_9_1_1) (< j_9_1_1 (|Seq#Length_6661| arg_S_1@0)))) (not (= (|Seq#Index_6661| arg_S_1@0 i_8_1_1) (|Seq#Index_6661| arg_S_1@0 j_9_1_1))))
 :qid |stdinbpl.914:30|
 :skolemid |84|
 :pattern ( (|Seq#Index_6661| arg_S_1@0 i_8_1_1) (|Seq#Index_6661| arg_S_1@0 j_9_1_1))
)) (and (=> (= (ControlFlow 0 41) (- 0 44)) (forall ((i_9_1 Int) (i_9_2 Int) ) (!  (=> (and (and (and (and (not (= i_9_1 i_9_2)) (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| arg_S_1@0)) i_9_1)) (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| arg_S_1@0)) i_9_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_6661| arg_S_1@0 i_9_1) (|Seq#Index_6661| arg_S_1@0 i_9_2))))
 :qid |stdinbpl.925:27|
 :skolemid |85|
 :pattern ( (neverTriggered6 i_9_1) (neverTriggered6 i_9_2))
))) (=> (forall ((i_9_1@@0 Int) (i_9_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_9_1@@0 i_9_2@@0)) (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| arg_S_1@0)) i_9_1@@0)) (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| arg_S_1@0)) i_9_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_6661| arg_S_1@0 i_9_1@@0) (|Seq#Index_6661| arg_S_1@0 i_9_2@@0))))
 :qid |stdinbpl.925:27|
 :skolemid |85|
 :pattern ( (neverTriggered6 i_9_1@@0) (neverTriggered6 i_9_2@@0))
)) (and (=> (= (ControlFlow 0 41) (- 0 43)) (forall ((i_9_1@@1 Int) ) (!  (=> (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| arg_S_1@0)) i_9_1@@1) (>= (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| QPMask@2) (|Seq#Index_6661| arg_S_1@0 i_9_1@@1) f_7) FullPerm))
 :qid |stdinbpl.932:27|
 :skolemid |86|
 :pattern ( (|Seq#Index_6661| arg_S_1@0 i_9_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| 0 (|Seq#Length_6661| arg_S_1@0)) i_9_1@@1))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| arg_S_1@0)) i_9_1@@1))
 :pattern ( (|Seq#Index_6661| arg_S_1@0 i_9_1@@1))
))) (=> (forall ((i_9_1@@2 Int) ) (!  (=> (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| arg_S_1@0)) i_9_1@@2) (>= (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| QPMask@2) (|Seq#Index_6661| arg_S_1@0 i_9_1@@2) f_7) FullPerm))
 :qid |stdinbpl.932:27|
 :skolemid |86|
 :pattern ( (|Seq#Index_6661| arg_S_1@0 i_9_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| 0 (|Seq#Length_6661| arg_S_1@0)) i_9_1@@2))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| arg_S_1@0)) i_9_1@@2))
 :pattern ( (|Seq#Index_6661| arg_S_1@0 i_9_1@@2))
)) (=> (forall ((i_9_1@@3 Int) ) (!  (=> (and (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| arg_S_1@0)) i_9_1@@3) (< NoPerm FullPerm)) (and (qpRange6 (|Seq#Index_6661| arg_S_1@0 i_9_1@@3)) (= (invRecv6 (|Seq#Index_6661| arg_S_1@0 i_9_1@@3)) i_9_1@@3)))
 :qid |stdinbpl.938:32|
 :skolemid |87|
 :pattern ( (|Seq#Index_6661| arg_S_1@0 i_9_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| 0 (|Seq#Length_6661| arg_S_1@0)) i_9_1@@3))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| arg_S_1@0)) i_9_1@@3))
 :pattern ( (|Seq#Index_6661| arg_S_1@0 i_9_1@@3))
)) (=> (and (forall ((o_9@@13 T@Ref) ) (!  (=> (and (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| arg_S_1@0)) (invRecv6 o_9@@13)) (and (< NoPerm FullPerm) (qpRange6 o_9@@13))) (= (|Seq#Index_6661| arg_S_1@0 (invRecv6 o_9@@13)) o_9@@13))
 :qid |stdinbpl.942:32|
 :skolemid |88|
 :pattern ( (invRecv6 o_9@@13))
)) (forall ((o_9@@14 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| arg_S_1@0)) (invRecv6 o_9@@14)) (and (< NoPerm FullPerm) (qpRange6 o_9@@14))) (and (= (|Seq#Index_6661| arg_S_1@0 (invRecv6 o_9@@14)) o_9@@14) (= (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| QPMask@3) o_9@@14 f_7) (- (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| QPMask@2) o_9@@14 f_7) FullPerm)))) (=> (not (and (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| arg_S_1@0)) (invRecv6 o_9@@14)) (and (< NoPerm FullPerm) (qpRange6 o_9@@14)))) (= (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| QPMask@3) o_9@@14 f_7) (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| QPMask@2) o_9@@14 f_7))))
 :qid |stdinbpl.948:32|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| QPMask@3) o_9@@14 f_7))
))) (=> (and (and (and (and (and (forall ((o_9@@15 T@Ref) (f_5@@9 T@Field_9969_53) ) (!  (=> true (= (select (|PolymorphicMapType_9930_6657_53#PolymorphicMapType_9930| QPMask@2) o_9@@15 f_5@@9) (select (|PolymorphicMapType_9930_6657_53#PolymorphicMapType_9930| QPMask@3) o_9@@15 f_5@@9)))
 :qid |stdinbpl.954:39|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_9930_6657_53#PolymorphicMapType_9930| QPMask@3) o_9@@15 f_5@@9))
)) (forall ((o_9@@16 T@Ref) (f_5@@10 T@Field_9982_9983) ) (!  (=> true (= (select (|PolymorphicMapType_9930_6657_9983#PolymorphicMapType_9930| QPMask@2) o_9@@16 f_5@@10) (select (|PolymorphicMapType_9930_6657_9983#PolymorphicMapType_9930| QPMask@3) o_9@@16 f_5@@10)))
 :qid |stdinbpl.954:39|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_9930_6657_9983#PolymorphicMapType_9930| QPMask@3) o_9@@16 f_5@@10))
))) (forall ((o_9@@17 T@Ref) (f_5@@11 T@Field_16000_3154) ) (!  (=> (not (= f_5@@11 f_7)) (= (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| QPMask@2) o_9@@17 f_5@@11) (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| QPMask@3) o_9@@17 f_5@@11)))
 :qid |stdinbpl.954:39|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| QPMask@3) o_9@@17 f_5@@11))
))) (forall ((o_9@@18 T@Ref) (f_5@@12 T@Field_6657_26943) ) (!  (=> true (= (select (|PolymorphicMapType_9930_6657_26943#PolymorphicMapType_9930| QPMask@2) o_9@@18 f_5@@12) (select (|PolymorphicMapType_9930_6657_26943#PolymorphicMapType_9930| QPMask@3) o_9@@18 f_5@@12)))
 :qid |stdinbpl.954:39|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_9930_6657_26943#PolymorphicMapType_9930| QPMask@3) o_9@@18 f_5@@12))
))) (forall ((o_9@@19 T@Ref) (f_5@@13 T@Field_6657_27076) ) (!  (=> true (= (select (|PolymorphicMapType_9930_6657_31198#PolymorphicMapType_9930| QPMask@2) o_9@@19 f_5@@13) (select (|PolymorphicMapType_9930_6657_31198#PolymorphicMapType_9930| QPMask@3) o_9@@19 f_5@@13)))
 :qid |stdinbpl.954:39|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_9930_6657_31198#PolymorphicMapType_9930| QPMask@3) o_9@@19 f_5@@13))
))) (IdenticalOnKnownLocations ExhaleHeap@0 ExhaleHeap@1 QPMask@3)) (and (=> (= (ControlFlow 0 41) (- 0 42)) (forall ((j_10_2 Int) (j_10_3 Int) ) (!  (=> (and (and (and (and (not (= j_10_2 j_10_3)) (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| arg_S_1@0)) j_10_2)) (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| arg_S_1@0)) j_10_3)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_6661| arg_S_1@0 j_10_2) (|Seq#Index_6661| arg_S_1@0 j_10_3))))
 :qid |stdinbpl.970:25|
 :skolemid |91|
))) (=> (forall ((j_10_2@@0 Int) (j_10_3@@0 Int) ) (!  (=> (and (and (and (and (not (= j_10_2@@0 j_10_3@@0)) (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| arg_S_1@0)) j_10_2@@0)) (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| arg_S_1@0)) j_10_3@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_6661| arg_S_1@0 j_10_2@@0) (|Seq#Index_6661| arg_S_1@0 j_10_3@@0))))
 :qid |stdinbpl.970:25|
 :skolemid |91|
)) (=> (and (and (forall ((j_10_2@@1 Int) ) (!  (=> (and (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| arg_S_1@0)) j_10_2@@1) (< NoPerm FullPerm)) (and (qpRange7 (|Seq#Index_6661| arg_S_1@0 j_10_2@@1)) (= (invRecv7 (|Seq#Index_6661| arg_S_1@0 j_10_2@@1)) j_10_2@@1)))
 :qid |stdinbpl.976:32|
 :skolemid |92|
 :pattern ( (|Seq#Index_6661| arg_S_1@0 j_10_2@@1))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| 0 (|Seq#Length_6661| arg_S_1@0)) j_10_2@@1))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| arg_S_1@0)) j_10_2@@1))
 :pattern ( (|Seq#Index_6661| arg_S_1@0 j_10_2@@1))
)) (forall ((o_9@@20 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| arg_S_1@0)) (invRecv7 o_9@@20)) (< NoPerm FullPerm)) (qpRange7 o_9@@20)) (= (|Seq#Index_6661| arg_S_1@0 (invRecv7 o_9@@20)) o_9@@20))
 :qid |stdinbpl.980:32|
 :skolemid |93|
 :pattern ( (invRecv7 o_9@@20))
))) (and (forall ((j_10_2@@2 Int) ) (!  (=> (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| arg_S_1@0)) j_10_2@@2) (not (= (|Seq#Index_6661| arg_S_1@0 j_10_2@@2) null)))
 :qid |stdinbpl.986:32|
 :skolemid |94|
 :pattern ( (|Seq#Index_6661| arg_S_1@0 j_10_2@@2))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| 0 (|Seq#Length_6661| arg_S_1@0)) j_10_2@@2))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| arg_S_1@0)) j_10_2@@2))
 :pattern ( (|Seq#Index_6661| arg_S_1@0 j_10_2@@2))
)) (forall ((o_9@@21 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| arg_S_1@0)) (invRecv7 o_9@@21)) (< NoPerm FullPerm)) (qpRange7 o_9@@21)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_6661| arg_S_1@0 (invRecv7 o_9@@21)) o_9@@21)) (= (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| QPMask@4) o_9@@21 f_7) (+ (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| QPMask@3) o_9@@21 f_7) FullPerm)))) (=> (not (and (and (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| arg_S_1@0)) (invRecv7 o_9@@21)) (< NoPerm FullPerm)) (qpRange7 o_9@@21))) (= (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| QPMask@4) o_9@@21 f_7) (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| QPMask@3) o_9@@21 f_7))))
 :qid |stdinbpl.992:32|
 :skolemid |95|
 :pattern ( (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| QPMask@4) o_9@@21 f_7))
)))) (=> (and (and (and (and (and (and (forall ((o_9@@22 T@Ref) (f_5@@14 T@Field_9969_53) ) (!  (=> true (= (select (|PolymorphicMapType_9930_6657_53#PolymorphicMapType_9930| QPMask@3) o_9@@22 f_5@@14) (select (|PolymorphicMapType_9930_6657_53#PolymorphicMapType_9930| QPMask@4) o_9@@22 f_5@@14)))
 :qid |stdinbpl.996:39|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_9930_6657_53#PolymorphicMapType_9930| QPMask@3) o_9@@22 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_9930_6657_53#PolymorphicMapType_9930| QPMask@4) o_9@@22 f_5@@14))
)) (forall ((o_9@@23 T@Ref) (f_5@@15 T@Field_9982_9983) ) (!  (=> true (= (select (|PolymorphicMapType_9930_6657_9983#PolymorphicMapType_9930| QPMask@3) o_9@@23 f_5@@15) (select (|PolymorphicMapType_9930_6657_9983#PolymorphicMapType_9930| QPMask@4) o_9@@23 f_5@@15)))
 :qid |stdinbpl.996:39|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_9930_6657_9983#PolymorphicMapType_9930| QPMask@3) o_9@@23 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_9930_6657_9983#PolymorphicMapType_9930| QPMask@4) o_9@@23 f_5@@15))
))) (forall ((o_9@@24 T@Ref) (f_5@@16 T@Field_16000_3154) ) (!  (=> (not (= f_5@@16 f_7)) (= (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| QPMask@3) o_9@@24 f_5@@16) (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| QPMask@4) o_9@@24 f_5@@16)))
 :qid |stdinbpl.996:39|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| QPMask@3) o_9@@24 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| QPMask@4) o_9@@24 f_5@@16))
))) (forall ((o_9@@25 T@Ref) (f_5@@17 T@Field_6657_26943) ) (!  (=> true (= (select (|PolymorphicMapType_9930_6657_26943#PolymorphicMapType_9930| QPMask@3) o_9@@25 f_5@@17) (select (|PolymorphicMapType_9930_6657_26943#PolymorphicMapType_9930| QPMask@4) o_9@@25 f_5@@17)))
 :qid |stdinbpl.996:39|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_9930_6657_26943#PolymorphicMapType_9930| QPMask@3) o_9@@25 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_9930_6657_26943#PolymorphicMapType_9930| QPMask@4) o_9@@25 f_5@@17))
))) (forall ((o_9@@26 T@Ref) (f_5@@18 T@Field_6657_27076) ) (!  (=> true (= (select (|PolymorphicMapType_9930_6657_31198#PolymorphicMapType_9930| QPMask@3) o_9@@26 f_5@@18) (select (|PolymorphicMapType_9930_6657_31198#PolymorphicMapType_9930| QPMask@4) o_9@@26 f_5@@18)))
 :qid |stdinbpl.996:39|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_9930_6657_31198#PolymorphicMapType_9930| QPMask@3) o_9@@26 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_9930_6657_31198#PolymorphicMapType_9930| QPMask@4) o_9@@26 f_5@@18))
))) (state ExhaleHeap@1 QPMask@4)) (and (<= 0 f2_1@0) (<= f2_1@0 (|Seq#Length_6661| arg_S_1@0)))) (and (=> (= (ControlFlow 0 41) 39) anon55_Then_correct) (=> (= (ControlFlow 0 41) 40) anon55_Else_correct))))))))))))))))
(let ((anon49_Then_correct  (=> (= (|Seq#Length_6661| S) 1) (and (=> (= (ControlFlow 0 32) (- 0 34)) (< 0 (|Seq#Length_6661| S))) (=> (< 0 (|Seq#Length_6661| S)) (and (=> (= (ControlFlow 0 32) (- 0 33)) (HasDirectPerm_6657_3154 QPMask@0 (|Seq#Index_6661| S 0) f_7)) (=> (HasDirectPerm_6657_3154 QPMask@0 (|Seq#Index_6661| S 0) f_7) (=> (and (= index@0 (ite (= x@@5 (select (|PolymorphicMapType_9909_6657_3154#PolymorphicMapType_9909| Heap@@17) (|Seq#Index_6661| S 0) f_7)) 0 1)) (state Heap@@17 QPMask@0)) (=> (and (and (= Heap@0 Heap@@17) (= Mask@0 QPMask@0)) (and (= index@3 index@0) (= (ControlFlow 0 32) 31))) anon36_correct)))))))))
(let ((anon48_Then_correct  (=> (and (= (|Seq#Length_6661| S) 0) (state Heap@@17 QPMask@0)) (=> (and (and (= Heap@1 Heap@@17) (= Mask@1 QPMask@0)) (and (= index@4 0) (= (ControlFlow 0 30) 25))) anon37_correct))))
(let ((anon29_correct true))
(let ((anon54_Else_correct  (=> (and (not (and (<= 0 i_7_1) (and (< i_7_1 j_8_2) (< j_8_2 (|Seq#Length_6661| arg_S_1@0))))) (= (ControlFlow 0 20) 17)) anon29_correct)))
(let ((anon54_Then_correct  (=> (and (<= 0 i_7_1) (and (< i_7_1 j_8_2) (< j_8_2 (|Seq#Length_6661| arg_S_1@0)))) (and (=> (= (ControlFlow 0 18) (- 0 19)) (not (= (|Seq#Index_6661| arg_S_1@0 i_7_1) (|Seq#Index_6661| arg_S_1@0 j_8_2)))) (=> (not (= (|Seq#Index_6661| arg_S_1@0 i_7_1) (|Seq#Index_6661| arg_S_1@0 j_8_2))) (=> (= (ControlFlow 0 18) 17) anon29_correct))))))
(let ((anon26_correct  (=> (state ExhaleHeap@0 QPMask@2) (=> (and (state ExhaleHeap@0 QPMask@2) (= arg_S_1@0 (|Seq#Drop_6661| S k))) (and (and (=> (= (ControlFlow 0 45) 41) anon53_Else_correct) (=> (= (ControlFlow 0 45) 18) anon54_Then_correct)) (=> (= (ControlFlow 0 45) 20) anon54_Else_correct))))))
(let ((anon52_Else_correct  (=> (and (not (and (<= 0 f1_1@0) (< f1_1@0 (|Seq#Length_6661| arg_S@0)))) (= (ControlFlow 0 47) 45)) anon26_correct)))
(let ((anon52_Then_correct  (=> (and (and (<= 0 f1_1@0) (< f1_1@0 (|Seq#Length_6661| arg_S@0))) (and (= (select (|PolymorphicMapType_9909_6657_3154#PolymorphicMapType_9909| ExhaleHeap@0) (|Seq#Index_6661| arg_S@0 f1_1@0) f_7) x@@5) (= (ControlFlow 0 46) 45))) anon26_correct)))
(let ((anon50_Else_correct  (=> (forall ((i_5_1_1 Int) (j_6_1 Int) ) (!  (=> (and (<= 0 i_5_1_1) (and (< i_5_1_1 j_6_1) (< j_6_1 (|Seq#Length_6661| arg_S@0)))) (not (= (|Seq#Index_6661| arg_S@0 i_5_1_1) (|Seq#Index_6661| arg_S@0 j_6_1))))
 :qid |stdinbpl.803:30|
 :skolemid |71|
 :pattern ( (|Seq#Index_6661| arg_S@0 i_5_1_1) (|Seq#Index_6661| arg_S@0 j_6_1))
)) (and (=> (= (ControlFlow 0 48) (- 0 51)) (forall ((i_6_2 Int) (i_6_3 Int) ) (!  (=> (and (and (and (and (not (= i_6_2 i_6_3)) (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| arg_S@0)) i_6_2)) (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| arg_S@0)) i_6_3)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_6661| arg_S@0 i_6_2) (|Seq#Index_6661| arg_S@0 i_6_3))))
 :qid |stdinbpl.814:27|
 :skolemid |72|
 :pattern ( (neverTriggered4 i_6_2) (neverTriggered4 i_6_3))
))) (=> (forall ((i_6_2@@0 Int) (i_6_3@@0 Int) ) (!  (=> (and (and (and (and (not (= i_6_2@@0 i_6_3@@0)) (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| arg_S@0)) i_6_2@@0)) (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| arg_S@0)) i_6_3@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_6661| arg_S@0 i_6_2@@0) (|Seq#Index_6661| arg_S@0 i_6_3@@0))))
 :qid |stdinbpl.814:27|
 :skolemid |72|
 :pattern ( (neverTriggered4 i_6_2@@0) (neverTriggered4 i_6_3@@0))
)) (and (=> (= (ControlFlow 0 48) (- 0 50)) (forall ((i_6_2@@1 Int) ) (!  (=> (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| arg_S@0)) i_6_2@@1) (>= (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| QPMask@0) (|Seq#Index_6661| arg_S@0 i_6_2@@1) f_7) FullPerm))
 :qid |stdinbpl.821:27|
 :skolemid |73|
 :pattern ( (|Seq#Index_6661| arg_S@0 i_6_2@@1))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| 0 (|Seq#Length_6661| arg_S@0)) i_6_2@@1))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| arg_S@0)) i_6_2@@1))
 :pattern ( (|Seq#Index_6661| arg_S@0 i_6_2@@1))
))) (=> (forall ((i_6_2@@2 Int) ) (!  (=> (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| arg_S@0)) i_6_2@@2) (>= (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| QPMask@0) (|Seq#Index_6661| arg_S@0 i_6_2@@2) f_7) FullPerm))
 :qid |stdinbpl.821:27|
 :skolemid |73|
 :pattern ( (|Seq#Index_6661| arg_S@0 i_6_2@@2))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| 0 (|Seq#Length_6661| arg_S@0)) i_6_2@@2))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| arg_S@0)) i_6_2@@2))
 :pattern ( (|Seq#Index_6661| arg_S@0 i_6_2@@2))
)) (=> (forall ((i_6_2@@3 Int) ) (!  (=> (and (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| arg_S@0)) i_6_2@@3) (< NoPerm FullPerm)) (and (qpRange4 (|Seq#Index_6661| arg_S@0 i_6_2@@3)) (= (invRecv4 (|Seq#Index_6661| arg_S@0 i_6_2@@3)) i_6_2@@3)))
 :qid |stdinbpl.827:32|
 :skolemid |74|
 :pattern ( (|Seq#Index_6661| arg_S@0 i_6_2@@3))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| 0 (|Seq#Length_6661| arg_S@0)) i_6_2@@3))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| arg_S@0)) i_6_2@@3))
 :pattern ( (|Seq#Index_6661| arg_S@0 i_6_2@@3))
)) (=> (and (forall ((o_9@@27 T@Ref) ) (!  (=> (and (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| arg_S@0)) (invRecv4 o_9@@27)) (and (< NoPerm FullPerm) (qpRange4 o_9@@27))) (= (|Seq#Index_6661| arg_S@0 (invRecv4 o_9@@27)) o_9@@27))
 :qid |stdinbpl.831:32|
 :skolemid |75|
 :pattern ( (invRecv4 o_9@@27))
)) (forall ((o_9@@28 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| arg_S@0)) (invRecv4 o_9@@28)) (and (< NoPerm FullPerm) (qpRange4 o_9@@28))) (and (= (|Seq#Index_6661| arg_S@0 (invRecv4 o_9@@28)) o_9@@28) (= (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| QPMask@1) o_9@@28 f_7) (- (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| QPMask@0) o_9@@28 f_7) FullPerm)))) (=> (not (and (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| arg_S@0)) (invRecv4 o_9@@28)) (and (< NoPerm FullPerm) (qpRange4 o_9@@28)))) (= (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| QPMask@1) o_9@@28 f_7) (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| QPMask@0) o_9@@28 f_7))))
 :qid |stdinbpl.837:32|
 :skolemid |76|
 :pattern ( (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| QPMask@1) o_9@@28 f_7))
))) (=> (and (and (and (and (and (forall ((o_9@@29 T@Ref) (f_5@@19 T@Field_9969_53) ) (!  (=> true (= (select (|PolymorphicMapType_9930_6657_53#PolymorphicMapType_9930| QPMask@0) o_9@@29 f_5@@19) (select (|PolymorphicMapType_9930_6657_53#PolymorphicMapType_9930| QPMask@1) o_9@@29 f_5@@19)))
 :qid |stdinbpl.843:39|
 :skolemid |77|
 :pattern ( (select (|PolymorphicMapType_9930_6657_53#PolymorphicMapType_9930| QPMask@1) o_9@@29 f_5@@19))
)) (forall ((o_9@@30 T@Ref) (f_5@@20 T@Field_9982_9983) ) (!  (=> true (= (select (|PolymorphicMapType_9930_6657_9983#PolymorphicMapType_9930| QPMask@0) o_9@@30 f_5@@20) (select (|PolymorphicMapType_9930_6657_9983#PolymorphicMapType_9930| QPMask@1) o_9@@30 f_5@@20)))
 :qid |stdinbpl.843:39|
 :skolemid |77|
 :pattern ( (select (|PolymorphicMapType_9930_6657_9983#PolymorphicMapType_9930| QPMask@1) o_9@@30 f_5@@20))
))) (forall ((o_9@@31 T@Ref) (f_5@@21 T@Field_16000_3154) ) (!  (=> (not (= f_5@@21 f_7)) (= (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| QPMask@0) o_9@@31 f_5@@21) (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| QPMask@1) o_9@@31 f_5@@21)))
 :qid |stdinbpl.843:39|
 :skolemid |77|
 :pattern ( (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| QPMask@1) o_9@@31 f_5@@21))
))) (forall ((o_9@@32 T@Ref) (f_5@@22 T@Field_6657_26943) ) (!  (=> true (= (select (|PolymorphicMapType_9930_6657_26943#PolymorphicMapType_9930| QPMask@0) o_9@@32 f_5@@22) (select (|PolymorphicMapType_9930_6657_26943#PolymorphicMapType_9930| QPMask@1) o_9@@32 f_5@@22)))
 :qid |stdinbpl.843:39|
 :skolemid |77|
 :pattern ( (select (|PolymorphicMapType_9930_6657_26943#PolymorphicMapType_9930| QPMask@1) o_9@@32 f_5@@22))
))) (forall ((o_9@@33 T@Ref) (f_5@@23 T@Field_6657_27076) ) (!  (=> true (= (select (|PolymorphicMapType_9930_6657_31198#PolymorphicMapType_9930| QPMask@0) o_9@@33 f_5@@23) (select (|PolymorphicMapType_9930_6657_31198#PolymorphicMapType_9930| QPMask@1) o_9@@33 f_5@@23)))
 :qid |stdinbpl.843:39|
 :skolemid |77|
 :pattern ( (select (|PolymorphicMapType_9930_6657_31198#PolymorphicMapType_9930| QPMask@1) o_9@@33 f_5@@23))
))) (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@0 QPMask@1)) (and (=> (= (ControlFlow 0 48) (- 0 49)) (forall ((j_7_1 Int) (j_7_2 Int) ) (!  (=> (and (and (and (and (not (= j_7_1 j_7_2)) (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| arg_S@0)) j_7_1)) (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| arg_S@0)) j_7_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_6661| arg_S@0 j_7_1) (|Seq#Index_6661| arg_S@0 j_7_2))))
 :qid |stdinbpl.859:25|
 :skolemid |78|
))) (=> (forall ((j_7_1@@0 Int) (j_7_2@@0 Int) ) (!  (=> (and (and (and (and (not (= j_7_1@@0 j_7_2@@0)) (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| arg_S@0)) j_7_1@@0)) (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| arg_S@0)) j_7_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_6661| arg_S@0 j_7_1@@0) (|Seq#Index_6661| arg_S@0 j_7_2@@0))))
 :qid |stdinbpl.859:25|
 :skolemid |78|
)) (=> (and (and (forall ((j_7_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| arg_S@0)) j_7_1@@1) (< NoPerm FullPerm)) (and (qpRange5 (|Seq#Index_6661| arg_S@0 j_7_1@@1)) (= (invRecv5 (|Seq#Index_6661| arg_S@0 j_7_1@@1)) j_7_1@@1)))
 :qid |stdinbpl.865:32|
 :skolemid |79|
 :pattern ( (|Seq#Index_6661| arg_S@0 j_7_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| 0 (|Seq#Length_6661| arg_S@0)) j_7_1@@1))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| arg_S@0)) j_7_1@@1))
 :pattern ( (|Seq#Index_6661| arg_S@0 j_7_1@@1))
)) (forall ((o_9@@34 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| arg_S@0)) (invRecv5 o_9@@34)) (< NoPerm FullPerm)) (qpRange5 o_9@@34)) (= (|Seq#Index_6661| arg_S@0 (invRecv5 o_9@@34)) o_9@@34))
 :qid |stdinbpl.869:32|
 :skolemid |80|
 :pattern ( (invRecv5 o_9@@34))
))) (and (forall ((j_7_1@@2 Int) ) (!  (=> (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| arg_S@0)) j_7_1@@2) (not (= (|Seq#Index_6661| arg_S@0 j_7_1@@2) null)))
 :qid |stdinbpl.875:32|
 :skolemid |81|
 :pattern ( (|Seq#Index_6661| arg_S@0 j_7_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| 0 (|Seq#Length_6661| arg_S@0)) j_7_1@@2))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| arg_S@0)) j_7_1@@2))
 :pattern ( (|Seq#Index_6661| arg_S@0 j_7_1@@2))
)) (forall ((o_9@@35 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| arg_S@0)) (invRecv5 o_9@@35)) (< NoPerm FullPerm)) (qpRange5 o_9@@35)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_6661| arg_S@0 (invRecv5 o_9@@35)) o_9@@35)) (= (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| QPMask@2) o_9@@35 f_7) (+ (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| QPMask@1) o_9@@35 f_7) FullPerm)))) (=> (not (and (and (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| arg_S@0)) (invRecv5 o_9@@35)) (< NoPerm FullPerm)) (qpRange5 o_9@@35))) (= (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| QPMask@2) o_9@@35 f_7) (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| QPMask@1) o_9@@35 f_7))))
 :qid |stdinbpl.881:32|
 :skolemid |82|
 :pattern ( (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| QPMask@2) o_9@@35 f_7))
)))) (=> (and (and (and (and (and (and (forall ((o_9@@36 T@Ref) (f_5@@24 T@Field_9969_53) ) (!  (=> true (= (select (|PolymorphicMapType_9930_6657_53#PolymorphicMapType_9930| QPMask@1) o_9@@36 f_5@@24) (select (|PolymorphicMapType_9930_6657_53#PolymorphicMapType_9930| QPMask@2) o_9@@36 f_5@@24)))
 :qid |stdinbpl.885:39|
 :skolemid |83|
 :pattern ( (select (|PolymorphicMapType_9930_6657_53#PolymorphicMapType_9930| QPMask@1) o_9@@36 f_5@@24))
 :pattern ( (select (|PolymorphicMapType_9930_6657_53#PolymorphicMapType_9930| QPMask@2) o_9@@36 f_5@@24))
)) (forall ((o_9@@37 T@Ref) (f_5@@25 T@Field_9982_9983) ) (!  (=> true (= (select (|PolymorphicMapType_9930_6657_9983#PolymorphicMapType_9930| QPMask@1) o_9@@37 f_5@@25) (select (|PolymorphicMapType_9930_6657_9983#PolymorphicMapType_9930| QPMask@2) o_9@@37 f_5@@25)))
 :qid |stdinbpl.885:39|
 :skolemid |83|
 :pattern ( (select (|PolymorphicMapType_9930_6657_9983#PolymorphicMapType_9930| QPMask@1) o_9@@37 f_5@@25))
 :pattern ( (select (|PolymorphicMapType_9930_6657_9983#PolymorphicMapType_9930| QPMask@2) o_9@@37 f_5@@25))
))) (forall ((o_9@@38 T@Ref) (f_5@@26 T@Field_16000_3154) ) (!  (=> (not (= f_5@@26 f_7)) (= (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| QPMask@1) o_9@@38 f_5@@26) (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| QPMask@2) o_9@@38 f_5@@26)))
 :qid |stdinbpl.885:39|
 :skolemid |83|
 :pattern ( (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| QPMask@1) o_9@@38 f_5@@26))
 :pattern ( (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| QPMask@2) o_9@@38 f_5@@26))
))) (forall ((o_9@@39 T@Ref) (f_5@@27 T@Field_6657_26943) ) (!  (=> true (= (select (|PolymorphicMapType_9930_6657_26943#PolymorphicMapType_9930| QPMask@1) o_9@@39 f_5@@27) (select (|PolymorphicMapType_9930_6657_26943#PolymorphicMapType_9930| QPMask@2) o_9@@39 f_5@@27)))
 :qid |stdinbpl.885:39|
 :skolemid |83|
 :pattern ( (select (|PolymorphicMapType_9930_6657_26943#PolymorphicMapType_9930| QPMask@1) o_9@@39 f_5@@27))
 :pattern ( (select (|PolymorphicMapType_9930_6657_26943#PolymorphicMapType_9930| QPMask@2) o_9@@39 f_5@@27))
))) (forall ((o_9@@40 T@Ref) (f_5@@28 T@Field_6657_27076) ) (!  (=> true (= (select (|PolymorphicMapType_9930_6657_31198#PolymorphicMapType_9930| QPMask@1) o_9@@40 f_5@@28) (select (|PolymorphicMapType_9930_6657_31198#PolymorphicMapType_9930| QPMask@2) o_9@@40 f_5@@28)))
 :qid |stdinbpl.885:39|
 :skolemid |83|
 :pattern ( (select (|PolymorphicMapType_9930_6657_31198#PolymorphicMapType_9930| QPMask@1) o_9@@40 f_5@@28))
 :pattern ( (select (|PolymorphicMapType_9930_6657_31198#PolymorphicMapType_9930| QPMask@2) o_9@@40 f_5@@28))
))) (state ExhaleHeap@0 QPMask@2)) (and (<= 0 f1_1@0) (<= f1_1@0 (|Seq#Length_6661| arg_S@0)))) (and (=> (= (ControlFlow 0 48) 46) anon52_Then_correct) (=> (= (ControlFlow 0 48) 47) anon52_Else_correct))))))))))))))))
(let ((anon23_correct true))
(let ((anon51_Else_correct  (=> (and (not (and (<= 0 i_4_1) (and (< i_4_1 j_5) (< j_5 (|Seq#Length_6661| arg_S@0))))) (= (ControlFlow 0 16) 13)) anon23_correct)))
(let ((anon51_Then_correct  (=> (and (<= 0 i_4_1) (and (< i_4_1 j_5) (< j_5 (|Seq#Length_6661| arg_S@0)))) (and (=> (= (ControlFlow 0 14) (- 0 15)) (not (= (|Seq#Index_6661| arg_S@0 i_4_1) (|Seq#Index_6661| arg_S@0 j_5)))) (=> (not (= (|Seq#Index_6661| arg_S@0 i_4_1) (|Seq#Index_6661| arg_S@0 j_5))) (=> (= (ControlFlow 0 14) 13) anon23_correct))))))
(let ((anon49_Else_correct  (=> (and (not (= (|Seq#Length_6661| S) 1)) (< 0 k)) (=> (and (and (< k (- (|Seq#Length_6661| S) 1)) (state Heap@@17 QPMask@0)) (and (state Heap@@17 QPMask@0) (= arg_S@0 (|Seq#Take_6661| S k)))) (and (and (=> (= (ControlFlow 0 52) 48) anon50_Else_correct) (=> (= (ControlFlow 0 52) 14) anon51_Then_correct)) (=> (= (ControlFlow 0 52) 16) anon51_Else_correct))))))
(let ((anon48_Else_correct  (=> (not (= (|Seq#Length_6661| S) 0)) (and (=> (= (ControlFlow 0 53) 32) anon49_Then_correct) (=> (= (ControlFlow 0 53) 52) anon49_Else_correct)))))
(let ((anon42_Else_correct  (and (=> (= (ControlFlow 0 68) (- 0 69)) (forall ((i_3_2 Int) (i_3_3 Int) ) (!  (=> (and (and (and (and (not (= i_3_2 i_3_3)) (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| S)) i_3_2)) (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| S)) i_3_3)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_6661| S i_3_2) (|Seq#Index_6661| S i_3_3))))
 :qid |stdinbpl.651:15|
 :skolemid |59|
))) (=> (forall ((i_3_2@@0 Int) (i_3_3@@0 Int) ) (!  (=> (and (and (and (and (not (= i_3_2@@0 i_3_3@@0)) (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| S)) i_3_2@@0)) (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| S)) i_3_3@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_6661| S i_3_2@@0) (|Seq#Index_6661| S i_3_3@@0))))
 :qid |stdinbpl.651:15|
 :skolemid |59|
)) (=> (and (and (forall ((i_3_2@@1 Int) ) (!  (=> (and (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| S)) i_3_2@@1) (< NoPerm FullPerm)) (and (qpRange1 (|Seq#Index_6661| S i_3_2@@1)) (= (invRecv1 (|Seq#Index_6661| S i_3_2@@1)) i_3_2@@1)))
 :qid |stdinbpl.657:22|
 :skolemid |60|
 :pattern ( (|Seq#Index_6661| S i_3_2@@1))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| 0 (|Seq#Length_6661| S)) i_3_2@@1))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| S)) i_3_2@@1))
 :pattern ( (|Seq#Index_6661| S i_3_2@@1))
)) (forall ((o_9@@41 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| S)) (invRecv1 o_9@@41)) (< NoPerm FullPerm)) (qpRange1 o_9@@41)) (= (|Seq#Index_6661| S (invRecv1 o_9@@41)) o_9@@41))
 :qid |stdinbpl.661:22|
 :skolemid |61|
 :pattern ( (invRecv1 o_9@@41))
))) (and (forall ((i_3_2@@2 Int) ) (!  (=> (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| S)) i_3_2@@2) (not (= (|Seq#Index_6661| S i_3_2@@2) null)))
 :qid |stdinbpl.667:22|
 :skolemid |62|
 :pattern ( (|Seq#Index_6661| S i_3_2@@2))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| 0 (|Seq#Length_6661| S)) i_3_2@@2))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| S)) i_3_2@@2))
 :pattern ( (|Seq#Index_6661| S i_3_2@@2))
)) (forall ((o_9@@42 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| S)) (invRecv1 o_9@@42)) (< NoPerm FullPerm)) (qpRange1 o_9@@42)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_6661| S (invRecv1 o_9@@42)) o_9@@42)) (= (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| QPMask@0) o_9@@42 f_7) (+ (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| ZeroMask) o_9@@42 f_7) FullPerm)))) (=> (not (and (and (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| S)) (invRecv1 o_9@@42)) (< NoPerm FullPerm)) (qpRange1 o_9@@42))) (= (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| QPMask@0) o_9@@42 f_7) (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| ZeroMask) o_9@@42 f_7))))
 :qid |stdinbpl.673:22|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| QPMask@0) o_9@@42 f_7))
)))) (=> (and (and (and (and (and (forall ((o_9@@43 T@Ref) (f_5@@29 T@Field_9969_53) ) (!  (=> true (= (select (|PolymorphicMapType_9930_6657_53#PolymorphicMapType_9930| ZeroMask) o_9@@43 f_5@@29) (select (|PolymorphicMapType_9930_6657_53#PolymorphicMapType_9930| QPMask@0) o_9@@43 f_5@@29)))
 :qid |stdinbpl.677:29|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_9930_6657_53#PolymorphicMapType_9930| ZeroMask) o_9@@43 f_5@@29))
 :pattern ( (select (|PolymorphicMapType_9930_6657_53#PolymorphicMapType_9930| QPMask@0) o_9@@43 f_5@@29))
)) (forall ((o_9@@44 T@Ref) (f_5@@30 T@Field_9982_9983) ) (!  (=> true (= (select (|PolymorphicMapType_9930_6657_9983#PolymorphicMapType_9930| ZeroMask) o_9@@44 f_5@@30) (select (|PolymorphicMapType_9930_6657_9983#PolymorphicMapType_9930| QPMask@0) o_9@@44 f_5@@30)))
 :qid |stdinbpl.677:29|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_9930_6657_9983#PolymorphicMapType_9930| ZeroMask) o_9@@44 f_5@@30))
 :pattern ( (select (|PolymorphicMapType_9930_6657_9983#PolymorphicMapType_9930| QPMask@0) o_9@@44 f_5@@30))
))) (forall ((o_9@@45 T@Ref) (f_5@@31 T@Field_16000_3154) ) (!  (=> (not (= f_5@@31 f_7)) (= (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| ZeroMask) o_9@@45 f_5@@31) (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| QPMask@0) o_9@@45 f_5@@31)))
 :qid |stdinbpl.677:29|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| ZeroMask) o_9@@45 f_5@@31))
 :pattern ( (select (|PolymorphicMapType_9930_6657_3154#PolymorphicMapType_9930| QPMask@0) o_9@@45 f_5@@31))
))) (forall ((o_9@@46 T@Ref) (f_5@@32 T@Field_6657_26943) ) (!  (=> true (= (select (|PolymorphicMapType_9930_6657_26943#PolymorphicMapType_9930| ZeroMask) o_9@@46 f_5@@32) (select (|PolymorphicMapType_9930_6657_26943#PolymorphicMapType_9930| QPMask@0) o_9@@46 f_5@@32)))
 :qid |stdinbpl.677:29|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_9930_6657_26943#PolymorphicMapType_9930| ZeroMask) o_9@@46 f_5@@32))
 :pattern ( (select (|PolymorphicMapType_9930_6657_26943#PolymorphicMapType_9930| QPMask@0) o_9@@46 f_5@@32))
))) (forall ((o_9@@47 T@Ref) (f_5@@33 T@Field_6657_27076) ) (!  (=> true (= (select (|PolymorphicMapType_9930_6657_31198#PolymorphicMapType_9930| ZeroMask) o_9@@47 f_5@@33) (select (|PolymorphicMapType_9930_6657_31198#PolymorphicMapType_9930| QPMask@0) o_9@@47 f_5@@33)))
 :qid |stdinbpl.677:29|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_9930_6657_31198#PolymorphicMapType_9930| ZeroMask) o_9@@47 f_5@@33))
 :pattern ( (select (|PolymorphicMapType_9930_6657_31198#PolymorphicMapType_9930| QPMask@0) o_9@@47 f_5@@33))
))) (and (state Heap@@17 QPMask@0) (state Heap@@17 QPMask@0))) (and (and (=> (= (ControlFlow 0 68) 67) anon44_Then_correct) (=> (= (ControlFlow 0 68) 30) anon48_Then_correct)) (=> (= (ControlFlow 0 68) 53) anon48_Else_correct))))))))
(let ((anon7_correct true))
(let ((anon43_Else_correct  (=> (and (not (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| S)) i_3)) (= (ControlFlow 0 12) 8)) anon7_correct)))
(let ((anon43_Then_correct  (=> (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_6661| S)) i_3) (and (=> (= (ControlFlow 0 9) (- 0 11)) (>= i_3 0)) (=> (>= i_3 0) (and (=> (= (ControlFlow 0 9) (- 0 10)) (< i_3 (|Seq#Length_6661| S))) (=> (< i_3 (|Seq#Length_6661| S)) (=> (= (ControlFlow 0 9) 8) anon7_correct))))))))
(let ((anon40_Else_correct  (=> (and (forall ((i_1 Int) (j_1 Int) ) (!  (=> (and (<= 0 i_1) (and (< i_1 j_1) (< j_1 (|Seq#Length_6661| S)))) (not (= (|Seq#Index_6661| S i_1) (|Seq#Index_6661| S j_1))))
 :qid |stdinbpl.633:20|
 :skolemid |58|
 :pattern ( (|Seq#Index_6661| S i_1) (|Seq#Index_6661| S j_1))
)) (state Heap@@17 ZeroMask)) (and (and (=> (= (ControlFlow 0 70) 68) anon42_Else_correct) (=> (= (ControlFlow 0 70) 9) anon43_Then_correct)) (=> (= (ControlFlow 0 70) 12) anon43_Else_correct)))))
(let ((anon3_correct true))
(let ((anon41_Else_correct  (=> (and (not (and (<= 0 i_18) (and (< i_18 j_14) (< j_14 (|Seq#Length_6661| S))))) (= (ControlFlow 0 7) 1)) anon3_correct)))
(let ((anon41_Then_correct  (=> (and (<= 0 i_18) (and (< i_18 j_14) (< j_14 (|Seq#Length_6661| S)))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= i_18 0)) (=> (>= i_18 0) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< i_18 (|Seq#Length_6661| S))) (=> (< i_18 (|Seq#Length_6661| S)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= j_14 0)) (=> (>= j_14 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< j_14 (|Seq#Length_6661| S))) (=> (< j_14 (|Seq#Length_6661| S)) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))))))))
(let ((anon0_correct  (=> (and (state Heap@@17 ZeroMask) AssumePermUpperBound) (and (and (=> (= (ControlFlow 0 71) 70) anon40_Else_correct) (=> (= (ControlFlow 0 71) 2) anon41_Then_correct)) (=> (= (ControlFlow 0 71) 7) anon41_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 72) 71) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
