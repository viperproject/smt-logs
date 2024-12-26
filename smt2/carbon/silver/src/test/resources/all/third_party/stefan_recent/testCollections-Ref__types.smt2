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
(declare-sort T@Field_8983_53 0)
(declare-sort T@Field_8996_8997 0)
(declare-sort T@Field_8983_20778 0)
(declare-sort T@Field_8983_20645 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_8944 0)) (((PolymorphicMapType_8944 (|PolymorphicMapType_8944_8983_53#PolymorphicMapType_8944| (Array T@Ref T@Field_8983_53 Real)) (|PolymorphicMapType_8944_8983_8997#PolymorphicMapType_8944| (Array T@Ref T@Field_8996_8997 Real)) (|PolymorphicMapType_8944_8983_20645#PolymorphicMapType_8944| (Array T@Ref T@Field_8983_20645 Real)) (|PolymorphicMapType_8944_8983_24339#PolymorphicMapType_8944| (Array T@Ref T@Field_8983_20778 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9472 0)) (((PolymorphicMapType_9472 (|PolymorphicMapType_9472_8983_53#PolymorphicMapType_9472| (Array T@Ref T@Field_8983_53 Bool)) (|PolymorphicMapType_9472_8983_8997#PolymorphicMapType_9472| (Array T@Ref T@Field_8996_8997 Bool)) (|PolymorphicMapType_9472_8983_20645#PolymorphicMapType_9472| (Array T@Ref T@Field_8983_20645 Bool)) (|PolymorphicMapType_9472_8983_21758#PolymorphicMapType_9472| (Array T@Ref T@Field_8983_20778 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8923 0)) (((PolymorphicMapType_8923 (|PolymorphicMapType_8923_5468_53#PolymorphicMapType_8923| (Array T@Ref T@Field_8983_53 Bool)) (|PolymorphicMapType_8923_5471_5472#PolymorphicMapType_8923| (Array T@Ref T@Field_8996_8997 T@Ref)) (|PolymorphicMapType_8923_8983_20822#PolymorphicMapType_8923| (Array T@Ref T@Field_8983_20778 T@PolymorphicMapType_9472)) (|PolymorphicMapType_8923_8983_20645#PolymorphicMapType_8923| (Array T@Ref T@Field_8983_20645 T@FrameType)) ) ) ))
(declare-sort T@Seq_2864 0)
(declare-fun |Seq#Length_2864| (T@Seq_2864) Int)
(declare-fun |Seq#Drop_2864| (T@Seq_2864 Int) T@Seq_2864)
(declare-fun succHeap (T@PolymorphicMapType_8923 T@PolymorphicMapType_8923) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_8923 T@PolymorphicMapType_8923) Bool)
(declare-sort T@MultiSet_5014 0)
(declare-fun |MultiSet#Card_5014| (T@MultiSet_5014) Int)
(declare-fun |MultiSet#Difference_5014| (T@MultiSet_5014 T@MultiSet_5014) T@MultiSet_5014)
(declare-fun |MultiSet#Intersection_5014| (T@MultiSet_5014 T@MultiSet_5014) T@MultiSet_5014)
(declare-fun |MultiSet#Union_5014| (T@MultiSet_5014 T@MultiSet_5014) T@MultiSet_5014)
(declare-fun state (T@PolymorphicMapType_8923 T@PolymorphicMapType_8944) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_8944) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_9472)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Seq#Index_2864| (T@Seq_2864 Int) Int)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Empty_2864| () T@Seq_2864)
(declare-fun |Seq#Update_2864| (T@Seq_2864 Int Int) T@Seq_2864)
(declare-fun |MultiSet#Select_5014| (T@MultiSet_5014 Int) Int)
(declare-fun |Set#Union_3| ((Array Int Bool) (Array Int Bool)) (Array Int Bool))
(declare-fun |Set#Intersection_3| ((Array Int Bool) (Array Int Bool)) (Array Int Bool))
(declare-fun |Set#Singleton_3| (Int) (Array Int Bool))
(declare-fun |Seq#Take_2864| (T@Seq_2864 Int) T@Seq_2864)
(declare-fun |Seq#Contains_2864| (T@Seq_2864 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2864)
(declare-fun |Set#Card_3| ((Array Int Bool)) Int)
(declare-fun |Seq#Skolem_2864| (T@Seq_2864 Int) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_8923 T@PolymorphicMapType_8923 T@PolymorphicMapType_8944) Bool)
(declare-fun IsPredicateField_8983_20736 (T@Field_8983_20645) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_8983 (T@Field_8983_20645) T@Field_8983_20778)
(declare-fun HasDirectPerm_8983_20709 (T@PolymorphicMapType_8944 T@Ref T@Field_8983_20645) Bool)
(declare-fun IsWandField_8983_22285 (T@Field_8983_20645) Bool)
(declare-fun WandMaskField_8983 (T@Field_8983_20645) T@Field_8983_20778)
(declare-fun |Seq#Singleton_3| (Int) T@Seq_2864)
(declare-fun |Seq#Append_3| (T@Seq_2864 T@Seq_2864) T@Seq_2864)
(declare-fun dummyHeap () T@PolymorphicMapType_8923)
(declare-fun ZeroMask () T@PolymorphicMapType_8944)
(declare-fun |MultiSet#UnionOne_3| (T@MultiSet_5014 Int) T@MultiSet_5014)
(declare-fun |MultiSet#Disjoint_5014| (T@MultiSet_5014 T@MultiSet_5014) Bool)
(declare-fun $allocated () T@Field_8983_53)
(declare-fun InsidePredicate_8983_8983 (T@Field_8983_20645 T@FrameType T@Field_8983_20645 T@FrameType) Bool)
(declare-fun |MultiSet#Singleton_3| (Int) T@MultiSet_5014)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_8983_25248 (T@Field_8983_20778) Bool)
(declare-fun IsWandField_8983_25264 (T@Field_8983_20778) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_8983_8997 (T@Field_8996_8997) Bool)
(declare-fun IsWandField_8983_8997 (T@Field_8996_8997) Bool)
(declare-fun IsPredicateField_8983_53 (T@Field_8983_53) Bool)
(declare-fun IsWandField_8983_53 (T@Field_8983_53) Bool)
(declare-fun |Set#Equal_5010| ((Array Int Bool) (Array Int Bool)) Bool)
(declare-fun HasDirectPerm_8983_25619 (T@PolymorphicMapType_8944 T@Ref T@Field_8983_20778) Bool)
(declare-fun HasDirectPerm_8983_8997 (T@PolymorphicMapType_8944 T@Ref T@Field_8996_8997) Bool)
(declare-fun HasDirectPerm_8983_53 (T@PolymorphicMapType_8944 T@Ref T@Field_8983_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_8944 T@PolymorphicMapType_8944 T@PolymorphicMapType_8944) Bool)
(declare-fun |Set#Difference_3| ((Array Int Bool) (Array Int Bool)) (Array Int Bool))
(declare-fun |Seq#Equal_5000| (T@Seq_2864 T@Seq_2864) Bool)
(declare-fun |MultiSet#Equal_5014| (T@MultiSet_5014 T@MultiSet_5014) Bool)
(declare-fun |Set#UnionOne_3| ((Array Int Bool) Int) (Array Int Bool))
(declare-fun |Seq#ContainsTrigger_2864| (T@Seq_2864 Int) Bool)
(declare-fun |MultiSet#Empty_5014| () T@MultiSet_5014)
(declare-fun |Set#Empty_3| () (Array Int Bool))
(declare-fun |Seq#SkolemDiff_2864| (T@Seq_2864 T@Seq_2864) Int)
(declare-fun |MultiSet#Subset_5014| (T@MultiSet_5014 T@MultiSet_5014) Bool)
(assert (forall ((s T@Seq_2864) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_2864| s)) (= (|Seq#Length_2864| (|Seq#Drop_2864| s n)) (- (|Seq#Length_2864| s) n))) (=> (< (|Seq#Length_2864| s) n) (= (|Seq#Length_2864| (|Seq#Drop_2864| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_2864| (|Seq#Drop_2864| s n)) (|Seq#Length_2864| s))))
 :qid |stdinbpl.273:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2864| (|Seq#Drop_2864| s n)))
 :pattern ( (|Seq#Length_2864| s) (|Seq#Drop_2864| s n))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_8923) (Heap1 T@PolymorphicMapType_8923) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((a T@MultiSet_5014) (b T@MultiSet_5014) ) (!  (and (= (+ (+ (|MultiSet#Card_5014| (|MultiSet#Difference_5014| a b)) (|MultiSet#Card_5014| (|MultiSet#Difference_5014| b a))) (* 2 (|MultiSet#Card_5014| (|MultiSet#Intersection_5014| a b)))) (|MultiSet#Card_5014| (|MultiSet#Union_5014| a b))) (= (|MultiSet#Card_5014| (|MultiSet#Difference_5014| a b)) (- (|MultiSet#Card_5014| a) (|MultiSet#Card_5014| (|MultiSet#Intersection_5014| a b)))))
 :qid |stdinbpl.706:18|
 :skolemid |110|
 :pattern ( (|MultiSet#Card_5014| (|MultiSet#Difference_5014| a b)))
)))
(assert (forall ((Heap T@PolymorphicMapType_8923) (Mask T@PolymorphicMapType_8944) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_8923) (Heap1@@0 T@PolymorphicMapType_8923) (Heap2 T@PolymorphicMapType_8923) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_8983_20778) ) (!  (not (select (|PolymorphicMapType_9472_8983_21758#PolymorphicMapType_9472| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9472_8983_21758#PolymorphicMapType_9472| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_8983_20645) ) (!  (not (select (|PolymorphicMapType_9472_8983_20645#PolymorphicMapType_9472| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9472_8983_20645#PolymorphicMapType_9472| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_8996_8997) ) (!  (not (select (|PolymorphicMapType_9472_8983_8997#PolymorphicMapType_9472| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9472_8983_8997#PolymorphicMapType_9472| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_8983_53) ) (!  (not (select (|PolymorphicMapType_9472_8983_53#PolymorphicMapType_9472| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9472_8983_53#PolymorphicMapType_9472| ZeroPMask) o_2@@2 f_4@@2))
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
(assert (forall ((a@@1 T@MultiSet_5014) (b@@1 T@MultiSet_5014) (y Int) ) (!  (=> (<= (|MultiSet#Select_5014| a@@1 y) (|MultiSet#Select_5014| b@@1 y)) (= (|MultiSet#Select_5014| (|MultiSet#Difference_5014| a@@1 b@@1) y) 0))
 :qid |stdinbpl.704:18|
 :skolemid |109|
 :pattern ( (|MultiSet#Difference_5014| a@@1 b@@1) (|MultiSet#Select_5014| b@@1 y) (|MultiSet#Select_5014| a@@1 y))
)))
(assert (forall ((a@@2 (Array Int Bool)) (b@@2 (Array Int Bool)) ) (! (= (|Set#Union_3| (|Set#Union_3| a@@2 b@@2) b@@2) (|Set#Union_3| a@@2 b@@2))
 :qid |stdinbpl.589:18|
 :skolemid |74|
 :pattern ( (|Set#Union_3| (|Set#Union_3| a@@2 b@@2) b@@2))
)))
(assert (forall ((a@@3 (Array Int Bool)) (b@@3 (Array Int Bool)) ) (! (= (|Set#Intersection_3| (|Set#Intersection_3| a@@3 b@@3) b@@3) (|Set#Intersection_3| a@@3 b@@3))
 :qid |stdinbpl.593:18|
 :skolemid |76|
 :pattern ( (|Set#Intersection_3| (|Set#Intersection_3| a@@3 b@@3) b@@3))
)))
(assert (forall ((a@@4 T@MultiSet_5014) (b@@4 T@MultiSet_5014) ) (! (= (|MultiSet#Intersection_5014| (|MultiSet#Intersection_5014| a@@4 b@@4) b@@4) (|MultiSet#Intersection_5014| a@@4 b@@4))
 :qid |stdinbpl.695:18|
 :skolemid |106|
 :pattern ( (|MultiSet#Intersection_5014| (|MultiSet#Intersection_5014| a@@4 b@@4) b@@4))
)))
(assert (forall ((r Int) (o Int) ) (! (= (select (|Set#Singleton_3| r) o) (= r o))
 :qid |stdinbpl.558:18|
 :skolemid |63|
 :pattern ( (select (|Set#Singleton_3| r) o))
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
(assert (forall ((a@@5 (Array Int Bool)) (b@@5 (Array Int Bool)) ) (! (= (+ (|Set#Card_3| (|Set#Union_3| a@@5 b@@5)) (|Set#Card_3| (|Set#Intersection_3| a@@5 b@@5))) (+ (|Set#Card_3| a@@5) (|Set#Card_3| b@@5)))
 :qid |stdinbpl.597:18|
 :skolemid |78|
 :pattern ( (|Set#Card_3| (|Set#Union_3| a@@5 b@@5)))
 :pattern ( (|Set#Card_3| (|Set#Intersection_3| a@@5 b@@5)))
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
(assert (forall ((a@@6 Int) ) (!  (=> (<= 0 a@@6) (= (|Math#clip| a@@6) a@@6))
 :qid |stdinbpl.640:15|
 :skolemid |90|
 :pattern ( (|Math#clip| a@@6))
)))
(assert (forall ((a@@7 T@MultiSet_5014) (b@@6 T@MultiSet_5014) (o@@0 Int) ) (! (= (|MultiSet#Select_5014| (|MultiSet#Intersection_5014| a@@7 b@@6) o@@0) (|Math#min| (|MultiSet#Select_5014| a@@7 o@@0) (|MultiSet#Select_5014| b@@6 o@@0)))
 :qid |stdinbpl.691:18|
 :skolemid |105|
 :pattern ( (|MultiSet#Select_5014| (|MultiSet#Intersection_5014| a@@7 b@@6) o@@0))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_8923) (ExhaleHeap T@PolymorphicMapType_8923) (Mask@@0 T@PolymorphicMapType_8944) (pm_f T@Field_8983_20645) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_8983_20709 Mask@@0 null pm_f) (IsPredicateField_8983_20736 pm_f)) (= (select (|PolymorphicMapType_8923_8983_20822#PolymorphicMapType_8923| Heap@@0) null (PredicateMaskField_8983 pm_f)) (select (|PolymorphicMapType_8923_8983_20822#PolymorphicMapType_8923| ExhaleHeap) null (PredicateMaskField_8983 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_8983_20736 pm_f) (select (|PolymorphicMapType_8923_8983_20822#PolymorphicMapType_8923| ExhaleHeap) null (PredicateMaskField_8983 pm_f)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_8923) (ExhaleHeap@@0 T@PolymorphicMapType_8923) (Mask@@1 T@PolymorphicMapType_8944) (pm_f@@0 T@Field_8983_20645) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_8983_20709 Mask@@1 null pm_f@@0) (IsWandField_8983_22285 pm_f@@0)) (= (select (|PolymorphicMapType_8923_8983_20822#PolymorphicMapType_8923| Heap@@1) null (WandMaskField_8983 pm_f@@0)) (select (|PolymorphicMapType_8923_8983_20822#PolymorphicMapType_8923| ExhaleHeap@@0) null (WandMaskField_8983 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_8983_22285 pm_f@@0) (select (|PolymorphicMapType_8923_8983_20822#PolymorphicMapType_8923| ExhaleHeap@@0) null (WandMaskField_8983 pm_f@@0)))
)))
(assert (forall ((x@@0 Int) (y@@0 Int) ) (! (= (|Seq#Contains_2864| (|Seq#Singleton_3| x@@0) y@@0) (= x@@0 y@@0))
 :qid |stdinbpl.517:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2864| (|Seq#Singleton_3| x@@0) y@@0))
)))
(assert (forall ((s@@5 T@Seq_2864) (n@@4 Int) (j@@2 Int) ) (!  (=> (and (and (<= 0 j@@2) (< j@@2 n@@4)) (< j@@2 (|Seq#Length_2864| s@@5))) (= (|Seq#Index_2864| (|Seq#Take_2864| s@@5 n@@4) j@@2) (|Seq#Index_2864| s@@5 j@@2)))
 :qid |stdinbpl.268:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2864| (|Seq#Take_2864| s@@5 n@@4) j@@2))
 :pattern ( (|Seq#Index_2864| s@@5 j@@2) (|Seq#Take_2864| s@@5 n@@4))
)))
(assert (forall ((s@@6 T@Seq_2864) (t T@Seq_2864) (n@@5 Int) ) (!  (=> (and (and (> n@@5 0) (> n@@5 (|Seq#Length_2864| s@@6))) (< n@@5 (|Seq#Length_2864| (|Seq#Append_3| s@@6 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@5 (|Seq#Length_2864| s@@6)) (|Seq#Length_2864| s@@6)) n@@5) (= (|Seq#Take_2864| (|Seq#Append_3| s@@6 t) n@@5) (|Seq#Append_3| s@@6 (|Seq#Take_2864| t (|Seq#Sub| n@@5 (|Seq#Length_2864| s@@6)))))))
 :qid |stdinbpl.353:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2864| (|Seq#Append_3| s@@6 t) n@@5))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_8923) (ExhaleHeap@@1 T@PolymorphicMapType_8923) (Mask@@2 T@PolymorphicMapType_8944) (pm_f@@1 T@Field_8983_20645) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_8983_20709 Mask@@2 null pm_f@@1) (IsPredicateField_8983_20736 pm_f@@1)) (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_8983_53) ) (!  (=> (select (|PolymorphicMapType_9472_8983_53#PolymorphicMapType_9472| (select (|PolymorphicMapType_8923_8983_20822#PolymorphicMapType_8923| Heap@@2) null (PredicateMaskField_8983 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_8923_5468_53#PolymorphicMapType_8923| Heap@@2) o2 f_2) (select (|PolymorphicMapType_8923_5468_53#PolymorphicMapType_8923| ExhaleHeap@@1) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8923_5468_53#PolymorphicMapType_8923| ExhaleHeap@@1) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_8996_8997) ) (!  (=> (select (|PolymorphicMapType_9472_8983_8997#PolymorphicMapType_9472| (select (|PolymorphicMapType_8923_8983_20822#PolymorphicMapType_8923| Heap@@2) null (PredicateMaskField_8983 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_8923_5471_5472#PolymorphicMapType_8923| Heap@@2) o2@@0 f_2@@0) (select (|PolymorphicMapType_8923_5471_5472#PolymorphicMapType_8923| ExhaleHeap@@1) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8923_5471_5472#PolymorphicMapType_8923| ExhaleHeap@@1) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_8983_20645) ) (!  (=> (select (|PolymorphicMapType_9472_8983_20645#PolymorphicMapType_9472| (select (|PolymorphicMapType_8923_8983_20822#PolymorphicMapType_8923| Heap@@2) null (PredicateMaskField_8983 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_8923_8983_20645#PolymorphicMapType_8923| Heap@@2) o2@@1 f_2@@1) (select (|PolymorphicMapType_8923_8983_20645#PolymorphicMapType_8923| ExhaleHeap@@1) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8923_8983_20645#PolymorphicMapType_8923| ExhaleHeap@@1) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_8983_20778) ) (!  (=> (select (|PolymorphicMapType_9472_8983_21758#PolymorphicMapType_9472| (select (|PolymorphicMapType_8923_8983_20822#PolymorphicMapType_8923| Heap@@2) null (PredicateMaskField_8983 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_8923_8983_20822#PolymorphicMapType_8923| Heap@@2) o2@@2 f_2@@2) (select (|PolymorphicMapType_8923_8983_20822#PolymorphicMapType_8923| ExhaleHeap@@1) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8923_8983_20822#PolymorphicMapType_8923| ExhaleHeap@@1) o2@@2 f_2@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsPredicateField_8983_20736 pm_f@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_8923) (ExhaleHeap@@2 T@PolymorphicMapType_8923) (Mask@@3 T@PolymorphicMapType_8944) (pm_f@@2 T@Field_8983_20645) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_8983_20709 Mask@@3 null pm_f@@2) (IsWandField_8983_22285 pm_f@@2)) (and (and (and (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_8983_53) ) (!  (=> (select (|PolymorphicMapType_9472_8983_53#PolymorphicMapType_9472| (select (|PolymorphicMapType_8923_8983_20822#PolymorphicMapType_8923| Heap@@3) null (WandMaskField_8983 pm_f@@2))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_8923_5468_53#PolymorphicMapType_8923| Heap@@3) o2@@3 f_2@@3) (select (|PolymorphicMapType_8923_5468_53#PolymorphicMapType_8923| ExhaleHeap@@2) o2@@3 f_2@@3)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8923_5468_53#PolymorphicMapType_8923| ExhaleHeap@@2) o2@@3 f_2@@3))
)) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_8996_8997) ) (!  (=> (select (|PolymorphicMapType_9472_8983_8997#PolymorphicMapType_9472| (select (|PolymorphicMapType_8923_8983_20822#PolymorphicMapType_8923| Heap@@3) null (WandMaskField_8983 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_8923_5471_5472#PolymorphicMapType_8923| Heap@@3) o2@@4 f_2@@4) (select (|PolymorphicMapType_8923_5471_5472#PolymorphicMapType_8923| ExhaleHeap@@2) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8923_5471_5472#PolymorphicMapType_8923| ExhaleHeap@@2) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_8983_20645) ) (!  (=> (select (|PolymorphicMapType_9472_8983_20645#PolymorphicMapType_9472| (select (|PolymorphicMapType_8923_8983_20822#PolymorphicMapType_8923| Heap@@3) null (WandMaskField_8983 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_8923_8983_20645#PolymorphicMapType_8923| Heap@@3) o2@@5 f_2@@5) (select (|PolymorphicMapType_8923_8983_20645#PolymorphicMapType_8923| ExhaleHeap@@2) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8923_8983_20645#PolymorphicMapType_8923| ExhaleHeap@@2) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_8983_20778) ) (!  (=> (select (|PolymorphicMapType_9472_8983_21758#PolymorphicMapType_9472| (select (|PolymorphicMapType_8923_8983_20822#PolymorphicMapType_8923| Heap@@3) null (WandMaskField_8983 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_8923_8983_20822#PolymorphicMapType_8923| Heap@@3) o2@@6 f_2@@6) (select (|PolymorphicMapType_8923_8983_20822#PolymorphicMapType_8923| ExhaleHeap@@2) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8923_8983_20822#PolymorphicMapType_8923| ExhaleHeap@@2) o2@@6 f_2@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_8983_22285 pm_f@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((a@@8 T@MultiSet_5014) (x@@1 Int) ) (! (= (|MultiSet#Card_5014| (|MultiSet#UnionOne_3| a@@8 x@@1)) (+ (|MultiSet#Card_5014| a@@8) 1))
 :qid |stdinbpl.677:18|
 :skolemid |101|
 :pattern ( (|MultiSet#Card_5014| (|MultiSet#UnionOne_3| a@@8 x@@1)))
 :pattern ( (|MultiSet#UnionOne_3| a@@8 x@@1) (|MultiSet#Card_5014| a@@8))
)))
(assert (forall ((a@@9 T@MultiSet_5014) (b@@7 T@MultiSet_5014) ) (! (= (|MultiSet#Disjoint_5014| a@@9 b@@7) (forall ((o@@1 Int) ) (!  (or (= (|MultiSet#Select_5014| a@@9 o@@1) 0) (= (|MultiSet#Select_5014| b@@7 o@@1) 0))
 :qid |stdinbpl.727:39|
 :skolemid |116|
 :pattern ( (|MultiSet#Select_5014| a@@9 o@@1))
 :pattern ( (|MultiSet#Select_5014| b@@7 o@@1))
)))
 :qid |stdinbpl.726:18|
 :skolemid |117|
 :pattern ( (|MultiSet#Disjoint_5014| a@@9 b@@7))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_8923) (ExhaleHeap@@3 T@PolymorphicMapType_8923) (Mask@@4 T@PolymorphicMapType_8944) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_8923_5468_53#PolymorphicMapType_8923| Heap@@4) o_1 $allocated) (select (|PolymorphicMapType_8923_5468_53#PolymorphicMapType_8923| ExhaleHeap@@3) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_8923_5468_53#PolymorphicMapType_8923| ExhaleHeap@@3) o_1 $allocated))
)))
(assert (forall ((p T@Field_8983_20645) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_8983_8983 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8983_8983 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_2864) (s1 T@Seq_2864) (n@@6 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_2864|)) (not (= s1 |Seq#Empty_2864|))) (<= (|Seq#Length_2864| s0) n@@6)) (< n@@6 (|Seq#Length_2864| (|Seq#Append_3| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@6 (|Seq#Length_2864| s0)) (|Seq#Length_2864| s0)) n@@6) (= (|Seq#Index_2864| (|Seq#Append_3| s0 s1) n@@6) (|Seq#Index_2864| s1 (|Seq#Sub| n@@6 (|Seq#Length_2864| s0))))))
 :qid |stdinbpl.240:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2864| (|Seq#Append_3| s0 s1) n@@6))
)))
(assert (forall ((r@@0 Int) ) (!  (and (= (|MultiSet#Card_5014| (|MultiSet#Singleton_3| r@@0)) 1) (= (|MultiSet#Select_5014| (|MultiSet#Singleton_3| r@@0) r@@0) 1))
 :qid |stdinbpl.669:18|
 :skolemid |98|
 :pattern ( (|MultiSet#Singleton_3| r@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_8923) (ExhaleHeap@@4 T@PolymorphicMapType_8923) (Mask@@5 T@PolymorphicMapType_8944) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (succHeap Heap@@5 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_8944) (o_2@@3 T@Ref) (f_4@@3 T@Field_8983_20778) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_8944_8983_24339#PolymorphicMapType_8944| Mask@@6) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_8983_25248 f_4@@3))) (not (IsWandField_8983_25264 f_4@@3))) (<= (select (|PolymorphicMapType_8944_8983_24339#PolymorphicMapType_8944| Mask@@6) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_8944_8983_24339#PolymorphicMapType_8944| Mask@@6) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_8944) (o_2@@4 T@Ref) (f_4@@4 T@Field_8983_20645) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_8944_8983_20645#PolymorphicMapType_8944| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_8983_20736 f_4@@4))) (not (IsWandField_8983_22285 f_4@@4))) (<= (select (|PolymorphicMapType_8944_8983_20645#PolymorphicMapType_8944| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_8944_8983_20645#PolymorphicMapType_8944| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_8944) (o_2@@5 T@Ref) (f_4@@5 T@Field_8996_8997) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_8944_8983_8997#PolymorphicMapType_8944| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_8983_8997 f_4@@5))) (not (IsWandField_8983_8997 f_4@@5))) (<= (select (|PolymorphicMapType_8944_8983_8997#PolymorphicMapType_8944| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_8944_8983_8997#PolymorphicMapType_8944| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_8944) (o_2@@6 T@Ref) (f_4@@6 T@Field_8983_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_8944_8983_53#PolymorphicMapType_8944| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_8983_53 f_4@@6))) (not (IsWandField_8983_53 f_4@@6))) (<= (select (|PolymorphicMapType_8944_8983_53#PolymorphicMapType_8944| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_8944_8983_53#PolymorphicMapType_8944| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((a@@10 (Array Int Bool)) (b@@8 (Array Int Bool)) ) (! (= (|Set#Equal_5010| a@@10 b@@8) (forall ((o@@2 Int) ) (! (= (select a@@10 o@@2) (select b@@8 o@@2))
 :qid |stdinbpl.622:31|
 :skolemid |84|
 :pattern ( (select a@@10 o@@2))
 :pattern ( (select b@@8 o@@2))
)))
 :qid |stdinbpl.621:17|
 :skolemid |85|
 :pattern ( (|Set#Equal_5010| a@@10 b@@8))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_8944) (o_2@@7 T@Ref) (f_4@@7 T@Field_8983_20778) ) (! (= (HasDirectPerm_8983_25619 Mask@@10 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_8944_8983_24339#PolymorphicMapType_8944| Mask@@10) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8983_25619 Mask@@10 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_8944) (o_2@@8 T@Ref) (f_4@@8 T@Field_8983_20645) ) (! (= (HasDirectPerm_8983_20709 Mask@@11 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_8944_8983_20645#PolymorphicMapType_8944| Mask@@11) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8983_20709 Mask@@11 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_8944) (o_2@@9 T@Ref) (f_4@@9 T@Field_8996_8997) ) (! (= (HasDirectPerm_8983_8997 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_8944_8983_8997#PolymorphicMapType_8944| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8983_8997 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_8944) (o_2@@10 T@Ref) (f_4@@10 T@Field_8983_53) ) (! (= (HasDirectPerm_8983_53 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_8944_8983_53#PolymorphicMapType_8944| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8983_53 Mask@@13 o_2@@10 f_4@@10))
)))
(assert (forall ((a@@11 T@MultiSet_5014) (b@@9 T@MultiSet_5014) ) (! (= (|MultiSet#Card_5014| (|MultiSet#Union_5014| a@@11 b@@9)) (+ (|MultiSet#Card_5014| a@@11) (|MultiSet#Card_5014| b@@9)))
 :qid |stdinbpl.687:18|
 :skolemid |104|
 :pattern ( (|MultiSet#Card_5014| (|MultiSet#Union_5014| a@@11 b@@9)))
 :pattern ( (|MultiSet#Card_5014| a@@11) (|MultiSet#Union_5014| a@@11 b@@9))
 :pattern ( (|MultiSet#Card_5014| b@@9) (|MultiSet#Union_5014| a@@11 b@@9))
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
(assert (forall ((Heap@@6 T@PolymorphicMapType_8923) (ExhaleHeap@@5 T@PolymorphicMapType_8923) (Mask@@14 T@PolymorphicMapType_8944) (o_1@@0 T@Ref) (f_2@@7 T@Field_8983_20778) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (=> (HasDirectPerm_8983_25619 Mask@@14 o_1@@0 f_2@@7) (= (select (|PolymorphicMapType_8923_8983_20822#PolymorphicMapType_8923| Heap@@6) o_1@@0 f_2@@7) (select (|PolymorphicMapType_8923_8983_20822#PolymorphicMapType_8923| ExhaleHeap@@5) o_1@@0 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (select (|PolymorphicMapType_8923_8983_20822#PolymorphicMapType_8923| ExhaleHeap@@5) o_1@@0 f_2@@7))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_8923) (ExhaleHeap@@6 T@PolymorphicMapType_8923) (Mask@@15 T@PolymorphicMapType_8944) (o_1@@1 T@Ref) (f_2@@8 T@Field_8983_20645) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (=> (HasDirectPerm_8983_20709 Mask@@15 o_1@@1 f_2@@8) (= (select (|PolymorphicMapType_8923_8983_20645#PolymorphicMapType_8923| Heap@@7) o_1@@1 f_2@@8) (select (|PolymorphicMapType_8923_8983_20645#PolymorphicMapType_8923| ExhaleHeap@@6) o_1@@1 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (select (|PolymorphicMapType_8923_8983_20645#PolymorphicMapType_8923| ExhaleHeap@@6) o_1@@1 f_2@@8))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_8923) (ExhaleHeap@@7 T@PolymorphicMapType_8923) (Mask@@16 T@PolymorphicMapType_8944) (o_1@@2 T@Ref) (f_2@@9 T@Field_8996_8997) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (=> (HasDirectPerm_8983_8997 Mask@@16 o_1@@2 f_2@@9) (= (select (|PolymorphicMapType_8923_5471_5472#PolymorphicMapType_8923| Heap@@8) o_1@@2 f_2@@9) (select (|PolymorphicMapType_8923_5471_5472#PolymorphicMapType_8923| ExhaleHeap@@7) o_1@@2 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (select (|PolymorphicMapType_8923_5471_5472#PolymorphicMapType_8923| ExhaleHeap@@7) o_1@@2 f_2@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_8923) (ExhaleHeap@@8 T@PolymorphicMapType_8923) (Mask@@17 T@PolymorphicMapType_8944) (o_1@@3 T@Ref) (f_2@@10 T@Field_8983_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (=> (HasDirectPerm_8983_53 Mask@@17 o_1@@3 f_2@@10) (= (select (|PolymorphicMapType_8923_5468_53#PolymorphicMapType_8923| Heap@@9) o_1@@3 f_2@@10) (select (|PolymorphicMapType_8923_5468_53#PolymorphicMapType_8923| ExhaleHeap@@8) o_1@@3 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (select (|PolymorphicMapType_8923_5468_53#PolymorphicMapType_8923| ExhaleHeap@@8) o_1@@3 f_2@@10))
)))
(assert (forall ((s0@@0 T@Seq_2864) (s1@@0 T@Seq_2864) ) (!  (=> (and (not (= s0@@0 |Seq#Empty_2864|)) (not (= s1@@0 |Seq#Empty_2864|))) (= (|Seq#Length_2864| (|Seq#Append_3| s0@@0 s1@@0)) (+ (|Seq#Length_2864| s0@@0) (|Seq#Length_2864| s1@@0))))
 :qid |stdinbpl.209:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2864| (|Seq#Append_3| s0@@0 s1@@0)))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_8983_20778) ) (! (= (select (|PolymorphicMapType_8944_8983_24339#PolymorphicMapType_8944| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8944_8983_24339#PolymorphicMapType_8944| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_8983_20645) ) (! (= (select (|PolymorphicMapType_8944_8983_20645#PolymorphicMapType_8944| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8944_8983_20645#PolymorphicMapType_8944| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_8996_8997) ) (! (= (select (|PolymorphicMapType_8944_8983_8997#PolymorphicMapType_8944| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8944_8983_8997#PolymorphicMapType_8944| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_8983_53) ) (! (= (select (|PolymorphicMapType_8944_8983_53#PolymorphicMapType_8944| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8944_8983_53#PolymorphicMapType_8944| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((s@@7 T@Seq_2864) (t@@0 T@Seq_2864) (n@@7 Int) ) (!  (=> (and (> n@@7 0) (> n@@7 (|Seq#Length_2864| s@@7))) (and (= (|Seq#Add| (|Seq#Sub| n@@7 (|Seq#Length_2864| s@@7)) (|Seq#Length_2864| s@@7)) n@@7) (= (|Seq#Drop_2864| (|Seq#Append_3| s@@7 t@@0) n@@7) (|Seq#Drop_2864| t@@0 (|Seq#Sub| n@@7 (|Seq#Length_2864| s@@7))))))
 :qid |stdinbpl.366:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_2864| (|Seq#Append_3| s@@7 t@@0) n@@7))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_8944) (SummandMask1 T@PolymorphicMapType_8944) (SummandMask2 T@PolymorphicMapType_8944) (o_2@@15 T@Ref) (f_4@@15 T@Field_8983_20778) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_8944_8983_24339#PolymorphicMapType_8944| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_8944_8983_24339#PolymorphicMapType_8944| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_8944_8983_24339#PolymorphicMapType_8944| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8944_8983_24339#PolymorphicMapType_8944| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8944_8983_24339#PolymorphicMapType_8944| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8944_8983_24339#PolymorphicMapType_8944| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_8944) (SummandMask1@@0 T@PolymorphicMapType_8944) (SummandMask2@@0 T@PolymorphicMapType_8944) (o_2@@16 T@Ref) (f_4@@16 T@Field_8983_20645) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_8944_8983_20645#PolymorphicMapType_8944| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_8944_8983_20645#PolymorphicMapType_8944| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_8944_8983_20645#PolymorphicMapType_8944| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8944_8983_20645#PolymorphicMapType_8944| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8944_8983_20645#PolymorphicMapType_8944| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8944_8983_20645#PolymorphicMapType_8944| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_8944) (SummandMask1@@1 T@PolymorphicMapType_8944) (SummandMask2@@1 T@PolymorphicMapType_8944) (o_2@@17 T@Ref) (f_4@@17 T@Field_8996_8997) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_8944_8983_8997#PolymorphicMapType_8944| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_8944_8983_8997#PolymorphicMapType_8944| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_8944_8983_8997#PolymorphicMapType_8944| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8944_8983_8997#PolymorphicMapType_8944| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8944_8983_8997#PolymorphicMapType_8944| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8944_8983_8997#PolymorphicMapType_8944| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_8944) (SummandMask1@@2 T@PolymorphicMapType_8944) (SummandMask2@@2 T@PolymorphicMapType_8944) (o_2@@18 T@Ref) (f_4@@18 T@Field_8983_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_8944_8983_53#PolymorphicMapType_8944| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_8944_8983_53#PolymorphicMapType_8944| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_8944_8983_53#PolymorphicMapType_8944| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8944_8983_53#PolymorphicMapType_8944| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8944_8983_53#PolymorphicMapType_8944| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8944_8983_53#PolymorphicMapType_8944| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((a@@12 (Array Int Bool)) (b@@10 (Array Int Bool)) (o@@3 Int) ) (! (= (select (|Set#Intersection_3| a@@12 b@@10) o@@3)  (and (select a@@12 o@@3) (select b@@10 o@@3)))
 :qid |stdinbpl.586:18|
 :skolemid |73|
 :pattern ( (select (|Set#Intersection_3| a@@12 b@@10) o@@3))
 :pattern ( (|Set#Intersection_3| a@@12 b@@10) (select a@@12 o@@3))
 :pattern ( (|Set#Intersection_3| a@@12 b@@10) (select b@@10 o@@3))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2864| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2864| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.531:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2864| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a@@13 (Array Int Bool)) (b@@11 (Array Int Bool)) (o@@4 Int) ) (! (= (select (|Set#Difference_3| a@@13 b@@11) o@@4)  (and (select a@@13 o@@4) (not (select b@@11 o@@4))))
 :qid |stdinbpl.601:18|
 :skolemid |79|
 :pattern ( (select (|Set#Difference_3| a@@13 b@@11) o@@4))
 :pattern ( (|Set#Difference_3| a@@13 b@@11) (select a@@13 o@@4))
)))
(assert (forall ((a@@14 T@Seq_2864) (b@@12 T@Seq_2864) ) (!  (=> (|Seq#Equal_5000| a@@14 b@@12) (= a@@14 b@@12))
 :qid |stdinbpl.504:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_5000| a@@14 b@@12))
)))
(assert (forall ((a@@15 (Array Int Bool)) (b@@13 (Array Int Bool)) ) (!  (=> (|Set#Equal_5010| a@@15 b@@13) (= a@@15 b@@13))
 :qid |stdinbpl.623:17|
 :skolemid |86|
 :pattern ( (|Set#Equal_5010| a@@15 b@@13))
)))
(assert (forall ((a@@16 T@MultiSet_5014) (b@@14 T@MultiSet_5014) ) (!  (=> (|MultiSet#Equal_5014| a@@16 b@@14) (= a@@16 b@@14))
 :qid |stdinbpl.722:17|
 :skolemid |115|
 :pattern ( (|MultiSet#Equal_5014| a@@16 b@@14))
)))
(assert (forall ((a@@17 (Array Int Bool)) (x@@2 Int) (y@@1 Int) ) (!  (=> (select a@@17 y@@1) (select (|Set#UnionOne_3| a@@17 x@@2) y@@1))
 :qid |stdinbpl.566:18|
 :skolemid |67|
 :pattern ( (|Set#UnionOne_3| a@@17 x@@2) (select a@@17 y@@1))
)))
(assert (forall ((a@@18 (Array Int Bool)) (b@@15 (Array Int Bool)) (y@@2 Int) ) (!  (=> (select a@@18 y@@2) (select (|Set#Union_3| a@@18 b@@15) y@@2))
 :qid |stdinbpl.576:18|
 :skolemid |71|
 :pattern ( (|Set#Union_3| a@@18 b@@15) (select a@@18 y@@2))
)))
(assert (forall ((a@@19 (Array Int Bool)) (b@@16 (Array Int Bool)) (y@@3 Int) ) (!  (=> (select b@@16 y@@3) (select (|Set#Union_3| a@@19 b@@16) y@@3))
 :qid |stdinbpl.578:18|
 :skolemid |72|
 :pattern ( (|Set#Union_3| a@@19 b@@16) (select b@@16 y@@3))
)))
(assert (forall ((ms T@MultiSet_5014) (x@@3 Int) ) (! (>= (|MultiSet#Select_5014| ms x@@3) 0)
 :qid |stdinbpl.653:18|
 :skolemid |92|
 :pattern ( (|MultiSet#Select_5014| ms x@@3))
)))
(assert (forall ((a@@20 (Array Int Bool)) (x@@4 Int) (o@@5 Int) ) (! (= (select (|Set#UnionOne_3| a@@20 x@@4) o@@5)  (or (= o@@5 x@@4) (select a@@20 o@@5)))
 :qid |stdinbpl.562:18|
 :skolemid |65|
 :pattern ( (select (|Set#UnionOne_3| a@@20 x@@4) o@@5))
)))
(assert (forall ((a@@21 (Array Int Bool)) (b@@17 (Array Int Bool)) (y@@4 Int) ) (!  (=> (select b@@17 y@@4) (not (select (|Set#Difference_3| a@@21 b@@17) y@@4)))
 :qid |stdinbpl.603:18|
 :skolemid |80|
 :pattern ( (|Set#Difference_3| a@@21 b@@17) (select b@@17 y@@4))
)))
(assert (forall ((s@@8 T@Seq_2864) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length_2864| s@@8))) (|Seq#ContainsTrigger_2864| s@@8 (|Seq#Index_2864| s@@8 i@@2)))
 :qid |stdinbpl.397:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2864| s@@8 i@@2))
)))
(assert (forall ((a@@22 (Array Int Bool)) (b@@18 (Array Int Bool)) ) (!  (and (= (+ (+ (|Set#Card_3| (|Set#Difference_3| a@@22 b@@18)) (|Set#Card_3| (|Set#Difference_3| b@@18 a@@22))) (|Set#Card_3| (|Set#Intersection_3| a@@22 b@@18))) (|Set#Card_3| (|Set#Union_3| a@@22 b@@18))) (= (|Set#Card_3| (|Set#Difference_3| a@@22 b@@18)) (- (|Set#Card_3| a@@22) (|Set#Card_3| (|Set#Intersection_3| a@@22 b@@18)))))
 :qid |stdinbpl.605:18|
 :skolemid |81|
 :pattern ( (|Set#Card_3| (|Set#Difference_3| a@@22 b@@18)))
)))
(assert (forall ((s0@@1 T@Seq_2864) (s1@@1 T@Seq_2864) ) (!  (and (=> (= s0@@1 |Seq#Empty_2864|) (= (|Seq#Append_3| s0@@1 s1@@1) s1@@1)) (=> (= s1@@1 |Seq#Empty_2864|) (= (|Seq#Append_3| s0@@1 s1@@1) s0@@1)))
 :qid |stdinbpl.215:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3| s0@@1 s1@@1))
)))
(assert (forall ((t@@1 Int) ) (! (= (|Seq#Index_2864| (|Seq#Singleton_3| t@@1) 0) t@@1)
 :qid |stdinbpl.219:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3| t@@1))
)))
(assert (forall ((s@@9 T@Seq_2864) ) (! (<= 0 (|Seq#Length_2864| s@@9))
 :qid |stdinbpl.198:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2864| s@@9))
)))
(assert (forall ((s@@10 (Array Int Bool)) ) (! (<= 0 (|Set#Card_3| s@@10))
 :qid |stdinbpl.548:18|
 :skolemid |58|
 :pattern ( (|Set#Card_3| s@@10))
)))
(assert (forall ((s@@11 T@MultiSet_5014) ) (! (<= 0 (|MultiSet#Card_5014| s@@11))
 :qid |stdinbpl.656:18|
 :skolemid |93|
 :pattern ( (|MultiSet#Card_5014| s@@11))
)))
(assert (forall ((o@@6 Int) ) (! (= (|MultiSet#Select_5014| |MultiSet#Empty_5014| o@@6) 0)
 :qid |stdinbpl.661:18|
 :skolemid |94|
 :pattern ( (|MultiSet#Select_5014| |MultiSet#Empty_5014| o@@6))
)))
(assert (forall ((a@@23 (Array Int Bool)) (x@@5 Int) ) (! (select (|Set#UnionOne_3| a@@23 x@@5) x@@5)
 :qid |stdinbpl.564:18|
 :skolemid |66|
 :pattern ( (|Set#UnionOne_3| a@@23 x@@5))
)))
(assert (forall ((s0@@2 T@Seq_2864) (s1@@2 T@Seq_2864) ) (!  (=> (|Seq#Equal_5000| s0@@2 s1@@2) (and (= (|Seq#Length_2864| s0@@2) (|Seq#Length_2864| s1@@2)) (forall ((j@@4 Int) ) (!  (=> (and (<= 0 j@@4) (< j@@4 (|Seq#Length_2864| s0@@2))) (= (|Seq#Index_2864| s0@@2 j@@4) (|Seq#Index_2864| s1@@2 j@@4)))
 :qid |stdinbpl.494:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2864| s0@@2 j@@4))
 :pattern ( (|Seq#Index_2864| s1@@2 j@@4))
))))
 :qid |stdinbpl.491:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_5000| s0@@2 s1@@2))
)))
(assert (forall ((a@@24 (Array Int Bool)) (x@@6 Int) ) (!  (=> (select a@@24 x@@6) (= (|Set#Card_3| (|Set#UnionOne_3| a@@24 x@@6)) (|Set#Card_3| a@@24)))
 :qid |stdinbpl.568:18|
 :skolemid |68|
 :pattern ( (|Set#Card_3| (|Set#UnionOne_3| a@@24 x@@6)))
)))
(assert (forall ((a@@25 T@MultiSet_5014) (x@@7 Int) ) (!  (and (> (|MultiSet#Select_5014| (|MultiSet#UnionOne_3| a@@25 x@@7) x@@7) 0) (> (|MultiSet#Card_5014| (|MultiSet#UnionOne_3| a@@25 x@@7)) 0))
 :qid |stdinbpl.680:18|
 :skolemid |102|
 :pattern ( (|MultiSet#UnionOne_3| a@@25 x@@7))
)))
(assert (forall ((t@@2 Int) ) (! (= (|Seq#Length_2864| (|Seq#Singleton_3| t@@2)) 1)
 :qid |stdinbpl.206:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3| t@@2))
)))
(assert (forall ((r@@1 Int) ) (! (= (|Set#Card_3| (|Set#Singleton_3| r@@1)) 1)
 :qid |stdinbpl.559:18|
 :skolemid |64|
 :pattern ( (|Set#Card_3| (|Set#Singleton_3| r@@1)))
)))
(assert (forall ((r@@2 Int) ) (! (select (|Set#Singleton_3| r@@2) r@@2)
 :qid |stdinbpl.557:18|
 :skolemid |62|
 :pattern ( (|Set#Singleton_3| r@@2))
)))
(assert (forall ((a@@26 (Array Int Bool)) (b@@19 (Array Int Bool)) ) (! (= (|Set#Union_3| a@@26 (|Set#Union_3| a@@26 b@@19)) (|Set#Union_3| a@@26 b@@19))
 :qid |stdinbpl.591:18|
 :skolemid |75|
 :pattern ( (|Set#Union_3| a@@26 (|Set#Union_3| a@@26 b@@19)))
)))
(assert (forall ((a@@27 (Array Int Bool)) (b@@20 (Array Int Bool)) ) (! (= (|Set#Intersection_3| a@@27 (|Set#Intersection_3| a@@27 b@@20)) (|Set#Intersection_3| a@@27 b@@20))
 :qid |stdinbpl.595:18|
 :skolemid |77|
 :pattern ( (|Set#Intersection_3| a@@27 (|Set#Intersection_3| a@@27 b@@20)))
)))
(assert (forall ((a@@28 T@MultiSet_5014) (b@@21 T@MultiSet_5014) ) (! (= (|MultiSet#Intersection_5014| a@@28 (|MultiSet#Intersection_5014| a@@28 b@@21)) (|MultiSet#Intersection_5014| a@@28 b@@21))
 :qid |stdinbpl.697:18|
 :skolemid |107|
 :pattern ( (|MultiSet#Intersection_5014| a@@28 (|MultiSet#Intersection_5014| a@@28 b@@21)))
)))
(assert (forall ((s@@12 T@MultiSet_5014) ) (!  (and (= (= (|MultiSet#Card_5014| s@@12) 0) (= s@@12 |MultiSet#Empty_5014|)) (=> (not (= (|MultiSet#Card_5014| s@@12) 0)) (exists ((x@@8 Int) ) (! (< 0 (|MultiSet#Select_5014| s@@12 x@@8))
 :qid |stdinbpl.664:38|
 :skolemid |95|
))))
 :qid |stdinbpl.662:18|
 :skolemid |96|
 :pattern ( (|MultiSet#Card_5014| s@@12))
)))
(assert (forall ((r@@3 Int) (o@@7 Int) ) (!  (and (= (= (|MultiSet#Select_5014| (|MultiSet#Singleton_3| r@@3) o@@7) 1) (= r@@3 o@@7)) (= (= (|MultiSet#Select_5014| (|MultiSet#Singleton_3| r@@3) o@@7) 0) (not (= r@@3 o@@7))))
 :qid |stdinbpl.667:18|
 :skolemid |97|
 :pattern ( (|MultiSet#Select_5014| (|MultiSet#Singleton_3| r@@3) o@@7))
)))
(assert (forall ((a@@29 T@MultiSet_5014) (b@@22 T@MultiSet_5014) (o@@8 Int) ) (! (= (|MultiSet#Select_5014| (|MultiSet#Union_5014| a@@29 b@@22) o@@8) (+ (|MultiSet#Select_5014| a@@29 o@@8) (|MultiSet#Select_5014| b@@22 o@@8)))
 :qid |stdinbpl.685:18|
 :skolemid |103|
 :pattern ( (|MultiSet#Select_5014| (|MultiSet#Union_5014| a@@29 b@@22) o@@8))
 :pattern ( (|MultiSet#Union_5014| a@@29 b@@22) (|MultiSet#Select_5014| a@@29 o@@8) (|MultiSet#Select_5014| b@@22 o@@8))
)))
(assert (forall ((s@@13 T@Seq_2864) (t@@3 T@Seq_2864) (n@@8 Int) ) (!  (=> (and (< 0 n@@8) (<= n@@8 (|Seq#Length_2864| s@@13))) (= (|Seq#Take_2864| (|Seq#Append_3| s@@13 t@@3) n@@8) (|Seq#Take_2864| s@@13 n@@8)))
 :qid |stdinbpl.348:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2864| (|Seq#Append_3| s@@13 t@@3) n@@8))
)))
(assert (forall ((o@@9 Int) ) (!  (not (select |Set#Empty_3| o@@9))
 :qid |stdinbpl.551:18|
 :skolemid |59|
 :pattern ( (select |Set#Empty_3| o@@9))
)))
(assert (forall ((s@@14 T@Seq_2864) (i@@3 Int) (v@@1 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_2864| s@@14))) (= (|Seq#Length_2864| (|Seq#Update_2864| s@@14 i@@3 v@@1)) (|Seq#Length_2864| s@@14)))
 :qid |stdinbpl.247:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2864| (|Seq#Update_2864| s@@14 i@@3 v@@1)))
 :pattern ( (|Seq#Length_2864| s@@14) (|Seq#Update_2864| s@@14 i@@3 v@@1))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_8923) (o@@10 T@Ref) (f_3 T@Field_8983_20645) (v@@2 T@FrameType) ) (! (succHeap Heap@@10 (PolymorphicMapType_8923 (|PolymorphicMapType_8923_5468_53#PolymorphicMapType_8923| Heap@@10) (|PolymorphicMapType_8923_5471_5472#PolymorphicMapType_8923| Heap@@10) (|PolymorphicMapType_8923_8983_20822#PolymorphicMapType_8923| Heap@@10) (store (|PolymorphicMapType_8923_8983_20645#PolymorphicMapType_8923| Heap@@10) o@@10 f_3 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8923 (|PolymorphicMapType_8923_5468_53#PolymorphicMapType_8923| Heap@@10) (|PolymorphicMapType_8923_5471_5472#PolymorphicMapType_8923| Heap@@10) (|PolymorphicMapType_8923_8983_20822#PolymorphicMapType_8923| Heap@@10) (store (|PolymorphicMapType_8923_8983_20645#PolymorphicMapType_8923| Heap@@10) o@@10 f_3 v@@2)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_8923) (o@@11 T@Ref) (f_3@@0 T@Field_8983_20778) (v@@3 T@PolymorphicMapType_9472) ) (! (succHeap Heap@@11 (PolymorphicMapType_8923 (|PolymorphicMapType_8923_5468_53#PolymorphicMapType_8923| Heap@@11) (|PolymorphicMapType_8923_5471_5472#PolymorphicMapType_8923| Heap@@11) (store (|PolymorphicMapType_8923_8983_20822#PolymorphicMapType_8923| Heap@@11) o@@11 f_3@@0 v@@3) (|PolymorphicMapType_8923_8983_20645#PolymorphicMapType_8923| Heap@@11)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8923 (|PolymorphicMapType_8923_5468_53#PolymorphicMapType_8923| Heap@@11) (|PolymorphicMapType_8923_5471_5472#PolymorphicMapType_8923| Heap@@11) (store (|PolymorphicMapType_8923_8983_20822#PolymorphicMapType_8923| Heap@@11) o@@11 f_3@@0 v@@3) (|PolymorphicMapType_8923_8983_20645#PolymorphicMapType_8923| Heap@@11)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_8923) (o@@12 T@Ref) (f_3@@1 T@Field_8996_8997) (v@@4 T@Ref) ) (! (succHeap Heap@@12 (PolymorphicMapType_8923 (|PolymorphicMapType_8923_5468_53#PolymorphicMapType_8923| Heap@@12) (store (|PolymorphicMapType_8923_5471_5472#PolymorphicMapType_8923| Heap@@12) o@@12 f_3@@1 v@@4) (|PolymorphicMapType_8923_8983_20822#PolymorphicMapType_8923| Heap@@12) (|PolymorphicMapType_8923_8983_20645#PolymorphicMapType_8923| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8923 (|PolymorphicMapType_8923_5468_53#PolymorphicMapType_8923| Heap@@12) (store (|PolymorphicMapType_8923_5471_5472#PolymorphicMapType_8923| Heap@@12) o@@12 f_3@@1 v@@4) (|PolymorphicMapType_8923_8983_20822#PolymorphicMapType_8923| Heap@@12) (|PolymorphicMapType_8923_8983_20645#PolymorphicMapType_8923| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_8923) (o@@13 T@Ref) (f_3@@2 T@Field_8983_53) (v@@5 Bool) ) (! (succHeap Heap@@13 (PolymorphicMapType_8923 (store (|PolymorphicMapType_8923_5468_53#PolymorphicMapType_8923| Heap@@13) o@@13 f_3@@2 v@@5) (|PolymorphicMapType_8923_5471_5472#PolymorphicMapType_8923| Heap@@13) (|PolymorphicMapType_8923_8983_20822#PolymorphicMapType_8923| Heap@@13) (|PolymorphicMapType_8923_8983_20645#PolymorphicMapType_8923| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8923 (store (|PolymorphicMapType_8923_5468_53#PolymorphicMapType_8923| Heap@@13) o@@13 f_3@@2 v@@5) (|PolymorphicMapType_8923_5471_5472#PolymorphicMapType_8923| Heap@@13) (|PolymorphicMapType_8923_8983_20822#PolymorphicMapType_8923| Heap@@13) (|PolymorphicMapType_8923_8983_20645#PolymorphicMapType_8923| Heap@@13)))
)))
(assert (forall ((r@@4 Int) ) (! (= (|MultiSet#Singleton_3| r@@4) (|MultiSet#UnionOne_3| |MultiSet#Empty_5014| r@@4))
 :qid |stdinbpl.670:18|
 :skolemid |99|
 :pattern ( (|MultiSet#Singleton_3| r@@4))
)))
(assert (forall ((s@@15 T@Seq_2864) (t@@4 T@Seq_2864) (n@@9 Int) ) (!  (=> (and (< 0 n@@9) (<= n@@9 (|Seq#Length_2864| s@@15))) (= (|Seq#Drop_2864| (|Seq#Append_3| s@@15 t@@4) n@@9) (|Seq#Append_3| (|Seq#Drop_2864| s@@15 n@@9) t@@4)))
 :qid |stdinbpl.362:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_2864| (|Seq#Append_3| s@@15 t@@4) n@@9))
)))
(assert (forall ((a@@30 Int) (b@@23 Int) ) (! (= (<= a@@30 b@@23) (= (|Math#min| a@@30 b@@23) a@@30))
 :qid |stdinbpl.635:15|
 :skolemid |87|
 :pattern ( (|Math#min| a@@30 b@@23))
)))
(assert (forall ((a@@31 Int) (b@@24 Int) ) (! (= (<= b@@24 a@@31) (= (|Math#min| a@@31 b@@24) b@@24))
 :qid |stdinbpl.636:15|
 :skolemid |88|
 :pattern ( (|Math#min| a@@31 b@@24))
)))
(assert (forall ((s@@16 T@Seq_2864) (n@@10 Int) (i@@4 Int) ) (!  (=> (and (and (< 0 n@@10) (<= n@@10 i@@4)) (< i@@4 (|Seq#Length_2864| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| i@@4 n@@10) n@@10) i@@4) (= (|Seq#Index_2864| (|Seq#Drop_2864| s@@16 n@@10) (|Seq#Sub| i@@4 n@@10)) (|Seq#Index_2864| s@@16 i@@4))))
 :qid |stdinbpl.298:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_2864| s@@16 n@@10) (|Seq#Index_2864| s@@16 i@@4))
)))
(assert (forall ((s@@17 (Array Int Bool)) ) (!  (and (= (= (|Set#Card_3| s@@17) 0) (= s@@17 |Set#Empty_3|)) (=> (not (= (|Set#Card_3| s@@17) 0)) (exists ((x@@9 Int) ) (! (select s@@17 x@@9)
 :qid |stdinbpl.554:33|
 :skolemid |60|
))))
 :qid |stdinbpl.552:18|
 :skolemid |61|
 :pattern ( (|Set#Card_3| s@@17))
)))
(assert (forall ((s0@@3 T@Seq_2864) (s1@@3 T@Seq_2864) (n@@11 Int) ) (!  (=> (and (and (and (not (= s0@@3 |Seq#Empty_2864|)) (not (= s1@@3 |Seq#Empty_2864|))) (<= 0 n@@11)) (< n@@11 (|Seq#Length_2864| s0@@3))) (= (|Seq#Index_2864| (|Seq#Append_3| s0@@3 s1@@3) n@@11) (|Seq#Index_2864| s0@@3 n@@11)))
 :qid |stdinbpl.238:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2864| (|Seq#Append_3| s0@@3 s1@@3) n@@11))
 :pattern ( (|Seq#Index_2864| s0@@3 n@@11) (|Seq#Append_3| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2864) (s1@@4 T@Seq_2864) (m Int) ) (!  (=> (and (and (and (not (= s0@@4 |Seq#Empty_2864|)) (not (= s1@@4 |Seq#Empty_2864|))) (<= 0 m)) (< m (|Seq#Length_2864| s1@@4))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_2864| s0@@4)) (|Seq#Length_2864| s0@@4)) m) (= (|Seq#Index_2864| (|Seq#Append_3| s0@@4 s1@@4) (|Seq#Add| m (|Seq#Length_2864| s0@@4))) (|Seq#Index_2864| s1@@4 m))))
 :qid |stdinbpl.243:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2864| s1@@4 m) (|Seq#Append_3| s0@@4 s1@@4))
)))
(assert (forall ((a@@32 (Array Int Bool)) (x@@10 Int) ) (!  (=> (not (select a@@32 x@@10)) (= (|Set#Card_3| (|Set#UnionOne_3| a@@32 x@@10)) (+ (|Set#Card_3| a@@32) 1)))
 :qid |stdinbpl.570:18|
 :skolemid |69|
 :pattern ( (|Set#Card_3| (|Set#UnionOne_3| a@@32 x@@10)))
)))
(assert (forall ((a@@33 T@MultiSet_5014) (b@@25 T@MultiSet_5014) (o@@14 Int) ) (! (= (|MultiSet#Select_5014| (|MultiSet#Difference_5014| a@@33 b@@25) o@@14) (|Math#clip| (- (|MultiSet#Select_5014| a@@33 o@@14) (|MultiSet#Select_5014| b@@25 o@@14))))
 :qid |stdinbpl.702:18|
 :skolemid |108|
 :pattern ( (|MultiSet#Select_5014| (|MultiSet#Difference_5014| a@@33 b@@25) o@@14))
)))
(assert (forall ((o@@15 T@Ref) (f T@Field_8996_8997) (Heap@@14 T@PolymorphicMapType_8923) ) (!  (=> (select (|PolymorphicMapType_8923_5468_53#PolymorphicMapType_8923| Heap@@14) o@@15 $allocated) (select (|PolymorphicMapType_8923_5468_53#PolymorphicMapType_8923| Heap@@14) (select (|PolymorphicMapType_8923_5471_5472#PolymorphicMapType_8923| Heap@@14) o@@15 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_8923_5471_5472#PolymorphicMapType_8923| Heap@@14) o@@15 f))
)))
(assert (forall ((s@@18 T@Seq_2864) (x@@11 Int) (i@@5 Int) ) (!  (=> (and (and (<= 0 i@@5) (< i@@5 (|Seq#Length_2864| s@@18))) (= (|Seq#Index_2864| s@@18 i@@5) x@@11)) (|Seq#Contains_2864| s@@18 x@@11))
 :qid |stdinbpl.395:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2864| s@@18 x@@11) (|Seq#Index_2864| s@@18 i@@5))
)))
(assert (forall ((s0@@5 T@Seq_2864) (s1@@5 T@Seq_2864) ) (!  (or (or (and (= s0@@5 s1@@5) (|Seq#Equal_5000| s0@@5 s1@@5)) (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_5000| s0@@5 s1@@5))) (not (= (|Seq#Length_2864| s0@@5) (|Seq#Length_2864| s1@@5))))) (and (and (and (and (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_5000| s0@@5 s1@@5))) (= (|Seq#Length_2864| s0@@5) (|Seq#Length_2864| s1@@5))) (= (|Seq#SkolemDiff_2864| s0@@5 s1@@5) (|Seq#SkolemDiff_2864| s1@@5 s0@@5))) (<= 0 (|Seq#SkolemDiff_2864| s0@@5 s1@@5))) (< (|Seq#SkolemDiff_2864| s0@@5 s1@@5) (|Seq#Length_2864| s0@@5))) (not (= (|Seq#Index_2864| s0@@5 (|Seq#SkolemDiff_2864| s0@@5 s1@@5)) (|Seq#Index_2864| s1@@5 (|Seq#SkolemDiff_2864| s0@@5 s1@@5))))))
 :qid |stdinbpl.499:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_5000| s0@@5 s1@@5))
)))
(assert (forall ((p@@1 T@Field_8983_20645) (v_1@@0 T@FrameType) (q T@Field_8983_20645) (w@@0 T@FrameType) (r@@5 T@Field_8983_20645) (u T@FrameType) ) (!  (=> (and (InsidePredicate_8983_8983 p@@1 v_1@@0 q w@@0) (InsidePredicate_8983_8983 q w@@0 r@@5 u)) (InsidePredicate_8983_8983 p@@1 v_1@@0 r@@5 u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8983_8983 p@@1 v_1@@0 q w@@0) (InsidePredicate_8983_8983 q w@@0 r@@5 u))
)))
(assert (forall ((a@@34 Int) ) (!  (=> (< a@@34 0) (= (|Math#clip| a@@34) 0))
 :qid |stdinbpl.641:15|
 :skolemid |91|
 :pattern ( (|Math#clip| a@@34))
)))
(assert (forall ((s@@19 T@Seq_2864) ) (!  (=> (= (|Seq#Length_2864| s@@19) 0) (= s@@19 |Seq#Empty_2864|))
 :qid |stdinbpl.202:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2864| s@@19))
)))
(assert (forall ((s@@20 T@Seq_2864) (n@@12 Int) ) (!  (=> (<= n@@12 0) (= (|Seq#Take_2864| s@@20 n@@12) |Seq#Empty_2864|))
 :qid |stdinbpl.378:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_2864| s@@20 n@@12))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@35 T@MultiSet_5014) (x@@12 Int) (o@@16 Int) ) (! (= (|MultiSet#Select_5014| (|MultiSet#UnionOne_3| a@@35 x@@12) o@@16) (ite (= x@@12 o@@16) (+ (|MultiSet#Select_5014| a@@35 o@@16) 1) (|MultiSet#Select_5014| a@@35 o@@16)))
 :qid |stdinbpl.674:18|
 :skolemid |100|
 :pattern ( (|MultiSet#Select_5014| (|MultiSet#UnionOne_3| a@@35 x@@12) o@@16))
 :pattern ( (|MultiSet#UnionOne_3| a@@35 x@@12) (|MultiSet#Select_5014| a@@35 o@@16))
)))
(assert (forall ((a@@36 T@MultiSet_5014) (b@@26 T@MultiSet_5014) ) (! (= (|MultiSet#Equal_5014| a@@36 b@@26) (forall ((o@@17 Int) ) (! (= (|MultiSet#Select_5014| a@@36 o@@17) (|MultiSet#Select_5014| b@@26 o@@17))
 :qid |stdinbpl.720:36|
 :skolemid |113|
 :pattern ( (|MultiSet#Select_5014| a@@36 o@@17))
 :pattern ( (|MultiSet#Select_5014| b@@26 o@@17))
)))
 :qid |stdinbpl.719:17|
 :skolemid |114|
 :pattern ( (|MultiSet#Equal_5014| a@@36 b@@26))
)))
(assert (forall ((a@@37 T@MultiSet_5014) (b@@27 T@MultiSet_5014) ) (! (= (|MultiSet#Subset_5014| a@@37 b@@27) (forall ((o@@18 Int) ) (! (<= (|MultiSet#Select_5014| a@@37 o@@18) (|MultiSet#Select_5014| b@@27 o@@18))
 :qid |stdinbpl.716:37|
 :skolemid |111|
 :pattern ( (|MultiSet#Select_5014| a@@37 o@@18))
 :pattern ( (|MultiSet#Select_5014| b@@27 o@@18))
)))
 :qid |stdinbpl.715:17|
 :skolemid |112|
 :pattern ( (|MultiSet#Subset_5014| a@@37 b@@27))
)))
(assert (forall ((a@@38 (Array Int Bool)) (b@@28 (Array Int Bool)) (o@@19 Int) ) (! (= (select (|Set#Union_3| a@@38 b@@28) o@@19)  (or (select a@@38 o@@19) (select b@@28 o@@19)))
 :qid |stdinbpl.574:18|
 :skolemid |70|
 :pattern ( (select (|Set#Union_3| a@@38 b@@28) o@@19))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@15 () T@PolymorphicMapType_8923)
(declare-fun diz () T@Ref)
(declare-fun current_thread_id () Int)
(declare-fun L@0 () T@Seq_2864)
(declare-fun S@0 () (Array Int Bool))
(declare-fun B_2@0 () T@MultiSet_5014)
(set-info :boogie-vc-id Ref__types)
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
 (=> (= (ControlFlow 0 0) 7) (let ((anon0_correct  (=> (state Heap@@15 ZeroMask) (=> (and (and (and AssumePermUpperBound (select (|PolymorphicMapType_8923_5468_53#PolymorphicMapType_8923| Heap@@15) diz $allocated)) (and (not (= diz null)) (state Heap@@15 ZeroMask))) (and (and (>= current_thread_id 0) (state Heap@@15 ZeroMask)) (and (= L@0 (|Seq#Append_3| (|Seq#Append_3| (|Seq#Singleton_3| 1) (|Seq#Singleton_3| 2)) (|Seq#Singleton_3| 3))) (state Heap@@15 ZeroMask)))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (|Seq#Equal_5000| L@0 (|Seq#Append_3| (|Seq#Append_3| (|Seq#Singleton_3| 1) (|Seq#Singleton_3| 2)) (|Seq#Singleton_3| 3)))) (=> (|Seq#Equal_5000| L@0 (|Seq#Append_3| (|Seq#Append_3| (|Seq#Singleton_3| 1) (|Seq#Singleton_3| 2)) (|Seq#Singleton_3| 3))) (=> (state Heap@@15 ZeroMask) (=> (and (= S@0 (|Set#UnionOne_3| (|Set#UnionOne_3| (|Set#Singleton_3| 3) 2) 1)) (state Heap@@15 ZeroMask)) (and (=> (= (ControlFlow 0 2) (- 0 5)) (|Set#Equal_5010| S@0 (|Set#UnionOne_3| (|Set#UnionOne_3| (|Set#Singleton_3| 3) 1) 2))) (=> (|Set#Equal_5010| S@0 (|Set#UnionOne_3| (|Set#UnionOne_3| (|Set#Singleton_3| 3) 1) 2)) (=> (state Heap@@15 ZeroMask) (and (=> (= (ControlFlow 0 2) (- 0 4)) (|Set#Equal_5010| S@0 (|Set#UnionOne_3| (|Set#UnionOne_3| (|Set#UnionOne_3| (|Set#UnionOne_3| (|Set#Singleton_3| 3) 3) 2) 1) 1))) (=> (|Set#Equal_5010| S@0 (|Set#UnionOne_3| (|Set#UnionOne_3| (|Set#UnionOne_3| (|Set#UnionOne_3| (|Set#Singleton_3| 3) 3) 2) 1) 1)) (=> (state Heap@@15 ZeroMask) (=> (and (= B_2@0 (|MultiSet#UnionOne_3| (|MultiSet#UnionOne_3| (|MultiSet#UnionOne_3| (|MultiSet#Singleton_3| 3) 2) 1) 1)) (state Heap@@15 ZeroMask)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (|MultiSet#Equal_5014| B_2@0 (|MultiSet#UnionOne_3| (|MultiSet#UnionOne_3| (|MultiSet#UnionOne_3| (|MultiSet#Singleton_3| 3) 2) 1) 1))) (=> (|MultiSet#Equal_5014| B_2@0 (|MultiSet#UnionOne_3| (|MultiSet#UnionOne_3| (|MultiSet#UnionOne_3| (|MultiSet#Singleton_3| 3) 2) 1) 1)) (=> (and (state Heap@@15 ZeroMask) (= (ControlFlow 0 2) (- 0 1))) (= (|MultiSet#Select_5014| B_2@0 1) 2)))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 7) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
