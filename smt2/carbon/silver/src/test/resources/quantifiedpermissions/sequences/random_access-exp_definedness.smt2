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
(assert (forall ((Heap@@1 T@PolymorphicMapType_17798) (ExhaleHeap T@PolymorphicMapType_17798) (Mask@@0 T@PolymorphicMapType_17819) (pm_f_34 T@Field_17858_50235) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_17858_50299 Mask@@0 null pm_f_34) (IsPredicateField_17858_50326 pm_f_34)) (= (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@1) null (PredicateMaskField_17858 pm_f_34)) (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| ExhaleHeap) null (PredicateMaskField_17858 pm_f_34)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_17858_50326 pm_f_34) (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| ExhaleHeap) null (PredicateMaskField_17858 pm_f_34)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_17798) (ExhaleHeap@@0 T@PolymorphicMapType_17798) (Mask@@1 T@PolymorphicMapType_17819) (pm_f_34@@0 T@Field_17858_50235) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_17858_50299 Mask@@1 null pm_f_34@@0) (IsWandField_17858_52073 pm_f_34@@0)) (= (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@2) null (WandMaskField_17858 pm_f_34@@0)) (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| ExhaleHeap@@0) null (WandMaskField_17858 pm_f_34@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsWandField_17858_52073 pm_f_34@@0) (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| ExhaleHeap@@0) null (WandMaskField_17858 pm_f_34@@0)))
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
(assert (forall ((Heap@@3 T@PolymorphicMapType_17798) (ExhaleHeap@@1 T@PolymorphicMapType_17798) (Mask@@2 T@PolymorphicMapType_17819) (o_47 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| Heap@@3) o_47 $allocated) (select (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| ExhaleHeap@@1) o_47 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| ExhaleHeap@@1) o_47 $allocated))
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
(assert (forall ((Heap@@7 T@PolymorphicMapType_17798) (ExhaleHeap@@3 T@PolymorphicMapType_17798) (Mask@@16 T@PolymorphicMapType_17819) (pm_f_34@@1 T@Field_17858_50235) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@16) (=> (and (HasDirectPerm_17858_50299 Mask@@16 null pm_f_34@@1) (IsPredicateField_17858_50326 pm_f_34@@1)) (and (and (and (and (forall ((o2_34 T@Ref) (f_65 T@Field_17858_53) ) (!  (=> (select (|PolymorphicMapType_18347_17858_53#PolymorphicMapType_18347| (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@7) null (PredicateMaskField_17858 pm_f_34@@1))) o2_34 f_65) (= (select (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| Heap@@7) o2_34 f_65) (select (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| ExhaleHeap@@3) o2_34 f_65)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| ExhaleHeap@@3) o2_34 f_65))
)) (forall ((o2_34@@0 T@Ref) (f_65@@0 T@Field_17871_17872) ) (!  (=> (select (|PolymorphicMapType_18347_17858_17872#PolymorphicMapType_18347| (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@7) null (PredicateMaskField_17858 pm_f_34@@1))) o2_34@@0 f_65@@0) (= (select (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| Heap@@7) o2_34@@0 f_65@@0) (select (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| ExhaleHeap@@3) o2_34@@0 f_65@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| ExhaleHeap@@3) o2_34@@0 f_65@@0))
))) (forall ((o2_34@@1 T@Ref) (f_65@@1 T@Field_23904_3325) ) (!  (=> (select (|PolymorphicMapType_18347_17858_3325#PolymorphicMapType_18347| (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@7) null (PredicateMaskField_17858 pm_f_34@@1))) o2_34@@1 f_65@@1) (= (select (|PolymorphicMapType_17798_12240_3325#PolymorphicMapType_17798| Heap@@7) o2_34@@1 f_65@@1) (select (|PolymorphicMapType_17798_12240_3325#PolymorphicMapType_17798| ExhaleHeap@@3) o2_34@@1 f_65@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17798_12240_3325#PolymorphicMapType_17798| ExhaleHeap@@3) o2_34@@1 f_65@@1))
))) (forall ((o2_34@@2 T@Ref) (f_65@@2 T@Field_17858_50235) ) (!  (=> (select (|PolymorphicMapType_18347_17858_50235#PolymorphicMapType_18347| (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@7) null (PredicateMaskField_17858 pm_f_34@@1))) o2_34@@2 f_65@@2) (= (select (|PolymorphicMapType_17798_17858_50235#PolymorphicMapType_17798| Heap@@7) o2_34@@2 f_65@@2) (select (|PolymorphicMapType_17798_17858_50235#PolymorphicMapType_17798| ExhaleHeap@@3) o2_34@@2 f_65@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17798_17858_50235#PolymorphicMapType_17798| ExhaleHeap@@3) o2_34@@2 f_65@@2))
))) (forall ((o2_34@@3 T@Ref) (f_65@@3 T@Field_17858_50368) ) (!  (=> (select (|PolymorphicMapType_18347_17858_51546#PolymorphicMapType_18347| (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@7) null (PredicateMaskField_17858 pm_f_34@@1))) o2_34@@3 f_65@@3) (= (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@7) o2_34@@3 f_65@@3) (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| ExhaleHeap@@3) o2_34@@3 f_65@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| ExhaleHeap@@3) o2_34@@3 f_65@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@16) (IsPredicateField_17858_50326 pm_f_34@@1))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_17798) (ExhaleHeap@@4 T@PolymorphicMapType_17798) (Mask@@17 T@PolymorphicMapType_17819) (pm_f_34@@2 T@Field_17858_50235) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@17) (=> (and (HasDirectPerm_17858_50299 Mask@@17 null pm_f_34@@2) (IsWandField_17858_52073 pm_f_34@@2)) (and (and (and (and (forall ((o2_34@@4 T@Ref) (f_65@@4 T@Field_17858_53) ) (!  (=> (select (|PolymorphicMapType_18347_17858_53#PolymorphicMapType_18347| (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@8) null (WandMaskField_17858 pm_f_34@@2))) o2_34@@4 f_65@@4) (= (select (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| Heap@@8) o2_34@@4 f_65@@4) (select (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| ExhaleHeap@@4) o2_34@@4 f_65@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| ExhaleHeap@@4) o2_34@@4 f_65@@4))
)) (forall ((o2_34@@5 T@Ref) (f_65@@5 T@Field_17871_17872) ) (!  (=> (select (|PolymorphicMapType_18347_17858_17872#PolymorphicMapType_18347| (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@8) null (WandMaskField_17858 pm_f_34@@2))) o2_34@@5 f_65@@5) (= (select (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| Heap@@8) o2_34@@5 f_65@@5) (select (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| ExhaleHeap@@4) o2_34@@5 f_65@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| ExhaleHeap@@4) o2_34@@5 f_65@@5))
))) (forall ((o2_34@@6 T@Ref) (f_65@@6 T@Field_23904_3325) ) (!  (=> (select (|PolymorphicMapType_18347_17858_3325#PolymorphicMapType_18347| (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@8) null (WandMaskField_17858 pm_f_34@@2))) o2_34@@6 f_65@@6) (= (select (|PolymorphicMapType_17798_12240_3325#PolymorphicMapType_17798| Heap@@8) o2_34@@6 f_65@@6) (select (|PolymorphicMapType_17798_12240_3325#PolymorphicMapType_17798| ExhaleHeap@@4) o2_34@@6 f_65@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17798_12240_3325#PolymorphicMapType_17798| ExhaleHeap@@4) o2_34@@6 f_65@@6))
))) (forall ((o2_34@@7 T@Ref) (f_65@@7 T@Field_17858_50235) ) (!  (=> (select (|PolymorphicMapType_18347_17858_50235#PolymorphicMapType_18347| (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@8) null (WandMaskField_17858 pm_f_34@@2))) o2_34@@7 f_65@@7) (= (select (|PolymorphicMapType_17798_17858_50235#PolymorphicMapType_17798| Heap@@8) o2_34@@7 f_65@@7) (select (|PolymorphicMapType_17798_17858_50235#PolymorphicMapType_17798| ExhaleHeap@@4) o2_34@@7 f_65@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17798_17858_50235#PolymorphicMapType_17798| ExhaleHeap@@4) o2_34@@7 f_65@@7))
))) (forall ((o2_34@@8 T@Ref) (f_65@@8 T@Field_17858_50368) ) (!  (=> (select (|PolymorphicMapType_18347_17858_51546#PolymorphicMapType_18347| (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@8) null (WandMaskField_17858 pm_f_34@@2))) o2_34@@8 f_65@@8) (= (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@8) o2_34@@8 f_65@@8) (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| ExhaleHeap@@4) o2_34@@8 f_65@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| ExhaleHeap@@4) o2_34@@8 f_65@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@17) (IsWandField_17858_52073 pm_f_34@@2))
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
(assert (forall ((Heap@@9 T@PolymorphicMapType_17798) (ExhaleHeap@@5 T@PolymorphicMapType_17798) (Mask@@18 T@PolymorphicMapType_17819) (o_47@@0 T@Ref) (f_65@@9 T@Field_17858_50368) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@18) (=> (HasDirectPerm_17858_56073 Mask@@18 o_47@@0 f_65@@9) (= (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@9) o_47@@0 f_65@@9) (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| ExhaleHeap@@5) o_47@@0 f_65@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@18) (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| ExhaleHeap@@5) o_47@@0 f_65@@9))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_17798) (ExhaleHeap@@6 T@PolymorphicMapType_17798) (Mask@@19 T@PolymorphicMapType_17819) (o_47@@1 T@Ref) (f_65@@10 T@Field_17858_50235) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@19) (=> (HasDirectPerm_17858_50299 Mask@@19 o_47@@1 f_65@@10) (= (select (|PolymorphicMapType_17798_17858_50235#PolymorphicMapType_17798| Heap@@10) o_47@@1 f_65@@10) (select (|PolymorphicMapType_17798_17858_50235#PolymorphicMapType_17798| ExhaleHeap@@6) o_47@@1 f_65@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@19) (select (|PolymorphicMapType_17798_17858_50235#PolymorphicMapType_17798| ExhaleHeap@@6) o_47@@1 f_65@@10))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_17798) (ExhaleHeap@@7 T@PolymorphicMapType_17798) (Mask@@20 T@PolymorphicMapType_17819) (o_47@@2 T@Ref) (f_65@@11 T@Field_23904_3325) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@20) (=> (HasDirectPerm_17858_3325 Mask@@20 o_47@@2 f_65@@11) (= (select (|PolymorphicMapType_17798_12240_3325#PolymorphicMapType_17798| Heap@@11) o_47@@2 f_65@@11) (select (|PolymorphicMapType_17798_12240_3325#PolymorphicMapType_17798| ExhaleHeap@@7) o_47@@2 f_65@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@20) (select (|PolymorphicMapType_17798_12240_3325#PolymorphicMapType_17798| ExhaleHeap@@7) o_47@@2 f_65@@11))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_17798) (ExhaleHeap@@8 T@PolymorphicMapType_17798) (Mask@@21 T@PolymorphicMapType_17819) (o_47@@3 T@Ref) (f_65@@12 T@Field_17871_17872) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@21) (=> (HasDirectPerm_17858_17872 Mask@@21 o_47@@3 f_65@@12) (= (select (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| Heap@@12) o_47@@3 f_65@@12) (select (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| ExhaleHeap@@8) o_47@@3 f_65@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@21) (select (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| ExhaleHeap@@8) o_47@@3 f_65@@12))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_17798) (ExhaleHeap@@9 T@PolymorphicMapType_17798) (Mask@@22 T@PolymorphicMapType_17819) (o_47@@4 T@Ref) (f_65@@13 T@Field_17858_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@22) (=> (HasDirectPerm_17858_53 Mask@@22 o_47@@4 f_65@@13) (= (select (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| Heap@@13) o_47@@4 f_65@@13) (select (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| ExhaleHeap@@9) o_47@@4 f_65@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@22) (select (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| ExhaleHeap@@9) o_47@@4 f_65@@13))
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
(assert (forall ((Heap@@15 T@PolymorphicMapType_17798) (o_17 T@Ref) (f_19 T@Field_17858_50235) (v@@4 T@FrameType) ) (! (succHeap Heap@@15 (PolymorphicMapType_17798 (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| Heap@@15) (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| Heap@@15) (|PolymorphicMapType_17798_12240_3325#PolymorphicMapType_17798| Heap@@15) (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@15) (store (|PolymorphicMapType_17798_17858_50235#PolymorphicMapType_17798| Heap@@15) o_17 f_19 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17798 (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| Heap@@15) (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| Heap@@15) (|PolymorphicMapType_17798_12240_3325#PolymorphicMapType_17798| Heap@@15) (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@15) (store (|PolymorphicMapType_17798_17858_50235#PolymorphicMapType_17798| Heap@@15) o_17 f_19 v@@4)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_17798) (o_17@@0 T@Ref) (f_19@@0 T@Field_17858_50368) (v@@5 T@PolymorphicMapType_18347) ) (! (succHeap Heap@@16 (PolymorphicMapType_17798 (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| Heap@@16) (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| Heap@@16) (|PolymorphicMapType_17798_12240_3325#PolymorphicMapType_17798| Heap@@16) (store (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@16) o_17@@0 f_19@@0 v@@5) (|PolymorphicMapType_17798_17858_50235#PolymorphicMapType_17798| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17798 (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| Heap@@16) (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| Heap@@16) (|PolymorphicMapType_17798_12240_3325#PolymorphicMapType_17798| Heap@@16) (store (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@16) o_17@@0 f_19@@0 v@@5) (|PolymorphicMapType_17798_17858_50235#PolymorphicMapType_17798| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_17798) (o_17@@1 T@Ref) (f_19@@1 T@Field_23904_3325) (v@@6 Int) ) (! (succHeap Heap@@17 (PolymorphicMapType_17798 (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| Heap@@17) (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| Heap@@17) (store (|PolymorphicMapType_17798_12240_3325#PolymorphicMapType_17798| Heap@@17) o_17@@1 f_19@@1 v@@6) (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@17) (|PolymorphicMapType_17798_17858_50235#PolymorphicMapType_17798| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17798 (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| Heap@@17) (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| Heap@@17) (store (|PolymorphicMapType_17798_12240_3325#PolymorphicMapType_17798| Heap@@17) o_17@@1 f_19@@1 v@@6) (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@17) (|PolymorphicMapType_17798_17858_50235#PolymorphicMapType_17798| Heap@@17)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_17798) (o_17@@2 T@Ref) (f_19@@2 T@Field_17871_17872) (v@@7 T@Ref) ) (! (succHeap Heap@@18 (PolymorphicMapType_17798 (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| Heap@@18) (store (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| Heap@@18) o_17@@2 f_19@@2 v@@7) (|PolymorphicMapType_17798_12240_3325#PolymorphicMapType_17798| Heap@@18) (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@18) (|PolymorphicMapType_17798_17858_50235#PolymorphicMapType_17798| Heap@@18)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17798 (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| Heap@@18) (store (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| Heap@@18) o_17@@2 f_19@@2 v@@7) (|PolymorphicMapType_17798_12240_3325#PolymorphicMapType_17798| Heap@@18) (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@18) (|PolymorphicMapType_17798_17858_50235#PolymorphicMapType_17798| Heap@@18)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_17798) (o_17@@3 T@Ref) (f_19@@3 T@Field_17858_53) (v@@8 Bool) ) (! (succHeap Heap@@19 (PolymorphicMapType_17798 (store (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| Heap@@19) o_17@@3 f_19@@3 v@@8) (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| Heap@@19) (|PolymorphicMapType_17798_12240_3325#PolymorphicMapType_17798| Heap@@19) (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@19) (|PolymorphicMapType_17798_17858_50235#PolymorphicMapType_17798| Heap@@19)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17798 (store (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| Heap@@19) o_17@@3 f_19@@3 v@@8) (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| Heap@@19) (|PolymorphicMapType_17798_12240_3325#PolymorphicMapType_17798| Heap@@19) (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@19) (|PolymorphicMapType_17798_17858_50235#PolymorphicMapType_17798| Heap@@19)))
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
(assert (forall ((o_17@@4 T@Ref) (f_25 T@Field_17871_17872) (Heap@@20 T@PolymorphicMapType_17798) ) (!  (=> (select (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| Heap@@20) o_17@@4 $allocated) (select (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| Heap@@20) (select (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| Heap@@20) o_17@@4 f_25) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| Heap@@20) o_17@@4 f_25))
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
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id |exp#definedness|)
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
 (=> (= (ControlFlow 0 0) 2) true)
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
(assert (forall ((Heap@@1 T@PolymorphicMapType_17798) (ExhaleHeap T@PolymorphicMapType_17798) (Mask@@0 T@PolymorphicMapType_17819) (pm_f_34 T@Field_17858_50235) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_17858_50299 Mask@@0 null pm_f_34) (IsPredicateField_17858_50326 pm_f_34)) (= (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@1) null (PredicateMaskField_17858 pm_f_34)) (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| ExhaleHeap) null (PredicateMaskField_17858 pm_f_34)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_17858_50326 pm_f_34) (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| ExhaleHeap) null (PredicateMaskField_17858 pm_f_34)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_17798) (ExhaleHeap@@0 T@PolymorphicMapType_17798) (Mask@@1 T@PolymorphicMapType_17819) (pm_f_34@@0 T@Field_17858_50235) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_17858_50299 Mask@@1 null pm_f_34@@0) (IsWandField_17858_52073 pm_f_34@@0)) (= (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@2) null (WandMaskField_17858 pm_f_34@@0)) (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| ExhaleHeap@@0) null (WandMaskField_17858 pm_f_34@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsWandField_17858_52073 pm_f_34@@0) (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| ExhaleHeap@@0) null (WandMaskField_17858 pm_f_34@@0)))
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
(assert (forall ((Heap@@3 T@PolymorphicMapType_17798) (ExhaleHeap@@1 T@PolymorphicMapType_17798) (Mask@@2 T@PolymorphicMapType_17819) (o_47 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| Heap@@3) o_47 $allocated) (select (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| ExhaleHeap@@1) o_47 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| ExhaleHeap@@1) o_47 $allocated))
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
(assert (forall ((Heap@@7 T@PolymorphicMapType_17798) (ExhaleHeap@@3 T@PolymorphicMapType_17798) (Mask@@16 T@PolymorphicMapType_17819) (pm_f_34@@1 T@Field_17858_50235) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@16) (=> (and (HasDirectPerm_17858_50299 Mask@@16 null pm_f_34@@1) (IsPredicateField_17858_50326 pm_f_34@@1)) (and (and (and (and (forall ((o2_34 T@Ref) (f_65 T@Field_17858_53) ) (!  (=> (select (|PolymorphicMapType_18347_17858_53#PolymorphicMapType_18347| (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@7) null (PredicateMaskField_17858 pm_f_34@@1))) o2_34 f_65) (= (select (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| Heap@@7) o2_34 f_65) (select (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| ExhaleHeap@@3) o2_34 f_65)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| ExhaleHeap@@3) o2_34 f_65))
)) (forall ((o2_34@@0 T@Ref) (f_65@@0 T@Field_17871_17872) ) (!  (=> (select (|PolymorphicMapType_18347_17858_17872#PolymorphicMapType_18347| (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@7) null (PredicateMaskField_17858 pm_f_34@@1))) o2_34@@0 f_65@@0) (= (select (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| Heap@@7) o2_34@@0 f_65@@0) (select (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| ExhaleHeap@@3) o2_34@@0 f_65@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| ExhaleHeap@@3) o2_34@@0 f_65@@0))
))) (forall ((o2_34@@1 T@Ref) (f_65@@1 T@Field_23904_3325) ) (!  (=> (select (|PolymorphicMapType_18347_17858_3325#PolymorphicMapType_18347| (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@7) null (PredicateMaskField_17858 pm_f_34@@1))) o2_34@@1 f_65@@1) (= (select (|PolymorphicMapType_17798_12240_3325#PolymorphicMapType_17798| Heap@@7) o2_34@@1 f_65@@1) (select (|PolymorphicMapType_17798_12240_3325#PolymorphicMapType_17798| ExhaleHeap@@3) o2_34@@1 f_65@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17798_12240_3325#PolymorphicMapType_17798| ExhaleHeap@@3) o2_34@@1 f_65@@1))
))) (forall ((o2_34@@2 T@Ref) (f_65@@2 T@Field_17858_50235) ) (!  (=> (select (|PolymorphicMapType_18347_17858_50235#PolymorphicMapType_18347| (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@7) null (PredicateMaskField_17858 pm_f_34@@1))) o2_34@@2 f_65@@2) (= (select (|PolymorphicMapType_17798_17858_50235#PolymorphicMapType_17798| Heap@@7) o2_34@@2 f_65@@2) (select (|PolymorphicMapType_17798_17858_50235#PolymorphicMapType_17798| ExhaleHeap@@3) o2_34@@2 f_65@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17798_17858_50235#PolymorphicMapType_17798| ExhaleHeap@@3) o2_34@@2 f_65@@2))
))) (forall ((o2_34@@3 T@Ref) (f_65@@3 T@Field_17858_50368) ) (!  (=> (select (|PolymorphicMapType_18347_17858_51546#PolymorphicMapType_18347| (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@7) null (PredicateMaskField_17858 pm_f_34@@1))) o2_34@@3 f_65@@3) (= (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@7) o2_34@@3 f_65@@3) (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| ExhaleHeap@@3) o2_34@@3 f_65@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| ExhaleHeap@@3) o2_34@@3 f_65@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@16) (IsPredicateField_17858_50326 pm_f_34@@1))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_17798) (ExhaleHeap@@4 T@PolymorphicMapType_17798) (Mask@@17 T@PolymorphicMapType_17819) (pm_f_34@@2 T@Field_17858_50235) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@17) (=> (and (HasDirectPerm_17858_50299 Mask@@17 null pm_f_34@@2) (IsWandField_17858_52073 pm_f_34@@2)) (and (and (and (and (forall ((o2_34@@4 T@Ref) (f_65@@4 T@Field_17858_53) ) (!  (=> (select (|PolymorphicMapType_18347_17858_53#PolymorphicMapType_18347| (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@8) null (WandMaskField_17858 pm_f_34@@2))) o2_34@@4 f_65@@4) (= (select (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| Heap@@8) o2_34@@4 f_65@@4) (select (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| ExhaleHeap@@4) o2_34@@4 f_65@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| ExhaleHeap@@4) o2_34@@4 f_65@@4))
)) (forall ((o2_34@@5 T@Ref) (f_65@@5 T@Field_17871_17872) ) (!  (=> (select (|PolymorphicMapType_18347_17858_17872#PolymorphicMapType_18347| (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@8) null (WandMaskField_17858 pm_f_34@@2))) o2_34@@5 f_65@@5) (= (select (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| Heap@@8) o2_34@@5 f_65@@5) (select (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| ExhaleHeap@@4) o2_34@@5 f_65@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| ExhaleHeap@@4) o2_34@@5 f_65@@5))
))) (forall ((o2_34@@6 T@Ref) (f_65@@6 T@Field_23904_3325) ) (!  (=> (select (|PolymorphicMapType_18347_17858_3325#PolymorphicMapType_18347| (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@8) null (WandMaskField_17858 pm_f_34@@2))) o2_34@@6 f_65@@6) (= (select (|PolymorphicMapType_17798_12240_3325#PolymorphicMapType_17798| Heap@@8) o2_34@@6 f_65@@6) (select (|PolymorphicMapType_17798_12240_3325#PolymorphicMapType_17798| ExhaleHeap@@4) o2_34@@6 f_65@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17798_12240_3325#PolymorphicMapType_17798| ExhaleHeap@@4) o2_34@@6 f_65@@6))
))) (forall ((o2_34@@7 T@Ref) (f_65@@7 T@Field_17858_50235) ) (!  (=> (select (|PolymorphicMapType_18347_17858_50235#PolymorphicMapType_18347| (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@8) null (WandMaskField_17858 pm_f_34@@2))) o2_34@@7 f_65@@7) (= (select (|PolymorphicMapType_17798_17858_50235#PolymorphicMapType_17798| Heap@@8) o2_34@@7 f_65@@7) (select (|PolymorphicMapType_17798_17858_50235#PolymorphicMapType_17798| ExhaleHeap@@4) o2_34@@7 f_65@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17798_17858_50235#PolymorphicMapType_17798| ExhaleHeap@@4) o2_34@@7 f_65@@7))
))) (forall ((o2_34@@8 T@Ref) (f_65@@8 T@Field_17858_50368) ) (!  (=> (select (|PolymorphicMapType_18347_17858_51546#PolymorphicMapType_18347| (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@8) null (WandMaskField_17858 pm_f_34@@2))) o2_34@@8 f_65@@8) (= (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@8) o2_34@@8 f_65@@8) (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| ExhaleHeap@@4) o2_34@@8 f_65@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| ExhaleHeap@@4) o2_34@@8 f_65@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@17) (IsWandField_17858_52073 pm_f_34@@2))
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
(assert (forall ((Heap@@9 T@PolymorphicMapType_17798) (ExhaleHeap@@5 T@PolymorphicMapType_17798) (Mask@@18 T@PolymorphicMapType_17819) (o_47@@0 T@Ref) (f_65@@9 T@Field_17858_50368) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@18) (=> (HasDirectPerm_17858_56073 Mask@@18 o_47@@0 f_65@@9) (= (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@9) o_47@@0 f_65@@9) (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| ExhaleHeap@@5) o_47@@0 f_65@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@18) (select (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| ExhaleHeap@@5) o_47@@0 f_65@@9))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_17798) (ExhaleHeap@@6 T@PolymorphicMapType_17798) (Mask@@19 T@PolymorphicMapType_17819) (o_47@@1 T@Ref) (f_65@@10 T@Field_17858_50235) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@19) (=> (HasDirectPerm_17858_50299 Mask@@19 o_47@@1 f_65@@10) (= (select (|PolymorphicMapType_17798_17858_50235#PolymorphicMapType_17798| Heap@@10) o_47@@1 f_65@@10) (select (|PolymorphicMapType_17798_17858_50235#PolymorphicMapType_17798| ExhaleHeap@@6) o_47@@1 f_65@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@19) (select (|PolymorphicMapType_17798_17858_50235#PolymorphicMapType_17798| ExhaleHeap@@6) o_47@@1 f_65@@10))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_17798) (ExhaleHeap@@7 T@PolymorphicMapType_17798) (Mask@@20 T@PolymorphicMapType_17819) (o_47@@2 T@Ref) (f_65@@11 T@Field_23904_3325) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@20) (=> (HasDirectPerm_17858_3325 Mask@@20 o_47@@2 f_65@@11) (= (select (|PolymorphicMapType_17798_12240_3325#PolymorphicMapType_17798| Heap@@11) o_47@@2 f_65@@11) (select (|PolymorphicMapType_17798_12240_3325#PolymorphicMapType_17798| ExhaleHeap@@7) o_47@@2 f_65@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@20) (select (|PolymorphicMapType_17798_12240_3325#PolymorphicMapType_17798| ExhaleHeap@@7) o_47@@2 f_65@@11))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_17798) (ExhaleHeap@@8 T@PolymorphicMapType_17798) (Mask@@21 T@PolymorphicMapType_17819) (o_47@@3 T@Ref) (f_65@@12 T@Field_17871_17872) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@21) (=> (HasDirectPerm_17858_17872 Mask@@21 o_47@@3 f_65@@12) (= (select (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| Heap@@12) o_47@@3 f_65@@12) (select (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| ExhaleHeap@@8) o_47@@3 f_65@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@21) (select (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| ExhaleHeap@@8) o_47@@3 f_65@@12))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_17798) (ExhaleHeap@@9 T@PolymorphicMapType_17798) (Mask@@22 T@PolymorphicMapType_17819) (o_47@@4 T@Ref) (f_65@@13 T@Field_17858_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@22) (=> (HasDirectPerm_17858_53 Mask@@22 o_47@@4 f_65@@13) (= (select (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| Heap@@13) o_47@@4 f_65@@13) (select (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| ExhaleHeap@@9) o_47@@4 f_65@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@22) (select (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| ExhaleHeap@@9) o_47@@4 f_65@@13))
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
(assert (forall ((Heap@@15 T@PolymorphicMapType_17798) (o_17 T@Ref) (f_19 T@Field_17858_50235) (v@@4 T@FrameType) ) (! (succHeap Heap@@15 (PolymorphicMapType_17798 (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| Heap@@15) (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| Heap@@15) (|PolymorphicMapType_17798_12240_3325#PolymorphicMapType_17798| Heap@@15) (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@15) (store (|PolymorphicMapType_17798_17858_50235#PolymorphicMapType_17798| Heap@@15) o_17 f_19 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17798 (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| Heap@@15) (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| Heap@@15) (|PolymorphicMapType_17798_12240_3325#PolymorphicMapType_17798| Heap@@15) (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@15) (store (|PolymorphicMapType_17798_17858_50235#PolymorphicMapType_17798| Heap@@15) o_17 f_19 v@@4)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_17798) (o_17@@0 T@Ref) (f_19@@0 T@Field_17858_50368) (v@@5 T@PolymorphicMapType_18347) ) (! (succHeap Heap@@16 (PolymorphicMapType_17798 (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| Heap@@16) (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| Heap@@16) (|PolymorphicMapType_17798_12240_3325#PolymorphicMapType_17798| Heap@@16) (store (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@16) o_17@@0 f_19@@0 v@@5) (|PolymorphicMapType_17798_17858_50235#PolymorphicMapType_17798| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17798 (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| Heap@@16) (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| Heap@@16) (|PolymorphicMapType_17798_12240_3325#PolymorphicMapType_17798| Heap@@16) (store (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@16) o_17@@0 f_19@@0 v@@5) (|PolymorphicMapType_17798_17858_50235#PolymorphicMapType_17798| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_17798) (o_17@@1 T@Ref) (f_19@@1 T@Field_23904_3325) (v@@6 Int) ) (! (succHeap Heap@@17 (PolymorphicMapType_17798 (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| Heap@@17) (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| Heap@@17) (store (|PolymorphicMapType_17798_12240_3325#PolymorphicMapType_17798| Heap@@17) o_17@@1 f_19@@1 v@@6) (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@17) (|PolymorphicMapType_17798_17858_50235#PolymorphicMapType_17798| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17798 (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| Heap@@17) (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| Heap@@17) (store (|PolymorphicMapType_17798_12240_3325#PolymorphicMapType_17798| Heap@@17) o_17@@1 f_19@@1 v@@6) (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@17) (|PolymorphicMapType_17798_17858_50235#PolymorphicMapType_17798| Heap@@17)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_17798) (o_17@@2 T@Ref) (f_19@@2 T@Field_17871_17872) (v@@7 T@Ref) ) (! (succHeap Heap@@18 (PolymorphicMapType_17798 (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| Heap@@18) (store (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| Heap@@18) o_17@@2 f_19@@2 v@@7) (|PolymorphicMapType_17798_12240_3325#PolymorphicMapType_17798| Heap@@18) (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@18) (|PolymorphicMapType_17798_17858_50235#PolymorphicMapType_17798| Heap@@18)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17798 (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| Heap@@18) (store (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| Heap@@18) o_17@@2 f_19@@2 v@@7) (|PolymorphicMapType_17798_12240_3325#PolymorphicMapType_17798| Heap@@18) (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@18) (|PolymorphicMapType_17798_17858_50235#PolymorphicMapType_17798| Heap@@18)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_17798) (o_17@@3 T@Ref) (f_19@@3 T@Field_17858_53) (v@@8 Bool) ) (! (succHeap Heap@@19 (PolymorphicMapType_17798 (store (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| Heap@@19) o_17@@3 f_19@@3 v@@8) (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| Heap@@19) (|PolymorphicMapType_17798_12240_3325#PolymorphicMapType_17798| Heap@@19) (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@19) (|PolymorphicMapType_17798_17858_50235#PolymorphicMapType_17798| Heap@@19)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17798 (store (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| Heap@@19) o_17@@3 f_19@@3 v@@8) (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| Heap@@19) (|PolymorphicMapType_17798_12240_3325#PolymorphicMapType_17798| Heap@@19) (|PolymorphicMapType_17798_17858_50412#PolymorphicMapType_17798| Heap@@19) (|PolymorphicMapType_17798_17858_50235#PolymorphicMapType_17798| Heap@@19)))
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
(assert (forall ((o_17@@4 T@Ref) (f_25 T@Field_17871_17872) (Heap@@20 T@PolymorphicMapType_17798) ) (!  (=> (select (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| Heap@@20) o_17@@4 $allocated) (select (|PolymorphicMapType_17798_12024_53#PolymorphicMapType_17798| Heap@@20) (select (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| Heap@@20) o_17@@4 f_25) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_17798_12027_12028#PolymorphicMapType_17798| Heap@@20) o_17@@4 f_25))
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

