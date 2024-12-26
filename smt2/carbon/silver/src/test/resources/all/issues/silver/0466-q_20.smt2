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
(declare-sort T@Field_8233_53 0)
(declare-sort T@Field_8246_8247 0)
(declare-sort T@Field_8233_18277 0)
(declare-sort T@Field_8233_18144 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_8194 0)) (((PolymorphicMapType_8194 (|PolymorphicMapType_8194_8233_53#PolymorphicMapType_8194| (Array T@Ref T@Field_8233_53 Real)) (|PolymorphicMapType_8194_8233_8247#PolymorphicMapType_8194| (Array T@Ref T@Field_8246_8247 Real)) (|PolymorphicMapType_8194_8233_18144#PolymorphicMapType_8194| (Array T@Ref T@Field_8233_18144 Real)) (|PolymorphicMapType_8194_8233_21838#PolymorphicMapType_8194| (Array T@Ref T@Field_8233_18277 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8722 0)) (((PolymorphicMapType_8722 (|PolymorphicMapType_8722_8233_53#PolymorphicMapType_8722| (Array T@Ref T@Field_8233_53 Bool)) (|PolymorphicMapType_8722_8233_8247#PolymorphicMapType_8722| (Array T@Ref T@Field_8246_8247 Bool)) (|PolymorphicMapType_8722_8233_18144#PolymorphicMapType_8722| (Array T@Ref T@Field_8233_18144 Bool)) (|PolymorphicMapType_8722_8233_19257#PolymorphicMapType_8722| (Array T@Ref T@Field_8233_18277 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8173 0)) (((PolymorphicMapType_8173 (|PolymorphicMapType_8173_5208_53#PolymorphicMapType_8173| (Array T@Ref T@Field_8233_53 Bool)) (|PolymorphicMapType_8173_5211_5212#PolymorphicMapType_8173| (Array T@Ref T@Field_8246_8247 T@Ref)) (|PolymorphicMapType_8173_8233_18321#PolymorphicMapType_8173| (Array T@Ref T@Field_8233_18277 T@PolymorphicMapType_8722)) (|PolymorphicMapType_8173_8233_18144#PolymorphicMapType_8173| (Array T@Ref T@Field_8233_18144 T@FrameType)) ) ) ))
(declare-sort T@Seq_2864 0)
(declare-fun |Seq#Length_2864| (T@Seq_2864) Int)
(declare-fun |Seq#Drop_2864| (T@Seq_2864 Int) T@Seq_2864)
(declare-fun succHeap (T@PolymorphicMapType_8173 T@PolymorphicMapType_8173) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_8173 T@PolymorphicMapType_8173) Bool)
(declare-sort T@MultiSet_5100 0)
(declare-fun |MultiSet#Card_5100| (T@MultiSet_5100) Int)
(declare-fun |MultiSet#Difference_5100| (T@MultiSet_5100 T@MultiSet_5100) T@MultiSet_5100)
(declare-fun |MultiSet#Intersection_5100| (T@MultiSet_5100 T@MultiSet_5100) T@MultiSet_5100)
(declare-fun |MultiSet#Union_5100| (T@MultiSet_5100 T@MultiSet_5100) T@MultiSet_5100)
(declare-fun state (T@PolymorphicMapType_8173 T@PolymorphicMapType_8194) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_8194) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_8722)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Seq#Index_2864| (T@Seq_2864 Int) Int)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Empty_2864| () T@Seq_2864)
(declare-fun |Seq#Update_2864| (T@Seq_2864 Int Int) T@Seq_2864)
(declare-fun |MultiSet#Select_5100| (T@MultiSet_5100 Int) Int)
(declare-fun |Seq#Take_2864| (T@Seq_2864 Int) T@Seq_2864)
(declare-fun |Seq#Contains_2864| (T@Seq_2864 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2864)
(declare-fun |Seq#Skolem_2864| (T@Seq_2864 Int) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_8173 T@PolymorphicMapType_8173 T@PolymorphicMapType_8194) Bool)
(declare-fun IsPredicateField_8233_18235 (T@Field_8233_18144) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_8233 (T@Field_8233_18144) T@Field_8233_18277)
(declare-fun HasDirectPerm_8233_18208 (T@PolymorphicMapType_8194 T@Ref T@Field_8233_18144) Bool)
(declare-fun IsWandField_8233_19784 (T@Field_8233_18144) Bool)
(declare-fun WandMaskField_8233 (T@Field_8233_18144) T@Field_8233_18277)
(declare-fun |Seq#Singleton_2864| (Int) T@Seq_2864)
(declare-fun |Seq#Append_2864| (T@Seq_2864 T@Seq_2864) T@Seq_2864)
(declare-fun dummyHeap () T@PolymorphicMapType_8173)
(declare-fun ZeroMask () T@PolymorphicMapType_8194)
(declare-fun |MultiSet#UnionOne_5100| (T@MultiSet_5100 Int) T@MultiSet_5100)
(declare-fun |MultiSet#Disjoint_5100| (T@MultiSet_5100 T@MultiSet_5100) Bool)
(declare-fun $allocated () T@Field_8233_53)
(declare-fun InsidePredicate_8233_8233 (T@Field_8233_18144 T@FrameType T@Field_8233_18144 T@FrameType) Bool)
(declare-fun |MultiSet#Singleton_5100| (Int) T@MultiSet_5100)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_8233_22747 (T@Field_8233_18277) Bool)
(declare-fun IsWandField_8233_22763 (T@Field_8233_18277) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_8233_8247 (T@Field_8246_8247) Bool)
(declare-fun IsWandField_8233_8247 (T@Field_8246_8247) Bool)
(declare-fun IsPredicateField_8233_53 (T@Field_8233_53) Bool)
(declare-fun IsWandField_8233_53 (T@Field_8233_53) Bool)
(declare-fun HasDirectPerm_8233_23118 (T@PolymorphicMapType_8194 T@Ref T@Field_8233_18277) Bool)
(declare-fun HasDirectPerm_8233_8247 (T@PolymorphicMapType_8194 T@Ref T@Field_8246_8247) Bool)
(declare-fun HasDirectPerm_8233_53 (T@PolymorphicMapType_8194 T@Ref T@Field_8233_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_8194 T@PolymorphicMapType_8194 T@PolymorphicMapType_8194) Bool)
(declare-fun |Seq#Equal_2864| (T@Seq_2864 T@Seq_2864) Bool)
(declare-fun |MultiSet#Equal_5100| (T@MultiSet_5100 T@MultiSet_5100) Bool)
(declare-fun |Seq#ContainsTrigger_2864| (T@Seq_2864 Int) Bool)
(declare-fun |MultiSet#Empty_5100| () T@MultiSet_5100)
(declare-fun |Seq#SkolemDiff_2864| (T@Seq_2864 T@Seq_2864) Int)
(declare-fun |MultiSet#Subset_5100| (T@MultiSet_5100 T@MultiSet_5100) Bool)
(assert (forall ((s T@Seq_2864) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_2864| s)) (= (|Seq#Length_2864| (|Seq#Drop_2864| s n)) (- (|Seq#Length_2864| s) n))) (=> (< (|Seq#Length_2864| s) n) (= (|Seq#Length_2864| (|Seq#Drop_2864| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_2864| (|Seq#Drop_2864| s n)) (|Seq#Length_2864| s))))
 :qid |stdinbpl.273:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2864| (|Seq#Drop_2864| s n)))
 :pattern ( (|Seq#Length_2864| s) (|Seq#Drop_2864| s n))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_8173) (Heap1 T@PolymorphicMapType_8173) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((a T@MultiSet_5100) (b T@MultiSet_5100) ) (!  (and (= (+ (+ (|MultiSet#Card_5100| (|MultiSet#Difference_5100| a b)) (|MultiSet#Card_5100| (|MultiSet#Difference_5100| b a))) (* 2 (|MultiSet#Card_5100| (|MultiSet#Intersection_5100| a b)))) (|MultiSet#Card_5100| (|MultiSet#Union_5100| a b))) (= (|MultiSet#Card_5100| (|MultiSet#Difference_5100| a b)) (- (|MultiSet#Card_5100| a) (|MultiSet#Card_5100| (|MultiSet#Intersection_5100| a b)))))
 :qid |stdinbpl.706:18|
 :skolemid |110|
 :pattern ( (|MultiSet#Card_5100| (|MultiSet#Difference_5100| a b)))
)))
(assert (forall ((Heap T@PolymorphicMapType_8173) (Mask T@PolymorphicMapType_8194) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_8173) (Heap1@@0 T@PolymorphicMapType_8173) (Heap2 T@PolymorphicMapType_8173) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_8233_18277) ) (!  (not (select (|PolymorphicMapType_8722_8233_19257#PolymorphicMapType_8722| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8722_8233_19257#PolymorphicMapType_8722| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_8233_18144) ) (!  (not (select (|PolymorphicMapType_8722_8233_18144#PolymorphicMapType_8722| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8722_8233_18144#PolymorphicMapType_8722| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_8246_8247) ) (!  (not (select (|PolymorphicMapType_8722_8233_8247#PolymorphicMapType_8722| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8722_8233_8247#PolymorphicMapType_8722| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_8233_53) ) (!  (not (select (|PolymorphicMapType_8722_8233_53#PolymorphicMapType_8722| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8722_8233_53#PolymorphicMapType_8722| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((a@@0 Int) (b@@0 Int) ) (!  (or (= (|Math#min| a@@0 b@@0) a@@0) (= (|Math#min| a@@0 b@@0) b@@0))
 :qid |stdinbpl.637:15|
 :skolemid |89|
 :pattern ( (|Math#min| a@@0 b@@0))
)))
(assert (forall ((s@@0 T@Seq_2864) (n@@0 Int) (j Int) ) (!  (=> (and (and (< 0 n@@0) (<= 0 j)) (< j (- (|Seq#Length_2864| s@@0) n@@0))) (and (= (|Seq#Sub| (|Seq#Add| j n@@0) n@@0) j) (= (|Seq#Index_2864| (|Seq#Drop_2864| s@@0 n@@0) j) (|Seq#Index_2864| s@@0 (|Seq#Add| j n@@0)))))
 :qid |stdinbpl.294:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2864| (|Seq#Drop_2864| s@@0 n@@0) j))
)))
(assert (= (|Seq#Length_2864| |Seq#Empty_2864|) 0))
(assert (forall ((s@@1 T@Seq_2864) (i Int) (v Int) (n@@1 Int) ) (!  (=> (and (<= 0 n@@1) (< n@@1 (|Seq#Length_2864| s@@1))) (and (=> (= i n@@1) (= (|Seq#Index_2864| (|Seq#Update_2864| s@@1 i v) n@@1) v)) (=> (not (= i n@@1)) (= (|Seq#Index_2864| (|Seq#Update_2864| s@@1 i v) n@@1) (|Seq#Index_2864| s@@1 n@@1)))))
 :qid |stdinbpl.249:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2864| (|Seq#Update_2864| s@@1 i v) n@@1))
 :pattern ( (|Seq#Index_2864| s@@1 n@@1) (|Seq#Update_2864| s@@1 i v))
)))
(assert (forall ((a@@1 T@MultiSet_5100) (b@@1 T@MultiSet_5100) (y Int) ) (!  (=> (<= (|MultiSet#Select_5100| a@@1 y) (|MultiSet#Select_5100| b@@1 y)) (= (|MultiSet#Select_5100| (|MultiSet#Difference_5100| a@@1 b@@1) y) 0))
 :qid |stdinbpl.704:18|
 :skolemid |109|
 :pattern ( (|MultiSet#Difference_5100| a@@1 b@@1) (|MultiSet#Select_5100| b@@1 y) (|MultiSet#Select_5100| a@@1 y))
)))
(assert (forall ((a@@2 T@MultiSet_5100) (b@@2 T@MultiSet_5100) ) (! (= (|MultiSet#Intersection_5100| (|MultiSet#Intersection_5100| a@@2 b@@2) b@@2) (|MultiSet#Intersection_5100| a@@2 b@@2))
 :qid |stdinbpl.695:18|
 :skolemid |106|
 :pattern ( (|MultiSet#Intersection_5100| (|MultiSet#Intersection_5100| a@@2 b@@2) b@@2))
)))
(assert (forall ((s@@2 T@Seq_2864) (n@@2 Int) ) (!  (and (=> (<= 0 n@@2) (and (=> (<= n@@2 (|Seq#Length_2864| s@@2)) (= (|Seq#Length_2864| (|Seq#Take_2864| s@@2 n@@2)) n@@2)) (=> (< (|Seq#Length_2864| s@@2) n@@2) (= (|Seq#Length_2864| (|Seq#Take_2864| s@@2 n@@2)) (|Seq#Length_2864| s@@2))))) (=> (< n@@2 0) (= (|Seq#Length_2864| (|Seq#Take_2864| s@@2 n@@2)) 0)))
 :qid |stdinbpl.260:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2864| (|Seq#Take_2864| s@@2 n@@2)))
 :pattern ( (|Seq#Take_2864| s@@2 n@@2) (|Seq#Length_2864| s@@2))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@0 Int) ) (! (= (|Seq#Contains_2864| (|Seq#Range| q@min q@max) v@@0)  (and (<= q@min v@@0) (< v@@0 q@max)))
 :qid |stdinbpl.534:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2864| (|Seq#Range| q@min q@max) v@@0))
)))
(assert (forall ((s@@3 T@Seq_2864) (x Int) ) (!  (=> (|Seq#Contains_2864| s@@3 x) (and (and (<= 0 (|Seq#Skolem_2864| s@@3 x)) (< (|Seq#Skolem_2864| s@@3 x) (|Seq#Length_2864| s@@3))) (= (|Seq#Index_2864| s@@3 (|Seq#Skolem_2864| s@@3 x)) x)))
 :qid |stdinbpl.392:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2864| s@@3 x))
)))
(assert (forall ((s@@4 T@Seq_2864) (n@@3 Int) ) (!  (=> (<= n@@3 0) (= (|Seq#Drop_2864| s@@4 n@@3) s@@4))
 :qid |stdinbpl.376:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_2864| s@@4 n@@3))
)))
(assert (forall ((i@@0 Int) (j@@0 Int) ) (! (= (|Seq#Sub| i@@0 j@@0) (- i@@0 j@@0))
 :qid |stdinbpl.229:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@0 j@@0))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Add| i@@1 j@@1) (+ i@@1 j@@1))
 :qid |stdinbpl.227:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@1 j@@1))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.640:15|
 :skolemid |90|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((a@@4 T@MultiSet_5100) (b@@3 T@MultiSet_5100) (o Int) ) (! (= (|MultiSet#Select_5100| (|MultiSet#Intersection_5100| a@@4 b@@3) o) (|Math#min| (|MultiSet#Select_5100| a@@4 o) (|MultiSet#Select_5100| b@@3 o)))
 :qid |stdinbpl.691:18|
 :skolemid |105|
 :pattern ( (|MultiSet#Select_5100| (|MultiSet#Intersection_5100| a@@4 b@@3) o))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_8173) (ExhaleHeap T@PolymorphicMapType_8173) (Mask@@0 T@PolymorphicMapType_8194) (pm_f_5 T@Field_8233_18144) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_8233_18208 Mask@@0 null pm_f_5) (IsPredicateField_8233_18235 pm_f_5)) (= (select (|PolymorphicMapType_8173_8233_18321#PolymorphicMapType_8173| Heap@@0) null (PredicateMaskField_8233 pm_f_5)) (select (|PolymorphicMapType_8173_8233_18321#PolymorphicMapType_8173| ExhaleHeap) null (PredicateMaskField_8233 pm_f_5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_8233_18235 pm_f_5) (select (|PolymorphicMapType_8173_8233_18321#PolymorphicMapType_8173| ExhaleHeap) null (PredicateMaskField_8233 pm_f_5)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_8173) (ExhaleHeap@@0 T@PolymorphicMapType_8173) (Mask@@1 T@PolymorphicMapType_8194) (pm_f_5@@0 T@Field_8233_18144) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_8233_18208 Mask@@1 null pm_f_5@@0) (IsWandField_8233_19784 pm_f_5@@0)) (= (select (|PolymorphicMapType_8173_8233_18321#PolymorphicMapType_8173| Heap@@1) null (WandMaskField_8233 pm_f_5@@0)) (select (|PolymorphicMapType_8173_8233_18321#PolymorphicMapType_8173| ExhaleHeap@@0) null (WandMaskField_8233 pm_f_5@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_8233_19784 pm_f_5@@0) (select (|PolymorphicMapType_8173_8233_18321#PolymorphicMapType_8173| ExhaleHeap@@0) null (WandMaskField_8233 pm_f_5@@0)))
)))
(assert (forall ((x@@0 Int) (y@@0 Int) ) (! (= (|Seq#Contains_2864| (|Seq#Singleton_2864| x@@0) y@@0) (= x@@0 y@@0))
 :qid |stdinbpl.517:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2864| (|Seq#Singleton_2864| x@@0) y@@0))
)))
(assert (forall ((s@@5 T@Seq_2864) (n@@4 Int) (j@@2 Int) ) (!  (=> (and (and (<= 0 j@@2) (< j@@2 n@@4)) (< j@@2 (|Seq#Length_2864| s@@5))) (= (|Seq#Index_2864| (|Seq#Take_2864| s@@5 n@@4) j@@2) (|Seq#Index_2864| s@@5 j@@2)))
 :qid |stdinbpl.268:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2864| (|Seq#Take_2864| s@@5 n@@4) j@@2))
 :pattern ( (|Seq#Index_2864| s@@5 j@@2) (|Seq#Take_2864| s@@5 n@@4))
)))
(assert (forall ((s@@6 T@Seq_2864) (t T@Seq_2864) (n@@5 Int) ) (!  (=> (and (and (> n@@5 0) (> n@@5 (|Seq#Length_2864| s@@6))) (< n@@5 (|Seq#Length_2864| (|Seq#Append_2864| s@@6 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@5 (|Seq#Length_2864| s@@6)) (|Seq#Length_2864| s@@6)) n@@5) (= (|Seq#Take_2864| (|Seq#Append_2864| s@@6 t) n@@5) (|Seq#Append_2864| s@@6 (|Seq#Take_2864| t (|Seq#Sub| n@@5 (|Seq#Length_2864| s@@6)))))))
 :qid |stdinbpl.353:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2864| (|Seq#Append_2864| s@@6 t) n@@5))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_8173) (ExhaleHeap@@1 T@PolymorphicMapType_8173) (Mask@@2 T@PolymorphicMapType_8194) (pm_f_5@@1 T@Field_8233_18144) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_8233_18208 Mask@@2 null pm_f_5@@1) (IsPredicateField_8233_18235 pm_f_5@@1)) (and (and (and (forall ((o2_5 T@Ref) (f_16 T@Field_8233_53) ) (!  (=> (select (|PolymorphicMapType_8722_8233_53#PolymorphicMapType_8722| (select (|PolymorphicMapType_8173_8233_18321#PolymorphicMapType_8173| Heap@@2) null (PredicateMaskField_8233 pm_f_5@@1))) o2_5 f_16) (= (select (|PolymorphicMapType_8173_5208_53#PolymorphicMapType_8173| Heap@@2) o2_5 f_16) (select (|PolymorphicMapType_8173_5208_53#PolymorphicMapType_8173| ExhaleHeap@@1) o2_5 f_16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8173_5208_53#PolymorphicMapType_8173| ExhaleHeap@@1) o2_5 f_16))
)) (forall ((o2_5@@0 T@Ref) (f_16@@0 T@Field_8246_8247) ) (!  (=> (select (|PolymorphicMapType_8722_8233_8247#PolymorphicMapType_8722| (select (|PolymorphicMapType_8173_8233_18321#PolymorphicMapType_8173| Heap@@2) null (PredicateMaskField_8233 pm_f_5@@1))) o2_5@@0 f_16@@0) (= (select (|PolymorphicMapType_8173_5211_5212#PolymorphicMapType_8173| Heap@@2) o2_5@@0 f_16@@0) (select (|PolymorphicMapType_8173_5211_5212#PolymorphicMapType_8173| ExhaleHeap@@1) o2_5@@0 f_16@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8173_5211_5212#PolymorphicMapType_8173| ExhaleHeap@@1) o2_5@@0 f_16@@0))
))) (forall ((o2_5@@1 T@Ref) (f_16@@1 T@Field_8233_18144) ) (!  (=> (select (|PolymorphicMapType_8722_8233_18144#PolymorphicMapType_8722| (select (|PolymorphicMapType_8173_8233_18321#PolymorphicMapType_8173| Heap@@2) null (PredicateMaskField_8233 pm_f_5@@1))) o2_5@@1 f_16@@1) (= (select (|PolymorphicMapType_8173_8233_18144#PolymorphicMapType_8173| Heap@@2) o2_5@@1 f_16@@1) (select (|PolymorphicMapType_8173_8233_18144#PolymorphicMapType_8173| ExhaleHeap@@1) o2_5@@1 f_16@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8173_8233_18144#PolymorphicMapType_8173| ExhaleHeap@@1) o2_5@@1 f_16@@1))
))) (forall ((o2_5@@2 T@Ref) (f_16@@2 T@Field_8233_18277) ) (!  (=> (select (|PolymorphicMapType_8722_8233_19257#PolymorphicMapType_8722| (select (|PolymorphicMapType_8173_8233_18321#PolymorphicMapType_8173| Heap@@2) null (PredicateMaskField_8233 pm_f_5@@1))) o2_5@@2 f_16@@2) (= (select (|PolymorphicMapType_8173_8233_18321#PolymorphicMapType_8173| Heap@@2) o2_5@@2 f_16@@2) (select (|PolymorphicMapType_8173_8233_18321#PolymorphicMapType_8173| ExhaleHeap@@1) o2_5@@2 f_16@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8173_8233_18321#PolymorphicMapType_8173| ExhaleHeap@@1) o2_5@@2 f_16@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsPredicateField_8233_18235 pm_f_5@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_8173) (ExhaleHeap@@2 T@PolymorphicMapType_8173) (Mask@@3 T@PolymorphicMapType_8194) (pm_f_5@@2 T@Field_8233_18144) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_8233_18208 Mask@@3 null pm_f_5@@2) (IsWandField_8233_19784 pm_f_5@@2)) (and (and (and (forall ((o2_5@@3 T@Ref) (f_16@@3 T@Field_8233_53) ) (!  (=> (select (|PolymorphicMapType_8722_8233_53#PolymorphicMapType_8722| (select (|PolymorphicMapType_8173_8233_18321#PolymorphicMapType_8173| Heap@@3) null (WandMaskField_8233 pm_f_5@@2))) o2_5@@3 f_16@@3) (= (select (|PolymorphicMapType_8173_5208_53#PolymorphicMapType_8173| Heap@@3) o2_5@@3 f_16@@3) (select (|PolymorphicMapType_8173_5208_53#PolymorphicMapType_8173| ExhaleHeap@@2) o2_5@@3 f_16@@3)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8173_5208_53#PolymorphicMapType_8173| ExhaleHeap@@2) o2_5@@3 f_16@@3))
)) (forall ((o2_5@@4 T@Ref) (f_16@@4 T@Field_8246_8247) ) (!  (=> (select (|PolymorphicMapType_8722_8233_8247#PolymorphicMapType_8722| (select (|PolymorphicMapType_8173_8233_18321#PolymorphicMapType_8173| Heap@@3) null (WandMaskField_8233 pm_f_5@@2))) o2_5@@4 f_16@@4) (= (select (|PolymorphicMapType_8173_5211_5212#PolymorphicMapType_8173| Heap@@3) o2_5@@4 f_16@@4) (select (|PolymorphicMapType_8173_5211_5212#PolymorphicMapType_8173| ExhaleHeap@@2) o2_5@@4 f_16@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8173_5211_5212#PolymorphicMapType_8173| ExhaleHeap@@2) o2_5@@4 f_16@@4))
))) (forall ((o2_5@@5 T@Ref) (f_16@@5 T@Field_8233_18144) ) (!  (=> (select (|PolymorphicMapType_8722_8233_18144#PolymorphicMapType_8722| (select (|PolymorphicMapType_8173_8233_18321#PolymorphicMapType_8173| Heap@@3) null (WandMaskField_8233 pm_f_5@@2))) o2_5@@5 f_16@@5) (= (select (|PolymorphicMapType_8173_8233_18144#PolymorphicMapType_8173| Heap@@3) o2_5@@5 f_16@@5) (select (|PolymorphicMapType_8173_8233_18144#PolymorphicMapType_8173| ExhaleHeap@@2) o2_5@@5 f_16@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8173_8233_18144#PolymorphicMapType_8173| ExhaleHeap@@2) o2_5@@5 f_16@@5))
))) (forall ((o2_5@@6 T@Ref) (f_16@@6 T@Field_8233_18277) ) (!  (=> (select (|PolymorphicMapType_8722_8233_19257#PolymorphicMapType_8722| (select (|PolymorphicMapType_8173_8233_18321#PolymorphicMapType_8173| Heap@@3) null (WandMaskField_8233 pm_f_5@@2))) o2_5@@6 f_16@@6) (= (select (|PolymorphicMapType_8173_8233_18321#PolymorphicMapType_8173| Heap@@3) o2_5@@6 f_16@@6) (select (|PolymorphicMapType_8173_8233_18321#PolymorphicMapType_8173| ExhaleHeap@@2) o2_5@@6 f_16@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8173_8233_18321#PolymorphicMapType_8173| ExhaleHeap@@2) o2_5@@6 f_16@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_8233_19784 pm_f_5@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((a@@5 T@MultiSet_5100) (x@@1 Int) ) (! (= (|MultiSet#Card_5100| (|MultiSet#UnionOne_5100| a@@5 x@@1)) (+ (|MultiSet#Card_5100| a@@5) 1))
 :qid |stdinbpl.677:18|
 :skolemid |101|
 :pattern ( (|MultiSet#Card_5100| (|MultiSet#UnionOne_5100| a@@5 x@@1)))
 :pattern ( (|MultiSet#UnionOne_5100| a@@5 x@@1) (|MultiSet#Card_5100| a@@5))
)))
(assert (forall ((a@@6 T@MultiSet_5100) (b@@4 T@MultiSet_5100) ) (! (= (|MultiSet#Disjoint_5100| a@@6 b@@4) (forall ((o@@0 Int) ) (!  (or (= (|MultiSet#Select_5100| a@@6 o@@0) 0) (= (|MultiSet#Select_5100| b@@4 o@@0) 0))
 :qid |stdinbpl.727:39|
 :skolemid |116|
 :pattern ( (|MultiSet#Select_5100| a@@6 o@@0))
 :pattern ( (|MultiSet#Select_5100| b@@4 o@@0))
)))
 :qid |stdinbpl.726:18|
 :skolemid |117|
 :pattern ( (|MultiSet#Disjoint_5100| a@@6 b@@4))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_8173) (ExhaleHeap@@3 T@PolymorphicMapType_8173) (Mask@@4 T@PolymorphicMapType_8194) (o_12 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_8173_5208_53#PolymorphicMapType_8173| Heap@@4) o_12 $allocated) (select (|PolymorphicMapType_8173_5208_53#PolymorphicMapType_8173| ExhaleHeap@@3) o_12 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_8173_5208_53#PolymorphicMapType_8173| ExhaleHeap@@3) o_12 $allocated))
)))
(assert (forall ((p T@Field_8233_18144) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_8233_8233 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8233_8233 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_2864) (s1 T@Seq_2864) (n@@6 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_2864|)) (not (= s1 |Seq#Empty_2864|))) (<= (|Seq#Length_2864| s0) n@@6)) (< n@@6 (|Seq#Length_2864| (|Seq#Append_2864| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@6 (|Seq#Length_2864| s0)) (|Seq#Length_2864| s0)) n@@6) (= (|Seq#Index_2864| (|Seq#Append_2864| s0 s1) n@@6) (|Seq#Index_2864| s1 (|Seq#Sub| n@@6 (|Seq#Length_2864| s0))))))
 :qid |stdinbpl.240:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2864| (|Seq#Append_2864| s0 s1) n@@6))
)))
(assert (forall ((r Int) ) (!  (and (= (|MultiSet#Card_5100| (|MultiSet#Singleton_5100| r)) 1) (= (|MultiSet#Select_5100| (|MultiSet#Singleton_5100| r) r) 1))
 :qid |stdinbpl.669:18|
 :skolemid |98|
 :pattern ( (|MultiSet#Singleton_5100| r))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_8173) (ExhaleHeap@@4 T@PolymorphicMapType_8173) (Mask@@5 T@PolymorphicMapType_8194) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (succHeap Heap@@5 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_8194) (o_2@@3 T@Ref) (f_4@@3 T@Field_8233_18277) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_8194_8233_21838#PolymorphicMapType_8194| Mask@@6) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_8233_22747 f_4@@3))) (not (IsWandField_8233_22763 f_4@@3))) (<= (select (|PolymorphicMapType_8194_8233_21838#PolymorphicMapType_8194| Mask@@6) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_8194_8233_21838#PolymorphicMapType_8194| Mask@@6) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_8194) (o_2@@4 T@Ref) (f_4@@4 T@Field_8233_18144) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_8194_8233_18144#PolymorphicMapType_8194| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_8233_18235 f_4@@4))) (not (IsWandField_8233_19784 f_4@@4))) (<= (select (|PolymorphicMapType_8194_8233_18144#PolymorphicMapType_8194| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_8194_8233_18144#PolymorphicMapType_8194| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_8194) (o_2@@5 T@Ref) (f_4@@5 T@Field_8246_8247) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_8194_8233_8247#PolymorphicMapType_8194| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_8233_8247 f_4@@5))) (not (IsWandField_8233_8247 f_4@@5))) (<= (select (|PolymorphicMapType_8194_8233_8247#PolymorphicMapType_8194| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_8194_8233_8247#PolymorphicMapType_8194| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_8194) (o_2@@6 T@Ref) (f_4@@6 T@Field_8233_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_8194_8233_53#PolymorphicMapType_8194| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_8233_53 f_4@@6))) (not (IsWandField_8233_53 f_4@@6))) (<= (select (|PolymorphicMapType_8194_8233_53#PolymorphicMapType_8194| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_8194_8233_53#PolymorphicMapType_8194| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_8194) (o_2@@7 T@Ref) (f_4@@7 T@Field_8233_18277) ) (! (= (HasDirectPerm_8233_23118 Mask@@10 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_8194_8233_21838#PolymorphicMapType_8194| Mask@@10) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8233_23118 Mask@@10 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_8194) (o_2@@8 T@Ref) (f_4@@8 T@Field_8233_18144) ) (! (= (HasDirectPerm_8233_18208 Mask@@11 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_8194_8233_18144#PolymorphicMapType_8194| Mask@@11) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8233_18208 Mask@@11 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_8194) (o_2@@9 T@Ref) (f_4@@9 T@Field_8246_8247) ) (! (= (HasDirectPerm_8233_8247 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_8194_8233_8247#PolymorphicMapType_8194| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8233_8247 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_8194) (o_2@@10 T@Ref) (f_4@@10 T@Field_8233_53) ) (! (= (HasDirectPerm_8233_53 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_8194_8233_53#PolymorphicMapType_8194| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8233_53 Mask@@13 o_2@@10 f_4@@10))
)))
(assert (forall ((a@@7 T@MultiSet_5100) (b@@5 T@MultiSet_5100) ) (! (= (|MultiSet#Card_5100| (|MultiSet#Union_5100| a@@7 b@@5)) (+ (|MultiSet#Card_5100| a@@7) (|MultiSet#Card_5100| b@@5)))
 :qid |stdinbpl.687:18|
 :skolemid |104|
 :pattern ( (|MultiSet#Card_5100| (|MultiSet#Union_5100| a@@7 b@@5)))
 :pattern ( (|MultiSet#Card_5100| a@@7) (|MultiSet#Union_5100| a@@7 b@@5))
 :pattern ( (|MultiSet#Card_5100| b@@5) (|MultiSet#Union_5100| a@@7 b@@5))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@3 Int) ) (!  (=> (and (<= 0 j@@3) (< j@@3 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2864| (|Seq#Range| q@min@@0 q@max@@0) j@@3) (+ q@min@@0 j@@3)))
 :qid |stdinbpl.532:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2864| (|Seq#Range| q@min@@0 q@max@@0) j@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_8173) (ExhaleHeap@@5 T@PolymorphicMapType_8173) (Mask@@14 T@PolymorphicMapType_8194) (o_12@@0 T@Ref) (f_16@@7 T@Field_8233_18277) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (=> (HasDirectPerm_8233_23118 Mask@@14 o_12@@0 f_16@@7) (= (select (|PolymorphicMapType_8173_8233_18321#PolymorphicMapType_8173| Heap@@6) o_12@@0 f_16@@7) (select (|PolymorphicMapType_8173_8233_18321#PolymorphicMapType_8173| ExhaleHeap@@5) o_12@@0 f_16@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (select (|PolymorphicMapType_8173_8233_18321#PolymorphicMapType_8173| ExhaleHeap@@5) o_12@@0 f_16@@7))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_8173) (ExhaleHeap@@6 T@PolymorphicMapType_8173) (Mask@@15 T@PolymorphicMapType_8194) (o_12@@1 T@Ref) (f_16@@8 T@Field_8233_18144) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (=> (HasDirectPerm_8233_18208 Mask@@15 o_12@@1 f_16@@8) (= (select (|PolymorphicMapType_8173_8233_18144#PolymorphicMapType_8173| Heap@@7) o_12@@1 f_16@@8) (select (|PolymorphicMapType_8173_8233_18144#PolymorphicMapType_8173| ExhaleHeap@@6) o_12@@1 f_16@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (select (|PolymorphicMapType_8173_8233_18144#PolymorphicMapType_8173| ExhaleHeap@@6) o_12@@1 f_16@@8))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_8173) (ExhaleHeap@@7 T@PolymorphicMapType_8173) (Mask@@16 T@PolymorphicMapType_8194) (o_12@@2 T@Ref) (f_16@@9 T@Field_8246_8247) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (=> (HasDirectPerm_8233_8247 Mask@@16 o_12@@2 f_16@@9) (= (select (|PolymorphicMapType_8173_5211_5212#PolymorphicMapType_8173| Heap@@8) o_12@@2 f_16@@9) (select (|PolymorphicMapType_8173_5211_5212#PolymorphicMapType_8173| ExhaleHeap@@7) o_12@@2 f_16@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (select (|PolymorphicMapType_8173_5211_5212#PolymorphicMapType_8173| ExhaleHeap@@7) o_12@@2 f_16@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_8173) (ExhaleHeap@@8 T@PolymorphicMapType_8173) (Mask@@17 T@PolymorphicMapType_8194) (o_12@@3 T@Ref) (f_16@@10 T@Field_8233_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (=> (HasDirectPerm_8233_53 Mask@@17 o_12@@3 f_16@@10) (= (select (|PolymorphicMapType_8173_5208_53#PolymorphicMapType_8173| Heap@@9) o_12@@3 f_16@@10) (select (|PolymorphicMapType_8173_5208_53#PolymorphicMapType_8173| ExhaleHeap@@8) o_12@@3 f_16@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (select (|PolymorphicMapType_8173_5208_53#PolymorphicMapType_8173| ExhaleHeap@@8) o_12@@3 f_16@@10))
)))
(assert (forall ((s0@@0 T@Seq_2864) (s1@@0 T@Seq_2864) ) (!  (=> (and (not (= s0@@0 |Seq#Empty_2864|)) (not (= s1@@0 |Seq#Empty_2864|))) (= (|Seq#Length_2864| (|Seq#Append_2864| s0@@0 s1@@0)) (+ (|Seq#Length_2864| s0@@0) (|Seq#Length_2864| s1@@0))))
 :qid |stdinbpl.209:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2864| (|Seq#Append_2864| s0@@0 s1@@0)))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_8233_18277) ) (! (= (select (|PolymorphicMapType_8194_8233_21838#PolymorphicMapType_8194| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8194_8233_21838#PolymorphicMapType_8194| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_8233_18144) ) (! (= (select (|PolymorphicMapType_8194_8233_18144#PolymorphicMapType_8194| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8194_8233_18144#PolymorphicMapType_8194| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_8246_8247) ) (! (= (select (|PolymorphicMapType_8194_8233_8247#PolymorphicMapType_8194| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8194_8233_8247#PolymorphicMapType_8194| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_8233_53) ) (! (= (select (|PolymorphicMapType_8194_8233_53#PolymorphicMapType_8194| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8194_8233_53#PolymorphicMapType_8194| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((s@@7 T@Seq_2864) (t@@0 T@Seq_2864) (n@@7 Int) ) (!  (=> (and (> n@@7 0) (> n@@7 (|Seq#Length_2864| s@@7))) (and (= (|Seq#Add| (|Seq#Sub| n@@7 (|Seq#Length_2864| s@@7)) (|Seq#Length_2864| s@@7)) n@@7) (= (|Seq#Drop_2864| (|Seq#Append_2864| s@@7 t@@0) n@@7) (|Seq#Drop_2864| t@@0 (|Seq#Sub| n@@7 (|Seq#Length_2864| s@@7))))))
 :qid |stdinbpl.366:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_2864| (|Seq#Append_2864| s@@7 t@@0) n@@7))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_8194) (SummandMask1 T@PolymorphicMapType_8194) (SummandMask2 T@PolymorphicMapType_8194) (o_2@@15 T@Ref) (f_4@@15 T@Field_8233_18277) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_8194_8233_21838#PolymorphicMapType_8194| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_8194_8233_21838#PolymorphicMapType_8194| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_8194_8233_21838#PolymorphicMapType_8194| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8194_8233_21838#PolymorphicMapType_8194| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8194_8233_21838#PolymorphicMapType_8194| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8194_8233_21838#PolymorphicMapType_8194| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_8194) (SummandMask1@@0 T@PolymorphicMapType_8194) (SummandMask2@@0 T@PolymorphicMapType_8194) (o_2@@16 T@Ref) (f_4@@16 T@Field_8233_18144) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_8194_8233_18144#PolymorphicMapType_8194| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_8194_8233_18144#PolymorphicMapType_8194| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_8194_8233_18144#PolymorphicMapType_8194| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8194_8233_18144#PolymorphicMapType_8194| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8194_8233_18144#PolymorphicMapType_8194| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8194_8233_18144#PolymorphicMapType_8194| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_8194) (SummandMask1@@1 T@PolymorphicMapType_8194) (SummandMask2@@1 T@PolymorphicMapType_8194) (o_2@@17 T@Ref) (f_4@@17 T@Field_8246_8247) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_8194_8233_8247#PolymorphicMapType_8194| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_8194_8233_8247#PolymorphicMapType_8194| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_8194_8233_8247#PolymorphicMapType_8194| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8194_8233_8247#PolymorphicMapType_8194| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8194_8233_8247#PolymorphicMapType_8194| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8194_8233_8247#PolymorphicMapType_8194| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_8194) (SummandMask1@@2 T@PolymorphicMapType_8194) (SummandMask2@@2 T@PolymorphicMapType_8194) (o_2@@18 T@Ref) (f_4@@18 T@Field_8233_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_8194_8233_53#PolymorphicMapType_8194| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_8194_8233_53#PolymorphicMapType_8194| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_8194_8233_53#PolymorphicMapType_8194| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8194_8233_53#PolymorphicMapType_8194| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8194_8233_53#PolymorphicMapType_8194| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8194_8233_53#PolymorphicMapType_8194| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2864| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2864| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.531:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2864| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a@@8 T@Seq_2864) (b@@6 T@Seq_2864) ) (!  (=> (|Seq#Equal_2864| a@@8 b@@6) (= a@@8 b@@6))
 :qid |stdinbpl.504:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_2864| a@@8 b@@6))
)))
(assert (forall ((a@@9 T@MultiSet_5100) (b@@7 T@MultiSet_5100) ) (!  (=> (|MultiSet#Equal_5100| a@@9 b@@7) (= a@@9 b@@7))
 :qid |stdinbpl.722:17|
 :skolemid |115|
 :pattern ( (|MultiSet#Equal_5100| a@@9 b@@7))
)))
(assert (forall ((ms T@MultiSet_5100) (x@@2 Int) ) (! (>= (|MultiSet#Select_5100| ms x@@2) 0)
 :qid |stdinbpl.653:18|
 :skolemid |92|
 :pattern ( (|MultiSet#Select_5100| ms x@@2))
)))
(assert (forall ((s@@8 T@Seq_2864) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length_2864| s@@8))) (|Seq#ContainsTrigger_2864| s@@8 (|Seq#Index_2864| s@@8 i@@2)))
 :qid |stdinbpl.397:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2864| s@@8 i@@2))
)))
(assert (forall ((s0@@1 T@Seq_2864) (s1@@1 T@Seq_2864) ) (!  (and (=> (= s0@@1 |Seq#Empty_2864|) (= (|Seq#Append_2864| s0@@1 s1@@1) s1@@1)) (=> (= s1@@1 |Seq#Empty_2864|) (= (|Seq#Append_2864| s0@@1 s1@@1) s0@@1)))
 :qid |stdinbpl.215:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_2864| s0@@1 s1@@1))
)))
(assert (forall ((t@@1 Int) ) (! (= (|Seq#Index_2864| (|Seq#Singleton_2864| t@@1) 0) t@@1)
 :qid |stdinbpl.219:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_2864| t@@1))
)))
(assert (forall ((s@@9 T@Seq_2864) ) (! (<= 0 (|Seq#Length_2864| s@@9))
 :qid |stdinbpl.198:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2864| s@@9))
)))
(assert (forall ((s@@10 T@MultiSet_5100) ) (! (<= 0 (|MultiSet#Card_5100| s@@10))
 :qid |stdinbpl.656:18|
 :skolemid |93|
 :pattern ( (|MultiSet#Card_5100| s@@10))
)))
(assert (forall ((o@@1 Int) ) (! (= (|MultiSet#Select_5100| |MultiSet#Empty_5100| o@@1) 0)
 :qid |stdinbpl.661:18|
 :skolemid |94|
 :pattern ( (|MultiSet#Select_5100| |MultiSet#Empty_5100| o@@1))
)))
(assert (forall ((s0@@2 T@Seq_2864) (s1@@2 T@Seq_2864) ) (!  (=> (|Seq#Equal_2864| s0@@2 s1@@2) (and (= (|Seq#Length_2864| s0@@2) (|Seq#Length_2864| s1@@2)) (forall ((j@@4 Int) ) (!  (=> (and (<= 0 j@@4) (< j@@4 (|Seq#Length_2864| s0@@2))) (= (|Seq#Index_2864| s0@@2 j@@4) (|Seq#Index_2864| s1@@2 j@@4)))
 :qid |stdinbpl.494:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2864| s0@@2 j@@4))
 :pattern ( (|Seq#Index_2864| s1@@2 j@@4))
))))
 :qid |stdinbpl.491:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_2864| s0@@2 s1@@2))
)))
(assert (forall ((a@@10 T@MultiSet_5100) (x@@3 Int) ) (!  (and (> (|MultiSet#Select_5100| (|MultiSet#UnionOne_5100| a@@10 x@@3) x@@3) 0) (> (|MultiSet#Card_5100| (|MultiSet#UnionOne_5100| a@@10 x@@3)) 0))
 :qid |stdinbpl.680:18|
 :skolemid |102|
 :pattern ( (|MultiSet#UnionOne_5100| a@@10 x@@3))
)))
(assert (forall ((t@@2 Int) ) (! (= (|Seq#Length_2864| (|Seq#Singleton_2864| t@@2)) 1)
 :qid |stdinbpl.206:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_2864| t@@2))
)))
(assert (forall ((a@@11 T@MultiSet_5100) (b@@8 T@MultiSet_5100) ) (! (= (|MultiSet#Intersection_5100| a@@11 (|MultiSet#Intersection_5100| a@@11 b@@8)) (|MultiSet#Intersection_5100| a@@11 b@@8))
 :qid |stdinbpl.697:18|
 :skolemid |107|
 :pattern ( (|MultiSet#Intersection_5100| a@@11 (|MultiSet#Intersection_5100| a@@11 b@@8)))
)))
(assert (forall ((s@@11 T@MultiSet_5100) ) (!  (and (= (= (|MultiSet#Card_5100| s@@11) 0) (= s@@11 |MultiSet#Empty_5100|)) (=> (not (= (|MultiSet#Card_5100| s@@11) 0)) (exists ((x@@4 Int) ) (! (< 0 (|MultiSet#Select_5100| s@@11 x@@4))
 :qid |stdinbpl.664:38|
 :skolemid |95|
))))
 :qid |stdinbpl.662:18|
 :skolemid |96|
 :pattern ( (|MultiSet#Card_5100| s@@11))
)))
(assert (forall ((r@@0 Int) (o@@2 Int) ) (!  (and (= (= (|MultiSet#Select_5100| (|MultiSet#Singleton_5100| r@@0) o@@2) 1) (= r@@0 o@@2)) (= (= (|MultiSet#Select_5100| (|MultiSet#Singleton_5100| r@@0) o@@2) 0) (not (= r@@0 o@@2))))
 :qid |stdinbpl.667:18|
 :skolemid |97|
 :pattern ( (|MultiSet#Select_5100| (|MultiSet#Singleton_5100| r@@0) o@@2))
)))
(assert (forall ((a@@12 T@MultiSet_5100) (b@@9 T@MultiSet_5100) (o@@3 Int) ) (! (= (|MultiSet#Select_5100| (|MultiSet#Union_5100| a@@12 b@@9) o@@3) (+ (|MultiSet#Select_5100| a@@12 o@@3) (|MultiSet#Select_5100| b@@9 o@@3)))
 :qid |stdinbpl.685:18|
 :skolemid |103|
 :pattern ( (|MultiSet#Select_5100| (|MultiSet#Union_5100| a@@12 b@@9) o@@3))
 :pattern ( (|MultiSet#Union_5100| a@@12 b@@9) (|MultiSet#Select_5100| a@@12 o@@3) (|MultiSet#Select_5100| b@@9 o@@3))
)))
(assert (forall ((s@@12 T@Seq_2864) (t@@3 T@Seq_2864) (n@@8 Int) ) (!  (=> (and (< 0 n@@8) (<= n@@8 (|Seq#Length_2864| s@@12))) (= (|Seq#Take_2864| (|Seq#Append_2864| s@@12 t@@3) n@@8) (|Seq#Take_2864| s@@12 n@@8)))
 :qid |stdinbpl.348:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2864| (|Seq#Append_2864| s@@12 t@@3) n@@8))
)))
(assert (forall ((s@@13 T@Seq_2864) (i@@3 Int) (v@@1 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_2864| s@@13))) (= (|Seq#Length_2864| (|Seq#Update_2864| s@@13 i@@3 v@@1)) (|Seq#Length_2864| s@@13)))
 :qid |stdinbpl.247:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2864| (|Seq#Update_2864| s@@13 i@@3 v@@1)))
 :pattern ( (|Seq#Length_2864| s@@13) (|Seq#Update_2864| s@@13 i@@3 v@@1))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_8173) (o_11 T@Ref) (f_17 T@Field_8233_18144) (v@@2 T@FrameType) ) (! (succHeap Heap@@10 (PolymorphicMapType_8173 (|PolymorphicMapType_8173_5208_53#PolymorphicMapType_8173| Heap@@10) (|PolymorphicMapType_8173_5211_5212#PolymorphicMapType_8173| Heap@@10) (|PolymorphicMapType_8173_8233_18321#PolymorphicMapType_8173| Heap@@10) (store (|PolymorphicMapType_8173_8233_18144#PolymorphicMapType_8173| Heap@@10) o_11 f_17 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8173 (|PolymorphicMapType_8173_5208_53#PolymorphicMapType_8173| Heap@@10) (|PolymorphicMapType_8173_5211_5212#PolymorphicMapType_8173| Heap@@10) (|PolymorphicMapType_8173_8233_18321#PolymorphicMapType_8173| Heap@@10) (store (|PolymorphicMapType_8173_8233_18144#PolymorphicMapType_8173| Heap@@10) o_11 f_17 v@@2)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_8173) (o_11@@0 T@Ref) (f_17@@0 T@Field_8233_18277) (v@@3 T@PolymorphicMapType_8722) ) (! (succHeap Heap@@11 (PolymorphicMapType_8173 (|PolymorphicMapType_8173_5208_53#PolymorphicMapType_8173| Heap@@11) (|PolymorphicMapType_8173_5211_5212#PolymorphicMapType_8173| Heap@@11) (store (|PolymorphicMapType_8173_8233_18321#PolymorphicMapType_8173| Heap@@11) o_11@@0 f_17@@0 v@@3) (|PolymorphicMapType_8173_8233_18144#PolymorphicMapType_8173| Heap@@11)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8173 (|PolymorphicMapType_8173_5208_53#PolymorphicMapType_8173| Heap@@11) (|PolymorphicMapType_8173_5211_5212#PolymorphicMapType_8173| Heap@@11) (store (|PolymorphicMapType_8173_8233_18321#PolymorphicMapType_8173| Heap@@11) o_11@@0 f_17@@0 v@@3) (|PolymorphicMapType_8173_8233_18144#PolymorphicMapType_8173| Heap@@11)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_8173) (o_11@@1 T@Ref) (f_17@@1 T@Field_8246_8247) (v@@4 T@Ref) ) (! (succHeap Heap@@12 (PolymorphicMapType_8173 (|PolymorphicMapType_8173_5208_53#PolymorphicMapType_8173| Heap@@12) (store (|PolymorphicMapType_8173_5211_5212#PolymorphicMapType_8173| Heap@@12) o_11@@1 f_17@@1 v@@4) (|PolymorphicMapType_8173_8233_18321#PolymorphicMapType_8173| Heap@@12) (|PolymorphicMapType_8173_8233_18144#PolymorphicMapType_8173| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8173 (|PolymorphicMapType_8173_5208_53#PolymorphicMapType_8173| Heap@@12) (store (|PolymorphicMapType_8173_5211_5212#PolymorphicMapType_8173| Heap@@12) o_11@@1 f_17@@1 v@@4) (|PolymorphicMapType_8173_8233_18321#PolymorphicMapType_8173| Heap@@12) (|PolymorphicMapType_8173_8233_18144#PolymorphicMapType_8173| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_8173) (o_11@@2 T@Ref) (f_17@@2 T@Field_8233_53) (v@@5 Bool) ) (! (succHeap Heap@@13 (PolymorphicMapType_8173 (store (|PolymorphicMapType_8173_5208_53#PolymorphicMapType_8173| Heap@@13) o_11@@2 f_17@@2 v@@5) (|PolymorphicMapType_8173_5211_5212#PolymorphicMapType_8173| Heap@@13) (|PolymorphicMapType_8173_8233_18321#PolymorphicMapType_8173| Heap@@13) (|PolymorphicMapType_8173_8233_18144#PolymorphicMapType_8173| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8173 (store (|PolymorphicMapType_8173_5208_53#PolymorphicMapType_8173| Heap@@13) o_11@@2 f_17@@2 v@@5) (|PolymorphicMapType_8173_5211_5212#PolymorphicMapType_8173| Heap@@13) (|PolymorphicMapType_8173_8233_18321#PolymorphicMapType_8173| Heap@@13) (|PolymorphicMapType_8173_8233_18144#PolymorphicMapType_8173| Heap@@13)))
)))
(assert (forall ((r@@1 Int) ) (! (= (|MultiSet#Singleton_5100| r@@1) (|MultiSet#UnionOne_5100| |MultiSet#Empty_5100| r@@1))
 :qid |stdinbpl.670:18|
 :skolemid |99|
 :pattern ( (|MultiSet#Singleton_5100| r@@1))
)))
(assert (forall ((s@@14 T@Seq_2864) (t@@4 T@Seq_2864) (n@@9 Int) ) (!  (=> (and (< 0 n@@9) (<= n@@9 (|Seq#Length_2864| s@@14))) (= (|Seq#Drop_2864| (|Seq#Append_2864| s@@14 t@@4) n@@9) (|Seq#Append_2864| (|Seq#Drop_2864| s@@14 n@@9) t@@4)))
 :qid |stdinbpl.362:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_2864| (|Seq#Append_2864| s@@14 t@@4) n@@9))
)))
(assert (forall ((a@@13 Int) (b@@10 Int) ) (! (= (<= a@@13 b@@10) (= (|Math#min| a@@13 b@@10) a@@13))
 :qid |stdinbpl.635:15|
 :skolemid |87|
 :pattern ( (|Math#min| a@@13 b@@10))
)))
(assert (forall ((a@@14 Int) (b@@11 Int) ) (! (= (<= b@@11 a@@14) (= (|Math#min| a@@14 b@@11) b@@11))
 :qid |stdinbpl.636:15|
 :skolemid |88|
 :pattern ( (|Math#min| a@@14 b@@11))
)))
(assert (forall ((s@@15 T@Seq_2864) (n@@10 Int) (i@@4 Int) ) (!  (=> (and (and (< 0 n@@10) (<= n@@10 i@@4)) (< i@@4 (|Seq#Length_2864| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| i@@4 n@@10) n@@10) i@@4) (= (|Seq#Index_2864| (|Seq#Drop_2864| s@@15 n@@10) (|Seq#Sub| i@@4 n@@10)) (|Seq#Index_2864| s@@15 i@@4))))
 :qid |stdinbpl.298:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_2864| s@@15 n@@10) (|Seq#Index_2864| s@@15 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_2864) (s1@@3 T@Seq_2864) (n@@11 Int) ) (!  (=> (and (and (and (not (= s0@@3 |Seq#Empty_2864|)) (not (= s1@@3 |Seq#Empty_2864|))) (<= 0 n@@11)) (< n@@11 (|Seq#Length_2864| s0@@3))) (= (|Seq#Index_2864| (|Seq#Append_2864| s0@@3 s1@@3) n@@11) (|Seq#Index_2864| s0@@3 n@@11)))
 :qid |stdinbpl.238:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2864| (|Seq#Append_2864| s0@@3 s1@@3) n@@11))
 :pattern ( (|Seq#Index_2864| s0@@3 n@@11) (|Seq#Append_2864| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2864) (s1@@4 T@Seq_2864) (m Int) ) (!  (=> (and (and (and (not (= s0@@4 |Seq#Empty_2864|)) (not (= s1@@4 |Seq#Empty_2864|))) (<= 0 m)) (< m (|Seq#Length_2864| s1@@4))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_2864| s0@@4)) (|Seq#Length_2864| s0@@4)) m) (= (|Seq#Index_2864| (|Seq#Append_2864| s0@@4 s1@@4) (|Seq#Add| m (|Seq#Length_2864| s0@@4))) (|Seq#Index_2864| s1@@4 m))))
 :qid |stdinbpl.243:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2864| s1@@4 m) (|Seq#Append_2864| s0@@4 s1@@4))
)))
(assert (forall ((a@@15 T@MultiSet_5100) (b@@12 T@MultiSet_5100) (o@@4 Int) ) (! (= (|MultiSet#Select_5100| (|MultiSet#Difference_5100| a@@15 b@@12) o@@4) (|Math#clip| (- (|MultiSet#Select_5100| a@@15 o@@4) (|MultiSet#Select_5100| b@@12 o@@4))))
 :qid |stdinbpl.702:18|
 :skolemid |108|
 :pattern ( (|MultiSet#Select_5100| (|MultiSet#Difference_5100| a@@15 b@@12) o@@4))
)))
(assert (forall ((o_11@@3 T@Ref) (f_10 T@Field_8246_8247) (Heap@@14 T@PolymorphicMapType_8173) ) (!  (=> (select (|PolymorphicMapType_8173_5208_53#PolymorphicMapType_8173| Heap@@14) o_11@@3 $allocated) (select (|PolymorphicMapType_8173_5208_53#PolymorphicMapType_8173| Heap@@14) (select (|PolymorphicMapType_8173_5211_5212#PolymorphicMapType_8173| Heap@@14) o_11@@3 f_10) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_8173_5211_5212#PolymorphicMapType_8173| Heap@@14) o_11@@3 f_10))
)))
(assert (forall ((s@@16 T@Seq_2864) (x@@5 Int) (i@@5 Int) ) (!  (=> (and (and (<= 0 i@@5) (< i@@5 (|Seq#Length_2864| s@@16))) (= (|Seq#Index_2864| s@@16 i@@5) x@@5)) (|Seq#Contains_2864| s@@16 x@@5))
 :qid |stdinbpl.395:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2864| s@@16 x@@5) (|Seq#Index_2864| s@@16 i@@5))
)))
(assert (forall ((s0@@5 T@Seq_2864) (s1@@5 T@Seq_2864) ) (!  (or (or (and (= s0@@5 s1@@5) (|Seq#Equal_2864| s0@@5 s1@@5)) (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_2864| s0@@5 s1@@5))) (not (= (|Seq#Length_2864| s0@@5) (|Seq#Length_2864| s1@@5))))) (and (and (and (and (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_2864| s0@@5 s1@@5))) (= (|Seq#Length_2864| s0@@5) (|Seq#Length_2864| s1@@5))) (= (|Seq#SkolemDiff_2864| s0@@5 s1@@5) (|Seq#SkolemDiff_2864| s1@@5 s0@@5))) (<= 0 (|Seq#SkolemDiff_2864| s0@@5 s1@@5))) (< (|Seq#SkolemDiff_2864| s0@@5 s1@@5) (|Seq#Length_2864| s0@@5))) (not (= (|Seq#Index_2864| s0@@5 (|Seq#SkolemDiff_2864| s0@@5 s1@@5)) (|Seq#Index_2864| s1@@5 (|Seq#SkolemDiff_2864| s0@@5 s1@@5))))))
 :qid |stdinbpl.499:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_2864| s0@@5 s1@@5))
)))
(assert (forall ((p@@1 T@Field_8233_18144) (v_1@@0 T@FrameType) (q T@Field_8233_18144) (w@@0 T@FrameType) (r@@2 T@Field_8233_18144) (u T@FrameType) ) (!  (=> (and (InsidePredicate_8233_8233 p@@1 v_1@@0 q w@@0) (InsidePredicate_8233_8233 q w@@0 r@@2 u)) (InsidePredicate_8233_8233 p@@1 v_1@@0 r@@2 u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8233_8233 p@@1 v_1@@0 q w@@0) (InsidePredicate_8233_8233 q w@@0 r@@2 u))
)))
(assert (forall ((a@@16 Int) ) (!  (=> (< a@@16 0) (= (|Math#clip| a@@16) 0))
 :qid |stdinbpl.641:15|
 :skolemid |91|
 :pattern ( (|Math#clip| a@@16))
)))
(assert (forall ((s@@17 T@Seq_2864) ) (!  (=> (= (|Seq#Length_2864| s@@17) 0) (= s@@17 |Seq#Empty_2864|))
 :qid |stdinbpl.202:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2864| s@@17))
)))
(assert (forall ((s@@18 T@Seq_2864) (n@@12 Int) ) (!  (=> (<= n@@12 0) (= (|Seq#Take_2864| s@@18 n@@12) |Seq#Empty_2864|))
 :qid |stdinbpl.378:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_2864| s@@18 n@@12))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@17 T@MultiSet_5100) (x@@6 Int) (o@@5 Int) ) (! (= (|MultiSet#Select_5100| (|MultiSet#UnionOne_5100| a@@17 x@@6) o@@5) (ite (= x@@6 o@@5) (+ (|MultiSet#Select_5100| a@@17 o@@5) 1) (|MultiSet#Select_5100| a@@17 o@@5)))
 :qid |stdinbpl.674:18|
 :skolemid |100|
 :pattern ( (|MultiSet#Select_5100| (|MultiSet#UnionOne_5100| a@@17 x@@6) o@@5))
 :pattern ( (|MultiSet#UnionOne_5100| a@@17 x@@6) (|MultiSet#Select_5100| a@@17 o@@5))
)))
(assert (forall ((a@@18 T@MultiSet_5100) (b@@13 T@MultiSet_5100) ) (! (= (|MultiSet#Equal_5100| a@@18 b@@13) (forall ((o@@6 Int) ) (! (= (|MultiSet#Select_5100| a@@18 o@@6) (|MultiSet#Select_5100| b@@13 o@@6))
 :qid |stdinbpl.720:36|
 :skolemid |113|
 :pattern ( (|MultiSet#Select_5100| a@@18 o@@6))
 :pattern ( (|MultiSet#Select_5100| b@@13 o@@6))
)))
 :qid |stdinbpl.719:17|
 :skolemid |114|
 :pattern ( (|MultiSet#Equal_5100| a@@18 b@@13))
)))
(assert (forall ((a@@19 T@MultiSet_5100) (b@@14 T@MultiSet_5100) ) (! (= (|MultiSet#Subset_5100| a@@19 b@@14) (forall ((o@@7 Int) ) (! (<= (|MultiSet#Select_5100| a@@19 o@@7) (|MultiSet#Select_5100| b@@14 o@@7))
 :qid |stdinbpl.716:37|
 :skolemid |111|
 :pattern ( (|MultiSet#Select_5100| a@@19 o@@7))
 :pattern ( (|MultiSet#Select_5100| b@@14 o@@7))
)))
 :qid |stdinbpl.715:17|
 :skolemid |112|
 :pattern ( (|MultiSet#Subset_5100| a@@19 b@@14))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun l_2 () T@Seq_2864)
(declare-fun Heap@@15 () T@PolymorphicMapType_8173)
(declare-fun i_14 () Int)
(set-info :boogie-vc-id q_20)
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
 (=> (= (ControlFlow 0 0) 13) (let ((anon9_Else_correct  (and (=> (= (ControlFlow 0 8) (- 0 10)) (>= (ite (exists ((i_4_1 Int) (s_2_1 T@MultiSet_5100) ) (! (= i_4_1 0)
 :qid |stdinbpl.783:21|
 :skolemid |119|
)) 1 2) 0)) (=> (>= (ite (exists ((i_4_1@@0 Int) (s_2_1@@0 T@MultiSet_5100) ) (! (= i_4_1@@0 0)
 :qid |stdinbpl.783:21|
 :skolemid |119|
)) 1 2) 0) (and (=> (= (ControlFlow 0 8) (- 0 9)) (< (ite (exists ((i_4_1@@1 Int) (s_2_1@@1 T@MultiSet_5100) ) (! (= i_4_1@@1 0)
 :qid |stdinbpl.788:21|
 :skolemid |120|
)) 1 2) (|Seq#Length_2864| l_2))) (=> (< (ite (exists ((i_4_1@@2 Int) (s_2_1@@2 T@MultiSet_5100) ) (! (= i_4_1@@2 0)
 :qid |stdinbpl.788:21|
 :skolemid |120|
)) 1 2) (|Seq#Length_2864| l_2)) (=> (= (ControlFlow 0 8) (- 0 7)) (= (|Seq#Index_2864| l_2 (ite (exists ((i_5 Int) (s_3 T@MultiSet_5100) ) (! (= i_5 0)
 :qid |stdinbpl.793:34|
 :skolemid |121|
)) 1 2)) 4))))))))
(let ((anon9_Then_correct true))
(let ((anon7_Else_correct  (=> (and (forall ((i_1 Int) ) (!  (=> (and (<= 0 i_1) (< i_1 (|Seq#Length_2864| l_2))) (= (|Seq#Index_2864| l_2 i_1) 4))
 :qid |stdinbpl.762:20|
 :skolemid |118|
 :pattern ( (|Seq#Index_2864| l_2 i_1))
)) (state Heap@@15 ZeroMask)) (and (=> (= (ControlFlow 0 11) 6) anon9_Then_correct) (=> (= (ControlFlow 0 11) 8) anon9_Else_correct)))))
(let ((anon3_correct true))
(let ((anon8_Else_correct  (=> (and (not (and (<= 0 i_14) (< i_14 (|Seq#Length_2864| l_2)))) (= (ControlFlow 0 5) 1)) anon3_correct)))
(let ((anon8_Then_correct  (=> (and (<= 0 i_14) (< i_14 (|Seq#Length_2864| l_2))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= i_14 0)) (=> (>= i_14 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< i_14 (|Seq#Length_2864| l_2))) (=> (< i_14 (|Seq#Length_2864| l_2)) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))))
(let ((anon0_correct  (=> (state Heap@@15 ZeroMask) (=> (and AssumePermUpperBound (= (|Seq#Length_2864| l_2) 3)) (and (and (=> (= (ControlFlow 0 12) 11) anon7_Else_correct) (=> (= (ControlFlow 0 12) 2) anon8_Then_correct)) (=> (= (ControlFlow 0 12) 5) anon8_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 13) 12) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
