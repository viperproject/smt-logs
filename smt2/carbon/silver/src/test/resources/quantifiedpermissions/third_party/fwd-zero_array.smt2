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
(declare-sort T@Field_25588_53 0)
(declare-sort T@Field_25601_25602 0)
(declare-sort T@Field_31659_3634 0)
(declare-sort T@Field_17539_74118 0)
(declare-sort T@Field_17539_73985 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_25549 0)) (((PolymorphicMapType_25549 (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| (Array T@Ref T@Field_31659_3634 Real)) (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| (Array T@Ref T@Field_25588_53 Real)) (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| (Array T@Ref T@Field_25601_25602 Real)) (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| (Array T@Ref T@Field_17539_73985 Real)) (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| (Array T@Ref T@Field_17539_74118 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_26077 0)) (((PolymorphicMapType_26077 (|PolymorphicMapType_26077_25588_53#PolymorphicMapType_26077| (Array T@Ref T@Field_25588_53 Bool)) (|PolymorphicMapType_26077_25588_25602#PolymorphicMapType_26077| (Array T@Ref T@Field_25601_25602 Bool)) (|PolymorphicMapType_26077_25588_3634#PolymorphicMapType_26077| (Array T@Ref T@Field_31659_3634 Bool)) (|PolymorphicMapType_26077_25588_73985#PolymorphicMapType_26077| (Array T@Ref T@Field_17539_73985 Bool)) (|PolymorphicMapType_26077_25588_75296#PolymorphicMapType_26077| (Array T@Ref T@Field_17539_74118 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_25528 0)) (((PolymorphicMapType_25528 (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| (Array T@Ref T@Field_25588_53 Bool)) (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| (Array T@Ref T@Field_25601_25602 T@Ref)) (|PolymorphicMapType_25528_17539_3634#PolymorphicMapType_25528| (Array T@Ref T@Field_31659_3634 Int)) (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| (Array T@Ref T@Field_17539_74118 T@PolymorphicMapType_26077)) (|PolymorphicMapType_25528_25588_73985#PolymorphicMapType_25528| (Array T@Ref T@Field_17539_73985 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_25588_53)
(declare-fun Integer_value () T@Field_31659_3634)
(declare-sort T@Seq_31705 0)
(declare-fun |Seq#Length_17549| (T@Seq_31705) Int)
(declare-fun |Seq#Drop_17549| (T@Seq_31705 Int) T@Seq_31705)
(declare-sort T@Seq_3512 0)
(declare-fun |Seq#Length_3512| (T@Seq_3512) Int)
(declare-fun |Seq#Drop_3512| (T@Seq_3512 Int) T@Seq_3512)
(declare-fun succHeap (T@PolymorphicMapType_25528 T@PolymorphicMapType_25528) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_25528 T@PolymorphicMapType_25528) Bool)
(declare-fun state (T@PolymorphicMapType_25528 T@PolymorphicMapType_25549) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_25549) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_26077)
(declare-fun |Seq#Index_17549| (T@Seq_31705 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3512| (T@Seq_3512 Int) Int)
(declare-fun |Seq#Empty_17549| () T@Seq_31705)
(declare-fun |Seq#Empty_3512| () T@Seq_3512)
(declare-fun |Seq#Update_17549| (T@Seq_31705 Int T@Ref) T@Seq_31705)
(declare-fun |Seq#Update_3512| (T@Seq_3512 Int Int) T@Seq_3512)
(declare-fun |Seq#Take_17549| (T@Seq_31705 Int) T@Seq_31705)
(declare-fun |Seq#Take_3512| (T@Seq_3512 Int) T@Seq_3512)
(declare-fun |Seq#Contains_3512| (T@Seq_3512 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3512)
(declare-fun |Seq#Contains_31705| (T@Seq_31705 T@Ref) Bool)
(declare-fun |Seq#Skolem_31705| (T@Seq_31705 T@Ref) Int)
(declare-fun |Seq#Skolem_3512| (T@Seq_3512 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_25528 T@PolymorphicMapType_25528 T@PolymorphicMapType_25549) Bool)
(declare-fun IsPredicateField_17539_74076 (T@Field_17539_73985) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_17539 (T@Field_17539_73985) T@Field_17539_74118)
(declare-fun HasDirectPerm_17539_74049 (T@PolymorphicMapType_25549 T@Ref T@Field_17539_73985) Bool)
(declare-fun IsWandField_17539_75823 (T@Field_17539_73985) Bool)
(declare-fun WandMaskField_17539 (T@Field_17539_73985) T@Field_17539_74118)
(declare-fun |Seq#Singleton_17549| (T@Ref) T@Seq_31705)
(declare-fun |Seq#Singleton_3512| (Int) T@Seq_3512)
(declare-fun |Seq#Append_31705| (T@Seq_31705 T@Seq_31705) T@Seq_31705)
(declare-fun |Seq#Append_3512| (T@Seq_3512 T@Seq_3512) T@Seq_3512)
(declare-fun dummyHeap () T@PolymorphicMapType_25528)
(declare-fun ZeroMask () T@PolymorphicMapType_25549)
(declare-fun InsidePredicate_25588_25588 (T@Field_17539_73985 T@FrameType T@Field_17539_73985 T@FrameType) Bool)
(declare-fun IsPredicateField_17539_3634 (T@Field_31659_3634) Bool)
(declare-fun IsWandField_17539_3634 (T@Field_31659_3634) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_17539_79369 (T@Field_17539_74118) Bool)
(declare-fun IsWandField_17539_79385 (T@Field_17539_74118) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_17539_25602 (T@Field_25601_25602) Bool)
(declare-fun IsWandField_17539_25602 (T@Field_25601_25602) Bool)
(declare-fun IsPredicateField_17539_53 (T@Field_25588_53) Bool)
(declare-fun IsWandField_17539_53 (T@Field_25588_53) Bool)
(declare-fun HasDirectPerm_17539_79823 (T@PolymorphicMapType_25549 T@Ref T@Field_17539_74118) Bool)
(declare-fun HasDirectPerm_17539_25602 (T@PolymorphicMapType_25549 T@Ref T@Field_25601_25602) Bool)
(declare-fun HasDirectPerm_17539_53 (T@PolymorphicMapType_25549 T@Ref T@Field_25588_53) Bool)
(declare-fun HasDirectPerm_17539_3634 (T@PolymorphicMapType_25549 T@Ref T@Field_31659_3634) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_25549 T@PolymorphicMapType_25549 T@PolymorphicMapType_25549) Bool)
(declare-fun |Seq#Equal_31705| (T@Seq_31705 T@Seq_31705) Bool)
(declare-fun |Seq#Equal_3512| (T@Seq_3512 T@Seq_3512) Bool)
(declare-fun |Seq#ContainsTrigger_17549| (T@Seq_31705 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3512| (T@Seq_3512 Int) Bool)
(declare-fun |Seq#SkolemDiff_31705| (T@Seq_31705 T@Seq_31705) Int)
(declare-fun |Seq#SkolemDiff_3512| (T@Seq_3512 T@Seq_3512) Int)
(assert (forall ((s T@Seq_31705) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_17549| s)) (= (|Seq#Length_17549| (|Seq#Drop_17549| s n)) (- (|Seq#Length_17549| s) n))) (=> (< (|Seq#Length_17549| s) n) (= (|Seq#Length_17549| (|Seq#Drop_17549| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_17549| (|Seq#Drop_17549| s n)) (|Seq#Length_17549| s))))
 :qid |stdinbpl.366:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_17549| (|Seq#Drop_17549| s n)))
 :pattern ( (|Seq#Length_17549| s) (|Seq#Drop_17549| s n))
)))
(assert (forall ((s@@0 T@Seq_3512) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3512| s@@0)) (= (|Seq#Length_3512| (|Seq#Drop_3512| s@@0 n@@0)) (- (|Seq#Length_3512| s@@0) n@@0))) (=> (< (|Seq#Length_3512| s@@0) n@@0) (= (|Seq#Length_3512| (|Seq#Drop_3512| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3512| (|Seq#Drop_3512| s@@0 n@@0)) (|Seq#Length_3512| s@@0))))
 :qid |stdinbpl.366:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3512| (|Seq#Drop_3512| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3512| s@@0) (|Seq#Drop_3512| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_25528) (Heap1 T@PolymorphicMapType_25528) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_25528) (Mask T@PolymorphicMapType_25549) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_25528) (Heap1@@0 T@PolymorphicMapType_25528) (Heap2 T@PolymorphicMapType_25528) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_17539_74118) ) (!  (not (select (|PolymorphicMapType_26077_25588_75296#PolymorphicMapType_26077| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26077_25588_75296#PolymorphicMapType_26077| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_17539_73985) ) (!  (not (select (|PolymorphicMapType_26077_25588_73985#PolymorphicMapType_26077| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26077_25588_73985#PolymorphicMapType_26077| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_31659_3634) ) (!  (not (select (|PolymorphicMapType_26077_25588_3634#PolymorphicMapType_26077| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26077_25588_3634#PolymorphicMapType_26077| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_25601_25602) ) (!  (not (select (|PolymorphicMapType_26077_25588_25602#PolymorphicMapType_26077| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26077_25588_25602#PolymorphicMapType_26077| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_25588_53) ) (!  (not (select (|PolymorphicMapType_26077_25588_53#PolymorphicMapType_26077| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26077_25588_53#PolymorphicMapType_26077| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((s@@1 T@Seq_31705) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_17549| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_17549| (|Seq#Drop_17549| s@@1 n@@1) j) (|Seq#Index_17549| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.387:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_17549| (|Seq#Drop_17549| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3512) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3512| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3512| (|Seq#Drop_3512| s@@2 n@@2) j@@0) (|Seq#Index_3512| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.387:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3512| (|Seq#Drop_3512| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_17549| |Seq#Empty_17549|) 0))
(assert (= (|Seq#Length_3512| |Seq#Empty_3512|) 0))
(assert (forall ((s@@3 T@Seq_31705) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_17549| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_17549| (|Seq#Update_17549| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_17549| (|Seq#Update_17549| s@@3 i v) n@@3) (|Seq#Index_17549| s@@3 n@@3)))))
 :qid |stdinbpl.342:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_17549| (|Seq#Update_17549| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_17549| s@@3 n@@3) (|Seq#Update_17549| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_3512) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3512| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_3512| (|Seq#Update_3512| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_3512| (|Seq#Update_3512| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_3512| s@@4 n@@4)))))
 :qid |stdinbpl.342:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3512| (|Seq#Update_3512| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_3512| s@@4 n@@4) (|Seq#Update_3512| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_31705) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_17549| s@@5)) (= (|Seq#Length_17549| (|Seq#Take_17549| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_17549| s@@5) n@@5) (= (|Seq#Length_17549| (|Seq#Take_17549| s@@5 n@@5)) (|Seq#Length_17549| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_17549| (|Seq#Take_17549| s@@5 n@@5)) 0)))
 :qid |stdinbpl.353:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_17549| (|Seq#Take_17549| s@@5 n@@5)))
 :pattern ( (|Seq#Take_17549| s@@5 n@@5) (|Seq#Length_17549| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3512) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3512| s@@6)) (= (|Seq#Length_3512| (|Seq#Take_3512| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3512| s@@6) n@@6) (= (|Seq#Length_3512| (|Seq#Take_3512| s@@6 n@@6)) (|Seq#Length_3512| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3512| (|Seq#Take_3512| s@@6 n@@6)) 0)))
 :qid |stdinbpl.353:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3512| (|Seq#Take_3512| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3512| s@@6 n@@6) (|Seq#Length_3512| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3512| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.627:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3512| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_31705) (x T@Ref) ) (!  (=> (|Seq#Contains_31705| s@@7 x) (and (and (<= 0 (|Seq#Skolem_31705| s@@7 x)) (< (|Seq#Skolem_31705| s@@7 x) (|Seq#Length_17549| s@@7))) (= (|Seq#Index_17549| s@@7 (|Seq#Skolem_31705| s@@7 x)) x)))
 :qid |stdinbpl.485:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_31705| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3512) (x@@0 Int) ) (!  (=> (|Seq#Contains_3512| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3512| s@@8 x@@0)) (< (|Seq#Skolem_3512| s@@8 x@@0) (|Seq#Length_3512| s@@8))) (= (|Seq#Index_3512| s@@8 (|Seq#Skolem_3512| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.485:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3512| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_31705) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_17549| s@@9 n@@7) s@@9))
 :qid |stdinbpl.469:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_17549| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3512) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3512| s@@10 n@@8) s@@10))
 :qid |stdinbpl.469:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3512| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.322:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.320:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_25528) (ExhaleHeap T@PolymorphicMapType_25528) (Mask@@0 T@PolymorphicMapType_25549) (pm_f_51 T@Field_17539_73985) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_17539_74049 Mask@@0 null pm_f_51) (IsPredicateField_17539_74076 pm_f_51)) (= (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@0) null (PredicateMaskField_17539 pm_f_51)) (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| ExhaleHeap) null (PredicateMaskField_17539 pm_f_51)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_17539_74076 pm_f_51) (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| ExhaleHeap) null (PredicateMaskField_17539 pm_f_51)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_25528) (ExhaleHeap@@0 T@PolymorphicMapType_25528) (Mask@@1 T@PolymorphicMapType_25549) (pm_f_51@@0 T@Field_17539_73985) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_17539_74049 Mask@@1 null pm_f_51@@0) (IsWandField_17539_75823 pm_f_51@@0)) (= (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@1) null (WandMaskField_17539 pm_f_51@@0)) (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| ExhaleHeap@@0) null (WandMaskField_17539 pm_f_51@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_17539_75823 pm_f_51@@0) (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| ExhaleHeap@@0) null (WandMaskField_17539 pm_f_51@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_31705| (|Seq#Singleton_17549| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.610:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_31705| (|Seq#Singleton_17549| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3512| (|Seq#Singleton_3512| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.610:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3512| (|Seq#Singleton_3512| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_31705) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_17549| s@@11))) (= (|Seq#Index_17549| (|Seq#Take_17549| s@@11 n@@9) j@@3) (|Seq#Index_17549| s@@11 j@@3)))
 :qid |stdinbpl.361:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_17549| (|Seq#Take_17549| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_17549| s@@11 j@@3) (|Seq#Take_17549| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3512) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3512| s@@12))) (= (|Seq#Index_3512| (|Seq#Take_3512| s@@12 n@@10) j@@4) (|Seq#Index_3512| s@@12 j@@4)))
 :qid |stdinbpl.361:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3512| (|Seq#Take_3512| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3512| s@@12 j@@4) (|Seq#Take_3512| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_31705) (t T@Seq_31705) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_17549| s@@13))) (< n@@11 (|Seq#Length_17549| (|Seq#Append_31705| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_17549| s@@13)) (|Seq#Length_17549| s@@13)) n@@11) (= (|Seq#Take_17549| (|Seq#Append_31705| s@@13 t) n@@11) (|Seq#Append_31705| s@@13 (|Seq#Take_17549| t (|Seq#Sub| n@@11 (|Seq#Length_17549| s@@13)))))))
 :qid |stdinbpl.446:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_17549| (|Seq#Append_31705| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3512) (t@@0 T@Seq_3512) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3512| s@@14))) (< n@@12 (|Seq#Length_3512| (|Seq#Append_3512| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3512| s@@14)) (|Seq#Length_3512| s@@14)) n@@12) (= (|Seq#Take_3512| (|Seq#Append_3512| s@@14 t@@0) n@@12) (|Seq#Append_3512| s@@14 (|Seq#Take_3512| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3512| s@@14)))))))
 :qid |stdinbpl.446:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3512| (|Seq#Append_3512| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_25528) (ExhaleHeap@@1 T@PolymorphicMapType_25528) (Mask@@2 T@PolymorphicMapType_25549) (o_49 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| Heap@@2) o_49 $allocated) (select (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| ExhaleHeap@@1) o_49 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| ExhaleHeap@@1) o_49 $allocated))
)))
(assert (forall ((p T@Field_17539_73985) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_25588_25588 p v_1 p w))
 :qid |stdinbpl.264:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_25588_25588 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_31705) (s1 T@Seq_31705) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_17549|)) (not (= s1 |Seq#Empty_17549|))) (<= (|Seq#Length_17549| s0) n@@13)) (< n@@13 (|Seq#Length_17549| (|Seq#Append_31705| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_17549| s0)) (|Seq#Length_17549| s0)) n@@13) (= (|Seq#Index_17549| (|Seq#Append_31705| s0 s1) n@@13) (|Seq#Index_17549| s1 (|Seq#Sub| n@@13 (|Seq#Length_17549| s0))))))
 :qid |stdinbpl.333:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_17549| (|Seq#Append_31705| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3512) (s1@@0 T@Seq_3512) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3512|)) (not (= s1@@0 |Seq#Empty_3512|))) (<= (|Seq#Length_3512| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3512| (|Seq#Append_3512| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3512| s0@@0)) (|Seq#Length_3512| s0@@0)) n@@14) (= (|Seq#Index_3512| (|Seq#Append_3512| s0@@0 s1@@0) n@@14) (|Seq#Index_3512| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3512| s0@@0))))))
 :qid |stdinbpl.333:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3512| (|Seq#Append_3512| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_17539_3634 Integer_value)))
(assert  (not (IsWandField_17539_3634 Integer_value)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_25528) (ExhaleHeap@@2 T@PolymorphicMapType_25528) (Mask@@3 T@PolymorphicMapType_25549) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_25549) (o_2@@4 T@Ref) (f_4@@4 T@Field_17539_74118) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_17539_79369 f_4@@4))) (not (IsWandField_17539_79385 f_4@@4))) (<= (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_25549) (o_2@@5 T@Ref) (f_4@@5 T@Field_17539_73985) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_17539_74076 f_4@@5))) (not (IsWandField_17539_75823 f_4@@5))) (<= (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_25549) (o_2@@6 T@Ref) (f_4@@6 T@Field_25601_25602) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_17539_25602 f_4@@6))) (not (IsWandField_17539_25602 f_4@@6))) (<= (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_25549) (o_2@@7 T@Ref) (f_4@@7 T@Field_25588_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_17539_53 f_4@@7))) (not (IsWandField_17539_53 f_4@@7))) (<= (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_25549) (o_2@@8 T@Ref) (f_4@@8 T@Field_31659_3634) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_17539_3634 f_4@@8))) (not (IsWandField_17539_3634 f_4@@8))) (<= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_25549) (o_2@@9 T@Ref) (f_4@@9 T@Field_17539_74118) ) (! (= (HasDirectPerm_17539_79823 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17539_79823 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_25549) (o_2@@10 T@Ref) (f_4@@10 T@Field_17539_73985) ) (! (= (HasDirectPerm_17539_74049 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17539_74049 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_25549) (o_2@@11 T@Ref) (f_4@@11 T@Field_25601_25602) ) (! (= (HasDirectPerm_17539_25602 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17539_25602 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_25549) (o_2@@12 T@Ref) (f_4@@12 T@Field_25588_53) ) (! (= (HasDirectPerm_17539_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17539_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_25549) (o_2@@13 T@Ref) (f_4@@13 T@Field_31659_3634) ) (! (= (HasDirectPerm_17539_3634 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17539_3634 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_25528) (ExhaleHeap@@3 T@PolymorphicMapType_25528) (Mask@@14 T@PolymorphicMapType_25549) (pm_f_51@@1 T@Field_17539_73985) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_17539_74049 Mask@@14 null pm_f_51@@1) (IsPredicateField_17539_74076 pm_f_51@@1)) (and (and (and (and (forall ((o2_52 T@Ref) (f_30 T@Field_25588_53) ) (!  (=> (select (|PolymorphicMapType_26077_25588_53#PolymorphicMapType_26077| (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@4) null (PredicateMaskField_17539 pm_f_51@@1))) o2_52 f_30) (= (select (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| Heap@@4) o2_52 f_30) (select (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| ExhaleHeap@@3) o2_52 f_30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| ExhaleHeap@@3) o2_52 f_30))
)) (forall ((o2_52@@0 T@Ref) (f_30@@0 T@Field_25601_25602) ) (!  (=> (select (|PolymorphicMapType_26077_25588_25602#PolymorphicMapType_26077| (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@4) null (PredicateMaskField_17539 pm_f_51@@1))) o2_52@@0 f_30@@0) (= (select (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| Heap@@4) o2_52@@0 f_30@@0) (select (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| ExhaleHeap@@3) o2_52@@0 f_30@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| ExhaleHeap@@3) o2_52@@0 f_30@@0))
))) (forall ((o2_52@@1 T@Ref) (f_30@@1 T@Field_31659_3634) ) (!  (=> (select (|PolymorphicMapType_26077_25588_3634#PolymorphicMapType_26077| (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@4) null (PredicateMaskField_17539 pm_f_51@@1))) o2_52@@1 f_30@@1) (= (select (|PolymorphicMapType_25528_17539_3634#PolymorphicMapType_25528| Heap@@4) o2_52@@1 f_30@@1) (select (|PolymorphicMapType_25528_17539_3634#PolymorphicMapType_25528| ExhaleHeap@@3) o2_52@@1 f_30@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25528_17539_3634#PolymorphicMapType_25528| ExhaleHeap@@3) o2_52@@1 f_30@@1))
))) (forall ((o2_52@@2 T@Ref) (f_30@@2 T@Field_17539_73985) ) (!  (=> (select (|PolymorphicMapType_26077_25588_73985#PolymorphicMapType_26077| (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@4) null (PredicateMaskField_17539 pm_f_51@@1))) o2_52@@2 f_30@@2) (= (select (|PolymorphicMapType_25528_25588_73985#PolymorphicMapType_25528| Heap@@4) o2_52@@2 f_30@@2) (select (|PolymorphicMapType_25528_25588_73985#PolymorphicMapType_25528| ExhaleHeap@@3) o2_52@@2 f_30@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25528_25588_73985#PolymorphicMapType_25528| ExhaleHeap@@3) o2_52@@2 f_30@@2))
))) (forall ((o2_52@@3 T@Ref) (f_30@@3 T@Field_17539_74118) ) (!  (=> (select (|PolymorphicMapType_26077_25588_75296#PolymorphicMapType_26077| (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@4) null (PredicateMaskField_17539 pm_f_51@@1))) o2_52@@3 f_30@@3) (= (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@4) o2_52@@3 f_30@@3) (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| ExhaleHeap@@3) o2_52@@3 f_30@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| ExhaleHeap@@3) o2_52@@3 f_30@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_17539_74076 pm_f_51@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_25528) (ExhaleHeap@@4 T@PolymorphicMapType_25528) (Mask@@15 T@PolymorphicMapType_25549) (pm_f_51@@2 T@Field_17539_73985) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_17539_74049 Mask@@15 null pm_f_51@@2) (IsWandField_17539_75823 pm_f_51@@2)) (and (and (and (and (forall ((o2_52@@4 T@Ref) (f_30@@4 T@Field_25588_53) ) (!  (=> (select (|PolymorphicMapType_26077_25588_53#PolymorphicMapType_26077| (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@5) null (WandMaskField_17539 pm_f_51@@2))) o2_52@@4 f_30@@4) (= (select (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| Heap@@5) o2_52@@4 f_30@@4) (select (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| ExhaleHeap@@4) o2_52@@4 f_30@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| ExhaleHeap@@4) o2_52@@4 f_30@@4))
)) (forall ((o2_52@@5 T@Ref) (f_30@@5 T@Field_25601_25602) ) (!  (=> (select (|PolymorphicMapType_26077_25588_25602#PolymorphicMapType_26077| (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@5) null (WandMaskField_17539 pm_f_51@@2))) o2_52@@5 f_30@@5) (= (select (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| Heap@@5) o2_52@@5 f_30@@5) (select (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| ExhaleHeap@@4) o2_52@@5 f_30@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| ExhaleHeap@@4) o2_52@@5 f_30@@5))
))) (forall ((o2_52@@6 T@Ref) (f_30@@6 T@Field_31659_3634) ) (!  (=> (select (|PolymorphicMapType_26077_25588_3634#PolymorphicMapType_26077| (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@5) null (WandMaskField_17539 pm_f_51@@2))) o2_52@@6 f_30@@6) (= (select (|PolymorphicMapType_25528_17539_3634#PolymorphicMapType_25528| Heap@@5) o2_52@@6 f_30@@6) (select (|PolymorphicMapType_25528_17539_3634#PolymorphicMapType_25528| ExhaleHeap@@4) o2_52@@6 f_30@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25528_17539_3634#PolymorphicMapType_25528| ExhaleHeap@@4) o2_52@@6 f_30@@6))
))) (forall ((o2_52@@7 T@Ref) (f_30@@7 T@Field_17539_73985) ) (!  (=> (select (|PolymorphicMapType_26077_25588_73985#PolymorphicMapType_26077| (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@5) null (WandMaskField_17539 pm_f_51@@2))) o2_52@@7 f_30@@7) (= (select (|PolymorphicMapType_25528_25588_73985#PolymorphicMapType_25528| Heap@@5) o2_52@@7 f_30@@7) (select (|PolymorphicMapType_25528_25588_73985#PolymorphicMapType_25528| ExhaleHeap@@4) o2_52@@7 f_30@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25528_25588_73985#PolymorphicMapType_25528| ExhaleHeap@@4) o2_52@@7 f_30@@7))
))) (forall ((o2_52@@8 T@Ref) (f_30@@8 T@Field_17539_74118) ) (!  (=> (select (|PolymorphicMapType_26077_25588_75296#PolymorphicMapType_26077| (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@5) null (WandMaskField_17539 pm_f_51@@2))) o2_52@@8 f_30@@8) (= (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@5) o2_52@@8 f_30@@8) (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| ExhaleHeap@@4) o2_52@@8 f_30@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| ExhaleHeap@@4) o2_52@@8 f_30@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_17539_75823 pm_f_51@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.252:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3512| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.625:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3512| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_25528) (ExhaleHeap@@5 T@PolymorphicMapType_25528) (Mask@@16 T@PolymorphicMapType_25549) (o_49@@0 T@Ref) (f_30@@9 T@Field_17539_74118) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_17539_79823 Mask@@16 o_49@@0 f_30@@9) (= (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@6) o_49@@0 f_30@@9) (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| ExhaleHeap@@5) o_49@@0 f_30@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| ExhaleHeap@@5) o_49@@0 f_30@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_25528) (ExhaleHeap@@6 T@PolymorphicMapType_25528) (Mask@@17 T@PolymorphicMapType_25549) (o_49@@1 T@Ref) (f_30@@10 T@Field_17539_73985) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_17539_74049 Mask@@17 o_49@@1 f_30@@10) (= (select (|PolymorphicMapType_25528_25588_73985#PolymorphicMapType_25528| Heap@@7) o_49@@1 f_30@@10) (select (|PolymorphicMapType_25528_25588_73985#PolymorphicMapType_25528| ExhaleHeap@@6) o_49@@1 f_30@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_25528_25588_73985#PolymorphicMapType_25528| ExhaleHeap@@6) o_49@@1 f_30@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_25528) (ExhaleHeap@@7 T@PolymorphicMapType_25528) (Mask@@18 T@PolymorphicMapType_25549) (o_49@@2 T@Ref) (f_30@@11 T@Field_25601_25602) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_17539_25602 Mask@@18 o_49@@2 f_30@@11) (= (select (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| Heap@@8) o_49@@2 f_30@@11) (select (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| ExhaleHeap@@7) o_49@@2 f_30@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| ExhaleHeap@@7) o_49@@2 f_30@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_25528) (ExhaleHeap@@8 T@PolymorphicMapType_25528) (Mask@@19 T@PolymorphicMapType_25549) (o_49@@3 T@Ref) (f_30@@12 T@Field_25588_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_17539_53 Mask@@19 o_49@@3 f_30@@12) (= (select (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| Heap@@9) o_49@@3 f_30@@12) (select (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| ExhaleHeap@@8) o_49@@3 f_30@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| ExhaleHeap@@8) o_49@@3 f_30@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_25528) (ExhaleHeap@@9 T@PolymorphicMapType_25528) (Mask@@20 T@PolymorphicMapType_25549) (o_49@@4 T@Ref) (f_30@@13 T@Field_31659_3634) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_17539_3634 Mask@@20 o_49@@4 f_30@@13) (= (select (|PolymorphicMapType_25528_17539_3634#PolymorphicMapType_25528| Heap@@10) o_49@@4 f_30@@13) (select (|PolymorphicMapType_25528_17539_3634#PolymorphicMapType_25528| ExhaleHeap@@9) o_49@@4 f_30@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_25528_17539_3634#PolymorphicMapType_25528| ExhaleHeap@@9) o_49@@4 f_30@@13))
)))
(assert (forall ((s0@@1 T@Seq_31705) (s1@@1 T@Seq_31705) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_17549|)) (not (= s1@@1 |Seq#Empty_17549|))) (= (|Seq#Length_17549| (|Seq#Append_31705| s0@@1 s1@@1)) (+ (|Seq#Length_17549| s0@@1) (|Seq#Length_17549| s1@@1))))
 :qid |stdinbpl.302:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_17549| (|Seq#Append_31705| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3512) (s1@@2 T@Seq_3512) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3512|)) (not (= s1@@2 |Seq#Empty_3512|))) (= (|Seq#Length_3512| (|Seq#Append_3512| s0@@2 s1@@2)) (+ (|Seq#Length_3512| s0@@2) (|Seq#Length_3512| s1@@2))))
 :qid |stdinbpl.302:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3512| (|Seq#Append_3512| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_17539_74118) ) (! (= (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_17539_73985) ) (! (= (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_25601_25602) ) (! (= (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_25588_53) ) (! (= (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_31659_3634) ) (! (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((s@@15 T@Seq_31705) (t@@1 T@Seq_31705) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_17549| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_17549| s@@15)) (|Seq#Length_17549| s@@15)) n@@15) (= (|Seq#Drop_17549| (|Seq#Append_31705| s@@15 t@@1) n@@15) (|Seq#Drop_17549| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_17549| s@@15))))))
 :qid |stdinbpl.459:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_17549| (|Seq#Append_31705| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3512) (t@@2 T@Seq_3512) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3512| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3512| s@@16)) (|Seq#Length_3512| s@@16)) n@@16) (= (|Seq#Drop_3512| (|Seq#Append_3512| s@@16 t@@2) n@@16) (|Seq#Drop_3512| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3512| s@@16))))))
 :qid |stdinbpl.459:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3512| (|Seq#Append_3512| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_25549) (SummandMask1 T@PolymorphicMapType_25549) (SummandMask2 T@PolymorphicMapType_25549) (o_2@@19 T@Ref) (f_4@@19 T@Field_17539_74118) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_25549) (SummandMask1@@0 T@PolymorphicMapType_25549) (SummandMask2@@0 T@PolymorphicMapType_25549) (o_2@@20 T@Ref) (f_4@@20 T@Field_17539_73985) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_25549) (SummandMask1@@1 T@PolymorphicMapType_25549) (SummandMask2@@1 T@PolymorphicMapType_25549) (o_2@@21 T@Ref) (f_4@@21 T@Field_25601_25602) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_25549) (SummandMask1@@2 T@PolymorphicMapType_25549) (SummandMask2@@2 T@PolymorphicMapType_25549) (o_2@@22 T@Ref) (f_4@@22 T@Field_25588_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_25549) (SummandMask1@@3 T@PolymorphicMapType_25549) (SummandMask2@@3 T@PolymorphicMapType_25549) (o_2@@23 T@Ref) (f_4@@23 T@Field_31659_3634) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3512| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3512| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.624:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3512| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_31705) (b T@Seq_31705) ) (!  (=> (|Seq#Equal_31705| a b) (= a b))
 :qid |stdinbpl.597:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_31705| a b))
)))
(assert (forall ((a@@0 T@Seq_3512) (b@@0 T@Seq_3512) ) (!  (=> (|Seq#Equal_3512| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.597:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3512| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_31705) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_17549| s@@17))) (|Seq#ContainsTrigger_17549| s@@17 (|Seq#Index_17549| s@@17 i@@3)))
 :qid |stdinbpl.490:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_17549| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_3512) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_3512| s@@18))) (|Seq#ContainsTrigger_3512| s@@18 (|Seq#Index_3512| s@@18 i@@4)))
 :qid |stdinbpl.490:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3512| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_31705) (s1@@3 T@Seq_31705) ) (!  (and (=> (= s0@@3 |Seq#Empty_17549|) (= (|Seq#Append_31705| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_17549|) (= (|Seq#Append_31705| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.308:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_31705| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3512) (s1@@4 T@Seq_3512) ) (!  (and (=> (= s0@@4 |Seq#Empty_3512|) (= (|Seq#Append_3512| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3512|) (= (|Seq#Append_3512| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.308:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3512| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_17549| (|Seq#Singleton_17549| t@@3) 0) t@@3)
 :qid |stdinbpl.312:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_17549| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3512| (|Seq#Singleton_3512| t@@4) 0) t@@4)
 :qid |stdinbpl.312:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3512| t@@4))
)))
(assert (forall ((s@@19 T@Seq_31705) ) (! (<= 0 (|Seq#Length_17549| s@@19))
 :qid |stdinbpl.291:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_17549| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3512) ) (! (<= 0 (|Seq#Length_3512| s@@20))
 :qid |stdinbpl.291:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3512| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_31705) (s1@@5 T@Seq_31705) ) (!  (=> (|Seq#Equal_31705| s0@@5 s1@@5) (and (= (|Seq#Length_17549| s0@@5) (|Seq#Length_17549| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_17549| s0@@5))) (= (|Seq#Index_17549| s0@@5 j@@6) (|Seq#Index_17549| s1@@5 j@@6)))
 :qid |stdinbpl.587:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_17549| s0@@5 j@@6))
 :pattern ( (|Seq#Index_17549| s1@@5 j@@6))
))))
 :qid |stdinbpl.584:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_31705| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3512) (s1@@6 T@Seq_3512) ) (!  (=> (|Seq#Equal_3512| s0@@6 s1@@6) (and (= (|Seq#Length_3512| s0@@6) (|Seq#Length_3512| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_3512| s0@@6))) (= (|Seq#Index_3512| s0@@6 j@@7) (|Seq#Index_3512| s1@@6 j@@7)))
 :qid |stdinbpl.587:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3512| s0@@6 j@@7))
 :pattern ( (|Seq#Index_3512| s1@@6 j@@7))
))))
 :qid |stdinbpl.584:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3512| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_17549| (|Seq#Singleton_17549| t@@5)) 1)
 :qid |stdinbpl.299:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_17549| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3512| (|Seq#Singleton_3512| t@@6)) 1)
 :qid |stdinbpl.299:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3512| t@@6))
)))
(assert (forall ((s@@21 T@Seq_31705) (t@@7 T@Seq_31705) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_17549| s@@21))) (= (|Seq#Take_17549| (|Seq#Append_31705| s@@21 t@@7) n@@17) (|Seq#Take_17549| s@@21 n@@17)))
 :qid |stdinbpl.441:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_17549| (|Seq#Append_31705| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3512) (t@@8 T@Seq_3512) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3512| s@@22))) (= (|Seq#Take_3512| (|Seq#Append_3512| s@@22 t@@8) n@@18) (|Seq#Take_3512| s@@22 n@@18)))
 :qid |stdinbpl.441:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3512| (|Seq#Append_3512| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_31705) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_17549| s@@23))) (= (|Seq#Length_17549| (|Seq#Update_17549| s@@23 i@@5 v@@2)) (|Seq#Length_17549| s@@23)))
 :qid |stdinbpl.340:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_17549| (|Seq#Update_17549| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_17549| s@@23) (|Seq#Update_17549| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3512) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_3512| s@@24))) (= (|Seq#Length_3512| (|Seq#Update_3512| s@@24 i@@6 v@@3)) (|Seq#Length_3512| s@@24)))
 :qid |stdinbpl.340:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3512| (|Seq#Update_3512| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_3512| s@@24) (|Seq#Update_3512| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_25528) (o_48 T@Ref) (f_62 T@Field_17539_73985) (v@@4 T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_25528 (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| Heap@@11) (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| Heap@@11) (|PolymorphicMapType_25528_17539_3634#PolymorphicMapType_25528| Heap@@11) (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@11) (store (|PolymorphicMapType_25528_25588_73985#PolymorphicMapType_25528| Heap@@11) o_48 f_62 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25528 (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| Heap@@11) (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| Heap@@11) (|PolymorphicMapType_25528_17539_3634#PolymorphicMapType_25528| Heap@@11) (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@11) (store (|PolymorphicMapType_25528_25588_73985#PolymorphicMapType_25528| Heap@@11) o_48 f_62 v@@4)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_25528) (o_48@@0 T@Ref) (f_62@@0 T@Field_17539_74118) (v@@5 T@PolymorphicMapType_26077) ) (! (succHeap Heap@@12 (PolymorphicMapType_25528 (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| Heap@@12) (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| Heap@@12) (|PolymorphicMapType_25528_17539_3634#PolymorphicMapType_25528| Heap@@12) (store (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@12) o_48@@0 f_62@@0 v@@5) (|PolymorphicMapType_25528_25588_73985#PolymorphicMapType_25528| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25528 (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| Heap@@12) (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| Heap@@12) (|PolymorphicMapType_25528_17539_3634#PolymorphicMapType_25528| Heap@@12) (store (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@12) o_48@@0 f_62@@0 v@@5) (|PolymorphicMapType_25528_25588_73985#PolymorphicMapType_25528| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_25528) (o_48@@1 T@Ref) (f_62@@1 T@Field_31659_3634) (v@@6 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_25528 (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| Heap@@13) (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| Heap@@13) (store (|PolymorphicMapType_25528_17539_3634#PolymorphicMapType_25528| Heap@@13) o_48@@1 f_62@@1 v@@6) (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@13) (|PolymorphicMapType_25528_25588_73985#PolymorphicMapType_25528| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25528 (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| Heap@@13) (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| Heap@@13) (store (|PolymorphicMapType_25528_17539_3634#PolymorphicMapType_25528| Heap@@13) o_48@@1 f_62@@1 v@@6) (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@13) (|PolymorphicMapType_25528_25588_73985#PolymorphicMapType_25528| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_25528) (o_48@@2 T@Ref) (f_62@@2 T@Field_25601_25602) (v@@7 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_25528 (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| Heap@@14) (store (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| Heap@@14) o_48@@2 f_62@@2 v@@7) (|PolymorphicMapType_25528_17539_3634#PolymorphicMapType_25528| Heap@@14) (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@14) (|PolymorphicMapType_25528_25588_73985#PolymorphicMapType_25528| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25528 (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| Heap@@14) (store (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| Heap@@14) o_48@@2 f_62@@2 v@@7) (|PolymorphicMapType_25528_17539_3634#PolymorphicMapType_25528| Heap@@14) (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@14) (|PolymorphicMapType_25528_25588_73985#PolymorphicMapType_25528| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_25528) (o_48@@3 T@Ref) (f_62@@3 T@Field_25588_53) (v@@8 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_25528 (store (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| Heap@@15) o_48@@3 f_62@@3 v@@8) (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| Heap@@15) (|PolymorphicMapType_25528_17539_3634#PolymorphicMapType_25528| Heap@@15) (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@15) (|PolymorphicMapType_25528_25588_73985#PolymorphicMapType_25528| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25528 (store (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| Heap@@15) o_48@@3 f_62@@3 v@@8) (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| Heap@@15) (|PolymorphicMapType_25528_17539_3634#PolymorphicMapType_25528| Heap@@15) (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@15) (|PolymorphicMapType_25528_25588_73985#PolymorphicMapType_25528| Heap@@15)))
)))
(assert (forall ((s@@25 T@Seq_31705) (t@@9 T@Seq_31705) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_17549| s@@25))) (= (|Seq#Drop_17549| (|Seq#Append_31705| s@@25 t@@9) n@@19) (|Seq#Append_31705| (|Seq#Drop_17549| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.455:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_17549| (|Seq#Append_31705| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3512) (t@@10 T@Seq_3512) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3512| s@@26))) (= (|Seq#Drop_3512| (|Seq#Append_3512| s@@26 t@@10) n@@20) (|Seq#Append_3512| (|Seq#Drop_3512| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.455:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3512| (|Seq#Append_3512| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_31705) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_17549| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_17549| (|Seq#Drop_17549| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_17549| s@@27 i@@7))))
 :qid |stdinbpl.391:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_17549| s@@27 n@@21) (|Seq#Index_17549| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_3512) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_3512| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_3512| (|Seq#Drop_3512| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_3512| s@@28 i@@8))))
 :qid |stdinbpl.391:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3512| s@@28 n@@22) (|Seq#Index_3512| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_31705) (s1@@7 T@Seq_31705) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_17549|)) (not (= s1@@7 |Seq#Empty_17549|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_17549| s0@@7))) (= (|Seq#Index_17549| (|Seq#Append_31705| s0@@7 s1@@7) n@@23) (|Seq#Index_17549| s0@@7 n@@23)))
 :qid |stdinbpl.331:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_17549| (|Seq#Append_31705| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_17549| s0@@7 n@@23) (|Seq#Append_31705| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3512) (s1@@8 T@Seq_3512) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3512|)) (not (= s1@@8 |Seq#Empty_3512|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3512| s0@@8))) (= (|Seq#Index_3512| (|Seq#Append_3512| s0@@8 s1@@8) n@@24) (|Seq#Index_3512| s0@@8 n@@24)))
 :qid |stdinbpl.331:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3512| (|Seq#Append_3512| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3512| s0@@8 n@@24) (|Seq#Append_3512| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_31705) (s1@@9 T@Seq_31705) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_17549|)) (not (= s1@@9 |Seq#Empty_17549|))) (<= 0 m)) (< m (|Seq#Length_17549| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_17549| s0@@9)) (|Seq#Length_17549| s0@@9)) m) (= (|Seq#Index_17549| (|Seq#Append_31705| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_17549| s0@@9))) (|Seq#Index_17549| s1@@9 m))))
 :qid |stdinbpl.336:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_17549| s1@@9 m) (|Seq#Append_31705| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3512) (s1@@10 T@Seq_3512) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3512|)) (not (= s1@@10 |Seq#Empty_3512|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3512| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3512| s0@@10)) (|Seq#Length_3512| s0@@10)) m@@0) (= (|Seq#Index_3512| (|Seq#Append_3512| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3512| s0@@10))) (|Seq#Index_3512| s1@@10 m@@0))))
 :qid |stdinbpl.336:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3512| s1@@10 m@@0) (|Seq#Append_3512| s0@@10 s1@@10))
)))
(assert (forall ((o_48@@4 T@Ref) (f_66 T@Field_25601_25602) (Heap@@16 T@PolymorphicMapType_25528) ) (!  (=> (select (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| Heap@@16) o_48@@4 $allocated) (select (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| Heap@@16) (select (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| Heap@@16) o_48@@4 f_66) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| Heap@@16) o_48@@4 f_66))
)))
(assert (forall ((s@@29 T@Seq_31705) (x@@3 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_17549| s@@29))) (= (|Seq#Index_17549| s@@29 i@@9) x@@3)) (|Seq#Contains_31705| s@@29 x@@3))
 :qid |stdinbpl.488:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_31705| s@@29 x@@3) (|Seq#Index_17549| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_3512) (x@@4 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_3512| s@@30))) (= (|Seq#Index_3512| s@@30 i@@10) x@@4)) (|Seq#Contains_3512| s@@30 x@@4))
 :qid |stdinbpl.488:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3512| s@@30 x@@4) (|Seq#Index_3512| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_31705) (s1@@11 T@Seq_31705) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_31705| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_31705| s0@@11 s1@@11))) (not (= (|Seq#Length_17549| s0@@11) (|Seq#Length_17549| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_31705| s0@@11 s1@@11))) (= (|Seq#Length_17549| s0@@11) (|Seq#Length_17549| s1@@11))) (= (|Seq#SkolemDiff_31705| s0@@11 s1@@11) (|Seq#SkolemDiff_31705| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_31705| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_31705| s0@@11 s1@@11) (|Seq#Length_17549| s0@@11))) (not (= (|Seq#Index_17549| s0@@11 (|Seq#SkolemDiff_31705| s0@@11 s1@@11)) (|Seq#Index_17549| s1@@11 (|Seq#SkolemDiff_31705| s0@@11 s1@@11))))))
 :qid |stdinbpl.592:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_31705| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3512) (s1@@12 T@Seq_3512) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3512| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3512| s0@@12 s1@@12))) (not (= (|Seq#Length_3512| s0@@12) (|Seq#Length_3512| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3512| s0@@12 s1@@12))) (= (|Seq#Length_3512| s0@@12) (|Seq#Length_3512| s1@@12))) (= (|Seq#SkolemDiff_3512| s0@@12 s1@@12) (|Seq#SkolemDiff_3512| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3512| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3512| s0@@12 s1@@12) (|Seq#Length_3512| s0@@12))) (not (= (|Seq#Index_3512| s0@@12 (|Seq#SkolemDiff_3512| s0@@12 s1@@12)) (|Seq#Index_3512| s1@@12 (|Seq#SkolemDiff_3512| s0@@12 s1@@12))))))
 :qid |stdinbpl.592:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3512| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_17539_73985) (v_1@@0 T@FrameType) (q T@Field_17539_73985) (w@@0 T@FrameType) (r T@Field_17539_73985) (u T@FrameType) ) (!  (=> (and (InsidePredicate_25588_25588 p@@1 v_1@@0 q w@@0) (InsidePredicate_25588_25588 q w@@0 r u)) (InsidePredicate_25588_25588 p@@1 v_1@@0 r u))
 :qid |stdinbpl.259:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25588_25588 p@@1 v_1@@0 q w@@0) (InsidePredicate_25588_25588 q w@@0 r u))
)))
(assert (forall ((s@@31 T@Seq_31705) ) (!  (=> (= (|Seq#Length_17549| s@@31) 0) (= s@@31 |Seq#Empty_17549|))
 :qid |stdinbpl.295:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_17549| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3512) ) (!  (=> (= (|Seq#Length_3512| s@@32) 0) (= s@@32 |Seq#Empty_3512|))
 :qid |stdinbpl.295:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3512| s@@32))
)))
(assert (forall ((s@@33 T@Seq_31705) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_17549| s@@33 n@@25) |Seq#Empty_17549|))
 :qid |stdinbpl.471:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_17549| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3512) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3512| s@@34 n@@26) |Seq#Empty_3512|))
 :qid |stdinbpl.471:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3512| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun len_3 () Int)
(declare-fun i_25 () Int)
(declare-fun cr () T@Seq_31705)
(declare-fun br () T@Seq_31705)
(declare-fun qpRange16 (T@Ref) Bool)
(declare-fun invRecv16 (T@Ref) Int)
(declare-fun QPMask@14 () T@PolymorphicMapType_25549)
(declare-fun QPMask@13 () T@PolymorphicMapType_25549)
(declare-fun PostHeap@0 () T@PolymorphicMapType_25528)
(declare-fun i_24 () Int)
(declare-fun ar_1 () T@Seq_31705)
(declare-fun qpRange15 (T@Ref) Bool)
(declare-fun invRecv15 (T@Ref) Int)
(declare-fun i_23 () Int)
(declare-fun i_27_2 () Int)
(declare-fun j_10_2 () Int)
(declare-fun neverTriggered23 (Int) Bool)
(declare-fun QPMask@4 () T@PolymorphicMapType_25549)
(declare-fun qpRange23 (T@Ref) Bool)
(declare-fun invRecv23 (T@Ref) Int)
(declare-fun QPMask@5 () T@PolymorphicMapType_25549)
(declare-fun Heap@@17 () T@PolymorphicMapType_25528)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_25528)
(declare-fun qpRange24 (T@Ref) Bool)
(declare-fun invRecv24 (T@Ref) Int)
(declare-fun QPMask@6 () T@PolymorphicMapType_25549)
(declare-fun qpRange25 (T@Ref) Bool)
(declare-fun invRecv25 (T@Ref) Int)
(declare-fun QPMask@7 () T@PolymorphicMapType_25549)
(declare-fun qpRange26 (T@Ref) Bool)
(declare-fun invRecv26 (T@Ref) Int)
(declare-fun QPMask@8 () T@PolymorphicMapType_25549)
(declare-fun qpRange27 (T@Ref) Bool)
(declare-fun invRecv27 (T@Ref) Int)
(declare-fun QPMask@9 () T@PolymorphicMapType_25549)
(declare-fun perm@0 () Real)
(declare-fun Mask@0 () T@PolymorphicMapType_25549)
(declare-fun neverTriggered18 (Int) Bool)
(declare-fun qpRange18 (T@Ref) Bool)
(declare-fun invRecv18 (T@Ref) Int)
(declare-fun QPMask@10 () T@PolymorphicMapType_25549)
(declare-fun dummyFunction_3634 (Int) Bool)
(declare-fun neverTriggered19 (Int) Bool)
(declare-fun qpRange19 (T@Ref) Bool)
(declare-fun invRecv19 (T@Ref) Int)
(declare-fun QPMask@11 () T@PolymorphicMapType_25549)
(declare-fun neverTriggered20 (Int) Bool)
(declare-fun neverTriggered22 (Int) Bool)
(declare-fun QPMask@3 () T@PolymorphicMapType_25549)
(declare-fun qpRange22 (T@Ref) Bool)
(declare-fun invRecv22 (T@Ref) Int)
(declare-fun i_24_1 () Int)
(declare-fun j_8_2 () Int)
(declare-fun neverTriggered21 (Int) Bool)
(declare-fun QPMask@2 () T@PolymorphicMapType_25549)
(declare-fun qpRange21 (T@Ref) Bool)
(declare-fun invRecv21 (T@Ref) Int)
(declare-fun i_21_1 () Int)
(declare-fun j_6_2 () Int)
(declare-fun qpRange14 (T@Ref) Bool)
(declare-fun invRecv14 (T@Ref) Int)
(declare-fun QPMask@1 () T@PolymorphicMapType_25549)
(declare-fun i_13 () Int)
(declare-fun i_12 () Int)
(declare-fun j_23 () Int)
(declare-fun qpRange13 (T@Ref) Bool)
(declare-fun invRecv13 (T@Ref) Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_25549)
(declare-fun i_11 () Int)
(declare-fun i_17 () Int)
(declare-fun j_22 () Int)
(declare-fun qpRange12 (T@Ref) Bool)
(declare-fun invRecv12 (T@Ref) Int)
(declare-fun i_10 () Int)
(declare-fun i_9 () Int)
(declare-fun j_7 () Int)
(declare-fun this () T@Ref)
(set-info :boogie-vc-id zero_array)
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
 (=> (= (ControlFlow 0 0) 119) (let ((anon36_correct true))
(let ((anon69_Else_correct  (=> (and (not (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_25)) (= (ControlFlow 0 101) 97)) anon36_correct)))
(let ((anon69_Then_correct  (=> (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_25) (and (=> (= (ControlFlow 0 98) (- 0 100)) (>= i_25 0)) (=> (>= i_25 0) (and (=> (= (ControlFlow 0 98) (- 0 99)) (< i_25 (|Seq#Length_17549| cr))) (=> (< i_25 (|Seq#Length_17549| cr)) (=> (= (ControlFlow 0 98) 97) anon36_correct))))))))
(let ((anon68_Else_correct  (=> (= (ControlFlow 0 96) (- 0 95)) (forall ((i_17_1 Int) (i_17_2 Int) ) (!  (=> (and (and (and (and (not (= i_17_1 i_17_2)) (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_17_1)) (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_17_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17549| cr i_17_1) (|Seq#Index_17549| cr i_17_2))))
 :qid |stdinbpl.2168:15|
 :skolemid |169|
)))))
(let ((anon66_Else_correct  (and (=> (= (ControlFlow 0 102) (- 0 104)) (forall ((i_15_1 Int) (i_15_2 Int) ) (!  (=> (and (and (and (and (not (= i_15_1 i_15_2)) (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_15_1)) (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_15_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_17549| br i_15_1) (|Seq#Index_17549| br i_15_2))))
 :qid |stdinbpl.2114:15|
 :skolemid |162|
))) (=> (forall ((i_15_1@@0 Int) (i_15_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_15_1@@0 i_15_2@@0)) (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_15_1@@0)) (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_15_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_17549| br i_15_1@@0) (|Seq#Index_17549| br i_15_2@@0))))
 :qid |stdinbpl.2114:15|
 :skolemid |162|
)) (=> (and (forall ((i_15_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_15_1@@1) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange16 (|Seq#Index_17549| br i_15_1@@1)) (= (invRecv16 (|Seq#Index_17549| br i_15_1@@1)) i_15_1@@1)))
 :qid |stdinbpl.2120:22|
 :skolemid |163|
 :pattern ( (|Seq#Index_17549| br i_15_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3512| (|Seq#Range| 0 len_3) i_15_1@@1))
 :pattern ( (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_15_1@@1))
 :pattern ( (|Seq#Index_17549| br i_15_1@@1))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3512| (|Seq#Range| 0 len_3) (invRecv16 o_9)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange16 o_9)) (= (|Seq#Index_17549| br (invRecv16 o_9)) o_9))
 :qid |stdinbpl.2124:22|
 :skolemid |164|
 :pattern ( (invRecv16 o_9))
))) (and (=> (= (ControlFlow 0 102) (- 0 103)) (forall ((i_15_1@@2 Int) ) (!  (=> (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_15_1@@2) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2130:15|
 :skolemid |165|
 :pattern ( (|Seq#Index_17549| br i_15_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3512| (|Seq#Range| 0 len_3) i_15_1@@2))
 :pattern ( (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_15_1@@2))
 :pattern ( (|Seq#Index_17549| br i_15_1@@2))
))) (=> (forall ((i_15_1@@3 Int) ) (!  (=> (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_15_1@@3) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2130:15|
 :skolemid |165|
 :pattern ( (|Seq#Index_17549| br i_15_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3512| (|Seq#Range| 0 len_3) i_15_1@@3))
 :pattern ( (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_15_1@@3))
 :pattern ( (|Seq#Index_17549| br i_15_1@@3))
)) (=> (and (forall ((i_15_1@@4 Int) ) (!  (=> (and (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_15_1@@4) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= (|Seq#Index_17549| br i_15_1@@4) null)))
 :qid |stdinbpl.2136:22|
 :skolemid |166|
 :pattern ( (|Seq#Index_17549| br i_15_1@@4))
 :pattern ( (|Seq#ContainsTrigger_3512| (|Seq#Range| 0 len_3) i_15_1@@4))
 :pattern ( (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_15_1@@4))
 :pattern ( (|Seq#Index_17549| br i_15_1@@4))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3512| (|Seq#Range| 0 len_3) (invRecv16 o_9@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange16 o_9@@0)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (|Seq#Index_17549| br (invRecv16 o_9@@0)) o_9@@0)) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@14) o_9@@0 Integer_value) (+ (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@13) o_9@@0 Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (|Seq#Contains_3512| (|Seq#Range| 0 len_3) (invRecv16 o_9@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange16 o_9@@0))) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@14) o_9@@0 Integer_value) (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@13) o_9@@0 Integer_value))))
 :qid |stdinbpl.2142:22|
 :skolemid |167|
 :pattern ( (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@14) o_9@@0 Integer_value))
))) (=> (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_25588_53) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@13) o_9@@1 f_5) (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@14) o_9@@1 f_5)))
 :qid |stdinbpl.2146:29|
 :skolemid |168|
 :pattern ( (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@13) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@14) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_25601_25602) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@13) o_9@@2 f_5@@0) (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@14) o_9@@2 f_5@@0)))
 :qid |stdinbpl.2146:29|
 :skolemid |168|
 :pattern ( (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@13) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@14) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_31659_3634) ) (!  (=> (not (= f_5@@1 Integer_value)) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@13) o_9@@3 f_5@@1) (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@14) o_9@@3 f_5@@1)))
 :qid |stdinbpl.2146:29|
 :skolemid |168|
 :pattern ( (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@13) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@14) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_17539_73985) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@13) o_9@@4 f_5@@2) (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@14) o_9@@4 f_5@@2)))
 :qid |stdinbpl.2146:29|
 :skolemid |168|
 :pattern ( (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@13) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@14) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_17539_74118) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@13) o_9@@5 f_5@@3) (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@14) o_9@@5 f_5@@3)))
 :qid |stdinbpl.2146:29|
 :skolemid |168|
 :pattern ( (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@13) o_9@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@14) o_9@@5 f_5@@3))
))) (and (and (state PostHeap@0 QPMask@14) (state PostHeap@0 QPMask@14)) (and (= (|Seq#Length_17549| cr) len_3) (state PostHeap@0 QPMask@14)))) (and (and (=> (= (ControlFlow 0 102) 96) anon68_Else_correct) (=> (= (ControlFlow 0 102) 98) anon69_Then_correct)) (=> (= (ControlFlow 0 102) 101) anon69_Else_correct)))))))))))
(let ((anon32_correct true))
(let ((anon67_Else_correct  (=> (and (not (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_24)) (= (ControlFlow 0 94) 90)) anon32_correct)))
(let ((anon67_Then_correct  (=> (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_24) (and (=> (= (ControlFlow 0 91) (- 0 93)) (>= i_24 0)) (=> (>= i_24 0) (and (=> (= (ControlFlow 0 91) (- 0 92)) (< i_24 (|Seq#Length_17549| br))) (=> (< i_24 (|Seq#Length_17549| br)) (=> (= (ControlFlow 0 91) 90) anon32_correct))))))))
(let ((anon64_Else_correct  (and (=> (= (ControlFlow 0 105) (- 0 106)) (forall ((i_13_1 Int) (i_13_2 Int) ) (!  (=> (and (and (and (and (not (= i_13_1 i_13_2)) (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_13_1)) (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_13_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17549| ar_1 i_13_1) (|Seq#Index_17549| ar_1 i_13_2))))
 :qid |stdinbpl.2066:15|
 :skolemid |156|
))) (=> (forall ((i_13_1@@0 Int) (i_13_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_13_1@@0 i_13_2@@0)) (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_13_1@@0)) (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_13_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17549| ar_1 i_13_1@@0) (|Seq#Index_17549| ar_1 i_13_2@@0))))
 :qid |stdinbpl.2066:15|
 :skolemid |156|
)) (=> (and (and (forall ((i_13_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_13_1@@1) (< NoPerm FullPerm)) (and (qpRange15 (|Seq#Index_17549| ar_1 i_13_1@@1)) (= (invRecv15 (|Seq#Index_17549| ar_1 i_13_1@@1)) i_13_1@@1)))
 :qid |stdinbpl.2072:22|
 :skolemid |157|
 :pattern ( (|Seq#Index_17549| ar_1 i_13_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3512| (|Seq#Range| 0 len_3) i_13_1@@1))
 :pattern ( (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_13_1@@1))
 :pattern ( (|Seq#Index_17549| ar_1 i_13_1@@1))
)) (forall ((o_9@@6 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3512| (|Seq#Range| 0 len_3) (invRecv15 o_9@@6)) (< NoPerm FullPerm)) (qpRange15 o_9@@6)) (= (|Seq#Index_17549| ar_1 (invRecv15 o_9@@6)) o_9@@6))
 :qid |stdinbpl.2076:22|
 :skolemid |158|
 :pattern ( (invRecv15 o_9@@6))
))) (and (forall ((i_13_1@@2 Int) ) (!  (=> (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_13_1@@2) (not (= (|Seq#Index_17549| ar_1 i_13_1@@2) null)))
 :qid |stdinbpl.2082:22|
 :skolemid |159|
 :pattern ( (|Seq#Index_17549| ar_1 i_13_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3512| (|Seq#Range| 0 len_3) i_13_1@@2))
 :pattern ( (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_13_1@@2))
 :pattern ( (|Seq#Index_17549| ar_1 i_13_1@@2))
)) (forall ((o_9@@7 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3512| (|Seq#Range| 0 len_3) (invRecv15 o_9@@7)) (< NoPerm FullPerm)) (qpRange15 o_9@@7)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_17549| ar_1 (invRecv15 o_9@@7)) o_9@@7)) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@13) o_9@@7 Integer_value) (+ (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| ZeroMask) o_9@@7 Integer_value) FullPerm)))) (=> (not (and (and (|Seq#Contains_3512| (|Seq#Range| 0 len_3) (invRecv15 o_9@@7)) (< NoPerm FullPerm)) (qpRange15 o_9@@7))) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@13) o_9@@7 Integer_value) (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| ZeroMask) o_9@@7 Integer_value))))
 :qid |stdinbpl.2088:22|
 :skolemid |160|
 :pattern ( (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@13) o_9@@7 Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_9@@8 T@Ref) (f_5@@4 T@Field_25588_53) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| ZeroMask) o_9@@8 f_5@@4) (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@13) o_9@@8 f_5@@4)))
 :qid |stdinbpl.2092:29|
 :skolemid |161|
 :pattern ( (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| ZeroMask) o_9@@8 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@13) o_9@@8 f_5@@4))
)) (forall ((o_9@@9 T@Ref) (f_5@@5 T@Field_25601_25602) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| ZeroMask) o_9@@9 f_5@@5) (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@13) o_9@@9 f_5@@5)))
 :qid |stdinbpl.2092:29|
 :skolemid |161|
 :pattern ( (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| ZeroMask) o_9@@9 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@13) o_9@@9 f_5@@5))
))) (forall ((o_9@@10 T@Ref) (f_5@@6 T@Field_31659_3634) ) (!  (=> (not (= f_5@@6 Integer_value)) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| ZeroMask) o_9@@10 f_5@@6) (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@13) o_9@@10 f_5@@6)))
 :qid |stdinbpl.2092:29|
 :skolemid |161|
 :pattern ( (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| ZeroMask) o_9@@10 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@13) o_9@@10 f_5@@6))
))) (forall ((o_9@@11 T@Ref) (f_5@@7 T@Field_17539_73985) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| ZeroMask) o_9@@11 f_5@@7) (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@13) o_9@@11 f_5@@7)))
 :qid |stdinbpl.2092:29|
 :skolemid |161|
 :pattern ( (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| ZeroMask) o_9@@11 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@13) o_9@@11 f_5@@7))
))) (forall ((o_9@@12 T@Ref) (f_5@@8 T@Field_17539_74118) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| ZeroMask) o_9@@12 f_5@@8) (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@13) o_9@@12 f_5@@8)))
 :qid |stdinbpl.2092:29|
 :skolemid |161|
 :pattern ( (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| ZeroMask) o_9@@12 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@13) o_9@@12 f_5@@8))
))) (and (and (state PostHeap@0 QPMask@13) (state PostHeap@0 QPMask@13)) (and (= (|Seq#Length_17549| br) len_3) (state PostHeap@0 QPMask@13)))) (and (and (=> (= (ControlFlow 0 105) 102) anon66_Else_correct) (=> (= (ControlFlow 0 105) 91) anon67_Then_correct)) (=> (= (ControlFlow 0 105) 94) anon67_Else_correct))))))))
(let ((anon28_correct true))
(let ((anon65_Else_correct  (=> (and (not (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_23)) (= (ControlFlow 0 89) 85)) anon28_correct)))
(let ((anon65_Then_correct  (=> (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_23) (and (=> (= (ControlFlow 0 86) (- 0 88)) (>= i_23 0)) (=> (>= i_23 0) (and (=> (= (ControlFlow 0 86) (- 0 87)) (< i_23 (|Seq#Length_17549| ar_1))) (=> (< i_23 (|Seq#Length_17549| ar_1)) (=> (= (ControlFlow 0 86) 85) anon28_correct))))))))
(let ((anon63_Then_correct  (=> (state PostHeap@0 ZeroMask) (=> (and (= (|Seq#Length_17549| ar_1) len_3) (state PostHeap@0 ZeroMask)) (and (and (=> (= (ControlFlow 0 107) 105) anon64_Else_correct) (=> (= (ControlFlow 0 107) 86) anon65_Then_correct)) (=> (= (ControlFlow 0 107) 89) anon65_Else_correct))))))
(let ((anon49_correct true))
(let ((anon75_Else_correct  (=> (and (not (and (<= 0 i_27_2) (and (< i_27_2 (|Seq#Length_17549| cr)) (and (<= 0 j_10_2) (and (< j_10_2 (|Seq#Length_17549| cr)) (not (= i_27_2 j_10_2))))))) (= (ControlFlow 0 69) 66)) anon49_correct)))
(let ((anon75_Then_correct  (=> (and (<= 0 i_27_2) (and (< i_27_2 (|Seq#Length_17549| cr)) (and (<= 0 j_10_2) (and (< j_10_2 (|Seq#Length_17549| cr)) (not (= i_27_2 j_10_2)))))) (and (=> (= (ControlFlow 0 67) (- 0 68)) (not (= (|Seq#Index_17549| cr i_27_2) (|Seq#Index_17549| cr j_10_2)))) (=> (not (= (|Seq#Index_17549| cr i_27_2) (|Seq#Index_17549| cr j_10_2))) (=> (= (ControlFlow 0 67) 66) anon49_correct))))))
(let ((anon74_Else_correct  (=> (forall ((i_28_1 Int) (j_11_1_1 Int) ) (!  (=> (and (<= 0 i_28_1) (and (< i_28_1 (|Seq#Length_17549| cr)) (and (<= 0 j_11_1_1) (and (< j_11_1_1 (|Seq#Length_17549| cr)) (not (= i_28_1 j_11_1_1)))))) (not (= (|Seq#Index_17549| cr i_28_1) (|Seq#Index_17549| cr j_11_1_1))))
 :qid |stdinbpl.2356:22|
 :skolemid |190|
 :pattern ( (|Seq#Index_17549| cr i_28_1) (|Seq#Index_17549| cr j_11_1_1))
)) (and (=> (= (ControlFlow 0 46) (- 0 65)) (forall ((i_29 Int) (i_29_2 Int) ) (!  (=> (and (and (and (and (not (= i_29 i_29_2)) (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_29)) (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_29_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17549| cr i_29) (|Seq#Index_17549| cr i_29_2))))
 :qid |stdinbpl.2367:19|
 :skolemid |191|
 :pattern ( (neverTriggered23 i_29) (neverTriggered23 i_29_2))
))) (=> (forall ((i_29@@0 Int) (i_29_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_29@@0 i_29_2@@0)) (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_29@@0)) (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_29_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17549| cr i_29@@0) (|Seq#Index_17549| cr i_29_2@@0))))
 :qid |stdinbpl.2367:19|
 :skolemid |191|
 :pattern ( (neverTriggered23 i_29@@0) (neverTriggered23 i_29_2@@0))
)) (and (=> (= (ControlFlow 0 46) (- 0 64)) (forall ((i_29@@1 Int) ) (!  (=> (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_29@@1) (>= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@4) (|Seq#Index_17549| cr i_29@@1) Integer_value) FullPerm))
 :qid |stdinbpl.2374:19|
 :skolemid |192|
 :pattern ( (|Seq#Index_17549| cr i_29@@1))
 :pattern ( (|Seq#ContainsTrigger_3512| (|Seq#Range| 0 len_3) i_29@@1))
 :pattern ( (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_29@@1))
 :pattern ( (|Seq#Index_17549| cr i_29@@1))
))) (=> (forall ((i_29@@2 Int) ) (!  (=> (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_29@@2) (>= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@4) (|Seq#Index_17549| cr i_29@@2) Integer_value) FullPerm))
 :qid |stdinbpl.2374:19|
 :skolemid |192|
 :pattern ( (|Seq#Index_17549| cr i_29@@2))
 :pattern ( (|Seq#ContainsTrigger_3512| (|Seq#Range| 0 len_3) i_29@@2))
 :pattern ( (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_29@@2))
 :pattern ( (|Seq#Index_17549| cr i_29@@2))
)) (=> (forall ((i_29@@3 Int) ) (!  (=> (and (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_29@@3) (< NoPerm FullPerm)) (and (qpRange23 (|Seq#Index_17549| cr i_29@@3)) (= (invRecv23 (|Seq#Index_17549| cr i_29@@3)) i_29@@3)))
 :qid |stdinbpl.2380:24|
 :skolemid |193|
 :pattern ( (|Seq#Index_17549| cr i_29@@3))
 :pattern ( (|Seq#ContainsTrigger_3512| (|Seq#Range| 0 len_3) i_29@@3))
 :pattern ( (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_29@@3))
 :pattern ( (|Seq#Index_17549| cr i_29@@3))
)) (=> (and (forall ((o_9@@13 T@Ref) ) (!  (=> (and (|Seq#Contains_3512| (|Seq#Range| 0 len_3) (invRecv23 o_9@@13)) (and (< NoPerm FullPerm) (qpRange23 o_9@@13))) (= (|Seq#Index_17549| cr (invRecv23 o_9@@13)) o_9@@13))
 :qid |stdinbpl.2384:24|
 :skolemid |194|
 :pattern ( (invRecv23 o_9@@13))
)) (forall ((o_9@@14 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3512| (|Seq#Range| 0 len_3) (invRecv23 o_9@@14)) (and (< NoPerm FullPerm) (qpRange23 o_9@@14))) (and (= (|Seq#Index_17549| cr (invRecv23 o_9@@14)) o_9@@14) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@5) o_9@@14 Integer_value) (- (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@4) o_9@@14 Integer_value) FullPerm)))) (=> (not (and (|Seq#Contains_3512| (|Seq#Range| 0 len_3) (invRecv23 o_9@@14)) (and (< NoPerm FullPerm) (qpRange23 o_9@@14)))) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@5) o_9@@14 Integer_value) (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@4) o_9@@14 Integer_value))))
 :qid |stdinbpl.2390:24|
 :skolemid |195|
 :pattern ( (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@5) o_9@@14 Integer_value))
))) (=> (and (and (and (and (and (forall ((o_9@@15 T@Ref) (f_5@@9 T@Field_25588_53) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@4) o_9@@15 f_5@@9) (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@5) o_9@@15 f_5@@9)))
 :qid |stdinbpl.2396:31|
 :skolemid |196|
 :pattern ( (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@5) o_9@@15 f_5@@9))
)) (forall ((o_9@@16 T@Ref) (f_5@@10 T@Field_25601_25602) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@4) o_9@@16 f_5@@10) (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@5) o_9@@16 f_5@@10)))
 :qid |stdinbpl.2396:31|
 :skolemid |196|
 :pattern ( (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@5) o_9@@16 f_5@@10))
))) (forall ((o_9@@17 T@Ref) (f_5@@11 T@Field_31659_3634) ) (!  (=> (not (= f_5@@11 Integer_value)) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@4) o_9@@17 f_5@@11) (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@5) o_9@@17 f_5@@11)))
 :qid |stdinbpl.2396:31|
 :skolemid |196|
 :pattern ( (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@5) o_9@@17 f_5@@11))
))) (forall ((o_9@@18 T@Ref) (f_5@@12 T@Field_17539_73985) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@4) o_9@@18 f_5@@12) (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@5) o_9@@18 f_5@@12)))
 :qid |stdinbpl.2396:31|
 :skolemid |196|
 :pattern ( (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@5) o_9@@18 f_5@@12))
))) (forall ((o_9@@19 T@Ref) (f_5@@13 T@Field_17539_74118) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@4) o_9@@19 f_5@@13) (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@5) o_9@@19 f_5@@13)))
 :qid |stdinbpl.2396:31|
 :skolemid |196|
 :pattern ( (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@5) o_9@@19 f_5@@13))
))) (and (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@0 QPMask@5) (= (|Seq#Length_17549| ar_1) len_3))) (and (=> (= (ControlFlow 0 46) (- 0 63)) (forall ((i_30 Int) (i_30_1 Int) ) (!  (=> (and (and (and (and (not (= i_30 i_30_1)) (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_30)) (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_30_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_17549| ar_1 i_30) (|Seq#Index_17549| ar_1 i_30_1))))
 :qid |stdinbpl.2410:17|
 :skolemid |197|
))) (=> (forall ((i_30@@0 Int) (i_30_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_30@@0 i_30_1@@0)) (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_30@@0)) (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_30_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_17549| ar_1 i_30@@0) (|Seq#Index_17549| ar_1 i_30_1@@0))))
 :qid |stdinbpl.2410:17|
 :skolemid |197|
)) (=> (and (forall ((i_30@@1 Int) ) (!  (=> (and (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_30@@1) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange24 (|Seq#Index_17549| ar_1 i_30@@1)) (= (invRecv24 (|Seq#Index_17549| ar_1 i_30@@1)) i_30@@1)))
 :qid |stdinbpl.2416:24|
 :skolemid |198|
 :pattern ( (|Seq#Index_17549| ar_1 i_30@@1))
 :pattern ( (|Seq#ContainsTrigger_3512| (|Seq#Range| 0 len_3) i_30@@1))
 :pattern ( (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_30@@1))
 :pattern ( (|Seq#Index_17549| ar_1 i_30@@1))
)) (forall ((o_9@@20 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3512| (|Seq#Range| 0 len_3) (invRecv24 o_9@@20)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange24 o_9@@20)) (= (|Seq#Index_17549| ar_1 (invRecv24 o_9@@20)) o_9@@20))
 :qid |stdinbpl.2420:24|
 :skolemid |199|
 :pattern ( (invRecv24 o_9@@20))
))) (and (=> (= (ControlFlow 0 46) (- 0 62)) (forall ((i_30@@2 Int) ) (!  (=> (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_30@@2) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2426:17|
 :skolemid |200|
 :pattern ( (|Seq#Index_17549| ar_1 i_30@@2))
 :pattern ( (|Seq#ContainsTrigger_3512| (|Seq#Range| 0 len_3) i_30@@2))
 :pattern ( (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_30@@2))
 :pattern ( (|Seq#Index_17549| ar_1 i_30@@2))
))) (=> (forall ((i_30@@3 Int) ) (!  (=> (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_30@@3) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2426:17|
 :skolemid |200|
 :pattern ( (|Seq#Index_17549| ar_1 i_30@@3))
 :pattern ( (|Seq#ContainsTrigger_3512| (|Seq#Range| 0 len_3) i_30@@3))
 :pattern ( (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_30@@3))
 :pattern ( (|Seq#Index_17549| ar_1 i_30@@3))
)) (=> (and (forall ((i_30@@4 Int) ) (!  (=> (and (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_30@@4) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= (|Seq#Index_17549| ar_1 i_30@@4) null)))
 :qid |stdinbpl.2432:24|
 :skolemid |201|
 :pattern ( (|Seq#Index_17549| ar_1 i_30@@4))
 :pattern ( (|Seq#ContainsTrigger_3512| (|Seq#Range| 0 len_3) i_30@@4))
 :pattern ( (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_30@@4))
 :pattern ( (|Seq#Index_17549| ar_1 i_30@@4))
)) (forall ((o_9@@21 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3512| (|Seq#Range| 0 len_3) (invRecv24 o_9@@21)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange24 o_9@@21)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (|Seq#Index_17549| ar_1 (invRecv24 o_9@@21)) o_9@@21)) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@6) o_9@@21 Integer_value) (+ (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@5) o_9@@21 Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (|Seq#Contains_3512| (|Seq#Range| 0 len_3) (invRecv24 o_9@@21)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange24 o_9@@21))) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@6) o_9@@21 Integer_value) (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@5) o_9@@21 Integer_value))))
 :qid |stdinbpl.2438:24|
 :skolemid |202|
 :pattern ( (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@6) o_9@@21 Integer_value))
))) (=> (and (and (and (and (and (forall ((o_9@@22 T@Ref) (f_5@@14 T@Field_25588_53) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@5) o_9@@22 f_5@@14) (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@6) o_9@@22 f_5@@14)))
 :qid |stdinbpl.2442:31|
 :skolemid |203|
 :pattern ( (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@5) o_9@@22 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@6) o_9@@22 f_5@@14))
)) (forall ((o_9@@23 T@Ref) (f_5@@15 T@Field_25601_25602) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@5) o_9@@23 f_5@@15) (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@6) o_9@@23 f_5@@15)))
 :qid |stdinbpl.2442:31|
 :skolemid |203|
 :pattern ( (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@5) o_9@@23 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@6) o_9@@23 f_5@@15))
))) (forall ((o_9@@24 T@Ref) (f_5@@16 T@Field_31659_3634) ) (!  (=> (not (= f_5@@16 Integer_value)) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@5) o_9@@24 f_5@@16) (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@6) o_9@@24 f_5@@16)))
 :qid |stdinbpl.2442:31|
 :skolemid |203|
 :pattern ( (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@5) o_9@@24 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@6) o_9@@24 f_5@@16))
))) (forall ((o_9@@25 T@Ref) (f_5@@17 T@Field_17539_73985) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@5) o_9@@25 f_5@@17) (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@6) o_9@@25 f_5@@17)))
 :qid |stdinbpl.2442:31|
 :skolemid |203|
 :pattern ( (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@5) o_9@@25 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@6) o_9@@25 f_5@@17))
))) (forall ((o_9@@26 T@Ref) (f_5@@18 T@Field_17539_74118) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@5) o_9@@26 f_5@@18) (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@6) o_9@@26 f_5@@18)))
 :qid |stdinbpl.2442:31|
 :skolemid |203|
 :pattern ( (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@5) o_9@@26 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@6) o_9@@26 f_5@@18))
))) (and (state ExhaleHeap@0 QPMask@6) (= (|Seq#Length_17549| br) len_3))) (and (=> (= (ControlFlow 0 46) (- 0 61)) (forall ((i_31 Int) (i_31_2 Int) ) (!  (=> (and (and (and (and (not (= i_31 i_31_2)) (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_31)) (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_31_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_17549| br i_31) (|Seq#Index_17549| br i_31_2))))
 :qid |stdinbpl.2451:17|
 :skolemid |204|
))) (=> (forall ((i_31@@0 Int) (i_31_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_31@@0 i_31_2@@0)) (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_31@@0)) (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_31_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_17549| br i_31@@0) (|Seq#Index_17549| br i_31_2@@0))))
 :qid |stdinbpl.2451:17|
 :skolemid |204|
)) (=> (and (forall ((i_31@@1 Int) ) (!  (=> (and (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_31@@1) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange25 (|Seq#Index_17549| br i_31@@1)) (= (invRecv25 (|Seq#Index_17549| br i_31@@1)) i_31@@1)))
 :qid |stdinbpl.2457:24|
 :skolemid |205|
 :pattern ( (|Seq#Index_17549| br i_31@@1))
 :pattern ( (|Seq#ContainsTrigger_3512| (|Seq#Range| 0 len_3) i_31@@1))
 :pattern ( (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_31@@1))
 :pattern ( (|Seq#Index_17549| br i_31@@1))
)) (forall ((o_9@@27 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3512| (|Seq#Range| 0 len_3) (invRecv25 o_9@@27)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange25 o_9@@27)) (= (|Seq#Index_17549| br (invRecv25 o_9@@27)) o_9@@27))
 :qid |stdinbpl.2461:24|
 :skolemid |206|
 :pattern ( (invRecv25 o_9@@27))
))) (and (=> (= (ControlFlow 0 46) (- 0 60)) (forall ((i_31@@2 Int) ) (!  (=> (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_31@@2) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2467:17|
 :skolemid |207|
 :pattern ( (|Seq#Index_17549| br i_31@@2))
 :pattern ( (|Seq#ContainsTrigger_3512| (|Seq#Range| 0 len_3) i_31@@2))
 :pattern ( (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_31@@2))
 :pattern ( (|Seq#Index_17549| br i_31@@2))
))) (=> (forall ((i_31@@3 Int) ) (!  (=> (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_31@@3) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2467:17|
 :skolemid |207|
 :pattern ( (|Seq#Index_17549| br i_31@@3))
 :pattern ( (|Seq#ContainsTrigger_3512| (|Seq#Range| 0 len_3) i_31@@3))
 :pattern ( (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_31@@3))
 :pattern ( (|Seq#Index_17549| br i_31@@3))
)) (=> (and (forall ((i_31@@4 Int) ) (!  (=> (and (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_31@@4) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= (|Seq#Index_17549| br i_31@@4) null)))
 :qid |stdinbpl.2473:24|
 :skolemid |208|
 :pattern ( (|Seq#Index_17549| br i_31@@4))
 :pattern ( (|Seq#ContainsTrigger_3512| (|Seq#Range| 0 len_3) i_31@@4))
 :pattern ( (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_31@@4))
 :pattern ( (|Seq#Index_17549| br i_31@@4))
)) (forall ((o_9@@28 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3512| (|Seq#Range| 0 len_3) (invRecv25 o_9@@28)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange25 o_9@@28)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (|Seq#Index_17549| br (invRecv25 o_9@@28)) o_9@@28)) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@7) o_9@@28 Integer_value) (+ (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@6) o_9@@28 Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (|Seq#Contains_3512| (|Seq#Range| 0 len_3) (invRecv25 o_9@@28)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange25 o_9@@28))) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@7) o_9@@28 Integer_value) (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@6) o_9@@28 Integer_value))))
 :qid |stdinbpl.2479:24|
 :skolemid |209|
 :pattern ( (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@7) o_9@@28 Integer_value))
))) (=> (and (and (and (and (and (forall ((o_9@@29 T@Ref) (f_5@@19 T@Field_25588_53) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@6) o_9@@29 f_5@@19) (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@7) o_9@@29 f_5@@19)))
 :qid |stdinbpl.2483:31|
 :skolemid |210|
 :pattern ( (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@6) o_9@@29 f_5@@19))
 :pattern ( (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@7) o_9@@29 f_5@@19))
)) (forall ((o_9@@30 T@Ref) (f_5@@20 T@Field_25601_25602) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@6) o_9@@30 f_5@@20) (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@7) o_9@@30 f_5@@20)))
 :qid |stdinbpl.2483:31|
 :skolemid |210|
 :pattern ( (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@6) o_9@@30 f_5@@20))
 :pattern ( (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@7) o_9@@30 f_5@@20))
))) (forall ((o_9@@31 T@Ref) (f_5@@21 T@Field_31659_3634) ) (!  (=> (not (= f_5@@21 Integer_value)) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@6) o_9@@31 f_5@@21) (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@7) o_9@@31 f_5@@21)))
 :qid |stdinbpl.2483:31|
 :skolemid |210|
 :pattern ( (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@6) o_9@@31 f_5@@21))
 :pattern ( (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@7) o_9@@31 f_5@@21))
))) (forall ((o_9@@32 T@Ref) (f_5@@22 T@Field_17539_73985) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@6) o_9@@32 f_5@@22) (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@7) o_9@@32 f_5@@22)))
 :qid |stdinbpl.2483:31|
 :skolemid |210|
 :pattern ( (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@6) o_9@@32 f_5@@22))
 :pattern ( (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@7) o_9@@32 f_5@@22))
))) (forall ((o_9@@33 T@Ref) (f_5@@23 T@Field_17539_74118) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@6) o_9@@33 f_5@@23) (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@7) o_9@@33 f_5@@23)))
 :qid |stdinbpl.2483:31|
 :skolemid |210|
 :pattern ( (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@6) o_9@@33 f_5@@23))
 :pattern ( (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@7) o_9@@33 f_5@@23))
))) (and (state ExhaleHeap@0 QPMask@7) (= (|Seq#Length_17549| cr) len_3))) (and (=> (= (ControlFlow 0 46) (- 0 59)) (forall ((i_32 Int) (i_32_1 Int) ) (!  (=> (and (and (and (and (not (= i_32 i_32_1)) (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_32)) (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_32_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17549| cr i_32) (|Seq#Index_17549| cr i_32_1))))
 :qid |stdinbpl.2492:17|
 :skolemid |211|
))) (=> (forall ((i_32@@0 Int) (i_32_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_32@@0 i_32_1@@0)) (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_32@@0)) (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_32_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17549| cr i_32@@0) (|Seq#Index_17549| cr i_32_1@@0))))
 :qid |stdinbpl.2492:17|
 :skolemid |211|
)) (=> (and (and (forall ((i_32@@1 Int) ) (!  (=> (and (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_32@@1) (< NoPerm FullPerm)) (and (qpRange26 (|Seq#Index_17549| cr i_32@@1)) (= (invRecv26 (|Seq#Index_17549| cr i_32@@1)) i_32@@1)))
 :qid |stdinbpl.2498:24|
 :skolemid |212|
 :pattern ( (|Seq#Index_17549| cr i_32@@1))
 :pattern ( (|Seq#ContainsTrigger_3512| (|Seq#Range| 0 len_3) i_32@@1))
 :pattern ( (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_32@@1))
 :pattern ( (|Seq#Index_17549| cr i_32@@1))
)) (forall ((o_9@@34 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3512| (|Seq#Range| 0 len_3) (invRecv26 o_9@@34)) (< NoPerm FullPerm)) (qpRange26 o_9@@34)) (= (|Seq#Index_17549| cr (invRecv26 o_9@@34)) o_9@@34))
 :qid |stdinbpl.2502:24|
 :skolemid |213|
 :pattern ( (invRecv26 o_9@@34))
))) (and (forall ((i_32@@2 Int) ) (!  (=> (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_32@@2) (not (= (|Seq#Index_17549| cr i_32@@2) null)))
 :qid |stdinbpl.2508:24|
 :skolemid |214|
 :pattern ( (|Seq#Index_17549| cr i_32@@2))
 :pattern ( (|Seq#ContainsTrigger_3512| (|Seq#Range| 0 len_3) i_32@@2))
 :pattern ( (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_32@@2))
 :pattern ( (|Seq#Index_17549| cr i_32@@2))
)) (forall ((o_9@@35 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3512| (|Seq#Range| 0 len_3) (invRecv26 o_9@@35)) (< NoPerm FullPerm)) (qpRange26 o_9@@35)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_17549| cr (invRecv26 o_9@@35)) o_9@@35)) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@8) o_9@@35 Integer_value) (+ (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@7) o_9@@35 Integer_value) FullPerm)))) (=> (not (and (and (|Seq#Contains_3512| (|Seq#Range| 0 len_3) (invRecv26 o_9@@35)) (< NoPerm FullPerm)) (qpRange26 o_9@@35))) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@8) o_9@@35 Integer_value) (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@7) o_9@@35 Integer_value))))
 :qid |stdinbpl.2514:24|
 :skolemid |215|
 :pattern ( (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@8) o_9@@35 Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_9@@36 T@Ref) (f_5@@24 T@Field_25588_53) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@7) o_9@@36 f_5@@24) (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@8) o_9@@36 f_5@@24)))
 :qid |stdinbpl.2518:31|
 :skolemid |216|
 :pattern ( (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@7) o_9@@36 f_5@@24))
 :pattern ( (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@8) o_9@@36 f_5@@24))
)) (forall ((o_9@@37 T@Ref) (f_5@@25 T@Field_25601_25602) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@7) o_9@@37 f_5@@25) (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@8) o_9@@37 f_5@@25)))
 :qid |stdinbpl.2518:31|
 :skolemid |216|
 :pattern ( (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@7) o_9@@37 f_5@@25))
 :pattern ( (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@8) o_9@@37 f_5@@25))
))) (forall ((o_9@@38 T@Ref) (f_5@@26 T@Field_31659_3634) ) (!  (=> (not (= f_5@@26 Integer_value)) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@7) o_9@@38 f_5@@26) (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@8) o_9@@38 f_5@@26)))
 :qid |stdinbpl.2518:31|
 :skolemid |216|
 :pattern ( (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@7) o_9@@38 f_5@@26))
 :pattern ( (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@8) o_9@@38 f_5@@26))
))) (forall ((o_9@@39 T@Ref) (f_5@@27 T@Field_17539_73985) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@7) o_9@@39 f_5@@27) (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@8) o_9@@39 f_5@@27)))
 :qid |stdinbpl.2518:31|
 :skolemid |216|
 :pattern ( (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@7) o_9@@39 f_5@@27))
 :pattern ( (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@8) o_9@@39 f_5@@27))
))) (forall ((o_9@@40 T@Ref) (f_5@@28 T@Field_17539_74118) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@7) o_9@@40 f_5@@28) (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@8) o_9@@40 f_5@@28)))
 :qid |stdinbpl.2518:31|
 :skolemid |216|
 :pattern ( (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@7) o_9@@40 f_5@@28))
 :pattern ( (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@8) o_9@@40 f_5@@28))
))) (state ExhaleHeap@0 QPMask@8)) (and (=> (= (ControlFlow 0 46) (- 0 58)) (forall ((i_33 Int) (i_33_2 Int) ) (!  (=> (and (and (and (and (not (= i_33 i_33_2)) (|Seq#Contains_3512| (|Seq#Range| 0 (- len_3 1)) i_33)) (|Seq#Contains_3512| (|Seq#Range| 0 (- len_3 1)) i_33_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_17549| ar_1 i_33) (|Seq#Index_17549| ar_1 i_33_2))))
 :qid |stdinbpl.2526:17|
 :skolemid |217|
))) (=> (forall ((i_33@@0 Int) (i_33_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_33@@0 i_33_2@@0)) (|Seq#Contains_3512| (|Seq#Range| 0 (- len_3 1)) i_33@@0)) (|Seq#Contains_3512| (|Seq#Range| 0 (- len_3 1)) i_33_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_17549| ar_1 i_33@@0) (|Seq#Index_17549| ar_1 i_33_2@@0))))
 :qid |stdinbpl.2526:17|
 :skolemid |217|
)) (=> (and (forall ((i_33@@1 Int) ) (!  (=> (and (|Seq#Contains_3512| (|Seq#Range| 0 (- len_3 1)) i_33@@1) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange27 (|Seq#Index_17549| ar_1 i_33@@1)) (= (invRecv27 (|Seq#Index_17549| ar_1 i_33@@1)) i_33@@1)))
 :qid |stdinbpl.2532:24|
 :skolemid |218|
 :pattern ( (|Seq#Index_17549| ar_1 i_33@@1))
 :pattern ( (|Seq#Index_17549| ar_1 i_33@@1))
)) (forall ((o_9@@41 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3512| (|Seq#Range| 0 (- len_3 1)) (invRecv27 o_9@@41)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange27 o_9@@41)) (= (|Seq#Index_17549| ar_1 (invRecv27 o_9@@41)) o_9@@41))
 :qid |stdinbpl.2536:24|
 :skolemid |219|
 :pattern ( (invRecv27 o_9@@41))
))) (and (=> (= (ControlFlow 0 46) (- 0 57)) (forall ((i_33@@2 Int) ) (!  (=> (|Seq#Contains_3512| (|Seq#Range| 0 (- len_3 1)) i_33@@2) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2542:17|
 :skolemid |220|
 :pattern ( (|Seq#Index_17549| ar_1 i_33@@2))
 :pattern ( (|Seq#Index_17549| ar_1 i_33@@2))
))) (=> (forall ((i_33@@3 Int) ) (!  (=> (|Seq#Contains_3512| (|Seq#Range| 0 (- len_3 1)) i_33@@3) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2542:17|
 :skolemid |220|
 :pattern ( (|Seq#Index_17549| ar_1 i_33@@3))
 :pattern ( (|Seq#Index_17549| ar_1 i_33@@3))
)) (=> (and (forall ((i_33@@4 Int) ) (!  (=> (and (|Seq#Contains_3512| (|Seq#Range| 0 (- len_3 1)) i_33@@4) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= (|Seq#Index_17549| ar_1 i_33@@4) null)))
 :qid |stdinbpl.2548:24|
 :skolemid |221|
 :pattern ( (|Seq#Index_17549| ar_1 i_33@@4))
 :pattern ( (|Seq#Index_17549| ar_1 i_33@@4))
)) (forall ((o_9@@42 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3512| (|Seq#Range| 0 (- len_3 1)) (invRecv27 o_9@@42)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange27 o_9@@42)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (|Seq#Index_17549| ar_1 (invRecv27 o_9@@42)) o_9@@42)) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@9) o_9@@42 Integer_value) (+ (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@8) o_9@@42 Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (|Seq#Contains_3512| (|Seq#Range| 0 (- len_3 1)) (invRecv27 o_9@@42)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange27 o_9@@42))) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@9) o_9@@42 Integer_value) (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@8) o_9@@42 Integer_value))))
 :qid |stdinbpl.2554:24|
 :skolemid |222|
 :pattern ( (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@9) o_9@@42 Integer_value))
))) (=> (and (and (and (and (and (forall ((o_9@@43 T@Ref) (f_5@@29 T@Field_25588_53) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@8) o_9@@43 f_5@@29) (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@9) o_9@@43 f_5@@29)))
 :qid |stdinbpl.2558:31|
 :skolemid |223|
 :pattern ( (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@8) o_9@@43 f_5@@29))
 :pattern ( (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@9) o_9@@43 f_5@@29))
)) (forall ((o_9@@44 T@Ref) (f_5@@30 T@Field_25601_25602) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@8) o_9@@44 f_5@@30) (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@9) o_9@@44 f_5@@30)))
 :qid |stdinbpl.2558:31|
 :skolemid |223|
 :pattern ( (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@8) o_9@@44 f_5@@30))
 :pattern ( (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@9) o_9@@44 f_5@@30))
))) (forall ((o_9@@45 T@Ref) (f_5@@31 T@Field_31659_3634) ) (!  (=> (not (= f_5@@31 Integer_value)) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@8) o_9@@45 f_5@@31) (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@9) o_9@@45 f_5@@31)))
 :qid |stdinbpl.2558:31|
 :skolemid |223|
 :pattern ( (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@8) o_9@@45 f_5@@31))
 :pattern ( (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@9) o_9@@45 f_5@@31))
))) (forall ((o_9@@46 T@Ref) (f_5@@32 T@Field_17539_73985) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@8) o_9@@46 f_5@@32) (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@9) o_9@@46 f_5@@32)))
 :qid |stdinbpl.2558:31|
 :skolemid |223|
 :pattern ( (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@8) o_9@@46 f_5@@32))
 :pattern ( (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@9) o_9@@46 f_5@@32))
))) (forall ((o_9@@47 T@Ref) (f_5@@33 T@Field_17539_74118) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@8) o_9@@47 f_5@@33) (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@9) o_9@@47 f_5@@33)))
 :qid |stdinbpl.2558:31|
 :skolemid |223|
 :pattern ( (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@8) o_9@@47 f_5@@33))
 :pattern ( (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@9) o_9@@47 f_5@@33))
))) (and (state ExhaleHeap@0 QPMask@9) (= perm@0 (/ (to_real 1) (to_real 2))))) (and (=> (= (ControlFlow 0 46) (- 0 56)) (>= perm@0 NoPerm)) (=> (>= perm@0 NoPerm) (=> (=> (> perm@0 NoPerm) (not (= (|Seq#Index_17549| ar_1 (- (|Seq#Length_17549| ar_1) 1)) null))) (=> (and (and (= Mask@0 (PolymorphicMapType_25549 (store (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@9) (|Seq#Index_17549| ar_1 (- (|Seq#Length_17549| ar_1) 1)) Integer_value (+ (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@9) (|Seq#Index_17549| ar_1 (- (|Seq#Length_17549| ar_1) 1)) Integer_value) perm@0)) (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@9) (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@9) (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@9) (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@9))) (state ExhaleHeap@0 Mask@0)) (and (state ExhaleHeap@0 Mask@0) (state ExhaleHeap@0 Mask@0))) (and (=> (= (ControlFlow 0 46) (- 0 55)) (= (|Seq#Length_17549| ar_1) len_3)) (=> (= (|Seq#Length_17549| ar_1) len_3) (and (=> (= (ControlFlow 0 46) (- 0 54)) (forall ((i_18_1 Int) (i_18_2 Int) ) (!  (=> (and (and (and (and (not (= i_18_1 i_18_2)) (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_18_1)) (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_18_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17549| ar_1 i_18_1) (|Seq#Index_17549| ar_1 i_18_2))))
 :qid |stdinbpl.2585:17|
 :skolemid |224|
 :pattern ( (neverTriggered18 i_18_1) (neverTriggered18 i_18_2))
))) (=> (forall ((i_18_1@@0 Int) (i_18_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_18_1@@0 i_18_2@@0)) (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_18_1@@0)) (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_18_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17549| ar_1 i_18_1@@0) (|Seq#Index_17549| ar_1 i_18_2@@0))))
 :qid |stdinbpl.2585:17|
 :skolemid |224|
 :pattern ( (neverTriggered18 i_18_1@@0) (neverTriggered18 i_18_2@@0))
)) (and (=> (= (ControlFlow 0 46) (- 0 53)) (forall ((i_18_1@@1 Int) ) (!  (=> (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_18_1@@1) (>= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| Mask@0) (|Seq#Index_17549| ar_1 i_18_1@@1) Integer_value) FullPerm))
 :qid |stdinbpl.2592:17|
 :skolemid |225|
 :pattern ( (|Seq#Index_17549| ar_1 i_18_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3512| (|Seq#Range| 0 len_3) i_18_1@@1))
 :pattern ( (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_18_1@@1))
 :pattern ( (|Seq#Index_17549| ar_1 i_18_1@@1))
))) (=> (forall ((i_18_1@@2 Int) ) (!  (=> (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_18_1@@2) (>= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| Mask@0) (|Seq#Index_17549| ar_1 i_18_1@@2) Integer_value) FullPerm))
 :qid |stdinbpl.2592:17|
 :skolemid |225|
 :pattern ( (|Seq#Index_17549| ar_1 i_18_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3512| (|Seq#Range| 0 len_3) i_18_1@@2))
 :pattern ( (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_18_1@@2))
 :pattern ( (|Seq#Index_17549| ar_1 i_18_1@@2))
)) (=> (forall ((i_18_1@@3 Int) ) (!  (=> (and (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_18_1@@3) (< NoPerm FullPerm)) (and (qpRange18 (|Seq#Index_17549| ar_1 i_18_1@@3)) (= (invRecv18 (|Seq#Index_17549| ar_1 i_18_1@@3)) i_18_1@@3)))
 :qid |stdinbpl.2598:22|
 :skolemid |226|
 :pattern ( (|Seq#Index_17549| ar_1 i_18_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3512| (|Seq#Range| 0 len_3) i_18_1@@3))
 :pattern ( (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_18_1@@3))
 :pattern ( (|Seq#Index_17549| ar_1 i_18_1@@3))
)) (=> (and (forall ((o_9@@48 T@Ref) ) (!  (=> (and (|Seq#Contains_3512| (|Seq#Range| 0 len_3) (invRecv18 o_9@@48)) (and (< NoPerm FullPerm) (qpRange18 o_9@@48))) (= (|Seq#Index_17549| ar_1 (invRecv18 o_9@@48)) o_9@@48))
 :qid |stdinbpl.2602:22|
 :skolemid |227|
 :pattern ( (invRecv18 o_9@@48))
)) (forall ((o_9@@49 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3512| (|Seq#Range| 0 len_3) (invRecv18 o_9@@49)) (and (< NoPerm FullPerm) (qpRange18 o_9@@49))) (and (= (|Seq#Index_17549| ar_1 (invRecv18 o_9@@49)) o_9@@49) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@10) o_9@@49 Integer_value) (- (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| Mask@0) o_9@@49 Integer_value) FullPerm)))) (=> (not (and (|Seq#Contains_3512| (|Seq#Range| 0 len_3) (invRecv18 o_9@@49)) (and (< NoPerm FullPerm) (qpRange18 o_9@@49)))) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@10) o_9@@49 Integer_value) (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| Mask@0) o_9@@49 Integer_value))))
 :qid |stdinbpl.2608:22|
 :skolemid |228|
 :pattern ( (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@10) o_9@@49 Integer_value))
))) (=> (and (and (and (and (forall ((o_9@@50 T@Ref) (f_5@@34 T@Field_25588_53) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| Mask@0) o_9@@50 f_5@@34) (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@10) o_9@@50 f_5@@34)))
 :qid |stdinbpl.2614:29|
 :skolemid |229|
 :pattern ( (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@10) o_9@@50 f_5@@34))
)) (forall ((o_9@@51 T@Ref) (f_5@@35 T@Field_25601_25602) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| Mask@0) o_9@@51 f_5@@35) (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@10) o_9@@51 f_5@@35)))
 :qid |stdinbpl.2614:29|
 :skolemid |229|
 :pattern ( (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@10) o_9@@51 f_5@@35))
))) (forall ((o_9@@52 T@Ref) (f_5@@36 T@Field_31659_3634) ) (!  (=> (not (= f_5@@36 Integer_value)) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| Mask@0) o_9@@52 f_5@@36) (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@10) o_9@@52 f_5@@36)))
 :qid |stdinbpl.2614:29|
 :skolemid |229|
 :pattern ( (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@10) o_9@@52 f_5@@36))
))) (forall ((o_9@@53 T@Ref) (f_5@@37 T@Field_17539_73985) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| Mask@0) o_9@@53 f_5@@37) (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@10) o_9@@53 f_5@@37)))
 :qid |stdinbpl.2614:29|
 :skolemid |229|
 :pattern ( (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@10) o_9@@53 f_5@@37))
))) (forall ((o_9@@54 T@Ref) (f_5@@38 T@Field_17539_74118) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| Mask@0) o_9@@54 f_5@@38) (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@10) o_9@@54 f_5@@38)))
 :qid |stdinbpl.2614:29|
 :skolemid |229|
 :pattern ( (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@10) o_9@@54 f_5@@38))
))) (and (=> (= (ControlFlow 0 46) (- 0 52)) (= (|Seq#Length_17549| br) len_3)) (=> (= (|Seq#Length_17549| br) len_3) (and (=> (= (ControlFlow 0 46) (- 0 51)) (forall ((i_19_1 Int) ) (!  (=> (and (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_19_1) (dummyFunction_3634 (select (|PolymorphicMapType_25528_17539_3634#PolymorphicMapType_25528| ExhaleHeap@0) (|Seq#Index_17549| br i_19_1) Integer_value))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2625:17|
 :skolemid |230|
 :pattern ( (|Seq#Index_17549| br i_19_1))
 :pattern ( (|Seq#ContainsTrigger_3512| (|Seq#Range| 0 len_3) i_19_1))
 :pattern ( (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_19_1))
 :pattern ( (|Seq#Index_17549| br i_19_1))
))) (=> (forall ((i_19_1@@0 Int) ) (!  (=> (and (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_19_1@@0) (dummyFunction_3634 (select (|PolymorphicMapType_25528_17539_3634#PolymorphicMapType_25528| ExhaleHeap@0) (|Seq#Index_17549| br i_19_1@@0) Integer_value))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2625:17|
 :skolemid |230|
 :pattern ( (|Seq#Index_17549| br i_19_1@@0))
 :pattern ( (|Seq#ContainsTrigger_3512| (|Seq#Range| 0 len_3) i_19_1@@0))
 :pattern ( (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_19_1@@0))
 :pattern ( (|Seq#Index_17549| br i_19_1@@0))
)) (and (=> (= (ControlFlow 0 46) (- 0 50)) (forall ((i_19_1@@1 Int) (i_19_2 Int) ) (!  (=> (and (and (and (and (not (= i_19_1@@1 i_19_2)) (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_19_1@@1)) (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_19_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_17549| br i_19_1@@1) (|Seq#Index_17549| br i_19_2))))
 :qid |stdinbpl.2632:17|
 :skolemid |231|
 :pattern ( (neverTriggered19 i_19_1@@1) (neverTriggered19 i_19_2))
))) (=> (forall ((i_19_1@@2 Int) (i_19_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_19_1@@2 i_19_2@@0)) (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_19_1@@2)) (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_19_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_17549| br i_19_1@@2) (|Seq#Index_17549| br i_19_2@@0))))
 :qid |stdinbpl.2632:17|
 :skolemid |231|
 :pattern ( (neverTriggered19 i_19_1@@2) (neverTriggered19 i_19_2@@0))
)) (and (=> (= (ControlFlow 0 46) (- 0 49)) (forall ((i_19_1@@3 Int) ) (!  (=> (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_19_1@@3) (>= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@10) (|Seq#Index_17549| br i_19_1@@3) Integer_value) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.2639:17|
 :skolemid |232|
 :pattern ( (|Seq#Index_17549| br i_19_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3512| (|Seq#Range| 0 len_3) i_19_1@@3))
 :pattern ( (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_19_1@@3))
 :pattern ( (|Seq#Index_17549| br i_19_1@@3))
))) (=> (forall ((i_19_1@@4 Int) ) (!  (=> (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_19_1@@4) (>= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@10) (|Seq#Index_17549| br i_19_1@@4) Integer_value) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.2639:17|
 :skolemid |232|
 :pattern ( (|Seq#Index_17549| br i_19_1@@4))
 :pattern ( (|Seq#ContainsTrigger_3512| (|Seq#Range| 0 len_3) i_19_1@@4))
 :pattern ( (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_19_1@@4))
 :pattern ( (|Seq#Index_17549| br i_19_1@@4))
)) (=> (forall ((i_19_1@@5 Int) ) (!  (=> (and (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_19_1@@5) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange19 (|Seq#Index_17549| br i_19_1@@5)) (= (invRecv19 (|Seq#Index_17549| br i_19_1@@5)) i_19_1@@5)))
 :qid |stdinbpl.2645:22|
 :skolemid |233|
 :pattern ( (|Seq#Index_17549| br i_19_1@@5))
 :pattern ( (|Seq#ContainsTrigger_3512| (|Seq#Range| 0 len_3) i_19_1@@5))
 :pattern ( (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_19_1@@5))
 :pattern ( (|Seq#Index_17549| br i_19_1@@5))
)) (=> (and (forall ((o_9@@55 T@Ref) ) (!  (=> (and (|Seq#Contains_3512| (|Seq#Range| 0 len_3) (invRecv19 o_9@@55)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange19 o_9@@55))) (= (|Seq#Index_17549| br (invRecv19 o_9@@55)) o_9@@55))
 :qid |stdinbpl.2649:22|
 :skolemid |234|
 :pattern ( (invRecv19 o_9@@55))
)) (forall ((o_9@@56 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3512| (|Seq#Range| 0 len_3) (invRecv19 o_9@@56)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange19 o_9@@56))) (and (= (|Seq#Index_17549| br (invRecv19 o_9@@56)) o_9@@56) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@11) o_9@@56 Integer_value) (- (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@10) o_9@@56 Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (|Seq#Contains_3512| (|Seq#Range| 0 len_3) (invRecv19 o_9@@56)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange19 o_9@@56)))) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@11) o_9@@56 Integer_value) (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@10) o_9@@56 Integer_value))))
 :qid |stdinbpl.2655:22|
 :skolemid |235|
 :pattern ( (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@11) o_9@@56 Integer_value))
))) (=> (and (and (and (and (forall ((o_9@@57 T@Ref) (f_5@@39 T@Field_25588_53) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@10) o_9@@57 f_5@@39) (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@11) o_9@@57 f_5@@39)))
 :qid |stdinbpl.2661:29|
 :skolemid |236|
 :pattern ( (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@11) o_9@@57 f_5@@39))
)) (forall ((o_9@@58 T@Ref) (f_5@@40 T@Field_25601_25602) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@10) o_9@@58 f_5@@40) (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@11) o_9@@58 f_5@@40)))
 :qid |stdinbpl.2661:29|
 :skolemid |236|
 :pattern ( (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@11) o_9@@58 f_5@@40))
))) (forall ((o_9@@59 T@Ref) (f_5@@41 T@Field_31659_3634) ) (!  (=> (not (= f_5@@41 Integer_value)) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@10) o_9@@59 f_5@@41) (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@11) o_9@@59 f_5@@41)))
 :qid |stdinbpl.2661:29|
 :skolemid |236|
 :pattern ( (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@11) o_9@@59 f_5@@41))
))) (forall ((o_9@@60 T@Ref) (f_5@@42 T@Field_17539_73985) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@10) o_9@@60 f_5@@42) (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@11) o_9@@60 f_5@@42)))
 :qid |stdinbpl.2661:29|
 :skolemid |236|
 :pattern ( (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@11) o_9@@60 f_5@@42))
))) (forall ((o_9@@61 T@Ref) (f_5@@43 T@Field_17539_74118) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@10) o_9@@61 f_5@@43) (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@11) o_9@@61 f_5@@43)))
 :qid |stdinbpl.2661:29|
 :skolemid |236|
 :pattern ( (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@11) o_9@@61 f_5@@43))
))) (and (=> (= (ControlFlow 0 46) (- 0 48)) (= (|Seq#Length_17549| cr) len_3)) (=> (= (|Seq#Length_17549| cr) len_3) (and (=> (= (ControlFlow 0 46) (- 0 47)) (forall ((i_20_2 Int) (i_20_3 Int) ) (!  (=> (and (and (and (and (not (= i_20_2 i_20_3)) (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_20_2)) (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_20_3)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17549| cr i_20_2) (|Seq#Index_17549| cr i_20_3))))
 :qid |stdinbpl.2675:17|
 :skolemid |237|
 :pattern ( (neverTriggered20 i_20_2) (neverTriggered20 i_20_3))
))) (=> (forall ((i_20_2@@0 Int) (i_20_3@@0 Int) ) (!  (=> (and (and (and (and (not (= i_20_2@@0 i_20_3@@0)) (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_20_2@@0)) (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_20_3@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17549| cr i_20_2@@0) (|Seq#Index_17549| cr i_20_3@@0))))
 :qid |stdinbpl.2675:17|
 :skolemid |237|
 :pattern ( (neverTriggered20 i_20_2@@0) (neverTriggered20 i_20_3@@0))
)) (=> (= (ControlFlow 0 46) (- 0 45)) (forall ((i_20_2@@1 Int) ) (!  (=> (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_20_2@@1) (>= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@11) (|Seq#Index_17549| cr i_20_2@@1) Integer_value) FullPerm))
 :qid |stdinbpl.2682:17|
 :skolemid |238|
 :pattern ( (|Seq#Index_17549| cr i_20_2@@1))
 :pattern ( (|Seq#ContainsTrigger_3512| (|Seq#Range| 0 len_3) i_20_2@@1))
 :pattern ( (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_20_2@@1))
 :pattern ( (|Seq#Index_17549| cr i_20_2@@1))
))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((anon72_Else_correct  (=> (forall ((i_25_1_1 Int) (j_9_1_1 Int) ) (!  (=> (and (<= 0 i_25_1_1) (and (< i_25_1_1 (|Seq#Length_17549| br)) (and (<= 0 j_9_1_1) (and (< j_9_1_1 (|Seq#Length_17549| br)) (not (= i_25_1_1 j_9_1_1)))))) (not (= (|Seq#Index_17549| br i_25_1_1) (|Seq#Index_17549| br j_9_1_1))))
 :qid |stdinbpl.2298:22|
 :skolemid |182|
 :pattern ( (|Seq#Index_17549| br i_25_1_1) (|Seq#Index_17549| br j_9_1_1))
)) (and (=> (= (ControlFlow 0 70) (- 0 74)) (forall ((i_26_1 Int) ) (!  (=> (and (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_26_1) (dummyFunction_3634 (select (|PolymorphicMapType_25528_17539_3634#PolymorphicMapType_25528| Heap@@17) (|Seq#Index_17549| br i_26_1) Integer_value))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2306:19|
 :skolemid |183|
 :pattern ( (|Seq#Index_17549| br i_26_1))
 :pattern ( (|Seq#ContainsTrigger_3512| (|Seq#Range| 0 len_3) i_26_1))
 :pattern ( (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_26_1))
 :pattern ( (|Seq#Index_17549| br i_26_1))
))) (=> (forall ((i_26_1@@0 Int) ) (!  (=> (and (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_26_1@@0) (dummyFunction_3634 (select (|PolymorphicMapType_25528_17539_3634#PolymorphicMapType_25528| Heap@@17) (|Seq#Index_17549| br i_26_1@@0) Integer_value))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2306:19|
 :skolemid |183|
 :pattern ( (|Seq#Index_17549| br i_26_1@@0))
 :pattern ( (|Seq#ContainsTrigger_3512| (|Seq#Range| 0 len_3) i_26_1@@0))
 :pattern ( (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_26_1@@0))
 :pattern ( (|Seq#Index_17549| br i_26_1@@0))
)) (and (=> (= (ControlFlow 0 70) (- 0 73)) (forall ((i_26_1@@1 Int) (i_26_2 Int) ) (!  (=> (and (and (and (and (not (= i_26_1@@1 i_26_2)) (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_26_1@@1)) (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_26_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_17549| br i_26_1@@1) (|Seq#Index_17549| br i_26_2))))
 :qid |stdinbpl.2313:19|
 :skolemid |184|
 :pattern ( (neverTriggered22 i_26_1@@1) (neverTriggered22 i_26_2))
))) (=> (forall ((i_26_1@@2 Int) (i_26_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_26_1@@2 i_26_2@@0)) (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_26_1@@2)) (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_26_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_17549| br i_26_1@@2) (|Seq#Index_17549| br i_26_2@@0))))
 :qid |stdinbpl.2313:19|
 :skolemid |184|
 :pattern ( (neverTriggered22 i_26_1@@2) (neverTriggered22 i_26_2@@0))
)) (and (=> (= (ControlFlow 0 70) (- 0 72)) (forall ((i_26_1@@3 Int) ) (!  (=> (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_26_1@@3) (>= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@3) (|Seq#Index_17549| br i_26_1@@3) Integer_value) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.2320:19|
 :skolemid |185|
 :pattern ( (|Seq#Index_17549| br i_26_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3512| (|Seq#Range| 0 len_3) i_26_1@@3))
 :pattern ( (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_26_1@@3))
 :pattern ( (|Seq#Index_17549| br i_26_1@@3))
))) (=> (forall ((i_26_1@@4 Int) ) (!  (=> (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_26_1@@4) (>= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@3) (|Seq#Index_17549| br i_26_1@@4) Integer_value) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.2320:19|
 :skolemid |185|
 :pattern ( (|Seq#Index_17549| br i_26_1@@4))
 :pattern ( (|Seq#ContainsTrigger_3512| (|Seq#Range| 0 len_3) i_26_1@@4))
 :pattern ( (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_26_1@@4))
 :pattern ( (|Seq#Index_17549| br i_26_1@@4))
)) (=> (forall ((i_26_1@@5 Int) ) (!  (=> (and (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_26_1@@5) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange22 (|Seq#Index_17549| br i_26_1@@5)) (= (invRecv22 (|Seq#Index_17549| br i_26_1@@5)) i_26_1@@5)))
 :qid |stdinbpl.2326:24|
 :skolemid |186|
 :pattern ( (|Seq#Index_17549| br i_26_1@@5))
 :pattern ( (|Seq#ContainsTrigger_3512| (|Seq#Range| 0 len_3) i_26_1@@5))
 :pattern ( (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_26_1@@5))
 :pattern ( (|Seq#Index_17549| br i_26_1@@5))
)) (=> (and (forall ((o_9@@62 T@Ref) ) (!  (=> (and (|Seq#Contains_3512| (|Seq#Range| 0 len_3) (invRecv22 o_9@@62)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange22 o_9@@62))) (= (|Seq#Index_17549| br (invRecv22 o_9@@62)) o_9@@62))
 :qid |stdinbpl.2330:24|
 :skolemid |187|
 :pattern ( (invRecv22 o_9@@62))
)) (forall ((o_9@@63 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3512| (|Seq#Range| 0 len_3) (invRecv22 o_9@@63)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange22 o_9@@63))) (and (= (|Seq#Index_17549| br (invRecv22 o_9@@63)) o_9@@63) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@4) o_9@@63 Integer_value) (- (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@3) o_9@@63 Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (|Seq#Contains_3512| (|Seq#Range| 0 len_3) (invRecv22 o_9@@63)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange22 o_9@@63)))) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@4) o_9@@63 Integer_value) (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@3) o_9@@63 Integer_value))))
 :qid |stdinbpl.2336:24|
 :skolemid |188|
 :pattern ( (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@4) o_9@@63 Integer_value))
))) (=> (and (and (and (and (forall ((o_9@@64 T@Ref) (f_5@@44 T@Field_25588_53) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@3) o_9@@64 f_5@@44) (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@4) o_9@@64 f_5@@44)))
 :qid |stdinbpl.2342:31|
 :skolemid |189|
 :pattern ( (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@4) o_9@@64 f_5@@44))
)) (forall ((o_9@@65 T@Ref) (f_5@@45 T@Field_25601_25602) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@3) o_9@@65 f_5@@45) (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@4) o_9@@65 f_5@@45)))
 :qid |stdinbpl.2342:31|
 :skolemid |189|
 :pattern ( (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@4) o_9@@65 f_5@@45))
))) (forall ((o_9@@66 T@Ref) (f_5@@46 T@Field_31659_3634) ) (!  (=> (not (= f_5@@46 Integer_value)) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@3) o_9@@66 f_5@@46) (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@4) o_9@@66 f_5@@46)))
 :qid |stdinbpl.2342:31|
 :skolemid |189|
 :pattern ( (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@4) o_9@@66 f_5@@46))
))) (forall ((o_9@@67 T@Ref) (f_5@@47 T@Field_17539_73985) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@3) o_9@@67 f_5@@47) (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@4) o_9@@67 f_5@@47)))
 :qid |stdinbpl.2342:31|
 :skolemid |189|
 :pattern ( (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@4) o_9@@67 f_5@@47))
))) (forall ((o_9@@68 T@Ref) (f_5@@48 T@Field_17539_74118) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@3) o_9@@68 f_5@@48) (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@4) o_9@@68 f_5@@48)))
 :qid |stdinbpl.2342:31|
 :skolemid |189|
 :pattern ( (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@4) o_9@@68 f_5@@48))
))) (and (=> (= (ControlFlow 0 70) (- 0 71)) (= (|Seq#Length_17549| cr) len_3)) (=> (= (|Seq#Length_17549| cr) len_3) (and (and (=> (= (ControlFlow 0 70) 46) anon74_Else_correct) (=> (= (ControlFlow 0 70) 67) anon75_Then_correct)) (=> (= (ControlFlow 0 70) 69) anon75_Else_correct))))))))))))))))
(let ((anon45_correct true))
(let ((anon73_Else_correct  (=> (and (not (and (<= 0 i_24_1) (and (< i_24_1 (|Seq#Length_17549| br)) (and (<= 0 j_8_2) (and (< j_8_2 (|Seq#Length_17549| br)) (not (= i_24_1 j_8_2))))))) (= (ControlFlow 0 44) 41)) anon45_correct)))
(let ((anon73_Then_correct  (=> (and (<= 0 i_24_1) (and (< i_24_1 (|Seq#Length_17549| br)) (and (<= 0 j_8_2) (and (< j_8_2 (|Seq#Length_17549| br)) (not (= i_24_1 j_8_2)))))) (and (=> (= (ControlFlow 0 42) (- 0 43)) (not (= (|Seq#Index_17549| br i_24_1) (|Seq#Index_17549| br j_8_2)))) (=> (not (= (|Seq#Index_17549| br i_24_1) (|Seq#Index_17549| br j_8_2))) (=> (= (ControlFlow 0 42) 41) anon45_correct))))))
(let ((anon70_Else_correct  (=> (forall ((i_22_1_1 Int) (j_7_1_1 Int) ) (!  (=> (and (<= 0 i_22_1_1) (and (< i_22_1_1 (|Seq#Length_17549| ar_1)) (and (<= 0 j_7_1_1) (and (< j_7_1_1 (|Seq#Length_17549| ar_1)) (not (= i_22_1_1 j_7_1_1)))))) (not (= (|Seq#Index_17549| ar_1 i_22_1_1) (|Seq#Index_17549| ar_1 j_7_1_1))))
 :qid |stdinbpl.2244:22|
 :skolemid |175|
 :pattern ( (|Seq#Index_17549| ar_1 i_22_1_1) (|Seq#Index_17549| ar_1 j_7_1_1))
)) (and (=> (= (ControlFlow 0 75) (- 0 78)) (forall ((i_23_1 Int) (i_23_2 Int) ) (!  (=> (and (and (and (and (not (= i_23_1 i_23_2)) (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_23_1)) (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_23_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17549| ar_1 i_23_1) (|Seq#Index_17549| ar_1 i_23_2))))
 :qid |stdinbpl.2255:19|
 :skolemid |176|
 :pattern ( (neverTriggered21 i_23_1) (neverTriggered21 i_23_2))
))) (=> (forall ((i_23_1@@0 Int) (i_23_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_23_1@@0 i_23_2@@0)) (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_23_1@@0)) (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_23_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17549| ar_1 i_23_1@@0) (|Seq#Index_17549| ar_1 i_23_2@@0))))
 :qid |stdinbpl.2255:19|
 :skolemid |176|
 :pattern ( (neverTriggered21 i_23_1@@0) (neverTriggered21 i_23_2@@0))
)) (and (=> (= (ControlFlow 0 75) (- 0 77)) (forall ((i_23_1@@1 Int) ) (!  (=> (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_23_1@@1) (>= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@2) (|Seq#Index_17549| ar_1 i_23_1@@1) Integer_value) FullPerm))
 :qid |stdinbpl.2262:19|
 :skolemid |177|
 :pattern ( (|Seq#Index_17549| ar_1 i_23_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3512| (|Seq#Range| 0 len_3) i_23_1@@1))
 :pattern ( (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_23_1@@1))
 :pattern ( (|Seq#Index_17549| ar_1 i_23_1@@1))
))) (=> (forall ((i_23_1@@2 Int) ) (!  (=> (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_23_1@@2) (>= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@2) (|Seq#Index_17549| ar_1 i_23_1@@2) Integer_value) FullPerm))
 :qid |stdinbpl.2262:19|
 :skolemid |177|
 :pattern ( (|Seq#Index_17549| ar_1 i_23_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3512| (|Seq#Range| 0 len_3) i_23_1@@2))
 :pattern ( (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_23_1@@2))
 :pattern ( (|Seq#Index_17549| ar_1 i_23_1@@2))
)) (=> (forall ((i_23_1@@3 Int) ) (!  (=> (and (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_23_1@@3) (< NoPerm FullPerm)) (and (qpRange21 (|Seq#Index_17549| ar_1 i_23_1@@3)) (= (invRecv21 (|Seq#Index_17549| ar_1 i_23_1@@3)) i_23_1@@3)))
 :qid |stdinbpl.2268:24|
 :skolemid |178|
 :pattern ( (|Seq#Index_17549| ar_1 i_23_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3512| (|Seq#Range| 0 len_3) i_23_1@@3))
 :pattern ( (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_23_1@@3))
 :pattern ( (|Seq#Index_17549| ar_1 i_23_1@@3))
)) (=> (and (forall ((o_9@@69 T@Ref) ) (!  (=> (and (|Seq#Contains_3512| (|Seq#Range| 0 len_3) (invRecv21 o_9@@69)) (and (< NoPerm FullPerm) (qpRange21 o_9@@69))) (= (|Seq#Index_17549| ar_1 (invRecv21 o_9@@69)) o_9@@69))
 :qid |stdinbpl.2272:24|
 :skolemid |179|
 :pattern ( (invRecv21 o_9@@69))
)) (forall ((o_9@@70 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3512| (|Seq#Range| 0 len_3) (invRecv21 o_9@@70)) (and (< NoPerm FullPerm) (qpRange21 o_9@@70))) (and (= (|Seq#Index_17549| ar_1 (invRecv21 o_9@@70)) o_9@@70) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@3) o_9@@70 Integer_value) (- (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@2) o_9@@70 Integer_value) FullPerm)))) (=> (not (and (|Seq#Contains_3512| (|Seq#Range| 0 len_3) (invRecv21 o_9@@70)) (and (< NoPerm FullPerm) (qpRange21 o_9@@70)))) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@3) o_9@@70 Integer_value) (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@2) o_9@@70 Integer_value))))
 :qid |stdinbpl.2278:24|
 :skolemid |180|
 :pattern ( (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@3) o_9@@70 Integer_value))
))) (=> (and (and (and (and (forall ((o_9@@71 T@Ref) (f_5@@49 T@Field_25588_53) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@2) o_9@@71 f_5@@49) (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@3) o_9@@71 f_5@@49)))
 :qid |stdinbpl.2284:31|
 :skolemid |181|
 :pattern ( (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@3) o_9@@71 f_5@@49))
)) (forall ((o_9@@72 T@Ref) (f_5@@50 T@Field_25601_25602) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@2) o_9@@72 f_5@@50) (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@3) o_9@@72 f_5@@50)))
 :qid |stdinbpl.2284:31|
 :skolemid |181|
 :pattern ( (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@3) o_9@@72 f_5@@50))
))) (forall ((o_9@@73 T@Ref) (f_5@@51 T@Field_31659_3634) ) (!  (=> (not (= f_5@@51 Integer_value)) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@2) o_9@@73 f_5@@51) (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@3) o_9@@73 f_5@@51)))
 :qid |stdinbpl.2284:31|
 :skolemid |181|
 :pattern ( (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@3) o_9@@73 f_5@@51))
))) (forall ((o_9@@74 T@Ref) (f_5@@52 T@Field_17539_73985) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@2) o_9@@74 f_5@@52) (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@3) o_9@@74 f_5@@52)))
 :qid |stdinbpl.2284:31|
 :skolemid |181|
 :pattern ( (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@3) o_9@@74 f_5@@52))
))) (forall ((o_9@@75 T@Ref) (f_5@@53 T@Field_17539_74118) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@2) o_9@@75 f_5@@53) (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@3) o_9@@75 f_5@@53)))
 :qid |stdinbpl.2284:31|
 :skolemid |181|
 :pattern ( (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@3) o_9@@75 f_5@@53))
))) (and (=> (= (ControlFlow 0 75) (- 0 76)) (= (|Seq#Length_17549| br) len_3)) (=> (= (|Seq#Length_17549| br) len_3) (and (and (=> (= (ControlFlow 0 75) 70) anon72_Else_correct) (=> (= (ControlFlow 0 75) 42) anon73_Then_correct)) (=> (= (ControlFlow 0 75) 44) anon73_Else_correct))))))))))))))
(let ((anon41_correct true))
(let ((anon71_Else_correct  (=> (and (not (and (<= 0 i_21_1) (and (< i_21_1 (|Seq#Length_17549| ar_1)) (and (<= 0 j_6_2) (and (< j_6_2 (|Seq#Length_17549| ar_1)) (not (= i_21_1 j_6_2))))))) (= (ControlFlow 0 40) 37)) anon41_correct)))
(let ((anon71_Then_correct  (=> (and (<= 0 i_21_1) (and (< i_21_1 (|Seq#Length_17549| ar_1)) (and (<= 0 j_6_2) (and (< j_6_2 (|Seq#Length_17549| ar_1)) (not (= i_21_1 j_6_2)))))) (and (=> (= (ControlFlow 0 38) (- 0 39)) (not (= (|Seq#Index_17549| ar_1 i_21_1) (|Seq#Index_17549| ar_1 j_6_2)))) (=> (not (= (|Seq#Index_17549| ar_1 i_21_1) (|Seq#Index_17549| ar_1 j_6_2))) (=> (= (ControlFlow 0 38) 37) anon41_correct))))))
(let ((anon63_Else_correct  (and (=> (= (ControlFlow 0 79) (- 0 84)) (= (|Seq#Length_17549| ar_1) len_3)) (=> (= (|Seq#Length_17549| ar_1) len_3) (=> (state Heap@@17 QPMask@2) (and (=> (= (ControlFlow 0 79) (- 0 83)) (= (|Seq#Length_17549| br) len_3)) (=> (= (|Seq#Length_17549| br) len_3) (=> (state Heap@@17 QPMask@2) (and (=> (= (ControlFlow 0 79) (- 0 82)) (= (|Seq#Length_17549| cr) len_3)) (=> (= (|Seq#Length_17549| cr) len_3) (=> (state Heap@@17 QPMask@2) (and (=> (= (ControlFlow 0 79) (- 0 81)) (< 0 len_3)) (=> (< 0 len_3) (and (=> (= (ControlFlow 0 79) (- 0 80)) (= (|Seq#Length_17549| ar_1) len_3)) (=> (= (|Seq#Length_17549| ar_1) len_3) (and (and (=> (= (ControlFlow 0 79) 75) anon70_Else_correct) (=> (= (ControlFlow 0 79) 38) anon71_Then_correct)) (=> (= (ControlFlow 0 79) 40) anon71_Else_correct)))))))))))))))))
(let ((anon61_Else_correct  (and (=> (= (ControlFlow 0 108) (- 0 109)) (forall ((i_11_1 Int) (i_11_2 Int) ) (!  (=> (and (and (and (and (not (= i_11_1 i_11_2)) (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_11_1)) (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_11_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17549| cr i_11_1) (|Seq#Index_17549| cr i_11_2))))
 :qid |stdinbpl.2007:15|
 :skolemid |150|
))) (=> (forall ((i_11_1@@0 Int) (i_11_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_11_1@@0 i_11_2@@0)) (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_11_1@@0)) (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_11_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17549| cr i_11_1@@0) (|Seq#Index_17549| cr i_11_2@@0))))
 :qid |stdinbpl.2007:15|
 :skolemid |150|
)) (=> (and (and (forall ((i_11_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_11_1@@1) (< NoPerm FullPerm)) (and (qpRange14 (|Seq#Index_17549| cr i_11_1@@1)) (= (invRecv14 (|Seq#Index_17549| cr i_11_1@@1)) i_11_1@@1)))
 :qid |stdinbpl.2013:22|
 :skolemid |151|
 :pattern ( (|Seq#Index_17549| cr i_11_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3512| (|Seq#Range| 0 len_3) i_11_1@@1))
 :pattern ( (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_11_1@@1))
 :pattern ( (|Seq#Index_17549| cr i_11_1@@1))
)) (forall ((o_9@@76 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3512| (|Seq#Range| 0 len_3) (invRecv14 o_9@@76)) (< NoPerm FullPerm)) (qpRange14 o_9@@76)) (= (|Seq#Index_17549| cr (invRecv14 o_9@@76)) o_9@@76))
 :qid |stdinbpl.2017:22|
 :skolemid |152|
 :pattern ( (invRecv14 o_9@@76))
))) (and (forall ((i_11_1@@2 Int) ) (!  (=> (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_11_1@@2) (not (= (|Seq#Index_17549| cr i_11_1@@2) null)))
 :qid |stdinbpl.2023:22|
 :skolemid |153|
 :pattern ( (|Seq#Index_17549| cr i_11_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3512| (|Seq#Range| 0 len_3) i_11_1@@2))
 :pattern ( (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_11_1@@2))
 :pattern ( (|Seq#Index_17549| cr i_11_1@@2))
)) (forall ((o_9@@77 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3512| (|Seq#Range| 0 len_3) (invRecv14 o_9@@77)) (< NoPerm FullPerm)) (qpRange14 o_9@@77)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_17549| cr (invRecv14 o_9@@77)) o_9@@77)) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@2) o_9@@77 Integer_value) (+ (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@1) o_9@@77 Integer_value) FullPerm)))) (=> (not (and (and (|Seq#Contains_3512| (|Seq#Range| 0 len_3) (invRecv14 o_9@@77)) (< NoPerm FullPerm)) (qpRange14 o_9@@77))) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@2) o_9@@77 Integer_value) (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@1) o_9@@77 Integer_value))))
 :qid |stdinbpl.2029:22|
 :skolemid |154|
 :pattern ( (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@2) o_9@@77 Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_9@@78 T@Ref) (f_5@@54 T@Field_25588_53) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@1) o_9@@78 f_5@@54) (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@2) o_9@@78 f_5@@54)))
 :qid |stdinbpl.2033:29|
 :skolemid |155|
 :pattern ( (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@1) o_9@@78 f_5@@54))
 :pattern ( (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@2) o_9@@78 f_5@@54))
)) (forall ((o_9@@79 T@Ref) (f_5@@55 T@Field_25601_25602) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@1) o_9@@79 f_5@@55) (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@2) o_9@@79 f_5@@55)))
 :qid |stdinbpl.2033:29|
 :skolemid |155|
 :pattern ( (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@1) o_9@@79 f_5@@55))
 :pattern ( (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@2) o_9@@79 f_5@@55))
))) (forall ((o_9@@80 T@Ref) (f_5@@56 T@Field_31659_3634) ) (!  (=> (not (= f_5@@56 Integer_value)) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@1) o_9@@80 f_5@@56) (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@2) o_9@@80 f_5@@56)))
 :qid |stdinbpl.2033:29|
 :skolemid |155|
 :pattern ( (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@1) o_9@@80 f_5@@56))
 :pattern ( (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@2) o_9@@80 f_5@@56))
))) (forall ((o_9@@81 T@Ref) (f_5@@57 T@Field_17539_73985) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@1) o_9@@81 f_5@@57) (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@2) o_9@@81 f_5@@57)))
 :qid |stdinbpl.2033:29|
 :skolemid |155|
 :pattern ( (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@1) o_9@@81 f_5@@57))
 :pattern ( (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@2) o_9@@81 f_5@@57))
))) (forall ((o_9@@82 T@Ref) (f_5@@58 T@Field_17539_74118) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@1) o_9@@82 f_5@@58) (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@2) o_9@@82 f_5@@58)))
 :qid |stdinbpl.2033:29|
 :skolemid |155|
 :pattern ( (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@1) o_9@@82 f_5@@58))
 :pattern ( (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@2) o_9@@82 f_5@@58))
))) (and (state Heap@@17 QPMask@2) (state Heap@@17 QPMask@2))) (and (=> (= (ControlFlow 0 108) 107) anon63_Then_correct) (=> (= (ControlFlow 0 108) 79) anon63_Else_correct))))))))
(let ((anon23_correct true))
(let ((anon62_Else_correct  (=> (and (not (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_13)) (= (ControlFlow 0 36) 32)) anon23_correct)))
(let ((anon62_Then_correct  (=> (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_13) (and (=> (= (ControlFlow 0 33) (- 0 35)) (>= i_13 0)) (=> (>= i_13 0) (and (=> (= (ControlFlow 0 33) (- 0 34)) (< i_13 (|Seq#Length_17549| cr))) (=> (< i_13 (|Seq#Length_17549| cr)) (=> (= (ControlFlow 0 33) 32) anon23_correct))))))))
(let ((anon59_Else_correct  (=> (and (forall ((i_9_1 Int) (j_5 Int) ) (!  (=> (and (<= 0 i_9_1) (and (< i_9_1 (|Seq#Length_17549| cr)) (and (<= 0 j_5) (and (< j_5 (|Seq#Length_17549| cr)) (not (= i_9_1 j_5)))))) (not (= (|Seq#Index_17549| cr i_9_1) (|Seq#Index_17549| cr j_5))))
 :qid |stdinbpl.1989:20|
 :skolemid |149|
 :pattern ( (|Seq#Index_17549| cr i_9_1) (|Seq#Index_17549| cr j_5))
)) (state Heap@@17 QPMask@1)) (and (and (=> (= (ControlFlow 0 110) 108) anon61_Else_correct) (=> (= (ControlFlow 0 110) 33) anon62_Then_correct)) (=> (= (ControlFlow 0 110) 36) anon62_Else_correct)))))
(let ((anon19_correct true))
(let ((anon60_Else_correct  (=> (and (not (and (<= 0 i_12) (and (< i_12 (|Seq#Length_17549| cr)) (and (<= 0 j_23) (and (< j_23 (|Seq#Length_17549| cr)) (not (= i_12 j_23))))))) (= (ControlFlow 0 31) 25)) anon19_correct)))
(let ((anon60_Then_correct  (=> (and (<= 0 i_12) (and (< i_12 (|Seq#Length_17549| cr)) (and (<= 0 j_23) (and (< j_23 (|Seq#Length_17549| cr)) (not (= i_12 j_23)))))) (and (=> (= (ControlFlow 0 26) (- 0 30)) (>= i_12 0)) (=> (>= i_12 0) (and (=> (= (ControlFlow 0 26) (- 0 29)) (< i_12 (|Seq#Length_17549| cr))) (=> (< i_12 (|Seq#Length_17549| cr)) (and (=> (= (ControlFlow 0 26) (- 0 28)) (>= j_23 0)) (=> (>= j_23 0) (and (=> (= (ControlFlow 0 26) (- 0 27)) (< j_23 (|Seq#Length_17549| cr))) (=> (< j_23 (|Seq#Length_17549| cr)) (=> (= (ControlFlow 0 26) 25) anon19_correct))))))))))))
(let ((anon57_Else_correct  (and (=> (= (ControlFlow 0 111) (- 0 113)) (forall ((i_7_1 Int) (i_7_2 Int) ) (!  (=> (and (and (and (and (not (= i_7_1 i_7_2)) (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_7_1)) (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_7_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_17549| br i_7_1) (|Seq#Index_17549| br i_7_2))))
 :qid |stdinbpl.1933:15|
 :skolemid |142|
))) (=> (forall ((i_7_1@@0 Int) (i_7_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_7_1@@0 i_7_2@@0)) (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_7_1@@0)) (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_7_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_17549| br i_7_1@@0) (|Seq#Index_17549| br i_7_2@@0))))
 :qid |stdinbpl.1933:15|
 :skolemid |142|
)) (=> (and (forall ((i_7_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_7_1@@1) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange13 (|Seq#Index_17549| br i_7_1@@1)) (= (invRecv13 (|Seq#Index_17549| br i_7_1@@1)) i_7_1@@1)))
 :qid |stdinbpl.1939:22|
 :skolemid |143|
 :pattern ( (|Seq#Index_17549| br i_7_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3512| (|Seq#Range| 0 len_3) i_7_1@@1))
 :pattern ( (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_7_1@@1))
 :pattern ( (|Seq#Index_17549| br i_7_1@@1))
)) (forall ((o_9@@83 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3512| (|Seq#Range| 0 len_3) (invRecv13 o_9@@83)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange13 o_9@@83)) (= (|Seq#Index_17549| br (invRecv13 o_9@@83)) o_9@@83))
 :qid |stdinbpl.1943:22|
 :skolemid |144|
 :pattern ( (invRecv13 o_9@@83))
))) (and (=> (= (ControlFlow 0 111) (- 0 112)) (forall ((i_7_1@@2 Int) ) (!  (=> (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_7_1@@2) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1949:15|
 :skolemid |145|
 :pattern ( (|Seq#Index_17549| br i_7_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3512| (|Seq#Range| 0 len_3) i_7_1@@2))
 :pattern ( (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_7_1@@2))
 :pattern ( (|Seq#Index_17549| br i_7_1@@2))
))) (=> (forall ((i_7_1@@3 Int) ) (!  (=> (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_7_1@@3) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1949:15|
 :skolemid |145|
 :pattern ( (|Seq#Index_17549| br i_7_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3512| (|Seq#Range| 0 len_3) i_7_1@@3))
 :pattern ( (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_7_1@@3))
 :pattern ( (|Seq#Index_17549| br i_7_1@@3))
)) (=> (and (forall ((i_7_1@@4 Int) ) (!  (=> (and (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_7_1@@4) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= (|Seq#Index_17549| br i_7_1@@4) null)))
 :qid |stdinbpl.1955:22|
 :skolemid |146|
 :pattern ( (|Seq#Index_17549| br i_7_1@@4))
 :pattern ( (|Seq#ContainsTrigger_3512| (|Seq#Range| 0 len_3) i_7_1@@4))
 :pattern ( (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_7_1@@4))
 :pattern ( (|Seq#Index_17549| br i_7_1@@4))
)) (forall ((o_9@@84 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3512| (|Seq#Range| 0 len_3) (invRecv13 o_9@@84)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange13 o_9@@84)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (|Seq#Index_17549| br (invRecv13 o_9@@84)) o_9@@84)) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@1) o_9@@84 Integer_value) (+ (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@0) o_9@@84 Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (|Seq#Contains_3512| (|Seq#Range| 0 len_3) (invRecv13 o_9@@84)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange13 o_9@@84))) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@1) o_9@@84 Integer_value) (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@0) o_9@@84 Integer_value))))
 :qid |stdinbpl.1961:22|
 :skolemid |147|
 :pattern ( (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@1) o_9@@84 Integer_value))
))) (=> (and (and (and (and (and (forall ((o_9@@85 T@Ref) (f_5@@59 T@Field_25588_53) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@0) o_9@@85 f_5@@59) (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@1) o_9@@85 f_5@@59)))
 :qid |stdinbpl.1965:29|
 :skolemid |148|
 :pattern ( (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@0) o_9@@85 f_5@@59))
 :pattern ( (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@1) o_9@@85 f_5@@59))
)) (forall ((o_9@@86 T@Ref) (f_5@@60 T@Field_25601_25602) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@0) o_9@@86 f_5@@60) (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@1) o_9@@86 f_5@@60)))
 :qid |stdinbpl.1965:29|
 :skolemid |148|
 :pattern ( (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@0) o_9@@86 f_5@@60))
 :pattern ( (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@1) o_9@@86 f_5@@60))
))) (forall ((o_9@@87 T@Ref) (f_5@@61 T@Field_31659_3634) ) (!  (=> (not (= f_5@@61 Integer_value)) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@0) o_9@@87 f_5@@61) (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@1) o_9@@87 f_5@@61)))
 :qid |stdinbpl.1965:29|
 :skolemid |148|
 :pattern ( (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@0) o_9@@87 f_5@@61))
 :pattern ( (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@1) o_9@@87 f_5@@61))
))) (forall ((o_9@@88 T@Ref) (f_5@@62 T@Field_17539_73985) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@0) o_9@@88 f_5@@62) (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@1) o_9@@88 f_5@@62)))
 :qid |stdinbpl.1965:29|
 :skolemid |148|
 :pattern ( (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@0) o_9@@88 f_5@@62))
 :pattern ( (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@1) o_9@@88 f_5@@62))
))) (forall ((o_9@@89 T@Ref) (f_5@@63 T@Field_17539_74118) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@0) o_9@@89 f_5@@63) (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@1) o_9@@89 f_5@@63)))
 :qid |stdinbpl.1965:29|
 :skolemid |148|
 :pattern ( (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@0) o_9@@89 f_5@@63))
 :pattern ( (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@1) o_9@@89 f_5@@63))
))) (and (and (state Heap@@17 QPMask@1) (state Heap@@17 QPMask@1)) (and (= (|Seq#Length_17549| cr) len_3) (state Heap@@17 QPMask@1)))) (and (and (=> (= (ControlFlow 0 111) 110) anon59_Else_correct) (=> (= (ControlFlow 0 111) 26) anon60_Then_correct)) (=> (= (ControlFlow 0 111) 31) anon60_Else_correct)))))))))))
(let ((anon15_correct true))
(let ((anon58_Else_correct  (=> (and (not (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_11)) (= (ControlFlow 0 24) 20)) anon15_correct)))
(let ((anon58_Then_correct  (=> (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_11) (and (=> (= (ControlFlow 0 21) (- 0 23)) (>= i_11 0)) (=> (>= i_11 0) (and (=> (= (ControlFlow 0 21) (- 0 22)) (< i_11 (|Seq#Length_17549| br))) (=> (< i_11 (|Seq#Length_17549| br)) (=> (= (ControlFlow 0 21) 20) anon15_correct))))))))
(let ((anon55_Else_correct  (=> (and (forall ((i_5_1 Int) (j_3 Int) ) (!  (=> (and (<= 0 i_5_1) (and (< i_5_1 (|Seq#Length_17549| br)) (and (<= 0 j_3) (and (< j_3 (|Seq#Length_17549| br)) (not (= i_5_1 j_3)))))) (not (= (|Seq#Index_17549| br i_5_1) (|Seq#Index_17549| br j_3))))
 :qid |stdinbpl.1915:20|
 :skolemid |141|
 :pattern ( (|Seq#Index_17549| br i_5_1) (|Seq#Index_17549| br j_3))
)) (state Heap@@17 QPMask@0)) (and (and (=> (= (ControlFlow 0 114) 111) anon57_Else_correct) (=> (= (ControlFlow 0 114) 21) anon58_Then_correct)) (=> (= (ControlFlow 0 114) 24) anon58_Else_correct)))))
(let ((anon11_correct true))
(let ((anon56_Else_correct  (=> (and (not (and (<= 0 i_17) (and (< i_17 (|Seq#Length_17549| br)) (and (<= 0 j_22) (and (< j_22 (|Seq#Length_17549| br)) (not (= i_17 j_22))))))) (= (ControlFlow 0 19) 13)) anon11_correct)))
(let ((anon56_Then_correct  (=> (and (<= 0 i_17) (and (< i_17 (|Seq#Length_17549| br)) (and (<= 0 j_22) (and (< j_22 (|Seq#Length_17549| br)) (not (= i_17 j_22)))))) (and (=> (= (ControlFlow 0 14) (- 0 18)) (>= i_17 0)) (=> (>= i_17 0) (and (=> (= (ControlFlow 0 14) (- 0 17)) (< i_17 (|Seq#Length_17549| br))) (=> (< i_17 (|Seq#Length_17549| br)) (and (=> (= (ControlFlow 0 14) (- 0 16)) (>= j_22 0)) (=> (>= j_22 0) (and (=> (= (ControlFlow 0 14) (- 0 15)) (< j_22 (|Seq#Length_17549| br))) (=> (< j_22 (|Seq#Length_17549| br)) (=> (= (ControlFlow 0 14) 13) anon11_correct))))))))))))
(let ((anon53_Else_correct  (and (=> (= (ControlFlow 0 115) (- 0 116)) (forall ((i_3_2 Int) (i_3_3 Int) ) (!  (=> (and (and (and (and (not (= i_3_2 i_3_3)) (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_3_2)) (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_3_3)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17549| ar_1 i_3_2) (|Seq#Index_17549| ar_1 i_3_3))))
 :qid |stdinbpl.1865:15|
 :skolemid |135|
))) (=> (forall ((i_3_2@@0 Int) (i_3_3@@0 Int) ) (!  (=> (and (and (and (and (not (= i_3_2@@0 i_3_3@@0)) (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_3_2@@0)) (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_3_3@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17549| ar_1 i_3_2@@0) (|Seq#Index_17549| ar_1 i_3_3@@0))))
 :qid |stdinbpl.1865:15|
 :skolemid |135|
)) (=> (and (and (forall ((i_3_2@@1 Int) ) (!  (=> (and (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_3_2@@1) (< NoPerm FullPerm)) (and (qpRange12 (|Seq#Index_17549| ar_1 i_3_2@@1)) (= (invRecv12 (|Seq#Index_17549| ar_1 i_3_2@@1)) i_3_2@@1)))
 :qid |stdinbpl.1871:22|
 :skolemid |136|
 :pattern ( (|Seq#Index_17549| ar_1 i_3_2@@1))
 :pattern ( (|Seq#ContainsTrigger_3512| (|Seq#Range| 0 len_3) i_3_2@@1))
 :pattern ( (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_3_2@@1))
 :pattern ( (|Seq#Index_17549| ar_1 i_3_2@@1))
)) (forall ((o_9@@90 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3512| (|Seq#Range| 0 len_3) (invRecv12 o_9@@90)) (< NoPerm FullPerm)) (qpRange12 o_9@@90)) (= (|Seq#Index_17549| ar_1 (invRecv12 o_9@@90)) o_9@@90))
 :qid |stdinbpl.1875:22|
 :skolemid |137|
 :pattern ( (invRecv12 o_9@@90))
))) (and (forall ((i_3_2@@2 Int) ) (!  (=> (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_3_2@@2) (not (= (|Seq#Index_17549| ar_1 i_3_2@@2) null)))
 :qid |stdinbpl.1881:22|
 :skolemid |138|
 :pattern ( (|Seq#Index_17549| ar_1 i_3_2@@2))
 :pattern ( (|Seq#ContainsTrigger_3512| (|Seq#Range| 0 len_3) i_3_2@@2))
 :pattern ( (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_3_2@@2))
 :pattern ( (|Seq#Index_17549| ar_1 i_3_2@@2))
)) (forall ((o_9@@91 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3512| (|Seq#Range| 0 len_3) (invRecv12 o_9@@91)) (< NoPerm FullPerm)) (qpRange12 o_9@@91)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_17549| ar_1 (invRecv12 o_9@@91)) o_9@@91)) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@0) o_9@@91 Integer_value) (+ (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| ZeroMask) o_9@@91 Integer_value) FullPerm)))) (=> (not (and (and (|Seq#Contains_3512| (|Seq#Range| 0 len_3) (invRecv12 o_9@@91)) (< NoPerm FullPerm)) (qpRange12 o_9@@91))) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@0) o_9@@91 Integer_value) (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| ZeroMask) o_9@@91 Integer_value))))
 :qid |stdinbpl.1887:22|
 :skolemid |139|
 :pattern ( (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@0) o_9@@91 Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_9@@92 T@Ref) (f_5@@64 T@Field_25588_53) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| ZeroMask) o_9@@92 f_5@@64) (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@0) o_9@@92 f_5@@64)))
 :qid |stdinbpl.1891:29|
 :skolemid |140|
 :pattern ( (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| ZeroMask) o_9@@92 f_5@@64))
 :pattern ( (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@0) o_9@@92 f_5@@64))
)) (forall ((o_9@@93 T@Ref) (f_5@@65 T@Field_25601_25602) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| ZeroMask) o_9@@93 f_5@@65) (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@0) o_9@@93 f_5@@65)))
 :qid |stdinbpl.1891:29|
 :skolemid |140|
 :pattern ( (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| ZeroMask) o_9@@93 f_5@@65))
 :pattern ( (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@0) o_9@@93 f_5@@65))
))) (forall ((o_9@@94 T@Ref) (f_5@@66 T@Field_31659_3634) ) (!  (=> (not (= f_5@@66 Integer_value)) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| ZeroMask) o_9@@94 f_5@@66) (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@0) o_9@@94 f_5@@66)))
 :qid |stdinbpl.1891:29|
 :skolemid |140|
 :pattern ( (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| ZeroMask) o_9@@94 f_5@@66))
 :pattern ( (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@0) o_9@@94 f_5@@66))
))) (forall ((o_9@@95 T@Ref) (f_5@@67 T@Field_17539_73985) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| ZeroMask) o_9@@95 f_5@@67) (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@0) o_9@@95 f_5@@67)))
 :qid |stdinbpl.1891:29|
 :skolemid |140|
 :pattern ( (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| ZeroMask) o_9@@95 f_5@@67))
 :pattern ( (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@0) o_9@@95 f_5@@67))
))) (forall ((o_9@@96 T@Ref) (f_5@@68 T@Field_17539_74118) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| ZeroMask) o_9@@96 f_5@@68) (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@0) o_9@@96 f_5@@68)))
 :qid |stdinbpl.1891:29|
 :skolemid |140|
 :pattern ( (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| ZeroMask) o_9@@96 f_5@@68))
 :pattern ( (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@0) o_9@@96 f_5@@68))
))) (and (and (state Heap@@17 QPMask@0) (state Heap@@17 QPMask@0)) (and (= (|Seq#Length_17549| br) len_3) (state Heap@@17 QPMask@0)))) (and (and (=> (= (ControlFlow 0 115) 114) anon55_Else_correct) (=> (= (ControlFlow 0 115) 14) anon56_Then_correct)) (=> (= (ControlFlow 0 115) 19) anon56_Else_correct))))))))
(let ((anon7_correct true))
(let ((anon54_Else_correct  (=> (and (not (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_10)) (= (ControlFlow 0 12) 8)) anon7_correct)))
(let ((anon54_Then_correct  (=> (|Seq#Contains_3512| (|Seq#Range| 0 len_3) i_10) (and (=> (= (ControlFlow 0 9) (- 0 11)) (>= i_10 0)) (=> (>= i_10 0) (and (=> (= (ControlFlow 0 9) (- 0 10)) (< i_10 (|Seq#Length_17549| ar_1))) (=> (< i_10 (|Seq#Length_17549| ar_1)) (=> (= (ControlFlow 0 9) 8) anon7_correct))))))))
(let ((anon51_Else_correct  (=> (and (forall ((i_1 Int) (j_1 Int) ) (!  (=> (and (<= 0 i_1) (and (< i_1 (|Seq#Length_17549| ar_1)) (and (<= 0 j_1) (and (< j_1 (|Seq#Length_17549| ar_1)) (not (= i_1 j_1)))))) (not (= (|Seq#Index_17549| ar_1 i_1) (|Seq#Index_17549| ar_1 j_1))))
 :qid |stdinbpl.1847:20|
 :skolemid |134|
 :pattern ( (|Seq#Index_17549| ar_1 i_1) (|Seq#Index_17549| ar_1 j_1))
)) (state Heap@@17 ZeroMask)) (and (and (=> (= (ControlFlow 0 117) 115) anon53_Else_correct) (=> (= (ControlFlow 0 117) 9) anon54_Then_correct)) (=> (= (ControlFlow 0 117) 12) anon54_Else_correct)))))
(let ((anon3_correct true))
(let ((anon52_Else_correct  (=> (and (not (and (<= 0 i_9) (and (< i_9 (|Seq#Length_17549| ar_1)) (and (<= 0 j_7) (and (< j_7 (|Seq#Length_17549| ar_1)) (not (= i_9 j_7))))))) (= (ControlFlow 0 7) 1)) anon3_correct)))
(let ((anon52_Then_correct  (=> (and (<= 0 i_9) (and (< i_9 (|Seq#Length_17549| ar_1)) (and (<= 0 j_7) (and (< j_7 (|Seq#Length_17549| ar_1)) (not (= i_9 j_7)))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= i_9 0)) (=> (>= i_9 0) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< i_9 (|Seq#Length_17549| ar_1))) (=> (< i_9 (|Seq#Length_17549| ar_1)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= j_7 0)) (=> (>= j_7 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< j_7 (|Seq#Length_17549| ar_1))) (=> (< j_7 (|Seq#Length_17549| ar_1)) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))))))))
(let ((anon0_correct  (=> (state Heap@@17 ZeroMask) (=> (and AssumePermUpperBound (select (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| Heap@@17) this $allocated)) (=> (and (and (< 0 len_3) (state Heap@@17 ZeroMask)) (and (= (|Seq#Length_17549| ar_1) len_3) (state Heap@@17 ZeroMask))) (and (and (=> (= (ControlFlow 0 118) 117) anon51_Else_correct) (=> (= (ControlFlow 0 118) 2) anon52_Then_correct)) (=> (= (ControlFlow 0 118) 7) anon52_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 119) 118) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
