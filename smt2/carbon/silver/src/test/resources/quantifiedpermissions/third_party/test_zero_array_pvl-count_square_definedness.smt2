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
(declare-sort T@Field_24480_53 0)
(declare-sort T@Field_24493_24494 0)
(declare-sort T@Field_30530_3373 0)
(declare-sort T@Field_17215_66951 0)
(declare-sort T@Field_17215_66818 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_24441 0)) (((PolymorphicMapType_24441 (|PolymorphicMapType_24441_17215_3373#PolymorphicMapType_24441| (Array T@Ref T@Field_30530_3373 Real)) (|PolymorphicMapType_24441_17215_53#PolymorphicMapType_24441| (Array T@Ref T@Field_24480_53 Real)) (|PolymorphicMapType_24441_17215_24494#PolymorphicMapType_24441| (Array T@Ref T@Field_24493_24494 Real)) (|PolymorphicMapType_24441_17215_66818#PolymorphicMapType_24441| (Array T@Ref T@Field_17215_66818 Real)) (|PolymorphicMapType_24441_17215_71073#PolymorphicMapType_24441| (Array T@Ref T@Field_17215_66951 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_24969 0)) (((PolymorphicMapType_24969 (|PolymorphicMapType_24969_24480_53#PolymorphicMapType_24969| (Array T@Ref T@Field_24480_53 Bool)) (|PolymorphicMapType_24969_24480_24494#PolymorphicMapType_24969| (Array T@Ref T@Field_24493_24494 Bool)) (|PolymorphicMapType_24969_24480_3373#PolymorphicMapType_24969| (Array T@Ref T@Field_30530_3373 Bool)) (|PolymorphicMapType_24969_24480_66818#PolymorphicMapType_24969| (Array T@Ref T@Field_17215_66818 Bool)) (|PolymorphicMapType_24969_24480_68129#PolymorphicMapType_24969| (Array T@Ref T@Field_17215_66951 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_24420 0)) (((PolymorphicMapType_24420 (|PolymorphicMapType_24420_16995_53#PolymorphicMapType_24420| (Array T@Ref T@Field_24480_53 Bool)) (|PolymorphicMapType_24420_16998_16999#PolymorphicMapType_24420| (Array T@Ref T@Field_24493_24494 T@Ref)) (|PolymorphicMapType_24420_17215_3373#PolymorphicMapType_24420| (Array T@Ref T@Field_30530_3373 Int)) (|PolymorphicMapType_24420_17215_66995#PolymorphicMapType_24420| (Array T@Ref T@Field_17215_66951 T@PolymorphicMapType_24969)) (|PolymorphicMapType_24420_24480_66818#PolymorphicMapType_24420| (Array T@Ref T@Field_17215_66818 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_24480_53)
(declare-fun Ref__Integer_value () T@Field_30530_3373)
(declare-sort T@Seq_31572 0)
(declare-fun |Seq#Length_17254| (T@Seq_31572) Int)
(declare-fun |Seq#Drop_17254| (T@Seq_31572 Int) T@Seq_31572)
(declare-sort T@Seq_3251 0)
(declare-fun |Seq#Length_3251| (T@Seq_3251) Int)
(declare-fun |Seq#Drop_3251| (T@Seq_3251 Int) T@Seq_3251)
(declare-fun state (T@PolymorphicMapType_24420 T@PolymorphicMapType_24441) Bool)
(declare-fun |count_square'| (T@PolymorphicMapType_24420 Int Int Int Int Int Int T@Seq_31572 Int) Int)
(declare-fun |count_square#frame| (T@FrameType Int Int Int Int Int Int T@Seq_31572 Int) Int)
(declare-fun FrameFragment_4232 (Int) T@FrameType)
(declare-fun |count_square#condqp3| (T@PolymorphicMapType_24420 Int Int Int Int Int Int T@Seq_31572 Int) Int)
(declare-fun succHeap (T@PolymorphicMapType_24420 T@PolymorphicMapType_24420) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_24420 T@PolymorphicMapType_24420) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_24441) Bool)
(declare-fun |sum_list'| (T@PolymorphicMapType_24420 Int Int T@Seq_3251) Int)
(declare-fun dummyFunction_3680 (Int) Bool)
(declare-fun |sum_list#triggerStateless| (Int Int T@Seq_3251) Int)
(declare-fun ZeroPMask () T@PolymorphicMapType_24969)
(declare-fun |Seq#Index_17254| (T@Seq_31572 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3251| (T@Seq_3251 Int) Int)
(declare-fun |Seq#Empty_17254| () T@Seq_31572)
(declare-fun |Seq#Empty_3251| () T@Seq_3251)
(declare-fun |Seq#Update_17254| (T@Seq_31572 Int T@Ref) T@Seq_31572)
(declare-fun |Seq#Update_3251| (T@Seq_3251 Int Int) T@Seq_3251)
(declare-fun |Seq#Take_17254| (T@Seq_31572 Int) T@Seq_31572)
(declare-fun |Seq#Take_3251| (T@Seq_3251 Int) T@Seq_3251)
(declare-fun |Seq#Contains_3251| (T@Seq_3251 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3251)
(declare-fun |Seq#Contains_31572| (T@Seq_31572 T@Ref) Bool)
(declare-fun |Seq#Skolem_31572| (T@Seq_31572 T@Ref) Int)
(declare-fun |Seq#Skolem_3251| (T@Seq_3251 Int) Int)
(declare-fun sum_array (T@PolymorphicMapType_24420 Int Int Int T@Seq_31572) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |sum_array'| (T@PolymorphicMapType_24420 Int Int Int T@Seq_31572) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_24420 T@PolymorphicMapType_24420 T@PolymorphicMapType_24441) Bool)
(declare-fun IsPredicateField_17215_66909 (T@Field_17215_66818) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_17215 (T@Field_17215_66818) T@Field_17215_66951)
(declare-fun HasDirectPerm_17215_66882 (T@PolymorphicMapType_24441 T@Ref T@Field_17215_66818) Bool)
(declare-fun IsWandField_17215_68656 (T@Field_17215_66818) Bool)
(declare-fun WandMaskField_17215 (T@Field_17215_66818) T@Field_17215_66951)
(declare-fun |Seq#Singleton_17254| (T@Ref) T@Seq_31572)
(declare-fun |Seq#Singleton_3251| (Int) T@Seq_3251)
(declare-fun count_square (T@PolymorphicMapType_24420 Int Int Int Int Int Int T@Seq_31572 Int) Int)
(declare-fun |count_square#triggerStateless| (Int Int Int Int Int Int T@Seq_31572 Int) Int)
(declare-fun |Seq#Append_31572| (T@Seq_31572 T@Seq_31572) T@Seq_31572)
(declare-fun |Seq#Append_3251| (T@Seq_3251 T@Seq_3251) T@Seq_3251)
(declare-fun |sum_square#condqp2| (T@PolymorphicMapType_24420 Int Int Int Int Int Int T@Seq_31572) Int)
(declare-fun |sk_sum_square#condqp2| (Int Int) Int)
(declare-fun |sk_count_square#condqp3| (Int Int) Int)
(declare-fun dummyHeap () T@PolymorphicMapType_24420)
(declare-fun ZeroMask () T@PolymorphicMapType_24441)
(declare-fun sum_square (T@PolymorphicMapType_24420 Int Int Int Int Int Int T@Seq_31572) Int)
(declare-fun |sum_square'| (T@PolymorphicMapType_24420 Int Int Int Int Int Int T@Seq_31572) Int)
(declare-fun InsidePredicate_24480_24480 (T@Field_17215_66818 T@FrameType T@Field_17215_66818 T@FrameType) Bool)
(declare-fun IsPredicateField_17215_3373 (T@Field_30530_3373) Bool)
(declare-fun IsWandField_17215_3373 (T@Field_30530_3373) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_17215_72202 (T@Field_17215_66951) Bool)
(declare-fun IsWandField_17215_72218 (T@Field_17215_66951) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_17215_24494 (T@Field_24493_24494) Bool)
(declare-fun IsWandField_17215_24494 (T@Field_24493_24494) Bool)
(declare-fun IsPredicateField_17215_53 (T@Field_24480_53) Bool)
(declare-fun IsWandField_17215_53 (T@Field_24480_53) Bool)
(declare-fun |sum_list#frame| (T@FrameType Int Int T@Seq_3251) Int)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun HasDirectPerm_17215_72656 (T@PolymorphicMapType_24441 T@Ref T@Field_17215_66951) Bool)
(declare-fun HasDirectPerm_17215_24494 (T@PolymorphicMapType_24441 T@Ref T@Field_24493_24494) Bool)
(declare-fun HasDirectPerm_17215_53 (T@PolymorphicMapType_24441 T@Ref T@Field_24480_53) Bool)
(declare-fun HasDirectPerm_17215_3373 (T@PolymorphicMapType_24441 T@Ref T@Field_30530_3373) Bool)
(declare-fun |sum_array#triggerStateless| (Int Int Int T@Seq_31572) Int)
(declare-fun |count_list'| (T@PolymorphicMapType_24420 Int Int T@Seq_3251 Int) Int)
(declare-fun |count_list#triggerStateless| (Int Int T@Seq_3251 Int) Int)
(declare-fun |count_array'| (T@PolymorphicMapType_24420 Int Int T@Seq_31572 Int) Int)
(declare-fun |count_array#triggerStateless| (Int Int T@Seq_31572 Int) Int)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun count_list (T@PolymorphicMapType_24420 Int Int T@Seq_3251 Int) Int)
(declare-fun count_array (T@PolymorphicMapType_24420 Int Int T@Seq_31572 Int) Int)
(declare-fun sumMask (T@PolymorphicMapType_24441 T@PolymorphicMapType_24441 T@PolymorphicMapType_24441) Bool)
(declare-fun |sum_square#triggerStateless| (Int Int Int Int Int Int T@Seq_31572) Int)
(declare-fun |count_list#frame| (T@FrameType Int Int T@Seq_3251 Int) Int)
(declare-fun |Seq#Equal_31572| (T@Seq_31572 T@Seq_31572) Bool)
(declare-fun |Seq#Equal_3251| (T@Seq_3251 T@Seq_3251) Bool)
(declare-fun sum_list (T@PolymorphicMapType_24420 Int Int T@Seq_3251) Int)
(declare-fun |Seq#ContainsTrigger_17254| (T@Seq_31572 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3251| (T@Seq_3251 Int) Bool)
(declare-fun |count_array#condqp4| (T@PolymorphicMapType_24420 Int Int T@Seq_31572 Int) Int)
(declare-fun |sk_count_array#condqp4| (Int Int) Int)
(declare-fun |sum_array#condqp1| (T@PolymorphicMapType_24420 Int Int Int T@Seq_31572) Int)
(declare-fun |sk_sum_array#condqp1| (Int Int) Int)
(declare-fun |sum_square#frame| (T@FrameType Int Int Int Int Int Int T@Seq_31572) Int)
(declare-fun |Seq#SkolemDiff_31572| (T@Seq_31572 T@Seq_31572) Int)
(declare-fun |Seq#SkolemDiff_3251| (T@Seq_3251 T@Seq_3251) Int)
(declare-fun |sum_array#frame| (T@FrameType Int Int Int T@Seq_31572) Int)
(declare-fun |count_array#frame| (T@FrameType Int Int T@Seq_31572 Int) Int)
(assert (forall ((s T@Seq_31572) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_17254| s)) (= (|Seq#Length_17254| (|Seq#Drop_17254| s n)) (- (|Seq#Length_17254| s) n))) (=> (< (|Seq#Length_17254| s) n) (= (|Seq#Length_17254| (|Seq#Drop_17254| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_17254| (|Seq#Drop_17254| s n)) (|Seq#Length_17254| s))))
 :qid |stdinbpl.341:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_17254| (|Seq#Drop_17254| s n)))
 :pattern ( (|Seq#Length_17254| s) (|Seq#Drop_17254| s n))
)))
(assert (forall ((s@@0 T@Seq_3251) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3251| s@@0)) (= (|Seq#Length_3251| (|Seq#Drop_3251| s@@0 n@@0)) (- (|Seq#Length_3251| s@@0) n@@0))) (=> (< (|Seq#Length_3251| s@@0) n@@0) (= (|Seq#Length_3251| (|Seq#Drop_3251| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3251| (|Seq#Drop_3251| s@@0 n@@0)) (|Seq#Length_3251| s@@0))))
 :qid |stdinbpl.341:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3251| (|Seq#Drop_3251| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3251| s@@0) (|Seq#Drop_3251| s@@0 n@@0))
)))
(assert (forall ((Heap T@PolymorphicMapType_24420) (Mask T@PolymorphicMapType_24441) (i Int) (lo Int) (hi Int) (step Int) (vmin Int) (vmax_1 Int) (ar_1 T@Seq_31572) (v_2 Int) ) (!  (=> (state Heap Mask) (= (|count_square'| Heap i lo hi step vmin vmax_1 ar_1 v_2) (|count_square#frame| (FrameFragment_4232 (|count_square#condqp3| Heap i lo hi step vmin vmax_1 ar_1 v_2)) i lo hi step vmin vmax_1 ar_1 v_2)))
 :qid |stdinbpl.1229:15|
 :skolemid |108|
 :pattern ( (state Heap Mask) (|count_square'| Heap i lo hi step vmin vmax_1 ar_1 v_2))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_24420) (Heap1 T@PolymorphicMapType_24420) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_24420) (Mask@@0 T@PolymorphicMapType_24441) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_24420) (Heap1@@0 T@PolymorphicMapType_24420) (Heap2 T@PolymorphicMapType_24420) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_24420) (i@@0 Int) (hi@@0 Int) (ar_1@@0 T@Seq_3251) ) (! (dummyFunction_3680 (|sum_list#triggerStateless| i@@0 hi@@0 ar_1@@0))
 :qid |stdinbpl.627:15|
 :skolemid |59|
 :pattern ( (|sum_list'| Heap@@1 i@@0 hi@@0 ar_1@@0))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_17215_66951) ) (!  (not (select (|PolymorphicMapType_24969_24480_68129#PolymorphicMapType_24969| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24969_24480_68129#PolymorphicMapType_24969| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_17215_66818) ) (!  (not (select (|PolymorphicMapType_24969_24480_66818#PolymorphicMapType_24969| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24969_24480_66818#PolymorphicMapType_24969| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_30530_3373) ) (!  (not (select (|PolymorphicMapType_24969_24480_3373#PolymorphicMapType_24969| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24969_24480_3373#PolymorphicMapType_24969| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_24493_24494) ) (!  (not (select (|PolymorphicMapType_24969_24480_24494#PolymorphicMapType_24969| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24969_24480_24494#PolymorphicMapType_24969| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_24480_53) ) (!  (not (select (|PolymorphicMapType_24969_24480_53#PolymorphicMapType_24969| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_24969_24480_53#PolymorphicMapType_24969| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((s@@1 T@Seq_31572) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_17254| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_17254| (|Seq#Drop_17254| s@@1 n@@1) j) (|Seq#Index_17254| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.362:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_17254| (|Seq#Drop_17254| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3251) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3251| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3251| (|Seq#Drop_3251| s@@2 n@@2) j@@0) (|Seq#Index_3251| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.362:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3251| (|Seq#Drop_3251| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_17254| |Seq#Empty_17254|) 0))
(assert (= (|Seq#Length_3251| |Seq#Empty_3251|) 0))
(assert (forall ((s@@3 T@Seq_31572) (i@@1 Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_17254| s@@3))) (and (=> (= i@@1 n@@3) (= (|Seq#Index_17254| (|Seq#Update_17254| s@@3 i@@1 v) n@@3) v)) (=> (not (= i@@1 n@@3)) (= (|Seq#Index_17254| (|Seq#Update_17254| s@@3 i@@1 v) n@@3) (|Seq#Index_17254| s@@3 n@@3)))))
 :qid |stdinbpl.317:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_17254| (|Seq#Update_17254| s@@3 i@@1 v) n@@3))
 :pattern ( (|Seq#Index_17254| s@@3 n@@3) (|Seq#Update_17254| s@@3 i@@1 v))
)))
(assert (forall ((s@@4 T@Seq_3251) (i@@2 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3251| s@@4))) (and (=> (= i@@2 n@@4) (= (|Seq#Index_3251| (|Seq#Update_3251| s@@4 i@@2 v@@0) n@@4) v@@0)) (=> (not (= i@@2 n@@4)) (= (|Seq#Index_3251| (|Seq#Update_3251| s@@4 i@@2 v@@0) n@@4) (|Seq#Index_3251| s@@4 n@@4)))))
 :qid |stdinbpl.317:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3251| (|Seq#Update_3251| s@@4 i@@2 v@@0) n@@4))
 :pattern ( (|Seq#Index_3251| s@@4 n@@4) (|Seq#Update_3251| s@@4 i@@2 v@@0))
)))
(assert (forall ((s@@5 T@Seq_31572) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_17254| s@@5)) (= (|Seq#Length_17254| (|Seq#Take_17254| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_17254| s@@5) n@@5) (= (|Seq#Length_17254| (|Seq#Take_17254| s@@5 n@@5)) (|Seq#Length_17254| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_17254| (|Seq#Take_17254| s@@5 n@@5)) 0)))
 :qid |stdinbpl.328:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_17254| (|Seq#Take_17254| s@@5 n@@5)))
 :pattern ( (|Seq#Take_17254| s@@5 n@@5) (|Seq#Length_17254| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3251) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3251| s@@6)) (= (|Seq#Length_3251| (|Seq#Take_3251| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3251| s@@6) n@@6) (= (|Seq#Length_3251| (|Seq#Take_3251| s@@6 n@@6)) (|Seq#Length_3251| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3251| (|Seq#Take_3251| s@@6 n@@6)) 0)))
 :qid |stdinbpl.328:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3251| (|Seq#Take_3251| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3251| s@@6 n@@6) (|Seq#Length_3251| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3251| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.602:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3251| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_31572) (x T@Ref) ) (!  (=> (|Seq#Contains_31572| s@@7 x) (and (and (<= 0 (|Seq#Skolem_31572| s@@7 x)) (< (|Seq#Skolem_31572| s@@7 x) (|Seq#Length_17254| s@@7))) (= (|Seq#Index_17254| s@@7 (|Seq#Skolem_31572| s@@7 x)) x)))
 :qid |stdinbpl.460:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_31572| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3251) (x@@0 Int) ) (!  (=> (|Seq#Contains_3251| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3251| s@@8 x@@0)) (< (|Seq#Skolem_3251| s@@8 x@@0) (|Seq#Length_3251| s@@8))) (= (|Seq#Index_3251| s@@8 (|Seq#Skolem_3251| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.460:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3251| s@@8 x@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_24420) (Mask@@1 T@PolymorphicMapType_24441) (i@@3 Int) (lo@@0 Int) (hi@@1 Int) (ar_1@@1 T@Seq_31572) ) (!  (=> (and (state Heap@@2 Mask@@1) (< AssumeFunctionsAbove 3)) (=> (and (and (and (<= 0 lo@@0) (and (<= lo@@0 i@@3) (<= i@@3 hi@@1))) (<= hi@@1 (|Seq#Length_17254| ar_1@@1))) (forall ((ix_8 Int) (jx_8 Int) ) (!  (=> (and (>= ix_8 0) (and (< ix_8 (|Seq#Length_17254| ar_1@@1)) (and (>= jx_8 0) (and (< jx_8 (|Seq#Length_17254| ar_1@@1)) (not (= ix_8 jx_8)))))) (not (= (|Seq#Index_17254| ar_1@@1 ix_8) (|Seq#Index_17254| ar_1@@1 jx_8))))
 :qid |stdinbpl.720:126|
 :skolemid |64|
 :pattern ( (|Seq#Index_17254| ar_1@@1 ix_8) (|Seq#Index_17254| ar_1@@1 jx_8))
))) (= (sum_array Heap@@2 i@@3 lo@@0 hi@@1 ar_1@@1) (ite (< i@@3 hi@@1) (+ (select (|PolymorphicMapType_24420_17215_3373#PolymorphicMapType_24420| Heap@@2) (|Seq#Index_17254| ar_1@@1 i@@3) Ref__Integer_value) (|sum_array'| Heap@@2 (+ i@@3 1) lo@@0 hi@@1 ar_1@@1)) 0))))
 :qid |stdinbpl.718:15|
 :skolemid |65|
 :pattern ( (state Heap@@2 Mask@@1) (sum_array Heap@@2 i@@3 lo@@0 hi@@1 ar_1@@1))
)))
(assert (forall ((s@@9 T@Seq_31572) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_17254| s@@9 n@@7) s@@9))
 :qid |stdinbpl.444:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_17254| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3251) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3251| s@@10 n@@8) s@@10))
 :qid |stdinbpl.444:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3251| s@@10 n@@8))
)))
(assert (forall ((i@@4 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@4 j@@1) (- i@@4 j@@1))
 :qid |stdinbpl.297:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@4 j@@1))
)))
(assert (forall ((i@@5 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@5 j@@2) (+ i@@5 j@@2))
 :qid |stdinbpl.295:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@5 j@@2))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_24420) (ExhaleHeap T@PolymorphicMapType_24420) (Mask@@2 T@PolymorphicMapType_24441) (pm_f_24 T@Field_17215_66818) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@2) (=> (and (HasDirectPerm_17215_66882 Mask@@2 null pm_f_24) (IsPredicateField_17215_66909 pm_f_24)) (= (select (|PolymorphicMapType_24420_17215_66995#PolymorphicMapType_24420| Heap@@3) null (PredicateMaskField_17215 pm_f_24)) (select (|PolymorphicMapType_24420_17215_66995#PolymorphicMapType_24420| ExhaleHeap) null (PredicateMaskField_17215 pm_f_24)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@2) (IsPredicateField_17215_66909 pm_f_24) (select (|PolymorphicMapType_24420_17215_66995#PolymorphicMapType_24420| ExhaleHeap) null (PredicateMaskField_17215 pm_f_24)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_24420) (ExhaleHeap@@0 T@PolymorphicMapType_24420) (Mask@@3 T@PolymorphicMapType_24441) (pm_f_24@@0 T@Field_17215_66818) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@3) (=> (and (HasDirectPerm_17215_66882 Mask@@3 null pm_f_24@@0) (IsWandField_17215_68656 pm_f_24@@0)) (= (select (|PolymorphicMapType_24420_17215_66995#PolymorphicMapType_24420| Heap@@4) null (WandMaskField_17215 pm_f_24@@0)) (select (|PolymorphicMapType_24420_17215_66995#PolymorphicMapType_24420| ExhaleHeap@@0) null (WandMaskField_17215 pm_f_24@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@3) (IsWandField_17215_68656 pm_f_24@@0) (select (|PolymorphicMapType_24420_17215_66995#PolymorphicMapType_24420| ExhaleHeap@@0) null (WandMaskField_17215 pm_f_24@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_31572| (|Seq#Singleton_17254| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.585:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_31572| (|Seq#Singleton_17254| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3251| (|Seq#Singleton_3251| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.585:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3251| (|Seq#Singleton_3251| x@@2) y@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_24420) (i@@6 Int) (lo@@1 Int) (hi@@2 Int) (step@@0 Int) (vmin@@0 Int) (vmax_1@@0 Int) (ar_1@@2 T@Seq_31572) (v_2@@0 Int) ) (!  (and (= (count_square Heap@@5 i@@6 lo@@1 hi@@2 step@@0 vmin@@0 vmax_1@@0 ar_1@@2 v_2@@0) (|count_square'| Heap@@5 i@@6 lo@@1 hi@@2 step@@0 vmin@@0 vmax_1@@0 ar_1@@2 v_2@@0)) (dummyFunction_3680 (|count_square#triggerStateless| i@@6 lo@@1 hi@@2 step@@0 vmin@@0 vmax_1@@0 ar_1@@2 v_2@@0)))
 :qid |stdinbpl.1209:15|
 :skolemid |104|
 :pattern ( (count_square Heap@@5 i@@6 lo@@1 hi@@2 step@@0 vmin@@0 vmax_1@@0 ar_1@@2 v_2@@0))
)))
(assert (forall ((s@@11 T@Seq_31572) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_17254| s@@11))) (= (|Seq#Index_17254| (|Seq#Take_17254| s@@11 n@@9) j@@3) (|Seq#Index_17254| s@@11 j@@3)))
 :qid |stdinbpl.336:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_17254| (|Seq#Take_17254| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_17254| s@@11 j@@3) (|Seq#Take_17254| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3251) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3251| s@@12))) (= (|Seq#Index_3251| (|Seq#Take_3251| s@@12 n@@10) j@@4) (|Seq#Index_3251| s@@12 j@@4)))
 :qid |stdinbpl.336:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3251| (|Seq#Take_3251| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3251| s@@12 j@@4) (|Seq#Take_3251| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_31572) (t T@Seq_31572) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_17254| s@@13))) (< n@@11 (|Seq#Length_17254| (|Seq#Append_31572| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_17254| s@@13)) (|Seq#Length_17254| s@@13)) n@@11) (= (|Seq#Take_17254| (|Seq#Append_31572| s@@13 t) n@@11) (|Seq#Append_31572| s@@13 (|Seq#Take_17254| t (|Seq#Sub| n@@11 (|Seq#Length_17254| s@@13)))))))
 :qid |stdinbpl.421:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_17254| (|Seq#Append_31572| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3251) (t@@0 T@Seq_3251) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3251| s@@14))) (< n@@12 (|Seq#Length_3251| (|Seq#Append_3251| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3251| s@@14)) (|Seq#Length_3251| s@@14)) n@@12) (= (|Seq#Take_3251| (|Seq#Append_3251| s@@14 t@@0) n@@12) (|Seq#Append_3251| s@@14 (|Seq#Take_3251| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3251| s@@14)))))))
 :qid |stdinbpl.421:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3251| (|Seq#Append_3251| s@@14 t@@0) n@@12))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_24420) (i@@7 Int) (lo@@2 Int) (hi@@3 Int) (step@@1 Int) (vmin@@1 Int) (vmax_1@@1 Int) (ar_1@@3 T@Seq_31572) (v_2@@1 Int) ) (! (dummyFunction_3680 (|count_square#triggerStateless| i@@7 lo@@2 hi@@3 step@@1 vmin@@1 vmax_1@@1 ar_1@@3 v_2@@1))
 :qid |stdinbpl.1213:15|
 :skolemid |105|
 :pattern ( (|count_square'| Heap@@6 i@@7 lo@@2 hi@@3 step@@1 vmin@@1 vmax_1@@1 ar_1@@3 v_2@@1))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_24420) (Heap1Heap T@PolymorphicMapType_24420) (i@@8 Int) (lo@@3 Int) (hi@@4 Int) (step@@2 Int) (vmin@@2 Int) (vmax_1@@2 Int) (ar_1@@4 T@Seq_31572) ) (!  (=> (and (=  (and (<= vmin@@2 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) vmax_1@@2) (and (<= lo@@3 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2) hi@@4))))  (and (<= vmin@@2 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) vmax_1@@2) (and (<= lo@@3 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2) hi@@4))))) (=> (and (<= vmin@@2 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) vmax_1@@2) (and (<= lo@@3 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2) hi@@4)))) (= (select (|PolymorphicMapType_24420_17215_3373#PolymorphicMapType_24420| Heap2Heap) (|Seq#Index_17254| ar_1@@4 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) Ref__Integer_value) (select (|PolymorphicMapType_24420_17215_3373#PolymorphicMapType_24420| Heap1Heap) (|Seq#Index_17254| ar_1@@4 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) Ref__Integer_value)))) (= (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)))
 :qid |stdinbpl.973:15|
 :skolemid |88|
 :pattern ( (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_24420) (Heap1Heap@@0 T@PolymorphicMapType_24420) (i@@9 Int) (lo@@4 Int) (hi@@5 Int) (step@@3 Int) (vmin@@3 Int) (vmax_1@@3 Int) (ar_1@@5 T@Seq_31572) (v_2@@2 Int) ) (!  (=> (and (=  (and (<= vmin@@3 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) vmax_1@@3) (and (<= lo@@4 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) step@@3)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) step@@3) hi@@5))))  (and (<= vmin@@3 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) vmax_1@@3) (and (<= lo@@4 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) step@@3)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) step@@3) hi@@5))))) (=> (and (<= vmin@@3 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) vmax_1@@3) (and (<= lo@@4 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) step@@3)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) step@@3) hi@@5)))) (= (select (|PolymorphicMapType_24420_17215_3373#PolymorphicMapType_24420| Heap2Heap@@0) (|Seq#Index_17254| ar_1@@5 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2))) Ref__Integer_value) (select (|PolymorphicMapType_24420_17215_3373#PolymorphicMapType_24420| Heap1Heap@@0) (|Seq#Index_17254| ar_1@@5 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2))) Ref__Integer_value)))) (= (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)))
 :qid |stdinbpl.1239:15|
 :skolemid |109|
 :pattern ( (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@7 T@PolymorphicMapType_24420) (Mask@@4 T@PolymorphicMapType_24441) (i@@10 Int) (lo@@5 Int) (hi@@6 Int) (step@@4 Int) (vmin@@4 Int) (vmax_1@@4 Int) (ar_1@@6 T@Seq_31572) ) (!  (=> (and (state Heap@@7 Mask@@4) (< AssumeFunctionsAbove 2)) (=> (and (and (and (and (<= 0 lo@@5) (and (<= lo@@5 hi@@6) (and (<= hi@@6 step@@4) (> step@@4 0)))) (and (<= 0 vmin@@4) (and (<= vmin@@4 i@@10) (<= i@@10 vmax_1@@4)))) (<= vmax_1@@4 (|Seq#Length_17254| ar_1@@6))) (forall ((ix_8@@0 Int) (jx_8@@0 Int) ) (!  (=> (and (>= ix_8@@0 0) (and (< ix_8@@0 (|Seq#Length_17254| ar_1@@6)) (and (>= jx_8@@0 0) (and (< jx_8@@0 (|Seq#Length_17254| ar_1@@6)) (not (= ix_8@@0 jx_8@@0)))))) (not (= (|Seq#Index_17254| ar_1@@6 ix_8@@0) (|Seq#Index_17254| ar_1@@6 jx_8@@0))))
 :qid |stdinbpl.955:195|
 :skolemid |85|
 :pattern ( (|Seq#Index_17254| ar_1@@6 ix_8@@0) (|Seq#Index_17254| ar_1@@6 jx_8@@0))
))) (= (sum_square Heap@@7 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6) (ite (< i@@10 vmax_1@@4) (+ (ite  (and (<= lo@@5 (mod i@@10 step@@4)) (< (mod i@@10 step@@4) hi@@6)) (select (|PolymorphicMapType_24420_17215_3373#PolymorphicMapType_24420| Heap@@7) (|Seq#Index_17254| ar_1@@6 i@@10) Ref__Integer_value) 0) (|sum_square'| Heap@@7 (+ i@@10 1) lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6)) 0))))
 :qid |stdinbpl.953:15|
 :skolemid |86|
 :pattern ( (state Heap@@7 Mask@@4) (sum_square Heap@@7 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_24420) (ExhaleHeap@@1 T@PolymorphicMapType_24420) (Mask@@5 T@PolymorphicMapType_24441) (o_52 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@5) (=> (select (|PolymorphicMapType_24420_16995_53#PolymorphicMapType_24420| Heap@@8) o_52 $allocated) (select (|PolymorphicMapType_24420_16995_53#PolymorphicMapType_24420| ExhaleHeap@@1) o_52 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@5) (select (|PolymorphicMapType_24420_16995_53#PolymorphicMapType_24420| ExhaleHeap@@1) o_52 $allocated))
)))
(assert (forall ((p T@Field_17215_66818) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_24480_24480 p v_1 p w))
 :qid |stdinbpl.239:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_24480_24480 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_31572) (s1 T@Seq_31572) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_17254|)) (not (= s1 |Seq#Empty_17254|))) (<= (|Seq#Length_17254| s0) n@@13)) (< n@@13 (|Seq#Length_17254| (|Seq#Append_31572| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_17254| s0)) (|Seq#Length_17254| s0)) n@@13) (= (|Seq#Index_17254| (|Seq#Append_31572| s0 s1) n@@13) (|Seq#Index_17254| s1 (|Seq#Sub| n@@13 (|Seq#Length_17254| s0))))))
 :qid |stdinbpl.308:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_17254| (|Seq#Append_31572| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3251) (s1@@0 T@Seq_3251) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3251|)) (not (= s1@@0 |Seq#Empty_3251|))) (<= (|Seq#Length_3251| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3251| (|Seq#Append_3251| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3251| s0@@0)) (|Seq#Length_3251| s0@@0)) n@@14) (= (|Seq#Index_3251| (|Seq#Append_3251| s0@@0 s1@@0) n@@14) (|Seq#Index_3251| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3251| s0@@0))))))
 :qid |stdinbpl.308:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3251| (|Seq#Append_3251| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_17215_3373 Ref__Integer_value)))
(assert  (not (IsWandField_17215_3373 Ref__Integer_value)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_24420) (ExhaleHeap@@2 T@PolymorphicMapType_24420) (Mask@@6 T@PolymorphicMapType_24441) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@6) (succHeap Heap@@9 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_24441) (o_2@@4 T@Ref) (f_4@@4 T@Field_17215_66951) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_24441_17215_71073#PolymorphicMapType_24441| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_17215_72202 f_4@@4))) (not (IsWandField_17215_72218 f_4@@4))) (<= (select (|PolymorphicMapType_24441_17215_71073#PolymorphicMapType_24441| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_24441_17215_71073#PolymorphicMapType_24441| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_24441) (o_2@@5 T@Ref) (f_4@@5 T@Field_17215_66818) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_24441_17215_66818#PolymorphicMapType_24441| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_17215_66909 f_4@@5))) (not (IsWandField_17215_68656 f_4@@5))) (<= (select (|PolymorphicMapType_24441_17215_66818#PolymorphicMapType_24441| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_24441_17215_66818#PolymorphicMapType_24441| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_24441) (o_2@@6 T@Ref) (f_4@@6 T@Field_24493_24494) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_24441_17215_24494#PolymorphicMapType_24441| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_17215_24494 f_4@@6))) (not (IsWandField_17215_24494 f_4@@6))) (<= (select (|PolymorphicMapType_24441_17215_24494#PolymorphicMapType_24441| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_24441_17215_24494#PolymorphicMapType_24441| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_24441) (o_2@@7 T@Ref) (f_4@@7 T@Field_24480_53) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_24441_17215_53#PolymorphicMapType_24441| Mask@@10) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_17215_53 f_4@@7))) (not (IsWandField_17215_53 f_4@@7))) (<= (select (|PolymorphicMapType_24441_17215_53#PolymorphicMapType_24441| Mask@@10) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_24441_17215_53#PolymorphicMapType_24441| Mask@@10) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_24441) (o_2@@8 T@Ref) (f_4@@8 T@Field_30530_3373) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_24441_17215_3373#PolymorphicMapType_24441| Mask@@11) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_17215_3373 f_4@@8))) (not (IsWandField_17215_3373 f_4@@8))) (<= (select (|PolymorphicMapType_24441_17215_3373#PolymorphicMapType_24441| Mask@@11) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_24441_17215_3373#PolymorphicMapType_24441| Mask@@11) o_2@@8 f_4@@8))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_24420) (Mask@@12 T@PolymorphicMapType_24441) (i@@11 Int) (hi@@7 Int) (ar_1@@7 T@Seq_3251) ) (!  (=> (state Heap@@10 Mask@@12) (= (|sum_list'| Heap@@10 i@@11 hi@@7 ar_1@@7) (|sum_list#frame| EmptyFrame i@@11 hi@@7 ar_1@@7)))
 :qid |stdinbpl.640:15|
 :skolemid |61|
 :pattern ( (state Heap@@10 Mask@@12) (|sum_list'| Heap@@10 i@@11 hi@@7 ar_1@@7))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_24441) (o_2@@9 T@Ref) (f_4@@9 T@Field_17215_66951) ) (! (= (HasDirectPerm_17215_72656 Mask@@13 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_24441_17215_71073#PolymorphicMapType_24441| Mask@@13) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17215_72656 Mask@@13 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_24441) (o_2@@10 T@Ref) (f_4@@10 T@Field_17215_66818) ) (! (= (HasDirectPerm_17215_66882 Mask@@14 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_24441_17215_66818#PolymorphicMapType_24441| Mask@@14) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17215_66882 Mask@@14 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_24441) (o_2@@11 T@Ref) (f_4@@11 T@Field_24493_24494) ) (! (= (HasDirectPerm_17215_24494 Mask@@15 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_24441_17215_24494#PolymorphicMapType_24441| Mask@@15) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17215_24494 Mask@@15 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_24441) (o_2@@12 T@Ref) (f_4@@12 T@Field_24480_53) ) (! (= (HasDirectPerm_17215_53 Mask@@16 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_24441_17215_53#PolymorphicMapType_24441| Mask@@16) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17215_53 Mask@@16 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_24441) (o_2@@13 T@Ref) (f_4@@13 T@Field_30530_3373) ) (! (= (HasDirectPerm_17215_3373 Mask@@17 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_24441_17215_3373#PolymorphicMapType_24441| Mask@@17) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17215_3373 Mask@@17 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_24420) (i@@12 Int) (lo@@6 Int) (hi@@8 Int) (ar_1@@8 T@Seq_31572) ) (! (dummyFunction_3680 (|sum_array#triggerStateless| i@@12 lo@@6 hi@@8 ar_1@@8))
 :qid |stdinbpl.712:15|
 :skolemid |63|
 :pattern ( (|sum_array'| Heap@@11 i@@12 lo@@6 hi@@8 ar_1@@8))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_24420) (i@@13 Int) (hi@@9 Int) (ar_1@@9 T@Seq_3251) (v_2@@3 Int) ) (! (dummyFunction_3680 (|count_list#triggerStateless| i@@13 hi@@9 ar_1@@9 v_2@@3))
 :qid |stdinbpl.1479:15|
 :skolemid |126|
 :pattern ( (|count_list'| Heap@@12 i@@13 hi@@9 ar_1@@9 v_2@@3))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_24420) (i@@14 Int) (hi@@10 Int) (ar_1@@10 T@Seq_31572) (v_2@@4 Int) ) (! (dummyFunction_3680 (|count_array#triggerStateless| i@@14 hi@@10 ar_1@@10 v_2@@4))
 :qid |stdinbpl.1564:15|
 :skolemid |130|
 :pattern ( (|count_array'| Heap@@13 i@@14 hi@@10 ar_1@@10 v_2@@4))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_24420) (ExhaleHeap@@3 T@PolymorphicMapType_24420) (Mask@@18 T@PolymorphicMapType_24441) (pm_f_24@@1 T@Field_17215_66818) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@3 Mask@@18) (=> (and (HasDirectPerm_17215_66882 Mask@@18 null pm_f_24@@1) (IsPredicateField_17215_66909 pm_f_24@@1)) (and (and (and (and (forall ((o2_24 T@Ref) (f_63 T@Field_24480_53) ) (!  (=> (select (|PolymorphicMapType_24969_24480_53#PolymorphicMapType_24969| (select (|PolymorphicMapType_24420_17215_66995#PolymorphicMapType_24420| Heap@@14) null (PredicateMaskField_17215 pm_f_24@@1))) o2_24 f_63) (= (select (|PolymorphicMapType_24420_16995_53#PolymorphicMapType_24420| Heap@@14) o2_24 f_63) (select (|PolymorphicMapType_24420_16995_53#PolymorphicMapType_24420| ExhaleHeap@@3) o2_24 f_63)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24420_16995_53#PolymorphicMapType_24420| ExhaleHeap@@3) o2_24 f_63))
)) (forall ((o2_24@@0 T@Ref) (f_63@@0 T@Field_24493_24494) ) (!  (=> (select (|PolymorphicMapType_24969_24480_24494#PolymorphicMapType_24969| (select (|PolymorphicMapType_24420_17215_66995#PolymorphicMapType_24420| Heap@@14) null (PredicateMaskField_17215 pm_f_24@@1))) o2_24@@0 f_63@@0) (= (select (|PolymorphicMapType_24420_16998_16999#PolymorphicMapType_24420| Heap@@14) o2_24@@0 f_63@@0) (select (|PolymorphicMapType_24420_16998_16999#PolymorphicMapType_24420| ExhaleHeap@@3) o2_24@@0 f_63@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24420_16998_16999#PolymorphicMapType_24420| ExhaleHeap@@3) o2_24@@0 f_63@@0))
))) (forall ((o2_24@@1 T@Ref) (f_63@@1 T@Field_30530_3373) ) (!  (=> (select (|PolymorphicMapType_24969_24480_3373#PolymorphicMapType_24969| (select (|PolymorphicMapType_24420_17215_66995#PolymorphicMapType_24420| Heap@@14) null (PredicateMaskField_17215 pm_f_24@@1))) o2_24@@1 f_63@@1) (= (select (|PolymorphicMapType_24420_17215_3373#PolymorphicMapType_24420| Heap@@14) o2_24@@1 f_63@@1) (select (|PolymorphicMapType_24420_17215_3373#PolymorphicMapType_24420| ExhaleHeap@@3) o2_24@@1 f_63@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24420_17215_3373#PolymorphicMapType_24420| ExhaleHeap@@3) o2_24@@1 f_63@@1))
))) (forall ((o2_24@@2 T@Ref) (f_63@@2 T@Field_17215_66818) ) (!  (=> (select (|PolymorphicMapType_24969_24480_66818#PolymorphicMapType_24969| (select (|PolymorphicMapType_24420_17215_66995#PolymorphicMapType_24420| Heap@@14) null (PredicateMaskField_17215 pm_f_24@@1))) o2_24@@2 f_63@@2) (= (select (|PolymorphicMapType_24420_24480_66818#PolymorphicMapType_24420| Heap@@14) o2_24@@2 f_63@@2) (select (|PolymorphicMapType_24420_24480_66818#PolymorphicMapType_24420| ExhaleHeap@@3) o2_24@@2 f_63@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24420_24480_66818#PolymorphicMapType_24420| ExhaleHeap@@3) o2_24@@2 f_63@@2))
))) (forall ((o2_24@@3 T@Ref) (f_63@@3 T@Field_17215_66951) ) (!  (=> (select (|PolymorphicMapType_24969_24480_68129#PolymorphicMapType_24969| (select (|PolymorphicMapType_24420_17215_66995#PolymorphicMapType_24420| Heap@@14) null (PredicateMaskField_17215 pm_f_24@@1))) o2_24@@3 f_63@@3) (= (select (|PolymorphicMapType_24420_17215_66995#PolymorphicMapType_24420| Heap@@14) o2_24@@3 f_63@@3) (select (|PolymorphicMapType_24420_17215_66995#PolymorphicMapType_24420| ExhaleHeap@@3) o2_24@@3 f_63@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_24420_17215_66995#PolymorphicMapType_24420| ExhaleHeap@@3) o2_24@@3 f_63@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@3 Mask@@18) (IsPredicateField_17215_66909 pm_f_24@@1))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_24420) (ExhaleHeap@@4 T@PolymorphicMapType_24420) (Mask@@19 T@PolymorphicMapType_24441) (pm_f_24@@2 T@Field_17215_66818) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@4 Mask@@19) (=> (and (HasDirectPerm_17215_66882 Mask@@19 null pm_f_24@@2) (IsWandField_17215_68656 pm_f_24@@2)) (and (and (and (and (forall ((o2_24@@4 T@Ref) (f_63@@4 T@Field_24480_53) ) (!  (=> (select (|PolymorphicMapType_24969_24480_53#PolymorphicMapType_24969| (select (|PolymorphicMapType_24420_17215_66995#PolymorphicMapType_24420| Heap@@15) null (WandMaskField_17215 pm_f_24@@2))) o2_24@@4 f_63@@4) (= (select (|PolymorphicMapType_24420_16995_53#PolymorphicMapType_24420| Heap@@15) o2_24@@4 f_63@@4) (select (|PolymorphicMapType_24420_16995_53#PolymorphicMapType_24420| ExhaleHeap@@4) o2_24@@4 f_63@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24420_16995_53#PolymorphicMapType_24420| ExhaleHeap@@4) o2_24@@4 f_63@@4))
)) (forall ((o2_24@@5 T@Ref) (f_63@@5 T@Field_24493_24494) ) (!  (=> (select (|PolymorphicMapType_24969_24480_24494#PolymorphicMapType_24969| (select (|PolymorphicMapType_24420_17215_66995#PolymorphicMapType_24420| Heap@@15) null (WandMaskField_17215 pm_f_24@@2))) o2_24@@5 f_63@@5) (= (select (|PolymorphicMapType_24420_16998_16999#PolymorphicMapType_24420| Heap@@15) o2_24@@5 f_63@@5) (select (|PolymorphicMapType_24420_16998_16999#PolymorphicMapType_24420| ExhaleHeap@@4) o2_24@@5 f_63@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24420_16998_16999#PolymorphicMapType_24420| ExhaleHeap@@4) o2_24@@5 f_63@@5))
))) (forall ((o2_24@@6 T@Ref) (f_63@@6 T@Field_30530_3373) ) (!  (=> (select (|PolymorphicMapType_24969_24480_3373#PolymorphicMapType_24969| (select (|PolymorphicMapType_24420_17215_66995#PolymorphicMapType_24420| Heap@@15) null (WandMaskField_17215 pm_f_24@@2))) o2_24@@6 f_63@@6) (= (select (|PolymorphicMapType_24420_17215_3373#PolymorphicMapType_24420| Heap@@15) o2_24@@6 f_63@@6) (select (|PolymorphicMapType_24420_17215_3373#PolymorphicMapType_24420| ExhaleHeap@@4) o2_24@@6 f_63@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24420_17215_3373#PolymorphicMapType_24420| ExhaleHeap@@4) o2_24@@6 f_63@@6))
))) (forall ((o2_24@@7 T@Ref) (f_63@@7 T@Field_17215_66818) ) (!  (=> (select (|PolymorphicMapType_24969_24480_66818#PolymorphicMapType_24969| (select (|PolymorphicMapType_24420_17215_66995#PolymorphicMapType_24420| Heap@@15) null (WandMaskField_17215 pm_f_24@@2))) o2_24@@7 f_63@@7) (= (select (|PolymorphicMapType_24420_24480_66818#PolymorphicMapType_24420| Heap@@15) o2_24@@7 f_63@@7) (select (|PolymorphicMapType_24420_24480_66818#PolymorphicMapType_24420| ExhaleHeap@@4) o2_24@@7 f_63@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24420_24480_66818#PolymorphicMapType_24420| ExhaleHeap@@4) o2_24@@7 f_63@@7))
))) (forall ((o2_24@@8 T@Ref) (f_63@@8 T@Field_17215_66951) ) (!  (=> (select (|PolymorphicMapType_24969_24480_68129#PolymorphicMapType_24969| (select (|PolymorphicMapType_24420_17215_66995#PolymorphicMapType_24420| Heap@@15) null (WandMaskField_17215 pm_f_24@@2))) o2_24@@8 f_63@@8) (= (select (|PolymorphicMapType_24420_17215_66995#PolymorphicMapType_24420| Heap@@15) o2_24@@8 f_63@@8) (select (|PolymorphicMapType_24420_17215_66995#PolymorphicMapType_24420| ExhaleHeap@@4) o2_24@@8 f_63@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_24420_17215_66995#PolymorphicMapType_24420| ExhaleHeap@@4) o2_24@@8 f_63@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@4 Mask@@19) (IsWandField_17215_68656 pm_f_24@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.227:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3251| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.600:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3251| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_24420) (ExhaleHeap@@5 T@PolymorphicMapType_24420) (Mask@@20 T@PolymorphicMapType_24441) (o_52@@0 T@Ref) (f_63@@9 T@Field_17215_66951) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@5 Mask@@20) (=> (HasDirectPerm_17215_72656 Mask@@20 o_52@@0 f_63@@9) (= (select (|PolymorphicMapType_24420_17215_66995#PolymorphicMapType_24420| Heap@@16) o_52@@0 f_63@@9) (select (|PolymorphicMapType_24420_17215_66995#PolymorphicMapType_24420| ExhaleHeap@@5) o_52@@0 f_63@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@5 Mask@@20) (select (|PolymorphicMapType_24420_17215_66995#PolymorphicMapType_24420| ExhaleHeap@@5) o_52@@0 f_63@@9))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_24420) (ExhaleHeap@@6 T@PolymorphicMapType_24420) (Mask@@21 T@PolymorphicMapType_24441) (o_52@@1 T@Ref) (f_63@@10 T@Field_17215_66818) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@6 Mask@@21) (=> (HasDirectPerm_17215_66882 Mask@@21 o_52@@1 f_63@@10) (= (select (|PolymorphicMapType_24420_24480_66818#PolymorphicMapType_24420| Heap@@17) o_52@@1 f_63@@10) (select (|PolymorphicMapType_24420_24480_66818#PolymorphicMapType_24420| ExhaleHeap@@6) o_52@@1 f_63@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@6 Mask@@21) (select (|PolymorphicMapType_24420_24480_66818#PolymorphicMapType_24420| ExhaleHeap@@6) o_52@@1 f_63@@10))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_24420) (ExhaleHeap@@7 T@PolymorphicMapType_24420) (Mask@@22 T@PolymorphicMapType_24441) (o_52@@2 T@Ref) (f_63@@11 T@Field_24493_24494) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@7 Mask@@22) (=> (HasDirectPerm_17215_24494 Mask@@22 o_52@@2 f_63@@11) (= (select (|PolymorphicMapType_24420_16998_16999#PolymorphicMapType_24420| Heap@@18) o_52@@2 f_63@@11) (select (|PolymorphicMapType_24420_16998_16999#PolymorphicMapType_24420| ExhaleHeap@@7) o_52@@2 f_63@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@7 Mask@@22) (select (|PolymorphicMapType_24420_16998_16999#PolymorphicMapType_24420| ExhaleHeap@@7) o_52@@2 f_63@@11))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_24420) (ExhaleHeap@@8 T@PolymorphicMapType_24420) (Mask@@23 T@PolymorphicMapType_24441) (o_52@@3 T@Ref) (f_63@@12 T@Field_24480_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@8 Mask@@23) (=> (HasDirectPerm_17215_53 Mask@@23 o_52@@3 f_63@@12) (= (select (|PolymorphicMapType_24420_16995_53#PolymorphicMapType_24420| Heap@@19) o_52@@3 f_63@@12) (select (|PolymorphicMapType_24420_16995_53#PolymorphicMapType_24420| ExhaleHeap@@8) o_52@@3 f_63@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@8 Mask@@23) (select (|PolymorphicMapType_24420_16995_53#PolymorphicMapType_24420| ExhaleHeap@@8) o_52@@3 f_63@@12))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_24420) (ExhaleHeap@@9 T@PolymorphicMapType_24420) (Mask@@24 T@PolymorphicMapType_24441) (o_52@@4 T@Ref) (f_63@@13 T@Field_30530_3373) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@9 Mask@@24) (=> (HasDirectPerm_17215_3373 Mask@@24 o_52@@4 f_63@@13) (= (select (|PolymorphicMapType_24420_17215_3373#PolymorphicMapType_24420| Heap@@20) o_52@@4 f_63@@13) (select (|PolymorphicMapType_24420_17215_3373#PolymorphicMapType_24420| ExhaleHeap@@9) o_52@@4 f_63@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@9 Mask@@24) (select (|PolymorphicMapType_24420_17215_3373#PolymorphicMapType_24420| ExhaleHeap@@9) o_52@@4 f_63@@13))
)))
(assert (forall ((s0@@1 T@Seq_31572) (s1@@1 T@Seq_31572) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_17254|)) (not (= s1@@1 |Seq#Empty_17254|))) (= (|Seq#Length_17254| (|Seq#Append_31572| s0@@1 s1@@1)) (+ (|Seq#Length_17254| s0@@1) (|Seq#Length_17254| s1@@1))))
 :qid |stdinbpl.277:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_17254| (|Seq#Append_31572| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3251) (s1@@2 T@Seq_3251) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3251|)) (not (= s1@@2 |Seq#Empty_3251|))) (= (|Seq#Length_3251| (|Seq#Append_3251| s0@@2 s1@@2)) (+ (|Seq#Length_3251| s0@@2) (|Seq#Length_3251| s1@@2))))
 :qid |stdinbpl.277:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3251| (|Seq#Append_3251| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_17215_66951) ) (! (= (select (|PolymorphicMapType_24441_17215_71073#PolymorphicMapType_24441| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_24441_17215_71073#PolymorphicMapType_24441| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_17215_66818) ) (! (= (select (|PolymorphicMapType_24441_17215_66818#PolymorphicMapType_24441| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_24441_17215_66818#PolymorphicMapType_24441| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_24493_24494) ) (! (= (select (|PolymorphicMapType_24441_17215_24494#PolymorphicMapType_24441| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_24441_17215_24494#PolymorphicMapType_24441| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_24480_53) ) (! (= (select (|PolymorphicMapType_24441_17215_53#PolymorphicMapType_24441| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_24441_17215_53#PolymorphicMapType_24441| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_30530_3373) ) (! (= (select (|PolymorphicMapType_24441_17215_3373#PolymorphicMapType_24441| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_24441_17215_3373#PolymorphicMapType_24441| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_24420) (Mask@@25 T@PolymorphicMapType_24441) (i@@15 Int) (hi@@11 Int) (ar_1@@11 T@Seq_3251) (v_2@@5 Int) ) (!  (=> (and (state Heap@@21 Mask@@25) (< AssumeFunctionsAbove 5)) (=> (and (and (<= 0 i@@15) (<= i@@15 hi@@11)) (<= hi@@11 (|Seq#Length_3251| ar_1@@11))) (= (count_list Heap@@21 i@@15 hi@@11 ar_1@@11 v_2@@5) (ite (< i@@15 hi@@11) (+ (ite (= (|Seq#Index_3251| ar_1@@11 i@@15) v_2@@5) 1 0) (|count_list'| Heap@@21 (+ i@@15 1) hi@@11 ar_1@@11 v_2@@5)) 0))))
 :qid |stdinbpl.1485:15|
 :skolemid |127|
 :pattern ( (state Heap@@21 Mask@@25) (count_list Heap@@21 i@@15 hi@@11 ar_1@@11 v_2@@5))
)))
(assert (forall ((s@@15 T@Seq_31572) (t@@1 T@Seq_31572) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_17254| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_17254| s@@15)) (|Seq#Length_17254| s@@15)) n@@15) (= (|Seq#Drop_17254| (|Seq#Append_31572| s@@15 t@@1) n@@15) (|Seq#Drop_17254| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_17254| s@@15))))))
 :qid |stdinbpl.434:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_17254| (|Seq#Append_31572| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3251) (t@@2 T@Seq_3251) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3251| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3251| s@@16)) (|Seq#Length_3251| s@@16)) n@@16) (= (|Seq#Drop_3251| (|Seq#Append_3251| s@@16 t@@2) n@@16) (|Seq#Drop_3251| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3251| s@@16))))))
 :qid |stdinbpl.434:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3251| (|Seq#Append_3251| s@@16 t@@2) n@@16))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_24420) (i@@16 Int) (lo@@7 Int) (hi@@12 Int) (ar_1@@12 T@Seq_31572) ) (!  (and (= (sum_array Heap@@22 i@@16 lo@@7 hi@@12 ar_1@@12) (|sum_array'| Heap@@22 i@@16 lo@@7 hi@@12 ar_1@@12)) (dummyFunction_3680 (|sum_array#triggerStateless| i@@16 lo@@7 hi@@12 ar_1@@12)))
 :qid |stdinbpl.708:15|
 :skolemid |62|
 :pattern ( (sum_array Heap@@22 i@@16 lo@@7 hi@@12 ar_1@@12))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_24420) (i@@17 Int) (hi@@13 Int) (ar_1@@13 T@Seq_3251) (v_2@@6 Int) ) (!  (and (= (count_list Heap@@23 i@@17 hi@@13 ar_1@@13 v_2@@6) (|count_list'| Heap@@23 i@@17 hi@@13 ar_1@@13 v_2@@6)) (dummyFunction_3680 (|count_list#triggerStateless| i@@17 hi@@13 ar_1@@13 v_2@@6)))
 :qid |stdinbpl.1475:15|
 :skolemid |125|
 :pattern ( (count_list Heap@@23 i@@17 hi@@13 ar_1@@13 v_2@@6))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_24420) (i@@18 Int) (hi@@14 Int) (ar_1@@14 T@Seq_31572) (v_2@@7 Int) ) (!  (and (= (count_array Heap@@24 i@@18 hi@@14 ar_1@@14 v_2@@7) (|count_array'| Heap@@24 i@@18 hi@@14 ar_1@@14 v_2@@7)) (dummyFunction_3680 (|count_array#triggerStateless| i@@18 hi@@14 ar_1@@14 v_2@@7)))
 :qid |stdinbpl.1560:15|
 :skolemid |129|
 :pattern ( (count_array Heap@@24 i@@18 hi@@14 ar_1@@14 v_2@@7))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_24441) (SummandMask1 T@PolymorphicMapType_24441) (SummandMask2 T@PolymorphicMapType_24441) (o_2@@19 T@Ref) (f_4@@19 T@Field_17215_66951) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_24441_17215_71073#PolymorphicMapType_24441| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_24441_17215_71073#PolymorphicMapType_24441| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_24441_17215_71073#PolymorphicMapType_24441| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_24441_17215_71073#PolymorphicMapType_24441| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_24441_17215_71073#PolymorphicMapType_24441| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_24441_17215_71073#PolymorphicMapType_24441| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_24441) (SummandMask1@@0 T@PolymorphicMapType_24441) (SummandMask2@@0 T@PolymorphicMapType_24441) (o_2@@20 T@Ref) (f_4@@20 T@Field_17215_66818) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_24441_17215_66818#PolymorphicMapType_24441| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_24441_17215_66818#PolymorphicMapType_24441| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_24441_17215_66818#PolymorphicMapType_24441| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_24441_17215_66818#PolymorphicMapType_24441| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_24441_17215_66818#PolymorphicMapType_24441| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_24441_17215_66818#PolymorphicMapType_24441| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_24441) (SummandMask1@@1 T@PolymorphicMapType_24441) (SummandMask2@@1 T@PolymorphicMapType_24441) (o_2@@21 T@Ref) (f_4@@21 T@Field_24493_24494) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_24441_17215_24494#PolymorphicMapType_24441| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_24441_17215_24494#PolymorphicMapType_24441| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_24441_17215_24494#PolymorphicMapType_24441| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_24441_17215_24494#PolymorphicMapType_24441| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_24441_17215_24494#PolymorphicMapType_24441| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_24441_17215_24494#PolymorphicMapType_24441| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_24441) (SummandMask1@@2 T@PolymorphicMapType_24441) (SummandMask2@@2 T@PolymorphicMapType_24441) (o_2@@22 T@Ref) (f_4@@22 T@Field_24480_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_24441_17215_53#PolymorphicMapType_24441| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_24441_17215_53#PolymorphicMapType_24441| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_24441_17215_53#PolymorphicMapType_24441| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_24441_17215_53#PolymorphicMapType_24441| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_24441_17215_53#PolymorphicMapType_24441| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_24441_17215_53#PolymorphicMapType_24441| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_24441) (SummandMask1@@3 T@PolymorphicMapType_24441) (SummandMask2@@3 T@PolymorphicMapType_24441) (o_2@@23 T@Ref) (f_4@@23 T@Field_30530_3373) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_24441_17215_3373#PolymorphicMapType_24441| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_24441_17215_3373#PolymorphicMapType_24441| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_24441_17215_3373#PolymorphicMapType_24441| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_24441_17215_3373#PolymorphicMapType_24441| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_24441_17215_3373#PolymorphicMapType_24441| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_24441_17215_3373#PolymorphicMapType_24441| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_24420) (i@@19 Int) (lo@@8 Int) (hi@@15 Int) (step@@5 Int) (vmin@@5 Int) (vmax_1@@5 Int) (ar_1@@15 T@Seq_31572) ) (!  (and (= (sum_square Heap@@25 i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax_1@@5 ar_1@@15) (|sum_square'| Heap@@25 i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax_1@@5 ar_1@@15)) (dummyFunction_3680 (|sum_square#triggerStateless| i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax_1@@5 ar_1@@15)))
 :qid |stdinbpl.943:15|
 :skolemid |83|
 :pattern ( (sum_square Heap@@25 i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax_1@@5 ar_1@@15))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_24420) (Mask@@26 T@PolymorphicMapType_24441) (i@@20 Int) (hi@@16 Int) (ar_1@@16 T@Seq_3251) (v_2@@8 Int) ) (!  (=> (state Heap@@26 Mask@@26) (= (|count_list'| Heap@@26 i@@20 hi@@16 ar_1@@16 v_2@@8) (|count_list#frame| EmptyFrame i@@20 hi@@16 ar_1@@16 v_2@@8)))
 :qid |stdinbpl.1492:15|
 :skolemid |128|
 :pattern ( (state Heap@@26 Mask@@26) (|count_list'| Heap@@26 i@@20 hi@@16 ar_1@@16 v_2@@8))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3251| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3251| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.599:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3251| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_31572) (b T@Seq_31572) ) (!  (=> (|Seq#Equal_31572| a b) (= a b))
 :qid |stdinbpl.572:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_31572| a b))
)))
(assert (forall ((a@@0 T@Seq_3251) (b@@0 T@Seq_3251) ) (!  (=> (|Seq#Equal_3251| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.572:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3251| a@@0 b@@0))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_24420) (Mask@@27 T@PolymorphicMapType_24441) (i@@21 Int) (lo@@9 Int) (hi@@17 Int) (step@@6 Int) (vmin@@6 Int) (vmax_1@@6 Int) (ar_1@@17 T@Seq_31572) (v_2@@9 Int) ) (!  (=> (and (state Heap@@27 Mask@@27) (< AssumeFunctionsAbove 0)) (=> (and (and (and (and (<= 0 lo@@9) (and (<= lo@@9 hi@@17) (and (<= hi@@17 step@@6) (> step@@6 0)))) (and (<= 0 vmin@@6) (and (<= vmin@@6 i@@21) (<= i@@21 vmax_1@@6)))) (<= vmax_1@@6 (|Seq#Length_17254| ar_1@@17))) (forall ((ix_8@@1 Int) (jx_8@@1 Int) ) (!  (=> (and (>= ix_8@@1 0) (and (< ix_8@@1 (|Seq#Length_17254| ar_1@@17)) (and (>= jx_8@@1 0) (and (< jx_8@@1 (|Seq#Length_17254| ar_1@@17)) (not (= ix_8@@1 jx_8@@1)))))) (not (= (|Seq#Index_17254| ar_1@@17 ix_8@@1) (|Seq#Index_17254| ar_1@@17 jx_8@@1))))
 :qid |stdinbpl.1221:195|
 :skolemid |106|
 :pattern ( (|Seq#Index_17254| ar_1@@17 ix_8@@1) (|Seq#Index_17254| ar_1@@17 jx_8@@1))
))) (= (count_square Heap@@27 i@@21 lo@@9 hi@@17 step@@6 vmin@@6 vmax_1@@6 ar_1@@17 v_2@@9) (ite (< i@@21 vmax_1@@6) (+ (ite  (and (<= lo@@9 (mod i@@21 step@@6)) (and (< (mod i@@21 step@@6) hi@@17) (= (select (|PolymorphicMapType_24420_17215_3373#PolymorphicMapType_24420| Heap@@27) (|Seq#Index_17254| ar_1@@17 i@@21) Ref__Integer_value) v_2@@9))) 1 0) (|count_square'| Heap@@27 (+ i@@21 1) lo@@9 hi@@17 step@@6 vmin@@6 vmax_1@@6 ar_1@@17 v_2@@9)) 0))))
 :qid |stdinbpl.1219:15|
 :skolemid |107|
 :pattern ( (state Heap@@27 Mask@@27) (count_square Heap@@27 i@@21 lo@@9 hi@@17 step@@6 vmin@@6 vmax_1@@6 ar_1@@17 v_2@@9))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_24420) (i@@22 Int) (hi@@18 Int) (ar_1@@18 T@Seq_3251) ) (!  (and (= (sum_list Heap@@28 i@@22 hi@@18 ar_1@@18) (|sum_list'| Heap@@28 i@@22 hi@@18 ar_1@@18)) (dummyFunction_3680 (|sum_list#triggerStateless| i@@22 hi@@18 ar_1@@18)))
 :qid |stdinbpl.623:15|
 :skolemid |58|
 :pattern ( (sum_list Heap@@28 i@@22 hi@@18 ar_1@@18))
)))
(assert (forall ((s@@17 T@Seq_31572) (i@@23 Int) ) (!  (=> (and (<= 0 i@@23) (< i@@23 (|Seq#Length_17254| s@@17))) (|Seq#ContainsTrigger_17254| s@@17 (|Seq#Index_17254| s@@17 i@@23)))
 :qid |stdinbpl.465:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_17254| s@@17 i@@23))
)))
(assert (forall ((s@@18 T@Seq_3251) (i@@24 Int) ) (!  (=> (and (<= 0 i@@24) (< i@@24 (|Seq#Length_3251| s@@18))) (|Seq#ContainsTrigger_3251| s@@18 (|Seq#Index_3251| s@@18 i@@24)))
 :qid |stdinbpl.465:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3251| s@@18 i@@24))
)))
(assert (forall ((s0@@3 T@Seq_31572) (s1@@3 T@Seq_31572) ) (!  (and (=> (= s0@@3 |Seq#Empty_17254|) (= (|Seq#Append_31572| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_17254|) (= (|Seq#Append_31572| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.283:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_31572| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3251) (s1@@4 T@Seq_3251) ) (!  (and (=> (= s0@@4 |Seq#Empty_3251|) (= (|Seq#Append_3251| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3251|) (= (|Seq#Append_3251| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.283:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3251| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_17254| (|Seq#Singleton_17254| t@@3) 0) t@@3)
 :qid |stdinbpl.287:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_17254| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3251| (|Seq#Singleton_3251| t@@4) 0) t@@4)
 :qid |stdinbpl.287:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3251| t@@4))
)))
(assert (forall ((s@@19 T@Seq_31572) ) (! (<= 0 (|Seq#Length_17254| s@@19))
 :qid |stdinbpl.266:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_17254| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3251) ) (! (<= 0 (|Seq#Length_3251| s@@20))
 :qid |stdinbpl.266:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3251| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_31572) (s1@@5 T@Seq_31572) ) (!  (=> (|Seq#Equal_31572| s0@@5 s1@@5) (and (= (|Seq#Length_17254| s0@@5) (|Seq#Length_17254| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_17254| s0@@5))) (= (|Seq#Index_17254| s0@@5 j@@6) (|Seq#Index_17254| s1@@5 j@@6)))
 :qid |stdinbpl.562:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_17254| s0@@5 j@@6))
 :pattern ( (|Seq#Index_17254| s1@@5 j@@6))
))))
 :qid |stdinbpl.559:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_31572| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3251) (s1@@6 T@Seq_3251) ) (!  (=> (|Seq#Equal_3251| s0@@6 s1@@6) (and (= (|Seq#Length_3251| s0@@6) (|Seq#Length_3251| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_3251| s0@@6))) (= (|Seq#Index_3251| s0@@6 j@@7) (|Seq#Index_3251| s1@@6 j@@7)))
 :qid |stdinbpl.562:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3251| s0@@6 j@@7))
 :pattern ( (|Seq#Index_3251| s1@@6 j@@7))
))))
 :qid |stdinbpl.559:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3251| s0@@6 s1@@6))
)))
(assert (forall ((Heap2Heap@@1 T@PolymorphicMapType_24420) (Heap1Heap@@1 T@PolymorphicMapType_24420) (i@@25 Int) (hi@@19 Int) (ar_1@@19 T@Seq_31572) (v_2@@10 Int) ) (!  (=> (and (=  (and (<= 0 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10))) (< (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10)) hi@@19))  (and (<= 0 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10))) (< (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10)) hi@@19))) (=> (and (<= 0 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10))) (< (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10)) hi@@19)) (= (select (|PolymorphicMapType_24420_17215_3373#PolymorphicMapType_24420| Heap2Heap@@1) (|Seq#Index_17254| ar_1@@19 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10))) Ref__Integer_value) (select (|PolymorphicMapType_24420_17215_3373#PolymorphicMapType_24420| Heap1Heap@@1) (|Seq#Index_17254| ar_1@@19 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10))) Ref__Integer_value)))) (= (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10)))
 :qid |stdinbpl.1590:15|
 :skolemid |134|
 :pattern ( (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (succHeapTrans Heap2Heap@@1 Heap1Heap@@1))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_17254| (|Seq#Singleton_17254| t@@5)) 1)
 :qid |stdinbpl.274:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_17254| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3251| (|Seq#Singleton_3251| t@@6)) 1)
 :qid |stdinbpl.274:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3251| t@@6))
)))
(assert (forall ((Heap2Heap@@2 T@PolymorphicMapType_24420) (Heap1Heap@@2 T@PolymorphicMapType_24420) (i@@26 Int) (lo@@10 Int) (hi@@20 Int) (ar_1@@20 T@Seq_31572) ) (!  (=> (and (=  (and (<= lo@@10 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20))) (< (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20)) hi@@20))  (and (<= lo@@10 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20))) (< (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20)) hi@@20))) (=> (and (<= lo@@10 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20))) (< (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20)) hi@@20)) (= (select (|PolymorphicMapType_24420_17215_3373#PolymorphicMapType_24420| Heap2Heap@@2) (|Seq#Index_17254| ar_1@@20 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20))) Ref__Integer_value) (select (|PolymorphicMapType_24420_17215_3373#PolymorphicMapType_24420| Heap1Heap@@2) (|Seq#Index_17254| ar_1@@20 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20))) Ref__Integer_value)))) (= (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20)))
 :qid |stdinbpl.738:15|
 :skolemid |67|
 :pattern ( (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (succHeapTrans Heap2Heap@@2 Heap1Heap@@2))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_24420) (Mask@@28 T@PolymorphicMapType_24441) (i@@27 Int) (hi@@21 Int) (ar_1@@21 T@Seq_3251) ) (!  (=> (and (state Heap@@29 Mask@@28) (< AssumeFunctionsAbove 4)) (=> (and (and (<= 0 i@@27) (<= i@@27 hi@@21)) (<= hi@@21 (|Seq#Length_3251| ar_1@@21))) (= (sum_list Heap@@29 i@@27 hi@@21 ar_1@@21) (ite (< i@@27 hi@@21) (+ (|Seq#Index_3251| ar_1@@21 i@@27) (|sum_list'| Heap@@29 (+ i@@27 1) hi@@21 ar_1@@21)) 0))))
 :qid |stdinbpl.633:15|
 :skolemid |60|
 :pattern ( (state Heap@@29 Mask@@28) (sum_list Heap@@29 i@@27 hi@@21 ar_1@@21))
)))
(assert (forall ((s@@21 T@Seq_31572) (t@@7 T@Seq_31572) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_17254| s@@21))) (= (|Seq#Take_17254| (|Seq#Append_31572| s@@21 t@@7) n@@17) (|Seq#Take_17254| s@@21 n@@17)))
 :qid |stdinbpl.416:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_17254| (|Seq#Append_31572| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3251) (t@@8 T@Seq_3251) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3251| s@@22))) (= (|Seq#Take_3251| (|Seq#Append_3251| s@@22 t@@8) n@@18) (|Seq#Take_3251| s@@22 n@@18)))
 :qid |stdinbpl.416:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3251| (|Seq#Append_3251| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_31572) (i@@28 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@28) (< i@@28 (|Seq#Length_17254| s@@23))) (= (|Seq#Length_17254| (|Seq#Update_17254| s@@23 i@@28 v@@2)) (|Seq#Length_17254| s@@23)))
 :qid |stdinbpl.315:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_17254| (|Seq#Update_17254| s@@23 i@@28 v@@2)))
 :pattern ( (|Seq#Length_17254| s@@23) (|Seq#Update_17254| s@@23 i@@28 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3251) (i@@29 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@29) (< i@@29 (|Seq#Length_3251| s@@24))) (= (|Seq#Length_3251| (|Seq#Update_3251| s@@24 i@@29 v@@3)) (|Seq#Length_3251| s@@24)))
 :qid |stdinbpl.315:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3251| (|Seq#Update_3251| s@@24 i@@29 v@@3)))
 :pattern ( (|Seq#Length_3251| s@@24) (|Seq#Update_3251| s@@24 i@@29 v@@3))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_24420) (Mask@@29 T@PolymorphicMapType_24441) (i@@30 Int) (hi@@22 Int) (ar_1@@22 T@Seq_31572) (v_2@@11 Int) ) (!  (=> (and (state Heap@@30 Mask@@29) (< AssumeFunctionsAbove 1)) (=> (and (and (and (<= 0 i@@30) (<= i@@30 hi@@22)) (<= hi@@22 (|Seq#Length_17254| ar_1@@22))) (forall ((ix_8@@2 Int) (jx_8@@2 Int) ) (!  (=> (and (>= ix_8@@2 0) (and (< ix_8@@2 (|Seq#Length_17254| ar_1@@22)) (and (>= jx_8@@2 0) (and (< jx_8@@2 (|Seq#Length_17254| ar_1@@22)) (not (= ix_8@@2 jx_8@@2)))))) (not (= (|Seq#Index_17254| ar_1@@22 ix_8@@2) (|Seq#Index_17254| ar_1@@22 jx_8@@2))))
 :qid |stdinbpl.1572:112|
 :skolemid |131|
 :pattern ( (|Seq#Index_17254| ar_1@@22 ix_8@@2) (|Seq#Index_17254| ar_1@@22 jx_8@@2))
))) (= (count_array Heap@@30 i@@30 hi@@22 ar_1@@22 v_2@@11) (ite (< i@@30 hi@@22) (+ (ite (= (select (|PolymorphicMapType_24420_17215_3373#PolymorphicMapType_24420| Heap@@30) (|Seq#Index_17254| ar_1@@22 i@@30) Ref__Integer_value) v_2@@11) 1 0) (|count_array'| Heap@@30 (+ i@@30 1) hi@@22 ar_1@@22 v_2@@11)) 0))))
 :qid |stdinbpl.1570:15|
 :skolemid |132|
 :pattern ( (state Heap@@30 Mask@@29) (count_array Heap@@30 i@@30 hi@@22 ar_1@@22 v_2@@11))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_24420) (o_23 T@Ref) (f_65 T@Field_17215_66818) (v@@4 T@FrameType) ) (! (succHeap Heap@@31 (PolymorphicMapType_24420 (|PolymorphicMapType_24420_16995_53#PolymorphicMapType_24420| Heap@@31) (|PolymorphicMapType_24420_16998_16999#PolymorphicMapType_24420| Heap@@31) (|PolymorphicMapType_24420_17215_3373#PolymorphicMapType_24420| Heap@@31) (|PolymorphicMapType_24420_17215_66995#PolymorphicMapType_24420| Heap@@31) (store (|PolymorphicMapType_24420_24480_66818#PolymorphicMapType_24420| Heap@@31) o_23 f_65 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_24420 (|PolymorphicMapType_24420_16995_53#PolymorphicMapType_24420| Heap@@31) (|PolymorphicMapType_24420_16998_16999#PolymorphicMapType_24420| Heap@@31) (|PolymorphicMapType_24420_17215_3373#PolymorphicMapType_24420| Heap@@31) (|PolymorphicMapType_24420_17215_66995#PolymorphicMapType_24420| Heap@@31) (store (|PolymorphicMapType_24420_24480_66818#PolymorphicMapType_24420| Heap@@31) o_23 f_65 v@@4)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_24420) (o_23@@0 T@Ref) (f_65@@0 T@Field_17215_66951) (v@@5 T@PolymorphicMapType_24969) ) (! (succHeap Heap@@32 (PolymorphicMapType_24420 (|PolymorphicMapType_24420_16995_53#PolymorphicMapType_24420| Heap@@32) (|PolymorphicMapType_24420_16998_16999#PolymorphicMapType_24420| Heap@@32) (|PolymorphicMapType_24420_17215_3373#PolymorphicMapType_24420| Heap@@32) (store (|PolymorphicMapType_24420_17215_66995#PolymorphicMapType_24420| Heap@@32) o_23@@0 f_65@@0 v@@5) (|PolymorphicMapType_24420_24480_66818#PolymorphicMapType_24420| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_24420 (|PolymorphicMapType_24420_16995_53#PolymorphicMapType_24420| Heap@@32) (|PolymorphicMapType_24420_16998_16999#PolymorphicMapType_24420| Heap@@32) (|PolymorphicMapType_24420_17215_3373#PolymorphicMapType_24420| Heap@@32) (store (|PolymorphicMapType_24420_17215_66995#PolymorphicMapType_24420| Heap@@32) o_23@@0 f_65@@0 v@@5) (|PolymorphicMapType_24420_24480_66818#PolymorphicMapType_24420| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_24420) (o_23@@1 T@Ref) (f_65@@1 T@Field_30530_3373) (v@@6 Int) ) (! (succHeap Heap@@33 (PolymorphicMapType_24420 (|PolymorphicMapType_24420_16995_53#PolymorphicMapType_24420| Heap@@33) (|PolymorphicMapType_24420_16998_16999#PolymorphicMapType_24420| Heap@@33) (store (|PolymorphicMapType_24420_17215_3373#PolymorphicMapType_24420| Heap@@33) o_23@@1 f_65@@1 v@@6) (|PolymorphicMapType_24420_17215_66995#PolymorphicMapType_24420| Heap@@33) (|PolymorphicMapType_24420_24480_66818#PolymorphicMapType_24420| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_24420 (|PolymorphicMapType_24420_16995_53#PolymorphicMapType_24420| Heap@@33) (|PolymorphicMapType_24420_16998_16999#PolymorphicMapType_24420| Heap@@33) (store (|PolymorphicMapType_24420_17215_3373#PolymorphicMapType_24420| Heap@@33) o_23@@1 f_65@@1 v@@6) (|PolymorphicMapType_24420_17215_66995#PolymorphicMapType_24420| Heap@@33) (|PolymorphicMapType_24420_24480_66818#PolymorphicMapType_24420| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_24420) (o_23@@2 T@Ref) (f_65@@2 T@Field_24493_24494) (v@@7 T@Ref) ) (! (succHeap Heap@@34 (PolymorphicMapType_24420 (|PolymorphicMapType_24420_16995_53#PolymorphicMapType_24420| Heap@@34) (store (|PolymorphicMapType_24420_16998_16999#PolymorphicMapType_24420| Heap@@34) o_23@@2 f_65@@2 v@@7) (|PolymorphicMapType_24420_17215_3373#PolymorphicMapType_24420| Heap@@34) (|PolymorphicMapType_24420_17215_66995#PolymorphicMapType_24420| Heap@@34) (|PolymorphicMapType_24420_24480_66818#PolymorphicMapType_24420| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_24420 (|PolymorphicMapType_24420_16995_53#PolymorphicMapType_24420| Heap@@34) (store (|PolymorphicMapType_24420_16998_16999#PolymorphicMapType_24420| Heap@@34) o_23@@2 f_65@@2 v@@7) (|PolymorphicMapType_24420_17215_3373#PolymorphicMapType_24420| Heap@@34) (|PolymorphicMapType_24420_17215_66995#PolymorphicMapType_24420| Heap@@34) (|PolymorphicMapType_24420_24480_66818#PolymorphicMapType_24420| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_24420) (o_23@@3 T@Ref) (f_65@@3 T@Field_24480_53) (v@@8 Bool) ) (! (succHeap Heap@@35 (PolymorphicMapType_24420 (store (|PolymorphicMapType_24420_16995_53#PolymorphicMapType_24420| Heap@@35) o_23@@3 f_65@@3 v@@8) (|PolymorphicMapType_24420_16998_16999#PolymorphicMapType_24420| Heap@@35) (|PolymorphicMapType_24420_17215_3373#PolymorphicMapType_24420| Heap@@35) (|PolymorphicMapType_24420_17215_66995#PolymorphicMapType_24420| Heap@@35) (|PolymorphicMapType_24420_24480_66818#PolymorphicMapType_24420| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_24420 (store (|PolymorphicMapType_24420_16995_53#PolymorphicMapType_24420| Heap@@35) o_23@@3 f_65@@3 v@@8) (|PolymorphicMapType_24420_16998_16999#PolymorphicMapType_24420| Heap@@35) (|PolymorphicMapType_24420_17215_3373#PolymorphicMapType_24420| Heap@@35) (|PolymorphicMapType_24420_17215_66995#PolymorphicMapType_24420| Heap@@35) (|PolymorphicMapType_24420_24480_66818#PolymorphicMapType_24420| Heap@@35)))
)))
(assert (forall ((s@@25 T@Seq_31572) (t@@9 T@Seq_31572) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_17254| s@@25))) (= (|Seq#Drop_17254| (|Seq#Append_31572| s@@25 t@@9) n@@19) (|Seq#Append_31572| (|Seq#Drop_17254| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.430:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_17254| (|Seq#Append_31572| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3251) (t@@10 T@Seq_3251) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3251| s@@26))) (= (|Seq#Drop_3251| (|Seq#Append_3251| s@@26 t@@10) n@@20) (|Seq#Append_3251| (|Seq#Drop_3251| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.430:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3251| (|Seq#Append_3251| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_31572) (n@@21 Int) (i@@31 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@31)) (< i@@31 (|Seq#Length_17254| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@31 n@@21) n@@21) i@@31) (= (|Seq#Index_17254| (|Seq#Drop_17254| s@@27 n@@21) (|Seq#Sub| i@@31 n@@21)) (|Seq#Index_17254| s@@27 i@@31))))
 :qid |stdinbpl.366:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_17254| s@@27 n@@21) (|Seq#Index_17254| s@@27 i@@31))
)))
(assert (forall ((s@@28 T@Seq_3251) (n@@22 Int) (i@@32 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@32)) (< i@@32 (|Seq#Length_3251| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@32 n@@22) n@@22) i@@32) (= (|Seq#Index_3251| (|Seq#Drop_3251| s@@28 n@@22) (|Seq#Sub| i@@32 n@@22)) (|Seq#Index_3251| s@@28 i@@32))))
 :qid |stdinbpl.366:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3251| s@@28 n@@22) (|Seq#Index_3251| s@@28 i@@32))
)))
(assert (forall ((s0@@7 T@Seq_31572) (s1@@7 T@Seq_31572) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_17254|)) (not (= s1@@7 |Seq#Empty_17254|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_17254| s0@@7))) (= (|Seq#Index_17254| (|Seq#Append_31572| s0@@7 s1@@7) n@@23) (|Seq#Index_17254| s0@@7 n@@23)))
 :qid |stdinbpl.306:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_17254| (|Seq#Append_31572| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_17254| s0@@7 n@@23) (|Seq#Append_31572| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3251) (s1@@8 T@Seq_3251) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3251|)) (not (= s1@@8 |Seq#Empty_3251|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3251| s0@@8))) (= (|Seq#Index_3251| (|Seq#Append_3251| s0@@8 s1@@8) n@@24) (|Seq#Index_3251| s0@@8 n@@24)))
 :qid |stdinbpl.306:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3251| (|Seq#Append_3251| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3251| s0@@8 n@@24) (|Seq#Append_3251| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_31572) (s1@@9 T@Seq_31572) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_17254|)) (not (= s1@@9 |Seq#Empty_17254|))) (<= 0 m)) (< m (|Seq#Length_17254| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_17254| s0@@9)) (|Seq#Length_17254| s0@@9)) m) (= (|Seq#Index_17254| (|Seq#Append_31572| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_17254| s0@@9))) (|Seq#Index_17254| s1@@9 m))))
 :qid |stdinbpl.311:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_17254| s1@@9 m) (|Seq#Append_31572| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3251) (s1@@10 T@Seq_3251) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3251|)) (not (= s1@@10 |Seq#Empty_3251|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3251| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3251| s0@@10)) (|Seq#Length_3251| s0@@10)) m@@0) (= (|Seq#Index_3251| (|Seq#Append_3251| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3251| s0@@10))) (|Seq#Index_3251| s1@@10 m@@0))))
 :qid |stdinbpl.311:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3251| s1@@10 m@@0) (|Seq#Append_3251| s0@@10 s1@@10))
)))
(assert (forall ((o_23@@4 T@Ref) (f_15 T@Field_24493_24494) (Heap@@36 T@PolymorphicMapType_24420) ) (!  (=> (select (|PolymorphicMapType_24420_16995_53#PolymorphicMapType_24420| Heap@@36) o_23@@4 $allocated) (select (|PolymorphicMapType_24420_16995_53#PolymorphicMapType_24420| Heap@@36) (select (|PolymorphicMapType_24420_16998_16999#PolymorphicMapType_24420| Heap@@36) o_23@@4 f_15) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_24420_16998_16999#PolymorphicMapType_24420| Heap@@36) o_23@@4 f_15))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_24420) (Mask@@30 T@PolymorphicMapType_24441) (i@@33 Int) (lo@@11 Int) (hi@@23 Int) (step@@7 Int) (vmin@@7 Int) (vmax_1@@7 Int) (ar_1@@23 T@Seq_31572) ) (!  (=> (state Heap@@37 Mask@@30) (= (|sum_square'| Heap@@37 i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax_1@@7 ar_1@@23) (|sum_square#frame| (FrameFragment_4232 (|sum_square#condqp2| Heap@@37 i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax_1@@7 ar_1@@23)) i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax_1@@7 ar_1@@23)))
 :qid |stdinbpl.963:15|
 :skolemid |87|
 :pattern ( (state Heap@@37 Mask@@30) (|sum_square'| Heap@@37 i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax_1@@7 ar_1@@23))
)))
(assert (forall ((s@@29 T@Seq_31572) (x@@3 T@Ref) (i@@34 Int) ) (!  (=> (and (and (<= 0 i@@34) (< i@@34 (|Seq#Length_17254| s@@29))) (= (|Seq#Index_17254| s@@29 i@@34) x@@3)) (|Seq#Contains_31572| s@@29 x@@3))
 :qid |stdinbpl.463:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_31572| s@@29 x@@3) (|Seq#Index_17254| s@@29 i@@34))
)))
(assert (forall ((s@@30 T@Seq_3251) (x@@4 Int) (i@@35 Int) ) (!  (=> (and (and (<= 0 i@@35) (< i@@35 (|Seq#Length_3251| s@@30))) (= (|Seq#Index_3251| s@@30 i@@35) x@@4)) (|Seq#Contains_3251| s@@30 x@@4))
 :qid |stdinbpl.463:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3251| s@@30 x@@4) (|Seq#Index_3251| s@@30 i@@35))
)))
(assert (forall ((s0@@11 T@Seq_31572) (s1@@11 T@Seq_31572) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_31572| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_31572| s0@@11 s1@@11))) (not (= (|Seq#Length_17254| s0@@11) (|Seq#Length_17254| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_31572| s0@@11 s1@@11))) (= (|Seq#Length_17254| s0@@11) (|Seq#Length_17254| s1@@11))) (= (|Seq#SkolemDiff_31572| s0@@11 s1@@11) (|Seq#SkolemDiff_31572| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_31572| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_31572| s0@@11 s1@@11) (|Seq#Length_17254| s0@@11))) (not (= (|Seq#Index_17254| s0@@11 (|Seq#SkolemDiff_31572| s0@@11 s1@@11)) (|Seq#Index_17254| s1@@11 (|Seq#SkolemDiff_31572| s0@@11 s1@@11))))))
 :qid |stdinbpl.567:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_31572| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3251) (s1@@12 T@Seq_3251) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3251| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3251| s0@@12 s1@@12))) (not (= (|Seq#Length_3251| s0@@12) (|Seq#Length_3251| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3251| s0@@12 s1@@12))) (= (|Seq#Length_3251| s0@@12) (|Seq#Length_3251| s1@@12))) (= (|Seq#SkolemDiff_3251| s0@@12 s1@@12) (|Seq#SkolemDiff_3251| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3251| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3251| s0@@12 s1@@12) (|Seq#Length_3251| s0@@12))) (not (= (|Seq#Index_3251| s0@@12 (|Seq#SkolemDiff_3251| s0@@12 s1@@12)) (|Seq#Index_3251| s1@@12 (|Seq#SkolemDiff_3251| s0@@12 s1@@12))))))
 :qid |stdinbpl.567:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3251| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_17215_66818) (v_1@@0 T@FrameType) (q T@Field_17215_66818) (w@@0 T@FrameType) (r T@Field_17215_66818) (u T@FrameType) ) (!  (=> (and (InsidePredicate_24480_24480 p@@1 v_1@@0 q w@@0) (InsidePredicate_24480_24480 q w@@0 r u)) (InsidePredicate_24480_24480 p@@1 v_1@@0 r u))
 :qid |stdinbpl.234:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24480_24480 p@@1 v_1@@0 q w@@0) (InsidePredicate_24480_24480 q w@@0 r u))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_24420) (i@@36 Int) (lo@@12 Int) (hi@@24 Int) (step@@8 Int) (vmin@@8 Int) (vmax_1@@8 Int) (ar_1@@24 T@Seq_31572) ) (! (dummyFunction_3680 (|sum_square#triggerStateless| i@@36 lo@@12 hi@@24 step@@8 vmin@@8 vmax_1@@8 ar_1@@24))
 :qid |stdinbpl.947:15|
 :skolemid |84|
 :pattern ( (|sum_square'| Heap@@38 i@@36 lo@@12 hi@@24 step@@8 vmin@@8 vmax_1@@8 ar_1@@24))
)))
(assert (forall ((s@@31 T@Seq_31572) ) (!  (=> (= (|Seq#Length_17254| s@@31) 0) (= s@@31 |Seq#Empty_17254|))
 :qid |stdinbpl.270:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_17254| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3251) ) (!  (=> (= (|Seq#Length_3251| s@@32) 0) (= s@@32 |Seq#Empty_3251|))
 :qid |stdinbpl.270:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3251| s@@32))
)))
(assert (forall ((s@@33 T@Seq_31572) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_17254| s@@33 n@@25) |Seq#Empty_17254|))
 :qid |stdinbpl.446:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_17254| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3251) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3251| s@@34 n@@26) |Seq#Empty_3251|))
 :qid |stdinbpl.446:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3251| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@39 T@PolymorphicMapType_24420) (Mask@@31 T@PolymorphicMapType_24441) (i@@37 Int) (lo@@13 Int) (hi@@25 Int) (ar_1@@25 T@Seq_31572) ) (!  (=> (state Heap@@39 Mask@@31) (= (|sum_array'| Heap@@39 i@@37 lo@@13 hi@@25 ar_1@@25) (|sum_array#frame| (FrameFragment_4232 (|sum_array#condqp1| Heap@@39 i@@37 lo@@13 hi@@25 ar_1@@25)) i@@37 lo@@13 hi@@25 ar_1@@25)))
 :qid |stdinbpl.728:15|
 :skolemid |66|
 :pattern ( (state Heap@@39 Mask@@31) (|sum_array'| Heap@@39 i@@37 lo@@13 hi@@25 ar_1@@25))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_24420) (Mask@@32 T@PolymorphicMapType_24441) (i@@38 Int) (hi@@26 Int) (ar_1@@26 T@Seq_31572) (v_2@@12 Int) ) (!  (=> (state Heap@@40 Mask@@32) (= (|count_array'| Heap@@40 i@@38 hi@@26 ar_1@@26 v_2@@12) (|count_array#frame| (FrameFragment_4232 (|count_array#condqp4| Heap@@40 i@@38 hi@@26 ar_1@@26 v_2@@12)) i@@38 hi@@26 ar_1@@26 v_2@@12)))
 :qid |stdinbpl.1580:15|
 :skolemid |133|
 :pattern ( (state Heap@@40 Mask@@32) (|count_array'| Heap@@40 i@@38 hi@@26 ar_1@@26 v_2@@12))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun ix_4 () Int)
(declare-fun ar_1@@27 () T@Seq_31572)
(declare-fun jx_4 () Int)
(declare-fun wildcard@0 () Real)
(declare-fun vmin@@9 () Int)
(declare-fun vmax_1@@9 () Int)
(declare-fun lo@@14 () Int)
(declare-fun step@@9 () Int)
(declare-fun hi@@27 () Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_24441)
(declare-fun Heap@@41 () T@PolymorphicMapType_24420)
(declare-fun neverTriggered6 (Int) Bool)
(declare-fun i@@39 () Int)
(declare-fun |count_square#trigger| (T@FrameType Int Int Int Int Int Int T@Seq_31572 Int) Bool)
(declare-fun v_2@@13 () Int)
(declare-fun wildcard () Real)
(declare-fun qpRange5 (T@Ref) Bool)
(declare-fun invRecv5 (T@Ref) Int)
(declare-fun k_14 () Int)
(declare-fun ix_11 () Int)
(declare-fun jx_11 () Int)
(set-info :boogie-vc-id |count_square#definedness|)
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
 (=> (= (ControlFlow 0 0) 56) (let ((anon20_correct true))
(let ((anon36_Else_correct  (=> (and (not (and (>= ix_4 0) (and (< ix_4 (|Seq#Length_17254| ar_1@@27)) (and (>= jx_4 0) (and (< jx_4 (|Seq#Length_17254| ar_1@@27)) (not (= ix_4 jx_4))))))) (= (ControlFlow 0 32) 29)) anon20_correct)))
(let ((anon36_Then_correct  (=> (and (>= ix_4 0) (and (< ix_4 (|Seq#Length_17254| ar_1@@27)) (and (>= jx_4 0) (and (< jx_4 (|Seq#Length_17254| ar_1@@27)) (not (= ix_4 jx_4)))))) (and (=> (= (ControlFlow 0 30) (- 0 31)) (not (= (|Seq#Index_17254| ar_1@@27 ix_4) (|Seq#Index_17254| ar_1@@27 jx_4)))) (=> (not (= (|Seq#Index_17254| ar_1@@27 ix_4) (|Seq#Index_17254| ar_1@@27 jx_4))) (=> (= (ControlFlow 0 30) 29) anon20_correct))))))
(let ((anon35_Else_correct  (=> (and (forall ((ix_5_1 Int) (jx_5_1 Int) ) (!  (=> (and (>= ix_5_1 0) (and (< ix_5_1 (|Seq#Length_17254| ar_1@@27)) (and (>= jx_5_1 0) (and (< jx_5_1 (|Seq#Length_17254| ar_1@@27)) (not (= ix_5_1 jx_5_1)))))) (not (= (|Seq#Index_17254| ar_1@@27 ix_5_1) (|Seq#Index_17254| ar_1@@27 jx_5_1))))
 :qid |stdinbpl.1405:26|
 :skolemid |117|
 :pattern ( (|Seq#Index_17254| ar_1@@27 ix_5_1) (|Seq#Index_17254| ar_1@@27 jx_5_1))
)) (> wildcard@0 0.0)) (and (=> (= (ControlFlow 0 25) (- 0 28)) (forall ((k_5 Int) ) (!  (=> (and (<= vmin@@9 k_5) (and (< k_5 vmax_1@@9) (and (<= lo@@14 (mod k_5 step@@9)) (< (mod k_5 step@@9) hi@@27)))) (> (select (|PolymorphicMapType_24441_17215_3373#PolymorphicMapType_24441| QPMask@0) (|Seq#Index_17254| ar_1@@27 k_5) Ref__Integer_value) NoPerm))
 :qid |stdinbpl.1413:21|
 :skolemid |118|
))) (=> (forall ((k_5@@0 Int) ) (!  (=> (and (<= vmin@@9 k_5@@0) (and (< k_5@@0 vmax_1@@9) (and (<= lo@@14 (mod k_5@@0 step@@9)) (< (mod k_5@@0 step@@9) hi@@27)))) (> (select (|PolymorphicMapType_24441_17215_3373#PolymorphicMapType_24441| QPMask@0) (|Seq#Index_17254| ar_1@@27 k_5@@0) Ref__Integer_value) NoPerm))
 :qid |stdinbpl.1413:21|
 :skolemid |118|
)) (=> (forall ((k_5@@1 Int) ) (!  (=> (and (<= vmin@@9 k_5@@1) (and (< k_5@@1 vmax_1@@9) (and (<= lo@@14 (mod k_5@@1 step@@9)) (< (mod k_5@@1 step@@9) hi@@27)))) (< wildcard@0 (select (|PolymorphicMapType_24441_17215_3373#PolymorphicMapType_24441| QPMask@0) (|Seq#Index_17254| ar_1@@27 k_5@@1) Ref__Integer_value)))
 :qid |stdinbpl.1417:26|
 :skolemid |119|
)) (and (=> (= (ControlFlow 0 25) (- 0 27)) (forall ((k_5@@2 Int) ) (!  (=> (and (and (<= vmin@@9 k_5@@2) (and (< k_5@@2 vmax_1@@9) (and (<= lo@@14 (mod k_5@@2 step@@9)) (< (mod k_5@@2 step@@9) hi@@27)))) (dummyFunction_3680 (select (|PolymorphicMapType_24420_17215_3373#PolymorphicMapType_24420| Heap@@41) (|Seq#Index_17254| ar_1@@27 k_5@@2) Ref__Integer_value))) (>= wildcard@0 NoPerm))
 :qid |stdinbpl.1424:23|
 :skolemid |120|
 :pattern ( (|Seq#Index_17254| ar_1@@27 k_5@@2))
 :pattern ( (|Seq#Index_17254| ar_1@@27 k_5@@2))
))) (=> (forall ((k_5@@3 Int) ) (!  (=> (and (and (<= vmin@@9 k_5@@3) (and (< k_5@@3 vmax_1@@9) (and (<= lo@@14 (mod k_5@@3 step@@9)) (< (mod k_5@@3 step@@9) hi@@27)))) (dummyFunction_3680 (select (|PolymorphicMapType_24420_17215_3373#PolymorphicMapType_24420| Heap@@41) (|Seq#Index_17254| ar_1@@27 k_5@@3) Ref__Integer_value))) (>= wildcard@0 NoPerm))
 :qid |stdinbpl.1424:23|
 :skolemid |120|
 :pattern ( (|Seq#Index_17254| ar_1@@27 k_5@@3))
 :pattern ( (|Seq#Index_17254| ar_1@@27 k_5@@3))
)) (and (=> (= (ControlFlow 0 25) (- 0 26)) (forall ((k_5@@4 Int) (k_5_1 Int) ) (!  (=> (and (and (and (and (not (= k_5@@4 k_5_1)) (and (<= vmin@@9 k_5@@4) (and (< k_5@@4 vmax_1@@9) (and (<= lo@@14 (mod k_5@@4 step@@9)) (< (mod k_5@@4 step@@9) hi@@27))))) (and (<= vmin@@9 k_5_1) (and (< k_5_1 vmax_1@@9) (and (<= lo@@14 (mod k_5_1 step@@9)) (< (mod k_5_1 step@@9) hi@@27))))) (< NoPerm wildcard@0)) (< NoPerm wildcard@0)) (not (= (|Seq#Index_17254| ar_1@@27 k_5@@4) (|Seq#Index_17254| ar_1@@27 k_5_1))))
 :qid |stdinbpl.1431:23|
 :skolemid |121|
 :pattern ( (neverTriggered6 k_5@@4) (neverTriggered6 k_5_1))
))) (=> (forall ((k_5@@5 Int) (k_5_1@@0 Int) ) (!  (=> (and (and (and (and (not (= k_5@@5 k_5_1@@0)) (and (<= vmin@@9 k_5@@5) (and (< k_5@@5 vmax_1@@9) (and (<= lo@@14 (mod k_5@@5 step@@9)) (< (mod k_5@@5 step@@9) hi@@27))))) (and (<= vmin@@9 k_5_1@@0) (and (< k_5_1@@0 vmax_1@@9) (and (<= lo@@14 (mod k_5_1@@0 step@@9)) (< (mod k_5_1@@0 step@@9) hi@@27))))) (< NoPerm wildcard@0)) (< NoPerm wildcard@0)) (not (= (|Seq#Index_17254| ar_1@@27 k_5@@5) (|Seq#Index_17254| ar_1@@27 k_5_1@@0))))
 :qid |stdinbpl.1431:23|
 :skolemid |121|
 :pattern ( (neverTriggered6 k_5@@5) (neverTriggered6 k_5_1@@0))
)) (=> (= (ControlFlow 0 25) (- 0 24)) (forall ((k_5@@6 Int) ) (!  (=> (and (<= vmin@@9 k_5@@6) (and (< k_5@@6 vmax_1@@9) (and (<= lo@@14 (mod k_5@@6 step@@9)) (< (mod k_5@@6 step@@9) hi@@27)))) (=> (> wildcard@0 NoPerm) (> (select (|PolymorphicMapType_24441_17215_3373#PolymorphicMapType_24441| QPMask@0) (|Seq#Index_17254| ar_1@@27 k_5@@6) Ref__Integer_value) NoPerm)))
 :qid |stdinbpl.1438:23|
 :skolemid |122|
 :pattern ( (|Seq#Index_17254| ar_1@@27 k_5@@6))
 :pattern ( (|Seq#Index_17254| ar_1@@27 k_5@@6))
)))))))))))))
(let ((anon34_Then_correct  (and (=> (= (ControlFlow 0 33) (- 0 41)) (<= 0 lo@@14)) (=> (<= 0 lo@@14) (and (=> (= (ControlFlow 0 33) (- 0 40)) (<= lo@@14 hi@@27)) (=> (<= lo@@14 hi@@27) (and (=> (= (ControlFlow 0 33) (- 0 39)) (<= hi@@27 step@@9)) (=> (<= hi@@27 step@@9) (and (=> (= (ControlFlow 0 33) (- 0 38)) (> step@@9 0)) (=> (> step@@9 0) (and (=> (= (ControlFlow 0 33) (- 0 37)) (<= 0 vmin@@9)) (=> (<= 0 vmin@@9) (and (=> (= (ControlFlow 0 33) (- 0 36)) (<= vmin@@9 (+ i@@39 1))) (=> (<= vmin@@9 (+ i@@39 1)) (and (=> (= (ControlFlow 0 33) (- 0 35)) (<= (+ i@@39 1) vmax_1@@9)) (=> (<= (+ i@@39 1) vmax_1@@9) (and (=> (= (ControlFlow 0 33) (- 0 34)) (<= vmax_1@@9 (|Seq#Length_17254| ar_1@@27))) (=> (<= vmax_1@@9 (|Seq#Length_17254| ar_1@@27)) (and (and (=> (= (ControlFlow 0 33) 25) anon35_Else_correct) (=> (= (ControlFlow 0 33) 30) anon36_Then_correct)) (=> (= (ControlFlow 0 33) 32) anon36_Else_correct))))))))))))))))))))
(let ((anon23_correct true))
(let ((anon34_Else_correct  (=> (and (|count_square#trigger| (FrameFragment_4232 (|count_square#condqp3| Heap@@41 (+ i@@39 1) lo@@14 hi@@27 step@@9 vmin@@9 vmax_1@@9 ar_1@@27 v_2@@13)) (+ i@@39 1) lo@@14 hi@@27 step@@9 vmin@@9 vmax_1@@9 ar_1@@27 v_2@@13) (= (ControlFlow 0 23) 21)) anon23_correct)))
(let ((anon33_Else_correct  (=> (<= hi@@27 (mod i@@39 step@@9)) (and (=> (= (ControlFlow 0 47) 33) anon34_Then_correct) (=> (= (ControlFlow 0 47) 23) anon34_Else_correct)))))
(let ((anon33_Then_correct  (=> (< (mod i@@39 step@@9) hi@@27) (and (=> (= (ControlFlow 0 43) (- 0 46)) (>= i@@39 0)) (=> (>= i@@39 0) (and (=> (= (ControlFlow 0 43) (- 0 45)) (< i@@39 (|Seq#Length_17254| ar_1@@27))) (=> (< i@@39 (|Seq#Length_17254| ar_1@@27)) (and (=> (= (ControlFlow 0 43) (- 0 44)) (HasDirectPerm_17215_3373 QPMask@0 (|Seq#Index_17254| ar_1@@27 i@@39) Ref__Integer_value)) (=> (HasDirectPerm_17215_3373 QPMask@0 (|Seq#Index_17254| ar_1@@27 i@@39) Ref__Integer_value) (and (=> (= (ControlFlow 0 43) 33) anon34_Then_correct) (=> (= (ControlFlow 0 43) 23) anon34_Else_correct)))))))))))
(let ((anon32_Then_correct  (=> (<= lo@@14 (mod i@@39 step@@9)) (and (=> (= (ControlFlow 0 48) (- 0 49)) (not (= step@@9 0))) (=> (not (= step@@9 0)) (and (=> (= (ControlFlow 0 48) 43) anon33_Then_correct) (=> (= (ControlFlow 0 48) 47) anon33_Else_correct)))))))
(let ((anon32_Else_correct  (=> (< (mod i@@39 step@@9) lo@@14) (and (=> (= (ControlFlow 0 42) 33) anon34_Then_correct) (=> (= (ControlFlow 0 42) 23) anon34_Else_correct)))))
(let ((anon31_Then_correct  (=> (< i@@39 vmax_1@@9) (and (=> (= (ControlFlow 0 50) (- 0 51)) (not (= step@@9 0))) (=> (not (= step@@9 0)) (and (=> (= (ControlFlow 0 50) 48) anon32_Then_correct) (=> (= (ControlFlow 0 50) 42) anon32_Else_correct)))))))
(let ((anon31_Else_correct  (=> (and (<= vmax_1@@9 i@@39) (= (ControlFlow 0 22) 21)) anon23_correct)))
(let ((anon26_Else_correct  (and (=> (= (ControlFlow 0 52) (- 0 53)) (forall ((k_4_2 Int) (k_4_3 Int) ) (!  (=> (and (and (and (and (not (= k_4_2 k_4_3)) (and (<= vmin@@9 k_4_2) (and (< k_4_2 vmax_1@@9) (and (<= lo@@14 (mod k_4_2 step@@9)) (< (mod k_4_2 step@@9) hi@@27))))) (and (<= vmin@@9 k_4_3) (and (< k_4_3 vmax_1@@9) (and (<= lo@@14 (mod k_4_3 step@@9)) (< (mod k_4_3 step@@9) hi@@27))))) (< NoPerm wildcard)) (< NoPerm wildcard)) (not (= (|Seq#Index_17254| ar_1@@27 k_4_2) (|Seq#Index_17254| ar_1@@27 k_4_3))))
 :qid |stdinbpl.1326:15|
 :skolemid |111|
))) (=> (forall ((k_4_2@@0 Int) (k_4_3@@0 Int) ) (!  (=> (and (and (and (and (not (= k_4_2@@0 k_4_3@@0)) (and (<= vmin@@9 k_4_2@@0) (and (< k_4_2@@0 vmax_1@@9) (and (<= lo@@14 (mod k_4_2@@0 step@@9)) (< (mod k_4_2@@0 step@@9) hi@@27))))) (and (<= vmin@@9 k_4_3@@0) (and (< k_4_3@@0 vmax_1@@9) (and (<= lo@@14 (mod k_4_3@@0 step@@9)) (< (mod k_4_3@@0 step@@9) hi@@27))))) (< NoPerm wildcard)) (< NoPerm wildcard)) (not (= (|Seq#Index_17254| ar_1@@27 k_4_2@@0) (|Seq#Index_17254| ar_1@@27 k_4_3@@0))))
 :qid |stdinbpl.1326:15|
 :skolemid |111|
)) (=> (and (and (forall ((k_4_2@@1 Int) ) (!  (=> (and (<= vmin@@9 k_4_2@@1) (and (< k_4_2@@1 vmax_1@@9) (and (<= lo@@14 (mod k_4_2@@1 step@@9)) (< (mod k_4_2@@1 step@@9) hi@@27)))) (and (qpRange5 (|Seq#Index_17254| ar_1@@27 k_4_2@@1)) (= (invRecv5 (|Seq#Index_17254| ar_1@@27 k_4_2@@1)) k_4_2@@1)))
 :qid |stdinbpl.1332:22|
 :skolemid |112|
 :pattern ( (|Seq#Index_17254| ar_1@@27 k_4_2@@1))
 :pattern ( (|Seq#Index_17254| ar_1@@27 k_4_2@@1))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (<= vmin@@9 (invRecv5 o_9)) (and (< (invRecv5 o_9) vmax_1@@9) (and (<= lo@@14 (mod (invRecv5 o_9) step@@9)) (< (mod (invRecv5 o_9) step@@9) hi@@27)))) (qpRange5 o_9)) (= (|Seq#Index_17254| ar_1@@27 (invRecv5 o_9)) o_9))
 :qid |stdinbpl.1336:22|
 :skolemid |113|
 :pattern ( (invRecv5 o_9))
))) (and (forall ((k_4_2@@2 Int) ) (!  (=> (and (<= vmin@@9 k_4_2@@2) (and (< k_4_2@@2 vmax_1@@9) (and (<= lo@@14 (mod k_4_2@@2 step@@9)) (< (mod k_4_2@@2 step@@9) hi@@27)))) (not (= (|Seq#Index_17254| ar_1@@27 k_4_2@@2) null)))
 :qid |stdinbpl.1342:22|
 :skolemid |114|
 :pattern ( (|Seq#Index_17254| ar_1@@27 k_4_2@@2))
 :pattern ( (|Seq#Index_17254| ar_1@@27 k_4_2@@2))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (<= vmin@@9 (invRecv5 o_9@@0)) (and (< (invRecv5 o_9@@0) vmax_1@@9) (and (<= lo@@14 (mod (invRecv5 o_9@@0) step@@9)) (< (mod (invRecv5 o_9@@0) step@@9) hi@@27)))) (qpRange5 o_9@@0)) (and (= (|Seq#Index_17254| ar_1@@27 (invRecv5 o_9@@0)) o_9@@0) (< (select (|PolymorphicMapType_24441_17215_3373#PolymorphicMapType_24441| ZeroMask) o_9@@0 Ref__Integer_value) (select (|PolymorphicMapType_24441_17215_3373#PolymorphicMapType_24441| QPMask@0) o_9@@0 Ref__Integer_value)))) (=> (not (and (and (<= vmin@@9 (invRecv5 o_9@@0)) (and (< (invRecv5 o_9@@0) vmax_1@@9) (and (<= lo@@14 (mod (invRecv5 o_9@@0) step@@9)) (< (mod (invRecv5 o_9@@0) step@@9) hi@@27)))) (qpRange5 o_9@@0))) (= (select (|PolymorphicMapType_24441_17215_3373#PolymorphicMapType_24441| QPMask@0) o_9@@0 Ref__Integer_value) (select (|PolymorphicMapType_24441_17215_3373#PolymorphicMapType_24441| ZeroMask) o_9@@0 Ref__Integer_value))))
 :qid |stdinbpl.1348:22|
 :skolemid |115|
 :pattern ( (select (|PolymorphicMapType_24441_17215_3373#PolymorphicMapType_24441| QPMask@0) o_9@@0 Ref__Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_24480_53) ) (!  (=> true (= (select (|PolymorphicMapType_24441_17215_53#PolymorphicMapType_24441| ZeroMask) o_9@@1 f_5) (select (|PolymorphicMapType_24441_17215_53#PolymorphicMapType_24441| QPMask@0) o_9@@1 f_5)))
 :qid |stdinbpl.1352:29|
 :skolemid |116|
 :pattern ( (select (|PolymorphicMapType_24441_17215_53#PolymorphicMapType_24441| ZeroMask) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_24441_17215_53#PolymorphicMapType_24441| QPMask@0) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_24493_24494) ) (!  (=> true (= (select (|PolymorphicMapType_24441_17215_24494#PolymorphicMapType_24441| ZeroMask) o_9@@2 f_5@@0) (select (|PolymorphicMapType_24441_17215_24494#PolymorphicMapType_24441| QPMask@0) o_9@@2 f_5@@0)))
 :qid |stdinbpl.1352:29|
 :skolemid |116|
 :pattern ( (select (|PolymorphicMapType_24441_17215_24494#PolymorphicMapType_24441| ZeroMask) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_24441_17215_24494#PolymorphicMapType_24441| QPMask@0) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_30530_3373) ) (!  (=> (not (= f_5@@1 Ref__Integer_value)) (= (select (|PolymorphicMapType_24441_17215_3373#PolymorphicMapType_24441| ZeroMask) o_9@@3 f_5@@1) (select (|PolymorphicMapType_24441_17215_3373#PolymorphicMapType_24441| QPMask@0) o_9@@3 f_5@@1)))
 :qid |stdinbpl.1352:29|
 :skolemid |116|
 :pattern ( (select (|PolymorphicMapType_24441_17215_3373#PolymorphicMapType_24441| ZeroMask) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_24441_17215_3373#PolymorphicMapType_24441| QPMask@0) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_17215_66818) ) (!  (=> true (= (select (|PolymorphicMapType_24441_17215_66818#PolymorphicMapType_24441| ZeroMask) o_9@@4 f_5@@2) (select (|PolymorphicMapType_24441_17215_66818#PolymorphicMapType_24441| QPMask@0) o_9@@4 f_5@@2)))
 :qid |stdinbpl.1352:29|
 :skolemid |116|
 :pattern ( (select (|PolymorphicMapType_24441_17215_66818#PolymorphicMapType_24441| ZeroMask) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_24441_17215_66818#PolymorphicMapType_24441| QPMask@0) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_17215_66951) ) (!  (=> true (= (select (|PolymorphicMapType_24441_17215_71073#PolymorphicMapType_24441| ZeroMask) o_9@@5 f_5@@3) (select (|PolymorphicMapType_24441_17215_71073#PolymorphicMapType_24441| QPMask@0) o_9@@5 f_5@@3)))
 :qid |stdinbpl.1352:29|
 :skolemid |116|
 :pattern ( (select (|PolymorphicMapType_24441_17215_71073#PolymorphicMapType_24441| ZeroMask) o_9@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_24441_17215_71073#PolymorphicMapType_24441| QPMask@0) o_9@@5 f_5@@3))
))) (and (state Heap@@41 QPMask@0) (state Heap@@41 QPMask@0))) (and (=> (= (ControlFlow 0 52) 50) anon31_Then_correct) (=> (= (ControlFlow 0 52) 22) anon31_Else_correct))))))))
(let ((anon11_correct true))
(let ((anon30_Else_correct  (=> (and (not (and (<= vmin@@9 k_14) (and (< k_14 vmax_1@@9) (and (<= lo@@14 (mod k_14 step@@9)) (< (mod k_14 step@@9) hi@@27))))) (= (ControlFlow 0 12) 8)) anon11_correct)))
(let ((anon30_Then_correct  (=> (and (<= vmin@@9 k_14) (and (< k_14 vmax_1@@9) (and (<= lo@@14 (mod k_14 step@@9)) (< (mod k_14 step@@9) hi@@27)))) (and (=> (= (ControlFlow 0 9) (- 0 11)) (>= k_14 0)) (=> (>= k_14 0) (and (=> (= (ControlFlow 0 9) (- 0 10)) (< k_14 (|Seq#Length_17254| ar_1@@27))) (=> (< k_14 (|Seq#Length_17254| ar_1@@27)) (=> (= (ControlFlow 0 9) 8) anon11_correct))))))))
(let ((anon29_Else_correct  (=> (< (mod k_14 step@@9) lo@@14) (and (=> (= (ControlFlow 0 17) 9) anon30_Then_correct) (=> (= (ControlFlow 0 17) 12) anon30_Else_correct)))))
(let ((anon29_Then_correct  (=> (<= lo@@14 (mod k_14 step@@9)) (and (=> (= (ControlFlow 0 15) (- 0 16)) (not (= step@@9 0))) (=> (not (= step@@9 0)) (and (=> (= (ControlFlow 0 15) 9) anon30_Then_correct) (=> (= (ControlFlow 0 15) 12) anon30_Else_correct)))))))
(let ((anon28_Then_correct  (=> (< k_14 vmax_1@@9) (and (=> (= (ControlFlow 0 18) (- 0 19)) (not (= step@@9 0))) (=> (not (= step@@9 0)) (and (=> (= (ControlFlow 0 18) 15) anon29_Then_correct) (=> (= (ControlFlow 0 18) 17) anon29_Else_correct)))))))
(let ((anon28_Else_correct  (=> (<= vmax_1@@9 k_14) (and (=> (= (ControlFlow 0 14) 9) anon30_Then_correct) (=> (= (ControlFlow 0 14) 12) anon30_Else_correct)))))
(let ((anon27_Then_correct  (=> (<= vmin@@9 k_14) (and (=> (= (ControlFlow 0 20) 18) anon28_Then_correct) (=> (= (ControlFlow 0 20) 14) anon28_Else_correct)))))
(let ((anon27_Else_correct  (=> (< k_14 vmin@@9) (and (=> (= (ControlFlow 0 13) 9) anon30_Then_correct) (=> (= (ControlFlow 0 13) 12) anon30_Else_correct)))))
(let ((anon24_Else_correct  (=> (and (forall ((ix_3 Int) (jx_3 Int) ) (!  (=> (and (>= ix_3 0) (and (< ix_3 (|Seq#Length_17254| ar_1@@27)) (and (>= jx_3 0) (and (< jx_3 (|Seq#Length_17254| ar_1@@27)) (not (= ix_3 jx_3)))))) (not (= (|Seq#Index_17254| ar_1@@27 ix_3) (|Seq#Index_17254| ar_1@@27 jx_3))))
 :qid |stdinbpl.1298:20|
 :skolemid |110|
 :pattern ( (|Seq#Index_17254| ar_1@@27 ix_3) (|Seq#Index_17254| ar_1@@27 jx_3))
)) (state Heap@@41 ZeroMask)) (and (and (=> (= (ControlFlow 0 54) 52) anon26_Else_correct) (=> (= (ControlFlow 0 54) 20) anon27_Then_correct)) (=> (= (ControlFlow 0 54) 13) anon27_Else_correct)))))
(let ((anon3_correct true))
(let ((anon25_Else_correct  (=> (and (not (and (>= ix_11 0) (and (< ix_11 (|Seq#Length_17254| ar_1@@27)) (and (>= jx_11 0) (and (< jx_11 (|Seq#Length_17254| ar_1@@27)) (not (= ix_11 jx_11))))))) (= (ControlFlow 0 7) 1)) anon3_correct)))
(let ((anon25_Then_correct  (=> (and (>= ix_11 0) (and (< ix_11 (|Seq#Length_17254| ar_1@@27)) (and (>= jx_11 0) (and (< jx_11 (|Seq#Length_17254| ar_1@@27)) (not (= ix_11 jx_11)))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= ix_11 0)) (=> (>= ix_11 0) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< ix_11 (|Seq#Length_17254| ar_1@@27))) (=> (< ix_11 (|Seq#Length_17254| ar_1@@27)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= jx_11 0)) (=> (>= jx_11 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< jx_11 (|Seq#Length_17254| ar_1@@27))) (=> (< jx_11 (|Seq#Length_17254| ar_1@@27)) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))))))))
(let ((anon0_correct  (=> (and (state Heap@@41 ZeroMask) (not AssumePermUpperBound)) (=> (and (and (= AssumeFunctionsAbove 0) (<= 0 lo@@14)) (and (<= lo@@14 hi@@27) (<= hi@@27 step@@9))) (=> (and (and (and (> step@@9 0) (state Heap@@41 ZeroMask)) (and (<= 0 vmin@@9) (<= vmin@@9 i@@39))) (and (and (<= i@@39 vmax_1@@9) (state Heap@@41 ZeroMask)) (and (<= vmax_1@@9 (|Seq#Length_17254| ar_1@@27)) (state Heap@@41 ZeroMask)))) (and (and (=> (= (ControlFlow 0 55) 54) anon24_Else_correct) (=> (= (ControlFlow 0 55) 2) anon25_Then_correct)) (=> (= (ControlFlow 0 55) 7) anon25_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (> wildcard 0.0) true) (= (ControlFlow 0 56) 55)) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))
))
(check-sat)
