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
(declare-sort T@Field_9647_53 0)
(declare-sort T@Field_9660_9661 0)
(declare-sort T@Field_9647_25821 0)
(declare-sort T@Field_9647_25688 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_9608 0)) (((PolymorphicMapType_9608 (|PolymorphicMapType_9608_9647_53#PolymorphicMapType_9608| (Array T@Ref T@Field_9647_53 Real)) (|PolymorphicMapType_9608_9647_9661#PolymorphicMapType_9608| (Array T@Ref T@Field_9660_9661 Real)) (|PolymorphicMapType_9608_9647_25688#PolymorphicMapType_9608| (Array T@Ref T@Field_9647_25688 Real)) (|PolymorphicMapType_9608_9647_29382#PolymorphicMapType_9608| (Array T@Ref T@Field_9647_25821 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10136 0)) (((PolymorphicMapType_10136 (|PolymorphicMapType_10136_9647_53#PolymorphicMapType_10136| (Array T@Ref T@Field_9647_53 Bool)) (|PolymorphicMapType_10136_9647_9661#PolymorphicMapType_10136| (Array T@Ref T@Field_9660_9661 Bool)) (|PolymorphicMapType_10136_9647_25688#PolymorphicMapType_10136| (Array T@Ref T@Field_9647_25688 Bool)) (|PolymorphicMapType_10136_9647_26801#PolymorphicMapType_10136| (Array T@Ref T@Field_9647_25821 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9587 0)) (((PolymorphicMapType_9587 (|PolymorphicMapType_9587_6108_53#PolymorphicMapType_9587| (Array T@Ref T@Field_9647_53 Bool)) (|PolymorphicMapType_9587_6111_6112#PolymorphicMapType_9587| (Array T@Ref T@Field_9660_9661 T@Ref)) (|PolymorphicMapType_9587_9647_25865#PolymorphicMapType_9587| (Array T@Ref T@Field_9647_25821 T@PolymorphicMapType_10136)) (|PolymorphicMapType_9587_9647_25688#PolymorphicMapType_9587| (Array T@Ref T@Field_9647_25688 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_9647_53)
(declare-fun type_Leaf () Int)
(declare-fun type_Node () Int)
(declare-sort T@Seq_17408 0)
(declare-fun |Seq#Length_6385| (T@Seq_17408) Int)
(declare-fun |Seq#Drop_6385| (T@Seq_17408 Int) T@Seq_17408)
(declare-sort T@Seq_2867 0)
(declare-fun |Seq#Length_2867| (T@Seq_2867) Int)
(declare-fun |Seq#Drop_2867| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun succHeap (T@PolymorphicMapType_9587 T@PolymorphicMapType_9587) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_9587 T@PolymorphicMapType_9587) Bool)
(declare-fun state (T@PolymorphicMapType_9587 T@PolymorphicMapType_9608) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_9608) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_10136)
(declare-sort T@TreeDomainType 0)
(declare-fun vtype (T@TreeDomainType) Int)
(declare-fun Node_1 (Int T@TreeDomainType T@TreeDomainType) T@TreeDomainType)
(declare-fun |Seq#Index_6385| (T@Seq_17408 Int) T@TreeDomainType)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_2867| (T@Seq_2867 Int) Int)
(declare-fun |Seq#Empty_6394| () T@Seq_17408)
(declare-fun |Seq#Empty_2867| () T@Seq_2867)
(declare-fun Leaf () T@TreeDomainType)
(declare-fun |height'| (T@PolymorphicMapType_9587 T@TreeDomainType) Int)
(declare-fun dummyFunction_3611 (Int) Bool)
(declare-fun |height#triggerStateless| (T@TreeDomainType) Int)
(declare-fun |Seq#Update_6385| (T@Seq_17408 Int T@TreeDomainType) T@Seq_17408)
(declare-fun |Seq#Update_2867| (T@Seq_2867 Int Int) T@Seq_2867)
(declare-fun |Seq#Take_6385| (T@Seq_17408 Int) T@Seq_17408)
(declare-fun |Seq#Take_2867| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun getVal (T@TreeDomainType) Int)
(declare-fun getLeft (T@TreeDomainType) T@TreeDomainType)
(declare-fun getRight (T@TreeDomainType) T@TreeDomainType)
(declare-fun |Seq#Contains_2867| (T@Seq_2867 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2867)
(declare-fun |Seq#Contains_17408| (T@Seq_17408 T@TreeDomainType) Bool)
(declare-fun |Seq#Skolem_17408| (T@Seq_17408 T@TreeDomainType) Int)
(declare-fun |Seq#Skolem_2867| (T@Seq_2867 Int) Int)
(declare-fun height_2 (T@PolymorphicMapType_9587 T@TreeDomainType) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_9587 T@PolymorphicMapType_9587 T@PolymorphicMapType_9608) Bool)
(declare-fun IsPredicateField_9647_25779 (T@Field_9647_25688) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_9647 (T@Field_9647_25688) T@Field_9647_25821)
(declare-fun HasDirectPerm_9647_25752 (T@PolymorphicMapType_9608 T@Ref T@Field_9647_25688) Bool)
(declare-fun IsWandField_9647_27328 (T@Field_9647_25688) Bool)
(declare-fun WandMaskField_9647 (T@Field_9647_25688) T@Field_9647_25821)
(declare-fun |Seq#Singleton_6380| (T@TreeDomainType) T@Seq_17408)
(declare-fun |Seq#Singleton_2867| (Int) T@Seq_2867)
(declare-fun |Seq#Append_6399| (T@Seq_17408 T@Seq_17408) T@Seq_17408)
(declare-fun |Seq#Append_2867| (T@Seq_2867 T@Seq_2867) T@Seq_2867)
(declare-fun isLeaf (T@TreeDomainType) Bool)
(declare-fun isNode (T@TreeDomainType) Bool)
(declare-fun dummyHeap () T@PolymorphicMapType_9587)
(declare-fun ZeroMask () T@PolymorphicMapType_9608)
(declare-fun InsidePredicate_9647_9647 (T@Field_9647_25688 T@FrameType T@Field_9647_25688 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_9647_30291 (T@Field_9647_25821) Bool)
(declare-fun IsWandField_9647_30307 (T@Field_9647_25821) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_9647_9661 (T@Field_9660_9661) Bool)
(declare-fun IsWandField_9647_9661 (T@Field_9660_9661) Bool)
(declare-fun IsPredicateField_9647_53 (T@Field_9647_53) Bool)
(declare-fun IsWandField_9647_53 (T@Field_9647_53) Bool)
(declare-fun HasDirectPerm_9647_30662 (T@PolymorphicMapType_9608 T@Ref T@Field_9647_25821) Bool)
(declare-fun HasDirectPerm_9647_9661 (T@PolymorphicMapType_9608 T@Ref T@Field_9660_9661) Bool)
(declare-fun HasDirectPerm_9647_53 (T@PolymorphicMapType_9608 T@Ref T@Field_9647_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_9608 T@PolymorphicMapType_9608 T@PolymorphicMapType_9608) Bool)
(declare-fun |Seq#Equal_17408| (T@Seq_17408 T@Seq_17408) Bool)
(declare-fun |Seq#Equal_2867| (T@Seq_2867 T@Seq_2867) Bool)
(declare-fun |Seq#ContainsTrigger_6385| (T@Seq_17408 T@TreeDomainType) Bool)
(declare-fun |Seq#ContainsTrigger_2867| (T@Seq_2867 Int) Bool)
(declare-fun |height#frame| (T@FrameType T@TreeDomainType) Int)
(declare-fun |Seq#SkolemDiff_17408| (T@Seq_17408 T@Seq_17408) Int)
(declare-fun |Seq#SkolemDiff_2867| (T@Seq_2867 T@Seq_2867) Int)
(declare-fun AssumeFunctionsAbove () Int)
(assert (distinct type_Leaf type_Node)
)
(assert (forall ((s T@Seq_17408) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_6385| s)) (= (|Seq#Length_6385| (|Seq#Drop_6385| s n)) (- (|Seq#Length_6385| s) n))) (=> (< (|Seq#Length_6385| s) n) (= (|Seq#Length_6385| (|Seq#Drop_6385| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_6385| (|Seq#Drop_6385| s n)) (|Seq#Length_6385| s))))
 :qid |stdinbpl.276:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_6385| (|Seq#Drop_6385| s n)))
 :pattern ( (|Seq#Length_6385| s) (|Seq#Drop_6385| s n))
)))
(assert (forall ((s@@0 T@Seq_2867) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_2867| s@@0)) (= (|Seq#Length_2867| (|Seq#Drop_2867| s@@0 n@@0)) (- (|Seq#Length_2867| s@@0) n@@0))) (=> (< (|Seq#Length_2867| s@@0) n@@0) (= (|Seq#Length_2867| (|Seq#Drop_2867| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_2867| (|Seq#Drop_2867| s@@0 n@@0)) (|Seq#Length_2867| s@@0))))
 :qid |stdinbpl.276:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2867| (|Seq#Drop_2867| s@@0 n@@0)))
 :pattern ( (|Seq#Length_2867| s@@0) (|Seq#Drop_2867| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_9587) (Heap1 T@PolymorphicMapType_9587) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_9587) (Mask T@PolymorphicMapType_9608) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_9587) (Heap1@@0 T@PolymorphicMapType_9587) (Heap2 T@PolymorphicMapType_9587) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_9647_25821) ) (!  (not (select (|PolymorphicMapType_10136_9647_26801#PolymorphicMapType_10136| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10136_9647_26801#PolymorphicMapType_10136| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_9647_25688) ) (!  (not (select (|PolymorphicMapType_10136_9647_25688#PolymorphicMapType_10136| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10136_9647_25688#PolymorphicMapType_10136| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_9660_9661) ) (!  (not (select (|PolymorphicMapType_10136_9647_9661#PolymorphicMapType_10136| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10136_9647_9661#PolymorphicMapType_10136| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_9647_53) ) (!  (not (select (|PolymorphicMapType_10136_9647_53#PolymorphicMapType_10136| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10136_9647_53#PolymorphicMapType_10136| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((v_2 Int) (lft T@TreeDomainType) (rgt_1 T@TreeDomainType) ) (! (= (vtype (Node_1 v_2 lft rgt_1)) type_Node)
 :qid |stdinbpl.614:15|
 :skolemid |63|
 :pattern ( (vtype (Node_1 v_2 lft rgt_1)))
)))
(assert (forall ((s@@1 T@Seq_17408) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_6385| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_6385| (|Seq#Drop_6385| s@@1 n@@1) j) (|Seq#Index_6385| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.297:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_6385| (|Seq#Drop_6385| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_2867) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_2867| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_2867| (|Seq#Drop_2867| s@@2 n@@2) j@@0) (|Seq#Index_2867| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.297:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2867| (|Seq#Drop_2867| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_6385| |Seq#Empty_6394|) 0))
(assert (= (|Seq#Length_2867| |Seq#Empty_2867|) 0))
(assert (= (vtype Leaf) type_Leaf))
(assert (forall ((Heap@@0 T@PolymorphicMapType_9587) (t_2 T@TreeDomainType) ) (! (dummyFunction_3611 (|height#triggerStateless| t_2))
 :qid |stdinbpl.639:15|
 :skolemid |67|
 :pattern ( (|height'| Heap@@0 t_2))
)))
(assert (forall ((s@@3 T@Seq_17408) (i Int) (v T@TreeDomainType) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_6385| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_6385| (|Seq#Update_6385| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_6385| (|Seq#Update_6385| s@@3 i v) n@@3) (|Seq#Index_6385| s@@3 n@@3)))))
 :qid |stdinbpl.252:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_6385| (|Seq#Update_6385| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_6385| s@@3 n@@3) (|Seq#Update_6385| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_2867) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_2867| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_2867| s@@4 n@@4)))))
 :qid |stdinbpl.252:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2867| (|Seq#Update_2867| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_2867| s@@4 n@@4) (|Seq#Update_2867| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_17408) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_6385| s@@5)) (= (|Seq#Length_6385| (|Seq#Take_6385| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_6385| s@@5) n@@5) (= (|Seq#Length_6385| (|Seq#Take_6385| s@@5 n@@5)) (|Seq#Length_6385| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_6385| (|Seq#Take_6385| s@@5 n@@5)) 0)))
 :qid |stdinbpl.263:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_6385| (|Seq#Take_6385| s@@5 n@@5)))
 :pattern ( (|Seq#Take_6385| s@@5 n@@5) (|Seq#Length_6385| s@@5))
)))
(assert (forall ((s@@6 T@Seq_2867) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_2867| s@@6)) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_2867| s@@6) n@@6) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@6 n@@6)) (|Seq#Length_2867| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@6 n@@6)) 0)))
 :qid |stdinbpl.263:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2867| (|Seq#Take_2867| s@@6 n@@6)))
 :pattern ( (|Seq#Take_2867| s@@6 n@@6) (|Seq#Length_2867| s@@6))
)))
(assert (forall ((v_2@@0 Int) (lft@@0 T@TreeDomainType) (rgt_1@@0 T@TreeDomainType) ) (!  (and (= (getVal (Node_1 v_2@@0 lft@@0 rgt_1@@0)) v_2@@0) (and (= (getLeft (Node_1 v_2@@0 lft@@0 rgt_1@@0)) lft@@0) (= (getRight (Node_1 v_2@@0 lft@@0 rgt_1@@0)) rgt_1@@0)))
 :qid |stdinbpl.605:15|
 :skolemid |62|
 :pattern ( (getVal (Node_1 v_2@@0 lft@@0 rgt_1@@0)))
 :pattern ( (getLeft (Node_1 v_2@@0 lft@@0 rgt_1@@0)))
 :pattern ( (getRight (Node_1 v_2@@0 lft@@0 rgt_1@@0)))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_2867| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.537:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2867| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_17408) (x T@TreeDomainType) ) (!  (=> (|Seq#Contains_17408| s@@7 x) (and (and (<= 0 (|Seq#Skolem_17408| s@@7 x)) (< (|Seq#Skolem_17408| s@@7 x) (|Seq#Length_6385| s@@7))) (= (|Seq#Index_6385| s@@7 (|Seq#Skolem_17408| s@@7 x)) x)))
 :qid |stdinbpl.395:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_17408| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_2867) (x@@0 Int) ) (!  (=> (|Seq#Contains_2867| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_2867| s@@8 x@@0)) (< (|Seq#Skolem_2867| s@@8 x@@0) (|Seq#Length_2867| s@@8))) (= (|Seq#Index_2867| s@@8 (|Seq#Skolem_2867| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.395:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2867| s@@8 x@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_9587) (t_2@@0 T@TreeDomainType) ) (!  (and (= (height_2 Heap@@1 t_2@@0) (|height'| Heap@@1 t_2@@0)) (dummyFunction_3611 (|height#triggerStateless| t_2@@0)))
 :qid |stdinbpl.635:15|
 :skolemid |66|
 :pattern ( (height_2 Heap@@1 t_2@@0))
)))
(assert (forall ((s@@9 T@Seq_2867) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_2867| s@@9 n@@7) s@@9))
 :qid |stdinbpl.379:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_2867| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_17408) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_6385| s@@10 n@@8) s@@10))
 :qid |stdinbpl.379:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_6385| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.232:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.230:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_9587) (ExhaleHeap T@PolymorphicMapType_9587) (Mask@@0 T@PolymorphicMapType_9608) (pm_f_1 T@Field_9647_25688) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_9647_25752 Mask@@0 null pm_f_1) (IsPredicateField_9647_25779 pm_f_1)) (= (select (|PolymorphicMapType_9587_9647_25865#PolymorphicMapType_9587| Heap@@2) null (PredicateMaskField_9647 pm_f_1)) (select (|PolymorphicMapType_9587_9647_25865#PolymorphicMapType_9587| ExhaleHeap) null (PredicateMaskField_9647 pm_f_1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (IsPredicateField_9647_25779 pm_f_1) (select (|PolymorphicMapType_9587_9647_25865#PolymorphicMapType_9587| ExhaleHeap) null (PredicateMaskField_9647 pm_f_1)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_9587) (ExhaleHeap@@0 T@PolymorphicMapType_9587) (Mask@@1 T@PolymorphicMapType_9608) (pm_f_1@@0 T@Field_9647_25688) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_9647_25752 Mask@@1 null pm_f_1@@0) (IsWandField_9647_27328 pm_f_1@@0)) (= (select (|PolymorphicMapType_9587_9647_25865#PolymorphicMapType_9587| Heap@@3) null (WandMaskField_9647 pm_f_1@@0)) (select (|PolymorphicMapType_9587_9647_25865#PolymorphicMapType_9587| ExhaleHeap@@0) null (WandMaskField_9647 pm_f_1@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (IsWandField_9647_27328 pm_f_1@@0) (select (|PolymorphicMapType_9587_9647_25865#PolymorphicMapType_9587| ExhaleHeap@@0) null (WandMaskField_9647 pm_f_1@@0)))
)))
(assert (forall ((x@@1 T@TreeDomainType) (y T@TreeDomainType) ) (! (= (|Seq#Contains_17408| (|Seq#Singleton_6380| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.520:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_17408| (|Seq#Singleton_6380| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_2867| (|Seq#Singleton_2867| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.520:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2867| (|Seq#Singleton_2867| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_17408) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_6385| s@@11))) (= (|Seq#Index_6385| (|Seq#Take_6385| s@@11 n@@9) j@@3) (|Seq#Index_6385| s@@11 j@@3)))
 :qid |stdinbpl.271:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_6385| (|Seq#Take_6385| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_6385| s@@11 j@@3) (|Seq#Take_6385| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_2867) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_2867| s@@12))) (= (|Seq#Index_2867| (|Seq#Take_2867| s@@12 n@@10) j@@4) (|Seq#Index_2867| s@@12 j@@4)))
 :qid |stdinbpl.271:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2867| (|Seq#Take_2867| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_2867| s@@12 j@@4) (|Seq#Take_2867| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_17408) (t T@Seq_17408) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_6385| s@@13))) (< n@@11 (|Seq#Length_6385| (|Seq#Append_6399| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_6385| s@@13)) (|Seq#Length_6385| s@@13)) n@@11) (= (|Seq#Take_6385| (|Seq#Append_6399| s@@13 t) n@@11) (|Seq#Append_6399| s@@13 (|Seq#Take_6385| t (|Seq#Sub| n@@11 (|Seq#Length_6385| s@@13)))))))
 :qid |stdinbpl.356:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_6385| (|Seq#Append_6399| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_2867) (t@@0 T@Seq_2867) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_2867| s@@14))) (< n@@12 (|Seq#Length_2867| (|Seq#Append_2867| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_2867| s@@14)) (|Seq#Length_2867| s@@14)) n@@12) (= (|Seq#Take_2867| (|Seq#Append_2867| s@@14 t@@0) n@@12) (|Seq#Append_2867| s@@14 (|Seq#Take_2867| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_2867| s@@14)))))))
 :qid |stdinbpl.356:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2867| (|Seq#Append_2867| s@@14 t@@0) n@@12))
)))
(assert (forall ((t_2@@1 T@TreeDomainType) ) (! (= (isLeaf t_2@@1) (= (vtype t_2@@1) type_Leaf))
 :qid |stdinbpl.581:15|
 :skolemid |58|
 :pattern ( (isLeaf t_2@@1))
 :pattern ( (vtype t_2@@1))
)))
(assert (forall ((t_2@@2 T@TreeDomainType) ) (! (= (isNode t_2@@2) (= (vtype t_2@@2) type_Node))
 :qid |stdinbpl.593:15|
 :skolemid |60|
 :pattern ( (isNode t_2@@2))
 :pattern ( (vtype t_2@@2))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_9587) (ExhaleHeap@@1 T@PolymorphicMapType_9587) (Mask@@2 T@PolymorphicMapType_9608) (pm_f_1@@1 T@Field_9647_25688) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_9647_25752 Mask@@2 null pm_f_1@@1) (IsPredicateField_9647_25779 pm_f_1@@1)) (and (and (and (forall ((o2_1 T@Ref) (f_9 T@Field_9647_53) ) (!  (=> (select (|PolymorphicMapType_10136_9647_53#PolymorphicMapType_10136| (select (|PolymorphicMapType_9587_9647_25865#PolymorphicMapType_9587| Heap@@4) null (PredicateMaskField_9647 pm_f_1@@1))) o2_1 f_9) (= (select (|PolymorphicMapType_9587_6108_53#PolymorphicMapType_9587| Heap@@4) o2_1 f_9) (select (|PolymorphicMapType_9587_6108_53#PolymorphicMapType_9587| ExhaleHeap@@1) o2_1 f_9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9587_6108_53#PolymorphicMapType_9587| ExhaleHeap@@1) o2_1 f_9))
)) (forall ((o2_1@@0 T@Ref) (f_9@@0 T@Field_9660_9661) ) (!  (=> (select (|PolymorphicMapType_10136_9647_9661#PolymorphicMapType_10136| (select (|PolymorphicMapType_9587_9647_25865#PolymorphicMapType_9587| Heap@@4) null (PredicateMaskField_9647 pm_f_1@@1))) o2_1@@0 f_9@@0) (= (select (|PolymorphicMapType_9587_6111_6112#PolymorphicMapType_9587| Heap@@4) o2_1@@0 f_9@@0) (select (|PolymorphicMapType_9587_6111_6112#PolymorphicMapType_9587| ExhaleHeap@@1) o2_1@@0 f_9@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9587_6111_6112#PolymorphicMapType_9587| ExhaleHeap@@1) o2_1@@0 f_9@@0))
))) (forall ((o2_1@@1 T@Ref) (f_9@@1 T@Field_9647_25688) ) (!  (=> (select (|PolymorphicMapType_10136_9647_25688#PolymorphicMapType_10136| (select (|PolymorphicMapType_9587_9647_25865#PolymorphicMapType_9587| Heap@@4) null (PredicateMaskField_9647 pm_f_1@@1))) o2_1@@1 f_9@@1) (= (select (|PolymorphicMapType_9587_9647_25688#PolymorphicMapType_9587| Heap@@4) o2_1@@1 f_9@@1) (select (|PolymorphicMapType_9587_9647_25688#PolymorphicMapType_9587| ExhaleHeap@@1) o2_1@@1 f_9@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9587_9647_25688#PolymorphicMapType_9587| ExhaleHeap@@1) o2_1@@1 f_9@@1))
))) (forall ((o2_1@@2 T@Ref) (f_9@@2 T@Field_9647_25821) ) (!  (=> (select (|PolymorphicMapType_10136_9647_26801#PolymorphicMapType_10136| (select (|PolymorphicMapType_9587_9647_25865#PolymorphicMapType_9587| Heap@@4) null (PredicateMaskField_9647 pm_f_1@@1))) o2_1@@2 f_9@@2) (= (select (|PolymorphicMapType_9587_9647_25865#PolymorphicMapType_9587| Heap@@4) o2_1@@2 f_9@@2) (select (|PolymorphicMapType_9587_9647_25865#PolymorphicMapType_9587| ExhaleHeap@@1) o2_1@@2 f_9@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9587_9647_25865#PolymorphicMapType_9587| ExhaleHeap@@1) o2_1@@2 f_9@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (IsPredicateField_9647_25779 pm_f_1@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_9587) (ExhaleHeap@@2 T@PolymorphicMapType_9587) (Mask@@3 T@PolymorphicMapType_9608) (pm_f_1@@2 T@Field_9647_25688) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_9647_25752 Mask@@3 null pm_f_1@@2) (IsWandField_9647_27328 pm_f_1@@2)) (and (and (and (forall ((o2_1@@3 T@Ref) (f_9@@3 T@Field_9647_53) ) (!  (=> (select (|PolymorphicMapType_10136_9647_53#PolymorphicMapType_10136| (select (|PolymorphicMapType_9587_9647_25865#PolymorphicMapType_9587| Heap@@5) null (WandMaskField_9647 pm_f_1@@2))) o2_1@@3 f_9@@3) (= (select (|PolymorphicMapType_9587_6108_53#PolymorphicMapType_9587| Heap@@5) o2_1@@3 f_9@@3) (select (|PolymorphicMapType_9587_6108_53#PolymorphicMapType_9587| ExhaleHeap@@2) o2_1@@3 f_9@@3)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9587_6108_53#PolymorphicMapType_9587| ExhaleHeap@@2) o2_1@@3 f_9@@3))
)) (forall ((o2_1@@4 T@Ref) (f_9@@4 T@Field_9660_9661) ) (!  (=> (select (|PolymorphicMapType_10136_9647_9661#PolymorphicMapType_10136| (select (|PolymorphicMapType_9587_9647_25865#PolymorphicMapType_9587| Heap@@5) null (WandMaskField_9647 pm_f_1@@2))) o2_1@@4 f_9@@4) (= (select (|PolymorphicMapType_9587_6111_6112#PolymorphicMapType_9587| Heap@@5) o2_1@@4 f_9@@4) (select (|PolymorphicMapType_9587_6111_6112#PolymorphicMapType_9587| ExhaleHeap@@2) o2_1@@4 f_9@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9587_6111_6112#PolymorphicMapType_9587| ExhaleHeap@@2) o2_1@@4 f_9@@4))
))) (forall ((o2_1@@5 T@Ref) (f_9@@5 T@Field_9647_25688) ) (!  (=> (select (|PolymorphicMapType_10136_9647_25688#PolymorphicMapType_10136| (select (|PolymorphicMapType_9587_9647_25865#PolymorphicMapType_9587| Heap@@5) null (WandMaskField_9647 pm_f_1@@2))) o2_1@@5 f_9@@5) (= (select (|PolymorphicMapType_9587_9647_25688#PolymorphicMapType_9587| Heap@@5) o2_1@@5 f_9@@5) (select (|PolymorphicMapType_9587_9647_25688#PolymorphicMapType_9587| ExhaleHeap@@2) o2_1@@5 f_9@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9587_9647_25688#PolymorphicMapType_9587| ExhaleHeap@@2) o2_1@@5 f_9@@5))
))) (forall ((o2_1@@6 T@Ref) (f_9@@6 T@Field_9647_25821) ) (!  (=> (select (|PolymorphicMapType_10136_9647_26801#PolymorphicMapType_10136| (select (|PolymorphicMapType_9587_9647_25865#PolymorphicMapType_9587| Heap@@5) null (WandMaskField_9647 pm_f_1@@2))) o2_1@@6 f_9@@6) (= (select (|PolymorphicMapType_9587_9647_25865#PolymorphicMapType_9587| Heap@@5) o2_1@@6 f_9@@6) (select (|PolymorphicMapType_9587_9647_25865#PolymorphicMapType_9587| ExhaleHeap@@2) o2_1@@6 f_9@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9587_9647_25865#PolymorphicMapType_9587| ExhaleHeap@@2) o2_1@@6 f_9@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (IsWandField_9647_27328 pm_f_1@@2))
)))
(assert (forall ((t_2@@3 T@TreeDomainType) ) (!  (=> (isLeaf t_2@@3) (= t_2@@3 Leaf))
 :qid |stdinbpl.587:15|
 :skolemid |59|
 :pattern ( (isLeaf t_2@@3))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@6 T@PolymorphicMapType_9587) (ExhaleHeap@@3 T@PolymorphicMapType_9587) (Mask@@4 T@PolymorphicMapType_9608) (o_4 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_9587_6108_53#PolymorphicMapType_9587| Heap@@6) o_4 $allocated) (select (|PolymorphicMapType_9587_6108_53#PolymorphicMapType_9587| ExhaleHeap@@3) o_4 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_9587_6108_53#PolymorphicMapType_9587| ExhaleHeap@@3) o_4 $allocated))
)))
(assert (forall ((p T@Field_9647_25688) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_9647_9647 p v_1 p w))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_9647_9647 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_17408) (s1 T@Seq_17408) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_6394|)) (not (= s1 |Seq#Empty_6394|))) (<= (|Seq#Length_6385| s0) n@@13)) (< n@@13 (|Seq#Length_6385| (|Seq#Append_6399| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_6385| s0)) (|Seq#Length_6385| s0)) n@@13) (= (|Seq#Index_6385| (|Seq#Append_6399| s0 s1) n@@13) (|Seq#Index_6385| s1 (|Seq#Sub| n@@13 (|Seq#Length_6385| s0))))))
 :qid |stdinbpl.243:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_6385| (|Seq#Append_6399| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_2867) (s1@@0 T@Seq_2867) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_2867|)) (not (= s1@@0 |Seq#Empty_2867|))) (<= (|Seq#Length_2867| s0@@0) n@@14)) (< n@@14 (|Seq#Length_2867| (|Seq#Append_2867| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_2867| s0@@0)) (|Seq#Length_2867| s0@@0)) n@@14) (= (|Seq#Index_2867| (|Seq#Append_2867| s0@@0 s1@@0) n@@14) (|Seq#Index_2867| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_2867| s0@@0))))))
 :qid |stdinbpl.243:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_2867| s0@@0 s1@@0) n@@14))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_9587) (ExhaleHeap@@4 T@PolymorphicMapType_9587) (Mask@@5 T@PolymorphicMapType_9608) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (succHeap Heap@@7 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_9608) (o_2@@3 T@Ref) (f_4@@3 T@Field_9647_25821) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_9608_9647_29382#PolymorphicMapType_9608| Mask@@6) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_9647_30291 f_4@@3))) (not (IsWandField_9647_30307 f_4@@3))) (<= (select (|PolymorphicMapType_9608_9647_29382#PolymorphicMapType_9608| Mask@@6) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_9608_9647_29382#PolymorphicMapType_9608| Mask@@6) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_9608) (o_2@@4 T@Ref) (f_4@@4 T@Field_9647_25688) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_9608_9647_25688#PolymorphicMapType_9608| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_9647_25779 f_4@@4))) (not (IsWandField_9647_27328 f_4@@4))) (<= (select (|PolymorphicMapType_9608_9647_25688#PolymorphicMapType_9608| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_9608_9647_25688#PolymorphicMapType_9608| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_9608) (o_2@@5 T@Ref) (f_4@@5 T@Field_9660_9661) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_9608_9647_9661#PolymorphicMapType_9608| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_9647_9661 f_4@@5))) (not (IsWandField_9647_9661 f_4@@5))) (<= (select (|PolymorphicMapType_9608_9647_9661#PolymorphicMapType_9608| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_9608_9647_9661#PolymorphicMapType_9608| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_9608) (o_2@@6 T@Ref) (f_4@@6 T@Field_9647_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_9608_9647_53#PolymorphicMapType_9608| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_9647_53 f_4@@6))) (not (IsWandField_9647_53 f_4@@6))) (<= (select (|PolymorphicMapType_9608_9647_53#PolymorphicMapType_9608| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_9608_9647_53#PolymorphicMapType_9608| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_9608) (o_2@@7 T@Ref) (f_4@@7 T@Field_9647_25821) ) (! (= (HasDirectPerm_9647_30662 Mask@@10 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_9608_9647_29382#PolymorphicMapType_9608| Mask@@10) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9647_30662 Mask@@10 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_9608) (o_2@@8 T@Ref) (f_4@@8 T@Field_9647_25688) ) (! (= (HasDirectPerm_9647_25752 Mask@@11 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_9608_9647_25688#PolymorphicMapType_9608| Mask@@11) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9647_25752 Mask@@11 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_9608) (o_2@@9 T@Ref) (f_4@@9 T@Field_9660_9661) ) (! (= (HasDirectPerm_9647_9661 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_9608_9647_9661#PolymorphicMapType_9608| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9647_9661 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_9608) (o_2@@10 T@Ref) (f_4@@10 T@Field_9647_53) ) (! (= (HasDirectPerm_9647_53 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_9608_9647_53#PolymorphicMapType_9608| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9647_53 Mask@@13 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.162:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2867| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.535:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2867| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_9587) (ExhaleHeap@@5 T@PolymorphicMapType_9587) (Mask@@14 T@PolymorphicMapType_9608) (o_4@@0 T@Ref) (f_9@@7 T@Field_9647_25821) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@14) (=> (HasDirectPerm_9647_30662 Mask@@14 o_4@@0 f_9@@7) (= (select (|PolymorphicMapType_9587_9647_25865#PolymorphicMapType_9587| Heap@@8) o_4@@0 f_9@@7) (select (|PolymorphicMapType_9587_9647_25865#PolymorphicMapType_9587| ExhaleHeap@@5) o_4@@0 f_9@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@14) (select (|PolymorphicMapType_9587_9647_25865#PolymorphicMapType_9587| ExhaleHeap@@5) o_4@@0 f_9@@7))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_9587) (ExhaleHeap@@6 T@PolymorphicMapType_9587) (Mask@@15 T@PolymorphicMapType_9608) (o_4@@1 T@Ref) (f_9@@8 T@Field_9647_25688) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@15) (=> (HasDirectPerm_9647_25752 Mask@@15 o_4@@1 f_9@@8) (= (select (|PolymorphicMapType_9587_9647_25688#PolymorphicMapType_9587| Heap@@9) o_4@@1 f_9@@8) (select (|PolymorphicMapType_9587_9647_25688#PolymorphicMapType_9587| ExhaleHeap@@6) o_4@@1 f_9@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@15) (select (|PolymorphicMapType_9587_9647_25688#PolymorphicMapType_9587| ExhaleHeap@@6) o_4@@1 f_9@@8))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_9587) (ExhaleHeap@@7 T@PolymorphicMapType_9587) (Mask@@16 T@PolymorphicMapType_9608) (o_4@@2 T@Ref) (f_9@@9 T@Field_9660_9661) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@16) (=> (HasDirectPerm_9647_9661 Mask@@16 o_4@@2 f_9@@9) (= (select (|PolymorphicMapType_9587_6111_6112#PolymorphicMapType_9587| Heap@@10) o_4@@2 f_9@@9) (select (|PolymorphicMapType_9587_6111_6112#PolymorphicMapType_9587| ExhaleHeap@@7) o_4@@2 f_9@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@16) (select (|PolymorphicMapType_9587_6111_6112#PolymorphicMapType_9587| ExhaleHeap@@7) o_4@@2 f_9@@9))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_9587) (ExhaleHeap@@8 T@PolymorphicMapType_9587) (Mask@@17 T@PolymorphicMapType_9608) (o_4@@3 T@Ref) (f_9@@10 T@Field_9647_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@17) (=> (HasDirectPerm_9647_53 Mask@@17 o_4@@3 f_9@@10) (= (select (|PolymorphicMapType_9587_6108_53#PolymorphicMapType_9587| Heap@@11) o_4@@3 f_9@@10) (select (|PolymorphicMapType_9587_6108_53#PolymorphicMapType_9587| ExhaleHeap@@8) o_4@@3 f_9@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@17) (select (|PolymorphicMapType_9587_6108_53#PolymorphicMapType_9587| ExhaleHeap@@8) o_4@@3 f_9@@10))
)))
(assert (forall ((s0@@1 T@Seq_17408) (s1@@1 T@Seq_17408) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_6394|)) (not (= s1@@1 |Seq#Empty_6394|))) (= (|Seq#Length_6385| (|Seq#Append_6399| s0@@1 s1@@1)) (+ (|Seq#Length_6385| s0@@1) (|Seq#Length_6385| s1@@1))))
 :qid |stdinbpl.212:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_6385| (|Seq#Append_6399| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_2867) (s1@@2 T@Seq_2867) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_2867|)) (not (= s1@@2 |Seq#Empty_2867|))) (= (|Seq#Length_2867| (|Seq#Append_2867| s0@@2 s1@@2)) (+ (|Seq#Length_2867| s0@@2) (|Seq#Length_2867| s1@@2))))
 :qid |stdinbpl.212:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2867| (|Seq#Append_2867| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_9647_25821) ) (! (= (select (|PolymorphicMapType_9608_9647_29382#PolymorphicMapType_9608| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9608_9647_29382#PolymorphicMapType_9608| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_9647_25688) ) (! (= (select (|PolymorphicMapType_9608_9647_25688#PolymorphicMapType_9608| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9608_9647_25688#PolymorphicMapType_9608| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_9660_9661) ) (! (= (select (|PolymorphicMapType_9608_9647_9661#PolymorphicMapType_9608| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9608_9647_9661#PolymorphicMapType_9608| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_9647_53) ) (! (= (select (|PolymorphicMapType_9608_9647_53#PolymorphicMapType_9608| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9608_9647_53#PolymorphicMapType_9608| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((s@@15 T@Seq_17408) (t@@1 T@Seq_17408) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_6385| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_6385| s@@15)) (|Seq#Length_6385| s@@15)) n@@15) (= (|Seq#Drop_6385| (|Seq#Append_6399| s@@15 t@@1) n@@15) (|Seq#Drop_6385| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_6385| s@@15))))))
 :qid |stdinbpl.369:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_6385| (|Seq#Append_6399| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_2867) (t@@2 T@Seq_2867) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_2867| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_2867| s@@16)) (|Seq#Length_2867| s@@16)) n@@16) (= (|Seq#Drop_2867| (|Seq#Append_2867| s@@16 t@@2) n@@16) (|Seq#Drop_2867| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_2867| s@@16))))))
 :qid |stdinbpl.369:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_2867| (|Seq#Append_2867| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_9608) (SummandMask1 T@PolymorphicMapType_9608) (SummandMask2 T@PolymorphicMapType_9608) (o_2@@15 T@Ref) (f_4@@15 T@Field_9647_25821) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_9608_9647_29382#PolymorphicMapType_9608| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_9608_9647_29382#PolymorphicMapType_9608| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_9608_9647_29382#PolymorphicMapType_9608| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9608_9647_29382#PolymorphicMapType_9608| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9608_9647_29382#PolymorphicMapType_9608| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9608_9647_29382#PolymorphicMapType_9608| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_9608) (SummandMask1@@0 T@PolymorphicMapType_9608) (SummandMask2@@0 T@PolymorphicMapType_9608) (o_2@@16 T@Ref) (f_4@@16 T@Field_9647_25688) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_9608_9647_25688#PolymorphicMapType_9608| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_9608_9647_25688#PolymorphicMapType_9608| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_9608_9647_25688#PolymorphicMapType_9608| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9608_9647_25688#PolymorphicMapType_9608| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9608_9647_25688#PolymorphicMapType_9608| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9608_9647_25688#PolymorphicMapType_9608| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_9608) (SummandMask1@@1 T@PolymorphicMapType_9608) (SummandMask2@@1 T@PolymorphicMapType_9608) (o_2@@17 T@Ref) (f_4@@17 T@Field_9660_9661) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_9608_9647_9661#PolymorphicMapType_9608| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_9608_9647_9661#PolymorphicMapType_9608| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_9608_9647_9661#PolymorphicMapType_9608| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9608_9647_9661#PolymorphicMapType_9608| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9608_9647_9661#PolymorphicMapType_9608| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9608_9647_9661#PolymorphicMapType_9608| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_9608) (SummandMask1@@2 T@PolymorphicMapType_9608) (SummandMask2@@2 T@PolymorphicMapType_9608) (o_2@@18 T@Ref) (f_4@@18 T@Field_9647_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_9608_9647_53#PolymorphicMapType_9608| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_9608_9647_53#PolymorphicMapType_9608| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_9608_9647_53#PolymorphicMapType_9608| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9608_9647_53#PolymorphicMapType_9608| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9608_9647_53#PolymorphicMapType_9608| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9608_9647_53#PolymorphicMapType_9608| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.534:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_17408) (b T@Seq_17408) ) (!  (=> (|Seq#Equal_17408| a b) (= a b))
 :qid |stdinbpl.507:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_17408| a b))
)))
(assert (forall ((a@@0 T@Seq_2867) (b@@0 T@Seq_2867) ) (!  (=> (|Seq#Equal_2867| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.507:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_2867| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_17408) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_6385| s@@17))) (|Seq#ContainsTrigger_6385| s@@17 (|Seq#Index_6385| s@@17 i@@3)))
 :qid |stdinbpl.400:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_6385| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_2867) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_2867| s@@18))) (|Seq#ContainsTrigger_2867| s@@18 (|Seq#Index_2867| s@@18 i@@4)))
 :qid |stdinbpl.400:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2867| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_17408) (s1@@3 T@Seq_17408) ) (!  (and (=> (= s0@@3 |Seq#Empty_6394|) (= (|Seq#Append_6399| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_6394|) (= (|Seq#Append_6399| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.218:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_6399| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2867) (s1@@4 T@Seq_2867) ) (!  (and (=> (= s0@@4 |Seq#Empty_2867|) (= (|Seq#Append_2867| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_2867|) (= (|Seq#Append_2867| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.218:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_2867| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@TreeDomainType) ) (! (= (|Seq#Index_6385| (|Seq#Singleton_6380| t@@3) 0) t@@3)
 :qid |stdinbpl.222:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_6380| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_2867| (|Seq#Singleton_2867| t@@4) 0) t@@4)
 :qid |stdinbpl.222:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_2867| t@@4))
)))
(assert (forall ((s@@19 T@Seq_17408) ) (! (<= 0 (|Seq#Length_6385| s@@19))
 :qid |stdinbpl.201:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_6385| s@@19))
)))
(assert (forall ((s@@20 T@Seq_2867) ) (! (<= 0 (|Seq#Length_2867| s@@20))
 :qid |stdinbpl.201:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2867| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_17408) (s1@@5 T@Seq_17408) ) (!  (=> (|Seq#Equal_17408| s0@@5 s1@@5) (and (= (|Seq#Length_6385| s0@@5) (|Seq#Length_6385| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_6385| s0@@5))) (= (|Seq#Index_6385| s0@@5 j@@6) (|Seq#Index_6385| s1@@5 j@@6)))
 :qid |stdinbpl.497:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_6385| s0@@5 j@@6))
 :pattern ( (|Seq#Index_6385| s1@@5 j@@6))
))))
 :qid |stdinbpl.494:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_17408| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_2867) (s1@@6 T@Seq_2867) ) (!  (=> (|Seq#Equal_2867| s0@@6 s1@@6) (and (= (|Seq#Length_2867| s0@@6) (|Seq#Length_2867| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_2867| s0@@6))) (= (|Seq#Index_2867| s0@@6 j@@7) (|Seq#Index_2867| s1@@6 j@@7)))
 :qid |stdinbpl.497:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2867| s0@@6 j@@7))
 :pattern ( (|Seq#Index_2867| s1@@6 j@@7))
))))
 :qid |stdinbpl.494:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_2867| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@TreeDomainType) ) (! (= (|Seq#Length_6385| (|Seq#Singleton_6380| t@@5)) 1)
 :qid |stdinbpl.209:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_6380| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_2867| (|Seq#Singleton_2867| t@@6)) 1)
 :qid |stdinbpl.209:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_2867| t@@6))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_9587) (Mask@@18 T@PolymorphicMapType_9608) (t_2@@4 T@TreeDomainType) ) (!  (=> (state Heap@@12 Mask@@18) (= (|height'| Heap@@12 t_2@@4) (|height#frame| EmptyFrame t_2@@4)))
 :qid |stdinbpl.652:15|
 :skolemid |69|
 :pattern ( (state Heap@@12 Mask@@18) (|height'| Heap@@12 t_2@@4))
)))
(assert (forall ((s@@21 T@Seq_17408) (t@@7 T@Seq_17408) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_6385| s@@21))) (= (|Seq#Take_6385| (|Seq#Append_6399| s@@21 t@@7) n@@17) (|Seq#Take_6385| s@@21 n@@17)))
 :qid |stdinbpl.351:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_6385| (|Seq#Append_6399| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_2867) (t@@8 T@Seq_2867) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_2867| s@@22))) (= (|Seq#Take_2867| (|Seq#Append_2867| s@@22 t@@8) n@@18) (|Seq#Take_2867| s@@22 n@@18)))
 :qid |stdinbpl.351:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2867| (|Seq#Append_2867| s@@22 t@@8) n@@18))
)))
(assert (forall ((t_2@@5 T@TreeDomainType) ) (!  (or (and (= (vtype t_2@@5) type_Leaf) (= t_2@@5 Leaf)) (and (= (vtype t_2@@5) type_Node) (exists ((v_2@@1 Int) (lft@@1 T@TreeDomainType) (rgt_1@@1 T@TreeDomainType) ) (! (= t_2@@5 (Node_1 v_2@@1 lft@@1 rgt_1@@1))
 :qid |stdinbpl.622:117|
 :skolemid |64|
 :pattern ( (Node_1 v_2@@1 lft@@1 rgt_1@@1))
))))
 :qid |stdinbpl.620:15|
 :skolemid |65|
 :pattern ( (vtype t_2@@5))
)))
(assert (forall ((s@@23 T@Seq_17408) (i@@5 Int) (v@@2 T@TreeDomainType) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_6385| s@@23))) (= (|Seq#Length_6385| (|Seq#Update_6385| s@@23 i@@5 v@@2)) (|Seq#Length_6385| s@@23)))
 :qid |stdinbpl.250:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_6385| (|Seq#Update_6385| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_6385| s@@23) (|Seq#Update_6385| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_2867) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_2867| s@@24))) (= (|Seq#Length_2867| (|Seq#Update_2867| s@@24 i@@6 v@@3)) (|Seq#Length_2867| s@@24)))
 :qid |stdinbpl.250:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2867| (|Seq#Update_2867| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_2867| s@@24) (|Seq#Update_2867| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_9587) (o_3 T@Ref) (f_10 T@Field_9647_25688) (v@@4 T@FrameType) ) (! (succHeap Heap@@13 (PolymorphicMapType_9587 (|PolymorphicMapType_9587_6108_53#PolymorphicMapType_9587| Heap@@13) (|PolymorphicMapType_9587_6111_6112#PolymorphicMapType_9587| Heap@@13) (|PolymorphicMapType_9587_9647_25865#PolymorphicMapType_9587| Heap@@13) (store (|PolymorphicMapType_9587_9647_25688#PolymorphicMapType_9587| Heap@@13) o_3 f_10 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9587 (|PolymorphicMapType_9587_6108_53#PolymorphicMapType_9587| Heap@@13) (|PolymorphicMapType_9587_6111_6112#PolymorphicMapType_9587| Heap@@13) (|PolymorphicMapType_9587_9647_25865#PolymorphicMapType_9587| Heap@@13) (store (|PolymorphicMapType_9587_9647_25688#PolymorphicMapType_9587| Heap@@13) o_3 f_10 v@@4)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_9587) (o_3@@0 T@Ref) (f_10@@0 T@Field_9647_25821) (v@@5 T@PolymorphicMapType_10136) ) (! (succHeap Heap@@14 (PolymorphicMapType_9587 (|PolymorphicMapType_9587_6108_53#PolymorphicMapType_9587| Heap@@14) (|PolymorphicMapType_9587_6111_6112#PolymorphicMapType_9587| Heap@@14) (store (|PolymorphicMapType_9587_9647_25865#PolymorphicMapType_9587| Heap@@14) o_3@@0 f_10@@0 v@@5) (|PolymorphicMapType_9587_9647_25688#PolymorphicMapType_9587| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9587 (|PolymorphicMapType_9587_6108_53#PolymorphicMapType_9587| Heap@@14) (|PolymorphicMapType_9587_6111_6112#PolymorphicMapType_9587| Heap@@14) (store (|PolymorphicMapType_9587_9647_25865#PolymorphicMapType_9587| Heap@@14) o_3@@0 f_10@@0 v@@5) (|PolymorphicMapType_9587_9647_25688#PolymorphicMapType_9587| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_9587) (o_3@@1 T@Ref) (f_10@@1 T@Field_9660_9661) (v@@6 T@Ref) ) (! (succHeap Heap@@15 (PolymorphicMapType_9587 (|PolymorphicMapType_9587_6108_53#PolymorphicMapType_9587| Heap@@15) (store (|PolymorphicMapType_9587_6111_6112#PolymorphicMapType_9587| Heap@@15) o_3@@1 f_10@@1 v@@6) (|PolymorphicMapType_9587_9647_25865#PolymorphicMapType_9587| Heap@@15) (|PolymorphicMapType_9587_9647_25688#PolymorphicMapType_9587| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9587 (|PolymorphicMapType_9587_6108_53#PolymorphicMapType_9587| Heap@@15) (store (|PolymorphicMapType_9587_6111_6112#PolymorphicMapType_9587| Heap@@15) o_3@@1 f_10@@1 v@@6) (|PolymorphicMapType_9587_9647_25865#PolymorphicMapType_9587| Heap@@15) (|PolymorphicMapType_9587_9647_25688#PolymorphicMapType_9587| Heap@@15)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_9587) (o_3@@2 T@Ref) (f_10@@2 T@Field_9647_53) (v@@7 Bool) ) (! (succHeap Heap@@16 (PolymorphicMapType_9587 (store (|PolymorphicMapType_9587_6108_53#PolymorphicMapType_9587| Heap@@16) o_3@@2 f_10@@2 v@@7) (|PolymorphicMapType_9587_6111_6112#PolymorphicMapType_9587| Heap@@16) (|PolymorphicMapType_9587_9647_25865#PolymorphicMapType_9587| Heap@@16) (|PolymorphicMapType_9587_9647_25688#PolymorphicMapType_9587| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9587 (store (|PolymorphicMapType_9587_6108_53#PolymorphicMapType_9587| Heap@@16) o_3@@2 f_10@@2 v@@7) (|PolymorphicMapType_9587_6111_6112#PolymorphicMapType_9587| Heap@@16) (|PolymorphicMapType_9587_9647_25865#PolymorphicMapType_9587| Heap@@16) (|PolymorphicMapType_9587_9647_25688#PolymorphicMapType_9587| Heap@@16)))
)))
(assert (forall ((s@@25 T@Seq_17408) (t@@9 T@Seq_17408) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_6385| s@@25))) (= (|Seq#Drop_6385| (|Seq#Append_6399| s@@25 t@@9) n@@19) (|Seq#Append_6399| (|Seq#Drop_6385| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.365:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_6385| (|Seq#Append_6399| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_2867) (t@@10 T@Seq_2867) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_2867| s@@26))) (= (|Seq#Drop_2867| (|Seq#Append_2867| s@@26 t@@10) n@@20) (|Seq#Append_2867| (|Seq#Drop_2867| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.365:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_2867| (|Seq#Append_2867| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_17408) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_6385| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_6385| (|Seq#Drop_6385| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_6385| s@@27 i@@7))))
 :qid |stdinbpl.301:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_6385| s@@27 n@@21) (|Seq#Index_6385| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_2867) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_2867| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_2867| (|Seq#Drop_2867| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_2867| s@@28 i@@8))))
 :qid |stdinbpl.301:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_2867| s@@28 n@@22) (|Seq#Index_2867| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_17408) (s1@@7 T@Seq_17408) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_6394|)) (not (= s1@@7 |Seq#Empty_6394|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_6385| s0@@7))) (= (|Seq#Index_6385| (|Seq#Append_6399| s0@@7 s1@@7) n@@23) (|Seq#Index_6385| s0@@7 n@@23)))
 :qid |stdinbpl.241:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_6385| (|Seq#Append_6399| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_6385| s0@@7 n@@23) (|Seq#Append_6399| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_2867) (s1@@8 T@Seq_2867) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_2867|)) (not (= s1@@8 |Seq#Empty_2867|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_2867| s0@@8))) (= (|Seq#Index_2867| (|Seq#Append_2867| s0@@8 s1@@8) n@@24) (|Seq#Index_2867| s0@@8 n@@24)))
 :qid |stdinbpl.241:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_2867| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_2867| s0@@8 n@@24) (|Seq#Append_2867| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_17408) (s1@@9 T@Seq_17408) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_6394|)) (not (= s1@@9 |Seq#Empty_6394|))) (<= 0 m)) (< m (|Seq#Length_6385| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_6385| s0@@9)) (|Seq#Length_6385| s0@@9)) m) (= (|Seq#Index_6385| (|Seq#Append_6399| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_6385| s0@@9))) (|Seq#Index_6385| s1@@9 m))))
 :qid |stdinbpl.246:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_6385| s1@@9 m) (|Seq#Append_6399| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_2867) (s1@@10 T@Seq_2867) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_2867|)) (not (= s1@@10 |Seq#Empty_2867|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_2867| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_2867| s0@@10)) (|Seq#Length_2867| s0@@10)) m@@0) (= (|Seq#Index_2867| (|Seq#Append_2867| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_2867| s0@@10))) (|Seq#Index_2867| s1@@10 m@@0))))
 :qid |stdinbpl.246:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2867| s1@@10 m@@0) (|Seq#Append_2867| s0@@10 s1@@10))
)))
(assert (forall ((o_3@@3 T@Ref) (f_8 T@Field_9660_9661) (Heap@@17 T@PolymorphicMapType_9587) ) (!  (=> (select (|PolymorphicMapType_9587_6108_53#PolymorphicMapType_9587| Heap@@17) o_3@@3 $allocated) (select (|PolymorphicMapType_9587_6108_53#PolymorphicMapType_9587| Heap@@17) (select (|PolymorphicMapType_9587_6111_6112#PolymorphicMapType_9587| Heap@@17) o_3@@3 f_8) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_9587_6111_6112#PolymorphicMapType_9587| Heap@@17) o_3@@3 f_8))
)))
(assert (forall ((s@@29 T@Seq_17408) (x@@3 T@TreeDomainType) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_6385| s@@29))) (= (|Seq#Index_6385| s@@29 i@@9) x@@3)) (|Seq#Contains_17408| s@@29 x@@3))
 :qid |stdinbpl.398:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_17408| s@@29 x@@3) (|Seq#Index_6385| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_2867) (x@@4 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_2867| s@@30))) (= (|Seq#Index_2867| s@@30 i@@10) x@@4)) (|Seq#Contains_2867| s@@30 x@@4))
 :qid |stdinbpl.398:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2867| s@@30 x@@4) (|Seq#Index_2867| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_17408) (s1@@11 T@Seq_17408) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_17408| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_17408| s0@@11 s1@@11))) (not (= (|Seq#Length_6385| s0@@11) (|Seq#Length_6385| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_17408| s0@@11 s1@@11))) (= (|Seq#Length_6385| s0@@11) (|Seq#Length_6385| s1@@11))) (= (|Seq#SkolemDiff_17408| s0@@11 s1@@11) (|Seq#SkolemDiff_17408| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_17408| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_17408| s0@@11 s1@@11) (|Seq#Length_6385| s0@@11))) (not (= (|Seq#Index_6385| s0@@11 (|Seq#SkolemDiff_17408| s0@@11 s1@@11)) (|Seq#Index_6385| s1@@11 (|Seq#SkolemDiff_17408| s0@@11 s1@@11))))))
 :qid |stdinbpl.502:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_17408| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_2867) (s1@@12 T@Seq_2867) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_2867| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2867| s0@@12 s1@@12))) (not (= (|Seq#Length_2867| s0@@12) (|Seq#Length_2867| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2867| s0@@12 s1@@12))) (= (|Seq#Length_2867| s0@@12) (|Seq#Length_2867| s1@@12))) (= (|Seq#SkolemDiff_2867| s0@@12 s1@@12) (|Seq#SkolemDiff_2867| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_2867| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_2867| s0@@12 s1@@12) (|Seq#Length_2867| s0@@12))) (not (= (|Seq#Index_2867| s0@@12 (|Seq#SkolemDiff_2867| s0@@12 s1@@12)) (|Seq#Index_2867| s1@@12 (|Seq#SkolemDiff_2867| s0@@12 s1@@12))))))
 :qid |stdinbpl.502:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_2867| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_9647_25688) (v_1@@0 T@FrameType) (q T@Field_9647_25688) (w@@0 T@FrameType) (r T@Field_9647_25688) (u T@FrameType) ) (!  (=> (and (InsidePredicate_9647_9647 p@@1 v_1@@0 q w@@0) (InsidePredicate_9647_9647 q w@@0 r u)) (InsidePredicate_9647_9647 p@@1 v_1@@0 r u))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9647_9647 p@@1 v_1@@0 q w@@0) (InsidePredicate_9647_9647 q w@@0 r u))
)))
(assert (forall ((t_2@@6 T@TreeDomainType) ) (!  (=> (isNode t_2@@6) (= t_2@@6 (Node_1 (getVal t_2@@6) (getLeft t_2@@6) (getRight t_2@@6))))
 :qid |stdinbpl.599:15|
 :skolemid |61|
 :pattern ( (isNode t_2@@6))
 :pattern ( (Node_1 (getVal t_2@@6) (getLeft t_2@@6) (getRight t_2@@6)))
)))
(assert (forall ((s@@31 T@Seq_17408) ) (!  (=> (= (|Seq#Length_6385| s@@31) 0) (= s@@31 |Seq#Empty_6394|))
 :qid |stdinbpl.205:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_6385| s@@31))
)))
(assert (forall ((s@@32 T@Seq_2867) ) (!  (=> (= (|Seq#Length_2867| s@@32) 0) (= s@@32 |Seq#Empty_2867|))
 :qid |stdinbpl.205:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2867| s@@32))
)))
(assert (forall ((s@@33 T@Seq_17408) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_6385| s@@33 n@@25) |Seq#Empty_6394|))
 :qid |stdinbpl.381:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_6385| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_2867) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_2867| s@@34 n@@26) |Seq#Empty_2867|))
 :qid |stdinbpl.381:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_2867| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@18 T@PolymorphicMapType_9587) (Mask@@19 T@PolymorphicMapType_9608) (t_2@@7 T@TreeDomainType) ) (!  (=> (and (state Heap@@18 Mask@@19) (< AssumeFunctionsAbove 0)) (= (height_2 Heap@@18 t_2@@7) (ite (isLeaf t_2@@7) 0 (ite (> (|height'| Heap@@18 (getLeft t_2@@7)) (|height'| Heap@@18 (getRight t_2@@7))) (+ (|height'| Heap@@18 (getLeft t_2@@7)) 1) (+ (|height'| Heap@@18 (getRight t_2@@7)) 1)))))
 :qid |stdinbpl.645:15|
 :skolemid |68|
 :pattern ( (state Heap@@18 Mask@@19) (height_2 Heap@@18 t_2@@7))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun PostHeap@0 () T@PolymorphicMapType_9587)
(declare-fun j@@8 () Int)
(declare-fun next_1@2 () T@Seq_17408)
(declare-fun Heap@@19 () T@PolymorphicMapType_9587)
(declare-fun current@1 () T@Seq_17408)
(declare-fun i@@11 () Int)
(declare-fun k () Int)
(declare-fun k_6 () Int)
(declare-fun next_1@3 () T@Seq_17408)
(declare-fun j_12 () Int)
(declare-fun i_14 () Int)
(declare-fun current@2 () T@Seq_17408)
(declare-fun k_16 () Int)
(declare-fun j_6_2 () Int)
(declare-fun next_1@7 () T@Seq_17408)
(declare-fun current@3 () T@Seq_17408)
(declare-fun i_5_1 () Int)
(declare-fun k_14_2 () Int)
(declare-fun node@0 () T@TreeDomainType)
(declare-fun next_1@5 () T@Seq_17408)
(declare-fun next_1@6 () T@Seq_17408)
(declare-fun next_1@4 () T@Seq_17408)
(declare-fun res@2 () Int)
(declare-fun t_2@@8 () T@TreeDomainType)
(declare-fun res@0 () Int)
(declare-fun res@1 () Int)
(declare-fun current@0 () T@Seq_17408)
(declare-fun next_1@0 () T@Seq_17408)
(set-info :boogie-vc-id computeTreeHeight)
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
 (=> (= (ControlFlow 0 0) 113) (let ((anon79_Else_correct true))
(let ((anon79_Then_correct true))
(let ((anon78_Then_correct  (=> (and (state PostHeap@0 ZeroMask) (state PostHeap@0 ZeroMask)) (and (=> (= (ControlFlow 0 111) 109) anon79_Then_correct) (=> (= (ControlFlow 0 111) 110) anon79_Else_correct)))))
(let ((anon23_correct true))
(let ((anon90_Else_correct  (=> (and (not (and (>= j@@8 0) (and (< j@@8 (|Seq#Length_6385| next_1@2)) (forall ((k_2_2 Int) ) (!  (and (>= k_2_2 0) (and (< k_2_2 (|Seq#Length_6385| next_1@2)) (> (height_2 Heap@@19 (|Seq#Index_6385| next_1@2 j@@8)) (height_2 Heap@@19 (|Seq#Index_6385| next_1@2 k_2_2)))))
 :qid |stdinbpl.878:74|
 :skolemid |71|
 :pattern ( (|height#frame| EmptyFrame (|Seq#Index_6385| next_1@2 k_2_2)))
))))) (= (ControlFlow 0 96) 93)) anon23_correct)))
(let ((anon90_Then_correct  (=> (and (>= j@@8 0) (and (< j@@8 (|Seq#Length_6385| next_1@2)) (forall ((k_2_2@@0 Int) ) (!  (and (>= k_2_2@@0 0) (and (< k_2_2@@0 (|Seq#Length_6385| next_1@2)) (> (height_2 Heap@@19 (|Seq#Index_6385| next_1@2 j@@8)) (height_2 Heap@@19 (|Seq#Index_6385| next_1@2 k_2_2@@0)))))
 :qid |stdinbpl.878:74|
 :skolemid |71|
 :pattern ( (|height#frame| EmptyFrame (|Seq#Index_6385| next_1@2 k_2_2@@0)))
)))) (and (=> (= (ControlFlow 0 94) (- 0 95)) (= (height_2 Heap@@19 (|Seq#Index_6385| next_1@2 j@@8)) (- (height_2 Heap@@19 (|Seq#Index_6385| current@1 i@@11)) 1))) (=> (= (height_2 Heap@@19 (|Seq#Index_6385| next_1@2 j@@8)) (- (height_2 Heap@@19 (|Seq#Index_6385| current@1 i@@11)) 1)) (=> (= (ControlFlow 0 94) 93) anon23_correct))))))
(let ((anon89_Else_correct true))
(let ((anon88_Else_correct  (=> (forall ((k_1_1_1 Int) ) (!  (and (>= k_1_1_1 0) (and (< k_1_1_1 (|Seq#Length_6385| current@1)) (> (height_2 Heap@@19 (|Seq#Index_6385| current@1 i@@11)) (height_2 Heap@@19 (|Seq#Index_6385| current@1 k_1_1_1)))))
 :qid |stdinbpl.873:38|
 :skolemid |70|
 :pattern ( (|height#frame| EmptyFrame (|Seq#Index_6385| current@1 k_1_1_1)))
)) (and (and (=> (= (ControlFlow 0 97) 92) anon89_Else_correct) (=> (= (ControlFlow 0 97) 94) anon90_Then_correct)) (=> (= (ControlFlow 0 97) 96) anon90_Else_correct)))))
(let ((anon88_Then_correct  (and (=> (= (ControlFlow 0 89) (- 0 91)) (>= k 0)) (=> (>= k 0) (and (=> (= (ControlFlow 0 89) (- 0 90)) (< k (|Seq#Length_6385| current@1))) (=> (< k (|Seq#Length_6385| current@1)) (=> (= (ControlFlow 0 89) (- 0 88)) (> (height_2 Heap@@19 (|Seq#Index_6385| current@1 i@@11)) (height_2 Heap@@19 (|Seq#Index_6385| current@1 k))))))))))
(let ((anon87_Then_correct  (and (=> (= (ControlFlow 0 98) (- 0 100)) (>= i@@11 0)) (=> (>= i@@11 0) (and (=> (= (ControlFlow 0 98) (- 0 99)) (< i@@11 (|Seq#Length_6385| current@1))) (=> (< i@@11 (|Seq#Length_6385| current@1)) (and (=> (= (ControlFlow 0 98) 89) anon88_Then_correct) (=> (= (ControlFlow 0 98) 97) anon88_Else_correct))))))))
(let ((anon108_Then_correct true))
(let ((anon107_Then_correct true))
(let ((anon48_correct true))
(let ((anon107_Else_correct  (and (=> (= (ControlFlow 0 74) (- 0 76)) (>= k_6 0)) (=> (>= k_6 0) (and (=> (= (ControlFlow 0 74) (- 0 75)) (< k_6 (|Seq#Length_6385| next_1@3))) (=> (< k_6 (|Seq#Length_6385| next_1@3)) (and (=> (= (ControlFlow 0 74) 73) anon108_Then_correct) (=> (= (ControlFlow 0 74) 69) anon48_correct))))))))
(let ((anon106_Then_correct  (=> (< k_6 (|Seq#Length_6385| next_1@3)) (and (=> (= (ControlFlow 0 77) (- 0 79)) (>= j_12 0)) (=> (>= j_12 0) (and (=> (= (ControlFlow 0 77) (- 0 78)) (< j_12 (|Seq#Length_6385| next_1@3))) (=> (< j_12 (|Seq#Length_6385| next_1@3)) (and (=> (= (ControlFlow 0 77) 72) anon107_Then_correct) (=> (= (ControlFlow 0 77) 74) anon107_Else_correct)))))))))
(let ((anon106_Else_correct  (=> (and (<= (|Seq#Length_6385| next_1@3) k_6) (= (ControlFlow 0 71) 69)) anon48_correct)))
(let ((anon105_Then_correct  (=> (>= k_6 0) (and (=> (= (ControlFlow 0 80) 77) anon106_Then_correct) (=> (= (ControlFlow 0 80) 71) anon106_Else_correct)))))
(let ((anon105_Else_correct  (=> (and (> 0 k_6) (= (ControlFlow 0 70) 69)) anon48_correct)))
(let ((anon111_Then_correct true))
(let ((anon110_Then_correct true))
(let ((anon54_correct true))
(let ((anon110_Else_correct  (and (=> (= (ControlFlow 0 61) (- 0 63)) (>= i_14 0)) (=> (>= i_14 0) (and (=> (= (ControlFlow 0 61) (- 0 62)) (< i_14 (|Seq#Length_6385| current@2))) (=> (< i_14 (|Seq#Length_6385| current@2)) (and (=> (= (ControlFlow 0 61) 60) anon111_Then_correct) (=> (= (ControlFlow 0 61) 57) anon54_correct))))))))
(let ((anon109_Then_correct  (=> (and (>= j_12 0) (and (< j_12 (|Seq#Length_6385| next_1@3)) (forall ((k_9_1 Int) ) (!  (and (>= k_9_1 0) (and (< k_9_1 (|Seq#Length_6385| next_1@3)) (> (height_2 Heap@@19 (|Seq#Index_6385| next_1@3 j_12)) (height_2 Heap@@19 (|Seq#Index_6385| next_1@3 k_9_1)))))
 :qid |stdinbpl.976:88|
 :skolemid |79|
 :pattern ( (|height#frame| EmptyFrame (|Seq#Index_6385| next_1@3 k_9_1)))
)))) (and (=> (= (ControlFlow 0 64) (- 0 66)) (>= j_12 0)) (=> (>= j_12 0) (and (=> (= (ControlFlow 0 64) (- 0 65)) (< j_12 (|Seq#Length_6385| next_1@3))) (=> (< j_12 (|Seq#Length_6385| next_1@3)) (and (=> (= (ControlFlow 0 64) 59) anon110_Then_correct) (=> (= (ControlFlow 0 64) 61) anon110_Else_correct)))))))))
(let ((anon109_Else_correct  (=> (and (not (and (>= j_12 0) (and (< j_12 (|Seq#Length_6385| next_1@3)) (forall ((k_9_1@@0 Int) ) (!  (and (>= k_9_1@@0 0) (and (< k_9_1@@0 (|Seq#Length_6385| next_1@3)) (> (height_2 Heap@@19 (|Seq#Index_6385| next_1@3 j_12)) (height_2 Heap@@19 (|Seq#Index_6385| next_1@3 k_9_1@@0)))))
 :qid |stdinbpl.976:88|
 :skolemid |79|
 :pattern ( (|height#frame| EmptyFrame (|Seq#Index_6385| next_1@3 k_9_1@@0)))
))))) (= (ControlFlow 0 58) 57)) anon54_correct)))
(let ((anon103_Then_correct  (=> (< j_12 (|Seq#Length_6385| next_1@3)) (and (and (and (=> (= (ControlFlow 0 81) 64) anon109_Then_correct) (=> (= (ControlFlow 0 81) 58) anon109_Else_correct)) (=> (= (ControlFlow 0 81) 80) anon105_Then_correct)) (=> (= (ControlFlow 0 81) 70) anon105_Else_correct)))))
(let ((anon103_Else_correct  (=> (<= (|Seq#Length_6385| next_1@3) j_12) (and (=> (= (ControlFlow 0 68) 64) anon109_Then_correct) (=> (= (ControlFlow 0 68) 58) anon109_Else_correct)))))
(let ((anon102_Then_correct  (=> (>= j_12 0) (and (=> (= (ControlFlow 0 82) 81) anon103_Then_correct) (=> (= (ControlFlow 0 82) 68) anon103_Else_correct)))))
(let ((anon102_Else_correct  (=> (> 0 j_12) (and (=> (= (ControlFlow 0 67) 64) anon109_Then_correct) (=> (= (ControlFlow 0 67) 58) anon109_Else_correct)))))
(let ((anon99_Then_correct true))
(let ((anon98_Then_correct true))
(let ((anon36_correct true))
(let ((anon98_Else_correct  (and (=> (= (ControlFlow 0 50) (- 0 52)) (>= k_16 0)) (=> (>= k_16 0) (and (=> (= (ControlFlow 0 50) (- 0 51)) (< k_16 (|Seq#Length_6385| current@2))) (=> (< k_16 (|Seq#Length_6385| current@2)) (and (=> (= (ControlFlow 0 50) 49) anon99_Then_correct) (=> (= (ControlFlow 0 50) 45) anon36_correct))))))))
(let ((anon97_Then_correct  (=> (< k_16 (|Seq#Length_6385| current@2)) (and (=> (= (ControlFlow 0 53) (- 0 55)) (>= i_14 0)) (=> (>= i_14 0) (and (=> (= (ControlFlow 0 53) (- 0 54)) (< i_14 (|Seq#Length_6385| current@2))) (=> (< i_14 (|Seq#Length_6385| current@2)) (and (=> (= (ControlFlow 0 53) 48) anon98_Then_correct) (=> (= (ControlFlow 0 53) 50) anon98_Else_correct)))))))))
(let ((anon97_Else_correct  (=> (and (<= (|Seq#Length_6385| current@2) k_16) (= (ControlFlow 0 47) 45)) anon36_correct)))
(let ((anon96_Then_correct  (=> (>= k_16 0) (and (=> (= (ControlFlow 0 56) 53) anon97_Then_correct) (=> (= (ControlFlow 0 56) 47) anon97_Else_correct)))))
(let ((anon96_Else_correct  (=> (and (> 0 k_16) (= (ControlFlow 0 46) 45)) anon36_correct)))
(let ((anon55_correct true))
(let ((anon100_Then_correct  (=> (forall ((k_7_1 Int) ) (!  (and (>= k_7_1 0) (and (< k_7_1 (|Seq#Length_6385| current@2)) (> (height_2 Heap@@19 (|Seq#Index_6385| current@2 i_14)) (height_2 Heap@@19 (|Seq#Index_6385| current@2 k_7_1)))))
 :qid |stdinbpl.944:41|
 :skolemid |78|
 :pattern ( (|height#frame| EmptyFrame (|Seq#Index_6385| current@2 k_7_1)))
)) (and (and (=> (= (ControlFlow 0 83) 41) anon55_correct) (=> (= (ControlFlow 0 83) 82) anon102_Then_correct)) (=> (= (ControlFlow 0 83) 67) anon102_Else_correct)))))
(let ((anon100_Else_correct  (=> (and (not (forall ((k_7_1@@0 Int) ) (!  (and (>= k_7_1@@0 0) (and (< k_7_1@@0 (|Seq#Length_6385| current@2)) (> (height_2 Heap@@19 (|Seq#Index_6385| current@2 i_14)) (height_2 Heap@@19 (|Seq#Index_6385| current@2 k_7_1@@0)))))
 :qid |stdinbpl.944:41|
 :skolemid |78|
 :pattern ( (|height#frame| EmptyFrame (|Seq#Index_6385| current@2 k_7_1@@0)))
))) (= (ControlFlow 0 44) 41)) anon55_correct)))
(let ((anon94_Then_correct  (=> (< i_14 (|Seq#Length_6385| current@2)) (and (and (and (=> (= (ControlFlow 0 84) 83) anon100_Then_correct) (=> (= (ControlFlow 0 84) 44) anon100_Else_correct)) (=> (= (ControlFlow 0 84) 56) anon96_Then_correct)) (=> (= (ControlFlow 0 84) 46) anon96_Else_correct)))))
(let ((anon94_Else_correct  (=> (and (<= (|Seq#Length_6385| current@2) i_14) (= (ControlFlow 0 43) 41)) anon55_correct)))
(let ((anon93_Then_correct  (=> (>= i_14 0) (and (=> (= (ControlFlow 0 85) 84) anon94_Then_correct) (=> (= (ControlFlow 0 85) 43) anon94_Else_correct)))))
(let ((anon93_Else_correct  (=> (and (> 0 i_14) (= (ControlFlow 0 42) 41)) anon55_correct)))
(let ((anon92_Else_correct true))
(let ((anon91_Then_correct  (=> (state Heap@@19 ZeroMask) (and (and (=> (= (ControlFlow 0 86) 40) anon92_Else_correct) (=> (= (ControlFlow 0 86) 85) anon93_Then_correct)) (=> (= (ControlFlow 0 86) 42) anon93_Else_correct)))))
(let ((anon68_correct true))
(let ((anon118_Else_correct  (=> (and (not (and (>= j_6_2 0) (and (< j_6_2 (|Seq#Length_6385| next_1@7)) (forall ((k_16_2 Int) ) (!  (and (>= k_16_2 0) (and (< k_16_2 (|Seq#Length_6385| next_1@7)) (> (height_2 Heap@@19 (|Seq#Index_6385| next_1@7 j_6_2)) (height_2 Heap@@19 (|Seq#Index_6385| next_1@7 k_16_2)))))
 :qid |stdinbpl.1101:82|
 :skolemid |89|
 :pattern ( (|height#frame| EmptyFrame (|Seq#Index_6385| next_1@7 k_16_2)))
))))) (= (ControlFlow 0 27) 24)) anon68_correct)))
(let ((anon118_Then_correct  (=> (and (>= j_6_2 0) (and (< j_6_2 (|Seq#Length_6385| next_1@7)) (forall ((k_16_2@@0 Int) ) (!  (and (>= k_16_2@@0 0) (and (< k_16_2@@0 (|Seq#Length_6385| next_1@7)) (> (height_2 Heap@@19 (|Seq#Index_6385| next_1@7 j_6_2)) (height_2 Heap@@19 (|Seq#Index_6385| next_1@7 k_16_2@@0)))))
 :qid |stdinbpl.1101:82|
 :skolemid |89|
 :pattern ( (|height#frame| EmptyFrame (|Seq#Index_6385| next_1@7 k_16_2@@0)))
)))) (and (=> (= (ControlFlow 0 25) (- 0 26)) (= (height_2 Heap@@19 (|Seq#Index_6385| next_1@7 j_6_2)) (- (height_2 Heap@@19 (|Seq#Index_6385| current@3 i_5_1)) 1))) (=> (= (height_2 Heap@@19 (|Seq#Index_6385| next_1@7 j_6_2)) (- (height_2 Heap@@19 (|Seq#Index_6385| current@3 i_5_1)) 1)) (=> (= (ControlFlow 0 25) 24) anon68_correct))))))
(let ((anon117_Else_correct true))
(let ((anon116_Else_correct  (=> (forall ((k_15_1 Int) ) (!  (and (>= k_15_1 0) (and (< k_15_1 (|Seq#Length_6385| current@3)) (> (height_2 Heap@@19 (|Seq#Index_6385| current@3 i_5_1)) (height_2 Heap@@19 (|Seq#Index_6385| current@3 k_15_1)))))
 :qid |stdinbpl.1096:38|
 :skolemid |88|
 :pattern ( (|height#frame| EmptyFrame (|Seq#Index_6385| current@3 k_15_1)))
)) (and (and (=> (= (ControlFlow 0 28) 23) anon117_Else_correct) (=> (= (ControlFlow 0 28) 25) anon118_Then_correct)) (=> (= (ControlFlow 0 28) 27) anon118_Else_correct)))))
(let ((anon116_Then_correct  (and (=> (= (ControlFlow 0 20) (- 0 22)) (>= k_14_2 0)) (=> (>= k_14_2 0) (and (=> (= (ControlFlow 0 20) (- 0 21)) (< k_14_2 (|Seq#Length_6385| current@3))) (=> (< k_14_2 (|Seq#Length_6385| current@3)) (=> (= (ControlFlow 0 20) (- 0 19)) (> (height_2 Heap@@19 (|Seq#Index_6385| current@3 i_5_1)) (height_2 Heap@@19 (|Seq#Index_6385| current@3 k_14_2))))))))))
(let ((anon115_Then_correct  (and (=> (= (ControlFlow 0 29) (- 0 31)) (>= i_5_1 0)) (=> (>= i_5_1 0) (and (=> (= (ControlFlow 0 29) (- 0 30)) (< i_5_1 (|Seq#Length_6385| current@3))) (=> (< i_5_1 (|Seq#Length_6385| current@3)) (and (=> (= (ControlFlow 0 29) 20) anon116_Then_correct) (=> (= (ControlFlow 0 29) 28) anon116_Else_correct))))))))
(let ((anon115_Else_correct true))
(let ((anon62_correct  (=> (state Heap@@19 ZeroMask) (and (=> (= (ControlFlow 0 32) 29) anon115_Then_correct) (=> (= (ControlFlow 0 32) 18) anon115_Else_correct)))))
(let ((anon114_Else_correct  (=> (not (isNode (getRight node@0))) (=> (and (= next_1@7 next_1@5) (= (ControlFlow 0 34) 32)) anon62_correct))))
(let ((anon114_Then_correct  (=> (isNode (getRight node@0)) (=> (and (and (= next_1@6 (|Seq#Append_6399| (|Seq#Singleton_6380| (getRight node@0)) next_1@5)) (state Heap@@19 ZeroMask)) (and (= next_1@7 next_1@6) (= (ControlFlow 0 33) 32))) anon62_correct))))
(let ((anon60_correct  (=> (state Heap@@19 ZeroMask) (and (=> (= (ControlFlow 0 35) 33) anon114_Then_correct) (=> (= (ControlFlow 0 35) 34) anon114_Else_correct)))))
(let ((anon113_Else_correct  (=> (not (isNode (getLeft node@0))) (=> (and (= next_1@5 next_1@3) (= (ControlFlow 0 37) 35)) anon60_correct))))
(let ((anon113_Then_correct  (=> (isNode (getLeft node@0)) (=> (and (and (= next_1@4 (|Seq#Append_6399| (|Seq#Singleton_6380| (getLeft node@0)) next_1@3)) (state Heap@@19 ZeroMask)) (and (= next_1@5 next_1@4) (= (ControlFlow 0 36) 35))) anon60_correct))))
(let ((anon112_Then_correct  (=> (and (state Heap@@19 ZeroMask) (state Heap@@19 ZeroMask)) (=> (and (and (forall ((i_4_1 Int) ) (!  (and (>= i_4_1 0) (and (< i_4_1 (|Seq#Length_6385| current@2)) (and (forall ((k_12 Int) ) (!  (and (>= k_12 0) (and (< k_12 (|Seq#Length_6385| current@2)) (> (height_2 Heap@@19 (|Seq#Index_6385| current@2 i_4_1)) (height_2 Heap@@19 (|Seq#Index_6385| current@2 k_12)))))
 :qid |stdinbpl.1032:78|
 :skolemid |84|
 :pattern ( (|height#frame| EmptyFrame (|Seq#Index_6385| current@2 k_12)))
)) (forall ((j_5 Int) ) (!  (=> (and (>= j_5 0) (and (< j_5 (|Seq#Length_6385| next_1@3)) (forall ((k_13 Int) ) (!  (and (>= k_13 0) (and (< k_13 (|Seq#Length_6385| next_1@3)) (> (height_2 Heap@@19 (|Seq#Index_6385| next_1@3 j_5)) (height_2 Heap@@19 (|Seq#Index_6385| next_1@3 k_13)))))
 :qid |stdinbpl.1037:74|
 :skolemid |85|
 :pattern ( (|height#frame| EmptyFrame (|Seq#Index_6385| next_1@3 k_13)))
)))) (= (height_2 Heap@@19 (|Seq#Index_6385| next_1@3 j_5)) (- (height_2 Heap@@19 (|Seq#Index_6385| current@2 i_4_1)) 1)))
 :qid |stdinbpl.1035:36|
 :skolemid |86|
 :pattern ( (|height#frame| EmptyFrame (|Seq#Index_6385| next_1@3 j_5)))
)))))
 :qid |stdinbpl.1030:36|
 :skolemid |87|
 :pattern ( (|height#frame| EmptyFrame (|Seq#Index_6385| current@2 i_4_1)))
)) (state Heap@@19 ZeroMask)) (and (> (|Seq#Length_6385| current@2) 0) (state Heap@@19 ZeroMask))) (and (=> (= (ControlFlow 0 38) (- 0 39)) (< 0 (|Seq#Length_6385| current@2))) (=> (< 0 (|Seq#Length_6385| current@2)) (=> (and (and (= node@0 (|Seq#Index_6385| current@2 0)) (state Heap@@19 ZeroMask)) (and (= current@3 (|Seq#Drop_6385| current@2 1)) (state Heap@@19 ZeroMask))) (and (=> (= (ControlFlow 0 38) 36) anon113_Then_correct) (=> (= (ControlFlow 0 38) 37) anon113_Else_correct)))))))))
(let ((anon73_correct true))
(let ((anon119_Else_correct  (=> (and (not (= (|Seq#Length_6385| next_1@3) 0)) (= (ControlFlow 0 16) 13)) anon73_correct)))
(let ((anon119_Then_correct  (=> (= (|Seq#Length_6385| next_1@3) 0) (and (=> (= (ControlFlow 0 14) (- 0 15)) (= res@2 (height_2 Heap@@19 t_2@@8))) (=> (= res@2 (height_2 Heap@@19 t_2@@8)) (=> (= (ControlFlow 0 14) 13) anon73_correct))))))
(let ((anon112_Else_correct  (=> (not (> (|Seq#Length_6385| current@2) 0)) (=> (and (state Heap@@19 ZeroMask) (state Heap@@19 ZeroMask)) (=> (and (and (forall ((i_7_1 Int) ) (!  (and (>= i_7_1 0) (and (< i_7_1 (|Seq#Length_6385| current@2)) (and (forall ((k_20_1 Int) ) (!  (and (>= k_20_1 0) (and (< k_20_1 (|Seq#Length_6385| current@2)) (> (height_2 Heap@@19 (|Seq#Index_6385| current@2 i_7_1)) (height_2 Heap@@19 (|Seq#Index_6385| current@2 k_20_1)))))
 :qid |stdinbpl.1142:76|
 :skolemid |96|
 :pattern ( (|height#frame| EmptyFrame (|Seq#Index_6385| current@2 k_20_1)))
)) (forall ((j_9_1 Int) ) (!  (=> (and (>= j_9_1 0) (and (< j_9_1 (|Seq#Length_6385| next_1@3)) (forall ((k_21_1 Int) ) (!  (and (>= k_21_1 0) (and (< k_21_1 (|Seq#Length_6385| next_1@3)) (> (height_2 Heap@@19 (|Seq#Index_6385| next_1@3 j_9_1)) (height_2 Heap@@19 (|Seq#Index_6385| next_1@3 k_21_1)))))
 :qid |stdinbpl.1147:76|
 :skolemid |97|
 :pattern ( (|height#frame| EmptyFrame (|Seq#Index_6385| next_1@3 k_21_1)))
)))) (= (height_2 Heap@@19 (|Seq#Index_6385| next_1@3 j_9_1)) (- (height_2 Heap@@19 (|Seq#Index_6385| current@2 i_7_1)) 1)))
 :qid |stdinbpl.1145:34|
 :skolemid |98|
 :pattern ( (|height#frame| EmptyFrame (|Seq#Index_6385| next_1@3 j_9_1)))
)))))
 :qid |stdinbpl.1140:34|
 :skolemid |99|
 :pattern ( (|height#frame| EmptyFrame (|Seq#Index_6385| current@2 i_7_1)))
)) (state Heap@@19 ZeroMask)) (and (state Heap@@19 ZeroMask) (state Heap@@19 ZeroMask))) (and (=> (= (ControlFlow 0 17) 14) anon119_Then_correct) (=> (= (ControlFlow 0 17) 16) anon119_Else_correct)))))))
(let ((anon87_Else_correct  (=> (forall ((i_1_1_1 Int) ) (!  (and (>= i_1_1_1 0) (and (< i_1_1_1 (|Seq#Length_6385| current@1)) (and (forall ((k_4_2 Int) ) (!  (and (>= k_4_2 0) (and (< k_4_2 (|Seq#Length_6385| current@1)) (> (height_2 Heap@@19 (|Seq#Index_6385| current@1 i_1_1_1)) (height_2 Heap@@19 (|Seq#Index_6385| current@1 k_4_2)))))
 :qid |stdinbpl.898:82|
 :skolemid |74|
 :pattern ( (|height#frame| EmptyFrame (|Seq#Index_6385| current@1 k_4_2)))
)) (forall ((j_2_2 Int) ) (!  (=> (and (>= j_2_2 0) (and (< j_2_2 (|Seq#Length_6385| next_1@2)) (forall ((k_5 Int) ) (!  (and (>= k_5 0) (and (< k_5 (|Seq#Length_6385| next_1@2)) (> (height_2 Heap@@19 (|Seq#Index_6385| next_1@2 j_2_2)) (height_2 Heap@@19 (|Seq#Index_6385| next_1@2 k_5)))))
 :qid |stdinbpl.903:78|
 :skolemid |75|
 :pattern ( (|height#frame| EmptyFrame (|Seq#Index_6385| next_1@2 k_5)))
)))) (= (height_2 Heap@@19 (|Seq#Index_6385| next_1@2 j_2_2)) (- (height_2 Heap@@19 (|Seq#Index_6385| current@1 i_1_1_1)) 1)))
 :qid |stdinbpl.901:36|
 :skolemid |76|
 :pattern ( (|height#frame| EmptyFrame (|Seq#Index_6385| next_1@2 j_2_2)))
)))))
 :qid |stdinbpl.896:36|
 :skolemid |77|
 :pattern ( (|height#frame| EmptyFrame (|Seq#Index_6385| current@1 i_1_1_1)))
)) (and (and (=> (= (ControlFlow 0 87) 86) anon91_Then_correct) (=> (= (ControlFlow 0 87) 38) anon112_Then_correct)) (=> (= (ControlFlow 0 87) 17) anon112_Else_correct)))))
(let ((anon17_correct  (=> (state Heap@@19 ZeroMask) (=> (and (> (|Seq#Length_6385| current@1) 0) (state Heap@@19 ZeroMask)) (=> (and (and (= res@2 (+ res@0 1)) (state Heap@@19 ZeroMask)) (and (= next_1@2 |Seq#Empty_6394|) (state Heap@@19 ZeroMask))) (and (=> (= (ControlFlow 0 101) 98) anon87_Then_correct) (=> (= (ControlFlow 0 101) 87) anon87_Else_correct)))))))
(let ((anon86_Else_correct  (=> (and (not (= (|Seq#Length_6385| current@1) 0)) (= (ControlFlow 0 103) 101)) anon17_correct)))
(let ((anon86_Then_correct  (=> (and (and (= (|Seq#Length_6385| current@1) 0) (state Heap@@19 ZeroMask)) (and (= res@0 (height_2 Heap@@19 t_2@@8)) (= (ControlFlow 0 102) 101))) anon17_correct)))
(let ((anon85_Then_correct  (=> (state Heap@@19 ZeroMask) (and (=> (= (ControlFlow 0 104) 102) anon86_Then_correct) (=> (= (ControlFlow 0 104) 103) anon86_Else_correct)))))
(let ((anon77_correct  (=> (and (state Heap@@19 ZeroMask) (= (ControlFlow 0 7) (- 0 6))) (= res@1 (height_2 Heap@@19 t_2@@8)))))
(let ((anon76_correct  (=> (and (and (state Heap@@19 ZeroMask) (state Heap@@19 ZeroMask)) (and (= res@1 res@0) (= (ControlFlow 0 9) 7))) anon77_correct)))
(let ((anon120_Else_correct  (=> (and (not (= (|Seq#Length_6385| current@1) 0)) (= (ControlFlow 0 11) 9)) anon76_correct)))
(let ((anon120_Then_correct  (=> (and (and (= (|Seq#Length_6385| current@1) 0) (state Heap@@19 ZeroMask)) (and (= res@0 (height_2 Heap@@19 t_2@@8)) (= (ControlFlow 0 10) 9))) anon76_correct)))
(let ((anon85_Else_correct  (=> (and (not (> (|Seq#Length_6385| current@1) 0)) (state Heap@@19 ZeroMask)) (and (=> (= (ControlFlow 0 12) 10) anon120_Then_correct) (=> (= (ControlFlow 0 12) 11) anon120_Else_correct)))))
(let ((anon80_Then_correct  (=> (and (and (isLeaf t_2@@8) (state Heap@@19 ZeroMask)) (and (= res@1 0) (= (ControlFlow 0 8) 7))) anon77_correct)))
(let ((anon84_Then_correct true))
(let ((anon13_correct true))
(let ((anon84_Else_correct  (=> (and (= res@0 (height_2 Heap@@19 t_2@@8)) (= (ControlFlow 0 4) 1)) anon13_correct)))
(let ((anon83_Then_correct  (=> (and (= (|Seq#Length_6385| current@1) 0) (state Heap@@19 ZeroMask)) (and (=> (= (ControlFlow 0 5) 3) anon84_Then_correct) (=> (= (ControlFlow 0 5) 4) anon84_Else_correct)))))
(let ((anon83_Else_correct  (=> (and (not (= (|Seq#Length_6385| current@1) 0)) (= (ControlFlow 0 2) 1)) anon13_correct)))
(let ((anon81_Else_correct  (=> (not (= (|Seq#Length_6385| current@0) 0)) (and (and (and (=> (= (ControlFlow 0 107) 104) anon85_Then_correct) (=> (= (ControlFlow 0 107) 12) anon85_Else_correct)) (=> (= (ControlFlow 0 107) 5) anon83_Then_correct)) (=> (= (ControlFlow 0 107) 2) anon83_Else_correct)))))
(let ((anon81_Then_correct  (=> (= (|Seq#Length_6385| current@0) 0) (and (=> (= (ControlFlow 0 105) (- 0 106)) (= 0 (height_2 Heap@@19 t_2@@8))) (=> (= 0 (height_2 Heap@@19 t_2@@8)) (and (and (and (=> (= (ControlFlow 0 105) 104) anon85_Then_correct) (=> (= (ControlFlow 0 105) 12) anon85_Else_correct)) (=> (= (ControlFlow 0 105) 5) anon83_Then_correct)) (=> (= (ControlFlow 0 105) 2) anon83_Else_correct)))))))
(let ((anon80_Else_correct  (=> (and (not (isLeaf t_2@@8)) (= current@0 (|Seq#Singleton_6380| t_2@@8))) (=> (and (and (state Heap@@19 ZeroMask) (= next_1@0 |Seq#Empty_6394|)) (and (state Heap@@19 ZeroMask) (state Heap@@19 ZeroMask))) (and (=> (= (ControlFlow 0 108) 105) anon81_Then_correct) (=> (= (ControlFlow 0 108) 107) anon81_Else_correct))))))
(let ((anon0_correct  (=> (state Heap@@19 ZeroMask) (=> (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (and (=> (= (ControlFlow 0 112) 111) anon78_Then_correct) (=> (= (ControlFlow 0 112) 8) anon80_Then_correct)) (=> (= (ControlFlow 0 112) 108) anon80_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 113) 112) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 98) (- 100))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 98) (- 99))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 89) (- 91))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 89) (- 90))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 89) (- 88))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 29) (- 31))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 29) (- 30))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 20) (- 22))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 20) (- 21))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 14) (- 15))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
