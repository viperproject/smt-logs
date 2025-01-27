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
(declare-fun i_42 () Int)
(declare-fun len_3 () Int)
(declare-fun c () T@Seq_48594)
(declare-fun PostMask@1 () T@PolymorphicMapType_41425)
(declare-fun b_24 () T@Seq_48594)
(declare-fun PostHeap@0 () T@PolymorphicMapType_41404)
(declare-fun i_16 () Int)
(declare-fun a_2 () T@Seq_48594)
(declare-fun i_27 () Int)
(declare-fun QPMask@6 () T@PolymorphicMapType_41425)
(declare-fun perm@0 () Real)
(declare-fun PostMask@0 () T@PolymorphicMapType_41425)
(declare-fun qpRange15 (T@Ref) Bool)
(declare-fun invRecv15 (T@Ref) Int)
(declare-fun QPMask@5 () T@PolymorphicMapType_41425)
(declare-fun i_25 () Int)
(declare-fun qpRange14 (T@Ref) Bool)
(declare-fun invRecv14 (T@Ref) Int)
(declare-fun QPMask@4 () T@PolymorphicMapType_41425)
(declare-fun i_24 () Int)
(declare-fun qpRange13 (T@Ref) Bool)
(declare-fun invRecv13 (T@Ref) Int)
(declare-fun QPMask@3 () T@PolymorphicMapType_41425)
(declare-fun i_23 () Int)
(declare-fun qpRange12 (T@Ref) Bool)
(declare-fun invRecv12 (T@Ref) Int)
(declare-fun i_13 () Int)
(declare-fun Heap@@41 () T@PolymorphicMapType_41404)
(declare-fun QPMask@2 () T@PolymorphicMapType_41425)
(declare-fun i_12 () Int)
(declare-fun qpRange11 (T@Ref) Bool)
(declare-fun invRecv11 (T@Ref) Int)
(declare-fun QPMask@1 () T@PolymorphicMapType_41425)
(declare-fun i_11 () Int)
(declare-fun qpRange10 (T@Ref) Bool)
(declare-fun invRecv10 (T@Ref) Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_41425)
(declare-fun i_17 () Int)
(declare-fun qpRange9 (T@Ref) Bool)
(declare-fun invRecv9 (T@Ref) Int)
(declare-fun i_10 () Int)
(declare-fun k_29 () Int)
(declare-fun j_7 () Int)
(declare-fun k_22 () Int)
(declare-fun j_10 () Int)
(declare-fun k_25 () Int)
(declare-fun j_6 () Int)
(declare-fun diz () T@Ref)
(declare-fun current_thread_id () Int)
(set-info :boogie-vc-id Ref__loop_main_67)
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
 (=> (= (ControlFlow 0 0) 133) (let ((anon70_correct true))
(let ((anon130_Else_correct  (=> (and (not (and (<= 1 i_42) (< i_42 len_3))) (= (ControlFlow 0 82) 77)) anon70_correct)))
(let ((anon130_Then_correct  (=> (and (<= 1 i_42) (< i_42 len_3)) (and (=> (= (ControlFlow 0 78) (- 0 81)) (>= i_42 0)) (=> (>= i_42 0) (and (=> (= (ControlFlow 0 78) (- 0 80)) (< i_42 (|Seq#Length_29180| c))) (=> (< i_42 (|Seq#Length_29180| c)) (and (=> (= (ControlFlow 0 78) (- 0 79)) (HasDirectPerm_29141_3829 PostMask@1 (|Seq#Index_29180| c i_42) Ref__Integer_value)) (=> (HasDirectPerm_29141_3829 PostMask@1 (|Seq#Index_29180| c i_42) Ref__Integer_value) (=> (= (ControlFlow 0 78) 77) anon70_correct))))))))))
(let ((anon129_Else_correct true))
(let ((anon127_Else_correct  (=> (and (forall ((i_19_1 Int) ) (!  (=> (and (<= 0 i_19_1) (< i_19_1 len_3)) (= (select (|PolymorphicMapType_41404_29141_3829#PolymorphicMapType_41404| PostHeap@0) (|Seq#Index_29180| b_24 i_19_1) Ref__Integer_value) i_19_1))
 :qid |stdinbpl.2398:20|
 :skolemid |201|
 :pattern ( (|Seq#Index_29180| b_24 i_19_1))
)) (state PostHeap@0 PostMask@1)) (and (and (=> (= (ControlFlow 0 83) 76) anon129_Else_correct) (=> (= (ControlFlow 0 83) 78) anon130_Then_correct)) (=> (= (ControlFlow 0 83) 82) anon130_Else_correct)))))
(let ((anon66_correct true))
(let ((anon128_Else_correct  (=> (and (not (and (<= 0 i_16) (< i_16 len_3))) (= (ControlFlow 0 75) 70)) anon66_correct)))
(let ((anon128_Then_correct  (=> (and (<= 0 i_16) (< i_16 len_3)) (and (=> (= (ControlFlow 0 71) (- 0 74)) (>= i_16 0)) (=> (>= i_16 0) (and (=> (= (ControlFlow 0 71) (- 0 73)) (< i_16 (|Seq#Length_29180| b_24))) (=> (< i_16 (|Seq#Length_29180| b_24)) (and (=> (= (ControlFlow 0 71) (- 0 72)) (HasDirectPerm_29141_3829 PostMask@1 (|Seq#Index_29180| b_24 i_16) Ref__Integer_value)) (=> (HasDirectPerm_29141_3829 PostMask@1 (|Seq#Index_29180| b_24 i_16) Ref__Integer_value) (=> (= (ControlFlow 0 71) 70) anon66_correct))))))))))
(let ((anon125_Else_correct  (=> (and (forall ((i_17_1 Int) ) (!  (=> (and (<= 0 i_17_1) (< i_17_1 len_3)) (= (select (|PolymorphicMapType_41404_29141_3829#PolymorphicMapType_41404| PostHeap@0) (|Seq#Index_29180| a_2 i_17_1) Ref__Integer_value) (+ i_17_1 1)))
 :qid |stdinbpl.2380:20|
 :skolemid |200|
 :pattern ( (|Seq#Index_29180| a_2 i_17_1))
)) (state PostHeap@0 PostMask@1)) (and (and (=> (= (ControlFlow 0 84) 83) anon127_Else_correct) (=> (= (ControlFlow 0 84) 71) anon128_Then_correct)) (=> (= (ControlFlow 0 84) 75) anon128_Else_correct)))))
(let ((anon62_correct true))
(let ((anon126_Else_correct  (=> (and (not (and (<= 0 i_27) (< i_27 len_3))) (= (ControlFlow 0 69) 64)) anon62_correct)))
(let ((anon126_Then_correct  (=> (and (<= 0 i_27) (< i_27 len_3)) (and (=> (= (ControlFlow 0 65) (- 0 68)) (>= i_27 0)) (=> (>= i_27 0) (and (=> (= (ControlFlow 0 65) (- 0 67)) (< i_27 (|Seq#Length_29180| a_2))) (=> (< i_27 (|Seq#Length_29180| a_2)) (and (=> (= (ControlFlow 0 65) (- 0 66)) (HasDirectPerm_29141_3829 PostMask@1 (|Seq#Index_29180| a_2 i_27) Ref__Integer_value)) (=> (HasDirectPerm_29141_3829 PostMask@1 (|Seq#Index_29180| a_2 i_27) Ref__Integer_value) (=> (= (ControlFlow 0 65) 64) anon62_correct))))))))))
(let ((anon59_correct  (=> (state PostHeap@0 PostMask@1) (and (and (=> (= (ControlFlow 0 85) 84) anon125_Else_correct) (=> (= (ControlFlow 0 85) 65) anon126_Then_correct)) (=> (= (ControlFlow 0 85) 69) anon126_Else_correct)))))
(let ((anon124_Else_correct  (=> (not (and (<= 0 (- (|Seq#Length_29180| a_2) 1)) (< (- (|Seq#Length_29180| a_2) 1) len_3))) (=> (and (= PostMask@1 QPMask@6) (= (ControlFlow 0 90) 85)) anon59_correct))))
(let ((anon124_Then_correct  (=> (and (<= 0 (- (|Seq#Length_29180| a_2) 1)) (< (- (|Seq#Length_29180| a_2) 1) len_3)) (and (=> (= (ControlFlow 0 86) (- 0 89)) (>= (- (|Seq#Length_29180| a_2) 1) 0)) (=> (>= (- (|Seq#Length_29180| a_2) 1) 0) (and (=> (= (ControlFlow 0 86) (- 0 88)) (< (- (|Seq#Length_29180| a_2) 1) (|Seq#Length_29180| a_2))) (=> (< (- (|Seq#Length_29180| a_2) 1) (|Seq#Length_29180| a_2)) (=> (= perm@0 (/ (to_real 1) (to_real 2))) (and (=> (= (ControlFlow 0 86) (- 0 87)) (>= perm@0 NoPerm)) (=> (>= perm@0 NoPerm) (=> (=> (> perm@0 NoPerm) (not (= (|Seq#Index_29180| a_2 (- (|Seq#Length_29180| a_2) 1)) null))) (=> (and (and (= PostMask@0 (PolymorphicMapType_41425 (store (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@6) (|Seq#Index_29180| a_2 (- (|Seq#Length_29180| a_2) 1)) Ref__Integer_value (+ (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@6) (|Seq#Index_29180| a_2 (- (|Seq#Length_29180| a_2) 1)) Ref__Integer_value) perm@0)) (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@6) (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@6) (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@6) (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@6))) (state PostHeap@0 PostMask@0)) (and (= PostMask@1 PostMask@0) (= (ControlFlow 0 86) 85))) anon59_correct))))))))))))
(let ((anon122_Else_correct  (and (=> (= (ControlFlow 0 91) (- 0 93)) (forall ((i_15_1 Int) (i_15_2 Int) ) (!  (=> (and (and (and (and (not (= i_15_1 i_15_2)) (and (<= 0 i_15_1) (< i_15_1 (- len_3 1)))) (and (<= 0 i_15_2) (< i_15_2 (- len_3 1)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_29180| a_2 i_15_1) (|Seq#Index_29180| a_2 i_15_2))))
 :qid |stdinbpl.2313:15|
 :skolemid |193|
))) (=> (forall ((i_15_1@@0 Int) (i_15_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_15_1@@0 i_15_2@@0)) (and (<= 0 i_15_1@@0) (< i_15_1@@0 (- len_3 1)))) (and (<= 0 i_15_2@@0) (< i_15_2@@0 (- len_3 1)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_29180| a_2 i_15_1@@0) (|Seq#Index_29180| a_2 i_15_2@@0))))
 :qid |stdinbpl.2313:15|
 :skolemid |193|
)) (=> (and (forall ((i_15_1@@1 Int) ) (!  (=> (and (and (<= 0 i_15_1@@1) (< i_15_1@@1 (- len_3 1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange15 (|Seq#Index_29180| a_2 i_15_1@@1)) (= (invRecv15 (|Seq#Index_29180| a_2 i_15_1@@1)) i_15_1@@1)))
 :qid |stdinbpl.2319:22|
 :skolemid |194|
 :pattern ( (|Seq#Index_29180| a_2 i_15_1@@1))
 :pattern ( (|Seq#Index_29180| a_2 i_15_1@@1))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv15 o_9)) (< (invRecv15 o_9) (- len_3 1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange15 o_9)) (= (|Seq#Index_29180| a_2 (invRecv15 o_9)) o_9))
 :qid |stdinbpl.2323:22|
 :skolemid |195|
 :pattern ( (invRecv15 o_9))
))) (and (=> (= (ControlFlow 0 91) (- 0 92)) (forall ((i_15_1@@2 Int) ) (!  (=> (and (<= 0 i_15_1@@2) (< i_15_1@@2 (- len_3 1))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2329:15|
 :skolemid |196|
 :pattern ( (|Seq#Index_29180| a_2 i_15_1@@2))
 :pattern ( (|Seq#Index_29180| a_2 i_15_1@@2))
))) (=> (forall ((i_15_1@@3 Int) ) (!  (=> (and (<= 0 i_15_1@@3) (< i_15_1@@3 (- len_3 1))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2329:15|
 :skolemid |196|
 :pattern ( (|Seq#Index_29180| a_2 i_15_1@@3))
 :pattern ( (|Seq#Index_29180| a_2 i_15_1@@3))
)) (=> (and (forall ((i_15_1@@4 Int) ) (!  (=> (and (and (<= 0 i_15_1@@4) (< i_15_1@@4 (- len_3 1))) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= (|Seq#Index_29180| a_2 i_15_1@@4) null)))
 :qid |stdinbpl.2335:22|
 :skolemid |197|
 :pattern ( (|Seq#Index_29180| a_2 i_15_1@@4))
 :pattern ( (|Seq#Index_29180| a_2 i_15_1@@4))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv15 o_9@@0)) (< (invRecv15 o_9@@0) (- len_3 1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange15 o_9@@0)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (|Seq#Index_29180| a_2 (invRecv15 o_9@@0)) o_9@@0)) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@6) o_9@@0 Ref__Integer_value) (+ (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@5) o_9@@0 Ref__Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (<= 0 (invRecv15 o_9@@0)) (< (invRecv15 o_9@@0) (- len_3 1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange15 o_9@@0))) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@6) o_9@@0 Ref__Integer_value) (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@5) o_9@@0 Ref__Integer_value))))
 :qid |stdinbpl.2341:22|
 :skolemid |198|
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@6) o_9@@0 Ref__Integer_value))
))) (=> (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_41464_53) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@5) o_9@@1 f_5) (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@6) o_9@@1 f_5)))
 :qid |stdinbpl.2345:29|
 :skolemid |199|
 :pattern ( (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@5) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@6) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_41477_41478) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@5) o_9@@2 f_5@@0) (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@6) o_9@@2 f_5@@0)))
 :qid |stdinbpl.2345:29|
 :skolemid |199|
 :pattern ( (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@5) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@6) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_47552_3829) ) (!  (=> (not (= f_5@@1 Ref__Integer_value)) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@5) o_9@@3 f_5@@1) (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@6) o_9@@3 f_5@@1)))
 :qid |stdinbpl.2345:29|
 :skolemid |199|
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@5) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@6) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_29141_117835) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@5) o_9@@4 f_5@@2) (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@6) o_9@@4 f_5@@2)))
 :qid |stdinbpl.2345:29|
 :skolemid |199|
 :pattern ( (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@5) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@6) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_29141_117968) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@5) o_9@@5 f_5@@3) (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@6) o_9@@5 f_5@@3)))
 :qid |stdinbpl.2345:29|
 :skolemid |199|
 :pattern ( (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@5) o_9@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@6) o_9@@5 f_5@@3))
))) (and (state PostHeap@0 QPMask@6) (state PostHeap@0 QPMask@6))) (and (=> (= (ControlFlow 0 91) 86) anon124_Then_correct) (=> (= (ControlFlow 0 91) 90) anon124_Else_correct)))))))))))
(let ((anon56_correct true))
(let ((anon123_Else_correct  (=> (and (not (and (<= 0 i_25) (< i_25 (- len_3 1)))) (= (ControlFlow 0 63) 59)) anon56_correct)))
(let ((anon123_Then_correct  (=> (and (<= 0 i_25) (< i_25 (- len_3 1))) (and (=> (= (ControlFlow 0 60) (- 0 62)) (>= i_25 0)) (=> (>= i_25 0) (and (=> (= (ControlFlow 0 60) (- 0 61)) (< i_25 (|Seq#Length_29180| a_2))) (=> (< i_25 (|Seq#Length_29180| a_2)) (=> (= (ControlFlow 0 60) 59) anon56_correct))))))))
(let ((anon120_Else_correct  (and (=> (= (ControlFlow 0 94) (- 0 95)) (forall ((i_13_1 Int) (i_13_2 Int) ) (!  (=> (and (and (and (and (not (= i_13_1 i_13_2)) (and (<= 0 i_13_1) (< i_13_1 len_3))) (and (<= 0 i_13_2) (< i_13_2 len_3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_29180| c i_13_1) (|Seq#Index_29180| c i_13_2))))
 :qid |stdinbpl.2267:15|
 :skolemid |187|
))) (=> (forall ((i_13_1@@0 Int) (i_13_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_13_1@@0 i_13_2@@0)) (and (<= 0 i_13_1@@0) (< i_13_1@@0 len_3))) (and (<= 0 i_13_2@@0) (< i_13_2@@0 len_3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_29180| c i_13_1@@0) (|Seq#Index_29180| c i_13_2@@0))))
 :qid |stdinbpl.2267:15|
 :skolemid |187|
)) (=> (and (and (forall ((i_13_1@@1 Int) ) (!  (=> (and (and (<= 0 i_13_1@@1) (< i_13_1@@1 len_3)) (< NoPerm FullPerm)) (and (qpRange14 (|Seq#Index_29180| c i_13_1@@1)) (= (invRecv14 (|Seq#Index_29180| c i_13_1@@1)) i_13_1@@1)))
 :qid |stdinbpl.2273:22|
 :skolemid |188|
 :pattern ( (|Seq#Index_29180| c i_13_1@@1))
 :pattern ( (|Seq#Index_29180| c i_13_1@@1))
)) (forall ((o_9@@6 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv14 o_9@@6)) (< (invRecv14 o_9@@6) len_3)) (< NoPerm FullPerm)) (qpRange14 o_9@@6)) (= (|Seq#Index_29180| c (invRecv14 o_9@@6)) o_9@@6))
 :qid |stdinbpl.2277:22|
 :skolemid |189|
 :pattern ( (invRecv14 o_9@@6))
))) (and (forall ((i_13_1@@2 Int) ) (!  (=> (and (<= 0 i_13_1@@2) (< i_13_1@@2 len_3)) (not (= (|Seq#Index_29180| c i_13_1@@2) null)))
 :qid |stdinbpl.2283:22|
 :skolemid |190|
 :pattern ( (|Seq#Index_29180| c i_13_1@@2))
 :pattern ( (|Seq#Index_29180| c i_13_1@@2))
)) (forall ((o_9@@7 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv14 o_9@@7)) (< (invRecv14 o_9@@7) len_3)) (< NoPerm FullPerm)) (qpRange14 o_9@@7)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_29180| c (invRecv14 o_9@@7)) o_9@@7)) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@5) o_9@@7 Ref__Integer_value) (+ (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@4) o_9@@7 Ref__Integer_value) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv14 o_9@@7)) (< (invRecv14 o_9@@7) len_3)) (< NoPerm FullPerm)) (qpRange14 o_9@@7))) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@5) o_9@@7 Ref__Integer_value) (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@4) o_9@@7 Ref__Integer_value))))
 :qid |stdinbpl.2289:22|
 :skolemid |191|
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@5) o_9@@7 Ref__Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_9@@8 T@Ref) (f_5@@4 T@Field_41464_53) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@4) o_9@@8 f_5@@4) (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@5) o_9@@8 f_5@@4)))
 :qid |stdinbpl.2293:29|
 :skolemid |192|
 :pattern ( (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@4) o_9@@8 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@5) o_9@@8 f_5@@4))
)) (forall ((o_9@@9 T@Ref) (f_5@@5 T@Field_41477_41478) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@4) o_9@@9 f_5@@5) (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@5) o_9@@9 f_5@@5)))
 :qid |stdinbpl.2293:29|
 :skolemid |192|
 :pattern ( (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@4) o_9@@9 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@5) o_9@@9 f_5@@5))
))) (forall ((o_9@@10 T@Ref) (f_5@@6 T@Field_47552_3829) ) (!  (=> (not (= f_5@@6 Ref__Integer_value)) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@4) o_9@@10 f_5@@6) (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@5) o_9@@10 f_5@@6)))
 :qid |stdinbpl.2293:29|
 :skolemid |192|
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@4) o_9@@10 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@5) o_9@@10 f_5@@6))
))) (forall ((o_9@@11 T@Ref) (f_5@@7 T@Field_29141_117835) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@4) o_9@@11 f_5@@7) (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@5) o_9@@11 f_5@@7)))
 :qid |stdinbpl.2293:29|
 :skolemid |192|
 :pattern ( (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@4) o_9@@11 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@5) o_9@@11 f_5@@7))
))) (forall ((o_9@@12 T@Ref) (f_5@@8 T@Field_29141_117968) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@4) o_9@@12 f_5@@8) (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@5) o_9@@12 f_5@@8)))
 :qid |stdinbpl.2293:29|
 :skolemid |192|
 :pattern ( (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@4) o_9@@12 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@5) o_9@@12 f_5@@8))
))) (and (state PostHeap@0 QPMask@5) (state PostHeap@0 QPMask@5))) (and (and (=> (= (ControlFlow 0 94) 91) anon122_Else_correct) (=> (= (ControlFlow 0 94) 60) anon123_Then_correct)) (=> (= (ControlFlow 0 94) 63) anon123_Else_correct))))))))
(let ((anon52_correct true))
(let ((anon121_Else_correct  (=> (and (not (and (<= 0 i_24) (< i_24 len_3))) (= (ControlFlow 0 58) 54)) anon52_correct)))
(let ((anon121_Then_correct  (=> (and (<= 0 i_24) (< i_24 len_3)) (and (=> (= (ControlFlow 0 55) (- 0 57)) (>= i_24 0)) (=> (>= i_24 0) (and (=> (= (ControlFlow 0 55) (- 0 56)) (< i_24 (|Seq#Length_29180| c))) (=> (< i_24 (|Seq#Length_29180| c)) (=> (= (ControlFlow 0 55) 54) anon52_correct))))))))
(let ((anon49_correct  (=> (state PostHeap@0 QPMask@4) (and (and (=> (= (ControlFlow 0 96) 94) anon120_Else_correct) (=> (= (ControlFlow 0 96) 55) anon121_Then_correct)) (=> (= (ControlFlow 0 96) 58) anon121_Else_correct)))))
(let ((anon119_Else_correct  (=> (and (<= len_3 0) (= (ControlFlow 0 98) 96)) anon49_correct)))
(let ((anon119_Then_correct  (=> (< 0 len_3) (=> (and (= (|Seq#Length_29180| c) len_3) (= (ControlFlow 0 97) 96)) anon49_correct))))
(let ((anon117_Else_correct  (and (=> (= (ControlFlow 0 99) (- 0 101)) (forall ((i_11_1 Int) (i_11_2 Int) ) (!  (=> (and (and (and (and (not (= i_11_1 i_11_2)) (and (<= 0 i_11_1) (< i_11_1 len_3))) (and (<= 0 i_11_2) (< i_11_2 len_3))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_29180| b_24 i_11_1) (|Seq#Index_29180| b_24 i_11_2))))
 :qid |stdinbpl.2211:15|
 :skolemid |180|
))) (=> (forall ((i_11_1@@0 Int) (i_11_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_11_1@@0 i_11_2@@0)) (and (<= 0 i_11_1@@0) (< i_11_1@@0 len_3))) (and (<= 0 i_11_2@@0) (< i_11_2@@0 len_3))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_29180| b_24 i_11_1@@0) (|Seq#Index_29180| b_24 i_11_2@@0))))
 :qid |stdinbpl.2211:15|
 :skolemid |180|
)) (=> (and (forall ((i_11_1@@1 Int) ) (!  (=> (and (and (<= 0 i_11_1@@1) (< i_11_1@@1 len_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange13 (|Seq#Index_29180| b_24 i_11_1@@1)) (= (invRecv13 (|Seq#Index_29180| b_24 i_11_1@@1)) i_11_1@@1)))
 :qid |stdinbpl.2217:22|
 :skolemid |181|
 :pattern ( (|Seq#Index_29180| b_24 i_11_1@@1))
 :pattern ( (|Seq#Index_29180| b_24 i_11_1@@1))
)) (forall ((o_9@@13 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv13 o_9@@13)) (< (invRecv13 o_9@@13) len_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange13 o_9@@13)) (= (|Seq#Index_29180| b_24 (invRecv13 o_9@@13)) o_9@@13))
 :qid |stdinbpl.2221:22|
 :skolemid |182|
 :pattern ( (invRecv13 o_9@@13))
))) (and (=> (= (ControlFlow 0 99) (- 0 100)) (forall ((i_11_1@@2 Int) ) (!  (=> (and (<= 0 i_11_1@@2) (< i_11_1@@2 len_3)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2227:15|
 :skolemid |183|
 :pattern ( (|Seq#Index_29180| b_24 i_11_1@@2))
 :pattern ( (|Seq#Index_29180| b_24 i_11_1@@2))
))) (=> (forall ((i_11_1@@3 Int) ) (!  (=> (and (<= 0 i_11_1@@3) (< i_11_1@@3 len_3)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2227:15|
 :skolemid |183|
 :pattern ( (|Seq#Index_29180| b_24 i_11_1@@3))
 :pattern ( (|Seq#Index_29180| b_24 i_11_1@@3))
)) (=> (and (forall ((i_11_1@@4 Int) ) (!  (=> (and (and (<= 0 i_11_1@@4) (< i_11_1@@4 len_3)) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= (|Seq#Index_29180| b_24 i_11_1@@4) null)))
 :qid |stdinbpl.2233:22|
 :skolemid |184|
 :pattern ( (|Seq#Index_29180| b_24 i_11_1@@4))
 :pattern ( (|Seq#Index_29180| b_24 i_11_1@@4))
)) (forall ((o_9@@14 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv13 o_9@@14)) (< (invRecv13 o_9@@14) len_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange13 o_9@@14)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (|Seq#Index_29180| b_24 (invRecv13 o_9@@14)) o_9@@14)) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@4) o_9@@14 Ref__Integer_value) (+ (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@3) o_9@@14 Ref__Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (<= 0 (invRecv13 o_9@@14)) (< (invRecv13 o_9@@14) len_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange13 o_9@@14))) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@4) o_9@@14 Ref__Integer_value) (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@3) o_9@@14 Ref__Integer_value))))
 :qid |stdinbpl.2239:22|
 :skolemid |185|
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@4) o_9@@14 Ref__Integer_value))
))) (=> (and (and (and (and (and (forall ((o_9@@15 T@Ref) (f_5@@9 T@Field_41464_53) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@3) o_9@@15 f_5@@9) (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@4) o_9@@15 f_5@@9)))
 :qid |stdinbpl.2243:29|
 :skolemid |186|
 :pattern ( (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@3) o_9@@15 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@4) o_9@@15 f_5@@9))
)) (forall ((o_9@@16 T@Ref) (f_5@@10 T@Field_41477_41478) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@3) o_9@@16 f_5@@10) (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@4) o_9@@16 f_5@@10)))
 :qid |stdinbpl.2243:29|
 :skolemid |186|
 :pattern ( (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@3) o_9@@16 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@4) o_9@@16 f_5@@10))
))) (forall ((o_9@@17 T@Ref) (f_5@@11 T@Field_47552_3829) ) (!  (=> (not (= f_5@@11 Ref__Integer_value)) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@3) o_9@@17 f_5@@11) (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@4) o_9@@17 f_5@@11)))
 :qid |stdinbpl.2243:29|
 :skolemid |186|
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@3) o_9@@17 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@4) o_9@@17 f_5@@11))
))) (forall ((o_9@@18 T@Ref) (f_5@@12 T@Field_29141_117835) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@3) o_9@@18 f_5@@12) (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@4) o_9@@18 f_5@@12)))
 :qid |stdinbpl.2243:29|
 :skolemid |186|
 :pattern ( (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@3) o_9@@18 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@4) o_9@@18 f_5@@12))
))) (forall ((o_9@@19 T@Ref) (f_5@@13 T@Field_29141_117968) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@3) o_9@@19 f_5@@13) (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@4) o_9@@19 f_5@@13)))
 :qid |stdinbpl.2243:29|
 :skolemid |186|
 :pattern ( (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@3) o_9@@19 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@4) o_9@@19 f_5@@13))
))) (and (state PostHeap@0 QPMask@4) (state PostHeap@0 QPMask@4))) (and (=> (= (ControlFlow 0 99) 97) anon119_Then_correct) (=> (= (ControlFlow 0 99) 98) anon119_Else_correct)))))))))))
(let ((anon46_correct true))
(let ((anon118_Else_correct  (=> (and (not (and (<= 0 i_23) (< i_23 len_3))) (= (ControlFlow 0 53) 49)) anon46_correct)))
(let ((anon118_Then_correct  (=> (and (<= 0 i_23) (< i_23 len_3)) (and (=> (= (ControlFlow 0 50) (- 0 52)) (>= i_23 0)) (=> (>= i_23 0) (and (=> (= (ControlFlow 0 50) (- 0 51)) (< i_23 (|Seq#Length_29180| b_24))) (=> (< i_23 (|Seq#Length_29180| b_24)) (=> (= (ControlFlow 0 50) 49) anon46_correct))))))))
(let ((anon43_correct  (=> (state PostHeap@0 QPMask@3) (and (and (=> (= (ControlFlow 0 102) 99) anon117_Else_correct) (=> (= (ControlFlow 0 102) 50) anon118_Then_correct)) (=> (= (ControlFlow 0 102) 53) anon118_Else_correct)))))
(let ((anon116_Else_correct  (=> (and (<= len_3 0) (= (ControlFlow 0 104) 102)) anon43_correct)))
(let ((anon116_Then_correct  (=> (< 0 len_3) (=> (and (= (|Seq#Length_29180| b_24) len_3) (= (ControlFlow 0 103) 102)) anon43_correct))))
(let ((anon114_Else_correct  (and (=> (= (ControlFlow 0 105) (- 0 107)) (forall ((i_9_1 Int) (i_9_2 Int) ) (!  (=> (and (and (and (and (not (= i_9_1 i_9_2)) (and (<= 0 i_9_1) (< i_9_1 len_3))) (and (<= 0 i_9_2) (< i_9_2 len_3))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_29180| a_2 i_9_1) (|Seq#Index_29180| a_2 i_9_2))))
 :qid |stdinbpl.2155:15|
 :skolemid |173|
))) (=> (forall ((i_9_1@@0 Int) (i_9_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_9_1@@0 i_9_2@@0)) (and (<= 0 i_9_1@@0) (< i_9_1@@0 len_3))) (and (<= 0 i_9_2@@0) (< i_9_2@@0 len_3))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_29180| a_2 i_9_1@@0) (|Seq#Index_29180| a_2 i_9_2@@0))))
 :qid |stdinbpl.2155:15|
 :skolemid |173|
)) (=> (and (forall ((i_9_1@@1 Int) ) (!  (=> (and (and (<= 0 i_9_1@@1) (< i_9_1@@1 len_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange12 (|Seq#Index_29180| a_2 i_9_1@@1)) (= (invRecv12 (|Seq#Index_29180| a_2 i_9_1@@1)) i_9_1@@1)))
 :qid |stdinbpl.2161:22|
 :skolemid |174|
 :pattern ( (|Seq#Index_29180| a_2 i_9_1@@1))
 :pattern ( (|Seq#Index_29180| a_2 i_9_1@@1))
)) (forall ((o_9@@20 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv12 o_9@@20)) (< (invRecv12 o_9@@20) len_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange12 o_9@@20)) (= (|Seq#Index_29180| a_2 (invRecv12 o_9@@20)) o_9@@20))
 :qid |stdinbpl.2165:22|
 :skolemid |175|
 :pattern ( (invRecv12 o_9@@20))
))) (and (=> (= (ControlFlow 0 105) (- 0 106)) (forall ((i_9_1@@2 Int) ) (!  (=> (and (<= 0 i_9_1@@2) (< i_9_1@@2 len_3)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2171:15|
 :skolemid |176|
 :pattern ( (|Seq#Index_29180| a_2 i_9_1@@2))
 :pattern ( (|Seq#Index_29180| a_2 i_9_1@@2))
))) (=> (forall ((i_9_1@@3 Int) ) (!  (=> (and (<= 0 i_9_1@@3) (< i_9_1@@3 len_3)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2171:15|
 :skolemid |176|
 :pattern ( (|Seq#Index_29180| a_2 i_9_1@@3))
 :pattern ( (|Seq#Index_29180| a_2 i_9_1@@3))
)) (=> (and (forall ((i_9_1@@4 Int) ) (!  (=> (and (and (<= 0 i_9_1@@4) (< i_9_1@@4 len_3)) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= (|Seq#Index_29180| a_2 i_9_1@@4) null)))
 :qid |stdinbpl.2177:22|
 :skolemid |177|
 :pattern ( (|Seq#Index_29180| a_2 i_9_1@@4))
 :pattern ( (|Seq#Index_29180| a_2 i_9_1@@4))
)) (forall ((o_9@@21 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv12 o_9@@21)) (< (invRecv12 o_9@@21) len_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange12 o_9@@21)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (|Seq#Index_29180| a_2 (invRecv12 o_9@@21)) o_9@@21)) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@3) o_9@@21 Ref__Integer_value) (+ (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| ZeroMask) o_9@@21 Ref__Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (<= 0 (invRecv12 o_9@@21)) (< (invRecv12 o_9@@21) len_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange12 o_9@@21))) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@3) o_9@@21 Ref__Integer_value) (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| ZeroMask) o_9@@21 Ref__Integer_value))))
 :qid |stdinbpl.2183:22|
 :skolemid |178|
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@3) o_9@@21 Ref__Integer_value))
))) (=> (and (and (and (and (and (forall ((o_9@@22 T@Ref) (f_5@@14 T@Field_41464_53) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| ZeroMask) o_9@@22 f_5@@14) (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@3) o_9@@22 f_5@@14)))
 :qid |stdinbpl.2187:29|
 :skolemid |179|
 :pattern ( (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| ZeroMask) o_9@@22 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@3) o_9@@22 f_5@@14))
)) (forall ((o_9@@23 T@Ref) (f_5@@15 T@Field_41477_41478) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| ZeroMask) o_9@@23 f_5@@15) (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@3) o_9@@23 f_5@@15)))
 :qid |stdinbpl.2187:29|
 :skolemid |179|
 :pattern ( (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| ZeroMask) o_9@@23 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@3) o_9@@23 f_5@@15))
))) (forall ((o_9@@24 T@Ref) (f_5@@16 T@Field_47552_3829) ) (!  (=> (not (= f_5@@16 Ref__Integer_value)) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| ZeroMask) o_9@@24 f_5@@16) (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@3) o_9@@24 f_5@@16)))
 :qid |stdinbpl.2187:29|
 :skolemid |179|
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| ZeroMask) o_9@@24 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@3) o_9@@24 f_5@@16))
))) (forall ((o_9@@25 T@Ref) (f_5@@17 T@Field_29141_117835) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| ZeroMask) o_9@@25 f_5@@17) (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@3) o_9@@25 f_5@@17)))
 :qid |stdinbpl.2187:29|
 :skolemid |179|
 :pattern ( (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| ZeroMask) o_9@@25 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@3) o_9@@25 f_5@@17))
))) (forall ((o_9@@26 T@Ref) (f_5@@18 T@Field_29141_117968) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| ZeroMask) o_9@@26 f_5@@18) (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@3) o_9@@26 f_5@@18)))
 :qid |stdinbpl.2187:29|
 :skolemid |179|
 :pattern ( (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| ZeroMask) o_9@@26 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@3) o_9@@26 f_5@@18))
))) (and (state PostHeap@0 QPMask@3) (state PostHeap@0 QPMask@3))) (and (=> (= (ControlFlow 0 105) 103) anon116_Then_correct) (=> (= (ControlFlow 0 105) 104) anon116_Else_correct)))))))))))
(let ((anon40_correct true))
(let ((anon115_Else_correct  (=> (and (not (and (<= 0 i_13) (< i_13 len_3))) (= (ControlFlow 0 48) 44)) anon40_correct)))
(let ((anon115_Then_correct  (=> (and (<= 0 i_13) (< i_13 len_3)) (and (=> (= (ControlFlow 0 45) (- 0 47)) (>= i_13 0)) (=> (>= i_13 0) (and (=> (= (ControlFlow 0 45) (- 0 46)) (< i_13 (|Seq#Length_29180| a_2))) (=> (< i_13 (|Seq#Length_29180| a_2)) (=> (= (ControlFlow 0 45) 44) anon40_correct))))))))
(let ((anon37_correct  (=> (state PostHeap@0 ZeroMask) (and (and (=> (= (ControlFlow 0 108) 105) anon114_Else_correct) (=> (= (ControlFlow 0 108) 45) anon115_Then_correct)) (=> (= (ControlFlow 0 108) 48) anon115_Else_correct)))))
(let ((anon113_Else_correct  (=> (and (<= len_3 0) (= (ControlFlow 0 110) 108)) anon37_correct)))
(let ((anon113_Then_correct  (=> (< 0 len_3) (=> (and (= (|Seq#Length_29180| a_2) len_3) (= (ControlFlow 0 109) 108)) anon37_correct))))
(let ((anon112_Then_correct  (=> (state PostHeap@0 ZeroMask) (and (=> (= (ControlFlow 0 111) 109) anon113_Then_correct) (=> (= (ControlFlow 0 111) 110) anon113_Else_correct)))))
(let ((anon112_Else_correct true))
(let ((anon110_Else_correct  (=> (and (forall ((i_7_1 Int) ) (!  (=> (and (<= 0 i_7_1) (< i_7_1 len_3)) (= (select (|PolymorphicMapType_41404_29141_3829#PolymorphicMapType_41404| Heap@@41) (|Seq#Index_29180| b_24 i_7_1) Ref__Integer_value) i_7_1))
 :qid |stdinbpl.2122:20|
 :skolemid |172|
 :pattern ( (|Seq#Index_29180| b_24 i_7_1))
)) (state Heap@@41 QPMask@2)) (and (=> (= (ControlFlow 0 112) 111) anon112_Then_correct) (=> (= (ControlFlow 0 112) 43) anon112_Else_correct)))))
(let ((anon33_correct true))
(let ((anon111_Else_correct  (=> (and (not (and (<= 0 i_12) (< i_12 len_3))) (= (ControlFlow 0 42) 37)) anon33_correct)))
(let ((anon111_Then_correct  (=> (and (<= 0 i_12) (< i_12 len_3)) (and (=> (= (ControlFlow 0 38) (- 0 41)) (>= i_12 0)) (=> (>= i_12 0) (and (=> (= (ControlFlow 0 38) (- 0 40)) (< i_12 (|Seq#Length_29180| b_24))) (=> (< i_12 (|Seq#Length_29180| b_24)) (and (=> (= (ControlFlow 0 38) (- 0 39)) (HasDirectPerm_29141_3829 QPMask@2 (|Seq#Index_29180| b_24 i_12) Ref__Integer_value)) (=> (HasDirectPerm_29141_3829 QPMask@2 (|Seq#Index_29180| b_24 i_12) Ref__Integer_value) (=> (= (ControlFlow 0 38) 37) anon33_correct))))))))))
(let ((anon108_Else_correct  (and (=> (= (ControlFlow 0 113) (- 0 114)) (forall ((i_5_1 Int) (i_5_2 Int) ) (!  (=> (and (and (and (and (not (= i_5_1 i_5_2)) (and (<= 0 i_5_1) (< i_5_1 len_3))) (and (<= 0 i_5_2) (< i_5_2 len_3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_29180| c i_5_1) (|Seq#Index_29180| c i_5_2))))
 :qid |stdinbpl.2076:15|
 :skolemid |166|
))) (=> (forall ((i_5_1@@0 Int) (i_5_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_5_1@@0 i_5_2@@0)) (and (<= 0 i_5_1@@0) (< i_5_1@@0 len_3))) (and (<= 0 i_5_2@@0) (< i_5_2@@0 len_3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_29180| c i_5_1@@0) (|Seq#Index_29180| c i_5_2@@0))))
 :qid |stdinbpl.2076:15|
 :skolemid |166|
)) (=> (and (and (forall ((i_5_1@@1 Int) ) (!  (=> (and (and (<= 0 i_5_1@@1) (< i_5_1@@1 len_3)) (< NoPerm FullPerm)) (and (qpRange11 (|Seq#Index_29180| c i_5_1@@1)) (= (invRecv11 (|Seq#Index_29180| c i_5_1@@1)) i_5_1@@1)))
 :qid |stdinbpl.2082:22|
 :skolemid |167|
 :pattern ( (|Seq#Index_29180| c i_5_1@@1))
 :pattern ( (|Seq#Index_29180| c i_5_1@@1))
)) (forall ((o_9@@27 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv11 o_9@@27)) (< (invRecv11 o_9@@27) len_3)) (< NoPerm FullPerm)) (qpRange11 o_9@@27)) (= (|Seq#Index_29180| c (invRecv11 o_9@@27)) o_9@@27))
 :qid |stdinbpl.2086:22|
 :skolemid |168|
 :pattern ( (invRecv11 o_9@@27))
))) (and (forall ((i_5_1@@2 Int) ) (!  (=> (and (<= 0 i_5_1@@2) (< i_5_1@@2 len_3)) (not (= (|Seq#Index_29180| c i_5_1@@2) null)))
 :qid |stdinbpl.2092:22|
 :skolemid |169|
 :pattern ( (|Seq#Index_29180| c i_5_1@@2))
 :pattern ( (|Seq#Index_29180| c i_5_1@@2))
)) (forall ((o_9@@28 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv11 o_9@@28)) (< (invRecv11 o_9@@28) len_3)) (< NoPerm FullPerm)) (qpRange11 o_9@@28)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_29180| c (invRecv11 o_9@@28)) o_9@@28)) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@2) o_9@@28 Ref__Integer_value) (+ (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@1) o_9@@28 Ref__Integer_value) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv11 o_9@@28)) (< (invRecv11 o_9@@28) len_3)) (< NoPerm FullPerm)) (qpRange11 o_9@@28))) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@2) o_9@@28 Ref__Integer_value) (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@1) o_9@@28 Ref__Integer_value))))
 :qid |stdinbpl.2098:22|
 :skolemid |170|
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@2) o_9@@28 Ref__Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_9@@29 T@Ref) (f_5@@19 T@Field_41464_53) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@1) o_9@@29 f_5@@19) (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@2) o_9@@29 f_5@@19)))
 :qid |stdinbpl.2102:29|
 :skolemid |171|
 :pattern ( (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@1) o_9@@29 f_5@@19))
 :pattern ( (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@2) o_9@@29 f_5@@19))
)) (forall ((o_9@@30 T@Ref) (f_5@@20 T@Field_41477_41478) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@1) o_9@@30 f_5@@20) (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@2) o_9@@30 f_5@@20)))
 :qid |stdinbpl.2102:29|
 :skolemid |171|
 :pattern ( (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@1) o_9@@30 f_5@@20))
 :pattern ( (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@2) o_9@@30 f_5@@20))
))) (forall ((o_9@@31 T@Ref) (f_5@@21 T@Field_47552_3829) ) (!  (=> (not (= f_5@@21 Ref__Integer_value)) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@1) o_9@@31 f_5@@21) (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@2) o_9@@31 f_5@@21)))
 :qid |stdinbpl.2102:29|
 :skolemid |171|
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@1) o_9@@31 f_5@@21))
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@2) o_9@@31 f_5@@21))
))) (forall ((o_9@@32 T@Ref) (f_5@@22 T@Field_29141_117835) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@1) o_9@@32 f_5@@22) (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@2) o_9@@32 f_5@@22)))
 :qid |stdinbpl.2102:29|
 :skolemid |171|
 :pattern ( (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@1) o_9@@32 f_5@@22))
 :pattern ( (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@2) o_9@@32 f_5@@22))
))) (forall ((o_9@@33 T@Ref) (f_5@@23 T@Field_29141_117968) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@1) o_9@@33 f_5@@23) (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@2) o_9@@33 f_5@@23)))
 :qid |stdinbpl.2102:29|
 :skolemid |171|
 :pattern ( (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@1) o_9@@33 f_5@@23))
 :pattern ( (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@2) o_9@@33 f_5@@23))
))) (and (state Heap@@41 QPMask@2) (state Heap@@41 QPMask@2))) (and (and (=> (= (ControlFlow 0 113) 112) anon110_Else_correct) (=> (= (ControlFlow 0 113) 38) anon111_Then_correct)) (=> (= (ControlFlow 0 113) 42) anon111_Else_correct))))))))
(let ((anon29_correct true))
(let ((anon109_Else_correct  (=> (and (not (and (<= 0 i_11) (< i_11 len_3))) (= (ControlFlow 0 36) 32)) anon29_correct)))
(let ((anon109_Then_correct  (=> (and (<= 0 i_11) (< i_11 len_3)) (and (=> (= (ControlFlow 0 33) (- 0 35)) (>= i_11 0)) (=> (>= i_11 0) (and (=> (= (ControlFlow 0 33) (- 0 34)) (< i_11 (|Seq#Length_29180| c))) (=> (< i_11 (|Seq#Length_29180| c)) (=> (= (ControlFlow 0 33) 32) anon29_correct))))))))
(let ((anon26_correct  (=> (state Heap@@41 QPMask@1) (and (and (=> (= (ControlFlow 0 115) 113) anon108_Else_correct) (=> (= (ControlFlow 0 115) 33) anon109_Then_correct)) (=> (= (ControlFlow 0 115) 36) anon109_Else_correct)))))
(let ((anon107_Else_correct  (=> (and (<= len_3 0) (= (ControlFlow 0 117) 115)) anon26_correct)))
(let ((anon107_Then_correct  (=> (< 0 len_3) (=> (and (= (|Seq#Length_29180| c) len_3) (= (ControlFlow 0 116) 115)) anon26_correct))))
(let ((anon105_Else_correct  (and (=> (= (ControlFlow 0 118) (- 0 120)) (forall ((i_3_2 Int) (i_3_3 Int) ) (!  (=> (and (and (and (and (not (= i_3_2 i_3_3)) (and (<= 0 i_3_2) (< i_3_2 len_3))) (and (<= 0 i_3_3) (< i_3_3 len_3))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_29180| b_24 i_3_2) (|Seq#Index_29180| b_24 i_3_3))))
 :qid |stdinbpl.2020:15|
 :skolemid |159|
))) (=> (forall ((i_3_2@@0 Int) (i_3_3@@0 Int) ) (!  (=> (and (and (and (and (not (= i_3_2@@0 i_3_3@@0)) (and (<= 0 i_3_2@@0) (< i_3_2@@0 len_3))) (and (<= 0 i_3_3@@0) (< i_3_3@@0 len_3))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_29180| b_24 i_3_2@@0) (|Seq#Index_29180| b_24 i_3_3@@0))))
 :qid |stdinbpl.2020:15|
 :skolemid |159|
)) (=> (and (forall ((i_3_2@@1 Int) ) (!  (=> (and (and (<= 0 i_3_2@@1) (< i_3_2@@1 len_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange10 (|Seq#Index_29180| b_24 i_3_2@@1)) (= (invRecv10 (|Seq#Index_29180| b_24 i_3_2@@1)) i_3_2@@1)))
 :qid |stdinbpl.2026:22|
 :skolemid |160|
 :pattern ( (|Seq#Index_29180| b_24 i_3_2@@1))
 :pattern ( (|Seq#Index_29180| b_24 i_3_2@@1))
)) (forall ((o_9@@34 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv10 o_9@@34)) (< (invRecv10 o_9@@34) len_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange10 o_9@@34)) (= (|Seq#Index_29180| b_24 (invRecv10 o_9@@34)) o_9@@34))
 :qid |stdinbpl.2030:22|
 :skolemid |161|
 :pattern ( (invRecv10 o_9@@34))
))) (and (=> (= (ControlFlow 0 118) (- 0 119)) (forall ((i_3_2@@2 Int) ) (!  (=> (and (<= 0 i_3_2@@2) (< i_3_2@@2 len_3)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2036:15|
 :skolemid |162|
 :pattern ( (|Seq#Index_29180| b_24 i_3_2@@2))
 :pattern ( (|Seq#Index_29180| b_24 i_3_2@@2))
))) (=> (forall ((i_3_2@@3 Int) ) (!  (=> (and (<= 0 i_3_2@@3) (< i_3_2@@3 len_3)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2036:15|
 :skolemid |162|
 :pattern ( (|Seq#Index_29180| b_24 i_3_2@@3))
 :pattern ( (|Seq#Index_29180| b_24 i_3_2@@3))
)) (=> (and (forall ((i_3_2@@4 Int) ) (!  (=> (and (and (<= 0 i_3_2@@4) (< i_3_2@@4 len_3)) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= (|Seq#Index_29180| b_24 i_3_2@@4) null)))
 :qid |stdinbpl.2042:22|
 :skolemid |163|
 :pattern ( (|Seq#Index_29180| b_24 i_3_2@@4))
 :pattern ( (|Seq#Index_29180| b_24 i_3_2@@4))
)) (forall ((o_9@@35 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv10 o_9@@35)) (< (invRecv10 o_9@@35) len_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange10 o_9@@35)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (|Seq#Index_29180| b_24 (invRecv10 o_9@@35)) o_9@@35)) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@1) o_9@@35 Ref__Integer_value) (+ (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@0) o_9@@35 Ref__Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (<= 0 (invRecv10 o_9@@35)) (< (invRecv10 o_9@@35) len_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange10 o_9@@35))) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@1) o_9@@35 Ref__Integer_value) (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@0) o_9@@35 Ref__Integer_value))))
 :qid |stdinbpl.2048:22|
 :skolemid |164|
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@1) o_9@@35 Ref__Integer_value))
))) (=> (and (and (and (and (and (forall ((o_9@@36 T@Ref) (f_5@@24 T@Field_41464_53) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@0) o_9@@36 f_5@@24) (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@1) o_9@@36 f_5@@24)))
 :qid |stdinbpl.2052:29|
 :skolemid |165|
 :pattern ( (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@0) o_9@@36 f_5@@24))
 :pattern ( (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@1) o_9@@36 f_5@@24))
)) (forall ((o_9@@37 T@Ref) (f_5@@25 T@Field_41477_41478) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@0) o_9@@37 f_5@@25) (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@1) o_9@@37 f_5@@25)))
 :qid |stdinbpl.2052:29|
 :skolemid |165|
 :pattern ( (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@0) o_9@@37 f_5@@25))
 :pattern ( (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@1) o_9@@37 f_5@@25))
))) (forall ((o_9@@38 T@Ref) (f_5@@26 T@Field_47552_3829) ) (!  (=> (not (= f_5@@26 Ref__Integer_value)) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@0) o_9@@38 f_5@@26) (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@1) o_9@@38 f_5@@26)))
 :qid |stdinbpl.2052:29|
 :skolemid |165|
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@0) o_9@@38 f_5@@26))
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@1) o_9@@38 f_5@@26))
))) (forall ((o_9@@39 T@Ref) (f_5@@27 T@Field_29141_117835) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@0) o_9@@39 f_5@@27) (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@1) o_9@@39 f_5@@27)))
 :qid |stdinbpl.2052:29|
 :skolemid |165|
 :pattern ( (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@0) o_9@@39 f_5@@27))
 :pattern ( (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@1) o_9@@39 f_5@@27))
))) (forall ((o_9@@40 T@Ref) (f_5@@28 T@Field_29141_117968) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@0) o_9@@40 f_5@@28) (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@1) o_9@@40 f_5@@28)))
 :qid |stdinbpl.2052:29|
 :skolemid |165|
 :pattern ( (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@0) o_9@@40 f_5@@28))
 :pattern ( (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@1) o_9@@40 f_5@@28))
))) (and (state Heap@@41 QPMask@1) (state Heap@@41 QPMask@1))) (and (=> (= (ControlFlow 0 118) 116) anon107_Then_correct) (=> (= (ControlFlow 0 118) 117) anon107_Else_correct)))))))))))
(let ((anon23_correct true))
(let ((anon106_Else_correct  (=> (and (not (and (<= 0 i_17) (< i_17 len_3))) (= (ControlFlow 0 31) 27)) anon23_correct)))
(let ((anon106_Then_correct  (=> (and (<= 0 i_17) (< i_17 len_3)) (and (=> (= (ControlFlow 0 28) (- 0 30)) (>= i_17 0)) (=> (>= i_17 0) (and (=> (= (ControlFlow 0 28) (- 0 29)) (< i_17 (|Seq#Length_29180| b_24))) (=> (< i_17 (|Seq#Length_29180| b_24)) (=> (= (ControlFlow 0 28) 27) anon23_correct))))))))
(let ((anon20_correct  (=> (state Heap@@41 QPMask@0) (and (and (=> (= (ControlFlow 0 121) 118) anon105_Else_correct) (=> (= (ControlFlow 0 121) 28) anon106_Then_correct)) (=> (= (ControlFlow 0 121) 31) anon106_Else_correct)))))
(let ((anon104_Else_correct  (=> (and (<= len_3 0) (= (ControlFlow 0 123) 121)) anon20_correct)))
(let ((anon104_Then_correct  (=> (< 0 len_3) (=> (and (= (|Seq#Length_29180| b_24) len_3) (= (ControlFlow 0 122) 121)) anon20_correct))))
(let ((anon102_Else_correct  (and (=> (= (ControlFlow 0 124) (- 0 125)) (forall ((i_1 Int) (i_1_1 Int) ) (!  (=> (and (and (and (and (not (= i_1 i_1_1)) (and (<= 0 i_1) (< i_1 len_3))) (and (<= 0 i_1_1) (< i_1_1 len_3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_29180| a_2 i_1) (|Seq#Index_29180| a_2 i_1_1))))
 :qid |stdinbpl.1970:15|
 :skolemid |153|
))) (=> (forall ((i_1@@0 Int) (i_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_1@@0 i_1_1@@0)) (and (<= 0 i_1@@0) (< i_1@@0 len_3))) (and (<= 0 i_1_1@@0) (< i_1_1@@0 len_3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_29180| a_2 i_1@@0) (|Seq#Index_29180| a_2 i_1_1@@0))))
 :qid |stdinbpl.1970:15|
 :skolemid |153|
)) (=> (and (and (forall ((i_1@@1 Int) ) (!  (=> (and (and (<= 0 i_1@@1) (< i_1@@1 len_3)) (< NoPerm FullPerm)) (and (qpRange9 (|Seq#Index_29180| a_2 i_1@@1)) (= (invRecv9 (|Seq#Index_29180| a_2 i_1@@1)) i_1@@1)))
 :qid |stdinbpl.1976:22|
 :skolemid |154|
 :pattern ( (|Seq#Index_29180| a_2 i_1@@1))
 :pattern ( (|Seq#Index_29180| a_2 i_1@@1))
)) (forall ((o_9@@41 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv9 o_9@@41)) (< (invRecv9 o_9@@41) len_3)) (< NoPerm FullPerm)) (qpRange9 o_9@@41)) (= (|Seq#Index_29180| a_2 (invRecv9 o_9@@41)) o_9@@41))
 :qid |stdinbpl.1980:22|
 :skolemid |155|
 :pattern ( (invRecv9 o_9@@41))
))) (and (forall ((i_1@@2 Int) ) (!  (=> (and (<= 0 i_1@@2) (< i_1@@2 len_3)) (not (= (|Seq#Index_29180| a_2 i_1@@2) null)))
 :qid |stdinbpl.1986:22|
 :skolemid |156|
 :pattern ( (|Seq#Index_29180| a_2 i_1@@2))
 :pattern ( (|Seq#Index_29180| a_2 i_1@@2))
)) (forall ((o_9@@42 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv9 o_9@@42)) (< (invRecv9 o_9@@42) len_3)) (< NoPerm FullPerm)) (qpRange9 o_9@@42)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_29180| a_2 (invRecv9 o_9@@42)) o_9@@42)) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@0) o_9@@42 Ref__Integer_value) (+ (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| ZeroMask) o_9@@42 Ref__Integer_value) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv9 o_9@@42)) (< (invRecv9 o_9@@42) len_3)) (< NoPerm FullPerm)) (qpRange9 o_9@@42))) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@0) o_9@@42 Ref__Integer_value) (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| ZeroMask) o_9@@42 Ref__Integer_value))))
 :qid |stdinbpl.1992:22|
 :skolemid |157|
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@0) o_9@@42 Ref__Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_9@@43 T@Ref) (f_5@@29 T@Field_41464_53) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| ZeroMask) o_9@@43 f_5@@29) (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@0) o_9@@43 f_5@@29)))
 :qid |stdinbpl.1996:29|
 :skolemid |158|
 :pattern ( (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| ZeroMask) o_9@@43 f_5@@29))
 :pattern ( (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@0) o_9@@43 f_5@@29))
)) (forall ((o_9@@44 T@Ref) (f_5@@30 T@Field_41477_41478) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| ZeroMask) o_9@@44 f_5@@30) (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@0) o_9@@44 f_5@@30)))
 :qid |stdinbpl.1996:29|
 :skolemid |158|
 :pattern ( (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| ZeroMask) o_9@@44 f_5@@30))
 :pattern ( (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@0) o_9@@44 f_5@@30))
))) (forall ((o_9@@45 T@Ref) (f_5@@31 T@Field_47552_3829) ) (!  (=> (not (= f_5@@31 Ref__Integer_value)) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| ZeroMask) o_9@@45 f_5@@31) (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@0) o_9@@45 f_5@@31)))
 :qid |stdinbpl.1996:29|
 :skolemid |158|
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| ZeroMask) o_9@@45 f_5@@31))
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@0) o_9@@45 f_5@@31))
))) (forall ((o_9@@46 T@Ref) (f_5@@32 T@Field_29141_117835) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| ZeroMask) o_9@@46 f_5@@32) (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@0) o_9@@46 f_5@@32)))
 :qid |stdinbpl.1996:29|
 :skolemid |158|
 :pattern ( (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| ZeroMask) o_9@@46 f_5@@32))
 :pattern ( (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@0) o_9@@46 f_5@@32))
))) (forall ((o_9@@47 T@Ref) (f_5@@33 T@Field_29141_117968) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| ZeroMask) o_9@@47 f_5@@33) (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@0) o_9@@47 f_5@@33)))
 :qid |stdinbpl.1996:29|
 :skolemid |158|
 :pattern ( (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| ZeroMask) o_9@@47 f_5@@33))
 :pattern ( (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@0) o_9@@47 f_5@@33))
))) (and (state Heap@@41 QPMask@0) (state Heap@@41 QPMask@0))) (and (=> (= (ControlFlow 0 124) 122) anon104_Then_correct) (=> (= (ControlFlow 0 124) 123) anon104_Else_correct))))))))
(let ((anon17_correct true))
(let ((anon103_Else_correct  (=> (and (not (and (<= 0 i_10) (< i_10 len_3))) (= (ControlFlow 0 26) 22)) anon17_correct)))
(let ((anon103_Then_correct  (=> (and (<= 0 i_10) (< i_10 len_3)) (and (=> (= (ControlFlow 0 23) (- 0 25)) (>= i_10 0)) (=> (>= i_10 0) (and (=> (= (ControlFlow 0 23) (- 0 24)) (< i_10 (|Seq#Length_29180| a_2))) (=> (< i_10 (|Seq#Length_29180| a_2)) (=> (= (ControlFlow 0 23) 22) anon17_correct))))))))
(let ((anon100_Else_correct  (=> (and (forall ((k_5 Int) (j_5 Int) ) (!  (=> (and (>= k_5 0) (and (< k_5 (|Seq#Length_29180| c)) (and (>= j_5 0) (and (< j_5 (|Seq#Length_29180| c)) (not (= k_5 j_5)))))) (not (= (|Seq#Index_29180| c k_5) (|Seq#Index_29180| c j_5))))
 :qid |stdinbpl.1952:20|
 :skolemid |152|
 :pattern ( (|Seq#Index_29180| c k_5) (|Seq#Index_29180| c j_5))
)) (state Heap@@41 ZeroMask)) (and (and (=> (= (ControlFlow 0 126) 124) anon102_Else_correct) (=> (= (ControlFlow 0 126) 23) anon103_Then_correct)) (=> (= (ControlFlow 0 126) 26) anon103_Else_correct)))))
(let ((anon13_correct true))
(let ((anon101_Else_correct  (=> (and (not (and (>= k_29 0) (and (< k_29 (|Seq#Length_29180| c)) (and (>= j_7 0) (and (< j_7 (|Seq#Length_29180| c)) (not (= k_29 j_7))))))) (= (ControlFlow 0 21) 15)) anon13_correct)))
(let ((anon101_Then_correct  (=> (and (>= k_29 0) (and (< k_29 (|Seq#Length_29180| c)) (and (>= j_7 0) (and (< j_7 (|Seq#Length_29180| c)) (not (= k_29 j_7)))))) (and (=> (= (ControlFlow 0 16) (- 0 20)) (>= k_29 0)) (=> (>= k_29 0) (and (=> (= (ControlFlow 0 16) (- 0 19)) (< k_29 (|Seq#Length_29180| c))) (=> (< k_29 (|Seq#Length_29180| c)) (and (=> (= (ControlFlow 0 16) (- 0 18)) (>= j_7 0)) (=> (>= j_7 0) (and (=> (= (ControlFlow 0 16) (- 0 17)) (< j_7 (|Seq#Length_29180| c))) (=> (< j_7 (|Seq#Length_29180| c)) (=> (= (ControlFlow 0 16) 15) anon13_correct))))))))))))
(let ((anon98_Else_correct  (=> (and (forall ((k_3 Int) (j_3 Int) ) (!  (=> (and (>= k_3 0) (and (< k_3 (|Seq#Length_29180| b_24)) (and (>= j_3 0) (and (< j_3 (|Seq#Length_29180| b_24)) (not (= k_3 j_3)))))) (not (= (|Seq#Index_29180| b_24 k_3) (|Seq#Index_29180| b_24 j_3))))
 :qid |stdinbpl.1932:20|
 :skolemid |151|
 :pattern ( (|Seq#Index_29180| b_24 k_3) (|Seq#Index_29180| b_24 j_3))
)) (state Heap@@41 ZeroMask)) (and (and (=> (= (ControlFlow 0 127) 126) anon100_Else_correct) (=> (= (ControlFlow 0 127) 16) anon101_Then_correct)) (=> (= (ControlFlow 0 127) 21) anon101_Else_correct)))))
(let ((anon9_correct true))
(let ((anon99_Else_correct  (=> (and (not (and (>= k_22 0) (and (< k_22 (|Seq#Length_29180| b_24)) (and (>= j_10 0) (and (< j_10 (|Seq#Length_29180| b_24)) (not (= k_22 j_10))))))) (= (ControlFlow 0 14) 8)) anon9_correct)))
(let ((anon99_Then_correct  (=> (and (>= k_22 0) (and (< k_22 (|Seq#Length_29180| b_24)) (and (>= j_10 0) (and (< j_10 (|Seq#Length_29180| b_24)) (not (= k_22 j_10)))))) (and (=> (= (ControlFlow 0 9) (- 0 13)) (>= k_22 0)) (=> (>= k_22 0) (and (=> (= (ControlFlow 0 9) (- 0 12)) (< k_22 (|Seq#Length_29180| b_24))) (=> (< k_22 (|Seq#Length_29180| b_24)) (and (=> (= (ControlFlow 0 9) (- 0 11)) (>= j_10 0)) (=> (>= j_10 0) (and (=> (= (ControlFlow 0 9) (- 0 10)) (< j_10 (|Seq#Length_29180| b_24))) (=> (< j_10 (|Seq#Length_29180| b_24)) (=> (= (ControlFlow 0 9) 8) anon9_correct))))))))))))
(let ((anon96_Else_correct  (=> (and (forall ((k_1 Int) (j_1 Int) ) (!  (=> (and (>= k_1 0) (and (< k_1 (|Seq#Length_29180| a_2)) (and (>= j_1 0) (and (< j_1 (|Seq#Length_29180| a_2)) (not (= k_1 j_1)))))) (not (= (|Seq#Index_29180| a_2 k_1) (|Seq#Index_29180| a_2 j_1))))
 :qid |stdinbpl.1912:20|
 :skolemid |150|
 :pattern ( (|Seq#Index_29180| a_2 k_1) (|Seq#Index_29180| a_2 j_1))
)) (state Heap@@41 ZeroMask)) (and (and (=> (= (ControlFlow 0 128) 127) anon98_Else_correct) (=> (= (ControlFlow 0 128) 9) anon99_Then_correct)) (=> (= (ControlFlow 0 128) 14) anon99_Else_correct)))))
(let ((anon5_correct true))
(let ((anon97_Else_correct  (=> (and (not (and (>= k_25 0) (and (< k_25 (|Seq#Length_29180| a_2)) (and (>= j_6 0) (and (< j_6 (|Seq#Length_29180| a_2)) (not (= k_25 j_6))))))) (= (ControlFlow 0 7) 1)) anon5_correct)))
(let ((anon97_Then_correct  (=> (and (>= k_25 0) (and (< k_25 (|Seq#Length_29180| a_2)) (and (>= j_6 0) (and (< j_6 (|Seq#Length_29180| a_2)) (not (= k_25 j_6)))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= k_25 0)) (=> (>= k_25 0) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< k_25 (|Seq#Length_29180| a_2))) (=> (< k_25 (|Seq#Length_29180| a_2)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= j_6 0)) (=> (>= j_6 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< j_6 (|Seq#Length_29180| a_2))) (=> (< j_6 (|Seq#Length_29180| a_2)) (=> (= (ControlFlow 0 2) 1) anon5_correct))))))))))))
(let ((anon2_correct  (=> (state Heap@@41 ZeroMask) (and (and (=> (= (ControlFlow 0 129) 128) anon96_Else_correct) (=> (= (ControlFlow 0 129) 2) anon97_Then_correct)) (=> (= (ControlFlow 0 129) 7) anon97_Else_correct)))))
(let ((anon95_Else_correct  (=> (and (<= len_3 0) (= (ControlFlow 0 131) 129)) anon2_correct)))
(let ((anon95_Then_correct  (=> (< 0 len_3) (=> (and (= (|Seq#Length_29180| a_2) len_3) (= (ControlFlow 0 130) 129)) anon2_correct))))
(let ((anon0_correct  (=> (and (and (and (state Heap@@41 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (and AssumePermUpperBound (select (|PolymorphicMapType_41404_28883_53#PolymorphicMapType_41404| Heap@@41) diz $allocated))) (and (and (not (= diz null)) (state Heap@@41 ZeroMask)) (and (>= current_thread_id 0) (state Heap@@41 ZeroMask)))) (and (=> (= (ControlFlow 0 132) 130) anon95_Then_correct) (=> (= (ControlFlow 0 132) 131) anon95_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 133) 132) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
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

