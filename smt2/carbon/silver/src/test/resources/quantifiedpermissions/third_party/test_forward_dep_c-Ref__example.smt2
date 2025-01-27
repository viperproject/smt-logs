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
(declare-sort T@Field_41464_53 0)
(declare-sort T@Field_41477_41478 0)
(declare-sort T@Field_47552_3829 0)
(declare-sort T@Field_29141_117968 0)
(declare-sort T@Field_29141_117835 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_41425 0)) (((PolymorphicMapType_41425 (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| (Array T@Ref T@Field_47552_3829 Real)) (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| (Array T@Ref T@Field_41464_53 Real)) (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| (Array T@Ref T@Field_41477_41478 Real)) (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| (Array T@Ref T@Field_29141_117835 Real)) (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| (Array T@Ref T@Field_29141_117968 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_41953 0)) (((PolymorphicMapType_41953 (|PolymorphicMapType_41953_41464_53#PolymorphicMapType_41953| (Array T@Ref T@Field_41464_53 Bool)) (|PolymorphicMapType_41953_41464_41478#PolymorphicMapType_41953| (Array T@Ref T@Field_41477_41478 Bool)) (|PolymorphicMapType_41953_41464_3829#PolymorphicMapType_41953| (Array T@Ref T@Field_47552_3829 Bool)) (|PolymorphicMapType_41953_41464_117835#PolymorphicMapType_41953| (Array T@Ref T@Field_29141_117835 Bool)) (|PolymorphicMapType_41953_41464_119146#PolymorphicMapType_41953| (Array T@Ref T@Field_29141_117968 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_41404 0)) (((PolymorphicMapType_41404 (|PolymorphicMapType_41404_28883_53#PolymorphicMapType_41404| (Array T@Ref T@Field_41464_53 Bool)) (|PolymorphicMapType_41404_28886_28887#PolymorphicMapType_41404| (Array T@Ref T@Field_41477_41478 T@Ref)) (|PolymorphicMapType_41404_29141_3829#PolymorphicMapType_41404| (Array T@Ref T@Field_47552_3829 Int)) (|PolymorphicMapType_41404_29141_118012#PolymorphicMapType_41404| (Array T@Ref T@Field_29141_117968 T@PolymorphicMapType_41953)) (|PolymorphicMapType_41404_41464_117835#PolymorphicMapType_41404| (Array T@Ref T@Field_29141_117835 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_41464_53)
(declare-fun Ref__Integer_value () T@Field_47552_3829)
(declare-sort T@Seq_48594 0)
(declare-fun |Seq#Length_29180| (T@Seq_48594) Int)
(declare-fun |Seq#Drop_29180| (T@Seq_48594 Int) T@Seq_48594)
(declare-sort T@Seq_3707 0)
(declare-fun |Seq#Length_3707| (T@Seq_3707) Int)
(declare-fun |Seq#Drop_3707| (T@Seq_3707 Int) T@Seq_3707)
(declare-fun state (T@PolymorphicMapType_41404 T@PolymorphicMapType_41425) Bool)
(declare-fun |count_square'| (T@PolymorphicMapType_41404 Int Int Int Int Int Int T@Seq_48594 Int) Int)
(declare-fun |count_square#frame| (T@FrameType Int Int Int Int Int Int T@Seq_48594 Int) Int)
(declare-fun FrameFragment_4688 (Int) T@FrameType)
(declare-fun |count_square#condqp3| (T@PolymorphicMapType_41404 Int Int Int Int Int Int T@Seq_48594 Int) Int)
(declare-fun succHeap (T@PolymorphicMapType_41404 T@PolymorphicMapType_41404) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_41404 T@PolymorphicMapType_41404) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_41425) Bool)
(declare-fun |sum_list'| (T@PolymorphicMapType_41404 Int Int T@Seq_3707) Int)
(declare-fun dummyFunction_4136 (Int) Bool)
(declare-fun |sum_list#triggerStateless| (Int Int T@Seq_3707) Int)
(declare-fun ZeroPMask () T@PolymorphicMapType_41953)
(declare-fun |Seq#Index_29180| (T@Seq_48594 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3707| (T@Seq_3707 Int) Int)
(declare-fun |Seq#Empty_29180| () T@Seq_48594)
(declare-fun |Seq#Empty_3707| () T@Seq_3707)
(declare-fun |Seq#Update_29180| (T@Seq_48594 Int T@Ref) T@Seq_48594)
(declare-fun |Seq#Update_3707| (T@Seq_3707 Int Int) T@Seq_3707)
(declare-fun |Seq#Take_29180| (T@Seq_48594 Int) T@Seq_48594)
(declare-fun |Seq#Take_3707| (T@Seq_3707 Int) T@Seq_3707)
(declare-fun |Seq#Contains_3707| (T@Seq_3707 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3707)
(declare-fun |Seq#Contains_48594| (T@Seq_48594 T@Ref) Bool)
(declare-fun |Seq#Skolem_48594| (T@Seq_48594 T@Ref) Int)
(declare-fun |Seq#Skolem_3707| (T@Seq_3707 Int) Int)
(declare-fun sum_array (T@PolymorphicMapType_41404 Int Int Int T@Seq_48594) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |sum_array'| (T@PolymorphicMapType_41404 Int Int Int T@Seq_48594) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_41404 T@PolymorphicMapType_41404 T@PolymorphicMapType_41425) Bool)
(declare-fun IsPredicateField_29141_117926 (T@Field_29141_117835) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_29141 (T@Field_29141_117835) T@Field_29141_117968)
(declare-fun HasDirectPerm_29141_117899 (T@PolymorphicMapType_41425 T@Ref T@Field_29141_117835) Bool)
(declare-fun IsWandField_29141_119673 (T@Field_29141_117835) Bool)
(declare-fun WandMaskField_29141 (T@Field_29141_117835) T@Field_29141_117968)
(declare-fun |Seq#Singleton_29180| (T@Ref) T@Seq_48594)
(declare-fun |Seq#Singleton_3707| (Int) T@Seq_3707)
(declare-fun count_square (T@PolymorphicMapType_41404 Int Int Int Int Int Int T@Seq_48594 Int) Int)
(declare-fun |count_square#triggerStateless| (Int Int Int Int Int Int T@Seq_48594 Int) Int)
(declare-fun |Seq#Append_48594| (T@Seq_48594 T@Seq_48594) T@Seq_48594)
(declare-fun |Seq#Append_3707| (T@Seq_3707 T@Seq_3707) T@Seq_3707)
(declare-fun |sum_square#condqp2| (T@PolymorphicMapType_41404 Int Int Int Int Int Int T@Seq_48594) Int)
(declare-fun |sk_sum_square#condqp2| (Int Int) Int)
(declare-fun |sk_count_square#condqp3| (Int Int) Int)
(declare-fun dummyHeap () T@PolymorphicMapType_41404)
(declare-fun ZeroMask () T@PolymorphicMapType_41425)
(declare-fun sum_square (T@PolymorphicMapType_41404 Int Int Int Int Int Int T@Seq_48594) Int)
(declare-fun |sum_square'| (T@PolymorphicMapType_41404 Int Int Int Int Int Int T@Seq_48594) Int)
(declare-fun InsidePredicate_41464_41464 (T@Field_29141_117835 T@FrameType T@Field_29141_117835 T@FrameType) Bool)
(declare-fun IsPredicateField_29141_3829 (T@Field_47552_3829) Bool)
(declare-fun IsWandField_29141_3829 (T@Field_47552_3829) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_29141_123219 (T@Field_29141_117968) Bool)
(declare-fun IsWandField_29141_123235 (T@Field_29141_117968) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_29141_41478 (T@Field_41477_41478) Bool)
(declare-fun IsWandField_29141_41478 (T@Field_41477_41478) Bool)
(declare-fun IsPredicateField_29141_53 (T@Field_41464_53) Bool)
(declare-fun IsWandField_29141_53 (T@Field_41464_53) Bool)
(declare-fun |sum_list#frame| (T@FrameType Int Int T@Seq_3707) Int)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun HasDirectPerm_29141_123673 (T@PolymorphicMapType_41425 T@Ref T@Field_29141_117968) Bool)
(declare-fun HasDirectPerm_29141_41478 (T@PolymorphicMapType_41425 T@Ref T@Field_41477_41478) Bool)
(declare-fun HasDirectPerm_29141_53 (T@PolymorphicMapType_41425 T@Ref T@Field_41464_53) Bool)
(declare-fun HasDirectPerm_29141_3829 (T@PolymorphicMapType_41425 T@Ref T@Field_47552_3829) Bool)
(declare-fun |sum_array#triggerStateless| (Int Int Int T@Seq_48594) Int)
(declare-fun |count_list'| (T@PolymorphicMapType_41404 Int Int T@Seq_3707 Int) Int)
(declare-fun |count_list#triggerStateless| (Int Int T@Seq_3707 Int) Int)
(declare-fun |count_array'| (T@PolymorphicMapType_41404 Int Int T@Seq_48594 Int) Int)
(declare-fun |count_array#triggerStateless| (Int Int T@Seq_48594 Int) Int)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun count_list (T@PolymorphicMapType_41404 Int Int T@Seq_3707 Int) Int)
(declare-fun count_array (T@PolymorphicMapType_41404 Int Int T@Seq_48594 Int) Int)
(declare-fun sumMask (T@PolymorphicMapType_41425 T@PolymorphicMapType_41425 T@PolymorphicMapType_41425) Bool)
(declare-fun |sum_square#triggerStateless| (Int Int Int Int Int Int T@Seq_48594) Int)
(declare-fun |count_list#frame| (T@FrameType Int Int T@Seq_3707 Int) Int)
(declare-fun |Seq#Equal_48594| (T@Seq_48594 T@Seq_48594) Bool)
(declare-fun |Seq#Equal_3707| (T@Seq_3707 T@Seq_3707) Bool)
(declare-fun sum_list (T@PolymorphicMapType_41404 Int Int T@Seq_3707) Int)
(declare-fun |Seq#ContainsTrigger_29180| (T@Seq_48594 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3707| (T@Seq_3707 Int) Bool)
(declare-fun |count_array#condqp4| (T@PolymorphicMapType_41404 Int Int T@Seq_48594 Int) Int)
(declare-fun |sk_count_array#condqp4| (Int Int) Int)
(declare-fun |sum_array#condqp1| (T@PolymorphicMapType_41404 Int Int Int T@Seq_48594) Int)
(declare-fun |sk_sum_array#condqp1| (Int Int) Int)
(declare-fun |sum_square#frame| (T@FrameType Int Int Int Int Int Int T@Seq_48594) Int)
(declare-fun |Seq#SkolemDiff_48594| (T@Seq_48594 T@Seq_48594) Int)
(declare-fun |Seq#SkolemDiff_3707| (T@Seq_3707 T@Seq_3707) Int)
(declare-fun |sum_array#frame| (T@FrameType Int Int Int T@Seq_48594) Int)
(declare-fun |count_array#frame| (T@FrameType Int Int T@Seq_48594 Int) Int)
(assert (forall ((s T@Seq_48594) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_29180| s)) (= (|Seq#Length_29180| (|Seq#Drop_29180| s n)) (- (|Seq#Length_29180| s) n))) (=> (< (|Seq#Length_29180| s) n) (= (|Seq#Length_29180| (|Seq#Drop_29180| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_29180| (|Seq#Drop_29180| s n)) (|Seq#Length_29180| s))))
 :qid |stdinbpl.398:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_29180| (|Seq#Drop_29180| s n)))
 :pattern ( (|Seq#Length_29180| s) (|Seq#Drop_29180| s n))
)))
(assert (forall ((s@@0 T@Seq_3707) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3707| s@@0)) (= (|Seq#Length_3707| (|Seq#Drop_3707| s@@0 n@@0)) (- (|Seq#Length_3707| s@@0) n@@0))) (=> (< (|Seq#Length_3707| s@@0) n@@0) (= (|Seq#Length_3707| (|Seq#Drop_3707| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3707| (|Seq#Drop_3707| s@@0 n@@0)) (|Seq#Length_3707| s@@0))))
 :qid |stdinbpl.398:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3707| (|Seq#Drop_3707| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3707| s@@0) (|Seq#Drop_3707| s@@0 n@@0))
)))
(assert (forall ((Heap T@PolymorphicMapType_41404) (Mask T@PolymorphicMapType_41425) (i Int) (lo Int) (hi Int) (step Int) (vmin Int) (vmax_1 Int) (ar_1 T@Seq_48594) (v_2 Int) ) (!  (=> (state Heap Mask) (= (|count_square'| Heap i lo hi step vmin vmax_1 ar_1 v_2) (|count_square#frame| (FrameFragment_4688 (|count_square#condqp3| Heap i lo hi step vmin vmax_1 ar_1 v_2)) i lo hi step vmin vmax_1 ar_1 v_2)))
 :qid |stdinbpl.1286:15|
 :skolemid |108|
 :pattern ( (state Heap Mask) (|count_square'| Heap i lo hi step vmin vmax_1 ar_1 v_2))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_41404) (Heap1 T@PolymorphicMapType_41404) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_41404) (Mask@@0 T@PolymorphicMapType_41425) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_41404) (Heap1@@0 T@PolymorphicMapType_41404) (Heap2 T@PolymorphicMapType_41404) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_41404) (i@@0 Int) (hi@@0 Int) (ar_1@@0 T@Seq_3707) ) (! (dummyFunction_4136 (|sum_list#triggerStateless| i@@0 hi@@0 ar_1@@0))
 :qid |stdinbpl.684:15|
 :skolemid |59|
 :pattern ( (|sum_list'| Heap@@1 i@@0 hi@@0 ar_1@@0))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_29141_117968) ) (!  (not (select (|PolymorphicMapType_41953_41464_119146#PolymorphicMapType_41953| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_41953_41464_119146#PolymorphicMapType_41953| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_29141_117835) ) (!  (not (select (|PolymorphicMapType_41953_41464_117835#PolymorphicMapType_41953| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_41953_41464_117835#PolymorphicMapType_41953| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_47552_3829) ) (!  (not (select (|PolymorphicMapType_41953_41464_3829#PolymorphicMapType_41953| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_41953_41464_3829#PolymorphicMapType_41953| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_41477_41478) ) (!  (not (select (|PolymorphicMapType_41953_41464_41478#PolymorphicMapType_41953| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_41953_41464_41478#PolymorphicMapType_41953| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_41464_53) ) (!  (not (select (|PolymorphicMapType_41953_41464_53#PolymorphicMapType_41953| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_41953_41464_53#PolymorphicMapType_41953| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((s@@1 T@Seq_48594) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_29180| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_29180| (|Seq#Drop_29180| s@@1 n@@1) j) (|Seq#Index_29180| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.419:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_29180| (|Seq#Drop_29180| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3707) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3707| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3707| (|Seq#Drop_3707| s@@2 n@@2) j@@0) (|Seq#Index_3707| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.419:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3707| (|Seq#Drop_3707| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_29180| |Seq#Empty_29180|) 0))
(assert (= (|Seq#Length_3707| |Seq#Empty_3707|) 0))
(assert (forall ((s@@3 T@Seq_48594) (i@@1 Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_29180| s@@3))) (and (=> (= i@@1 n@@3) (= (|Seq#Index_29180| (|Seq#Update_29180| s@@3 i@@1 v) n@@3) v)) (=> (not (= i@@1 n@@3)) (= (|Seq#Index_29180| (|Seq#Update_29180| s@@3 i@@1 v) n@@3) (|Seq#Index_29180| s@@3 n@@3)))))
 :qid |stdinbpl.374:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_29180| (|Seq#Update_29180| s@@3 i@@1 v) n@@3))
 :pattern ( (|Seq#Index_29180| s@@3 n@@3) (|Seq#Update_29180| s@@3 i@@1 v))
)))
(assert (forall ((s@@4 T@Seq_3707) (i@@2 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3707| s@@4))) (and (=> (= i@@2 n@@4) (= (|Seq#Index_3707| (|Seq#Update_3707| s@@4 i@@2 v@@0) n@@4) v@@0)) (=> (not (= i@@2 n@@4)) (= (|Seq#Index_3707| (|Seq#Update_3707| s@@4 i@@2 v@@0) n@@4) (|Seq#Index_3707| s@@4 n@@4)))))
 :qid |stdinbpl.374:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3707| (|Seq#Update_3707| s@@4 i@@2 v@@0) n@@4))
 :pattern ( (|Seq#Index_3707| s@@4 n@@4) (|Seq#Update_3707| s@@4 i@@2 v@@0))
)))
(assert (forall ((s@@5 T@Seq_48594) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_29180| s@@5)) (= (|Seq#Length_29180| (|Seq#Take_29180| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_29180| s@@5) n@@5) (= (|Seq#Length_29180| (|Seq#Take_29180| s@@5 n@@5)) (|Seq#Length_29180| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_29180| (|Seq#Take_29180| s@@5 n@@5)) 0)))
 :qid |stdinbpl.385:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_29180| (|Seq#Take_29180| s@@5 n@@5)))
 :pattern ( (|Seq#Take_29180| s@@5 n@@5) (|Seq#Length_29180| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3707) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3707| s@@6)) (= (|Seq#Length_3707| (|Seq#Take_3707| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3707| s@@6) n@@6) (= (|Seq#Length_3707| (|Seq#Take_3707| s@@6 n@@6)) (|Seq#Length_3707| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3707| (|Seq#Take_3707| s@@6 n@@6)) 0)))
 :qid |stdinbpl.385:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3707| (|Seq#Take_3707| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3707| s@@6 n@@6) (|Seq#Length_3707| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3707| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.659:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3707| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_48594) (x T@Ref) ) (!  (=> (|Seq#Contains_48594| s@@7 x) (and (and (<= 0 (|Seq#Skolem_48594| s@@7 x)) (< (|Seq#Skolem_48594| s@@7 x) (|Seq#Length_29180| s@@7))) (= (|Seq#Index_29180| s@@7 (|Seq#Skolem_48594| s@@7 x)) x)))
 :qid |stdinbpl.517:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_48594| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3707) (x@@0 Int) ) (!  (=> (|Seq#Contains_3707| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3707| s@@8 x@@0)) (< (|Seq#Skolem_3707| s@@8 x@@0) (|Seq#Length_3707| s@@8))) (= (|Seq#Index_3707| s@@8 (|Seq#Skolem_3707| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.517:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3707| s@@8 x@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_41404) (Mask@@1 T@PolymorphicMapType_41425) (i@@3 Int) (lo@@0 Int) (hi@@1 Int) (ar_1@@1 T@Seq_48594) ) (!  (=> (and (state Heap@@2 Mask@@1) (< AssumeFunctionsAbove 1)) (=> (and (and (and (<= 0 lo@@0) (and (<= lo@@0 i@@3) (<= i@@3 hi@@1))) (<= hi@@1 (|Seq#Length_29180| ar_1@@1))) (forall ((k Int) (j@@1 Int) ) (!  (=> (and (>= k 0) (and (< k (|Seq#Length_29180| ar_1@@1)) (and (>= j@@1 0) (and (< j@@1 (|Seq#Length_29180| ar_1@@1)) (not (= k j@@1)))))) (not (= (|Seq#Index_29180| ar_1@@1 k) (|Seq#Index_29180| ar_1@@1 j@@1))))
 :qid |stdinbpl.777:126|
 :skolemid |64|
 :pattern ( (|Seq#Index_29180| ar_1@@1 k) (|Seq#Index_29180| ar_1@@1 j@@1))
))) (= (sum_array Heap@@2 i@@3 lo@@0 hi@@1 ar_1@@1) (ite (< i@@3 hi@@1) (+ (select (|PolymorphicMapType_41404_29141_3829#PolymorphicMapType_41404| Heap@@2) (|Seq#Index_29180| ar_1@@1 i@@3) Ref__Integer_value) (|sum_array'| Heap@@2 (+ i@@3 1) lo@@0 hi@@1 ar_1@@1)) 0))))
 :qid |stdinbpl.775:15|
 :skolemid |65|
 :pattern ( (state Heap@@2 Mask@@1) (sum_array Heap@@2 i@@3 lo@@0 hi@@1 ar_1@@1))
)))
(assert (forall ((s@@9 T@Seq_48594) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_29180| s@@9 n@@7) s@@9))
 :qid |stdinbpl.501:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_29180| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3707) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3707| s@@10 n@@8) s@@10))
 :qid |stdinbpl.501:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3707| s@@10 n@@8))
)))
(assert (forall ((i@@4 Int) (j@@2 Int) ) (! (= (|Seq#Sub| i@@4 j@@2) (- i@@4 j@@2))
 :qid |stdinbpl.354:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@4 j@@2))
)))
(assert (forall ((i@@5 Int) (j@@3 Int) ) (! (= (|Seq#Add| i@@5 j@@3) (+ i@@5 j@@3))
 :qid |stdinbpl.352:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@5 j@@3))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_41404) (ExhaleHeap T@PolymorphicMapType_41404) (Mask@@2 T@PolymorphicMapType_41425) (pm_f_52 T@Field_29141_117835) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@2) (=> (and (HasDirectPerm_29141_117899 Mask@@2 null pm_f_52) (IsPredicateField_29141_117926 pm_f_52)) (= (select (|PolymorphicMapType_41404_29141_118012#PolymorphicMapType_41404| Heap@@3) null (PredicateMaskField_29141 pm_f_52)) (select (|PolymorphicMapType_41404_29141_118012#PolymorphicMapType_41404| ExhaleHeap) null (PredicateMaskField_29141 pm_f_52)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@2) (IsPredicateField_29141_117926 pm_f_52) (select (|PolymorphicMapType_41404_29141_118012#PolymorphicMapType_41404| ExhaleHeap) null (PredicateMaskField_29141 pm_f_52)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_41404) (ExhaleHeap@@0 T@PolymorphicMapType_41404) (Mask@@3 T@PolymorphicMapType_41425) (pm_f_52@@0 T@Field_29141_117835) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@3) (=> (and (HasDirectPerm_29141_117899 Mask@@3 null pm_f_52@@0) (IsWandField_29141_119673 pm_f_52@@0)) (= (select (|PolymorphicMapType_41404_29141_118012#PolymorphicMapType_41404| Heap@@4) null (WandMaskField_29141 pm_f_52@@0)) (select (|PolymorphicMapType_41404_29141_118012#PolymorphicMapType_41404| ExhaleHeap@@0) null (WandMaskField_29141 pm_f_52@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@3) (IsWandField_29141_119673 pm_f_52@@0) (select (|PolymorphicMapType_41404_29141_118012#PolymorphicMapType_41404| ExhaleHeap@@0) null (WandMaskField_29141 pm_f_52@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_48594| (|Seq#Singleton_29180| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.642:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_48594| (|Seq#Singleton_29180| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3707| (|Seq#Singleton_3707| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.642:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3707| (|Seq#Singleton_3707| x@@2) y@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_41404) (i@@6 Int) (lo@@1 Int) (hi@@2 Int) (step@@0 Int) (vmin@@0 Int) (vmax_1@@0 Int) (ar_1@@2 T@Seq_48594) (v_2@@0 Int) ) (!  (and (= (count_square Heap@@5 i@@6 lo@@1 hi@@2 step@@0 vmin@@0 vmax_1@@0 ar_1@@2 v_2@@0) (|count_square'| Heap@@5 i@@6 lo@@1 hi@@2 step@@0 vmin@@0 vmax_1@@0 ar_1@@2 v_2@@0)) (dummyFunction_4136 (|count_square#triggerStateless| i@@6 lo@@1 hi@@2 step@@0 vmin@@0 vmax_1@@0 ar_1@@2 v_2@@0)))
 :qid |stdinbpl.1266:15|
 :skolemid |104|
 :pattern ( (count_square Heap@@5 i@@6 lo@@1 hi@@2 step@@0 vmin@@0 vmax_1@@0 ar_1@@2 v_2@@0))
)))
(assert (forall ((s@@11 T@Seq_48594) (n@@9 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@9)) (< j@@4 (|Seq#Length_29180| s@@11))) (= (|Seq#Index_29180| (|Seq#Take_29180| s@@11 n@@9) j@@4) (|Seq#Index_29180| s@@11 j@@4)))
 :qid |stdinbpl.393:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_29180| (|Seq#Take_29180| s@@11 n@@9) j@@4))
 :pattern ( (|Seq#Index_29180| s@@11 j@@4) (|Seq#Take_29180| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3707) (n@@10 Int) (j@@5 Int) ) (!  (=> (and (and (<= 0 j@@5) (< j@@5 n@@10)) (< j@@5 (|Seq#Length_3707| s@@12))) (= (|Seq#Index_3707| (|Seq#Take_3707| s@@12 n@@10) j@@5) (|Seq#Index_3707| s@@12 j@@5)))
 :qid |stdinbpl.393:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3707| (|Seq#Take_3707| s@@12 n@@10) j@@5))
 :pattern ( (|Seq#Index_3707| s@@12 j@@5) (|Seq#Take_3707| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_48594) (t T@Seq_48594) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_29180| s@@13))) (< n@@11 (|Seq#Length_29180| (|Seq#Append_48594| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_29180| s@@13)) (|Seq#Length_29180| s@@13)) n@@11) (= (|Seq#Take_29180| (|Seq#Append_48594| s@@13 t) n@@11) (|Seq#Append_48594| s@@13 (|Seq#Take_29180| t (|Seq#Sub| n@@11 (|Seq#Length_29180| s@@13)))))))
 :qid |stdinbpl.478:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_29180| (|Seq#Append_48594| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3707) (t@@0 T@Seq_3707) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3707| s@@14))) (< n@@12 (|Seq#Length_3707| (|Seq#Append_3707| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3707| s@@14)) (|Seq#Length_3707| s@@14)) n@@12) (= (|Seq#Take_3707| (|Seq#Append_3707| s@@14 t@@0) n@@12) (|Seq#Append_3707| s@@14 (|Seq#Take_3707| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3707| s@@14)))))))
 :qid |stdinbpl.478:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3707| (|Seq#Append_3707| s@@14 t@@0) n@@12))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_41404) (i@@7 Int) (lo@@2 Int) (hi@@3 Int) (step@@1 Int) (vmin@@1 Int) (vmax_1@@1 Int) (ar_1@@3 T@Seq_48594) (v_2@@1 Int) ) (! (dummyFunction_4136 (|count_square#triggerStateless| i@@7 lo@@2 hi@@3 step@@1 vmin@@1 vmax_1@@1 ar_1@@3 v_2@@1))
 :qid |stdinbpl.1270:15|
 :skolemid |105|
 :pattern ( (|count_square'| Heap@@6 i@@7 lo@@2 hi@@3 step@@1 vmin@@1 vmax_1@@1 ar_1@@3 v_2@@1))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_41404) (Heap1Heap T@PolymorphicMapType_41404) (i@@8 Int) (lo@@3 Int) (hi@@4 Int) (step@@2 Int) (vmin@@2 Int) (vmax_1@@2 Int) (ar_1@@4 T@Seq_48594) ) (!  (=> (and (=  (and (<= vmin@@2 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) vmax_1@@2) (and (<= lo@@3 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2) hi@@4))))  (and (<= vmin@@2 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) vmax_1@@2) (and (<= lo@@3 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2) hi@@4))))) (=> (and (<= vmin@@2 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) vmax_1@@2) (and (<= lo@@3 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2) hi@@4)))) (= (select (|PolymorphicMapType_41404_29141_3829#PolymorphicMapType_41404| Heap2Heap) (|Seq#Index_29180| ar_1@@4 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) Ref__Integer_value) (select (|PolymorphicMapType_41404_29141_3829#PolymorphicMapType_41404| Heap1Heap) (|Seq#Index_29180| ar_1@@4 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) Ref__Integer_value)))) (= (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)))
 :qid |stdinbpl.1030:15|
 :skolemid |88|
 :pattern ( (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_41404) (Heap1Heap@@0 T@PolymorphicMapType_41404) (i@@9 Int) (lo@@4 Int) (hi@@5 Int) (step@@3 Int) (vmin@@3 Int) (vmax_1@@3 Int) (ar_1@@5 T@Seq_48594) (v_2@@2 Int) ) (!  (=> (and (=  (and (<= vmin@@3 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) vmax_1@@3) (and (<= lo@@4 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) step@@3)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) step@@3) hi@@5))))  (and (<= vmin@@3 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) vmax_1@@3) (and (<= lo@@4 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) step@@3)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) step@@3) hi@@5))))) (=> (and (<= vmin@@3 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) vmax_1@@3) (and (<= lo@@4 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) step@@3)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) step@@3) hi@@5)))) (= (select (|PolymorphicMapType_41404_29141_3829#PolymorphicMapType_41404| Heap2Heap@@0) (|Seq#Index_29180| ar_1@@5 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2))) Ref__Integer_value) (select (|PolymorphicMapType_41404_29141_3829#PolymorphicMapType_41404| Heap1Heap@@0) (|Seq#Index_29180| ar_1@@5 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2))) Ref__Integer_value)))) (= (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)))
 :qid |stdinbpl.1296:15|
 :skolemid |109|
 :pattern ( (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@7 T@PolymorphicMapType_41404) (Mask@@4 T@PolymorphicMapType_41425) (i@@10 Int) (lo@@5 Int) (hi@@6 Int) (step@@4 Int) (vmin@@4 Int) (vmax_1@@4 Int) (ar_1@@6 T@Seq_48594) ) (!  (=> (and (state Heap@@7 Mask@@4) (< AssumeFunctionsAbove 2)) (=> (and (and (and (and (<= 0 lo@@5) (and (<= lo@@5 hi@@6) (and (<= hi@@6 step@@4) (> step@@4 0)))) (and (<= 0 vmin@@4) (and (<= vmin@@4 i@@10) (<= i@@10 vmax_1@@4)))) (<= vmax_1@@4 (|Seq#Length_29180| ar_1@@6))) (forall ((k@@0 Int) (j@@6 Int) ) (!  (=> (and (>= k@@0 0) (and (< k@@0 (|Seq#Length_29180| ar_1@@6)) (and (>= j@@6 0) (and (< j@@6 (|Seq#Length_29180| ar_1@@6)) (not (= k@@0 j@@6)))))) (not (= (|Seq#Index_29180| ar_1@@6 k@@0) (|Seq#Index_29180| ar_1@@6 j@@6))))
 :qid |stdinbpl.1012:195|
 :skolemid |85|
 :pattern ( (|Seq#Index_29180| ar_1@@6 k@@0) (|Seq#Index_29180| ar_1@@6 j@@6))
))) (= (sum_square Heap@@7 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6) (ite (< i@@10 vmax_1@@4) (+ (ite  (and (<= lo@@5 (mod i@@10 step@@4)) (< (mod i@@10 step@@4) hi@@6)) (select (|PolymorphicMapType_41404_29141_3829#PolymorphicMapType_41404| Heap@@7) (|Seq#Index_29180| ar_1@@6 i@@10) Ref__Integer_value) 0) (|sum_square'| Heap@@7 (+ i@@10 1) lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6)) 0))))
 :qid |stdinbpl.1010:15|
 :skolemid |86|
 :pattern ( (state Heap@@7 Mask@@4) (sum_square Heap@@7 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_41404) (ExhaleHeap@@1 T@PolymorphicMapType_41404) (Mask@@5 T@PolymorphicMapType_41425) (o_144 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@5) (=> (select (|PolymorphicMapType_41404_28883_53#PolymorphicMapType_41404| Heap@@8) o_144 $allocated) (select (|PolymorphicMapType_41404_28883_53#PolymorphicMapType_41404| ExhaleHeap@@1) o_144 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@5) (select (|PolymorphicMapType_41404_28883_53#PolymorphicMapType_41404| ExhaleHeap@@1) o_144 $allocated))
)))
(assert (forall ((p T@Field_29141_117835) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_41464_41464 p v_1 p w))
 :qid |stdinbpl.296:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_41464_41464 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_48594) (s1 T@Seq_48594) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_29180|)) (not (= s1 |Seq#Empty_29180|))) (<= (|Seq#Length_29180| s0) n@@13)) (< n@@13 (|Seq#Length_29180| (|Seq#Append_48594| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_29180| s0)) (|Seq#Length_29180| s0)) n@@13) (= (|Seq#Index_29180| (|Seq#Append_48594| s0 s1) n@@13) (|Seq#Index_29180| s1 (|Seq#Sub| n@@13 (|Seq#Length_29180| s0))))))
 :qid |stdinbpl.365:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_29180| (|Seq#Append_48594| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3707) (s1@@0 T@Seq_3707) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3707|)) (not (= s1@@0 |Seq#Empty_3707|))) (<= (|Seq#Length_3707| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3707| (|Seq#Append_3707| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3707| s0@@0)) (|Seq#Length_3707| s0@@0)) n@@14) (= (|Seq#Index_3707| (|Seq#Append_3707| s0@@0 s1@@0) n@@14) (|Seq#Index_3707| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3707| s0@@0))))))
 :qid |stdinbpl.365:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3707| (|Seq#Append_3707| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_29141_3829 Ref__Integer_value)))
(assert  (not (IsWandField_29141_3829 Ref__Integer_value)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_41404) (ExhaleHeap@@2 T@PolymorphicMapType_41404) (Mask@@6 T@PolymorphicMapType_41425) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@6) (succHeap Heap@@9 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_41425) (o_2@@4 T@Ref) (f_4@@4 T@Field_29141_117968) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_29141_123219 f_4@@4))) (not (IsWandField_29141_123235 f_4@@4))) (<= (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_41425) (o_2@@5 T@Ref) (f_4@@5 T@Field_29141_117835) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_29141_117926 f_4@@5))) (not (IsWandField_29141_119673 f_4@@5))) (<= (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_41425) (o_2@@6 T@Ref) (f_4@@6 T@Field_41477_41478) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_29141_41478 f_4@@6))) (not (IsWandField_29141_41478 f_4@@6))) (<= (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_41425) (o_2@@7 T@Ref) (f_4@@7 T@Field_41464_53) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| Mask@@10) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_29141_53 f_4@@7))) (not (IsWandField_29141_53 f_4@@7))) (<= (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| Mask@@10) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| Mask@@10) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_41425) (o_2@@8 T@Ref) (f_4@@8 T@Field_47552_3829) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| Mask@@11) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_29141_3829 f_4@@8))) (not (IsWandField_29141_3829 f_4@@8))) (<= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| Mask@@11) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| Mask@@11) o_2@@8 f_4@@8))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_41404) (Mask@@12 T@PolymorphicMapType_41425) (i@@11 Int) (hi@@7 Int) (ar_1@@7 T@Seq_3707) ) (!  (=> (state Heap@@10 Mask@@12) (= (|sum_list'| Heap@@10 i@@11 hi@@7 ar_1@@7) (|sum_list#frame| EmptyFrame i@@11 hi@@7 ar_1@@7)))
 :qid |stdinbpl.697:15|
 :skolemid |61|
 :pattern ( (state Heap@@10 Mask@@12) (|sum_list'| Heap@@10 i@@11 hi@@7 ar_1@@7))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_41425) (o_2@@9 T@Ref) (f_4@@9 T@Field_29141_117968) ) (! (= (HasDirectPerm_29141_123673 Mask@@13 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| Mask@@13) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_29141_123673 Mask@@13 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_41425) (o_2@@10 T@Ref) (f_4@@10 T@Field_29141_117835) ) (! (= (HasDirectPerm_29141_117899 Mask@@14 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| Mask@@14) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_29141_117899 Mask@@14 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_41425) (o_2@@11 T@Ref) (f_4@@11 T@Field_41477_41478) ) (! (= (HasDirectPerm_29141_41478 Mask@@15 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| Mask@@15) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_29141_41478 Mask@@15 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_41425) (o_2@@12 T@Ref) (f_4@@12 T@Field_41464_53) ) (! (= (HasDirectPerm_29141_53 Mask@@16 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| Mask@@16) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_29141_53 Mask@@16 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_41425) (o_2@@13 T@Ref) (f_4@@13 T@Field_47552_3829) ) (! (= (HasDirectPerm_29141_3829 Mask@@17 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| Mask@@17) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_29141_3829 Mask@@17 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_41404) (i@@12 Int) (lo@@6 Int) (hi@@8 Int) (ar_1@@8 T@Seq_48594) ) (! (dummyFunction_4136 (|sum_array#triggerStateless| i@@12 lo@@6 hi@@8 ar_1@@8))
 :qid |stdinbpl.769:15|
 :skolemid |63|
 :pattern ( (|sum_array'| Heap@@11 i@@12 lo@@6 hi@@8 ar_1@@8))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_41404) (i@@13 Int) (hi@@9 Int) (ar_1@@9 T@Seq_3707) (v_2@@3 Int) ) (! (dummyFunction_4136 (|count_list#triggerStateless| i@@13 hi@@9 ar_1@@9 v_2@@3))
 :qid |stdinbpl.1536:15|
 :skolemid |126|
 :pattern ( (|count_list'| Heap@@12 i@@13 hi@@9 ar_1@@9 v_2@@3))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_41404) (i@@14 Int) (hi@@10 Int) (ar_1@@10 T@Seq_48594) (v_2@@4 Int) ) (! (dummyFunction_4136 (|count_array#triggerStateless| i@@14 hi@@10 ar_1@@10 v_2@@4))
 :qid |stdinbpl.1621:15|
 :skolemid |130|
 :pattern ( (|count_array'| Heap@@13 i@@14 hi@@10 ar_1@@10 v_2@@4))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_41404) (ExhaleHeap@@3 T@PolymorphicMapType_41404) (Mask@@18 T@PolymorphicMapType_41425) (pm_f_52@@1 T@Field_29141_117835) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@3 Mask@@18) (=> (and (HasDirectPerm_29141_117899 Mask@@18 null pm_f_52@@1) (IsPredicateField_29141_117926 pm_f_52@@1)) (and (and (and (and (forall ((o2_53 T@Ref) (f_75 T@Field_41464_53) ) (!  (=> (select (|PolymorphicMapType_41953_41464_53#PolymorphicMapType_41953| (select (|PolymorphicMapType_41404_29141_118012#PolymorphicMapType_41404| Heap@@14) null (PredicateMaskField_29141 pm_f_52@@1))) o2_53 f_75) (= (select (|PolymorphicMapType_41404_28883_53#PolymorphicMapType_41404| Heap@@14) o2_53 f_75) (select (|PolymorphicMapType_41404_28883_53#PolymorphicMapType_41404| ExhaleHeap@@3) o2_53 f_75)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_41404_28883_53#PolymorphicMapType_41404| ExhaleHeap@@3) o2_53 f_75))
)) (forall ((o2_53@@0 T@Ref) (f_75@@0 T@Field_41477_41478) ) (!  (=> (select (|PolymorphicMapType_41953_41464_41478#PolymorphicMapType_41953| (select (|PolymorphicMapType_41404_29141_118012#PolymorphicMapType_41404| Heap@@14) null (PredicateMaskField_29141 pm_f_52@@1))) o2_53@@0 f_75@@0) (= (select (|PolymorphicMapType_41404_28886_28887#PolymorphicMapType_41404| Heap@@14) o2_53@@0 f_75@@0) (select (|PolymorphicMapType_41404_28886_28887#PolymorphicMapType_41404| ExhaleHeap@@3) o2_53@@0 f_75@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_41404_28886_28887#PolymorphicMapType_41404| ExhaleHeap@@3) o2_53@@0 f_75@@0))
))) (forall ((o2_53@@1 T@Ref) (f_75@@1 T@Field_47552_3829) ) (!  (=> (select (|PolymorphicMapType_41953_41464_3829#PolymorphicMapType_41953| (select (|PolymorphicMapType_41404_29141_118012#PolymorphicMapType_41404| Heap@@14) null (PredicateMaskField_29141 pm_f_52@@1))) o2_53@@1 f_75@@1) (= (select (|PolymorphicMapType_41404_29141_3829#PolymorphicMapType_41404| Heap@@14) o2_53@@1 f_75@@1) (select (|PolymorphicMapType_41404_29141_3829#PolymorphicMapType_41404| ExhaleHeap@@3) o2_53@@1 f_75@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_41404_29141_3829#PolymorphicMapType_41404| ExhaleHeap@@3) o2_53@@1 f_75@@1))
))) (forall ((o2_53@@2 T@Ref) (f_75@@2 T@Field_29141_117835) ) (!  (=> (select (|PolymorphicMapType_41953_41464_117835#PolymorphicMapType_41953| (select (|PolymorphicMapType_41404_29141_118012#PolymorphicMapType_41404| Heap@@14) null (PredicateMaskField_29141 pm_f_52@@1))) o2_53@@2 f_75@@2) (= (select (|PolymorphicMapType_41404_41464_117835#PolymorphicMapType_41404| Heap@@14) o2_53@@2 f_75@@2) (select (|PolymorphicMapType_41404_41464_117835#PolymorphicMapType_41404| ExhaleHeap@@3) o2_53@@2 f_75@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_41404_41464_117835#PolymorphicMapType_41404| ExhaleHeap@@3) o2_53@@2 f_75@@2))
))) (forall ((o2_53@@3 T@Ref) (f_75@@3 T@Field_29141_117968) ) (!  (=> (select (|PolymorphicMapType_41953_41464_119146#PolymorphicMapType_41953| (select (|PolymorphicMapType_41404_29141_118012#PolymorphicMapType_41404| Heap@@14) null (PredicateMaskField_29141 pm_f_52@@1))) o2_53@@3 f_75@@3) (= (select (|PolymorphicMapType_41404_29141_118012#PolymorphicMapType_41404| Heap@@14) o2_53@@3 f_75@@3) (select (|PolymorphicMapType_41404_29141_118012#PolymorphicMapType_41404| ExhaleHeap@@3) o2_53@@3 f_75@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_41404_29141_118012#PolymorphicMapType_41404| ExhaleHeap@@3) o2_53@@3 f_75@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@3 Mask@@18) (IsPredicateField_29141_117926 pm_f_52@@1))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_41404) (ExhaleHeap@@4 T@PolymorphicMapType_41404) (Mask@@19 T@PolymorphicMapType_41425) (pm_f_52@@2 T@Field_29141_117835) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@4 Mask@@19) (=> (and (HasDirectPerm_29141_117899 Mask@@19 null pm_f_52@@2) (IsWandField_29141_119673 pm_f_52@@2)) (and (and (and (and (forall ((o2_53@@4 T@Ref) (f_75@@4 T@Field_41464_53) ) (!  (=> (select (|PolymorphicMapType_41953_41464_53#PolymorphicMapType_41953| (select (|PolymorphicMapType_41404_29141_118012#PolymorphicMapType_41404| Heap@@15) null (WandMaskField_29141 pm_f_52@@2))) o2_53@@4 f_75@@4) (= (select (|PolymorphicMapType_41404_28883_53#PolymorphicMapType_41404| Heap@@15) o2_53@@4 f_75@@4) (select (|PolymorphicMapType_41404_28883_53#PolymorphicMapType_41404| ExhaleHeap@@4) o2_53@@4 f_75@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_41404_28883_53#PolymorphicMapType_41404| ExhaleHeap@@4) o2_53@@4 f_75@@4))
)) (forall ((o2_53@@5 T@Ref) (f_75@@5 T@Field_41477_41478) ) (!  (=> (select (|PolymorphicMapType_41953_41464_41478#PolymorphicMapType_41953| (select (|PolymorphicMapType_41404_29141_118012#PolymorphicMapType_41404| Heap@@15) null (WandMaskField_29141 pm_f_52@@2))) o2_53@@5 f_75@@5) (= (select (|PolymorphicMapType_41404_28886_28887#PolymorphicMapType_41404| Heap@@15) o2_53@@5 f_75@@5) (select (|PolymorphicMapType_41404_28886_28887#PolymorphicMapType_41404| ExhaleHeap@@4) o2_53@@5 f_75@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_41404_28886_28887#PolymorphicMapType_41404| ExhaleHeap@@4) o2_53@@5 f_75@@5))
))) (forall ((o2_53@@6 T@Ref) (f_75@@6 T@Field_47552_3829) ) (!  (=> (select (|PolymorphicMapType_41953_41464_3829#PolymorphicMapType_41953| (select (|PolymorphicMapType_41404_29141_118012#PolymorphicMapType_41404| Heap@@15) null (WandMaskField_29141 pm_f_52@@2))) o2_53@@6 f_75@@6) (= (select (|PolymorphicMapType_41404_29141_3829#PolymorphicMapType_41404| Heap@@15) o2_53@@6 f_75@@6) (select (|PolymorphicMapType_41404_29141_3829#PolymorphicMapType_41404| ExhaleHeap@@4) o2_53@@6 f_75@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_41404_29141_3829#PolymorphicMapType_41404| ExhaleHeap@@4) o2_53@@6 f_75@@6))
))) (forall ((o2_53@@7 T@Ref) (f_75@@7 T@Field_29141_117835) ) (!  (=> (select (|PolymorphicMapType_41953_41464_117835#PolymorphicMapType_41953| (select (|PolymorphicMapType_41404_29141_118012#PolymorphicMapType_41404| Heap@@15) null (WandMaskField_29141 pm_f_52@@2))) o2_53@@7 f_75@@7) (= (select (|PolymorphicMapType_41404_41464_117835#PolymorphicMapType_41404| Heap@@15) o2_53@@7 f_75@@7) (select (|PolymorphicMapType_41404_41464_117835#PolymorphicMapType_41404| ExhaleHeap@@4) o2_53@@7 f_75@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_41404_41464_117835#PolymorphicMapType_41404| ExhaleHeap@@4) o2_53@@7 f_75@@7))
))) (forall ((o2_53@@8 T@Ref) (f_75@@8 T@Field_29141_117968) ) (!  (=> (select (|PolymorphicMapType_41953_41464_119146#PolymorphicMapType_41953| (select (|PolymorphicMapType_41404_29141_118012#PolymorphicMapType_41404| Heap@@15) null (WandMaskField_29141 pm_f_52@@2))) o2_53@@8 f_75@@8) (= (select (|PolymorphicMapType_41404_29141_118012#PolymorphicMapType_41404| Heap@@15) o2_53@@8 f_75@@8) (select (|PolymorphicMapType_41404_29141_118012#PolymorphicMapType_41404| ExhaleHeap@@4) o2_53@@8 f_75@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_41404_29141_118012#PolymorphicMapType_41404| ExhaleHeap@@4) o2_53@@8 f_75@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@4 Mask@@19) (IsWandField_29141_119673 pm_f_52@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.284:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3707| (|Seq#Range| q@min@@0 q@max@@0) j@@7) (+ q@min@@0 j@@7)))
 :qid |stdinbpl.657:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3707| (|Seq#Range| q@min@@0 q@max@@0) j@@7))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_41404) (ExhaleHeap@@5 T@PolymorphicMapType_41404) (Mask@@20 T@PolymorphicMapType_41425) (o_144@@0 T@Ref) (f_75@@9 T@Field_29141_117968) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@5 Mask@@20) (=> (HasDirectPerm_29141_123673 Mask@@20 o_144@@0 f_75@@9) (= (select (|PolymorphicMapType_41404_29141_118012#PolymorphicMapType_41404| Heap@@16) o_144@@0 f_75@@9) (select (|PolymorphicMapType_41404_29141_118012#PolymorphicMapType_41404| ExhaleHeap@@5) o_144@@0 f_75@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@5 Mask@@20) (select (|PolymorphicMapType_41404_29141_118012#PolymorphicMapType_41404| ExhaleHeap@@5) o_144@@0 f_75@@9))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_41404) (ExhaleHeap@@6 T@PolymorphicMapType_41404) (Mask@@21 T@PolymorphicMapType_41425) (o_144@@1 T@Ref) (f_75@@10 T@Field_29141_117835) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@6 Mask@@21) (=> (HasDirectPerm_29141_117899 Mask@@21 o_144@@1 f_75@@10) (= (select (|PolymorphicMapType_41404_41464_117835#PolymorphicMapType_41404| Heap@@17) o_144@@1 f_75@@10) (select (|PolymorphicMapType_41404_41464_117835#PolymorphicMapType_41404| ExhaleHeap@@6) o_144@@1 f_75@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@6 Mask@@21) (select (|PolymorphicMapType_41404_41464_117835#PolymorphicMapType_41404| ExhaleHeap@@6) o_144@@1 f_75@@10))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_41404) (ExhaleHeap@@7 T@PolymorphicMapType_41404) (Mask@@22 T@PolymorphicMapType_41425) (o_144@@2 T@Ref) (f_75@@11 T@Field_41477_41478) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@7 Mask@@22) (=> (HasDirectPerm_29141_41478 Mask@@22 o_144@@2 f_75@@11) (= (select (|PolymorphicMapType_41404_28886_28887#PolymorphicMapType_41404| Heap@@18) o_144@@2 f_75@@11) (select (|PolymorphicMapType_41404_28886_28887#PolymorphicMapType_41404| ExhaleHeap@@7) o_144@@2 f_75@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@7 Mask@@22) (select (|PolymorphicMapType_41404_28886_28887#PolymorphicMapType_41404| ExhaleHeap@@7) o_144@@2 f_75@@11))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_41404) (ExhaleHeap@@8 T@PolymorphicMapType_41404) (Mask@@23 T@PolymorphicMapType_41425) (o_144@@3 T@Ref) (f_75@@12 T@Field_41464_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@8 Mask@@23) (=> (HasDirectPerm_29141_53 Mask@@23 o_144@@3 f_75@@12) (= (select (|PolymorphicMapType_41404_28883_53#PolymorphicMapType_41404| Heap@@19) o_144@@3 f_75@@12) (select (|PolymorphicMapType_41404_28883_53#PolymorphicMapType_41404| ExhaleHeap@@8) o_144@@3 f_75@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@8 Mask@@23) (select (|PolymorphicMapType_41404_28883_53#PolymorphicMapType_41404| ExhaleHeap@@8) o_144@@3 f_75@@12))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_41404) (ExhaleHeap@@9 T@PolymorphicMapType_41404) (Mask@@24 T@PolymorphicMapType_41425) (o_144@@4 T@Ref) (f_75@@13 T@Field_47552_3829) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@9 Mask@@24) (=> (HasDirectPerm_29141_3829 Mask@@24 o_144@@4 f_75@@13) (= (select (|PolymorphicMapType_41404_29141_3829#PolymorphicMapType_41404| Heap@@20) o_144@@4 f_75@@13) (select (|PolymorphicMapType_41404_29141_3829#PolymorphicMapType_41404| ExhaleHeap@@9) o_144@@4 f_75@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@9 Mask@@24) (select (|PolymorphicMapType_41404_29141_3829#PolymorphicMapType_41404| ExhaleHeap@@9) o_144@@4 f_75@@13))
)))
(assert (forall ((s0@@1 T@Seq_48594) (s1@@1 T@Seq_48594) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_29180|)) (not (= s1@@1 |Seq#Empty_29180|))) (= (|Seq#Length_29180| (|Seq#Append_48594| s0@@1 s1@@1)) (+ (|Seq#Length_29180| s0@@1) (|Seq#Length_29180| s1@@1))))
 :qid |stdinbpl.334:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_29180| (|Seq#Append_48594| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3707) (s1@@2 T@Seq_3707) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3707|)) (not (= s1@@2 |Seq#Empty_3707|))) (= (|Seq#Length_3707| (|Seq#Append_3707| s0@@2 s1@@2)) (+ (|Seq#Length_3707| s0@@2) (|Seq#Length_3707| s1@@2))))
 :qid |stdinbpl.334:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3707| (|Seq#Append_3707| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_29141_117968) ) (! (= (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_29141_117835) ) (! (= (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_41477_41478) ) (! (= (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_41464_53) ) (! (= (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_47552_3829) ) (! (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_41404) (Mask@@25 T@PolymorphicMapType_41425) (i@@15 Int) (hi@@11 Int) (ar_1@@11 T@Seq_3707) (v_2@@5 Int) ) (!  (=> (and (state Heap@@21 Mask@@25) (< AssumeFunctionsAbove 5)) (=> (and (and (<= 0 i@@15) (<= i@@15 hi@@11)) (<= hi@@11 (|Seq#Length_3707| ar_1@@11))) (= (count_list Heap@@21 i@@15 hi@@11 ar_1@@11 v_2@@5) (ite (< i@@15 hi@@11) (+ (ite (= (|Seq#Index_3707| ar_1@@11 i@@15) v_2@@5) 1 0) (|count_list'| Heap@@21 (+ i@@15 1) hi@@11 ar_1@@11 v_2@@5)) 0))))
 :qid |stdinbpl.1542:15|
 :skolemid |127|
 :pattern ( (state Heap@@21 Mask@@25) (count_list Heap@@21 i@@15 hi@@11 ar_1@@11 v_2@@5))
)))
(assert (forall ((s@@15 T@Seq_48594) (t@@1 T@Seq_48594) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_29180| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_29180| s@@15)) (|Seq#Length_29180| s@@15)) n@@15) (= (|Seq#Drop_29180| (|Seq#Append_48594| s@@15 t@@1) n@@15) (|Seq#Drop_29180| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_29180| s@@15))))))
 :qid |stdinbpl.491:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_29180| (|Seq#Append_48594| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3707) (t@@2 T@Seq_3707) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3707| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3707| s@@16)) (|Seq#Length_3707| s@@16)) n@@16) (= (|Seq#Drop_3707| (|Seq#Append_3707| s@@16 t@@2) n@@16) (|Seq#Drop_3707| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3707| s@@16))))))
 :qid |stdinbpl.491:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3707| (|Seq#Append_3707| s@@16 t@@2) n@@16))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_41404) (i@@16 Int) (lo@@7 Int) (hi@@12 Int) (ar_1@@12 T@Seq_48594) ) (!  (and (= (sum_array Heap@@22 i@@16 lo@@7 hi@@12 ar_1@@12) (|sum_array'| Heap@@22 i@@16 lo@@7 hi@@12 ar_1@@12)) (dummyFunction_4136 (|sum_array#triggerStateless| i@@16 lo@@7 hi@@12 ar_1@@12)))
 :qid |stdinbpl.765:15|
 :skolemid |62|
 :pattern ( (sum_array Heap@@22 i@@16 lo@@7 hi@@12 ar_1@@12))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_41404) (i@@17 Int) (hi@@13 Int) (ar_1@@13 T@Seq_3707) (v_2@@6 Int) ) (!  (and (= (count_list Heap@@23 i@@17 hi@@13 ar_1@@13 v_2@@6) (|count_list'| Heap@@23 i@@17 hi@@13 ar_1@@13 v_2@@6)) (dummyFunction_4136 (|count_list#triggerStateless| i@@17 hi@@13 ar_1@@13 v_2@@6)))
 :qid |stdinbpl.1532:15|
 :skolemid |125|
 :pattern ( (count_list Heap@@23 i@@17 hi@@13 ar_1@@13 v_2@@6))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_41404) (i@@18 Int) (hi@@14 Int) (ar_1@@14 T@Seq_48594) (v_2@@7 Int) ) (!  (and (= (count_array Heap@@24 i@@18 hi@@14 ar_1@@14 v_2@@7) (|count_array'| Heap@@24 i@@18 hi@@14 ar_1@@14 v_2@@7)) (dummyFunction_4136 (|count_array#triggerStateless| i@@18 hi@@14 ar_1@@14 v_2@@7)))
 :qid |stdinbpl.1617:15|
 :skolemid |129|
 :pattern ( (count_array Heap@@24 i@@18 hi@@14 ar_1@@14 v_2@@7))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_41425) (SummandMask1 T@PolymorphicMapType_41425) (SummandMask2 T@PolymorphicMapType_41425) (o_2@@19 T@Ref) (f_4@@19 T@Field_29141_117968) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_41425) (SummandMask1@@0 T@PolymorphicMapType_41425) (SummandMask2@@0 T@PolymorphicMapType_41425) (o_2@@20 T@Ref) (f_4@@20 T@Field_29141_117835) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_41425) (SummandMask1@@1 T@PolymorphicMapType_41425) (SummandMask2@@1 T@PolymorphicMapType_41425) (o_2@@21 T@Ref) (f_4@@21 T@Field_41477_41478) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_41425) (SummandMask1@@2 T@PolymorphicMapType_41425) (SummandMask2@@2 T@PolymorphicMapType_41425) (o_2@@22 T@Ref) (f_4@@22 T@Field_41464_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_41425) (SummandMask1@@3 T@PolymorphicMapType_41425) (SummandMask2@@3 T@PolymorphicMapType_41425) (o_2@@23 T@Ref) (f_4@@23 T@Field_47552_3829) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_41404) (i@@19 Int) (lo@@8 Int) (hi@@15 Int) (step@@5 Int) (vmin@@5 Int) (vmax_1@@5 Int) (ar_1@@15 T@Seq_48594) ) (!  (and (= (sum_square Heap@@25 i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax_1@@5 ar_1@@15) (|sum_square'| Heap@@25 i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax_1@@5 ar_1@@15)) (dummyFunction_4136 (|sum_square#triggerStateless| i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax_1@@5 ar_1@@15)))
 :qid |stdinbpl.1000:15|
 :skolemid |83|
 :pattern ( (sum_square Heap@@25 i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax_1@@5 ar_1@@15))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_41404) (Mask@@26 T@PolymorphicMapType_41425) (i@@20 Int) (hi@@16 Int) (ar_1@@16 T@Seq_3707) (v_2@@8 Int) ) (!  (=> (state Heap@@26 Mask@@26) (= (|count_list'| Heap@@26 i@@20 hi@@16 ar_1@@16 v_2@@8) (|count_list#frame| EmptyFrame i@@20 hi@@16 ar_1@@16 v_2@@8)))
 :qid |stdinbpl.1549:15|
 :skolemid |128|
 :pattern ( (state Heap@@26 Mask@@26) (|count_list'| Heap@@26 i@@20 hi@@16 ar_1@@16 v_2@@8))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3707| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3707| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.656:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3707| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_48594) (b T@Seq_48594) ) (!  (=> (|Seq#Equal_48594| a b) (= a b))
 :qid |stdinbpl.629:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_48594| a b))
)))
(assert (forall ((a@@0 T@Seq_3707) (b@@0 T@Seq_3707) ) (!  (=> (|Seq#Equal_3707| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.629:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3707| a@@0 b@@0))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_41404) (Mask@@27 T@PolymorphicMapType_41425) (i@@21 Int) (lo@@9 Int) (hi@@17 Int) (step@@6 Int) (vmin@@6 Int) (vmax_1@@6 Int) (ar_1@@17 T@Seq_48594) (v_2@@9 Int) ) (!  (=> (and (state Heap@@27 Mask@@27) (< AssumeFunctionsAbove 0)) (=> (and (and (and (and (<= 0 lo@@9) (and (<= lo@@9 hi@@17) (and (<= hi@@17 step@@6) (> step@@6 0)))) (and (<= 0 vmin@@6) (and (<= vmin@@6 i@@21) (<= i@@21 vmax_1@@6)))) (<= vmax_1@@6 (|Seq#Length_29180| ar_1@@17))) (forall ((k@@1 Int) (j@@8 Int) ) (!  (=> (and (>= k@@1 0) (and (< k@@1 (|Seq#Length_29180| ar_1@@17)) (and (>= j@@8 0) (and (< j@@8 (|Seq#Length_29180| ar_1@@17)) (not (= k@@1 j@@8)))))) (not (= (|Seq#Index_29180| ar_1@@17 k@@1) (|Seq#Index_29180| ar_1@@17 j@@8))))
 :qid |stdinbpl.1278:195|
 :skolemid |106|
 :pattern ( (|Seq#Index_29180| ar_1@@17 k@@1) (|Seq#Index_29180| ar_1@@17 j@@8))
))) (= (count_square Heap@@27 i@@21 lo@@9 hi@@17 step@@6 vmin@@6 vmax_1@@6 ar_1@@17 v_2@@9) (ite (< i@@21 vmax_1@@6) (+ (ite  (and (<= lo@@9 (mod i@@21 step@@6)) (and (< (mod i@@21 step@@6) hi@@17) (= (select (|PolymorphicMapType_41404_29141_3829#PolymorphicMapType_41404| Heap@@27) (|Seq#Index_29180| ar_1@@17 i@@21) Ref__Integer_value) v_2@@9))) 1 0) (|count_square'| Heap@@27 (+ i@@21 1) lo@@9 hi@@17 step@@6 vmin@@6 vmax_1@@6 ar_1@@17 v_2@@9)) 0))))
 :qid |stdinbpl.1276:15|
 :skolemid |107|
 :pattern ( (state Heap@@27 Mask@@27) (count_square Heap@@27 i@@21 lo@@9 hi@@17 step@@6 vmin@@6 vmax_1@@6 ar_1@@17 v_2@@9))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_41404) (i@@22 Int) (hi@@18 Int) (ar_1@@18 T@Seq_3707) ) (!  (and (= (sum_list Heap@@28 i@@22 hi@@18 ar_1@@18) (|sum_list'| Heap@@28 i@@22 hi@@18 ar_1@@18)) (dummyFunction_4136 (|sum_list#triggerStateless| i@@22 hi@@18 ar_1@@18)))
 :qid |stdinbpl.680:15|
 :skolemid |58|
 :pattern ( (sum_list Heap@@28 i@@22 hi@@18 ar_1@@18))
)))
(assert (forall ((s@@17 T@Seq_48594) (i@@23 Int) ) (!  (=> (and (<= 0 i@@23) (< i@@23 (|Seq#Length_29180| s@@17))) (|Seq#ContainsTrigger_29180| s@@17 (|Seq#Index_29180| s@@17 i@@23)))
 :qid |stdinbpl.522:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_29180| s@@17 i@@23))
)))
(assert (forall ((s@@18 T@Seq_3707) (i@@24 Int) ) (!  (=> (and (<= 0 i@@24) (< i@@24 (|Seq#Length_3707| s@@18))) (|Seq#ContainsTrigger_3707| s@@18 (|Seq#Index_3707| s@@18 i@@24)))
 :qid |stdinbpl.522:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3707| s@@18 i@@24))
)))
(assert (forall ((s0@@3 T@Seq_48594) (s1@@3 T@Seq_48594) ) (!  (and (=> (= s0@@3 |Seq#Empty_29180|) (= (|Seq#Append_48594| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_29180|) (= (|Seq#Append_48594| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.340:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_48594| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3707) (s1@@4 T@Seq_3707) ) (!  (and (=> (= s0@@4 |Seq#Empty_3707|) (= (|Seq#Append_3707| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3707|) (= (|Seq#Append_3707| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.340:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3707| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_29180| (|Seq#Singleton_29180| t@@3) 0) t@@3)
 :qid |stdinbpl.344:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_29180| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3707| (|Seq#Singleton_3707| t@@4) 0) t@@4)
 :qid |stdinbpl.344:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3707| t@@4))
)))
(assert (forall ((s@@19 T@Seq_48594) ) (! (<= 0 (|Seq#Length_29180| s@@19))
 :qid |stdinbpl.323:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_29180| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3707) ) (! (<= 0 (|Seq#Length_3707| s@@20))
 :qid |stdinbpl.323:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3707| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_48594) (s1@@5 T@Seq_48594) ) (!  (=> (|Seq#Equal_48594| s0@@5 s1@@5) (and (= (|Seq#Length_29180| s0@@5) (|Seq#Length_29180| s1@@5)) (forall ((j@@9 Int) ) (!  (=> (and (<= 0 j@@9) (< j@@9 (|Seq#Length_29180| s0@@5))) (= (|Seq#Index_29180| s0@@5 j@@9) (|Seq#Index_29180| s1@@5 j@@9)))
 :qid |stdinbpl.619:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_29180| s0@@5 j@@9))
 :pattern ( (|Seq#Index_29180| s1@@5 j@@9))
))))
 :qid |stdinbpl.616:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_48594| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3707) (s1@@6 T@Seq_3707) ) (!  (=> (|Seq#Equal_3707| s0@@6 s1@@6) (and (= (|Seq#Length_3707| s0@@6) (|Seq#Length_3707| s1@@6)) (forall ((j@@10 Int) ) (!  (=> (and (<= 0 j@@10) (< j@@10 (|Seq#Length_3707| s0@@6))) (= (|Seq#Index_3707| s0@@6 j@@10) (|Seq#Index_3707| s1@@6 j@@10)))
 :qid |stdinbpl.619:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3707| s0@@6 j@@10))
 :pattern ( (|Seq#Index_3707| s1@@6 j@@10))
))))
 :qid |stdinbpl.616:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3707| s0@@6 s1@@6))
)))
(assert (forall ((Heap2Heap@@1 T@PolymorphicMapType_41404) (Heap1Heap@@1 T@PolymorphicMapType_41404) (i@@25 Int) (hi@@19 Int) (ar_1@@19 T@Seq_48594) (v_2@@10 Int) ) (!  (=> (and (=  (and (<= 0 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10))) (< (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10)) hi@@19))  (and (<= 0 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10))) (< (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10)) hi@@19))) (=> (and (<= 0 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10))) (< (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10)) hi@@19)) (= (select (|PolymorphicMapType_41404_29141_3829#PolymorphicMapType_41404| Heap2Heap@@1) (|Seq#Index_29180| ar_1@@19 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10))) Ref__Integer_value) (select (|PolymorphicMapType_41404_29141_3829#PolymorphicMapType_41404| Heap1Heap@@1) (|Seq#Index_29180| ar_1@@19 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10))) Ref__Integer_value)))) (= (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10)))
 :qid |stdinbpl.1647:15|
 :skolemid |134|
 :pattern ( (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (succHeapTrans Heap2Heap@@1 Heap1Heap@@1))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_29180| (|Seq#Singleton_29180| t@@5)) 1)
 :qid |stdinbpl.331:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_29180| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3707| (|Seq#Singleton_3707| t@@6)) 1)
 :qid |stdinbpl.331:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3707| t@@6))
)))
(assert (forall ((Heap2Heap@@2 T@PolymorphicMapType_41404) (Heap1Heap@@2 T@PolymorphicMapType_41404) (i@@26 Int) (lo@@10 Int) (hi@@20 Int) (ar_1@@20 T@Seq_48594) ) (!  (=> (and (=  (and (<= lo@@10 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20))) (< (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20)) hi@@20))  (and (<= lo@@10 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20))) (< (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20)) hi@@20))) (=> (and (<= lo@@10 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20))) (< (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20)) hi@@20)) (= (select (|PolymorphicMapType_41404_29141_3829#PolymorphicMapType_41404| Heap2Heap@@2) (|Seq#Index_29180| ar_1@@20 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20))) Ref__Integer_value) (select (|PolymorphicMapType_41404_29141_3829#PolymorphicMapType_41404| Heap1Heap@@2) (|Seq#Index_29180| ar_1@@20 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20))) Ref__Integer_value)))) (= (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20)))
 :qid |stdinbpl.795:15|
 :skolemid |67|
 :pattern ( (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (succHeapTrans Heap2Heap@@2 Heap1Heap@@2))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_41404) (Mask@@28 T@PolymorphicMapType_41425) (i@@27 Int) (hi@@21 Int) (ar_1@@21 T@Seq_3707) ) (!  (=> (and (state Heap@@29 Mask@@28) (< AssumeFunctionsAbove 4)) (=> (and (and (<= 0 i@@27) (<= i@@27 hi@@21)) (<= hi@@21 (|Seq#Length_3707| ar_1@@21))) (= (sum_list Heap@@29 i@@27 hi@@21 ar_1@@21) (ite (< i@@27 hi@@21) (+ (|Seq#Index_3707| ar_1@@21 i@@27) (|sum_list'| Heap@@29 (+ i@@27 1) hi@@21 ar_1@@21)) 0))))
 :qid |stdinbpl.690:15|
 :skolemid |60|
 :pattern ( (state Heap@@29 Mask@@28) (sum_list Heap@@29 i@@27 hi@@21 ar_1@@21))
)))
(assert (forall ((s@@21 T@Seq_48594) (t@@7 T@Seq_48594) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_29180| s@@21))) (= (|Seq#Take_29180| (|Seq#Append_48594| s@@21 t@@7) n@@17) (|Seq#Take_29180| s@@21 n@@17)))
 :qid |stdinbpl.473:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_29180| (|Seq#Append_48594| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3707) (t@@8 T@Seq_3707) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3707| s@@22))) (= (|Seq#Take_3707| (|Seq#Append_3707| s@@22 t@@8) n@@18) (|Seq#Take_3707| s@@22 n@@18)))
 :qid |stdinbpl.473:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3707| (|Seq#Append_3707| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_48594) (i@@28 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@28) (< i@@28 (|Seq#Length_29180| s@@23))) (= (|Seq#Length_29180| (|Seq#Update_29180| s@@23 i@@28 v@@2)) (|Seq#Length_29180| s@@23)))
 :qid |stdinbpl.372:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_29180| (|Seq#Update_29180| s@@23 i@@28 v@@2)))
 :pattern ( (|Seq#Length_29180| s@@23) (|Seq#Update_29180| s@@23 i@@28 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3707) (i@@29 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@29) (< i@@29 (|Seq#Length_3707| s@@24))) (= (|Seq#Length_3707| (|Seq#Update_3707| s@@24 i@@29 v@@3)) (|Seq#Length_3707| s@@24)))
 :qid |stdinbpl.372:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3707| (|Seq#Update_3707| s@@24 i@@29 v@@3)))
 :pattern ( (|Seq#Length_3707| s@@24) (|Seq#Update_3707| s@@24 i@@29 v@@3))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_41404) (Mask@@29 T@PolymorphicMapType_41425) (i@@30 Int) (hi@@22 Int) (ar_1@@22 T@Seq_48594) (v_2@@11 Int) ) (!  (=> (and (state Heap@@30 Mask@@29) (< AssumeFunctionsAbove 3)) (=> (and (and (and (<= 0 i@@30) (<= i@@30 hi@@22)) (<= hi@@22 (|Seq#Length_29180| ar_1@@22))) (forall ((k@@2 Int) (j@@11 Int) ) (!  (=> (and (>= k@@2 0) (and (< k@@2 (|Seq#Length_29180| ar_1@@22)) (and (>= j@@11 0) (and (< j@@11 (|Seq#Length_29180| ar_1@@22)) (not (= k@@2 j@@11)))))) (not (= (|Seq#Index_29180| ar_1@@22 k@@2) (|Seq#Index_29180| ar_1@@22 j@@11))))
 :qid |stdinbpl.1629:112|
 :skolemid |131|
 :pattern ( (|Seq#Index_29180| ar_1@@22 k@@2) (|Seq#Index_29180| ar_1@@22 j@@11))
))) (= (count_array Heap@@30 i@@30 hi@@22 ar_1@@22 v_2@@11) (ite (< i@@30 hi@@22) (+ (ite (= (select (|PolymorphicMapType_41404_29141_3829#PolymorphicMapType_41404| Heap@@30) (|Seq#Index_29180| ar_1@@22 i@@30) Ref__Integer_value) v_2@@11) 1 0) (|count_array'| Heap@@30 (+ i@@30 1) hi@@22 ar_1@@22 v_2@@11)) 0))))
 :qid |stdinbpl.1627:15|
 :skolemid |132|
 :pattern ( (state Heap@@30 Mask@@29) (count_array Heap@@30 i@@30 hi@@22 ar_1@@22 v_2@@11))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_41404) (o_143 T@Ref) (f_27 T@Field_29141_117835) (v@@4 T@FrameType) ) (! (succHeap Heap@@31 (PolymorphicMapType_41404 (|PolymorphicMapType_41404_28883_53#PolymorphicMapType_41404| Heap@@31) (|PolymorphicMapType_41404_28886_28887#PolymorphicMapType_41404| Heap@@31) (|PolymorphicMapType_41404_29141_3829#PolymorphicMapType_41404| Heap@@31) (|PolymorphicMapType_41404_29141_118012#PolymorphicMapType_41404| Heap@@31) (store (|PolymorphicMapType_41404_41464_117835#PolymorphicMapType_41404| Heap@@31) o_143 f_27 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_41404 (|PolymorphicMapType_41404_28883_53#PolymorphicMapType_41404| Heap@@31) (|PolymorphicMapType_41404_28886_28887#PolymorphicMapType_41404| Heap@@31) (|PolymorphicMapType_41404_29141_3829#PolymorphicMapType_41404| Heap@@31) (|PolymorphicMapType_41404_29141_118012#PolymorphicMapType_41404| Heap@@31) (store (|PolymorphicMapType_41404_41464_117835#PolymorphicMapType_41404| Heap@@31) o_143 f_27 v@@4)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_41404) (o_143@@0 T@Ref) (f_27@@0 T@Field_29141_117968) (v@@5 T@PolymorphicMapType_41953) ) (! (succHeap Heap@@32 (PolymorphicMapType_41404 (|PolymorphicMapType_41404_28883_53#PolymorphicMapType_41404| Heap@@32) (|PolymorphicMapType_41404_28886_28887#PolymorphicMapType_41404| Heap@@32) (|PolymorphicMapType_41404_29141_3829#PolymorphicMapType_41404| Heap@@32) (store (|PolymorphicMapType_41404_29141_118012#PolymorphicMapType_41404| Heap@@32) o_143@@0 f_27@@0 v@@5) (|PolymorphicMapType_41404_41464_117835#PolymorphicMapType_41404| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_41404 (|PolymorphicMapType_41404_28883_53#PolymorphicMapType_41404| Heap@@32) (|PolymorphicMapType_41404_28886_28887#PolymorphicMapType_41404| Heap@@32) (|PolymorphicMapType_41404_29141_3829#PolymorphicMapType_41404| Heap@@32) (store (|PolymorphicMapType_41404_29141_118012#PolymorphicMapType_41404| Heap@@32) o_143@@0 f_27@@0 v@@5) (|PolymorphicMapType_41404_41464_117835#PolymorphicMapType_41404| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_41404) (o_143@@1 T@Ref) (f_27@@1 T@Field_47552_3829) (v@@6 Int) ) (! (succHeap Heap@@33 (PolymorphicMapType_41404 (|PolymorphicMapType_41404_28883_53#PolymorphicMapType_41404| Heap@@33) (|PolymorphicMapType_41404_28886_28887#PolymorphicMapType_41404| Heap@@33) (store (|PolymorphicMapType_41404_29141_3829#PolymorphicMapType_41404| Heap@@33) o_143@@1 f_27@@1 v@@6) (|PolymorphicMapType_41404_29141_118012#PolymorphicMapType_41404| Heap@@33) (|PolymorphicMapType_41404_41464_117835#PolymorphicMapType_41404| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_41404 (|PolymorphicMapType_41404_28883_53#PolymorphicMapType_41404| Heap@@33) (|PolymorphicMapType_41404_28886_28887#PolymorphicMapType_41404| Heap@@33) (store (|PolymorphicMapType_41404_29141_3829#PolymorphicMapType_41404| Heap@@33) o_143@@1 f_27@@1 v@@6) (|PolymorphicMapType_41404_29141_118012#PolymorphicMapType_41404| Heap@@33) (|PolymorphicMapType_41404_41464_117835#PolymorphicMapType_41404| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_41404) (o_143@@2 T@Ref) (f_27@@2 T@Field_41477_41478) (v@@7 T@Ref) ) (! (succHeap Heap@@34 (PolymorphicMapType_41404 (|PolymorphicMapType_41404_28883_53#PolymorphicMapType_41404| Heap@@34) (store (|PolymorphicMapType_41404_28886_28887#PolymorphicMapType_41404| Heap@@34) o_143@@2 f_27@@2 v@@7) (|PolymorphicMapType_41404_29141_3829#PolymorphicMapType_41404| Heap@@34) (|PolymorphicMapType_41404_29141_118012#PolymorphicMapType_41404| Heap@@34) (|PolymorphicMapType_41404_41464_117835#PolymorphicMapType_41404| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_41404 (|PolymorphicMapType_41404_28883_53#PolymorphicMapType_41404| Heap@@34) (store (|PolymorphicMapType_41404_28886_28887#PolymorphicMapType_41404| Heap@@34) o_143@@2 f_27@@2 v@@7) (|PolymorphicMapType_41404_29141_3829#PolymorphicMapType_41404| Heap@@34) (|PolymorphicMapType_41404_29141_118012#PolymorphicMapType_41404| Heap@@34) (|PolymorphicMapType_41404_41464_117835#PolymorphicMapType_41404| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_41404) (o_143@@3 T@Ref) (f_27@@3 T@Field_41464_53) (v@@8 Bool) ) (! (succHeap Heap@@35 (PolymorphicMapType_41404 (store (|PolymorphicMapType_41404_28883_53#PolymorphicMapType_41404| Heap@@35) o_143@@3 f_27@@3 v@@8) (|PolymorphicMapType_41404_28886_28887#PolymorphicMapType_41404| Heap@@35) (|PolymorphicMapType_41404_29141_3829#PolymorphicMapType_41404| Heap@@35) (|PolymorphicMapType_41404_29141_118012#PolymorphicMapType_41404| Heap@@35) (|PolymorphicMapType_41404_41464_117835#PolymorphicMapType_41404| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_41404 (store (|PolymorphicMapType_41404_28883_53#PolymorphicMapType_41404| Heap@@35) o_143@@3 f_27@@3 v@@8) (|PolymorphicMapType_41404_28886_28887#PolymorphicMapType_41404| Heap@@35) (|PolymorphicMapType_41404_29141_3829#PolymorphicMapType_41404| Heap@@35) (|PolymorphicMapType_41404_29141_118012#PolymorphicMapType_41404| Heap@@35) (|PolymorphicMapType_41404_41464_117835#PolymorphicMapType_41404| Heap@@35)))
)))
(assert (forall ((s@@25 T@Seq_48594) (t@@9 T@Seq_48594) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_29180| s@@25))) (= (|Seq#Drop_29180| (|Seq#Append_48594| s@@25 t@@9) n@@19) (|Seq#Append_48594| (|Seq#Drop_29180| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.487:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_29180| (|Seq#Append_48594| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3707) (t@@10 T@Seq_3707) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3707| s@@26))) (= (|Seq#Drop_3707| (|Seq#Append_3707| s@@26 t@@10) n@@20) (|Seq#Append_3707| (|Seq#Drop_3707| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.487:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3707| (|Seq#Append_3707| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_48594) (n@@21 Int) (i@@31 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@31)) (< i@@31 (|Seq#Length_29180| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@31 n@@21) n@@21) i@@31) (= (|Seq#Index_29180| (|Seq#Drop_29180| s@@27 n@@21) (|Seq#Sub| i@@31 n@@21)) (|Seq#Index_29180| s@@27 i@@31))))
 :qid |stdinbpl.423:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_29180| s@@27 n@@21) (|Seq#Index_29180| s@@27 i@@31))
)))
(assert (forall ((s@@28 T@Seq_3707) (n@@22 Int) (i@@32 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@32)) (< i@@32 (|Seq#Length_3707| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@32 n@@22) n@@22) i@@32) (= (|Seq#Index_3707| (|Seq#Drop_3707| s@@28 n@@22) (|Seq#Sub| i@@32 n@@22)) (|Seq#Index_3707| s@@28 i@@32))))
 :qid |stdinbpl.423:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3707| s@@28 n@@22) (|Seq#Index_3707| s@@28 i@@32))
)))
(assert (forall ((s0@@7 T@Seq_48594) (s1@@7 T@Seq_48594) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_29180|)) (not (= s1@@7 |Seq#Empty_29180|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_29180| s0@@7))) (= (|Seq#Index_29180| (|Seq#Append_48594| s0@@7 s1@@7) n@@23) (|Seq#Index_29180| s0@@7 n@@23)))
 :qid |stdinbpl.363:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_29180| (|Seq#Append_48594| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_29180| s0@@7 n@@23) (|Seq#Append_48594| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3707) (s1@@8 T@Seq_3707) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3707|)) (not (= s1@@8 |Seq#Empty_3707|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3707| s0@@8))) (= (|Seq#Index_3707| (|Seq#Append_3707| s0@@8 s1@@8) n@@24) (|Seq#Index_3707| s0@@8 n@@24)))
 :qid |stdinbpl.363:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3707| (|Seq#Append_3707| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3707| s0@@8 n@@24) (|Seq#Append_3707| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_48594) (s1@@9 T@Seq_48594) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_29180|)) (not (= s1@@9 |Seq#Empty_29180|))) (<= 0 m)) (< m (|Seq#Length_29180| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_29180| s0@@9)) (|Seq#Length_29180| s0@@9)) m) (= (|Seq#Index_29180| (|Seq#Append_48594| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_29180| s0@@9))) (|Seq#Index_29180| s1@@9 m))))
 :qid |stdinbpl.368:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_29180| s1@@9 m) (|Seq#Append_48594| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3707) (s1@@10 T@Seq_3707) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3707|)) (not (= s1@@10 |Seq#Empty_3707|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3707| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3707| s0@@10)) (|Seq#Length_3707| s0@@10)) m@@0) (= (|Seq#Index_3707| (|Seq#Append_3707| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3707| s0@@10))) (|Seq#Index_3707| s1@@10 m@@0))))
 :qid |stdinbpl.368:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3707| s1@@10 m@@0) (|Seq#Append_3707| s0@@10 s1@@10))
)))
(assert (forall ((o_143@@4 T@Ref) (f_57 T@Field_41477_41478) (Heap@@36 T@PolymorphicMapType_41404) ) (!  (=> (select (|PolymorphicMapType_41404_28883_53#PolymorphicMapType_41404| Heap@@36) o_143@@4 $allocated) (select (|PolymorphicMapType_41404_28883_53#PolymorphicMapType_41404| Heap@@36) (select (|PolymorphicMapType_41404_28886_28887#PolymorphicMapType_41404| Heap@@36) o_143@@4 f_57) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_41404_28886_28887#PolymorphicMapType_41404| Heap@@36) o_143@@4 f_57))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_41404) (Mask@@30 T@PolymorphicMapType_41425) (i@@33 Int) (lo@@11 Int) (hi@@23 Int) (step@@7 Int) (vmin@@7 Int) (vmax_1@@7 Int) (ar_1@@23 T@Seq_48594) ) (!  (=> (state Heap@@37 Mask@@30) (= (|sum_square'| Heap@@37 i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax_1@@7 ar_1@@23) (|sum_square#frame| (FrameFragment_4688 (|sum_square#condqp2| Heap@@37 i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax_1@@7 ar_1@@23)) i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax_1@@7 ar_1@@23)))
 :qid |stdinbpl.1020:15|
 :skolemid |87|
 :pattern ( (state Heap@@37 Mask@@30) (|sum_square'| Heap@@37 i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax_1@@7 ar_1@@23))
)))
(assert (forall ((s@@29 T@Seq_48594) (x@@3 T@Ref) (i@@34 Int) ) (!  (=> (and (and (<= 0 i@@34) (< i@@34 (|Seq#Length_29180| s@@29))) (= (|Seq#Index_29180| s@@29 i@@34) x@@3)) (|Seq#Contains_48594| s@@29 x@@3))
 :qid |stdinbpl.520:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_48594| s@@29 x@@3) (|Seq#Index_29180| s@@29 i@@34))
)))
(assert (forall ((s@@30 T@Seq_3707) (x@@4 Int) (i@@35 Int) ) (!  (=> (and (and (<= 0 i@@35) (< i@@35 (|Seq#Length_3707| s@@30))) (= (|Seq#Index_3707| s@@30 i@@35) x@@4)) (|Seq#Contains_3707| s@@30 x@@4))
 :qid |stdinbpl.520:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3707| s@@30 x@@4) (|Seq#Index_3707| s@@30 i@@35))
)))
(assert (forall ((s0@@11 T@Seq_48594) (s1@@11 T@Seq_48594) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_48594| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_48594| s0@@11 s1@@11))) (not (= (|Seq#Length_29180| s0@@11) (|Seq#Length_29180| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_48594| s0@@11 s1@@11))) (= (|Seq#Length_29180| s0@@11) (|Seq#Length_29180| s1@@11))) (= (|Seq#SkolemDiff_48594| s0@@11 s1@@11) (|Seq#SkolemDiff_48594| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_48594| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_48594| s0@@11 s1@@11) (|Seq#Length_29180| s0@@11))) (not (= (|Seq#Index_29180| s0@@11 (|Seq#SkolemDiff_48594| s0@@11 s1@@11)) (|Seq#Index_29180| s1@@11 (|Seq#SkolemDiff_48594| s0@@11 s1@@11))))))
 :qid |stdinbpl.624:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_48594| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3707) (s1@@12 T@Seq_3707) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3707| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3707| s0@@12 s1@@12))) (not (= (|Seq#Length_3707| s0@@12) (|Seq#Length_3707| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3707| s0@@12 s1@@12))) (= (|Seq#Length_3707| s0@@12) (|Seq#Length_3707| s1@@12))) (= (|Seq#SkolemDiff_3707| s0@@12 s1@@12) (|Seq#SkolemDiff_3707| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3707| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3707| s0@@12 s1@@12) (|Seq#Length_3707| s0@@12))) (not (= (|Seq#Index_3707| s0@@12 (|Seq#SkolemDiff_3707| s0@@12 s1@@12)) (|Seq#Index_3707| s1@@12 (|Seq#SkolemDiff_3707| s0@@12 s1@@12))))))
 :qid |stdinbpl.624:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3707| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_29141_117835) (v_1@@0 T@FrameType) (q T@Field_29141_117835) (w@@0 T@FrameType) (r T@Field_29141_117835) (u T@FrameType) ) (!  (=> (and (InsidePredicate_41464_41464 p@@1 v_1@@0 q w@@0) (InsidePredicate_41464_41464 q w@@0 r u)) (InsidePredicate_41464_41464 p@@1 v_1@@0 r u))
 :qid |stdinbpl.291:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_41464_41464 p@@1 v_1@@0 q w@@0) (InsidePredicate_41464_41464 q w@@0 r u))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_41404) (i@@36 Int) (lo@@12 Int) (hi@@24 Int) (step@@8 Int) (vmin@@8 Int) (vmax_1@@8 Int) (ar_1@@24 T@Seq_48594) ) (! (dummyFunction_4136 (|sum_square#triggerStateless| i@@36 lo@@12 hi@@24 step@@8 vmin@@8 vmax_1@@8 ar_1@@24))
 :qid |stdinbpl.1004:15|
 :skolemid |84|
 :pattern ( (|sum_square'| Heap@@38 i@@36 lo@@12 hi@@24 step@@8 vmin@@8 vmax_1@@8 ar_1@@24))
)))
(assert (forall ((s@@31 T@Seq_48594) ) (!  (=> (= (|Seq#Length_29180| s@@31) 0) (= s@@31 |Seq#Empty_29180|))
 :qid |stdinbpl.327:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_29180| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3707) ) (!  (=> (= (|Seq#Length_3707| s@@32) 0) (= s@@32 |Seq#Empty_3707|))
 :qid |stdinbpl.327:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3707| s@@32))
)))
(assert (forall ((s@@33 T@Seq_48594) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_29180| s@@33 n@@25) |Seq#Empty_29180|))
 :qid |stdinbpl.503:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_29180| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3707) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3707| s@@34 n@@26) |Seq#Empty_3707|))
 :qid |stdinbpl.503:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3707| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@39 T@PolymorphicMapType_41404) (Mask@@31 T@PolymorphicMapType_41425) (i@@37 Int) (lo@@13 Int) (hi@@25 Int) (ar_1@@25 T@Seq_48594) ) (!  (=> (state Heap@@39 Mask@@31) (= (|sum_array'| Heap@@39 i@@37 lo@@13 hi@@25 ar_1@@25) (|sum_array#frame| (FrameFragment_4688 (|sum_array#condqp1| Heap@@39 i@@37 lo@@13 hi@@25 ar_1@@25)) i@@37 lo@@13 hi@@25 ar_1@@25)))
 :qid |stdinbpl.785:15|
 :skolemid |66|
 :pattern ( (state Heap@@39 Mask@@31) (|sum_array'| Heap@@39 i@@37 lo@@13 hi@@25 ar_1@@25))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_41404) (Mask@@32 T@PolymorphicMapType_41425) (i@@38 Int) (hi@@26 Int) (ar_1@@26 T@Seq_48594) (v_2@@12 Int) ) (!  (=> (state Heap@@40 Mask@@32) (= (|count_array'| Heap@@40 i@@38 hi@@26 ar_1@@26 v_2@@12) (|count_array#frame| (FrameFragment_4688 (|count_array#condqp4| Heap@@40 i@@38 hi@@26 ar_1@@26 v_2@@12)) i@@38 hi@@26 ar_1@@26 v_2@@12)))
 :qid |stdinbpl.1637:15|
 :skolemid |133|
 :pattern ( (state Heap@@40 Mask@@32) (|count_array'| Heap@@40 i@@38 hi@@26 ar_1@@26 v_2@@12))
)))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun i_71 () Int)
(declare-fun len_3 () Int)
(declare-fun c () T@Seq_48594)
(declare-fun QPMask@15 () T@PolymorphicMapType_41425)
(declare-fun b_24 () T@Seq_48594)
(declare-fun PostHeap@0 () T@PolymorphicMapType_41404)
(declare-fun i_70 () Int)
(declare-fun a_2 () T@Seq_48594)
(declare-fun i_69 () Int)
(declare-fun qpRange25 (T@Ref) Bool)
(declare-fun invRecv25 (T@Ref) Int)
(declare-fun QPMask@14 () T@PolymorphicMapType_41425)
(declare-fun i_68 () Int)
(declare-fun qpRange24 (T@Ref) Bool)
(declare-fun invRecv24 (T@Ref) Int)
(declare-fun QPMask@13 () T@PolymorphicMapType_41425)
(declare-fun i_75 () Int)
(declare-fun qpRange23 (T@Ref) Bool)
(declare-fun invRecv23 (T@Ref) Int)
(declare-fun i_67 () Int)
(declare-fun i_25_1 () Int)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_41404)
(declare-fun i_23_1 () Int)
(declare-fun i_21_1 () Int)
(declare-fun Mask@1 () T@PolymorphicMapType_41425)
(declare-fun neverTriggered26 (Int) Bool)
(declare-fun qpRange26 (T@Ref) Bool)
(declare-fun invRecv26 (T@Ref) Int)
(declare-fun QPMask@10 () T@PolymorphicMapType_41425)
(declare-fun neverTriggered27 (Int) Bool)
(declare-fun qpRange27 (T@Ref) Bool)
(declare-fun invRecv27 (T@Ref) Int)
(declare-fun QPMask@11 () T@PolymorphicMapType_41425)
(declare-fun neverTriggered28 (Int) Bool)
(declare-fun qpRange28 (T@Ref) Bool)
(declare-fun invRecv28 (T@Ref) Int)
(declare-fun QPMask@12 () T@PolymorphicMapType_41425)
(declare-fun QPMask@9 () T@PolymorphicMapType_41425)
(declare-fun perm@0 () Real)
(declare-fun Mask@0 () T@PolymorphicMapType_41425)
(declare-fun qpRange34 (T@Ref) Bool)
(declare-fun invRecv34 (T@Ref) Int)
(declare-fun QPMask@8 () T@PolymorphicMapType_41425)
(declare-fun QPMask@7 () T@PolymorphicMapType_41425)
(declare-fun qpRange35 (T@Ref) Bool)
(declare-fun invRecv35 (T@Ref) Int)
(declare-fun qpRange33 (T@Ref) Bool)
(declare-fun invRecv33 (T@Ref) Int)
(declare-fun QPMask@6 () T@PolymorphicMapType_41425)
(declare-fun qpRange32 (T@Ref) Bool)
(declare-fun invRecv32 (T@Ref) Int)
(declare-fun QPMask@5 () T@PolymorphicMapType_41425)
(declare-fun Heap@@41 () T@PolymorphicMapType_41404)
(declare-fun i_30 () Int)
(declare-fun neverTriggered31 (Int) Bool)
(declare-fun QPMask@4 () T@PolymorphicMapType_41425)
(declare-fun qpRange31 (T@Ref) Bool)
(declare-fun invRecv31 (T@Ref) Int)
(declare-fun neverTriggered30 (Int) Bool)
(declare-fun QPMask@3 () T@PolymorphicMapType_41425)
(declare-fun qpRange30 (T@Ref) Bool)
(declare-fun invRecv30 (T@Ref) Int)
(declare-fun neverTriggered29 (Int) Bool)
(declare-fun QPMask@2 () T@PolymorphicMapType_41425)
(declare-fun qpRange29 (T@Ref) Bool)
(declare-fun invRecv29 (T@Ref) Int)
(declare-fun k_10 () Int)
(declare-fun j_10_2 () Int)
(declare-fun k_8 () Int)
(declare-fun j_8_2 () Int)
(declare-fun k_6_2 () Int)
(declare-fun j_6_2 () Int)
(declare-fun diz () T@Ref)
(declare-fun current_thread_id () Int)
(declare-fun tid_17 () Int)
(declare-fun qpRange22 (T@Ref) Bool)
(declare-fun invRecv22 (T@Ref) Int)
(declare-fun QPMask@1 () T@PolymorphicMapType_41425)
(declare-fun i_74 () Int)
(declare-fun qpRange21 (T@Ref) Bool)
(declare-fun invRecv21 (T@Ref) Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_41425)
(declare-fun i_65 () Int)
(declare-fun qpRange20 (T@Ref) Bool)
(declare-fun invRecv20 (T@Ref) Int)
(declare-fun i_55 () Int)
(declare-fun k_36 () Int)
(declare-fun j_33 () Int)
(declare-fun k_33 () Int)
(declare-fun j_31 () Int)
(declare-fun k_28 () Int)
(declare-fun j_35 () Int)
(set-info :boogie-vc-id Ref__example)
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
 (=> (= (ControlFlow 0 0) 185) (let ((anon52_correct true))
(let ((anon123_Else_correct  (=> (and (not (and (< 0 i_71) (< i_71 len_3))) (= (ControlFlow 0 162) 157)) anon52_correct)))
(let ((anon123_Then_correct  (=> (and (< 0 i_71) (< i_71 len_3)) (and (=> (= (ControlFlow 0 158) (- 0 161)) (>= i_71 0)) (=> (>= i_71 0) (and (=> (= (ControlFlow 0 158) (- 0 160)) (< i_71 (|Seq#Length_29180| c))) (=> (< i_71 (|Seq#Length_29180| c)) (and (=> (= (ControlFlow 0 158) (- 0 159)) (HasDirectPerm_29141_3829 QPMask@15 (|Seq#Index_29180| c i_71) Ref__Integer_value)) (=> (HasDirectPerm_29141_3829 QPMask@15 (|Seq#Index_29180| c i_71) Ref__Integer_value) (=> (= (ControlFlow 0 158) 157) anon52_correct))))))))))
(let ((anon122_Else_correct true))
(let ((anon120_Else_correct  (=> (and (forall ((i_15_1 Int) ) (!  (=> (and (<= 0 i_15_1) (< i_15_1 len_3)) (= (select (|PolymorphicMapType_41404_29141_3829#PolymorphicMapType_41404| PostHeap@0) (|Seq#Index_29180| b_24 i_15_1) Ref__Integer_value) i_15_1))
 :qid |stdinbpl.3921:20|
 :skolemid |276|
 :pattern ( (|Seq#Index_29180| b_24 i_15_1))
)) (state PostHeap@0 QPMask@15)) (and (and (=> (= (ControlFlow 0 163) 156) anon122_Else_correct) (=> (= (ControlFlow 0 163) 158) anon123_Then_correct)) (=> (= (ControlFlow 0 163) 162) anon123_Else_correct)))))
(let ((anon48_correct true))
(let ((anon121_Else_correct  (=> (and (not (and (<= 0 i_70) (< i_70 len_3))) (= (ControlFlow 0 155) 150)) anon48_correct)))
(let ((anon121_Then_correct  (=> (and (<= 0 i_70) (< i_70 len_3)) (and (=> (= (ControlFlow 0 151) (- 0 154)) (>= i_70 0)) (=> (>= i_70 0) (and (=> (= (ControlFlow 0 151) (- 0 153)) (< i_70 (|Seq#Length_29180| b_24))) (=> (< i_70 (|Seq#Length_29180| b_24)) (and (=> (= (ControlFlow 0 151) (- 0 152)) (HasDirectPerm_29141_3829 QPMask@15 (|Seq#Index_29180| b_24 i_70) Ref__Integer_value)) (=> (HasDirectPerm_29141_3829 QPMask@15 (|Seq#Index_29180| b_24 i_70) Ref__Integer_value) (=> (= (ControlFlow 0 151) 150) anon48_correct))))))))))
(let ((anon118_Else_correct  (=> (and (forall ((i_13_1 Int) ) (!  (=> (and (<= 0 i_13_1) (< i_13_1 len_3)) (= (select (|PolymorphicMapType_41404_29141_3829#PolymorphicMapType_41404| PostHeap@0) (|Seq#Index_29180| a_2 i_13_1) Ref__Integer_value) (+ i_13_1 1)))
 :qid |stdinbpl.3903:20|
 :skolemid |275|
 :pattern ( (|Seq#Index_29180| a_2 i_13_1))
)) (state PostHeap@0 QPMask@15)) (and (and (=> (= (ControlFlow 0 164) 163) anon120_Else_correct) (=> (= (ControlFlow 0 164) 151) anon121_Then_correct)) (=> (= (ControlFlow 0 164) 155) anon121_Else_correct)))))
(let ((anon44_correct true))
(let ((anon119_Else_correct  (=> (and (not (and (<= 0 i_69) (< i_69 len_3))) (= (ControlFlow 0 149) 144)) anon44_correct)))
(let ((anon119_Then_correct  (=> (and (<= 0 i_69) (< i_69 len_3)) (and (=> (= (ControlFlow 0 145) (- 0 148)) (>= i_69 0)) (=> (>= i_69 0) (and (=> (= (ControlFlow 0 145) (- 0 147)) (< i_69 (|Seq#Length_29180| a_2))) (=> (< i_69 (|Seq#Length_29180| a_2)) (and (=> (= (ControlFlow 0 145) (- 0 146)) (HasDirectPerm_29141_3829 QPMask@15 (|Seq#Index_29180| a_2 i_69) Ref__Integer_value)) (=> (HasDirectPerm_29141_3829 QPMask@15 (|Seq#Index_29180| a_2 i_69) Ref__Integer_value) (=> (= (ControlFlow 0 145) 144) anon44_correct))))))))))
(let ((anon116_Else_correct  (and (=> (= (ControlFlow 0 165) (- 0 166)) (forall ((i_11_1 Int) (i_11_2 Int) ) (!  (=> (and (and (and (and (not (= i_11_1 i_11_2)) (and (<= 0 i_11_1) (< i_11_1 len_3))) (and (<= 0 i_11_2) (< i_11_2 len_3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_29180| c i_11_1) (|Seq#Index_29180| c i_11_2))))
 :qid |stdinbpl.3857:15|
 :skolemid |269|
))) (=> (forall ((i_11_1@@0 Int) (i_11_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_11_1@@0 i_11_2@@0)) (and (<= 0 i_11_1@@0) (< i_11_1@@0 len_3))) (and (<= 0 i_11_2@@0) (< i_11_2@@0 len_3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_29180| c i_11_1@@0) (|Seq#Index_29180| c i_11_2@@0))))
 :qid |stdinbpl.3857:15|
 :skolemid |269|
)) (=> (and (and (forall ((i_11_1@@1 Int) ) (!  (=> (and (and (<= 0 i_11_1@@1) (< i_11_1@@1 len_3)) (< NoPerm FullPerm)) (and (qpRange25 (|Seq#Index_29180| c i_11_1@@1)) (= (invRecv25 (|Seq#Index_29180| c i_11_1@@1)) i_11_1@@1)))
 :qid |stdinbpl.3863:22|
 :skolemid |270|
 :pattern ( (|Seq#Index_29180| c i_11_1@@1))
 :pattern ( (|Seq#Index_29180| c i_11_1@@1))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv25 o_9)) (< (invRecv25 o_9) len_3)) (< NoPerm FullPerm)) (qpRange25 o_9)) (= (|Seq#Index_29180| c (invRecv25 o_9)) o_9))
 :qid |stdinbpl.3867:22|
 :skolemid |271|
 :pattern ( (invRecv25 o_9))
))) (and (forall ((i_11_1@@2 Int) ) (!  (=> (and (<= 0 i_11_1@@2) (< i_11_1@@2 len_3)) (not (= (|Seq#Index_29180| c i_11_1@@2) null)))
 :qid |stdinbpl.3873:22|
 :skolemid |272|
 :pattern ( (|Seq#Index_29180| c i_11_1@@2))
 :pattern ( (|Seq#Index_29180| c i_11_1@@2))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv25 o_9@@0)) (< (invRecv25 o_9@@0) len_3)) (< NoPerm FullPerm)) (qpRange25 o_9@@0)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_29180| c (invRecv25 o_9@@0)) o_9@@0)) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@15) o_9@@0 Ref__Integer_value) (+ (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@14) o_9@@0 Ref__Integer_value) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv25 o_9@@0)) (< (invRecv25 o_9@@0) len_3)) (< NoPerm FullPerm)) (qpRange25 o_9@@0))) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@15) o_9@@0 Ref__Integer_value) (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@14) o_9@@0 Ref__Integer_value))))
 :qid |stdinbpl.3879:22|
 :skolemid |273|
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@15) o_9@@0 Ref__Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_41464_53) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@14) o_9@@1 f_5) (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@15) o_9@@1 f_5)))
 :qid |stdinbpl.3883:29|
 :skolemid |274|
 :pattern ( (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@14) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@15) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_41477_41478) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@14) o_9@@2 f_5@@0) (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@15) o_9@@2 f_5@@0)))
 :qid |stdinbpl.3883:29|
 :skolemid |274|
 :pattern ( (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@14) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@15) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_47552_3829) ) (!  (=> (not (= f_5@@1 Ref__Integer_value)) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@14) o_9@@3 f_5@@1) (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@15) o_9@@3 f_5@@1)))
 :qid |stdinbpl.3883:29|
 :skolemid |274|
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@14) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@15) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_29141_117835) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@14) o_9@@4 f_5@@2) (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@15) o_9@@4 f_5@@2)))
 :qid |stdinbpl.3883:29|
 :skolemid |274|
 :pattern ( (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@14) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@15) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_29141_117968) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@14) o_9@@5 f_5@@3) (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@15) o_9@@5 f_5@@3)))
 :qid |stdinbpl.3883:29|
 :skolemid |274|
 :pattern ( (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@14) o_9@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@15) o_9@@5 f_5@@3))
))) (and (state PostHeap@0 QPMask@15) (state PostHeap@0 QPMask@15))) (and (and (=> (= (ControlFlow 0 165) 164) anon118_Else_correct) (=> (= (ControlFlow 0 165) 145) anon119_Then_correct)) (=> (= (ControlFlow 0 165) 149) anon119_Else_correct))))))))
(let ((anon40_correct true))
(let ((anon117_Else_correct  (=> (and (not (and (<= 0 i_68) (< i_68 len_3))) (= (ControlFlow 0 143) 139)) anon40_correct)))
(let ((anon117_Then_correct  (=> (and (<= 0 i_68) (< i_68 len_3)) (and (=> (= (ControlFlow 0 140) (- 0 142)) (>= i_68 0)) (=> (>= i_68 0) (and (=> (= (ControlFlow 0 140) (- 0 141)) (< i_68 (|Seq#Length_29180| c))) (=> (< i_68 (|Seq#Length_29180| c)) (=> (= (ControlFlow 0 140) 139) anon40_correct))))))))
(let ((anon114_Else_correct  (and (=> (= (ControlFlow 0 167) (- 0 169)) (forall ((i_9_1 Int) (i_9_2 Int) ) (!  (=> (and (and (and (and (not (= i_9_1 i_9_2)) (and (<= 0 i_9_1) (< i_9_1 len_3))) (and (<= 0 i_9_2) (< i_9_2 len_3))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_29180| b_24 i_9_1) (|Seq#Index_29180| b_24 i_9_2))))
 :qid |stdinbpl.3803:15|
 :skolemid |262|
))) (=> (forall ((i_9_1@@0 Int) (i_9_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_9_1@@0 i_9_2@@0)) (and (<= 0 i_9_1@@0) (< i_9_1@@0 len_3))) (and (<= 0 i_9_2@@0) (< i_9_2@@0 len_3))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_29180| b_24 i_9_1@@0) (|Seq#Index_29180| b_24 i_9_2@@0))))
 :qid |stdinbpl.3803:15|
 :skolemid |262|
)) (=> (and (forall ((i_9_1@@1 Int) ) (!  (=> (and (and (<= 0 i_9_1@@1) (< i_9_1@@1 len_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange24 (|Seq#Index_29180| b_24 i_9_1@@1)) (= (invRecv24 (|Seq#Index_29180| b_24 i_9_1@@1)) i_9_1@@1)))
 :qid |stdinbpl.3809:22|
 :skolemid |263|
 :pattern ( (|Seq#Index_29180| b_24 i_9_1@@1))
 :pattern ( (|Seq#Index_29180| b_24 i_9_1@@1))
)) (forall ((o_9@@6 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv24 o_9@@6)) (< (invRecv24 o_9@@6) len_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange24 o_9@@6)) (= (|Seq#Index_29180| b_24 (invRecv24 o_9@@6)) o_9@@6))
 :qid |stdinbpl.3813:22|
 :skolemid |264|
 :pattern ( (invRecv24 o_9@@6))
))) (and (=> (= (ControlFlow 0 167) (- 0 168)) (forall ((i_9_1@@2 Int) ) (!  (=> (and (<= 0 i_9_1@@2) (< i_9_1@@2 len_3)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3819:15|
 :skolemid |265|
 :pattern ( (|Seq#Index_29180| b_24 i_9_1@@2))
 :pattern ( (|Seq#Index_29180| b_24 i_9_1@@2))
))) (=> (forall ((i_9_1@@3 Int) ) (!  (=> (and (<= 0 i_9_1@@3) (< i_9_1@@3 len_3)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3819:15|
 :skolemid |265|
 :pattern ( (|Seq#Index_29180| b_24 i_9_1@@3))
 :pattern ( (|Seq#Index_29180| b_24 i_9_1@@3))
)) (=> (and (forall ((i_9_1@@4 Int) ) (!  (=> (and (and (<= 0 i_9_1@@4) (< i_9_1@@4 len_3)) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= (|Seq#Index_29180| b_24 i_9_1@@4) null)))
 :qid |stdinbpl.3825:22|
 :skolemid |266|
 :pattern ( (|Seq#Index_29180| b_24 i_9_1@@4))
 :pattern ( (|Seq#Index_29180| b_24 i_9_1@@4))
)) (forall ((o_9@@7 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv24 o_9@@7)) (< (invRecv24 o_9@@7) len_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange24 o_9@@7)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (|Seq#Index_29180| b_24 (invRecv24 o_9@@7)) o_9@@7)) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@14) o_9@@7 Ref__Integer_value) (+ (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@13) o_9@@7 Ref__Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (<= 0 (invRecv24 o_9@@7)) (< (invRecv24 o_9@@7) len_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange24 o_9@@7))) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@14) o_9@@7 Ref__Integer_value) (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@13) o_9@@7 Ref__Integer_value))))
 :qid |stdinbpl.3831:22|
 :skolemid |267|
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@14) o_9@@7 Ref__Integer_value))
))) (=> (and (and (and (and (and (forall ((o_9@@8 T@Ref) (f_5@@4 T@Field_41464_53) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@13) o_9@@8 f_5@@4) (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@14) o_9@@8 f_5@@4)))
 :qid |stdinbpl.3835:29|
 :skolemid |268|
 :pattern ( (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@13) o_9@@8 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@14) o_9@@8 f_5@@4))
)) (forall ((o_9@@9 T@Ref) (f_5@@5 T@Field_41477_41478) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@13) o_9@@9 f_5@@5) (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@14) o_9@@9 f_5@@5)))
 :qid |stdinbpl.3835:29|
 :skolemid |268|
 :pattern ( (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@13) o_9@@9 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@14) o_9@@9 f_5@@5))
))) (forall ((o_9@@10 T@Ref) (f_5@@6 T@Field_47552_3829) ) (!  (=> (not (= f_5@@6 Ref__Integer_value)) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@13) o_9@@10 f_5@@6) (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@14) o_9@@10 f_5@@6)))
 :qid |stdinbpl.3835:29|
 :skolemid |268|
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@13) o_9@@10 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@14) o_9@@10 f_5@@6))
))) (forall ((o_9@@11 T@Ref) (f_5@@7 T@Field_29141_117835) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@13) o_9@@11 f_5@@7) (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@14) o_9@@11 f_5@@7)))
 :qid |stdinbpl.3835:29|
 :skolemid |268|
 :pattern ( (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@13) o_9@@11 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@14) o_9@@11 f_5@@7))
))) (forall ((o_9@@12 T@Ref) (f_5@@8 T@Field_29141_117968) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@13) o_9@@12 f_5@@8) (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@14) o_9@@12 f_5@@8)))
 :qid |stdinbpl.3835:29|
 :skolemid |268|
 :pattern ( (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@13) o_9@@12 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@14) o_9@@12 f_5@@8))
))) (and (and (state PostHeap@0 QPMask@14) (state PostHeap@0 QPMask@14)) (and (= (|Seq#Length_29180| c) len_3) (state PostHeap@0 QPMask@14)))) (and (and (=> (= (ControlFlow 0 167) 165) anon116_Else_correct) (=> (= (ControlFlow 0 167) 140) anon117_Then_correct)) (=> (= (ControlFlow 0 167) 143) anon117_Else_correct)))))))))))
(let ((anon36_correct true))
(let ((anon115_Else_correct  (=> (and (not (and (<= 0 i_75) (< i_75 len_3))) (= (ControlFlow 0 138) 134)) anon36_correct)))
(let ((anon115_Then_correct  (=> (and (<= 0 i_75) (< i_75 len_3)) (and (=> (= (ControlFlow 0 135) (- 0 137)) (>= i_75 0)) (=> (>= i_75 0) (and (=> (= (ControlFlow 0 135) (- 0 136)) (< i_75 (|Seq#Length_29180| b_24))) (=> (< i_75 (|Seq#Length_29180| b_24)) (=> (= (ControlFlow 0 135) 134) anon36_correct))))))))
(let ((anon112_Else_correct  (and (=> (= (ControlFlow 0 170) (- 0 171)) (forall ((i_7_1 Int) (i_7_2 Int) ) (!  (=> (and (and (and (and (not (= i_7_1 i_7_2)) (and (<= 0 i_7_1) (< i_7_1 len_3))) (and (<= 0 i_7_2) (< i_7_2 len_3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_29180| a_2 i_7_1) (|Seq#Index_29180| a_2 i_7_2))))
 :qid |stdinbpl.3755:15|
 :skolemid |256|
))) (=> (forall ((i_7_1@@0 Int) (i_7_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_7_1@@0 i_7_2@@0)) (and (<= 0 i_7_1@@0) (< i_7_1@@0 len_3))) (and (<= 0 i_7_2@@0) (< i_7_2@@0 len_3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_29180| a_2 i_7_1@@0) (|Seq#Index_29180| a_2 i_7_2@@0))))
 :qid |stdinbpl.3755:15|
 :skolemid |256|
)) (=> (and (and (forall ((i_7_1@@1 Int) ) (!  (=> (and (and (<= 0 i_7_1@@1) (< i_7_1@@1 len_3)) (< NoPerm FullPerm)) (and (qpRange23 (|Seq#Index_29180| a_2 i_7_1@@1)) (= (invRecv23 (|Seq#Index_29180| a_2 i_7_1@@1)) i_7_1@@1)))
 :qid |stdinbpl.3761:22|
 :skolemid |257|
 :pattern ( (|Seq#Index_29180| a_2 i_7_1@@1))
 :pattern ( (|Seq#Index_29180| a_2 i_7_1@@1))
)) (forall ((o_9@@13 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv23 o_9@@13)) (< (invRecv23 o_9@@13) len_3)) (< NoPerm FullPerm)) (qpRange23 o_9@@13)) (= (|Seq#Index_29180| a_2 (invRecv23 o_9@@13)) o_9@@13))
 :qid |stdinbpl.3765:22|
 :skolemid |258|
 :pattern ( (invRecv23 o_9@@13))
))) (and (forall ((i_7_1@@2 Int) ) (!  (=> (and (<= 0 i_7_1@@2) (< i_7_1@@2 len_3)) (not (= (|Seq#Index_29180| a_2 i_7_1@@2) null)))
 :qid |stdinbpl.3771:22|
 :skolemid |259|
 :pattern ( (|Seq#Index_29180| a_2 i_7_1@@2))
 :pattern ( (|Seq#Index_29180| a_2 i_7_1@@2))
)) (forall ((o_9@@14 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv23 o_9@@14)) (< (invRecv23 o_9@@14) len_3)) (< NoPerm FullPerm)) (qpRange23 o_9@@14)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_29180| a_2 (invRecv23 o_9@@14)) o_9@@14)) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@13) o_9@@14 Ref__Integer_value) (+ (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| ZeroMask) o_9@@14 Ref__Integer_value) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv23 o_9@@14)) (< (invRecv23 o_9@@14) len_3)) (< NoPerm FullPerm)) (qpRange23 o_9@@14))) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@13) o_9@@14 Ref__Integer_value) (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| ZeroMask) o_9@@14 Ref__Integer_value))))
 :qid |stdinbpl.3777:22|
 :skolemid |260|
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@13) o_9@@14 Ref__Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_9@@15 T@Ref) (f_5@@9 T@Field_41464_53) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| ZeroMask) o_9@@15 f_5@@9) (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@13) o_9@@15 f_5@@9)))
 :qid |stdinbpl.3781:29|
 :skolemid |261|
 :pattern ( (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| ZeroMask) o_9@@15 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@13) o_9@@15 f_5@@9))
)) (forall ((o_9@@16 T@Ref) (f_5@@10 T@Field_41477_41478) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| ZeroMask) o_9@@16 f_5@@10) (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@13) o_9@@16 f_5@@10)))
 :qid |stdinbpl.3781:29|
 :skolemid |261|
 :pattern ( (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| ZeroMask) o_9@@16 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@13) o_9@@16 f_5@@10))
))) (forall ((o_9@@17 T@Ref) (f_5@@11 T@Field_47552_3829) ) (!  (=> (not (= f_5@@11 Ref__Integer_value)) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| ZeroMask) o_9@@17 f_5@@11) (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@13) o_9@@17 f_5@@11)))
 :qid |stdinbpl.3781:29|
 :skolemid |261|
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| ZeroMask) o_9@@17 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@13) o_9@@17 f_5@@11))
))) (forall ((o_9@@18 T@Ref) (f_5@@12 T@Field_29141_117835) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| ZeroMask) o_9@@18 f_5@@12) (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@13) o_9@@18 f_5@@12)))
 :qid |stdinbpl.3781:29|
 :skolemid |261|
 :pattern ( (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| ZeroMask) o_9@@18 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@13) o_9@@18 f_5@@12))
))) (forall ((o_9@@19 T@Ref) (f_5@@13 T@Field_29141_117968) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| ZeroMask) o_9@@19 f_5@@13) (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@13) o_9@@19 f_5@@13)))
 :qid |stdinbpl.3781:29|
 :skolemid |261|
 :pattern ( (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| ZeroMask) o_9@@19 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@13) o_9@@19 f_5@@13))
))) (and (and (state PostHeap@0 QPMask@13) (state PostHeap@0 QPMask@13)) (and (= (|Seq#Length_29180| b_24) len_3) (state PostHeap@0 QPMask@13)))) (and (and (=> (= (ControlFlow 0 170) 167) anon114_Else_correct) (=> (= (ControlFlow 0 170) 135) anon115_Then_correct)) (=> (= (ControlFlow 0 170) 138) anon115_Else_correct))))))))
(let ((anon32_correct true))
(let ((anon113_Else_correct  (=> (and (not (and (<= 0 i_67) (< i_67 len_3))) (= (ControlFlow 0 133) 129)) anon32_correct)))
(let ((anon113_Then_correct  (=> (and (<= 0 i_67) (< i_67 len_3)) (and (=> (= (ControlFlow 0 130) (- 0 132)) (>= i_67 0)) (=> (>= i_67 0) (and (=> (= (ControlFlow 0 130) (- 0 131)) (< i_67 (|Seq#Length_29180| a_2))) (=> (< i_67 (|Seq#Length_29180| a_2)) (=> (= (ControlFlow 0 130) 129) anon32_correct))))))))
(let ((anon111_Then_correct  (=> (state PostHeap@0 ZeroMask) (=> (and (= (|Seq#Length_29180| a_2) len_3) (state PostHeap@0 ZeroMask)) (and (and (=> (= (ControlFlow 0 172) 170) anon112_Else_correct) (=> (= (ControlFlow 0 172) 130) anon113_Then_correct)) (=> (= (ControlFlow 0 172) 133) anon113_Else_correct))))))
(let ((anon95_correct true))
(let ((anon144_Else_correct  (=> (and (not (and (< 0 i_25_1) (< i_25_1 len_3))) (= (ControlFlow 0 71) 68)) anon95_correct)))
(let ((anon144_Then_correct  (=> (and (< 0 i_25_1) (< i_25_1 len_3)) (and (=> (= (ControlFlow 0 69) (- 0 70)) (= (select (|PolymorphicMapType_41404_29141_3829#PolymorphicMapType_41404| ExhaleHeap@0) (|Seq#Index_29180| c i_25_1) Ref__Integer_value) (+ i_25_1 2))) (=> (= (select (|PolymorphicMapType_41404_29141_3829#PolymorphicMapType_41404| ExhaleHeap@0) (|Seq#Index_29180| c i_25_1) Ref__Integer_value) (+ i_25_1 2)) (=> (= (ControlFlow 0 69) 68) anon95_correct))))))
(let ((anon143_Else_correct true))
(let ((anon141_Else_correct  (=> (forall ((i_24_1_1 Int) ) (!  (=> (and (<= 0 i_24_1_1) (< i_24_1_1 len_3)) (= (select (|PolymorphicMapType_41404_29141_3829#PolymorphicMapType_41404| ExhaleHeap@0) (|Seq#Index_29180| b_24 i_24_1_1) Ref__Integer_value) i_24_1_1))
 :qid |stdinbpl.4488:20|
 :skolemid |351|
 :pattern ( (|Seq#Index_29180| b_24 i_24_1_1))
)) (and (and (=> (= (ControlFlow 0 72) 67) anon143_Else_correct) (=> (= (ControlFlow 0 72) 69) anon144_Then_correct)) (=> (= (ControlFlow 0 72) 71) anon144_Else_correct)))))
(let ((anon91_correct true))
(let ((anon142_Else_correct  (=> (and (not (and (<= 0 i_23_1) (< i_23_1 len_3))) (= (ControlFlow 0 66) 63)) anon91_correct)))
(let ((anon142_Then_correct  (=> (and (<= 0 i_23_1) (< i_23_1 len_3)) (and (=> (= (ControlFlow 0 64) (- 0 65)) (= (select (|PolymorphicMapType_41404_29141_3829#PolymorphicMapType_41404| ExhaleHeap@0) (|Seq#Index_29180| b_24 i_23_1) Ref__Integer_value) i_23_1)) (=> (= (select (|PolymorphicMapType_41404_29141_3829#PolymorphicMapType_41404| ExhaleHeap@0) (|Seq#Index_29180| b_24 i_23_1) Ref__Integer_value) i_23_1) (=> (= (ControlFlow 0 64) 63) anon91_correct))))))
(let ((anon139_Else_correct  (=> (forall ((i_22_1_1 Int) ) (!  (=> (and (<= 0 i_22_1_1) (< i_22_1_1 len_3)) (= (select (|PolymorphicMapType_41404_29141_3829#PolymorphicMapType_41404| ExhaleHeap@0) (|Seq#Index_29180| a_2 i_22_1_1) Ref__Integer_value) (+ i_22_1_1 1)))
 :qid |stdinbpl.4477:20|
 :skolemid |350|
 :pattern ( (|Seq#Index_29180| a_2 i_22_1_1))
)) (and (and (=> (= (ControlFlow 0 73) 72) anon141_Else_correct) (=> (= (ControlFlow 0 73) 64) anon142_Then_correct)) (=> (= (ControlFlow 0 73) 66) anon142_Else_correct)))))
(let ((anon87_correct true))
(let ((anon140_Else_correct  (=> (and (not (and (<= 0 i_21_1) (< i_21_1 len_3))) (= (ControlFlow 0 62) 59)) anon87_correct)))
(let ((anon140_Then_correct  (=> (and (<= 0 i_21_1) (< i_21_1 len_3)) (and (=> (= (ControlFlow 0 60) (- 0 61)) (= (select (|PolymorphicMapType_41404_29141_3829#PolymorphicMapType_41404| ExhaleHeap@0) (|Seq#Index_29180| a_2 i_21_1) Ref__Integer_value) (+ i_21_1 1))) (=> (= (select (|PolymorphicMapType_41404_29141_3829#PolymorphicMapType_41404| ExhaleHeap@0) (|Seq#Index_29180| a_2 i_21_1) Ref__Integer_value) (+ i_21_1 1)) (=> (= (ControlFlow 0 60) 59) anon87_correct))))))
(let ((anon84_correct  (=> (forall ((i_36 Int) ) (!  (=> (and (<= 0 i_36) (< i_36 len_3)) (= (select (|PolymorphicMapType_41404_29141_3829#PolymorphicMapType_41404| ExhaleHeap@0) (|Seq#Index_29180| a_2 i_36) Ref__Integer_value) (+ i_36 1)))
 :qid |stdinbpl.4319:22|
 :skolemid |328|
 :pattern ( (|Seq#Index_29180| a_2 i_36))
)) (=> (and (and (forall ((i_37 Int) ) (!  (=> (and (<= 0 i_37) (< i_37 len_3)) (= (select (|PolymorphicMapType_41404_29141_3829#PolymorphicMapType_41404| ExhaleHeap@0) (|Seq#Index_29180| b_24 i_37) Ref__Integer_value) i_37))
 :qid |stdinbpl.4323:22|
 :skolemid |329|
 :pattern ( (|Seq#Index_29180| b_24 i_37))
)) (forall ((i_38 Int) ) (!  (=> (and (<= 1 i_38) (< i_38 len_3)) (= (select (|PolymorphicMapType_41404_29141_3829#PolymorphicMapType_41404| ExhaleHeap@0) (|Seq#Index_29180| c i_38) Ref__Integer_value) (+ i_38 2)))
 :qid |stdinbpl.4327:22|
 :skolemid |330|
 :pattern ( (|Seq#Index_29180| c i_38))
))) (and (state ExhaleHeap@0 Mask@1) (state ExhaleHeap@0 Mask@1))) (and (=> (= (ControlFlow 0 74) (- 0 84)) (= (|Seq#Length_29180| a_2) len_3)) (=> (= (|Seq#Length_29180| a_2) len_3) (and (=> (= (ControlFlow 0 74) (- 0 83)) (forall ((i_18_1 Int) (i_18_2 Int) ) (!  (=> (and (and (and (and (not (= i_18_1 i_18_2)) (and (<= 0 i_18_1) (< i_18_1 len_3))) (and (<= 0 i_18_2) (< i_18_2 len_3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_29180| a_2 i_18_1) (|Seq#Index_29180| a_2 i_18_2))))
 :qid |stdinbpl.4346:17|
 :skolemid |331|
 :pattern ( (neverTriggered26 i_18_1) (neverTriggered26 i_18_2))
))) (=> (forall ((i_18_1@@0 Int) (i_18_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_18_1@@0 i_18_2@@0)) (and (<= 0 i_18_1@@0) (< i_18_1@@0 len_3))) (and (<= 0 i_18_2@@0) (< i_18_2@@0 len_3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_29180| a_2 i_18_1@@0) (|Seq#Index_29180| a_2 i_18_2@@0))))
 :qid |stdinbpl.4346:17|
 :skolemid |331|
 :pattern ( (neverTriggered26 i_18_1@@0) (neverTriggered26 i_18_2@@0))
)) (and (=> (= (ControlFlow 0 74) (- 0 82)) (forall ((i_18_1@@1 Int) ) (!  (=> (and (<= 0 i_18_1@@1) (< i_18_1@@1 len_3)) (>= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| Mask@1) (|Seq#Index_29180| a_2 i_18_1@@1) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.4353:17|
 :skolemid |332|
 :pattern ( (|Seq#Index_29180| a_2 i_18_1@@1))
 :pattern ( (|Seq#Index_29180| a_2 i_18_1@@1))
))) (=> (forall ((i_18_1@@2 Int) ) (!  (=> (and (<= 0 i_18_1@@2) (< i_18_1@@2 len_3)) (>= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| Mask@1) (|Seq#Index_29180| a_2 i_18_1@@2) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.4353:17|
 :skolemid |332|
 :pattern ( (|Seq#Index_29180| a_2 i_18_1@@2))
 :pattern ( (|Seq#Index_29180| a_2 i_18_1@@2))
)) (=> (forall ((i_18_1@@3 Int) ) (!  (=> (and (and (<= 0 i_18_1@@3) (< i_18_1@@3 len_3)) (< NoPerm FullPerm)) (and (qpRange26 (|Seq#Index_29180| a_2 i_18_1@@3)) (= (invRecv26 (|Seq#Index_29180| a_2 i_18_1@@3)) i_18_1@@3)))
 :qid |stdinbpl.4359:22|
 :skolemid |333|
 :pattern ( (|Seq#Index_29180| a_2 i_18_1@@3))
 :pattern ( (|Seq#Index_29180| a_2 i_18_1@@3))
)) (=> (and (forall ((o_9@@20 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv26 o_9@@20)) (< (invRecv26 o_9@@20) len_3)) (and (< NoPerm FullPerm) (qpRange26 o_9@@20))) (= (|Seq#Index_29180| a_2 (invRecv26 o_9@@20)) o_9@@20))
 :qid |stdinbpl.4363:22|
 :skolemid |334|
 :pattern ( (invRecv26 o_9@@20))
)) (forall ((o_9@@21 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv26 o_9@@21)) (< (invRecv26 o_9@@21) len_3)) (and (< NoPerm FullPerm) (qpRange26 o_9@@21))) (and (= (|Seq#Index_29180| a_2 (invRecv26 o_9@@21)) o_9@@21) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@10) o_9@@21 Ref__Integer_value) (- (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| Mask@1) o_9@@21 Ref__Integer_value) FullPerm)))) (=> (not (and (and (<= 0 (invRecv26 o_9@@21)) (< (invRecv26 o_9@@21) len_3)) (and (< NoPerm FullPerm) (qpRange26 o_9@@21)))) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@10) o_9@@21 Ref__Integer_value) (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| Mask@1) o_9@@21 Ref__Integer_value))))
 :qid |stdinbpl.4369:22|
 :skolemid |335|
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@10) o_9@@21 Ref__Integer_value))
))) (=> (and (and (and (and (forall ((o_9@@22 T@Ref) (f_5@@14 T@Field_41464_53) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| Mask@1) o_9@@22 f_5@@14) (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@10) o_9@@22 f_5@@14)))
 :qid |stdinbpl.4375:29|
 :skolemid |336|
 :pattern ( (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@10) o_9@@22 f_5@@14))
)) (forall ((o_9@@23 T@Ref) (f_5@@15 T@Field_41477_41478) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| Mask@1) o_9@@23 f_5@@15) (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@10) o_9@@23 f_5@@15)))
 :qid |stdinbpl.4375:29|
 :skolemid |336|
 :pattern ( (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@10) o_9@@23 f_5@@15))
))) (forall ((o_9@@24 T@Ref) (f_5@@16 T@Field_47552_3829) ) (!  (=> (not (= f_5@@16 Ref__Integer_value)) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| Mask@1) o_9@@24 f_5@@16) (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@10) o_9@@24 f_5@@16)))
 :qid |stdinbpl.4375:29|
 :skolemid |336|
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@10) o_9@@24 f_5@@16))
))) (forall ((o_9@@25 T@Ref) (f_5@@17 T@Field_29141_117835) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| Mask@1) o_9@@25 f_5@@17) (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@10) o_9@@25 f_5@@17)))
 :qid |stdinbpl.4375:29|
 :skolemid |336|
 :pattern ( (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@10) o_9@@25 f_5@@17))
))) (forall ((o_9@@26 T@Ref) (f_5@@18 T@Field_29141_117968) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| Mask@1) o_9@@26 f_5@@18) (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@10) o_9@@26 f_5@@18)))
 :qid |stdinbpl.4375:29|
 :skolemid |336|
 :pattern ( (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@10) o_9@@26 f_5@@18))
))) (and (=> (= (ControlFlow 0 74) (- 0 81)) (= (|Seq#Length_29180| b_24) len_3)) (=> (= (|Seq#Length_29180| b_24) len_3) (and (=> (= (ControlFlow 0 74) (- 0 80)) (forall ((i_19_1 Int) ) (!  (=> (and (and (<= 0 i_19_1) (< i_19_1 len_3)) (dummyFunction_4136 (select (|PolymorphicMapType_41404_29141_3829#PolymorphicMapType_41404| ExhaleHeap@0) (|Seq#Index_29180| b_24 i_19_1) Ref__Integer_value))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4386:17|
 :skolemid |337|
 :pattern ( (|Seq#Index_29180| b_24 i_19_1))
 :pattern ( (|Seq#Index_29180| b_24 i_19_1))
))) (=> (forall ((i_19_1@@0 Int) ) (!  (=> (and (and (<= 0 i_19_1@@0) (< i_19_1@@0 len_3)) (dummyFunction_4136 (select (|PolymorphicMapType_41404_29141_3829#PolymorphicMapType_41404| ExhaleHeap@0) (|Seq#Index_29180| b_24 i_19_1@@0) Ref__Integer_value))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4386:17|
 :skolemid |337|
 :pattern ( (|Seq#Index_29180| b_24 i_19_1@@0))
 :pattern ( (|Seq#Index_29180| b_24 i_19_1@@0))
)) (and (=> (= (ControlFlow 0 74) (- 0 79)) (forall ((i_19_1@@1 Int) (i_19_2 Int) ) (!  (=> (and (and (and (and (not (= i_19_1@@1 i_19_2)) (and (<= 0 i_19_1@@1) (< i_19_1@@1 len_3))) (and (<= 0 i_19_2) (< i_19_2 len_3))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_29180| b_24 i_19_1@@1) (|Seq#Index_29180| b_24 i_19_2))))
 :qid |stdinbpl.4393:17|
 :skolemid |338|
 :pattern ( (neverTriggered27 i_19_1@@1) (neverTriggered27 i_19_2))
))) (=> (forall ((i_19_1@@2 Int) (i_19_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_19_1@@2 i_19_2@@0)) (and (<= 0 i_19_1@@2) (< i_19_1@@2 len_3))) (and (<= 0 i_19_2@@0) (< i_19_2@@0 len_3))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_29180| b_24 i_19_1@@2) (|Seq#Index_29180| b_24 i_19_2@@0))))
 :qid |stdinbpl.4393:17|
 :skolemid |338|
 :pattern ( (neverTriggered27 i_19_1@@2) (neverTriggered27 i_19_2@@0))
)) (and (=> (= (ControlFlow 0 74) (- 0 78)) (forall ((i_19_1@@3 Int) ) (!  (=> (and (<= 0 i_19_1@@3) (< i_19_1@@3 len_3)) (>= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@10) (|Seq#Index_29180| b_24 i_19_1@@3) Ref__Integer_value) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.4400:17|
 :skolemid |339|
 :pattern ( (|Seq#Index_29180| b_24 i_19_1@@3))
 :pattern ( (|Seq#Index_29180| b_24 i_19_1@@3))
))) (=> (forall ((i_19_1@@4 Int) ) (!  (=> (and (<= 0 i_19_1@@4) (< i_19_1@@4 len_3)) (>= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@10) (|Seq#Index_29180| b_24 i_19_1@@4) Ref__Integer_value) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.4400:17|
 :skolemid |339|
 :pattern ( (|Seq#Index_29180| b_24 i_19_1@@4))
 :pattern ( (|Seq#Index_29180| b_24 i_19_1@@4))
)) (=> (forall ((i_19_1@@5 Int) ) (!  (=> (and (and (<= 0 i_19_1@@5) (< i_19_1@@5 len_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange27 (|Seq#Index_29180| b_24 i_19_1@@5)) (= (invRecv27 (|Seq#Index_29180| b_24 i_19_1@@5)) i_19_1@@5)))
 :qid |stdinbpl.4406:22|
 :skolemid |340|
 :pattern ( (|Seq#Index_29180| b_24 i_19_1@@5))
 :pattern ( (|Seq#Index_29180| b_24 i_19_1@@5))
)) (=> (and (forall ((o_9@@27 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv27 o_9@@27)) (< (invRecv27 o_9@@27) len_3)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange27 o_9@@27))) (= (|Seq#Index_29180| b_24 (invRecv27 o_9@@27)) o_9@@27))
 :qid |stdinbpl.4410:22|
 :skolemid |341|
 :pattern ( (invRecv27 o_9@@27))
)) (forall ((o_9@@28 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv27 o_9@@28)) (< (invRecv27 o_9@@28) len_3)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange27 o_9@@28))) (and (= (|Seq#Index_29180| b_24 (invRecv27 o_9@@28)) o_9@@28) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@11) o_9@@28 Ref__Integer_value) (- (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@10) o_9@@28 Ref__Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (<= 0 (invRecv27 o_9@@28)) (< (invRecv27 o_9@@28) len_3)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange27 o_9@@28)))) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@11) o_9@@28 Ref__Integer_value) (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@10) o_9@@28 Ref__Integer_value))))
 :qid |stdinbpl.4416:22|
 :skolemid |342|
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@11) o_9@@28 Ref__Integer_value))
))) (=> (and (and (and (and (forall ((o_9@@29 T@Ref) (f_5@@19 T@Field_41464_53) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@10) o_9@@29 f_5@@19) (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@11) o_9@@29 f_5@@19)))
 :qid |stdinbpl.4422:29|
 :skolemid |343|
 :pattern ( (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@11) o_9@@29 f_5@@19))
)) (forall ((o_9@@30 T@Ref) (f_5@@20 T@Field_41477_41478) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@10) o_9@@30 f_5@@20) (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@11) o_9@@30 f_5@@20)))
 :qid |stdinbpl.4422:29|
 :skolemid |343|
 :pattern ( (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@11) o_9@@30 f_5@@20))
))) (forall ((o_9@@31 T@Ref) (f_5@@21 T@Field_47552_3829) ) (!  (=> (not (= f_5@@21 Ref__Integer_value)) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@10) o_9@@31 f_5@@21) (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@11) o_9@@31 f_5@@21)))
 :qid |stdinbpl.4422:29|
 :skolemid |343|
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@11) o_9@@31 f_5@@21))
))) (forall ((o_9@@32 T@Ref) (f_5@@22 T@Field_29141_117835) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@10) o_9@@32 f_5@@22) (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@11) o_9@@32 f_5@@22)))
 :qid |stdinbpl.4422:29|
 :skolemid |343|
 :pattern ( (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@11) o_9@@32 f_5@@22))
))) (forall ((o_9@@33 T@Ref) (f_5@@23 T@Field_29141_117968) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@10) o_9@@33 f_5@@23) (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@11) o_9@@33 f_5@@23)))
 :qid |stdinbpl.4422:29|
 :skolemid |343|
 :pattern ( (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@11) o_9@@33 f_5@@23))
))) (and (=> (= (ControlFlow 0 74) (- 0 77)) (= (|Seq#Length_29180| c) len_3)) (=> (= (|Seq#Length_29180| c) len_3) (and (=> (= (ControlFlow 0 74) (- 0 76)) (forall ((i_20_2 Int) (i_20_3 Int) ) (!  (=> (and (and (and (and (not (= i_20_2 i_20_3)) (and (<= 0 i_20_2) (< i_20_2 len_3))) (and (<= 0 i_20_3) (< i_20_3 len_3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_29180| c i_20_2) (|Seq#Index_29180| c i_20_3))))
 :qid |stdinbpl.4436:17|
 :skolemid |344|
 :pattern ( (neverTriggered28 i_20_2) (neverTriggered28 i_20_3))
))) (=> (forall ((i_20_2@@0 Int) (i_20_3@@0 Int) ) (!  (=> (and (and (and (and (not (= i_20_2@@0 i_20_3@@0)) (and (<= 0 i_20_2@@0) (< i_20_2@@0 len_3))) (and (<= 0 i_20_3@@0) (< i_20_3@@0 len_3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_29180| c i_20_2@@0) (|Seq#Index_29180| c i_20_3@@0))))
 :qid |stdinbpl.4436:17|
 :skolemid |344|
 :pattern ( (neverTriggered28 i_20_2@@0) (neverTriggered28 i_20_3@@0))
)) (and (=> (= (ControlFlow 0 74) (- 0 75)) (forall ((i_20_2@@1 Int) ) (!  (=> (and (<= 0 i_20_2@@1) (< i_20_2@@1 len_3)) (>= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@11) (|Seq#Index_29180| c i_20_2@@1) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.4443:17|
 :skolemid |345|
 :pattern ( (|Seq#Index_29180| c i_20_2@@1))
 :pattern ( (|Seq#Index_29180| c i_20_2@@1))
))) (=> (forall ((i_20_2@@2 Int) ) (!  (=> (and (<= 0 i_20_2@@2) (< i_20_2@@2 len_3)) (>= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@11) (|Seq#Index_29180| c i_20_2@@2) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.4443:17|
 :skolemid |345|
 :pattern ( (|Seq#Index_29180| c i_20_2@@2))
 :pattern ( (|Seq#Index_29180| c i_20_2@@2))
)) (=> (forall ((i_20_2@@3 Int) ) (!  (=> (and (and (<= 0 i_20_2@@3) (< i_20_2@@3 len_3)) (< NoPerm FullPerm)) (and (qpRange28 (|Seq#Index_29180| c i_20_2@@3)) (= (invRecv28 (|Seq#Index_29180| c i_20_2@@3)) i_20_2@@3)))
 :qid |stdinbpl.4449:22|
 :skolemid |346|
 :pattern ( (|Seq#Index_29180| c i_20_2@@3))
 :pattern ( (|Seq#Index_29180| c i_20_2@@3))
)) (=> (and (forall ((o_9@@34 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv28 o_9@@34)) (< (invRecv28 o_9@@34) len_3)) (and (< NoPerm FullPerm) (qpRange28 o_9@@34))) (= (|Seq#Index_29180| c (invRecv28 o_9@@34)) o_9@@34))
 :qid |stdinbpl.4453:22|
 :skolemid |347|
 :pattern ( (invRecv28 o_9@@34))
)) (forall ((o_9@@35 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv28 o_9@@35)) (< (invRecv28 o_9@@35) len_3)) (and (< NoPerm FullPerm) (qpRange28 o_9@@35))) (and (= (|Seq#Index_29180| c (invRecv28 o_9@@35)) o_9@@35) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@12) o_9@@35 Ref__Integer_value) (- (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@11) o_9@@35 Ref__Integer_value) FullPerm)))) (=> (not (and (and (<= 0 (invRecv28 o_9@@35)) (< (invRecv28 o_9@@35) len_3)) (and (< NoPerm FullPerm) (qpRange28 o_9@@35)))) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@12) o_9@@35 Ref__Integer_value) (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@11) o_9@@35 Ref__Integer_value))))
 :qid |stdinbpl.4459:22|
 :skolemid |348|
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@12) o_9@@35 Ref__Integer_value))
))) (=> (and (and (and (and (forall ((o_9@@36 T@Ref) (f_5@@24 T@Field_41464_53) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@11) o_9@@36 f_5@@24) (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@12) o_9@@36 f_5@@24)))
 :qid |stdinbpl.4465:29|
 :skolemid |349|
 :pattern ( (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@12) o_9@@36 f_5@@24))
)) (forall ((o_9@@37 T@Ref) (f_5@@25 T@Field_41477_41478) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@11) o_9@@37 f_5@@25) (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@12) o_9@@37 f_5@@25)))
 :qid |stdinbpl.4465:29|
 :skolemid |349|
 :pattern ( (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@12) o_9@@37 f_5@@25))
))) (forall ((o_9@@38 T@Ref) (f_5@@26 T@Field_47552_3829) ) (!  (=> (not (= f_5@@26 Ref__Integer_value)) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@11) o_9@@38 f_5@@26) (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@12) o_9@@38 f_5@@26)))
 :qid |stdinbpl.4465:29|
 :skolemid |349|
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@12) o_9@@38 f_5@@26))
))) (forall ((o_9@@39 T@Ref) (f_5@@27 T@Field_29141_117835) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@11) o_9@@39 f_5@@27) (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@12) o_9@@39 f_5@@27)))
 :qid |stdinbpl.4465:29|
 :skolemid |349|
 :pattern ( (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@12) o_9@@39 f_5@@27))
))) (forall ((o_9@@40 T@Ref) (f_5@@28 T@Field_29141_117968) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@11) o_9@@40 f_5@@28) (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@12) o_9@@40 f_5@@28)))
 :qid |stdinbpl.4465:29|
 :skolemid |349|
 :pattern ( (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@12) o_9@@40 f_5@@28))
))) (and (and (=> (= (ControlFlow 0 74) 73) anon139_Else_correct) (=> (= (ControlFlow 0 74) 60) anon140_Then_correct)) (=> (= (ControlFlow 0 74) 62) anon140_Else_correct)))))))))))))))))))))))))))))))))))
(let ((anon138_Else_correct  (=> (not (and (<= 0 (- (|Seq#Length_29180| a_2) 1)) (< (- (|Seq#Length_29180| a_2) 1) len_3))) (=> (and (= Mask@1 QPMask@9) (= (ControlFlow 0 87) 74)) anon84_correct))))
(let ((anon138_Then_correct  (=> (and (and (<= 0 (- (|Seq#Length_29180| a_2) 1)) (< (- (|Seq#Length_29180| a_2) 1) len_3)) (= perm@0 (/ (to_real 1) (to_real 2)))) (and (=> (= (ControlFlow 0 85) (- 0 86)) (>= perm@0 NoPerm)) (=> (>= perm@0 NoPerm) (=> (=> (> perm@0 NoPerm) (not (= (|Seq#Index_29180| a_2 (- (|Seq#Length_29180| a_2) 1)) null))) (=> (and (and (= Mask@0 (PolymorphicMapType_41425 (store (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@9) (|Seq#Index_29180| a_2 (- (|Seq#Length_29180| a_2) 1)) Ref__Integer_value (+ (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@9) (|Seq#Index_29180| a_2 (- (|Seq#Length_29180| a_2) 1)) Ref__Integer_value) perm@0)) (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@9) (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@9) (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@9) (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@9))) (state ExhaleHeap@0 Mask@0)) (and (= Mask@1 Mask@0) (= (ControlFlow 0 85) 74))) anon84_correct)))))))
(let ((anon82_correct  (and (=> (= (ControlFlow 0 88) (- 0 91)) (forall ((i_34 Int) (i_34_2 Int) ) (!  (=> (and (and (and (and (not (= i_34 i_34_2)) (and (<= 0 i_34) (< i_34 len_3))) (and (<= 0 i_34_2) (< i_34_2 len_3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_29180| c i_34) (|Seq#Index_29180| c i_34_2))))
 :qid |stdinbpl.4239:17|
 :skolemid |315|
))) (=> (forall ((i_34@@0 Int) (i_34_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_34@@0 i_34_2@@0)) (and (<= 0 i_34@@0) (< i_34@@0 len_3))) (and (<= 0 i_34_2@@0) (< i_34_2@@0 len_3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_29180| c i_34@@0) (|Seq#Index_29180| c i_34_2@@0))))
 :qid |stdinbpl.4239:17|
 :skolemid |315|
)) (=> (and (and (forall ((i_34@@1 Int) ) (!  (=> (and (and (<= 0 i_34@@1) (< i_34@@1 len_3)) (< NoPerm FullPerm)) (and (qpRange34 (|Seq#Index_29180| c i_34@@1)) (= (invRecv34 (|Seq#Index_29180| c i_34@@1)) i_34@@1)))
 :qid |stdinbpl.4245:24|
 :skolemid |316|
 :pattern ( (|Seq#Index_29180| c i_34@@1))
 :pattern ( (|Seq#Index_29180| c i_34@@1))
)) (forall ((o_9@@41 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv34 o_9@@41)) (< (invRecv34 o_9@@41) len_3)) (< NoPerm FullPerm)) (qpRange34 o_9@@41)) (= (|Seq#Index_29180| c (invRecv34 o_9@@41)) o_9@@41))
 :qid |stdinbpl.4249:24|
 :skolemid |317|
 :pattern ( (invRecv34 o_9@@41))
))) (and (forall ((i_34@@2 Int) ) (!  (=> (and (<= 0 i_34@@2) (< i_34@@2 len_3)) (not (= (|Seq#Index_29180| c i_34@@2) null)))
 :qid |stdinbpl.4255:24|
 :skolemid |318|
 :pattern ( (|Seq#Index_29180| c i_34@@2))
 :pattern ( (|Seq#Index_29180| c i_34@@2))
)) (forall ((o_9@@42 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv34 o_9@@42)) (< (invRecv34 o_9@@42) len_3)) (< NoPerm FullPerm)) (qpRange34 o_9@@42)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_29180| c (invRecv34 o_9@@42)) o_9@@42)) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@8) o_9@@42 Ref__Integer_value) (+ (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@7) o_9@@42 Ref__Integer_value) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv34 o_9@@42)) (< (invRecv34 o_9@@42) len_3)) (< NoPerm FullPerm)) (qpRange34 o_9@@42))) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@8) o_9@@42 Ref__Integer_value) (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@7) o_9@@42 Ref__Integer_value))))
 :qid |stdinbpl.4261:24|
 :skolemid |319|
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@8) o_9@@42 Ref__Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_9@@43 T@Ref) (f_5@@29 T@Field_41464_53) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@7) o_9@@43 f_5@@29) (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@8) o_9@@43 f_5@@29)))
 :qid |stdinbpl.4265:31|
 :skolemid |320|
 :pattern ( (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@7) o_9@@43 f_5@@29))
 :pattern ( (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@8) o_9@@43 f_5@@29))
)) (forall ((o_9@@44 T@Ref) (f_5@@30 T@Field_41477_41478) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@7) o_9@@44 f_5@@30) (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@8) o_9@@44 f_5@@30)))
 :qid |stdinbpl.4265:31|
 :skolemid |320|
 :pattern ( (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@7) o_9@@44 f_5@@30))
 :pattern ( (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@8) o_9@@44 f_5@@30))
))) (forall ((o_9@@45 T@Ref) (f_5@@31 T@Field_47552_3829) ) (!  (=> (not (= f_5@@31 Ref__Integer_value)) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@7) o_9@@45 f_5@@31) (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@8) o_9@@45 f_5@@31)))
 :qid |stdinbpl.4265:31|
 :skolemid |320|
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@7) o_9@@45 f_5@@31))
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@8) o_9@@45 f_5@@31))
))) (forall ((o_9@@46 T@Ref) (f_5@@32 T@Field_29141_117835) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@7) o_9@@46 f_5@@32) (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@8) o_9@@46 f_5@@32)))
 :qid |stdinbpl.4265:31|
 :skolemid |320|
 :pattern ( (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@7) o_9@@46 f_5@@32))
 :pattern ( (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@8) o_9@@46 f_5@@32))
))) (forall ((o_9@@47 T@Ref) (f_5@@33 T@Field_29141_117968) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@7) o_9@@47 f_5@@33) (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@8) o_9@@47 f_5@@33)))
 :qid |stdinbpl.4265:31|
 :skolemid |320|
 :pattern ( (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@7) o_9@@47 f_5@@33))
 :pattern ( (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@8) o_9@@47 f_5@@33))
))) (state ExhaleHeap@0 QPMask@8)) (and (=> (= (ControlFlow 0 88) (- 0 90)) (forall ((i_35 Int) (i_35_1 Int) ) (!  (=> (and (and (and (and (not (= i_35 i_35_1)) (and (<= 0 i_35) (< i_35 (- len_3 1)))) (and (<= 0 i_35_1) (< i_35_1 (- len_3 1)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_29180| a_2 i_35) (|Seq#Index_29180| a_2 i_35_1))))
 :qid |stdinbpl.4273:17|
 :skolemid |321|
))) (=> (forall ((i_35@@0 Int) (i_35_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_35@@0 i_35_1@@0)) (and (<= 0 i_35@@0) (< i_35@@0 (- len_3 1)))) (and (<= 0 i_35_1@@0) (< i_35_1@@0 (- len_3 1)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_29180| a_2 i_35@@0) (|Seq#Index_29180| a_2 i_35_1@@0))))
 :qid |stdinbpl.4273:17|
 :skolemid |321|
)) (=> (and (forall ((i_35@@1 Int) ) (!  (=> (and (and (<= 0 i_35@@1) (< i_35@@1 (- len_3 1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange35 (|Seq#Index_29180| a_2 i_35@@1)) (= (invRecv35 (|Seq#Index_29180| a_2 i_35@@1)) i_35@@1)))
 :qid |stdinbpl.4279:24|
 :skolemid |322|
 :pattern ( (|Seq#Index_29180| a_2 i_35@@1))
 :pattern ( (|Seq#Index_29180| a_2 i_35@@1))
)) (forall ((o_9@@48 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv35 o_9@@48)) (< (invRecv35 o_9@@48) (- len_3 1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange35 o_9@@48)) (= (|Seq#Index_29180| a_2 (invRecv35 o_9@@48)) o_9@@48))
 :qid |stdinbpl.4283:24|
 :skolemid |323|
 :pattern ( (invRecv35 o_9@@48))
))) (and (=> (= (ControlFlow 0 88) (- 0 89)) (forall ((i_35@@2 Int) ) (!  (=> (and (<= 0 i_35@@2) (< i_35@@2 (- len_3 1))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4289:17|
 :skolemid |324|
 :pattern ( (|Seq#Index_29180| a_2 i_35@@2))
 :pattern ( (|Seq#Index_29180| a_2 i_35@@2))
))) (=> (forall ((i_35@@3 Int) ) (!  (=> (and (<= 0 i_35@@3) (< i_35@@3 (- len_3 1))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4289:17|
 :skolemid |324|
 :pattern ( (|Seq#Index_29180| a_2 i_35@@3))
 :pattern ( (|Seq#Index_29180| a_2 i_35@@3))
)) (=> (and (forall ((i_35@@4 Int) ) (!  (=> (and (and (<= 0 i_35@@4) (< i_35@@4 (- len_3 1))) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= (|Seq#Index_29180| a_2 i_35@@4) null)))
 :qid |stdinbpl.4295:24|
 :skolemid |325|
 :pattern ( (|Seq#Index_29180| a_2 i_35@@4))
 :pattern ( (|Seq#Index_29180| a_2 i_35@@4))
)) (forall ((o_9@@49 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv35 o_9@@49)) (< (invRecv35 o_9@@49) (- len_3 1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange35 o_9@@49)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (|Seq#Index_29180| a_2 (invRecv35 o_9@@49)) o_9@@49)) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@9) o_9@@49 Ref__Integer_value) (+ (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@8) o_9@@49 Ref__Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (<= 0 (invRecv35 o_9@@49)) (< (invRecv35 o_9@@49) (- len_3 1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange35 o_9@@49))) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@9) o_9@@49 Ref__Integer_value) (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@8) o_9@@49 Ref__Integer_value))))
 :qid |stdinbpl.4301:24|
 :skolemid |326|
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@9) o_9@@49 Ref__Integer_value))
))) (=> (and (and (and (and (and (forall ((o_9@@50 T@Ref) (f_5@@34 T@Field_41464_53) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@8) o_9@@50 f_5@@34) (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@9) o_9@@50 f_5@@34)))
 :qid |stdinbpl.4305:31|
 :skolemid |327|
 :pattern ( (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@8) o_9@@50 f_5@@34))
 :pattern ( (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@9) o_9@@50 f_5@@34))
)) (forall ((o_9@@51 T@Ref) (f_5@@35 T@Field_41477_41478) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@8) o_9@@51 f_5@@35) (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@9) o_9@@51 f_5@@35)))
 :qid |stdinbpl.4305:31|
 :skolemid |327|
 :pattern ( (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@8) o_9@@51 f_5@@35))
 :pattern ( (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@9) o_9@@51 f_5@@35))
))) (forall ((o_9@@52 T@Ref) (f_5@@36 T@Field_47552_3829) ) (!  (=> (not (= f_5@@36 Ref__Integer_value)) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@8) o_9@@52 f_5@@36) (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@9) o_9@@52 f_5@@36)))
 :qid |stdinbpl.4305:31|
 :skolemid |327|
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@8) o_9@@52 f_5@@36))
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@9) o_9@@52 f_5@@36))
))) (forall ((o_9@@53 T@Ref) (f_5@@37 T@Field_29141_117835) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@8) o_9@@53 f_5@@37) (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@9) o_9@@53 f_5@@37)))
 :qid |stdinbpl.4305:31|
 :skolemid |327|
 :pattern ( (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@8) o_9@@53 f_5@@37))
 :pattern ( (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@9) o_9@@53 f_5@@37))
))) (forall ((o_9@@54 T@Ref) (f_5@@38 T@Field_29141_117968) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@8) o_9@@54 f_5@@38) (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@9) o_9@@54 f_5@@38)))
 :qid |stdinbpl.4305:31|
 :skolemid |327|
 :pattern ( (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@8) o_9@@54 f_5@@38))
 :pattern ( (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@9) o_9@@54 f_5@@38))
))) (state ExhaleHeap@0 QPMask@9)) (and (=> (= (ControlFlow 0 88) 85) anon138_Then_correct) (=> (= (ControlFlow 0 88) 87) anon138_Else_correct)))))))))))))))
(let ((anon137_Else_correct  (=> (and (<= len_3 0) (= (ControlFlow 0 93) 88)) anon82_correct)))
(let ((anon137_Then_correct  (=> (< 0 len_3) (=> (and (= (|Seq#Length_29180| c) len_3) (= (ControlFlow 0 92) 88)) anon82_correct))))
(let ((anon80_correct  (and (=> (= (ControlFlow 0 94) (- 0 96)) (forall ((i_33 Int) (i_33_2 Int) ) (!  (=> (and (and (and (and (not (= i_33 i_33_2)) (and (<= 0 i_33) (< i_33 len_3))) (and (<= 0 i_33_2) (< i_33_2 len_3))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_29180| b_24 i_33) (|Seq#Index_29180| b_24 i_33_2))))
 :qid |stdinbpl.4196:17|
 :skolemid |308|
))) (=> (forall ((i_33@@0 Int) (i_33_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_33@@0 i_33_2@@0)) (and (<= 0 i_33@@0) (< i_33@@0 len_3))) (and (<= 0 i_33_2@@0) (< i_33_2@@0 len_3))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_29180| b_24 i_33@@0) (|Seq#Index_29180| b_24 i_33_2@@0))))
 :qid |stdinbpl.4196:17|
 :skolemid |308|
)) (=> (and (forall ((i_33@@1 Int) ) (!  (=> (and (and (<= 0 i_33@@1) (< i_33@@1 len_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange33 (|Seq#Index_29180| b_24 i_33@@1)) (= (invRecv33 (|Seq#Index_29180| b_24 i_33@@1)) i_33@@1)))
 :qid |stdinbpl.4202:24|
 :skolemid |309|
 :pattern ( (|Seq#Index_29180| b_24 i_33@@1))
 :pattern ( (|Seq#Index_29180| b_24 i_33@@1))
)) (forall ((o_9@@55 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv33 o_9@@55)) (< (invRecv33 o_9@@55) len_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange33 o_9@@55)) (= (|Seq#Index_29180| b_24 (invRecv33 o_9@@55)) o_9@@55))
 :qid |stdinbpl.4206:24|
 :skolemid |310|
 :pattern ( (invRecv33 o_9@@55))
))) (and (=> (= (ControlFlow 0 94) (- 0 95)) (forall ((i_33@@2 Int) ) (!  (=> (and (<= 0 i_33@@2) (< i_33@@2 len_3)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4212:17|
 :skolemid |311|
 :pattern ( (|Seq#Index_29180| b_24 i_33@@2))
 :pattern ( (|Seq#Index_29180| b_24 i_33@@2))
))) (=> (forall ((i_33@@3 Int) ) (!  (=> (and (<= 0 i_33@@3) (< i_33@@3 len_3)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4212:17|
 :skolemid |311|
 :pattern ( (|Seq#Index_29180| b_24 i_33@@3))
 :pattern ( (|Seq#Index_29180| b_24 i_33@@3))
)) (=> (and (forall ((i_33@@4 Int) ) (!  (=> (and (and (<= 0 i_33@@4) (< i_33@@4 len_3)) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= (|Seq#Index_29180| b_24 i_33@@4) null)))
 :qid |stdinbpl.4218:24|
 :skolemid |312|
 :pattern ( (|Seq#Index_29180| b_24 i_33@@4))
 :pattern ( (|Seq#Index_29180| b_24 i_33@@4))
)) (forall ((o_9@@56 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv33 o_9@@56)) (< (invRecv33 o_9@@56) len_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange33 o_9@@56)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (|Seq#Index_29180| b_24 (invRecv33 o_9@@56)) o_9@@56)) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@7) o_9@@56 Ref__Integer_value) (+ (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@6) o_9@@56 Ref__Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (<= 0 (invRecv33 o_9@@56)) (< (invRecv33 o_9@@56) len_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange33 o_9@@56))) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@7) o_9@@56 Ref__Integer_value) (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@6) o_9@@56 Ref__Integer_value))))
 :qid |stdinbpl.4224:24|
 :skolemid |313|
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@7) o_9@@56 Ref__Integer_value))
))) (=> (and (and (and (and (and (forall ((o_9@@57 T@Ref) (f_5@@39 T@Field_41464_53) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@6) o_9@@57 f_5@@39) (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@7) o_9@@57 f_5@@39)))
 :qid |stdinbpl.4228:31|
 :skolemid |314|
 :pattern ( (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@6) o_9@@57 f_5@@39))
 :pattern ( (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@7) o_9@@57 f_5@@39))
)) (forall ((o_9@@58 T@Ref) (f_5@@40 T@Field_41477_41478) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@6) o_9@@58 f_5@@40) (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@7) o_9@@58 f_5@@40)))
 :qid |stdinbpl.4228:31|
 :skolemid |314|
 :pattern ( (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@6) o_9@@58 f_5@@40))
 :pattern ( (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@7) o_9@@58 f_5@@40))
))) (forall ((o_9@@59 T@Ref) (f_5@@41 T@Field_47552_3829) ) (!  (=> (not (= f_5@@41 Ref__Integer_value)) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@6) o_9@@59 f_5@@41) (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@7) o_9@@59 f_5@@41)))
 :qid |stdinbpl.4228:31|
 :skolemid |314|
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@6) o_9@@59 f_5@@41))
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@7) o_9@@59 f_5@@41))
))) (forall ((o_9@@60 T@Ref) (f_5@@42 T@Field_29141_117835) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@6) o_9@@60 f_5@@42) (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@7) o_9@@60 f_5@@42)))
 :qid |stdinbpl.4228:31|
 :skolemid |314|
 :pattern ( (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@6) o_9@@60 f_5@@42))
 :pattern ( (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@7) o_9@@60 f_5@@42))
))) (forall ((o_9@@61 T@Ref) (f_5@@43 T@Field_29141_117968) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@6) o_9@@61 f_5@@43) (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@7) o_9@@61 f_5@@43)))
 :qid |stdinbpl.4228:31|
 :skolemid |314|
 :pattern ( (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@6) o_9@@61 f_5@@43))
 :pattern ( (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@7) o_9@@61 f_5@@43))
))) (state ExhaleHeap@0 QPMask@7)) (and (=> (= (ControlFlow 0 94) 92) anon137_Then_correct) (=> (= (ControlFlow 0 94) 93) anon137_Else_correct)))))))))))
(let ((anon136_Else_correct  (=> (and (<= len_3 0) (= (ControlFlow 0 98) 94)) anon80_correct)))
(let ((anon136_Then_correct  (=> (< 0 len_3) (=> (and (= (|Seq#Length_29180| b_24) len_3) (= (ControlFlow 0 97) 94)) anon80_correct))))
(let ((anon78_correct  (and (=> (= (ControlFlow 0 99) (- 0 101)) (forall ((i_32 Int) (i_32_1 Int) ) (!  (=> (and (and (and (and (not (= i_32 i_32_1)) (and (<= 0 i_32) (< i_32 len_3))) (and (<= 0 i_32_1) (< i_32_1 len_3))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_29180| a_2 i_32) (|Seq#Index_29180| a_2 i_32_1))))
 :qid |stdinbpl.4153:17|
 :skolemid |301|
))) (=> (forall ((i_32@@0 Int) (i_32_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_32@@0 i_32_1@@0)) (and (<= 0 i_32@@0) (< i_32@@0 len_3))) (and (<= 0 i_32_1@@0) (< i_32_1@@0 len_3))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_29180| a_2 i_32@@0) (|Seq#Index_29180| a_2 i_32_1@@0))))
 :qid |stdinbpl.4153:17|
 :skolemid |301|
)) (=> (and (forall ((i_32@@1 Int) ) (!  (=> (and (and (<= 0 i_32@@1) (< i_32@@1 len_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange32 (|Seq#Index_29180| a_2 i_32@@1)) (= (invRecv32 (|Seq#Index_29180| a_2 i_32@@1)) i_32@@1)))
 :qid |stdinbpl.4159:24|
 :skolemid |302|
 :pattern ( (|Seq#Index_29180| a_2 i_32@@1))
 :pattern ( (|Seq#Index_29180| a_2 i_32@@1))
)) (forall ((o_9@@62 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv32 o_9@@62)) (< (invRecv32 o_9@@62) len_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange32 o_9@@62)) (= (|Seq#Index_29180| a_2 (invRecv32 o_9@@62)) o_9@@62))
 :qid |stdinbpl.4163:24|
 :skolemid |303|
 :pattern ( (invRecv32 o_9@@62))
))) (and (=> (= (ControlFlow 0 99) (- 0 100)) (forall ((i_32@@2 Int) ) (!  (=> (and (<= 0 i_32@@2) (< i_32@@2 len_3)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4169:17|
 :skolemid |304|
 :pattern ( (|Seq#Index_29180| a_2 i_32@@2))
 :pattern ( (|Seq#Index_29180| a_2 i_32@@2))
))) (=> (forall ((i_32@@3 Int) ) (!  (=> (and (<= 0 i_32@@3) (< i_32@@3 len_3)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4169:17|
 :skolemid |304|
 :pattern ( (|Seq#Index_29180| a_2 i_32@@3))
 :pattern ( (|Seq#Index_29180| a_2 i_32@@3))
)) (=> (and (forall ((i_32@@4 Int) ) (!  (=> (and (and (<= 0 i_32@@4) (< i_32@@4 len_3)) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= (|Seq#Index_29180| a_2 i_32@@4) null)))
 :qid |stdinbpl.4175:24|
 :skolemid |305|
 :pattern ( (|Seq#Index_29180| a_2 i_32@@4))
 :pattern ( (|Seq#Index_29180| a_2 i_32@@4))
)) (forall ((o_9@@63 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv32 o_9@@63)) (< (invRecv32 o_9@@63) len_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange32 o_9@@63)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (|Seq#Index_29180| a_2 (invRecv32 o_9@@63)) o_9@@63)) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@6) o_9@@63 Ref__Integer_value) (+ (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@5) o_9@@63 Ref__Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (<= 0 (invRecv32 o_9@@63)) (< (invRecv32 o_9@@63) len_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange32 o_9@@63))) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@6) o_9@@63 Ref__Integer_value) (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@5) o_9@@63 Ref__Integer_value))))
 :qid |stdinbpl.4181:24|
 :skolemid |306|
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@6) o_9@@63 Ref__Integer_value))
))) (=> (and (and (and (and (and (forall ((o_9@@64 T@Ref) (f_5@@44 T@Field_41464_53) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@5) o_9@@64 f_5@@44) (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@6) o_9@@64 f_5@@44)))
 :qid |stdinbpl.4185:31|
 :skolemid |307|
 :pattern ( (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@5) o_9@@64 f_5@@44))
 :pattern ( (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@6) o_9@@64 f_5@@44))
)) (forall ((o_9@@65 T@Ref) (f_5@@45 T@Field_41477_41478) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@5) o_9@@65 f_5@@45) (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@6) o_9@@65 f_5@@45)))
 :qid |stdinbpl.4185:31|
 :skolemid |307|
 :pattern ( (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@5) o_9@@65 f_5@@45))
 :pattern ( (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@6) o_9@@65 f_5@@45))
))) (forall ((o_9@@66 T@Ref) (f_5@@46 T@Field_47552_3829) ) (!  (=> (not (= f_5@@46 Ref__Integer_value)) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@5) o_9@@66 f_5@@46) (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@6) o_9@@66 f_5@@46)))
 :qid |stdinbpl.4185:31|
 :skolemid |307|
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@5) o_9@@66 f_5@@46))
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@6) o_9@@66 f_5@@46))
))) (forall ((o_9@@67 T@Ref) (f_5@@47 T@Field_29141_117835) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@5) o_9@@67 f_5@@47) (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@6) o_9@@67 f_5@@47)))
 :qid |stdinbpl.4185:31|
 :skolemid |307|
 :pattern ( (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@5) o_9@@67 f_5@@47))
 :pattern ( (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@6) o_9@@67 f_5@@47))
))) (forall ((o_9@@68 T@Ref) (f_5@@48 T@Field_29141_117968) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@5) o_9@@68 f_5@@48) (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@6) o_9@@68 f_5@@48)))
 :qid |stdinbpl.4185:31|
 :skolemid |307|
 :pattern ( (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@5) o_9@@68 f_5@@48))
 :pattern ( (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@6) o_9@@68 f_5@@48))
))) (state ExhaleHeap@0 QPMask@6)) (and (=> (= (ControlFlow 0 99) 97) anon136_Then_correct) (=> (= (ControlFlow 0 99) 98) anon136_Else_correct)))))))))))
(let ((anon135_Else_correct  (=> (and (<= len_3 0) (= (ControlFlow 0 103) 99)) anon78_correct)))
(let ((anon135_Then_correct  (=> (< 0 len_3) (=> (and (= (|Seq#Length_29180| a_2) len_3) (= (ControlFlow 0 102) 99)) anon78_correct))))
(let ((anon133_Else_correct  (=> (and (forall ((i_31_1 Int) ) (!  (=> (and (<= 0 i_31_1) (< i_31_1 len_3)) (= (select (|PolymorphicMapType_41404_29141_3829#PolymorphicMapType_41404| Heap@@41) (|Seq#Index_29180| b_24 i_31_1) Ref__Integer_value) i_31_1))
 :qid |stdinbpl.4138:22|
 :skolemid |300|
 :pattern ( (|Seq#Index_29180| b_24 i_31_1))
)) (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@0 QPMask@5)) (and (=> (= (ControlFlow 0 104) 102) anon135_Then_correct) (=> (= (ControlFlow 0 104) 103) anon135_Else_correct)))))
(let ((anon75_correct true))
(let ((anon134_Else_correct  (=> (and (not (and (<= 0 i_30) (< i_30 len_3))) (= (ControlFlow 0 58) 55)) anon75_correct)))
(let ((anon134_Then_correct  (=> (and (<= 0 i_30) (< i_30 len_3)) (and (=> (= (ControlFlow 0 56) (- 0 57)) (= (select (|PolymorphicMapType_41404_29141_3829#PolymorphicMapType_41404| Heap@@41) (|Seq#Index_29180| b_24 i_30) Ref__Integer_value) i_30)) (=> (= (select (|PolymorphicMapType_41404_29141_3829#PolymorphicMapType_41404| Heap@@41) (|Seq#Index_29180| b_24 i_30) Ref__Integer_value) i_30) (=> (= (ControlFlow 0 56) 55) anon75_correct))))))
(let ((anon72_correct  (and (=> (= (ControlFlow 0 105) (- 0 107)) (forall ((i_29 Int) (i_29_2 Int) ) (!  (=> (and (and (and (and (not (= i_29 i_29_2)) (and (<= 0 i_29) (< i_29 len_3))) (and (<= 0 i_29_2) (< i_29_2 len_3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_29180| c i_29) (|Seq#Index_29180| c i_29_2))))
 :qid |stdinbpl.4097:19|
 :skolemid |294|
 :pattern ( (neverTriggered31 i_29) (neverTriggered31 i_29_2))
))) (=> (forall ((i_29@@0 Int) (i_29_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_29@@0 i_29_2@@0)) (and (<= 0 i_29@@0) (< i_29@@0 len_3))) (and (<= 0 i_29_2@@0) (< i_29_2@@0 len_3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_29180| c i_29@@0) (|Seq#Index_29180| c i_29_2@@0))))
 :qid |stdinbpl.4097:19|
 :skolemid |294|
 :pattern ( (neverTriggered31 i_29@@0) (neverTriggered31 i_29_2@@0))
)) (and (=> (= (ControlFlow 0 105) (- 0 106)) (forall ((i_29@@1 Int) ) (!  (=> (and (<= 0 i_29@@1) (< i_29@@1 len_3)) (>= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@4) (|Seq#Index_29180| c i_29@@1) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.4104:19|
 :skolemid |295|
 :pattern ( (|Seq#Index_29180| c i_29@@1))
 :pattern ( (|Seq#Index_29180| c i_29@@1))
))) (=> (forall ((i_29@@2 Int) ) (!  (=> (and (<= 0 i_29@@2) (< i_29@@2 len_3)) (>= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@4) (|Seq#Index_29180| c i_29@@2) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.4104:19|
 :skolemid |295|
 :pattern ( (|Seq#Index_29180| c i_29@@2))
 :pattern ( (|Seq#Index_29180| c i_29@@2))
)) (=> (forall ((i_29@@3 Int) ) (!  (=> (and (and (<= 0 i_29@@3) (< i_29@@3 len_3)) (< NoPerm FullPerm)) (and (qpRange31 (|Seq#Index_29180| c i_29@@3)) (= (invRecv31 (|Seq#Index_29180| c i_29@@3)) i_29@@3)))
 :qid |stdinbpl.4110:24|
 :skolemid |296|
 :pattern ( (|Seq#Index_29180| c i_29@@3))
 :pattern ( (|Seq#Index_29180| c i_29@@3))
)) (=> (and (forall ((o_9@@69 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv31 o_9@@69)) (< (invRecv31 o_9@@69) len_3)) (and (< NoPerm FullPerm) (qpRange31 o_9@@69))) (= (|Seq#Index_29180| c (invRecv31 o_9@@69)) o_9@@69))
 :qid |stdinbpl.4114:24|
 :skolemid |297|
 :pattern ( (invRecv31 o_9@@69))
)) (forall ((o_9@@70 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv31 o_9@@70)) (< (invRecv31 o_9@@70) len_3)) (and (< NoPerm FullPerm) (qpRange31 o_9@@70))) (and (= (|Seq#Index_29180| c (invRecv31 o_9@@70)) o_9@@70) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@5) o_9@@70 Ref__Integer_value) (- (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@4) o_9@@70 Ref__Integer_value) FullPerm)))) (=> (not (and (and (<= 0 (invRecv31 o_9@@70)) (< (invRecv31 o_9@@70) len_3)) (and (< NoPerm FullPerm) (qpRange31 o_9@@70)))) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@5) o_9@@70 Ref__Integer_value) (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@4) o_9@@70 Ref__Integer_value))))
 :qid |stdinbpl.4120:24|
 :skolemid |298|
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@5) o_9@@70 Ref__Integer_value))
))) (=> (and (and (and (and (forall ((o_9@@71 T@Ref) (f_5@@49 T@Field_41464_53) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@4) o_9@@71 f_5@@49) (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@5) o_9@@71 f_5@@49)))
 :qid |stdinbpl.4126:31|
 :skolemid |299|
 :pattern ( (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@5) o_9@@71 f_5@@49))
)) (forall ((o_9@@72 T@Ref) (f_5@@50 T@Field_41477_41478) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@4) o_9@@72 f_5@@50) (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@5) o_9@@72 f_5@@50)))
 :qid |stdinbpl.4126:31|
 :skolemid |299|
 :pattern ( (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@5) o_9@@72 f_5@@50))
))) (forall ((o_9@@73 T@Ref) (f_5@@51 T@Field_47552_3829) ) (!  (=> (not (= f_5@@51 Ref__Integer_value)) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@4) o_9@@73 f_5@@51) (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@5) o_9@@73 f_5@@51)))
 :qid |stdinbpl.4126:31|
 :skolemid |299|
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@5) o_9@@73 f_5@@51))
))) (forall ((o_9@@74 T@Ref) (f_5@@52 T@Field_29141_117835) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@4) o_9@@74 f_5@@52) (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@5) o_9@@74 f_5@@52)))
 :qid |stdinbpl.4126:31|
 :skolemid |299|
 :pattern ( (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@5) o_9@@74 f_5@@52))
))) (forall ((o_9@@75 T@Ref) (f_5@@53 T@Field_29141_117968) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@4) o_9@@75 f_5@@53) (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@5) o_9@@75 f_5@@53)))
 :qid |stdinbpl.4126:31|
 :skolemid |299|
 :pattern ( (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@5) o_9@@75 f_5@@53))
))) (and (and (=> (= (ControlFlow 0 105) 104) anon133_Else_correct) (=> (= (ControlFlow 0 105) 56) anon134_Then_correct)) (=> (= (ControlFlow 0 105) 58) anon134_Else_correct)))))))))))
(let ((anon132_Else_correct  (=> (and (<= len_3 0) (= (ControlFlow 0 110) 105)) anon72_correct)))
(let ((anon132_Then_correct  (=> (< 0 len_3) (and (=> (= (ControlFlow 0 108) (- 0 109)) (= (|Seq#Length_29180| c) len_3)) (=> (= (|Seq#Length_29180| c) len_3) (=> (= (ControlFlow 0 108) 105) anon72_correct))))))
(let ((anon70_correct  (and (=> (= (ControlFlow 0 111) (- 0 114)) (forall ((i_28 Int) ) (!  (=> (and (and (<= 0 i_28) (< i_28 len_3)) (dummyFunction_4136 (select (|PolymorphicMapType_41404_29141_3829#PolymorphicMapType_41404| Heap@@41) (|Seq#Index_29180| b_24 i_28) Ref__Integer_value))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4045:19|
 :skolemid |287|
 :pattern ( (|Seq#Index_29180| b_24 i_28))
 :pattern ( (|Seq#Index_29180| b_24 i_28))
))) (=> (forall ((i_28@@0 Int) ) (!  (=> (and (and (<= 0 i_28@@0) (< i_28@@0 len_3)) (dummyFunction_4136 (select (|PolymorphicMapType_41404_29141_3829#PolymorphicMapType_41404| Heap@@41) (|Seq#Index_29180| b_24 i_28@@0) Ref__Integer_value))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4045:19|
 :skolemid |287|
 :pattern ( (|Seq#Index_29180| b_24 i_28@@0))
 :pattern ( (|Seq#Index_29180| b_24 i_28@@0))
)) (and (=> (= (ControlFlow 0 111) (- 0 113)) (forall ((i_28@@1 Int) (i_28_2 Int) ) (!  (=> (and (and (and (and (not (= i_28@@1 i_28_2)) (and (<= 0 i_28@@1) (< i_28@@1 len_3))) (and (<= 0 i_28_2) (< i_28_2 len_3))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_29180| b_24 i_28@@1) (|Seq#Index_29180| b_24 i_28_2))))
 :qid |stdinbpl.4052:19|
 :skolemid |288|
 :pattern ( (neverTriggered30 i_28@@1) (neverTriggered30 i_28_2))
))) (=> (forall ((i_28@@2 Int) (i_28_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_28@@2 i_28_2@@0)) (and (<= 0 i_28@@2) (< i_28@@2 len_3))) (and (<= 0 i_28_2@@0) (< i_28_2@@0 len_3))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_29180| b_24 i_28@@2) (|Seq#Index_29180| b_24 i_28_2@@0))))
 :qid |stdinbpl.4052:19|
 :skolemid |288|
 :pattern ( (neverTriggered30 i_28@@2) (neverTriggered30 i_28_2@@0))
)) (and (=> (= (ControlFlow 0 111) (- 0 112)) (forall ((i_28@@3 Int) ) (!  (=> (and (<= 0 i_28@@3) (< i_28@@3 len_3)) (>= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@3) (|Seq#Index_29180| b_24 i_28@@3) Ref__Integer_value) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.4059:19|
 :skolemid |289|
 :pattern ( (|Seq#Index_29180| b_24 i_28@@3))
 :pattern ( (|Seq#Index_29180| b_24 i_28@@3))
))) (=> (forall ((i_28@@4 Int) ) (!  (=> (and (<= 0 i_28@@4) (< i_28@@4 len_3)) (>= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@3) (|Seq#Index_29180| b_24 i_28@@4) Ref__Integer_value) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.4059:19|
 :skolemid |289|
 :pattern ( (|Seq#Index_29180| b_24 i_28@@4))
 :pattern ( (|Seq#Index_29180| b_24 i_28@@4))
)) (=> (forall ((i_28@@5 Int) ) (!  (=> (and (and (<= 0 i_28@@5) (< i_28@@5 len_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange30 (|Seq#Index_29180| b_24 i_28@@5)) (= (invRecv30 (|Seq#Index_29180| b_24 i_28@@5)) i_28@@5)))
 :qid |stdinbpl.4065:24|
 :skolemid |290|
 :pattern ( (|Seq#Index_29180| b_24 i_28@@5))
 :pattern ( (|Seq#Index_29180| b_24 i_28@@5))
)) (=> (and (forall ((o_9@@76 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv30 o_9@@76)) (< (invRecv30 o_9@@76) len_3)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange30 o_9@@76))) (= (|Seq#Index_29180| b_24 (invRecv30 o_9@@76)) o_9@@76))
 :qid |stdinbpl.4069:24|
 :skolemid |291|
 :pattern ( (invRecv30 o_9@@76))
)) (forall ((o_9@@77 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv30 o_9@@77)) (< (invRecv30 o_9@@77) len_3)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange30 o_9@@77))) (and (= (|Seq#Index_29180| b_24 (invRecv30 o_9@@77)) o_9@@77) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@4) o_9@@77 Ref__Integer_value) (- (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@3) o_9@@77 Ref__Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (<= 0 (invRecv30 o_9@@77)) (< (invRecv30 o_9@@77) len_3)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange30 o_9@@77)))) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@4) o_9@@77 Ref__Integer_value) (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@3) o_9@@77 Ref__Integer_value))))
 :qid |stdinbpl.4075:24|
 :skolemid |292|
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@4) o_9@@77 Ref__Integer_value))
))) (=> (and (and (and (and (forall ((o_9@@78 T@Ref) (f_5@@54 T@Field_41464_53) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@3) o_9@@78 f_5@@54) (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@4) o_9@@78 f_5@@54)))
 :qid |stdinbpl.4081:31|
 :skolemid |293|
 :pattern ( (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@4) o_9@@78 f_5@@54))
)) (forall ((o_9@@79 T@Ref) (f_5@@55 T@Field_41477_41478) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@3) o_9@@79 f_5@@55) (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@4) o_9@@79 f_5@@55)))
 :qid |stdinbpl.4081:31|
 :skolemid |293|
 :pattern ( (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@4) o_9@@79 f_5@@55))
))) (forall ((o_9@@80 T@Ref) (f_5@@56 T@Field_47552_3829) ) (!  (=> (not (= f_5@@56 Ref__Integer_value)) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@3) o_9@@80 f_5@@56) (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@4) o_9@@80 f_5@@56)))
 :qid |stdinbpl.4081:31|
 :skolemid |293|
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@4) o_9@@80 f_5@@56))
))) (forall ((o_9@@81 T@Ref) (f_5@@57 T@Field_29141_117835) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@3) o_9@@81 f_5@@57) (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@4) o_9@@81 f_5@@57)))
 :qid |stdinbpl.4081:31|
 :skolemid |293|
 :pattern ( (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@4) o_9@@81 f_5@@57))
))) (forall ((o_9@@82 T@Ref) (f_5@@58 T@Field_29141_117968) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@3) o_9@@82 f_5@@58) (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@4) o_9@@82 f_5@@58)))
 :qid |stdinbpl.4081:31|
 :skolemid |293|
 :pattern ( (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@4) o_9@@82 f_5@@58))
))) (and (=> (= (ControlFlow 0 111) 108) anon132_Then_correct) (=> (= (ControlFlow 0 111) 110) anon132_Else_correct)))))))))))))
(let ((anon131_Else_correct  (=> (and (<= len_3 0) (= (ControlFlow 0 117) 111)) anon70_correct)))
(let ((anon131_Then_correct  (=> (< 0 len_3) (and (=> (= (ControlFlow 0 115) (- 0 116)) (= (|Seq#Length_29180| b_24) len_3)) (=> (= (|Seq#Length_29180| b_24) len_3) (=> (= (ControlFlow 0 115) 111) anon70_correct))))))
(let ((anon129_Else_correct  (=> (forall ((k_11_1_1 Int) (j_11_1_1 Int) ) (!  (=> (and (>= k_11_1_1 0) (and (< k_11_1_1 (|Seq#Length_29180| c)) (and (>= j_11_1_1 0) (and (< j_11_1_1 (|Seq#Length_29180| c)) (not (= k_11_1_1 j_11_1_1)))))) (not (= (|Seq#Index_29180| c k_11_1_1) (|Seq#Index_29180| c j_11_1_1))))
 :qid |stdinbpl.3992:22|
 :skolemid |280|
 :pattern ( (|Seq#Index_29180| c k_11_1_1) (|Seq#Index_29180| c j_11_1_1))
)) (and (=> (= (ControlFlow 0 118) (- 0 120)) (forall ((i_27_2 Int) (i_27_3 Int) ) (!  (=> (and (and (and (and (not (= i_27_2 i_27_3)) (and (<= 0 i_27_2) (< i_27_2 len_3))) (and (<= 0 i_27_3) (< i_27_3 len_3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_29180| a_2 i_27_2) (|Seq#Index_29180| a_2 i_27_3))))
 :qid |stdinbpl.4003:19|
 :skolemid |281|
 :pattern ( (neverTriggered29 i_27_2) (neverTriggered29 i_27_3))
))) (=> (forall ((i_27_2@@0 Int) (i_27_3@@0 Int) ) (!  (=> (and (and (and (and (not (= i_27_2@@0 i_27_3@@0)) (and (<= 0 i_27_2@@0) (< i_27_2@@0 len_3))) (and (<= 0 i_27_3@@0) (< i_27_3@@0 len_3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_29180| a_2 i_27_2@@0) (|Seq#Index_29180| a_2 i_27_3@@0))))
 :qid |stdinbpl.4003:19|
 :skolemid |281|
 :pattern ( (neverTriggered29 i_27_2@@0) (neverTriggered29 i_27_3@@0))
)) (and (=> (= (ControlFlow 0 118) (- 0 119)) (forall ((i_27_2@@1 Int) ) (!  (=> (and (<= 0 i_27_2@@1) (< i_27_2@@1 len_3)) (>= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@2) (|Seq#Index_29180| a_2 i_27_2@@1) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.4010:19|
 :skolemid |282|
 :pattern ( (|Seq#Index_29180| a_2 i_27_2@@1))
 :pattern ( (|Seq#Index_29180| a_2 i_27_2@@1))
))) (=> (forall ((i_27_2@@2 Int) ) (!  (=> (and (<= 0 i_27_2@@2) (< i_27_2@@2 len_3)) (>= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@2) (|Seq#Index_29180| a_2 i_27_2@@2) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.4010:19|
 :skolemid |282|
 :pattern ( (|Seq#Index_29180| a_2 i_27_2@@2))
 :pattern ( (|Seq#Index_29180| a_2 i_27_2@@2))
)) (=> (forall ((i_27_2@@3 Int) ) (!  (=> (and (and (<= 0 i_27_2@@3) (< i_27_2@@3 len_3)) (< NoPerm FullPerm)) (and (qpRange29 (|Seq#Index_29180| a_2 i_27_2@@3)) (= (invRecv29 (|Seq#Index_29180| a_2 i_27_2@@3)) i_27_2@@3)))
 :qid |stdinbpl.4016:24|
 :skolemid |283|
 :pattern ( (|Seq#Index_29180| a_2 i_27_2@@3))
 :pattern ( (|Seq#Index_29180| a_2 i_27_2@@3))
)) (=> (and (forall ((o_9@@83 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv29 o_9@@83)) (< (invRecv29 o_9@@83) len_3)) (and (< NoPerm FullPerm) (qpRange29 o_9@@83))) (= (|Seq#Index_29180| a_2 (invRecv29 o_9@@83)) o_9@@83))
 :qid |stdinbpl.4020:24|
 :skolemid |284|
 :pattern ( (invRecv29 o_9@@83))
)) (forall ((o_9@@84 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv29 o_9@@84)) (< (invRecv29 o_9@@84) len_3)) (and (< NoPerm FullPerm) (qpRange29 o_9@@84))) (and (= (|Seq#Index_29180| a_2 (invRecv29 o_9@@84)) o_9@@84) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@3) o_9@@84 Ref__Integer_value) (- (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@2) o_9@@84 Ref__Integer_value) FullPerm)))) (=> (not (and (and (<= 0 (invRecv29 o_9@@84)) (< (invRecv29 o_9@@84) len_3)) (and (< NoPerm FullPerm) (qpRange29 o_9@@84)))) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@3) o_9@@84 Ref__Integer_value) (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@2) o_9@@84 Ref__Integer_value))))
 :qid |stdinbpl.4026:24|
 :skolemid |285|
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@3) o_9@@84 Ref__Integer_value))
))) (=> (and (and (and (and (forall ((o_9@@85 T@Ref) (f_5@@59 T@Field_41464_53) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@2) o_9@@85 f_5@@59) (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@3) o_9@@85 f_5@@59)))
 :qid |stdinbpl.4032:31|
 :skolemid |286|
 :pattern ( (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@3) o_9@@85 f_5@@59))
)) (forall ((o_9@@86 T@Ref) (f_5@@60 T@Field_41477_41478) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@2) o_9@@86 f_5@@60) (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@3) o_9@@86 f_5@@60)))
 :qid |stdinbpl.4032:31|
 :skolemid |286|
 :pattern ( (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@3) o_9@@86 f_5@@60))
))) (forall ((o_9@@87 T@Ref) (f_5@@61 T@Field_47552_3829) ) (!  (=> (not (= f_5@@61 Ref__Integer_value)) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@2) o_9@@87 f_5@@61) (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@3) o_9@@87 f_5@@61)))
 :qid |stdinbpl.4032:31|
 :skolemid |286|
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@3) o_9@@87 f_5@@61))
))) (forall ((o_9@@88 T@Ref) (f_5@@62 T@Field_29141_117835) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@2) o_9@@88 f_5@@62) (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@3) o_9@@88 f_5@@62)))
 :qid |stdinbpl.4032:31|
 :skolemid |286|
 :pattern ( (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@3) o_9@@88 f_5@@62))
))) (forall ((o_9@@89 T@Ref) (f_5@@63 T@Field_29141_117968) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@2) o_9@@89 f_5@@63) (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@3) o_9@@89 f_5@@63)))
 :qid |stdinbpl.4032:31|
 :skolemid |286|
 :pattern ( (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@3) o_9@@89 f_5@@63))
))) (and (=> (= (ControlFlow 0 118) 115) anon131_Then_correct) (=> (= (ControlFlow 0 118) 117) anon131_Else_correct))))))))))))
(let ((anon67_correct true))
(let ((anon130_Else_correct  (=> (and (not (and (>= k_10 0) (and (< k_10 (|Seq#Length_29180| c)) (and (>= j_10_2 0) (and (< j_10_2 (|Seq#Length_29180| c)) (not (= k_10 j_10_2))))))) (= (ControlFlow 0 54) 51)) anon67_correct)))
(let ((anon130_Then_correct  (=> (and (>= k_10 0) (and (< k_10 (|Seq#Length_29180| c)) (and (>= j_10_2 0) (and (< j_10_2 (|Seq#Length_29180| c)) (not (= k_10 j_10_2)))))) (and (=> (= (ControlFlow 0 52) (- 0 53)) (not (= (|Seq#Index_29180| c k_10) (|Seq#Index_29180| c j_10_2)))) (=> (not (= (|Seq#Index_29180| c k_10) (|Seq#Index_29180| c j_10_2))) (=> (= (ControlFlow 0 52) 51) anon67_correct))))))
(let ((anon127_Else_correct  (=> (forall ((k_9_1_1 Int) (j_9_1_1 Int) ) (!  (=> (and (>= k_9_1_1 0) (and (< k_9_1_1 (|Seq#Length_29180| b_24)) (and (>= j_9_1_1 0) (and (< j_9_1_1 (|Seq#Length_29180| b_24)) (not (= k_9_1_1 j_9_1_1)))))) (not (= (|Seq#Index_29180| b_24 k_9_1_1) (|Seq#Index_29180| b_24 j_9_1_1))))
 :qid |stdinbpl.3981:22|
 :skolemid |279|
 :pattern ( (|Seq#Index_29180| b_24 k_9_1_1) (|Seq#Index_29180| b_24 j_9_1_1))
)) (and (and (=> (= (ControlFlow 0 121) 118) anon129_Else_correct) (=> (= (ControlFlow 0 121) 52) anon130_Then_correct)) (=> (= (ControlFlow 0 121) 54) anon130_Else_correct)))))
(let ((anon63_correct true))
(let ((anon128_Else_correct  (=> (and (not (and (>= k_8 0) (and (< k_8 (|Seq#Length_29180| b_24)) (and (>= j_8_2 0) (and (< j_8_2 (|Seq#Length_29180| b_24)) (not (= k_8 j_8_2))))))) (= (ControlFlow 0 50) 47)) anon63_correct)))
(let ((anon128_Then_correct  (=> (and (>= k_8 0) (and (< k_8 (|Seq#Length_29180| b_24)) (and (>= j_8_2 0) (and (< j_8_2 (|Seq#Length_29180| b_24)) (not (= k_8 j_8_2)))))) (and (=> (= (ControlFlow 0 48) (- 0 49)) (not (= (|Seq#Index_29180| b_24 k_8) (|Seq#Index_29180| b_24 j_8_2)))) (=> (not (= (|Seq#Index_29180| b_24 k_8) (|Seq#Index_29180| b_24 j_8_2))) (=> (= (ControlFlow 0 48) 47) anon63_correct))))))
(let ((anon125_Else_correct  (=> (forall ((k_7_1_1 Int) (j_7_1_1 Int) ) (!  (=> (and (>= k_7_1_1 0) (and (< k_7_1_1 (|Seq#Length_29180| a_2)) (and (>= j_7_1_1 0) (and (< j_7_1_1 (|Seq#Length_29180| a_2)) (not (= k_7_1_1 j_7_1_1)))))) (not (= (|Seq#Index_29180| a_2 k_7_1_1) (|Seq#Index_29180| a_2 j_7_1_1))))
 :qid |stdinbpl.3970:22|
 :skolemid |278|
 :pattern ( (|Seq#Index_29180| a_2 k_7_1_1) (|Seq#Index_29180| a_2 j_7_1_1))
)) (and (and (=> (= (ControlFlow 0 122) 121) anon127_Else_correct) (=> (= (ControlFlow 0 122) 48) anon128_Then_correct)) (=> (= (ControlFlow 0 122) 50) anon128_Else_correct)))))
(let ((anon59_correct true))
(let ((anon126_Else_correct  (=> (and (not (and (>= k_6_2 0) (and (< k_6_2 (|Seq#Length_29180| a_2)) (and (>= j_6_2 0) (and (< j_6_2 (|Seq#Length_29180| a_2)) (not (= k_6_2 j_6_2))))))) (= (ControlFlow 0 46) 43)) anon59_correct)))
(let ((anon126_Then_correct  (=> (and (>= k_6_2 0) (and (< k_6_2 (|Seq#Length_29180| a_2)) (and (>= j_6_2 0) (and (< j_6_2 (|Seq#Length_29180| a_2)) (not (= k_6_2 j_6_2)))))) (and (=> (= (ControlFlow 0 44) (- 0 45)) (not (= (|Seq#Index_29180| a_2 k_6_2) (|Seq#Index_29180| a_2 j_6_2)))) (=> (not (= (|Seq#Index_29180| a_2 k_6_2) (|Seq#Index_29180| a_2 j_6_2))) (=> (= (ControlFlow 0 44) 43) anon59_correct))))))
(let ((anon124_Else_correct  (=> (<= len_3 0) (and (and (=> (= (ControlFlow 0 125) 122) anon125_Else_correct) (=> (= (ControlFlow 0 125) 44) anon126_Then_correct)) (=> (= (ControlFlow 0 125) 46) anon126_Else_correct)))))
(let ((anon124_Then_correct  (=> (< 0 len_3) (and (=> (= (ControlFlow 0 123) (- 0 124)) (= (|Seq#Length_29180| a_2) len_3)) (=> (= (|Seq#Length_29180| a_2) len_3) (and (and (=> (= (ControlFlow 0 123) 122) anon125_Else_correct) (=> (= (ControlFlow 0 123) 44) anon126_Then_correct)) (=> (= (ControlFlow 0 123) 46) anon126_Else_correct)))))))
(let ((anon111_Else_correct  (and (=> (= (ControlFlow 0 126) (- 0 128)) (not (= diz null))) (=> (not (= diz null)) (and (=> (= (ControlFlow 0 126) (- 0 127)) (>= current_thread_id 0)) (=> (>= current_thread_id 0) (and (=> (= (ControlFlow 0 126) 123) anon124_Then_correct) (=> (= (ControlFlow 0 126) 125) anon124_Else_correct))))))))
(let ((anon109_Else_correct  (=> (and (forall ((tid_1 Int) ) (!  (=> (and (<= 0 tid_1) (< tid_1 len_3)) (= (select (|PolymorphicMapType_41404_29141_3829#PolymorphicMapType_41404| Heap@@41) (|Seq#Index_29180| b_24 tid_1) Ref__Integer_value) tid_1))
 :qid |stdinbpl.3724:20|
 :skolemid |255|
 :pattern ( (|Seq#Index_29180| b_24 tid_1))
)) (state Heap@@41 QPMask@2)) (and (=> (= (ControlFlow 0 173) 172) anon111_Then_correct) (=> (= (ControlFlow 0 173) 126) anon111_Else_correct)))))
(let ((anon27_correct true))
(let ((anon110_Else_correct  (=> (and (not (and (<= 0 tid_17) (< tid_17 len_3))) (= (ControlFlow 0 42) 37)) anon27_correct)))
(let ((anon110_Then_correct  (=> (and (<= 0 tid_17) (< tid_17 len_3)) (and (=> (= (ControlFlow 0 38) (- 0 41)) (>= tid_17 0)) (=> (>= tid_17 0) (and (=> (= (ControlFlow 0 38) (- 0 40)) (< tid_17 (|Seq#Length_29180| b_24))) (=> (< tid_17 (|Seq#Length_29180| b_24)) (and (=> (= (ControlFlow 0 38) (- 0 39)) (HasDirectPerm_29141_3829 QPMask@2 (|Seq#Index_29180| b_24 tid_17) Ref__Integer_value)) (=> (HasDirectPerm_29141_3829 QPMask@2 (|Seq#Index_29180| b_24 tid_17) Ref__Integer_value) (=> (= (ControlFlow 0 38) 37) anon27_correct))))))))))
(let ((anon107_Else_correct  (and (=> (= (ControlFlow 0 174) (- 0 175)) (forall ((i_5_1 Int) (i_5_2 Int) ) (!  (=> (and (and (and (and (not (= i_5_1 i_5_2)) (and (<= 0 i_5_1) (< i_5_1 len_3))) (and (<= 0 i_5_2) (< i_5_2 len_3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_29180| c i_5_1) (|Seq#Index_29180| c i_5_2))))
 :qid |stdinbpl.3678:15|
 :skolemid |249|
))) (=> (forall ((i_5_1@@0 Int) (i_5_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_5_1@@0 i_5_2@@0)) (and (<= 0 i_5_1@@0) (< i_5_1@@0 len_3))) (and (<= 0 i_5_2@@0) (< i_5_2@@0 len_3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_29180| c i_5_1@@0) (|Seq#Index_29180| c i_5_2@@0))))
 :qid |stdinbpl.3678:15|
 :skolemid |249|
)) (=> (and (and (forall ((i_5_1@@1 Int) ) (!  (=> (and (and (<= 0 i_5_1@@1) (< i_5_1@@1 len_3)) (< NoPerm FullPerm)) (and (qpRange22 (|Seq#Index_29180| c i_5_1@@1)) (= (invRecv22 (|Seq#Index_29180| c i_5_1@@1)) i_5_1@@1)))
 :qid |stdinbpl.3684:22|
 :skolemid |250|
 :pattern ( (|Seq#Index_29180| c i_5_1@@1))
 :pattern ( (|Seq#Index_29180| c i_5_1@@1))
)) (forall ((o_9@@90 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv22 o_9@@90)) (< (invRecv22 o_9@@90) len_3)) (< NoPerm FullPerm)) (qpRange22 o_9@@90)) (= (|Seq#Index_29180| c (invRecv22 o_9@@90)) o_9@@90))
 :qid |stdinbpl.3688:22|
 :skolemid |251|
 :pattern ( (invRecv22 o_9@@90))
))) (and (forall ((i_5_1@@2 Int) ) (!  (=> (and (<= 0 i_5_1@@2) (< i_5_1@@2 len_3)) (not (= (|Seq#Index_29180| c i_5_1@@2) null)))
 :qid |stdinbpl.3694:22|
 :skolemid |252|
 :pattern ( (|Seq#Index_29180| c i_5_1@@2))
 :pattern ( (|Seq#Index_29180| c i_5_1@@2))
)) (forall ((o_9@@91 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv22 o_9@@91)) (< (invRecv22 o_9@@91) len_3)) (< NoPerm FullPerm)) (qpRange22 o_9@@91)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_29180| c (invRecv22 o_9@@91)) o_9@@91)) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@2) o_9@@91 Ref__Integer_value) (+ (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@1) o_9@@91 Ref__Integer_value) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv22 o_9@@91)) (< (invRecv22 o_9@@91) len_3)) (< NoPerm FullPerm)) (qpRange22 o_9@@91))) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@2) o_9@@91 Ref__Integer_value) (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@1) o_9@@91 Ref__Integer_value))))
 :qid |stdinbpl.3700:22|
 :skolemid |253|
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@2) o_9@@91 Ref__Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_9@@92 T@Ref) (f_5@@64 T@Field_41464_53) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@1) o_9@@92 f_5@@64) (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@2) o_9@@92 f_5@@64)))
 :qid |stdinbpl.3704:29|
 :skolemid |254|
 :pattern ( (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@1) o_9@@92 f_5@@64))
 :pattern ( (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@2) o_9@@92 f_5@@64))
)) (forall ((o_9@@93 T@Ref) (f_5@@65 T@Field_41477_41478) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@1) o_9@@93 f_5@@65) (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@2) o_9@@93 f_5@@65)))
 :qid |stdinbpl.3704:29|
 :skolemid |254|
 :pattern ( (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@1) o_9@@93 f_5@@65))
 :pattern ( (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@2) o_9@@93 f_5@@65))
))) (forall ((o_9@@94 T@Ref) (f_5@@66 T@Field_47552_3829) ) (!  (=> (not (= f_5@@66 Ref__Integer_value)) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@1) o_9@@94 f_5@@66) (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@2) o_9@@94 f_5@@66)))
 :qid |stdinbpl.3704:29|
 :skolemid |254|
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@1) o_9@@94 f_5@@66))
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@2) o_9@@94 f_5@@66))
))) (forall ((o_9@@95 T@Ref) (f_5@@67 T@Field_29141_117835) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@1) o_9@@95 f_5@@67) (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@2) o_9@@95 f_5@@67)))
 :qid |stdinbpl.3704:29|
 :skolemid |254|
 :pattern ( (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@1) o_9@@95 f_5@@67))
 :pattern ( (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@2) o_9@@95 f_5@@67))
))) (forall ((o_9@@96 T@Ref) (f_5@@68 T@Field_29141_117968) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@1) o_9@@96 f_5@@68) (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@2) o_9@@96 f_5@@68)))
 :qid |stdinbpl.3704:29|
 :skolemid |254|
 :pattern ( (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@1) o_9@@96 f_5@@68))
 :pattern ( (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@2) o_9@@96 f_5@@68))
))) (and (state Heap@@41 QPMask@2) (state Heap@@41 QPMask@2))) (and (and (=> (= (ControlFlow 0 174) 173) anon109_Else_correct) (=> (= (ControlFlow 0 174) 38) anon110_Then_correct)) (=> (= (ControlFlow 0 174) 42) anon110_Else_correct))))))))
(let ((anon23_correct true))
(let ((anon108_Else_correct  (=> (and (not (and (<= 0 i_74) (< i_74 len_3))) (= (ControlFlow 0 36) 32)) anon23_correct)))
(let ((anon108_Then_correct  (=> (and (<= 0 i_74) (< i_74 len_3)) (and (=> (= (ControlFlow 0 33) (- 0 35)) (>= i_74 0)) (=> (>= i_74 0) (and (=> (= (ControlFlow 0 33) (- 0 34)) (< i_74 (|Seq#Length_29180| c))) (=> (< i_74 (|Seq#Length_29180| c)) (=> (= (ControlFlow 0 33) 32) anon23_correct))))))))
(let ((anon105_Else_correct  (and (=> (= (ControlFlow 0 176) (- 0 178)) (forall ((i_3_2 Int) (i_3_3 Int) ) (!  (=> (and (and (and (and (not (= i_3_2 i_3_3)) (and (<= 0 i_3_2) (< i_3_2 len_3))) (and (<= 0 i_3_3) (< i_3_3 len_3))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_29180| b_24 i_3_2) (|Seq#Index_29180| b_24 i_3_3))))
 :qid |stdinbpl.3624:15|
 :skolemid |242|
))) (=> (forall ((i_3_2@@0 Int) (i_3_3@@0 Int) ) (!  (=> (and (and (and (and (not (= i_3_2@@0 i_3_3@@0)) (and (<= 0 i_3_2@@0) (< i_3_2@@0 len_3))) (and (<= 0 i_3_3@@0) (< i_3_3@@0 len_3))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_29180| b_24 i_3_2@@0) (|Seq#Index_29180| b_24 i_3_3@@0))))
 :qid |stdinbpl.3624:15|
 :skolemid |242|
)) (=> (and (forall ((i_3_2@@1 Int) ) (!  (=> (and (and (<= 0 i_3_2@@1) (< i_3_2@@1 len_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange21 (|Seq#Index_29180| b_24 i_3_2@@1)) (= (invRecv21 (|Seq#Index_29180| b_24 i_3_2@@1)) i_3_2@@1)))
 :qid |stdinbpl.3630:22|
 :skolemid |243|
 :pattern ( (|Seq#Index_29180| b_24 i_3_2@@1))
 :pattern ( (|Seq#Index_29180| b_24 i_3_2@@1))
)) (forall ((o_9@@97 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv21 o_9@@97)) (< (invRecv21 o_9@@97) len_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange21 o_9@@97)) (= (|Seq#Index_29180| b_24 (invRecv21 o_9@@97)) o_9@@97))
 :qid |stdinbpl.3634:22|
 :skolemid |244|
 :pattern ( (invRecv21 o_9@@97))
))) (and (=> (= (ControlFlow 0 176) (- 0 177)) (forall ((i_3_2@@2 Int) ) (!  (=> (and (<= 0 i_3_2@@2) (< i_3_2@@2 len_3)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3640:15|
 :skolemid |245|
 :pattern ( (|Seq#Index_29180| b_24 i_3_2@@2))
 :pattern ( (|Seq#Index_29180| b_24 i_3_2@@2))
))) (=> (forall ((i_3_2@@3 Int) ) (!  (=> (and (<= 0 i_3_2@@3) (< i_3_2@@3 len_3)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3640:15|
 :skolemid |245|
 :pattern ( (|Seq#Index_29180| b_24 i_3_2@@3))
 :pattern ( (|Seq#Index_29180| b_24 i_3_2@@3))
)) (=> (and (forall ((i_3_2@@4 Int) ) (!  (=> (and (and (<= 0 i_3_2@@4) (< i_3_2@@4 len_3)) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= (|Seq#Index_29180| b_24 i_3_2@@4) null)))
 :qid |stdinbpl.3646:22|
 :skolemid |246|
 :pattern ( (|Seq#Index_29180| b_24 i_3_2@@4))
 :pattern ( (|Seq#Index_29180| b_24 i_3_2@@4))
)) (forall ((o_9@@98 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv21 o_9@@98)) (< (invRecv21 o_9@@98) len_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange21 o_9@@98)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (|Seq#Index_29180| b_24 (invRecv21 o_9@@98)) o_9@@98)) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@1) o_9@@98 Ref__Integer_value) (+ (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@0) o_9@@98 Ref__Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (<= 0 (invRecv21 o_9@@98)) (< (invRecv21 o_9@@98) len_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange21 o_9@@98))) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@1) o_9@@98 Ref__Integer_value) (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@0) o_9@@98 Ref__Integer_value))))
 :qid |stdinbpl.3652:22|
 :skolemid |247|
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@1) o_9@@98 Ref__Integer_value))
))) (=> (and (and (and (and (and (forall ((o_9@@99 T@Ref) (f_5@@69 T@Field_41464_53) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@0) o_9@@99 f_5@@69) (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@1) o_9@@99 f_5@@69)))
 :qid |stdinbpl.3656:29|
 :skolemid |248|
 :pattern ( (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@0) o_9@@99 f_5@@69))
 :pattern ( (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@1) o_9@@99 f_5@@69))
)) (forall ((o_9@@100 T@Ref) (f_5@@70 T@Field_41477_41478) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@0) o_9@@100 f_5@@70) (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@1) o_9@@100 f_5@@70)))
 :qid |stdinbpl.3656:29|
 :skolemid |248|
 :pattern ( (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@0) o_9@@100 f_5@@70))
 :pattern ( (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@1) o_9@@100 f_5@@70))
))) (forall ((o_9@@101 T@Ref) (f_5@@71 T@Field_47552_3829) ) (!  (=> (not (= f_5@@71 Ref__Integer_value)) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@0) o_9@@101 f_5@@71) (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@1) o_9@@101 f_5@@71)))
 :qid |stdinbpl.3656:29|
 :skolemid |248|
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@0) o_9@@101 f_5@@71))
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@1) o_9@@101 f_5@@71))
))) (forall ((o_9@@102 T@Ref) (f_5@@72 T@Field_29141_117835) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@0) o_9@@102 f_5@@72) (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@1) o_9@@102 f_5@@72)))
 :qid |stdinbpl.3656:29|
 :skolemid |248|
 :pattern ( (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@0) o_9@@102 f_5@@72))
 :pattern ( (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@1) o_9@@102 f_5@@72))
))) (forall ((o_9@@103 T@Ref) (f_5@@73 T@Field_29141_117968) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@0) o_9@@103 f_5@@73) (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@1) o_9@@103 f_5@@73)))
 :qid |stdinbpl.3656:29|
 :skolemid |248|
 :pattern ( (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@0) o_9@@103 f_5@@73))
 :pattern ( (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@1) o_9@@103 f_5@@73))
))) (and (and (state Heap@@41 QPMask@1) (state Heap@@41 QPMask@1)) (and (= (|Seq#Length_29180| c) len_3) (state Heap@@41 QPMask@1)))) (and (and (=> (= (ControlFlow 0 176) 174) anon107_Else_correct) (=> (= (ControlFlow 0 176) 33) anon108_Then_correct)) (=> (= (ControlFlow 0 176) 36) anon108_Else_correct)))))))))))
(let ((anon19_correct true))
(let ((anon106_Else_correct  (=> (and (not (and (<= 0 i_65) (< i_65 len_3))) (= (ControlFlow 0 31) 27)) anon19_correct)))
(let ((anon106_Then_correct  (=> (and (<= 0 i_65) (< i_65 len_3)) (and (=> (= (ControlFlow 0 28) (- 0 30)) (>= i_65 0)) (=> (>= i_65 0) (and (=> (= (ControlFlow 0 28) (- 0 29)) (< i_65 (|Seq#Length_29180| b_24))) (=> (< i_65 (|Seq#Length_29180| b_24)) (=> (= (ControlFlow 0 28) 27) anon19_correct))))))))
(let ((anon103_Else_correct  (and (=> (= (ControlFlow 0 179) (- 0 180)) (forall ((i_1 Int) (i_1_1 Int) ) (!  (=> (and (and (and (and (not (= i_1 i_1_1)) (and (<= 0 i_1) (< i_1 len_3))) (and (<= 0 i_1_1) (< i_1_1 len_3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_29180| a_2 i_1) (|Seq#Index_29180| a_2 i_1_1))))
 :qid |stdinbpl.3576:15|
 :skolemid |236|
))) (=> (forall ((i_1@@0 Int) (i_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_1@@0 i_1_1@@0)) (and (<= 0 i_1@@0) (< i_1@@0 len_3))) (and (<= 0 i_1_1@@0) (< i_1_1@@0 len_3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_29180| a_2 i_1@@0) (|Seq#Index_29180| a_2 i_1_1@@0))))
 :qid |stdinbpl.3576:15|
 :skolemid |236|
)) (=> (and (and (forall ((i_1@@1 Int) ) (!  (=> (and (and (<= 0 i_1@@1) (< i_1@@1 len_3)) (< NoPerm FullPerm)) (and (qpRange20 (|Seq#Index_29180| a_2 i_1@@1)) (= (invRecv20 (|Seq#Index_29180| a_2 i_1@@1)) i_1@@1)))
 :qid |stdinbpl.3582:22|
 :skolemid |237|
 :pattern ( (|Seq#Index_29180| a_2 i_1@@1))
 :pattern ( (|Seq#Index_29180| a_2 i_1@@1))
)) (forall ((o_9@@104 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv20 o_9@@104)) (< (invRecv20 o_9@@104) len_3)) (< NoPerm FullPerm)) (qpRange20 o_9@@104)) (= (|Seq#Index_29180| a_2 (invRecv20 o_9@@104)) o_9@@104))
 :qid |stdinbpl.3586:22|
 :skolemid |238|
 :pattern ( (invRecv20 o_9@@104))
))) (and (forall ((i_1@@2 Int) ) (!  (=> (and (<= 0 i_1@@2) (< i_1@@2 len_3)) (not (= (|Seq#Index_29180| a_2 i_1@@2) null)))
 :qid |stdinbpl.3592:22|
 :skolemid |239|
 :pattern ( (|Seq#Index_29180| a_2 i_1@@2))
 :pattern ( (|Seq#Index_29180| a_2 i_1@@2))
)) (forall ((o_9@@105 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv20 o_9@@105)) (< (invRecv20 o_9@@105) len_3)) (< NoPerm FullPerm)) (qpRange20 o_9@@105)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_29180| a_2 (invRecv20 o_9@@105)) o_9@@105)) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@0) o_9@@105 Ref__Integer_value) (+ (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| ZeroMask) o_9@@105 Ref__Integer_value) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv20 o_9@@105)) (< (invRecv20 o_9@@105) len_3)) (< NoPerm FullPerm)) (qpRange20 o_9@@105))) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@0) o_9@@105 Ref__Integer_value) (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| ZeroMask) o_9@@105 Ref__Integer_value))))
 :qid |stdinbpl.3598:22|
 :skolemid |240|
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@0) o_9@@105 Ref__Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_9@@106 T@Ref) (f_5@@74 T@Field_41464_53) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| ZeroMask) o_9@@106 f_5@@74) (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@0) o_9@@106 f_5@@74)))
 :qid |stdinbpl.3602:29|
 :skolemid |241|
 :pattern ( (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| ZeroMask) o_9@@106 f_5@@74))
 :pattern ( (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@0) o_9@@106 f_5@@74))
)) (forall ((o_9@@107 T@Ref) (f_5@@75 T@Field_41477_41478) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| ZeroMask) o_9@@107 f_5@@75) (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@0) o_9@@107 f_5@@75)))
 :qid |stdinbpl.3602:29|
 :skolemid |241|
 :pattern ( (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| ZeroMask) o_9@@107 f_5@@75))
 :pattern ( (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@0) o_9@@107 f_5@@75))
))) (forall ((o_9@@108 T@Ref) (f_5@@76 T@Field_47552_3829) ) (!  (=> (not (= f_5@@76 Ref__Integer_value)) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| ZeroMask) o_9@@108 f_5@@76) (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@0) o_9@@108 f_5@@76)))
 :qid |stdinbpl.3602:29|
 :skolemid |241|
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| ZeroMask) o_9@@108 f_5@@76))
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@0) o_9@@108 f_5@@76))
))) (forall ((o_9@@109 T@Ref) (f_5@@77 T@Field_29141_117835) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| ZeroMask) o_9@@109 f_5@@77) (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@0) o_9@@109 f_5@@77)))
 :qid |stdinbpl.3602:29|
 :skolemid |241|
 :pattern ( (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| ZeroMask) o_9@@109 f_5@@77))
 :pattern ( (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@0) o_9@@109 f_5@@77))
))) (forall ((o_9@@110 T@Ref) (f_5@@78 T@Field_29141_117968) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| ZeroMask) o_9@@110 f_5@@78) (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@0) o_9@@110 f_5@@78)))
 :qid |stdinbpl.3602:29|
 :skolemid |241|
 :pattern ( (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| ZeroMask) o_9@@110 f_5@@78))
 :pattern ( (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@0) o_9@@110 f_5@@78))
))) (and (and (state Heap@@41 QPMask@0) (state Heap@@41 QPMask@0)) (and (= (|Seq#Length_29180| b_24) len_3) (state Heap@@41 QPMask@0)))) (and (and (=> (= (ControlFlow 0 179) 176) anon105_Else_correct) (=> (= (ControlFlow 0 179) 28) anon106_Then_correct)) (=> (= (ControlFlow 0 179) 31) anon106_Else_correct))))))))
(let ((anon15_correct true))
(let ((anon104_Else_correct  (=> (and (not (and (<= 0 i_55) (< i_55 len_3))) (= (ControlFlow 0 26) 22)) anon15_correct)))
(let ((anon104_Then_correct  (=> (and (<= 0 i_55) (< i_55 len_3)) (and (=> (= (ControlFlow 0 23) (- 0 25)) (>= i_55 0)) (=> (>= i_55 0) (and (=> (= (ControlFlow 0 23) (- 0 24)) (< i_55 (|Seq#Length_29180| a_2))) (=> (< i_55 (|Seq#Length_29180| a_2)) (=> (= (ControlFlow 0 23) 22) anon15_correct))))))))
(let ((anon101_Else_correct  (=> (and (and (forall ((k_5 Int) (j_5 Int) ) (!  (=> (and (>= k_5 0) (and (< k_5 (|Seq#Length_29180| c)) (and (>= j_5 0) (and (< j_5 (|Seq#Length_29180| c)) (not (= k_5 j_5)))))) (not (= (|Seq#Index_29180| c k_5) (|Seq#Index_29180| c j_5))))
 :qid |stdinbpl.3556:20|
 :skolemid |235|
 :pattern ( (|Seq#Index_29180| c k_5) (|Seq#Index_29180| c j_5))
)) (state Heap@@41 ZeroMask)) (and (= (|Seq#Length_29180| a_2) len_3) (state Heap@@41 ZeroMask))) (and (and (=> (= (ControlFlow 0 181) 179) anon103_Else_correct) (=> (= (ControlFlow 0 181) 23) anon104_Then_correct)) (=> (= (ControlFlow 0 181) 26) anon104_Else_correct)))))
(let ((anon11_correct true))
(let ((anon102_Else_correct  (=> (and (not (and (>= k_36 0) (and (< k_36 (|Seq#Length_29180| c)) (and (>= j_33 0) (and (< j_33 (|Seq#Length_29180| c)) (not (= k_36 j_33))))))) (= (ControlFlow 0 21) 15)) anon11_correct)))
(let ((anon102_Then_correct  (=> (and (>= k_36 0) (and (< k_36 (|Seq#Length_29180| c)) (and (>= j_33 0) (and (< j_33 (|Seq#Length_29180| c)) (not (= k_36 j_33)))))) (and (=> (= (ControlFlow 0 16) (- 0 20)) (>= k_36 0)) (=> (>= k_36 0) (and (=> (= (ControlFlow 0 16) (- 0 19)) (< k_36 (|Seq#Length_29180| c))) (=> (< k_36 (|Seq#Length_29180| c)) (and (=> (= (ControlFlow 0 16) (- 0 18)) (>= j_33 0)) (=> (>= j_33 0) (and (=> (= (ControlFlow 0 16) (- 0 17)) (< j_33 (|Seq#Length_29180| c))) (=> (< j_33 (|Seq#Length_29180| c)) (=> (= (ControlFlow 0 16) 15) anon11_correct))))))))))))
(let ((anon99_Else_correct  (=> (and (forall ((k_3 Int) (j_3 Int) ) (!  (=> (and (>= k_3 0) (and (< k_3 (|Seq#Length_29180| b_24)) (and (>= j_3 0) (and (< j_3 (|Seq#Length_29180| b_24)) (not (= k_3 j_3)))))) (not (= (|Seq#Index_29180| b_24 k_3) (|Seq#Index_29180| b_24 j_3))))
 :qid |stdinbpl.3536:20|
 :skolemid |234|
 :pattern ( (|Seq#Index_29180| b_24 k_3) (|Seq#Index_29180| b_24 j_3))
)) (state Heap@@41 ZeroMask)) (and (and (=> (= (ControlFlow 0 182) 181) anon101_Else_correct) (=> (= (ControlFlow 0 182) 16) anon102_Then_correct)) (=> (= (ControlFlow 0 182) 21) anon102_Else_correct)))))
(let ((anon7_correct true))
(let ((anon100_Else_correct  (=> (and (not (and (>= k_33 0) (and (< k_33 (|Seq#Length_29180| b_24)) (and (>= j_31 0) (and (< j_31 (|Seq#Length_29180| b_24)) (not (= k_33 j_31))))))) (= (ControlFlow 0 14) 8)) anon7_correct)))
(let ((anon100_Then_correct  (=> (and (>= k_33 0) (and (< k_33 (|Seq#Length_29180| b_24)) (and (>= j_31 0) (and (< j_31 (|Seq#Length_29180| b_24)) (not (= k_33 j_31)))))) (and (=> (= (ControlFlow 0 9) (- 0 13)) (>= k_33 0)) (=> (>= k_33 0) (and (=> (= (ControlFlow 0 9) (- 0 12)) (< k_33 (|Seq#Length_29180| b_24))) (=> (< k_33 (|Seq#Length_29180| b_24)) (and (=> (= (ControlFlow 0 9) (- 0 11)) (>= j_31 0)) (=> (>= j_31 0) (and (=> (= (ControlFlow 0 9) (- 0 10)) (< j_31 (|Seq#Length_29180| b_24))) (=> (< j_31 (|Seq#Length_29180| b_24)) (=> (= (ControlFlow 0 9) 8) anon7_correct))))))))))))
(let ((anon97_Else_correct  (=> (and (forall ((k_1 Int) (j_1 Int) ) (!  (=> (and (>= k_1 0) (and (< k_1 (|Seq#Length_29180| a_2)) (and (>= j_1 0) (and (< j_1 (|Seq#Length_29180| a_2)) (not (= k_1 j_1)))))) (not (= (|Seq#Index_29180| a_2 k_1) (|Seq#Index_29180| a_2 j_1))))
 :qid |stdinbpl.3516:20|
 :skolemid |233|
 :pattern ( (|Seq#Index_29180| a_2 k_1) (|Seq#Index_29180| a_2 j_1))
)) (state Heap@@41 ZeroMask)) (and (and (=> (= (ControlFlow 0 183) 182) anon99_Else_correct) (=> (= (ControlFlow 0 183) 9) anon100_Then_correct)) (=> (= (ControlFlow 0 183) 14) anon100_Else_correct)))))
(let ((anon3_correct true))
(let ((anon98_Else_correct  (=> (and (not (and (>= k_28 0) (and (< k_28 (|Seq#Length_29180| a_2)) (and (>= j_35 0) (and (< j_35 (|Seq#Length_29180| a_2)) (not (= k_28 j_35))))))) (= (ControlFlow 0 7) 1)) anon3_correct)))
(let ((anon98_Then_correct  (=> (and (>= k_28 0) (and (< k_28 (|Seq#Length_29180| a_2)) (and (>= j_35 0) (and (< j_35 (|Seq#Length_29180| a_2)) (not (= k_28 j_35)))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= k_28 0)) (=> (>= k_28 0) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< k_28 (|Seq#Length_29180| a_2))) (=> (< k_28 (|Seq#Length_29180| a_2)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= j_35 0)) (=> (>= j_35 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< j_35 (|Seq#Length_29180| a_2))) (=> (< j_35 (|Seq#Length_29180| a_2)) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))))))))
(let ((anon0_correct  (=> (and (and (and (state Heap@@41 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (and AssumePermUpperBound (select (|PolymorphicMapType_41404_28883_53#PolymorphicMapType_41404| Heap@@41) diz $allocated))) (and (and (not (= diz null)) (state Heap@@41 ZeroMask)) (and (>= current_thread_id 0) (state Heap@@41 ZeroMask)))) (and (and (=> (= (ControlFlow 0 184) 183) anon97_Else_correct) (=> (= (ControlFlow 0 184) 2) anon98_Then_correct)) (=> (= (ControlFlow 0 184) 7) anon98_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 185) 184) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
