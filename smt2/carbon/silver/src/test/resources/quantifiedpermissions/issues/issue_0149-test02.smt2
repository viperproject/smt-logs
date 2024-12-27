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
(declare-sort T@Field_18452_53 0)
(declare-sort T@Field_18465_18466 0)
(declare-sort T@Field_27351_5275 0)
(declare-sort T@Field_11910_50881 0)
(declare-sort T@Field_11910_50748 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_18413 0)) (((PolymorphicMapType_18413 (|PolymorphicMapType_18413_11910_11911#PolymorphicMapType_18413| (Array T@Ref T@Field_18465_18466 Real)) (|PolymorphicMapType_18413_11908_5275#PolymorphicMapType_18413| (Array T@Ref T@Field_27351_5275 Real)) (|PolymorphicMapType_18413_11910_53#PolymorphicMapType_18413| (Array T@Ref T@Field_18452_53 Real)) (|PolymorphicMapType_18413_11910_50748#PolymorphicMapType_18413| (Array T@Ref T@Field_11910_50748 Real)) (|PolymorphicMapType_18413_11910_54988#PolymorphicMapType_18413| (Array T@Ref T@Field_11910_50881 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_18941 0)) (((PolymorphicMapType_18941 (|PolymorphicMapType_18941_18452_53#PolymorphicMapType_18941| (Array T@Ref T@Field_18452_53 Bool)) (|PolymorphicMapType_18941_18452_18466#PolymorphicMapType_18941| (Array T@Ref T@Field_18465_18466 Bool)) (|PolymorphicMapType_18941_18452_5275#PolymorphicMapType_18941| (Array T@Ref T@Field_27351_5275 Bool)) (|PolymorphicMapType_18941_18452_50748#PolymorphicMapType_18941| (Array T@Ref T@Field_11910_50748 Bool)) (|PolymorphicMapType_18941_18452_52059#PolymorphicMapType_18941| (Array T@Ref T@Field_11910_50881 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_18392 0)) (((PolymorphicMapType_18392 (|PolymorphicMapType_18392_11519_53#PolymorphicMapType_18392| (Array T@Ref T@Field_18452_53 Bool)) (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| (Array T@Ref T@Field_18465_18466 T@Ref)) (|PolymorphicMapType_18392_11908_5275#PolymorphicMapType_18392| (Array T@Ref T@Field_27351_5275 Int)) (|PolymorphicMapType_18392_11910_50925#PolymorphicMapType_18392| (Array T@Ref T@Field_11910_50881 T@PolymorphicMapType_18941)) (|PolymorphicMapType_18392_18452_50748#PolymorphicMapType_18392| (Array T@Ref T@Field_11910_50748 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_18452_53)
(declare-fun f_7 () T@Field_27351_5275)
(declare-fun g () T@Field_18465_18466)
(declare-sort T@Seq_41230 0)
(declare-fun |Seq#Length_12011| (T@Seq_41230) Int)
(declare-fun |Seq#Drop_12011| (T@Seq_41230 Int) T@Seq_41230)
(declare-sort T@Seq_3152 0)
(declare-fun |Seq#Length_3152| (T@Seq_3152) Int)
(declare-fun |Seq#Drop_3152| (T@Seq_3152 Int) T@Seq_3152)
(declare-fun succHeap (T@PolymorphicMapType_18392 T@PolymorphicMapType_18392) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_18392 T@PolymorphicMapType_18392) Bool)
(declare-fun state (T@PolymorphicMapType_18392 T@PolymorphicMapType_18413) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_18413) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_18941)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Seq#Index_12011| (T@Seq_41230 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3152| (T@Seq_3152 Int) Int)
(declare-fun |Seq#Empty_12011| () T@Seq_41230)
(declare-fun |Seq#Empty_3152| () T@Seq_3152)
(declare-fun |Seq#Update_12011| (T@Seq_41230 Int T@Ref) T@Seq_41230)
(declare-fun |Seq#Update_3152| (T@Seq_3152 Int Int) T@Seq_3152)
(declare-fun |Set#Union_11916| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Intersection_11916| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Singleton_11916| (T@Ref) (Array T@Ref Bool))
(declare-fun |Seq#Take_12011| (T@Seq_41230 Int) T@Seq_41230)
(declare-fun |Seq#Take_3152| (T@Seq_3152 Int) T@Seq_3152)
(declare-fun |Seq#Contains_3152| (T@Seq_3152 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3152)
(declare-fun |Set#Card_11916| ((Array T@Ref Bool)) Int)
(declare-fun |Seq#Contains_41230| (T@Seq_41230 T@Ref) Bool)
(declare-fun |Seq#Skolem_41230| (T@Seq_41230 T@Ref) Int)
(declare-fun |Seq#Skolem_3152| (T@Seq_3152 Int) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_18392 T@PolymorphicMapType_18392 T@PolymorphicMapType_18413) Bool)
(declare-fun IsPredicateField_11910_50839 (T@Field_11910_50748) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_11910 (T@Field_11910_50748) T@Field_11910_50881)
(declare-fun HasDirectPerm_11910_50812 (T@PolymorphicMapType_18413 T@Ref T@Field_11910_50748) Bool)
(declare-fun IsWandField_11910_52586 (T@Field_11910_50748) Bool)
(declare-fun WandMaskField_11910 (T@Field_11910_50748) T@Field_11910_50881)
(declare-fun |Seq#Singleton_12011| (T@Ref) T@Seq_41230)
(declare-fun |Seq#Singleton_3152| (Int) T@Seq_3152)
(declare-fun |Seq#Append_41230| (T@Seq_41230 T@Seq_41230) T@Seq_41230)
(declare-fun |Seq#Append_3152| (T@Seq_3152 T@Seq_3152) T@Seq_3152)
(declare-fun dummyHeap () T@PolymorphicMapType_18392)
(declare-fun ZeroMask () T@PolymorphicMapType_18413)
(declare-fun InsidePredicate_18452_18452 (T@Field_11910_50748 T@FrameType T@Field_11910_50748 T@FrameType) Bool)
(declare-fun IsPredicateField_11908_5275 (T@Field_27351_5275) Bool)
(declare-fun IsWandField_11908_5275 (T@Field_27351_5275) Bool)
(declare-fun IsPredicateField_11910_11911 (T@Field_18465_18466) Bool)
(declare-fun IsWandField_11910_11911 (T@Field_18465_18466) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_11910_56103 (T@Field_11910_50881) Bool)
(declare-fun IsWandField_11910_56119 (T@Field_11910_50881) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_11910_53 (T@Field_18452_53) Bool)
(declare-fun IsWandField_11910_53 (T@Field_18452_53) Bool)
(declare-fun HasDirectPerm_11910_56557 (T@PolymorphicMapType_18413 T@Ref T@Field_11910_50881) Bool)
(declare-fun HasDirectPerm_11910_5275 (T@PolymorphicMapType_18413 T@Ref T@Field_27351_5275) Bool)
(declare-fun HasDirectPerm_11910_53 (T@PolymorphicMapType_18413 T@Ref T@Field_18452_53) Bool)
(declare-fun HasDirectPerm_11910_11911 (T@PolymorphicMapType_18413 T@Ref T@Field_18465_18466) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_18413 T@PolymorphicMapType_18413 T@PolymorphicMapType_18413) Bool)
(declare-fun |Set#Difference_11916| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Seq#Equal_41230| (T@Seq_41230 T@Seq_41230) Bool)
(declare-fun |Seq#Equal_3152| (T@Seq_3152 T@Seq_3152) Bool)
(declare-fun |Set#UnionOne_11916| ((Array T@Ref Bool) T@Ref) (Array T@Ref Bool))
(declare-fun |Seq#ContainsTrigger_12011| (T@Seq_41230 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3152| (T@Seq_3152 Int) Bool)
(declare-fun |Set#Empty_11916| () (Array T@Ref Bool))
(declare-fun |Seq#SkolemDiff_41230| (T@Seq_41230 T@Seq_41230) Int)
(declare-fun |Seq#SkolemDiff_3152| (T@Seq_3152 T@Seq_3152) Int)
(assert (forall ((s T@Seq_41230) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_12011| s)) (= (|Seq#Length_12011| (|Seq#Drop_12011| s n)) (- (|Seq#Length_12011| s) n))) (=> (< (|Seq#Length_12011| s) n) (= (|Seq#Length_12011| (|Seq#Drop_12011| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_12011| (|Seq#Drop_12011| s n)) (|Seq#Length_12011| s))))
 :qid |stdinbpl.321:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_12011| (|Seq#Drop_12011| s n)))
 :pattern ( (|Seq#Length_12011| s) (|Seq#Drop_12011| s n))
)))
(assert (forall ((s@@0 T@Seq_3152) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3152| s@@0)) (= (|Seq#Length_3152| (|Seq#Drop_3152| s@@0 n@@0)) (- (|Seq#Length_3152| s@@0) n@@0))) (=> (< (|Seq#Length_3152| s@@0) n@@0) (= (|Seq#Length_3152| (|Seq#Drop_3152| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3152| (|Seq#Drop_3152| s@@0 n@@0)) (|Seq#Length_3152| s@@0))))
 :qid |stdinbpl.321:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3152| (|Seq#Drop_3152| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3152| s@@0) (|Seq#Drop_3152| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_18392) (Heap1 T@PolymorphicMapType_18392) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_18392) (Mask T@PolymorphicMapType_18413) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_18392) (Heap1@@0 T@PolymorphicMapType_18392) (Heap2 T@PolymorphicMapType_18392) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_11910_50881) ) (!  (not (select (|PolymorphicMapType_18941_18452_52059#PolymorphicMapType_18941| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18941_18452_52059#PolymorphicMapType_18941| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_11910_50748) ) (!  (not (select (|PolymorphicMapType_18941_18452_50748#PolymorphicMapType_18941| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18941_18452_50748#PolymorphicMapType_18941| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_27351_5275) ) (!  (not (select (|PolymorphicMapType_18941_18452_5275#PolymorphicMapType_18941| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18941_18452_5275#PolymorphicMapType_18941| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_18465_18466) ) (!  (not (select (|PolymorphicMapType_18941_18452_18466#PolymorphicMapType_18941| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18941_18452_18466#PolymorphicMapType_18941| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_18452_53) ) (!  (not (select (|PolymorphicMapType_18941_18452_53#PolymorphicMapType_18941| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18941_18452_53#PolymorphicMapType_18941| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.685:15|
 :skolemid |89|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((s@@1 T@Seq_41230) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_12011| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_12011| (|Seq#Drop_12011| s@@1 n@@1) j) (|Seq#Index_12011| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.342:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_12011| (|Seq#Drop_12011| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3152) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3152| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3152| (|Seq#Drop_3152| s@@2 n@@2) j@@0) (|Seq#Index_3152| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.342:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3152| (|Seq#Drop_3152| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_12011| |Seq#Empty_12011|) 0))
(assert (= (|Seq#Length_3152| |Seq#Empty_3152|) 0))
(assert (forall ((s@@3 T@Seq_41230) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_12011| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_12011| (|Seq#Update_12011| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_12011| (|Seq#Update_12011| s@@3 i v) n@@3) (|Seq#Index_12011| s@@3 n@@3)))))
 :qid |stdinbpl.297:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_12011| (|Seq#Update_12011| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_12011| s@@3 n@@3) (|Seq#Update_12011| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_3152) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3152| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_3152| (|Seq#Update_3152| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_3152| (|Seq#Update_3152| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_3152| s@@4 n@@4)))))
 :qid |stdinbpl.297:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3152| (|Seq#Update_3152| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_3152| s@@4 n@@4) (|Seq#Update_3152| s@@4 i@@0 v@@0))
)))
(assert (forall ((a@@0 (Array T@Ref Bool)) (b@@0 (Array T@Ref Bool)) ) (! (= (|Set#Union_11916| (|Set#Union_11916| a@@0 b@@0) b@@0) (|Set#Union_11916| a@@0 b@@0))
 :qid |stdinbpl.637:18|
 :skolemid |74|
 :pattern ( (|Set#Union_11916| (|Set#Union_11916| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array T@Ref Bool)) (b@@1 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_11916| (|Set#Intersection_11916| a@@1 b@@1) b@@1) (|Set#Intersection_11916| a@@1 b@@1))
 :qid |stdinbpl.641:18|
 :skolemid |76|
 :pattern ( (|Set#Intersection_11916| (|Set#Intersection_11916| a@@1 b@@1) b@@1))
)))
(assert (forall ((r T@Ref) (o T@Ref) ) (! (= (select (|Set#Singleton_11916| r) o) (= r o))
 :qid |stdinbpl.606:18|
 :skolemid |63|
 :pattern ( (select (|Set#Singleton_11916| r) o))
)))
(assert (forall ((s@@5 T@Seq_41230) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_12011| s@@5)) (= (|Seq#Length_12011| (|Seq#Take_12011| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_12011| s@@5) n@@5) (= (|Seq#Length_12011| (|Seq#Take_12011| s@@5 n@@5)) (|Seq#Length_12011| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_12011| (|Seq#Take_12011| s@@5 n@@5)) 0)))
 :qid |stdinbpl.308:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_12011| (|Seq#Take_12011| s@@5 n@@5)))
 :pattern ( (|Seq#Take_12011| s@@5 n@@5) (|Seq#Length_12011| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3152) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3152| s@@6)) (= (|Seq#Length_3152| (|Seq#Take_3152| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3152| s@@6) n@@6) (= (|Seq#Length_3152| (|Seq#Take_3152| s@@6 n@@6)) (|Seq#Length_3152| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3152| (|Seq#Take_3152| s@@6 n@@6)) 0)))
 :qid |stdinbpl.308:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3152| (|Seq#Take_3152| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3152| s@@6 n@@6) (|Seq#Length_3152| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3152| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.582:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3152| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((a@@2 (Array T@Ref Bool)) (b@@2 (Array T@Ref Bool)) ) (! (= (+ (|Set#Card_11916| (|Set#Union_11916| a@@2 b@@2)) (|Set#Card_11916| (|Set#Intersection_11916| a@@2 b@@2))) (+ (|Set#Card_11916| a@@2) (|Set#Card_11916| b@@2)))
 :qid |stdinbpl.645:18|
 :skolemid |78|
 :pattern ( (|Set#Card_11916| (|Set#Union_11916| a@@2 b@@2)))
 :pattern ( (|Set#Card_11916| (|Set#Intersection_11916| a@@2 b@@2)))
)))
(assert (forall ((s@@7 T@Seq_41230) (x T@Ref) ) (!  (=> (|Seq#Contains_41230| s@@7 x) (and (and (<= 0 (|Seq#Skolem_41230| s@@7 x)) (< (|Seq#Skolem_41230| s@@7 x) (|Seq#Length_12011| s@@7))) (= (|Seq#Index_12011| s@@7 (|Seq#Skolem_41230| s@@7 x)) x)))
 :qid |stdinbpl.440:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_41230| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3152) (x@@0 Int) ) (!  (=> (|Seq#Contains_3152| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3152| s@@8 x@@0)) (< (|Seq#Skolem_3152| s@@8 x@@0) (|Seq#Length_3152| s@@8))) (= (|Seq#Index_3152| s@@8 (|Seq#Skolem_3152| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.440:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3152| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_41230) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_12011| s@@9 n@@7) s@@9))
 :qid |stdinbpl.424:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_12011| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3152) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3152| s@@10 n@@8) s@@10))
 :qid |stdinbpl.424:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3152| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.277:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.275:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.688:15|
 :skolemid |90|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_18392) (ExhaleHeap T@PolymorphicMapType_18392) (Mask@@0 T@PolymorphicMapType_18413) (pm_f_16 T@Field_11910_50748) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_11910_50812 Mask@@0 null pm_f_16) (IsPredicateField_11910_50839 pm_f_16)) (= (select (|PolymorphicMapType_18392_11910_50925#PolymorphicMapType_18392| Heap@@0) null (PredicateMaskField_11910 pm_f_16)) (select (|PolymorphicMapType_18392_11910_50925#PolymorphicMapType_18392| ExhaleHeap) null (PredicateMaskField_11910 pm_f_16)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_11910_50839 pm_f_16) (select (|PolymorphicMapType_18392_11910_50925#PolymorphicMapType_18392| ExhaleHeap) null (PredicateMaskField_11910 pm_f_16)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_18392) (ExhaleHeap@@0 T@PolymorphicMapType_18392) (Mask@@1 T@PolymorphicMapType_18413) (pm_f_16@@0 T@Field_11910_50748) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_11910_50812 Mask@@1 null pm_f_16@@0) (IsWandField_11910_52586 pm_f_16@@0)) (= (select (|PolymorphicMapType_18392_11910_50925#PolymorphicMapType_18392| Heap@@1) null (WandMaskField_11910 pm_f_16@@0)) (select (|PolymorphicMapType_18392_11910_50925#PolymorphicMapType_18392| ExhaleHeap@@0) null (WandMaskField_11910 pm_f_16@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_11910_52586 pm_f_16@@0) (select (|PolymorphicMapType_18392_11910_50925#PolymorphicMapType_18392| ExhaleHeap@@0) null (WandMaskField_11910 pm_f_16@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_41230| (|Seq#Singleton_12011| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.565:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_41230| (|Seq#Singleton_12011| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3152| (|Seq#Singleton_3152| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.565:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3152| (|Seq#Singleton_3152| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_41230) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_12011| s@@11))) (= (|Seq#Index_12011| (|Seq#Take_12011| s@@11 n@@9) j@@3) (|Seq#Index_12011| s@@11 j@@3)))
 :qid |stdinbpl.316:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_12011| (|Seq#Take_12011| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_12011| s@@11 j@@3) (|Seq#Take_12011| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3152) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3152| s@@12))) (= (|Seq#Index_3152| (|Seq#Take_3152| s@@12 n@@10) j@@4) (|Seq#Index_3152| s@@12 j@@4)))
 :qid |stdinbpl.316:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3152| (|Seq#Take_3152| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3152| s@@12 j@@4) (|Seq#Take_3152| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_41230) (t T@Seq_41230) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_12011| s@@13))) (< n@@11 (|Seq#Length_12011| (|Seq#Append_41230| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_12011| s@@13)) (|Seq#Length_12011| s@@13)) n@@11) (= (|Seq#Take_12011| (|Seq#Append_41230| s@@13 t) n@@11) (|Seq#Append_41230| s@@13 (|Seq#Take_12011| t (|Seq#Sub| n@@11 (|Seq#Length_12011| s@@13)))))))
 :qid |stdinbpl.401:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_12011| (|Seq#Append_41230| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3152) (t@@0 T@Seq_3152) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3152| s@@14))) (< n@@12 (|Seq#Length_3152| (|Seq#Append_3152| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3152| s@@14)) (|Seq#Length_3152| s@@14)) n@@12) (= (|Seq#Take_3152| (|Seq#Append_3152| s@@14 t@@0) n@@12) (|Seq#Append_3152| s@@14 (|Seq#Take_3152| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3152| s@@14)))))))
 :qid |stdinbpl.401:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3152| (|Seq#Append_3152| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_18392) (ExhaleHeap@@1 T@PolymorphicMapType_18392) (Mask@@2 T@PolymorphicMapType_18413) (o_34 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_18392_11519_53#PolymorphicMapType_18392| Heap@@2) o_34 $allocated) (select (|PolymorphicMapType_18392_11519_53#PolymorphicMapType_18392| ExhaleHeap@@1) o_34 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_18392_11519_53#PolymorphicMapType_18392| ExhaleHeap@@1) o_34 $allocated))
)))
(assert (forall ((p T@Field_11910_50748) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_18452_18452 p v_1 p w))
 :qid |stdinbpl.219:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_18452_18452 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_41230) (s1 T@Seq_41230) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_12011|)) (not (= s1 |Seq#Empty_12011|))) (<= (|Seq#Length_12011| s0) n@@13)) (< n@@13 (|Seq#Length_12011| (|Seq#Append_41230| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_12011| s0)) (|Seq#Length_12011| s0)) n@@13) (= (|Seq#Index_12011| (|Seq#Append_41230| s0 s1) n@@13) (|Seq#Index_12011| s1 (|Seq#Sub| n@@13 (|Seq#Length_12011| s0))))))
 :qid |stdinbpl.288:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_12011| (|Seq#Append_41230| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3152) (s1@@0 T@Seq_3152) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3152|)) (not (= s1@@0 |Seq#Empty_3152|))) (<= (|Seq#Length_3152| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3152| (|Seq#Append_3152| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3152| s0@@0)) (|Seq#Length_3152| s0@@0)) n@@14) (= (|Seq#Index_3152| (|Seq#Append_3152| s0@@0 s1@@0) n@@14) (|Seq#Index_3152| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3152| s0@@0))))))
 :qid |stdinbpl.288:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3152| (|Seq#Append_3152| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_11908_5275 f_7)))
(assert  (not (IsWandField_11908_5275 f_7)))
(assert  (not (IsPredicateField_11910_11911 g)))
(assert  (not (IsWandField_11910_11911 g)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_18392) (ExhaleHeap@@2 T@PolymorphicMapType_18392) (Mask@@3 T@PolymorphicMapType_18413) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_18413) (o_2@@4 T@Ref) (f_4@@4 T@Field_11910_50881) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_18413_11910_54988#PolymorphicMapType_18413| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_11910_56103 f_4@@4))) (not (IsWandField_11910_56119 f_4@@4))) (<= (select (|PolymorphicMapType_18413_11910_54988#PolymorphicMapType_18413| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_18413_11910_54988#PolymorphicMapType_18413| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_18413) (o_2@@5 T@Ref) (f_4@@5 T@Field_11910_50748) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_18413_11910_50748#PolymorphicMapType_18413| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_11910_50839 f_4@@5))) (not (IsWandField_11910_52586 f_4@@5))) (<= (select (|PolymorphicMapType_18413_11910_50748#PolymorphicMapType_18413| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_18413_11910_50748#PolymorphicMapType_18413| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_18413) (o_2@@6 T@Ref) (f_4@@6 T@Field_18452_53) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_18413_11910_53#PolymorphicMapType_18413| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_11910_53 f_4@@6))) (not (IsWandField_11910_53 f_4@@6))) (<= (select (|PolymorphicMapType_18413_11910_53#PolymorphicMapType_18413| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_18413_11910_53#PolymorphicMapType_18413| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_18413) (o_2@@7 T@Ref) (f_4@@7 T@Field_27351_5275) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_18413_11908_5275#PolymorphicMapType_18413| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_11908_5275 f_4@@7))) (not (IsWandField_11908_5275 f_4@@7))) (<= (select (|PolymorphicMapType_18413_11908_5275#PolymorphicMapType_18413| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_18413_11908_5275#PolymorphicMapType_18413| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_18413) (o_2@@8 T@Ref) (f_4@@8 T@Field_18465_18466) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_18413_11910_11911#PolymorphicMapType_18413| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_11910_11911 f_4@@8))) (not (IsWandField_11910_11911 f_4@@8))) (<= (select (|PolymorphicMapType_18413_11910_11911#PolymorphicMapType_18413| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_18413_11910_11911#PolymorphicMapType_18413| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_18413) (o_2@@9 T@Ref) (f_4@@9 T@Field_11910_50881) ) (! (= (HasDirectPerm_11910_56557 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_18413_11910_54988#PolymorphicMapType_18413| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11910_56557 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_18413) (o_2@@10 T@Ref) (f_4@@10 T@Field_11910_50748) ) (! (= (HasDirectPerm_11910_50812 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_18413_11910_50748#PolymorphicMapType_18413| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11910_50812 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_18413) (o_2@@11 T@Ref) (f_4@@11 T@Field_27351_5275) ) (! (= (HasDirectPerm_11910_5275 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_18413_11908_5275#PolymorphicMapType_18413| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11910_5275 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_18413) (o_2@@12 T@Ref) (f_4@@12 T@Field_18452_53) ) (! (= (HasDirectPerm_11910_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_18413_11910_53#PolymorphicMapType_18413| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11910_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_18413) (o_2@@13 T@Ref) (f_4@@13 T@Field_18465_18466) ) (! (= (HasDirectPerm_11910_11911 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_18413_11910_11911#PolymorphicMapType_18413| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11910_11911 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_18392) (ExhaleHeap@@3 T@PolymorphicMapType_18392) (Mask@@14 T@PolymorphicMapType_18413) (pm_f_16@@1 T@Field_11910_50748) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_11910_50812 Mask@@14 null pm_f_16@@1) (IsPredicateField_11910_50839 pm_f_16@@1)) (and (and (and (and (forall ((o2_16 T@Ref) (f_40 T@Field_18452_53) ) (!  (=> (select (|PolymorphicMapType_18941_18452_53#PolymorphicMapType_18941| (select (|PolymorphicMapType_18392_11910_50925#PolymorphicMapType_18392| Heap@@4) null (PredicateMaskField_11910 pm_f_16@@1))) o2_16 f_40) (= (select (|PolymorphicMapType_18392_11519_53#PolymorphicMapType_18392| Heap@@4) o2_16 f_40) (select (|PolymorphicMapType_18392_11519_53#PolymorphicMapType_18392| ExhaleHeap@@3) o2_16 f_40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18392_11519_53#PolymorphicMapType_18392| ExhaleHeap@@3) o2_16 f_40))
)) (forall ((o2_16@@0 T@Ref) (f_40@@0 T@Field_18465_18466) ) (!  (=> (select (|PolymorphicMapType_18941_18452_18466#PolymorphicMapType_18941| (select (|PolymorphicMapType_18392_11910_50925#PolymorphicMapType_18392| Heap@@4) null (PredicateMaskField_11910 pm_f_16@@1))) o2_16@@0 f_40@@0) (= (select (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| Heap@@4) o2_16@@0 f_40@@0) (select (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| ExhaleHeap@@3) o2_16@@0 f_40@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| ExhaleHeap@@3) o2_16@@0 f_40@@0))
))) (forall ((o2_16@@1 T@Ref) (f_40@@1 T@Field_27351_5275) ) (!  (=> (select (|PolymorphicMapType_18941_18452_5275#PolymorphicMapType_18941| (select (|PolymorphicMapType_18392_11910_50925#PolymorphicMapType_18392| Heap@@4) null (PredicateMaskField_11910 pm_f_16@@1))) o2_16@@1 f_40@@1) (= (select (|PolymorphicMapType_18392_11908_5275#PolymorphicMapType_18392| Heap@@4) o2_16@@1 f_40@@1) (select (|PolymorphicMapType_18392_11908_5275#PolymorphicMapType_18392| ExhaleHeap@@3) o2_16@@1 f_40@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18392_11908_5275#PolymorphicMapType_18392| ExhaleHeap@@3) o2_16@@1 f_40@@1))
))) (forall ((o2_16@@2 T@Ref) (f_40@@2 T@Field_11910_50748) ) (!  (=> (select (|PolymorphicMapType_18941_18452_50748#PolymorphicMapType_18941| (select (|PolymorphicMapType_18392_11910_50925#PolymorphicMapType_18392| Heap@@4) null (PredicateMaskField_11910 pm_f_16@@1))) o2_16@@2 f_40@@2) (= (select (|PolymorphicMapType_18392_18452_50748#PolymorphicMapType_18392| Heap@@4) o2_16@@2 f_40@@2) (select (|PolymorphicMapType_18392_18452_50748#PolymorphicMapType_18392| ExhaleHeap@@3) o2_16@@2 f_40@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18392_18452_50748#PolymorphicMapType_18392| ExhaleHeap@@3) o2_16@@2 f_40@@2))
))) (forall ((o2_16@@3 T@Ref) (f_40@@3 T@Field_11910_50881) ) (!  (=> (select (|PolymorphicMapType_18941_18452_52059#PolymorphicMapType_18941| (select (|PolymorphicMapType_18392_11910_50925#PolymorphicMapType_18392| Heap@@4) null (PredicateMaskField_11910 pm_f_16@@1))) o2_16@@3 f_40@@3) (= (select (|PolymorphicMapType_18392_11910_50925#PolymorphicMapType_18392| Heap@@4) o2_16@@3 f_40@@3) (select (|PolymorphicMapType_18392_11910_50925#PolymorphicMapType_18392| ExhaleHeap@@3) o2_16@@3 f_40@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18392_11910_50925#PolymorphicMapType_18392| ExhaleHeap@@3) o2_16@@3 f_40@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_11910_50839 pm_f_16@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_18392) (ExhaleHeap@@4 T@PolymorphicMapType_18392) (Mask@@15 T@PolymorphicMapType_18413) (pm_f_16@@2 T@Field_11910_50748) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_11910_50812 Mask@@15 null pm_f_16@@2) (IsWandField_11910_52586 pm_f_16@@2)) (and (and (and (and (forall ((o2_16@@4 T@Ref) (f_40@@4 T@Field_18452_53) ) (!  (=> (select (|PolymorphicMapType_18941_18452_53#PolymorphicMapType_18941| (select (|PolymorphicMapType_18392_11910_50925#PolymorphicMapType_18392| Heap@@5) null (WandMaskField_11910 pm_f_16@@2))) o2_16@@4 f_40@@4) (= (select (|PolymorphicMapType_18392_11519_53#PolymorphicMapType_18392| Heap@@5) o2_16@@4 f_40@@4) (select (|PolymorphicMapType_18392_11519_53#PolymorphicMapType_18392| ExhaleHeap@@4) o2_16@@4 f_40@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18392_11519_53#PolymorphicMapType_18392| ExhaleHeap@@4) o2_16@@4 f_40@@4))
)) (forall ((o2_16@@5 T@Ref) (f_40@@5 T@Field_18465_18466) ) (!  (=> (select (|PolymorphicMapType_18941_18452_18466#PolymorphicMapType_18941| (select (|PolymorphicMapType_18392_11910_50925#PolymorphicMapType_18392| Heap@@5) null (WandMaskField_11910 pm_f_16@@2))) o2_16@@5 f_40@@5) (= (select (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| Heap@@5) o2_16@@5 f_40@@5) (select (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| ExhaleHeap@@4) o2_16@@5 f_40@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| ExhaleHeap@@4) o2_16@@5 f_40@@5))
))) (forall ((o2_16@@6 T@Ref) (f_40@@6 T@Field_27351_5275) ) (!  (=> (select (|PolymorphicMapType_18941_18452_5275#PolymorphicMapType_18941| (select (|PolymorphicMapType_18392_11910_50925#PolymorphicMapType_18392| Heap@@5) null (WandMaskField_11910 pm_f_16@@2))) o2_16@@6 f_40@@6) (= (select (|PolymorphicMapType_18392_11908_5275#PolymorphicMapType_18392| Heap@@5) o2_16@@6 f_40@@6) (select (|PolymorphicMapType_18392_11908_5275#PolymorphicMapType_18392| ExhaleHeap@@4) o2_16@@6 f_40@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18392_11908_5275#PolymorphicMapType_18392| ExhaleHeap@@4) o2_16@@6 f_40@@6))
))) (forall ((o2_16@@7 T@Ref) (f_40@@7 T@Field_11910_50748) ) (!  (=> (select (|PolymorphicMapType_18941_18452_50748#PolymorphicMapType_18941| (select (|PolymorphicMapType_18392_11910_50925#PolymorphicMapType_18392| Heap@@5) null (WandMaskField_11910 pm_f_16@@2))) o2_16@@7 f_40@@7) (= (select (|PolymorphicMapType_18392_18452_50748#PolymorphicMapType_18392| Heap@@5) o2_16@@7 f_40@@7) (select (|PolymorphicMapType_18392_18452_50748#PolymorphicMapType_18392| ExhaleHeap@@4) o2_16@@7 f_40@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18392_18452_50748#PolymorphicMapType_18392| ExhaleHeap@@4) o2_16@@7 f_40@@7))
))) (forall ((o2_16@@8 T@Ref) (f_40@@8 T@Field_11910_50881) ) (!  (=> (select (|PolymorphicMapType_18941_18452_52059#PolymorphicMapType_18941| (select (|PolymorphicMapType_18392_11910_50925#PolymorphicMapType_18392| Heap@@5) null (WandMaskField_11910 pm_f_16@@2))) o2_16@@8 f_40@@8) (= (select (|PolymorphicMapType_18392_11910_50925#PolymorphicMapType_18392| Heap@@5) o2_16@@8 f_40@@8) (select (|PolymorphicMapType_18392_11910_50925#PolymorphicMapType_18392| ExhaleHeap@@4) o2_16@@8 f_40@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18392_11910_50925#PolymorphicMapType_18392| ExhaleHeap@@4) o2_16@@8 f_40@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_11910_52586 pm_f_16@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.207:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3152| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.580:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3152| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_18392) (ExhaleHeap@@5 T@PolymorphicMapType_18392) (Mask@@16 T@PolymorphicMapType_18413) (o_34@@0 T@Ref) (f_40@@9 T@Field_11910_50881) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_11910_56557 Mask@@16 o_34@@0 f_40@@9) (= (select (|PolymorphicMapType_18392_11910_50925#PolymorphicMapType_18392| Heap@@6) o_34@@0 f_40@@9) (select (|PolymorphicMapType_18392_11910_50925#PolymorphicMapType_18392| ExhaleHeap@@5) o_34@@0 f_40@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_18392_11910_50925#PolymorphicMapType_18392| ExhaleHeap@@5) o_34@@0 f_40@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_18392) (ExhaleHeap@@6 T@PolymorphicMapType_18392) (Mask@@17 T@PolymorphicMapType_18413) (o_34@@1 T@Ref) (f_40@@10 T@Field_11910_50748) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_11910_50812 Mask@@17 o_34@@1 f_40@@10) (= (select (|PolymorphicMapType_18392_18452_50748#PolymorphicMapType_18392| Heap@@7) o_34@@1 f_40@@10) (select (|PolymorphicMapType_18392_18452_50748#PolymorphicMapType_18392| ExhaleHeap@@6) o_34@@1 f_40@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_18392_18452_50748#PolymorphicMapType_18392| ExhaleHeap@@6) o_34@@1 f_40@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_18392) (ExhaleHeap@@7 T@PolymorphicMapType_18392) (Mask@@18 T@PolymorphicMapType_18413) (o_34@@2 T@Ref) (f_40@@11 T@Field_27351_5275) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_11910_5275 Mask@@18 o_34@@2 f_40@@11) (= (select (|PolymorphicMapType_18392_11908_5275#PolymorphicMapType_18392| Heap@@8) o_34@@2 f_40@@11) (select (|PolymorphicMapType_18392_11908_5275#PolymorphicMapType_18392| ExhaleHeap@@7) o_34@@2 f_40@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_18392_11908_5275#PolymorphicMapType_18392| ExhaleHeap@@7) o_34@@2 f_40@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_18392) (ExhaleHeap@@8 T@PolymorphicMapType_18392) (Mask@@19 T@PolymorphicMapType_18413) (o_34@@3 T@Ref) (f_40@@12 T@Field_18452_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_11910_53 Mask@@19 o_34@@3 f_40@@12) (= (select (|PolymorphicMapType_18392_11519_53#PolymorphicMapType_18392| Heap@@9) o_34@@3 f_40@@12) (select (|PolymorphicMapType_18392_11519_53#PolymorphicMapType_18392| ExhaleHeap@@8) o_34@@3 f_40@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_18392_11519_53#PolymorphicMapType_18392| ExhaleHeap@@8) o_34@@3 f_40@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_18392) (ExhaleHeap@@9 T@PolymorphicMapType_18392) (Mask@@20 T@PolymorphicMapType_18413) (o_34@@4 T@Ref) (f_40@@13 T@Field_18465_18466) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_11910_11911 Mask@@20 o_34@@4 f_40@@13) (= (select (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| Heap@@10) o_34@@4 f_40@@13) (select (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| ExhaleHeap@@9) o_34@@4 f_40@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| ExhaleHeap@@9) o_34@@4 f_40@@13))
)))
(assert (forall ((s0@@1 T@Seq_41230) (s1@@1 T@Seq_41230) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_12011|)) (not (= s1@@1 |Seq#Empty_12011|))) (= (|Seq#Length_12011| (|Seq#Append_41230| s0@@1 s1@@1)) (+ (|Seq#Length_12011| s0@@1) (|Seq#Length_12011| s1@@1))))
 :qid |stdinbpl.257:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_12011| (|Seq#Append_41230| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3152) (s1@@2 T@Seq_3152) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3152|)) (not (= s1@@2 |Seq#Empty_3152|))) (= (|Seq#Length_3152| (|Seq#Append_3152| s0@@2 s1@@2)) (+ (|Seq#Length_3152| s0@@2) (|Seq#Length_3152| s1@@2))))
 :qid |stdinbpl.257:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3152| (|Seq#Append_3152| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_11910_50881) ) (! (= (select (|PolymorphicMapType_18413_11910_54988#PolymorphicMapType_18413| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18413_11910_54988#PolymorphicMapType_18413| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_11910_50748) ) (! (= (select (|PolymorphicMapType_18413_11910_50748#PolymorphicMapType_18413| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18413_11910_50748#PolymorphicMapType_18413| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_18452_53) ) (! (= (select (|PolymorphicMapType_18413_11910_53#PolymorphicMapType_18413| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18413_11910_53#PolymorphicMapType_18413| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_27351_5275) ) (! (= (select (|PolymorphicMapType_18413_11908_5275#PolymorphicMapType_18413| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18413_11908_5275#PolymorphicMapType_18413| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_18465_18466) ) (! (= (select (|PolymorphicMapType_18413_11910_11911#PolymorphicMapType_18413| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18413_11910_11911#PolymorphicMapType_18413| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((s@@15 T@Seq_41230) (t@@1 T@Seq_41230) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_12011| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_12011| s@@15)) (|Seq#Length_12011| s@@15)) n@@15) (= (|Seq#Drop_12011| (|Seq#Append_41230| s@@15 t@@1) n@@15) (|Seq#Drop_12011| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_12011| s@@15))))))
 :qid |stdinbpl.414:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_12011| (|Seq#Append_41230| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3152) (t@@2 T@Seq_3152) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3152| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3152| s@@16)) (|Seq#Length_3152| s@@16)) n@@16) (= (|Seq#Drop_3152| (|Seq#Append_3152| s@@16 t@@2) n@@16) (|Seq#Drop_3152| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3152| s@@16))))))
 :qid |stdinbpl.414:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3152| (|Seq#Append_3152| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_18413) (SummandMask1 T@PolymorphicMapType_18413) (SummandMask2 T@PolymorphicMapType_18413) (o_2@@19 T@Ref) (f_4@@19 T@Field_11910_50881) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_18413_11910_54988#PolymorphicMapType_18413| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_18413_11910_54988#PolymorphicMapType_18413| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_18413_11910_54988#PolymorphicMapType_18413| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_18413_11910_54988#PolymorphicMapType_18413| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_18413_11910_54988#PolymorphicMapType_18413| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_18413_11910_54988#PolymorphicMapType_18413| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_18413) (SummandMask1@@0 T@PolymorphicMapType_18413) (SummandMask2@@0 T@PolymorphicMapType_18413) (o_2@@20 T@Ref) (f_4@@20 T@Field_11910_50748) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_18413_11910_50748#PolymorphicMapType_18413| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_18413_11910_50748#PolymorphicMapType_18413| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_18413_11910_50748#PolymorphicMapType_18413| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_18413_11910_50748#PolymorphicMapType_18413| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_18413_11910_50748#PolymorphicMapType_18413| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_18413_11910_50748#PolymorphicMapType_18413| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_18413) (SummandMask1@@1 T@PolymorphicMapType_18413) (SummandMask2@@1 T@PolymorphicMapType_18413) (o_2@@21 T@Ref) (f_4@@21 T@Field_18452_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_18413_11910_53#PolymorphicMapType_18413| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_18413_11910_53#PolymorphicMapType_18413| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_18413_11910_53#PolymorphicMapType_18413| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_18413_11910_53#PolymorphicMapType_18413| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_18413_11910_53#PolymorphicMapType_18413| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_18413_11910_53#PolymorphicMapType_18413| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_18413) (SummandMask1@@2 T@PolymorphicMapType_18413) (SummandMask2@@2 T@PolymorphicMapType_18413) (o_2@@22 T@Ref) (f_4@@22 T@Field_27351_5275) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_18413_11908_5275#PolymorphicMapType_18413| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_18413_11908_5275#PolymorphicMapType_18413| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_18413_11908_5275#PolymorphicMapType_18413| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_18413_11908_5275#PolymorphicMapType_18413| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_18413_11908_5275#PolymorphicMapType_18413| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_18413_11908_5275#PolymorphicMapType_18413| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_18413) (SummandMask1@@3 T@PolymorphicMapType_18413) (SummandMask2@@3 T@PolymorphicMapType_18413) (o_2@@23 T@Ref) (f_4@@23 T@Field_18465_18466) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_18413_11910_11911#PolymorphicMapType_18413| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_18413_11910_11911#PolymorphicMapType_18413| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_18413_11910_11911#PolymorphicMapType_18413| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_18413_11910_11911#PolymorphicMapType_18413| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_18413_11910_11911#PolymorphicMapType_18413| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_18413_11910_11911#PolymorphicMapType_18413| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((a@@4 (Array T@Ref Bool)) (b@@3 (Array T@Ref Bool)) (o@@0 T@Ref) ) (! (= (select (|Set#Intersection_11916| a@@4 b@@3) o@@0)  (and (select a@@4 o@@0) (select b@@3 o@@0)))
 :qid |stdinbpl.634:18|
 :skolemid |73|
 :pattern ( (select (|Set#Intersection_11916| a@@4 b@@3) o@@0))
 :pattern ( (|Set#Intersection_11916| a@@4 b@@3) (select a@@4 o@@0))
 :pattern ( (|Set#Intersection_11916| a@@4 b@@3) (select b@@3 o@@0))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3152| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3152| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.579:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3152| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a@@5 (Array T@Ref Bool)) (b@@4 (Array T@Ref Bool)) (o@@1 T@Ref) ) (! (= (select (|Set#Difference_11916| a@@5 b@@4) o@@1)  (and (select a@@5 o@@1) (not (select b@@4 o@@1))))
 :qid |stdinbpl.649:18|
 :skolemid |79|
 :pattern ( (select (|Set#Difference_11916| a@@5 b@@4) o@@1))
 :pattern ( (|Set#Difference_11916| a@@5 b@@4) (select a@@5 o@@1))
)))
(assert (forall ((a@@6 T@Seq_41230) (b@@5 T@Seq_41230) ) (!  (=> (|Seq#Equal_41230| a@@6 b@@5) (= a@@6 b@@5))
 :qid |stdinbpl.552:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_41230| a@@6 b@@5))
)))
(assert (forall ((a@@7 T@Seq_3152) (b@@6 T@Seq_3152) ) (!  (=> (|Seq#Equal_3152| a@@7 b@@6) (= a@@7 b@@6))
 :qid |stdinbpl.552:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3152| a@@7 b@@6))
)))
(assert (forall ((a@@8 (Array T@Ref Bool)) (x@@3 T@Ref) (y@@1 T@Ref) ) (!  (=> (select a@@8 y@@1) (select (|Set#UnionOne_11916| a@@8 x@@3) y@@1))
 :qid |stdinbpl.614:18|
 :skolemid |67|
 :pattern ( (|Set#UnionOne_11916| a@@8 x@@3) (select a@@8 y@@1))
)))
(assert (forall ((a@@9 (Array T@Ref Bool)) (b@@7 (Array T@Ref Bool)) (y@@2 T@Ref) ) (!  (=> (select a@@9 y@@2) (select (|Set#Union_11916| a@@9 b@@7) y@@2))
 :qid |stdinbpl.624:18|
 :skolemid |71|
 :pattern ( (|Set#Union_11916| a@@9 b@@7) (select a@@9 y@@2))
)))
(assert (forall ((a@@10 (Array T@Ref Bool)) (b@@8 (Array T@Ref Bool)) (y@@3 T@Ref) ) (!  (=> (select b@@8 y@@3) (select (|Set#Union_11916| a@@10 b@@8) y@@3))
 :qid |stdinbpl.626:18|
 :skolemid |72|
 :pattern ( (|Set#Union_11916| a@@10 b@@8) (select b@@8 y@@3))
)))
(assert (forall ((a@@11 (Array T@Ref Bool)) (x@@4 T@Ref) (o@@2 T@Ref) ) (! (= (select (|Set#UnionOne_11916| a@@11 x@@4) o@@2)  (or (= o@@2 x@@4) (select a@@11 o@@2)))
 :qid |stdinbpl.610:18|
 :skolemid |65|
 :pattern ( (select (|Set#UnionOne_11916| a@@11 x@@4) o@@2))
)))
(assert (forall ((a@@12 (Array T@Ref Bool)) (b@@9 (Array T@Ref Bool)) (y@@4 T@Ref) ) (!  (=> (select b@@9 y@@4) (not (select (|Set#Difference_11916| a@@12 b@@9) y@@4)))
 :qid |stdinbpl.651:18|
 :skolemid |80|
 :pattern ( (|Set#Difference_11916| a@@12 b@@9) (select b@@9 y@@4))
)))
(assert (forall ((s@@17 T@Seq_41230) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_12011| s@@17))) (|Seq#ContainsTrigger_12011| s@@17 (|Seq#Index_12011| s@@17 i@@3)))
 :qid |stdinbpl.445:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_12011| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_3152) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_3152| s@@18))) (|Seq#ContainsTrigger_3152| s@@18 (|Seq#Index_3152| s@@18 i@@4)))
 :qid |stdinbpl.445:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3152| s@@18 i@@4))
)))
(assert (forall ((a@@13 (Array T@Ref Bool)) (b@@10 (Array T@Ref Bool)) ) (!  (and (= (+ (+ (|Set#Card_11916| (|Set#Difference_11916| a@@13 b@@10)) (|Set#Card_11916| (|Set#Difference_11916| b@@10 a@@13))) (|Set#Card_11916| (|Set#Intersection_11916| a@@13 b@@10))) (|Set#Card_11916| (|Set#Union_11916| a@@13 b@@10))) (= (|Set#Card_11916| (|Set#Difference_11916| a@@13 b@@10)) (- (|Set#Card_11916| a@@13) (|Set#Card_11916| (|Set#Intersection_11916| a@@13 b@@10)))))
 :qid |stdinbpl.653:18|
 :skolemid |81|
 :pattern ( (|Set#Card_11916| (|Set#Difference_11916| a@@13 b@@10)))
)))
(assert (forall ((s0@@3 T@Seq_41230) (s1@@3 T@Seq_41230) ) (!  (and (=> (= s0@@3 |Seq#Empty_12011|) (= (|Seq#Append_41230| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_12011|) (= (|Seq#Append_41230| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.263:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_41230| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3152) (s1@@4 T@Seq_3152) ) (!  (and (=> (= s0@@4 |Seq#Empty_3152|) (= (|Seq#Append_3152| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3152|) (= (|Seq#Append_3152| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.263:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3152| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_12011| (|Seq#Singleton_12011| t@@3) 0) t@@3)
 :qid |stdinbpl.267:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_12011| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3152| (|Seq#Singleton_3152| t@@4) 0) t@@4)
 :qid |stdinbpl.267:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3152| t@@4))
)))
(assert (forall ((s@@19 T@Seq_41230) ) (! (<= 0 (|Seq#Length_12011| s@@19))
 :qid |stdinbpl.246:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_12011| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3152) ) (! (<= 0 (|Seq#Length_3152| s@@20))
 :qid |stdinbpl.246:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3152| s@@20))
)))
(assert (forall ((s@@21 (Array T@Ref Bool)) ) (! (<= 0 (|Set#Card_11916| s@@21))
 :qid |stdinbpl.596:18|
 :skolemid |58|
 :pattern ( (|Set#Card_11916| s@@21))
)))
(assert (forall ((a@@14 (Array T@Ref Bool)) (x@@5 T@Ref) ) (! (select (|Set#UnionOne_11916| a@@14 x@@5) x@@5)
 :qid |stdinbpl.612:18|
 :skolemid |66|
 :pattern ( (|Set#UnionOne_11916| a@@14 x@@5))
)))
(assert (forall ((s0@@5 T@Seq_41230) (s1@@5 T@Seq_41230) ) (!  (=> (|Seq#Equal_41230| s0@@5 s1@@5) (and (= (|Seq#Length_12011| s0@@5) (|Seq#Length_12011| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_12011| s0@@5))) (= (|Seq#Index_12011| s0@@5 j@@6) (|Seq#Index_12011| s1@@5 j@@6)))
 :qid |stdinbpl.542:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_12011| s0@@5 j@@6))
 :pattern ( (|Seq#Index_12011| s1@@5 j@@6))
))))
 :qid |stdinbpl.539:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_41230| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3152) (s1@@6 T@Seq_3152) ) (!  (=> (|Seq#Equal_3152| s0@@6 s1@@6) (and (= (|Seq#Length_3152| s0@@6) (|Seq#Length_3152| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_3152| s0@@6))) (= (|Seq#Index_3152| s0@@6 j@@7) (|Seq#Index_3152| s1@@6 j@@7)))
 :qid |stdinbpl.542:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3152| s0@@6 j@@7))
 :pattern ( (|Seq#Index_3152| s1@@6 j@@7))
))))
 :qid |stdinbpl.539:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3152| s0@@6 s1@@6))
)))
(assert (forall ((a@@15 (Array T@Ref Bool)) (x@@6 T@Ref) ) (!  (=> (select a@@15 x@@6) (= (|Set#Card_11916| (|Set#UnionOne_11916| a@@15 x@@6)) (|Set#Card_11916| a@@15)))
 :qid |stdinbpl.616:18|
 :skolemid |68|
 :pattern ( (|Set#Card_11916| (|Set#UnionOne_11916| a@@15 x@@6)))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_12011| (|Seq#Singleton_12011| t@@5)) 1)
 :qid |stdinbpl.254:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_12011| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3152| (|Seq#Singleton_3152| t@@6)) 1)
 :qid |stdinbpl.254:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3152| t@@6))
)))
(assert (forall ((r@@0 T@Ref) ) (! (= (|Set#Card_11916| (|Set#Singleton_11916| r@@0)) 1)
 :qid |stdinbpl.607:18|
 :skolemid |64|
 :pattern ( (|Set#Card_11916| (|Set#Singleton_11916| r@@0)))
)))
(assert (forall ((r@@1 T@Ref) ) (! (select (|Set#Singleton_11916| r@@1) r@@1)
 :qid |stdinbpl.605:18|
 :skolemid |62|
 :pattern ( (|Set#Singleton_11916| r@@1))
)))
(assert (forall ((a@@16 (Array T@Ref Bool)) (b@@11 (Array T@Ref Bool)) ) (! (= (|Set#Union_11916| a@@16 (|Set#Union_11916| a@@16 b@@11)) (|Set#Union_11916| a@@16 b@@11))
 :qid |stdinbpl.639:18|
 :skolemid |75|
 :pattern ( (|Set#Union_11916| a@@16 (|Set#Union_11916| a@@16 b@@11)))
)))
(assert (forall ((a@@17 (Array T@Ref Bool)) (b@@12 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_11916| a@@17 (|Set#Intersection_11916| a@@17 b@@12)) (|Set#Intersection_11916| a@@17 b@@12))
 :qid |stdinbpl.643:18|
 :skolemid |77|
 :pattern ( (|Set#Intersection_11916| a@@17 (|Set#Intersection_11916| a@@17 b@@12)))
)))
(assert (forall ((s@@22 T@Seq_41230) (t@@7 T@Seq_41230) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_12011| s@@22))) (= (|Seq#Take_12011| (|Seq#Append_41230| s@@22 t@@7) n@@17) (|Seq#Take_12011| s@@22 n@@17)))
 :qid |stdinbpl.396:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_12011| (|Seq#Append_41230| s@@22 t@@7) n@@17))
)))
(assert (forall ((s@@23 T@Seq_3152) (t@@8 T@Seq_3152) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3152| s@@23))) (= (|Seq#Take_3152| (|Seq#Append_3152| s@@23 t@@8) n@@18) (|Seq#Take_3152| s@@23 n@@18)))
 :qid |stdinbpl.396:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3152| (|Seq#Append_3152| s@@23 t@@8) n@@18))
)))
(assert (forall ((o@@3 T@Ref) ) (!  (not (select |Set#Empty_11916| o@@3))
 :qid |stdinbpl.599:18|
 :skolemid |59|
 :pattern ( (select |Set#Empty_11916| o@@3))
)))
(assert (forall ((s@@24 T@Seq_41230) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_12011| s@@24))) (= (|Seq#Length_12011| (|Seq#Update_12011| s@@24 i@@5 v@@2)) (|Seq#Length_12011| s@@24)))
 :qid |stdinbpl.295:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_12011| (|Seq#Update_12011| s@@24 i@@5 v@@2)))
 :pattern ( (|Seq#Length_12011| s@@24) (|Seq#Update_12011| s@@24 i@@5 v@@2))
)))
(assert (forall ((s@@25 T@Seq_3152) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_3152| s@@25))) (= (|Seq#Length_3152| (|Seq#Update_3152| s@@25 i@@6 v@@3)) (|Seq#Length_3152| s@@25)))
 :qid |stdinbpl.295:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3152| (|Seq#Update_3152| s@@25 i@@6 v@@3)))
 :pattern ( (|Seq#Length_3152| s@@25) (|Seq#Update_3152| s@@25 i@@6 v@@3))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_18392) (o_3 T@Ref) (f_35 T@Field_11910_50748) (v@@4 T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_18392 (|PolymorphicMapType_18392_11519_53#PolymorphicMapType_18392| Heap@@11) (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| Heap@@11) (|PolymorphicMapType_18392_11908_5275#PolymorphicMapType_18392| Heap@@11) (|PolymorphicMapType_18392_11910_50925#PolymorphicMapType_18392| Heap@@11) (store (|PolymorphicMapType_18392_18452_50748#PolymorphicMapType_18392| Heap@@11) o_3 f_35 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18392 (|PolymorphicMapType_18392_11519_53#PolymorphicMapType_18392| Heap@@11) (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| Heap@@11) (|PolymorphicMapType_18392_11908_5275#PolymorphicMapType_18392| Heap@@11) (|PolymorphicMapType_18392_11910_50925#PolymorphicMapType_18392| Heap@@11) (store (|PolymorphicMapType_18392_18452_50748#PolymorphicMapType_18392| Heap@@11) o_3 f_35 v@@4)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_18392) (o_3@@0 T@Ref) (f_35@@0 T@Field_11910_50881) (v@@5 T@PolymorphicMapType_18941) ) (! (succHeap Heap@@12 (PolymorphicMapType_18392 (|PolymorphicMapType_18392_11519_53#PolymorphicMapType_18392| Heap@@12) (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| Heap@@12) (|PolymorphicMapType_18392_11908_5275#PolymorphicMapType_18392| Heap@@12) (store (|PolymorphicMapType_18392_11910_50925#PolymorphicMapType_18392| Heap@@12) o_3@@0 f_35@@0 v@@5) (|PolymorphicMapType_18392_18452_50748#PolymorphicMapType_18392| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18392 (|PolymorphicMapType_18392_11519_53#PolymorphicMapType_18392| Heap@@12) (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| Heap@@12) (|PolymorphicMapType_18392_11908_5275#PolymorphicMapType_18392| Heap@@12) (store (|PolymorphicMapType_18392_11910_50925#PolymorphicMapType_18392| Heap@@12) o_3@@0 f_35@@0 v@@5) (|PolymorphicMapType_18392_18452_50748#PolymorphicMapType_18392| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_18392) (o_3@@1 T@Ref) (f_35@@1 T@Field_27351_5275) (v@@6 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_18392 (|PolymorphicMapType_18392_11519_53#PolymorphicMapType_18392| Heap@@13) (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| Heap@@13) (store (|PolymorphicMapType_18392_11908_5275#PolymorphicMapType_18392| Heap@@13) o_3@@1 f_35@@1 v@@6) (|PolymorphicMapType_18392_11910_50925#PolymorphicMapType_18392| Heap@@13) (|PolymorphicMapType_18392_18452_50748#PolymorphicMapType_18392| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18392 (|PolymorphicMapType_18392_11519_53#PolymorphicMapType_18392| Heap@@13) (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| Heap@@13) (store (|PolymorphicMapType_18392_11908_5275#PolymorphicMapType_18392| Heap@@13) o_3@@1 f_35@@1 v@@6) (|PolymorphicMapType_18392_11910_50925#PolymorphicMapType_18392| Heap@@13) (|PolymorphicMapType_18392_18452_50748#PolymorphicMapType_18392| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_18392) (o_3@@2 T@Ref) (f_35@@2 T@Field_18465_18466) (v@@7 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_18392 (|PolymorphicMapType_18392_11519_53#PolymorphicMapType_18392| Heap@@14) (store (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| Heap@@14) o_3@@2 f_35@@2 v@@7) (|PolymorphicMapType_18392_11908_5275#PolymorphicMapType_18392| Heap@@14) (|PolymorphicMapType_18392_11910_50925#PolymorphicMapType_18392| Heap@@14) (|PolymorphicMapType_18392_18452_50748#PolymorphicMapType_18392| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18392 (|PolymorphicMapType_18392_11519_53#PolymorphicMapType_18392| Heap@@14) (store (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| Heap@@14) o_3@@2 f_35@@2 v@@7) (|PolymorphicMapType_18392_11908_5275#PolymorphicMapType_18392| Heap@@14) (|PolymorphicMapType_18392_11910_50925#PolymorphicMapType_18392| Heap@@14) (|PolymorphicMapType_18392_18452_50748#PolymorphicMapType_18392| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_18392) (o_3@@3 T@Ref) (f_35@@3 T@Field_18452_53) (v@@8 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_18392 (store (|PolymorphicMapType_18392_11519_53#PolymorphicMapType_18392| Heap@@15) o_3@@3 f_35@@3 v@@8) (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| Heap@@15) (|PolymorphicMapType_18392_11908_5275#PolymorphicMapType_18392| Heap@@15) (|PolymorphicMapType_18392_11910_50925#PolymorphicMapType_18392| Heap@@15) (|PolymorphicMapType_18392_18452_50748#PolymorphicMapType_18392| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18392 (store (|PolymorphicMapType_18392_11519_53#PolymorphicMapType_18392| Heap@@15) o_3@@3 f_35@@3 v@@8) (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| Heap@@15) (|PolymorphicMapType_18392_11908_5275#PolymorphicMapType_18392| Heap@@15) (|PolymorphicMapType_18392_11910_50925#PolymorphicMapType_18392| Heap@@15) (|PolymorphicMapType_18392_18452_50748#PolymorphicMapType_18392| Heap@@15)))
)))
(assert (forall ((s@@26 T@Seq_41230) (t@@9 T@Seq_41230) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_12011| s@@26))) (= (|Seq#Drop_12011| (|Seq#Append_41230| s@@26 t@@9) n@@19) (|Seq#Append_41230| (|Seq#Drop_12011| s@@26 n@@19) t@@9)))
 :qid |stdinbpl.410:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_12011| (|Seq#Append_41230| s@@26 t@@9) n@@19))
)))
(assert (forall ((s@@27 T@Seq_3152) (t@@10 T@Seq_3152) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3152| s@@27))) (= (|Seq#Drop_3152| (|Seq#Append_3152| s@@27 t@@10) n@@20) (|Seq#Append_3152| (|Seq#Drop_3152| s@@27 n@@20) t@@10)))
 :qid |stdinbpl.410:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3152| (|Seq#Append_3152| s@@27 t@@10) n@@20))
)))
(assert (forall ((a@@18 Int) (b@@13 Int) ) (! (= (<= a@@18 b@@13) (= (|Math#min| a@@18 b@@13) a@@18))
 :qid |stdinbpl.683:15|
 :skolemid |87|
 :pattern ( (|Math#min| a@@18 b@@13))
)))
(assert (forall ((a@@19 Int) (b@@14 Int) ) (! (= (<= b@@14 a@@19) (= (|Math#min| a@@19 b@@14) b@@14))
 :qid |stdinbpl.684:15|
 :skolemid |88|
 :pattern ( (|Math#min| a@@19 b@@14))
)))
(assert (forall ((s@@28 T@Seq_41230) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_12011| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_12011| (|Seq#Drop_12011| s@@28 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_12011| s@@28 i@@7))))
 :qid |stdinbpl.346:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_12011| s@@28 n@@21) (|Seq#Index_12011| s@@28 i@@7))
)))
(assert (forall ((s@@29 T@Seq_3152) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_3152| s@@29))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_3152| (|Seq#Drop_3152| s@@29 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_3152| s@@29 i@@8))))
 :qid |stdinbpl.346:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3152| s@@29 n@@22) (|Seq#Index_3152| s@@29 i@@8))
)))
(assert (forall ((s@@30 (Array T@Ref Bool)) ) (!  (and (= (= (|Set#Card_11916| s@@30) 0) (= s@@30 |Set#Empty_11916|)) (=> (not (= (|Set#Card_11916| s@@30) 0)) (exists ((x@@7 T@Ref) ) (! (select s@@30 x@@7)
 :qid |stdinbpl.602:33|
 :skolemid |60|
))))
 :qid |stdinbpl.600:18|
 :skolemid |61|
 :pattern ( (|Set#Card_11916| s@@30))
)))
(assert (forall ((s0@@7 T@Seq_41230) (s1@@7 T@Seq_41230) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_12011|)) (not (= s1@@7 |Seq#Empty_12011|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_12011| s0@@7))) (= (|Seq#Index_12011| (|Seq#Append_41230| s0@@7 s1@@7) n@@23) (|Seq#Index_12011| s0@@7 n@@23)))
 :qid |stdinbpl.286:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_12011| (|Seq#Append_41230| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_12011| s0@@7 n@@23) (|Seq#Append_41230| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3152) (s1@@8 T@Seq_3152) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3152|)) (not (= s1@@8 |Seq#Empty_3152|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3152| s0@@8))) (= (|Seq#Index_3152| (|Seq#Append_3152| s0@@8 s1@@8) n@@24) (|Seq#Index_3152| s0@@8 n@@24)))
 :qid |stdinbpl.286:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3152| (|Seq#Append_3152| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3152| s0@@8 n@@24) (|Seq#Append_3152| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_41230) (s1@@9 T@Seq_41230) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_12011|)) (not (= s1@@9 |Seq#Empty_12011|))) (<= 0 m)) (< m (|Seq#Length_12011| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_12011| s0@@9)) (|Seq#Length_12011| s0@@9)) m) (= (|Seq#Index_12011| (|Seq#Append_41230| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_12011| s0@@9))) (|Seq#Index_12011| s1@@9 m))))
 :qid |stdinbpl.291:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_12011| s1@@9 m) (|Seq#Append_41230| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3152) (s1@@10 T@Seq_3152) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3152|)) (not (= s1@@10 |Seq#Empty_3152|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3152| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3152| s0@@10)) (|Seq#Length_3152| s0@@10)) m@@0) (= (|Seq#Index_3152| (|Seq#Append_3152| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3152| s0@@10))) (|Seq#Index_3152| s1@@10 m@@0))))
 :qid |stdinbpl.291:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3152| s1@@10 m@@0) (|Seq#Append_3152| s0@@10 s1@@10))
)))
(assert (forall ((a@@20 (Array T@Ref Bool)) (x@@8 T@Ref) ) (!  (=> (not (select a@@20 x@@8)) (= (|Set#Card_11916| (|Set#UnionOne_11916| a@@20 x@@8)) (+ (|Set#Card_11916| a@@20) 1)))
 :qid |stdinbpl.618:18|
 :skolemid |69|
 :pattern ( (|Set#Card_11916| (|Set#UnionOne_11916| a@@20 x@@8)))
)))
(assert (forall ((o_3@@4 T@Ref) (f_8 T@Field_18465_18466) (Heap@@16 T@PolymorphicMapType_18392) ) (!  (=> (select (|PolymorphicMapType_18392_11519_53#PolymorphicMapType_18392| Heap@@16) o_3@@4 $allocated) (select (|PolymorphicMapType_18392_11519_53#PolymorphicMapType_18392| Heap@@16) (select (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| Heap@@16) o_3@@4 f_8) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| Heap@@16) o_3@@4 f_8))
)))
(assert (forall ((s@@31 T@Seq_41230) (x@@9 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_12011| s@@31))) (= (|Seq#Index_12011| s@@31 i@@9) x@@9)) (|Seq#Contains_41230| s@@31 x@@9))
 :qid |stdinbpl.443:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_41230| s@@31 x@@9) (|Seq#Index_12011| s@@31 i@@9))
)))
(assert (forall ((s@@32 T@Seq_3152) (x@@10 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_3152| s@@32))) (= (|Seq#Index_3152| s@@32 i@@10) x@@10)) (|Seq#Contains_3152| s@@32 x@@10))
 :qid |stdinbpl.443:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3152| s@@32 x@@10) (|Seq#Index_3152| s@@32 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_41230) (s1@@11 T@Seq_41230) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_41230| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_41230| s0@@11 s1@@11))) (not (= (|Seq#Length_12011| s0@@11) (|Seq#Length_12011| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_41230| s0@@11 s1@@11))) (= (|Seq#Length_12011| s0@@11) (|Seq#Length_12011| s1@@11))) (= (|Seq#SkolemDiff_41230| s0@@11 s1@@11) (|Seq#SkolemDiff_41230| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_41230| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_41230| s0@@11 s1@@11) (|Seq#Length_12011| s0@@11))) (not (= (|Seq#Index_12011| s0@@11 (|Seq#SkolemDiff_41230| s0@@11 s1@@11)) (|Seq#Index_12011| s1@@11 (|Seq#SkolemDiff_41230| s0@@11 s1@@11))))))
 :qid |stdinbpl.547:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_41230| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3152) (s1@@12 T@Seq_3152) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3152| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3152| s0@@12 s1@@12))) (not (= (|Seq#Length_3152| s0@@12) (|Seq#Length_3152| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3152| s0@@12 s1@@12))) (= (|Seq#Length_3152| s0@@12) (|Seq#Length_3152| s1@@12))) (= (|Seq#SkolemDiff_3152| s0@@12 s1@@12) (|Seq#SkolemDiff_3152| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3152| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3152| s0@@12 s1@@12) (|Seq#Length_3152| s0@@12))) (not (= (|Seq#Index_3152| s0@@12 (|Seq#SkolemDiff_3152| s0@@12 s1@@12)) (|Seq#Index_3152| s1@@12 (|Seq#SkolemDiff_3152| s0@@12 s1@@12))))))
 :qid |stdinbpl.547:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3152| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_11910_50748) (v_1@@0 T@FrameType) (q T@Field_11910_50748) (w@@0 T@FrameType) (r@@2 T@Field_11910_50748) (u T@FrameType) ) (!  (=> (and (InsidePredicate_18452_18452 p@@1 v_1@@0 q w@@0) (InsidePredicate_18452_18452 q w@@0 r@@2 u)) (InsidePredicate_18452_18452 p@@1 v_1@@0 r@@2 u))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18452_18452 p@@1 v_1@@0 q w@@0) (InsidePredicate_18452_18452 q w@@0 r@@2 u))
)))
(assert (forall ((a@@21 Int) ) (!  (=> (< a@@21 0) (= (|Math#clip| a@@21) 0))
 :qid |stdinbpl.689:15|
 :skolemid |91|
 :pattern ( (|Math#clip| a@@21))
)))
(assert (forall ((s@@33 T@Seq_41230) ) (!  (=> (= (|Seq#Length_12011| s@@33) 0) (= s@@33 |Seq#Empty_12011|))
 :qid |stdinbpl.250:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_12011| s@@33))
)))
(assert (forall ((s@@34 T@Seq_3152) ) (!  (=> (= (|Seq#Length_3152| s@@34) 0) (= s@@34 |Seq#Empty_3152|))
 :qid |stdinbpl.250:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3152| s@@34))
)))
(assert (forall ((s@@35 T@Seq_41230) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_12011| s@@35 n@@25) |Seq#Empty_12011|))
 :qid |stdinbpl.426:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_12011| s@@35 n@@25))
)))
(assert (forall ((s@@36 T@Seq_3152) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3152| s@@36 n@@26) |Seq#Empty_3152|))
 :qid |stdinbpl.426:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3152| s@@36 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@22 (Array T@Ref Bool)) (b@@15 (Array T@Ref Bool)) (o@@4 T@Ref) ) (! (= (select (|Set#Union_11916| a@@22 b@@15) o@@4)  (or (select a@@22 o@@4) (select b@@15 o@@4)))
 :qid |stdinbpl.622:18|
 :skolemid |70|
 :pattern ( (select (|Set#Union_11916| a@@22 b@@15) o@@4))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x2 () T@Ref)
(declare-fun x1_2 () T@Ref)
(declare-fun x_11 () T@Ref)
(declare-fun QPMask@2 () T@PolymorphicMapType_18413)
(declare-fun PostHeap@0 () T@PolymorphicMapType_18392)
(declare-fun qpRange6 (T@Ref) Bool)
(declare-fun invRecv6 (T@Ref) T@Ref)
(declare-fun qpRange5 (T@Ref) Bool)
(declare-fun invRecv5 (T@Ref) T@Ref)
(declare-fun Heap@@17 () T@PolymorphicMapType_18392)
(declare-fun QPMask@0 () T@PolymorphicMapType_18413)
(declare-fun dummyFunction_11911 (T@Ref) Bool)
(declare-fun neverTriggered7 (T@Ref) Bool)
(declare-fun Mask@3 () T@PolymorphicMapType_18413)
(declare-fun qpRange7 (T@Ref) Bool)
(declare-fun invRecv7 (T@Ref) T@Ref)
(declare-fun dummyFunction_5275 (Int) Bool)
(declare-fun neverTriggered8 (T@Ref) Bool)
(declare-fun Mask@0 () T@PolymorphicMapType_18413)
(declare-fun perm@0 () Real)
(declare-fun Mask@1 () T@PolymorphicMapType_18413)
(declare-fun Mask@2 () T@PolymorphicMapType_18413)
(declare-fun perm@1 () Real)
(set-info :boogie-vc-id test02)
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
 (=> (= (ControlFlow 0 0) 28) (let ((anon6_correct true))
(let ((anon12_Else_correct  (=> (and (not (select (|Set#UnionOne_11916| (|Set#Singleton_11916| x2) x1_2) x_11)) (= (ControlFlow 0 16) 13)) anon6_correct)))
(let ((anon12_Then_correct  (=> (select (|Set#UnionOne_11916| (|Set#Singleton_11916| x2) x1_2) x_11) (and (=> (= (ControlFlow 0 14) (- 0 15)) (HasDirectPerm_11910_11911 QPMask@2 x_11 g)) (=> (HasDirectPerm_11910_11911 QPMask@2 x_11 g) (=> (= (ControlFlow 0 14) 13) anon6_correct))))))
(let ((anon11_Else_correct  (and (=> (= (ControlFlow 0 11) (- 0 12)) (forall ((x_3 T@Ref) (x_3_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_3 x_3_1)) (select (|Set#UnionOne_11916| (|Set#Singleton_11916| x2) x1_2) x_3)) (select (|Set#UnionOne_11916| (|Set#Singleton_11916| x2) x1_2) x_3_1)) (< NoPerm (/ (to_real 2) (to_real 3)))) (< NoPerm (/ (to_real 2) (to_real 3)))) (not (= (select (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| PostHeap@0) x_3 g) (select (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| PostHeap@0) x_3_1 g))))
 :qid |stdinbpl.1178:15|
 :skolemid |149|
))) (=> (forall ((x_3@@0 T@Ref) (x_3_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_3@@0 x_3_1@@0)) (select (|Set#UnionOne_11916| (|Set#Singleton_11916| x2) x1_2) x_3@@0)) (select (|Set#UnionOne_11916| (|Set#Singleton_11916| x2) x1_2) x_3_1@@0)) (< NoPerm (/ (to_real 2) (to_real 3)))) (< NoPerm (/ (to_real 2) (to_real 3)))) (not (= (select (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| PostHeap@0) x_3@@0 g) (select (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| PostHeap@0) x_3_1@@0 g))))
 :qid |stdinbpl.1178:15|
 :skolemid |149|
)) (=> (forall ((x_3@@1 T@Ref) ) (!  (=> (and (select (|Set#UnionOne_11916| (|Set#Singleton_11916| x2) x1_2) x_3@@1) (< NoPerm (/ (to_real 2) (to_real 3)))) (and (qpRange6 (select (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| PostHeap@0) x_3@@1 g)) (= (invRecv6 (select (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| PostHeap@0) x_3@@1 g)) x_3@@1)))
 :qid |stdinbpl.1184:22|
 :skolemid |150|
 :pattern ( (select (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| PostHeap@0) x_3@@1 g))
 :pattern ( (select (|Set#UnionOne_11916| (|Set#Singleton_11916| x2) x1_2) x_3@@1))
)) (=> (and (forall ((o_4 T@Ref) ) (!  (=> (and (and (select (|Set#UnionOne_11916| (|Set#Singleton_11916| x2) x1_2) (invRecv6 o_4)) (< NoPerm (/ (to_real 2) (to_real 3)))) (qpRange6 o_4)) (= (select (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| PostHeap@0) (invRecv6 o_4) g) o_4))
 :qid |stdinbpl.1188:22|
 :skolemid |151|
 :pattern ( (invRecv6 o_4))
)) (= (ControlFlow 0 11) (- 0 10))) (forall ((x_3@@2 T@Ref) ) (!  (=> (select (|Set#UnionOne_11916| (|Set#Singleton_11916| x2) x1_2) x_3@@2) (>= (/ (to_real 2) (to_real 3)) NoPerm))
 :qid |stdinbpl.1194:15|
 :skolemid |152|
 :pattern ( (select (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| PostHeap@0) x_3@@2 g))
 :pattern ( (select (|Set#UnionOne_11916| (|Set#Singleton_11916| x2) x1_2) x_3@@2))
))))))))
(let ((anon10_Else_correct  (and (=> (= (ControlFlow 0 17) (- 0 21)) (forall ((x_1 T@Ref) (x_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_1 x_1_1)) (select (|Set#UnionOne_11916| (|Set#Singleton_11916| x2) x1_2) x_1)) (select (|Set#UnionOne_11916| (|Set#Singleton_11916| x2) x1_2) x_1_1)) (< NoPerm (/ (to_real 2) (to_real 3)))) (< NoPerm (/ (to_real 2) (to_real 3)))) (not (= x_1 x_1_1)))
 :qid |stdinbpl.1120:15|
 :skolemid |142|
))) (=> (forall ((x_1@@0 T@Ref) (x_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_1@@0 x_1_1@@0)) (select (|Set#UnionOne_11916| (|Set#Singleton_11916| x2) x1_2) x_1@@0)) (select (|Set#UnionOne_11916| (|Set#Singleton_11916| x2) x1_2) x_1_1@@0)) (< NoPerm (/ (to_real 2) (to_real 3)))) (< NoPerm (/ (to_real 2) (to_real 3)))) (not (= x_1@@0 x_1_1@@0)))
 :qid |stdinbpl.1120:15|
 :skolemid |142|
)) (=> (and (forall ((x_1@@1 T@Ref) ) (!  (=> (and (select (|Set#UnionOne_11916| (|Set#Singleton_11916| x2) x1_2) x_1@@1) (< NoPerm (/ (to_real 2) (to_real 3)))) (and (qpRange5 x_1@@1) (= (invRecv5 x_1@@1) x_1@@1)))
 :qid |stdinbpl.1126:22|
 :skolemid |143|
 :pattern ( (select (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| PostHeap@0) x_1@@1 g))
 :pattern ( (select (|PolymorphicMapType_18413_11910_11911#PolymorphicMapType_18413| QPMask@2) x_1@@1 g))
 :pattern ( (select (|Set#UnionOne_11916| (|Set#Singleton_11916| x2) x1_2) x_1@@1))
)) (forall ((o_4@@0 T@Ref) ) (!  (=> (and (and (select (|Set#UnionOne_11916| (|Set#Singleton_11916| x2) x1_2) (invRecv5 o_4@@0)) (< NoPerm (/ (to_real 2) (to_real 3)))) (qpRange5 o_4@@0)) (= (invRecv5 o_4@@0) o_4@@0))
 :qid |stdinbpl.1130:22|
 :skolemid |144|
 :pattern ( (invRecv5 o_4@@0))
))) (and (=> (= (ControlFlow 0 17) (- 0 20)) (forall ((x_1@@2 T@Ref) ) (!  (=> (select (|Set#UnionOne_11916| (|Set#Singleton_11916| x2) x1_2) x_1@@2) (>= (/ (to_real 2) (to_real 3)) NoPerm))
 :qid |stdinbpl.1136:15|
 :skolemid |145|
 :pattern ( (select (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| PostHeap@0) x_1@@2 g))
 :pattern ( (select (|PolymorphicMapType_18413_11910_11911#PolymorphicMapType_18413| QPMask@2) x_1@@2 g))
 :pattern ( (select (|Set#UnionOne_11916| (|Set#Singleton_11916| x2) x1_2) x_1@@2))
))) (=> (forall ((x_1@@3 T@Ref) ) (!  (=> (select (|Set#UnionOne_11916| (|Set#Singleton_11916| x2) x1_2) x_1@@3) (>= (/ (to_real 2) (to_real 3)) NoPerm))
 :qid |stdinbpl.1136:15|
 :skolemid |145|
 :pattern ( (select (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| PostHeap@0) x_1@@3 g))
 :pattern ( (select (|PolymorphicMapType_18413_11910_11911#PolymorphicMapType_18413| QPMask@2) x_1@@3 g))
 :pattern ( (select (|Set#UnionOne_11916| (|Set#Singleton_11916| x2) x1_2) x_1@@3))
)) (=> (and (forall ((x_1@@4 T@Ref) ) (!  (=> (and (select (|Set#UnionOne_11916| (|Set#Singleton_11916| x2) x1_2) x_1@@4) (> (/ (to_real 2) (to_real 3)) NoPerm)) (not (= x_1@@4 null)))
 :qid |stdinbpl.1142:22|
 :skolemid |146|
 :pattern ( (select (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| PostHeap@0) x_1@@4 g))
 :pattern ( (select (|PolymorphicMapType_18413_11910_11911#PolymorphicMapType_18413| QPMask@2) x_1@@4 g))
 :pattern ( (select (|Set#UnionOne_11916| (|Set#Singleton_11916| x2) x1_2) x_1@@4))
)) (forall ((o_4@@1 T@Ref) ) (!  (and (=> (and (and (select (|Set#UnionOne_11916| (|Set#Singleton_11916| x2) x1_2) (invRecv5 o_4@@1)) (< NoPerm (/ (to_real 2) (to_real 3)))) (qpRange5 o_4@@1)) (and (=> (< NoPerm (/ (to_real 2) (to_real 3))) (= (invRecv5 o_4@@1) o_4@@1)) (= (select (|PolymorphicMapType_18413_11910_11911#PolymorphicMapType_18413| QPMask@2) o_4@@1 g) (+ (select (|PolymorphicMapType_18413_11910_11911#PolymorphicMapType_18413| ZeroMask) o_4@@1 g) (/ (to_real 2) (to_real 3)))))) (=> (not (and (and (select (|Set#UnionOne_11916| (|Set#Singleton_11916| x2) x1_2) (invRecv5 o_4@@1)) (< NoPerm (/ (to_real 2) (to_real 3)))) (qpRange5 o_4@@1))) (= (select (|PolymorphicMapType_18413_11910_11911#PolymorphicMapType_18413| QPMask@2) o_4@@1 g) (select (|PolymorphicMapType_18413_11910_11911#PolymorphicMapType_18413| ZeroMask) o_4@@1 g))))
 :qid |stdinbpl.1148:22|
 :skolemid |147|
 :pattern ( (select (|PolymorphicMapType_18413_11910_11911#PolymorphicMapType_18413| QPMask@2) o_4@@1 g))
))) (=> (and (and (and (and (and (forall ((o_4@@2 T@Ref) (f_5 T@Field_18452_53) ) (!  (=> true (= (select (|PolymorphicMapType_18413_11910_53#PolymorphicMapType_18413| ZeroMask) o_4@@2 f_5) (select (|PolymorphicMapType_18413_11910_53#PolymorphicMapType_18413| QPMask@2) o_4@@2 f_5)))
 :qid |stdinbpl.1152:29|
 :skolemid |148|
 :pattern ( (select (|PolymorphicMapType_18413_11910_53#PolymorphicMapType_18413| ZeroMask) o_4@@2 f_5))
 :pattern ( (select (|PolymorphicMapType_18413_11910_53#PolymorphicMapType_18413| QPMask@2) o_4@@2 f_5))
)) (forall ((o_4@@3 T@Ref) (f_5@@0 T@Field_18465_18466) ) (!  (=> (not (= f_5@@0 g)) (= (select (|PolymorphicMapType_18413_11910_11911#PolymorphicMapType_18413| ZeroMask) o_4@@3 f_5@@0) (select (|PolymorphicMapType_18413_11910_11911#PolymorphicMapType_18413| QPMask@2) o_4@@3 f_5@@0)))
 :qid |stdinbpl.1152:29|
 :skolemid |148|
 :pattern ( (select (|PolymorphicMapType_18413_11910_11911#PolymorphicMapType_18413| ZeroMask) o_4@@3 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_18413_11910_11911#PolymorphicMapType_18413| QPMask@2) o_4@@3 f_5@@0))
))) (forall ((o_4@@4 T@Ref) (f_5@@1 T@Field_27351_5275) ) (!  (=> true (= (select (|PolymorphicMapType_18413_11908_5275#PolymorphicMapType_18413| ZeroMask) o_4@@4 f_5@@1) (select (|PolymorphicMapType_18413_11908_5275#PolymorphicMapType_18413| QPMask@2) o_4@@4 f_5@@1)))
 :qid |stdinbpl.1152:29|
 :skolemid |148|
 :pattern ( (select (|PolymorphicMapType_18413_11908_5275#PolymorphicMapType_18413| ZeroMask) o_4@@4 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_18413_11908_5275#PolymorphicMapType_18413| QPMask@2) o_4@@4 f_5@@1))
))) (forall ((o_4@@5 T@Ref) (f_5@@2 T@Field_11910_50748) ) (!  (=> true (= (select (|PolymorphicMapType_18413_11910_50748#PolymorphicMapType_18413| ZeroMask) o_4@@5 f_5@@2) (select (|PolymorphicMapType_18413_11910_50748#PolymorphicMapType_18413| QPMask@2) o_4@@5 f_5@@2)))
 :qid |stdinbpl.1152:29|
 :skolemid |148|
 :pattern ( (select (|PolymorphicMapType_18413_11910_50748#PolymorphicMapType_18413| ZeroMask) o_4@@5 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_18413_11910_50748#PolymorphicMapType_18413| QPMask@2) o_4@@5 f_5@@2))
))) (forall ((o_4@@6 T@Ref) (f_5@@3 T@Field_11910_50881) ) (!  (=> true (= (select (|PolymorphicMapType_18413_11910_54988#PolymorphicMapType_18413| ZeroMask) o_4@@6 f_5@@3) (select (|PolymorphicMapType_18413_11910_54988#PolymorphicMapType_18413| QPMask@2) o_4@@6 f_5@@3)))
 :qid |stdinbpl.1152:29|
 :skolemid |148|
 :pattern ( (select (|PolymorphicMapType_18413_11910_54988#PolymorphicMapType_18413| ZeroMask) o_4@@6 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_18413_11910_54988#PolymorphicMapType_18413| QPMask@2) o_4@@6 f_5@@3))
))) (and (state PostHeap@0 QPMask@2) (state PostHeap@0 QPMask@2))) (and (=> (= (ControlFlow 0 17) (- 0 19)) (HasDirectPerm_11910_11911 QPMask@2 x1_2 g)) (=> (HasDirectPerm_11910_11911 QPMask@2 x1_2 g) (and (=> (= (ControlFlow 0 17) (- 0 18)) (HasDirectPerm_11910_11911 QPMask@2 x2 g)) (=> (HasDirectPerm_11910_11911 QPMask@2 x2 g) (=> (and (not (= (select (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| PostHeap@0) x1_2 g) (select (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| PostHeap@0) x2 g))) (state PostHeap@0 QPMask@2)) (and (and (=> (= (ControlFlow 0 17) 11) anon11_Else_correct) (=> (= (ControlFlow 0 17) 14) anon12_Then_correct)) (=> (= (ControlFlow 0 17) 16) anon12_Else_correct))))))))))))))))
(let ((anon10_Then_correct true))
(let ((anon9_Then_correct  (=> (state PostHeap@0 ZeroMask) (and (=> (= (ControlFlow 0 22) 9) anon10_Then_correct) (=> (= (ControlFlow 0 22) 17) anon10_Else_correct)))))
(let ((anon9_Else_correct  (and (=> (= (ControlFlow 0 2) (- 0 8)) (forall ((x_4 T@Ref) ) (!  (=> (and (select (|Set#UnionOne_11916| (|Set#Singleton_11916| x2) x1_2) x_4) (dummyFunction_11911 (select (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| Heap@@17) x_4 g))) (>= (/ (to_real 2) (to_real 3)) NoPerm))
 :qid |stdinbpl.1228:17|
 :skolemid |156|
 :pattern ( (select (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| Heap@@17) x_4 g))
 :pattern ( (select (|PolymorphicMapType_18413_11910_11911#PolymorphicMapType_18413| QPMask@0) x_4 g))
 :pattern ( (select (|Set#UnionOne_11916| (|Set#Singleton_11916| x2) x1_2) x_4))
))) (=> (forall ((x_4@@0 T@Ref) ) (!  (=> (and (select (|Set#UnionOne_11916| (|Set#Singleton_11916| x2) x1_2) x_4@@0) (dummyFunction_11911 (select (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| Heap@@17) x_4@@0 g))) (>= (/ (to_real 2) (to_real 3)) NoPerm))
 :qid |stdinbpl.1228:17|
 :skolemid |156|
 :pattern ( (select (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| Heap@@17) x_4@@0 g))
 :pattern ( (select (|PolymorphicMapType_18413_11910_11911#PolymorphicMapType_18413| QPMask@0) x_4@@0 g))
 :pattern ( (select (|Set#UnionOne_11916| (|Set#Singleton_11916| x2) x1_2) x_4@@0))
)) (and (=> (= (ControlFlow 0 2) (- 0 7)) (forall ((x_4@@1 T@Ref) (x_4_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_4@@1 x_4_1)) (select (|Set#UnionOne_11916| (|Set#Singleton_11916| x2) x1_2) x_4@@1)) (select (|Set#UnionOne_11916| (|Set#Singleton_11916| x2) x1_2) x_4_1)) (< NoPerm (/ (to_real 2) (to_real 3)))) (< NoPerm (/ (to_real 2) (to_real 3)))) (not (= x_4@@1 x_4_1)))
 :qid |stdinbpl.1235:17|
 :skolemid |157|
 :pattern ( (neverTriggered7 x_4@@1) (neverTriggered7 x_4_1))
))) (=> (forall ((x_4@@2 T@Ref) (x_4_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_4@@2 x_4_1@@0)) (select (|Set#UnionOne_11916| (|Set#Singleton_11916| x2) x1_2) x_4@@2)) (select (|Set#UnionOne_11916| (|Set#Singleton_11916| x2) x1_2) x_4_1@@0)) (< NoPerm (/ (to_real 2) (to_real 3)))) (< NoPerm (/ (to_real 2) (to_real 3)))) (not (= x_4@@2 x_4_1@@0)))
 :qid |stdinbpl.1235:17|
 :skolemid |157|
 :pattern ( (neverTriggered7 x_4@@2) (neverTriggered7 x_4_1@@0))
)) (and (=> (= (ControlFlow 0 2) (- 0 6)) (forall ((x_4@@3 T@Ref) ) (!  (=> (select (|Set#UnionOne_11916| (|Set#Singleton_11916| x2) x1_2) x_4@@3) (>= (select (|PolymorphicMapType_18413_11910_11911#PolymorphicMapType_18413| Mask@3) x_4@@3 g) (/ (to_real 2) (to_real 3))))
 :qid |stdinbpl.1242:17|
 :skolemid |158|
 :pattern ( (select (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| Heap@@17) x_4@@3 g))
 :pattern ( (select (|PolymorphicMapType_18413_11910_11911#PolymorphicMapType_18413| QPMask@0) x_4@@3 g))
 :pattern ( (select (|Set#UnionOne_11916| (|Set#Singleton_11916| x2) x1_2) x_4@@3))
))) (=> (forall ((x_4@@4 T@Ref) ) (!  (=> (select (|Set#UnionOne_11916| (|Set#Singleton_11916| x2) x1_2) x_4@@4) (>= (select (|PolymorphicMapType_18413_11910_11911#PolymorphicMapType_18413| Mask@3) x_4@@4 g) (/ (to_real 2) (to_real 3))))
 :qid |stdinbpl.1242:17|
 :skolemid |158|
 :pattern ( (select (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| Heap@@17) x_4@@4 g))
 :pattern ( (select (|PolymorphicMapType_18413_11910_11911#PolymorphicMapType_18413| QPMask@0) x_4@@4 g))
 :pattern ( (select (|Set#UnionOne_11916| (|Set#Singleton_11916| x2) x1_2) x_4@@4))
)) (=> (forall ((x_4@@5 T@Ref) ) (!  (=> (and (select (|Set#UnionOne_11916| (|Set#Singleton_11916| x2) x1_2) x_4@@5) (< NoPerm (/ (to_real 2) (to_real 3)))) (and (qpRange7 x_4@@5) (= (invRecv7 x_4@@5) x_4@@5)))
 :qid |stdinbpl.1248:22|
 :skolemid |159|
 :pattern ( (select (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| Heap@@17) x_4@@5 g))
 :pattern ( (select (|PolymorphicMapType_18413_11910_11911#PolymorphicMapType_18413| QPMask@0) x_4@@5 g))
 :pattern ( (select (|Set#UnionOne_11916| (|Set#Singleton_11916| x2) x1_2) x_4@@5))
)) (=> (and (forall ((o_4@@7 T@Ref) ) (!  (=> (and (select (|Set#UnionOne_11916| (|Set#Singleton_11916| x2) x1_2) (invRecv7 o_4@@7)) (and (< NoPerm (/ (to_real 2) (to_real 3))) (qpRange7 o_4@@7))) (= (invRecv7 o_4@@7) o_4@@7))
 :qid |stdinbpl.1252:22|
 :skolemid |160|
 :pattern ( (invRecv7 o_4@@7))
)) (forall ((o_4@@8 T@Ref) ) (!  (and (=> (and (select (|Set#UnionOne_11916| (|Set#Singleton_11916| x2) x1_2) (invRecv7 o_4@@8)) (and (< NoPerm (/ (to_real 2) (to_real 3))) (qpRange7 o_4@@8))) (and (= (invRecv7 o_4@@8) o_4@@8) (= (select (|PolymorphicMapType_18413_11910_11911#PolymorphicMapType_18413| QPMask@0) o_4@@8 g) (- (select (|PolymorphicMapType_18413_11910_11911#PolymorphicMapType_18413| Mask@3) o_4@@8 g) (/ (to_real 2) (to_real 3)))))) (=> (not (and (select (|Set#UnionOne_11916| (|Set#Singleton_11916| x2) x1_2) (invRecv7 o_4@@8)) (and (< NoPerm (/ (to_real 2) (to_real 3))) (qpRange7 o_4@@8)))) (= (select (|PolymorphicMapType_18413_11910_11911#PolymorphicMapType_18413| QPMask@0) o_4@@8 g) (select (|PolymorphicMapType_18413_11910_11911#PolymorphicMapType_18413| Mask@3) o_4@@8 g))))
 :qid |stdinbpl.1258:22|
 :skolemid |161|
 :pattern ( (select (|PolymorphicMapType_18413_11910_11911#PolymorphicMapType_18413| QPMask@0) o_4@@8 g))
))) (=> (and (and (and (and (forall ((o_4@@9 T@Ref) (f_5@@4 T@Field_18452_53) ) (!  (=> true (= (select (|PolymorphicMapType_18413_11910_53#PolymorphicMapType_18413| Mask@3) o_4@@9 f_5@@4) (select (|PolymorphicMapType_18413_11910_53#PolymorphicMapType_18413| QPMask@0) o_4@@9 f_5@@4)))
 :qid |stdinbpl.1264:29|
 :skolemid |162|
 :pattern ( (select (|PolymorphicMapType_18413_11910_53#PolymorphicMapType_18413| QPMask@0) o_4@@9 f_5@@4))
)) (forall ((o_4@@10 T@Ref) (f_5@@5 T@Field_18465_18466) ) (!  (=> (not (= f_5@@5 g)) (= (select (|PolymorphicMapType_18413_11910_11911#PolymorphicMapType_18413| Mask@3) o_4@@10 f_5@@5) (select (|PolymorphicMapType_18413_11910_11911#PolymorphicMapType_18413| QPMask@0) o_4@@10 f_5@@5)))
 :qid |stdinbpl.1264:29|
 :skolemid |162|
 :pattern ( (select (|PolymorphicMapType_18413_11910_11911#PolymorphicMapType_18413| QPMask@0) o_4@@10 f_5@@5))
))) (forall ((o_4@@11 T@Ref) (f_5@@6 T@Field_27351_5275) ) (!  (=> true (= (select (|PolymorphicMapType_18413_11908_5275#PolymorphicMapType_18413| Mask@3) o_4@@11 f_5@@6) (select (|PolymorphicMapType_18413_11908_5275#PolymorphicMapType_18413| QPMask@0) o_4@@11 f_5@@6)))
 :qid |stdinbpl.1264:29|
 :skolemid |162|
 :pattern ( (select (|PolymorphicMapType_18413_11908_5275#PolymorphicMapType_18413| QPMask@0) o_4@@11 f_5@@6))
))) (forall ((o_4@@12 T@Ref) (f_5@@7 T@Field_11910_50748) ) (!  (=> true (= (select (|PolymorphicMapType_18413_11910_50748#PolymorphicMapType_18413| Mask@3) o_4@@12 f_5@@7) (select (|PolymorphicMapType_18413_11910_50748#PolymorphicMapType_18413| QPMask@0) o_4@@12 f_5@@7)))
 :qid |stdinbpl.1264:29|
 :skolemid |162|
 :pattern ( (select (|PolymorphicMapType_18413_11910_50748#PolymorphicMapType_18413| QPMask@0) o_4@@12 f_5@@7))
))) (forall ((o_4@@13 T@Ref) (f_5@@8 T@Field_11910_50881) ) (!  (=> true (= (select (|PolymorphicMapType_18413_11910_54988#PolymorphicMapType_18413| Mask@3) o_4@@13 f_5@@8) (select (|PolymorphicMapType_18413_11910_54988#PolymorphicMapType_18413| QPMask@0) o_4@@13 f_5@@8)))
 :qid |stdinbpl.1264:29|
 :skolemid |162|
 :pattern ( (select (|PolymorphicMapType_18413_11910_54988#PolymorphicMapType_18413| QPMask@0) o_4@@13 f_5@@8))
))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (not (= (select (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| Heap@@17) x1_2 g) (select (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| Heap@@17) x2 g)))) (=> (not (= (select (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| Heap@@17) x1_2 g) (select (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| Heap@@17) x2 g))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (forall ((x_5 T@Ref) ) (!  (=> (and (select (|Set#UnionOne_11916| (|Set#Singleton_11916| x2) x1_2) x_5) (dummyFunction_5275 (select (|PolymorphicMapType_18392_11908_5275#PolymorphicMapType_18392| Heap@@17) (select (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| Heap@@17) x_5 g) f_7))) (>= (/ (to_real 2) (to_real 3)) NoPerm))
 :qid |stdinbpl.1275:17|
 :skolemid |163|
 :pattern ( (select (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| Heap@@17) x_5 g))
 :pattern ( (select (|Set#UnionOne_11916| (|Set#Singleton_11916| x2) x1_2) x_5))
))) (=> (forall ((x_5@@0 T@Ref) ) (!  (=> (and (select (|Set#UnionOne_11916| (|Set#Singleton_11916| x2) x1_2) x_5@@0) (dummyFunction_5275 (select (|PolymorphicMapType_18392_11908_5275#PolymorphicMapType_18392| Heap@@17) (select (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| Heap@@17) x_5@@0 g) f_7))) (>= (/ (to_real 2) (to_real 3)) NoPerm))
 :qid |stdinbpl.1275:17|
 :skolemid |163|
 :pattern ( (select (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| Heap@@17) x_5@@0 g))
 :pattern ( (select (|Set#UnionOne_11916| (|Set#Singleton_11916| x2) x1_2) x_5@@0))
)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (forall ((x_5@@1 T@Ref) (x_5_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_5@@1 x_5_1)) (select (|Set#UnionOne_11916| (|Set#Singleton_11916| x2) x1_2) x_5@@1)) (select (|Set#UnionOne_11916| (|Set#Singleton_11916| x2) x1_2) x_5_1)) (< NoPerm (/ (to_real 2) (to_real 3)))) (< NoPerm (/ (to_real 2) (to_real 3)))) (not (= (select (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| Heap@@17) x_5@@1 g) (select (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| Heap@@17) x_5_1 g))))
 :qid |stdinbpl.1282:17|
 :skolemid |164|
 :pattern ( (neverTriggered8 x_5@@1) (neverTriggered8 x_5_1))
))) (=> (forall ((x_5@@2 T@Ref) (x_5_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_5@@2 x_5_1@@0)) (select (|Set#UnionOne_11916| (|Set#Singleton_11916| x2) x1_2) x_5@@2)) (select (|Set#UnionOne_11916| (|Set#Singleton_11916| x2) x1_2) x_5_1@@0)) (< NoPerm (/ (to_real 2) (to_real 3)))) (< NoPerm (/ (to_real 2) (to_real 3)))) (not (= (select (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| Heap@@17) x_5@@2 g) (select (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| Heap@@17) x_5_1@@0 g))))
 :qid |stdinbpl.1282:17|
 :skolemid |164|
 :pattern ( (neverTriggered8 x_5@@2) (neverTriggered8 x_5_1@@0))
)) (=> (= (ControlFlow 0 2) (- 0 1)) (forall ((x_5@@3 T@Ref) ) (!  (=> (select (|Set#UnionOne_11916| (|Set#Singleton_11916| x2) x1_2) x_5@@3) (>= (select (|PolymorphicMapType_18413_11908_5275#PolymorphicMapType_18413| QPMask@0) (select (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| Heap@@17) x_5@@3 g) f_7) (/ (to_real 2) (to_real 3))))
 :qid |stdinbpl.1289:17|
 :skolemid |165|
 :pattern ( (select (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| Heap@@17) x_5@@3 g))
 :pattern ( (select (|Set#UnionOne_11916| (|Set#Singleton_11916| x2) x1_2) x_5@@3))
))))))))))))))))))))
(let ((anon0_correct  (=> (state Heap@@17 ZeroMask) (=> (and AssumePermUpperBound (select (|PolymorphicMapType_18392_11519_53#PolymorphicMapType_18392| Heap@@17) x1_2 $allocated)) (=> (and (and (select (|PolymorphicMapType_18392_11519_53#PolymorphicMapType_18392| Heap@@17) x2 $allocated) (not (= x1_2 null))) (and (= Mask@0 (PolymorphicMapType_18413 (store (|PolymorphicMapType_18413_11910_11911#PolymorphicMapType_18413| ZeroMask) x1_2 g (+ (select (|PolymorphicMapType_18413_11910_11911#PolymorphicMapType_18413| ZeroMask) x1_2 g) FullPerm)) (|PolymorphicMapType_18413_11908_5275#PolymorphicMapType_18413| ZeroMask) (|PolymorphicMapType_18413_11910_53#PolymorphicMapType_18413| ZeroMask) (|PolymorphicMapType_18413_11910_50748#PolymorphicMapType_18413| ZeroMask) (|PolymorphicMapType_18413_11910_54988#PolymorphicMapType_18413| ZeroMask))) (state Heap@@17 Mask@0))) (and (=> (= (ControlFlow 0 23) (- 0 27)) (HasDirectPerm_11910_11911 Mask@0 x1_2 g)) (=> (HasDirectPerm_11910_11911 Mask@0 x1_2 g) (=> (= perm@0 (/ (to_real 2) (to_real 3))) (and (=> (= (ControlFlow 0 23) (- 0 26)) (>= perm@0 NoPerm)) (=> (>= perm@0 NoPerm) (=> (=> (> perm@0 NoPerm) (not (= (select (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| Heap@@17) x1_2 g) null))) (=> (and (= Mask@1 (PolymorphicMapType_18413 (|PolymorphicMapType_18413_11910_11911#PolymorphicMapType_18413| Mask@0) (store (|PolymorphicMapType_18413_11908_5275#PolymorphicMapType_18413| Mask@0) (select (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| Heap@@17) x1_2 g) f_7 (+ (select (|PolymorphicMapType_18413_11908_5275#PolymorphicMapType_18413| Mask@0) (select (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| Heap@@17) x1_2 g) f_7) perm@0)) (|PolymorphicMapType_18413_11910_53#PolymorphicMapType_18413| Mask@0) (|PolymorphicMapType_18413_11910_50748#PolymorphicMapType_18413| Mask@0) (|PolymorphicMapType_18413_11910_54988#PolymorphicMapType_18413| Mask@0))) (state Heap@@17 Mask@1)) (=> (and (and (state Heap@@17 Mask@1) (not (= x2 null))) (and (= Mask@2 (PolymorphicMapType_18413 (store (|PolymorphicMapType_18413_11910_11911#PolymorphicMapType_18413| Mask@1) x2 g (+ (select (|PolymorphicMapType_18413_11910_11911#PolymorphicMapType_18413| Mask@1) x2 g) FullPerm)) (|PolymorphicMapType_18413_11908_5275#PolymorphicMapType_18413| Mask@1) (|PolymorphicMapType_18413_11910_53#PolymorphicMapType_18413| Mask@1) (|PolymorphicMapType_18413_11910_50748#PolymorphicMapType_18413| Mask@1) (|PolymorphicMapType_18413_11910_54988#PolymorphicMapType_18413| Mask@1))) (state Heap@@17 Mask@2))) (and (=> (= (ControlFlow 0 23) (- 0 25)) (HasDirectPerm_11910_11911 Mask@2 x2 g)) (=> (HasDirectPerm_11910_11911 Mask@2 x2 g) (=> (= perm@1 (/ (to_real 2) (to_real 3))) (and (=> (= (ControlFlow 0 23) (- 0 24)) (>= perm@1 NoPerm)) (=> (>= perm@1 NoPerm) (=> (and (and (=> (> perm@1 NoPerm) (not (= (select (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| Heap@@17) x2 g) null))) (= Mask@3 (PolymorphicMapType_18413 (|PolymorphicMapType_18413_11910_11911#PolymorphicMapType_18413| Mask@2) (store (|PolymorphicMapType_18413_11908_5275#PolymorphicMapType_18413| Mask@2) (select (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| Heap@@17) x2 g) f_7 (+ (select (|PolymorphicMapType_18413_11908_5275#PolymorphicMapType_18413| Mask@2) (select (|PolymorphicMapType_18392_11522_11523#PolymorphicMapType_18392| Heap@@17) x2 g) f_7) perm@1)) (|PolymorphicMapType_18413_11910_53#PolymorphicMapType_18413| Mask@2) (|PolymorphicMapType_18413_11910_50748#PolymorphicMapType_18413| Mask@2) (|PolymorphicMapType_18413_11910_54988#PolymorphicMapType_18413| Mask@2)))) (and (state Heap@@17 Mask@3) (state Heap@@17 Mask@3))) (and (=> (= (ControlFlow 0 23) 22) anon9_Then_correct) (=> (= (ControlFlow 0 23) 2) anon9_Else_correct)))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 28) 23) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid