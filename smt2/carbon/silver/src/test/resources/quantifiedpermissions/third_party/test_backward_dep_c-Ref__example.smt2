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
(declare-sort T@Field_40255_53 0)
(declare-sort T@Field_40268_40269 0)
(declare-sort T@Field_46341_3805 0)
(declare-sort T@Field_28419_114127 0)
(declare-sort T@Field_28419_113994 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_40216 0)) (((PolymorphicMapType_40216 (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| (Array T@Ref T@Field_46341_3805 Real)) (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| (Array T@Ref T@Field_40255_53 Real)) (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| (Array T@Ref T@Field_40268_40269 Real)) (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| (Array T@Ref T@Field_28419_113994 Real)) (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| (Array T@Ref T@Field_28419_114127 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_40744 0)) (((PolymorphicMapType_40744 (|PolymorphicMapType_40744_40255_53#PolymorphicMapType_40744| (Array T@Ref T@Field_40255_53 Bool)) (|PolymorphicMapType_40744_40255_40269#PolymorphicMapType_40744| (Array T@Ref T@Field_40268_40269 Bool)) (|PolymorphicMapType_40744_40255_3805#PolymorphicMapType_40744| (Array T@Ref T@Field_46341_3805 Bool)) (|PolymorphicMapType_40744_40255_113994#PolymorphicMapType_40744| (Array T@Ref T@Field_28419_113994 Bool)) (|PolymorphicMapType_40744_40255_115305#PolymorphicMapType_40744| (Array T@Ref T@Field_28419_114127 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_40195 0)) (((PolymorphicMapType_40195 (|PolymorphicMapType_40195_28163_53#PolymorphicMapType_40195| (Array T@Ref T@Field_40255_53 Bool)) (|PolymorphicMapType_40195_28166_28167#PolymorphicMapType_40195| (Array T@Ref T@Field_40268_40269 T@Ref)) (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| (Array T@Ref T@Field_46341_3805 Int)) (|PolymorphicMapType_40195_28419_114171#PolymorphicMapType_40195| (Array T@Ref T@Field_28419_114127 T@PolymorphicMapType_40744)) (|PolymorphicMapType_40195_40255_113994#PolymorphicMapType_40195| (Array T@Ref T@Field_28419_113994 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_40255_53)
(declare-fun Ref__Integer_value () T@Field_46341_3805)
(declare-sort T@Seq_47383 0)
(declare-fun |Seq#Length_28458| (T@Seq_47383) Int)
(declare-fun |Seq#Drop_28458| (T@Seq_47383 Int) T@Seq_47383)
(declare-sort T@Seq_3683 0)
(declare-fun |Seq#Length_3683| (T@Seq_3683) Int)
(declare-fun |Seq#Drop_3683| (T@Seq_3683 Int) T@Seq_3683)
(declare-fun state (T@PolymorphicMapType_40195 T@PolymorphicMapType_40216) Bool)
(declare-fun |count_square'| (T@PolymorphicMapType_40195 Int Int Int Int Int Int T@Seq_47383 Int) Int)
(declare-fun |count_square#frame| (T@FrameType Int Int Int Int Int Int T@Seq_47383 Int) Int)
(declare-fun FrameFragment_4660 (Int) T@FrameType)
(declare-fun |count_square#condqp3| (T@PolymorphicMapType_40195 Int Int Int Int Int Int T@Seq_47383 Int) Int)
(declare-fun succHeap (T@PolymorphicMapType_40195 T@PolymorphicMapType_40195) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_40195 T@PolymorphicMapType_40195) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_40216) Bool)
(declare-fun |sum_list'| (T@PolymorphicMapType_40195 Int Int T@Seq_3683) Int)
(declare-fun dummyFunction_4112 (Int) Bool)
(declare-fun |sum_list#triggerStateless| (Int Int T@Seq_3683) Int)
(declare-fun ZeroPMask () T@PolymorphicMapType_40744)
(declare-fun |Seq#Index_28458| (T@Seq_47383 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3683| (T@Seq_3683 Int) Int)
(declare-fun |Seq#Empty_28458| () T@Seq_47383)
(declare-fun |Seq#Empty_3683| () T@Seq_3683)
(declare-fun |Seq#Update_28458| (T@Seq_47383 Int T@Ref) T@Seq_47383)
(declare-fun |Seq#Update_3683| (T@Seq_3683 Int Int) T@Seq_3683)
(declare-fun |Seq#Take_28458| (T@Seq_47383 Int) T@Seq_47383)
(declare-fun |Seq#Take_3683| (T@Seq_3683 Int) T@Seq_3683)
(declare-fun |Seq#Contains_3683| (T@Seq_3683 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3683)
(declare-fun |Seq#Contains_47383| (T@Seq_47383 T@Ref) Bool)
(declare-fun |Seq#Skolem_47383| (T@Seq_47383 T@Ref) Int)
(declare-fun |Seq#Skolem_3683| (T@Seq_3683 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_40195 T@PolymorphicMapType_40195 T@PolymorphicMapType_40216) Bool)
(declare-fun IsPredicateField_28419_114085 (T@Field_28419_113994) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_28419 (T@Field_28419_113994) T@Field_28419_114127)
(declare-fun HasDirectPerm_28419_114058 (T@PolymorphicMapType_40216 T@Ref T@Field_28419_113994) Bool)
(declare-fun IsWandField_28419_115832 (T@Field_28419_113994) Bool)
(declare-fun WandMaskField_28419 (T@Field_28419_113994) T@Field_28419_114127)
(declare-fun |Seq#Singleton_28458| (T@Ref) T@Seq_47383)
(declare-fun |Seq#Singleton_3683| (Int) T@Seq_3683)
(declare-fun count_square (T@PolymorphicMapType_40195 Int Int Int Int Int Int T@Seq_47383 Int) Int)
(declare-fun |count_square#triggerStateless| (Int Int Int Int Int Int T@Seq_47383 Int) Int)
(declare-fun |Seq#Append_47383| (T@Seq_47383 T@Seq_47383) T@Seq_47383)
(declare-fun |Seq#Append_3683| (T@Seq_3683 T@Seq_3683) T@Seq_3683)
(declare-fun sum_array (T@PolymorphicMapType_40195 Int Int Int T@Seq_47383) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |sum_array'| (T@PolymorphicMapType_40195 Int Int Int T@Seq_47383) Int)
(declare-fun |sum_square#condqp2| (T@PolymorphicMapType_40195 Int Int Int Int Int Int T@Seq_47383) Int)
(declare-fun |sk_sum_square#condqp2| (Int Int) Int)
(declare-fun |sk_count_square#condqp3| (Int Int) Int)
(declare-fun dummyHeap () T@PolymorphicMapType_40195)
(declare-fun ZeroMask () T@PolymorphicMapType_40216)
(declare-fun InsidePredicate_40255_40255 (T@Field_28419_113994 T@FrameType T@Field_28419_113994 T@FrameType) Bool)
(declare-fun IsPredicateField_28419_3805 (T@Field_46341_3805) Bool)
(declare-fun IsWandField_28419_3805 (T@Field_46341_3805) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_28419_119378 (T@Field_28419_114127) Bool)
(declare-fun IsWandField_28419_119394 (T@Field_28419_114127) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_28419_40269 (T@Field_40268_40269) Bool)
(declare-fun IsWandField_28419_40269 (T@Field_40268_40269) Bool)
(declare-fun IsPredicateField_28419_53 (T@Field_40255_53) Bool)
(declare-fun IsWandField_28419_53 (T@Field_40255_53) Bool)
(declare-fun |sum_list#frame| (T@FrameType Int Int T@Seq_3683) Int)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun HasDirectPerm_28419_119832 (T@PolymorphicMapType_40216 T@Ref T@Field_28419_114127) Bool)
(declare-fun HasDirectPerm_28419_40269 (T@PolymorphicMapType_40216 T@Ref T@Field_40268_40269) Bool)
(declare-fun HasDirectPerm_28419_53 (T@PolymorphicMapType_40216 T@Ref T@Field_40255_53) Bool)
(declare-fun HasDirectPerm_28419_3805 (T@PolymorphicMapType_40216 T@Ref T@Field_46341_3805) Bool)
(declare-fun |sum_array#triggerStateless| (Int Int Int T@Seq_47383) Int)
(declare-fun |count_list'| (T@PolymorphicMapType_40195 Int Int T@Seq_3683 Int) Int)
(declare-fun |count_list#triggerStateless| (Int Int T@Seq_3683 Int) Int)
(declare-fun |count_array'| (T@PolymorphicMapType_40195 Int Int T@Seq_47383 Int) Int)
(declare-fun |count_array#triggerStateless| (Int Int T@Seq_47383 Int) Int)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun sum_square (T@PolymorphicMapType_40195 Int Int Int Int Int Int T@Seq_47383) Int)
(declare-fun |sum_square'| (T@PolymorphicMapType_40195 Int Int Int Int Int Int T@Seq_47383) Int)
(declare-fun count_list (T@PolymorphicMapType_40195 Int Int T@Seq_3683 Int) Int)
(declare-fun count_array (T@PolymorphicMapType_40195 Int Int T@Seq_47383 Int) Int)
(declare-fun sumMask (T@PolymorphicMapType_40216 T@PolymorphicMapType_40216 T@PolymorphicMapType_40216) Bool)
(declare-fun |sum_square#triggerStateless| (Int Int Int Int Int Int T@Seq_47383) Int)
(declare-fun |count_list#frame| (T@FrameType Int Int T@Seq_3683 Int) Int)
(declare-fun |Seq#Equal_47383| (T@Seq_47383 T@Seq_47383) Bool)
(declare-fun |Seq#Equal_3683| (T@Seq_3683 T@Seq_3683) Bool)
(declare-fun sum_list (T@PolymorphicMapType_40195 Int Int T@Seq_3683) Int)
(declare-fun |Seq#ContainsTrigger_28458| (T@Seq_47383 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3683| (T@Seq_3683 Int) Bool)
(declare-fun |count_array#condqp4| (T@PolymorphicMapType_40195 Int Int T@Seq_47383 Int) Int)
(declare-fun |sk_count_array#condqp4| (Int Int) Int)
(declare-fun |sum_array#condqp1| (T@PolymorphicMapType_40195 Int Int Int T@Seq_47383) Int)
(declare-fun |sk_sum_array#condqp1| (Int Int) Int)
(declare-fun |sum_square#frame| (T@FrameType Int Int Int Int Int Int T@Seq_47383) Int)
(declare-fun |Seq#SkolemDiff_47383| (T@Seq_47383 T@Seq_47383) Int)
(declare-fun |Seq#SkolemDiff_3683| (T@Seq_3683 T@Seq_3683) Int)
(declare-fun |sum_array#frame| (T@FrameType Int Int Int T@Seq_47383) Int)
(declare-fun |count_array#frame| (T@FrameType Int Int T@Seq_47383 Int) Int)
(assert (forall ((s T@Seq_47383) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_28458| s)) (= (|Seq#Length_28458| (|Seq#Drop_28458| s n)) (- (|Seq#Length_28458| s) n))) (=> (< (|Seq#Length_28458| s) n) (= (|Seq#Length_28458| (|Seq#Drop_28458| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_28458| (|Seq#Drop_28458| s n)) (|Seq#Length_28458| s))))
 :qid |stdinbpl.395:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_28458| (|Seq#Drop_28458| s n)))
 :pattern ( (|Seq#Length_28458| s) (|Seq#Drop_28458| s n))
)))
(assert (forall ((s@@0 T@Seq_3683) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3683| s@@0)) (= (|Seq#Length_3683| (|Seq#Drop_3683| s@@0 n@@0)) (- (|Seq#Length_3683| s@@0) n@@0))) (=> (< (|Seq#Length_3683| s@@0) n@@0) (= (|Seq#Length_3683| (|Seq#Drop_3683| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3683| (|Seq#Drop_3683| s@@0 n@@0)) (|Seq#Length_3683| s@@0))))
 :qid |stdinbpl.395:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3683| (|Seq#Drop_3683| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3683| s@@0) (|Seq#Drop_3683| s@@0 n@@0))
)))
(assert (forall ((Heap T@PolymorphicMapType_40195) (Mask T@PolymorphicMapType_40216) (i Int) (lo Int) (hi Int) (step Int) (vmin Int) (vmax_1 Int) (ar_1 T@Seq_47383) (v_2 Int) ) (!  (=> (state Heap Mask) (= (|count_square'| Heap i lo hi step vmin vmax_1 ar_1 v_2) (|count_square#frame| (FrameFragment_4660 (|count_square#condqp3| Heap i lo hi step vmin vmax_1 ar_1 v_2)) i lo hi step vmin vmax_1 ar_1 v_2)))
 :qid |stdinbpl.1283:15|
 :skolemid |108|
 :pattern ( (state Heap Mask) (|count_square'| Heap i lo hi step vmin vmax_1 ar_1 v_2))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_40195) (Heap1 T@PolymorphicMapType_40195) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_40195) (Mask@@0 T@PolymorphicMapType_40216) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_40195) (Heap1@@0 T@PolymorphicMapType_40195) (Heap2 T@PolymorphicMapType_40195) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_40195) (i@@0 Int) (hi@@0 Int) (ar_1@@0 T@Seq_3683) ) (! (dummyFunction_4112 (|sum_list#triggerStateless| i@@0 hi@@0 ar_1@@0))
 :qid |stdinbpl.681:15|
 :skolemid |59|
 :pattern ( (|sum_list'| Heap@@1 i@@0 hi@@0 ar_1@@0))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_28419_114127) ) (!  (not (select (|PolymorphicMapType_40744_40255_115305#PolymorphicMapType_40744| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_40744_40255_115305#PolymorphicMapType_40744| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_28419_113994) ) (!  (not (select (|PolymorphicMapType_40744_40255_113994#PolymorphicMapType_40744| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_40744_40255_113994#PolymorphicMapType_40744| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_46341_3805) ) (!  (not (select (|PolymorphicMapType_40744_40255_3805#PolymorphicMapType_40744| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_40744_40255_3805#PolymorphicMapType_40744| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_40268_40269) ) (!  (not (select (|PolymorphicMapType_40744_40255_40269#PolymorphicMapType_40744| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_40744_40255_40269#PolymorphicMapType_40744| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_40255_53) ) (!  (not (select (|PolymorphicMapType_40744_40255_53#PolymorphicMapType_40744| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_40744_40255_53#PolymorphicMapType_40744| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((s@@1 T@Seq_47383) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_28458| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_28458| (|Seq#Drop_28458| s@@1 n@@1) j) (|Seq#Index_28458| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.416:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_28458| (|Seq#Drop_28458| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3683) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3683| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3683| (|Seq#Drop_3683| s@@2 n@@2) j@@0) (|Seq#Index_3683| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.416:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3683| (|Seq#Drop_3683| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_28458| |Seq#Empty_28458|) 0))
(assert (= (|Seq#Length_3683| |Seq#Empty_3683|) 0))
(assert (forall ((s@@3 T@Seq_47383) (i@@1 Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_28458| s@@3))) (and (=> (= i@@1 n@@3) (= (|Seq#Index_28458| (|Seq#Update_28458| s@@3 i@@1 v) n@@3) v)) (=> (not (= i@@1 n@@3)) (= (|Seq#Index_28458| (|Seq#Update_28458| s@@3 i@@1 v) n@@3) (|Seq#Index_28458| s@@3 n@@3)))))
 :qid |stdinbpl.371:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_28458| (|Seq#Update_28458| s@@3 i@@1 v) n@@3))
 :pattern ( (|Seq#Index_28458| s@@3 n@@3) (|Seq#Update_28458| s@@3 i@@1 v))
)))
(assert (forall ((s@@4 T@Seq_3683) (i@@2 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3683| s@@4))) (and (=> (= i@@2 n@@4) (= (|Seq#Index_3683| (|Seq#Update_3683| s@@4 i@@2 v@@0) n@@4) v@@0)) (=> (not (= i@@2 n@@4)) (= (|Seq#Index_3683| (|Seq#Update_3683| s@@4 i@@2 v@@0) n@@4) (|Seq#Index_3683| s@@4 n@@4)))))
 :qid |stdinbpl.371:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3683| (|Seq#Update_3683| s@@4 i@@2 v@@0) n@@4))
 :pattern ( (|Seq#Index_3683| s@@4 n@@4) (|Seq#Update_3683| s@@4 i@@2 v@@0))
)))
(assert (forall ((s@@5 T@Seq_47383) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_28458| s@@5)) (= (|Seq#Length_28458| (|Seq#Take_28458| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_28458| s@@5) n@@5) (= (|Seq#Length_28458| (|Seq#Take_28458| s@@5 n@@5)) (|Seq#Length_28458| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_28458| (|Seq#Take_28458| s@@5 n@@5)) 0)))
 :qid |stdinbpl.382:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_28458| (|Seq#Take_28458| s@@5 n@@5)))
 :pattern ( (|Seq#Take_28458| s@@5 n@@5) (|Seq#Length_28458| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3683) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3683| s@@6)) (= (|Seq#Length_3683| (|Seq#Take_3683| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3683| s@@6) n@@6) (= (|Seq#Length_3683| (|Seq#Take_3683| s@@6 n@@6)) (|Seq#Length_3683| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3683| (|Seq#Take_3683| s@@6 n@@6)) 0)))
 :qid |stdinbpl.382:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3683| (|Seq#Take_3683| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3683| s@@6 n@@6) (|Seq#Length_3683| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3683| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.656:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3683| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_47383) (x T@Ref) ) (!  (=> (|Seq#Contains_47383| s@@7 x) (and (and (<= 0 (|Seq#Skolem_47383| s@@7 x)) (< (|Seq#Skolem_47383| s@@7 x) (|Seq#Length_28458| s@@7))) (= (|Seq#Index_28458| s@@7 (|Seq#Skolem_47383| s@@7 x)) x)))
 :qid |stdinbpl.514:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_47383| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3683) (x@@0 Int) ) (!  (=> (|Seq#Contains_3683| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3683| s@@8 x@@0)) (< (|Seq#Skolem_3683| s@@8 x@@0) (|Seq#Length_3683| s@@8))) (= (|Seq#Index_3683| s@@8 (|Seq#Skolem_3683| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.514:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3683| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_47383) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_28458| s@@9 n@@7) s@@9))
 :qid |stdinbpl.498:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_28458| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3683) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3683| s@@10 n@@8) s@@10))
 :qid |stdinbpl.498:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3683| s@@10 n@@8))
)))
(assert (forall ((i@@3 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@3 j@@1) (- i@@3 j@@1))
 :qid |stdinbpl.351:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@3 j@@1))
)))
(assert (forall ((i@@4 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@4 j@@2) (+ i@@4 j@@2))
 :qid |stdinbpl.349:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@4 j@@2))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_40195) (ExhaleHeap T@PolymorphicMapType_40195) (Mask@@1 T@PolymorphicMapType_40216) (pm_f_22 T@Field_28419_113994) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_28419_114058 Mask@@1 null pm_f_22) (IsPredicateField_28419_114085 pm_f_22)) (= (select (|PolymorphicMapType_40195_28419_114171#PolymorphicMapType_40195| Heap@@2) null (PredicateMaskField_28419 pm_f_22)) (select (|PolymorphicMapType_40195_28419_114171#PolymorphicMapType_40195| ExhaleHeap) null (PredicateMaskField_28419 pm_f_22)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@1) (IsPredicateField_28419_114085 pm_f_22) (select (|PolymorphicMapType_40195_28419_114171#PolymorphicMapType_40195| ExhaleHeap) null (PredicateMaskField_28419 pm_f_22)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_40195) (ExhaleHeap@@0 T@PolymorphicMapType_40195) (Mask@@2 T@PolymorphicMapType_40216) (pm_f_22@@0 T@Field_28419_113994) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_28419_114058 Mask@@2 null pm_f_22@@0) (IsWandField_28419_115832 pm_f_22@@0)) (= (select (|PolymorphicMapType_40195_28419_114171#PolymorphicMapType_40195| Heap@@3) null (WandMaskField_28419 pm_f_22@@0)) (select (|PolymorphicMapType_40195_28419_114171#PolymorphicMapType_40195| ExhaleHeap@@0) null (WandMaskField_28419 pm_f_22@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@2) (IsWandField_28419_115832 pm_f_22@@0) (select (|PolymorphicMapType_40195_28419_114171#PolymorphicMapType_40195| ExhaleHeap@@0) null (WandMaskField_28419 pm_f_22@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_47383| (|Seq#Singleton_28458| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.639:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_47383| (|Seq#Singleton_28458| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3683| (|Seq#Singleton_3683| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.639:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3683| (|Seq#Singleton_3683| x@@2) y@@0))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_40195) (i@@5 Int) (lo@@0 Int) (hi@@1 Int) (step@@0 Int) (vmin@@0 Int) (vmax_1@@0 Int) (ar_1@@1 T@Seq_47383) (v_2@@0 Int) ) (!  (and (= (count_square Heap@@4 i@@5 lo@@0 hi@@1 step@@0 vmin@@0 vmax_1@@0 ar_1@@1 v_2@@0) (|count_square'| Heap@@4 i@@5 lo@@0 hi@@1 step@@0 vmin@@0 vmax_1@@0 ar_1@@1 v_2@@0)) (dummyFunction_4112 (|count_square#triggerStateless| i@@5 lo@@0 hi@@1 step@@0 vmin@@0 vmax_1@@0 ar_1@@1 v_2@@0)))
 :qid |stdinbpl.1263:15|
 :skolemid |104|
 :pattern ( (count_square Heap@@4 i@@5 lo@@0 hi@@1 step@@0 vmin@@0 vmax_1@@0 ar_1@@1 v_2@@0))
)))
(assert (forall ((s@@11 T@Seq_47383) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_28458| s@@11))) (= (|Seq#Index_28458| (|Seq#Take_28458| s@@11 n@@9) j@@3) (|Seq#Index_28458| s@@11 j@@3)))
 :qid |stdinbpl.390:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_28458| (|Seq#Take_28458| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_28458| s@@11 j@@3) (|Seq#Take_28458| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3683) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3683| s@@12))) (= (|Seq#Index_3683| (|Seq#Take_3683| s@@12 n@@10) j@@4) (|Seq#Index_3683| s@@12 j@@4)))
 :qid |stdinbpl.390:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3683| (|Seq#Take_3683| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3683| s@@12 j@@4) (|Seq#Take_3683| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_47383) (t T@Seq_47383) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_28458| s@@13))) (< n@@11 (|Seq#Length_28458| (|Seq#Append_47383| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_28458| s@@13)) (|Seq#Length_28458| s@@13)) n@@11) (= (|Seq#Take_28458| (|Seq#Append_47383| s@@13 t) n@@11) (|Seq#Append_47383| s@@13 (|Seq#Take_28458| t (|Seq#Sub| n@@11 (|Seq#Length_28458| s@@13)))))))
 :qid |stdinbpl.475:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_28458| (|Seq#Append_47383| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3683) (t@@0 T@Seq_3683) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3683| s@@14))) (< n@@12 (|Seq#Length_3683| (|Seq#Append_3683| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3683| s@@14)) (|Seq#Length_3683| s@@14)) n@@12) (= (|Seq#Take_3683| (|Seq#Append_3683| s@@14 t@@0) n@@12) (|Seq#Append_3683| s@@14 (|Seq#Take_3683| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3683| s@@14)))))))
 :qid |stdinbpl.475:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3683| (|Seq#Append_3683| s@@14 t@@0) n@@12))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_40195) (i@@6 Int) (lo@@1 Int) (hi@@2 Int) (step@@1 Int) (vmin@@1 Int) (vmax_1@@1 Int) (ar_1@@2 T@Seq_47383) (v_2@@1 Int) ) (! (dummyFunction_4112 (|count_square#triggerStateless| i@@6 lo@@1 hi@@2 step@@1 vmin@@1 vmax_1@@1 ar_1@@2 v_2@@1))
 :qid |stdinbpl.1267:15|
 :skolemid |105|
 :pattern ( (|count_square'| Heap@@5 i@@6 lo@@1 hi@@2 step@@1 vmin@@1 vmax_1@@1 ar_1@@2 v_2@@1))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_40195) (Mask@@3 T@PolymorphicMapType_40216) (i@@7 Int) (lo@@2 Int) (hi@@3 Int) (ar_1@@3 T@Seq_47383) ) (!  (=> (and (state Heap@@6 Mask@@3) (< AssumeFunctionsAbove 2)) (=> (and (and (and (<= 0 lo@@2) (and (<= lo@@2 i@@7) (<= i@@7 hi@@3))) (<= hi@@3 (|Seq#Length_28458| ar_1@@3))) (forall ((j@@5 Int) (k Int) ) (!  (=> (and (<= 0 j@@5) (and (< j@@5 hi@@3) (and (<= 0 k) (and (< k hi@@3) (not (= j@@5 k)))))) (not (= (|Seq#Index_28458| ar_1@@3 j@@5) (|Seq#Index_28458| ar_1@@3 k))))
 :qid |stdinbpl.774:126|
 :skolemid |64|
 :pattern ( (|Seq#Index_28458| ar_1@@3 j@@5) (|Seq#Index_28458| ar_1@@3 k))
))) (= (sum_array Heap@@6 i@@7 lo@@2 hi@@3 ar_1@@3) (ite (< i@@7 hi@@3) (+ (select (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| Heap@@6) (|Seq#Index_28458| ar_1@@3 i@@7) Ref__Integer_value) (|sum_array'| Heap@@6 (+ i@@7 1) lo@@2 hi@@3 ar_1@@3)) 0))))
 :qid |stdinbpl.772:15|
 :skolemid |65|
 :pattern ( (state Heap@@6 Mask@@3) (sum_array Heap@@6 i@@7 lo@@2 hi@@3 ar_1@@3))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_40195) (Heap1Heap T@PolymorphicMapType_40195) (i@@8 Int) (lo@@3 Int) (hi@@4 Int) (step@@2 Int) (vmin@@2 Int) (vmax_1@@2 Int) (ar_1@@4 T@Seq_47383) ) (!  (=> (and (=  (and (<= vmin@@2 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) vmax_1@@2) (and (<= lo@@3 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2) hi@@4))))  (and (<= vmin@@2 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) vmax_1@@2) (and (<= lo@@3 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2) hi@@4))))) (=> (and (<= vmin@@2 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) vmax_1@@2) (and (<= lo@@3 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2) hi@@4)))) (= (select (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| Heap2Heap) (|Seq#Index_28458| ar_1@@4 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) Ref__Integer_value) (select (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| Heap1Heap) (|Seq#Index_28458| ar_1@@4 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) Ref__Integer_value)))) (= (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)))
 :qid |stdinbpl.1027:15|
 :skolemid |88|
 :pattern ( (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_40195) (Heap1Heap@@0 T@PolymorphicMapType_40195) (i@@9 Int) (lo@@4 Int) (hi@@5 Int) (step@@3 Int) (vmin@@3 Int) (vmax_1@@3 Int) (ar_1@@5 T@Seq_47383) (v_2@@2 Int) ) (!  (=> (and (=  (and (<= vmin@@3 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) vmax_1@@3) (and (<= lo@@4 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) step@@3)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) step@@3) hi@@5))))  (and (<= vmin@@3 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) vmax_1@@3) (and (<= lo@@4 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) step@@3)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) step@@3) hi@@5))))) (=> (and (<= vmin@@3 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) vmax_1@@3) (and (<= lo@@4 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) step@@3)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) step@@3) hi@@5)))) (= (select (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| Heap2Heap@@0) (|Seq#Index_28458| ar_1@@5 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2))) Ref__Integer_value) (select (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| Heap1Heap@@0) (|Seq#Index_28458| ar_1@@5 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2))) Ref__Integer_value)))) (= (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)))
 :qid |stdinbpl.1293:15|
 :skolemid |109|
 :pattern ( (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@7 T@PolymorphicMapType_40195) (ExhaleHeap@@1 T@PolymorphicMapType_40195) (Mask@@4 T@PolymorphicMapType_40216) (o_45 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@4) (=> (select (|PolymorphicMapType_40195_28163_53#PolymorphicMapType_40195| Heap@@7) o_45 $allocated) (select (|PolymorphicMapType_40195_28163_53#PolymorphicMapType_40195| ExhaleHeap@@1) o_45 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@4) (select (|PolymorphicMapType_40195_28163_53#PolymorphicMapType_40195| ExhaleHeap@@1) o_45 $allocated))
)))
(assert (forall ((p T@Field_28419_113994) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_40255_40255 p v_1 p w))
 :qid |stdinbpl.293:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_40255_40255 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_47383) (s1 T@Seq_47383) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_28458|)) (not (= s1 |Seq#Empty_28458|))) (<= (|Seq#Length_28458| s0) n@@13)) (< n@@13 (|Seq#Length_28458| (|Seq#Append_47383| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_28458| s0)) (|Seq#Length_28458| s0)) n@@13) (= (|Seq#Index_28458| (|Seq#Append_47383| s0 s1) n@@13) (|Seq#Index_28458| s1 (|Seq#Sub| n@@13 (|Seq#Length_28458| s0))))))
 :qid |stdinbpl.362:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_28458| (|Seq#Append_47383| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3683) (s1@@0 T@Seq_3683) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3683|)) (not (= s1@@0 |Seq#Empty_3683|))) (<= (|Seq#Length_3683| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3683| (|Seq#Append_3683| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3683| s0@@0)) (|Seq#Length_3683| s0@@0)) n@@14) (= (|Seq#Index_3683| (|Seq#Append_3683| s0@@0 s1@@0) n@@14) (|Seq#Index_3683| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3683| s0@@0))))))
 :qid |stdinbpl.362:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3683| (|Seq#Append_3683| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_28419_3805 Ref__Integer_value)))
(assert  (not (IsWandField_28419_3805 Ref__Integer_value)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_40195) (ExhaleHeap@@2 T@PolymorphicMapType_40195) (Mask@@5 T@PolymorphicMapType_40216) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@5) (succHeap Heap@@8 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_40216) (o_2@@4 T@Ref) (f_4@@4 T@Field_28419_114127) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| Mask@@6) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_28419_119378 f_4@@4))) (not (IsWandField_28419_119394 f_4@@4))) (<= (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| Mask@@6) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| Mask@@6) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_40216) (o_2@@5 T@Ref) (f_4@@5 T@Field_28419_113994) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| Mask@@7) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_28419_114085 f_4@@5))) (not (IsWandField_28419_115832 f_4@@5))) (<= (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| Mask@@7) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| Mask@@7) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_40216) (o_2@@6 T@Ref) (f_4@@6 T@Field_40268_40269) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| Mask@@8) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_28419_40269 f_4@@6))) (not (IsWandField_28419_40269 f_4@@6))) (<= (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| Mask@@8) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| Mask@@8) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_40216) (o_2@@7 T@Ref) (f_4@@7 T@Field_40255_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| Mask@@9) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_28419_53 f_4@@7))) (not (IsWandField_28419_53 f_4@@7))) (<= (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| Mask@@9) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| Mask@@9) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_40216) (o_2@@8 T@Ref) (f_4@@8 T@Field_46341_3805) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| Mask@@10) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_28419_3805 f_4@@8))) (not (IsWandField_28419_3805 f_4@@8))) (<= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| Mask@@10) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| Mask@@10) o_2@@8 f_4@@8))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_40195) (Mask@@11 T@PolymorphicMapType_40216) (i@@10 Int) (hi@@6 Int) (ar_1@@6 T@Seq_3683) ) (!  (=> (state Heap@@9 Mask@@11) (= (|sum_list'| Heap@@9 i@@10 hi@@6 ar_1@@6) (|sum_list#frame| EmptyFrame i@@10 hi@@6 ar_1@@6)))
 :qid |stdinbpl.694:15|
 :skolemid |61|
 :pattern ( (state Heap@@9 Mask@@11) (|sum_list'| Heap@@9 i@@10 hi@@6 ar_1@@6))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_40216) (o_2@@9 T@Ref) (f_4@@9 T@Field_28419_114127) ) (! (= (HasDirectPerm_28419_119832 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_28419_119832 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_40216) (o_2@@10 T@Ref) (f_4@@10 T@Field_28419_113994) ) (! (= (HasDirectPerm_28419_114058 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_28419_114058 Mask@@13 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_40216) (o_2@@11 T@Ref) (f_4@@11 T@Field_40268_40269) ) (! (= (HasDirectPerm_28419_40269 Mask@@14 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| Mask@@14) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_28419_40269 Mask@@14 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_40216) (o_2@@12 T@Ref) (f_4@@12 T@Field_40255_53) ) (! (= (HasDirectPerm_28419_53 Mask@@15 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| Mask@@15) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_28419_53 Mask@@15 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_40216) (o_2@@13 T@Ref) (f_4@@13 T@Field_46341_3805) ) (! (= (HasDirectPerm_28419_3805 Mask@@16 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| Mask@@16) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_28419_3805 Mask@@16 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_40195) (i@@11 Int) (lo@@5 Int) (hi@@7 Int) (ar_1@@7 T@Seq_47383) ) (! (dummyFunction_4112 (|sum_array#triggerStateless| i@@11 lo@@5 hi@@7 ar_1@@7))
 :qid |stdinbpl.766:15|
 :skolemid |63|
 :pattern ( (|sum_array'| Heap@@10 i@@11 lo@@5 hi@@7 ar_1@@7))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_40195) (i@@12 Int) (hi@@8 Int) (ar_1@@8 T@Seq_3683) (v_2@@3 Int) ) (! (dummyFunction_4112 (|count_list#triggerStateless| i@@12 hi@@8 ar_1@@8 v_2@@3))
 :qid |stdinbpl.1533:15|
 :skolemid |126|
 :pattern ( (|count_list'| Heap@@11 i@@12 hi@@8 ar_1@@8 v_2@@3))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_40195) (i@@13 Int) (hi@@9 Int) (ar_1@@9 T@Seq_47383) (v_2@@4 Int) ) (! (dummyFunction_4112 (|count_array#triggerStateless| i@@13 hi@@9 ar_1@@9 v_2@@4))
 :qid |stdinbpl.1618:15|
 :skolemid |130|
 :pattern ( (|count_array'| Heap@@12 i@@13 hi@@9 ar_1@@9 v_2@@4))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_40195) (ExhaleHeap@@3 T@PolymorphicMapType_40195) (Mask@@17 T@PolymorphicMapType_40216) (pm_f_22@@1 T@Field_28419_113994) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@3 Mask@@17) (=> (and (HasDirectPerm_28419_114058 Mask@@17 null pm_f_22@@1) (IsPredicateField_28419_114085 pm_f_22@@1)) (and (and (and (and (forall ((o2_22 T@Ref) (f_59 T@Field_40255_53) ) (!  (=> (select (|PolymorphicMapType_40744_40255_53#PolymorphicMapType_40744| (select (|PolymorphicMapType_40195_28419_114171#PolymorphicMapType_40195| Heap@@13) null (PredicateMaskField_28419 pm_f_22@@1))) o2_22 f_59) (= (select (|PolymorphicMapType_40195_28163_53#PolymorphicMapType_40195| Heap@@13) o2_22 f_59) (select (|PolymorphicMapType_40195_28163_53#PolymorphicMapType_40195| ExhaleHeap@@3) o2_22 f_59)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40195_28163_53#PolymorphicMapType_40195| ExhaleHeap@@3) o2_22 f_59))
)) (forall ((o2_22@@0 T@Ref) (f_59@@0 T@Field_40268_40269) ) (!  (=> (select (|PolymorphicMapType_40744_40255_40269#PolymorphicMapType_40744| (select (|PolymorphicMapType_40195_28419_114171#PolymorphicMapType_40195| Heap@@13) null (PredicateMaskField_28419 pm_f_22@@1))) o2_22@@0 f_59@@0) (= (select (|PolymorphicMapType_40195_28166_28167#PolymorphicMapType_40195| Heap@@13) o2_22@@0 f_59@@0) (select (|PolymorphicMapType_40195_28166_28167#PolymorphicMapType_40195| ExhaleHeap@@3) o2_22@@0 f_59@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40195_28166_28167#PolymorphicMapType_40195| ExhaleHeap@@3) o2_22@@0 f_59@@0))
))) (forall ((o2_22@@1 T@Ref) (f_59@@1 T@Field_46341_3805) ) (!  (=> (select (|PolymorphicMapType_40744_40255_3805#PolymorphicMapType_40744| (select (|PolymorphicMapType_40195_28419_114171#PolymorphicMapType_40195| Heap@@13) null (PredicateMaskField_28419 pm_f_22@@1))) o2_22@@1 f_59@@1) (= (select (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| Heap@@13) o2_22@@1 f_59@@1) (select (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| ExhaleHeap@@3) o2_22@@1 f_59@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| ExhaleHeap@@3) o2_22@@1 f_59@@1))
))) (forall ((o2_22@@2 T@Ref) (f_59@@2 T@Field_28419_113994) ) (!  (=> (select (|PolymorphicMapType_40744_40255_113994#PolymorphicMapType_40744| (select (|PolymorphicMapType_40195_28419_114171#PolymorphicMapType_40195| Heap@@13) null (PredicateMaskField_28419 pm_f_22@@1))) o2_22@@2 f_59@@2) (= (select (|PolymorphicMapType_40195_40255_113994#PolymorphicMapType_40195| Heap@@13) o2_22@@2 f_59@@2) (select (|PolymorphicMapType_40195_40255_113994#PolymorphicMapType_40195| ExhaleHeap@@3) o2_22@@2 f_59@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40195_40255_113994#PolymorphicMapType_40195| ExhaleHeap@@3) o2_22@@2 f_59@@2))
))) (forall ((o2_22@@3 T@Ref) (f_59@@3 T@Field_28419_114127) ) (!  (=> (select (|PolymorphicMapType_40744_40255_115305#PolymorphicMapType_40744| (select (|PolymorphicMapType_40195_28419_114171#PolymorphicMapType_40195| Heap@@13) null (PredicateMaskField_28419 pm_f_22@@1))) o2_22@@3 f_59@@3) (= (select (|PolymorphicMapType_40195_28419_114171#PolymorphicMapType_40195| Heap@@13) o2_22@@3 f_59@@3) (select (|PolymorphicMapType_40195_28419_114171#PolymorphicMapType_40195| ExhaleHeap@@3) o2_22@@3 f_59@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40195_28419_114171#PolymorphicMapType_40195| ExhaleHeap@@3) o2_22@@3 f_59@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@3 Mask@@17) (IsPredicateField_28419_114085 pm_f_22@@1))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_40195) (ExhaleHeap@@4 T@PolymorphicMapType_40195) (Mask@@18 T@PolymorphicMapType_40216) (pm_f_22@@2 T@Field_28419_113994) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@4 Mask@@18) (=> (and (HasDirectPerm_28419_114058 Mask@@18 null pm_f_22@@2) (IsWandField_28419_115832 pm_f_22@@2)) (and (and (and (and (forall ((o2_22@@4 T@Ref) (f_59@@4 T@Field_40255_53) ) (!  (=> (select (|PolymorphicMapType_40744_40255_53#PolymorphicMapType_40744| (select (|PolymorphicMapType_40195_28419_114171#PolymorphicMapType_40195| Heap@@14) null (WandMaskField_28419 pm_f_22@@2))) o2_22@@4 f_59@@4) (= (select (|PolymorphicMapType_40195_28163_53#PolymorphicMapType_40195| Heap@@14) o2_22@@4 f_59@@4) (select (|PolymorphicMapType_40195_28163_53#PolymorphicMapType_40195| ExhaleHeap@@4) o2_22@@4 f_59@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40195_28163_53#PolymorphicMapType_40195| ExhaleHeap@@4) o2_22@@4 f_59@@4))
)) (forall ((o2_22@@5 T@Ref) (f_59@@5 T@Field_40268_40269) ) (!  (=> (select (|PolymorphicMapType_40744_40255_40269#PolymorphicMapType_40744| (select (|PolymorphicMapType_40195_28419_114171#PolymorphicMapType_40195| Heap@@14) null (WandMaskField_28419 pm_f_22@@2))) o2_22@@5 f_59@@5) (= (select (|PolymorphicMapType_40195_28166_28167#PolymorphicMapType_40195| Heap@@14) o2_22@@5 f_59@@5) (select (|PolymorphicMapType_40195_28166_28167#PolymorphicMapType_40195| ExhaleHeap@@4) o2_22@@5 f_59@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40195_28166_28167#PolymorphicMapType_40195| ExhaleHeap@@4) o2_22@@5 f_59@@5))
))) (forall ((o2_22@@6 T@Ref) (f_59@@6 T@Field_46341_3805) ) (!  (=> (select (|PolymorphicMapType_40744_40255_3805#PolymorphicMapType_40744| (select (|PolymorphicMapType_40195_28419_114171#PolymorphicMapType_40195| Heap@@14) null (WandMaskField_28419 pm_f_22@@2))) o2_22@@6 f_59@@6) (= (select (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| Heap@@14) o2_22@@6 f_59@@6) (select (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| ExhaleHeap@@4) o2_22@@6 f_59@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| ExhaleHeap@@4) o2_22@@6 f_59@@6))
))) (forall ((o2_22@@7 T@Ref) (f_59@@7 T@Field_28419_113994) ) (!  (=> (select (|PolymorphicMapType_40744_40255_113994#PolymorphicMapType_40744| (select (|PolymorphicMapType_40195_28419_114171#PolymorphicMapType_40195| Heap@@14) null (WandMaskField_28419 pm_f_22@@2))) o2_22@@7 f_59@@7) (= (select (|PolymorphicMapType_40195_40255_113994#PolymorphicMapType_40195| Heap@@14) o2_22@@7 f_59@@7) (select (|PolymorphicMapType_40195_40255_113994#PolymorphicMapType_40195| ExhaleHeap@@4) o2_22@@7 f_59@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40195_40255_113994#PolymorphicMapType_40195| ExhaleHeap@@4) o2_22@@7 f_59@@7))
))) (forall ((o2_22@@8 T@Ref) (f_59@@8 T@Field_28419_114127) ) (!  (=> (select (|PolymorphicMapType_40744_40255_115305#PolymorphicMapType_40744| (select (|PolymorphicMapType_40195_28419_114171#PolymorphicMapType_40195| Heap@@14) null (WandMaskField_28419 pm_f_22@@2))) o2_22@@8 f_59@@8) (= (select (|PolymorphicMapType_40195_28419_114171#PolymorphicMapType_40195| Heap@@14) o2_22@@8 f_59@@8) (select (|PolymorphicMapType_40195_28419_114171#PolymorphicMapType_40195| ExhaleHeap@@4) o2_22@@8 f_59@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40195_28419_114171#PolymorphicMapType_40195| ExhaleHeap@@4) o2_22@@8 f_59@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@4 Mask@@18) (IsWandField_28419_115832 pm_f_22@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.281:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3683| (|Seq#Range| q@min@@0 q@max@@0) j@@6) (+ q@min@@0 j@@6)))
 :qid |stdinbpl.654:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3683| (|Seq#Range| q@min@@0 q@max@@0) j@@6))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_40195) (ExhaleHeap@@5 T@PolymorphicMapType_40195) (Mask@@19 T@PolymorphicMapType_40216) (o_45@@0 T@Ref) (f_59@@9 T@Field_28419_114127) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@5 Mask@@19) (=> (HasDirectPerm_28419_119832 Mask@@19 o_45@@0 f_59@@9) (= (select (|PolymorphicMapType_40195_28419_114171#PolymorphicMapType_40195| Heap@@15) o_45@@0 f_59@@9) (select (|PolymorphicMapType_40195_28419_114171#PolymorphicMapType_40195| ExhaleHeap@@5) o_45@@0 f_59@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@5 Mask@@19) (select (|PolymorphicMapType_40195_28419_114171#PolymorphicMapType_40195| ExhaleHeap@@5) o_45@@0 f_59@@9))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_40195) (ExhaleHeap@@6 T@PolymorphicMapType_40195) (Mask@@20 T@PolymorphicMapType_40216) (o_45@@1 T@Ref) (f_59@@10 T@Field_28419_113994) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@6 Mask@@20) (=> (HasDirectPerm_28419_114058 Mask@@20 o_45@@1 f_59@@10) (= (select (|PolymorphicMapType_40195_40255_113994#PolymorphicMapType_40195| Heap@@16) o_45@@1 f_59@@10) (select (|PolymorphicMapType_40195_40255_113994#PolymorphicMapType_40195| ExhaleHeap@@6) o_45@@1 f_59@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@6 Mask@@20) (select (|PolymorphicMapType_40195_40255_113994#PolymorphicMapType_40195| ExhaleHeap@@6) o_45@@1 f_59@@10))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_40195) (ExhaleHeap@@7 T@PolymorphicMapType_40195) (Mask@@21 T@PolymorphicMapType_40216) (o_45@@2 T@Ref) (f_59@@11 T@Field_40268_40269) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@7 Mask@@21) (=> (HasDirectPerm_28419_40269 Mask@@21 o_45@@2 f_59@@11) (= (select (|PolymorphicMapType_40195_28166_28167#PolymorphicMapType_40195| Heap@@17) o_45@@2 f_59@@11) (select (|PolymorphicMapType_40195_28166_28167#PolymorphicMapType_40195| ExhaleHeap@@7) o_45@@2 f_59@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@7 Mask@@21) (select (|PolymorphicMapType_40195_28166_28167#PolymorphicMapType_40195| ExhaleHeap@@7) o_45@@2 f_59@@11))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_40195) (ExhaleHeap@@8 T@PolymorphicMapType_40195) (Mask@@22 T@PolymorphicMapType_40216) (o_45@@3 T@Ref) (f_59@@12 T@Field_40255_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@8 Mask@@22) (=> (HasDirectPerm_28419_53 Mask@@22 o_45@@3 f_59@@12) (= (select (|PolymorphicMapType_40195_28163_53#PolymorphicMapType_40195| Heap@@18) o_45@@3 f_59@@12) (select (|PolymorphicMapType_40195_28163_53#PolymorphicMapType_40195| ExhaleHeap@@8) o_45@@3 f_59@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@8 Mask@@22) (select (|PolymorphicMapType_40195_28163_53#PolymorphicMapType_40195| ExhaleHeap@@8) o_45@@3 f_59@@12))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_40195) (ExhaleHeap@@9 T@PolymorphicMapType_40195) (Mask@@23 T@PolymorphicMapType_40216) (o_45@@4 T@Ref) (f_59@@13 T@Field_46341_3805) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@9 Mask@@23) (=> (HasDirectPerm_28419_3805 Mask@@23 o_45@@4 f_59@@13) (= (select (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| Heap@@19) o_45@@4 f_59@@13) (select (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| ExhaleHeap@@9) o_45@@4 f_59@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@9 Mask@@23) (select (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| ExhaleHeap@@9) o_45@@4 f_59@@13))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_40195) (Mask@@24 T@PolymorphicMapType_40216) (i@@14 Int) (lo@@6 Int) (hi@@10 Int) (step@@4 Int) (vmin@@4 Int) (vmax_1@@4 Int) (ar_1@@10 T@Seq_47383) ) (!  (=> (and (state Heap@@20 Mask@@24) (< AssumeFunctionsAbove 3)) (=> (and (and (and (and (<= 0 lo@@6) (and (<= lo@@6 hi@@10) (and (<= hi@@10 step@@4) (> step@@4 0)))) (and (<= 0 vmin@@4) (and (<= vmin@@4 i@@14) (<= i@@14 vmax_1@@4)))) (<= vmax_1@@4 (|Seq#Length_28458| ar_1@@10))) (forall ((j@@7 Int) (k@@0 Int) ) (!  (=> (and (<= 0 j@@7) (and (< j@@7 vmax_1@@4) (and (<= 0 k@@0) (and (< k@@0 vmax_1@@4) (not (= j@@7 k@@0)))))) (not (= (|Seq#Index_28458| ar_1@@10 j@@7) (|Seq#Index_28458| ar_1@@10 k@@0))))
 :qid |stdinbpl.1009:195|
 :skolemid |85|
 :pattern ( (|Seq#Index_28458| ar_1@@10 j@@7) (|Seq#Index_28458| ar_1@@10 k@@0))
))) (= (sum_square Heap@@20 i@@14 lo@@6 hi@@10 step@@4 vmin@@4 vmax_1@@4 ar_1@@10) (ite (< i@@14 vmax_1@@4) (+ (ite  (and (<= lo@@6 (mod i@@14 step@@4)) (< (mod i@@14 step@@4) hi@@10)) (select (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| Heap@@20) (|Seq#Index_28458| ar_1@@10 i@@14) Ref__Integer_value) 0) (|sum_square'| Heap@@20 (+ i@@14 1) lo@@6 hi@@10 step@@4 vmin@@4 vmax_1@@4 ar_1@@10)) 0))))
 :qid |stdinbpl.1007:15|
 :skolemid |86|
 :pattern ( (state Heap@@20 Mask@@24) (sum_square Heap@@20 i@@14 lo@@6 hi@@10 step@@4 vmin@@4 vmax_1@@4 ar_1@@10))
)))
(assert (forall ((s0@@1 T@Seq_47383) (s1@@1 T@Seq_47383) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_28458|)) (not (= s1@@1 |Seq#Empty_28458|))) (= (|Seq#Length_28458| (|Seq#Append_47383| s0@@1 s1@@1)) (+ (|Seq#Length_28458| s0@@1) (|Seq#Length_28458| s1@@1))))
 :qid |stdinbpl.331:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_28458| (|Seq#Append_47383| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3683) (s1@@2 T@Seq_3683) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3683|)) (not (= s1@@2 |Seq#Empty_3683|))) (= (|Seq#Length_3683| (|Seq#Append_3683| s0@@2 s1@@2)) (+ (|Seq#Length_3683| s0@@2) (|Seq#Length_3683| s1@@2))))
 :qid |stdinbpl.331:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3683| (|Seq#Append_3683| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_28419_114127) ) (! (= (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_28419_113994) ) (! (= (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_40268_40269) ) (! (= (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_40255_53) ) (! (= (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_46341_3805) ) (! (= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_40195) (Mask@@25 T@PolymorphicMapType_40216) (i@@15 Int) (hi@@11 Int) (ar_1@@11 T@Seq_3683) (v_2@@5 Int) ) (!  (=> (and (state Heap@@21 Mask@@25) (< AssumeFunctionsAbove 5)) (=> (and (and (<= 0 i@@15) (<= i@@15 hi@@11)) (<= hi@@11 (|Seq#Length_3683| ar_1@@11))) (= (count_list Heap@@21 i@@15 hi@@11 ar_1@@11 v_2@@5) (ite (< i@@15 hi@@11) (+ (ite (= (|Seq#Index_3683| ar_1@@11 i@@15) v_2@@5) 1 0) (|count_list'| Heap@@21 (+ i@@15 1) hi@@11 ar_1@@11 v_2@@5)) 0))))
 :qid |stdinbpl.1539:15|
 :skolemid |127|
 :pattern ( (state Heap@@21 Mask@@25) (count_list Heap@@21 i@@15 hi@@11 ar_1@@11 v_2@@5))
)))
(assert (forall ((s@@15 T@Seq_47383) (t@@1 T@Seq_47383) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_28458| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_28458| s@@15)) (|Seq#Length_28458| s@@15)) n@@15) (= (|Seq#Drop_28458| (|Seq#Append_47383| s@@15 t@@1) n@@15) (|Seq#Drop_28458| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_28458| s@@15))))))
 :qid |stdinbpl.488:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_28458| (|Seq#Append_47383| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3683) (t@@2 T@Seq_3683) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3683| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3683| s@@16)) (|Seq#Length_3683| s@@16)) n@@16) (= (|Seq#Drop_3683| (|Seq#Append_3683| s@@16 t@@2) n@@16) (|Seq#Drop_3683| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3683| s@@16))))))
 :qid |stdinbpl.488:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3683| (|Seq#Append_3683| s@@16 t@@2) n@@16))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_40195) (i@@16 Int) (lo@@7 Int) (hi@@12 Int) (ar_1@@12 T@Seq_47383) ) (!  (and (= (sum_array Heap@@22 i@@16 lo@@7 hi@@12 ar_1@@12) (|sum_array'| Heap@@22 i@@16 lo@@7 hi@@12 ar_1@@12)) (dummyFunction_4112 (|sum_array#triggerStateless| i@@16 lo@@7 hi@@12 ar_1@@12)))
 :qid |stdinbpl.762:15|
 :skolemid |62|
 :pattern ( (sum_array Heap@@22 i@@16 lo@@7 hi@@12 ar_1@@12))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_40195) (i@@17 Int) (hi@@13 Int) (ar_1@@13 T@Seq_3683) (v_2@@6 Int) ) (!  (and (= (count_list Heap@@23 i@@17 hi@@13 ar_1@@13 v_2@@6) (|count_list'| Heap@@23 i@@17 hi@@13 ar_1@@13 v_2@@6)) (dummyFunction_4112 (|count_list#triggerStateless| i@@17 hi@@13 ar_1@@13 v_2@@6)))
 :qid |stdinbpl.1529:15|
 :skolemid |125|
 :pattern ( (count_list Heap@@23 i@@17 hi@@13 ar_1@@13 v_2@@6))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_40195) (i@@18 Int) (hi@@14 Int) (ar_1@@14 T@Seq_47383) (v_2@@7 Int) ) (!  (and (= (count_array Heap@@24 i@@18 hi@@14 ar_1@@14 v_2@@7) (|count_array'| Heap@@24 i@@18 hi@@14 ar_1@@14 v_2@@7)) (dummyFunction_4112 (|count_array#triggerStateless| i@@18 hi@@14 ar_1@@14 v_2@@7)))
 :qid |stdinbpl.1614:15|
 :skolemid |129|
 :pattern ( (count_array Heap@@24 i@@18 hi@@14 ar_1@@14 v_2@@7))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_40216) (SummandMask1 T@PolymorphicMapType_40216) (SummandMask2 T@PolymorphicMapType_40216) (o_2@@19 T@Ref) (f_4@@19 T@Field_28419_114127) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_40216) (SummandMask1@@0 T@PolymorphicMapType_40216) (SummandMask2@@0 T@PolymorphicMapType_40216) (o_2@@20 T@Ref) (f_4@@20 T@Field_28419_113994) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_40216) (SummandMask1@@1 T@PolymorphicMapType_40216) (SummandMask2@@1 T@PolymorphicMapType_40216) (o_2@@21 T@Ref) (f_4@@21 T@Field_40268_40269) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_40216) (SummandMask1@@2 T@PolymorphicMapType_40216) (SummandMask2@@2 T@PolymorphicMapType_40216) (o_2@@22 T@Ref) (f_4@@22 T@Field_40255_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_40216) (SummandMask1@@3 T@PolymorphicMapType_40216) (SummandMask2@@3 T@PolymorphicMapType_40216) (o_2@@23 T@Ref) (f_4@@23 T@Field_46341_3805) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_40195) (i@@19 Int) (lo@@8 Int) (hi@@15 Int) (step@@5 Int) (vmin@@5 Int) (vmax_1@@5 Int) (ar_1@@15 T@Seq_47383) ) (!  (and (= (sum_square Heap@@25 i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax_1@@5 ar_1@@15) (|sum_square'| Heap@@25 i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax_1@@5 ar_1@@15)) (dummyFunction_4112 (|sum_square#triggerStateless| i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax_1@@5 ar_1@@15)))
 :qid |stdinbpl.997:15|
 :skolemid |83|
 :pattern ( (sum_square Heap@@25 i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax_1@@5 ar_1@@15))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_40195) (Mask@@26 T@PolymorphicMapType_40216) (i@@20 Int) (hi@@16 Int) (ar_1@@16 T@Seq_3683) (v_2@@8 Int) ) (!  (=> (state Heap@@26 Mask@@26) (= (|count_list'| Heap@@26 i@@20 hi@@16 ar_1@@16 v_2@@8) (|count_list#frame| EmptyFrame i@@20 hi@@16 ar_1@@16 v_2@@8)))
 :qid |stdinbpl.1546:15|
 :skolemid |128|
 :pattern ( (state Heap@@26 Mask@@26) (|count_list'| Heap@@26 i@@20 hi@@16 ar_1@@16 v_2@@8))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3683| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3683| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.653:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3683| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_47383) (b T@Seq_47383) ) (!  (=> (|Seq#Equal_47383| a b) (= a b))
 :qid |stdinbpl.626:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_47383| a b))
)))
(assert (forall ((a@@0 T@Seq_3683) (b@@0 T@Seq_3683) ) (!  (=> (|Seq#Equal_3683| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.626:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3683| a@@0 b@@0))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_40195) (i@@21 Int) (hi@@17 Int) (ar_1@@17 T@Seq_3683) ) (!  (and (= (sum_list Heap@@27 i@@21 hi@@17 ar_1@@17) (|sum_list'| Heap@@27 i@@21 hi@@17 ar_1@@17)) (dummyFunction_4112 (|sum_list#triggerStateless| i@@21 hi@@17 ar_1@@17)))
 :qid |stdinbpl.677:15|
 :skolemid |58|
 :pattern ( (sum_list Heap@@27 i@@21 hi@@17 ar_1@@17))
)))
(assert (forall ((s@@17 T@Seq_47383) (i@@22 Int) ) (!  (=> (and (<= 0 i@@22) (< i@@22 (|Seq#Length_28458| s@@17))) (|Seq#ContainsTrigger_28458| s@@17 (|Seq#Index_28458| s@@17 i@@22)))
 :qid |stdinbpl.519:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_28458| s@@17 i@@22))
)))
(assert (forall ((s@@18 T@Seq_3683) (i@@23 Int) ) (!  (=> (and (<= 0 i@@23) (< i@@23 (|Seq#Length_3683| s@@18))) (|Seq#ContainsTrigger_3683| s@@18 (|Seq#Index_3683| s@@18 i@@23)))
 :qid |stdinbpl.519:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3683| s@@18 i@@23))
)))
(assert (forall ((s0@@3 T@Seq_47383) (s1@@3 T@Seq_47383) ) (!  (and (=> (= s0@@3 |Seq#Empty_28458|) (= (|Seq#Append_47383| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_28458|) (= (|Seq#Append_47383| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.337:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_47383| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3683) (s1@@4 T@Seq_3683) ) (!  (and (=> (= s0@@4 |Seq#Empty_3683|) (= (|Seq#Append_3683| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3683|) (= (|Seq#Append_3683| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.337:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3683| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_28458| (|Seq#Singleton_28458| t@@3) 0) t@@3)
 :qid |stdinbpl.341:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_28458| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3683| (|Seq#Singleton_3683| t@@4) 0) t@@4)
 :qid |stdinbpl.341:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3683| t@@4))
)))
(assert (forall ((s@@19 T@Seq_47383) ) (! (<= 0 (|Seq#Length_28458| s@@19))
 :qid |stdinbpl.320:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_28458| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3683) ) (! (<= 0 (|Seq#Length_3683| s@@20))
 :qid |stdinbpl.320:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3683| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_47383) (s1@@5 T@Seq_47383) ) (!  (=> (|Seq#Equal_47383| s0@@5 s1@@5) (and (= (|Seq#Length_28458| s0@@5) (|Seq#Length_28458| s1@@5)) (forall ((j@@8 Int) ) (!  (=> (and (<= 0 j@@8) (< j@@8 (|Seq#Length_28458| s0@@5))) (= (|Seq#Index_28458| s0@@5 j@@8) (|Seq#Index_28458| s1@@5 j@@8)))
 :qid |stdinbpl.616:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_28458| s0@@5 j@@8))
 :pattern ( (|Seq#Index_28458| s1@@5 j@@8))
))))
 :qid |stdinbpl.613:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_47383| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3683) (s1@@6 T@Seq_3683) ) (!  (=> (|Seq#Equal_3683| s0@@6 s1@@6) (and (= (|Seq#Length_3683| s0@@6) (|Seq#Length_3683| s1@@6)) (forall ((j@@9 Int) ) (!  (=> (and (<= 0 j@@9) (< j@@9 (|Seq#Length_3683| s0@@6))) (= (|Seq#Index_3683| s0@@6 j@@9) (|Seq#Index_3683| s1@@6 j@@9)))
 :qid |stdinbpl.616:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3683| s0@@6 j@@9))
 :pattern ( (|Seq#Index_3683| s1@@6 j@@9))
))))
 :qid |stdinbpl.613:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3683| s0@@6 s1@@6))
)))
(assert (forall ((Heap2Heap@@1 T@PolymorphicMapType_40195) (Heap1Heap@@1 T@PolymorphicMapType_40195) (i@@24 Int) (hi@@18 Int) (ar_1@@18 T@Seq_47383) (v_2@@9 Int) ) (!  (=> (and (=  (and (<= 0 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9))) (< (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9)) hi@@18))  (and (<= 0 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9))) (< (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9)) hi@@18))) (=> (and (<= 0 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9))) (< (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9)) hi@@18)) (= (select (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| Heap2Heap@@1) (|Seq#Index_28458| ar_1@@18 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9))) Ref__Integer_value) (select (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| Heap1Heap@@1) (|Seq#Index_28458| ar_1@@18 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9))) Ref__Integer_value)))) (= (|count_array#condqp4| Heap2Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9)))
 :qid |stdinbpl.1644:15|
 :skolemid |134|
 :pattern ( (|count_array#condqp4| Heap2Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9) (succHeapTrans Heap2Heap@@1 Heap1Heap@@1))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_28458| (|Seq#Singleton_28458| t@@5)) 1)
 :qid |stdinbpl.328:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_28458| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3683| (|Seq#Singleton_3683| t@@6)) 1)
 :qid |stdinbpl.328:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3683| t@@6))
)))
(assert (forall ((Heap2Heap@@2 T@PolymorphicMapType_40195) (Heap1Heap@@2 T@PolymorphicMapType_40195) (i@@25 Int) (lo@@9 Int) (hi@@19 Int) (ar_1@@19 T@Seq_47383) ) (!  (=> (and (=  (and (<= lo@@9 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19))) (< (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19)) hi@@19))  (and (<= lo@@9 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19))) (< (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19)) hi@@19))) (=> (and (<= lo@@9 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19))) (< (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19)) hi@@19)) (= (select (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| Heap2Heap@@2) (|Seq#Index_28458| ar_1@@19 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19))) Ref__Integer_value) (select (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| Heap1Heap@@2) (|Seq#Index_28458| ar_1@@19 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19))) Ref__Integer_value)))) (= (|sum_array#condqp1| Heap2Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19)))
 :qid |stdinbpl.792:15|
 :skolemid |67|
 :pattern ( (|sum_array#condqp1| Heap2Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19) (succHeapTrans Heap2Heap@@2 Heap1Heap@@2))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_40195) (Mask@@27 T@PolymorphicMapType_40216) (i@@26 Int) (lo@@10 Int) (hi@@20 Int) (step@@6 Int) (vmin@@6 Int) (vmax_1@@6 Int) (ar_1@@20 T@Seq_47383) (v_2@@10 Int) ) (!  (=> (and (state Heap@@28 Mask@@27) (< AssumeFunctionsAbove 0)) (=> (and (and (and (and (<= 0 lo@@10) (and (<= lo@@10 hi@@20) (and (<= hi@@20 step@@6) (> step@@6 0)))) (and (<= 0 vmin@@6) (and (<= vmin@@6 i@@26) (<= i@@26 vmax_1@@6)))) (<= vmax_1@@6 (|Seq#Length_28458| ar_1@@20))) (forall ((j@@10 Int) (k@@1 Int) ) (!  (=> (and (<= 0 j@@10) (and (< j@@10 vmax_1@@6) (and (<= 0 k@@1) (and (< k@@1 vmax_1@@6) (not (= j@@10 k@@1)))))) (not (= (|Seq#Index_28458| ar_1@@20 j@@10) (|Seq#Index_28458| ar_1@@20 k@@1))))
 :qid |stdinbpl.1275:195|
 :skolemid |106|
 :pattern ( (|Seq#Index_28458| ar_1@@20 j@@10) (|Seq#Index_28458| ar_1@@20 k@@1))
))) (= (count_square Heap@@28 i@@26 lo@@10 hi@@20 step@@6 vmin@@6 vmax_1@@6 ar_1@@20 v_2@@10) (ite (< i@@26 vmax_1@@6) (+ (ite  (and (<= lo@@10 (mod i@@26 step@@6)) (and (< (mod i@@26 step@@6) hi@@20) (= (select (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| Heap@@28) (|Seq#Index_28458| ar_1@@20 i@@26) Ref__Integer_value) v_2@@10))) 1 0) (|count_square'| Heap@@28 (+ i@@26 1) lo@@10 hi@@20 step@@6 vmin@@6 vmax_1@@6 ar_1@@20 v_2@@10)) 0))))
 :qid |stdinbpl.1273:15|
 :skolemid |107|
 :pattern ( (state Heap@@28 Mask@@27) (count_square Heap@@28 i@@26 lo@@10 hi@@20 step@@6 vmin@@6 vmax_1@@6 ar_1@@20 v_2@@10))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_40195) (Mask@@28 T@PolymorphicMapType_40216) (i@@27 Int) (hi@@21 Int) (ar_1@@21 T@Seq_3683) ) (!  (=> (and (state Heap@@29 Mask@@28) (< AssumeFunctionsAbove 4)) (=> (and (and (<= 0 i@@27) (<= i@@27 hi@@21)) (<= hi@@21 (|Seq#Length_3683| ar_1@@21))) (= (sum_list Heap@@29 i@@27 hi@@21 ar_1@@21) (ite (< i@@27 hi@@21) (+ (|Seq#Index_3683| ar_1@@21 i@@27) (|sum_list'| Heap@@29 (+ i@@27 1) hi@@21 ar_1@@21)) 0))))
 :qid |stdinbpl.687:15|
 :skolemid |60|
 :pattern ( (state Heap@@29 Mask@@28) (sum_list Heap@@29 i@@27 hi@@21 ar_1@@21))
)))
(assert (forall ((s@@21 T@Seq_47383) (t@@7 T@Seq_47383) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_28458| s@@21))) (= (|Seq#Take_28458| (|Seq#Append_47383| s@@21 t@@7) n@@17) (|Seq#Take_28458| s@@21 n@@17)))
 :qid |stdinbpl.470:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_28458| (|Seq#Append_47383| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3683) (t@@8 T@Seq_3683) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3683| s@@22))) (= (|Seq#Take_3683| (|Seq#Append_3683| s@@22 t@@8) n@@18) (|Seq#Take_3683| s@@22 n@@18)))
 :qid |stdinbpl.470:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3683| (|Seq#Append_3683| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_47383) (i@@28 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@28) (< i@@28 (|Seq#Length_28458| s@@23))) (= (|Seq#Length_28458| (|Seq#Update_28458| s@@23 i@@28 v@@2)) (|Seq#Length_28458| s@@23)))
 :qid |stdinbpl.369:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_28458| (|Seq#Update_28458| s@@23 i@@28 v@@2)))
 :pattern ( (|Seq#Length_28458| s@@23) (|Seq#Update_28458| s@@23 i@@28 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3683) (i@@29 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@29) (< i@@29 (|Seq#Length_3683| s@@24))) (= (|Seq#Length_3683| (|Seq#Update_3683| s@@24 i@@29 v@@3)) (|Seq#Length_3683| s@@24)))
 :qid |stdinbpl.369:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3683| (|Seq#Update_3683| s@@24 i@@29 v@@3)))
 :pattern ( (|Seq#Length_3683| s@@24) (|Seq#Update_3683| s@@24 i@@29 v@@3))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_40195) (o_44 T@Ref) (f_31 T@Field_28419_113994) (v@@4 T@FrameType) ) (! (succHeap Heap@@30 (PolymorphicMapType_40195 (|PolymorphicMapType_40195_28163_53#PolymorphicMapType_40195| Heap@@30) (|PolymorphicMapType_40195_28166_28167#PolymorphicMapType_40195| Heap@@30) (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| Heap@@30) (|PolymorphicMapType_40195_28419_114171#PolymorphicMapType_40195| Heap@@30) (store (|PolymorphicMapType_40195_40255_113994#PolymorphicMapType_40195| Heap@@30) o_44 f_31 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40195 (|PolymorphicMapType_40195_28163_53#PolymorphicMapType_40195| Heap@@30) (|PolymorphicMapType_40195_28166_28167#PolymorphicMapType_40195| Heap@@30) (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| Heap@@30) (|PolymorphicMapType_40195_28419_114171#PolymorphicMapType_40195| Heap@@30) (store (|PolymorphicMapType_40195_40255_113994#PolymorphicMapType_40195| Heap@@30) o_44 f_31 v@@4)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_40195) (o_44@@0 T@Ref) (f_31@@0 T@Field_28419_114127) (v@@5 T@PolymorphicMapType_40744) ) (! (succHeap Heap@@31 (PolymorphicMapType_40195 (|PolymorphicMapType_40195_28163_53#PolymorphicMapType_40195| Heap@@31) (|PolymorphicMapType_40195_28166_28167#PolymorphicMapType_40195| Heap@@31) (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| Heap@@31) (store (|PolymorphicMapType_40195_28419_114171#PolymorphicMapType_40195| Heap@@31) o_44@@0 f_31@@0 v@@5) (|PolymorphicMapType_40195_40255_113994#PolymorphicMapType_40195| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40195 (|PolymorphicMapType_40195_28163_53#PolymorphicMapType_40195| Heap@@31) (|PolymorphicMapType_40195_28166_28167#PolymorphicMapType_40195| Heap@@31) (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| Heap@@31) (store (|PolymorphicMapType_40195_28419_114171#PolymorphicMapType_40195| Heap@@31) o_44@@0 f_31@@0 v@@5) (|PolymorphicMapType_40195_40255_113994#PolymorphicMapType_40195| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_40195) (o_44@@1 T@Ref) (f_31@@1 T@Field_46341_3805) (v@@6 Int) ) (! (succHeap Heap@@32 (PolymorphicMapType_40195 (|PolymorphicMapType_40195_28163_53#PolymorphicMapType_40195| Heap@@32) (|PolymorphicMapType_40195_28166_28167#PolymorphicMapType_40195| Heap@@32) (store (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| Heap@@32) o_44@@1 f_31@@1 v@@6) (|PolymorphicMapType_40195_28419_114171#PolymorphicMapType_40195| Heap@@32) (|PolymorphicMapType_40195_40255_113994#PolymorphicMapType_40195| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40195 (|PolymorphicMapType_40195_28163_53#PolymorphicMapType_40195| Heap@@32) (|PolymorphicMapType_40195_28166_28167#PolymorphicMapType_40195| Heap@@32) (store (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| Heap@@32) o_44@@1 f_31@@1 v@@6) (|PolymorphicMapType_40195_28419_114171#PolymorphicMapType_40195| Heap@@32) (|PolymorphicMapType_40195_40255_113994#PolymorphicMapType_40195| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_40195) (o_44@@2 T@Ref) (f_31@@2 T@Field_40268_40269) (v@@7 T@Ref) ) (! (succHeap Heap@@33 (PolymorphicMapType_40195 (|PolymorphicMapType_40195_28163_53#PolymorphicMapType_40195| Heap@@33) (store (|PolymorphicMapType_40195_28166_28167#PolymorphicMapType_40195| Heap@@33) o_44@@2 f_31@@2 v@@7) (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| Heap@@33) (|PolymorphicMapType_40195_28419_114171#PolymorphicMapType_40195| Heap@@33) (|PolymorphicMapType_40195_40255_113994#PolymorphicMapType_40195| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40195 (|PolymorphicMapType_40195_28163_53#PolymorphicMapType_40195| Heap@@33) (store (|PolymorphicMapType_40195_28166_28167#PolymorphicMapType_40195| Heap@@33) o_44@@2 f_31@@2 v@@7) (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| Heap@@33) (|PolymorphicMapType_40195_28419_114171#PolymorphicMapType_40195| Heap@@33) (|PolymorphicMapType_40195_40255_113994#PolymorphicMapType_40195| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_40195) (o_44@@3 T@Ref) (f_31@@3 T@Field_40255_53) (v@@8 Bool) ) (! (succHeap Heap@@34 (PolymorphicMapType_40195 (store (|PolymorphicMapType_40195_28163_53#PolymorphicMapType_40195| Heap@@34) o_44@@3 f_31@@3 v@@8) (|PolymorphicMapType_40195_28166_28167#PolymorphicMapType_40195| Heap@@34) (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| Heap@@34) (|PolymorphicMapType_40195_28419_114171#PolymorphicMapType_40195| Heap@@34) (|PolymorphicMapType_40195_40255_113994#PolymorphicMapType_40195| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40195 (store (|PolymorphicMapType_40195_28163_53#PolymorphicMapType_40195| Heap@@34) o_44@@3 f_31@@3 v@@8) (|PolymorphicMapType_40195_28166_28167#PolymorphicMapType_40195| Heap@@34) (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| Heap@@34) (|PolymorphicMapType_40195_28419_114171#PolymorphicMapType_40195| Heap@@34) (|PolymorphicMapType_40195_40255_113994#PolymorphicMapType_40195| Heap@@34)))
)))
(assert (forall ((s@@25 T@Seq_47383) (t@@9 T@Seq_47383) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_28458| s@@25))) (= (|Seq#Drop_28458| (|Seq#Append_47383| s@@25 t@@9) n@@19) (|Seq#Append_47383| (|Seq#Drop_28458| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.484:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_28458| (|Seq#Append_47383| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3683) (t@@10 T@Seq_3683) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3683| s@@26))) (= (|Seq#Drop_3683| (|Seq#Append_3683| s@@26 t@@10) n@@20) (|Seq#Append_3683| (|Seq#Drop_3683| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.484:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3683| (|Seq#Append_3683| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_47383) (n@@21 Int) (i@@30 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@30)) (< i@@30 (|Seq#Length_28458| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@30 n@@21) n@@21) i@@30) (= (|Seq#Index_28458| (|Seq#Drop_28458| s@@27 n@@21) (|Seq#Sub| i@@30 n@@21)) (|Seq#Index_28458| s@@27 i@@30))))
 :qid |stdinbpl.420:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_28458| s@@27 n@@21) (|Seq#Index_28458| s@@27 i@@30))
)))
(assert (forall ((s@@28 T@Seq_3683) (n@@22 Int) (i@@31 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@31)) (< i@@31 (|Seq#Length_3683| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@31 n@@22) n@@22) i@@31) (= (|Seq#Index_3683| (|Seq#Drop_3683| s@@28 n@@22) (|Seq#Sub| i@@31 n@@22)) (|Seq#Index_3683| s@@28 i@@31))))
 :qid |stdinbpl.420:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3683| s@@28 n@@22) (|Seq#Index_3683| s@@28 i@@31))
)))
(assert (forall ((s0@@7 T@Seq_47383) (s1@@7 T@Seq_47383) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_28458|)) (not (= s1@@7 |Seq#Empty_28458|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_28458| s0@@7))) (= (|Seq#Index_28458| (|Seq#Append_47383| s0@@7 s1@@7) n@@23) (|Seq#Index_28458| s0@@7 n@@23)))
 :qid |stdinbpl.360:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_28458| (|Seq#Append_47383| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_28458| s0@@7 n@@23) (|Seq#Append_47383| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3683) (s1@@8 T@Seq_3683) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3683|)) (not (= s1@@8 |Seq#Empty_3683|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3683| s0@@8))) (= (|Seq#Index_3683| (|Seq#Append_3683| s0@@8 s1@@8) n@@24) (|Seq#Index_3683| s0@@8 n@@24)))
 :qid |stdinbpl.360:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3683| (|Seq#Append_3683| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3683| s0@@8 n@@24) (|Seq#Append_3683| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_47383) (s1@@9 T@Seq_47383) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_28458|)) (not (= s1@@9 |Seq#Empty_28458|))) (<= 0 m)) (< m (|Seq#Length_28458| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_28458| s0@@9)) (|Seq#Length_28458| s0@@9)) m) (= (|Seq#Index_28458| (|Seq#Append_47383| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_28458| s0@@9))) (|Seq#Index_28458| s1@@9 m))))
 :qid |stdinbpl.365:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_28458| s1@@9 m) (|Seq#Append_47383| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3683) (s1@@10 T@Seq_3683) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3683|)) (not (= s1@@10 |Seq#Empty_3683|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3683| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3683| s0@@10)) (|Seq#Length_3683| s0@@10)) m@@0) (= (|Seq#Index_3683| (|Seq#Append_3683| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3683| s0@@10))) (|Seq#Index_3683| s1@@10 m@@0))))
 :qid |stdinbpl.365:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3683| s1@@10 m@@0) (|Seq#Append_3683| s0@@10 s1@@10))
)))
(assert (forall ((o_44@@4 T@Ref) (f_58 T@Field_40268_40269) (Heap@@35 T@PolymorphicMapType_40195) ) (!  (=> (select (|PolymorphicMapType_40195_28163_53#PolymorphicMapType_40195| Heap@@35) o_44@@4 $allocated) (select (|PolymorphicMapType_40195_28163_53#PolymorphicMapType_40195| Heap@@35) (select (|PolymorphicMapType_40195_28166_28167#PolymorphicMapType_40195| Heap@@35) o_44@@4 f_58) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_40195_28166_28167#PolymorphicMapType_40195| Heap@@35) o_44@@4 f_58))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_40195) (Mask@@29 T@PolymorphicMapType_40216) (i@@32 Int) (lo@@11 Int) (hi@@22 Int) (step@@7 Int) (vmin@@7 Int) (vmax_1@@7 Int) (ar_1@@22 T@Seq_47383) ) (!  (=> (state Heap@@36 Mask@@29) (= (|sum_square'| Heap@@36 i@@32 lo@@11 hi@@22 step@@7 vmin@@7 vmax_1@@7 ar_1@@22) (|sum_square#frame| (FrameFragment_4660 (|sum_square#condqp2| Heap@@36 i@@32 lo@@11 hi@@22 step@@7 vmin@@7 vmax_1@@7 ar_1@@22)) i@@32 lo@@11 hi@@22 step@@7 vmin@@7 vmax_1@@7 ar_1@@22)))
 :qid |stdinbpl.1017:15|
 :skolemid |87|
 :pattern ( (state Heap@@36 Mask@@29) (|sum_square'| Heap@@36 i@@32 lo@@11 hi@@22 step@@7 vmin@@7 vmax_1@@7 ar_1@@22))
)))
(assert (forall ((s@@29 T@Seq_47383) (x@@3 T@Ref) (i@@33 Int) ) (!  (=> (and (and (<= 0 i@@33) (< i@@33 (|Seq#Length_28458| s@@29))) (= (|Seq#Index_28458| s@@29 i@@33) x@@3)) (|Seq#Contains_47383| s@@29 x@@3))
 :qid |stdinbpl.517:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_47383| s@@29 x@@3) (|Seq#Index_28458| s@@29 i@@33))
)))
(assert (forall ((s@@30 T@Seq_3683) (x@@4 Int) (i@@34 Int) ) (!  (=> (and (and (<= 0 i@@34) (< i@@34 (|Seq#Length_3683| s@@30))) (= (|Seq#Index_3683| s@@30 i@@34) x@@4)) (|Seq#Contains_3683| s@@30 x@@4))
 :qid |stdinbpl.517:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3683| s@@30 x@@4) (|Seq#Index_3683| s@@30 i@@34))
)))
(assert (forall ((s0@@11 T@Seq_47383) (s1@@11 T@Seq_47383) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_47383| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_47383| s0@@11 s1@@11))) (not (= (|Seq#Length_28458| s0@@11) (|Seq#Length_28458| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_47383| s0@@11 s1@@11))) (= (|Seq#Length_28458| s0@@11) (|Seq#Length_28458| s1@@11))) (= (|Seq#SkolemDiff_47383| s0@@11 s1@@11) (|Seq#SkolemDiff_47383| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_47383| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_47383| s0@@11 s1@@11) (|Seq#Length_28458| s0@@11))) (not (= (|Seq#Index_28458| s0@@11 (|Seq#SkolemDiff_47383| s0@@11 s1@@11)) (|Seq#Index_28458| s1@@11 (|Seq#SkolemDiff_47383| s0@@11 s1@@11))))))
 :qid |stdinbpl.621:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_47383| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3683) (s1@@12 T@Seq_3683) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3683| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3683| s0@@12 s1@@12))) (not (= (|Seq#Length_3683| s0@@12) (|Seq#Length_3683| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3683| s0@@12 s1@@12))) (= (|Seq#Length_3683| s0@@12) (|Seq#Length_3683| s1@@12))) (= (|Seq#SkolemDiff_3683| s0@@12 s1@@12) (|Seq#SkolemDiff_3683| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3683| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3683| s0@@12 s1@@12) (|Seq#Length_3683| s0@@12))) (not (= (|Seq#Index_3683| s0@@12 (|Seq#SkolemDiff_3683| s0@@12 s1@@12)) (|Seq#Index_3683| s1@@12 (|Seq#SkolemDiff_3683| s0@@12 s1@@12))))))
 :qid |stdinbpl.621:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3683| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_28419_113994) (v_1@@0 T@FrameType) (q T@Field_28419_113994) (w@@0 T@FrameType) (r T@Field_28419_113994) (u T@FrameType) ) (!  (=> (and (InsidePredicate_40255_40255 p@@1 v_1@@0 q w@@0) (InsidePredicate_40255_40255 q w@@0 r u)) (InsidePredicate_40255_40255 p@@1 v_1@@0 r u))
 :qid |stdinbpl.288:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_40255_40255 p@@1 v_1@@0 q w@@0) (InsidePredicate_40255_40255 q w@@0 r u))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_40195) (i@@35 Int) (lo@@12 Int) (hi@@23 Int) (step@@8 Int) (vmin@@8 Int) (vmax_1@@8 Int) (ar_1@@23 T@Seq_47383) ) (! (dummyFunction_4112 (|sum_square#triggerStateless| i@@35 lo@@12 hi@@23 step@@8 vmin@@8 vmax_1@@8 ar_1@@23))
 :qid |stdinbpl.1001:15|
 :skolemid |84|
 :pattern ( (|sum_square'| Heap@@37 i@@35 lo@@12 hi@@23 step@@8 vmin@@8 vmax_1@@8 ar_1@@23))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_40195) (Mask@@30 T@PolymorphicMapType_40216) (i@@36 Int) (hi@@24 Int) (ar_1@@24 T@Seq_47383) (v_2@@11 Int) ) (!  (=> (and (state Heap@@38 Mask@@30) (< AssumeFunctionsAbove 1)) (=> (and (and (and (<= 0 i@@36) (<= i@@36 hi@@24)) (<= hi@@24 (|Seq#Length_28458| ar_1@@24))) (forall ((j@@11 Int) (k@@2 Int) ) (!  (=> (and (<= 0 j@@11) (and (< j@@11 hi@@24) (and (<= 0 k@@2) (and (< k@@2 hi@@24) (not (= j@@11 k@@2)))))) (not (= (|Seq#Index_28458| ar_1@@24 j@@11) (|Seq#Index_28458| ar_1@@24 k@@2))))
 :qid |stdinbpl.1626:112|
 :skolemid |131|
 :pattern ( (|Seq#Index_28458| ar_1@@24 j@@11) (|Seq#Index_28458| ar_1@@24 k@@2))
))) (= (count_array Heap@@38 i@@36 hi@@24 ar_1@@24 v_2@@11) (ite (< i@@36 hi@@24) (+ (ite (= (select (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| Heap@@38) (|Seq#Index_28458| ar_1@@24 i@@36) Ref__Integer_value) v_2@@11) 1 0) (|count_array'| Heap@@38 (+ i@@36 1) hi@@24 ar_1@@24 v_2@@11)) 0))))
 :qid |stdinbpl.1624:15|
 :skolemid |132|
 :pattern ( (state Heap@@38 Mask@@30) (count_array Heap@@38 i@@36 hi@@24 ar_1@@24 v_2@@11))
)))
(assert (forall ((s@@31 T@Seq_47383) ) (!  (=> (= (|Seq#Length_28458| s@@31) 0) (= s@@31 |Seq#Empty_28458|))
 :qid |stdinbpl.324:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_28458| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3683) ) (!  (=> (= (|Seq#Length_3683| s@@32) 0) (= s@@32 |Seq#Empty_3683|))
 :qid |stdinbpl.324:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3683| s@@32))
)))
(assert (forall ((s@@33 T@Seq_47383) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_28458| s@@33 n@@25) |Seq#Empty_28458|))
 :qid |stdinbpl.500:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_28458| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3683) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3683| s@@34 n@@26) |Seq#Empty_3683|))
 :qid |stdinbpl.500:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3683| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@39 T@PolymorphicMapType_40195) (Mask@@31 T@PolymorphicMapType_40216) (i@@37 Int) (lo@@13 Int) (hi@@25 Int) (ar_1@@25 T@Seq_47383) ) (!  (=> (state Heap@@39 Mask@@31) (= (|sum_array'| Heap@@39 i@@37 lo@@13 hi@@25 ar_1@@25) (|sum_array#frame| (FrameFragment_4660 (|sum_array#condqp1| Heap@@39 i@@37 lo@@13 hi@@25 ar_1@@25)) i@@37 lo@@13 hi@@25 ar_1@@25)))
 :qid |stdinbpl.782:15|
 :skolemid |66|
 :pattern ( (state Heap@@39 Mask@@31) (|sum_array'| Heap@@39 i@@37 lo@@13 hi@@25 ar_1@@25))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_40195) (Mask@@32 T@PolymorphicMapType_40216) (i@@38 Int) (hi@@26 Int) (ar_1@@26 T@Seq_47383) (v_2@@12 Int) ) (!  (=> (state Heap@@40 Mask@@32) (= (|count_array'| Heap@@40 i@@38 hi@@26 ar_1@@26 v_2@@12) (|count_array#frame| (FrameFragment_4660 (|count_array#condqp4| Heap@@40 i@@38 hi@@26 ar_1@@26 v_2@@12)) i@@38 hi@@26 ar_1@@26 v_2@@12)))
 :qid |stdinbpl.1634:15|
 :skolemid |133|
 :pattern ( (state Heap@@40 Mask@@32) (|count_array'| Heap@@40 i@@38 hi@@26 ar_1@@26 v_2@@12))
)))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun i_73 () Int)
(declare-fun len_3 () Int)
(declare-fun c () T@Seq_47383)
(declare-fun QPMask@15 () T@PolymorphicMapType_40216)
(declare-fun b_24 () T@Seq_47383)
(declare-fun PostHeap@0 () T@PolymorphicMapType_40195)
(declare-fun i_72 () Int)
(declare-fun a_2 () T@Seq_47383)
(declare-fun i_71 () Int)
(declare-fun qpRange24 (T@Ref) Bool)
(declare-fun invRecv24 (T@Ref) Int)
(declare-fun QPMask@14 () T@PolymorphicMapType_40216)
(declare-fun i_70 () Int)
(declare-fun qpRange23 (T@Ref) Bool)
(declare-fun invRecv23 (T@Ref) Int)
(declare-fun QPMask@13 () T@PolymorphicMapType_40216)
(declare-fun i_69 () Int)
(declare-fun qpRange22 (T@Ref) Bool)
(declare-fun invRecv22 (T@Ref) Int)
(declare-fun i_68 () Int)
(declare-fun i_25_1 () Int)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_40195)
(declare-fun i_23_1 () Int)
(declare-fun i_21_1 () Int)
(declare-fun Heap@@41 () T@PolymorphicMapType_40195)
(declare-fun QPMask@6 () T@PolymorphicMapType_40216)
(declare-fun qpRange32 (T@Ref) Bool)
(declare-fun invRecv32 (T@Ref) Int)
(declare-fun QPMask@7 () T@PolymorphicMapType_40216)
(declare-fun qpRange33 (T@Ref) Bool)
(declare-fun invRecv33 (T@Ref) Int)
(declare-fun QPMask@8 () T@PolymorphicMapType_40216)
(declare-fun qpRange34 (T@Ref) Bool)
(declare-fun invRecv34 (T@Ref) Int)
(declare-fun QPMask@9 () T@PolymorphicMapType_40216)
(declare-fun neverTriggered25 (Int) Bool)
(declare-fun qpRange25 (T@Ref) Bool)
(declare-fun invRecv25 (T@Ref) Int)
(declare-fun QPMask@10 () T@PolymorphicMapType_40216)
(declare-fun neverTriggered26 (Int) Bool)
(declare-fun qpRange26 (T@Ref) Bool)
(declare-fun invRecv26 (T@Ref) Int)
(declare-fun QPMask@11 () T@PolymorphicMapType_40216)
(declare-fun neverTriggered27 (Int) Bool)
(declare-fun qpRange27 (T@Ref) Bool)
(declare-fun invRecv27 (T@Ref) Int)
(declare-fun QPMask@12 () T@PolymorphicMapType_40216)
(declare-fun i_33 () Int)
(declare-fun i_31 () Int)
(declare-fun neverTriggered31 (Int) Bool)
(declare-fun QPMask@5 () T@PolymorphicMapType_40216)
(declare-fun qpRange31 (T@Ref) Bool)
(declare-fun invRecv31 (T@Ref) Int)
(declare-fun j_10_2 () Int)
(declare-fun k_10 () Int)
(declare-fun neverTriggered30 (Int) Bool)
(declare-fun QPMask@4 () T@PolymorphicMapType_40216)
(declare-fun qpRange30 (T@Ref) Bool)
(declare-fun invRecv30 (T@Ref) Int)
(declare-fun j_8_2 () Int)
(declare-fun k_8 () Int)
(declare-fun neverTriggered29 (Int) Bool)
(declare-fun Mask@1 () T@PolymorphicMapType_40216)
(declare-fun qpRange29 (T@Ref) Bool)
(declare-fun invRecv29 (T@Ref) Int)
(declare-fun Mask@0 () T@PolymorphicMapType_40216)
(declare-fun QPMask@3 () T@PolymorphicMapType_40216)
(declare-fun perm@0 () Real)
(declare-fun neverTriggered28 (Int) Bool)
(declare-fun QPMask@2 () T@PolymorphicMapType_40216)
(declare-fun qpRange28 (T@Ref) Bool)
(declare-fun invRecv28 (T@Ref) Int)
(declare-fun j_6_2 () Int)
(declare-fun k_6_2 () Int)
(declare-fun diz () T@Ref)
(declare-fun current_thread_id () Int)
(declare-fun tid_11 () Int)
(declare-fun tid_10 () Int)
(declare-fun qpRange21 (T@Ref) Bool)
(declare-fun invRecv21 (T@Ref) Int)
(declare-fun QPMask@1 () T@PolymorphicMapType_40216)
(declare-fun i_66 () Int)
(declare-fun j_36 () Int)
(declare-fun k_35 () Int)
(declare-fun qpRange20 (T@Ref) Bool)
(declare-fun invRecv20 (T@Ref) Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_40216)
(declare-fun i_65 () Int)
(declare-fun j_34 () Int)
(declare-fun k_34 () Int)
(declare-fun qpRange19 (T@Ref) Bool)
(declare-fun invRecv19 (T@Ref) Int)
(declare-fun i_64 () Int)
(declare-fun j_31 () Int)
(declare-fun k_33 () Int)
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
 (=> (= (ControlFlow 0 0) 185) (let ((anon56_correct true))
(let ((anon123_Else_correct  (=> (and (not (and (<= 0 i_73) (< i_73 (- len_3 1)))) (= (ControlFlow 0 161) 156)) anon56_correct)))
(let ((anon123_Then_correct  (=> (and (<= 0 i_73) (< i_73 (- len_3 1))) (and (=> (= (ControlFlow 0 157) (- 0 160)) (>= i_73 0)) (=> (>= i_73 0) (and (=> (= (ControlFlow 0 157) (- 0 159)) (< i_73 (|Seq#Length_28458| c))) (=> (< i_73 (|Seq#Length_28458| c)) (and (=> (= (ControlFlow 0 157) (- 0 158)) (HasDirectPerm_28419_3805 QPMask@15 (|Seq#Index_28458| c i_73) Ref__Integer_value)) (=> (HasDirectPerm_28419_3805 QPMask@15 (|Seq#Index_28458| c i_73) Ref__Integer_value) (=> (= (ControlFlow 0 157) 156) anon56_correct))))))))))
(let ((anon122_Else_correct true))
(let ((anon120_Else_correct  (=> (and (forall ((i_15_1 Int) ) (!  (=> (and (<= 0 i_15_1) (< i_15_1 len_3)) (= (select (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| PostHeap@0) (|Seq#Index_28458| b_24 i_15_1) Ref__Integer_value) i_15_1))
 :qid |stdinbpl.3835:20|
 :skolemid |270|
 :pattern ( (|Seq#Index_28458| b_24 i_15_1))
)) (state PostHeap@0 QPMask@15)) (and (and (=> (= (ControlFlow 0 162) 155) anon122_Else_correct) (=> (= (ControlFlow 0 162) 157) anon123_Then_correct)) (=> (= (ControlFlow 0 162) 161) anon123_Else_correct)))))
(let ((anon52_correct true))
(let ((anon121_Else_correct  (=> (and (not (and (<= 0 i_72) (< i_72 len_3))) (= (ControlFlow 0 154) 149)) anon52_correct)))
(let ((anon121_Then_correct  (=> (and (<= 0 i_72) (< i_72 len_3)) (and (=> (= (ControlFlow 0 150) (- 0 153)) (>= i_72 0)) (=> (>= i_72 0) (and (=> (= (ControlFlow 0 150) (- 0 152)) (< i_72 (|Seq#Length_28458| b_24))) (=> (< i_72 (|Seq#Length_28458| b_24)) (and (=> (= (ControlFlow 0 150) (- 0 151)) (HasDirectPerm_28419_3805 QPMask@15 (|Seq#Index_28458| b_24 i_72) Ref__Integer_value)) (=> (HasDirectPerm_28419_3805 QPMask@15 (|Seq#Index_28458| b_24 i_72) Ref__Integer_value) (=> (= (ControlFlow 0 150) 149) anon52_correct))))))))))
(let ((anon118_Else_correct  (=> (and (forall ((i_13_1 Int) ) (!  (=> (and (<= 0 i_13_1) (< i_13_1 len_3)) (= (select (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| PostHeap@0) (|Seq#Index_28458| a_2 i_13_1) Ref__Integer_value) (+ i_13_1 1)))
 :qid |stdinbpl.3817:20|
 :skolemid |269|
 :pattern ( (|Seq#Index_28458| a_2 i_13_1))
)) (state PostHeap@0 QPMask@15)) (and (and (=> (= (ControlFlow 0 163) 162) anon120_Else_correct) (=> (= (ControlFlow 0 163) 150) anon121_Then_correct)) (=> (= (ControlFlow 0 163) 154) anon121_Else_correct)))))
(let ((anon48_correct true))
(let ((anon119_Else_correct  (=> (and (not (and (<= 0 i_71) (< i_71 len_3))) (= (ControlFlow 0 148) 143)) anon48_correct)))
(let ((anon119_Then_correct  (=> (and (<= 0 i_71) (< i_71 len_3)) (and (=> (= (ControlFlow 0 144) (- 0 147)) (>= i_71 0)) (=> (>= i_71 0) (and (=> (= (ControlFlow 0 144) (- 0 146)) (< i_71 (|Seq#Length_28458| a_2))) (=> (< i_71 (|Seq#Length_28458| a_2)) (and (=> (= (ControlFlow 0 144) (- 0 145)) (HasDirectPerm_28419_3805 QPMask@15 (|Seq#Index_28458| a_2 i_71) Ref__Integer_value)) (=> (HasDirectPerm_28419_3805 QPMask@15 (|Seq#Index_28458| a_2 i_71) Ref__Integer_value) (=> (= (ControlFlow 0 144) 143) anon48_correct))))))))))
(let ((anon116_Else_correct  (and (=> (= (ControlFlow 0 164) (- 0 165)) (forall ((i_11_1 Int) (i_11_2 Int) ) (!  (=> (and (and (and (and (not (= i_11_1 i_11_2)) (and (<= 0 i_11_1) (< i_11_1 len_3))) (and (<= 0 i_11_2) (< i_11_2 len_3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_28458| c i_11_1) (|Seq#Index_28458| c i_11_2))))
 :qid |stdinbpl.3771:15|
 :skolemid |263|
))) (=> (forall ((i_11_1@@0 Int) (i_11_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_11_1@@0 i_11_2@@0)) (and (<= 0 i_11_1@@0) (< i_11_1@@0 len_3))) (and (<= 0 i_11_2@@0) (< i_11_2@@0 len_3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_28458| c i_11_1@@0) (|Seq#Index_28458| c i_11_2@@0))))
 :qid |stdinbpl.3771:15|
 :skolemid |263|
)) (=> (and (and (forall ((i_11_1@@1 Int) ) (!  (=> (and (and (<= 0 i_11_1@@1) (< i_11_1@@1 len_3)) (< NoPerm FullPerm)) (and (qpRange24 (|Seq#Index_28458| c i_11_1@@1)) (= (invRecv24 (|Seq#Index_28458| c i_11_1@@1)) i_11_1@@1)))
 :qid |stdinbpl.3777:22|
 :skolemid |264|
 :pattern ( (|Seq#Index_28458| c i_11_1@@1))
 :pattern ( (|Seq#Index_28458| c i_11_1@@1))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv24 o_9)) (< (invRecv24 o_9) len_3)) (< NoPerm FullPerm)) (qpRange24 o_9)) (= (|Seq#Index_28458| c (invRecv24 o_9)) o_9))
 :qid |stdinbpl.3781:22|
 :skolemid |265|
 :pattern ( (invRecv24 o_9))
))) (and (forall ((i_11_1@@2 Int) ) (!  (=> (and (<= 0 i_11_1@@2) (< i_11_1@@2 len_3)) (not (= (|Seq#Index_28458| c i_11_1@@2) null)))
 :qid |stdinbpl.3787:22|
 :skolemid |266|
 :pattern ( (|Seq#Index_28458| c i_11_1@@2))
 :pattern ( (|Seq#Index_28458| c i_11_1@@2))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv24 o_9@@0)) (< (invRecv24 o_9@@0) len_3)) (< NoPerm FullPerm)) (qpRange24 o_9@@0)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_28458| c (invRecv24 o_9@@0)) o_9@@0)) (= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@15) o_9@@0 Ref__Integer_value) (+ (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@14) o_9@@0 Ref__Integer_value) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv24 o_9@@0)) (< (invRecv24 o_9@@0) len_3)) (< NoPerm FullPerm)) (qpRange24 o_9@@0))) (= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@15) o_9@@0 Ref__Integer_value) (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@14) o_9@@0 Ref__Integer_value))))
 :qid |stdinbpl.3793:22|
 :skolemid |267|
 :pattern ( (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@15) o_9@@0 Ref__Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_40255_53) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| QPMask@14) o_9@@1 f_5) (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| QPMask@15) o_9@@1 f_5)))
 :qid |stdinbpl.3797:29|
 :skolemid |268|
 :pattern ( (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| QPMask@14) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| QPMask@15) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_40268_40269) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| QPMask@14) o_9@@2 f_5@@0) (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| QPMask@15) o_9@@2 f_5@@0)))
 :qid |stdinbpl.3797:29|
 :skolemid |268|
 :pattern ( (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| QPMask@14) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| QPMask@15) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_46341_3805) ) (!  (=> (not (= f_5@@1 Ref__Integer_value)) (= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@14) o_9@@3 f_5@@1) (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@15) o_9@@3 f_5@@1)))
 :qid |stdinbpl.3797:29|
 :skolemid |268|
 :pattern ( (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@14) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@15) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_28419_113994) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| QPMask@14) o_9@@4 f_5@@2) (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| QPMask@15) o_9@@4 f_5@@2)))
 :qid |stdinbpl.3797:29|
 :skolemid |268|
 :pattern ( (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| QPMask@14) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| QPMask@15) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_28419_114127) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| QPMask@14) o_9@@5 f_5@@3) (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| QPMask@15) o_9@@5 f_5@@3)))
 :qid |stdinbpl.3797:29|
 :skolemid |268|
 :pattern ( (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| QPMask@14) o_9@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| QPMask@15) o_9@@5 f_5@@3))
))) (and (state PostHeap@0 QPMask@15) (state PostHeap@0 QPMask@15))) (and (and (=> (= (ControlFlow 0 164) 163) anon118_Else_correct) (=> (= (ControlFlow 0 164) 144) anon119_Then_correct)) (=> (= (ControlFlow 0 164) 148) anon119_Else_correct))))))))
(let ((anon44_correct true))
(let ((anon117_Else_correct  (=> (and (not (and (<= 0 i_70) (< i_70 len_3))) (= (ControlFlow 0 142) 138)) anon44_correct)))
(let ((anon117_Then_correct  (=> (and (<= 0 i_70) (< i_70 len_3)) (and (=> (= (ControlFlow 0 139) (- 0 141)) (>= i_70 0)) (=> (>= i_70 0) (and (=> (= (ControlFlow 0 139) (- 0 140)) (< i_70 (|Seq#Length_28458| c))) (=> (< i_70 (|Seq#Length_28458| c)) (=> (= (ControlFlow 0 139) 138) anon44_correct))))))))
(let ((anon114_Else_correct  (and (=> (= (ControlFlow 0 166) (- 0 168)) (forall ((i_9_1 Int) (i_9_2 Int) ) (!  (=> (and (and (and (and (not (= i_9_1 i_9_2)) (and (<= 0 i_9_1) (< i_9_1 len_3))) (and (<= 0 i_9_2) (< i_9_2 len_3))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_28458| b_24 i_9_1) (|Seq#Index_28458| b_24 i_9_2))))
 :qid |stdinbpl.3717:15|
 :skolemid |256|
))) (=> (forall ((i_9_1@@0 Int) (i_9_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_9_1@@0 i_9_2@@0)) (and (<= 0 i_9_1@@0) (< i_9_1@@0 len_3))) (and (<= 0 i_9_2@@0) (< i_9_2@@0 len_3))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_28458| b_24 i_9_1@@0) (|Seq#Index_28458| b_24 i_9_2@@0))))
 :qid |stdinbpl.3717:15|
 :skolemid |256|
)) (=> (and (forall ((i_9_1@@1 Int) ) (!  (=> (and (and (<= 0 i_9_1@@1) (< i_9_1@@1 len_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange23 (|Seq#Index_28458| b_24 i_9_1@@1)) (= (invRecv23 (|Seq#Index_28458| b_24 i_9_1@@1)) i_9_1@@1)))
 :qid |stdinbpl.3723:22|
 :skolemid |257|
 :pattern ( (|Seq#Index_28458| b_24 i_9_1@@1))
 :pattern ( (|Seq#Index_28458| b_24 i_9_1@@1))
)) (forall ((o_9@@6 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv23 o_9@@6)) (< (invRecv23 o_9@@6) len_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange23 o_9@@6)) (= (|Seq#Index_28458| b_24 (invRecv23 o_9@@6)) o_9@@6))
 :qid |stdinbpl.3727:22|
 :skolemid |258|
 :pattern ( (invRecv23 o_9@@6))
))) (and (=> (= (ControlFlow 0 166) (- 0 167)) (forall ((i_9_1@@2 Int) ) (!  (=> (and (<= 0 i_9_1@@2) (< i_9_1@@2 len_3)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3733:15|
 :skolemid |259|
 :pattern ( (|Seq#Index_28458| b_24 i_9_1@@2))
 :pattern ( (|Seq#Index_28458| b_24 i_9_1@@2))
))) (=> (forall ((i_9_1@@3 Int) ) (!  (=> (and (<= 0 i_9_1@@3) (< i_9_1@@3 len_3)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3733:15|
 :skolemid |259|
 :pattern ( (|Seq#Index_28458| b_24 i_9_1@@3))
 :pattern ( (|Seq#Index_28458| b_24 i_9_1@@3))
)) (=> (and (forall ((i_9_1@@4 Int) ) (!  (=> (and (and (<= 0 i_9_1@@4) (< i_9_1@@4 len_3)) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= (|Seq#Index_28458| b_24 i_9_1@@4) null)))
 :qid |stdinbpl.3739:22|
 :skolemid |260|
 :pattern ( (|Seq#Index_28458| b_24 i_9_1@@4))
 :pattern ( (|Seq#Index_28458| b_24 i_9_1@@4))
)) (forall ((o_9@@7 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv23 o_9@@7)) (< (invRecv23 o_9@@7) len_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange23 o_9@@7)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (|Seq#Index_28458| b_24 (invRecv23 o_9@@7)) o_9@@7)) (= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@14) o_9@@7 Ref__Integer_value) (+ (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@13) o_9@@7 Ref__Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (<= 0 (invRecv23 o_9@@7)) (< (invRecv23 o_9@@7) len_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange23 o_9@@7))) (= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@14) o_9@@7 Ref__Integer_value) (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@13) o_9@@7 Ref__Integer_value))))
 :qid |stdinbpl.3745:22|
 :skolemid |261|
 :pattern ( (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@14) o_9@@7 Ref__Integer_value))
))) (=> (and (and (and (and (and (forall ((o_9@@8 T@Ref) (f_5@@4 T@Field_40255_53) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| QPMask@13) o_9@@8 f_5@@4) (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| QPMask@14) o_9@@8 f_5@@4)))
 :qid |stdinbpl.3749:29|
 :skolemid |262|
 :pattern ( (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| QPMask@13) o_9@@8 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| QPMask@14) o_9@@8 f_5@@4))
)) (forall ((o_9@@9 T@Ref) (f_5@@5 T@Field_40268_40269) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| QPMask@13) o_9@@9 f_5@@5) (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| QPMask@14) o_9@@9 f_5@@5)))
 :qid |stdinbpl.3749:29|
 :skolemid |262|
 :pattern ( (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| QPMask@13) o_9@@9 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| QPMask@14) o_9@@9 f_5@@5))
))) (forall ((o_9@@10 T@Ref) (f_5@@6 T@Field_46341_3805) ) (!  (=> (not (= f_5@@6 Ref__Integer_value)) (= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@13) o_9@@10 f_5@@6) (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@14) o_9@@10 f_5@@6)))
 :qid |stdinbpl.3749:29|
 :skolemid |262|
 :pattern ( (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@13) o_9@@10 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@14) o_9@@10 f_5@@6))
))) (forall ((o_9@@11 T@Ref) (f_5@@7 T@Field_28419_113994) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| QPMask@13) o_9@@11 f_5@@7) (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| QPMask@14) o_9@@11 f_5@@7)))
 :qid |stdinbpl.3749:29|
 :skolemid |262|
 :pattern ( (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| QPMask@13) o_9@@11 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| QPMask@14) o_9@@11 f_5@@7))
))) (forall ((o_9@@12 T@Ref) (f_5@@8 T@Field_28419_114127) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| QPMask@13) o_9@@12 f_5@@8) (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| QPMask@14) o_9@@12 f_5@@8)))
 :qid |stdinbpl.3749:29|
 :skolemid |262|
 :pattern ( (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| QPMask@13) o_9@@12 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| QPMask@14) o_9@@12 f_5@@8))
))) (and (and (state PostHeap@0 QPMask@14) (state PostHeap@0 QPMask@14)) (and (= (|Seq#Length_28458| c) len_3) (state PostHeap@0 QPMask@14)))) (and (and (=> (= (ControlFlow 0 166) 164) anon116_Else_correct) (=> (= (ControlFlow 0 166) 139) anon117_Then_correct)) (=> (= (ControlFlow 0 166) 142) anon117_Else_correct)))))))))))
(let ((anon40_correct true))
(let ((anon115_Else_correct  (=> (and (not (and (<= 0 i_69) (< i_69 len_3))) (= (ControlFlow 0 137) 133)) anon40_correct)))
(let ((anon115_Then_correct  (=> (and (<= 0 i_69) (< i_69 len_3)) (and (=> (= (ControlFlow 0 134) (- 0 136)) (>= i_69 0)) (=> (>= i_69 0) (and (=> (= (ControlFlow 0 134) (- 0 135)) (< i_69 (|Seq#Length_28458| b_24))) (=> (< i_69 (|Seq#Length_28458| b_24)) (=> (= (ControlFlow 0 134) 133) anon40_correct))))))))
(let ((anon112_Else_correct  (and (=> (= (ControlFlow 0 169) (- 0 170)) (forall ((i_7_1 Int) (i_7_2 Int) ) (!  (=> (and (and (and (and (not (= i_7_1 i_7_2)) (and (<= 0 i_7_1) (< i_7_1 len_3))) (and (<= 0 i_7_2) (< i_7_2 len_3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_28458| a_2 i_7_1) (|Seq#Index_28458| a_2 i_7_2))))
 :qid |stdinbpl.3669:15|
 :skolemid |250|
))) (=> (forall ((i_7_1@@0 Int) (i_7_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_7_1@@0 i_7_2@@0)) (and (<= 0 i_7_1@@0) (< i_7_1@@0 len_3))) (and (<= 0 i_7_2@@0) (< i_7_2@@0 len_3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_28458| a_2 i_7_1@@0) (|Seq#Index_28458| a_2 i_7_2@@0))))
 :qid |stdinbpl.3669:15|
 :skolemid |250|
)) (=> (and (and (forall ((i_7_1@@1 Int) ) (!  (=> (and (and (<= 0 i_7_1@@1) (< i_7_1@@1 len_3)) (< NoPerm FullPerm)) (and (qpRange22 (|Seq#Index_28458| a_2 i_7_1@@1)) (= (invRecv22 (|Seq#Index_28458| a_2 i_7_1@@1)) i_7_1@@1)))
 :qid |stdinbpl.3675:22|
 :skolemid |251|
 :pattern ( (|Seq#Index_28458| a_2 i_7_1@@1))
 :pattern ( (|Seq#Index_28458| a_2 i_7_1@@1))
)) (forall ((o_9@@13 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv22 o_9@@13)) (< (invRecv22 o_9@@13) len_3)) (< NoPerm FullPerm)) (qpRange22 o_9@@13)) (= (|Seq#Index_28458| a_2 (invRecv22 o_9@@13)) o_9@@13))
 :qid |stdinbpl.3679:22|
 :skolemid |252|
 :pattern ( (invRecv22 o_9@@13))
))) (and (forall ((i_7_1@@2 Int) ) (!  (=> (and (<= 0 i_7_1@@2) (< i_7_1@@2 len_3)) (not (= (|Seq#Index_28458| a_2 i_7_1@@2) null)))
 :qid |stdinbpl.3685:22|
 :skolemid |253|
 :pattern ( (|Seq#Index_28458| a_2 i_7_1@@2))
 :pattern ( (|Seq#Index_28458| a_2 i_7_1@@2))
)) (forall ((o_9@@14 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv22 o_9@@14)) (< (invRecv22 o_9@@14) len_3)) (< NoPerm FullPerm)) (qpRange22 o_9@@14)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_28458| a_2 (invRecv22 o_9@@14)) o_9@@14)) (= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@13) o_9@@14 Ref__Integer_value) (+ (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| ZeroMask) o_9@@14 Ref__Integer_value) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv22 o_9@@14)) (< (invRecv22 o_9@@14) len_3)) (< NoPerm FullPerm)) (qpRange22 o_9@@14))) (= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@13) o_9@@14 Ref__Integer_value) (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| ZeroMask) o_9@@14 Ref__Integer_value))))
 :qid |stdinbpl.3691:22|
 :skolemid |254|
 :pattern ( (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@13) o_9@@14 Ref__Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_9@@15 T@Ref) (f_5@@9 T@Field_40255_53) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| ZeroMask) o_9@@15 f_5@@9) (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| QPMask@13) o_9@@15 f_5@@9)))
 :qid |stdinbpl.3695:29|
 :skolemid |255|
 :pattern ( (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| ZeroMask) o_9@@15 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| QPMask@13) o_9@@15 f_5@@9))
)) (forall ((o_9@@16 T@Ref) (f_5@@10 T@Field_40268_40269) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| ZeroMask) o_9@@16 f_5@@10) (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| QPMask@13) o_9@@16 f_5@@10)))
 :qid |stdinbpl.3695:29|
 :skolemid |255|
 :pattern ( (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| ZeroMask) o_9@@16 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| QPMask@13) o_9@@16 f_5@@10))
))) (forall ((o_9@@17 T@Ref) (f_5@@11 T@Field_46341_3805) ) (!  (=> (not (= f_5@@11 Ref__Integer_value)) (= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| ZeroMask) o_9@@17 f_5@@11) (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@13) o_9@@17 f_5@@11)))
 :qid |stdinbpl.3695:29|
 :skolemid |255|
 :pattern ( (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| ZeroMask) o_9@@17 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@13) o_9@@17 f_5@@11))
))) (forall ((o_9@@18 T@Ref) (f_5@@12 T@Field_28419_113994) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| ZeroMask) o_9@@18 f_5@@12) (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| QPMask@13) o_9@@18 f_5@@12)))
 :qid |stdinbpl.3695:29|
 :skolemid |255|
 :pattern ( (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| ZeroMask) o_9@@18 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| QPMask@13) o_9@@18 f_5@@12))
))) (forall ((o_9@@19 T@Ref) (f_5@@13 T@Field_28419_114127) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| ZeroMask) o_9@@19 f_5@@13) (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| QPMask@13) o_9@@19 f_5@@13)))
 :qid |stdinbpl.3695:29|
 :skolemid |255|
 :pattern ( (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| ZeroMask) o_9@@19 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| QPMask@13) o_9@@19 f_5@@13))
))) (and (and (state PostHeap@0 QPMask@13) (state PostHeap@0 QPMask@13)) (and (= (|Seq#Length_28458| b_24) len_3) (state PostHeap@0 QPMask@13)))) (and (and (=> (= (ControlFlow 0 169) 166) anon114_Else_correct) (=> (= (ControlFlow 0 169) 134) anon115_Then_correct)) (=> (= (ControlFlow 0 169) 137) anon115_Else_correct))))))))
(let ((anon36_correct true))
(let ((anon113_Else_correct  (=> (and (not (and (<= 0 i_68) (< i_68 len_3))) (= (ControlFlow 0 132) 128)) anon36_correct)))
(let ((anon113_Then_correct  (=> (and (<= 0 i_68) (< i_68 len_3)) (and (=> (= (ControlFlow 0 129) (- 0 131)) (>= i_68 0)) (=> (>= i_68 0) (and (=> (= (ControlFlow 0 129) (- 0 130)) (< i_68 (|Seq#Length_28458| a_2))) (=> (< i_68 (|Seq#Length_28458| a_2)) (=> (= (ControlFlow 0 129) 128) anon36_correct))))))))
(let ((anon111_Then_correct  (=> (state PostHeap@0 ZeroMask) (=> (and (= (|Seq#Length_28458| a_2) len_3) (state PostHeap@0 ZeroMask)) (and (and (=> (= (ControlFlow 0 171) 169) anon112_Else_correct) (=> (= (ControlFlow 0 171) 129) anon113_Then_correct)) (=> (= (ControlFlow 0 171) 132) anon113_Else_correct))))))
(let ((anon93_correct true))
(let ((anon141_Else_correct  (=> (and (not (and (<= 0 i_25_1) (< i_25_1 (- len_3 1)))) (= (ControlFlow 0 81) 78)) anon93_correct)))
(let ((anon141_Then_correct  (=> (and (<= 0 i_25_1) (< i_25_1 (- len_3 1))) (and (=> (= (ControlFlow 0 79) (- 0 80)) (= (select (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| ExhaleHeap@0) (|Seq#Index_28458| c i_25_1) Ref__Integer_value) 2)) (=> (= (select (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| ExhaleHeap@0) (|Seq#Index_28458| c i_25_1) Ref__Integer_value) 2) (=> (= (ControlFlow 0 79) 78) anon93_correct))))))
(let ((anon140_Else_correct true))
(let ((anon138_Else_correct  (=> (forall ((i_24_1_1 Int) ) (!  (=> (and (<= 0 i_24_1_1) (< i_24_1_1 len_3)) (= (select (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| ExhaleHeap@0) (|Seq#Index_28458| b_24 i_24_1_1) Ref__Integer_value) i_24_1_1))
 :qid |stdinbpl.4406:20|
 :skolemid |346|
 :pattern ( (|Seq#Index_28458| b_24 i_24_1_1))
)) (and (and (=> (= (ControlFlow 0 82) 77) anon140_Else_correct) (=> (= (ControlFlow 0 82) 79) anon141_Then_correct)) (=> (= (ControlFlow 0 82) 81) anon141_Else_correct)))))
(let ((anon89_correct true))
(let ((anon139_Else_correct  (=> (and (not (and (<= 0 i_23_1) (< i_23_1 len_3))) (= (ControlFlow 0 76) 73)) anon89_correct)))
(let ((anon139_Then_correct  (=> (and (<= 0 i_23_1) (< i_23_1 len_3)) (and (=> (= (ControlFlow 0 74) (- 0 75)) (= (select (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| ExhaleHeap@0) (|Seq#Index_28458| b_24 i_23_1) Ref__Integer_value) i_23_1)) (=> (= (select (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| ExhaleHeap@0) (|Seq#Index_28458| b_24 i_23_1) Ref__Integer_value) i_23_1) (=> (= (ControlFlow 0 74) 73) anon89_correct))))))
(let ((anon136_Else_correct  (=> (forall ((i_22_1_1 Int) ) (!  (=> (and (<= 0 i_22_1_1) (< i_22_1_1 len_3)) (= (select (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| ExhaleHeap@0) (|Seq#Index_28458| a_2 i_22_1_1) Ref__Integer_value) (+ i_22_1_1 1)))
 :qid |stdinbpl.4395:20|
 :skolemid |345|
 :pattern ( (|Seq#Index_28458| a_2 i_22_1_1))
)) (and (and (=> (= (ControlFlow 0 83) 82) anon138_Else_correct) (=> (= (ControlFlow 0 83) 74) anon139_Then_correct)) (=> (= (ControlFlow 0 83) 76) anon139_Else_correct)))))
(let ((anon85_correct true))
(let ((anon137_Else_correct  (=> (and (not (and (<= 0 i_21_1) (< i_21_1 len_3))) (= (ControlFlow 0 72) 69)) anon85_correct)))
(let ((anon137_Then_correct  (=> (and (<= 0 i_21_1) (< i_21_1 len_3)) (and (=> (= (ControlFlow 0 70) (- 0 71)) (= (select (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| ExhaleHeap@0) (|Seq#Index_28458| a_2 i_21_1) Ref__Integer_value) (+ i_21_1 1))) (=> (= (select (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| ExhaleHeap@0) (|Seq#Index_28458| a_2 i_21_1) Ref__Integer_value) (+ i_21_1 1)) (=> (= (ControlFlow 0 70) 69) anon85_correct))))))
(let ((anon134_Else_correct  (=> (forall ((i_34_1 Int) ) (!  (=> (and (<= 0 i_34_1) (< i_34_1 len_3)) (= (select (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| Heap@@41) (|Seq#Index_28458| b_24 i_34_1) Ref__Integer_value) i_34_1))
 :qid |stdinbpl.4116:22|
 :skolemid |303|
 :pattern ( (|Seq#Index_28458| b_24 i_34_1))
)) (=> (and (and (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@0 QPMask@6) (= (|Seq#Length_28458| a_2) len_3)) (and (= (|Seq#Length_28458| b_24) len_3) (= (|Seq#Length_28458| c) len_3))) (and (=> (= (ControlFlow 0 84) (- 0 98)) (forall ((i_35 Int) (i_35_1 Int) ) (!  (=> (and (and (and (and (not (= i_35 i_35_1)) (and (<= 0 i_35) (< i_35 len_3))) (and (<= 0 i_35_1) (< i_35_1 len_3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_28458| a_2 i_35) (|Seq#Index_28458| a_2 i_35_1))))
 :qid |stdinbpl.4131:17|
 :skolemid |304|
))) (=> (forall ((i_35@@0 Int) (i_35_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_35@@0 i_35_1@@0)) (and (<= 0 i_35@@0) (< i_35@@0 len_3))) (and (<= 0 i_35_1@@0) (< i_35_1@@0 len_3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_28458| a_2 i_35@@0) (|Seq#Index_28458| a_2 i_35_1@@0))))
 :qid |stdinbpl.4131:17|
 :skolemid |304|
)) (=> (and (and (forall ((i_35@@1 Int) ) (!  (=> (and (and (<= 0 i_35@@1) (< i_35@@1 len_3)) (< NoPerm FullPerm)) (and (qpRange32 (|Seq#Index_28458| a_2 i_35@@1)) (= (invRecv32 (|Seq#Index_28458| a_2 i_35@@1)) i_35@@1)))
 :qid |stdinbpl.4137:24|
 :skolemid |305|
 :pattern ( (|Seq#Index_28458| a_2 i_35@@1))
 :pattern ( (|Seq#Index_28458| a_2 i_35@@1))
)) (forall ((o_9@@20 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv32 o_9@@20)) (< (invRecv32 o_9@@20) len_3)) (< NoPerm FullPerm)) (qpRange32 o_9@@20)) (= (|Seq#Index_28458| a_2 (invRecv32 o_9@@20)) o_9@@20))
 :qid |stdinbpl.4141:24|
 :skolemid |306|
 :pattern ( (invRecv32 o_9@@20))
))) (and (forall ((i_35@@2 Int) ) (!  (=> (and (<= 0 i_35@@2) (< i_35@@2 len_3)) (not (= (|Seq#Index_28458| a_2 i_35@@2) null)))
 :qid |stdinbpl.4147:24|
 :skolemid |307|
 :pattern ( (|Seq#Index_28458| a_2 i_35@@2))
 :pattern ( (|Seq#Index_28458| a_2 i_35@@2))
)) (forall ((o_9@@21 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv32 o_9@@21)) (< (invRecv32 o_9@@21) len_3)) (< NoPerm FullPerm)) (qpRange32 o_9@@21)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_28458| a_2 (invRecv32 o_9@@21)) o_9@@21)) (= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@7) o_9@@21 Ref__Integer_value) (+ (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@6) o_9@@21 Ref__Integer_value) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv32 o_9@@21)) (< (invRecv32 o_9@@21) len_3)) (< NoPerm FullPerm)) (qpRange32 o_9@@21))) (= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@7) o_9@@21 Ref__Integer_value) (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@6) o_9@@21 Ref__Integer_value))))
 :qid |stdinbpl.4153:24|
 :skolemid |308|
 :pattern ( (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@7) o_9@@21 Ref__Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_9@@22 T@Ref) (f_5@@14 T@Field_40255_53) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| QPMask@6) o_9@@22 f_5@@14) (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| QPMask@7) o_9@@22 f_5@@14)))
 :qid |stdinbpl.4157:31|
 :skolemid |309|
 :pattern ( (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| QPMask@6) o_9@@22 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| QPMask@7) o_9@@22 f_5@@14))
)) (forall ((o_9@@23 T@Ref) (f_5@@15 T@Field_40268_40269) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| QPMask@6) o_9@@23 f_5@@15) (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| QPMask@7) o_9@@23 f_5@@15)))
 :qid |stdinbpl.4157:31|
 :skolemid |309|
 :pattern ( (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| QPMask@6) o_9@@23 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| QPMask@7) o_9@@23 f_5@@15))
))) (forall ((o_9@@24 T@Ref) (f_5@@16 T@Field_46341_3805) ) (!  (=> (not (= f_5@@16 Ref__Integer_value)) (= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@6) o_9@@24 f_5@@16) (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@7) o_9@@24 f_5@@16)))
 :qid |stdinbpl.4157:31|
 :skolemid |309|
 :pattern ( (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@6) o_9@@24 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@7) o_9@@24 f_5@@16))
))) (forall ((o_9@@25 T@Ref) (f_5@@17 T@Field_28419_113994) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| QPMask@6) o_9@@25 f_5@@17) (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| QPMask@7) o_9@@25 f_5@@17)))
 :qid |stdinbpl.4157:31|
 :skolemid |309|
 :pattern ( (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| QPMask@6) o_9@@25 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| QPMask@7) o_9@@25 f_5@@17))
))) (forall ((o_9@@26 T@Ref) (f_5@@18 T@Field_28419_114127) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| QPMask@6) o_9@@26 f_5@@18) (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| QPMask@7) o_9@@26 f_5@@18)))
 :qid |stdinbpl.4157:31|
 :skolemid |309|
 :pattern ( (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| QPMask@6) o_9@@26 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| QPMask@7) o_9@@26 f_5@@18))
))) (state ExhaleHeap@0 QPMask@7)) (and (=> (= (ControlFlow 0 84) (- 0 97)) (forall ((i_36 Int) (i_36_2 Int) ) (!  (=> (and (and (and (and (not (= i_36 i_36_2)) (and (<= 0 i_36) (< i_36 len_3))) (and (<= 0 i_36_2) (< i_36_2 len_3))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_28458| b_24 i_36) (|Seq#Index_28458| b_24 i_36_2))))
 :qid |stdinbpl.4165:17|
 :skolemid |310|
))) (=> (forall ((i_36@@0 Int) (i_36_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_36@@0 i_36_2@@0)) (and (<= 0 i_36@@0) (< i_36@@0 len_3))) (and (<= 0 i_36_2@@0) (< i_36_2@@0 len_3))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_28458| b_24 i_36@@0) (|Seq#Index_28458| b_24 i_36_2@@0))))
 :qid |stdinbpl.4165:17|
 :skolemid |310|
)) (=> (and (forall ((i_36@@1 Int) ) (!  (=> (and (and (<= 0 i_36@@1) (< i_36@@1 len_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange33 (|Seq#Index_28458| b_24 i_36@@1)) (= (invRecv33 (|Seq#Index_28458| b_24 i_36@@1)) i_36@@1)))
 :qid |stdinbpl.4171:24|
 :skolemid |311|
 :pattern ( (|Seq#Index_28458| b_24 i_36@@1))
 :pattern ( (|Seq#Index_28458| b_24 i_36@@1))
)) (forall ((o_9@@27 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv33 o_9@@27)) (< (invRecv33 o_9@@27) len_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange33 o_9@@27)) (= (|Seq#Index_28458| b_24 (invRecv33 o_9@@27)) o_9@@27))
 :qid |stdinbpl.4175:24|
 :skolemid |312|
 :pattern ( (invRecv33 o_9@@27))
))) (and (=> (= (ControlFlow 0 84) (- 0 96)) (forall ((i_36@@2 Int) ) (!  (=> (and (<= 0 i_36@@2) (< i_36@@2 len_3)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4181:17|
 :skolemid |313|
 :pattern ( (|Seq#Index_28458| b_24 i_36@@2))
 :pattern ( (|Seq#Index_28458| b_24 i_36@@2))
))) (=> (forall ((i_36@@3 Int) ) (!  (=> (and (<= 0 i_36@@3) (< i_36@@3 len_3)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4181:17|
 :skolemid |313|
 :pattern ( (|Seq#Index_28458| b_24 i_36@@3))
 :pattern ( (|Seq#Index_28458| b_24 i_36@@3))
)) (=> (and (forall ((i_36@@4 Int) ) (!  (=> (and (and (<= 0 i_36@@4) (< i_36@@4 len_3)) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= (|Seq#Index_28458| b_24 i_36@@4) null)))
 :qid |stdinbpl.4187:24|
 :skolemid |314|
 :pattern ( (|Seq#Index_28458| b_24 i_36@@4))
 :pattern ( (|Seq#Index_28458| b_24 i_36@@4))
)) (forall ((o_9@@28 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv33 o_9@@28)) (< (invRecv33 o_9@@28) len_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange33 o_9@@28)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (|Seq#Index_28458| b_24 (invRecv33 o_9@@28)) o_9@@28)) (= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@8) o_9@@28 Ref__Integer_value) (+ (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@7) o_9@@28 Ref__Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (<= 0 (invRecv33 o_9@@28)) (< (invRecv33 o_9@@28) len_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange33 o_9@@28))) (= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@8) o_9@@28 Ref__Integer_value) (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@7) o_9@@28 Ref__Integer_value))))
 :qid |stdinbpl.4193:24|
 :skolemid |315|
 :pattern ( (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@8) o_9@@28 Ref__Integer_value))
))) (=> (and (and (and (and (and (forall ((o_9@@29 T@Ref) (f_5@@19 T@Field_40255_53) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| QPMask@7) o_9@@29 f_5@@19) (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| QPMask@8) o_9@@29 f_5@@19)))
 :qid |stdinbpl.4197:31|
 :skolemid |316|
 :pattern ( (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| QPMask@7) o_9@@29 f_5@@19))
 :pattern ( (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| QPMask@8) o_9@@29 f_5@@19))
)) (forall ((o_9@@30 T@Ref) (f_5@@20 T@Field_40268_40269) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| QPMask@7) o_9@@30 f_5@@20) (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| QPMask@8) o_9@@30 f_5@@20)))
 :qid |stdinbpl.4197:31|
 :skolemid |316|
 :pattern ( (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| QPMask@7) o_9@@30 f_5@@20))
 :pattern ( (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| QPMask@8) o_9@@30 f_5@@20))
))) (forall ((o_9@@31 T@Ref) (f_5@@21 T@Field_46341_3805) ) (!  (=> (not (= f_5@@21 Ref__Integer_value)) (= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@7) o_9@@31 f_5@@21) (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@8) o_9@@31 f_5@@21)))
 :qid |stdinbpl.4197:31|
 :skolemid |316|
 :pattern ( (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@7) o_9@@31 f_5@@21))
 :pattern ( (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@8) o_9@@31 f_5@@21))
))) (forall ((o_9@@32 T@Ref) (f_5@@22 T@Field_28419_113994) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| QPMask@7) o_9@@32 f_5@@22) (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| QPMask@8) o_9@@32 f_5@@22)))
 :qid |stdinbpl.4197:31|
 :skolemid |316|
 :pattern ( (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| QPMask@7) o_9@@32 f_5@@22))
 :pattern ( (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| QPMask@8) o_9@@32 f_5@@22))
))) (forall ((o_9@@33 T@Ref) (f_5@@23 T@Field_28419_114127) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| QPMask@7) o_9@@33 f_5@@23) (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| QPMask@8) o_9@@33 f_5@@23)))
 :qid |stdinbpl.4197:31|
 :skolemid |316|
 :pattern ( (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| QPMask@7) o_9@@33 f_5@@23))
 :pattern ( (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| QPMask@8) o_9@@33 f_5@@23))
))) (state ExhaleHeap@0 QPMask@8)) (and (=> (= (ControlFlow 0 84) (- 0 95)) (forall ((i_37 Int) (i_37_1 Int) ) (!  (=> (and (and (and (and (not (= i_37 i_37_1)) (and (<= 0 i_37) (< i_37 len_3))) (and (<= 0 i_37_1) (< i_37_1 len_3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_28458| c i_37) (|Seq#Index_28458| c i_37_1))))
 :qid |stdinbpl.4205:17|
 :skolemid |317|
))) (=> (forall ((i_37@@0 Int) (i_37_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_37@@0 i_37_1@@0)) (and (<= 0 i_37@@0) (< i_37@@0 len_3))) (and (<= 0 i_37_1@@0) (< i_37_1@@0 len_3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_28458| c i_37@@0) (|Seq#Index_28458| c i_37_1@@0))))
 :qid |stdinbpl.4205:17|
 :skolemid |317|
)) (=> (and (and (forall ((i_37@@1 Int) ) (!  (=> (and (and (<= 0 i_37@@1) (< i_37@@1 len_3)) (< NoPerm FullPerm)) (and (qpRange34 (|Seq#Index_28458| c i_37@@1)) (= (invRecv34 (|Seq#Index_28458| c i_37@@1)) i_37@@1)))
 :qid |stdinbpl.4211:24|
 :skolemid |318|
 :pattern ( (|Seq#Index_28458| c i_37@@1))
 :pattern ( (|Seq#Index_28458| c i_37@@1))
)) (forall ((o_9@@34 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv34 o_9@@34)) (< (invRecv34 o_9@@34) len_3)) (< NoPerm FullPerm)) (qpRange34 o_9@@34)) (= (|Seq#Index_28458| c (invRecv34 o_9@@34)) o_9@@34))
 :qid |stdinbpl.4215:24|
 :skolemid |319|
 :pattern ( (invRecv34 o_9@@34))
))) (and (forall ((i_37@@2 Int) ) (!  (=> (and (<= 0 i_37@@2) (< i_37@@2 len_3)) (not (= (|Seq#Index_28458| c i_37@@2) null)))
 :qid |stdinbpl.4221:24|
 :skolemid |320|
 :pattern ( (|Seq#Index_28458| c i_37@@2))
 :pattern ( (|Seq#Index_28458| c i_37@@2))
)) (forall ((o_9@@35 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv34 o_9@@35)) (< (invRecv34 o_9@@35) len_3)) (< NoPerm FullPerm)) (qpRange34 o_9@@35)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_28458| c (invRecv34 o_9@@35)) o_9@@35)) (= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@9) o_9@@35 Ref__Integer_value) (+ (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@8) o_9@@35 Ref__Integer_value) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv34 o_9@@35)) (< (invRecv34 o_9@@35) len_3)) (< NoPerm FullPerm)) (qpRange34 o_9@@35))) (= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@9) o_9@@35 Ref__Integer_value) (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@8) o_9@@35 Ref__Integer_value))))
 :qid |stdinbpl.4227:24|
 :skolemid |321|
 :pattern ( (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@9) o_9@@35 Ref__Integer_value))
)))) (=> (and (and (and (and (and (and (forall ((o_9@@36 T@Ref) (f_5@@24 T@Field_40255_53) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| QPMask@8) o_9@@36 f_5@@24) (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| QPMask@9) o_9@@36 f_5@@24)))
 :qid |stdinbpl.4231:31|
 :skolemid |322|
 :pattern ( (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| QPMask@8) o_9@@36 f_5@@24))
 :pattern ( (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| QPMask@9) o_9@@36 f_5@@24))
)) (forall ((o_9@@37 T@Ref) (f_5@@25 T@Field_40268_40269) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| QPMask@8) o_9@@37 f_5@@25) (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| QPMask@9) o_9@@37 f_5@@25)))
 :qid |stdinbpl.4231:31|
 :skolemid |322|
 :pattern ( (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| QPMask@8) o_9@@37 f_5@@25))
 :pattern ( (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| QPMask@9) o_9@@37 f_5@@25))
))) (forall ((o_9@@38 T@Ref) (f_5@@26 T@Field_46341_3805) ) (!  (=> (not (= f_5@@26 Ref__Integer_value)) (= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@8) o_9@@38 f_5@@26) (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@9) o_9@@38 f_5@@26)))
 :qid |stdinbpl.4231:31|
 :skolemid |322|
 :pattern ( (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@8) o_9@@38 f_5@@26))
 :pattern ( (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@9) o_9@@38 f_5@@26))
))) (forall ((o_9@@39 T@Ref) (f_5@@27 T@Field_28419_113994) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| QPMask@8) o_9@@39 f_5@@27) (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| QPMask@9) o_9@@39 f_5@@27)))
 :qid |stdinbpl.4231:31|
 :skolemid |322|
 :pattern ( (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| QPMask@8) o_9@@39 f_5@@27))
 :pattern ( (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| QPMask@9) o_9@@39 f_5@@27))
))) (forall ((o_9@@40 T@Ref) (f_5@@28 T@Field_28419_114127) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| QPMask@8) o_9@@40 f_5@@28) (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| QPMask@9) o_9@@40 f_5@@28)))
 :qid |stdinbpl.4231:31|
 :skolemid |322|
 :pattern ( (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| QPMask@8) o_9@@40 f_5@@28))
 :pattern ( (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| QPMask@9) o_9@@40 f_5@@28))
))) (and (state ExhaleHeap@0 QPMask@9) (forall ((i_38 Int) ) (!  (=> (and (<= 0 i_38) (< i_38 len_3)) (= (select (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| ExhaleHeap@0) (|Seq#Index_28458| a_2 i_38) Ref__Integer_value) (+ i_38 1)))
 :qid |stdinbpl.4237:22|
 :skolemid |323|
 :pattern ( (|Seq#Index_28458| a_2 i_38))
)))) (and (and (forall ((i_39 Int) ) (!  (=> (and (<= 0 i_39) (< i_39 len_3)) (= (select (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| ExhaleHeap@0) (|Seq#Index_28458| b_24 i_39) Ref__Integer_value) i_39))
 :qid |stdinbpl.4241:22|
 :skolemid |324|
 :pattern ( (|Seq#Index_28458| b_24 i_39))
)) (forall ((i_40 Int) ) (!  (=> (and (<= 0 i_40) (< i_40 (ite (< (- len_3 1) len_3) (- len_3 1) len_3))) (= (select (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| ExhaleHeap@0) (|Seq#Index_28458| c i_40) Ref__Integer_value) 2))
 :qid |stdinbpl.4245:22|
 :skolemid |325|
 :pattern ( (|Seq#Index_28458| c i_40))
))) (and (state ExhaleHeap@0 QPMask@9) (state ExhaleHeap@0 QPMask@9)))) (and (=> (= (ControlFlow 0 84) (- 0 94)) (= (|Seq#Length_28458| a_2) len_3)) (=> (= (|Seq#Length_28458| a_2) len_3) (and (=> (= (ControlFlow 0 84) (- 0 93)) (forall ((i_18_1 Int) (i_18_2 Int) ) (!  (=> (and (and (and (and (not (= i_18_1 i_18_2)) (and (<= 0 i_18_1) (< i_18_1 len_3))) (and (<= 0 i_18_2) (< i_18_2 len_3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_28458| a_2 i_18_1) (|Seq#Index_28458| a_2 i_18_2))))
 :qid |stdinbpl.4264:17|
 :skolemid |326|
 :pattern ( (neverTriggered25 i_18_1) (neverTriggered25 i_18_2))
))) (=> (forall ((i_18_1@@0 Int) (i_18_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_18_1@@0 i_18_2@@0)) (and (<= 0 i_18_1@@0) (< i_18_1@@0 len_3))) (and (<= 0 i_18_2@@0) (< i_18_2@@0 len_3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_28458| a_2 i_18_1@@0) (|Seq#Index_28458| a_2 i_18_2@@0))))
 :qid |stdinbpl.4264:17|
 :skolemid |326|
 :pattern ( (neverTriggered25 i_18_1@@0) (neverTriggered25 i_18_2@@0))
)) (and (=> (= (ControlFlow 0 84) (- 0 92)) (forall ((i_18_1@@1 Int) ) (!  (=> (and (<= 0 i_18_1@@1) (< i_18_1@@1 len_3)) (>= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@9) (|Seq#Index_28458| a_2 i_18_1@@1) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.4271:17|
 :skolemid |327|
 :pattern ( (|Seq#Index_28458| a_2 i_18_1@@1))
 :pattern ( (|Seq#Index_28458| a_2 i_18_1@@1))
))) (=> (forall ((i_18_1@@2 Int) ) (!  (=> (and (<= 0 i_18_1@@2) (< i_18_1@@2 len_3)) (>= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@9) (|Seq#Index_28458| a_2 i_18_1@@2) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.4271:17|
 :skolemid |327|
 :pattern ( (|Seq#Index_28458| a_2 i_18_1@@2))
 :pattern ( (|Seq#Index_28458| a_2 i_18_1@@2))
)) (=> (forall ((i_18_1@@3 Int) ) (!  (=> (and (and (<= 0 i_18_1@@3) (< i_18_1@@3 len_3)) (< NoPerm FullPerm)) (and (qpRange25 (|Seq#Index_28458| a_2 i_18_1@@3)) (= (invRecv25 (|Seq#Index_28458| a_2 i_18_1@@3)) i_18_1@@3)))
 :qid |stdinbpl.4277:22|
 :skolemid |328|
 :pattern ( (|Seq#Index_28458| a_2 i_18_1@@3))
 :pattern ( (|Seq#Index_28458| a_2 i_18_1@@3))
)) (=> (and (forall ((o_9@@41 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv25 o_9@@41)) (< (invRecv25 o_9@@41) len_3)) (and (< NoPerm FullPerm) (qpRange25 o_9@@41))) (= (|Seq#Index_28458| a_2 (invRecv25 o_9@@41)) o_9@@41))
 :qid |stdinbpl.4281:22|
 :skolemid |329|
 :pattern ( (invRecv25 o_9@@41))
)) (forall ((o_9@@42 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv25 o_9@@42)) (< (invRecv25 o_9@@42) len_3)) (and (< NoPerm FullPerm) (qpRange25 o_9@@42))) (and (= (|Seq#Index_28458| a_2 (invRecv25 o_9@@42)) o_9@@42) (= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@10) o_9@@42 Ref__Integer_value) (- (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@9) o_9@@42 Ref__Integer_value) FullPerm)))) (=> (not (and (and (<= 0 (invRecv25 o_9@@42)) (< (invRecv25 o_9@@42) len_3)) (and (< NoPerm FullPerm) (qpRange25 o_9@@42)))) (= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@10) o_9@@42 Ref__Integer_value) (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@9) o_9@@42 Ref__Integer_value))))
 :qid |stdinbpl.4287:22|
 :skolemid |330|
 :pattern ( (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@10) o_9@@42 Ref__Integer_value))
))) (=> (and (and (and (and (forall ((o_9@@43 T@Ref) (f_5@@29 T@Field_40255_53) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| QPMask@9) o_9@@43 f_5@@29) (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| QPMask@10) o_9@@43 f_5@@29)))
 :qid |stdinbpl.4293:29|
 :skolemid |331|
 :pattern ( (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| QPMask@10) o_9@@43 f_5@@29))
)) (forall ((o_9@@44 T@Ref) (f_5@@30 T@Field_40268_40269) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| QPMask@9) o_9@@44 f_5@@30) (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| QPMask@10) o_9@@44 f_5@@30)))
 :qid |stdinbpl.4293:29|
 :skolemid |331|
 :pattern ( (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| QPMask@10) o_9@@44 f_5@@30))
))) (forall ((o_9@@45 T@Ref) (f_5@@31 T@Field_46341_3805) ) (!  (=> (not (= f_5@@31 Ref__Integer_value)) (= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@9) o_9@@45 f_5@@31) (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@10) o_9@@45 f_5@@31)))
 :qid |stdinbpl.4293:29|
 :skolemid |331|
 :pattern ( (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@10) o_9@@45 f_5@@31))
))) (forall ((o_9@@46 T@Ref) (f_5@@32 T@Field_28419_113994) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| QPMask@9) o_9@@46 f_5@@32) (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| QPMask@10) o_9@@46 f_5@@32)))
 :qid |stdinbpl.4293:29|
 :skolemid |331|
 :pattern ( (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| QPMask@10) o_9@@46 f_5@@32))
))) (forall ((o_9@@47 T@Ref) (f_5@@33 T@Field_28419_114127) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| QPMask@9) o_9@@47 f_5@@33) (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| QPMask@10) o_9@@47 f_5@@33)))
 :qid |stdinbpl.4293:29|
 :skolemid |331|
 :pattern ( (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| QPMask@10) o_9@@47 f_5@@33))
))) (and (=> (= (ControlFlow 0 84) (- 0 91)) (= (|Seq#Length_28458| b_24) len_3)) (=> (= (|Seq#Length_28458| b_24) len_3) (and (=> (= (ControlFlow 0 84) (- 0 90)) (forall ((i_19_1 Int) ) (!  (=> (and (and (<= 0 i_19_1) (< i_19_1 len_3)) (dummyFunction_4112 (select (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| ExhaleHeap@0) (|Seq#Index_28458| b_24 i_19_1) Ref__Integer_value))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4304:17|
 :skolemid |332|
 :pattern ( (|Seq#Index_28458| b_24 i_19_1))
 :pattern ( (|Seq#Index_28458| b_24 i_19_1))
))) (=> (forall ((i_19_1@@0 Int) ) (!  (=> (and (and (<= 0 i_19_1@@0) (< i_19_1@@0 len_3)) (dummyFunction_4112 (select (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| ExhaleHeap@0) (|Seq#Index_28458| b_24 i_19_1@@0) Ref__Integer_value))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4304:17|
 :skolemid |332|
 :pattern ( (|Seq#Index_28458| b_24 i_19_1@@0))
 :pattern ( (|Seq#Index_28458| b_24 i_19_1@@0))
)) (and (=> (= (ControlFlow 0 84) (- 0 89)) (forall ((i_19_1@@1 Int) (i_19_2 Int) ) (!  (=> (and (and (and (and (not (= i_19_1@@1 i_19_2)) (and (<= 0 i_19_1@@1) (< i_19_1@@1 len_3))) (and (<= 0 i_19_2) (< i_19_2 len_3))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_28458| b_24 i_19_1@@1) (|Seq#Index_28458| b_24 i_19_2))))
 :qid |stdinbpl.4311:17|
 :skolemid |333|
 :pattern ( (neverTriggered26 i_19_1@@1) (neverTriggered26 i_19_2))
))) (=> (forall ((i_19_1@@2 Int) (i_19_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_19_1@@2 i_19_2@@0)) (and (<= 0 i_19_1@@2) (< i_19_1@@2 len_3))) (and (<= 0 i_19_2@@0) (< i_19_2@@0 len_3))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_28458| b_24 i_19_1@@2) (|Seq#Index_28458| b_24 i_19_2@@0))))
 :qid |stdinbpl.4311:17|
 :skolemid |333|
 :pattern ( (neverTriggered26 i_19_1@@2) (neverTriggered26 i_19_2@@0))
)) (and (=> (= (ControlFlow 0 84) (- 0 88)) (forall ((i_19_1@@3 Int) ) (!  (=> (and (<= 0 i_19_1@@3) (< i_19_1@@3 len_3)) (>= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@10) (|Seq#Index_28458| b_24 i_19_1@@3) Ref__Integer_value) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.4318:17|
 :skolemid |334|
 :pattern ( (|Seq#Index_28458| b_24 i_19_1@@3))
 :pattern ( (|Seq#Index_28458| b_24 i_19_1@@3))
))) (=> (forall ((i_19_1@@4 Int) ) (!  (=> (and (<= 0 i_19_1@@4) (< i_19_1@@4 len_3)) (>= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@10) (|Seq#Index_28458| b_24 i_19_1@@4) Ref__Integer_value) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.4318:17|
 :skolemid |334|
 :pattern ( (|Seq#Index_28458| b_24 i_19_1@@4))
 :pattern ( (|Seq#Index_28458| b_24 i_19_1@@4))
)) (=> (forall ((i_19_1@@5 Int) ) (!  (=> (and (and (<= 0 i_19_1@@5) (< i_19_1@@5 len_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange26 (|Seq#Index_28458| b_24 i_19_1@@5)) (= (invRecv26 (|Seq#Index_28458| b_24 i_19_1@@5)) i_19_1@@5)))
 :qid |stdinbpl.4324:22|
 :skolemid |335|
 :pattern ( (|Seq#Index_28458| b_24 i_19_1@@5))
 :pattern ( (|Seq#Index_28458| b_24 i_19_1@@5))
)) (=> (and (forall ((o_9@@48 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv26 o_9@@48)) (< (invRecv26 o_9@@48) len_3)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange26 o_9@@48))) (= (|Seq#Index_28458| b_24 (invRecv26 o_9@@48)) o_9@@48))
 :qid |stdinbpl.4328:22|
 :skolemid |336|
 :pattern ( (invRecv26 o_9@@48))
)) (forall ((o_9@@49 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv26 o_9@@49)) (< (invRecv26 o_9@@49) len_3)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange26 o_9@@49))) (and (= (|Seq#Index_28458| b_24 (invRecv26 o_9@@49)) o_9@@49) (= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@11) o_9@@49 Ref__Integer_value) (- (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@10) o_9@@49 Ref__Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (<= 0 (invRecv26 o_9@@49)) (< (invRecv26 o_9@@49) len_3)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange26 o_9@@49)))) (= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@11) o_9@@49 Ref__Integer_value) (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@10) o_9@@49 Ref__Integer_value))))
 :qid |stdinbpl.4334:22|
 :skolemid |337|
 :pattern ( (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@11) o_9@@49 Ref__Integer_value))
))) (=> (and (and (and (and (forall ((o_9@@50 T@Ref) (f_5@@34 T@Field_40255_53) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| QPMask@10) o_9@@50 f_5@@34) (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| QPMask@11) o_9@@50 f_5@@34)))
 :qid |stdinbpl.4340:29|
 :skolemid |338|
 :pattern ( (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| QPMask@11) o_9@@50 f_5@@34))
)) (forall ((o_9@@51 T@Ref) (f_5@@35 T@Field_40268_40269) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| QPMask@10) o_9@@51 f_5@@35) (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| QPMask@11) o_9@@51 f_5@@35)))
 :qid |stdinbpl.4340:29|
 :skolemid |338|
 :pattern ( (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| QPMask@11) o_9@@51 f_5@@35))
))) (forall ((o_9@@52 T@Ref) (f_5@@36 T@Field_46341_3805) ) (!  (=> (not (= f_5@@36 Ref__Integer_value)) (= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@10) o_9@@52 f_5@@36) (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@11) o_9@@52 f_5@@36)))
 :qid |stdinbpl.4340:29|
 :skolemid |338|
 :pattern ( (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@11) o_9@@52 f_5@@36))
))) (forall ((o_9@@53 T@Ref) (f_5@@37 T@Field_28419_113994) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| QPMask@10) o_9@@53 f_5@@37) (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| QPMask@11) o_9@@53 f_5@@37)))
 :qid |stdinbpl.4340:29|
 :skolemid |338|
 :pattern ( (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| QPMask@11) o_9@@53 f_5@@37))
))) (forall ((o_9@@54 T@Ref) (f_5@@38 T@Field_28419_114127) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| QPMask@10) o_9@@54 f_5@@38) (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| QPMask@11) o_9@@54 f_5@@38)))
 :qid |stdinbpl.4340:29|
 :skolemid |338|
 :pattern ( (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| QPMask@11) o_9@@54 f_5@@38))
))) (and (=> (= (ControlFlow 0 84) (- 0 87)) (= (|Seq#Length_28458| c) len_3)) (=> (= (|Seq#Length_28458| c) len_3) (and (=> (= (ControlFlow 0 84) (- 0 86)) (forall ((i_20_2 Int) (i_20_3 Int) ) (!  (=> (and (and (and (and (not (= i_20_2 i_20_3)) (and (<= 0 i_20_2) (< i_20_2 len_3))) (and (<= 0 i_20_3) (< i_20_3 len_3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_28458| c i_20_2) (|Seq#Index_28458| c i_20_3))))
 :qid |stdinbpl.4354:17|
 :skolemid |339|
 :pattern ( (neverTriggered27 i_20_2) (neverTriggered27 i_20_3))
))) (=> (forall ((i_20_2@@0 Int) (i_20_3@@0 Int) ) (!  (=> (and (and (and (and (not (= i_20_2@@0 i_20_3@@0)) (and (<= 0 i_20_2@@0) (< i_20_2@@0 len_3))) (and (<= 0 i_20_3@@0) (< i_20_3@@0 len_3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_28458| c i_20_2@@0) (|Seq#Index_28458| c i_20_3@@0))))
 :qid |stdinbpl.4354:17|
 :skolemid |339|
 :pattern ( (neverTriggered27 i_20_2@@0) (neverTriggered27 i_20_3@@0))
)) (and (=> (= (ControlFlow 0 84) (- 0 85)) (forall ((i_20_2@@1 Int) ) (!  (=> (and (<= 0 i_20_2@@1) (< i_20_2@@1 len_3)) (>= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@11) (|Seq#Index_28458| c i_20_2@@1) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.4361:17|
 :skolemid |340|
 :pattern ( (|Seq#Index_28458| c i_20_2@@1))
 :pattern ( (|Seq#Index_28458| c i_20_2@@1))
))) (=> (forall ((i_20_2@@2 Int) ) (!  (=> (and (<= 0 i_20_2@@2) (< i_20_2@@2 len_3)) (>= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@11) (|Seq#Index_28458| c i_20_2@@2) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.4361:17|
 :skolemid |340|
 :pattern ( (|Seq#Index_28458| c i_20_2@@2))
 :pattern ( (|Seq#Index_28458| c i_20_2@@2))
)) (=> (forall ((i_20_2@@3 Int) ) (!  (=> (and (and (<= 0 i_20_2@@3) (< i_20_2@@3 len_3)) (< NoPerm FullPerm)) (and (qpRange27 (|Seq#Index_28458| c i_20_2@@3)) (= (invRecv27 (|Seq#Index_28458| c i_20_2@@3)) i_20_2@@3)))
 :qid |stdinbpl.4367:22|
 :skolemid |341|
 :pattern ( (|Seq#Index_28458| c i_20_2@@3))
 :pattern ( (|Seq#Index_28458| c i_20_2@@3))
)) (=> (and (forall ((o_9@@55 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv27 o_9@@55)) (< (invRecv27 o_9@@55) len_3)) (and (< NoPerm FullPerm) (qpRange27 o_9@@55))) (= (|Seq#Index_28458| c (invRecv27 o_9@@55)) o_9@@55))
 :qid |stdinbpl.4371:22|
 :skolemid |342|
 :pattern ( (invRecv27 o_9@@55))
)) (forall ((o_9@@56 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv27 o_9@@56)) (< (invRecv27 o_9@@56) len_3)) (and (< NoPerm FullPerm) (qpRange27 o_9@@56))) (and (= (|Seq#Index_28458| c (invRecv27 o_9@@56)) o_9@@56) (= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@12) o_9@@56 Ref__Integer_value) (- (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@11) o_9@@56 Ref__Integer_value) FullPerm)))) (=> (not (and (and (<= 0 (invRecv27 o_9@@56)) (< (invRecv27 o_9@@56) len_3)) (and (< NoPerm FullPerm) (qpRange27 o_9@@56)))) (= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@12) o_9@@56 Ref__Integer_value) (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@11) o_9@@56 Ref__Integer_value))))
 :qid |stdinbpl.4377:22|
 :skolemid |343|
 :pattern ( (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@12) o_9@@56 Ref__Integer_value))
))) (=> (and (and (and (and (forall ((o_9@@57 T@Ref) (f_5@@39 T@Field_40255_53) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| QPMask@11) o_9@@57 f_5@@39) (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| QPMask@12) o_9@@57 f_5@@39)))
 :qid |stdinbpl.4383:29|
 :skolemid |344|
 :pattern ( (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| QPMask@12) o_9@@57 f_5@@39))
)) (forall ((o_9@@58 T@Ref) (f_5@@40 T@Field_40268_40269) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| QPMask@11) o_9@@58 f_5@@40) (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| QPMask@12) o_9@@58 f_5@@40)))
 :qid |stdinbpl.4383:29|
 :skolemid |344|
 :pattern ( (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| QPMask@12) o_9@@58 f_5@@40))
))) (forall ((o_9@@59 T@Ref) (f_5@@41 T@Field_46341_3805) ) (!  (=> (not (= f_5@@41 Ref__Integer_value)) (= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@11) o_9@@59 f_5@@41) (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@12) o_9@@59 f_5@@41)))
 :qid |stdinbpl.4383:29|
 :skolemid |344|
 :pattern ( (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@12) o_9@@59 f_5@@41))
))) (forall ((o_9@@60 T@Ref) (f_5@@42 T@Field_28419_113994) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| QPMask@11) o_9@@60 f_5@@42) (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| QPMask@12) o_9@@60 f_5@@42)))
 :qid |stdinbpl.4383:29|
 :skolemid |344|
 :pattern ( (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| QPMask@12) o_9@@60 f_5@@42))
))) (forall ((o_9@@61 T@Ref) (f_5@@43 T@Field_28419_114127) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| QPMask@11) o_9@@61 f_5@@43) (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| QPMask@12) o_9@@61 f_5@@43)))
 :qid |stdinbpl.4383:29|
 :skolemid |344|
 :pattern ( (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| QPMask@12) o_9@@61 f_5@@43))
))) (and (and (=> (= (ControlFlow 0 84) 83) anon136_Else_correct) (=> (= (ControlFlow 0 84) 70) anon137_Then_correct)) (=> (= (ControlFlow 0 84) 72) anon137_Else_correct))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((anon81_correct true))
(let ((anon135_Else_correct  (=> (and (not (and (<= 0 i_33) (< i_33 len_3))) (= (ControlFlow 0 68) 65)) anon81_correct)))
(let ((anon135_Then_correct  (=> (and (<= 0 i_33) (< i_33 len_3)) (and (=> (= (ControlFlow 0 66) (- 0 67)) (= (select (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| Heap@@41) (|Seq#Index_28458| b_24 i_33) Ref__Integer_value) i_33)) (=> (= (select (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| Heap@@41) (|Seq#Index_28458| b_24 i_33) Ref__Integer_value) i_33) (=> (= (ControlFlow 0 66) 65) anon81_correct))))))
(let ((anon132_Else_correct  (=> (forall ((i_32_1_1 Int) ) (!  (=> (and (<= 0 i_32_1_1) (< i_32_1_1 (ite (< (- len_3 1) len_3) (- len_3 1) len_3))) (= (select (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| Heap@@41) (|Seq#Index_28458| a_2 (+ i_32_1_1 1)) Ref__Integer_value) 0))
 :qid |stdinbpl.4105:22|
 :skolemid |302|
)) (and (and (=> (= (ControlFlow 0 99) 84) anon134_Else_correct) (=> (= (ControlFlow 0 99) 66) anon135_Then_correct)) (=> (= (ControlFlow 0 99) 68) anon135_Else_correct)))))
(let ((anon77_correct true))
(let ((anon133_Else_correct  (=> (and (not (and (<= 0 i_31) (< i_31 (ite (< (- len_3 1) len_3) (- len_3 1) len_3)))) (= (ControlFlow 0 64) 61)) anon77_correct)))
(let ((anon133_Then_correct  (=> (and (<= 0 i_31) (< i_31 (ite (< (- len_3 1) len_3) (- len_3 1) len_3))) (and (=> (= (ControlFlow 0 62) (- 0 63)) (= (select (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| Heap@@41) (|Seq#Index_28458| a_2 (+ i_31 1)) Ref__Integer_value) 0)) (=> (= (select (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| Heap@@41) (|Seq#Index_28458| a_2 (+ i_31 1)) Ref__Integer_value) 0) (=> (= (ControlFlow 0 62) 61) anon77_correct))))))
(let ((anon130_Else_correct  (=> (forall ((j_11_1_1 Int) (k_11_1_1 Int) ) (!  (=> (and (<= 0 j_11_1_1) (and (< j_11_1_1 len_3) (and (<= 0 k_11_1_1) (and (< k_11_1_1 len_3) (not (= j_11_1_1 k_11_1_1)))))) (not (= (|Seq#Index_28458| c j_11_1_1) (|Seq#Index_28458| c k_11_1_1))))
 :qid |stdinbpl.4053:22|
 :skolemid |295|
 :pattern ( (|Seq#Index_28458| c j_11_1_1) (|Seq#Index_28458| c k_11_1_1))
)) (and (=> (= (ControlFlow 0 100) (- 0 102)) (forall ((i_30 Int) (i_30_1 Int) ) (!  (=> (and (and (and (and (not (= i_30 i_30_1)) (and (<= 0 i_30) (< i_30 len_3))) (and (<= 0 i_30_1) (< i_30_1 len_3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_28458| c i_30) (|Seq#Index_28458| c i_30_1))))
 :qid |stdinbpl.4064:19|
 :skolemid |296|
 :pattern ( (neverTriggered31 i_30) (neverTriggered31 i_30_1))
))) (=> (forall ((i_30@@0 Int) (i_30_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_30@@0 i_30_1@@0)) (and (<= 0 i_30@@0) (< i_30@@0 len_3))) (and (<= 0 i_30_1@@0) (< i_30_1@@0 len_3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_28458| c i_30@@0) (|Seq#Index_28458| c i_30_1@@0))))
 :qid |stdinbpl.4064:19|
 :skolemid |296|
 :pattern ( (neverTriggered31 i_30@@0) (neverTriggered31 i_30_1@@0))
)) (and (=> (= (ControlFlow 0 100) (- 0 101)) (forall ((i_30@@1 Int) ) (!  (=> (and (<= 0 i_30@@1) (< i_30@@1 len_3)) (>= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@5) (|Seq#Index_28458| c i_30@@1) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.4071:19|
 :skolemid |297|
 :pattern ( (|Seq#Index_28458| c i_30@@1))
 :pattern ( (|Seq#Index_28458| c i_30@@1))
))) (=> (forall ((i_30@@2 Int) ) (!  (=> (and (<= 0 i_30@@2) (< i_30@@2 len_3)) (>= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@5) (|Seq#Index_28458| c i_30@@2) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.4071:19|
 :skolemid |297|
 :pattern ( (|Seq#Index_28458| c i_30@@2))
 :pattern ( (|Seq#Index_28458| c i_30@@2))
)) (=> (forall ((i_30@@3 Int) ) (!  (=> (and (and (<= 0 i_30@@3) (< i_30@@3 len_3)) (< NoPerm FullPerm)) (and (qpRange31 (|Seq#Index_28458| c i_30@@3)) (= (invRecv31 (|Seq#Index_28458| c i_30@@3)) i_30@@3)))
 :qid |stdinbpl.4077:24|
 :skolemid |298|
 :pattern ( (|Seq#Index_28458| c i_30@@3))
 :pattern ( (|Seq#Index_28458| c i_30@@3))
)) (=> (and (forall ((o_9@@62 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv31 o_9@@62)) (< (invRecv31 o_9@@62) len_3)) (and (< NoPerm FullPerm) (qpRange31 o_9@@62))) (= (|Seq#Index_28458| c (invRecv31 o_9@@62)) o_9@@62))
 :qid |stdinbpl.4081:24|
 :skolemid |299|
 :pattern ( (invRecv31 o_9@@62))
)) (forall ((o_9@@63 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv31 o_9@@63)) (< (invRecv31 o_9@@63) len_3)) (and (< NoPerm FullPerm) (qpRange31 o_9@@63))) (and (= (|Seq#Index_28458| c (invRecv31 o_9@@63)) o_9@@63) (= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@6) o_9@@63 Ref__Integer_value) (- (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@5) o_9@@63 Ref__Integer_value) FullPerm)))) (=> (not (and (and (<= 0 (invRecv31 o_9@@63)) (< (invRecv31 o_9@@63) len_3)) (and (< NoPerm FullPerm) (qpRange31 o_9@@63)))) (= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@6) o_9@@63 Ref__Integer_value) (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@5) o_9@@63 Ref__Integer_value))))
 :qid |stdinbpl.4087:24|
 :skolemid |300|
 :pattern ( (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@6) o_9@@63 Ref__Integer_value))
))) (=> (and (and (and (and (forall ((o_9@@64 T@Ref) (f_5@@44 T@Field_40255_53) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| QPMask@5) o_9@@64 f_5@@44) (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| QPMask@6) o_9@@64 f_5@@44)))
 :qid |stdinbpl.4093:31|
 :skolemid |301|
 :pattern ( (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| QPMask@6) o_9@@64 f_5@@44))
)) (forall ((o_9@@65 T@Ref) (f_5@@45 T@Field_40268_40269) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| QPMask@5) o_9@@65 f_5@@45) (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| QPMask@6) o_9@@65 f_5@@45)))
 :qid |stdinbpl.4093:31|
 :skolemid |301|
 :pattern ( (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| QPMask@6) o_9@@65 f_5@@45))
))) (forall ((o_9@@66 T@Ref) (f_5@@46 T@Field_46341_3805) ) (!  (=> (not (= f_5@@46 Ref__Integer_value)) (= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@5) o_9@@66 f_5@@46) (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@6) o_9@@66 f_5@@46)))
 :qid |stdinbpl.4093:31|
 :skolemid |301|
 :pattern ( (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@6) o_9@@66 f_5@@46))
))) (forall ((o_9@@67 T@Ref) (f_5@@47 T@Field_28419_113994) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| QPMask@5) o_9@@67 f_5@@47) (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| QPMask@6) o_9@@67 f_5@@47)))
 :qid |stdinbpl.4093:31|
 :skolemid |301|
 :pattern ( (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| QPMask@6) o_9@@67 f_5@@47))
))) (forall ((o_9@@68 T@Ref) (f_5@@48 T@Field_28419_114127) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| QPMask@5) o_9@@68 f_5@@48) (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| QPMask@6) o_9@@68 f_5@@48)))
 :qid |stdinbpl.4093:31|
 :skolemid |301|
 :pattern ( (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| QPMask@6) o_9@@68 f_5@@48))
))) (and (and (=> (= (ControlFlow 0 100) 99) anon132_Else_correct) (=> (= (ControlFlow 0 100) 62) anon133_Then_correct)) (=> (= (ControlFlow 0 100) 64) anon133_Else_correct))))))))))))
(let ((anon73_correct true))
(let ((anon131_Else_correct  (=> (and (not (and (<= 0 j_10_2) (and (< j_10_2 len_3) (and (<= 0 k_10) (and (< k_10 len_3) (not (= j_10_2 k_10))))))) (= (ControlFlow 0 60) 57)) anon73_correct)))
(let ((anon131_Then_correct  (=> (and (<= 0 j_10_2) (and (< j_10_2 len_3) (and (<= 0 k_10) (and (< k_10 len_3) (not (= j_10_2 k_10)))))) (and (=> (= (ControlFlow 0 58) (- 0 59)) (not (= (|Seq#Index_28458| c j_10_2) (|Seq#Index_28458| c k_10)))) (=> (not (= (|Seq#Index_28458| c j_10_2) (|Seq#Index_28458| c k_10))) (=> (= (ControlFlow 0 58) 57) anon73_correct))))))
(let ((anon128_Else_correct  (=> (forall ((j_9_1_1 Int) (k_9_1_1 Int) ) (!  (=> (and (<= 0 j_9_1_1) (and (< j_9_1_1 len_3) (and (<= 0 k_9_1_1) (and (< k_9_1_1 len_3) (not (= j_9_1_1 k_9_1_1)))))) (not (= (|Seq#Index_28458| b_24 j_9_1_1) (|Seq#Index_28458| b_24 k_9_1_1))))
 :qid |stdinbpl.3997:22|
 :skolemid |287|
 :pattern ( (|Seq#Index_28458| b_24 j_9_1_1) (|Seq#Index_28458| b_24 k_9_1_1))
)) (and (=> (= (ControlFlow 0 103) (- 0 106)) (forall ((i_29 Int) ) (!  (=> (and (and (<= 0 i_29) (< i_29 len_3)) (dummyFunction_4112 (select (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| Heap@@41) (|Seq#Index_28458| b_24 i_29) Ref__Integer_value))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4005:19|
 :skolemid |288|
 :pattern ( (|Seq#Index_28458| b_24 i_29))
 :pattern ( (|Seq#Index_28458| b_24 i_29))
))) (=> (forall ((i_29@@0 Int) ) (!  (=> (and (and (<= 0 i_29@@0) (< i_29@@0 len_3)) (dummyFunction_4112 (select (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| Heap@@41) (|Seq#Index_28458| b_24 i_29@@0) Ref__Integer_value))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4005:19|
 :skolemid |288|
 :pattern ( (|Seq#Index_28458| b_24 i_29@@0))
 :pattern ( (|Seq#Index_28458| b_24 i_29@@0))
)) (and (=> (= (ControlFlow 0 103) (- 0 105)) (forall ((i_29@@1 Int) (i_29_2 Int) ) (!  (=> (and (and (and (and (not (= i_29@@1 i_29_2)) (and (<= 0 i_29@@1) (< i_29@@1 len_3))) (and (<= 0 i_29_2) (< i_29_2 len_3))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_28458| b_24 i_29@@1) (|Seq#Index_28458| b_24 i_29_2))))
 :qid |stdinbpl.4012:19|
 :skolemid |289|
 :pattern ( (neverTriggered30 i_29@@1) (neverTriggered30 i_29_2))
))) (=> (forall ((i_29@@2 Int) (i_29_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_29@@2 i_29_2@@0)) (and (<= 0 i_29@@2) (< i_29@@2 len_3))) (and (<= 0 i_29_2@@0) (< i_29_2@@0 len_3))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_28458| b_24 i_29@@2) (|Seq#Index_28458| b_24 i_29_2@@0))))
 :qid |stdinbpl.4012:19|
 :skolemid |289|
 :pattern ( (neverTriggered30 i_29@@2) (neverTriggered30 i_29_2@@0))
)) (and (=> (= (ControlFlow 0 103) (- 0 104)) (forall ((i_29@@3 Int) ) (!  (=> (and (<= 0 i_29@@3) (< i_29@@3 len_3)) (>= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@4) (|Seq#Index_28458| b_24 i_29@@3) Ref__Integer_value) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.4019:19|
 :skolemid |290|
 :pattern ( (|Seq#Index_28458| b_24 i_29@@3))
 :pattern ( (|Seq#Index_28458| b_24 i_29@@3))
))) (=> (forall ((i_29@@4 Int) ) (!  (=> (and (<= 0 i_29@@4) (< i_29@@4 len_3)) (>= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@4) (|Seq#Index_28458| b_24 i_29@@4) Ref__Integer_value) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.4019:19|
 :skolemid |290|
 :pattern ( (|Seq#Index_28458| b_24 i_29@@4))
 :pattern ( (|Seq#Index_28458| b_24 i_29@@4))
)) (=> (forall ((i_29@@5 Int) ) (!  (=> (and (and (<= 0 i_29@@5) (< i_29@@5 len_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange30 (|Seq#Index_28458| b_24 i_29@@5)) (= (invRecv30 (|Seq#Index_28458| b_24 i_29@@5)) i_29@@5)))
 :qid |stdinbpl.4025:24|
 :skolemid |291|
 :pattern ( (|Seq#Index_28458| b_24 i_29@@5))
 :pattern ( (|Seq#Index_28458| b_24 i_29@@5))
)) (=> (and (forall ((o_9@@69 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv30 o_9@@69)) (< (invRecv30 o_9@@69) len_3)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange30 o_9@@69))) (= (|Seq#Index_28458| b_24 (invRecv30 o_9@@69)) o_9@@69))
 :qid |stdinbpl.4029:24|
 :skolemid |292|
 :pattern ( (invRecv30 o_9@@69))
)) (forall ((o_9@@70 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv30 o_9@@70)) (< (invRecv30 o_9@@70) len_3)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange30 o_9@@70))) (and (= (|Seq#Index_28458| b_24 (invRecv30 o_9@@70)) o_9@@70) (= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@5) o_9@@70 Ref__Integer_value) (- (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@4) o_9@@70 Ref__Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (<= 0 (invRecv30 o_9@@70)) (< (invRecv30 o_9@@70) len_3)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange30 o_9@@70)))) (= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@5) o_9@@70 Ref__Integer_value) (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@4) o_9@@70 Ref__Integer_value))))
 :qid |stdinbpl.4035:24|
 :skolemid |293|
 :pattern ( (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@5) o_9@@70 Ref__Integer_value))
))) (=> (and (and (and (and (forall ((o_9@@71 T@Ref) (f_5@@49 T@Field_40255_53) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| QPMask@4) o_9@@71 f_5@@49) (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| QPMask@5) o_9@@71 f_5@@49)))
 :qid |stdinbpl.4041:31|
 :skolemid |294|
 :pattern ( (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| QPMask@5) o_9@@71 f_5@@49))
)) (forall ((o_9@@72 T@Ref) (f_5@@50 T@Field_40268_40269) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| QPMask@4) o_9@@72 f_5@@50) (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| QPMask@5) o_9@@72 f_5@@50)))
 :qid |stdinbpl.4041:31|
 :skolemid |294|
 :pattern ( (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| QPMask@5) o_9@@72 f_5@@50))
))) (forall ((o_9@@73 T@Ref) (f_5@@51 T@Field_46341_3805) ) (!  (=> (not (= f_5@@51 Ref__Integer_value)) (= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@4) o_9@@73 f_5@@51) (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@5) o_9@@73 f_5@@51)))
 :qid |stdinbpl.4041:31|
 :skolemid |294|
 :pattern ( (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@5) o_9@@73 f_5@@51))
))) (forall ((o_9@@74 T@Ref) (f_5@@52 T@Field_28419_113994) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| QPMask@4) o_9@@74 f_5@@52) (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| QPMask@5) o_9@@74 f_5@@52)))
 :qid |stdinbpl.4041:31|
 :skolemid |294|
 :pattern ( (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| QPMask@5) o_9@@74 f_5@@52))
))) (forall ((o_9@@75 T@Ref) (f_5@@53 T@Field_28419_114127) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| QPMask@4) o_9@@75 f_5@@53) (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| QPMask@5) o_9@@75 f_5@@53)))
 :qid |stdinbpl.4041:31|
 :skolemid |294|
 :pattern ( (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| QPMask@5) o_9@@75 f_5@@53))
))) (and (and (=> (= (ControlFlow 0 103) 100) anon130_Else_correct) (=> (= (ControlFlow 0 103) 58) anon131_Then_correct)) (=> (= (ControlFlow 0 103) 60) anon131_Else_correct))))))))))))))
(let ((anon69_correct true))
(let ((anon129_Else_correct  (=> (and (not (and (<= 0 j_8_2) (and (< j_8_2 len_3) (and (<= 0 k_8) (and (< k_8 len_3) (not (= j_8_2 k_8))))))) (= (ControlFlow 0 56) 53)) anon69_correct)))
(let ((anon129_Then_correct  (=> (and (<= 0 j_8_2) (and (< j_8_2 len_3) (and (<= 0 k_8) (and (< k_8 len_3) (not (= j_8_2 k_8)))))) (and (=> (= (ControlFlow 0 54) (- 0 55)) (not (= (|Seq#Index_28458| b_24 j_8_2) (|Seq#Index_28458| b_24 k_8)))) (=> (not (= (|Seq#Index_28458| b_24 j_8_2) (|Seq#Index_28458| b_24 k_8))) (=> (= (ControlFlow 0 54) 53) anon69_correct))))))
(let ((anon66_correct  (and (=> (= (ControlFlow 0 107) (- 0 110)) (forall ((i_28 Int) ) (!  (=> (and (and (<= 1 i_28) (< i_28 (+ (ite (< (- len_3 1) len_3) (- len_3 1) len_3) 1))) (dummyFunction_4112 (select (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| Heap@@41) (|Seq#Index_28458| a_2 i_28) Ref__Integer_value))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3949:19|
 :skolemid |280|
 :pattern ( (|Seq#Index_28458| a_2 i_28))
 :pattern ( (|Seq#Index_28458| a_2 i_28))
))) (=> (forall ((i_28@@0 Int) ) (!  (=> (and (and (<= 1 i_28@@0) (< i_28@@0 (+ (ite (< (- len_3 1) len_3) (- len_3 1) len_3) 1))) (dummyFunction_4112 (select (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| Heap@@41) (|Seq#Index_28458| a_2 i_28@@0) Ref__Integer_value))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3949:19|
 :skolemid |280|
 :pattern ( (|Seq#Index_28458| a_2 i_28@@0))
 :pattern ( (|Seq#Index_28458| a_2 i_28@@0))
)) (and (=> (= (ControlFlow 0 107) (- 0 109)) (forall ((i_28@@1 Int) (i_28_2 Int) ) (!  (=> (and (and (and (and (not (= i_28@@1 i_28_2)) (and (<= 1 i_28@@1) (< i_28@@1 (+ (ite (< (- len_3 1) len_3) (- len_3 1) len_3) 1)))) (and (<= 1 i_28_2) (< i_28_2 (+ (ite (< (- len_3 1) len_3) (- len_3 1) len_3) 1)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_28458| a_2 i_28@@1) (|Seq#Index_28458| a_2 i_28_2))))
 :qid |stdinbpl.3956:19|
 :skolemid |281|
 :pattern ( (neverTriggered29 i_28@@1) (neverTriggered29 i_28_2))
))) (=> (forall ((i_28@@2 Int) (i_28_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_28@@2 i_28_2@@0)) (and (<= 1 i_28@@2) (< i_28@@2 (+ (ite (< (- len_3 1) len_3) (- len_3 1) len_3) 1)))) (and (<= 1 i_28_2@@0) (< i_28_2@@0 (+ (ite (< (- len_3 1) len_3) (- len_3 1) len_3) 1)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_28458| a_2 i_28@@2) (|Seq#Index_28458| a_2 i_28_2@@0))))
 :qid |stdinbpl.3956:19|
 :skolemid |281|
 :pattern ( (neverTriggered29 i_28@@2) (neverTriggered29 i_28_2@@0))
)) (and (=> (= (ControlFlow 0 107) (- 0 108)) (forall ((i_28@@3 Int) ) (!  (=> (and (<= 1 i_28@@3) (< i_28@@3 (+ (ite (< (- len_3 1) len_3) (- len_3 1) len_3) 1))) (>= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| Mask@1) (|Seq#Index_28458| a_2 i_28@@3) Ref__Integer_value) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.3963:19|
 :skolemid |282|
 :pattern ( (|Seq#Index_28458| a_2 i_28@@3))
 :pattern ( (|Seq#Index_28458| a_2 i_28@@3))
))) (=> (forall ((i_28@@4 Int) ) (!  (=> (and (<= 1 i_28@@4) (< i_28@@4 (+ (ite (< (- len_3 1) len_3) (- len_3 1) len_3) 1))) (>= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| Mask@1) (|Seq#Index_28458| a_2 i_28@@4) Ref__Integer_value) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.3963:19|
 :skolemid |282|
 :pattern ( (|Seq#Index_28458| a_2 i_28@@4))
 :pattern ( (|Seq#Index_28458| a_2 i_28@@4))
)) (=> (forall ((i_28@@5 Int) ) (!  (=> (and (and (<= 1 i_28@@5) (< i_28@@5 (+ (ite (< (- len_3 1) len_3) (- len_3 1) len_3) 1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange29 (|Seq#Index_28458| a_2 i_28@@5)) (= (invRecv29 (|Seq#Index_28458| a_2 i_28@@5)) i_28@@5)))
 :qid |stdinbpl.3969:24|
 :skolemid |283|
 :pattern ( (|Seq#Index_28458| a_2 i_28@@5))
 :pattern ( (|Seq#Index_28458| a_2 i_28@@5))
)) (=> (and (forall ((o_9@@76 T@Ref) ) (!  (=> (and (and (<= 1 (invRecv29 o_9@@76)) (< (invRecv29 o_9@@76) (+ (ite (< (- len_3 1) len_3) (- len_3 1) len_3) 1))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange29 o_9@@76))) (= (|Seq#Index_28458| a_2 (invRecv29 o_9@@76)) o_9@@76))
 :qid |stdinbpl.3973:24|
 :skolemid |284|
 :pattern ( (invRecv29 o_9@@76))
)) (forall ((o_9@@77 T@Ref) ) (!  (and (=> (and (and (<= 1 (invRecv29 o_9@@77)) (< (invRecv29 o_9@@77) (+ (ite (< (- len_3 1) len_3) (- len_3 1) len_3) 1))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange29 o_9@@77))) (and (= (|Seq#Index_28458| a_2 (invRecv29 o_9@@77)) o_9@@77) (= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@4) o_9@@77 Ref__Integer_value) (- (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| Mask@1) o_9@@77 Ref__Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (<= 1 (invRecv29 o_9@@77)) (< (invRecv29 o_9@@77) (+ (ite (< (- len_3 1) len_3) (- len_3 1) len_3) 1))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange29 o_9@@77)))) (= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@4) o_9@@77 Ref__Integer_value) (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| Mask@1) o_9@@77 Ref__Integer_value))))
 :qid |stdinbpl.3979:24|
 :skolemid |285|
 :pattern ( (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@4) o_9@@77 Ref__Integer_value))
))) (=> (and (and (and (and (forall ((o_9@@78 T@Ref) (f_5@@54 T@Field_40255_53) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| Mask@1) o_9@@78 f_5@@54) (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| QPMask@4) o_9@@78 f_5@@54)))
 :qid |stdinbpl.3985:31|
 :skolemid |286|
 :pattern ( (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| QPMask@4) o_9@@78 f_5@@54))
)) (forall ((o_9@@79 T@Ref) (f_5@@55 T@Field_40268_40269) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| Mask@1) o_9@@79 f_5@@55) (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| QPMask@4) o_9@@79 f_5@@55)))
 :qid |stdinbpl.3985:31|
 :skolemid |286|
 :pattern ( (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| QPMask@4) o_9@@79 f_5@@55))
))) (forall ((o_9@@80 T@Ref) (f_5@@56 T@Field_46341_3805) ) (!  (=> (not (= f_5@@56 Ref__Integer_value)) (= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| Mask@1) o_9@@80 f_5@@56) (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@4) o_9@@80 f_5@@56)))
 :qid |stdinbpl.3985:31|
 :skolemid |286|
 :pattern ( (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@4) o_9@@80 f_5@@56))
))) (forall ((o_9@@81 T@Ref) (f_5@@57 T@Field_28419_113994) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| Mask@1) o_9@@81 f_5@@57) (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| QPMask@4) o_9@@81 f_5@@57)))
 :qid |stdinbpl.3985:31|
 :skolemid |286|
 :pattern ( (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| QPMask@4) o_9@@81 f_5@@57))
))) (forall ((o_9@@82 T@Ref) (f_5@@58 T@Field_28419_114127) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| Mask@1) o_9@@82 f_5@@58) (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| QPMask@4) o_9@@82 f_5@@58)))
 :qid |stdinbpl.3985:31|
 :skolemid |286|
 :pattern ( (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| QPMask@4) o_9@@82 f_5@@58))
))) (and (and (=> (= (ControlFlow 0 107) 103) anon128_Else_correct) (=> (= (ControlFlow 0 107) 54) anon129_Then_correct)) (=> (= (ControlFlow 0 107) 56) anon129_Else_correct)))))))))))))
(let ((anon65_correct  (=> (= Mask@0 (PolymorphicMapType_40216 (store (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@3) (|Seq#Index_28458| a_2 0) Ref__Integer_value (- (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@3) (|Seq#Index_28458| a_2 0) Ref__Integer_value) perm@0)) (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| QPMask@3) (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| QPMask@3) (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| QPMask@3) (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| QPMask@3))) (=> (and (= Mask@1 Mask@0) (= (ControlFlow 0 112) 107)) anon66_correct))))
(let ((anon127_Else_correct  (=> (and (= perm@0 NoPerm) (= (ControlFlow 0 115) 112)) anon65_correct)))
(let ((anon127_Then_correct  (=> (not (= perm@0 NoPerm)) (and (=> (= (ControlFlow 0 113) (- 0 114)) (<= perm@0 (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@3) (|Seq#Index_28458| a_2 0) Ref__Integer_value))) (=> (<= perm@0 (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@3) (|Seq#Index_28458| a_2 0) Ref__Integer_value)) (=> (= (ControlFlow 0 113) 112) anon65_correct))))))
(let ((anon126_Then_correct  (=> (and (< 0 len_3) (= perm@0 (/ (to_real 1) (to_real 2)))) (and (=> (= (ControlFlow 0 116) (- 0 117)) (>= perm@0 NoPerm)) (=> (>= perm@0 NoPerm) (and (=> (= (ControlFlow 0 116) 113) anon127_Then_correct) (=> (= (ControlFlow 0 116) 115) anon127_Else_correct)))))))
(let ((anon126_Else_correct  (=> (<= len_3 0) (=> (and (= Mask@1 QPMask@3) (= (ControlFlow 0 111) 107)) anon66_correct))))
(let ((anon124_Else_correct  (=> (forall ((j_7_1_1 Int) (k_7_1_1 Int) ) (!  (=> (and (<= 0 j_7_1_1) (and (< j_7_1_1 len_3) (and (<= 0 k_7_1_1) (and (< k_7_1_1 len_3) (not (= j_7_1_1 k_7_1_1)))))) (not (= (|Seq#Index_28458| a_2 j_7_1_1) (|Seq#Index_28458| a_2 k_7_1_1))))
 :qid |stdinbpl.3886:22|
 :skolemid |272|
 :pattern ( (|Seq#Index_28458| a_2 j_7_1_1) (|Seq#Index_28458| a_2 k_7_1_1))
)) (and (=> (= (ControlFlow 0 118) (- 0 121)) (forall ((i_27_2 Int) ) (!  (=> (and (and (<= 0 i_27_2) (< i_27_2 len_3)) (dummyFunction_4112 (select (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| Heap@@41) (|Seq#Index_28458| a_2 i_27_2) Ref__Integer_value))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3894:19|
 :skolemid |273|
 :pattern ( (|Seq#Index_28458| a_2 i_27_2))
 :pattern ( (|Seq#Index_28458| a_2 i_27_2))
))) (=> (forall ((i_27_2@@0 Int) ) (!  (=> (and (and (<= 0 i_27_2@@0) (< i_27_2@@0 len_3)) (dummyFunction_4112 (select (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| Heap@@41) (|Seq#Index_28458| a_2 i_27_2@@0) Ref__Integer_value))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3894:19|
 :skolemid |273|
 :pattern ( (|Seq#Index_28458| a_2 i_27_2@@0))
 :pattern ( (|Seq#Index_28458| a_2 i_27_2@@0))
)) (and (=> (= (ControlFlow 0 118) (- 0 120)) (forall ((i_27_2@@1 Int) (i_27_3 Int) ) (!  (=> (and (and (and (and (not (= i_27_2@@1 i_27_3)) (and (<= 0 i_27_2@@1) (< i_27_2@@1 len_3))) (and (<= 0 i_27_3) (< i_27_3 len_3))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_28458| a_2 i_27_2@@1) (|Seq#Index_28458| a_2 i_27_3))))
 :qid |stdinbpl.3901:19|
 :skolemid |274|
 :pattern ( (neverTriggered28 i_27_2@@1) (neverTriggered28 i_27_3))
))) (=> (forall ((i_27_2@@2 Int) (i_27_3@@0 Int) ) (!  (=> (and (and (and (and (not (= i_27_2@@2 i_27_3@@0)) (and (<= 0 i_27_2@@2) (< i_27_2@@2 len_3))) (and (<= 0 i_27_3@@0) (< i_27_3@@0 len_3))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_28458| a_2 i_27_2@@2) (|Seq#Index_28458| a_2 i_27_3@@0))))
 :qid |stdinbpl.3901:19|
 :skolemid |274|
 :pattern ( (neverTriggered28 i_27_2@@2) (neverTriggered28 i_27_3@@0))
)) (and (=> (= (ControlFlow 0 118) (- 0 119)) (forall ((i_27_2@@3 Int) ) (!  (=> (and (<= 0 i_27_2@@3) (< i_27_2@@3 len_3)) (>= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@2) (|Seq#Index_28458| a_2 i_27_2@@3) Ref__Integer_value) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.3908:19|
 :skolemid |275|
 :pattern ( (|Seq#Index_28458| a_2 i_27_2@@3))
 :pattern ( (|Seq#Index_28458| a_2 i_27_2@@3))
))) (=> (forall ((i_27_2@@4 Int) ) (!  (=> (and (<= 0 i_27_2@@4) (< i_27_2@@4 len_3)) (>= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@2) (|Seq#Index_28458| a_2 i_27_2@@4) Ref__Integer_value) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.3908:19|
 :skolemid |275|
 :pattern ( (|Seq#Index_28458| a_2 i_27_2@@4))
 :pattern ( (|Seq#Index_28458| a_2 i_27_2@@4))
)) (=> (forall ((i_27_2@@5 Int) ) (!  (=> (and (and (<= 0 i_27_2@@5) (< i_27_2@@5 len_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange28 (|Seq#Index_28458| a_2 i_27_2@@5)) (= (invRecv28 (|Seq#Index_28458| a_2 i_27_2@@5)) i_27_2@@5)))
 :qid |stdinbpl.3914:24|
 :skolemid |276|
 :pattern ( (|Seq#Index_28458| a_2 i_27_2@@5))
 :pattern ( (|Seq#Index_28458| a_2 i_27_2@@5))
)) (=> (and (forall ((o_9@@83 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv28 o_9@@83)) (< (invRecv28 o_9@@83) len_3)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange28 o_9@@83))) (= (|Seq#Index_28458| a_2 (invRecv28 o_9@@83)) o_9@@83))
 :qid |stdinbpl.3918:24|
 :skolemid |277|
 :pattern ( (invRecv28 o_9@@83))
)) (forall ((o_9@@84 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv28 o_9@@84)) (< (invRecv28 o_9@@84) len_3)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange28 o_9@@84))) (and (= (|Seq#Index_28458| a_2 (invRecv28 o_9@@84)) o_9@@84) (= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@3) o_9@@84 Ref__Integer_value) (- (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@2) o_9@@84 Ref__Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (<= 0 (invRecv28 o_9@@84)) (< (invRecv28 o_9@@84) len_3)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange28 o_9@@84)))) (= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@3) o_9@@84 Ref__Integer_value) (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@2) o_9@@84 Ref__Integer_value))))
 :qid |stdinbpl.3924:24|
 :skolemid |278|
 :pattern ( (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@3) o_9@@84 Ref__Integer_value))
))) (=> (and (and (and (and (forall ((o_9@@85 T@Ref) (f_5@@59 T@Field_40255_53) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| QPMask@2) o_9@@85 f_5@@59) (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| QPMask@3) o_9@@85 f_5@@59)))
 :qid |stdinbpl.3930:31|
 :skolemid |279|
 :pattern ( (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| QPMask@3) o_9@@85 f_5@@59))
)) (forall ((o_9@@86 T@Ref) (f_5@@60 T@Field_40268_40269) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| QPMask@2) o_9@@86 f_5@@60) (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| QPMask@3) o_9@@86 f_5@@60)))
 :qid |stdinbpl.3930:31|
 :skolemid |279|
 :pattern ( (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| QPMask@3) o_9@@86 f_5@@60))
))) (forall ((o_9@@87 T@Ref) (f_5@@61 T@Field_46341_3805) ) (!  (=> (not (= f_5@@61 Ref__Integer_value)) (= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@2) o_9@@87 f_5@@61) (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@3) o_9@@87 f_5@@61)))
 :qid |stdinbpl.3930:31|
 :skolemid |279|
 :pattern ( (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@3) o_9@@87 f_5@@61))
))) (forall ((o_9@@88 T@Ref) (f_5@@62 T@Field_28419_113994) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| QPMask@2) o_9@@88 f_5@@62) (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| QPMask@3) o_9@@88 f_5@@62)))
 :qid |stdinbpl.3930:31|
 :skolemid |279|
 :pattern ( (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| QPMask@3) o_9@@88 f_5@@62))
))) (forall ((o_9@@89 T@Ref) (f_5@@63 T@Field_28419_114127) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| QPMask@2) o_9@@89 f_5@@63) (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| QPMask@3) o_9@@89 f_5@@63)))
 :qid |stdinbpl.3930:31|
 :skolemid |279|
 :pattern ( (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| QPMask@3) o_9@@89 f_5@@63))
))) (and (=> (= (ControlFlow 0 118) 116) anon126_Then_correct) (=> (= (ControlFlow 0 118) 111) anon126_Else_correct))))))))))))))
(let ((anon61_correct true))
(let ((anon125_Else_correct  (=> (and (not (and (<= 0 j_6_2) (and (< j_6_2 len_3) (and (<= 0 k_6_2) (and (< k_6_2 len_3) (not (= j_6_2 k_6_2))))))) (= (ControlFlow 0 52) 49)) anon61_correct)))
(let ((anon125_Then_correct  (=> (and (<= 0 j_6_2) (and (< j_6_2 len_3) (and (<= 0 k_6_2) (and (< k_6_2 len_3) (not (= j_6_2 k_6_2)))))) (and (=> (= (ControlFlow 0 50) (- 0 51)) (not (= (|Seq#Index_28458| a_2 j_6_2) (|Seq#Index_28458| a_2 k_6_2)))) (=> (not (= (|Seq#Index_28458| a_2 j_6_2) (|Seq#Index_28458| a_2 k_6_2))) (=> (= (ControlFlow 0 50) 49) anon61_correct))))))
(let ((anon111_Else_correct  (and (=> (= (ControlFlow 0 122) (- 0 127)) (not (= diz null))) (=> (not (= diz null)) (and (=> (= (ControlFlow 0 122) (- 0 126)) (>= current_thread_id 0)) (=> (>= current_thread_id 0) (and (=> (= (ControlFlow 0 122) (- 0 125)) (= (|Seq#Length_28458| a_2) len_3)) (=> (= (|Seq#Length_28458| a_2) len_3) (and (=> (= (ControlFlow 0 122) (- 0 124)) (= (|Seq#Length_28458| b_24) len_3)) (=> (= (|Seq#Length_28458| b_24) len_3) (and (=> (= (ControlFlow 0 122) (- 0 123)) (= (|Seq#Length_28458| c) len_3)) (=> (= (|Seq#Length_28458| c) len_3) (and (and (=> (= (ControlFlow 0 122) 118) anon124_Else_correct) (=> (= (ControlFlow 0 122) 50) anon125_Then_correct)) (=> (= (ControlFlow 0 122) 52) anon125_Else_correct))))))))))))))
(let ((anon109_Else_correct  (=> (and (forall ((tid_3_1 Int) ) (!  (=> (and (<= 0 tid_3_1) (< tid_3_1 len_3)) (= (select (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| Heap@@41) (|Seq#Index_28458| b_24 tid_3_1) Ref__Integer_value) tid_3_1))
 :qid |stdinbpl.3638:20|
 :skolemid |249|
 :pattern ( (|Seq#Index_28458| b_24 tid_3_1))
)) (state Heap@@41 QPMask@2)) (and (=> (= (ControlFlow 0 172) 171) anon111_Then_correct) (=> (= (ControlFlow 0 172) 122) anon111_Else_correct)))))
(let ((anon31_correct true))
(let ((anon110_Else_correct  (=> (and (not (and (<= 0 tid_11) (< tid_11 len_3))) (= (ControlFlow 0 48) 43)) anon31_correct)))
(let ((anon110_Then_correct  (=> (and (<= 0 tid_11) (< tid_11 len_3)) (and (=> (= (ControlFlow 0 44) (- 0 47)) (>= tid_11 0)) (=> (>= tid_11 0) (and (=> (= (ControlFlow 0 44) (- 0 46)) (< tid_11 (|Seq#Length_28458| b_24))) (=> (< tid_11 (|Seq#Length_28458| b_24)) (and (=> (= (ControlFlow 0 44) (- 0 45)) (HasDirectPerm_28419_3805 QPMask@2 (|Seq#Index_28458| b_24 tid_11) Ref__Integer_value)) (=> (HasDirectPerm_28419_3805 QPMask@2 (|Seq#Index_28458| b_24 tid_11) Ref__Integer_value) (=> (= (ControlFlow 0 44) 43) anon31_correct))))))))))
(let ((anon107_Else_correct  (=> (and (forall ((tid_1 Int) ) (!  (=> (and (<= 0 tid_1) (< tid_1 len_3)) (= (select (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| Heap@@41) (|Seq#Index_28458| a_2 tid_1) Ref__Integer_value) 0))
 :qid |stdinbpl.3620:20|
 :skolemid |248|
 :pattern ( (|Seq#Index_28458| a_2 tid_1))
)) (state Heap@@41 QPMask@2)) (and (and (=> (= (ControlFlow 0 173) 172) anon109_Else_correct) (=> (= (ControlFlow 0 173) 44) anon110_Then_correct)) (=> (= (ControlFlow 0 173) 48) anon110_Else_correct)))))
(let ((anon27_correct true))
(let ((anon108_Else_correct  (=> (and (not (and (<= 0 tid_10) (< tid_10 len_3))) (= (ControlFlow 0 42) 37)) anon27_correct)))
(let ((anon108_Then_correct  (=> (and (<= 0 tid_10) (< tid_10 len_3)) (and (=> (= (ControlFlow 0 38) (- 0 41)) (>= tid_10 0)) (=> (>= tid_10 0) (and (=> (= (ControlFlow 0 38) (- 0 40)) (< tid_10 (|Seq#Length_28458| a_2))) (=> (< tid_10 (|Seq#Length_28458| a_2)) (and (=> (= (ControlFlow 0 38) (- 0 39)) (HasDirectPerm_28419_3805 QPMask@2 (|Seq#Index_28458| a_2 tid_10) Ref__Integer_value)) (=> (HasDirectPerm_28419_3805 QPMask@2 (|Seq#Index_28458| a_2 tid_10) Ref__Integer_value) (=> (= (ControlFlow 0 38) 37) anon27_correct))))))))))
(let ((anon105_Else_correct  (and (=> (= (ControlFlow 0 174) (- 0 175)) (forall ((i_5_1 Int) (i_5_2 Int) ) (!  (=> (and (and (and (and (not (= i_5_1 i_5_2)) (and (<= 0 i_5_1) (< i_5_1 len_3))) (and (<= 0 i_5_2) (< i_5_2 len_3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_28458| c i_5_1) (|Seq#Index_28458| c i_5_2))))
 :qid |stdinbpl.3574:15|
 :skolemid |242|
))) (=> (forall ((i_5_1@@0 Int) (i_5_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_5_1@@0 i_5_2@@0)) (and (<= 0 i_5_1@@0) (< i_5_1@@0 len_3))) (and (<= 0 i_5_2@@0) (< i_5_2@@0 len_3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_28458| c i_5_1@@0) (|Seq#Index_28458| c i_5_2@@0))))
 :qid |stdinbpl.3574:15|
 :skolemid |242|
)) (=> (and (and (forall ((i_5_1@@1 Int) ) (!  (=> (and (and (<= 0 i_5_1@@1) (< i_5_1@@1 len_3)) (< NoPerm FullPerm)) (and (qpRange21 (|Seq#Index_28458| c i_5_1@@1)) (= (invRecv21 (|Seq#Index_28458| c i_5_1@@1)) i_5_1@@1)))
 :qid |stdinbpl.3580:22|
 :skolemid |243|
 :pattern ( (|Seq#Index_28458| c i_5_1@@1))
 :pattern ( (|Seq#Index_28458| c i_5_1@@1))
)) (forall ((o_9@@90 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv21 o_9@@90)) (< (invRecv21 o_9@@90) len_3)) (< NoPerm FullPerm)) (qpRange21 o_9@@90)) (= (|Seq#Index_28458| c (invRecv21 o_9@@90)) o_9@@90))
 :qid |stdinbpl.3584:22|
 :skolemid |244|
 :pattern ( (invRecv21 o_9@@90))
))) (and (forall ((i_5_1@@2 Int) ) (!  (=> (and (<= 0 i_5_1@@2) (< i_5_1@@2 len_3)) (not (= (|Seq#Index_28458| c i_5_1@@2) null)))
 :qid |stdinbpl.3590:22|
 :skolemid |245|
 :pattern ( (|Seq#Index_28458| c i_5_1@@2))
 :pattern ( (|Seq#Index_28458| c i_5_1@@2))
)) (forall ((o_9@@91 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv21 o_9@@91)) (< (invRecv21 o_9@@91) len_3)) (< NoPerm FullPerm)) (qpRange21 o_9@@91)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_28458| c (invRecv21 o_9@@91)) o_9@@91)) (= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@2) o_9@@91 Ref__Integer_value) (+ (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@1) o_9@@91 Ref__Integer_value) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv21 o_9@@91)) (< (invRecv21 o_9@@91) len_3)) (< NoPerm FullPerm)) (qpRange21 o_9@@91))) (= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@2) o_9@@91 Ref__Integer_value) (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@1) o_9@@91 Ref__Integer_value))))
 :qid |stdinbpl.3596:22|
 :skolemid |246|
 :pattern ( (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@2) o_9@@91 Ref__Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_9@@92 T@Ref) (f_5@@64 T@Field_40255_53) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| QPMask@1) o_9@@92 f_5@@64) (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| QPMask@2) o_9@@92 f_5@@64)))
 :qid |stdinbpl.3600:29|
 :skolemid |247|
 :pattern ( (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| QPMask@1) o_9@@92 f_5@@64))
 :pattern ( (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| QPMask@2) o_9@@92 f_5@@64))
)) (forall ((o_9@@93 T@Ref) (f_5@@65 T@Field_40268_40269) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| QPMask@1) o_9@@93 f_5@@65) (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| QPMask@2) o_9@@93 f_5@@65)))
 :qid |stdinbpl.3600:29|
 :skolemid |247|
 :pattern ( (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| QPMask@1) o_9@@93 f_5@@65))
 :pattern ( (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| QPMask@2) o_9@@93 f_5@@65))
))) (forall ((o_9@@94 T@Ref) (f_5@@66 T@Field_46341_3805) ) (!  (=> (not (= f_5@@66 Ref__Integer_value)) (= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@1) o_9@@94 f_5@@66) (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@2) o_9@@94 f_5@@66)))
 :qid |stdinbpl.3600:29|
 :skolemid |247|
 :pattern ( (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@1) o_9@@94 f_5@@66))
 :pattern ( (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@2) o_9@@94 f_5@@66))
))) (forall ((o_9@@95 T@Ref) (f_5@@67 T@Field_28419_113994) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| QPMask@1) o_9@@95 f_5@@67) (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| QPMask@2) o_9@@95 f_5@@67)))
 :qid |stdinbpl.3600:29|
 :skolemid |247|
 :pattern ( (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| QPMask@1) o_9@@95 f_5@@67))
 :pattern ( (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| QPMask@2) o_9@@95 f_5@@67))
))) (forall ((o_9@@96 T@Ref) (f_5@@68 T@Field_28419_114127) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| QPMask@1) o_9@@96 f_5@@68) (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| QPMask@2) o_9@@96 f_5@@68)))
 :qid |stdinbpl.3600:29|
 :skolemid |247|
 :pattern ( (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| QPMask@1) o_9@@96 f_5@@68))
 :pattern ( (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| QPMask@2) o_9@@96 f_5@@68))
))) (and (state Heap@@41 QPMask@2) (state Heap@@41 QPMask@2))) (and (and (=> (= (ControlFlow 0 174) 173) anon107_Else_correct) (=> (= (ControlFlow 0 174) 38) anon108_Then_correct)) (=> (= (ControlFlow 0 174) 42) anon108_Else_correct))))))))
(let ((anon23_correct true))
(let ((anon106_Else_correct  (=> (and (not (and (<= 0 i_66) (< i_66 len_3))) (= (ControlFlow 0 36) 32)) anon23_correct)))
(let ((anon106_Then_correct  (=> (and (<= 0 i_66) (< i_66 len_3)) (and (=> (= (ControlFlow 0 33) (- 0 35)) (>= i_66 0)) (=> (>= i_66 0) (and (=> (= (ControlFlow 0 33) (- 0 34)) (< i_66 (|Seq#Length_28458| c))) (=> (< i_66 (|Seq#Length_28458| c)) (=> (= (ControlFlow 0 33) 32) anon23_correct))))))))
(let ((anon103_Else_correct  (=> (and (forall ((j_5 Int) (k_5 Int) ) (!  (=> (and (<= 0 j_5) (and (< j_5 len_3) (and (<= 0 k_5) (and (< k_5 len_3) (not (= j_5 k_5)))))) (not (= (|Seq#Index_28458| c j_5) (|Seq#Index_28458| c k_5))))
 :qid |stdinbpl.3556:20|
 :skolemid |241|
 :pattern ( (|Seq#Index_28458| c j_5) (|Seq#Index_28458| c k_5))
)) (state Heap@@41 QPMask@1)) (and (and (=> (= (ControlFlow 0 176) 174) anon105_Else_correct) (=> (= (ControlFlow 0 176) 33) anon106_Then_correct)) (=> (= (ControlFlow 0 176) 36) anon106_Else_correct)))))
(let ((anon19_correct true))
(let ((anon104_Else_correct  (=> (and (not (and (<= 0 j_36) (and (< j_36 len_3) (and (<= 0 k_35) (and (< k_35 len_3) (not (= j_36 k_35))))))) (= (ControlFlow 0 31) 25)) anon19_correct)))
(let ((anon104_Then_correct  (=> (and (<= 0 j_36) (and (< j_36 len_3) (and (<= 0 k_35) (and (< k_35 len_3) (not (= j_36 k_35)))))) (and (=> (= (ControlFlow 0 26) (- 0 30)) (>= j_36 0)) (=> (>= j_36 0) (and (=> (= (ControlFlow 0 26) (- 0 29)) (< j_36 (|Seq#Length_28458| c))) (=> (< j_36 (|Seq#Length_28458| c)) (and (=> (= (ControlFlow 0 26) (- 0 28)) (>= k_35 0)) (=> (>= k_35 0) (and (=> (= (ControlFlow 0 26) (- 0 27)) (< k_35 (|Seq#Length_28458| c))) (=> (< k_35 (|Seq#Length_28458| c)) (=> (= (ControlFlow 0 26) 25) anon19_correct))))))))))))
(let ((anon101_Else_correct  (and (=> (= (ControlFlow 0 177) (- 0 179)) (forall ((i_3_2 Int) (i_3_3 Int) ) (!  (=> (and (and (and (and (not (= i_3_2 i_3_3)) (and (<= 0 i_3_2) (< i_3_2 len_3))) (and (<= 0 i_3_3) (< i_3_3 len_3))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_28458| b_24 i_3_2) (|Seq#Index_28458| b_24 i_3_3))))
 :qid |stdinbpl.3500:15|
 :skolemid |234|
))) (=> (forall ((i_3_2@@0 Int) (i_3_3@@0 Int) ) (!  (=> (and (and (and (and (not (= i_3_2@@0 i_3_3@@0)) (and (<= 0 i_3_2@@0) (< i_3_2@@0 len_3))) (and (<= 0 i_3_3@@0) (< i_3_3@@0 len_3))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_28458| b_24 i_3_2@@0) (|Seq#Index_28458| b_24 i_3_3@@0))))
 :qid |stdinbpl.3500:15|
 :skolemid |234|
)) (=> (and (forall ((i_3_2@@1 Int) ) (!  (=> (and (and (<= 0 i_3_2@@1) (< i_3_2@@1 len_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange20 (|Seq#Index_28458| b_24 i_3_2@@1)) (= (invRecv20 (|Seq#Index_28458| b_24 i_3_2@@1)) i_3_2@@1)))
 :qid |stdinbpl.3506:22|
 :skolemid |235|
 :pattern ( (|Seq#Index_28458| b_24 i_3_2@@1))
 :pattern ( (|Seq#Index_28458| b_24 i_3_2@@1))
)) (forall ((o_9@@97 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv20 o_9@@97)) (< (invRecv20 o_9@@97) len_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange20 o_9@@97)) (= (|Seq#Index_28458| b_24 (invRecv20 o_9@@97)) o_9@@97))
 :qid |stdinbpl.3510:22|
 :skolemid |236|
 :pattern ( (invRecv20 o_9@@97))
))) (and (=> (= (ControlFlow 0 177) (- 0 178)) (forall ((i_3_2@@2 Int) ) (!  (=> (and (<= 0 i_3_2@@2) (< i_3_2@@2 len_3)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3516:15|
 :skolemid |237|
 :pattern ( (|Seq#Index_28458| b_24 i_3_2@@2))
 :pattern ( (|Seq#Index_28458| b_24 i_3_2@@2))
))) (=> (forall ((i_3_2@@3 Int) ) (!  (=> (and (<= 0 i_3_2@@3) (< i_3_2@@3 len_3)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3516:15|
 :skolemid |237|
 :pattern ( (|Seq#Index_28458| b_24 i_3_2@@3))
 :pattern ( (|Seq#Index_28458| b_24 i_3_2@@3))
)) (=> (and (forall ((i_3_2@@4 Int) ) (!  (=> (and (and (<= 0 i_3_2@@4) (< i_3_2@@4 len_3)) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= (|Seq#Index_28458| b_24 i_3_2@@4) null)))
 :qid |stdinbpl.3522:22|
 :skolemid |238|
 :pattern ( (|Seq#Index_28458| b_24 i_3_2@@4))
 :pattern ( (|Seq#Index_28458| b_24 i_3_2@@4))
)) (forall ((o_9@@98 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv20 o_9@@98)) (< (invRecv20 o_9@@98) len_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange20 o_9@@98)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (|Seq#Index_28458| b_24 (invRecv20 o_9@@98)) o_9@@98)) (= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@1) o_9@@98 Ref__Integer_value) (+ (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@0) o_9@@98 Ref__Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (<= 0 (invRecv20 o_9@@98)) (< (invRecv20 o_9@@98) len_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange20 o_9@@98))) (= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@1) o_9@@98 Ref__Integer_value) (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@0) o_9@@98 Ref__Integer_value))))
 :qid |stdinbpl.3528:22|
 :skolemid |239|
 :pattern ( (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@1) o_9@@98 Ref__Integer_value))
))) (=> (and (and (and (and (and (forall ((o_9@@99 T@Ref) (f_5@@69 T@Field_40255_53) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| QPMask@0) o_9@@99 f_5@@69) (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| QPMask@1) o_9@@99 f_5@@69)))
 :qid |stdinbpl.3532:29|
 :skolemid |240|
 :pattern ( (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| QPMask@0) o_9@@99 f_5@@69))
 :pattern ( (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| QPMask@1) o_9@@99 f_5@@69))
)) (forall ((o_9@@100 T@Ref) (f_5@@70 T@Field_40268_40269) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| QPMask@0) o_9@@100 f_5@@70) (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| QPMask@1) o_9@@100 f_5@@70)))
 :qid |stdinbpl.3532:29|
 :skolemid |240|
 :pattern ( (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| QPMask@0) o_9@@100 f_5@@70))
 :pattern ( (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| QPMask@1) o_9@@100 f_5@@70))
))) (forall ((o_9@@101 T@Ref) (f_5@@71 T@Field_46341_3805) ) (!  (=> (not (= f_5@@71 Ref__Integer_value)) (= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@0) o_9@@101 f_5@@71) (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@1) o_9@@101 f_5@@71)))
 :qid |stdinbpl.3532:29|
 :skolemid |240|
 :pattern ( (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@0) o_9@@101 f_5@@71))
 :pattern ( (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@1) o_9@@101 f_5@@71))
))) (forall ((o_9@@102 T@Ref) (f_5@@72 T@Field_28419_113994) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| QPMask@0) o_9@@102 f_5@@72) (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| QPMask@1) o_9@@102 f_5@@72)))
 :qid |stdinbpl.3532:29|
 :skolemid |240|
 :pattern ( (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| QPMask@0) o_9@@102 f_5@@72))
 :pattern ( (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| QPMask@1) o_9@@102 f_5@@72))
))) (forall ((o_9@@103 T@Ref) (f_5@@73 T@Field_28419_114127) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| QPMask@0) o_9@@103 f_5@@73) (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| QPMask@1) o_9@@103 f_5@@73)))
 :qid |stdinbpl.3532:29|
 :skolemid |240|
 :pattern ( (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| QPMask@0) o_9@@103 f_5@@73))
 :pattern ( (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| QPMask@1) o_9@@103 f_5@@73))
))) (and (and (state Heap@@41 QPMask@1) (state Heap@@41 QPMask@1)) (and (= (|Seq#Length_28458| c) len_3) (state Heap@@41 QPMask@1)))) (and (and (=> (= (ControlFlow 0 177) 176) anon103_Else_correct) (=> (= (ControlFlow 0 177) 26) anon104_Then_correct)) (=> (= (ControlFlow 0 177) 31) anon104_Else_correct)))))))))))
(let ((anon15_correct true))
(let ((anon102_Else_correct  (=> (and (not (and (<= 0 i_65) (< i_65 len_3))) (= (ControlFlow 0 24) 20)) anon15_correct)))
(let ((anon102_Then_correct  (=> (and (<= 0 i_65) (< i_65 len_3)) (and (=> (= (ControlFlow 0 21) (- 0 23)) (>= i_65 0)) (=> (>= i_65 0) (and (=> (= (ControlFlow 0 21) (- 0 22)) (< i_65 (|Seq#Length_28458| b_24))) (=> (< i_65 (|Seq#Length_28458| b_24)) (=> (= (ControlFlow 0 21) 20) anon15_correct))))))))
(let ((anon99_Else_correct  (=> (and (forall ((j_3 Int) (k_3 Int) ) (!  (=> (and (<= 0 j_3) (and (< j_3 len_3) (and (<= 0 k_3) (and (< k_3 len_3) (not (= j_3 k_3)))))) (not (= (|Seq#Index_28458| b_24 j_3) (|Seq#Index_28458| b_24 k_3))))
 :qid |stdinbpl.3482:20|
 :skolemid |233|
 :pattern ( (|Seq#Index_28458| b_24 j_3) (|Seq#Index_28458| b_24 k_3))
)) (state Heap@@41 QPMask@0)) (and (and (=> (= (ControlFlow 0 180) 177) anon101_Else_correct) (=> (= (ControlFlow 0 180) 21) anon102_Then_correct)) (=> (= (ControlFlow 0 180) 24) anon102_Else_correct)))))
(let ((anon11_correct true))
(let ((anon100_Else_correct  (=> (and (not (and (<= 0 j_34) (and (< j_34 len_3) (and (<= 0 k_34) (and (< k_34 len_3) (not (= j_34 k_34))))))) (= (ControlFlow 0 19) 13)) anon11_correct)))
(let ((anon100_Then_correct  (=> (and (<= 0 j_34) (and (< j_34 len_3) (and (<= 0 k_34) (and (< k_34 len_3) (not (= j_34 k_34)))))) (and (=> (= (ControlFlow 0 14) (- 0 18)) (>= j_34 0)) (=> (>= j_34 0) (and (=> (= (ControlFlow 0 14) (- 0 17)) (< j_34 (|Seq#Length_28458| b_24))) (=> (< j_34 (|Seq#Length_28458| b_24)) (and (=> (= (ControlFlow 0 14) (- 0 16)) (>= k_34 0)) (=> (>= k_34 0) (and (=> (= (ControlFlow 0 14) (- 0 15)) (< k_34 (|Seq#Length_28458| b_24))) (=> (< k_34 (|Seq#Length_28458| b_24)) (=> (= (ControlFlow 0 14) 13) anon11_correct))))))))))))
(let ((anon97_Else_correct  (and (=> (= (ControlFlow 0 181) (- 0 182)) (forall ((i_1 Int) (i_1_1 Int) ) (!  (=> (and (and (and (and (not (= i_1 i_1_1)) (and (<= 0 i_1) (< i_1 len_3))) (and (<= 0 i_1_1) (< i_1_1 len_3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_28458| a_2 i_1) (|Seq#Index_28458| a_2 i_1_1))))
 :qid |stdinbpl.3432:15|
 :skolemid |227|
))) (=> (forall ((i_1@@0 Int) (i_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_1@@0 i_1_1@@0)) (and (<= 0 i_1@@0) (< i_1@@0 len_3))) (and (<= 0 i_1_1@@0) (< i_1_1@@0 len_3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_28458| a_2 i_1@@0) (|Seq#Index_28458| a_2 i_1_1@@0))))
 :qid |stdinbpl.3432:15|
 :skolemid |227|
)) (=> (and (and (forall ((i_1@@1 Int) ) (!  (=> (and (and (<= 0 i_1@@1) (< i_1@@1 len_3)) (< NoPerm FullPerm)) (and (qpRange19 (|Seq#Index_28458| a_2 i_1@@1)) (= (invRecv19 (|Seq#Index_28458| a_2 i_1@@1)) i_1@@1)))
 :qid |stdinbpl.3438:22|
 :skolemid |228|
 :pattern ( (|Seq#Index_28458| a_2 i_1@@1))
 :pattern ( (|Seq#Index_28458| a_2 i_1@@1))
)) (forall ((o_9@@104 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv19 o_9@@104)) (< (invRecv19 o_9@@104) len_3)) (< NoPerm FullPerm)) (qpRange19 o_9@@104)) (= (|Seq#Index_28458| a_2 (invRecv19 o_9@@104)) o_9@@104))
 :qid |stdinbpl.3442:22|
 :skolemid |229|
 :pattern ( (invRecv19 o_9@@104))
))) (and (forall ((i_1@@2 Int) ) (!  (=> (and (<= 0 i_1@@2) (< i_1@@2 len_3)) (not (= (|Seq#Index_28458| a_2 i_1@@2) null)))
 :qid |stdinbpl.3448:22|
 :skolemid |230|
 :pattern ( (|Seq#Index_28458| a_2 i_1@@2))
 :pattern ( (|Seq#Index_28458| a_2 i_1@@2))
)) (forall ((o_9@@105 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv19 o_9@@105)) (< (invRecv19 o_9@@105) len_3)) (< NoPerm FullPerm)) (qpRange19 o_9@@105)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_28458| a_2 (invRecv19 o_9@@105)) o_9@@105)) (= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@0) o_9@@105 Ref__Integer_value) (+ (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| ZeroMask) o_9@@105 Ref__Integer_value) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv19 o_9@@105)) (< (invRecv19 o_9@@105) len_3)) (< NoPerm FullPerm)) (qpRange19 o_9@@105))) (= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@0) o_9@@105 Ref__Integer_value) (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| ZeroMask) o_9@@105 Ref__Integer_value))))
 :qid |stdinbpl.3454:22|
 :skolemid |231|
 :pattern ( (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@0) o_9@@105 Ref__Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_9@@106 T@Ref) (f_5@@74 T@Field_40255_53) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| ZeroMask) o_9@@106 f_5@@74) (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| QPMask@0) o_9@@106 f_5@@74)))
 :qid |stdinbpl.3458:29|
 :skolemid |232|
 :pattern ( (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| ZeroMask) o_9@@106 f_5@@74))
 :pattern ( (select (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| QPMask@0) o_9@@106 f_5@@74))
)) (forall ((o_9@@107 T@Ref) (f_5@@75 T@Field_40268_40269) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| ZeroMask) o_9@@107 f_5@@75) (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| QPMask@0) o_9@@107 f_5@@75)))
 :qid |stdinbpl.3458:29|
 :skolemid |232|
 :pattern ( (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| ZeroMask) o_9@@107 f_5@@75))
 :pattern ( (select (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| QPMask@0) o_9@@107 f_5@@75))
))) (forall ((o_9@@108 T@Ref) (f_5@@76 T@Field_46341_3805) ) (!  (=> (not (= f_5@@76 Ref__Integer_value)) (= (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| ZeroMask) o_9@@108 f_5@@76) (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@0) o_9@@108 f_5@@76)))
 :qid |stdinbpl.3458:29|
 :skolemid |232|
 :pattern ( (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| ZeroMask) o_9@@108 f_5@@76))
 :pattern ( (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| QPMask@0) o_9@@108 f_5@@76))
))) (forall ((o_9@@109 T@Ref) (f_5@@77 T@Field_28419_113994) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| ZeroMask) o_9@@109 f_5@@77) (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| QPMask@0) o_9@@109 f_5@@77)))
 :qid |stdinbpl.3458:29|
 :skolemid |232|
 :pattern ( (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| ZeroMask) o_9@@109 f_5@@77))
 :pattern ( (select (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| QPMask@0) o_9@@109 f_5@@77))
))) (forall ((o_9@@110 T@Ref) (f_5@@78 T@Field_28419_114127) ) (!  (=> true (= (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| ZeroMask) o_9@@110 f_5@@78) (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| QPMask@0) o_9@@110 f_5@@78)))
 :qid |stdinbpl.3458:29|
 :skolemid |232|
 :pattern ( (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| ZeroMask) o_9@@110 f_5@@78))
 :pattern ( (select (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| QPMask@0) o_9@@110 f_5@@78))
))) (and (and (state Heap@@41 QPMask@0) (state Heap@@41 QPMask@0)) (and (= (|Seq#Length_28458| b_24) len_3) (state Heap@@41 QPMask@0)))) (and (and (=> (= (ControlFlow 0 181) 180) anon99_Else_correct) (=> (= (ControlFlow 0 181) 14) anon100_Then_correct)) (=> (= (ControlFlow 0 181) 19) anon100_Else_correct))))))))
(let ((anon7_correct true))
(let ((anon98_Else_correct  (=> (and (not (and (<= 0 i_64) (< i_64 len_3))) (= (ControlFlow 0 12) 8)) anon7_correct)))
(let ((anon98_Then_correct  (=> (and (<= 0 i_64) (< i_64 len_3)) (and (=> (= (ControlFlow 0 9) (- 0 11)) (>= i_64 0)) (=> (>= i_64 0) (and (=> (= (ControlFlow 0 9) (- 0 10)) (< i_64 (|Seq#Length_28458| a_2))) (=> (< i_64 (|Seq#Length_28458| a_2)) (=> (= (ControlFlow 0 9) 8) anon7_correct))))))))
(let ((anon95_Else_correct  (=> (and (forall ((j_1 Int) (k_1 Int) ) (!  (=> (and (<= 0 j_1) (and (< j_1 len_3) (and (<= 0 k_1) (and (< k_1 len_3) (not (= j_1 k_1)))))) (not (= (|Seq#Index_28458| a_2 j_1) (|Seq#Index_28458| a_2 k_1))))
 :qid |stdinbpl.3414:20|
 :skolemid |226|
 :pattern ( (|Seq#Index_28458| a_2 j_1) (|Seq#Index_28458| a_2 k_1))
)) (state Heap@@41 ZeroMask)) (and (and (=> (= (ControlFlow 0 183) 181) anon97_Else_correct) (=> (= (ControlFlow 0 183) 9) anon98_Then_correct)) (=> (= (ControlFlow 0 183) 12) anon98_Else_correct)))))
(let ((anon3_correct true))
(let ((anon96_Else_correct  (=> (and (not (and (<= 0 j_31) (and (< j_31 len_3) (and (<= 0 k_33) (and (< k_33 len_3) (not (= j_31 k_33))))))) (= (ControlFlow 0 7) 1)) anon3_correct)))
(let ((anon96_Then_correct  (=> (and (<= 0 j_31) (and (< j_31 len_3) (and (<= 0 k_33) (and (< k_33 len_3) (not (= j_31 k_33)))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= j_31 0)) (=> (>= j_31 0) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< j_31 (|Seq#Length_28458| a_2))) (=> (< j_31 (|Seq#Length_28458| a_2)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= k_33 0)) (=> (>= k_33 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< k_33 (|Seq#Length_28458| a_2))) (=> (< k_33 (|Seq#Length_28458| a_2)) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))))))))
(let ((anon0_correct  (=> (and (state Heap@@41 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (=> (and (and (and AssumePermUpperBound (select (|PolymorphicMapType_40195_28163_53#PolymorphicMapType_40195| Heap@@41) diz $allocated)) (and (not (= diz null)) (state Heap@@41 ZeroMask))) (and (and (>= current_thread_id 0) (state Heap@@41 ZeroMask)) (and (= (|Seq#Length_28458| a_2) len_3) (state Heap@@41 ZeroMask)))) (and (and (=> (= (ControlFlow 0 184) 183) anon95_Else_correct) (=> (= (ControlFlow 0 184) 2) anon96_Then_correct)) (=> (= (ControlFlow 0 184) 7) anon96_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 185) 184) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
