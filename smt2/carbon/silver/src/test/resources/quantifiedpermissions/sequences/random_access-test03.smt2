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
(declare-sort T@Field_17858_53 0)
(declare-sort T@Field_17871_17872 0)
(declare-sort T@Field_23904_3325 0)
(declare-sort T@Field_17858_50368 0)
(declare-sort T@Field_17858_50235 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_17819 0)) (((PolymorphicMapType_17819 (|PolymorphicMapType_17819_12240_3325#PolymorphicMapType_17819| (Array T@Ref T@Field_23904_3325 Real)) (|PolymorphicMapType_17819_12240_53#PolymorphicMapType_17819| (Array T@Ref T@Field_17858_53 Real)) (|PolymorphicMapType_17819_12240_17872#PolymorphicMapType_17819| (Array T@Ref T@Field_17871_17872 Real)) (|PolymorphicMapType_17819_12240_50235#PolymorphicMapType_17819| (Array T@Ref T@Field_17858_50235 Real)) (|PolymorphicMapType_17819_12240_54490#PolymorphicMapType_17819| (Array T@Ref T@Field_17858_50368 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_18347 0)) (((PolymorphicMapType_18347 (|PolymorphicMapType_18347_17858_53#PolymorphicMapType_18347| (Array T@Ref T@Field_17858_53 Bool)) (|PolymorphicMapType_18347_17858_17872#PolymorphicMapType_18347| (Array T@Ref T@Field_17871_17872 Bool)) (|PolymorphicMapType_18347_17858_3325#PolymorphicMapType_18347| (Array T@Ref T@Field_23904_3325 Bool)) (|PolymorphicMapType_18347_17858_50235#PolymorphicMapType_18347| (Array T@Ref T@Field_17858_50235 Bool)) (|PolymorphicMapType_18347_17858_51546#PolymorphicMapType_18347| (Array T@Ref T@Field_17858_50368 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_17798 0)) (((PolymorphicMapType_17798 (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| (Array T@Ref T@Field_17858_53 Bool)) (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| (Array T@Ref T@Field_17871_17872 T@Ref)) (|PolymorphicMapType_17798_12240_3325#PolymorphicMapType_17798| (Array T@Ref T@Field_23904_3325 Int)) (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| (Array T@Ref T@Field_17858_50368 T@PolymorphicMapType_18347)) (|PolymorphicMapType_17798_17858_50235#PolymorphicMapType_17798| (Array T@Ref T@Field_17858_50235 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_17858_53)
(declare-fun f_7 () T@Field_23904_3325)
(declare-sort T@Seq_24540 0)
(declare-fun |Seq#Length_12254| (T@Seq_24540) Int)
(declare-fun |Seq#Drop_12254| (T@Seq_24540 Int) T@Seq_24540)
(declare-sort T@Seq_3203 0)
(declare-fun |Seq#Length_3203| (T@Seq_3203) Int)
(declare-fun |Seq#Drop_3203| (T@Seq_3203 Int) T@Seq_3203)
(declare-fun succHeap (T@PolymorphicMapType_17798 T@PolymorphicMapType_17798) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_17798 T@PolymorphicMapType_17798) Bool)
(declare-fun state (T@PolymorphicMapType_17798 T@PolymorphicMapType_17819) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_17819) Bool)
(declare-fun |exp'| (T@PolymorphicMapType_17798 Int Int Int) Int)
(declare-fun dummyFunction_3596 (Int) Bool)
(declare-fun |exp#triggerStateless| (Int Int Int) Int)
(declare-fun ZeroPMask () T@PolymorphicMapType_18347)
(declare-fun |Seq#Index_12254| (T@Seq_24540 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3203| (T@Seq_3203 Int) Int)
(declare-fun |Seq#Empty_12254| () T@Seq_24540)
(declare-fun |Seq#Empty_3203| () T@Seq_3203)
(declare-fun |Seq#Update_12254| (T@Seq_24540 Int T@Ref) T@Seq_24540)
(declare-fun |Seq#Update_3203| (T@Seq_3203 Int Int) T@Seq_3203)
(declare-fun |Seq#Take_12254| (T@Seq_24540 Int) T@Seq_24540)
(declare-fun |Seq#Take_3203| (T@Seq_3203 Int) T@Seq_3203)
(declare-fun |Seq#Contains_3203| (T@Seq_3203 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3203)
(declare-fun |Seq#Contains_24540| (T@Seq_24540 T@Ref) Bool)
(declare-fun |Seq#Skolem_24540| (T@Seq_24540 T@Ref) Int)
(declare-fun |Seq#Skolem_3203| (T@Seq_3203 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_17798 T@PolymorphicMapType_17798 T@PolymorphicMapType_17819) Bool)
(declare-fun IsPredicateField_17858_50326 (T@Field_17858_50235) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_17858 (T@Field_17858_50235) T@Field_17858_50368)
(declare-fun HasDirectPerm_17858_50299 (T@PolymorphicMapType_17819 T@Ref T@Field_17858_50235) Bool)
(declare-fun IsWandField_17858_52073 (T@Field_17858_50235) Bool)
(declare-fun WandMaskField_17858 (T@Field_17858_50235) T@Field_17858_50368)
(declare-fun |Seq#Singleton_12254| (T@Ref) T@Seq_24540)
(declare-fun |Seq#Singleton_3203| (Int) T@Seq_3203)
(declare-fun |Seq#Append_24540| (T@Seq_24540 T@Seq_24540) T@Seq_24540)
(declare-fun |Seq#Append_3203| (T@Seq_3203 T@Seq_3203) T@Seq_3203)
(declare-fun dummyHeap () T@PolymorphicMapType_17798)
(declare-fun ZeroMask () T@PolymorphicMapType_17819)
(declare-fun InsidePredicate_17858_17858 (T@Field_17858_50235 T@FrameType T@Field_17858_50235 T@FrameType) Bool)
(declare-fun IsPredicateField_12240_3325 (T@Field_23904_3325) Bool)
(declare-fun IsWandField_12240_3325 (T@Field_23904_3325) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_12240_55619 (T@Field_17858_50368) Bool)
(declare-fun IsWandField_12240_55635 (T@Field_17858_50368) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_12240_17872 (T@Field_17871_17872) Bool)
(declare-fun IsWandField_12240_17872 (T@Field_17871_17872) Bool)
(declare-fun IsPredicateField_12240_53 (T@Field_17858_53) Bool)
(declare-fun IsWandField_12240_53 (T@Field_17858_53) Bool)
(declare-fun |exp#frame| (T@FrameType Int Int Int) Int)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun exp (T@PolymorphicMapType_17798 Int Int Int) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun HasDirectPerm_17858_56073 (T@PolymorphicMapType_17819 T@Ref T@Field_17858_50368) Bool)
(declare-fun HasDirectPerm_17858_3325 (T@PolymorphicMapType_17819 T@Ref T@Field_23904_3325) Bool)
(declare-fun HasDirectPerm_17858_17872 (T@PolymorphicMapType_17819 T@Ref T@Field_17871_17872) Bool)
(declare-fun HasDirectPerm_17858_53 (T@PolymorphicMapType_17819 T@Ref T@Field_17858_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_17819 T@PolymorphicMapType_17819 T@PolymorphicMapType_17819) Bool)
(declare-fun |Seq#Equal_24540| (T@Seq_24540 T@Seq_24540) Bool)
(declare-fun |Seq#Equal_3203| (T@Seq_3203 T@Seq_3203) Bool)
(declare-fun |Seq#ContainsTrigger_12254| (T@Seq_24540 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3203| (T@Seq_3203 Int) Bool)
(declare-fun |Seq#SkolemDiff_24540| (T@Seq_24540 T@Seq_24540) Int)
(declare-fun |Seq#SkolemDiff_3203| (T@Seq_3203 T@Seq_3203) Int)
(assert (forall ((s T@Seq_24540) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_12254| s)) (= (|Seq#Length_12254| (|Seq#Drop_12254| s n)) (- (|Seq#Length_12254| s) n))) (=> (< (|Seq#Length_12254| s) n) (= (|Seq#Length_12254| (|Seq#Drop_12254| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_12254| (|Seq#Drop_12254| s n)) (|Seq#Length_12254| s))))
 :qid |stdinbpl.330:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_12254| (|Seq#Drop_12254| s n)))
 :pattern ( (|Seq#Length_12254| s) (|Seq#Drop_12254| s n))
)))
(assert (forall ((s@@0 T@Seq_3203) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3203| s@@0)) (= (|Seq#Length_3203| (|Seq#Drop_3203| s@@0 n@@0)) (- (|Seq#Length_3203| s@@0) n@@0))) (=> (< (|Seq#Length_3203| s@@0) n@@0) (= (|Seq#Length_3203| (|Seq#Drop_3203| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3203| (|Seq#Drop_3203| s@@0 n@@0)) (|Seq#Length_3203| s@@0))))
 :qid |stdinbpl.330:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3203| (|Seq#Drop_3203| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3203| s@@0) (|Seq#Drop_3203| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_17798) (Heap1 T@PolymorphicMapType_17798) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_17798) (Mask T@PolymorphicMapType_17819) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_17798) (Heap1@@0 T@PolymorphicMapType_17798) (Heap2 T@PolymorphicMapType_17798) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_17798) (a_2 Int) (i Int) (b_24 Int) ) (! (dummyFunction_3596 (|exp#triggerStateless| a_2 i b_24))
 :qid |stdinbpl.616:15|
 :skolemid |59|
 :pattern ( (|exp'| Heap@@0 a_2 i b_24))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_17858_50368) ) (!  (not (select (|PolymorphicMapType_18347_17858_51546#PolymorphicMapType_18347| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18347_17858_51546#PolymorphicMapType_18347| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_17858_50235) ) (!  (not (select (|PolymorphicMapType_18347_17858_50235#PolymorphicMapType_18347| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18347_17858_50235#PolymorphicMapType_18347| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_23904_3325) ) (!  (not (select (|PolymorphicMapType_18347_17858_3325#PolymorphicMapType_18347| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18347_17858_3325#PolymorphicMapType_18347| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_17871_17872) ) (!  (not (select (|PolymorphicMapType_18347_17858_17872#PolymorphicMapType_18347| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18347_17858_17872#PolymorphicMapType_18347| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_17858_53) ) (!  (not (select (|PolymorphicMapType_18347_17858_53#PolymorphicMapType_18347| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18347_17858_53#PolymorphicMapType_18347| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((s@@1 T@Seq_24540) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_12254| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_12254| (|Seq#Drop_12254| s@@1 n@@1) j) (|Seq#Index_12254| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.351:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_12254| (|Seq#Drop_12254| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3203) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3203| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3203| (|Seq#Drop_3203| s@@2 n@@2) j@@0) (|Seq#Index_3203| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.351:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3203| (|Seq#Drop_3203| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_12254| |Seq#Empty_12254|) 0))
(assert (= (|Seq#Length_3203| |Seq#Empty_3203|) 0))
(assert (forall ((s@@3 T@Seq_24540) (i@@0 Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_12254| s@@3))) (and (=> (= i@@0 n@@3) (= (|Seq#Index_12254| (|Seq#Update_12254| s@@3 i@@0 v) n@@3) v)) (=> (not (= i@@0 n@@3)) (= (|Seq#Index_12254| (|Seq#Update_12254| s@@3 i@@0 v) n@@3) (|Seq#Index_12254| s@@3 n@@3)))))
 :qid |stdinbpl.306:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_12254| (|Seq#Update_12254| s@@3 i@@0 v) n@@3))
 :pattern ( (|Seq#Index_12254| s@@3 n@@3) (|Seq#Update_12254| s@@3 i@@0 v))
)))
(assert (forall ((s@@4 T@Seq_3203) (i@@1 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3203| s@@4))) (and (=> (= i@@1 n@@4) (= (|Seq#Index_3203| (|Seq#Update_3203| s@@4 i@@1 v@@0) n@@4) v@@0)) (=> (not (= i@@1 n@@4)) (= (|Seq#Index_3203| (|Seq#Update_3203| s@@4 i@@1 v@@0) n@@4) (|Seq#Index_3203| s@@4 n@@4)))))
 :qid |stdinbpl.306:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3203| (|Seq#Update_3203| s@@4 i@@1 v@@0) n@@4))
 :pattern ( (|Seq#Index_3203| s@@4 n@@4) (|Seq#Update_3203| s@@4 i@@1 v@@0))
)))
(assert (forall ((s@@5 T@Seq_24540) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_12254| s@@5)) (= (|Seq#Length_12254| (|Seq#Take_12254| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_12254| s@@5) n@@5) (= (|Seq#Length_12254| (|Seq#Take_12254| s@@5 n@@5)) (|Seq#Length_12254| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_12254| (|Seq#Take_12254| s@@5 n@@5)) 0)))
 :qid |stdinbpl.317:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_12254| (|Seq#Take_12254| s@@5 n@@5)))
 :pattern ( (|Seq#Take_12254| s@@5 n@@5) (|Seq#Length_12254| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3203) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3203| s@@6)) (= (|Seq#Length_3203| (|Seq#Take_3203| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3203| s@@6) n@@6) (= (|Seq#Length_3203| (|Seq#Take_3203| s@@6 n@@6)) (|Seq#Length_3203| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3203| (|Seq#Take_3203| s@@6 n@@6)) 0)))
 :qid |stdinbpl.317:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3203| (|Seq#Take_3203| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3203| s@@6 n@@6) (|Seq#Length_3203| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3203| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.591:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3203| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_24540) (x T@Ref) ) (!  (=> (|Seq#Contains_24540| s@@7 x) (and (and (<= 0 (|Seq#Skolem_24540| s@@7 x)) (< (|Seq#Skolem_24540| s@@7 x) (|Seq#Length_12254| s@@7))) (= (|Seq#Index_12254| s@@7 (|Seq#Skolem_24540| s@@7 x)) x)))
 :qid |stdinbpl.449:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_24540| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3203) (x@@0 Int) ) (!  (=> (|Seq#Contains_3203| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3203| s@@8 x@@0)) (< (|Seq#Skolem_3203| s@@8 x@@0) (|Seq#Length_3203| s@@8))) (= (|Seq#Index_3203| s@@8 (|Seq#Skolem_3203| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.449:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3203| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_24540) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_12254| s@@9 n@@7) s@@9))
 :qid |stdinbpl.433:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_12254| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3203) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3203| s@@10 n@@8) s@@10))
 :qid |stdinbpl.433:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3203| s@@10 n@@8))
)))
(assert (forall ((i@@2 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@2 j@@1) (- i@@2 j@@1))
 :qid |stdinbpl.286:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@2 j@@1))
)))
(assert (forall ((i@@3 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@3 j@@2) (+ i@@3 j@@2))
 :qid |stdinbpl.284:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@3 j@@2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_17798) (ExhaleHeap T@PolymorphicMapType_17798) (Mask@@0 T@PolymorphicMapType_17819) (pm_f_21 T@Field_17858_50235) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_17858_50299 Mask@@0 null pm_f_21) (IsPredicateField_17858_50326 pm_f_21)) (= (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@1) null (PredicateMaskField_17858 pm_f_21)) (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| ExhaleHeap) null (PredicateMaskField_17858 pm_f_21)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_17858_50326 pm_f_21) (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| ExhaleHeap) null (PredicateMaskField_17858 pm_f_21)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_17798) (ExhaleHeap@@0 T@PolymorphicMapType_17798) (Mask@@1 T@PolymorphicMapType_17819) (pm_f_21@@0 T@Field_17858_50235) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_17858_50299 Mask@@1 null pm_f_21@@0) (IsWandField_17858_52073 pm_f_21@@0)) (= (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@2) null (WandMaskField_17858 pm_f_21@@0)) (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| ExhaleHeap@@0) null (WandMaskField_17858 pm_f_21@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsWandField_17858_52073 pm_f_21@@0) (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| ExhaleHeap@@0) null (WandMaskField_17858 pm_f_21@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_24540| (|Seq#Singleton_12254| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.574:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_24540| (|Seq#Singleton_12254| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3203| (|Seq#Singleton_3203| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.574:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3203| (|Seq#Singleton_3203| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_24540) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_12254| s@@11))) (= (|Seq#Index_12254| (|Seq#Take_12254| s@@11 n@@9) j@@3) (|Seq#Index_12254| s@@11 j@@3)))
 :qid |stdinbpl.325:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_12254| (|Seq#Take_12254| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_12254| s@@11 j@@3) (|Seq#Take_12254| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3203) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3203| s@@12))) (= (|Seq#Index_3203| (|Seq#Take_3203| s@@12 n@@10) j@@4) (|Seq#Index_3203| s@@12 j@@4)))
 :qid |stdinbpl.325:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3203| (|Seq#Take_3203| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3203| s@@12 j@@4) (|Seq#Take_3203| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_24540) (t T@Seq_24540) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_12254| s@@13))) (< n@@11 (|Seq#Length_12254| (|Seq#Append_24540| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_12254| s@@13)) (|Seq#Length_12254| s@@13)) n@@11) (= (|Seq#Take_12254| (|Seq#Append_24540| s@@13 t) n@@11) (|Seq#Append_24540| s@@13 (|Seq#Take_12254| t (|Seq#Sub| n@@11 (|Seq#Length_12254| s@@13)))))))
 :qid |stdinbpl.410:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_12254| (|Seq#Append_24540| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3203) (t@@0 T@Seq_3203) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3203| s@@14))) (< n@@12 (|Seq#Length_3203| (|Seq#Append_3203| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3203| s@@14)) (|Seq#Length_3203| s@@14)) n@@12) (= (|Seq#Take_3203| (|Seq#Append_3203| s@@14 t@@0) n@@12) (|Seq#Append_3203| s@@14 (|Seq#Take_3203| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3203| s@@14)))))))
 :qid |stdinbpl.410:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3203| (|Seq#Append_3203| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@3 T@PolymorphicMapType_17798) (ExhaleHeap@@1 T@PolymorphicMapType_17798) (Mask@@2 T@PolymorphicMapType_17819) (o_38 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| Heap@@3) o_38 $allocated) (select (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| ExhaleHeap@@1) o_38 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| ExhaleHeap@@1) o_38 $allocated))
)))
(assert (forall ((p T@Field_17858_50235) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_17858_17858 p v_1 p w))
 :qid |stdinbpl.228:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_17858_17858 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_24540) (s1 T@Seq_24540) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_12254|)) (not (= s1 |Seq#Empty_12254|))) (<= (|Seq#Length_12254| s0) n@@13)) (< n@@13 (|Seq#Length_12254| (|Seq#Append_24540| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_12254| s0)) (|Seq#Length_12254| s0)) n@@13) (= (|Seq#Index_12254| (|Seq#Append_24540| s0 s1) n@@13) (|Seq#Index_12254| s1 (|Seq#Sub| n@@13 (|Seq#Length_12254| s0))))))
 :qid |stdinbpl.297:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_12254| (|Seq#Append_24540| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3203) (s1@@0 T@Seq_3203) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3203|)) (not (= s1@@0 |Seq#Empty_3203|))) (<= (|Seq#Length_3203| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3203| (|Seq#Append_3203| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3203| s0@@0)) (|Seq#Length_3203| s0@@0)) n@@14) (= (|Seq#Index_3203| (|Seq#Append_3203| s0@@0 s1@@0) n@@14) (|Seq#Index_3203| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3203| s0@@0))))))
 :qid |stdinbpl.297:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3203| (|Seq#Append_3203| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_12240_3325 f_7)))
(assert  (not (IsWandField_12240_3325 f_7)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_17798) (ExhaleHeap@@2 T@PolymorphicMapType_17798) (Mask@@3 T@PolymorphicMapType_17819) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@4 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_17819) (o_2@@4 T@Ref) (f_4@@4 T@Field_17858_50368) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_17819_12240_54490#PolymorphicMapType_17819| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_12240_55619 f_4@@4))) (not (IsWandField_12240_55635 f_4@@4))) (<= (select (|PolymorphicMapType_17819_12240_54490#PolymorphicMapType_17819| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_17819_12240_54490#PolymorphicMapType_17819| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_17819) (o_2@@5 T@Ref) (f_4@@5 T@Field_17858_50235) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_17819_12240_50235#PolymorphicMapType_17819| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_17858_50326 f_4@@5))) (not (IsWandField_17858_52073 f_4@@5))) (<= (select (|PolymorphicMapType_17819_12240_50235#PolymorphicMapType_17819| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_17819_12240_50235#PolymorphicMapType_17819| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_17819) (o_2@@6 T@Ref) (f_4@@6 T@Field_17871_17872) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_17819_12240_17872#PolymorphicMapType_17819| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_12240_17872 f_4@@6))) (not (IsWandField_12240_17872 f_4@@6))) (<= (select (|PolymorphicMapType_17819_12240_17872#PolymorphicMapType_17819| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_17819_12240_17872#PolymorphicMapType_17819| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_17819) (o_2@@7 T@Ref) (f_4@@7 T@Field_17858_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_17819_12240_53#PolymorphicMapType_17819| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_12240_53 f_4@@7))) (not (IsWandField_12240_53 f_4@@7))) (<= (select (|PolymorphicMapType_17819_12240_53#PolymorphicMapType_17819| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_17819_12240_53#PolymorphicMapType_17819| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_17819) (o_2@@8 T@Ref) (f_4@@8 T@Field_23904_3325) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_17819_12240_3325#PolymorphicMapType_17819| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_12240_3325 f_4@@8))) (not (IsWandField_12240_3325 f_4@@8))) (<= (select (|PolymorphicMapType_17819_12240_3325#PolymorphicMapType_17819| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_17819_12240_3325#PolymorphicMapType_17819| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_17798) (Mask@@9 T@PolymorphicMapType_17819) (a_2@@0 Int) (i@@4 Int) (b_24@@0 Int) ) (!  (=> (state Heap@@5 Mask@@9) (= (|exp'| Heap@@5 a_2@@0 i@@4 b_24@@0) (|exp#frame| EmptyFrame a_2@@0 i@@4 b_24@@0)))
 :qid |stdinbpl.629:15|
 :skolemid |61|
 :pattern ( (state Heap@@5 Mask@@9) (|exp'| Heap@@5 a_2@@0 i@@4 b_24@@0))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_17798) (Mask@@10 T@PolymorphicMapType_17819) (a_2@@1 Int) (i@@5 Int) (b_24@@1 Int) ) (!  (=> (and (state Heap@@6 Mask@@10) (< AssumeFunctionsAbove 0)) (= (exp Heap@@6 a_2@@1 i@@5 b_24@@1) (+ a_2@@1 (* i@@5 b_24@@1))))
 :qid |stdinbpl.622:15|
 :skolemid |60|
 :pattern ( (state Heap@@6 Mask@@10) (exp Heap@@6 a_2@@1 i@@5 b_24@@1))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_17819) (o_2@@9 T@Ref) (f_4@@9 T@Field_17858_50368) ) (! (= (HasDirectPerm_17858_56073 Mask@@11 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_17819_12240_54490#PolymorphicMapType_17819| Mask@@11) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17858_56073 Mask@@11 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_17819) (o_2@@10 T@Ref) (f_4@@10 T@Field_17858_50235) ) (! (= (HasDirectPerm_17858_50299 Mask@@12 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_17819_12240_50235#PolymorphicMapType_17819| Mask@@12) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17858_50299 Mask@@12 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_17819) (o_2@@11 T@Ref) (f_4@@11 T@Field_23904_3325) ) (! (= (HasDirectPerm_17858_3325 Mask@@13 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_17819_12240_3325#PolymorphicMapType_17819| Mask@@13) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17858_3325 Mask@@13 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_17819) (o_2@@12 T@Ref) (f_4@@12 T@Field_17871_17872) ) (! (= (HasDirectPerm_17858_17872 Mask@@14 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_17819_12240_17872#PolymorphicMapType_17819| Mask@@14) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17858_17872 Mask@@14 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_17819) (o_2@@13 T@Ref) (f_4@@13 T@Field_17858_53) ) (! (= (HasDirectPerm_17858_53 Mask@@15 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_17819_12240_53#PolymorphicMapType_17819| Mask@@15) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17858_53 Mask@@15 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_17798) (ExhaleHeap@@3 T@PolymorphicMapType_17798) (Mask@@16 T@PolymorphicMapType_17819) (pm_f_21@@1 T@Field_17858_50235) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@16) (=> (and (HasDirectPerm_17858_50299 Mask@@16 null pm_f_21@@1) (IsPredicateField_17858_50326 pm_f_21@@1)) (and (and (and (and (forall ((o2_21 T@Ref) (f_44 T@Field_17858_53) ) (!  (=> (select (|PolymorphicMapType_18347_17858_53#PolymorphicMapType_18347| (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@7) null (PredicateMaskField_17858 pm_f_21@@1))) o2_21 f_44) (= (select (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| Heap@@7) o2_21 f_44) (select (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| ExhaleHeap@@3) o2_21 f_44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| ExhaleHeap@@3) o2_21 f_44))
)) (forall ((o2_21@@0 T@Ref) (f_44@@0 T@Field_17871_17872) ) (!  (=> (select (|PolymorphicMapType_18347_17858_17872#PolymorphicMapType_18347| (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@7) null (PredicateMaskField_17858 pm_f_21@@1))) o2_21@@0 f_44@@0) (= (select (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| Heap@@7) o2_21@@0 f_44@@0) (select (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| ExhaleHeap@@3) o2_21@@0 f_44@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| ExhaleHeap@@3) o2_21@@0 f_44@@0))
))) (forall ((o2_21@@1 T@Ref) (f_44@@1 T@Field_23904_3325) ) (!  (=> (select (|PolymorphicMapType_18347_17858_3325#PolymorphicMapType_18347| (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@7) null (PredicateMaskField_17858 pm_f_21@@1))) o2_21@@1 f_44@@1) (= (select (|PolymorphicMapType_17798_12240_3325#PolymorphicMapType_17798| Heap@@7) o2_21@@1 f_44@@1) (select (|PolymorphicMapType_17798_12240_3325#PolymorphicMapType_17798| ExhaleHeap@@3) o2_21@@1 f_44@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17798_12240_3325#PolymorphicMapType_17798| ExhaleHeap@@3) o2_21@@1 f_44@@1))
))) (forall ((o2_21@@2 T@Ref) (f_44@@2 T@Field_17858_50235) ) (!  (=> (select (|PolymorphicMapType_18347_17858_50235#PolymorphicMapType_18347| (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@7) null (PredicateMaskField_17858 pm_f_21@@1))) o2_21@@2 f_44@@2) (= (select (|PolymorphicMapType_17798_17858_50235#PolymorphicMapType_17798| Heap@@7) o2_21@@2 f_44@@2) (select (|PolymorphicMapType_17798_17858_50235#PolymorphicMapType_17798| ExhaleHeap@@3) o2_21@@2 f_44@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17798_17858_50235#PolymorphicMapType_17798| ExhaleHeap@@3) o2_21@@2 f_44@@2))
))) (forall ((o2_21@@3 T@Ref) (f_44@@3 T@Field_17858_50368) ) (!  (=> (select (|PolymorphicMapType_18347_17858_51546#PolymorphicMapType_18347| (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@7) null (PredicateMaskField_17858 pm_f_21@@1))) o2_21@@3 f_44@@3) (= (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@7) o2_21@@3 f_44@@3) (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| ExhaleHeap@@3) o2_21@@3 f_44@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| ExhaleHeap@@3) o2_21@@3 f_44@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@16) (IsPredicateField_17858_50326 pm_f_21@@1))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_17798) (ExhaleHeap@@4 T@PolymorphicMapType_17798) (Mask@@17 T@PolymorphicMapType_17819) (pm_f_21@@2 T@Field_17858_50235) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@17) (=> (and (HasDirectPerm_17858_50299 Mask@@17 null pm_f_21@@2) (IsWandField_17858_52073 pm_f_21@@2)) (and (and (and (and (forall ((o2_21@@4 T@Ref) (f_44@@4 T@Field_17858_53) ) (!  (=> (select (|PolymorphicMapType_18347_17858_53#PolymorphicMapType_18347| (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@8) null (WandMaskField_17858 pm_f_21@@2))) o2_21@@4 f_44@@4) (= (select (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| Heap@@8) o2_21@@4 f_44@@4) (select (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| ExhaleHeap@@4) o2_21@@4 f_44@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| ExhaleHeap@@4) o2_21@@4 f_44@@4))
)) (forall ((o2_21@@5 T@Ref) (f_44@@5 T@Field_17871_17872) ) (!  (=> (select (|PolymorphicMapType_18347_17858_17872#PolymorphicMapType_18347| (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@8) null (WandMaskField_17858 pm_f_21@@2))) o2_21@@5 f_44@@5) (= (select (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| Heap@@8) o2_21@@5 f_44@@5) (select (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| ExhaleHeap@@4) o2_21@@5 f_44@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| ExhaleHeap@@4) o2_21@@5 f_44@@5))
))) (forall ((o2_21@@6 T@Ref) (f_44@@6 T@Field_23904_3325) ) (!  (=> (select (|PolymorphicMapType_18347_17858_3325#PolymorphicMapType_18347| (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@8) null (WandMaskField_17858 pm_f_21@@2))) o2_21@@6 f_44@@6) (= (select (|PolymorphicMapType_17798_12240_3325#PolymorphicMapType_17798| Heap@@8) o2_21@@6 f_44@@6) (select (|PolymorphicMapType_17798_12240_3325#PolymorphicMapType_17798| ExhaleHeap@@4) o2_21@@6 f_44@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17798_12240_3325#PolymorphicMapType_17798| ExhaleHeap@@4) o2_21@@6 f_44@@6))
))) (forall ((o2_21@@7 T@Ref) (f_44@@7 T@Field_17858_50235) ) (!  (=> (select (|PolymorphicMapType_18347_17858_50235#PolymorphicMapType_18347| (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@8) null (WandMaskField_17858 pm_f_21@@2))) o2_21@@7 f_44@@7) (= (select (|PolymorphicMapType_17798_17858_50235#PolymorphicMapType_17798| Heap@@8) o2_21@@7 f_44@@7) (select (|PolymorphicMapType_17798_17858_50235#PolymorphicMapType_17798| ExhaleHeap@@4) o2_21@@7 f_44@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17798_17858_50235#PolymorphicMapType_17798| ExhaleHeap@@4) o2_21@@7 f_44@@7))
))) (forall ((o2_21@@8 T@Ref) (f_44@@8 T@Field_17858_50368) ) (!  (=> (select (|PolymorphicMapType_18347_17858_51546#PolymorphicMapType_18347| (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@8) null (WandMaskField_17858 pm_f_21@@2))) o2_21@@8 f_44@@8) (= (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@8) o2_21@@8 f_44@@8) (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| ExhaleHeap@@4) o2_21@@8 f_44@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| ExhaleHeap@@4) o2_21@@8 f_44@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@17) (IsWandField_17858_52073 pm_f_21@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.216:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3203| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.589:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3203| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_17798) (ExhaleHeap@@5 T@PolymorphicMapType_17798) (Mask@@18 T@PolymorphicMapType_17819) (o_38@@0 T@Ref) (f_44@@9 T@Field_17858_50368) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@18) (=> (HasDirectPerm_17858_56073 Mask@@18 o_38@@0 f_44@@9) (= (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@9) o_38@@0 f_44@@9) (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| ExhaleHeap@@5) o_38@@0 f_44@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@18) (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| ExhaleHeap@@5) o_38@@0 f_44@@9))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_17798) (ExhaleHeap@@6 T@PolymorphicMapType_17798) (Mask@@19 T@PolymorphicMapType_17819) (o_38@@1 T@Ref) (f_44@@10 T@Field_17858_50235) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@19) (=> (HasDirectPerm_17858_50299 Mask@@19 o_38@@1 f_44@@10) (= (select (|PolymorphicMapType_17798_17858_50235#PolymorphicMapType_17798| Heap@@10) o_38@@1 f_44@@10) (select (|PolymorphicMapType_17798_17858_50235#PolymorphicMapType_17798| ExhaleHeap@@6) o_38@@1 f_44@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@19) (select (|PolymorphicMapType_17798_17858_50235#PolymorphicMapType_17798| ExhaleHeap@@6) o_38@@1 f_44@@10))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_17798) (ExhaleHeap@@7 T@PolymorphicMapType_17798) (Mask@@20 T@PolymorphicMapType_17819) (o_38@@2 T@Ref) (f_44@@11 T@Field_23904_3325) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@20) (=> (HasDirectPerm_17858_3325 Mask@@20 o_38@@2 f_44@@11) (= (select (|PolymorphicMapType_17798_12240_3325#PolymorphicMapType_17798| Heap@@11) o_38@@2 f_44@@11) (select (|PolymorphicMapType_17798_12240_3325#PolymorphicMapType_17798| ExhaleHeap@@7) o_38@@2 f_44@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@20) (select (|PolymorphicMapType_17798_12240_3325#PolymorphicMapType_17798| ExhaleHeap@@7) o_38@@2 f_44@@11))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_17798) (ExhaleHeap@@8 T@PolymorphicMapType_17798) (Mask@@21 T@PolymorphicMapType_17819) (o_38@@3 T@Ref) (f_44@@12 T@Field_17871_17872) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@21) (=> (HasDirectPerm_17858_17872 Mask@@21 o_38@@3 f_44@@12) (= (select (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| Heap@@12) o_38@@3 f_44@@12) (select (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| ExhaleHeap@@8) o_38@@3 f_44@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@21) (select (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| ExhaleHeap@@8) o_38@@3 f_44@@12))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_17798) (ExhaleHeap@@9 T@PolymorphicMapType_17798) (Mask@@22 T@PolymorphicMapType_17819) (o_38@@4 T@Ref) (f_44@@13 T@Field_17858_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@22) (=> (HasDirectPerm_17858_53 Mask@@22 o_38@@4 f_44@@13) (= (select (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| Heap@@13) o_38@@4 f_44@@13) (select (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| ExhaleHeap@@9) o_38@@4 f_44@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@22) (select (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| ExhaleHeap@@9) o_38@@4 f_44@@13))
)))
(assert (forall ((s0@@1 T@Seq_24540) (s1@@1 T@Seq_24540) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_12254|)) (not (= s1@@1 |Seq#Empty_12254|))) (= (|Seq#Length_12254| (|Seq#Append_24540| s0@@1 s1@@1)) (+ (|Seq#Length_12254| s0@@1) (|Seq#Length_12254| s1@@1))))
 :qid |stdinbpl.266:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_12254| (|Seq#Append_24540| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3203) (s1@@2 T@Seq_3203) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3203|)) (not (= s1@@2 |Seq#Empty_3203|))) (= (|Seq#Length_3203| (|Seq#Append_3203| s0@@2 s1@@2)) (+ (|Seq#Length_3203| s0@@2) (|Seq#Length_3203| s1@@2))))
 :qid |stdinbpl.266:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3203| (|Seq#Append_3203| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_17858_50368) ) (! (= (select (|PolymorphicMapType_17819_12240_54490#PolymorphicMapType_17819| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17819_12240_54490#PolymorphicMapType_17819| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_17858_50235) ) (! (= (select (|PolymorphicMapType_17819_12240_50235#PolymorphicMapType_17819| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17819_12240_50235#PolymorphicMapType_17819| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_17871_17872) ) (! (= (select (|PolymorphicMapType_17819_12240_17872#PolymorphicMapType_17819| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17819_12240_17872#PolymorphicMapType_17819| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_17858_53) ) (! (= (select (|PolymorphicMapType_17819_12240_53#PolymorphicMapType_17819| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17819_12240_53#PolymorphicMapType_17819| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_23904_3325) ) (! (= (select (|PolymorphicMapType_17819_12240_3325#PolymorphicMapType_17819| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17819_12240_3325#PolymorphicMapType_17819| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((s@@15 T@Seq_24540) (t@@1 T@Seq_24540) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_12254| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_12254| s@@15)) (|Seq#Length_12254| s@@15)) n@@15) (= (|Seq#Drop_12254| (|Seq#Append_24540| s@@15 t@@1) n@@15) (|Seq#Drop_12254| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_12254| s@@15))))))
 :qid |stdinbpl.423:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_12254| (|Seq#Append_24540| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3203) (t@@2 T@Seq_3203) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3203| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3203| s@@16)) (|Seq#Length_3203| s@@16)) n@@16) (= (|Seq#Drop_3203| (|Seq#Append_3203| s@@16 t@@2) n@@16) (|Seq#Drop_3203| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3203| s@@16))))))
 :qid |stdinbpl.423:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3203| (|Seq#Append_3203| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_17819) (SummandMask1 T@PolymorphicMapType_17819) (SummandMask2 T@PolymorphicMapType_17819) (o_2@@19 T@Ref) (f_4@@19 T@Field_17858_50368) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_17819_12240_54490#PolymorphicMapType_17819| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_17819_12240_54490#PolymorphicMapType_17819| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_17819_12240_54490#PolymorphicMapType_17819| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_17819_12240_54490#PolymorphicMapType_17819| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_17819_12240_54490#PolymorphicMapType_17819| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_17819_12240_54490#PolymorphicMapType_17819| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_17819) (SummandMask1@@0 T@PolymorphicMapType_17819) (SummandMask2@@0 T@PolymorphicMapType_17819) (o_2@@20 T@Ref) (f_4@@20 T@Field_17858_50235) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_17819_12240_50235#PolymorphicMapType_17819| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_17819_12240_50235#PolymorphicMapType_17819| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_17819_12240_50235#PolymorphicMapType_17819| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_17819_12240_50235#PolymorphicMapType_17819| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_17819_12240_50235#PolymorphicMapType_17819| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_17819_12240_50235#PolymorphicMapType_17819| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_17819) (SummandMask1@@1 T@PolymorphicMapType_17819) (SummandMask2@@1 T@PolymorphicMapType_17819) (o_2@@21 T@Ref) (f_4@@21 T@Field_17871_17872) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_17819_12240_17872#PolymorphicMapType_17819| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_17819_12240_17872#PolymorphicMapType_17819| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_17819_12240_17872#PolymorphicMapType_17819| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_17819_12240_17872#PolymorphicMapType_17819| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_17819_12240_17872#PolymorphicMapType_17819| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_17819_12240_17872#PolymorphicMapType_17819| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_17819) (SummandMask1@@2 T@PolymorphicMapType_17819) (SummandMask2@@2 T@PolymorphicMapType_17819) (o_2@@22 T@Ref) (f_4@@22 T@Field_17858_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_17819_12240_53#PolymorphicMapType_17819| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_17819_12240_53#PolymorphicMapType_17819| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_17819_12240_53#PolymorphicMapType_17819| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_17819_12240_53#PolymorphicMapType_17819| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_17819_12240_53#PolymorphicMapType_17819| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_17819_12240_53#PolymorphicMapType_17819| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_17819) (SummandMask1@@3 T@PolymorphicMapType_17819) (SummandMask2@@3 T@PolymorphicMapType_17819) (o_2@@23 T@Ref) (f_4@@23 T@Field_23904_3325) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_17819_12240_3325#PolymorphicMapType_17819| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_17819_12240_3325#PolymorphicMapType_17819| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_17819_12240_3325#PolymorphicMapType_17819| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_17819_12240_3325#PolymorphicMapType_17819| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_17819_12240_3325#PolymorphicMapType_17819| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_17819_12240_3325#PolymorphicMapType_17819| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3203| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3203| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.588:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3203| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_24540) (b T@Seq_24540) ) (!  (=> (|Seq#Equal_24540| a b) (= a b))
 :qid |stdinbpl.561:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_24540| a b))
)))
(assert (forall ((a@@0 T@Seq_3203) (b@@0 T@Seq_3203) ) (!  (=> (|Seq#Equal_3203| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.561:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3203| a@@0 b@@0))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_17798) (a_2@@2 Int) (i@@6 Int) (b_24@@2 Int) ) (!  (and (= (exp Heap@@14 a_2@@2 i@@6 b_24@@2) (|exp'| Heap@@14 a_2@@2 i@@6 b_24@@2)) (dummyFunction_3596 (|exp#triggerStateless| a_2@@2 i@@6 b_24@@2)))
 :qid |stdinbpl.612:15|
 :skolemid |58|
 :pattern ( (exp Heap@@14 a_2@@2 i@@6 b_24@@2))
)))
(assert (forall ((s@@17 T@Seq_24540) (i@@7 Int) ) (!  (=> (and (<= 0 i@@7) (< i@@7 (|Seq#Length_12254| s@@17))) (|Seq#ContainsTrigger_12254| s@@17 (|Seq#Index_12254| s@@17 i@@7)))
 :qid |stdinbpl.454:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_12254| s@@17 i@@7))
)))
(assert (forall ((s@@18 T@Seq_3203) (i@@8 Int) ) (!  (=> (and (<= 0 i@@8) (< i@@8 (|Seq#Length_3203| s@@18))) (|Seq#ContainsTrigger_3203| s@@18 (|Seq#Index_3203| s@@18 i@@8)))
 :qid |stdinbpl.454:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3203| s@@18 i@@8))
)))
(assert (forall ((s0@@3 T@Seq_24540) (s1@@3 T@Seq_24540) ) (!  (and (=> (= s0@@3 |Seq#Empty_12254|) (= (|Seq#Append_24540| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_12254|) (= (|Seq#Append_24540| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.272:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_24540| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3203) (s1@@4 T@Seq_3203) ) (!  (and (=> (= s0@@4 |Seq#Empty_3203|) (= (|Seq#Append_3203| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3203|) (= (|Seq#Append_3203| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.272:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3203| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_12254| (|Seq#Singleton_12254| t@@3) 0) t@@3)
 :qid |stdinbpl.276:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_12254| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3203| (|Seq#Singleton_3203| t@@4) 0) t@@4)
 :qid |stdinbpl.276:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3203| t@@4))
)))
(assert (forall ((s@@19 T@Seq_24540) ) (! (<= 0 (|Seq#Length_12254| s@@19))
 :qid |stdinbpl.255:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_12254| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3203) ) (! (<= 0 (|Seq#Length_3203| s@@20))
 :qid |stdinbpl.255:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3203| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_24540) (s1@@5 T@Seq_24540) ) (!  (=> (|Seq#Equal_24540| s0@@5 s1@@5) (and (= (|Seq#Length_12254| s0@@5) (|Seq#Length_12254| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_12254| s0@@5))) (= (|Seq#Index_12254| s0@@5 j@@6) (|Seq#Index_12254| s1@@5 j@@6)))
 :qid |stdinbpl.551:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_12254| s0@@5 j@@6))
 :pattern ( (|Seq#Index_12254| s1@@5 j@@6))
))))
 :qid |stdinbpl.548:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_24540| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3203) (s1@@6 T@Seq_3203) ) (!  (=> (|Seq#Equal_3203| s0@@6 s1@@6) (and (= (|Seq#Length_3203| s0@@6) (|Seq#Length_3203| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_3203| s0@@6))) (= (|Seq#Index_3203| s0@@6 j@@7) (|Seq#Index_3203| s1@@6 j@@7)))
 :qid |stdinbpl.551:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3203| s0@@6 j@@7))
 :pattern ( (|Seq#Index_3203| s1@@6 j@@7))
))))
 :qid |stdinbpl.548:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3203| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_12254| (|Seq#Singleton_12254| t@@5)) 1)
 :qid |stdinbpl.263:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_12254| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3203| (|Seq#Singleton_3203| t@@6)) 1)
 :qid |stdinbpl.263:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3203| t@@6))
)))
(assert (forall ((s@@21 T@Seq_24540) (t@@7 T@Seq_24540) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_12254| s@@21))) (= (|Seq#Take_12254| (|Seq#Append_24540| s@@21 t@@7) n@@17) (|Seq#Take_12254| s@@21 n@@17)))
 :qid |stdinbpl.405:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_12254| (|Seq#Append_24540| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3203) (t@@8 T@Seq_3203) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3203| s@@22))) (= (|Seq#Take_3203| (|Seq#Append_3203| s@@22 t@@8) n@@18) (|Seq#Take_3203| s@@22 n@@18)))
 :qid |stdinbpl.405:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3203| (|Seq#Append_3203| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_24540) (i@@9 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@9) (< i@@9 (|Seq#Length_12254| s@@23))) (= (|Seq#Length_12254| (|Seq#Update_12254| s@@23 i@@9 v@@2)) (|Seq#Length_12254| s@@23)))
 :qid |stdinbpl.304:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_12254| (|Seq#Update_12254| s@@23 i@@9 v@@2)))
 :pattern ( (|Seq#Length_12254| s@@23) (|Seq#Update_12254| s@@23 i@@9 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3203) (i@@10 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@10) (< i@@10 (|Seq#Length_3203| s@@24))) (= (|Seq#Length_3203| (|Seq#Update_3203| s@@24 i@@10 v@@3)) (|Seq#Length_3203| s@@24)))
 :qid |stdinbpl.304:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3203| (|Seq#Update_3203| s@@24 i@@10 v@@3)))
 :pattern ( (|Seq#Length_3203| s@@24) (|Seq#Update_3203| s@@24 i@@10 v@@3))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_17798) (o_8 T@Ref) (f_8 T@Field_17858_50235) (v@@4 T@FrameType) ) (! (succHeap Heap@@15 (PolymorphicMapType_17798 (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| Heap@@15) (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| Heap@@15) (|PolymorphicMapType_17798_12240_3325#PolymorphicMapType_17798| Heap@@15) (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@15) (store (|PolymorphicMapType_17798_17858_50235#PolymorphicMapType_17798| Heap@@15) o_8 f_8 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17798 (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| Heap@@15) (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| Heap@@15) (|PolymorphicMapType_17798_12240_3325#PolymorphicMapType_17798| Heap@@15) (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@15) (store (|PolymorphicMapType_17798_17858_50235#PolymorphicMapType_17798| Heap@@15) o_8 f_8 v@@4)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_17798) (o_8@@0 T@Ref) (f_8@@0 T@Field_17858_50368) (v@@5 T@PolymorphicMapType_18347) ) (! (succHeap Heap@@16 (PolymorphicMapType_17798 (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| Heap@@16) (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| Heap@@16) (|PolymorphicMapType_17798_12240_3325#PolymorphicMapType_17798| Heap@@16) (store (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@16) o_8@@0 f_8@@0 v@@5) (|PolymorphicMapType_17798_17858_50235#PolymorphicMapType_17798| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17798 (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| Heap@@16) (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| Heap@@16) (|PolymorphicMapType_17798_12240_3325#PolymorphicMapType_17798| Heap@@16) (store (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@16) o_8@@0 f_8@@0 v@@5) (|PolymorphicMapType_17798_17858_50235#PolymorphicMapType_17798| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_17798) (o_8@@1 T@Ref) (f_8@@1 T@Field_23904_3325) (v@@6 Int) ) (! (succHeap Heap@@17 (PolymorphicMapType_17798 (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| Heap@@17) (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| Heap@@17) (store (|PolymorphicMapType_17798_12240_3325#PolymorphicMapType_17798| Heap@@17) o_8@@1 f_8@@1 v@@6) (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@17) (|PolymorphicMapType_17798_17858_50235#PolymorphicMapType_17798| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17798 (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| Heap@@17) (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| Heap@@17) (store (|PolymorphicMapType_17798_12240_3325#PolymorphicMapType_17798| Heap@@17) o_8@@1 f_8@@1 v@@6) (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@17) (|PolymorphicMapType_17798_17858_50235#PolymorphicMapType_17798| Heap@@17)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_17798) (o_8@@2 T@Ref) (f_8@@2 T@Field_17871_17872) (v@@7 T@Ref) ) (! (succHeap Heap@@18 (PolymorphicMapType_17798 (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| Heap@@18) (store (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| Heap@@18) o_8@@2 f_8@@2 v@@7) (|PolymorphicMapType_17798_12240_3325#PolymorphicMapType_17798| Heap@@18) (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@18) (|PolymorphicMapType_17798_17858_50235#PolymorphicMapType_17798| Heap@@18)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17798 (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| Heap@@18) (store (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| Heap@@18) o_8@@2 f_8@@2 v@@7) (|PolymorphicMapType_17798_12240_3325#PolymorphicMapType_17798| Heap@@18) (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@18) (|PolymorphicMapType_17798_17858_50235#PolymorphicMapType_17798| Heap@@18)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_17798) (o_8@@3 T@Ref) (f_8@@3 T@Field_17858_53) (v@@8 Bool) ) (! (succHeap Heap@@19 (PolymorphicMapType_17798 (store (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| Heap@@19) o_8@@3 f_8@@3 v@@8) (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| Heap@@19) (|PolymorphicMapType_17798_12240_3325#PolymorphicMapType_17798| Heap@@19) (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@19) (|PolymorphicMapType_17798_17858_50235#PolymorphicMapType_17798| Heap@@19)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17798 (store (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| Heap@@19) o_8@@3 f_8@@3 v@@8) (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| Heap@@19) (|PolymorphicMapType_17798_12240_3325#PolymorphicMapType_17798| Heap@@19) (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@19) (|PolymorphicMapType_17798_17858_50235#PolymorphicMapType_17798| Heap@@19)))
)))
(assert (forall ((s@@25 T@Seq_24540) (t@@9 T@Seq_24540) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_12254| s@@25))) (= (|Seq#Drop_12254| (|Seq#Append_24540| s@@25 t@@9) n@@19) (|Seq#Append_24540| (|Seq#Drop_12254| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.419:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_12254| (|Seq#Append_24540| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3203) (t@@10 T@Seq_3203) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3203| s@@26))) (= (|Seq#Drop_3203| (|Seq#Append_3203| s@@26 t@@10) n@@20) (|Seq#Append_3203| (|Seq#Drop_3203| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.419:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3203| (|Seq#Append_3203| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_24540) (n@@21 Int) (i@@11 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@11)) (< i@@11 (|Seq#Length_12254| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@11 n@@21) n@@21) i@@11) (= (|Seq#Index_12254| (|Seq#Drop_12254| s@@27 n@@21) (|Seq#Sub| i@@11 n@@21)) (|Seq#Index_12254| s@@27 i@@11))))
 :qid |stdinbpl.355:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_12254| s@@27 n@@21) (|Seq#Index_12254| s@@27 i@@11))
)))
(assert (forall ((s@@28 T@Seq_3203) (n@@22 Int) (i@@12 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@12)) (< i@@12 (|Seq#Length_3203| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@12 n@@22) n@@22) i@@12) (= (|Seq#Index_3203| (|Seq#Drop_3203| s@@28 n@@22) (|Seq#Sub| i@@12 n@@22)) (|Seq#Index_3203| s@@28 i@@12))))
 :qid |stdinbpl.355:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3203| s@@28 n@@22) (|Seq#Index_3203| s@@28 i@@12))
)))
(assert (forall ((s0@@7 T@Seq_24540) (s1@@7 T@Seq_24540) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_12254|)) (not (= s1@@7 |Seq#Empty_12254|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_12254| s0@@7))) (= (|Seq#Index_12254| (|Seq#Append_24540| s0@@7 s1@@7) n@@23) (|Seq#Index_12254| s0@@7 n@@23)))
 :qid |stdinbpl.295:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_12254| (|Seq#Append_24540| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_12254| s0@@7 n@@23) (|Seq#Append_24540| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3203) (s1@@8 T@Seq_3203) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3203|)) (not (= s1@@8 |Seq#Empty_3203|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3203| s0@@8))) (= (|Seq#Index_3203| (|Seq#Append_3203| s0@@8 s1@@8) n@@24) (|Seq#Index_3203| s0@@8 n@@24)))
 :qid |stdinbpl.295:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3203| (|Seq#Append_3203| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3203| s0@@8 n@@24) (|Seq#Append_3203| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_24540) (s1@@9 T@Seq_24540) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_12254|)) (not (= s1@@9 |Seq#Empty_12254|))) (<= 0 m)) (< m (|Seq#Length_12254| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_12254| s0@@9)) (|Seq#Length_12254| s0@@9)) m) (= (|Seq#Index_12254| (|Seq#Append_24540| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_12254| s0@@9))) (|Seq#Index_12254| s1@@9 m))))
 :qid |stdinbpl.300:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_12254| s1@@9 m) (|Seq#Append_24540| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3203) (s1@@10 T@Seq_3203) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3203|)) (not (= s1@@10 |Seq#Empty_3203|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3203| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3203| s0@@10)) (|Seq#Length_3203| s0@@10)) m@@0) (= (|Seq#Index_3203| (|Seq#Append_3203| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3203| s0@@10))) (|Seq#Index_3203| s1@@10 m@@0))))
 :qid |stdinbpl.300:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3203| s1@@10 m@@0) (|Seq#Append_3203| s0@@10 s1@@10))
)))
(assert (forall ((o_8@@4 T@Ref) (f_12 T@Field_17871_17872) (Heap@@20 T@PolymorphicMapType_17798) ) (!  (=> (select (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| Heap@@20) o_8@@4 $allocated) (select (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| Heap@@20) (select (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| Heap@@20) o_8@@4 f_12) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| Heap@@20) o_8@@4 f_12))
)))
(assert (forall ((s@@29 T@Seq_24540) (x@@3 T@Ref) (i@@13 Int) ) (!  (=> (and (and (<= 0 i@@13) (< i@@13 (|Seq#Length_12254| s@@29))) (= (|Seq#Index_12254| s@@29 i@@13) x@@3)) (|Seq#Contains_24540| s@@29 x@@3))
 :qid |stdinbpl.452:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_24540| s@@29 x@@3) (|Seq#Index_12254| s@@29 i@@13))
)))
(assert (forall ((s@@30 T@Seq_3203) (x@@4 Int) (i@@14 Int) ) (!  (=> (and (and (<= 0 i@@14) (< i@@14 (|Seq#Length_3203| s@@30))) (= (|Seq#Index_3203| s@@30 i@@14) x@@4)) (|Seq#Contains_3203| s@@30 x@@4))
 :qid |stdinbpl.452:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3203| s@@30 x@@4) (|Seq#Index_3203| s@@30 i@@14))
)))
(assert (forall ((s0@@11 T@Seq_24540) (s1@@11 T@Seq_24540) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_24540| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_24540| s0@@11 s1@@11))) (not (= (|Seq#Length_12254| s0@@11) (|Seq#Length_12254| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_24540| s0@@11 s1@@11))) (= (|Seq#Length_12254| s0@@11) (|Seq#Length_12254| s1@@11))) (= (|Seq#SkolemDiff_24540| s0@@11 s1@@11) (|Seq#SkolemDiff_24540| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_24540| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_24540| s0@@11 s1@@11) (|Seq#Length_12254| s0@@11))) (not (= (|Seq#Index_12254| s0@@11 (|Seq#SkolemDiff_24540| s0@@11 s1@@11)) (|Seq#Index_12254| s1@@11 (|Seq#SkolemDiff_24540| s0@@11 s1@@11))))))
 :qid |stdinbpl.556:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_24540| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3203) (s1@@12 T@Seq_3203) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3203| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3203| s0@@12 s1@@12))) (not (= (|Seq#Length_3203| s0@@12) (|Seq#Length_3203| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3203| s0@@12 s1@@12))) (= (|Seq#Length_3203| s0@@12) (|Seq#Length_3203| s1@@12))) (= (|Seq#SkolemDiff_3203| s0@@12 s1@@12) (|Seq#SkolemDiff_3203| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3203| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3203| s0@@12 s1@@12) (|Seq#Length_3203| s0@@12))) (not (= (|Seq#Index_3203| s0@@12 (|Seq#SkolemDiff_3203| s0@@12 s1@@12)) (|Seq#Index_3203| s1@@12 (|Seq#SkolemDiff_3203| s0@@12 s1@@12))))))
 :qid |stdinbpl.556:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3203| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_17858_50235) (v_1@@0 T@FrameType) (q T@Field_17858_50235) (w@@0 T@FrameType) (r T@Field_17858_50235) (u T@FrameType) ) (!  (=> (and (InsidePredicate_17858_17858 p@@1 v_1@@0 q w@@0) (InsidePredicate_17858_17858 q w@@0 r u)) (InsidePredicate_17858_17858 p@@1 v_1@@0 r u))
 :qid |stdinbpl.223:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17858_17858 p@@1 v_1@@0 q w@@0) (InsidePredicate_17858_17858 q w@@0 r u))
)))
(assert (forall ((s@@31 T@Seq_24540) ) (!  (=> (= (|Seq#Length_12254| s@@31) 0) (= s@@31 |Seq#Empty_12254|))
 :qid |stdinbpl.259:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_12254| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3203) ) (!  (=> (= (|Seq#Length_3203| s@@32) 0) (= s@@32 |Seq#Empty_3203|))
 :qid |stdinbpl.259:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3203| s@@32))
)))
(assert (forall ((s@@33 T@Seq_24540) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_12254| s@@33 n@@25) |Seq#Empty_12254|))
 :qid |stdinbpl.435:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_12254| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3203) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3203| s@@34 n@@26) |Seq#Empty_3203|))
 :qid |stdinbpl.435:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3203| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun a_2@@3 () Int)
(declare-fun s_2 () T@Seq_24540)
(declare-fun i_16 () Int)
(declare-fun b_24@@3 () Int)
(declare-fun j_2_1@0 () Int)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_17798)
(declare-fun QPMask@1 () T@PolymorphicMapType_17819)
(declare-fun qpRange12 (T@Ref) Bool)
(declare-fun invRecv12 (T@Ref) Int)
(declare-fun QPMask@2 () T@PolymorphicMapType_17819)
(declare-fun Heap@0 () T@PolymorphicMapType_17798)
(declare-fun j_2_1@1 () Int)
(declare-fun neverTriggered13 (Int) Bool)
(declare-fun qpRange9 (T@Ref) Bool)
(declare-fun invRecv9 (T@Ref) Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_17819)
(declare-fun Heap@@21 () T@PolymorphicMapType_17798)
(declare-fun neverTriggered10 (Int) Bool)
(declare-fun qpRange10 (T@Ref) Bool)
(declare-fun invRecv10 (T@Ref) Int)
(declare-fun i_12 () Int)
(declare-fun i_11 () Int)
(declare-fun j_11 () Int)
(set-info :boogie-vc-id test03)
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
 (=> (= (ControlFlow 0 0) 61) (let ((anon20_correct true))
(let ((anon36_Else_correct  (=> (and (not (and (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) i_16) (= (mod (- i_16 a_2@@3) b_24@@3) 0))) (= (ControlFlow 0 45) 41)) anon20_correct)))
(let ((anon36_Then_correct  (=> (and (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) i_16) (= (mod (- i_16 a_2@@3) b_24@@3) 0)) (and (=> (= (ControlFlow 0 42) (- 0 44)) (>= i_16 0)) (=> (>= i_16 0) (and (=> (= (ControlFlow 0 42) (- 0 43)) (< i_16 (|Seq#Length_12254| s_2))) (=> (< i_16 (|Seq#Length_12254| s_2)) (=> (= (ControlFlow 0 42) 41) anon20_correct))))))))
(let ((anon35_Else_correct  (=> (not (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) i_16)) (and (=> (= (ControlFlow 0 48) 42) anon36_Then_correct) (=> (= (ControlFlow 0 48) 45) anon36_Else_correct)))))
(let ((anon35_Then_correct  (=> (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) i_16) (and (=> (= (ControlFlow 0 46) (- 0 47)) (not (= b_24@@3 0))) (=> (not (= b_24@@3 0)) (and (=> (= (ControlFlow 0 46) 42) anon36_Then_correct) (=> (= (ControlFlow 0 46) 45) anon36_Else_correct)))))))
(let ((anon34_Else_correct  (=> (= (ControlFlow 0 40) (- 0 39)) (forall ((i_6_1 Int) (i_6_2 Int) ) (!  (=> (and (and (and (and (not (= i_6_1 i_6_2)) (and (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) i_6_1) (= (mod (- i_6_1 a_2@@3) b_24@@3) 0))) (and (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) i_6_2) (= (mod (- i_6_2 a_2@@3) b_24@@3) 0))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_12254| s_2 i_6_1) (|Seq#Index_12254| s_2 i_6_2))))
 :qid |stdinbpl.1630:19|
 :skolemid |127|
)))))
(let ((anon33_Then_correct  (=> (and (<= 0 j_2_1@0) (state ExhaleHeap@0 QPMask@1)) (and (=> (= (ControlFlow 0 49) (- 0 50)) (not (= b_24@@3 0))) (=> (not (= b_24@@3 0)) (=> (and (= (mod (* j_2_1@0 b_24@@3) b_24@@3) 0) (state ExhaleHeap@0 QPMask@1)) (and (and (=> (= (ControlFlow 0 49) 40) anon34_Else_correct) (=> (= (ControlFlow 0 49) 46) anon35_Then_correct)) (=> (= (ControlFlow 0 49) 48) anon35_Else_correct))))))))
(let ((anon37_Else_correct  (=> (not (< (+ a_2@@3 (* j_2_1@0 b_24@@3)) (|Seq#Length_12254| s_2))) (=> (and (and (state ExhaleHeap@0 QPMask@1) (<= 0 j_2_1@0)) (and (= (mod (* j_2_1@0 b_24@@3) b_24@@3) 0) (= (ControlFlow 0 38) (- 0 37)))) (forall ((i_9_1 Int) (i_9_2 Int) ) (!  (=> (and (and (and (and (not (= i_9_1 i_9_2)) (and (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) i_9_1) (= (mod (- i_9_1 a_2@@3) b_24@@3) 0))) (and (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) i_9_2) (= (mod (- i_9_2 a_2@@3) b_24@@3) 0))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_12254| s_2 i_9_1) (|Seq#Index_12254| s_2 i_9_2))))
 :qid |stdinbpl.1822:17|
 :skolemid |145|
))))))
(let ((anon37_Then_correct  (=> (state ExhaleHeap@0 ZeroMask) (=> (and (<= 0 j_2_1@0) (= (mod (* j_2_1@0 b_24@@3) b_24@@3) 0)) (and (=> (= (ControlFlow 0 25) (- 0 36)) (forall ((i_7_1 Int) (i_7_2 Int) ) (!  (=> (and (and (and (and (not (= i_7_1 i_7_2)) (and (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) i_7_1) (= (mod (- i_7_1 a_2@@3) b_24@@3) 0))) (and (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) i_7_2) (= (mod (- i_7_2 a_2@@3) b_24@@3) 0))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_12254| s_2 i_7_1) (|Seq#Index_12254| s_2 i_7_2))))
 :qid |stdinbpl.1678:19|
 :skolemid |133|
))) (=> (forall ((i_7_1@@0 Int) (i_7_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_7_1@@0 i_7_2@@0)) (and (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) i_7_1@@0) (= (mod (- i_7_1@@0 a_2@@3) b_24@@3) 0))) (and (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) i_7_2@@0) (= (mod (- i_7_2@@0 a_2@@3) b_24@@3) 0))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_12254| s_2 i_7_1@@0) (|Seq#Index_12254| s_2 i_7_2@@0))))
 :qid |stdinbpl.1678:19|
 :skolemid |133|
)) (=> (and (and (forall ((i_7_1@@1 Int) ) (!  (=> (and (and (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) i_7_1@@1) (= (mod (- i_7_1@@1 a_2@@3) b_24@@3) 0)) (< NoPerm FullPerm)) (and (qpRange12 (|Seq#Index_12254| s_2 i_7_1@@1)) (= (invRecv12 (|Seq#Index_12254| s_2 i_7_1@@1)) i_7_1@@1)))
 :qid |stdinbpl.1684:26|
 :skolemid |134|
 :pattern ( (|Seq#Index_12254| s_2 i_7_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) i_7_1@@1))
 :pattern ( (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) i_7_1@@1))
 :pattern ( (|Seq#Index_12254| s_2 i_7_1@@1))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (and (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) (invRecv12 o_4)) (= (mod (- (invRecv12 o_4) a_2@@3) b_24@@3) 0)) (< NoPerm FullPerm)) (qpRange12 o_4)) (= (|Seq#Index_12254| s_2 (invRecv12 o_4)) o_4))
 :qid |stdinbpl.1688:26|
 :skolemid |135|
 :pattern ( (invRecv12 o_4))
))) (and (forall ((i_7_1@@2 Int) ) (!  (=> (and (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) i_7_1@@2) (= (mod (- i_7_1@@2 a_2@@3) b_24@@3) 0)) (not (= (|Seq#Index_12254| s_2 i_7_1@@2) null)))
 :qid |stdinbpl.1694:26|
 :skolemid |136|
 :pattern ( (|Seq#Index_12254| s_2 i_7_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) i_7_1@@2))
 :pattern ( (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) i_7_1@@2))
 :pattern ( (|Seq#Index_12254| s_2 i_7_1@@2))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (and (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) (invRecv12 o_4@@0)) (= (mod (- (invRecv12 o_4@@0) a_2@@3) b_24@@3) 0)) (< NoPerm FullPerm)) (qpRange12 o_4@@0)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_12254| s_2 (invRecv12 o_4@@0)) o_4@@0)) (= (select (|PolymorphicMapType_17819_12240_3325#PolymorphicMapType_17819| QPMask@2) o_4@@0 f_7) (+ (select (|PolymorphicMapType_17819_12240_3325#PolymorphicMapType_17819| ZeroMask) o_4@@0 f_7) FullPerm)))) (=> (not (and (and (and (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) (invRecv12 o_4@@0)) (= (mod (- (invRecv12 o_4@@0) a_2@@3) b_24@@3) 0)) (< NoPerm FullPerm)) (qpRange12 o_4@@0))) (= (select (|PolymorphicMapType_17819_12240_3325#PolymorphicMapType_17819| QPMask@2) o_4@@0 f_7) (select (|PolymorphicMapType_17819_12240_3325#PolymorphicMapType_17819| ZeroMask) o_4@@0 f_7))))
 :qid |stdinbpl.1700:26|
 :skolemid |137|
 :pattern ( (select (|PolymorphicMapType_17819_12240_3325#PolymorphicMapType_17819| QPMask@2) o_4@@0 f_7))
)))) (=> (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_17858_53) ) (!  (=> true (= (select (|PolymorphicMapType_17819_12240_53#PolymorphicMapType_17819| ZeroMask) o_4@@1 f_5) (select (|PolymorphicMapType_17819_12240_53#PolymorphicMapType_17819| QPMask@2) o_4@@1 f_5)))
 :qid |stdinbpl.1704:33|
 :skolemid |138|
 :pattern ( (select (|PolymorphicMapType_17819_12240_53#PolymorphicMapType_17819| ZeroMask) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_17819_12240_53#PolymorphicMapType_17819| QPMask@2) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_17871_17872) ) (!  (=> true (= (select (|PolymorphicMapType_17819_12240_17872#PolymorphicMapType_17819| ZeroMask) o_4@@2 f_5@@0) (select (|PolymorphicMapType_17819_12240_17872#PolymorphicMapType_17819| QPMask@2) o_4@@2 f_5@@0)))
 :qid |stdinbpl.1704:33|
 :skolemid |138|
 :pattern ( (select (|PolymorphicMapType_17819_12240_17872#PolymorphicMapType_17819| ZeroMask) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_17819_12240_17872#PolymorphicMapType_17819| QPMask@2) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_23904_3325) ) (!  (=> (not (= f_5@@1 f_7)) (= (select (|PolymorphicMapType_17819_12240_3325#PolymorphicMapType_17819| ZeroMask) o_4@@3 f_5@@1) (select (|PolymorphicMapType_17819_12240_3325#PolymorphicMapType_17819| QPMask@2) o_4@@3 f_5@@1)))
 :qid |stdinbpl.1704:33|
 :skolemid |138|
 :pattern ( (select (|PolymorphicMapType_17819_12240_3325#PolymorphicMapType_17819| ZeroMask) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_17819_12240_3325#PolymorphicMapType_17819| QPMask@2) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_17858_50235) ) (!  (=> true (= (select (|PolymorphicMapType_17819_12240_50235#PolymorphicMapType_17819| ZeroMask) o_4@@4 f_5@@2) (select (|PolymorphicMapType_17819_12240_50235#PolymorphicMapType_17819| QPMask@2) o_4@@4 f_5@@2)))
 :qid |stdinbpl.1704:33|
 :skolemid |138|
 :pattern ( (select (|PolymorphicMapType_17819_12240_50235#PolymorphicMapType_17819| ZeroMask) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_17819_12240_50235#PolymorphicMapType_17819| QPMask@2) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_17858_50368) ) (!  (=> true (= (select (|PolymorphicMapType_17819_12240_54490#PolymorphicMapType_17819| ZeroMask) o_4@@5 f_5@@3) (select (|PolymorphicMapType_17819_12240_54490#PolymorphicMapType_17819| QPMask@2) o_4@@5 f_5@@3)))
 :qid |stdinbpl.1704:33|
 :skolemid |138|
 :pattern ( (select (|PolymorphicMapType_17819_12240_54490#PolymorphicMapType_17819| ZeroMask) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_17819_12240_54490#PolymorphicMapType_17819| QPMask@2) o_4@@5 f_5@@3))
))) (and (and (state ExhaleHeap@0 QPMask@2) (state ExhaleHeap@0 QPMask@2)) (and (< (+ a_2@@3 (* j_2_1@0 b_24@@3)) (|Seq#Length_12254| s_2)) (state ExhaleHeap@0 QPMask@2)))) (and (=> (= (ControlFlow 0 25) (- 0 35)) (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) (+ a_2@@3 (* j_2_1@0 b_24@@3)))) (=> (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) (+ a_2@@3 (* j_2_1@0 b_24@@3))) (=> (state ExhaleHeap@0 QPMask@2) (and (=> (= (ControlFlow 0 25) (- 0 34)) (not (= b_24@@3 0))) (=> (not (= b_24@@3 0)) (and (=> (= (ControlFlow 0 25) (- 0 33)) (= (mod (* j_2_1@0 b_24@@3) b_24@@3) 0)) (=> (= (mod (* j_2_1@0 b_24@@3) b_24@@3) 0) (=> (state ExhaleHeap@0 QPMask@2) (and (=> (= (ControlFlow 0 25) (- 0 32)) (>= (+ a_2@@3 (* j_2_1@0 b_24@@3)) 0)) (=> (>= (+ a_2@@3 (* j_2_1@0 b_24@@3)) 0) (and (=> (= (ControlFlow 0 25) (- 0 31)) (< (+ a_2@@3 (* j_2_1@0 b_24@@3)) (|Seq#Length_12254| s_2))) (=> (< (+ a_2@@3 (* j_2_1@0 b_24@@3)) (|Seq#Length_12254| s_2)) (and (=> (= (ControlFlow 0 25) (- 0 30)) (= FullPerm (select (|PolymorphicMapType_17819_12240_3325#PolymorphicMapType_17819| QPMask@2) (|Seq#Index_12254| s_2 (+ a_2@@3 (* j_2_1@0 b_24@@3))) f_7))) (=> (= FullPerm (select (|PolymorphicMapType_17819_12240_3325#PolymorphicMapType_17819| QPMask@2) (|Seq#Index_12254| s_2 (+ a_2@@3 (* j_2_1@0 b_24@@3))) f_7)) (=> (and (and (= Heap@0 (PolymorphicMapType_17798 (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| ExhaleHeap@0) (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| ExhaleHeap@0) (store (|PolymorphicMapType_17798_12240_3325#PolymorphicMapType_17798| ExhaleHeap@0) (|Seq#Index_12254| s_2 (+ a_2@@3 (* j_2_1@0 b_24@@3))) f_7 j_2_1@0) (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| ExhaleHeap@0) (|PolymorphicMapType_17798_17858_50235#PolymorphicMapType_17798| ExhaleHeap@0))) (state Heap@0 QPMask@2)) (and (= j_2_1@1 (+ j_2_1@0 1)) (state Heap@0 QPMask@2))) (and (=> (= (ControlFlow 0 25) (- 0 29)) (not (= b_24@@3 0))) (=> (not (= b_24@@3 0)) (=> (= (mod (* j_2_1@1 b_24@@3) b_24@@3) 0) (=> (and (state Heap@0 QPMask@2) (state Heap@0 QPMask@2)) (and (=> (= (ControlFlow 0 25) (- 0 28)) (<= 0 j_2_1@1)) (=> (<= 0 j_2_1@1) (and (=> (= (ControlFlow 0 25) (- 0 27)) (= (mod (* j_2_1@1 b_24@@3) b_24@@3) 0)) (=> (= (mod (* j_2_1@1 b_24@@3) b_24@@3) 0) (and (=> (= (ControlFlow 0 25) (- 0 26)) (forall ((i_8_2 Int) (i_8_3 Int) ) (!  (=> (and (and (and (and (not (= i_8_2 i_8_3)) (and (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) i_8_2) (= (mod (- i_8_2 a_2@@3) b_24@@3) 0))) (and (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) i_8_3) (= (mod (- i_8_3 a_2@@3) b_24@@3) 0))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_12254| s_2 i_8_2) (|Seq#Index_12254| s_2 i_8_3))))
 :qid |stdinbpl.1773:21|
 :skolemid |139|
 :pattern ( (neverTriggered13 i_8_2) (neverTriggered13 i_8_3))
))) (=> (forall ((i_8_2@@0 Int) (i_8_3@@0 Int) ) (!  (=> (and (and (and (and (not (= i_8_2@@0 i_8_3@@0)) (and (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) i_8_2@@0) (= (mod (- i_8_2@@0 a_2@@3) b_24@@3) 0))) (and (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) i_8_3@@0) (= (mod (- i_8_3@@0 a_2@@3) b_24@@3) 0))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_12254| s_2 i_8_2@@0) (|Seq#Index_12254| s_2 i_8_3@@0))))
 :qid |stdinbpl.1773:21|
 :skolemid |139|
 :pattern ( (neverTriggered13 i_8_2@@0) (neverTriggered13 i_8_3@@0))
)) (=> (= (ControlFlow 0 25) (- 0 24)) (forall ((i_8_2@@1 Int) ) (!  (=> (and (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) i_8_2@@1) (= (mod (- i_8_2@@1 a_2@@3) b_24@@3) 0)) (>= (select (|PolymorphicMapType_17819_12240_3325#PolymorphicMapType_17819| QPMask@2) (|Seq#Index_12254| s_2 i_8_2@@1) f_7) FullPerm))
 :qid |stdinbpl.1780:21|
 :skolemid |140|
 :pattern ( (|Seq#Index_12254| s_2 i_8_2@@1))
 :pattern ( (|Seq#ContainsTrigger_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) i_8_2@@1))
 :pattern ( (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) i_8_2@@1))
 :pattern ( (|Seq#Index_12254| s_2 i_8_2@@1))
))))))))))))))))))))))))))))))))))))
(let ((anon30_Else_correct  (and (=> (= (ControlFlow 0 51) (- 0 58)) (forall ((i_3 Int) (i_3_1 Int) ) (!  (=> (and (and (and (and (not (= i_3 i_3_1)) (and (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) i_3) (= (mod (- i_3 a_2@@3) b_24@@3) 0))) (and (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) i_3_1) (= (mod (- i_3_1 a_2@@3) b_24@@3) 0))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_12254| s_2 i_3) (|Seq#Index_12254| s_2 i_3_1))))
 :qid |stdinbpl.1488:15|
 :skolemid |115|
))) (=> (forall ((i_3@@0 Int) (i_3_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_3@@0 i_3_1@@0)) (and (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) i_3@@0) (= (mod (- i_3@@0 a_2@@3) b_24@@3) 0))) (and (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) i_3_1@@0) (= (mod (- i_3_1@@0 a_2@@3) b_24@@3) 0))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_12254| s_2 i_3@@0) (|Seq#Index_12254| s_2 i_3_1@@0))))
 :qid |stdinbpl.1488:15|
 :skolemid |115|
)) (=> (and (and (forall ((i_3@@1 Int) ) (!  (=> (and (and (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) i_3@@1) (= (mod (- i_3@@1 a_2@@3) b_24@@3) 0)) (< NoPerm FullPerm)) (and (qpRange9 (|Seq#Index_12254| s_2 i_3@@1)) (= (invRecv9 (|Seq#Index_12254| s_2 i_3@@1)) i_3@@1)))
 :qid |stdinbpl.1494:22|
 :skolemid |116|
 :pattern ( (|Seq#Index_12254| s_2 i_3@@1))
 :pattern ( (|Seq#ContainsTrigger_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) i_3@@1))
 :pattern ( (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) i_3@@1))
 :pattern ( (|Seq#Index_12254| s_2 i_3@@1))
)) (forall ((o_4@@6 T@Ref) ) (!  (=> (and (and (and (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) (invRecv9 o_4@@6)) (= (mod (- (invRecv9 o_4@@6) a_2@@3) b_24@@3) 0)) (< NoPerm FullPerm)) (qpRange9 o_4@@6)) (= (|Seq#Index_12254| s_2 (invRecv9 o_4@@6)) o_4@@6))
 :qid |stdinbpl.1498:22|
 :skolemid |117|
 :pattern ( (invRecv9 o_4@@6))
))) (and (forall ((i_3@@2 Int) ) (!  (=> (and (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) i_3@@2) (= (mod (- i_3@@2 a_2@@3) b_24@@3) 0)) (not (= (|Seq#Index_12254| s_2 i_3@@2) null)))
 :qid |stdinbpl.1504:22|
 :skolemid |118|
 :pattern ( (|Seq#Index_12254| s_2 i_3@@2))
 :pattern ( (|Seq#ContainsTrigger_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) i_3@@2))
 :pattern ( (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) i_3@@2))
 :pattern ( (|Seq#Index_12254| s_2 i_3@@2))
)) (forall ((o_4@@7 T@Ref) ) (!  (and (=> (and (and (and (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) (invRecv9 o_4@@7)) (= (mod (- (invRecv9 o_4@@7) a_2@@3) b_24@@3) 0)) (< NoPerm FullPerm)) (qpRange9 o_4@@7)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_12254| s_2 (invRecv9 o_4@@7)) o_4@@7)) (= (select (|PolymorphicMapType_17819_12240_3325#PolymorphicMapType_17819| QPMask@0) o_4@@7 f_7) (+ (select (|PolymorphicMapType_17819_12240_3325#PolymorphicMapType_17819| ZeroMask) o_4@@7 f_7) FullPerm)))) (=> (not (and (and (and (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) (invRecv9 o_4@@7)) (= (mod (- (invRecv9 o_4@@7) a_2@@3) b_24@@3) 0)) (< NoPerm FullPerm)) (qpRange9 o_4@@7))) (= (select (|PolymorphicMapType_17819_12240_3325#PolymorphicMapType_17819| QPMask@0) o_4@@7 f_7) (select (|PolymorphicMapType_17819_12240_3325#PolymorphicMapType_17819| ZeroMask) o_4@@7 f_7))))
 :qid |stdinbpl.1510:22|
 :skolemid |119|
 :pattern ( (select (|PolymorphicMapType_17819_12240_3325#PolymorphicMapType_17819| QPMask@0) o_4@@7 f_7))
)))) (=> (and (and (and (and (and (and (forall ((o_4@@8 T@Ref) (f_5@@4 T@Field_17858_53) ) (!  (=> true (= (select (|PolymorphicMapType_17819_12240_53#PolymorphicMapType_17819| ZeroMask) o_4@@8 f_5@@4) (select (|PolymorphicMapType_17819_12240_53#PolymorphicMapType_17819| QPMask@0) o_4@@8 f_5@@4)))
 :qid |stdinbpl.1514:29|
 :skolemid |120|
 :pattern ( (select (|PolymorphicMapType_17819_12240_53#PolymorphicMapType_17819| ZeroMask) o_4@@8 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_17819_12240_53#PolymorphicMapType_17819| QPMask@0) o_4@@8 f_5@@4))
)) (forall ((o_4@@9 T@Ref) (f_5@@5 T@Field_17871_17872) ) (!  (=> true (= (select (|PolymorphicMapType_17819_12240_17872#PolymorphicMapType_17819| ZeroMask) o_4@@9 f_5@@5) (select (|PolymorphicMapType_17819_12240_17872#PolymorphicMapType_17819| QPMask@0) o_4@@9 f_5@@5)))
 :qid |stdinbpl.1514:29|
 :skolemid |120|
 :pattern ( (select (|PolymorphicMapType_17819_12240_17872#PolymorphicMapType_17819| ZeroMask) o_4@@9 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_17819_12240_17872#PolymorphicMapType_17819| QPMask@0) o_4@@9 f_5@@5))
))) (forall ((o_4@@10 T@Ref) (f_5@@6 T@Field_23904_3325) ) (!  (=> (not (= f_5@@6 f_7)) (= (select (|PolymorphicMapType_17819_12240_3325#PolymorphicMapType_17819| ZeroMask) o_4@@10 f_5@@6) (select (|PolymorphicMapType_17819_12240_3325#PolymorphicMapType_17819| QPMask@0) o_4@@10 f_5@@6)))
 :qid |stdinbpl.1514:29|
 :skolemid |120|
 :pattern ( (select (|PolymorphicMapType_17819_12240_3325#PolymorphicMapType_17819| ZeroMask) o_4@@10 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_17819_12240_3325#PolymorphicMapType_17819| QPMask@0) o_4@@10 f_5@@6))
))) (forall ((o_4@@11 T@Ref) (f_5@@7 T@Field_17858_50235) ) (!  (=> true (= (select (|PolymorphicMapType_17819_12240_50235#PolymorphicMapType_17819| ZeroMask) o_4@@11 f_5@@7) (select (|PolymorphicMapType_17819_12240_50235#PolymorphicMapType_17819| QPMask@0) o_4@@11 f_5@@7)))
 :qid |stdinbpl.1514:29|
 :skolemid |120|
 :pattern ( (select (|PolymorphicMapType_17819_12240_50235#PolymorphicMapType_17819| ZeroMask) o_4@@11 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_17819_12240_50235#PolymorphicMapType_17819| QPMask@0) o_4@@11 f_5@@7))
))) (forall ((o_4@@12 T@Ref) (f_5@@8 T@Field_17858_50368) ) (!  (=> true (= (select (|PolymorphicMapType_17819_12240_54490#PolymorphicMapType_17819| ZeroMask) o_4@@12 f_5@@8) (select (|PolymorphicMapType_17819_12240_54490#PolymorphicMapType_17819| QPMask@0) o_4@@12 f_5@@8)))
 :qid |stdinbpl.1514:29|
 :skolemid |120|
 :pattern ( (select (|PolymorphicMapType_17819_12240_54490#PolymorphicMapType_17819| ZeroMask) o_4@@12 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_17819_12240_54490#PolymorphicMapType_17819| QPMask@0) o_4@@12 f_5@@8))
))) (state Heap@@21 QPMask@0)) (and (state Heap@@21 QPMask@0) (state Heap@@21 QPMask@0))) (and (=> (= (ControlFlow 0 51) (- 0 57)) (not (= b_24@@3 0))) (=> (not (= b_24@@3 0)) (and (=> (= (ControlFlow 0 51) (- 0 56)) (= (mod (* 0 b_24@@3) b_24@@3) 0)) (=> (= (mod (* 0 b_24@@3) b_24@@3) 0) (=> (state Heap@@21 QPMask@0) (and (=> (= (ControlFlow 0 51) (- 0 55)) (<= 0 0)) (=> (<= 0 0) (and (=> (= (ControlFlow 0 51) (- 0 54)) (= (mod (* 0 b_24@@3) b_24@@3) 0)) (=> (= (mod (* 0 b_24@@3) b_24@@3) 0) (and (=> (= (ControlFlow 0 51) (- 0 53)) (forall ((i_4_1 Int) (i_4_2 Int) ) (!  (=> (and (and (and (and (not (= i_4_1 i_4_2)) (and (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) i_4_1) (= (mod (- i_4_1 a_2@@3) b_24@@3) 0))) (and (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) i_4_2) (= (mod (- i_4_2 a_2@@3) b_24@@3) 0))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_12254| s_2 i_4_1) (|Seq#Index_12254| s_2 i_4_2))))
 :qid |stdinbpl.1561:21|
 :skolemid |121|
 :pattern ( (neverTriggered10 i_4_1) (neverTriggered10 i_4_2))
))) (=> (forall ((i_4_1@@0 Int) (i_4_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_4_1@@0 i_4_2@@0)) (and (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) i_4_1@@0) (= (mod (- i_4_1@@0 a_2@@3) b_24@@3) 0))) (and (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) i_4_2@@0) (= (mod (- i_4_2@@0 a_2@@3) b_24@@3) 0))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_12254| s_2 i_4_1@@0) (|Seq#Index_12254| s_2 i_4_2@@0))))
 :qid |stdinbpl.1561:21|
 :skolemid |121|
 :pattern ( (neverTriggered10 i_4_1@@0) (neverTriggered10 i_4_2@@0))
)) (and (=> (= (ControlFlow 0 51) (- 0 52)) (forall ((i_4_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) i_4_1@@1) (= (mod (- i_4_1@@1 a_2@@3) b_24@@3) 0)) (>= (select (|PolymorphicMapType_17819_12240_3325#PolymorphicMapType_17819| QPMask@0) (|Seq#Index_12254| s_2 i_4_1@@1) f_7) FullPerm))
 :qid |stdinbpl.1568:21|
 :skolemid |122|
 :pattern ( (|Seq#Index_12254| s_2 i_4_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) i_4_1@@1))
 :pattern ( (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) i_4_1@@1))
 :pattern ( (|Seq#Index_12254| s_2 i_4_1@@1))
))) (=> (forall ((i_4_1@@2 Int) ) (!  (=> (and (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) i_4_1@@2) (= (mod (- i_4_1@@2 a_2@@3) b_24@@3) 0)) (>= (select (|PolymorphicMapType_17819_12240_3325#PolymorphicMapType_17819| QPMask@0) (|Seq#Index_12254| s_2 i_4_1@@2) f_7) FullPerm))
 :qid |stdinbpl.1568:21|
 :skolemid |122|
 :pattern ( (|Seq#Index_12254| s_2 i_4_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) i_4_1@@2))
 :pattern ( (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) i_4_1@@2))
 :pattern ( (|Seq#Index_12254| s_2 i_4_1@@2))
)) (=> (forall ((i_4_1@@3 Int) ) (!  (=> (and (and (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) i_4_1@@3) (= (mod (- i_4_1@@3 a_2@@3) b_24@@3) 0)) (< NoPerm FullPerm)) (and (qpRange10 (|Seq#Index_12254| s_2 i_4_1@@3)) (= (invRecv10 (|Seq#Index_12254| s_2 i_4_1@@3)) i_4_1@@3)))
 :qid |stdinbpl.1574:26|
 :skolemid |123|
 :pattern ( (|Seq#Index_12254| s_2 i_4_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) i_4_1@@3))
 :pattern ( (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) i_4_1@@3))
 :pattern ( (|Seq#Index_12254| s_2 i_4_1@@3))
)) (=> (and (forall ((o_4@@13 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) (invRecv10 o_4@@13)) (= (mod (- (invRecv10 o_4@@13) a_2@@3) b_24@@3) 0)) (and (< NoPerm FullPerm) (qpRange10 o_4@@13))) (= (|Seq#Index_12254| s_2 (invRecv10 o_4@@13)) o_4@@13))
 :qid |stdinbpl.1578:26|
 :skolemid |124|
 :pattern ( (invRecv10 o_4@@13))
)) (forall ((o_4@@14 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) (invRecv10 o_4@@14)) (= (mod (- (invRecv10 o_4@@14) a_2@@3) b_24@@3) 0)) (and (< NoPerm FullPerm) (qpRange10 o_4@@14))) (and (= (|Seq#Index_12254| s_2 (invRecv10 o_4@@14)) o_4@@14) (= (select (|PolymorphicMapType_17819_12240_3325#PolymorphicMapType_17819| QPMask@1) o_4@@14 f_7) (- (select (|PolymorphicMapType_17819_12240_3325#PolymorphicMapType_17819| QPMask@0) o_4@@14 f_7) FullPerm)))) (=> (not (and (and (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) (invRecv10 o_4@@14)) (= (mod (- (invRecv10 o_4@@14) a_2@@3) b_24@@3) 0)) (and (< NoPerm FullPerm) (qpRange10 o_4@@14)))) (= (select (|PolymorphicMapType_17819_12240_3325#PolymorphicMapType_17819| QPMask@1) o_4@@14 f_7) (select (|PolymorphicMapType_17819_12240_3325#PolymorphicMapType_17819| QPMask@0) o_4@@14 f_7))))
 :qid |stdinbpl.1584:26|
 :skolemid |125|
 :pattern ( (select (|PolymorphicMapType_17819_12240_3325#PolymorphicMapType_17819| QPMask@1) o_4@@14 f_7))
))) (=> (and (and (and (and (and (forall ((o_4@@15 T@Ref) (f_5@@9 T@Field_17858_53) ) (!  (=> true (= (select (|PolymorphicMapType_17819_12240_53#PolymorphicMapType_17819| QPMask@0) o_4@@15 f_5@@9) (select (|PolymorphicMapType_17819_12240_53#PolymorphicMapType_17819| QPMask@1) o_4@@15 f_5@@9)))
 :qid |stdinbpl.1590:33|
 :skolemid |126|
 :pattern ( (select (|PolymorphicMapType_17819_12240_53#PolymorphicMapType_17819| QPMask@1) o_4@@15 f_5@@9))
)) (forall ((o_4@@16 T@Ref) (f_5@@10 T@Field_17871_17872) ) (!  (=> true (= (select (|PolymorphicMapType_17819_12240_17872#PolymorphicMapType_17819| QPMask@0) o_4@@16 f_5@@10) (select (|PolymorphicMapType_17819_12240_17872#PolymorphicMapType_17819| QPMask@1) o_4@@16 f_5@@10)))
 :qid |stdinbpl.1590:33|
 :skolemid |126|
 :pattern ( (select (|PolymorphicMapType_17819_12240_17872#PolymorphicMapType_17819| QPMask@1) o_4@@16 f_5@@10))
))) (forall ((o_4@@17 T@Ref) (f_5@@11 T@Field_23904_3325) ) (!  (=> (not (= f_5@@11 f_7)) (= (select (|PolymorphicMapType_17819_12240_3325#PolymorphicMapType_17819| QPMask@0) o_4@@17 f_5@@11) (select (|PolymorphicMapType_17819_12240_3325#PolymorphicMapType_17819| QPMask@1) o_4@@17 f_5@@11)))
 :qid |stdinbpl.1590:33|
 :skolemid |126|
 :pattern ( (select (|PolymorphicMapType_17819_12240_3325#PolymorphicMapType_17819| QPMask@1) o_4@@17 f_5@@11))
))) (forall ((o_4@@18 T@Ref) (f_5@@12 T@Field_17858_50235) ) (!  (=> true (= (select (|PolymorphicMapType_17819_12240_50235#PolymorphicMapType_17819| QPMask@0) o_4@@18 f_5@@12) (select (|PolymorphicMapType_17819_12240_50235#PolymorphicMapType_17819| QPMask@1) o_4@@18 f_5@@12)))
 :qid |stdinbpl.1590:33|
 :skolemid |126|
 :pattern ( (select (|PolymorphicMapType_17819_12240_50235#PolymorphicMapType_17819| QPMask@1) o_4@@18 f_5@@12))
))) (forall ((o_4@@19 T@Ref) (f_5@@13 T@Field_17858_50368) ) (!  (=> true (= (select (|PolymorphicMapType_17819_12240_54490#PolymorphicMapType_17819| QPMask@0) o_4@@19 f_5@@13) (select (|PolymorphicMapType_17819_12240_54490#PolymorphicMapType_17819| QPMask@1) o_4@@19 f_5@@13)))
 :qid |stdinbpl.1590:33|
 :skolemid |126|
 :pattern ( (select (|PolymorphicMapType_17819_12240_54490#PolymorphicMapType_17819| QPMask@1) o_4@@19 f_5@@13))
))) (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@0 QPMask@1)) (and (and (=> (= (ControlFlow 0 51) 49) anon33_Then_correct) (=> (= (ControlFlow 0 51) 25) anon37_Then_correct)) (=> (= (ControlFlow 0 51) 38) anon37_Else_correct))))))))))))))))))))))))
(let ((anon13_correct true))
(let ((anon32_Else_correct  (=> (and (not (and (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) i_12) (= (mod (- i_12 a_2@@3) b_24@@3) 0))) (= (ControlFlow 0 20) 16)) anon13_correct)))
(let ((anon32_Then_correct  (=> (and (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) i_12) (= (mod (- i_12 a_2@@3) b_24@@3) 0)) (and (=> (= (ControlFlow 0 17) (- 0 19)) (>= i_12 0)) (=> (>= i_12 0) (and (=> (= (ControlFlow 0 17) (- 0 18)) (< i_12 (|Seq#Length_12254| s_2))) (=> (< i_12 (|Seq#Length_12254| s_2)) (=> (= (ControlFlow 0 17) 16) anon13_correct))))))))
(let ((anon31_Else_correct  (=> (not (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) i_12)) (and (=> (= (ControlFlow 0 23) 17) anon32_Then_correct) (=> (= (ControlFlow 0 23) 20) anon32_Else_correct)))))
(let ((anon31_Then_correct  (=> (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) i_12) (and (=> (= (ControlFlow 0 21) (- 0 22)) (not (= b_24@@3 0))) (=> (not (= b_24@@3 0)) (and (=> (= (ControlFlow 0 21) 17) anon32_Then_correct) (=> (= (ControlFlow 0 21) 20) anon32_Else_correct)))))))
(let ((anon25_Else_correct  (=> (and (forall ((i_1 Int) (j_1 Int) ) (!  (=> (and (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) i_1) (and (= (mod (- i_1 a_2@@3) b_24@@3) 0) (and (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) j_1) (and (= (mod (- j_1 a_2@@3) b_24@@3) 0) (not (= i_1 j_1)))))) (not (= (|Seq#Index_12254| s_2 i_1) (|Seq#Index_12254| s_2 j_1))))
 :qid |stdinbpl.1466:20|
 :skolemid |114|
 :pattern ( (|Seq#ContainsTrigger_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) i_1) (|Seq#ContainsTrigger_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) j_1))
 :pattern ( (|Seq#ContainsTrigger_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) i_1) (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) j_1))
 :pattern ( (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) i_1) (|Seq#ContainsTrigger_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) j_1))
 :pattern ( (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) i_1) (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) j_1))
 :pattern ( (|Seq#ContainsTrigger_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) i_1) (|Seq#Index_12254| s_2 j_1))
 :pattern ( (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) i_1) (|Seq#Index_12254| s_2 j_1))
 :pattern ( (|Seq#ContainsTrigger_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) j_1) (|Seq#Index_12254| s_2 i_1))
 :pattern ( (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) j_1) (|Seq#Index_12254| s_2 i_1))
 :pattern ( (|Seq#Index_12254| s_2 i_1) (|Seq#Index_12254| s_2 j_1))
)) (state Heap@@21 ZeroMask)) (and (and (=> (= (ControlFlow 0 59) 51) anon30_Else_correct) (=> (= (ControlFlow 0 59) 21) anon31_Then_correct)) (=> (= (ControlFlow 0 59) 23) anon31_Else_correct)))))
(let ((anon7_correct true))
(let ((anon29_Else_correct  (=> (and (not (and (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) i_11) (and (= (mod (- i_11 a_2@@3) b_24@@3) 0) (and (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) j_11) (and (= (mod (- j_11 a_2@@3) b_24@@3) 0) (not (= i_11 j_11))))))) (= (ControlFlow 0 7) 1)) anon7_correct)))
(let ((anon29_Then_correct  (=> (and (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) i_11) (and (= (mod (- i_11 a_2@@3) b_24@@3) 0) (and (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) j_11) (and (= (mod (- j_11 a_2@@3) b_24@@3) 0) (not (= i_11 j_11)))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= i_11 0)) (=> (>= i_11 0) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< i_11 (|Seq#Length_12254| s_2))) (=> (< i_11 (|Seq#Length_12254| s_2)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= j_11 0)) (=> (>= j_11 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< j_11 (|Seq#Length_12254| s_2))) (=> (< j_11 (|Seq#Length_12254| s_2)) (=> (= (ControlFlow 0 2) 1) anon7_correct))))))))))))
(let ((anon28_Else_correct  (=> (not (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) j_11)) (and (=> (= (ControlFlow 0 12) 2) anon29_Then_correct) (=> (= (ControlFlow 0 12) 7) anon29_Else_correct)))))
(let ((anon28_Then_correct  (=> (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) j_11) (and (=> (= (ControlFlow 0 10) (- 0 11)) (not (= b_24@@3 0))) (=> (not (= b_24@@3 0)) (and (=> (= (ControlFlow 0 10) 2) anon29_Then_correct) (=> (= (ControlFlow 0 10) 7) anon29_Else_correct)))))))
(let ((anon27_Then_correct  (=> (= (mod (- i_11 a_2@@3) b_24@@3) 0) (and (=> (= (ControlFlow 0 13) 10) anon28_Then_correct) (=> (= (ControlFlow 0 13) 12) anon28_Else_correct)))))
(let ((anon27_Else_correct  (=> (not (= (mod (- i_11 a_2@@3) b_24@@3) 0)) (and (=> (= (ControlFlow 0 9) 2) anon29_Then_correct) (=> (= (ControlFlow 0 9) 7) anon29_Else_correct)))))
(let ((anon26_Then_correct  (=> (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) i_11) (and (=> (= (ControlFlow 0 14) (- 0 15)) (not (= b_24@@3 0))) (=> (not (= b_24@@3 0)) (and (=> (= (ControlFlow 0 14) 13) anon27_Then_correct) (=> (= (ControlFlow 0 14) 9) anon27_Else_correct)))))))
(let ((anon26_Else_correct  (=> (not (|Seq#Contains_3203| (|Seq#Range| a_2@@3 (|Seq#Length_12254| s_2)) i_11)) (and (=> (= (ControlFlow 0 8) 2) anon29_Then_correct) (=> (= (ControlFlow 0 8) 7) anon29_Else_correct)))))
(let ((anon0_correct  (=> (and (state Heap@@21 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (=> (and (and AssumePermUpperBound (<= 0 a_2@@3)) (and (< 0 b_24@@3) (state Heap@@21 ZeroMask))) (and (and (=> (= (ControlFlow 0 60) 59) anon25_Else_correct) (=> (= (ControlFlow 0 60) 14) anon26_Then_correct)) (=> (= (ControlFlow 0 60) 8) anon26_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 61) 60) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
