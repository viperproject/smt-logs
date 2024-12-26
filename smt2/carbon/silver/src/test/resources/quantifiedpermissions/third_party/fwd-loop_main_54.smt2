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
(assert (forall ((Heap@@0 T@PolymorphicMapType_25528) (ExhaleHeap T@PolymorphicMapType_25528) (Mask@@0 T@PolymorphicMapType_25549) (pm_f_27 T@Field_17539_73985) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_17539_74049 Mask@@0 null pm_f_27) (IsPredicateField_17539_74076 pm_f_27)) (= (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@0) null (PredicateMaskField_17539 pm_f_27)) (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| ExhaleHeap) null (PredicateMaskField_17539 pm_f_27)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_17539_74076 pm_f_27) (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| ExhaleHeap) null (PredicateMaskField_17539 pm_f_27)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_25528) (ExhaleHeap@@0 T@PolymorphicMapType_25528) (Mask@@1 T@PolymorphicMapType_25549) (pm_f_27@@0 T@Field_17539_73985) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_17539_74049 Mask@@1 null pm_f_27@@0) (IsWandField_17539_75823 pm_f_27@@0)) (= (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@1) null (WandMaskField_17539 pm_f_27@@0)) (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| ExhaleHeap@@0) null (WandMaskField_17539 pm_f_27@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_17539_75823 pm_f_27@@0) (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| ExhaleHeap@@0) null (WandMaskField_17539 pm_f_27@@0)))
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
(assert (forall ((Heap@@2 T@PolymorphicMapType_25528) (ExhaleHeap@@1 T@PolymorphicMapType_25528) (Mask@@2 T@PolymorphicMapType_25549) (o_9 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| Heap@@2) o_9 $allocated) (select (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| ExhaleHeap@@1) o_9 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| ExhaleHeap@@1) o_9 $allocated))
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
(assert (forall ((Heap@@4 T@PolymorphicMapType_25528) (ExhaleHeap@@3 T@PolymorphicMapType_25528) (Mask@@14 T@PolymorphicMapType_25549) (pm_f_27@@1 T@Field_17539_73985) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_17539_74049 Mask@@14 null pm_f_27@@1) (IsPredicateField_17539_74076 pm_f_27@@1)) (and (and (and (and (forall ((o2_27 T@Ref) (f_13 T@Field_25588_53) ) (!  (=> (select (|PolymorphicMapType_26077_25588_53#PolymorphicMapType_26077| (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@4) null (PredicateMaskField_17539 pm_f_27@@1))) o2_27 f_13) (= (select (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| Heap@@4) o2_27 f_13) (select (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| ExhaleHeap@@3) o2_27 f_13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| ExhaleHeap@@3) o2_27 f_13))
)) (forall ((o2_27@@0 T@Ref) (f_13@@0 T@Field_25601_25602) ) (!  (=> (select (|PolymorphicMapType_26077_25588_25602#PolymorphicMapType_26077| (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@4) null (PredicateMaskField_17539 pm_f_27@@1))) o2_27@@0 f_13@@0) (= (select (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| Heap@@4) o2_27@@0 f_13@@0) (select (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| ExhaleHeap@@3) o2_27@@0 f_13@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| ExhaleHeap@@3) o2_27@@0 f_13@@0))
))) (forall ((o2_27@@1 T@Ref) (f_13@@1 T@Field_31659_3634) ) (!  (=> (select (|PolymorphicMapType_26077_25588_3634#PolymorphicMapType_26077| (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@4) null (PredicateMaskField_17539 pm_f_27@@1))) o2_27@@1 f_13@@1) (= (select (|PolymorphicMapType_25528_17539_3634#PolymorphicMapType_25528| Heap@@4) o2_27@@1 f_13@@1) (select (|PolymorphicMapType_25528_17539_3634#PolymorphicMapType_25528| ExhaleHeap@@3) o2_27@@1 f_13@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25528_17539_3634#PolymorphicMapType_25528| ExhaleHeap@@3) o2_27@@1 f_13@@1))
))) (forall ((o2_27@@2 T@Ref) (f_13@@2 T@Field_17539_73985) ) (!  (=> (select (|PolymorphicMapType_26077_25588_73985#PolymorphicMapType_26077| (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@4) null (PredicateMaskField_17539 pm_f_27@@1))) o2_27@@2 f_13@@2) (= (select (|PolymorphicMapType_25528_25588_73985#PolymorphicMapType_25528| Heap@@4) o2_27@@2 f_13@@2) (select (|PolymorphicMapType_25528_25588_73985#PolymorphicMapType_25528| ExhaleHeap@@3) o2_27@@2 f_13@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25528_25588_73985#PolymorphicMapType_25528| ExhaleHeap@@3) o2_27@@2 f_13@@2))
))) (forall ((o2_27@@3 T@Ref) (f_13@@3 T@Field_17539_74118) ) (!  (=> (select (|PolymorphicMapType_26077_25588_75296#PolymorphicMapType_26077| (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@4) null (PredicateMaskField_17539 pm_f_27@@1))) o2_27@@3 f_13@@3) (= (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@4) o2_27@@3 f_13@@3) (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| ExhaleHeap@@3) o2_27@@3 f_13@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| ExhaleHeap@@3) o2_27@@3 f_13@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_17539_74076 pm_f_27@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_25528) (ExhaleHeap@@4 T@PolymorphicMapType_25528) (Mask@@15 T@PolymorphicMapType_25549) (pm_f_27@@2 T@Field_17539_73985) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_17539_74049 Mask@@15 null pm_f_27@@2) (IsWandField_17539_75823 pm_f_27@@2)) (and (and (and (and (forall ((o2_27@@4 T@Ref) (f_13@@4 T@Field_25588_53) ) (!  (=> (select (|PolymorphicMapType_26077_25588_53#PolymorphicMapType_26077| (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@5) null (WandMaskField_17539 pm_f_27@@2))) o2_27@@4 f_13@@4) (= (select (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| Heap@@5) o2_27@@4 f_13@@4) (select (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| ExhaleHeap@@4) o2_27@@4 f_13@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| ExhaleHeap@@4) o2_27@@4 f_13@@4))
)) (forall ((o2_27@@5 T@Ref) (f_13@@5 T@Field_25601_25602) ) (!  (=> (select (|PolymorphicMapType_26077_25588_25602#PolymorphicMapType_26077| (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@5) null (WandMaskField_17539 pm_f_27@@2))) o2_27@@5 f_13@@5) (= (select (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| Heap@@5) o2_27@@5 f_13@@5) (select (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| ExhaleHeap@@4) o2_27@@5 f_13@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| ExhaleHeap@@4) o2_27@@5 f_13@@5))
))) (forall ((o2_27@@6 T@Ref) (f_13@@6 T@Field_31659_3634) ) (!  (=> (select (|PolymorphicMapType_26077_25588_3634#PolymorphicMapType_26077| (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@5) null (WandMaskField_17539 pm_f_27@@2))) o2_27@@6 f_13@@6) (= (select (|PolymorphicMapType_25528_17539_3634#PolymorphicMapType_25528| Heap@@5) o2_27@@6 f_13@@6) (select (|PolymorphicMapType_25528_17539_3634#PolymorphicMapType_25528| ExhaleHeap@@4) o2_27@@6 f_13@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25528_17539_3634#PolymorphicMapType_25528| ExhaleHeap@@4) o2_27@@6 f_13@@6))
))) (forall ((o2_27@@7 T@Ref) (f_13@@7 T@Field_17539_73985) ) (!  (=> (select (|PolymorphicMapType_26077_25588_73985#PolymorphicMapType_26077| (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@5) null (WandMaskField_17539 pm_f_27@@2))) o2_27@@7 f_13@@7) (= (select (|PolymorphicMapType_25528_25588_73985#PolymorphicMapType_25528| Heap@@5) o2_27@@7 f_13@@7) (select (|PolymorphicMapType_25528_25588_73985#PolymorphicMapType_25528| ExhaleHeap@@4) o2_27@@7 f_13@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25528_25588_73985#PolymorphicMapType_25528| ExhaleHeap@@4) o2_27@@7 f_13@@7))
))) (forall ((o2_27@@8 T@Ref) (f_13@@8 T@Field_17539_74118) ) (!  (=> (select (|PolymorphicMapType_26077_25588_75296#PolymorphicMapType_26077| (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@5) null (WandMaskField_17539 pm_f_27@@2))) o2_27@@8 f_13@@8) (= (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@5) o2_27@@8 f_13@@8) (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| ExhaleHeap@@4) o2_27@@8 f_13@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| ExhaleHeap@@4) o2_27@@8 f_13@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_17539_75823 pm_f_27@@2))
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
(assert (forall ((Heap@@6 T@PolymorphicMapType_25528) (ExhaleHeap@@5 T@PolymorphicMapType_25528) (Mask@@16 T@PolymorphicMapType_25549) (o_9@@0 T@Ref) (f_13@@9 T@Field_17539_74118) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_17539_79823 Mask@@16 o_9@@0 f_13@@9) (= (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@6) o_9@@0 f_13@@9) (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| ExhaleHeap@@5) o_9@@0 f_13@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| ExhaleHeap@@5) o_9@@0 f_13@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_25528) (ExhaleHeap@@6 T@PolymorphicMapType_25528) (Mask@@17 T@PolymorphicMapType_25549) (o_9@@1 T@Ref) (f_13@@10 T@Field_17539_73985) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_17539_74049 Mask@@17 o_9@@1 f_13@@10) (= (select (|PolymorphicMapType_25528_25588_73985#PolymorphicMapType_25528| Heap@@7) o_9@@1 f_13@@10) (select (|PolymorphicMapType_25528_25588_73985#PolymorphicMapType_25528| ExhaleHeap@@6) o_9@@1 f_13@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_25528_25588_73985#PolymorphicMapType_25528| ExhaleHeap@@6) o_9@@1 f_13@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_25528) (ExhaleHeap@@7 T@PolymorphicMapType_25528) (Mask@@18 T@PolymorphicMapType_25549) (o_9@@2 T@Ref) (f_13@@11 T@Field_25601_25602) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_17539_25602 Mask@@18 o_9@@2 f_13@@11) (= (select (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| Heap@@8) o_9@@2 f_13@@11) (select (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| ExhaleHeap@@7) o_9@@2 f_13@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| ExhaleHeap@@7) o_9@@2 f_13@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_25528) (ExhaleHeap@@8 T@PolymorphicMapType_25528) (Mask@@19 T@PolymorphicMapType_25549) (o_9@@3 T@Ref) (f_13@@12 T@Field_25588_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_17539_53 Mask@@19 o_9@@3 f_13@@12) (= (select (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| Heap@@9) o_9@@3 f_13@@12) (select (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| ExhaleHeap@@8) o_9@@3 f_13@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| ExhaleHeap@@8) o_9@@3 f_13@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_25528) (ExhaleHeap@@9 T@PolymorphicMapType_25528) (Mask@@20 T@PolymorphicMapType_25549) (o_9@@4 T@Ref) (f_13@@13 T@Field_31659_3634) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_17539_3634 Mask@@20 o_9@@4 f_13@@13) (= (select (|PolymorphicMapType_25528_17539_3634#PolymorphicMapType_25528| Heap@@10) o_9@@4 f_13@@13) (select (|PolymorphicMapType_25528_17539_3634#PolymorphicMapType_25528| ExhaleHeap@@9) o_9@@4 f_13@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_25528_17539_3634#PolymorphicMapType_25528| ExhaleHeap@@9) o_9@@4 f_13@@13))
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
(assert (forall ((Heap@@11 T@PolymorphicMapType_25528) (o_31 T@Ref) (f_54 T@Field_17539_73985) (v@@4 T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_25528 (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| Heap@@11) (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| Heap@@11) (|PolymorphicMapType_25528_17539_3634#PolymorphicMapType_25528| Heap@@11) (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@11) (store (|PolymorphicMapType_25528_25588_73985#PolymorphicMapType_25528| Heap@@11) o_31 f_54 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25528 (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| Heap@@11) (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| Heap@@11) (|PolymorphicMapType_25528_17539_3634#PolymorphicMapType_25528| Heap@@11) (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@11) (store (|PolymorphicMapType_25528_25588_73985#PolymorphicMapType_25528| Heap@@11) o_31 f_54 v@@4)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_25528) (o_31@@0 T@Ref) (f_54@@0 T@Field_17539_74118) (v@@5 T@PolymorphicMapType_26077) ) (! (succHeap Heap@@12 (PolymorphicMapType_25528 (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| Heap@@12) (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| Heap@@12) (|PolymorphicMapType_25528_17539_3634#PolymorphicMapType_25528| Heap@@12) (store (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@12) o_31@@0 f_54@@0 v@@5) (|PolymorphicMapType_25528_25588_73985#PolymorphicMapType_25528| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25528 (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| Heap@@12) (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| Heap@@12) (|PolymorphicMapType_25528_17539_3634#PolymorphicMapType_25528| Heap@@12) (store (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@12) o_31@@0 f_54@@0 v@@5) (|PolymorphicMapType_25528_25588_73985#PolymorphicMapType_25528| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_25528) (o_31@@1 T@Ref) (f_54@@1 T@Field_31659_3634) (v@@6 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_25528 (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| Heap@@13) (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| Heap@@13) (store (|PolymorphicMapType_25528_17539_3634#PolymorphicMapType_25528| Heap@@13) o_31@@1 f_54@@1 v@@6) (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@13) (|PolymorphicMapType_25528_25588_73985#PolymorphicMapType_25528| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25528 (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| Heap@@13) (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| Heap@@13) (store (|PolymorphicMapType_25528_17539_3634#PolymorphicMapType_25528| Heap@@13) o_31@@1 f_54@@1 v@@6) (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@13) (|PolymorphicMapType_25528_25588_73985#PolymorphicMapType_25528| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_25528) (o_31@@2 T@Ref) (f_54@@2 T@Field_25601_25602) (v@@7 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_25528 (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| Heap@@14) (store (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| Heap@@14) o_31@@2 f_54@@2 v@@7) (|PolymorphicMapType_25528_17539_3634#PolymorphicMapType_25528| Heap@@14) (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@14) (|PolymorphicMapType_25528_25588_73985#PolymorphicMapType_25528| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25528 (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| Heap@@14) (store (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| Heap@@14) o_31@@2 f_54@@2 v@@7) (|PolymorphicMapType_25528_17539_3634#PolymorphicMapType_25528| Heap@@14) (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@14) (|PolymorphicMapType_25528_25588_73985#PolymorphicMapType_25528| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_25528) (o_31@@3 T@Ref) (f_54@@3 T@Field_25588_53) (v@@8 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_25528 (store (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| Heap@@15) o_31@@3 f_54@@3 v@@8) (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| Heap@@15) (|PolymorphicMapType_25528_17539_3634#PolymorphicMapType_25528| Heap@@15) (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@15) (|PolymorphicMapType_25528_25588_73985#PolymorphicMapType_25528| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25528 (store (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| Heap@@15) o_31@@3 f_54@@3 v@@8) (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| Heap@@15) (|PolymorphicMapType_25528_17539_3634#PolymorphicMapType_25528| Heap@@15) (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@15) (|PolymorphicMapType_25528_25588_73985#PolymorphicMapType_25528| Heap@@15)))
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
(assert (forall ((o_31@@4 T@Ref) (f_36 T@Field_25601_25602) (Heap@@16 T@PolymorphicMapType_25528) ) (!  (=> (select (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| Heap@@16) o_31@@4 $allocated) (select (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| Heap@@16) (select (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| Heap@@16) o_31@@4 f_36) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| Heap@@16) o_31@@4 f_36))
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
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun len () Int)
(declare-fun i_12 () Int)
(declare-fun ar () T@Seq_31705)
(declare-fun qpRange7 (T@Ref) Bool)
(declare-fun invRecv7 (T@Ref) Int)
(declare-fun QPMask@10 () T@PolymorphicMapType_25549)
(declare-fun QPMask@9 () T@PolymorphicMapType_25549)
(declare-fun PostHeap@0 () T@PolymorphicMapType_25528)
(declare-fun perm@1 () Real)
(declare-fun cr () T@Seq_31705)
(declare-fun qpRange6 (T@Ref) Bool)
(declare-fun invRecv6 (T@Ref) Int)
(declare-fun QPMask@8 () T@PolymorphicMapType_25549)
(declare-fun i_11 () Int)
(declare-fun br () T@Seq_31705)
(declare-fun qpRange5 (T@Ref) Bool)
(declare-fun invRecv5 (T@Ref) Int)
(declare-fun QPMask@7 () T@PolymorphicMapType_25549)
(declare-fun i_10 () Int)
(declare-fun qpRange4 (T@Ref) Bool)
(declare-fun invRecv4 (T@Ref) Int)
(declare-fun i_9 () Int)
(declare-fun qpRange3 (T@Ref) Bool)
(declare-fun invRecv3 (T@Ref) Int)
(declare-fun QPMask@2 () T@PolymorphicMapType_25549)
(declare-fun QPMask@1 () T@PolymorphicMapType_25549)
(declare-fun Heap@@17 () T@PolymorphicMapType_25528)
(declare-fun i_8 () Int)
(declare-fun i_7 () Int)
(declare-fun j_7 () Int)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_25549)
(declare-fun i_6 () Int)
(declare-fun i_4 () Int)
(declare-fun j_6 () Int)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) Int)
(declare-fun i_2 () Int)
(declare-fun i_14 () Int)
(declare-fun j_5 () Int)
(declare-fun this () T@Ref)
(set-info :boogie-vc-id loop_main_54)
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
 (=> (= (ControlFlow 0 0) 99) (let ((anon40_correct true))
(let ((anon65_Else_correct  (=> (and (not (|Seq#Contains_3512| (|Seq#Range| 0 (- len 1)) i_12)) (= (ControlFlow 0 78) 74)) anon40_correct)))
(let ((anon65_Then_correct  (=> (|Seq#Contains_3512| (|Seq#Range| 0 (- len 1)) i_12) (and (=> (= (ControlFlow 0 75) (- 0 77)) (>= i_12 0)) (=> (>= i_12 0) (and (=> (= (ControlFlow 0 75) (- 0 76)) (< i_12 (|Seq#Length_17549| ar))) (=> (< i_12 (|Seq#Length_17549| ar)) (=> (= (ControlFlow 0 75) 74) anon40_correct))))))))
(let ((anon64_Else_correct  (and (=> (= (ControlFlow 0 69) (- 0 73)) (forall ((i_19 Int) (i_19_1 Int) ) (!  (=> (and (and (and (and (not (= i_19 i_19_1)) (|Seq#Contains_3512| (|Seq#Range| 0 (- len 1)) i_19)) (|Seq#Contains_3512| (|Seq#Range| 0 (- len 1)) i_19_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_17549| ar i_19) (|Seq#Index_17549| ar i_19_1))))
 :qid |stdinbpl.1072:15|
 :skolemid |100|
))) (=> (forall ((i_19@@0 Int) (i_19_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_19@@0 i_19_1@@0)) (|Seq#Contains_3512| (|Seq#Range| 0 (- len 1)) i_19@@0)) (|Seq#Contains_3512| (|Seq#Range| 0 (- len 1)) i_19_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_17549| ar i_19@@0) (|Seq#Index_17549| ar i_19_1@@0))))
 :qid |stdinbpl.1072:15|
 :skolemid |100|
)) (=> (and (forall ((i_19@@1 Int) ) (!  (=> (and (|Seq#Contains_3512| (|Seq#Range| 0 (- len 1)) i_19@@1) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange7 (|Seq#Index_17549| ar i_19@@1)) (= (invRecv7 (|Seq#Index_17549| ar i_19@@1)) i_19@@1)))
 :qid |stdinbpl.1078:22|
 :skolemid |101|
 :pattern ( (|Seq#Index_17549| ar i_19@@1))
 :pattern ( (|Seq#Index_17549| ar i_19@@1))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3512| (|Seq#Range| 0 (- len 1)) (invRecv7 o_4)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange7 o_4)) (= (|Seq#Index_17549| ar (invRecv7 o_4)) o_4))
 :qid |stdinbpl.1082:22|
 :skolemid |102|
 :pattern ( (invRecv7 o_4))
))) (and (=> (= (ControlFlow 0 69) (- 0 72)) (forall ((i_19@@2 Int) ) (!  (=> (|Seq#Contains_3512| (|Seq#Range| 0 (- len 1)) i_19@@2) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1088:15|
 :skolemid |103|
 :pattern ( (|Seq#Index_17549| ar i_19@@2))
 :pattern ( (|Seq#Index_17549| ar i_19@@2))
))) (=> (forall ((i_19@@3 Int) ) (!  (=> (|Seq#Contains_3512| (|Seq#Range| 0 (- len 1)) i_19@@3) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1088:15|
 :skolemid |103|
 :pattern ( (|Seq#Index_17549| ar i_19@@3))
 :pattern ( (|Seq#Index_17549| ar i_19@@3))
)) (=> (and (forall ((i_19@@4 Int) ) (!  (=> (and (|Seq#Contains_3512| (|Seq#Range| 0 (- len 1)) i_19@@4) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= (|Seq#Index_17549| ar i_19@@4) null)))
 :qid |stdinbpl.1094:22|
 :skolemid |104|
 :pattern ( (|Seq#Index_17549| ar i_19@@4))
 :pattern ( (|Seq#Index_17549| ar i_19@@4))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3512| (|Seq#Range| 0 (- len 1)) (invRecv7 o_4@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange7 o_4@@0)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (|Seq#Index_17549| ar (invRecv7 o_4@@0)) o_4@@0)) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@10) o_4@@0 Integer_value) (+ (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@9) o_4@@0 Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (|Seq#Contains_3512| (|Seq#Range| 0 (- len 1)) (invRecv7 o_4@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange7 o_4@@0))) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@10) o_4@@0 Integer_value) (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@9) o_4@@0 Integer_value))))
 :qid |stdinbpl.1100:22|
 :skolemid |105|
 :pattern ( (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@10) o_4@@0 Integer_value))
))) (=> (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_25588_53) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@9) o_4@@1 f_5) (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@10) o_4@@1 f_5)))
 :qid |stdinbpl.1104:29|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@9) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@10) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_25601_25602) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@9) o_4@@2 f_5@@0) (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@10) o_4@@2 f_5@@0)))
 :qid |stdinbpl.1104:29|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@9) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@10) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_31659_3634) ) (!  (=> (not (= f_5@@1 Integer_value)) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@9) o_4@@3 f_5@@1) (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@10) o_4@@3 f_5@@1)))
 :qid |stdinbpl.1104:29|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@9) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@10) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_17539_73985) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@9) o_4@@4 f_5@@2) (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@10) o_4@@4 f_5@@2)))
 :qid |stdinbpl.1104:29|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@9) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@10) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_17539_74118) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@9) o_4@@5 f_5@@3) (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@10) o_4@@5 f_5@@3)))
 :qid |stdinbpl.1104:29|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@9) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@10) o_4@@5 f_5@@3))
))) (and (state PostHeap@0 QPMask@10) (state PostHeap@0 QPMask@10))) (and (=> (= (ControlFlow 0 69) (- 0 71)) (>= (- (|Seq#Length_17549| ar) 1) 0)) (=> (>= (- (|Seq#Length_17549| ar) 1) 0) (and (=> (= (ControlFlow 0 69) (- 0 70)) (< (- (|Seq#Length_17549| ar) 1) (|Seq#Length_17549| ar))) (=> (< (- (|Seq#Length_17549| ar) 1) (|Seq#Length_17549| ar)) (=> (and (= perm@1 (/ (to_real 1) (to_real 2))) (= (ControlFlow 0 69) (- 0 68))) (>= perm@1 NoPerm)))))))))))))))
(let ((anon62_Else_correct  (and (=> (= (ControlFlow 0 79) (- 0 80)) (forall ((i_17 Int) (i_17_1 Int) ) (!  (=> (and (and (and (and (not (= i_17 i_17_1)) (|Seq#Contains_3512| (|Seq#Range| 0 len) i_17)) (|Seq#Contains_3512| (|Seq#Range| 0 len) i_17_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17549| cr i_17) (|Seq#Index_17549| cr i_17_1))))
 :qid |stdinbpl.1026:15|
 :skolemid |94|
))) (=> (forall ((i_17@@0 Int) (i_17_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_17@@0 i_17_1@@0)) (|Seq#Contains_3512| (|Seq#Range| 0 len) i_17@@0)) (|Seq#Contains_3512| (|Seq#Range| 0 len) i_17_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17549| cr i_17@@0) (|Seq#Index_17549| cr i_17_1@@0))))
 :qid |stdinbpl.1026:15|
 :skolemid |94|
)) (=> (and (and (forall ((i_17@@1 Int) ) (!  (=> (and (|Seq#Contains_3512| (|Seq#Range| 0 len) i_17@@1) (< NoPerm FullPerm)) (and (qpRange6 (|Seq#Index_17549| cr i_17@@1)) (= (invRecv6 (|Seq#Index_17549| cr i_17@@1)) i_17@@1)))
 :qid |stdinbpl.1032:22|
 :skolemid |95|
 :pattern ( (|Seq#Index_17549| cr i_17@@1))
 :pattern ( (|Seq#ContainsTrigger_3512| (|Seq#Range| 0 len) i_17@@1))
 :pattern ( (|Seq#Contains_3512| (|Seq#Range| 0 len) i_17@@1))
 :pattern ( (|Seq#Index_17549| cr i_17@@1))
)) (forall ((o_4@@6 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3512| (|Seq#Range| 0 len) (invRecv6 o_4@@6)) (< NoPerm FullPerm)) (qpRange6 o_4@@6)) (= (|Seq#Index_17549| cr (invRecv6 o_4@@6)) o_4@@6))
 :qid |stdinbpl.1036:22|
 :skolemid |96|
 :pattern ( (invRecv6 o_4@@6))
))) (and (forall ((i_17@@2 Int) ) (!  (=> (|Seq#Contains_3512| (|Seq#Range| 0 len) i_17@@2) (not (= (|Seq#Index_17549| cr i_17@@2) null)))
 :qid |stdinbpl.1042:22|
 :skolemid |97|
 :pattern ( (|Seq#Index_17549| cr i_17@@2))
 :pattern ( (|Seq#ContainsTrigger_3512| (|Seq#Range| 0 len) i_17@@2))
 :pattern ( (|Seq#Contains_3512| (|Seq#Range| 0 len) i_17@@2))
 :pattern ( (|Seq#Index_17549| cr i_17@@2))
)) (forall ((o_4@@7 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3512| (|Seq#Range| 0 len) (invRecv6 o_4@@7)) (< NoPerm FullPerm)) (qpRange6 o_4@@7)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_17549| cr (invRecv6 o_4@@7)) o_4@@7)) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@9) o_4@@7 Integer_value) (+ (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@8) o_4@@7 Integer_value) FullPerm)))) (=> (not (and (and (|Seq#Contains_3512| (|Seq#Range| 0 len) (invRecv6 o_4@@7)) (< NoPerm FullPerm)) (qpRange6 o_4@@7))) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@9) o_4@@7 Integer_value) (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@8) o_4@@7 Integer_value))))
 :qid |stdinbpl.1048:22|
 :skolemid |98|
 :pattern ( (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@9) o_4@@7 Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_4@@8 T@Ref) (f_5@@4 T@Field_25588_53) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@8) o_4@@8 f_5@@4) (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@9) o_4@@8 f_5@@4)))
 :qid |stdinbpl.1052:29|
 :skolemid |99|
 :pattern ( (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@8) o_4@@8 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@9) o_4@@8 f_5@@4))
)) (forall ((o_4@@9 T@Ref) (f_5@@5 T@Field_25601_25602) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@8) o_4@@9 f_5@@5) (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@9) o_4@@9 f_5@@5)))
 :qid |stdinbpl.1052:29|
 :skolemid |99|
 :pattern ( (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@8) o_4@@9 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@9) o_4@@9 f_5@@5))
))) (forall ((o_4@@10 T@Ref) (f_5@@6 T@Field_31659_3634) ) (!  (=> (not (= f_5@@6 Integer_value)) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@8) o_4@@10 f_5@@6) (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@9) o_4@@10 f_5@@6)))
 :qid |stdinbpl.1052:29|
 :skolemid |99|
 :pattern ( (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@8) o_4@@10 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@9) o_4@@10 f_5@@6))
))) (forall ((o_4@@11 T@Ref) (f_5@@7 T@Field_17539_73985) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@8) o_4@@11 f_5@@7) (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@9) o_4@@11 f_5@@7)))
 :qid |stdinbpl.1052:29|
 :skolemid |99|
 :pattern ( (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@8) o_4@@11 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@9) o_4@@11 f_5@@7))
))) (forall ((o_4@@12 T@Ref) (f_5@@8 T@Field_17539_74118) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@8) o_4@@12 f_5@@8) (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@9) o_4@@12 f_5@@8)))
 :qid |stdinbpl.1052:29|
 :skolemid |99|
 :pattern ( (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@8) o_4@@12 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@9) o_4@@12 f_5@@8))
))) (and (state PostHeap@0 QPMask@9) (state PostHeap@0 QPMask@9))) (and (and (=> (= (ControlFlow 0 79) 69) anon64_Else_correct) (=> (= (ControlFlow 0 79) 75) anon65_Then_correct)) (=> (= (ControlFlow 0 79) 78) anon65_Else_correct))))))))
(let ((anon36_correct true))
(let ((anon63_Else_correct  (=> (and (not (|Seq#Contains_3512| (|Seq#Range| 0 len) i_11)) (= (ControlFlow 0 67) 63)) anon36_correct)))
(let ((anon63_Then_correct  (=> (|Seq#Contains_3512| (|Seq#Range| 0 len) i_11) (and (=> (= (ControlFlow 0 64) (- 0 66)) (>= i_11 0)) (=> (>= i_11 0) (and (=> (= (ControlFlow 0 64) (- 0 65)) (< i_11 (|Seq#Length_17549| cr))) (=> (< i_11 (|Seq#Length_17549| cr)) (=> (= (ControlFlow 0 64) 63) anon36_correct))))))))
(let ((anon60_Else_correct  (and (=> (= (ControlFlow 0 81) (- 0 83)) (forall ((i_15 Int) (i_15_1 Int) ) (!  (=> (and (and (and (and (not (= i_15 i_15_1)) (|Seq#Contains_3512| (|Seq#Range| 0 len) i_15)) (|Seq#Contains_3512| (|Seq#Range| 0 len) i_15_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_17549| br i_15) (|Seq#Index_17549| br i_15_1))))
 :qid |stdinbpl.972:15|
 :skolemid |87|
))) (=> (forall ((i_15@@0 Int) (i_15_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_15@@0 i_15_1@@0)) (|Seq#Contains_3512| (|Seq#Range| 0 len) i_15@@0)) (|Seq#Contains_3512| (|Seq#Range| 0 len) i_15_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_17549| br i_15@@0) (|Seq#Index_17549| br i_15_1@@0))))
 :qid |stdinbpl.972:15|
 :skolemid |87|
)) (=> (and (forall ((i_15@@1 Int) ) (!  (=> (and (|Seq#Contains_3512| (|Seq#Range| 0 len) i_15@@1) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange5 (|Seq#Index_17549| br i_15@@1)) (= (invRecv5 (|Seq#Index_17549| br i_15@@1)) i_15@@1)))
 :qid |stdinbpl.978:22|
 :skolemid |88|
 :pattern ( (|Seq#Index_17549| br i_15@@1))
 :pattern ( (|Seq#ContainsTrigger_3512| (|Seq#Range| 0 len) i_15@@1))
 :pattern ( (|Seq#Contains_3512| (|Seq#Range| 0 len) i_15@@1))
 :pattern ( (|Seq#Index_17549| br i_15@@1))
)) (forall ((o_4@@13 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3512| (|Seq#Range| 0 len) (invRecv5 o_4@@13)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange5 o_4@@13)) (= (|Seq#Index_17549| br (invRecv5 o_4@@13)) o_4@@13))
 :qid |stdinbpl.982:22|
 :skolemid |89|
 :pattern ( (invRecv5 o_4@@13))
))) (and (=> (= (ControlFlow 0 81) (- 0 82)) (forall ((i_15@@2 Int) ) (!  (=> (|Seq#Contains_3512| (|Seq#Range| 0 len) i_15@@2) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.988:15|
 :skolemid |90|
 :pattern ( (|Seq#Index_17549| br i_15@@2))
 :pattern ( (|Seq#ContainsTrigger_3512| (|Seq#Range| 0 len) i_15@@2))
 :pattern ( (|Seq#Contains_3512| (|Seq#Range| 0 len) i_15@@2))
 :pattern ( (|Seq#Index_17549| br i_15@@2))
))) (=> (forall ((i_15@@3 Int) ) (!  (=> (|Seq#Contains_3512| (|Seq#Range| 0 len) i_15@@3) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.988:15|
 :skolemid |90|
 :pattern ( (|Seq#Index_17549| br i_15@@3))
 :pattern ( (|Seq#ContainsTrigger_3512| (|Seq#Range| 0 len) i_15@@3))
 :pattern ( (|Seq#Contains_3512| (|Seq#Range| 0 len) i_15@@3))
 :pattern ( (|Seq#Index_17549| br i_15@@3))
)) (=> (and (forall ((i_15@@4 Int) ) (!  (=> (and (|Seq#Contains_3512| (|Seq#Range| 0 len) i_15@@4) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= (|Seq#Index_17549| br i_15@@4) null)))
 :qid |stdinbpl.994:22|
 :skolemid |91|
 :pattern ( (|Seq#Index_17549| br i_15@@4))
 :pattern ( (|Seq#ContainsTrigger_3512| (|Seq#Range| 0 len) i_15@@4))
 :pattern ( (|Seq#Contains_3512| (|Seq#Range| 0 len) i_15@@4))
 :pattern ( (|Seq#Index_17549| br i_15@@4))
)) (forall ((o_4@@14 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3512| (|Seq#Range| 0 len) (invRecv5 o_4@@14)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange5 o_4@@14)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (|Seq#Index_17549| br (invRecv5 o_4@@14)) o_4@@14)) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@8) o_4@@14 Integer_value) (+ (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@7) o_4@@14 Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (|Seq#Contains_3512| (|Seq#Range| 0 len) (invRecv5 o_4@@14)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange5 o_4@@14))) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@8) o_4@@14 Integer_value) (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@7) o_4@@14 Integer_value))))
 :qid |stdinbpl.1000:22|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@8) o_4@@14 Integer_value))
))) (=> (and (and (and (and (and (forall ((o_4@@15 T@Ref) (f_5@@9 T@Field_25588_53) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@7) o_4@@15 f_5@@9) (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@8) o_4@@15 f_5@@9)))
 :qid |stdinbpl.1004:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@7) o_4@@15 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@8) o_4@@15 f_5@@9))
)) (forall ((o_4@@16 T@Ref) (f_5@@10 T@Field_25601_25602) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@7) o_4@@16 f_5@@10) (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@8) o_4@@16 f_5@@10)))
 :qid |stdinbpl.1004:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@7) o_4@@16 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@8) o_4@@16 f_5@@10))
))) (forall ((o_4@@17 T@Ref) (f_5@@11 T@Field_31659_3634) ) (!  (=> (not (= f_5@@11 Integer_value)) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@7) o_4@@17 f_5@@11) (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@8) o_4@@17 f_5@@11)))
 :qid |stdinbpl.1004:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@7) o_4@@17 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@8) o_4@@17 f_5@@11))
))) (forall ((o_4@@18 T@Ref) (f_5@@12 T@Field_17539_73985) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@7) o_4@@18 f_5@@12) (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@8) o_4@@18 f_5@@12)))
 :qid |stdinbpl.1004:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@7) o_4@@18 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@8) o_4@@18 f_5@@12))
))) (forall ((o_4@@19 T@Ref) (f_5@@13 T@Field_17539_74118) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@7) o_4@@19 f_5@@13) (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@8) o_4@@19 f_5@@13)))
 :qid |stdinbpl.1004:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@7) o_4@@19 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@8) o_4@@19 f_5@@13))
))) (and (and (state PostHeap@0 QPMask@8) (state PostHeap@0 QPMask@8)) (and (= (|Seq#Length_17549| cr) len) (state PostHeap@0 QPMask@8)))) (and (and (=> (= (ControlFlow 0 81) 79) anon62_Else_correct) (=> (= (ControlFlow 0 81) 64) anon63_Then_correct)) (=> (= (ControlFlow 0 81) 67) anon63_Else_correct)))))))))))
(let ((anon32_correct true))
(let ((anon61_Else_correct  (=> (and (not (|Seq#Contains_3512| (|Seq#Range| 0 len) i_10)) (= (ControlFlow 0 62) 58)) anon32_correct)))
(let ((anon61_Then_correct  (=> (|Seq#Contains_3512| (|Seq#Range| 0 len) i_10) (and (=> (= (ControlFlow 0 59) (- 0 61)) (>= i_10 0)) (=> (>= i_10 0) (and (=> (= (ControlFlow 0 59) (- 0 60)) (< i_10 (|Seq#Length_17549| br))) (=> (< i_10 (|Seq#Length_17549| br)) (=> (= (ControlFlow 0 59) 58) anon32_correct))))))))
(let ((anon58_Else_correct  (and (=> (= (ControlFlow 0 84) (- 0 86)) (forall ((i_13_1 Int) (i_13_2 Int) ) (!  (=> (and (and (and (and (not (= i_13_1 i_13_2)) (|Seq#Contains_3512| (|Seq#Range| 0 len) i_13_1)) (|Seq#Contains_3512| (|Seq#Range| 0 len) i_13_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_17549| ar i_13_1) (|Seq#Index_17549| ar i_13_2))))
 :qid |stdinbpl.918:15|
 :skolemid |80|
))) (=> (forall ((i_13_1@@0 Int) (i_13_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_13_1@@0 i_13_2@@0)) (|Seq#Contains_3512| (|Seq#Range| 0 len) i_13_1@@0)) (|Seq#Contains_3512| (|Seq#Range| 0 len) i_13_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_17549| ar i_13_1@@0) (|Seq#Index_17549| ar i_13_2@@0))))
 :qid |stdinbpl.918:15|
 :skolemid |80|
)) (=> (and (forall ((i_13_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3512| (|Seq#Range| 0 len) i_13_1@@1) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange4 (|Seq#Index_17549| ar i_13_1@@1)) (= (invRecv4 (|Seq#Index_17549| ar i_13_1@@1)) i_13_1@@1)))
 :qid |stdinbpl.924:22|
 :skolemid |81|
 :pattern ( (|Seq#Index_17549| ar i_13_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3512| (|Seq#Range| 0 len) i_13_1@@1))
 :pattern ( (|Seq#Contains_3512| (|Seq#Range| 0 len) i_13_1@@1))
 :pattern ( (|Seq#Index_17549| ar i_13_1@@1))
)) (forall ((o_4@@20 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3512| (|Seq#Range| 0 len) (invRecv4 o_4@@20)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange4 o_4@@20)) (= (|Seq#Index_17549| ar (invRecv4 o_4@@20)) o_4@@20))
 :qid |stdinbpl.928:22|
 :skolemid |82|
 :pattern ( (invRecv4 o_4@@20))
))) (and (=> (= (ControlFlow 0 84) (- 0 85)) (forall ((i_13_1@@2 Int) ) (!  (=> (|Seq#Contains_3512| (|Seq#Range| 0 len) i_13_1@@2) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.934:15|
 :skolemid |83|
 :pattern ( (|Seq#Index_17549| ar i_13_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3512| (|Seq#Range| 0 len) i_13_1@@2))
 :pattern ( (|Seq#Contains_3512| (|Seq#Range| 0 len) i_13_1@@2))
 :pattern ( (|Seq#Index_17549| ar i_13_1@@2))
))) (=> (forall ((i_13_1@@3 Int) ) (!  (=> (|Seq#Contains_3512| (|Seq#Range| 0 len) i_13_1@@3) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.934:15|
 :skolemid |83|
 :pattern ( (|Seq#Index_17549| ar i_13_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3512| (|Seq#Range| 0 len) i_13_1@@3))
 :pattern ( (|Seq#Contains_3512| (|Seq#Range| 0 len) i_13_1@@3))
 :pattern ( (|Seq#Index_17549| ar i_13_1@@3))
)) (=> (and (forall ((i_13_1@@4 Int) ) (!  (=> (and (|Seq#Contains_3512| (|Seq#Range| 0 len) i_13_1@@4) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= (|Seq#Index_17549| ar i_13_1@@4) null)))
 :qid |stdinbpl.940:22|
 :skolemid |84|
 :pattern ( (|Seq#Index_17549| ar i_13_1@@4))
 :pattern ( (|Seq#ContainsTrigger_3512| (|Seq#Range| 0 len) i_13_1@@4))
 :pattern ( (|Seq#Contains_3512| (|Seq#Range| 0 len) i_13_1@@4))
 :pattern ( (|Seq#Index_17549| ar i_13_1@@4))
)) (forall ((o_4@@21 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3512| (|Seq#Range| 0 len) (invRecv4 o_4@@21)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange4 o_4@@21)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (|Seq#Index_17549| ar (invRecv4 o_4@@21)) o_4@@21)) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@7) o_4@@21 Integer_value) (+ (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| ZeroMask) o_4@@21 Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (|Seq#Contains_3512| (|Seq#Range| 0 len) (invRecv4 o_4@@21)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange4 o_4@@21))) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@7) o_4@@21 Integer_value) (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| ZeroMask) o_4@@21 Integer_value))))
 :qid |stdinbpl.946:22|
 :skolemid |85|
 :pattern ( (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@7) o_4@@21 Integer_value))
))) (=> (and (and (and (and (and (forall ((o_4@@22 T@Ref) (f_5@@14 T@Field_25588_53) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| ZeroMask) o_4@@22 f_5@@14) (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@7) o_4@@22 f_5@@14)))
 :qid |stdinbpl.950:29|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| ZeroMask) o_4@@22 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@7) o_4@@22 f_5@@14))
)) (forall ((o_4@@23 T@Ref) (f_5@@15 T@Field_25601_25602) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| ZeroMask) o_4@@23 f_5@@15) (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@7) o_4@@23 f_5@@15)))
 :qid |stdinbpl.950:29|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| ZeroMask) o_4@@23 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@7) o_4@@23 f_5@@15))
))) (forall ((o_4@@24 T@Ref) (f_5@@16 T@Field_31659_3634) ) (!  (=> (not (= f_5@@16 Integer_value)) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| ZeroMask) o_4@@24 f_5@@16) (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@7) o_4@@24 f_5@@16)))
 :qid |stdinbpl.950:29|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| ZeroMask) o_4@@24 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@7) o_4@@24 f_5@@16))
))) (forall ((o_4@@25 T@Ref) (f_5@@17 T@Field_17539_73985) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| ZeroMask) o_4@@25 f_5@@17) (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@7) o_4@@25 f_5@@17)))
 :qid |stdinbpl.950:29|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| ZeroMask) o_4@@25 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@7) o_4@@25 f_5@@17))
))) (forall ((o_4@@26 T@Ref) (f_5@@18 T@Field_17539_74118) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| ZeroMask) o_4@@26 f_5@@18) (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@7) o_4@@26 f_5@@18)))
 :qid |stdinbpl.950:29|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| ZeroMask) o_4@@26 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@7) o_4@@26 f_5@@18))
))) (and (and (state PostHeap@0 QPMask@7) (state PostHeap@0 QPMask@7)) (and (= (|Seq#Length_17549| br) len) (state PostHeap@0 QPMask@7)))) (and (and (=> (= (ControlFlow 0 84) 81) anon60_Else_correct) (=> (= (ControlFlow 0 84) 59) anon61_Then_correct)) (=> (= (ControlFlow 0 84) 62) anon61_Else_correct)))))))))))
(let ((anon28_correct true))
(let ((anon59_Else_correct  (=> (and (not (|Seq#Contains_3512| (|Seq#Range| 0 len) i_9)) (= (ControlFlow 0 57) 53)) anon28_correct)))
(let ((anon59_Then_correct  (=> (|Seq#Contains_3512| (|Seq#Range| 0 len) i_9) (and (=> (= (ControlFlow 0 54) (- 0 56)) (>= i_9 0)) (=> (>= i_9 0) (and (=> (= (ControlFlow 0 54) (- 0 55)) (< i_9 (|Seq#Length_17549| ar))) (=> (< i_9 (|Seq#Length_17549| ar)) (=> (= (ControlFlow 0 54) 53) anon28_correct))))))))
(let ((anon57_Then_correct  (=> (state PostHeap@0 ZeroMask) (=> (and (= (|Seq#Length_17549| ar) len) (state PostHeap@0 ZeroMask)) (and (and (=> (= (ControlFlow 0 87) 84) anon58_Else_correct) (=> (= (ControlFlow 0 87) 54) anon59_Then_correct)) (=> (= (ControlFlow 0 87) 57) anon59_Else_correct))))))
(let ((anon57_Else_correct true))
(let ((anon55_Else_correct  (and (=> (= (ControlFlow 0 88) (- 0 89)) (forall ((i_11_1 Int) (i_11_2 Int) ) (!  (=> (and (and (and (and (not (= i_11_1 i_11_2)) (|Seq#Contains_3512| (|Seq#Range| 0 len) i_11_1)) (|Seq#Contains_3512| (|Seq#Range| 0 len) i_11_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17549| cr i_11_1) (|Seq#Index_17549| cr i_11_2))))
 :qid |stdinbpl.859:15|
 :skolemid |74|
))) (=> (forall ((i_11_1@@0 Int) (i_11_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_11_1@@0 i_11_2@@0)) (|Seq#Contains_3512| (|Seq#Range| 0 len) i_11_1@@0)) (|Seq#Contains_3512| (|Seq#Range| 0 len) i_11_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17549| cr i_11_1@@0) (|Seq#Index_17549| cr i_11_2@@0))))
 :qid |stdinbpl.859:15|
 :skolemid |74|
)) (=> (and (and (forall ((i_11_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3512| (|Seq#Range| 0 len) i_11_1@@1) (< NoPerm FullPerm)) (and (qpRange3 (|Seq#Index_17549| cr i_11_1@@1)) (= (invRecv3 (|Seq#Index_17549| cr i_11_1@@1)) i_11_1@@1)))
 :qid |stdinbpl.865:22|
 :skolemid |75|
 :pattern ( (|Seq#Index_17549| cr i_11_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3512| (|Seq#Range| 0 len) i_11_1@@1))
 :pattern ( (|Seq#Contains_3512| (|Seq#Range| 0 len) i_11_1@@1))
 :pattern ( (|Seq#Index_17549| cr i_11_1@@1))
)) (forall ((o_4@@27 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3512| (|Seq#Range| 0 len) (invRecv3 o_4@@27)) (< NoPerm FullPerm)) (qpRange3 o_4@@27)) (= (|Seq#Index_17549| cr (invRecv3 o_4@@27)) o_4@@27))
 :qid |stdinbpl.869:22|
 :skolemid |76|
 :pattern ( (invRecv3 o_4@@27))
))) (and (forall ((i_11_1@@2 Int) ) (!  (=> (|Seq#Contains_3512| (|Seq#Range| 0 len) i_11_1@@2) (not (= (|Seq#Index_17549| cr i_11_1@@2) null)))
 :qid |stdinbpl.875:22|
 :skolemid |77|
 :pattern ( (|Seq#Index_17549| cr i_11_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3512| (|Seq#Range| 0 len) i_11_1@@2))
 :pattern ( (|Seq#Contains_3512| (|Seq#Range| 0 len) i_11_1@@2))
 :pattern ( (|Seq#Index_17549| cr i_11_1@@2))
)) (forall ((o_4@@28 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3512| (|Seq#Range| 0 len) (invRecv3 o_4@@28)) (< NoPerm FullPerm)) (qpRange3 o_4@@28)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_17549| cr (invRecv3 o_4@@28)) o_4@@28)) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@2) o_4@@28 Integer_value) (+ (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@1) o_4@@28 Integer_value) FullPerm)))) (=> (not (and (and (|Seq#Contains_3512| (|Seq#Range| 0 len) (invRecv3 o_4@@28)) (< NoPerm FullPerm)) (qpRange3 o_4@@28))) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@2) o_4@@28 Integer_value) (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@1) o_4@@28 Integer_value))))
 :qid |stdinbpl.881:22|
 :skolemid |78|
 :pattern ( (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@2) o_4@@28 Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_4@@29 T@Ref) (f_5@@19 T@Field_25588_53) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@1) o_4@@29 f_5@@19) (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@2) o_4@@29 f_5@@19)))
 :qid |stdinbpl.885:29|
 :skolemid |79|
 :pattern ( (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@1) o_4@@29 f_5@@19))
 :pattern ( (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@2) o_4@@29 f_5@@19))
)) (forall ((o_4@@30 T@Ref) (f_5@@20 T@Field_25601_25602) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@1) o_4@@30 f_5@@20) (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@2) o_4@@30 f_5@@20)))
 :qid |stdinbpl.885:29|
 :skolemid |79|
 :pattern ( (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@1) o_4@@30 f_5@@20))
 :pattern ( (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@2) o_4@@30 f_5@@20))
))) (forall ((o_4@@31 T@Ref) (f_5@@21 T@Field_31659_3634) ) (!  (=> (not (= f_5@@21 Integer_value)) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@1) o_4@@31 f_5@@21) (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@2) o_4@@31 f_5@@21)))
 :qid |stdinbpl.885:29|
 :skolemid |79|
 :pattern ( (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@1) o_4@@31 f_5@@21))
 :pattern ( (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@2) o_4@@31 f_5@@21))
))) (forall ((o_4@@32 T@Ref) (f_5@@22 T@Field_17539_73985) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@1) o_4@@32 f_5@@22) (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@2) o_4@@32 f_5@@22)))
 :qid |stdinbpl.885:29|
 :skolemid |79|
 :pattern ( (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@1) o_4@@32 f_5@@22))
 :pattern ( (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@2) o_4@@32 f_5@@22))
))) (forall ((o_4@@33 T@Ref) (f_5@@23 T@Field_17539_74118) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@1) o_4@@33 f_5@@23) (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@2) o_4@@33 f_5@@23)))
 :qid |stdinbpl.885:29|
 :skolemid |79|
 :pattern ( (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@1) o_4@@33 f_5@@23))
 :pattern ( (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@2) o_4@@33 f_5@@23))
))) (and (state Heap@@17 QPMask@2) (state Heap@@17 QPMask@2))) (and (=> (= (ControlFlow 0 88) 87) anon57_Then_correct) (=> (= (ControlFlow 0 88) 38) anon57_Else_correct))))))))
(let ((anon23_correct true))
(let ((anon56_Else_correct  (=> (and (not (|Seq#Contains_3512| (|Seq#Range| 0 len) i_8)) (= (ControlFlow 0 36) 32)) anon23_correct)))
(let ((anon56_Then_correct  (=> (|Seq#Contains_3512| (|Seq#Range| 0 len) i_8) (and (=> (= (ControlFlow 0 33) (- 0 35)) (>= i_8 0)) (=> (>= i_8 0) (and (=> (= (ControlFlow 0 33) (- 0 34)) (< i_8 (|Seq#Length_17549| cr))) (=> (< i_8 (|Seq#Length_17549| cr)) (=> (= (ControlFlow 0 33) 32) anon23_correct))))))))
(let ((anon53_Else_correct  (=> (and (forall ((i_9_1 Int) (j_5_1 Int) ) (!  (=> (and (<= 0 i_9_1) (and (< i_9_1 (|Seq#Length_17549| cr)) (and (<= 0 j_5_1) (and (< j_5_1 (|Seq#Length_17549| cr)) (not (= i_9_1 j_5_1)))))) (not (= (|Seq#Index_17549| cr i_9_1) (|Seq#Index_17549| cr j_5_1))))
 :qid |stdinbpl.841:20|
 :skolemid |73|
 :pattern ( (|Seq#Index_17549| cr i_9_1) (|Seq#Index_17549| cr j_5_1))
)) (state Heap@@17 QPMask@1)) (and (and (=> (= (ControlFlow 0 90) 88) anon55_Else_correct) (=> (= (ControlFlow 0 90) 33) anon56_Then_correct)) (=> (= (ControlFlow 0 90) 36) anon56_Else_correct)))))
(let ((anon19_correct true))
(let ((anon54_Else_correct  (=> (and (not (and (<= 0 i_7) (and (< i_7 (|Seq#Length_17549| cr)) (and (<= 0 j_7) (and (< j_7 (|Seq#Length_17549| cr)) (not (= i_7 j_7))))))) (= (ControlFlow 0 31) 25)) anon19_correct)))
(let ((anon54_Then_correct  (=> (and (<= 0 i_7) (and (< i_7 (|Seq#Length_17549| cr)) (and (<= 0 j_7) (and (< j_7 (|Seq#Length_17549| cr)) (not (= i_7 j_7)))))) (and (=> (= (ControlFlow 0 26) (- 0 30)) (>= i_7 0)) (=> (>= i_7 0) (and (=> (= (ControlFlow 0 26) (- 0 29)) (< i_7 (|Seq#Length_17549| cr))) (=> (< i_7 (|Seq#Length_17549| cr)) (and (=> (= (ControlFlow 0 26) (- 0 28)) (>= j_7 0)) (=> (>= j_7 0) (and (=> (= (ControlFlow 0 26) (- 0 27)) (< j_7 (|Seq#Length_17549| cr))) (=> (< j_7 (|Seq#Length_17549| cr)) (=> (= (ControlFlow 0 26) 25) anon19_correct))))))))))))
(let ((anon51_Else_correct  (and (=> (= (ControlFlow 0 91) (- 0 93)) (forall ((i_7_1 Int) (i_7_2 Int) ) (!  (=> (and (and (and (and (not (= i_7_1 i_7_2)) (|Seq#Contains_3512| (|Seq#Range| 0 len) i_7_1)) (|Seq#Contains_3512| (|Seq#Range| 0 len) i_7_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_17549| br i_7_1) (|Seq#Index_17549| br i_7_2))))
 :qid |stdinbpl.785:15|
 :skolemid |66|
))) (=> (forall ((i_7_1@@0 Int) (i_7_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_7_1@@0 i_7_2@@0)) (|Seq#Contains_3512| (|Seq#Range| 0 len) i_7_1@@0)) (|Seq#Contains_3512| (|Seq#Range| 0 len) i_7_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_17549| br i_7_1@@0) (|Seq#Index_17549| br i_7_2@@0))))
 :qid |stdinbpl.785:15|
 :skolemid |66|
)) (=> (and (forall ((i_7_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3512| (|Seq#Range| 0 len) i_7_1@@1) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange2 (|Seq#Index_17549| br i_7_1@@1)) (= (invRecv2 (|Seq#Index_17549| br i_7_1@@1)) i_7_1@@1)))
 :qid |stdinbpl.791:22|
 :skolemid |67|
 :pattern ( (|Seq#Index_17549| br i_7_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3512| (|Seq#Range| 0 len) i_7_1@@1))
 :pattern ( (|Seq#Contains_3512| (|Seq#Range| 0 len) i_7_1@@1))
 :pattern ( (|Seq#Index_17549| br i_7_1@@1))
)) (forall ((o_4@@34 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3512| (|Seq#Range| 0 len) (invRecv2 o_4@@34)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange2 o_4@@34)) (= (|Seq#Index_17549| br (invRecv2 o_4@@34)) o_4@@34))
 :qid |stdinbpl.795:22|
 :skolemid |68|
 :pattern ( (invRecv2 o_4@@34))
))) (and (=> (= (ControlFlow 0 91) (- 0 92)) (forall ((i_7_1@@2 Int) ) (!  (=> (|Seq#Contains_3512| (|Seq#Range| 0 len) i_7_1@@2) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.801:15|
 :skolemid |69|
 :pattern ( (|Seq#Index_17549| br i_7_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3512| (|Seq#Range| 0 len) i_7_1@@2))
 :pattern ( (|Seq#Contains_3512| (|Seq#Range| 0 len) i_7_1@@2))
 :pattern ( (|Seq#Index_17549| br i_7_1@@2))
))) (=> (forall ((i_7_1@@3 Int) ) (!  (=> (|Seq#Contains_3512| (|Seq#Range| 0 len) i_7_1@@3) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.801:15|
 :skolemid |69|
 :pattern ( (|Seq#Index_17549| br i_7_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3512| (|Seq#Range| 0 len) i_7_1@@3))
 :pattern ( (|Seq#Contains_3512| (|Seq#Range| 0 len) i_7_1@@3))
 :pattern ( (|Seq#Index_17549| br i_7_1@@3))
)) (=> (and (forall ((i_7_1@@4 Int) ) (!  (=> (and (|Seq#Contains_3512| (|Seq#Range| 0 len) i_7_1@@4) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= (|Seq#Index_17549| br i_7_1@@4) null)))
 :qid |stdinbpl.807:22|
 :skolemid |70|
 :pattern ( (|Seq#Index_17549| br i_7_1@@4))
 :pattern ( (|Seq#ContainsTrigger_3512| (|Seq#Range| 0 len) i_7_1@@4))
 :pattern ( (|Seq#Contains_3512| (|Seq#Range| 0 len) i_7_1@@4))
 :pattern ( (|Seq#Index_17549| br i_7_1@@4))
)) (forall ((o_4@@35 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3512| (|Seq#Range| 0 len) (invRecv2 o_4@@35)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange2 o_4@@35)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (|Seq#Index_17549| br (invRecv2 o_4@@35)) o_4@@35)) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@1) o_4@@35 Integer_value) (+ (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@0) o_4@@35 Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (|Seq#Contains_3512| (|Seq#Range| 0 len) (invRecv2 o_4@@35)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange2 o_4@@35))) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@1) o_4@@35 Integer_value) (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@0) o_4@@35 Integer_value))))
 :qid |stdinbpl.813:22|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@1) o_4@@35 Integer_value))
))) (=> (and (and (and (and (and (forall ((o_4@@36 T@Ref) (f_5@@24 T@Field_25588_53) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@0) o_4@@36 f_5@@24) (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@1) o_4@@36 f_5@@24)))
 :qid |stdinbpl.817:29|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@0) o_4@@36 f_5@@24))
 :pattern ( (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@1) o_4@@36 f_5@@24))
)) (forall ((o_4@@37 T@Ref) (f_5@@25 T@Field_25601_25602) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@0) o_4@@37 f_5@@25) (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@1) o_4@@37 f_5@@25)))
 :qid |stdinbpl.817:29|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@0) o_4@@37 f_5@@25))
 :pattern ( (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@1) o_4@@37 f_5@@25))
))) (forall ((o_4@@38 T@Ref) (f_5@@26 T@Field_31659_3634) ) (!  (=> (not (= f_5@@26 Integer_value)) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@0) o_4@@38 f_5@@26) (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@1) o_4@@38 f_5@@26)))
 :qid |stdinbpl.817:29|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@0) o_4@@38 f_5@@26))
 :pattern ( (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@1) o_4@@38 f_5@@26))
))) (forall ((o_4@@39 T@Ref) (f_5@@27 T@Field_17539_73985) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@0) o_4@@39 f_5@@27) (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@1) o_4@@39 f_5@@27)))
 :qid |stdinbpl.817:29|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@0) o_4@@39 f_5@@27))
 :pattern ( (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@1) o_4@@39 f_5@@27))
))) (forall ((o_4@@40 T@Ref) (f_5@@28 T@Field_17539_74118) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@0) o_4@@40 f_5@@28) (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@1) o_4@@40 f_5@@28)))
 :qid |stdinbpl.817:29|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@0) o_4@@40 f_5@@28))
 :pattern ( (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@1) o_4@@40 f_5@@28))
))) (and (and (state Heap@@17 QPMask@1) (state Heap@@17 QPMask@1)) (and (= (|Seq#Length_17549| cr) len) (state Heap@@17 QPMask@1)))) (and (and (=> (= (ControlFlow 0 91) 90) anon53_Else_correct) (=> (= (ControlFlow 0 91) 26) anon54_Then_correct)) (=> (= (ControlFlow 0 91) 31) anon54_Else_correct)))))))))))
(let ((anon15_correct true))
(let ((anon52_Else_correct  (=> (and (not (|Seq#Contains_3512| (|Seq#Range| 0 len) i_6)) (= (ControlFlow 0 24) 20)) anon15_correct)))
(let ((anon52_Then_correct  (=> (|Seq#Contains_3512| (|Seq#Range| 0 len) i_6) (and (=> (= (ControlFlow 0 21) (- 0 23)) (>= i_6 0)) (=> (>= i_6 0) (and (=> (= (ControlFlow 0 21) (- 0 22)) (< i_6 (|Seq#Length_17549| br))) (=> (< i_6 (|Seq#Length_17549| br)) (=> (= (ControlFlow 0 21) 20) anon15_correct))))))))
(let ((anon49_Else_correct  (=> (and (forall ((i_5 Int) (j_3_1 Int) ) (!  (=> (and (<= 0 i_5) (and (< i_5 (|Seq#Length_17549| br)) (and (<= 0 j_3_1) (and (< j_3_1 (|Seq#Length_17549| br)) (not (= i_5 j_3_1)))))) (not (= (|Seq#Index_17549| br i_5) (|Seq#Index_17549| br j_3_1))))
 :qid |stdinbpl.767:20|
 :skolemid |65|
 :pattern ( (|Seq#Index_17549| br i_5) (|Seq#Index_17549| br j_3_1))
)) (state Heap@@17 QPMask@0)) (and (and (=> (= (ControlFlow 0 94) 91) anon51_Else_correct) (=> (= (ControlFlow 0 94) 21) anon52_Then_correct)) (=> (= (ControlFlow 0 94) 24) anon52_Else_correct)))))
(let ((anon11_correct true))
(let ((anon50_Else_correct  (=> (and (not (and (<= 0 i_4) (and (< i_4 (|Seq#Length_17549| br)) (and (<= 0 j_6) (and (< j_6 (|Seq#Length_17549| br)) (not (= i_4 j_6))))))) (= (ControlFlow 0 19) 13)) anon11_correct)))
(let ((anon50_Then_correct  (=> (and (<= 0 i_4) (and (< i_4 (|Seq#Length_17549| br)) (and (<= 0 j_6) (and (< j_6 (|Seq#Length_17549| br)) (not (= i_4 j_6)))))) (and (=> (= (ControlFlow 0 14) (- 0 18)) (>= i_4 0)) (=> (>= i_4 0) (and (=> (= (ControlFlow 0 14) (- 0 17)) (< i_4 (|Seq#Length_17549| br))) (=> (< i_4 (|Seq#Length_17549| br)) (and (=> (= (ControlFlow 0 14) (- 0 16)) (>= j_6 0)) (=> (>= j_6 0) (and (=> (= (ControlFlow 0 14) (- 0 15)) (< j_6 (|Seq#Length_17549| br))) (=> (< j_6 (|Seq#Length_17549| br)) (=> (= (ControlFlow 0 14) 13) anon11_correct))))))))))))
(let ((anon47_Else_correct  (and (=> (= (ControlFlow 0 95) (- 0 96)) (forall ((i_3 Int) (i_3_1 Int) ) (!  (=> (and (and (and (and (not (= i_3 i_3_1)) (|Seq#Contains_3512| (|Seq#Range| 0 len) i_3)) (|Seq#Contains_3512| (|Seq#Range| 0 len) i_3_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17549| ar i_3) (|Seq#Index_17549| ar i_3_1))))
 :qid |stdinbpl.717:15|
 :skolemid |59|
))) (=> (forall ((i_3@@0 Int) (i_3_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_3@@0 i_3_1@@0)) (|Seq#Contains_3512| (|Seq#Range| 0 len) i_3@@0)) (|Seq#Contains_3512| (|Seq#Range| 0 len) i_3_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_17549| ar i_3@@0) (|Seq#Index_17549| ar i_3_1@@0))))
 :qid |stdinbpl.717:15|
 :skolemid |59|
)) (=> (and (and (forall ((i_3@@1 Int) ) (!  (=> (and (|Seq#Contains_3512| (|Seq#Range| 0 len) i_3@@1) (< NoPerm FullPerm)) (and (qpRange1 (|Seq#Index_17549| ar i_3@@1)) (= (invRecv1 (|Seq#Index_17549| ar i_3@@1)) i_3@@1)))
 :qid |stdinbpl.723:22|
 :skolemid |60|
 :pattern ( (|Seq#Index_17549| ar i_3@@1))
 :pattern ( (|Seq#ContainsTrigger_3512| (|Seq#Range| 0 len) i_3@@1))
 :pattern ( (|Seq#Contains_3512| (|Seq#Range| 0 len) i_3@@1))
 :pattern ( (|Seq#Index_17549| ar i_3@@1))
)) (forall ((o_4@@41 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3512| (|Seq#Range| 0 len) (invRecv1 o_4@@41)) (< NoPerm FullPerm)) (qpRange1 o_4@@41)) (= (|Seq#Index_17549| ar (invRecv1 o_4@@41)) o_4@@41))
 :qid |stdinbpl.727:22|
 :skolemid |61|
 :pattern ( (invRecv1 o_4@@41))
))) (and (forall ((i_3@@2 Int) ) (!  (=> (|Seq#Contains_3512| (|Seq#Range| 0 len) i_3@@2) (not (= (|Seq#Index_17549| ar i_3@@2) null)))
 :qid |stdinbpl.733:22|
 :skolemid |62|
 :pattern ( (|Seq#Index_17549| ar i_3@@2))
 :pattern ( (|Seq#ContainsTrigger_3512| (|Seq#Range| 0 len) i_3@@2))
 :pattern ( (|Seq#Contains_3512| (|Seq#Range| 0 len) i_3@@2))
 :pattern ( (|Seq#Index_17549| ar i_3@@2))
)) (forall ((o_4@@42 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3512| (|Seq#Range| 0 len) (invRecv1 o_4@@42)) (< NoPerm FullPerm)) (qpRange1 o_4@@42)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_17549| ar (invRecv1 o_4@@42)) o_4@@42)) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@0) o_4@@42 Integer_value) (+ (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| ZeroMask) o_4@@42 Integer_value) FullPerm)))) (=> (not (and (and (|Seq#Contains_3512| (|Seq#Range| 0 len) (invRecv1 o_4@@42)) (< NoPerm FullPerm)) (qpRange1 o_4@@42))) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@0) o_4@@42 Integer_value) (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| ZeroMask) o_4@@42 Integer_value))))
 :qid |stdinbpl.739:22|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@0) o_4@@42 Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_4@@43 T@Ref) (f_5@@29 T@Field_25588_53) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| ZeroMask) o_4@@43 f_5@@29) (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@0) o_4@@43 f_5@@29)))
 :qid |stdinbpl.743:29|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| ZeroMask) o_4@@43 f_5@@29))
 :pattern ( (select (|PolymorphicMapType_25549_17539_53#PolymorphicMapType_25549| QPMask@0) o_4@@43 f_5@@29))
)) (forall ((o_4@@44 T@Ref) (f_5@@30 T@Field_25601_25602) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| ZeroMask) o_4@@44 f_5@@30) (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@0) o_4@@44 f_5@@30)))
 :qid |stdinbpl.743:29|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| ZeroMask) o_4@@44 f_5@@30))
 :pattern ( (select (|PolymorphicMapType_25549_17539_25602#PolymorphicMapType_25549| QPMask@0) o_4@@44 f_5@@30))
))) (forall ((o_4@@45 T@Ref) (f_5@@31 T@Field_31659_3634) ) (!  (=> (not (= f_5@@31 Integer_value)) (= (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| ZeroMask) o_4@@45 f_5@@31) (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@0) o_4@@45 f_5@@31)))
 :qid |stdinbpl.743:29|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| ZeroMask) o_4@@45 f_5@@31))
 :pattern ( (select (|PolymorphicMapType_25549_17539_3634#PolymorphicMapType_25549| QPMask@0) o_4@@45 f_5@@31))
))) (forall ((o_4@@46 T@Ref) (f_5@@32 T@Field_17539_73985) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| ZeroMask) o_4@@46 f_5@@32) (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@0) o_4@@46 f_5@@32)))
 :qid |stdinbpl.743:29|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| ZeroMask) o_4@@46 f_5@@32))
 :pattern ( (select (|PolymorphicMapType_25549_17539_73985#PolymorphicMapType_25549| QPMask@0) o_4@@46 f_5@@32))
))) (forall ((o_4@@47 T@Ref) (f_5@@33 T@Field_17539_74118) ) (!  (=> true (= (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| ZeroMask) o_4@@47 f_5@@33) (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@0) o_4@@47 f_5@@33)))
 :qid |stdinbpl.743:29|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| ZeroMask) o_4@@47 f_5@@33))
 :pattern ( (select (|PolymorphicMapType_25549_17539_78240#PolymorphicMapType_25549| QPMask@0) o_4@@47 f_5@@33))
))) (and (and (state Heap@@17 QPMask@0) (state Heap@@17 QPMask@0)) (and (= (|Seq#Length_17549| br) len) (state Heap@@17 QPMask@0)))) (and (and (=> (= (ControlFlow 0 95) 94) anon49_Else_correct) (=> (= (ControlFlow 0 95) 14) anon50_Then_correct)) (=> (= (ControlFlow 0 95) 19) anon50_Else_correct))))))))
(let ((anon7_correct true))
(let ((anon48_Else_correct  (=> (and (not (|Seq#Contains_3512| (|Seq#Range| 0 len) i_2)) (= (ControlFlow 0 12) 8)) anon7_correct)))
(let ((anon48_Then_correct  (=> (|Seq#Contains_3512| (|Seq#Range| 0 len) i_2) (and (=> (= (ControlFlow 0 9) (- 0 11)) (>= i_2 0)) (=> (>= i_2 0) (and (=> (= (ControlFlow 0 9) (- 0 10)) (< i_2 (|Seq#Length_17549| ar))) (=> (< i_2 (|Seq#Length_17549| ar)) (=> (= (ControlFlow 0 9) 8) anon7_correct))))))))
(let ((anon45_Else_correct  (=> (and (forall ((i_1 Int) (j_1 Int) ) (!  (=> (and (<= 0 i_1) (and (< i_1 (|Seq#Length_17549| ar)) (and (<= 0 j_1) (and (< j_1 (|Seq#Length_17549| ar)) (not (= i_1 j_1)))))) (not (= (|Seq#Index_17549| ar i_1) (|Seq#Index_17549| ar j_1))))
 :qid |stdinbpl.699:20|
 :skolemid |58|
 :pattern ( (|Seq#Index_17549| ar i_1) (|Seq#Index_17549| ar j_1))
)) (state Heap@@17 ZeroMask)) (and (and (=> (= (ControlFlow 0 97) 95) anon47_Else_correct) (=> (= (ControlFlow 0 97) 9) anon48_Then_correct)) (=> (= (ControlFlow 0 97) 12) anon48_Else_correct)))))
(let ((anon3_correct true))
(let ((anon46_Else_correct  (=> (and (not (and (<= 0 i_14) (and (< i_14 (|Seq#Length_17549| ar)) (and (<= 0 j_5) (and (< j_5 (|Seq#Length_17549| ar)) (not (= i_14 j_5))))))) (= (ControlFlow 0 7) 1)) anon3_correct)))
(let ((anon46_Then_correct  (=> (and (<= 0 i_14) (and (< i_14 (|Seq#Length_17549| ar)) (and (<= 0 j_5) (and (< j_5 (|Seq#Length_17549| ar)) (not (= i_14 j_5)))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= i_14 0)) (=> (>= i_14 0) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< i_14 (|Seq#Length_17549| ar))) (=> (< i_14 (|Seq#Length_17549| ar)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= j_5 0)) (=> (>= j_5 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< j_5 (|Seq#Length_17549| ar))) (=> (< j_5 (|Seq#Length_17549| ar)) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))))))))
(let ((anon0_correct  (=> (state Heap@@17 ZeroMask) (=> (and AssumePermUpperBound (select (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| Heap@@17) this $allocated)) (=> (and (and (< 0 len) (state Heap@@17 ZeroMask)) (and (= (|Seq#Length_17549| ar) len) (state Heap@@17 ZeroMask))) (and (and (=> (= (ControlFlow 0 98) 97) anon45_Else_correct) (=> (= (ControlFlow 0 98) 2) anon46_Then_correct)) (=> (= (ControlFlow 0 98) 7) anon46_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 99) 98) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
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
(assert (forall ((Heap@@0 T@PolymorphicMapType_25528) (ExhaleHeap T@PolymorphicMapType_25528) (Mask@@0 T@PolymorphicMapType_25549) (pm_f_27 T@Field_17539_73985) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_17539_74049 Mask@@0 null pm_f_27) (IsPredicateField_17539_74076 pm_f_27)) (= (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@0) null (PredicateMaskField_17539 pm_f_27)) (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| ExhaleHeap) null (PredicateMaskField_17539 pm_f_27)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_17539_74076 pm_f_27) (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| ExhaleHeap) null (PredicateMaskField_17539 pm_f_27)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_25528) (ExhaleHeap@@0 T@PolymorphicMapType_25528) (Mask@@1 T@PolymorphicMapType_25549) (pm_f_27@@0 T@Field_17539_73985) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_17539_74049 Mask@@1 null pm_f_27@@0) (IsWandField_17539_75823 pm_f_27@@0)) (= (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@1) null (WandMaskField_17539 pm_f_27@@0)) (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| ExhaleHeap@@0) null (WandMaskField_17539 pm_f_27@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_17539_75823 pm_f_27@@0) (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| ExhaleHeap@@0) null (WandMaskField_17539 pm_f_27@@0)))
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
(assert (forall ((Heap@@2 T@PolymorphicMapType_25528) (ExhaleHeap@@1 T@PolymorphicMapType_25528) (Mask@@2 T@PolymorphicMapType_25549) (o_9 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| Heap@@2) o_9 $allocated) (select (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| ExhaleHeap@@1) o_9 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| ExhaleHeap@@1) o_9 $allocated))
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
(assert (forall ((Heap@@4 T@PolymorphicMapType_25528) (ExhaleHeap@@3 T@PolymorphicMapType_25528) (Mask@@14 T@PolymorphicMapType_25549) (pm_f_27@@1 T@Field_17539_73985) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_17539_74049 Mask@@14 null pm_f_27@@1) (IsPredicateField_17539_74076 pm_f_27@@1)) (and (and (and (and (forall ((o2_27 T@Ref) (f_13 T@Field_25588_53) ) (!  (=> (select (|PolymorphicMapType_26077_25588_53#PolymorphicMapType_26077| (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@4) null (PredicateMaskField_17539 pm_f_27@@1))) o2_27 f_13) (= (select (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| Heap@@4) o2_27 f_13) (select (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| ExhaleHeap@@3) o2_27 f_13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| ExhaleHeap@@3) o2_27 f_13))
)) (forall ((o2_27@@0 T@Ref) (f_13@@0 T@Field_25601_25602) ) (!  (=> (select (|PolymorphicMapType_26077_25588_25602#PolymorphicMapType_26077| (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@4) null (PredicateMaskField_17539 pm_f_27@@1))) o2_27@@0 f_13@@0) (= (select (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| Heap@@4) o2_27@@0 f_13@@0) (select (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| ExhaleHeap@@3) o2_27@@0 f_13@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| ExhaleHeap@@3) o2_27@@0 f_13@@0))
))) (forall ((o2_27@@1 T@Ref) (f_13@@1 T@Field_31659_3634) ) (!  (=> (select (|PolymorphicMapType_26077_25588_3634#PolymorphicMapType_26077| (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@4) null (PredicateMaskField_17539 pm_f_27@@1))) o2_27@@1 f_13@@1) (= (select (|PolymorphicMapType_25528_17539_3634#PolymorphicMapType_25528| Heap@@4) o2_27@@1 f_13@@1) (select (|PolymorphicMapType_25528_17539_3634#PolymorphicMapType_25528| ExhaleHeap@@3) o2_27@@1 f_13@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25528_17539_3634#PolymorphicMapType_25528| ExhaleHeap@@3) o2_27@@1 f_13@@1))
))) (forall ((o2_27@@2 T@Ref) (f_13@@2 T@Field_17539_73985) ) (!  (=> (select (|PolymorphicMapType_26077_25588_73985#PolymorphicMapType_26077| (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@4) null (PredicateMaskField_17539 pm_f_27@@1))) o2_27@@2 f_13@@2) (= (select (|PolymorphicMapType_25528_25588_73985#PolymorphicMapType_25528| Heap@@4) o2_27@@2 f_13@@2) (select (|PolymorphicMapType_25528_25588_73985#PolymorphicMapType_25528| ExhaleHeap@@3) o2_27@@2 f_13@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25528_25588_73985#PolymorphicMapType_25528| ExhaleHeap@@3) o2_27@@2 f_13@@2))
))) (forall ((o2_27@@3 T@Ref) (f_13@@3 T@Field_17539_74118) ) (!  (=> (select (|PolymorphicMapType_26077_25588_75296#PolymorphicMapType_26077| (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@4) null (PredicateMaskField_17539 pm_f_27@@1))) o2_27@@3 f_13@@3) (= (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@4) o2_27@@3 f_13@@3) (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| ExhaleHeap@@3) o2_27@@3 f_13@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| ExhaleHeap@@3) o2_27@@3 f_13@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_17539_74076 pm_f_27@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_25528) (ExhaleHeap@@4 T@PolymorphicMapType_25528) (Mask@@15 T@PolymorphicMapType_25549) (pm_f_27@@2 T@Field_17539_73985) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_17539_74049 Mask@@15 null pm_f_27@@2) (IsWandField_17539_75823 pm_f_27@@2)) (and (and (and (and (forall ((o2_27@@4 T@Ref) (f_13@@4 T@Field_25588_53) ) (!  (=> (select (|PolymorphicMapType_26077_25588_53#PolymorphicMapType_26077| (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@5) null (WandMaskField_17539 pm_f_27@@2))) o2_27@@4 f_13@@4) (= (select (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| Heap@@5) o2_27@@4 f_13@@4) (select (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| ExhaleHeap@@4) o2_27@@4 f_13@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| ExhaleHeap@@4) o2_27@@4 f_13@@4))
)) (forall ((o2_27@@5 T@Ref) (f_13@@5 T@Field_25601_25602) ) (!  (=> (select (|PolymorphicMapType_26077_25588_25602#PolymorphicMapType_26077| (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@5) null (WandMaskField_17539 pm_f_27@@2))) o2_27@@5 f_13@@5) (= (select (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| Heap@@5) o2_27@@5 f_13@@5) (select (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| ExhaleHeap@@4) o2_27@@5 f_13@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| ExhaleHeap@@4) o2_27@@5 f_13@@5))
))) (forall ((o2_27@@6 T@Ref) (f_13@@6 T@Field_31659_3634) ) (!  (=> (select (|PolymorphicMapType_26077_25588_3634#PolymorphicMapType_26077| (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@5) null (WandMaskField_17539 pm_f_27@@2))) o2_27@@6 f_13@@6) (= (select (|PolymorphicMapType_25528_17539_3634#PolymorphicMapType_25528| Heap@@5) o2_27@@6 f_13@@6) (select (|PolymorphicMapType_25528_17539_3634#PolymorphicMapType_25528| ExhaleHeap@@4) o2_27@@6 f_13@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25528_17539_3634#PolymorphicMapType_25528| ExhaleHeap@@4) o2_27@@6 f_13@@6))
))) (forall ((o2_27@@7 T@Ref) (f_13@@7 T@Field_17539_73985) ) (!  (=> (select (|PolymorphicMapType_26077_25588_73985#PolymorphicMapType_26077| (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@5) null (WandMaskField_17539 pm_f_27@@2))) o2_27@@7 f_13@@7) (= (select (|PolymorphicMapType_25528_25588_73985#PolymorphicMapType_25528| Heap@@5) o2_27@@7 f_13@@7) (select (|PolymorphicMapType_25528_25588_73985#PolymorphicMapType_25528| ExhaleHeap@@4) o2_27@@7 f_13@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25528_25588_73985#PolymorphicMapType_25528| ExhaleHeap@@4) o2_27@@7 f_13@@7))
))) (forall ((o2_27@@8 T@Ref) (f_13@@8 T@Field_17539_74118) ) (!  (=> (select (|PolymorphicMapType_26077_25588_75296#PolymorphicMapType_26077| (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@5) null (WandMaskField_17539 pm_f_27@@2))) o2_27@@8 f_13@@8) (= (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@5) o2_27@@8 f_13@@8) (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| ExhaleHeap@@4) o2_27@@8 f_13@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| ExhaleHeap@@4) o2_27@@8 f_13@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_17539_75823 pm_f_27@@2))
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
(assert (forall ((Heap@@6 T@PolymorphicMapType_25528) (ExhaleHeap@@5 T@PolymorphicMapType_25528) (Mask@@16 T@PolymorphicMapType_25549) (o_9@@0 T@Ref) (f_13@@9 T@Field_17539_74118) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_17539_79823 Mask@@16 o_9@@0 f_13@@9) (= (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@6) o_9@@0 f_13@@9) (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| ExhaleHeap@@5) o_9@@0 f_13@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| ExhaleHeap@@5) o_9@@0 f_13@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_25528) (ExhaleHeap@@6 T@PolymorphicMapType_25528) (Mask@@17 T@PolymorphicMapType_25549) (o_9@@1 T@Ref) (f_13@@10 T@Field_17539_73985) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_17539_74049 Mask@@17 o_9@@1 f_13@@10) (= (select (|PolymorphicMapType_25528_25588_73985#PolymorphicMapType_25528| Heap@@7) o_9@@1 f_13@@10) (select (|PolymorphicMapType_25528_25588_73985#PolymorphicMapType_25528| ExhaleHeap@@6) o_9@@1 f_13@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_25528_25588_73985#PolymorphicMapType_25528| ExhaleHeap@@6) o_9@@1 f_13@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_25528) (ExhaleHeap@@7 T@PolymorphicMapType_25528) (Mask@@18 T@PolymorphicMapType_25549) (o_9@@2 T@Ref) (f_13@@11 T@Field_25601_25602) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_17539_25602 Mask@@18 o_9@@2 f_13@@11) (= (select (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| Heap@@8) o_9@@2 f_13@@11) (select (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| ExhaleHeap@@7) o_9@@2 f_13@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| ExhaleHeap@@7) o_9@@2 f_13@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_25528) (ExhaleHeap@@8 T@PolymorphicMapType_25528) (Mask@@19 T@PolymorphicMapType_25549) (o_9@@3 T@Ref) (f_13@@12 T@Field_25588_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_17539_53 Mask@@19 o_9@@3 f_13@@12) (= (select (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| Heap@@9) o_9@@3 f_13@@12) (select (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| ExhaleHeap@@8) o_9@@3 f_13@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| ExhaleHeap@@8) o_9@@3 f_13@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_25528) (ExhaleHeap@@9 T@PolymorphicMapType_25528) (Mask@@20 T@PolymorphicMapType_25549) (o_9@@4 T@Ref) (f_13@@13 T@Field_31659_3634) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_17539_3634 Mask@@20 o_9@@4 f_13@@13) (= (select (|PolymorphicMapType_25528_17539_3634#PolymorphicMapType_25528| Heap@@10) o_9@@4 f_13@@13) (select (|PolymorphicMapType_25528_17539_3634#PolymorphicMapType_25528| ExhaleHeap@@9) o_9@@4 f_13@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_25528_17539_3634#PolymorphicMapType_25528| ExhaleHeap@@9) o_9@@4 f_13@@13))
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
(assert (forall ((Heap@@11 T@PolymorphicMapType_25528) (o_31 T@Ref) (f_54 T@Field_17539_73985) (v@@4 T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_25528 (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| Heap@@11) (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| Heap@@11) (|PolymorphicMapType_25528_17539_3634#PolymorphicMapType_25528| Heap@@11) (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@11) (store (|PolymorphicMapType_25528_25588_73985#PolymorphicMapType_25528| Heap@@11) o_31 f_54 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25528 (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| Heap@@11) (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| Heap@@11) (|PolymorphicMapType_25528_17539_3634#PolymorphicMapType_25528| Heap@@11) (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@11) (store (|PolymorphicMapType_25528_25588_73985#PolymorphicMapType_25528| Heap@@11) o_31 f_54 v@@4)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_25528) (o_31@@0 T@Ref) (f_54@@0 T@Field_17539_74118) (v@@5 T@PolymorphicMapType_26077) ) (! (succHeap Heap@@12 (PolymorphicMapType_25528 (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| Heap@@12) (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| Heap@@12) (|PolymorphicMapType_25528_17539_3634#PolymorphicMapType_25528| Heap@@12) (store (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@12) o_31@@0 f_54@@0 v@@5) (|PolymorphicMapType_25528_25588_73985#PolymorphicMapType_25528| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25528 (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| Heap@@12) (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| Heap@@12) (|PolymorphicMapType_25528_17539_3634#PolymorphicMapType_25528| Heap@@12) (store (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@12) o_31@@0 f_54@@0 v@@5) (|PolymorphicMapType_25528_25588_73985#PolymorphicMapType_25528| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_25528) (o_31@@1 T@Ref) (f_54@@1 T@Field_31659_3634) (v@@6 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_25528 (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| Heap@@13) (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| Heap@@13) (store (|PolymorphicMapType_25528_17539_3634#PolymorphicMapType_25528| Heap@@13) o_31@@1 f_54@@1 v@@6) (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@13) (|PolymorphicMapType_25528_25588_73985#PolymorphicMapType_25528| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25528 (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| Heap@@13) (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| Heap@@13) (store (|PolymorphicMapType_25528_17539_3634#PolymorphicMapType_25528| Heap@@13) o_31@@1 f_54@@1 v@@6) (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@13) (|PolymorphicMapType_25528_25588_73985#PolymorphicMapType_25528| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_25528) (o_31@@2 T@Ref) (f_54@@2 T@Field_25601_25602) (v@@7 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_25528 (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| Heap@@14) (store (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| Heap@@14) o_31@@2 f_54@@2 v@@7) (|PolymorphicMapType_25528_17539_3634#PolymorphicMapType_25528| Heap@@14) (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@14) (|PolymorphicMapType_25528_25588_73985#PolymorphicMapType_25528| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25528 (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| Heap@@14) (store (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| Heap@@14) o_31@@2 f_54@@2 v@@7) (|PolymorphicMapType_25528_17539_3634#PolymorphicMapType_25528| Heap@@14) (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@14) (|PolymorphicMapType_25528_25588_73985#PolymorphicMapType_25528| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_25528) (o_31@@3 T@Ref) (f_54@@3 T@Field_25588_53) (v@@8 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_25528 (store (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| Heap@@15) o_31@@3 f_54@@3 v@@8) (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| Heap@@15) (|PolymorphicMapType_25528_17539_3634#PolymorphicMapType_25528| Heap@@15) (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@15) (|PolymorphicMapType_25528_25588_73985#PolymorphicMapType_25528| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25528 (store (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| Heap@@15) o_31@@3 f_54@@3 v@@8) (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| Heap@@15) (|PolymorphicMapType_25528_17539_3634#PolymorphicMapType_25528| Heap@@15) (|PolymorphicMapType_25528_17539_74162#PolymorphicMapType_25528| Heap@@15) (|PolymorphicMapType_25528_25588_73985#PolymorphicMapType_25528| Heap@@15)))
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
(assert (forall ((o_31@@4 T@Ref) (f_36 T@Field_25601_25602) (Heap@@16 T@PolymorphicMapType_25528) ) (!  (=> (select (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| Heap@@16) o_31@@4 $allocated) (select (|PolymorphicMapType_25528_17297_53#PolymorphicMapType_25528| Heap@@16) (select (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| Heap@@16) o_31@@4 f_36) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_25528_17300_17301#PolymorphicMapType_25528| Heap@@16) o_31@@4 f_36))
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
