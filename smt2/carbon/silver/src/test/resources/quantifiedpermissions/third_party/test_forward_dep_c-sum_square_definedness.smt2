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
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun k_9_1 () Int)
(declare-fun ar_1@@27 () T@Seq_48594)
(declare-fun j_4_1 () Int)
(declare-fun wildcard@0 () Real)
(declare-fun vmin@@9 () Int)
(declare-fun vmax_1@@9 () Int)
(declare-fun lo@@14 () Int)
(declare-fun step@@9 () Int)
(declare-fun hi@@27 () Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_41425)
(declare-fun Heap@@41 () T@PolymorphicMapType_41404)
(declare-fun neverTriggered4 (Int) Bool)
(declare-fun i@@39 () Int)
(declare-fun |sum_square#trigger| (T@FrameType Int Int Int Int Int Int T@Seq_48594) Bool)
(declare-fun wildcard () Real)
(declare-fun qpRange3 (T@Ref) Bool)
(declare-fun invRecv3 (T@Ref) Int)
(declare-fun k_7 () Int)
(declare-fun k_19 () Int)
(declare-fun j_12 () Int)
(set-info :boogie-vc-id |sum_square#definedness|)
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
 (=> (= (ControlFlow 0 0) 56) (let ((anon21_correct true))
(let ((anon37_Else_correct  (=> (and (not (and (>= k_9_1 0) (and (< k_9_1 (|Seq#Length_29180| ar_1@@27)) (and (>= j_4_1 0) (and (< j_4_1 (|Seq#Length_29180| ar_1@@27)) (not (= k_9_1 j_4_1))))))) (= (ControlFlow 0 32) 29)) anon21_correct)))
(let ((anon37_Then_correct  (=> (and (>= k_9_1 0) (and (< k_9_1 (|Seq#Length_29180| ar_1@@27)) (and (>= j_4_1 0) (and (< j_4_1 (|Seq#Length_29180| ar_1@@27)) (not (= k_9_1 j_4_1)))))) (and (=> (= (ControlFlow 0 30) (- 0 31)) (not (= (|Seq#Index_29180| ar_1@@27 k_9_1) (|Seq#Index_29180| ar_1@@27 j_4_1)))) (=> (not (= (|Seq#Index_29180| ar_1@@27 k_9_1) (|Seq#Index_29180| ar_1@@27 j_4_1))) (=> (= (ControlFlow 0 30) 29) anon21_correct))))))
(let ((anon36_Else_correct  (=> (and (forall ((k_10_1 Int) (j_5_1_1 Int) ) (!  (=> (and (>= k_10_1 0) (and (< k_10_1 (|Seq#Length_29180| ar_1@@27)) (and (>= j_5_1_1 0) (and (< j_5_1_1 (|Seq#Length_29180| ar_1@@27)) (not (= k_10_1 j_5_1_1)))))) (not (= (|Seq#Index_29180| ar_1@@27 k_10_1) (|Seq#Index_29180| ar_1@@27 j_5_1_1))))
 :qid |stdinbpl.1196:26|
 :skolemid |96|
 :pattern ( (|Seq#Index_29180| ar_1@@27 k_10_1) (|Seq#Index_29180| ar_1@@27 j_5_1_1))
)) (> wildcard@0 0.0)) (and (=> (= (ControlFlow 0 25) (- 0 28)) (forall ((k_11 Int) ) (!  (=> (and (<= vmin@@9 k_11) (and (< k_11 vmax_1@@9) (and (<= lo@@14 (mod k_11 step@@9)) (< (mod k_11 step@@9) hi@@27)))) (> (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@0) (|Seq#Index_29180| ar_1@@27 k_11) Ref__Integer_value) NoPerm))
 :qid |stdinbpl.1204:21|
 :skolemid |97|
))) (=> (forall ((k_11@@0 Int) ) (!  (=> (and (<= vmin@@9 k_11@@0) (and (< k_11@@0 vmax_1@@9) (and (<= lo@@14 (mod k_11@@0 step@@9)) (< (mod k_11@@0 step@@9) hi@@27)))) (> (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@0) (|Seq#Index_29180| ar_1@@27 k_11@@0) Ref__Integer_value) NoPerm))
 :qid |stdinbpl.1204:21|
 :skolemid |97|
)) (=> (forall ((k_11@@1 Int) ) (!  (=> (and (<= vmin@@9 k_11@@1) (and (< k_11@@1 vmax_1@@9) (and (<= lo@@14 (mod k_11@@1 step@@9)) (< (mod k_11@@1 step@@9) hi@@27)))) (< wildcard@0 (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@0) (|Seq#Index_29180| ar_1@@27 k_11@@1) Ref__Integer_value)))
 :qid |stdinbpl.1208:26|
 :skolemid |98|
)) (and (=> (= (ControlFlow 0 25) (- 0 27)) (forall ((k_11@@2 Int) ) (!  (=> (and (and (<= vmin@@9 k_11@@2) (and (< k_11@@2 vmax_1@@9) (and (<= lo@@14 (mod k_11@@2 step@@9)) (< (mod k_11@@2 step@@9) hi@@27)))) (dummyFunction_4136 (select (|PolymorphicMapType_41404_29141_3829#PolymorphicMapType_41404| Heap@@41) (|Seq#Index_29180| ar_1@@27 k_11@@2) Ref__Integer_value))) (>= wildcard@0 NoPerm))
 :qid |stdinbpl.1215:23|
 :skolemid |99|
 :pattern ( (|Seq#Index_29180| ar_1@@27 k_11@@2))
 :pattern ( (|Seq#Index_29180| ar_1@@27 k_11@@2))
))) (=> (forall ((k_11@@3 Int) ) (!  (=> (and (and (<= vmin@@9 k_11@@3) (and (< k_11@@3 vmax_1@@9) (and (<= lo@@14 (mod k_11@@3 step@@9)) (< (mod k_11@@3 step@@9) hi@@27)))) (dummyFunction_4136 (select (|PolymorphicMapType_41404_29141_3829#PolymorphicMapType_41404| Heap@@41) (|Seq#Index_29180| ar_1@@27 k_11@@3) Ref__Integer_value))) (>= wildcard@0 NoPerm))
 :qid |stdinbpl.1215:23|
 :skolemid |99|
 :pattern ( (|Seq#Index_29180| ar_1@@27 k_11@@3))
 :pattern ( (|Seq#Index_29180| ar_1@@27 k_11@@3))
)) (and (=> (= (ControlFlow 0 25) (- 0 26)) (forall ((k_11@@4 Int) (k_11_1 Int) ) (!  (=> (and (and (and (and (not (= k_11@@4 k_11_1)) (and (<= vmin@@9 k_11@@4) (and (< k_11@@4 vmax_1@@9) (and (<= lo@@14 (mod k_11@@4 step@@9)) (< (mod k_11@@4 step@@9) hi@@27))))) (and (<= vmin@@9 k_11_1) (and (< k_11_1 vmax_1@@9) (and (<= lo@@14 (mod k_11_1 step@@9)) (< (mod k_11_1 step@@9) hi@@27))))) (< NoPerm wildcard@0)) (< NoPerm wildcard@0)) (not (= (|Seq#Index_29180| ar_1@@27 k_11@@4) (|Seq#Index_29180| ar_1@@27 k_11_1))))
 :qid |stdinbpl.1222:23|
 :skolemid |100|
 :pattern ( (neverTriggered4 k_11@@4) (neverTriggered4 k_11_1))
))) (=> (forall ((k_11@@5 Int) (k_11_1@@0 Int) ) (!  (=> (and (and (and (and (not (= k_11@@5 k_11_1@@0)) (and (<= vmin@@9 k_11@@5) (and (< k_11@@5 vmax_1@@9) (and (<= lo@@14 (mod k_11@@5 step@@9)) (< (mod k_11@@5 step@@9) hi@@27))))) (and (<= vmin@@9 k_11_1@@0) (and (< k_11_1@@0 vmax_1@@9) (and (<= lo@@14 (mod k_11_1@@0 step@@9)) (< (mod k_11_1@@0 step@@9) hi@@27))))) (< NoPerm wildcard@0)) (< NoPerm wildcard@0)) (not (= (|Seq#Index_29180| ar_1@@27 k_11@@5) (|Seq#Index_29180| ar_1@@27 k_11_1@@0))))
 :qid |stdinbpl.1222:23|
 :skolemid |100|
 :pattern ( (neverTriggered4 k_11@@5) (neverTriggered4 k_11_1@@0))
)) (=> (= (ControlFlow 0 25) (- 0 24)) (forall ((k_11@@6 Int) ) (!  (=> (and (<= vmin@@9 k_11@@6) (and (< k_11@@6 vmax_1@@9) (and (<= lo@@14 (mod k_11@@6 step@@9)) (< (mod k_11@@6 step@@9) hi@@27)))) (=> (> wildcard@0 NoPerm) (> (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@0) (|Seq#Index_29180| ar_1@@27 k_11@@6) Ref__Integer_value) NoPerm)))
 :qid |stdinbpl.1229:23|
 :skolemid |101|
 :pattern ( (|Seq#Index_29180| ar_1@@27 k_11@@6))
 :pattern ( (|Seq#Index_29180| ar_1@@27 k_11@@6))
)))))))))))))
(let ((anon35_Then_correct  (and (=> (= (ControlFlow 0 33) (- 0 41)) (<= 0 lo@@14)) (=> (<= 0 lo@@14) (and (=> (= (ControlFlow 0 33) (- 0 40)) (<= lo@@14 hi@@27)) (=> (<= lo@@14 hi@@27) (and (=> (= (ControlFlow 0 33) (- 0 39)) (<= hi@@27 step@@9)) (=> (<= hi@@27 step@@9) (and (=> (= (ControlFlow 0 33) (- 0 38)) (> step@@9 0)) (=> (> step@@9 0) (and (=> (= (ControlFlow 0 33) (- 0 37)) (<= 0 vmin@@9)) (=> (<= 0 vmin@@9) (and (=> (= (ControlFlow 0 33) (- 0 36)) (<= vmin@@9 (+ i@@39 1))) (=> (<= vmin@@9 (+ i@@39 1)) (and (=> (= (ControlFlow 0 33) (- 0 35)) (<= (+ i@@39 1) vmax_1@@9)) (=> (<= (+ i@@39 1) vmax_1@@9) (and (=> (= (ControlFlow 0 33) (- 0 34)) (<= vmax_1@@9 (|Seq#Length_29180| ar_1@@27))) (=> (<= vmax_1@@9 (|Seq#Length_29180| ar_1@@27)) (and (and (=> (= (ControlFlow 0 33) 25) anon36_Else_correct) (=> (= (ControlFlow 0 33) 30) anon37_Then_correct)) (=> (= (ControlFlow 0 33) 32) anon37_Else_correct))))))))))))))))))))
(let ((anon24_correct true))
(let ((anon35_Else_correct  (=> (and (|sum_square#trigger| (FrameFragment_4688 (|sum_square#condqp2| Heap@@41 (+ i@@39 1) lo@@14 hi@@27 step@@9 vmin@@9 vmax_1@@9 ar_1@@27)) (+ i@@39 1) lo@@14 hi@@27 step@@9 vmin@@9 vmax_1@@9 ar_1@@27) (= (ControlFlow 0 23) 21)) anon24_correct)))
(let ((anon34_Else_correct  (=> (not (and (<= lo@@14 (mod i@@39 step@@9)) (< (mod i@@39 step@@9) hi@@27))) (and (=> (= (ControlFlow 0 46) 33) anon35_Then_correct) (=> (= (ControlFlow 0 46) 23) anon35_Else_correct)))))
(let ((anon34_Then_correct  (=> (and (<= lo@@14 (mod i@@39 step@@9)) (< (mod i@@39 step@@9) hi@@27)) (and (=> (= (ControlFlow 0 42) (- 0 45)) (>= i@@39 0)) (=> (>= i@@39 0) (and (=> (= (ControlFlow 0 42) (- 0 44)) (< i@@39 (|Seq#Length_29180| ar_1@@27))) (=> (< i@@39 (|Seq#Length_29180| ar_1@@27)) (and (=> (= (ControlFlow 0 42) (- 0 43)) (HasDirectPerm_29141_3829 QPMask@0 (|Seq#Index_29180| ar_1@@27 i@@39) Ref__Integer_value)) (=> (HasDirectPerm_29141_3829 QPMask@0 (|Seq#Index_29180| ar_1@@27 i@@39) Ref__Integer_value) (and (=> (= (ControlFlow 0 42) 33) anon35_Then_correct) (=> (= (ControlFlow 0 42) 23) anon35_Else_correct)))))))))))
(let ((anon33_Else_correct  (=> (< (mod i@@39 step@@9) lo@@14) (and (=> (= (ControlFlow 0 49) 42) anon34_Then_correct) (=> (= (ControlFlow 0 49) 46) anon34_Else_correct)))))
(let ((anon33_Then_correct  (=> (<= lo@@14 (mod i@@39 step@@9)) (and (=> (= (ControlFlow 0 47) (- 0 48)) (not (= step@@9 0))) (=> (not (= step@@9 0)) (and (=> (= (ControlFlow 0 47) 42) anon34_Then_correct) (=> (= (ControlFlow 0 47) 46) anon34_Else_correct)))))))
(let ((anon32_Then_correct  (=> (< i@@39 vmax_1@@9) (and (=> (= (ControlFlow 0 50) (- 0 51)) (not (= step@@9 0))) (=> (not (= step@@9 0)) (and (=> (= (ControlFlow 0 50) 47) anon33_Then_correct) (=> (= (ControlFlow 0 50) 49) anon33_Else_correct)))))))
(let ((anon32_Else_correct  (=> (and (<= vmax_1@@9 i@@39) (= (ControlFlow 0 22) 21)) anon24_correct)))
(let ((anon27_Else_correct  (and (=> (= (ControlFlow 0 52) (- 0 53)) (forall ((k_8 Int) (k_8_1 Int) ) (!  (=> (and (and (and (and (not (= k_8 k_8_1)) (and (<= vmin@@9 k_8) (and (< k_8 vmax_1@@9) (and (<= lo@@14 (mod k_8 step@@9)) (< (mod k_8 step@@9) hi@@27))))) (and (<= vmin@@9 k_8_1) (and (< k_8_1 vmax_1@@9) (and (<= lo@@14 (mod k_8_1 step@@9)) (< (mod k_8_1 step@@9) hi@@27))))) (< NoPerm wildcard)) (< NoPerm wildcard)) (not (= (|Seq#Index_29180| ar_1@@27 k_8) (|Seq#Index_29180| ar_1@@27 k_8_1))))
 :qid |stdinbpl.1117:15|
 :skolemid |90|
))) (=> (forall ((k_8@@0 Int) (k_8_1@@0 Int) ) (!  (=> (and (and (and (and (not (= k_8@@0 k_8_1@@0)) (and (<= vmin@@9 k_8@@0) (and (< k_8@@0 vmax_1@@9) (and (<= lo@@14 (mod k_8@@0 step@@9)) (< (mod k_8@@0 step@@9) hi@@27))))) (and (<= vmin@@9 k_8_1@@0) (and (< k_8_1@@0 vmax_1@@9) (and (<= lo@@14 (mod k_8_1@@0 step@@9)) (< (mod k_8_1@@0 step@@9) hi@@27))))) (< NoPerm wildcard)) (< NoPerm wildcard)) (not (= (|Seq#Index_29180| ar_1@@27 k_8@@0) (|Seq#Index_29180| ar_1@@27 k_8_1@@0))))
 :qid |stdinbpl.1117:15|
 :skolemid |90|
)) (=> (and (and (forall ((k_8@@1 Int) ) (!  (=> (and (<= vmin@@9 k_8@@1) (and (< k_8@@1 vmax_1@@9) (and (<= lo@@14 (mod k_8@@1 step@@9)) (< (mod k_8@@1 step@@9) hi@@27)))) (and (qpRange3 (|Seq#Index_29180| ar_1@@27 k_8@@1)) (= (invRecv3 (|Seq#Index_29180| ar_1@@27 k_8@@1)) k_8@@1)))
 :qid |stdinbpl.1123:22|
 :skolemid |91|
 :pattern ( (|Seq#Index_29180| ar_1@@27 k_8@@1))
 :pattern ( (|Seq#Index_29180| ar_1@@27 k_8@@1))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (<= vmin@@9 (invRecv3 o_9)) (and (< (invRecv3 o_9) vmax_1@@9) (and (<= lo@@14 (mod (invRecv3 o_9) step@@9)) (< (mod (invRecv3 o_9) step@@9) hi@@27)))) (qpRange3 o_9)) (= (|Seq#Index_29180| ar_1@@27 (invRecv3 o_9)) o_9))
 :qid |stdinbpl.1127:22|
 :skolemid |92|
 :pattern ( (invRecv3 o_9))
))) (and (forall ((k_8@@2 Int) ) (!  (=> (and (<= vmin@@9 k_8@@2) (and (< k_8@@2 vmax_1@@9) (and (<= lo@@14 (mod k_8@@2 step@@9)) (< (mod k_8@@2 step@@9) hi@@27)))) (not (= (|Seq#Index_29180| ar_1@@27 k_8@@2) null)))
 :qid |stdinbpl.1133:22|
 :skolemid |93|
 :pattern ( (|Seq#Index_29180| ar_1@@27 k_8@@2))
 :pattern ( (|Seq#Index_29180| ar_1@@27 k_8@@2))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (<= vmin@@9 (invRecv3 o_9@@0)) (and (< (invRecv3 o_9@@0) vmax_1@@9) (and (<= lo@@14 (mod (invRecv3 o_9@@0) step@@9)) (< (mod (invRecv3 o_9@@0) step@@9) hi@@27)))) (qpRange3 o_9@@0)) (and (= (|Seq#Index_29180| ar_1@@27 (invRecv3 o_9@@0)) o_9@@0) (< (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| ZeroMask) o_9@@0 Ref__Integer_value) (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@0) o_9@@0 Ref__Integer_value)))) (=> (not (and (and (<= vmin@@9 (invRecv3 o_9@@0)) (and (< (invRecv3 o_9@@0) vmax_1@@9) (and (<= lo@@14 (mod (invRecv3 o_9@@0) step@@9)) (< (mod (invRecv3 o_9@@0) step@@9) hi@@27)))) (qpRange3 o_9@@0))) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@0) o_9@@0 Ref__Integer_value) (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| ZeroMask) o_9@@0 Ref__Integer_value))))
 :qid |stdinbpl.1139:22|
 :skolemid |94|
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@0) o_9@@0 Ref__Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_41464_53) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| ZeroMask) o_9@@1 f_5) (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@0) o_9@@1 f_5)))
 :qid |stdinbpl.1143:29|
 :skolemid |95|
 :pattern ( (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| ZeroMask) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_41425_29141_53#PolymorphicMapType_41425| QPMask@0) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_41477_41478) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| ZeroMask) o_9@@2 f_5@@0) (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@0) o_9@@2 f_5@@0)))
 :qid |stdinbpl.1143:29|
 :skolemid |95|
 :pattern ( (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| ZeroMask) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_41425_29141_41478#PolymorphicMapType_41425| QPMask@0) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_47552_3829) ) (!  (=> (not (= f_5@@1 Ref__Integer_value)) (= (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| ZeroMask) o_9@@3 f_5@@1) (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@0) o_9@@3 f_5@@1)))
 :qid |stdinbpl.1143:29|
 :skolemid |95|
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| ZeroMask) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_41425_29141_3829#PolymorphicMapType_41425| QPMask@0) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_29141_117835) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| ZeroMask) o_9@@4 f_5@@2) (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@0) o_9@@4 f_5@@2)))
 :qid |stdinbpl.1143:29|
 :skolemid |95|
 :pattern ( (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| ZeroMask) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_41425_29141_117835#PolymorphicMapType_41425| QPMask@0) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_29141_117968) ) (!  (=> true (= (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| ZeroMask) o_9@@5 f_5@@3) (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@0) o_9@@5 f_5@@3)))
 :qid |stdinbpl.1143:29|
 :skolemid |95|
 :pattern ( (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| ZeroMask) o_9@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_41425_29141_122090#PolymorphicMapType_41425| QPMask@0) o_9@@5 f_5@@3))
))) (and (state Heap@@41 QPMask@0) (state Heap@@41 QPMask@0))) (and (=> (= (ControlFlow 0 52) 50) anon32_Then_correct) (=> (= (ControlFlow 0 52) 22) anon32_Else_correct))))))))
(let ((anon11_correct true))
(let ((anon31_Else_correct  (=> (and (not (and (<= vmin@@9 k_7) (and (< k_7 vmax_1@@9) (and (<= lo@@14 (mod k_7 step@@9)) (< (mod k_7 step@@9) hi@@27))))) (= (ControlFlow 0 12) 8)) anon11_correct)))
(let ((anon31_Then_correct  (=> (and (<= vmin@@9 k_7) (and (< k_7 vmax_1@@9) (and (<= lo@@14 (mod k_7 step@@9)) (< (mod k_7 step@@9) hi@@27)))) (and (=> (= (ControlFlow 0 9) (- 0 11)) (>= k_7 0)) (=> (>= k_7 0) (and (=> (= (ControlFlow 0 9) (- 0 10)) (< k_7 (|Seq#Length_29180| ar_1@@27))) (=> (< k_7 (|Seq#Length_29180| ar_1@@27)) (=> (= (ControlFlow 0 9) 8) anon11_correct))))))))
(let ((anon30_Else_correct  (=> (< (mod k_7 step@@9) lo@@14) (and (=> (= (ControlFlow 0 17) 9) anon31_Then_correct) (=> (= (ControlFlow 0 17) 12) anon31_Else_correct)))))
(let ((anon30_Then_correct  (=> (<= lo@@14 (mod k_7 step@@9)) (and (=> (= (ControlFlow 0 15) (- 0 16)) (not (= step@@9 0))) (=> (not (= step@@9 0)) (and (=> (= (ControlFlow 0 15) 9) anon31_Then_correct) (=> (= (ControlFlow 0 15) 12) anon31_Else_correct)))))))
(let ((anon29_Then_correct  (=> (< k_7 vmax_1@@9) (and (=> (= (ControlFlow 0 18) (- 0 19)) (not (= step@@9 0))) (=> (not (= step@@9 0)) (and (=> (= (ControlFlow 0 18) 15) anon30_Then_correct) (=> (= (ControlFlow 0 18) 17) anon30_Else_correct)))))))
(let ((anon29_Else_correct  (=> (<= vmax_1@@9 k_7) (and (=> (= (ControlFlow 0 14) 9) anon31_Then_correct) (=> (= (ControlFlow 0 14) 12) anon31_Else_correct)))))
(let ((anon28_Then_correct  (=> (<= vmin@@9 k_7) (and (=> (= (ControlFlow 0 20) 18) anon29_Then_correct) (=> (= (ControlFlow 0 20) 14) anon29_Else_correct)))))
(let ((anon28_Else_correct  (=> (< k_7 vmin@@9) (and (=> (= (ControlFlow 0 13) 9) anon31_Then_correct) (=> (= (ControlFlow 0 13) 12) anon31_Else_correct)))))
(let ((anon25_Else_correct  (=> (and (forall ((k_6_2 Int) (j_3 Int) ) (!  (=> (and (>= k_6_2 0) (and (< k_6_2 (|Seq#Length_29180| ar_1@@27)) (and (>= j_3 0) (and (< j_3 (|Seq#Length_29180| ar_1@@27)) (not (= k_6_2 j_3)))))) (not (= (|Seq#Index_29180| ar_1@@27 k_6_2) (|Seq#Index_29180| ar_1@@27 j_3))))
 :qid |stdinbpl.1089:20|
 :skolemid |89|
 :pattern ( (|Seq#Index_29180| ar_1@@27 k_6_2) (|Seq#Index_29180| ar_1@@27 j_3))
)) (state Heap@@41 ZeroMask)) (and (and (=> (= (ControlFlow 0 54) 52) anon27_Else_correct) (=> (= (ControlFlow 0 54) 20) anon28_Then_correct)) (=> (= (ControlFlow 0 54) 13) anon28_Else_correct)))))
(let ((anon3_correct true))
(let ((anon26_Else_correct  (=> (and (not (and (>= k_19 0) (and (< k_19 (|Seq#Length_29180| ar_1@@27)) (and (>= j_12 0) (and (< j_12 (|Seq#Length_29180| ar_1@@27)) (not (= k_19 j_12))))))) (= (ControlFlow 0 7) 1)) anon3_correct)))
(let ((anon26_Then_correct  (=> (and (>= k_19 0) (and (< k_19 (|Seq#Length_29180| ar_1@@27)) (and (>= j_12 0) (and (< j_12 (|Seq#Length_29180| ar_1@@27)) (not (= k_19 j_12)))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= k_19 0)) (=> (>= k_19 0) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< k_19 (|Seq#Length_29180| ar_1@@27))) (=> (< k_19 (|Seq#Length_29180| ar_1@@27)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= j_12 0)) (=> (>= j_12 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< j_12 (|Seq#Length_29180| ar_1@@27))) (=> (< j_12 (|Seq#Length_29180| ar_1@@27)) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))))))))
(let ((anon0_correct  (=> (and (state Heap@@41 ZeroMask) (not AssumePermUpperBound)) (=> (and (and (= AssumeFunctionsAbove 2) (<= 0 lo@@14)) (and (<= lo@@14 hi@@27) (<= hi@@27 step@@9))) (=> (and (and (and (> step@@9 0) (state Heap@@41 ZeroMask)) (and (<= 0 vmin@@9) (<= vmin@@9 i@@39))) (and (and (<= i@@39 vmax_1@@9) (state Heap@@41 ZeroMask)) (and (<= vmax_1@@9 (|Seq#Length_29180| ar_1@@27)) (state Heap@@41 ZeroMask)))) (and (and (=> (= (ControlFlow 0 55) 54) anon25_Else_correct) (=> (= (ControlFlow 0 55) 2) anon26_Then_correct)) (=> (= (ControlFlow 0 55) 7) anon26_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (> wildcard 0.0) true) (= (ControlFlow 0 56) 55)) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))
))
(check-sat)
