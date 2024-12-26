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
(declare-sort T@Field_9583_53 0)
(declare-sort T@Field_9596_9597 0)
(declare-sort T@Field_9583_23019 0)
(declare-sort T@Field_9583_22886 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_9544 0)) (((PolymorphicMapType_9544 (|PolymorphicMapType_9544_9583_53#PolymorphicMapType_9544| (Array T@Ref T@Field_9583_53 Real)) (|PolymorphicMapType_9544_9583_9597#PolymorphicMapType_9544| (Array T@Ref T@Field_9596_9597 Real)) (|PolymorphicMapType_9544_9583_22886#PolymorphicMapType_9544| (Array T@Ref T@Field_9583_22886 Real)) (|PolymorphicMapType_9544_9583_26580#PolymorphicMapType_9544| (Array T@Ref T@Field_9583_23019 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10072 0)) (((PolymorphicMapType_10072 (|PolymorphicMapType_10072_9583_53#PolymorphicMapType_10072| (Array T@Ref T@Field_9583_53 Bool)) (|PolymorphicMapType_10072_9583_9597#PolymorphicMapType_10072| (Array T@Ref T@Field_9596_9597 Bool)) (|PolymorphicMapType_10072_9583_22886#PolymorphicMapType_10072| (Array T@Ref T@Field_9583_22886 Bool)) (|PolymorphicMapType_10072_9583_23999#PolymorphicMapType_10072| (Array T@Ref T@Field_9583_23019 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9523 0)) (((PolymorphicMapType_9523 (|PolymorphicMapType_9523_5787_53#PolymorphicMapType_9523| (Array T@Ref T@Field_9583_53 Bool)) (|PolymorphicMapType_9523_5790_5791#PolymorphicMapType_9523| (Array T@Ref T@Field_9596_9597 T@Ref)) (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| (Array T@Ref T@Field_9583_23019 T@PolymorphicMapType_10072)) (|PolymorphicMapType_9523_9583_22886#PolymorphicMapType_9523| (Array T@Ref T@Field_9583_22886 T@FrameType)) ) ) ))
(declare-sort T@Seq_19209 0)
(declare-fun |Seq#Length_19209| (T@Seq_19209) Int)
(declare-fun |Seq#Drop_19209| (T@Seq_19209 Int) T@Seq_19209)
(declare-sort T@Seq_19199 0)
(declare-fun |Seq#Length_19199| (T@Seq_19199) Int)
(declare-fun |Seq#Drop_19199| (T@Seq_19199 Int) T@Seq_19199)
(declare-sort T@Seq_2864 0)
(declare-fun |Seq#Length_2864| (T@Seq_2864) Int)
(declare-fun |Seq#Drop_2864| (T@Seq_2864 Int) T@Seq_2864)
(declare-fun succHeap (T@PolymorphicMapType_9523 T@PolymorphicMapType_9523) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_9523 T@PolymorphicMapType_9523) Bool)
(declare-sort T@MultiSet_5518 0)
(declare-fun |MultiSet#Card_5518| (T@MultiSet_5518) Int)
(declare-fun |MultiSet#Difference_5518| (T@MultiSet_5518 T@MultiSet_5518) T@MultiSet_5518)
(declare-fun |MultiSet#Intersection_5518| (T@MultiSet_5518 T@MultiSet_5518) T@MultiSet_5518)
(declare-fun |MultiSet#Union_5518| (T@MultiSet_5518 T@MultiSet_5518) T@MultiSet_5518)
(declare-fun state (T@PolymorphicMapType_9523 T@PolymorphicMapType_9544) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_9544) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_10072)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Seq#Index_19209| (T@Seq_19209 Int) T@Seq_19199)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_19199| (T@Seq_19199 Int) T@Seq_2864)
(declare-fun |Seq#Index_2864| (T@Seq_2864 Int) Int)
(declare-fun |Seq#Empty_19209| () T@Seq_19209)
(declare-fun |Seq#Empty_19199| () T@Seq_19199)
(declare-fun |Seq#Empty_2864| () T@Seq_2864)
(declare-fun |Seq#Update_19209| (T@Seq_19209 Int T@Seq_19199) T@Seq_19209)
(declare-fun |Seq#Update_19199| (T@Seq_19199 Int T@Seq_2864) T@Seq_19199)
(declare-fun |Seq#Update_2864| (T@Seq_2864 Int Int) T@Seq_2864)
(declare-fun |MultiSet#Select_5518| (T@MultiSet_5518 Int) Int)
(declare-fun |Seq#Take_19209| (T@Seq_19209 Int) T@Seq_19209)
(declare-fun |Seq#Take_19199| (T@Seq_19199 Int) T@Seq_19199)
(declare-fun |Seq#Take_2864| (T@Seq_2864 Int) T@Seq_2864)
(declare-fun |Seq#Contains_2864| (T@Seq_2864 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2864)
(declare-fun |Seq#Contains_19400| (T@Seq_19209 T@Seq_19199) Bool)
(declare-fun |Seq#Skolem_19400| (T@Seq_19209 T@Seq_19199) Int)
(declare-fun |Seq#Contains_19366| (T@Seq_19199 T@Seq_2864) Bool)
(declare-fun |Seq#Skolem_19366| (T@Seq_19199 T@Seq_2864) Int)
(declare-fun |Seq#Skolem_2864| (T@Seq_2864 Int) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_9523 T@PolymorphicMapType_9523 T@PolymorphicMapType_9544) Bool)
(declare-fun IsPredicateField_9583_22977 (T@Field_9583_22886) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_9583 (T@Field_9583_22886) T@Field_9583_23019)
(declare-fun HasDirectPerm_9583_22950 (T@PolymorphicMapType_9544 T@Ref T@Field_9583_22886) Bool)
(declare-fun IsWandField_9583_24526 (T@Field_9583_22886) Bool)
(declare-fun WandMaskField_9583 (T@Field_9583_22886) T@Field_9583_23019)
(declare-fun |Seq#Singleton_19209| (T@Seq_19199) T@Seq_19209)
(declare-fun |Seq#Singleton_19199| (T@Seq_2864) T@Seq_19199)
(declare-fun |Seq#Singleton_2864| (Int) T@Seq_2864)
(declare-fun |Seq#Append_19209| (T@Seq_19209 T@Seq_19209) T@Seq_19209)
(declare-fun |Seq#Append_19199| (T@Seq_19199 T@Seq_19199) T@Seq_19199)
(declare-fun |Seq#Append_2864| (T@Seq_2864 T@Seq_2864) T@Seq_2864)
(declare-fun dummyHeap () T@PolymorphicMapType_9523)
(declare-fun ZeroMask () T@PolymorphicMapType_9544)
(declare-fun |MultiSet#UnionOne_5518| (T@MultiSet_5518 Int) T@MultiSet_5518)
(declare-fun |MultiSet#Disjoint_5518| (T@MultiSet_5518 T@MultiSet_5518) Bool)
(declare-fun $allocated () T@Field_9583_53)
(declare-fun InsidePredicate_9583_9583 (T@Field_9583_22886 T@FrameType T@Field_9583_22886 T@FrameType) Bool)
(declare-fun |MultiSet#Singleton_5518| (Int) T@MultiSet_5518)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_9583_27489 (T@Field_9583_23019) Bool)
(declare-fun IsWandField_9583_27505 (T@Field_9583_23019) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_9583_9597 (T@Field_9596_9597) Bool)
(declare-fun IsWandField_9583_9597 (T@Field_9596_9597) Bool)
(declare-fun IsPredicateField_9583_53 (T@Field_9583_53) Bool)
(declare-fun IsWandField_9583_53 (T@Field_9583_53) Bool)
(declare-fun HasDirectPerm_9583_27860 (T@PolymorphicMapType_9544 T@Ref T@Field_9583_23019) Bool)
(declare-fun HasDirectPerm_9583_9597 (T@PolymorphicMapType_9544 T@Ref T@Field_9596_9597) Bool)
(declare-fun HasDirectPerm_9583_53 (T@PolymorphicMapType_9544 T@Ref T@Field_9583_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_9544 T@PolymorphicMapType_9544 T@PolymorphicMapType_9544) Bool)
(declare-fun |Seq#Equal_19209| (T@Seq_19209 T@Seq_19209) Bool)
(declare-fun |Seq#Equal_19199| (T@Seq_19199 T@Seq_19199) Bool)
(declare-fun |Seq#Equal_2864| (T@Seq_2864 T@Seq_2864) Bool)
(declare-fun |MultiSet#Equal_5518| (T@MultiSet_5518 T@MultiSet_5518) Bool)
(declare-fun |Seq#ContainsTrigger_19209| (T@Seq_19209 T@Seq_19199) Bool)
(declare-fun |Seq#ContainsTrigger_19199| (T@Seq_19199 T@Seq_2864) Bool)
(declare-fun |Seq#ContainsTrigger_2864| (T@Seq_2864 Int) Bool)
(declare-fun |MultiSet#Empty_5518| () T@MultiSet_5518)
(declare-fun |Seq#SkolemDiff_19209| (T@Seq_19209 T@Seq_19209) Int)
(declare-fun |Seq#SkolemDiff_19199| (T@Seq_19199 T@Seq_19199) Int)
(declare-fun |Seq#SkolemDiff_2864| (T@Seq_2864 T@Seq_2864) Int)
(declare-fun |MultiSet#Subset_5518| (T@MultiSet_5518 T@MultiSet_5518) Bool)
(assert (forall ((s T@Seq_19209) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_19209| s)) (= (|Seq#Length_19209| (|Seq#Drop_19209| s n)) (- (|Seq#Length_19209| s) n))) (=> (< (|Seq#Length_19209| s) n) (= (|Seq#Length_19209| (|Seq#Drop_19209| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_19209| (|Seq#Drop_19209| s n)) (|Seq#Length_19209| s))))
 :qid |stdinbpl.273:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_19209| (|Seq#Drop_19209| s n)))
 :pattern ( (|Seq#Length_19209| s) (|Seq#Drop_19209| s n))
)))
(assert (forall ((s@@0 T@Seq_19199) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_19199| s@@0)) (= (|Seq#Length_19199| (|Seq#Drop_19199| s@@0 n@@0)) (- (|Seq#Length_19199| s@@0) n@@0))) (=> (< (|Seq#Length_19199| s@@0) n@@0) (= (|Seq#Length_19199| (|Seq#Drop_19199| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_19199| (|Seq#Drop_19199| s@@0 n@@0)) (|Seq#Length_19199| s@@0))))
 :qid |stdinbpl.273:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_19199| (|Seq#Drop_19199| s@@0 n@@0)))
 :pattern ( (|Seq#Length_19199| s@@0) (|Seq#Drop_19199| s@@0 n@@0))
)))
(assert (forall ((s@@1 T@Seq_2864) (n@@1 Int) ) (!  (and (=> (<= 0 n@@1) (and (=> (<= n@@1 (|Seq#Length_2864| s@@1)) (= (|Seq#Length_2864| (|Seq#Drop_2864| s@@1 n@@1)) (- (|Seq#Length_2864| s@@1) n@@1))) (=> (< (|Seq#Length_2864| s@@1) n@@1) (= (|Seq#Length_2864| (|Seq#Drop_2864| s@@1 n@@1)) 0)))) (=> (< n@@1 0) (= (|Seq#Length_2864| (|Seq#Drop_2864| s@@1 n@@1)) (|Seq#Length_2864| s@@1))))
 :qid |stdinbpl.273:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2864| (|Seq#Drop_2864| s@@1 n@@1)))
 :pattern ( (|Seq#Length_2864| s@@1) (|Seq#Drop_2864| s@@1 n@@1))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_9523) (Heap1 T@PolymorphicMapType_9523) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((a T@MultiSet_5518) (b T@MultiSet_5518) ) (!  (and (= (+ (+ (|MultiSet#Card_5518| (|MultiSet#Difference_5518| a b)) (|MultiSet#Card_5518| (|MultiSet#Difference_5518| b a))) (* 2 (|MultiSet#Card_5518| (|MultiSet#Intersection_5518| a b)))) (|MultiSet#Card_5518| (|MultiSet#Union_5518| a b))) (= (|MultiSet#Card_5518| (|MultiSet#Difference_5518| a b)) (- (|MultiSet#Card_5518| a) (|MultiSet#Card_5518| (|MultiSet#Intersection_5518| a b)))))
 :qid |stdinbpl.706:18|
 :skolemid |110|
 :pattern ( (|MultiSet#Card_5518| (|MultiSet#Difference_5518| a b)))
)))
(assert (forall ((Heap T@PolymorphicMapType_9523) (Mask T@PolymorphicMapType_9544) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_9523) (Heap1@@0 T@PolymorphicMapType_9523) (Heap2 T@PolymorphicMapType_9523) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_9583_23019) ) (!  (not (select (|PolymorphicMapType_10072_9583_23999#PolymorphicMapType_10072| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10072_9583_23999#PolymorphicMapType_10072| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_9583_22886) ) (!  (not (select (|PolymorphicMapType_10072_9583_22886#PolymorphicMapType_10072| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10072_9583_22886#PolymorphicMapType_10072| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_9596_9597) ) (!  (not (select (|PolymorphicMapType_10072_9583_9597#PolymorphicMapType_10072| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10072_9583_9597#PolymorphicMapType_10072| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_9583_53) ) (!  (not (select (|PolymorphicMapType_10072_9583_53#PolymorphicMapType_10072| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10072_9583_53#PolymorphicMapType_10072| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((a@@0 Int) (b@@0 Int) ) (!  (or (= (|Math#min| a@@0 b@@0) a@@0) (= (|Math#min| a@@0 b@@0) b@@0))
 :qid |stdinbpl.637:15|
 :skolemid |89|
 :pattern ( (|Math#min| a@@0 b@@0))
)))
(assert (forall ((s@@2 T@Seq_19209) (n@@2 Int) (j Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j)) (< j (- (|Seq#Length_19209| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j n@@2) n@@2) j) (= (|Seq#Index_19209| (|Seq#Drop_19209| s@@2 n@@2) j) (|Seq#Index_19209| s@@2 (|Seq#Add| j n@@2)))))
 :qid |stdinbpl.294:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_19209| (|Seq#Drop_19209| s@@2 n@@2) j))
)))
(assert (forall ((s@@3 T@Seq_19199) (n@@3 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@3) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_19199| s@@3) n@@3))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@3) n@@3) j@@0) (= (|Seq#Index_19199| (|Seq#Drop_19199| s@@3 n@@3) j@@0) (|Seq#Index_19199| s@@3 (|Seq#Add| j@@0 n@@3)))))
 :qid |stdinbpl.294:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_19199| (|Seq#Drop_19199| s@@3 n@@3) j@@0))
)))
(assert (forall ((s@@4 T@Seq_2864) (n@@4 Int) (j@@1 Int) ) (!  (=> (and (and (< 0 n@@4) (<= 0 j@@1)) (< j@@1 (- (|Seq#Length_2864| s@@4) n@@4))) (and (= (|Seq#Sub| (|Seq#Add| j@@1 n@@4) n@@4) j@@1) (= (|Seq#Index_2864| (|Seq#Drop_2864| s@@4 n@@4) j@@1) (|Seq#Index_2864| s@@4 (|Seq#Add| j@@1 n@@4)))))
 :qid |stdinbpl.294:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2864| (|Seq#Drop_2864| s@@4 n@@4) j@@1))
)))
(assert (= (|Seq#Length_19209| |Seq#Empty_19209|) 0))
(assert (= (|Seq#Length_19199| |Seq#Empty_19199|) 0))
(assert (= (|Seq#Length_2864| |Seq#Empty_2864|) 0))
(assert (forall ((s@@5 T@Seq_19209) (i Int) (v T@Seq_19199) (n@@5 Int) ) (!  (=> (and (<= 0 n@@5) (< n@@5 (|Seq#Length_19209| s@@5))) (and (=> (= i n@@5) (= (|Seq#Index_19209| (|Seq#Update_19209| s@@5 i v) n@@5) v)) (=> (not (= i n@@5)) (= (|Seq#Index_19209| (|Seq#Update_19209| s@@5 i v) n@@5) (|Seq#Index_19209| s@@5 n@@5)))))
 :qid |stdinbpl.249:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_19209| (|Seq#Update_19209| s@@5 i v) n@@5))
 :pattern ( (|Seq#Index_19209| s@@5 n@@5) (|Seq#Update_19209| s@@5 i v))
)))
(assert (forall ((s@@6 T@Seq_19199) (i@@0 Int) (v@@0 T@Seq_2864) (n@@6 Int) ) (!  (=> (and (<= 0 n@@6) (< n@@6 (|Seq#Length_19199| s@@6))) (and (=> (= i@@0 n@@6) (= (|Seq#Index_19199| (|Seq#Update_19199| s@@6 i@@0 v@@0) n@@6) v@@0)) (=> (not (= i@@0 n@@6)) (= (|Seq#Index_19199| (|Seq#Update_19199| s@@6 i@@0 v@@0) n@@6) (|Seq#Index_19199| s@@6 n@@6)))))
 :qid |stdinbpl.249:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_19199| (|Seq#Update_19199| s@@6 i@@0 v@@0) n@@6))
 :pattern ( (|Seq#Index_19199| s@@6 n@@6) (|Seq#Update_19199| s@@6 i@@0 v@@0))
)))
(assert (forall ((s@@7 T@Seq_2864) (i@@1 Int) (v@@1 Int) (n@@7 Int) ) (!  (=> (and (<= 0 n@@7) (< n@@7 (|Seq#Length_2864| s@@7))) (and (=> (= i@@1 n@@7) (= (|Seq#Index_2864| (|Seq#Update_2864| s@@7 i@@1 v@@1) n@@7) v@@1)) (=> (not (= i@@1 n@@7)) (= (|Seq#Index_2864| (|Seq#Update_2864| s@@7 i@@1 v@@1) n@@7) (|Seq#Index_2864| s@@7 n@@7)))))
 :qid |stdinbpl.249:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2864| (|Seq#Update_2864| s@@7 i@@1 v@@1) n@@7))
 :pattern ( (|Seq#Index_2864| s@@7 n@@7) (|Seq#Update_2864| s@@7 i@@1 v@@1))
)))
(assert (forall ((a@@1 T@MultiSet_5518) (b@@1 T@MultiSet_5518) (y Int) ) (!  (=> (<= (|MultiSet#Select_5518| a@@1 y) (|MultiSet#Select_5518| b@@1 y)) (= (|MultiSet#Select_5518| (|MultiSet#Difference_5518| a@@1 b@@1) y) 0))
 :qid |stdinbpl.704:18|
 :skolemid |109|
 :pattern ( (|MultiSet#Difference_5518| a@@1 b@@1) (|MultiSet#Select_5518| b@@1 y) (|MultiSet#Select_5518| a@@1 y))
)))
(assert (forall ((a@@2 T@MultiSet_5518) (b@@2 T@MultiSet_5518) ) (! (= (|MultiSet#Intersection_5518| (|MultiSet#Intersection_5518| a@@2 b@@2) b@@2) (|MultiSet#Intersection_5518| a@@2 b@@2))
 :qid |stdinbpl.695:18|
 :skolemid |106|
 :pattern ( (|MultiSet#Intersection_5518| (|MultiSet#Intersection_5518| a@@2 b@@2) b@@2))
)))
(assert (forall ((s@@8 T@Seq_19209) (n@@8 Int) ) (!  (and (=> (<= 0 n@@8) (and (=> (<= n@@8 (|Seq#Length_19209| s@@8)) (= (|Seq#Length_19209| (|Seq#Take_19209| s@@8 n@@8)) n@@8)) (=> (< (|Seq#Length_19209| s@@8) n@@8) (= (|Seq#Length_19209| (|Seq#Take_19209| s@@8 n@@8)) (|Seq#Length_19209| s@@8))))) (=> (< n@@8 0) (= (|Seq#Length_19209| (|Seq#Take_19209| s@@8 n@@8)) 0)))
 :qid |stdinbpl.260:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_19209| (|Seq#Take_19209| s@@8 n@@8)))
 :pattern ( (|Seq#Take_19209| s@@8 n@@8) (|Seq#Length_19209| s@@8))
)))
(assert (forall ((s@@9 T@Seq_19199) (n@@9 Int) ) (!  (and (=> (<= 0 n@@9) (and (=> (<= n@@9 (|Seq#Length_19199| s@@9)) (= (|Seq#Length_19199| (|Seq#Take_19199| s@@9 n@@9)) n@@9)) (=> (< (|Seq#Length_19199| s@@9) n@@9) (= (|Seq#Length_19199| (|Seq#Take_19199| s@@9 n@@9)) (|Seq#Length_19199| s@@9))))) (=> (< n@@9 0) (= (|Seq#Length_19199| (|Seq#Take_19199| s@@9 n@@9)) 0)))
 :qid |stdinbpl.260:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_19199| (|Seq#Take_19199| s@@9 n@@9)))
 :pattern ( (|Seq#Take_19199| s@@9 n@@9) (|Seq#Length_19199| s@@9))
)))
(assert (forall ((s@@10 T@Seq_2864) (n@@10 Int) ) (!  (and (=> (<= 0 n@@10) (and (=> (<= n@@10 (|Seq#Length_2864| s@@10)) (= (|Seq#Length_2864| (|Seq#Take_2864| s@@10 n@@10)) n@@10)) (=> (< (|Seq#Length_2864| s@@10) n@@10) (= (|Seq#Length_2864| (|Seq#Take_2864| s@@10 n@@10)) (|Seq#Length_2864| s@@10))))) (=> (< n@@10 0) (= (|Seq#Length_2864| (|Seq#Take_2864| s@@10 n@@10)) 0)))
 :qid |stdinbpl.260:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2864| (|Seq#Take_2864| s@@10 n@@10)))
 :pattern ( (|Seq#Take_2864| s@@10 n@@10) (|Seq#Length_2864| s@@10))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@2 Int) ) (! (= (|Seq#Contains_2864| (|Seq#Range| q@min q@max) v@@2)  (and (<= q@min v@@2) (< v@@2 q@max)))
 :qid |stdinbpl.534:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2864| (|Seq#Range| q@min q@max) v@@2))
)))
(assert (forall ((s@@11 T@Seq_19209) (x T@Seq_19199) ) (!  (=> (|Seq#Contains_19400| s@@11 x) (and (and (<= 0 (|Seq#Skolem_19400| s@@11 x)) (< (|Seq#Skolem_19400| s@@11 x) (|Seq#Length_19209| s@@11))) (= (|Seq#Index_19209| s@@11 (|Seq#Skolem_19400| s@@11 x)) x)))
 :qid |stdinbpl.392:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_19400| s@@11 x))
)))
(assert (forall ((s@@12 T@Seq_19199) (x@@0 T@Seq_2864) ) (!  (=> (|Seq#Contains_19366| s@@12 x@@0) (and (and (<= 0 (|Seq#Skolem_19366| s@@12 x@@0)) (< (|Seq#Skolem_19366| s@@12 x@@0) (|Seq#Length_19199| s@@12))) (= (|Seq#Index_19199| s@@12 (|Seq#Skolem_19366| s@@12 x@@0)) x@@0)))
 :qid |stdinbpl.392:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_19366| s@@12 x@@0))
)))
(assert (forall ((s@@13 T@Seq_2864) (x@@1 Int) ) (!  (=> (|Seq#Contains_2864| s@@13 x@@1) (and (and (<= 0 (|Seq#Skolem_2864| s@@13 x@@1)) (< (|Seq#Skolem_2864| s@@13 x@@1) (|Seq#Length_2864| s@@13))) (= (|Seq#Index_2864| s@@13 (|Seq#Skolem_2864| s@@13 x@@1)) x@@1)))
 :qid |stdinbpl.392:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2864| s@@13 x@@1))
)))
(assert (forall ((s@@14 T@Seq_19209) (n@@11 Int) ) (!  (=> (<= n@@11 0) (= (|Seq#Drop_19209| s@@14 n@@11) s@@14))
 :qid |stdinbpl.376:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_19209| s@@14 n@@11))
)))
(assert (forall ((s@@15 T@Seq_19199) (n@@12 Int) ) (!  (=> (<= n@@12 0) (= (|Seq#Drop_19199| s@@15 n@@12) s@@15))
 :qid |stdinbpl.376:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_19199| s@@15 n@@12))
)))
(assert (forall ((s@@16 T@Seq_2864) (n@@13 Int) ) (!  (=> (<= n@@13 0) (= (|Seq#Drop_2864| s@@16 n@@13) s@@16))
 :qid |stdinbpl.376:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_2864| s@@16 n@@13))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Sub| i@@2 j@@2) (- i@@2 j@@2))
 :qid |stdinbpl.229:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@2 j@@2))
)))
(assert (forall ((i@@3 Int) (j@@3 Int) ) (! (= (|Seq#Add| i@@3 j@@3) (+ i@@3 j@@3))
 :qid |stdinbpl.227:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@3 j@@3))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.640:15|
 :skolemid |90|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((a@@4 T@MultiSet_5518) (b@@3 T@MultiSet_5518) (o Int) ) (! (= (|MultiSet#Select_5518| (|MultiSet#Intersection_5518| a@@4 b@@3) o) (|Math#min| (|MultiSet#Select_5518| a@@4 o) (|MultiSet#Select_5518| b@@3 o)))
 :qid |stdinbpl.691:18|
 :skolemid |105|
 :pattern ( (|MultiSet#Select_5518| (|MultiSet#Intersection_5518| a@@4 b@@3) o))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_9523) (ExhaleHeap T@PolymorphicMapType_9523) (Mask@@0 T@PolymorphicMapType_9544) (pm_f T@Field_9583_22886) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_9583_22950 Mask@@0 null pm_f) (IsPredicateField_9583_22977 pm_f)) (= (select (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| Heap@@0) null (PredicateMaskField_9583 pm_f)) (select (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| ExhaleHeap) null (PredicateMaskField_9583 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_9583_22977 pm_f) (select (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| ExhaleHeap) null (PredicateMaskField_9583 pm_f)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_9523) (ExhaleHeap@@0 T@PolymorphicMapType_9523) (Mask@@1 T@PolymorphicMapType_9544) (pm_f@@0 T@Field_9583_22886) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_9583_22950 Mask@@1 null pm_f@@0) (IsWandField_9583_24526 pm_f@@0)) (= (select (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| Heap@@1) null (WandMaskField_9583 pm_f@@0)) (select (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| ExhaleHeap@@0) null (WandMaskField_9583 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_9583_24526 pm_f@@0) (select (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| ExhaleHeap@@0) null (WandMaskField_9583 pm_f@@0)))
)))
(assert (forall ((x@@2 T@Seq_19199) (y@@0 T@Seq_19199) ) (! (= (|Seq#Contains_19400| (|Seq#Singleton_19209| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.517:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_19400| (|Seq#Singleton_19209| x@@2) y@@0))
)))
(assert (forall ((x@@3 T@Seq_2864) (y@@1 T@Seq_2864) ) (! (= (|Seq#Contains_19366| (|Seq#Singleton_19199| x@@3) y@@1) (= x@@3 y@@1))
 :qid |stdinbpl.517:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_19366| (|Seq#Singleton_19199| x@@3) y@@1))
)))
(assert (forall ((x@@4 Int) (y@@2 Int) ) (! (= (|Seq#Contains_2864| (|Seq#Singleton_2864| x@@4) y@@2) (= x@@4 y@@2))
 :qid |stdinbpl.517:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2864| (|Seq#Singleton_2864| x@@4) y@@2))
)))
(assert (forall ((s@@17 T@Seq_19209) (n@@14 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@14)) (< j@@4 (|Seq#Length_19209| s@@17))) (= (|Seq#Index_19209| (|Seq#Take_19209| s@@17 n@@14) j@@4) (|Seq#Index_19209| s@@17 j@@4)))
 :qid |stdinbpl.268:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_19209| (|Seq#Take_19209| s@@17 n@@14) j@@4))
 :pattern ( (|Seq#Index_19209| s@@17 j@@4) (|Seq#Take_19209| s@@17 n@@14))
)))
(assert (forall ((s@@18 T@Seq_19199) (n@@15 Int) (j@@5 Int) ) (!  (=> (and (and (<= 0 j@@5) (< j@@5 n@@15)) (< j@@5 (|Seq#Length_19199| s@@18))) (= (|Seq#Index_19199| (|Seq#Take_19199| s@@18 n@@15) j@@5) (|Seq#Index_19199| s@@18 j@@5)))
 :qid |stdinbpl.268:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_19199| (|Seq#Take_19199| s@@18 n@@15) j@@5))
 :pattern ( (|Seq#Index_19199| s@@18 j@@5) (|Seq#Take_19199| s@@18 n@@15))
)))
(assert (forall ((s@@19 T@Seq_2864) (n@@16 Int) (j@@6 Int) ) (!  (=> (and (and (<= 0 j@@6) (< j@@6 n@@16)) (< j@@6 (|Seq#Length_2864| s@@19))) (= (|Seq#Index_2864| (|Seq#Take_2864| s@@19 n@@16) j@@6) (|Seq#Index_2864| s@@19 j@@6)))
 :qid |stdinbpl.268:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2864| (|Seq#Take_2864| s@@19 n@@16) j@@6))
 :pattern ( (|Seq#Index_2864| s@@19 j@@6) (|Seq#Take_2864| s@@19 n@@16))
)))
(assert (forall ((s@@20 T@Seq_19209) (t T@Seq_19209) (n@@17 Int) ) (!  (=> (and (and (> n@@17 0) (> n@@17 (|Seq#Length_19209| s@@20))) (< n@@17 (|Seq#Length_19209| (|Seq#Append_19209| s@@20 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@17 (|Seq#Length_19209| s@@20)) (|Seq#Length_19209| s@@20)) n@@17) (= (|Seq#Take_19209| (|Seq#Append_19209| s@@20 t) n@@17) (|Seq#Append_19209| s@@20 (|Seq#Take_19209| t (|Seq#Sub| n@@17 (|Seq#Length_19209| s@@20)))))))
 :qid |stdinbpl.353:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_19209| (|Seq#Append_19209| s@@20 t) n@@17))
)))
(assert (forall ((s@@21 T@Seq_19199) (t@@0 T@Seq_19199) (n@@18 Int) ) (!  (=> (and (and (> n@@18 0) (> n@@18 (|Seq#Length_19199| s@@21))) (< n@@18 (|Seq#Length_19199| (|Seq#Append_19199| s@@21 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@18 (|Seq#Length_19199| s@@21)) (|Seq#Length_19199| s@@21)) n@@18) (= (|Seq#Take_19199| (|Seq#Append_19199| s@@21 t@@0) n@@18) (|Seq#Append_19199| s@@21 (|Seq#Take_19199| t@@0 (|Seq#Sub| n@@18 (|Seq#Length_19199| s@@21)))))))
 :qid |stdinbpl.353:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_19199| (|Seq#Append_19199| s@@21 t@@0) n@@18))
)))
(assert (forall ((s@@22 T@Seq_2864) (t@@1 T@Seq_2864) (n@@19 Int) ) (!  (=> (and (and (> n@@19 0) (> n@@19 (|Seq#Length_2864| s@@22))) (< n@@19 (|Seq#Length_2864| (|Seq#Append_2864| s@@22 t@@1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@19 (|Seq#Length_2864| s@@22)) (|Seq#Length_2864| s@@22)) n@@19) (= (|Seq#Take_2864| (|Seq#Append_2864| s@@22 t@@1) n@@19) (|Seq#Append_2864| s@@22 (|Seq#Take_2864| t@@1 (|Seq#Sub| n@@19 (|Seq#Length_2864| s@@22)))))))
 :qid |stdinbpl.353:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2864| (|Seq#Append_2864| s@@22 t@@1) n@@19))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_9523) (ExhaleHeap@@1 T@PolymorphicMapType_9523) (Mask@@2 T@PolymorphicMapType_9544) (pm_f@@1 T@Field_9583_22886) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_9583_22950 Mask@@2 null pm_f@@1) (IsPredicateField_9583_22977 pm_f@@1)) (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_9583_53) ) (!  (=> (select (|PolymorphicMapType_10072_9583_53#PolymorphicMapType_10072| (select (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| Heap@@2) null (PredicateMaskField_9583 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_9523_5787_53#PolymorphicMapType_9523| Heap@@2) o2 f_2) (select (|PolymorphicMapType_9523_5787_53#PolymorphicMapType_9523| ExhaleHeap@@1) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9523_5787_53#PolymorphicMapType_9523| ExhaleHeap@@1) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_9596_9597) ) (!  (=> (select (|PolymorphicMapType_10072_9583_9597#PolymorphicMapType_10072| (select (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| Heap@@2) null (PredicateMaskField_9583 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_9523_5790_5791#PolymorphicMapType_9523| Heap@@2) o2@@0 f_2@@0) (select (|PolymorphicMapType_9523_5790_5791#PolymorphicMapType_9523| ExhaleHeap@@1) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9523_5790_5791#PolymorphicMapType_9523| ExhaleHeap@@1) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_9583_22886) ) (!  (=> (select (|PolymorphicMapType_10072_9583_22886#PolymorphicMapType_10072| (select (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| Heap@@2) null (PredicateMaskField_9583 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_9523_9583_22886#PolymorphicMapType_9523| Heap@@2) o2@@1 f_2@@1) (select (|PolymorphicMapType_9523_9583_22886#PolymorphicMapType_9523| ExhaleHeap@@1) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9523_9583_22886#PolymorphicMapType_9523| ExhaleHeap@@1) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_9583_23019) ) (!  (=> (select (|PolymorphicMapType_10072_9583_23999#PolymorphicMapType_10072| (select (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| Heap@@2) null (PredicateMaskField_9583 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| Heap@@2) o2@@2 f_2@@2) (select (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| ExhaleHeap@@1) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| ExhaleHeap@@1) o2@@2 f_2@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsPredicateField_9583_22977 pm_f@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_9523) (ExhaleHeap@@2 T@PolymorphicMapType_9523) (Mask@@3 T@PolymorphicMapType_9544) (pm_f@@2 T@Field_9583_22886) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_9583_22950 Mask@@3 null pm_f@@2) (IsWandField_9583_24526 pm_f@@2)) (and (and (and (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_9583_53) ) (!  (=> (select (|PolymorphicMapType_10072_9583_53#PolymorphicMapType_10072| (select (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| Heap@@3) null (WandMaskField_9583 pm_f@@2))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_9523_5787_53#PolymorphicMapType_9523| Heap@@3) o2@@3 f_2@@3) (select (|PolymorphicMapType_9523_5787_53#PolymorphicMapType_9523| ExhaleHeap@@2) o2@@3 f_2@@3)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9523_5787_53#PolymorphicMapType_9523| ExhaleHeap@@2) o2@@3 f_2@@3))
)) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_9596_9597) ) (!  (=> (select (|PolymorphicMapType_10072_9583_9597#PolymorphicMapType_10072| (select (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| Heap@@3) null (WandMaskField_9583 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_9523_5790_5791#PolymorphicMapType_9523| Heap@@3) o2@@4 f_2@@4) (select (|PolymorphicMapType_9523_5790_5791#PolymorphicMapType_9523| ExhaleHeap@@2) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9523_5790_5791#PolymorphicMapType_9523| ExhaleHeap@@2) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_9583_22886) ) (!  (=> (select (|PolymorphicMapType_10072_9583_22886#PolymorphicMapType_10072| (select (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| Heap@@3) null (WandMaskField_9583 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_9523_9583_22886#PolymorphicMapType_9523| Heap@@3) o2@@5 f_2@@5) (select (|PolymorphicMapType_9523_9583_22886#PolymorphicMapType_9523| ExhaleHeap@@2) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9523_9583_22886#PolymorphicMapType_9523| ExhaleHeap@@2) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_9583_23019) ) (!  (=> (select (|PolymorphicMapType_10072_9583_23999#PolymorphicMapType_10072| (select (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| Heap@@3) null (WandMaskField_9583 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| Heap@@3) o2@@6 f_2@@6) (select (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| ExhaleHeap@@2) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| ExhaleHeap@@2) o2@@6 f_2@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_9583_24526 pm_f@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((a@@5 T@MultiSet_5518) (x@@5 Int) ) (! (= (|MultiSet#Card_5518| (|MultiSet#UnionOne_5518| a@@5 x@@5)) (+ (|MultiSet#Card_5518| a@@5) 1))
 :qid |stdinbpl.677:18|
 :skolemid |101|
 :pattern ( (|MultiSet#Card_5518| (|MultiSet#UnionOne_5518| a@@5 x@@5)))
 :pattern ( (|MultiSet#UnionOne_5518| a@@5 x@@5) (|MultiSet#Card_5518| a@@5))
)))
(assert (forall ((a@@6 T@MultiSet_5518) (b@@4 T@MultiSet_5518) ) (! (= (|MultiSet#Disjoint_5518| a@@6 b@@4) (forall ((o@@0 Int) ) (!  (or (= (|MultiSet#Select_5518| a@@6 o@@0) 0) (= (|MultiSet#Select_5518| b@@4 o@@0) 0))
 :qid |stdinbpl.727:39|
 :skolemid |116|
 :pattern ( (|MultiSet#Select_5518| a@@6 o@@0))
 :pattern ( (|MultiSet#Select_5518| b@@4 o@@0))
)))
 :qid |stdinbpl.726:18|
 :skolemid |117|
 :pattern ( (|MultiSet#Disjoint_5518| a@@6 b@@4))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_9523) (ExhaleHeap@@3 T@PolymorphicMapType_9523) (Mask@@4 T@PolymorphicMapType_9544) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_9523_5787_53#PolymorphicMapType_9523| Heap@@4) o_1 $allocated) (select (|PolymorphicMapType_9523_5787_53#PolymorphicMapType_9523| ExhaleHeap@@3) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_9523_5787_53#PolymorphicMapType_9523| ExhaleHeap@@3) o_1 $allocated))
)))
(assert (forall ((p T@Field_9583_22886) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_9583_9583 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_9583_9583 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_19209) (s1 T@Seq_19209) (n@@20 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_19209|)) (not (= s1 |Seq#Empty_19209|))) (<= (|Seq#Length_19209| s0) n@@20)) (< n@@20 (|Seq#Length_19209| (|Seq#Append_19209| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@20 (|Seq#Length_19209| s0)) (|Seq#Length_19209| s0)) n@@20) (= (|Seq#Index_19209| (|Seq#Append_19209| s0 s1) n@@20) (|Seq#Index_19209| s1 (|Seq#Sub| n@@20 (|Seq#Length_19209| s0))))))
 :qid |stdinbpl.240:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_19209| (|Seq#Append_19209| s0 s1) n@@20))
)))
(assert (forall ((s0@@0 T@Seq_19199) (s1@@0 T@Seq_19199) (n@@21 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_19199|)) (not (= s1@@0 |Seq#Empty_19199|))) (<= (|Seq#Length_19199| s0@@0) n@@21)) (< n@@21 (|Seq#Length_19199| (|Seq#Append_19199| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@21 (|Seq#Length_19199| s0@@0)) (|Seq#Length_19199| s0@@0)) n@@21) (= (|Seq#Index_19199| (|Seq#Append_19199| s0@@0 s1@@0) n@@21) (|Seq#Index_19199| s1@@0 (|Seq#Sub| n@@21 (|Seq#Length_19199| s0@@0))))))
 :qid |stdinbpl.240:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_19199| (|Seq#Append_19199| s0@@0 s1@@0) n@@21))
)))
(assert (forall ((s0@@1 T@Seq_2864) (s1@@1 T@Seq_2864) (n@@22 Int) ) (!  (=> (and (and (and (not (= s0@@1 |Seq#Empty_2864|)) (not (= s1@@1 |Seq#Empty_2864|))) (<= (|Seq#Length_2864| s0@@1) n@@22)) (< n@@22 (|Seq#Length_2864| (|Seq#Append_2864| s0@@1 s1@@1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@22 (|Seq#Length_2864| s0@@1)) (|Seq#Length_2864| s0@@1)) n@@22) (= (|Seq#Index_2864| (|Seq#Append_2864| s0@@1 s1@@1) n@@22) (|Seq#Index_2864| s1@@1 (|Seq#Sub| n@@22 (|Seq#Length_2864| s0@@1))))))
 :qid |stdinbpl.240:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2864| (|Seq#Append_2864| s0@@1 s1@@1) n@@22))
)))
(assert (forall ((r Int) ) (!  (and (= (|MultiSet#Card_5518| (|MultiSet#Singleton_5518| r)) 1) (= (|MultiSet#Select_5518| (|MultiSet#Singleton_5518| r) r) 1))
 :qid |stdinbpl.669:18|
 :skolemid |98|
 :pattern ( (|MultiSet#Singleton_5518| r))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_9523) (ExhaleHeap@@4 T@PolymorphicMapType_9523) (Mask@@5 T@PolymorphicMapType_9544) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (succHeap Heap@@5 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_9544) (o_2@@3 T@Ref) (f_4@@3 T@Field_9583_23019) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_9544_9583_26580#PolymorphicMapType_9544| Mask@@6) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_9583_27489 f_4@@3))) (not (IsWandField_9583_27505 f_4@@3))) (<= (select (|PolymorphicMapType_9544_9583_26580#PolymorphicMapType_9544| Mask@@6) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_9544_9583_26580#PolymorphicMapType_9544| Mask@@6) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_9544) (o_2@@4 T@Ref) (f_4@@4 T@Field_9583_22886) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_9544_9583_22886#PolymorphicMapType_9544| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_9583_22977 f_4@@4))) (not (IsWandField_9583_24526 f_4@@4))) (<= (select (|PolymorphicMapType_9544_9583_22886#PolymorphicMapType_9544| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_9544_9583_22886#PolymorphicMapType_9544| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_9544) (o_2@@5 T@Ref) (f_4@@5 T@Field_9596_9597) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_9544_9583_9597#PolymorphicMapType_9544| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_9583_9597 f_4@@5))) (not (IsWandField_9583_9597 f_4@@5))) (<= (select (|PolymorphicMapType_9544_9583_9597#PolymorphicMapType_9544| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_9544_9583_9597#PolymorphicMapType_9544| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_9544) (o_2@@6 T@Ref) (f_4@@6 T@Field_9583_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_9544_9583_53#PolymorphicMapType_9544| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_9583_53 f_4@@6))) (not (IsWandField_9583_53 f_4@@6))) (<= (select (|PolymorphicMapType_9544_9583_53#PolymorphicMapType_9544| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_9544_9583_53#PolymorphicMapType_9544| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_9544) (o_2@@7 T@Ref) (f_4@@7 T@Field_9583_23019) ) (! (= (HasDirectPerm_9583_27860 Mask@@10 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_9544_9583_26580#PolymorphicMapType_9544| Mask@@10) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9583_27860 Mask@@10 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_9544) (o_2@@8 T@Ref) (f_4@@8 T@Field_9583_22886) ) (! (= (HasDirectPerm_9583_22950 Mask@@11 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_9544_9583_22886#PolymorphicMapType_9544| Mask@@11) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9583_22950 Mask@@11 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_9544) (o_2@@9 T@Ref) (f_4@@9 T@Field_9596_9597) ) (! (= (HasDirectPerm_9583_9597 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_9544_9583_9597#PolymorphicMapType_9544| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9583_9597 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_9544) (o_2@@10 T@Ref) (f_4@@10 T@Field_9583_53) ) (! (= (HasDirectPerm_9583_53 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_9544_9583_53#PolymorphicMapType_9544| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9583_53 Mask@@13 o_2@@10 f_4@@10))
)))
(assert (forall ((a@@7 T@MultiSet_5518) (b@@5 T@MultiSet_5518) ) (! (= (|MultiSet#Card_5518| (|MultiSet#Union_5518| a@@7 b@@5)) (+ (|MultiSet#Card_5518| a@@7) (|MultiSet#Card_5518| b@@5)))
 :qid |stdinbpl.687:18|
 :skolemid |104|
 :pattern ( (|MultiSet#Card_5518| (|MultiSet#Union_5518| a@@7 b@@5)))
 :pattern ( (|MultiSet#Card_5518| a@@7) (|MultiSet#Union_5518| a@@7 b@@5))
 :pattern ( (|MultiSet#Card_5518| b@@5) (|MultiSet#Union_5518| a@@7 b@@5))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2864| (|Seq#Range| q@min@@0 q@max@@0) j@@7) (+ q@min@@0 j@@7)))
 :qid |stdinbpl.532:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2864| (|Seq#Range| q@min@@0 q@max@@0) j@@7))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_9523) (ExhaleHeap@@5 T@PolymorphicMapType_9523) (Mask@@14 T@PolymorphicMapType_9544) (o_1@@0 T@Ref) (f_2@@7 T@Field_9583_23019) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (=> (HasDirectPerm_9583_27860 Mask@@14 o_1@@0 f_2@@7) (= (select (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| Heap@@6) o_1@@0 f_2@@7) (select (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| ExhaleHeap@@5) o_1@@0 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (select (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| ExhaleHeap@@5) o_1@@0 f_2@@7))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_9523) (ExhaleHeap@@6 T@PolymorphicMapType_9523) (Mask@@15 T@PolymorphicMapType_9544) (o_1@@1 T@Ref) (f_2@@8 T@Field_9583_22886) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (=> (HasDirectPerm_9583_22950 Mask@@15 o_1@@1 f_2@@8) (= (select (|PolymorphicMapType_9523_9583_22886#PolymorphicMapType_9523| Heap@@7) o_1@@1 f_2@@8) (select (|PolymorphicMapType_9523_9583_22886#PolymorphicMapType_9523| ExhaleHeap@@6) o_1@@1 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (select (|PolymorphicMapType_9523_9583_22886#PolymorphicMapType_9523| ExhaleHeap@@6) o_1@@1 f_2@@8))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_9523) (ExhaleHeap@@7 T@PolymorphicMapType_9523) (Mask@@16 T@PolymorphicMapType_9544) (o_1@@2 T@Ref) (f_2@@9 T@Field_9596_9597) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (=> (HasDirectPerm_9583_9597 Mask@@16 o_1@@2 f_2@@9) (= (select (|PolymorphicMapType_9523_5790_5791#PolymorphicMapType_9523| Heap@@8) o_1@@2 f_2@@9) (select (|PolymorphicMapType_9523_5790_5791#PolymorphicMapType_9523| ExhaleHeap@@7) o_1@@2 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (select (|PolymorphicMapType_9523_5790_5791#PolymorphicMapType_9523| ExhaleHeap@@7) o_1@@2 f_2@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_9523) (ExhaleHeap@@8 T@PolymorphicMapType_9523) (Mask@@17 T@PolymorphicMapType_9544) (o_1@@3 T@Ref) (f_2@@10 T@Field_9583_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (=> (HasDirectPerm_9583_53 Mask@@17 o_1@@3 f_2@@10) (= (select (|PolymorphicMapType_9523_5787_53#PolymorphicMapType_9523| Heap@@9) o_1@@3 f_2@@10) (select (|PolymorphicMapType_9523_5787_53#PolymorphicMapType_9523| ExhaleHeap@@8) o_1@@3 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (select (|PolymorphicMapType_9523_5787_53#PolymorphicMapType_9523| ExhaleHeap@@8) o_1@@3 f_2@@10))
)))
(assert (forall ((s0@@2 T@Seq_19209) (s1@@2 T@Seq_19209) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_19209|)) (not (= s1@@2 |Seq#Empty_19209|))) (= (|Seq#Length_19209| (|Seq#Append_19209| s0@@2 s1@@2)) (+ (|Seq#Length_19209| s0@@2) (|Seq#Length_19209| s1@@2))))
 :qid |stdinbpl.209:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_19209| (|Seq#Append_19209| s0@@2 s1@@2)))
)))
(assert (forall ((s0@@3 T@Seq_19199) (s1@@3 T@Seq_19199) ) (!  (=> (and (not (= s0@@3 |Seq#Empty_19199|)) (not (= s1@@3 |Seq#Empty_19199|))) (= (|Seq#Length_19199| (|Seq#Append_19199| s0@@3 s1@@3)) (+ (|Seq#Length_19199| s0@@3) (|Seq#Length_19199| s1@@3))))
 :qid |stdinbpl.209:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_19199| (|Seq#Append_19199| s0@@3 s1@@3)))
)))
(assert (forall ((s0@@4 T@Seq_2864) (s1@@4 T@Seq_2864) ) (!  (=> (and (not (= s0@@4 |Seq#Empty_2864|)) (not (= s1@@4 |Seq#Empty_2864|))) (= (|Seq#Length_2864| (|Seq#Append_2864| s0@@4 s1@@4)) (+ (|Seq#Length_2864| s0@@4) (|Seq#Length_2864| s1@@4))))
 :qid |stdinbpl.209:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2864| (|Seq#Append_2864| s0@@4 s1@@4)))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_9583_23019) ) (! (= (select (|PolymorphicMapType_9544_9583_26580#PolymorphicMapType_9544| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9544_9583_26580#PolymorphicMapType_9544| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_9583_22886) ) (! (= (select (|PolymorphicMapType_9544_9583_22886#PolymorphicMapType_9544| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9544_9583_22886#PolymorphicMapType_9544| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_9596_9597) ) (! (= (select (|PolymorphicMapType_9544_9583_9597#PolymorphicMapType_9544| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9544_9583_9597#PolymorphicMapType_9544| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_9583_53) ) (! (= (select (|PolymorphicMapType_9544_9583_53#PolymorphicMapType_9544| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9544_9583_53#PolymorphicMapType_9544| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((s@@23 T@Seq_19209) (t@@2 T@Seq_19209) (n@@23 Int) ) (!  (=> (and (> n@@23 0) (> n@@23 (|Seq#Length_19209| s@@23))) (and (= (|Seq#Add| (|Seq#Sub| n@@23 (|Seq#Length_19209| s@@23)) (|Seq#Length_19209| s@@23)) n@@23) (= (|Seq#Drop_19209| (|Seq#Append_19209| s@@23 t@@2) n@@23) (|Seq#Drop_19209| t@@2 (|Seq#Sub| n@@23 (|Seq#Length_19209| s@@23))))))
 :qid |stdinbpl.366:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_19209| (|Seq#Append_19209| s@@23 t@@2) n@@23))
)))
(assert (forall ((s@@24 T@Seq_19199) (t@@3 T@Seq_19199) (n@@24 Int) ) (!  (=> (and (> n@@24 0) (> n@@24 (|Seq#Length_19199| s@@24))) (and (= (|Seq#Add| (|Seq#Sub| n@@24 (|Seq#Length_19199| s@@24)) (|Seq#Length_19199| s@@24)) n@@24) (= (|Seq#Drop_19199| (|Seq#Append_19199| s@@24 t@@3) n@@24) (|Seq#Drop_19199| t@@3 (|Seq#Sub| n@@24 (|Seq#Length_19199| s@@24))))))
 :qid |stdinbpl.366:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_19199| (|Seq#Append_19199| s@@24 t@@3) n@@24))
)))
(assert (forall ((s@@25 T@Seq_2864) (t@@4 T@Seq_2864) (n@@25 Int) ) (!  (=> (and (> n@@25 0) (> n@@25 (|Seq#Length_2864| s@@25))) (and (= (|Seq#Add| (|Seq#Sub| n@@25 (|Seq#Length_2864| s@@25)) (|Seq#Length_2864| s@@25)) n@@25) (= (|Seq#Drop_2864| (|Seq#Append_2864| s@@25 t@@4) n@@25) (|Seq#Drop_2864| t@@4 (|Seq#Sub| n@@25 (|Seq#Length_2864| s@@25))))))
 :qid |stdinbpl.366:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_2864| (|Seq#Append_2864| s@@25 t@@4) n@@25))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_9544) (SummandMask1 T@PolymorphicMapType_9544) (SummandMask2 T@PolymorphicMapType_9544) (o_2@@15 T@Ref) (f_4@@15 T@Field_9583_23019) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_9544_9583_26580#PolymorphicMapType_9544| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_9544_9583_26580#PolymorphicMapType_9544| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_9544_9583_26580#PolymorphicMapType_9544| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9544_9583_26580#PolymorphicMapType_9544| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9544_9583_26580#PolymorphicMapType_9544| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9544_9583_26580#PolymorphicMapType_9544| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_9544) (SummandMask1@@0 T@PolymorphicMapType_9544) (SummandMask2@@0 T@PolymorphicMapType_9544) (o_2@@16 T@Ref) (f_4@@16 T@Field_9583_22886) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_9544_9583_22886#PolymorphicMapType_9544| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_9544_9583_22886#PolymorphicMapType_9544| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_9544_9583_22886#PolymorphicMapType_9544| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9544_9583_22886#PolymorphicMapType_9544| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9544_9583_22886#PolymorphicMapType_9544| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9544_9583_22886#PolymorphicMapType_9544| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_9544) (SummandMask1@@1 T@PolymorphicMapType_9544) (SummandMask2@@1 T@PolymorphicMapType_9544) (o_2@@17 T@Ref) (f_4@@17 T@Field_9596_9597) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_9544_9583_9597#PolymorphicMapType_9544| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_9544_9583_9597#PolymorphicMapType_9544| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_9544_9583_9597#PolymorphicMapType_9544| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9544_9583_9597#PolymorphicMapType_9544| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9544_9583_9597#PolymorphicMapType_9544| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9544_9583_9597#PolymorphicMapType_9544| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_9544) (SummandMask1@@2 T@PolymorphicMapType_9544) (SummandMask2@@2 T@PolymorphicMapType_9544) (o_2@@18 T@Ref) (f_4@@18 T@Field_9583_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_9544_9583_53#PolymorphicMapType_9544| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_9544_9583_53#PolymorphicMapType_9544| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_9544_9583_53#PolymorphicMapType_9544| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9544_9583_53#PolymorphicMapType_9544| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9544_9583_53#PolymorphicMapType_9544| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9544_9583_53#PolymorphicMapType_9544| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2864| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2864| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.531:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2864| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a@@8 T@Seq_19209) (b@@6 T@Seq_19209) ) (!  (=> (|Seq#Equal_19209| a@@8 b@@6) (= a@@8 b@@6))
 :qid |stdinbpl.504:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_19209| a@@8 b@@6))
)))
(assert (forall ((a@@9 T@Seq_19199) (b@@7 T@Seq_19199) ) (!  (=> (|Seq#Equal_19199| a@@9 b@@7) (= a@@9 b@@7))
 :qid |stdinbpl.504:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_19199| a@@9 b@@7))
)))
(assert (forall ((a@@10 T@Seq_2864) (b@@8 T@Seq_2864) ) (!  (=> (|Seq#Equal_2864| a@@10 b@@8) (= a@@10 b@@8))
 :qid |stdinbpl.504:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_2864| a@@10 b@@8))
)))
(assert (forall ((a@@11 T@MultiSet_5518) (b@@9 T@MultiSet_5518) ) (!  (=> (|MultiSet#Equal_5518| a@@11 b@@9) (= a@@11 b@@9))
 :qid |stdinbpl.722:17|
 :skolemid |115|
 :pattern ( (|MultiSet#Equal_5518| a@@11 b@@9))
)))
(assert (forall ((ms T@MultiSet_5518) (x@@6 Int) ) (! (>= (|MultiSet#Select_5518| ms x@@6) 0)
 :qid |stdinbpl.653:18|
 :skolemid |92|
 :pattern ( (|MultiSet#Select_5518| ms x@@6))
)))
(assert (forall ((s@@26 T@Seq_19209) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_19209| s@@26))) (|Seq#ContainsTrigger_19209| s@@26 (|Seq#Index_19209| s@@26 i@@4)))
 :qid |stdinbpl.397:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_19209| s@@26 i@@4))
)))
(assert (forall ((s@@27 T@Seq_19199) (i@@5 Int) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_19199| s@@27))) (|Seq#ContainsTrigger_19199| s@@27 (|Seq#Index_19199| s@@27 i@@5)))
 :qid |stdinbpl.397:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_19199| s@@27 i@@5))
)))
(assert (forall ((s@@28 T@Seq_2864) (i@@6 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_2864| s@@28))) (|Seq#ContainsTrigger_2864| s@@28 (|Seq#Index_2864| s@@28 i@@6)))
 :qid |stdinbpl.397:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2864| s@@28 i@@6))
)))
(assert (forall ((s0@@5 T@Seq_19209) (s1@@5 T@Seq_19209) ) (!  (and (=> (= s0@@5 |Seq#Empty_19209|) (= (|Seq#Append_19209| s0@@5 s1@@5) s1@@5)) (=> (= s1@@5 |Seq#Empty_19209|) (= (|Seq#Append_19209| s0@@5 s1@@5) s0@@5)))
 :qid |stdinbpl.215:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_19209| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_19199) (s1@@6 T@Seq_19199) ) (!  (and (=> (= s0@@6 |Seq#Empty_19199|) (= (|Seq#Append_19199| s0@@6 s1@@6) s1@@6)) (=> (= s1@@6 |Seq#Empty_19199|) (= (|Seq#Append_19199| s0@@6 s1@@6) s0@@6)))
 :qid |stdinbpl.215:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_19199| s0@@6 s1@@6))
)))
(assert (forall ((s0@@7 T@Seq_2864) (s1@@7 T@Seq_2864) ) (!  (and (=> (= s0@@7 |Seq#Empty_2864|) (= (|Seq#Append_2864| s0@@7 s1@@7) s1@@7)) (=> (= s1@@7 |Seq#Empty_2864|) (= (|Seq#Append_2864| s0@@7 s1@@7) s0@@7)))
 :qid |stdinbpl.215:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_2864| s0@@7 s1@@7))
)))
(assert (forall ((t@@5 T@Seq_19199) ) (! (= (|Seq#Index_19209| (|Seq#Singleton_19209| t@@5) 0) t@@5)
 :qid |stdinbpl.219:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_19209| t@@5))
)))
(assert (forall ((t@@6 T@Seq_2864) ) (! (= (|Seq#Index_19199| (|Seq#Singleton_19199| t@@6) 0) t@@6)
 :qid |stdinbpl.219:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_19199| t@@6))
)))
(assert (forall ((t@@7 Int) ) (! (= (|Seq#Index_2864| (|Seq#Singleton_2864| t@@7) 0) t@@7)
 :qid |stdinbpl.219:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_2864| t@@7))
)))
(assert (forall ((s@@29 T@Seq_19209) ) (! (<= 0 (|Seq#Length_19209| s@@29))
 :qid |stdinbpl.198:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_19209| s@@29))
)))
(assert (forall ((s@@30 T@Seq_19199) ) (! (<= 0 (|Seq#Length_19199| s@@30))
 :qid |stdinbpl.198:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_19199| s@@30))
)))
(assert (forall ((s@@31 T@Seq_2864) ) (! (<= 0 (|Seq#Length_2864| s@@31))
 :qid |stdinbpl.198:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2864| s@@31))
)))
(assert (forall ((s@@32 T@MultiSet_5518) ) (! (<= 0 (|MultiSet#Card_5518| s@@32))
 :qid |stdinbpl.656:18|
 :skolemid |93|
 :pattern ( (|MultiSet#Card_5518| s@@32))
)))
(assert (forall ((o@@1 Int) ) (! (= (|MultiSet#Select_5518| |MultiSet#Empty_5518| o@@1) 0)
 :qid |stdinbpl.661:18|
 :skolemid |94|
 :pattern ( (|MultiSet#Select_5518| |MultiSet#Empty_5518| o@@1))
)))
(assert (forall ((s0@@8 T@Seq_19209) (s1@@8 T@Seq_19209) ) (!  (=> (|Seq#Equal_19209| s0@@8 s1@@8) (and (= (|Seq#Length_19209| s0@@8) (|Seq#Length_19209| s1@@8)) (forall ((j@@8 Int) ) (!  (=> (and (<= 0 j@@8) (< j@@8 (|Seq#Length_19209| s0@@8))) (= (|Seq#Index_19209| s0@@8 j@@8) (|Seq#Index_19209| s1@@8 j@@8)))
 :qid |stdinbpl.494:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_19209| s0@@8 j@@8))
 :pattern ( (|Seq#Index_19209| s1@@8 j@@8))
))))
 :qid |stdinbpl.491:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_19209| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_19199) (s1@@9 T@Seq_19199) ) (!  (=> (|Seq#Equal_19199| s0@@9 s1@@9) (and (= (|Seq#Length_19199| s0@@9) (|Seq#Length_19199| s1@@9)) (forall ((j@@9 Int) ) (!  (=> (and (<= 0 j@@9) (< j@@9 (|Seq#Length_19199| s0@@9))) (= (|Seq#Index_19199| s0@@9 j@@9) (|Seq#Index_19199| s1@@9 j@@9)))
 :qid |stdinbpl.494:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_19199| s0@@9 j@@9))
 :pattern ( (|Seq#Index_19199| s1@@9 j@@9))
))))
 :qid |stdinbpl.491:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_19199| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_2864) (s1@@10 T@Seq_2864) ) (!  (=> (|Seq#Equal_2864| s0@@10 s1@@10) (and (= (|Seq#Length_2864| s0@@10) (|Seq#Length_2864| s1@@10)) (forall ((j@@10 Int) ) (!  (=> (and (<= 0 j@@10) (< j@@10 (|Seq#Length_2864| s0@@10))) (= (|Seq#Index_2864| s0@@10 j@@10) (|Seq#Index_2864| s1@@10 j@@10)))
 :qid |stdinbpl.494:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2864| s0@@10 j@@10))
 :pattern ( (|Seq#Index_2864| s1@@10 j@@10))
))))
 :qid |stdinbpl.491:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_2864| s0@@10 s1@@10))
)))
(assert (forall ((a@@12 T@MultiSet_5518) (x@@7 Int) ) (!  (and (> (|MultiSet#Select_5518| (|MultiSet#UnionOne_5518| a@@12 x@@7) x@@7) 0) (> (|MultiSet#Card_5518| (|MultiSet#UnionOne_5518| a@@12 x@@7)) 0))
 :qid |stdinbpl.680:18|
 :skolemid |102|
 :pattern ( (|MultiSet#UnionOne_5518| a@@12 x@@7))
)))
(assert (forall ((t@@8 T@Seq_19199) ) (! (= (|Seq#Length_19209| (|Seq#Singleton_19209| t@@8)) 1)
 :qid |stdinbpl.206:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_19209| t@@8))
)))
(assert (forall ((t@@9 T@Seq_2864) ) (! (= (|Seq#Length_19199| (|Seq#Singleton_19199| t@@9)) 1)
 :qid |stdinbpl.206:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_19199| t@@9))
)))
(assert (forall ((t@@10 Int) ) (! (= (|Seq#Length_2864| (|Seq#Singleton_2864| t@@10)) 1)
 :qid |stdinbpl.206:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_2864| t@@10))
)))
(assert (forall ((a@@13 T@MultiSet_5518) (b@@10 T@MultiSet_5518) ) (! (= (|MultiSet#Intersection_5518| a@@13 (|MultiSet#Intersection_5518| a@@13 b@@10)) (|MultiSet#Intersection_5518| a@@13 b@@10))
 :qid |stdinbpl.697:18|
 :skolemid |107|
 :pattern ( (|MultiSet#Intersection_5518| a@@13 (|MultiSet#Intersection_5518| a@@13 b@@10)))
)))
(assert (forall ((s@@33 T@MultiSet_5518) ) (!  (and (= (= (|MultiSet#Card_5518| s@@33) 0) (= s@@33 |MultiSet#Empty_5518|)) (=> (not (= (|MultiSet#Card_5518| s@@33) 0)) (exists ((x@@8 Int) ) (! (< 0 (|MultiSet#Select_5518| s@@33 x@@8))
 :qid |stdinbpl.664:38|
 :skolemid |95|
))))
 :qid |stdinbpl.662:18|
 :skolemid |96|
 :pattern ( (|MultiSet#Card_5518| s@@33))
)))
(assert (forall ((r@@0 Int) (o@@2 Int) ) (!  (and (= (= (|MultiSet#Select_5518| (|MultiSet#Singleton_5518| r@@0) o@@2) 1) (= r@@0 o@@2)) (= (= (|MultiSet#Select_5518| (|MultiSet#Singleton_5518| r@@0) o@@2) 0) (not (= r@@0 o@@2))))
 :qid |stdinbpl.667:18|
 :skolemid |97|
 :pattern ( (|MultiSet#Select_5518| (|MultiSet#Singleton_5518| r@@0) o@@2))
)))
(assert (forall ((a@@14 T@MultiSet_5518) (b@@11 T@MultiSet_5518) (o@@3 Int) ) (! (= (|MultiSet#Select_5518| (|MultiSet#Union_5518| a@@14 b@@11) o@@3) (+ (|MultiSet#Select_5518| a@@14 o@@3) (|MultiSet#Select_5518| b@@11 o@@3)))
 :qid |stdinbpl.685:18|
 :skolemid |103|
 :pattern ( (|MultiSet#Select_5518| (|MultiSet#Union_5518| a@@14 b@@11) o@@3))
 :pattern ( (|MultiSet#Union_5518| a@@14 b@@11) (|MultiSet#Select_5518| a@@14 o@@3) (|MultiSet#Select_5518| b@@11 o@@3))
)))
(assert (forall ((s@@34 T@Seq_19209) (t@@11 T@Seq_19209) (n@@26 Int) ) (!  (=> (and (< 0 n@@26) (<= n@@26 (|Seq#Length_19209| s@@34))) (= (|Seq#Take_19209| (|Seq#Append_19209| s@@34 t@@11) n@@26) (|Seq#Take_19209| s@@34 n@@26)))
 :qid |stdinbpl.348:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_19209| (|Seq#Append_19209| s@@34 t@@11) n@@26))
)))
(assert (forall ((s@@35 T@Seq_19199) (t@@12 T@Seq_19199) (n@@27 Int) ) (!  (=> (and (< 0 n@@27) (<= n@@27 (|Seq#Length_19199| s@@35))) (= (|Seq#Take_19199| (|Seq#Append_19199| s@@35 t@@12) n@@27) (|Seq#Take_19199| s@@35 n@@27)))
 :qid |stdinbpl.348:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_19199| (|Seq#Append_19199| s@@35 t@@12) n@@27))
)))
(assert (forall ((s@@36 T@Seq_2864) (t@@13 T@Seq_2864) (n@@28 Int) ) (!  (=> (and (< 0 n@@28) (<= n@@28 (|Seq#Length_2864| s@@36))) (= (|Seq#Take_2864| (|Seq#Append_2864| s@@36 t@@13) n@@28) (|Seq#Take_2864| s@@36 n@@28)))
 :qid |stdinbpl.348:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2864| (|Seq#Append_2864| s@@36 t@@13) n@@28))
)))
(assert (forall ((s@@37 T@Seq_19209) (i@@7 Int) (v@@3 T@Seq_19199) ) (!  (=> (and (<= 0 i@@7) (< i@@7 (|Seq#Length_19209| s@@37))) (= (|Seq#Length_19209| (|Seq#Update_19209| s@@37 i@@7 v@@3)) (|Seq#Length_19209| s@@37)))
 :qid |stdinbpl.247:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_19209| (|Seq#Update_19209| s@@37 i@@7 v@@3)))
 :pattern ( (|Seq#Length_19209| s@@37) (|Seq#Update_19209| s@@37 i@@7 v@@3))
)))
(assert (forall ((s@@38 T@Seq_19199) (i@@8 Int) (v@@4 T@Seq_2864) ) (!  (=> (and (<= 0 i@@8) (< i@@8 (|Seq#Length_19199| s@@38))) (= (|Seq#Length_19199| (|Seq#Update_19199| s@@38 i@@8 v@@4)) (|Seq#Length_19199| s@@38)))
 :qid |stdinbpl.247:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_19199| (|Seq#Update_19199| s@@38 i@@8 v@@4)))
 :pattern ( (|Seq#Length_19199| s@@38) (|Seq#Update_19199| s@@38 i@@8 v@@4))
)))
(assert (forall ((s@@39 T@Seq_2864) (i@@9 Int) (v@@5 Int) ) (!  (=> (and (<= 0 i@@9) (< i@@9 (|Seq#Length_2864| s@@39))) (= (|Seq#Length_2864| (|Seq#Update_2864| s@@39 i@@9 v@@5)) (|Seq#Length_2864| s@@39)))
 :qid |stdinbpl.247:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2864| (|Seq#Update_2864| s@@39 i@@9 v@@5)))
 :pattern ( (|Seq#Length_2864| s@@39) (|Seq#Update_2864| s@@39 i@@9 v@@5))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_9523) (o@@4 T@Ref) (f_3 T@Field_9583_22886) (v@@6 T@FrameType) ) (! (succHeap Heap@@10 (PolymorphicMapType_9523 (|PolymorphicMapType_9523_5787_53#PolymorphicMapType_9523| Heap@@10) (|PolymorphicMapType_9523_5790_5791#PolymorphicMapType_9523| Heap@@10) (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| Heap@@10) (store (|PolymorphicMapType_9523_9583_22886#PolymorphicMapType_9523| Heap@@10) o@@4 f_3 v@@6)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9523 (|PolymorphicMapType_9523_5787_53#PolymorphicMapType_9523| Heap@@10) (|PolymorphicMapType_9523_5790_5791#PolymorphicMapType_9523| Heap@@10) (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| Heap@@10) (store (|PolymorphicMapType_9523_9583_22886#PolymorphicMapType_9523| Heap@@10) o@@4 f_3 v@@6)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_9523) (o@@5 T@Ref) (f_3@@0 T@Field_9583_23019) (v@@7 T@PolymorphicMapType_10072) ) (! (succHeap Heap@@11 (PolymorphicMapType_9523 (|PolymorphicMapType_9523_5787_53#PolymorphicMapType_9523| Heap@@11) (|PolymorphicMapType_9523_5790_5791#PolymorphicMapType_9523| Heap@@11) (store (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| Heap@@11) o@@5 f_3@@0 v@@7) (|PolymorphicMapType_9523_9583_22886#PolymorphicMapType_9523| Heap@@11)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9523 (|PolymorphicMapType_9523_5787_53#PolymorphicMapType_9523| Heap@@11) (|PolymorphicMapType_9523_5790_5791#PolymorphicMapType_9523| Heap@@11) (store (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| Heap@@11) o@@5 f_3@@0 v@@7) (|PolymorphicMapType_9523_9583_22886#PolymorphicMapType_9523| Heap@@11)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_9523) (o@@6 T@Ref) (f_3@@1 T@Field_9596_9597) (v@@8 T@Ref) ) (! (succHeap Heap@@12 (PolymorphicMapType_9523 (|PolymorphicMapType_9523_5787_53#PolymorphicMapType_9523| Heap@@12) (store (|PolymorphicMapType_9523_5790_5791#PolymorphicMapType_9523| Heap@@12) o@@6 f_3@@1 v@@8) (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| Heap@@12) (|PolymorphicMapType_9523_9583_22886#PolymorphicMapType_9523| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9523 (|PolymorphicMapType_9523_5787_53#PolymorphicMapType_9523| Heap@@12) (store (|PolymorphicMapType_9523_5790_5791#PolymorphicMapType_9523| Heap@@12) o@@6 f_3@@1 v@@8) (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| Heap@@12) (|PolymorphicMapType_9523_9583_22886#PolymorphicMapType_9523| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_9523) (o@@7 T@Ref) (f_3@@2 T@Field_9583_53) (v@@9 Bool) ) (! (succHeap Heap@@13 (PolymorphicMapType_9523 (store (|PolymorphicMapType_9523_5787_53#PolymorphicMapType_9523| Heap@@13) o@@7 f_3@@2 v@@9) (|PolymorphicMapType_9523_5790_5791#PolymorphicMapType_9523| Heap@@13) (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| Heap@@13) (|PolymorphicMapType_9523_9583_22886#PolymorphicMapType_9523| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9523 (store (|PolymorphicMapType_9523_5787_53#PolymorphicMapType_9523| Heap@@13) o@@7 f_3@@2 v@@9) (|PolymorphicMapType_9523_5790_5791#PolymorphicMapType_9523| Heap@@13) (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| Heap@@13) (|PolymorphicMapType_9523_9583_22886#PolymorphicMapType_9523| Heap@@13)))
)))
(assert (forall ((r@@1 Int) ) (! (= (|MultiSet#Singleton_5518| r@@1) (|MultiSet#UnionOne_5518| |MultiSet#Empty_5518| r@@1))
 :qid |stdinbpl.670:18|
 :skolemid |99|
 :pattern ( (|MultiSet#Singleton_5518| r@@1))
)))
(assert (forall ((s@@40 T@Seq_19209) (t@@14 T@Seq_19209) (n@@29 Int) ) (!  (=> (and (< 0 n@@29) (<= n@@29 (|Seq#Length_19209| s@@40))) (= (|Seq#Drop_19209| (|Seq#Append_19209| s@@40 t@@14) n@@29) (|Seq#Append_19209| (|Seq#Drop_19209| s@@40 n@@29) t@@14)))
 :qid |stdinbpl.362:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_19209| (|Seq#Append_19209| s@@40 t@@14) n@@29))
)))
(assert (forall ((s@@41 T@Seq_19199) (t@@15 T@Seq_19199) (n@@30 Int) ) (!  (=> (and (< 0 n@@30) (<= n@@30 (|Seq#Length_19199| s@@41))) (= (|Seq#Drop_19199| (|Seq#Append_19199| s@@41 t@@15) n@@30) (|Seq#Append_19199| (|Seq#Drop_19199| s@@41 n@@30) t@@15)))
 :qid |stdinbpl.362:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_19199| (|Seq#Append_19199| s@@41 t@@15) n@@30))
)))
(assert (forall ((s@@42 T@Seq_2864) (t@@16 T@Seq_2864) (n@@31 Int) ) (!  (=> (and (< 0 n@@31) (<= n@@31 (|Seq#Length_2864| s@@42))) (= (|Seq#Drop_2864| (|Seq#Append_2864| s@@42 t@@16) n@@31) (|Seq#Append_2864| (|Seq#Drop_2864| s@@42 n@@31) t@@16)))
 :qid |stdinbpl.362:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_2864| (|Seq#Append_2864| s@@42 t@@16) n@@31))
)))
(assert (forall ((a@@15 Int) (b@@12 Int) ) (! (= (<= a@@15 b@@12) (= (|Math#min| a@@15 b@@12) a@@15))
 :qid |stdinbpl.635:15|
 :skolemid |87|
 :pattern ( (|Math#min| a@@15 b@@12))
)))
(assert (forall ((a@@16 Int) (b@@13 Int) ) (! (= (<= b@@13 a@@16) (= (|Math#min| a@@16 b@@13) b@@13))
 :qid |stdinbpl.636:15|
 :skolemid |88|
 :pattern ( (|Math#min| a@@16 b@@13))
)))
(assert (forall ((s@@43 T@Seq_19209) (n@@32 Int) (i@@10 Int) ) (!  (=> (and (and (< 0 n@@32) (<= n@@32 i@@10)) (< i@@10 (|Seq#Length_19209| s@@43))) (and (= (|Seq#Add| (|Seq#Sub| i@@10 n@@32) n@@32) i@@10) (= (|Seq#Index_19209| (|Seq#Drop_19209| s@@43 n@@32) (|Seq#Sub| i@@10 n@@32)) (|Seq#Index_19209| s@@43 i@@10))))
 :qid |stdinbpl.298:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_19209| s@@43 n@@32) (|Seq#Index_19209| s@@43 i@@10))
)))
(assert (forall ((s@@44 T@Seq_19199) (n@@33 Int) (i@@11 Int) ) (!  (=> (and (and (< 0 n@@33) (<= n@@33 i@@11)) (< i@@11 (|Seq#Length_19199| s@@44))) (and (= (|Seq#Add| (|Seq#Sub| i@@11 n@@33) n@@33) i@@11) (= (|Seq#Index_19199| (|Seq#Drop_19199| s@@44 n@@33) (|Seq#Sub| i@@11 n@@33)) (|Seq#Index_19199| s@@44 i@@11))))
 :qid |stdinbpl.298:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_19199| s@@44 n@@33) (|Seq#Index_19199| s@@44 i@@11))
)))
(assert (forall ((s@@45 T@Seq_2864) (n@@34 Int) (i@@12 Int) ) (!  (=> (and (and (< 0 n@@34) (<= n@@34 i@@12)) (< i@@12 (|Seq#Length_2864| s@@45))) (and (= (|Seq#Add| (|Seq#Sub| i@@12 n@@34) n@@34) i@@12) (= (|Seq#Index_2864| (|Seq#Drop_2864| s@@45 n@@34) (|Seq#Sub| i@@12 n@@34)) (|Seq#Index_2864| s@@45 i@@12))))
 :qid |stdinbpl.298:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_2864| s@@45 n@@34) (|Seq#Index_2864| s@@45 i@@12))
)))
(assert (forall ((s0@@11 T@Seq_19209) (s1@@11 T@Seq_19209) (n@@35 Int) ) (!  (=> (and (and (and (not (= s0@@11 |Seq#Empty_19209|)) (not (= s1@@11 |Seq#Empty_19209|))) (<= 0 n@@35)) (< n@@35 (|Seq#Length_19209| s0@@11))) (= (|Seq#Index_19209| (|Seq#Append_19209| s0@@11 s1@@11) n@@35) (|Seq#Index_19209| s0@@11 n@@35)))
 :qid |stdinbpl.238:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_19209| (|Seq#Append_19209| s0@@11 s1@@11) n@@35))
 :pattern ( (|Seq#Index_19209| s0@@11 n@@35) (|Seq#Append_19209| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_19199) (s1@@12 T@Seq_19199) (n@@36 Int) ) (!  (=> (and (and (and (not (= s0@@12 |Seq#Empty_19199|)) (not (= s1@@12 |Seq#Empty_19199|))) (<= 0 n@@36)) (< n@@36 (|Seq#Length_19199| s0@@12))) (= (|Seq#Index_19199| (|Seq#Append_19199| s0@@12 s1@@12) n@@36) (|Seq#Index_19199| s0@@12 n@@36)))
 :qid |stdinbpl.238:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_19199| (|Seq#Append_19199| s0@@12 s1@@12) n@@36))
 :pattern ( (|Seq#Index_19199| s0@@12 n@@36) (|Seq#Append_19199| s0@@12 s1@@12))
)))
(assert (forall ((s0@@13 T@Seq_2864) (s1@@13 T@Seq_2864) (n@@37 Int) ) (!  (=> (and (and (and (not (= s0@@13 |Seq#Empty_2864|)) (not (= s1@@13 |Seq#Empty_2864|))) (<= 0 n@@37)) (< n@@37 (|Seq#Length_2864| s0@@13))) (= (|Seq#Index_2864| (|Seq#Append_2864| s0@@13 s1@@13) n@@37) (|Seq#Index_2864| s0@@13 n@@37)))
 :qid |stdinbpl.238:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2864| (|Seq#Append_2864| s0@@13 s1@@13) n@@37))
 :pattern ( (|Seq#Index_2864| s0@@13 n@@37) (|Seq#Append_2864| s0@@13 s1@@13))
)))
(assert (forall ((s0@@14 T@Seq_19209) (s1@@14 T@Seq_19209) (m Int) ) (!  (=> (and (and (and (not (= s0@@14 |Seq#Empty_19209|)) (not (= s1@@14 |Seq#Empty_19209|))) (<= 0 m)) (< m (|Seq#Length_19209| s1@@14))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_19209| s0@@14)) (|Seq#Length_19209| s0@@14)) m) (= (|Seq#Index_19209| (|Seq#Append_19209| s0@@14 s1@@14) (|Seq#Add| m (|Seq#Length_19209| s0@@14))) (|Seq#Index_19209| s1@@14 m))))
 :qid |stdinbpl.243:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_19209| s1@@14 m) (|Seq#Append_19209| s0@@14 s1@@14))
)))
(assert (forall ((s0@@15 T@Seq_19199) (s1@@15 T@Seq_19199) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@15 |Seq#Empty_19199|)) (not (= s1@@15 |Seq#Empty_19199|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_19199| s1@@15))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_19199| s0@@15)) (|Seq#Length_19199| s0@@15)) m@@0) (= (|Seq#Index_19199| (|Seq#Append_19199| s0@@15 s1@@15) (|Seq#Add| m@@0 (|Seq#Length_19199| s0@@15))) (|Seq#Index_19199| s1@@15 m@@0))))
 :qid |stdinbpl.243:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_19199| s1@@15 m@@0) (|Seq#Append_19199| s0@@15 s1@@15))
)))
(assert (forall ((s0@@16 T@Seq_2864) (s1@@16 T@Seq_2864) (m@@1 Int) ) (!  (=> (and (and (and (not (= s0@@16 |Seq#Empty_2864|)) (not (= s1@@16 |Seq#Empty_2864|))) (<= 0 m@@1)) (< m@@1 (|Seq#Length_2864| s1@@16))) (and (= (|Seq#Sub| (|Seq#Add| m@@1 (|Seq#Length_2864| s0@@16)) (|Seq#Length_2864| s0@@16)) m@@1) (= (|Seq#Index_2864| (|Seq#Append_2864| s0@@16 s1@@16) (|Seq#Add| m@@1 (|Seq#Length_2864| s0@@16))) (|Seq#Index_2864| s1@@16 m@@1))))
 :qid |stdinbpl.243:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2864| s1@@16 m@@1) (|Seq#Append_2864| s0@@16 s1@@16))
)))
(assert (forall ((a@@17 T@MultiSet_5518) (b@@14 T@MultiSet_5518) (o@@8 Int) ) (! (= (|MultiSet#Select_5518| (|MultiSet#Difference_5518| a@@17 b@@14) o@@8) (|Math#clip| (- (|MultiSet#Select_5518| a@@17 o@@8) (|MultiSet#Select_5518| b@@14 o@@8))))
 :qid |stdinbpl.702:18|
 :skolemid |108|
 :pattern ( (|MultiSet#Select_5518| (|MultiSet#Difference_5518| a@@17 b@@14) o@@8))
)))
(assert (forall ((o@@9 T@Ref) (f T@Field_9596_9597) (Heap@@14 T@PolymorphicMapType_9523) ) (!  (=> (select (|PolymorphicMapType_9523_5787_53#PolymorphicMapType_9523| Heap@@14) o@@9 $allocated) (select (|PolymorphicMapType_9523_5787_53#PolymorphicMapType_9523| Heap@@14) (select (|PolymorphicMapType_9523_5790_5791#PolymorphicMapType_9523| Heap@@14) o@@9 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_9523_5790_5791#PolymorphicMapType_9523| Heap@@14) o@@9 f))
)))
(assert (forall ((s@@46 T@Seq_19209) (x@@9 T@Seq_19199) (i@@13 Int) ) (!  (=> (and (and (<= 0 i@@13) (< i@@13 (|Seq#Length_19209| s@@46))) (= (|Seq#Index_19209| s@@46 i@@13) x@@9)) (|Seq#Contains_19400| s@@46 x@@9))
 :qid |stdinbpl.395:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_19400| s@@46 x@@9) (|Seq#Index_19209| s@@46 i@@13))
)))
(assert (forall ((s@@47 T@Seq_19199) (x@@10 T@Seq_2864) (i@@14 Int) ) (!  (=> (and (and (<= 0 i@@14) (< i@@14 (|Seq#Length_19199| s@@47))) (= (|Seq#Index_19199| s@@47 i@@14) x@@10)) (|Seq#Contains_19366| s@@47 x@@10))
 :qid |stdinbpl.395:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_19366| s@@47 x@@10) (|Seq#Index_19199| s@@47 i@@14))
)))
(assert (forall ((s@@48 T@Seq_2864) (x@@11 Int) (i@@15 Int) ) (!  (=> (and (and (<= 0 i@@15) (< i@@15 (|Seq#Length_2864| s@@48))) (= (|Seq#Index_2864| s@@48 i@@15) x@@11)) (|Seq#Contains_2864| s@@48 x@@11))
 :qid |stdinbpl.395:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2864| s@@48 x@@11) (|Seq#Index_2864| s@@48 i@@15))
)))
(assert (forall ((s0@@17 T@Seq_19209) (s1@@17 T@Seq_19209) ) (!  (or (or (and (= s0@@17 s1@@17) (|Seq#Equal_19209| s0@@17 s1@@17)) (and (and (not (= s0@@17 s1@@17)) (not (|Seq#Equal_19209| s0@@17 s1@@17))) (not (= (|Seq#Length_19209| s0@@17) (|Seq#Length_19209| s1@@17))))) (and (and (and (and (and (and (not (= s0@@17 s1@@17)) (not (|Seq#Equal_19209| s0@@17 s1@@17))) (= (|Seq#Length_19209| s0@@17) (|Seq#Length_19209| s1@@17))) (= (|Seq#SkolemDiff_19209| s0@@17 s1@@17) (|Seq#SkolemDiff_19209| s1@@17 s0@@17))) (<= 0 (|Seq#SkolemDiff_19209| s0@@17 s1@@17))) (< (|Seq#SkolemDiff_19209| s0@@17 s1@@17) (|Seq#Length_19209| s0@@17))) (not (= (|Seq#Index_19209| s0@@17 (|Seq#SkolemDiff_19209| s0@@17 s1@@17)) (|Seq#Index_19209| s1@@17 (|Seq#SkolemDiff_19209| s0@@17 s1@@17))))))
 :qid |stdinbpl.499:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_19209| s0@@17 s1@@17))
)))
(assert (forall ((s0@@18 T@Seq_19199) (s1@@18 T@Seq_19199) ) (!  (or (or (and (= s0@@18 s1@@18) (|Seq#Equal_19199| s0@@18 s1@@18)) (and (and (not (= s0@@18 s1@@18)) (not (|Seq#Equal_19199| s0@@18 s1@@18))) (not (= (|Seq#Length_19199| s0@@18) (|Seq#Length_19199| s1@@18))))) (and (and (and (and (and (and (not (= s0@@18 s1@@18)) (not (|Seq#Equal_19199| s0@@18 s1@@18))) (= (|Seq#Length_19199| s0@@18) (|Seq#Length_19199| s1@@18))) (= (|Seq#SkolemDiff_19199| s0@@18 s1@@18) (|Seq#SkolemDiff_19199| s1@@18 s0@@18))) (<= 0 (|Seq#SkolemDiff_19199| s0@@18 s1@@18))) (< (|Seq#SkolemDiff_19199| s0@@18 s1@@18) (|Seq#Length_19199| s0@@18))) (not (= (|Seq#Index_19199| s0@@18 (|Seq#SkolemDiff_19199| s0@@18 s1@@18)) (|Seq#Index_19199| s1@@18 (|Seq#SkolemDiff_19199| s0@@18 s1@@18))))))
 :qid |stdinbpl.499:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_19199| s0@@18 s1@@18))
)))
(assert (forall ((s0@@19 T@Seq_2864) (s1@@19 T@Seq_2864) ) (!  (or (or (and (= s0@@19 s1@@19) (|Seq#Equal_2864| s0@@19 s1@@19)) (and (and (not (= s0@@19 s1@@19)) (not (|Seq#Equal_2864| s0@@19 s1@@19))) (not (= (|Seq#Length_2864| s0@@19) (|Seq#Length_2864| s1@@19))))) (and (and (and (and (and (and (not (= s0@@19 s1@@19)) (not (|Seq#Equal_2864| s0@@19 s1@@19))) (= (|Seq#Length_2864| s0@@19) (|Seq#Length_2864| s1@@19))) (= (|Seq#SkolemDiff_2864| s0@@19 s1@@19) (|Seq#SkolemDiff_2864| s1@@19 s0@@19))) (<= 0 (|Seq#SkolemDiff_2864| s0@@19 s1@@19))) (< (|Seq#SkolemDiff_2864| s0@@19 s1@@19) (|Seq#Length_2864| s0@@19))) (not (= (|Seq#Index_2864| s0@@19 (|Seq#SkolemDiff_2864| s0@@19 s1@@19)) (|Seq#Index_2864| s1@@19 (|Seq#SkolemDiff_2864| s0@@19 s1@@19))))))
 :qid |stdinbpl.499:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_2864| s0@@19 s1@@19))
)))
(assert (forall ((p@@1 T@Field_9583_22886) (v_1@@0 T@FrameType) (q T@Field_9583_22886) (w@@0 T@FrameType) (r@@2 T@Field_9583_22886) (u T@FrameType) ) (!  (=> (and (InsidePredicate_9583_9583 p@@1 v_1@@0 q w@@0) (InsidePredicate_9583_9583 q w@@0 r@@2 u)) (InsidePredicate_9583_9583 p@@1 v_1@@0 r@@2 u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9583_9583 p@@1 v_1@@0 q w@@0) (InsidePredicate_9583_9583 q w@@0 r@@2 u))
)))
(assert (forall ((a@@18 Int) ) (!  (=> (< a@@18 0) (= (|Math#clip| a@@18) 0))
 :qid |stdinbpl.641:15|
 :skolemid |91|
 :pattern ( (|Math#clip| a@@18))
)))
(assert (forall ((s@@49 T@Seq_19209) ) (!  (=> (= (|Seq#Length_19209| s@@49) 0) (= s@@49 |Seq#Empty_19209|))
 :qid |stdinbpl.202:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_19209| s@@49))
)))
(assert (forall ((s@@50 T@Seq_19199) ) (!  (=> (= (|Seq#Length_19199| s@@50) 0) (= s@@50 |Seq#Empty_19199|))
 :qid |stdinbpl.202:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_19199| s@@50))
)))
(assert (forall ((s@@51 T@Seq_2864) ) (!  (=> (= (|Seq#Length_2864| s@@51) 0) (= s@@51 |Seq#Empty_2864|))
 :qid |stdinbpl.202:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2864| s@@51))
)))
(assert (forall ((s@@52 T@Seq_19209) (n@@38 Int) ) (!  (=> (<= n@@38 0) (= (|Seq#Take_19209| s@@52 n@@38) |Seq#Empty_19209|))
 :qid |stdinbpl.378:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_19209| s@@52 n@@38))
)))
(assert (forall ((s@@53 T@Seq_19199) (n@@39 Int) ) (!  (=> (<= n@@39 0) (= (|Seq#Take_19199| s@@53 n@@39) |Seq#Empty_19199|))
 :qid |stdinbpl.378:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_19199| s@@53 n@@39))
)))
(assert (forall ((s@@54 T@Seq_2864) (n@@40 Int) ) (!  (=> (<= n@@40 0) (= (|Seq#Take_2864| s@@54 n@@40) |Seq#Empty_2864|))
 :qid |stdinbpl.378:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_2864| s@@54 n@@40))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@19 T@MultiSet_5518) (x@@12 Int) (o@@10 Int) ) (! (= (|MultiSet#Select_5518| (|MultiSet#UnionOne_5518| a@@19 x@@12) o@@10) (ite (= x@@12 o@@10) (+ (|MultiSet#Select_5518| a@@19 o@@10) 1) (|MultiSet#Select_5518| a@@19 o@@10)))
 :qid |stdinbpl.674:18|
 :skolemid |100|
 :pattern ( (|MultiSet#Select_5518| (|MultiSet#UnionOne_5518| a@@19 x@@12) o@@10))
 :pattern ( (|MultiSet#UnionOne_5518| a@@19 x@@12) (|MultiSet#Select_5518| a@@19 o@@10))
)))
(assert (forall ((a@@20 T@MultiSet_5518) (b@@15 T@MultiSet_5518) ) (! (= (|MultiSet#Equal_5518| a@@20 b@@15) (forall ((o@@11 Int) ) (! (= (|MultiSet#Select_5518| a@@20 o@@11) (|MultiSet#Select_5518| b@@15 o@@11))
 :qid |stdinbpl.720:36|
 :skolemid |113|
 :pattern ( (|MultiSet#Select_5518| a@@20 o@@11))
 :pattern ( (|MultiSet#Select_5518| b@@15 o@@11))
)))
 :qid |stdinbpl.719:17|
 :skolemid |114|
 :pattern ( (|MultiSet#Equal_5518| a@@20 b@@15))
)))
(assert (forall ((a@@21 T@MultiSet_5518) (b@@16 T@MultiSet_5518) ) (! (= (|MultiSet#Subset_5518| a@@21 b@@16) (forall ((o@@12 Int) ) (! (<= (|MultiSet#Select_5518| a@@21 o@@12) (|MultiSet#Select_5518| b@@16 o@@12))
 :qid |stdinbpl.716:37|
 :skolemid |111|
 :pattern ( (|MultiSet#Select_5518| a@@21 o@@12))
 :pattern ( (|MultiSet#Select_5518| b@@16 o@@12))
)))
 :qid |stdinbpl.715:17|
 :skolemid |112|
 :pattern ( (|MultiSet#Subset_5518| a@@21 b@@16))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@15 () T@PolymorphicMapType_9523)
(declare-fun i1 () Int)
(declare-fun i2_1 () Int)
(declare-fun i3_7 () Int)
(declare-fun i4_1 () Int)
(set-info :boogie-vc-id chainEq)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (state Heap@@15 ZeroMask) (=> (and (and AssumePermUpperBound (= (< i1 i2_1) (> i3_7 i4_1))) (and (state Heap@@15 ZeroMask) (= (ControlFlow 0 2) (- 0 1)))) (< i1 i2_1)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
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
(declare-sort T@Field_9583_53 0)
(declare-sort T@Field_9596_9597 0)
(declare-sort T@Field_9583_23019 0)
(declare-sort T@Field_9583_22886 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_9544 0)) (((PolymorphicMapType_9544 (|PolymorphicMapType_9544_9583_53#PolymorphicMapType_9544| (Array T@Ref T@Field_9583_53 Real)) (|PolymorphicMapType_9544_9583_9597#PolymorphicMapType_9544| (Array T@Ref T@Field_9596_9597 Real)) (|PolymorphicMapType_9544_9583_22886#PolymorphicMapType_9544| (Array T@Ref T@Field_9583_22886 Real)) (|PolymorphicMapType_9544_9583_26580#PolymorphicMapType_9544| (Array T@Ref T@Field_9583_23019 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10072 0)) (((PolymorphicMapType_10072 (|PolymorphicMapType_10072_9583_53#PolymorphicMapType_10072| (Array T@Ref T@Field_9583_53 Bool)) (|PolymorphicMapType_10072_9583_9597#PolymorphicMapType_10072| (Array T@Ref T@Field_9596_9597 Bool)) (|PolymorphicMapType_10072_9583_22886#PolymorphicMapType_10072| (Array T@Ref T@Field_9583_22886 Bool)) (|PolymorphicMapType_10072_9583_23999#PolymorphicMapType_10072| (Array T@Ref T@Field_9583_23019 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9523 0)) (((PolymorphicMapType_9523 (|PolymorphicMapType_9523_5787_53#PolymorphicMapType_9523| (Array T@Ref T@Field_9583_53 Bool)) (|PolymorphicMapType_9523_5790_5791#PolymorphicMapType_9523| (Array T@Ref T@Field_9596_9597 T@Ref)) (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| (Array T@Ref T@Field_9583_23019 T@PolymorphicMapType_10072)) (|PolymorphicMapType_9523_9583_22886#PolymorphicMapType_9523| (Array T@Ref T@Field_9583_22886 T@FrameType)) ) ) ))
(declare-sort T@Seq_19209 0)
(declare-fun |Seq#Length_19209| (T@Seq_19209) Int)
(declare-fun |Seq#Drop_19209| (T@Seq_19209 Int) T@Seq_19209)
(declare-sort T@Seq_19199 0)
(declare-fun |Seq#Length_19199| (T@Seq_19199) Int)
(declare-fun |Seq#Drop_19199| (T@Seq_19199 Int) T@Seq_19199)
(declare-sort T@Seq_2864 0)
(declare-fun |Seq#Length_2864| (T@Seq_2864) Int)
(declare-fun |Seq#Drop_2864| (T@Seq_2864 Int) T@Seq_2864)
(declare-fun succHeap (T@PolymorphicMapType_9523 T@PolymorphicMapType_9523) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_9523 T@PolymorphicMapType_9523) Bool)
(declare-sort T@MultiSet_5518 0)
(declare-fun |MultiSet#Card_5518| (T@MultiSet_5518) Int)
(declare-fun |MultiSet#Difference_5518| (T@MultiSet_5518 T@MultiSet_5518) T@MultiSet_5518)
(declare-fun |MultiSet#Intersection_5518| (T@MultiSet_5518 T@MultiSet_5518) T@MultiSet_5518)
(declare-fun |MultiSet#Union_5518| (T@MultiSet_5518 T@MultiSet_5518) T@MultiSet_5518)
(declare-fun state (T@PolymorphicMapType_9523 T@PolymorphicMapType_9544) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_9544) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_10072)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Seq#Index_19209| (T@Seq_19209 Int) T@Seq_19199)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_19199| (T@Seq_19199 Int) T@Seq_2864)
(declare-fun |Seq#Index_2864| (T@Seq_2864 Int) Int)
(declare-fun |Seq#Empty_19209| () T@Seq_19209)
(declare-fun |Seq#Empty_19199| () T@Seq_19199)
(declare-fun |Seq#Empty_2864| () T@Seq_2864)
(declare-fun |Seq#Update_19209| (T@Seq_19209 Int T@Seq_19199) T@Seq_19209)
(declare-fun |Seq#Update_19199| (T@Seq_19199 Int T@Seq_2864) T@Seq_19199)
(declare-fun |Seq#Update_2864| (T@Seq_2864 Int Int) T@Seq_2864)
(declare-fun |MultiSet#Select_5518| (T@MultiSet_5518 Int) Int)
(declare-fun |Seq#Take_19209| (T@Seq_19209 Int) T@Seq_19209)
(declare-fun |Seq#Take_19199| (T@Seq_19199 Int) T@Seq_19199)
(declare-fun |Seq#Take_2864| (T@Seq_2864 Int) T@Seq_2864)
(declare-fun |Seq#Contains_2864| (T@Seq_2864 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2864)
(declare-fun |Seq#Contains_19400| (T@Seq_19209 T@Seq_19199) Bool)
(declare-fun |Seq#Skolem_19400| (T@Seq_19209 T@Seq_19199) Int)
(declare-fun |Seq#Contains_19366| (T@Seq_19199 T@Seq_2864) Bool)
(declare-fun |Seq#Skolem_19366| (T@Seq_19199 T@Seq_2864) Int)
(declare-fun |Seq#Skolem_2864| (T@Seq_2864 Int) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_9523 T@PolymorphicMapType_9523 T@PolymorphicMapType_9544) Bool)
(declare-fun IsPredicateField_9583_22977 (T@Field_9583_22886) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_9583 (T@Field_9583_22886) T@Field_9583_23019)
(declare-fun HasDirectPerm_9583_22950 (T@PolymorphicMapType_9544 T@Ref T@Field_9583_22886) Bool)
(declare-fun IsWandField_9583_24526 (T@Field_9583_22886) Bool)
(declare-fun WandMaskField_9583 (T@Field_9583_22886) T@Field_9583_23019)
(declare-fun |Seq#Singleton_19209| (T@Seq_19199) T@Seq_19209)
(declare-fun |Seq#Singleton_19199| (T@Seq_2864) T@Seq_19199)
(declare-fun |Seq#Singleton_2864| (Int) T@Seq_2864)
(declare-fun |Seq#Append_19209| (T@Seq_19209 T@Seq_19209) T@Seq_19209)
(declare-fun |Seq#Append_19199| (T@Seq_19199 T@Seq_19199) T@Seq_19199)
(declare-fun |Seq#Append_2864| (T@Seq_2864 T@Seq_2864) T@Seq_2864)
(declare-fun dummyHeap () T@PolymorphicMapType_9523)
(declare-fun ZeroMask () T@PolymorphicMapType_9544)
(declare-fun |MultiSet#UnionOne_5518| (T@MultiSet_5518 Int) T@MultiSet_5518)
(declare-fun |MultiSet#Disjoint_5518| (T@MultiSet_5518 T@MultiSet_5518) Bool)
(declare-fun $allocated () T@Field_9583_53)
(declare-fun InsidePredicate_9583_9583 (T@Field_9583_22886 T@FrameType T@Field_9583_22886 T@FrameType) Bool)
(declare-fun |MultiSet#Singleton_5518| (Int) T@MultiSet_5518)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_9583_27489 (T@Field_9583_23019) Bool)
(declare-fun IsWandField_9583_27505 (T@Field_9583_23019) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_9583_9597 (T@Field_9596_9597) Bool)
(declare-fun IsWandField_9583_9597 (T@Field_9596_9597) Bool)
(declare-fun IsPredicateField_9583_53 (T@Field_9583_53) Bool)
(declare-fun IsWandField_9583_53 (T@Field_9583_53) Bool)
(declare-fun HasDirectPerm_9583_27860 (T@PolymorphicMapType_9544 T@Ref T@Field_9583_23019) Bool)
(declare-fun HasDirectPerm_9583_9597 (T@PolymorphicMapType_9544 T@Ref T@Field_9596_9597) Bool)
(declare-fun HasDirectPerm_9583_53 (T@PolymorphicMapType_9544 T@Ref T@Field_9583_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_9544 T@PolymorphicMapType_9544 T@PolymorphicMapType_9544) Bool)
(declare-fun |Seq#Equal_19209| (T@Seq_19209 T@Seq_19209) Bool)
(declare-fun |Seq#Equal_19199| (T@Seq_19199 T@Seq_19199) Bool)
(declare-fun |Seq#Equal_2864| (T@Seq_2864 T@Seq_2864) Bool)
(declare-fun |MultiSet#Equal_5518| (T@MultiSet_5518 T@MultiSet_5518) Bool)
(declare-fun |Seq#ContainsTrigger_19209| (T@Seq_19209 T@Seq_19199) Bool)
(declare-fun |Seq#ContainsTrigger_19199| (T@Seq_19199 T@Seq_2864) Bool)
(declare-fun |Seq#ContainsTrigger_2864| (T@Seq_2864 Int) Bool)
(declare-fun |MultiSet#Empty_5518| () T@MultiSet_5518)
(declare-fun |Seq#SkolemDiff_19209| (T@Seq_19209 T@Seq_19209) Int)
(declare-fun |Seq#SkolemDiff_19199| (T@Seq_19199 T@Seq_19199) Int)
(declare-fun |Seq#SkolemDiff_2864| (T@Seq_2864 T@Seq_2864) Int)
(declare-fun |MultiSet#Subset_5518| (T@MultiSet_5518 T@MultiSet_5518) Bool)
(assert (forall ((s T@Seq_19209) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_19209| s)) (= (|Seq#Length_19209| (|Seq#Drop_19209| s n)) (- (|Seq#Length_19209| s) n))) (=> (< (|Seq#Length_19209| s) n) (= (|Seq#Length_19209| (|Seq#Drop_19209| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_19209| (|Seq#Drop_19209| s n)) (|Seq#Length_19209| s))))
 :qid |stdinbpl.273:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_19209| (|Seq#Drop_19209| s n)))
 :pattern ( (|Seq#Length_19209| s) (|Seq#Drop_19209| s n))
)))
(assert (forall ((s@@0 T@Seq_19199) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_19199| s@@0)) (= (|Seq#Length_19199| (|Seq#Drop_19199| s@@0 n@@0)) (- (|Seq#Length_19199| s@@0) n@@0))) (=> (< (|Seq#Length_19199| s@@0) n@@0) (= (|Seq#Length_19199| (|Seq#Drop_19199| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_19199| (|Seq#Drop_19199| s@@0 n@@0)) (|Seq#Length_19199| s@@0))))
 :qid |stdinbpl.273:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_19199| (|Seq#Drop_19199| s@@0 n@@0)))
 :pattern ( (|Seq#Length_19199| s@@0) (|Seq#Drop_19199| s@@0 n@@0))
)))
(assert (forall ((s@@1 T@Seq_2864) (n@@1 Int) ) (!  (and (=> (<= 0 n@@1) (and (=> (<= n@@1 (|Seq#Length_2864| s@@1)) (= (|Seq#Length_2864| (|Seq#Drop_2864| s@@1 n@@1)) (- (|Seq#Length_2864| s@@1) n@@1))) (=> (< (|Seq#Length_2864| s@@1) n@@1) (= (|Seq#Length_2864| (|Seq#Drop_2864| s@@1 n@@1)) 0)))) (=> (< n@@1 0) (= (|Seq#Length_2864| (|Seq#Drop_2864| s@@1 n@@1)) (|Seq#Length_2864| s@@1))))
 :qid |stdinbpl.273:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2864| (|Seq#Drop_2864| s@@1 n@@1)))
 :pattern ( (|Seq#Length_2864| s@@1) (|Seq#Drop_2864| s@@1 n@@1))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_9523) (Heap1 T@PolymorphicMapType_9523) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((a T@MultiSet_5518) (b T@MultiSet_5518) ) (!  (and (= (+ (+ (|MultiSet#Card_5518| (|MultiSet#Difference_5518| a b)) (|MultiSet#Card_5518| (|MultiSet#Difference_5518| b a))) (* 2 (|MultiSet#Card_5518| (|MultiSet#Intersection_5518| a b)))) (|MultiSet#Card_5518| (|MultiSet#Union_5518| a b))) (= (|MultiSet#Card_5518| (|MultiSet#Difference_5518| a b)) (- (|MultiSet#Card_5518| a) (|MultiSet#Card_5518| (|MultiSet#Intersection_5518| a b)))))
 :qid |stdinbpl.706:18|
 :skolemid |110|
 :pattern ( (|MultiSet#Card_5518| (|MultiSet#Difference_5518| a b)))
)))
(assert (forall ((Heap T@PolymorphicMapType_9523) (Mask T@PolymorphicMapType_9544) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_9523) (Heap1@@0 T@PolymorphicMapType_9523) (Heap2 T@PolymorphicMapType_9523) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_9583_23019) ) (!  (not (select (|PolymorphicMapType_10072_9583_23999#PolymorphicMapType_10072| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10072_9583_23999#PolymorphicMapType_10072| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_9583_22886) ) (!  (not (select (|PolymorphicMapType_10072_9583_22886#PolymorphicMapType_10072| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10072_9583_22886#PolymorphicMapType_10072| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_9596_9597) ) (!  (not (select (|PolymorphicMapType_10072_9583_9597#PolymorphicMapType_10072| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10072_9583_9597#PolymorphicMapType_10072| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_9583_53) ) (!  (not (select (|PolymorphicMapType_10072_9583_53#PolymorphicMapType_10072| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10072_9583_53#PolymorphicMapType_10072| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((a@@0 Int) (b@@0 Int) ) (!  (or (= (|Math#min| a@@0 b@@0) a@@0) (= (|Math#min| a@@0 b@@0) b@@0))
 :qid |stdinbpl.637:15|
 :skolemid |89|
 :pattern ( (|Math#min| a@@0 b@@0))
)))
(assert (forall ((s@@2 T@Seq_19209) (n@@2 Int) (j Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j)) (< j (- (|Seq#Length_19209| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j n@@2) n@@2) j) (= (|Seq#Index_19209| (|Seq#Drop_19209| s@@2 n@@2) j) (|Seq#Index_19209| s@@2 (|Seq#Add| j n@@2)))))
 :qid |stdinbpl.294:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_19209| (|Seq#Drop_19209| s@@2 n@@2) j))
)))
(assert (forall ((s@@3 T@Seq_19199) (n@@3 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@3) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_19199| s@@3) n@@3))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@3) n@@3) j@@0) (= (|Seq#Index_19199| (|Seq#Drop_19199| s@@3 n@@3) j@@0) (|Seq#Index_19199| s@@3 (|Seq#Add| j@@0 n@@3)))))
 :qid |stdinbpl.294:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_19199| (|Seq#Drop_19199| s@@3 n@@3) j@@0))
)))
(assert (forall ((s@@4 T@Seq_2864) (n@@4 Int) (j@@1 Int) ) (!  (=> (and (and (< 0 n@@4) (<= 0 j@@1)) (< j@@1 (- (|Seq#Length_2864| s@@4) n@@4))) (and (= (|Seq#Sub| (|Seq#Add| j@@1 n@@4) n@@4) j@@1) (= (|Seq#Index_2864| (|Seq#Drop_2864| s@@4 n@@4) j@@1) (|Seq#Index_2864| s@@4 (|Seq#Add| j@@1 n@@4)))))
 :qid |stdinbpl.294:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2864| (|Seq#Drop_2864| s@@4 n@@4) j@@1))
)))
(assert (= (|Seq#Length_19209| |Seq#Empty_19209|) 0))
(assert (= (|Seq#Length_19199| |Seq#Empty_19199|) 0))
(assert (= (|Seq#Length_2864| |Seq#Empty_2864|) 0))
(assert (forall ((s@@5 T@Seq_19209) (i Int) (v T@Seq_19199) (n@@5 Int) ) (!  (=> (and (<= 0 n@@5) (< n@@5 (|Seq#Length_19209| s@@5))) (and (=> (= i n@@5) (= (|Seq#Index_19209| (|Seq#Update_19209| s@@5 i v) n@@5) v)) (=> (not (= i n@@5)) (= (|Seq#Index_19209| (|Seq#Update_19209| s@@5 i v) n@@5) (|Seq#Index_19209| s@@5 n@@5)))))
 :qid |stdinbpl.249:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_19209| (|Seq#Update_19209| s@@5 i v) n@@5))
 :pattern ( (|Seq#Index_19209| s@@5 n@@5) (|Seq#Update_19209| s@@5 i v))
)))
(assert (forall ((s@@6 T@Seq_19199) (i@@0 Int) (v@@0 T@Seq_2864) (n@@6 Int) ) (!  (=> (and (<= 0 n@@6) (< n@@6 (|Seq#Length_19199| s@@6))) (and (=> (= i@@0 n@@6) (= (|Seq#Index_19199| (|Seq#Update_19199| s@@6 i@@0 v@@0) n@@6) v@@0)) (=> (not (= i@@0 n@@6)) (= (|Seq#Index_19199| (|Seq#Update_19199| s@@6 i@@0 v@@0) n@@6) (|Seq#Index_19199| s@@6 n@@6)))))
 :qid |stdinbpl.249:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_19199| (|Seq#Update_19199| s@@6 i@@0 v@@0) n@@6))
 :pattern ( (|Seq#Index_19199| s@@6 n@@6) (|Seq#Update_19199| s@@6 i@@0 v@@0))
)))
(assert (forall ((s@@7 T@Seq_2864) (i@@1 Int) (v@@1 Int) (n@@7 Int) ) (!  (=> (and (<= 0 n@@7) (< n@@7 (|Seq#Length_2864| s@@7))) (and (=> (= i@@1 n@@7) (= (|Seq#Index_2864| (|Seq#Update_2864| s@@7 i@@1 v@@1) n@@7) v@@1)) (=> (not (= i@@1 n@@7)) (= (|Seq#Index_2864| (|Seq#Update_2864| s@@7 i@@1 v@@1) n@@7) (|Seq#Index_2864| s@@7 n@@7)))))
 :qid |stdinbpl.249:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2864| (|Seq#Update_2864| s@@7 i@@1 v@@1) n@@7))
 :pattern ( (|Seq#Index_2864| s@@7 n@@7) (|Seq#Update_2864| s@@7 i@@1 v@@1))
)))
(assert (forall ((a@@1 T@MultiSet_5518) (b@@1 T@MultiSet_5518) (y Int) ) (!  (=> (<= (|MultiSet#Select_5518| a@@1 y) (|MultiSet#Select_5518| b@@1 y)) (= (|MultiSet#Select_5518| (|MultiSet#Difference_5518| a@@1 b@@1) y) 0))
 :qid |stdinbpl.704:18|
 :skolemid |109|
 :pattern ( (|MultiSet#Difference_5518| a@@1 b@@1) (|MultiSet#Select_5518| b@@1 y) (|MultiSet#Select_5518| a@@1 y))
)))
(assert (forall ((a@@2 T@MultiSet_5518) (b@@2 T@MultiSet_5518) ) (! (= (|MultiSet#Intersection_5518| (|MultiSet#Intersection_5518| a@@2 b@@2) b@@2) (|MultiSet#Intersection_5518| a@@2 b@@2))
 :qid |stdinbpl.695:18|
 :skolemid |106|
 :pattern ( (|MultiSet#Intersection_5518| (|MultiSet#Intersection_5518| a@@2 b@@2) b@@2))
)))
(assert (forall ((s@@8 T@Seq_19209) (n@@8 Int) ) (!  (and (=> (<= 0 n@@8) (and (=> (<= n@@8 (|Seq#Length_19209| s@@8)) (= (|Seq#Length_19209| (|Seq#Take_19209| s@@8 n@@8)) n@@8)) (=> (< (|Seq#Length_19209| s@@8) n@@8) (= (|Seq#Length_19209| (|Seq#Take_19209| s@@8 n@@8)) (|Seq#Length_19209| s@@8))))) (=> (< n@@8 0) (= (|Seq#Length_19209| (|Seq#Take_19209| s@@8 n@@8)) 0)))
 :qid |stdinbpl.260:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_19209| (|Seq#Take_19209| s@@8 n@@8)))
 :pattern ( (|Seq#Take_19209| s@@8 n@@8) (|Seq#Length_19209| s@@8))
)))
(assert (forall ((s@@9 T@Seq_19199) (n@@9 Int) ) (!  (and (=> (<= 0 n@@9) (and (=> (<= n@@9 (|Seq#Length_19199| s@@9)) (= (|Seq#Length_19199| (|Seq#Take_19199| s@@9 n@@9)) n@@9)) (=> (< (|Seq#Length_19199| s@@9) n@@9) (= (|Seq#Length_19199| (|Seq#Take_19199| s@@9 n@@9)) (|Seq#Length_19199| s@@9))))) (=> (< n@@9 0) (= (|Seq#Length_19199| (|Seq#Take_19199| s@@9 n@@9)) 0)))
 :qid |stdinbpl.260:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_19199| (|Seq#Take_19199| s@@9 n@@9)))
 :pattern ( (|Seq#Take_19199| s@@9 n@@9) (|Seq#Length_19199| s@@9))
)))
(assert (forall ((s@@10 T@Seq_2864) (n@@10 Int) ) (!  (and (=> (<= 0 n@@10) (and (=> (<= n@@10 (|Seq#Length_2864| s@@10)) (= (|Seq#Length_2864| (|Seq#Take_2864| s@@10 n@@10)) n@@10)) (=> (< (|Seq#Length_2864| s@@10) n@@10) (= (|Seq#Length_2864| (|Seq#Take_2864| s@@10 n@@10)) (|Seq#Length_2864| s@@10))))) (=> (< n@@10 0) (= (|Seq#Length_2864| (|Seq#Take_2864| s@@10 n@@10)) 0)))
 :qid |stdinbpl.260:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2864| (|Seq#Take_2864| s@@10 n@@10)))
 :pattern ( (|Seq#Take_2864| s@@10 n@@10) (|Seq#Length_2864| s@@10))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@2 Int) ) (! (= (|Seq#Contains_2864| (|Seq#Range| q@min q@max) v@@2)  (and (<= q@min v@@2) (< v@@2 q@max)))
 :qid |stdinbpl.534:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2864| (|Seq#Range| q@min q@max) v@@2))
)))
(assert (forall ((s@@11 T@Seq_19209) (x T@Seq_19199) ) (!  (=> (|Seq#Contains_19400| s@@11 x) (and (and (<= 0 (|Seq#Skolem_19400| s@@11 x)) (< (|Seq#Skolem_19400| s@@11 x) (|Seq#Length_19209| s@@11))) (= (|Seq#Index_19209| s@@11 (|Seq#Skolem_19400| s@@11 x)) x)))
 :qid |stdinbpl.392:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_19400| s@@11 x))
)))
(assert (forall ((s@@12 T@Seq_19199) (x@@0 T@Seq_2864) ) (!  (=> (|Seq#Contains_19366| s@@12 x@@0) (and (and (<= 0 (|Seq#Skolem_19366| s@@12 x@@0)) (< (|Seq#Skolem_19366| s@@12 x@@0) (|Seq#Length_19199| s@@12))) (= (|Seq#Index_19199| s@@12 (|Seq#Skolem_19366| s@@12 x@@0)) x@@0)))
 :qid |stdinbpl.392:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_19366| s@@12 x@@0))
)))
(assert (forall ((s@@13 T@Seq_2864) (x@@1 Int) ) (!  (=> (|Seq#Contains_2864| s@@13 x@@1) (and (and (<= 0 (|Seq#Skolem_2864| s@@13 x@@1)) (< (|Seq#Skolem_2864| s@@13 x@@1) (|Seq#Length_2864| s@@13))) (= (|Seq#Index_2864| s@@13 (|Seq#Skolem_2864| s@@13 x@@1)) x@@1)))
 :qid |stdinbpl.392:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2864| s@@13 x@@1))
)))
(assert (forall ((s@@14 T@Seq_19209) (n@@11 Int) ) (!  (=> (<= n@@11 0) (= (|Seq#Drop_19209| s@@14 n@@11) s@@14))
 :qid |stdinbpl.376:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_19209| s@@14 n@@11))
)))
(assert (forall ((s@@15 T@Seq_19199) (n@@12 Int) ) (!  (=> (<= n@@12 0) (= (|Seq#Drop_19199| s@@15 n@@12) s@@15))
 :qid |stdinbpl.376:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_19199| s@@15 n@@12))
)))
(assert (forall ((s@@16 T@Seq_2864) (n@@13 Int) ) (!  (=> (<= n@@13 0) (= (|Seq#Drop_2864| s@@16 n@@13) s@@16))
 :qid |stdinbpl.376:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_2864| s@@16 n@@13))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Sub| i@@2 j@@2) (- i@@2 j@@2))
 :qid |stdinbpl.229:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@2 j@@2))
)))
(assert (forall ((i@@3 Int) (j@@3 Int) ) (! (= (|Seq#Add| i@@3 j@@3) (+ i@@3 j@@3))
 :qid |stdinbpl.227:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@3 j@@3))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.640:15|
 :skolemid |90|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((a@@4 T@MultiSet_5518) (b@@3 T@MultiSet_5518) (o Int) ) (! (= (|MultiSet#Select_5518| (|MultiSet#Intersection_5518| a@@4 b@@3) o) (|Math#min| (|MultiSet#Select_5518| a@@4 o) (|MultiSet#Select_5518| b@@3 o)))
 :qid |stdinbpl.691:18|
 :skolemid |105|
 :pattern ( (|MultiSet#Select_5518| (|MultiSet#Intersection_5518| a@@4 b@@3) o))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_9523) (ExhaleHeap T@PolymorphicMapType_9523) (Mask@@0 T@PolymorphicMapType_9544) (pm_f T@Field_9583_22886) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_9583_22950 Mask@@0 null pm_f) (IsPredicateField_9583_22977 pm_f)) (= (select (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| Heap@@0) null (PredicateMaskField_9583 pm_f)) (select (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| ExhaleHeap) null (PredicateMaskField_9583 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_9583_22977 pm_f) (select (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| ExhaleHeap) null (PredicateMaskField_9583 pm_f)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_9523) (ExhaleHeap@@0 T@PolymorphicMapType_9523) (Mask@@1 T@PolymorphicMapType_9544) (pm_f@@0 T@Field_9583_22886) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_9583_22950 Mask@@1 null pm_f@@0) (IsWandField_9583_24526 pm_f@@0)) (= (select (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| Heap@@1) null (WandMaskField_9583 pm_f@@0)) (select (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| ExhaleHeap@@0) null (WandMaskField_9583 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_9583_24526 pm_f@@0) (select (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| ExhaleHeap@@0) null (WandMaskField_9583 pm_f@@0)))
)))
(assert (forall ((x@@2 T@Seq_19199) (y@@0 T@Seq_19199) ) (! (= (|Seq#Contains_19400| (|Seq#Singleton_19209| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.517:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_19400| (|Seq#Singleton_19209| x@@2) y@@0))
)))
(assert (forall ((x@@3 T@Seq_2864) (y@@1 T@Seq_2864) ) (! (= (|Seq#Contains_19366| (|Seq#Singleton_19199| x@@3) y@@1) (= x@@3 y@@1))
 :qid |stdinbpl.517:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_19366| (|Seq#Singleton_19199| x@@3) y@@1))
)))
(assert (forall ((x@@4 Int) (y@@2 Int) ) (! (= (|Seq#Contains_2864| (|Seq#Singleton_2864| x@@4) y@@2) (= x@@4 y@@2))
 :qid |stdinbpl.517:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2864| (|Seq#Singleton_2864| x@@4) y@@2))
)))
(assert (forall ((s@@17 T@Seq_19209) (n@@14 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@14)) (< j@@4 (|Seq#Length_19209| s@@17))) (= (|Seq#Index_19209| (|Seq#Take_19209| s@@17 n@@14) j@@4) (|Seq#Index_19209| s@@17 j@@4)))
 :qid |stdinbpl.268:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_19209| (|Seq#Take_19209| s@@17 n@@14) j@@4))
 :pattern ( (|Seq#Index_19209| s@@17 j@@4) (|Seq#Take_19209| s@@17 n@@14))
)))
(assert (forall ((s@@18 T@Seq_19199) (n@@15 Int) (j@@5 Int) ) (!  (=> (and (and (<= 0 j@@5) (< j@@5 n@@15)) (< j@@5 (|Seq#Length_19199| s@@18))) (= (|Seq#Index_19199| (|Seq#Take_19199| s@@18 n@@15) j@@5) (|Seq#Index_19199| s@@18 j@@5)))
 :qid |stdinbpl.268:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_19199| (|Seq#Take_19199| s@@18 n@@15) j@@5))
 :pattern ( (|Seq#Index_19199| s@@18 j@@5) (|Seq#Take_19199| s@@18 n@@15))
)))
(assert (forall ((s@@19 T@Seq_2864) (n@@16 Int) (j@@6 Int) ) (!  (=> (and (and (<= 0 j@@6) (< j@@6 n@@16)) (< j@@6 (|Seq#Length_2864| s@@19))) (= (|Seq#Index_2864| (|Seq#Take_2864| s@@19 n@@16) j@@6) (|Seq#Index_2864| s@@19 j@@6)))
 :qid |stdinbpl.268:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2864| (|Seq#Take_2864| s@@19 n@@16) j@@6))
 :pattern ( (|Seq#Index_2864| s@@19 j@@6) (|Seq#Take_2864| s@@19 n@@16))
)))
(assert (forall ((s@@20 T@Seq_19209) (t T@Seq_19209) (n@@17 Int) ) (!  (=> (and (and (> n@@17 0) (> n@@17 (|Seq#Length_19209| s@@20))) (< n@@17 (|Seq#Length_19209| (|Seq#Append_19209| s@@20 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@17 (|Seq#Length_19209| s@@20)) (|Seq#Length_19209| s@@20)) n@@17) (= (|Seq#Take_19209| (|Seq#Append_19209| s@@20 t) n@@17) (|Seq#Append_19209| s@@20 (|Seq#Take_19209| t (|Seq#Sub| n@@17 (|Seq#Length_19209| s@@20)))))))
 :qid |stdinbpl.353:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_19209| (|Seq#Append_19209| s@@20 t) n@@17))
)))
(assert (forall ((s@@21 T@Seq_19199) (t@@0 T@Seq_19199) (n@@18 Int) ) (!  (=> (and (and (> n@@18 0) (> n@@18 (|Seq#Length_19199| s@@21))) (< n@@18 (|Seq#Length_19199| (|Seq#Append_19199| s@@21 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@18 (|Seq#Length_19199| s@@21)) (|Seq#Length_19199| s@@21)) n@@18) (= (|Seq#Take_19199| (|Seq#Append_19199| s@@21 t@@0) n@@18) (|Seq#Append_19199| s@@21 (|Seq#Take_19199| t@@0 (|Seq#Sub| n@@18 (|Seq#Length_19199| s@@21)))))))
 :qid |stdinbpl.353:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_19199| (|Seq#Append_19199| s@@21 t@@0) n@@18))
)))
(assert (forall ((s@@22 T@Seq_2864) (t@@1 T@Seq_2864) (n@@19 Int) ) (!  (=> (and (and (> n@@19 0) (> n@@19 (|Seq#Length_2864| s@@22))) (< n@@19 (|Seq#Length_2864| (|Seq#Append_2864| s@@22 t@@1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@19 (|Seq#Length_2864| s@@22)) (|Seq#Length_2864| s@@22)) n@@19) (= (|Seq#Take_2864| (|Seq#Append_2864| s@@22 t@@1) n@@19) (|Seq#Append_2864| s@@22 (|Seq#Take_2864| t@@1 (|Seq#Sub| n@@19 (|Seq#Length_2864| s@@22)))))))
 :qid |stdinbpl.353:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2864| (|Seq#Append_2864| s@@22 t@@1) n@@19))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_9523) (ExhaleHeap@@1 T@PolymorphicMapType_9523) (Mask@@2 T@PolymorphicMapType_9544) (pm_f@@1 T@Field_9583_22886) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_9583_22950 Mask@@2 null pm_f@@1) (IsPredicateField_9583_22977 pm_f@@1)) (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_9583_53) ) (!  (=> (select (|PolymorphicMapType_10072_9583_53#PolymorphicMapType_10072| (select (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| Heap@@2) null (PredicateMaskField_9583 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_9523_5787_53#PolymorphicMapType_9523| Heap@@2) o2 f_2) (select (|PolymorphicMapType_9523_5787_53#PolymorphicMapType_9523| ExhaleHeap@@1) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9523_5787_53#PolymorphicMapType_9523| ExhaleHeap@@1) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_9596_9597) ) (!  (=> (select (|PolymorphicMapType_10072_9583_9597#PolymorphicMapType_10072| (select (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| Heap@@2) null (PredicateMaskField_9583 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_9523_5790_5791#PolymorphicMapType_9523| Heap@@2) o2@@0 f_2@@0) (select (|PolymorphicMapType_9523_5790_5791#PolymorphicMapType_9523| ExhaleHeap@@1) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9523_5790_5791#PolymorphicMapType_9523| ExhaleHeap@@1) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_9583_22886) ) (!  (=> (select (|PolymorphicMapType_10072_9583_22886#PolymorphicMapType_10072| (select (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| Heap@@2) null (PredicateMaskField_9583 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_9523_9583_22886#PolymorphicMapType_9523| Heap@@2) o2@@1 f_2@@1) (select (|PolymorphicMapType_9523_9583_22886#PolymorphicMapType_9523| ExhaleHeap@@1) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9523_9583_22886#PolymorphicMapType_9523| ExhaleHeap@@1) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_9583_23019) ) (!  (=> (select (|PolymorphicMapType_10072_9583_23999#PolymorphicMapType_10072| (select (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| Heap@@2) null (PredicateMaskField_9583 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| Heap@@2) o2@@2 f_2@@2) (select (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| ExhaleHeap@@1) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| ExhaleHeap@@1) o2@@2 f_2@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsPredicateField_9583_22977 pm_f@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_9523) (ExhaleHeap@@2 T@PolymorphicMapType_9523) (Mask@@3 T@PolymorphicMapType_9544) (pm_f@@2 T@Field_9583_22886) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_9583_22950 Mask@@3 null pm_f@@2) (IsWandField_9583_24526 pm_f@@2)) (and (and (and (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_9583_53) ) (!  (=> (select (|PolymorphicMapType_10072_9583_53#PolymorphicMapType_10072| (select (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| Heap@@3) null (WandMaskField_9583 pm_f@@2))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_9523_5787_53#PolymorphicMapType_9523| Heap@@3) o2@@3 f_2@@3) (select (|PolymorphicMapType_9523_5787_53#PolymorphicMapType_9523| ExhaleHeap@@2) o2@@3 f_2@@3)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9523_5787_53#PolymorphicMapType_9523| ExhaleHeap@@2) o2@@3 f_2@@3))
)) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_9596_9597) ) (!  (=> (select (|PolymorphicMapType_10072_9583_9597#PolymorphicMapType_10072| (select (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| Heap@@3) null (WandMaskField_9583 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_9523_5790_5791#PolymorphicMapType_9523| Heap@@3) o2@@4 f_2@@4) (select (|PolymorphicMapType_9523_5790_5791#PolymorphicMapType_9523| ExhaleHeap@@2) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9523_5790_5791#PolymorphicMapType_9523| ExhaleHeap@@2) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_9583_22886) ) (!  (=> (select (|PolymorphicMapType_10072_9583_22886#PolymorphicMapType_10072| (select (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| Heap@@3) null (WandMaskField_9583 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_9523_9583_22886#PolymorphicMapType_9523| Heap@@3) o2@@5 f_2@@5) (select (|PolymorphicMapType_9523_9583_22886#PolymorphicMapType_9523| ExhaleHeap@@2) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9523_9583_22886#PolymorphicMapType_9523| ExhaleHeap@@2) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_9583_23019) ) (!  (=> (select (|PolymorphicMapType_10072_9583_23999#PolymorphicMapType_10072| (select (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| Heap@@3) null (WandMaskField_9583 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| Heap@@3) o2@@6 f_2@@6) (select (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| ExhaleHeap@@2) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| ExhaleHeap@@2) o2@@6 f_2@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_9583_24526 pm_f@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((a@@5 T@MultiSet_5518) (x@@5 Int) ) (! (= (|MultiSet#Card_5518| (|MultiSet#UnionOne_5518| a@@5 x@@5)) (+ (|MultiSet#Card_5518| a@@5) 1))
 :qid |stdinbpl.677:18|
 :skolemid |101|
 :pattern ( (|MultiSet#Card_5518| (|MultiSet#UnionOne_5518| a@@5 x@@5)))
 :pattern ( (|MultiSet#UnionOne_5518| a@@5 x@@5) (|MultiSet#Card_5518| a@@5))
)))
(assert (forall ((a@@6 T@MultiSet_5518) (b@@4 T@MultiSet_5518) ) (! (= (|MultiSet#Disjoint_5518| a@@6 b@@4) (forall ((o@@0 Int) ) (!  (or (= (|MultiSet#Select_5518| a@@6 o@@0) 0) (= (|MultiSet#Select_5518| b@@4 o@@0) 0))
 :qid |stdinbpl.727:39|
 :skolemid |116|
 :pattern ( (|MultiSet#Select_5518| a@@6 o@@0))
 :pattern ( (|MultiSet#Select_5518| b@@4 o@@0))
)))
 :qid |stdinbpl.726:18|
 :skolemid |117|
 :pattern ( (|MultiSet#Disjoint_5518| a@@6 b@@4))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_9523) (ExhaleHeap@@3 T@PolymorphicMapType_9523) (Mask@@4 T@PolymorphicMapType_9544) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_9523_5787_53#PolymorphicMapType_9523| Heap@@4) o_1 $allocated) (select (|PolymorphicMapType_9523_5787_53#PolymorphicMapType_9523| ExhaleHeap@@3) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_9523_5787_53#PolymorphicMapType_9523| ExhaleHeap@@3) o_1 $allocated))
)))
(assert (forall ((p T@Field_9583_22886) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_9583_9583 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_9583_9583 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_19209) (s1 T@Seq_19209) (n@@20 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_19209|)) (not (= s1 |Seq#Empty_19209|))) (<= (|Seq#Length_19209| s0) n@@20)) (< n@@20 (|Seq#Length_19209| (|Seq#Append_19209| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@20 (|Seq#Length_19209| s0)) (|Seq#Length_19209| s0)) n@@20) (= (|Seq#Index_19209| (|Seq#Append_19209| s0 s1) n@@20) (|Seq#Index_19209| s1 (|Seq#Sub| n@@20 (|Seq#Length_19209| s0))))))
 :qid |stdinbpl.240:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_19209| (|Seq#Append_19209| s0 s1) n@@20))
)))
(assert (forall ((s0@@0 T@Seq_19199) (s1@@0 T@Seq_19199) (n@@21 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_19199|)) (not (= s1@@0 |Seq#Empty_19199|))) (<= (|Seq#Length_19199| s0@@0) n@@21)) (< n@@21 (|Seq#Length_19199| (|Seq#Append_19199| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@21 (|Seq#Length_19199| s0@@0)) (|Seq#Length_19199| s0@@0)) n@@21) (= (|Seq#Index_19199| (|Seq#Append_19199| s0@@0 s1@@0) n@@21) (|Seq#Index_19199| s1@@0 (|Seq#Sub| n@@21 (|Seq#Length_19199| s0@@0))))))
 :qid |stdinbpl.240:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_19199| (|Seq#Append_19199| s0@@0 s1@@0) n@@21))
)))
(assert (forall ((s0@@1 T@Seq_2864) (s1@@1 T@Seq_2864) (n@@22 Int) ) (!  (=> (and (and (and (not (= s0@@1 |Seq#Empty_2864|)) (not (= s1@@1 |Seq#Empty_2864|))) (<= (|Seq#Length_2864| s0@@1) n@@22)) (< n@@22 (|Seq#Length_2864| (|Seq#Append_2864| s0@@1 s1@@1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@22 (|Seq#Length_2864| s0@@1)) (|Seq#Length_2864| s0@@1)) n@@22) (= (|Seq#Index_2864| (|Seq#Append_2864| s0@@1 s1@@1) n@@22) (|Seq#Index_2864| s1@@1 (|Seq#Sub| n@@22 (|Seq#Length_2864| s0@@1))))))
 :qid |stdinbpl.240:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2864| (|Seq#Append_2864| s0@@1 s1@@1) n@@22))
)))
(assert (forall ((r Int) ) (!  (and (= (|MultiSet#Card_5518| (|MultiSet#Singleton_5518| r)) 1) (= (|MultiSet#Select_5518| (|MultiSet#Singleton_5518| r) r) 1))
 :qid |stdinbpl.669:18|
 :skolemid |98|
 :pattern ( (|MultiSet#Singleton_5518| r))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_9523) (ExhaleHeap@@4 T@PolymorphicMapType_9523) (Mask@@5 T@PolymorphicMapType_9544) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (succHeap Heap@@5 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_9544) (o_2@@3 T@Ref) (f_4@@3 T@Field_9583_23019) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_9544_9583_26580#PolymorphicMapType_9544| Mask@@6) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_9583_27489 f_4@@3))) (not (IsWandField_9583_27505 f_4@@3))) (<= (select (|PolymorphicMapType_9544_9583_26580#PolymorphicMapType_9544| Mask@@6) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_9544_9583_26580#PolymorphicMapType_9544| Mask@@6) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_9544) (o_2@@4 T@Ref) (f_4@@4 T@Field_9583_22886) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_9544_9583_22886#PolymorphicMapType_9544| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_9583_22977 f_4@@4))) (not (IsWandField_9583_24526 f_4@@4))) (<= (select (|PolymorphicMapType_9544_9583_22886#PolymorphicMapType_9544| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_9544_9583_22886#PolymorphicMapType_9544| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_9544) (o_2@@5 T@Ref) (f_4@@5 T@Field_9596_9597) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_9544_9583_9597#PolymorphicMapType_9544| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_9583_9597 f_4@@5))) (not (IsWandField_9583_9597 f_4@@5))) (<= (select (|PolymorphicMapType_9544_9583_9597#PolymorphicMapType_9544| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_9544_9583_9597#PolymorphicMapType_9544| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_9544) (o_2@@6 T@Ref) (f_4@@6 T@Field_9583_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_9544_9583_53#PolymorphicMapType_9544| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_9583_53 f_4@@6))) (not (IsWandField_9583_53 f_4@@6))) (<= (select (|PolymorphicMapType_9544_9583_53#PolymorphicMapType_9544| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_9544_9583_53#PolymorphicMapType_9544| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_9544) (o_2@@7 T@Ref) (f_4@@7 T@Field_9583_23019) ) (! (= (HasDirectPerm_9583_27860 Mask@@10 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_9544_9583_26580#PolymorphicMapType_9544| Mask@@10) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9583_27860 Mask@@10 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_9544) (o_2@@8 T@Ref) (f_4@@8 T@Field_9583_22886) ) (! (= (HasDirectPerm_9583_22950 Mask@@11 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_9544_9583_22886#PolymorphicMapType_9544| Mask@@11) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9583_22950 Mask@@11 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_9544) (o_2@@9 T@Ref) (f_4@@9 T@Field_9596_9597) ) (! (= (HasDirectPerm_9583_9597 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_9544_9583_9597#PolymorphicMapType_9544| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9583_9597 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_9544) (o_2@@10 T@Ref) (f_4@@10 T@Field_9583_53) ) (! (= (HasDirectPerm_9583_53 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_9544_9583_53#PolymorphicMapType_9544| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9583_53 Mask@@13 o_2@@10 f_4@@10))
)))
(assert (forall ((a@@7 T@MultiSet_5518) (b@@5 T@MultiSet_5518) ) (! (= (|MultiSet#Card_5518| (|MultiSet#Union_5518| a@@7 b@@5)) (+ (|MultiSet#Card_5518| a@@7) (|MultiSet#Card_5518| b@@5)))
 :qid |stdinbpl.687:18|
 :skolemid |104|
 :pattern ( (|MultiSet#Card_5518| (|MultiSet#Union_5518| a@@7 b@@5)))
 :pattern ( (|MultiSet#Card_5518| a@@7) (|MultiSet#Union_5518| a@@7 b@@5))
 :pattern ( (|MultiSet#Card_5518| b@@5) (|MultiSet#Union_5518| a@@7 b@@5))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2864| (|Seq#Range| q@min@@0 q@max@@0) j@@7) (+ q@min@@0 j@@7)))
 :qid |stdinbpl.532:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2864| (|Seq#Range| q@min@@0 q@max@@0) j@@7))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_9523) (ExhaleHeap@@5 T@PolymorphicMapType_9523) (Mask@@14 T@PolymorphicMapType_9544) (o_1@@0 T@Ref) (f_2@@7 T@Field_9583_23019) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (=> (HasDirectPerm_9583_27860 Mask@@14 o_1@@0 f_2@@7) (= (select (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| Heap@@6) o_1@@0 f_2@@7) (select (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| ExhaleHeap@@5) o_1@@0 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (select (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| ExhaleHeap@@5) o_1@@0 f_2@@7))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_9523) (ExhaleHeap@@6 T@PolymorphicMapType_9523) (Mask@@15 T@PolymorphicMapType_9544) (o_1@@1 T@Ref) (f_2@@8 T@Field_9583_22886) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (=> (HasDirectPerm_9583_22950 Mask@@15 o_1@@1 f_2@@8) (= (select (|PolymorphicMapType_9523_9583_22886#PolymorphicMapType_9523| Heap@@7) o_1@@1 f_2@@8) (select (|PolymorphicMapType_9523_9583_22886#PolymorphicMapType_9523| ExhaleHeap@@6) o_1@@1 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (select (|PolymorphicMapType_9523_9583_22886#PolymorphicMapType_9523| ExhaleHeap@@6) o_1@@1 f_2@@8))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_9523) (ExhaleHeap@@7 T@PolymorphicMapType_9523) (Mask@@16 T@PolymorphicMapType_9544) (o_1@@2 T@Ref) (f_2@@9 T@Field_9596_9597) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (=> (HasDirectPerm_9583_9597 Mask@@16 o_1@@2 f_2@@9) (= (select (|PolymorphicMapType_9523_5790_5791#PolymorphicMapType_9523| Heap@@8) o_1@@2 f_2@@9) (select (|PolymorphicMapType_9523_5790_5791#PolymorphicMapType_9523| ExhaleHeap@@7) o_1@@2 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (select (|PolymorphicMapType_9523_5790_5791#PolymorphicMapType_9523| ExhaleHeap@@7) o_1@@2 f_2@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_9523) (ExhaleHeap@@8 T@PolymorphicMapType_9523) (Mask@@17 T@PolymorphicMapType_9544) (o_1@@3 T@Ref) (f_2@@10 T@Field_9583_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (=> (HasDirectPerm_9583_53 Mask@@17 o_1@@3 f_2@@10) (= (select (|PolymorphicMapType_9523_5787_53#PolymorphicMapType_9523| Heap@@9) o_1@@3 f_2@@10) (select (|PolymorphicMapType_9523_5787_53#PolymorphicMapType_9523| ExhaleHeap@@8) o_1@@3 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (select (|PolymorphicMapType_9523_5787_53#PolymorphicMapType_9523| ExhaleHeap@@8) o_1@@3 f_2@@10))
)))
(assert (forall ((s0@@2 T@Seq_19209) (s1@@2 T@Seq_19209) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_19209|)) (not (= s1@@2 |Seq#Empty_19209|))) (= (|Seq#Length_19209| (|Seq#Append_19209| s0@@2 s1@@2)) (+ (|Seq#Length_19209| s0@@2) (|Seq#Length_19209| s1@@2))))
 :qid |stdinbpl.209:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_19209| (|Seq#Append_19209| s0@@2 s1@@2)))
)))
(assert (forall ((s0@@3 T@Seq_19199) (s1@@3 T@Seq_19199) ) (!  (=> (and (not (= s0@@3 |Seq#Empty_19199|)) (not (= s1@@3 |Seq#Empty_19199|))) (= (|Seq#Length_19199| (|Seq#Append_19199| s0@@3 s1@@3)) (+ (|Seq#Length_19199| s0@@3) (|Seq#Length_19199| s1@@3))))
 :qid |stdinbpl.209:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_19199| (|Seq#Append_19199| s0@@3 s1@@3)))
)))
(assert (forall ((s0@@4 T@Seq_2864) (s1@@4 T@Seq_2864) ) (!  (=> (and (not (= s0@@4 |Seq#Empty_2864|)) (not (= s1@@4 |Seq#Empty_2864|))) (= (|Seq#Length_2864| (|Seq#Append_2864| s0@@4 s1@@4)) (+ (|Seq#Length_2864| s0@@4) (|Seq#Length_2864| s1@@4))))
 :qid |stdinbpl.209:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2864| (|Seq#Append_2864| s0@@4 s1@@4)))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_9583_23019) ) (! (= (select (|PolymorphicMapType_9544_9583_26580#PolymorphicMapType_9544| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9544_9583_26580#PolymorphicMapType_9544| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_9583_22886) ) (! (= (select (|PolymorphicMapType_9544_9583_22886#PolymorphicMapType_9544| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9544_9583_22886#PolymorphicMapType_9544| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_9596_9597) ) (! (= (select (|PolymorphicMapType_9544_9583_9597#PolymorphicMapType_9544| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9544_9583_9597#PolymorphicMapType_9544| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_9583_53) ) (! (= (select (|PolymorphicMapType_9544_9583_53#PolymorphicMapType_9544| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9544_9583_53#PolymorphicMapType_9544| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((s@@23 T@Seq_19209) (t@@2 T@Seq_19209) (n@@23 Int) ) (!  (=> (and (> n@@23 0) (> n@@23 (|Seq#Length_19209| s@@23))) (and (= (|Seq#Add| (|Seq#Sub| n@@23 (|Seq#Length_19209| s@@23)) (|Seq#Length_19209| s@@23)) n@@23) (= (|Seq#Drop_19209| (|Seq#Append_19209| s@@23 t@@2) n@@23) (|Seq#Drop_19209| t@@2 (|Seq#Sub| n@@23 (|Seq#Length_19209| s@@23))))))
 :qid |stdinbpl.366:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_19209| (|Seq#Append_19209| s@@23 t@@2) n@@23))
)))
(assert (forall ((s@@24 T@Seq_19199) (t@@3 T@Seq_19199) (n@@24 Int) ) (!  (=> (and (> n@@24 0) (> n@@24 (|Seq#Length_19199| s@@24))) (and (= (|Seq#Add| (|Seq#Sub| n@@24 (|Seq#Length_19199| s@@24)) (|Seq#Length_19199| s@@24)) n@@24) (= (|Seq#Drop_19199| (|Seq#Append_19199| s@@24 t@@3) n@@24) (|Seq#Drop_19199| t@@3 (|Seq#Sub| n@@24 (|Seq#Length_19199| s@@24))))))
 :qid |stdinbpl.366:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_19199| (|Seq#Append_19199| s@@24 t@@3) n@@24))
)))
(assert (forall ((s@@25 T@Seq_2864) (t@@4 T@Seq_2864) (n@@25 Int) ) (!  (=> (and (> n@@25 0) (> n@@25 (|Seq#Length_2864| s@@25))) (and (= (|Seq#Add| (|Seq#Sub| n@@25 (|Seq#Length_2864| s@@25)) (|Seq#Length_2864| s@@25)) n@@25) (= (|Seq#Drop_2864| (|Seq#Append_2864| s@@25 t@@4) n@@25) (|Seq#Drop_2864| t@@4 (|Seq#Sub| n@@25 (|Seq#Length_2864| s@@25))))))
 :qid |stdinbpl.366:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_2864| (|Seq#Append_2864| s@@25 t@@4) n@@25))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_9544) (SummandMask1 T@PolymorphicMapType_9544) (SummandMask2 T@PolymorphicMapType_9544) (o_2@@15 T@Ref) (f_4@@15 T@Field_9583_23019) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_9544_9583_26580#PolymorphicMapType_9544| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_9544_9583_26580#PolymorphicMapType_9544| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_9544_9583_26580#PolymorphicMapType_9544| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9544_9583_26580#PolymorphicMapType_9544| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9544_9583_26580#PolymorphicMapType_9544| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9544_9583_26580#PolymorphicMapType_9544| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_9544) (SummandMask1@@0 T@PolymorphicMapType_9544) (SummandMask2@@0 T@PolymorphicMapType_9544) (o_2@@16 T@Ref) (f_4@@16 T@Field_9583_22886) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_9544_9583_22886#PolymorphicMapType_9544| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_9544_9583_22886#PolymorphicMapType_9544| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_9544_9583_22886#PolymorphicMapType_9544| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9544_9583_22886#PolymorphicMapType_9544| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9544_9583_22886#PolymorphicMapType_9544| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9544_9583_22886#PolymorphicMapType_9544| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_9544) (SummandMask1@@1 T@PolymorphicMapType_9544) (SummandMask2@@1 T@PolymorphicMapType_9544) (o_2@@17 T@Ref) (f_4@@17 T@Field_9596_9597) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_9544_9583_9597#PolymorphicMapType_9544| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_9544_9583_9597#PolymorphicMapType_9544| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_9544_9583_9597#PolymorphicMapType_9544| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9544_9583_9597#PolymorphicMapType_9544| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9544_9583_9597#PolymorphicMapType_9544| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9544_9583_9597#PolymorphicMapType_9544| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_9544) (SummandMask1@@2 T@PolymorphicMapType_9544) (SummandMask2@@2 T@PolymorphicMapType_9544) (o_2@@18 T@Ref) (f_4@@18 T@Field_9583_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_9544_9583_53#PolymorphicMapType_9544| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_9544_9583_53#PolymorphicMapType_9544| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_9544_9583_53#PolymorphicMapType_9544| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9544_9583_53#PolymorphicMapType_9544| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9544_9583_53#PolymorphicMapType_9544| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9544_9583_53#PolymorphicMapType_9544| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2864| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2864| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.531:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2864| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a@@8 T@Seq_19209) (b@@6 T@Seq_19209) ) (!  (=> (|Seq#Equal_19209| a@@8 b@@6) (= a@@8 b@@6))
 :qid |stdinbpl.504:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_19209| a@@8 b@@6))
)))
(assert (forall ((a@@9 T@Seq_19199) (b@@7 T@Seq_19199) ) (!  (=> (|Seq#Equal_19199| a@@9 b@@7) (= a@@9 b@@7))
 :qid |stdinbpl.504:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_19199| a@@9 b@@7))
)))
(assert (forall ((a@@10 T@Seq_2864) (b@@8 T@Seq_2864) ) (!  (=> (|Seq#Equal_2864| a@@10 b@@8) (= a@@10 b@@8))
 :qid |stdinbpl.504:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_2864| a@@10 b@@8))
)))
(assert (forall ((a@@11 T@MultiSet_5518) (b@@9 T@MultiSet_5518) ) (!  (=> (|MultiSet#Equal_5518| a@@11 b@@9) (= a@@11 b@@9))
 :qid |stdinbpl.722:17|
 :skolemid |115|
 :pattern ( (|MultiSet#Equal_5518| a@@11 b@@9))
)))
(assert (forall ((ms T@MultiSet_5518) (x@@6 Int) ) (! (>= (|MultiSet#Select_5518| ms x@@6) 0)
 :qid |stdinbpl.653:18|
 :skolemid |92|
 :pattern ( (|MultiSet#Select_5518| ms x@@6))
)))
(assert (forall ((s@@26 T@Seq_19209) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_19209| s@@26))) (|Seq#ContainsTrigger_19209| s@@26 (|Seq#Index_19209| s@@26 i@@4)))
 :qid |stdinbpl.397:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_19209| s@@26 i@@4))
)))
(assert (forall ((s@@27 T@Seq_19199) (i@@5 Int) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_19199| s@@27))) (|Seq#ContainsTrigger_19199| s@@27 (|Seq#Index_19199| s@@27 i@@5)))
 :qid |stdinbpl.397:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_19199| s@@27 i@@5))
)))
(assert (forall ((s@@28 T@Seq_2864) (i@@6 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_2864| s@@28))) (|Seq#ContainsTrigger_2864| s@@28 (|Seq#Index_2864| s@@28 i@@6)))
 :qid |stdinbpl.397:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2864| s@@28 i@@6))
)))
(assert (forall ((s0@@5 T@Seq_19209) (s1@@5 T@Seq_19209) ) (!  (and (=> (= s0@@5 |Seq#Empty_19209|) (= (|Seq#Append_19209| s0@@5 s1@@5) s1@@5)) (=> (= s1@@5 |Seq#Empty_19209|) (= (|Seq#Append_19209| s0@@5 s1@@5) s0@@5)))
 :qid |stdinbpl.215:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_19209| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_19199) (s1@@6 T@Seq_19199) ) (!  (and (=> (= s0@@6 |Seq#Empty_19199|) (= (|Seq#Append_19199| s0@@6 s1@@6) s1@@6)) (=> (= s1@@6 |Seq#Empty_19199|) (= (|Seq#Append_19199| s0@@6 s1@@6) s0@@6)))
 :qid |stdinbpl.215:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_19199| s0@@6 s1@@6))
)))
(assert (forall ((s0@@7 T@Seq_2864) (s1@@7 T@Seq_2864) ) (!  (and (=> (= s0@@7 |Seq#Empty_2864|) (= (|Seq#Append_2864| s0@@7 s1@@7) s1@@7)) (=> (= s1@@7 |Seq#Empty_2864|) (= (|Seq#Append_2864| s0@@7 s1@@7) s0@@7)))
 :qid |stdinbpl.215:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_2864| s0@@7 s1@@7))
)))
(assert (forall ((t@@5 T@Seq_19199) ) (! (= (|Seq#Index_19209| (|Seq#Singleton_19209| t@@5) 0) t@@5)
 :qid |stdinbpl.219:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_19209| t@@5))
)))
(assert (forall ((t@@6 T@Seq_2864) ) (! (= (|Seq#Index_19199| (|Seq#Singleton_19199| t@@6) 0) t@@6)
 :qid |stdinbpl.219:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_19199| t@@6))
)))
(assert (forall ((t@@7 Int) ) (! (= (|Seq#Index_2864| (|Seq#Singleton_2864| t@@7) 0) t@@7)
 :qid |stdinbpl.219:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_2864| t@@7))
)))
(assert (forall ((s@@29 T@Seq_19209) ) (! (<= 0 (|Seq#Length_19209| s@@29))
 :qid |stdinbpl.198:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_19209| s@@29))
)))
(assert (forall ((s@@30 T@Seq_19199) ) (! (<= 0 (|Seq#Length_19199| s@@30))
 :qid |stdinbpl.198:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_19199| s@@30))
)))
(assert (forall ((s@@31 T@Seq_2864) ) (! (<= 0 (|Seq#Length_2864| s@@31))
 :qid |stdinbpl.198:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2864| s@@31))
)))
(assert (forall ((s@@32 T@MultiSet_5518) ) (! (<= 0 (|MultiSet#Card_5518| s@@32))
 :qid |stdinbpl.656:18|
 :skolemid |93|
 :pattern ( (|MultiSet#Card_5518| s@@32))
)))
(assert (forall ((o@@1 Int) ) (! (= (|MultiSet#Select_5518| |MultiSet#Empty_5518| o@@1) 0)
 :qid |stdinbpl.661:18|
 :skolemid |94|
 :pattern ( (|MultiSet#Select_5518| |MultiSet#Empty_5518| o@@1))
)))
(assert (forall ((s0@@8 T@Seq_19209) (s1@@8 T@Seq_19209) ) (!  (=> (|Seq#Equal_19209| s0@@8 s1@@8) (and (= (|Seq#Length_19209| s0@@8) (|Seq#Length_19209| s1@@8)) (forall ((j@@8 Int) ) (!  (=> (and (<= 0 j@@8) (< j@@8 (|Seq#Length_19209| s0@@8))) (= (|Seq#Index_19209| s0@@8 j@@8) (|Seq#Index_19209| s1@@8 j@@8)))
 :qid |stdinbpl.494:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_19209| s0@@8 j@@8))
 :pattern ( (|Seq#Index_19209| s1@@8 j@@8))
))))
 :qid |stdinbpl.491:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_19209| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_19199) (s1@@9 T@Seq_19199) ) (!  (=> (|Seq#Equal_19199| s0@@9 s1@@9) (and (= (|Seq#Length_19199| s0@@9) (|Seq#Length_19199| s1@@9)) (forall ((j@@9 Int) ) (!  (=> (and (<= 0 j@@9) (< j@@9 (|Seq#Length_19199| s0@@9))) (= (|Seq#Index_19199| s0@@9 j@@9) (|Seq#Index_19199| s1@@9 j@@9)))
 :qid |stdinbpl.494:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_19199| s0@@9 j@@9))
 :pattern ( (|Seq#Index_19199| s1@@9 j@@9))
))))
 :qid |stdinbpl.491:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_19199| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_2864) (s1@@10 T@Seq_2864) ) (!  (=> (|Seq#Equal_2864| s0@@10 s1@@10) (and (= (|Seq#Length_2864| s0@@10) (|Seq#Length_2864| s1@@10)) (forall ((j@@10 Int) ) (!  (=> (and (<= 0 j@@10) (< j@@10 (|Seq#Length_2864| s0@@10))) (= (|Seq#Index_2864| s0@@10 j@@10) (|Seq#Index_2864| s1@@10 j@@10)))
 :qid |stdinbpl.494:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2864| s0@@10 j@@10))
 :pattern ( (|Seq#Index_2864| s1@@10 j@@10))
))))
 :qid |stdinbpl.491:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_2864| s0@@10 s1@@10))
)))
(assert (forall ((a@@12 T@MultiSet_5518) (x@@7 Int) ) (!  (and (> (|MultiSet#Select_5518| (|MultiSet#UnionOne_5518| a@@12 x@@7) x@@7) 0) (> (|MultiSet#Card_5518| (|MultiSet#UnionOne_5518| a@@12 x@@7)) 0))
 :qid |stdinbpl.680:18|
 :skolemid |102|
 :pattern ( (|MultiSet#UnionOne_5518| a@@12 x@@7))
)))
(assert (forall ((t@@8 T@Seq_19199) ) (! (= (|Seq#Length_19209| (|Seq#Singleton_19209| t@@8)) 1)
 :qid |stdinbpl.206:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_19209| t@@8))
)))
(assert (forall ((t@@9 T@Seq_2864) ) (! (= (|Seq#Length_19199| (|Seq#Singleton_19199| t@@9)) 1)
 :qid |stdinbpl.206:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_19199| t@@9))
)))
(assert (forall ((t@@10 Int) ) (! (= (|Seq#Length_2864| (|Seq#Singleton_2864| t@@10)) 1)
 :qid |stdinbpl.206:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_2864| t@@10))
)))
(assert (forall ((a@@13 T@MultiSet_5518) (b@@10 T@MultiSet_5518) ) (! (= (|MultiSet#Intersection_5518| a@@13 (|MultiSet#Intersection_5518| a@@13 b@@10)) (|MultiSet#Intersection_5518| a@@13 b@@10))
 :qid |stdinbpl.697:18|
 :skolemid |107|
 :pattern ( (|MultiSet#Intersection_5518| a@@13 (|MultiSet#Intersection_5518| a@@13 b@@10)))
)))
(assert (forall ((s@@33 T@MultiSet_5518) ) (!  (and (= (= (|MultiSet#Card_5518| s@@33) 0) (= s@@33 |MultiSet#Empty_5518|)) (=> (not (= (|MultiSet#Card_5518| s@@33) 0)) (exists ((x@@8 Int) ) (! (< 0 (|MultiSet#Select_5518| s@@33 x@@8))
 :qid |stdinbpl.664:38|
 :skolemid |95|
))))
 :qid |stdinbpl.662:18|
 :skolemid |96|
 :pattern ( (|MultiSet#Card_5518| s@@33))
)))
(assert (forall ((r@@0 Int) (o@@2 Int) ) (!  (and (= (= (|MultiSet#Select_5518| (|MultiSet#Singleton_5518| r@@0) o@@2) 1) (= r@@0 o@@2)) (= (= (|MultiSet#Select_5518| (|MultiSet#Singleton_5518| r@@0) o@@2) 0) (not (= r@@0 o@@2))))
 :qid |stdinbpl.667:18|
 :skolemid |97|
 :pattern ( (|MultiSet#Select_5518| (|MultiSet#Singleton_5518| r@@0) o@@2))
)))
(assert (forall ((a@@14 T@MultiSet_5518) (b@@11 T@MultiSet_5518) (o@@3 Int) ) (! (= (|MultiSet#Select_5518| (|MultiSet#Union_5518| a@@14 b@@11) o@@3) (+ (|MultiSet#Select_5518| a@@14 o@@3) (|MultiSet#Select_5518| b@@11 o@@3)))
 :qid |stdinbpl.685:18|
 :skolemid |103|
 :pattern ( (|MultiSet#Select_5518| (|MultiSet#Union_5518| a@@14 b@@11) o@@3))
 :pattern ( (|MultiSet#Union_5518| a@@14 b@@11) (|MultiSet#Select_5518| a@@14 o@@3) (|MultiSet#Select_5518| b@@11 o@@3))
)))
(assert (forall ((s@@34 T@Seq_19209) (t@@11 T@Seq_19209) (n@@26 Int) ) (!  (=> (and (< 0 n@@26) (<= n@@26 (|Seq#Length_19209| s@@34))) (= (|Seq#Take_19209| (|Seq#Append_19209| s@@34 t@@11) n@@26) (|Seq#Take_19209| s@@34 n@@26)))
 :qid |stdinbpl.348:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_19209| (|Seq#Append_19209| s@@34 t@@11) n@@26))
)))
(assert (forall ((s@@35 T@Seq_19199) (t@@12 T@Seq_19199) (n@@27 Int) ) (!  (=> (and (< 0 n@@27) (<= n@@27 (|Seq#Length_19199| s@@35))) (= (|Seq#Take_19199| (|Seq#Append_19199| s@@35 t@@12) n@@27) (|Seq#Take_19199| s@@35 n@@27)))
 :qid |stdinbpl.348:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_19199| (|Seq#Append_19199| s@@35 t@@12) n@@27))
)))
(assert (forall ((s@@36 T@Seq_2864) (t@@13 T@Seq_2864) (n@@28 Int) ) (!  (=> (and (< 0 n@@28) (<= n@@28 (|Seq#Length_2864| s@@36))) (= (|Seq#Take_2864| (|Seq#Append_2864| s@@36 t@@13) n@@28) (|Seq#Take_2864| s@@36 n@@28)))
 :qid |stdinbpl.348:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2864| (|Seq#Append_2864| s@@36 t@@13) n@@28))
)))
(assert (forall ((s@@37 T@Seq_19209) (i@@7 Int) (v@@3 T@Seq_19199) ) (!  (=> (and (<= 0 i@@7) (< i@@7 (|Seq#Length_19209| s@@37))) (= (|Seq#Length_19209| (|Seq#Update_19209| s@@37 i@@7 v@@3)) (|Seq#Length_19209| s@@37)))
 :qid |stdinbpl.247:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_19209| (|Seq#Update_19209| s@@37 i@@7 v@@3)))
 :pattern ( (|Seq#Length_19209| s@@37) (|Seq#Update_19209| s@@37 i@@7 v@@3))
)))
(assert (forall ((s@@38 T@Seq_19199) (i@@8 Int) (v@@4 T@Seq_2864) ) (!  (=> (and (<= 0 i@@8) (< i@@8 (|Seq#Length_19199| s@@38))) (= (|Seq#Length_19199| (|Seq#Update_19199| s@@38 i@@8 v@@4)) (|Seq#Length_19199| s@@38)))
 :qid |stdinbpl.247:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_19199| (|Seq#Update_19199| s@@38 i@@8 v@@4)))
 :pattern ( (|Seq#Length_19199| s@@38) (|Seq#Update_19199| s@@38 i@@8 v@@4))
)))
(assert (forall ((s@@39 T@Seq_2864) (i@@9 Int) (v@@5 Int) ) (!  (=> (and (<= 0 i@@9) (< i@@9 (|Seq#Length_2864| s@@39))) (= (|Seq#Length_2864| (|Seq#Update_2864| s@@39 i@@9 v@@5)) (|Seq#Length_2864| s@@39)))
 :qid |stdinbpl.247:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2864| (|Seq#Update_2864| s@@39 i@@9 v@@5)))
 :pattern ( (|Seq#Length_2864| s@@39) (|Seq#Update_2864| s@@39 i@@9 v@@5))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_9523) (o@@4 T@Ref) (f_3 T@Field_9583_22886) (v@@6 T@FrameType) ) (! (succHeap Heap@@10 (PolymorphicMapType_9523 (|PolymorphicMapType_9523_5787_53#PolymorphicMapType_9523| Heap@@10) (|PolymorphicMapType_9523_5790_5791#PolymorphicMapType_9523| Heap@@10) (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| Heap@@10) (store (|PolymorphicMapType_9523_9583_22886#PolymorphicMapType_9523| Heap@@10) o@@4 f_3 v@@6)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9523 (|PolymorphicMapType_9523_5787_53#PolymorphicMapType_9523| Heap@@10) (|PolymorphicMapType_9523_5790_5791#PolymorphicMapType_9523| Heap@@10) (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| Heap@@10) (store (|PolymorphicMapType_9523_9583_22886#PolymorphicMapType_9523| Heap@@10) o@@4 f_3 v@@6)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_9523) (o@@5 T@Ref) (f_3@@0 T@Field_9583_23019) (v@@7 T@PolymorphicMapType_10072) ) (! (succHeap Heap@@11 (PolymorphicMapType_9523 (|PolymorphicMapType_9523_5787_53#PolymorphicMapType_9523| Heap@@11) (|PolymorphicMapType_9523_5790_5791#PolymorphicMapType_9523| Heap@@11) (store (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| Heap@@11) o@@5 f_3@@0 v@@7) (|PolymorphicMapType_9523_9583_22886#PolymorphicMapType_9523| Heap@@11)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9523 (|PolymorphicMapType_9523_5787_53#PolymorphicMapType_9523| Heap@@11) (|PolymorphicMapType_9523_5790_5791#PolymorphicMapType_9523| Heap@@11) (store (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| Heap@@11) o@@5 f_3@@0 v@@7) (|PolymorphicMapType_9523_9583_22886#PolymorphicMapType_9523| Heap@@11)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_9523) (o@@6 T@Ref) (f_3@@1 T@Field_9596_9597) (v@@8 T@Ref) ) (! (succHeap Heap@@12 (PolymorphicMapType_9523 (|PolymorphicMapType_9523_5787_53#PolymorphicMapType_9523| Heap@@12) (store (|PolymorphicMapType_9523_5790_5791#PolymorphicMapType_9523| Heap@@12) o@@6 f_3@@1 v@@8) (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| Heap@@12) (|PolymorphicMapType_9523_9583_22886#PolymorphicMapType_9523| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9523 (|PolymorphicMapType_9523_5787_53#PolymorphicMapType_9523| Heap@@12) (store (|PolymorphicMapType_9523_5790_5791#PolymorphicMapType_9523| Heap@@12) o@@6 f_3@@1 v@@8) (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| Heap@@12) (|PolymorphicMapType_9523_9583_22886#PolymorphicMapType_9523| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_9523) (o@@7 T@Ref) (f_3@@2 T@Field_9583_53) (v@@9 Bool) ) (! (succHeap Heap@@13 (PolymorphicMapType_9523 (store (|PolymorphicMapType_9523_5787_53#PolymorphicMapType_9523| Heap@@13) o@@7 f_3@@2 v@@9) (|PolymorphicMapType_9523_5790_5791#PolymorphicMapType_9523| Heap@@13) (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| Heap@@13) (|PolymorphicMapType_9523_9583_22886#PolymorphicMapType_9523| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9523 (store (|PolymorphicMapType_9523_5787_53#PolymorphicMapType_9523| Heap@@13) o@@7 f_3@@2 v@@9) (|PolymorphicMapType_9523_5790_5791#PolymorphicMapType_9523| Heap@@13) (|PolymorphicMapType_9523_9583_23063#PolymorphicMapType_9523| Heap@@13) (|PolymorphicMapType_9523_9583_22886#PolymorphicMapType_9523| Heap@@13)))
)))
(assert (forall ((r@@1 Int) ) (! (= (|MultiSet#Singleton_5518| r@@1) (|MultiSet#UnionOne_5518| |MultiSet#Empty_5518| r@@1))
 :qid |stdinbpl.670:18|
 :skolemid |99|
 :pattern ( (|MultiSet#Singleton_5518| r@@1))
)))
(assert (forall ((s@@40 T@Seq_19209) (t@@14 T@Seq_19209) (n@@29 Int) ) (!  (=> (and (< 0 n@@29) (<= n@@29 (|Seq#Length_19209| s@@40))) (= (|Seq#Drop_19209| (|Seq#Append_19209| s@@40 t@@14) n@@29) (|Seq#Append_19209| (|Seq#Drop_19209| s@@40 n@@29) t@@14)))
 :qid |stdinbpl.362:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_19209| (|Seq#Append_19209| s@@40 t@@14) n@@29))
)))
(assert (forall ((s@@41 T@Seq_19199) (t@@15 T@Seq_19199) (n@@30 Int) ) (!  (=> (and (< 0 n@@30) (<= n@@30 (|Seq#Length_19199| s@@41))) (= (|Seq#Drop_19199| (|Seq#Append_19199| s@@41 t@@15) n@@30) (|Seq#Append_19199| (|Seq#Drop_19199| s@@41 n@@30) t@@15)))
 :qid |stdinbpl.362:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_19199| (|Seq#Append_19199| s@@41 t@@15) n@@30))
)))
(assert (forall ((s@@42 T@Seq_2864) (t@@16 T@Seq_2864) (n@@31 Int) ) (!  (=> (and (< 0 n@@31) (<= n@@31 (|Seq#Length_2864| s@@42))) (= (|Seq#Drop_2864| (|Seq#Append_2864| s@@42 t@@16) n@@31) (|Seq#Append_2864| (|Seq#Drop_2864| s@@42 n@@31) t@@16)))
 :qid |stdinbpl.362:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_2864| (|Seq#Append_2864| s@@42 t@@16) n@@31))
)))
(assert (forall ((a@@15 Int) (b@@12 Int) ) (! (= (<= a@@15 b@@12) (= (|Math#min| a@@15 b@@12) a@@15))
 :qid |stdinbpl.635:15|
 :skolemid |87|
 :pattern ( (|Math#min| a@@15 b@@12))
)))
(assert (forall ((a@@16 Int) (b@@13 Int) ) (! (= (<= b@@13 a@@16) (= (|Math#min| a@@16 b@@13) b@@13))
 :qid |stdinbpl.636:15|
 :skolemid |88|
 :pattern ( (|Math#min| a@@16 b@@13))
)))
(assert (forall ((s@@43 T@Seq_19209) (n@@32 Int) (i@@10 Int) ) (!  (=> (and (and (< 0 n@@32) (<= n@@32 i@@10)) (< i@@10 (|Seq#Length_19209| s@@43))) (and (= (|Seq#Add| (|Seq#Sub| i@@10 n@@32) n@@32) i@@10) (= (|Seq#Index_19209| (|Seq#Drop_19209| s@@43 n@@32) (|Seq#Sub| i@@10 n@@32)) (|Seq#Index_19209| s@@43 i@@10))))
 :qid |stdinbpl.298:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_19209| s@@43 n@@32) (|Seq#Index_19209| s@@43 i@@10))
)))
(assert (forall ((s@@44 T@Seq_19199) (n@@33 Int) (i@@11 Int) ) (!  (=> (and (and (< 0 n@@33) (<= n@@33 i@@11)) (< i@@11 (|Seq#Length_19199| s@@44))) (and (= (|Seq#Add| (|Seq#Sub| i@@11 n@@33) n@@33) i@@11) (= (|Seq#Index_19199| (|Seq#Drop_19199| s@@44 n@@33) (|Seq#Sub| i@@11 n@@33)) (|Seq#Index_19199| s@@44 i@@11))))
 :qid |stdinbpl.298:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_19199| s@@44 n@@33) (|Seq#Index_19199| s@@44 i@@11))
)))
(assert (forall ((s@@45 T@Seq_2864) (n@@34 Int) (i@@12 Int) ) (!  (=> (and (and (< 0 n@@34) (<= n@@34 i@@12)) (< i@@12 (|Seq#Length_2864| s@@45))) (and (= (|Seq#Add| (|Seq#Sub| i@@12 n@@34) n@@34) i@@12) (= (|Seq#Index_2864| (|Seq#Drop_2864| s@@45 n@@34) (|Seq#Sub| i@@12 n@@34)) (|Seq#Index_2864| s@@45 i@@12))))
 :qid |stdinbpl.298:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_2864| s@@45 n@@34) (|Seq#Index_2864| s@@45 i@@12))
)))
(assert (forall ((s0@@11 T@Seq_19209) (s1@@11 T@Seq_19209) (n@@35 Int) ) (!  (=> (and (and (and (not (= s0@@11 |Seq#Empty_19209|)) (not (= s1@@11 |Seq#Empty_19209|))) (<= 0 n@@35)) (< n@@35 (|Seq#Length_19209| s0@@11))) (= (|Seq#Index_19209| (|Seq#Append_19209| s0@@11 s1@@11) n@@35) (|Seq#Index_19209| s0@@11 n@@35)))
 :qid |stdinbpl.238:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_19209| (|Seq#Append_19209| s0@@11 s1@@11) n@@35))
 :pattern ( (|Seq#Index_19209| s0@@11 n@@35) (|Seq#Append_19209| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_19199) (s1@@12 T@Seq_19199) (n@@36 Int) ) (!  (=> (and (and (and (not (= s0@@12 |Seq#Empty_19199|)) (not (= s1@@12 |Seq#Empty_19199|))) (<= 0 n@@36)) (< n@@36 (|Seq#Length_19199| s0@@12))) (= (|Seq#Index_19199| (|Seq#Append_19199| s0@@12 s1@@12) n@@36) (|Seq#Index_19199| s0@@12 n@@36)))
 :qid |stdinbpl.238:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_19199| (|Seq#Append_19199| s0@@12 s1@@12) n@@36))
 :pattern ( (|Seq#Index_19199| s0@@12 n@@36) (|Seq#Append_19199| s0@@12 s1@@12))
)))
(assert (forall ((s0@@13 T@Seq_2864) (s1@@13 T@Seq_2864) (n@@37 Int) ) (!  (=> (and (and (and (not (= s0@@13 |Seq#Empty_2864|)) (not (= s1@@13 |Seq#Empty_2864|))) (<= 0 n@@37)) (< n@@37 (|Seq#Length_2864| s0@@13))) (= (|Seq#Index_2864| (|Seq#Append_2864| s0@@13 s1@@13) n@@37) (|Seq#Index_2864| s0@@13 n@@37)))
 :qid |stdinbpl.238:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2864| (|Seq#Append_2864| s0@@13 s1@@13) n@@37))
 :pattern ( (|Seq#Index_2864| s0@@13 n@@37) (|Seq#Append_2864| s0@@13 s1@@13))
)))
(assert (forall ((s0@@14 T@Seq_19209) (s1@@14 T@Seq_19209) (m Int) ) (!  (=> (and (and (and (not (= s0@@14 |Seq#Empty_19209|)) (not (= s1@@14 |Seq#Empty_19209|))) (<= 0 m)) (< m (|Seq#Length_19209| s1@@14))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_19209| s0@@14)) (|Seq#Length_19209| s0@@14)) m) (= (|Seq#Index_19209| (|Seq#Append_19209| s0@@14 s1@@14) (|Seq#Add| m (|Seq#Length_19209| s0@@14))) (|Seq#Index_19209| s1@@14 m))))
 :qid |stdinbpl.243:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_19209| s1@@14 m) (|Seq#Append_19209| s0@@14 s1@@14))
)))
(assert (forall ((s0@@15 T@Seq_19199) (s1@@15 T@Seq_19199) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@15 |Seq#Empty_19199|)) (not (= s1@@15 |Seq#Empty_19199|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_19199| s1@@15))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_19199| s0@@15)) (|Seq#Length_19199| s0@@15)) m@@0) (= (|Seq#Index_19199| (|Seq#Append_19199| s0@@15 s1@@15) (|Seq#Add| m@@0 (|Seq#Length_19199| s0@@15))) (|Seq#Index_19199| s1@@15 m@@0))))
 :qid |stdinbpl.243:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_19199| s1@@15 m@@0) (|Seq#Append_19199| s0@@15 s1@@15))
)))
(assert (forall ((s0@@16 T@Seq_2864) (s1@@16 T@Seq_2864) (m@@1 Int) ) (!  (=> (and (and (and (not (= s0@@16 |Seq#Empty_2864|)) (not (= s1@@16 |Seq#Empty_2864|))) (<= 0 m@@1)) (< m@@1 (|Seq#Length_2864| s1@@16))) (and (= (|Seq#Sub| (|Seq#Add| m@@1 (|Seq#Length_2864| s0@@16)) (|Seq#Length_2864| s0@@16)) m@@1) (= (|Seq#Index_2864| (|Seq#Append_2864| s0@@16 s1@@16) (|Seq#Add| m@@1 (|Seq#Length_2864| s0@@16))) (|Seq#Index_2864| s1@@16 m@@1))))
 :qid |stdinbpl.243:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2864| s1@@16 m@@1) (|Seq#Append_2864| s0@@16 s1@@16))
)))
(assert (forall ((a@@17 T@MultiSet_5518) (b@@14 T@MultiSet_5518) (o@@8 Int) ) (! (= (|MultiSet#Select_5518| (|MultiSet#Difference_5518| a@@17 b@@14) o@@8) (|Math#clip| (- (|MultiSet#Select_5518| a@@17 o@@8) (|MultiSet#Select_5518| b@@14 o@@8))))
 :qid |stdinbpl.702:18|
 :skolemid |108|
 :pattern ( (|MultiSet#Select_5518| (|MultiSet#Difference_5518| a@@17 b@@14) o@@8))
)))
(assert (forall ((o@@9 T@Ref) (f T@Field_9596_9597) (Heap@@14 T@PolymorphicMapType_9523) ) (!  (=> (select (|PolymorphicMapType_9523_5787_53#PolymorphicMapType_9523| Heap@@14) o@@9 $allocated) (select (|PolymorphicMapType_9523_5787_53#PolymorphicMapType_9523| Heap@@14) (select (|PolymorphicMapType_9523_5790_5791#PolymorphicMapType_9523| Heap@@14) o@@9 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_9523_5790_5791#PolymorphicMapType_9523| Heap@@14) o@@9 f))
)))
(assert (forall ((s@@46 T@Seq_19209) (x@@9 T@Seq_19199) (i@@13 Int) ) (!  (=> (and (and (<= 0 i@@13) (< i@@13 (|Seq#Length_19209| s@@46))) (= (|Seq#Index_19209| s@@46 i@@13) x@@9)) (|Seq#Contains_19400| s@@46 x@@9))
 :qid |stdinbpl.395:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_19400| s@@46 x@@9) (|Seq#Index_19209| s@@46 i@@13))
)))
(assert (forall ((s@@47 T@Seq_19199) (x@@10 T@Seq_2864) (i@@14 Int) ) (!  (=> (and (and (<= 0 i@@14) (< i@@14 (|Seq#Length_19199| s@@47))) (= (|Seq#Index_19199| s@@47 i@@14) x@@10)) (|Seq#Contains_19366| s@@47 x@@10))
 :qid |stdinbpl.395:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_19366| s@@47 x@@10) (|Seq#Index_19199| s@@47 i@@14))
)))
(assert (forall ((s@@48 T@Seq_2864) (x@@11 Int) (i@@15 Int) ) (!  (=> (and (and (<= 0 i@@15) (< i@@15 (|Seq#Length_2864| s@@48))) (= (|Seq#Index_2864| s@@48 i@@15) x@@11)) (|Seq#Contains_2864| s@@48 x@@11))
 :qid |stdinbpl.395:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2864| s@@48 x@@11) (|Seq#Index_2864| s@@48 i@@15))
)))
(assert (forall ((s0@@17 T@Seq_19209) (s1@@17 T@Seq_19209) ) (!  (or (or (and (= s0@@17 s1@@17) (|Seq#Equal_19209| s0@@17 s1@@17)) (and (and (not (= s0@@17 s1@@17)) (not (|Seq#Equal_19209| s0@@17 s1@@17))) (not (= (|Seq#Length_19209| s0@@17) (|Seq#Length_19209| s1@@17))))) (and (and (and (and (and (and (not (= s0@@17 s1@@17)) (not (|Seq#Equal_19209| s0@@17 s1@@17))) (= (|Seq#Length_19209| s0@@17) (|Seq#Length_19209| s1@@17))) (= (|Seq#SkolemDiff_19209| s0@@17 s1@@17) (|Seq#SkolemDiff_19209| s1@@17 s0@@17))) (<= 0 (|Seq#SkolemDiff_19209| s0@@17 s1@@17))) (< (|Seq#SkolemDiff_19209| s0@@17 s1@@17) (|Seq#Length_19209| s0@@17))) (not (= (|Seq#Index_19209| s0@@17 (|Seq#SkolemDiff_19209| s0@@17 s1@@17)) (|Seq#Index_19209| s1@@17 (|Seq#SkolemDiff_19209| s0@@17 s1@@17))))))
 :qid |stdinbpl.499:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_19209| s0@@17 s1@@17))
)))
(assert (forall ((s0@@18 T@Seq_19199) (s1@@18 T@Seq_19199) ) (!  (or (or (and (= s0@@18 s1@@18) (|Seq#Equal_19199| s0@@18 s1@@18)) (and (and (not (= s0@@18 s1@@18)) (not (|Seq#Equal_19199| s0@@18 s1@@18))) (not (= (|Seq#Length_19199| s0@@18) (|Seq#Length_19199| s1@@18))))) (and (and (and (and (and (and (not (= s0@@18 s1@@18)) (not (|Seq#Equal_19199| s0@@18 s1@@18))) (= (|Seq#Length_19199| s0@@18) (|Seq#Length_19199| s1@@18))) (= (|Seq#SkolemDiff_19199| s0@@18 s1@@18) (|Seq#SkolemDiff_19199| s1@@18 s0@@18))) (<= 0 (|Seq#SkolemDiff_19199| s0@@18 s1@@18))) (< (|Seq#SkolemDiff_19199| s0@@18 s1@@18) (|Seq#Length_19199| s0@@18))) (not (= (|Seq#Index_19199| s0@@18 (|Seq#SkolemDiff_19199| s0@@18 s1@@18)) (|Seq#Index_19199| s1@@18 (|Seq#SkolemDiff_19199| s0@@18 s1@@18))))))
 :qid |stdinbpl.499:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_19199| s0@@18 s1@@18))
)))
(assert (forall ((s0@@19 T@Seq_2864) (s1@@19 T@Seq_2864) ) (!  (or (or (and (= s0@@19 s1@@19) (|Seq#Equal_2864| s0@@19 s1@@19)) (and (and (not (= s0@@19 s1@@19)) (not (|Seq#Equal_2864| s0@@19 s1@@19))) (not (= (|Seq#Length_2864| s0@@19) (|Seq#Length_2864| s1@@19))))) (and (and (and (and (and (and (not (= s0@@19 s1@@19)) (not (|Seq#Equal_2864| s0@@19 s1@@19))) (= (|Seq#Length_2864| s0@@19) (|Seq#Length_2864| s1@@19))) (= (|Seq#SkolemDiff_2864| s0@@19 s1@@19) (|Seq#SkolemDiff_2864| s1@@19 s0@@19))) (<= 0 (|Seq#SkolemDiff_2864| s0@@19 s1@@19))) (< (|Seq#SkolemDiff_2864| s0@@19 s1@@19) (|Seq#Length_2864| s0@@19))) (not (= (|Seq#Index_2864| s0@@19 (|Seq#SkolemDiff_2864| s0@@19 s1@@19)) (|Seq#Index_2864| s1@@19 (|Seq#SkolemDiff_2864| s0@@19 s1@@19))))))
 :qid |stdinbpl.499:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_2864| s0@@19 s1@@19))
)))
(assert (forall ((p@@1 T@Field_9583_22886) (v_1@@0 T@FrameType) (q T@Field_9583_22886) (w@@0 T@FrameType) (r@@2 T@Field_9583_22886) (u T@FrameType) ) (!  (=> (and (InsidePredicate_9583_9583 p@@1 v_1@@0 q w@@0) (InsidePredicate_9583_9583 q w@@0 r@@2 u)) (InsidePredicate_9583_9583 p@@1 v_1@@0 r@@2 u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9583_9583 p@@1 v_1@@0 q w@@0) (InsidePredicate_9583_9583 q w@@0 r@@2 u))
)))
(assert (forall ((a@@18 Int) ) (!  (=> (< a@@18 0) (= (|Math#clip| a@@18) 0))
 :qid |stdinbpl.641:15|
 :skolemid |91|
 :pattern ( (|Math#clip| a@@18))
)))
(assert (forall ((s@@49 T@Seq_19209) ) (!  (=> (= (|Seq#Length_19209| s@@49) 0) (= s@@49 |Seq#Empty_19209|))
 :qid |stdinbpl.202:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_19209| s@@49))
)))
(assert (forall ((s@@50 T@Seq_19199) ) (!  (=> (= (|Seq#Length_19199| s@@50) 0) (= s@@50 |Seq#Empty_19199|))
 :qid |stdinbpl.202:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_19199| s@@50))
)))
(assert (forall ((s@@51 T@Seq_2864) ) (!  (=> (= (|Seq#Length_2864| s@@51) 0) (= s@@51 |Seq#Empty_2864|))
 :qid |stdinbpl.202:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2864| s@@51))
)))
(assert (forall ((s@@52 T@Seq_19209) (n@@38 Int) ) (!  (=> (<= n@@38 0) (= (|Seq#Take_19209| s@@52 n@@38) |Seq#Empty_19209|))
 :qid |stdinbpl.378:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_19209| s@@52 n@@38))
)))
(assert (forall ((s@@53 T@Seq_19199) (n@@39 Int) ) (!  (=> (<= n@@39 0) (= (|Seq#Take_19199| s@@53 n@@39) |Seq#Empty_19199|))
 :qid |stdinbpl.378:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_19199| s@@53 n@@39))
)))
(assert (forall ((s@@54 T@Seq_2864) (n@@40 Int) ) (!  (=> (<= n@@40 0) (= (|Seq#Take_2864| s@@54 n@@40) |Seq#Empty_2864|))
 :qid |stdinbpl.378:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_2864| s@@54 n@@40))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@19 T@MultiSet_5518) (x@@12 Int) (o@@10 Int) ) (! (= (|MultiSet#Select_5518| (|MultiSet#UnionOne_5518| a@@19 x@@12) o@@10) (ite (= x@@12 o@@10) (+ (|MultiSet#Select_5518| a@@19 o@@10) 1) (|MultiSet#Select_5518| a@@19 o@@10)))
 :qid |stdinbpl.674:18|
 :skolemid |100|
 :pattern ( (|MultiSet#Select_5518| (|MultiSet#UnionOne_5518| a@@19 x@@12) o@@10))
 :pattern ( (|MultiSet#UnionOne_5518| a@@19 x@@12) (|MultiSet#Select_5518| a@@19 o@@10))
)))
(assert (forall ((a@@20 T@MultiSet_5518) (b@@15 T@MultiSet_5518) ) (! (= (|MultiSet#Equal_5518| a@@20 b@@15) (forall ((o@@11 Int) ) (! (= (|MultiSet#Select_5518| a@@20 o@@11) (|MultiSet#Select_5518| b@@15 o@@11))
 :qid |stdinbpl.720:36|
 :skolemid |113|
 :pattern ( (|MultiSet#Select_5518| a@@20 o@@11))
 :pattern ( (|MultiSet#Select_5518| b@@15 o@@11))
)))
 :qid |stdinbpl.719:17|
 :skolemid |114|
 :pattern ( (|MultiSet#Equal_5518| a@@20 b@@15))
)))
(assert (forall ((a@@21 T@MultiSet_5518) (b@@16 T@MultiSet_5518) ) (! (= (|MultiSet#Subset_5518| a@@21 b@@16) (forall ((o@@12 Int) ) (! (<= (|MultiSet#Select_5518| a@@21 o@@12) (|MultiSet#Select_5518| b@@16 o@@12))
 :qid |stdinbpl.716:37|
 :skolemid |111|
 :pattern ( (|MultiSet#Select_5518| a@@21 o@@12))
 :pattern ( (|MultiSet#Select_5518| b@@16 o@@12))
)))
 :qid |stdinbpl.715:17|
 :skolemid |112|
 :pattern ( (|MultiSet#Subset_5518| a@@21 b@@16))
)))
; Invalid

