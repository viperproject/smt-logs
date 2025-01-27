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
(declare-fun len_3 () Int)
(declare-fun i@@39 () Int)
(declare-fun c () T@Seq_47383)
(declare-fun PostMask@2 () T@PolymorphicMapType_40216)
(declare-fun PostHeap@0 () T@PolymorphicMapType_40195)
(declare-fun a_2 () T@Seq_47383)
(declare-fun b_24 () T@Seq_47383)
(declare-fun PostMask@0 () T@PolymorphicMapType_40216)
(declare-fun perm@4 () Real)
(declare-fun PostMask@1 () T@PolymorphicMapType_40216)
(declare-fun Heap@2 () T@PolymorphicMapType_40195)
(declare-fun Mask@13 () T@PolymorphicMapType_40216)
(declare-fun Mask@12 () T@PolymorphicMapType_40216)
(declare-fun Mask@11 () T@PolymorphicMapType_40216)
(declare-fun perm@7 () Real)
(declare-fun Mask@10 () T@PolymorphicMapType_40216)
(declare-fun Mask@9 () T@PolymorphicMapType_40216)
(declare-fun Mask@8 () T@PolymorphicMapType_40216)
(declare-fun perm@6 () Real)
(declare-fun Heap@1 () T@PolymorphicMapType_40195)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_40195)
(declare-fun __flatten_8@0 () T@Ref)
(declare-fun Heap@0 () T@PolymorphicMapType_40195)
(declare-fun __flatten_10@0 () T@Ref)
(declare-fun __flatten_9@0 () Int)
(declare-fun diz () T@Ref)
(declare-fun current_thread_id () Int)
(declare-fun Heap@@41 () T@PolymorphicMapType_40195)
(declare-fun __flatten_5@0 () T@Ref)
(declare-fun __flatten_7@0 () T@Ref)
(declare-fun __flatten_6@0 () Int)
(declare-fun Mask@6 () T@PolymorphicMapType_40216)
(declare-fun perm@5 () Real)
(declare-fun Mask@7 () T@PolymorphicMapType_40216)
(declare-fun __flatten_5 () T@Ref)
(declare-fun __flatten_7 () T@Ref)
(declare-fun __flatten_8 () T@Ref)
(declare-fun __flatten_10 () T@Ref)
(declare-fun Mask@4 () T@PolymorphicMapType_40216)
(declare-fun perm@3 () Real)
(declare-fun Mask@5 () T@PolymorphicMapType_40216)
(declare-fun Mask@2 () T@PolymorphicMapType_40216)
(declare-fun perm@2 () Real)
(declare-fun Mask@3 () T@PolymorphicMapType_40216)
(declare-fun Mask@0 () T@PolymorphicMapType_40216)
(declare-fun perm@1 () Real)
(declare-fun Mask@1 () T@PolymorphicMapType_40216)
(declare-fun perm@0 () Real)
(set-info :boogie-vc-id Ref__loop_body_72)
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
 (=> (= (ControlFlow 0 0) 109) (let ((anon9_correct true))
(let ((anon29_Else_correct  (=> (and (<= (- len_3 1) i@@39) (= (ControlFlow 0 64) 59)) anon9_correct)))
(let ((anon29_Then_correct  (=> (< i@@39 (- len_3 1)) (and (=> (= (ControlFlow 0 60) (- 0 63)) (>= i@@39 0)) (=> (>= i@@39 0) (and (=> (= (ControlFlow 0 60) (- 0 62)) (< i@@39 (|Seq#Length_28458| c))) (=> (< i@@39 (|Seq#Length_28458| c)) (and (=> (= (ControlFlow 0 60) (- 0 61)) (HasDirectPerm_28419_3805 PostMask@2 (|Seq#Index_28458| c i@@39) Ref__Integer_value)) (=> (HasDirectPerm_28419_3805 PostMask@2 (|Seq#Index_28458| c i@@39) Ref__Integer_value) (=> (and (= (select (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| PostHeap@0) (|Seq#Index_28458| c i@@39) Ref__Integer_value) 2) (= (ControlFlow 0 60) 59)) anon9_correct))))))))))
(let ((anon28_Then_correct  (=> (and (and (and (state PostHeap@0 ZeroMask) (= (|Seq#Length_28458| a_2) len_3)) (and (= (|Seq#Length_28458| b_24) len_3) (= (|Seq#Length_28458| c) len_3))) (and (and (state PostHeap@0 ZeroMask) (<= 0 i@@39)) (and (< i@@39 len_3) (state PostHeap@0 ZeroMask)))) (and (=> (= (ControlFlow 0 65) (- 0 78)) (>= i@@39 0)) (=> (>= i@@39 0) (and (=> (= (ControlFlow 0 65) (- 0 77)) (< i@@39 (|Seq#Length_28458| a_2))) (=> (< i@@39 (|Seq#Length_28458| a_2)) (=> (and (and (not (= (|Seq#Index_28458| a_2 i@@39) null)) (= PostMask@0 (PolymorphicMapType_40216 (store (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| ZeroMask) (|Seq#Index_28458| a_2 i@@39) Ref__Integer_value (+ (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| ZeroMask) (|Seq#Index_28458| a_2 i@@39) Ref__Integer_value) FullPerm)) (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| ZeroMask) (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| ZeroMask) (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| ZeroMask) (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| ZeroMask)))) (and (state PostHeap@0 PostMask@0) (state PostHeap@0 PostMask@0))) (and (=> (= (ControlFlow 0 65) (- 0 76)) (>= i@@39 0)) (=> (>= i@@39 0) (and (=> (= (ControlFlow 0 65) (- 0 75)) (< i@@39 (|Seq#Length_28458| b_24))) (=> (< i@@39 (|Seq#Length_28458| b_24)) (=> (= perm@4 (/ (to_real 1) (to_real 2))) (and (=> (= (ControlFlow 0 65) (- 0 74)) (>= perm@4 NoPerm)) (=> (>= perm@4 NoPerm) (=> (and (and (=> (> perm@4 NoPerm) (not (= (|Seq#Index_28458| b_24 i@@39) null))) (= PostMask@1 (PolymorphicMapType_40216 (store (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| PostMask@0) (|Seq#Index_28458| b_24 i@@39) Ref__Integer_value (+ (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| PostMask@0) (|Seq#Index_28458| b_24 i@@39) Ref__Integer_value) perm@4)) (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| PostMask@0) (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| PostMask@0) (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| PostMask@0) (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| PostMask@0)))) (and (state PostHeap@0 PostMask@1) (state PostHeap@0 PostMask@1))) (and (=> (= (ControlFlow 0 65) (- 0 73)) (>= i@@39 0)) (=> (>= i@@39 0) (and (=> (= (ControlFlow 0 65) (- 0 72)) (< i@@39 (|Seq#Length_28458| c))) (=> (< i@@39 (|Seq#Length_28458| c)) (=> (and (and (not (= (|Seq#Index_28458| c i@@39) null)) (= PostMask@2 (PolymorphicMapType_40216 (store (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| PostMask@1) (|Seq#Index_28458| c i@@39) Ref__Integer_value (+ (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| PostMask@1) (|Seq#Index_28458| c i@@39) Ref__Integer_value) FullPerm)) (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| PostMask@1) (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| PostMask@1) (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| PostMask@1) (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| PostMask@1)))) (and (state PostHeap@0 PostMask@2) (state PostHeap@0 PostMask@2))) (and (=> (= (ControlFlow 0 65) (- 0 71)) (>= i@@39 0)) (=> (>= i@@39 0) (and (=> (= (ControlFlow 0 65) (- 0 70)) (< i@@39 (|Seq#Length_28458| a_2))) (=> (< i@@39 (|Seq#Length_28458| a_2)) (and (=> (= (ControlFlow 0 65) (- 0 69)) (HasDirectPerm_28419_3805 PostMask@2 (|Seq#Index_28458| a_2 i@@39) Ref__Integer_value)) (=> (HasDirectPerm_28419_3805 PostMask@2 (|Seq#Index_28458| a_2 i@@39) Ref__Integer_value) (=> (and (= (select (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| PostHeap@0) (|Seq#Index_28458| a_2 i@@39) Ref__Integer_value) (+ i@@39 1)) (state PostHeap@0 PostMask@2)) (and (=> (= (ControlFlow 0 65) (- 0 68)) (>= i@@39 0)) (=> (>= i@@39 0) (and (=> (= (ControlFlow 0 65) (- 0 67)) (< i@@39 (|Seq#Length_28458| b_24))) (=> (< i@@39 (|Seq#Length_28458| b_24)) (and (=> (= (ControlFlow 0 65) (- 0 66)) (HasDirectPerm_28419_3805 PostMask@2 (|Seq#Index_28458| b_24 i@@39) Ref__Integer_value)) (=> (HasDirectPerm_28419_3805 PostMask@2 (|Seq#Index_28458| b_24 i@@39) Ref__Integer_value) (=> (and (= (select (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| PostHeap@0) (|Seq#Index_28458| b_24 i@@39) Ref__Integer_value) i@@39) (state PostHeap@0 PostMask@2)) (and (=> (= (ControlFlow 0 65) 60) anon29_Then_correct) (=> (= (ControlFlow 0 65) 64) anon29_Else_correct)))))))))))))))))))))))))))))))))))))
(let ((anon24_correct true))
(let ((anon36_Else_correct  (=> (and (<= (- len_3 1) i@@39) (= (ControlFlow 0 4) 1)) anon24_correct)))
(let ((anon36_Then_correct  (=> (< i@@39 (- len_3 1)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (= (select (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| Heap@2) (|Seq#Index_28458| c i@@39) Ref__Integer_value) 2)) (=> (= (select (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| Heap@2) (|Seq#Index_28458| c i@@39) Ref__Integer_value) 2) (=> (= (ControlFlow 0 2) 1) anon24_correct))))))
(let ((anon22_correct  (=> (= Mask@13 (PolymorphicMapType_40216 (store (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| Mask@12) (|Seq#Index_28458| c i@@39) Ref__Integer_value (- (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| Mask@12) (|Seq#Index_28458| c i@@39) Ref__Integer_value) FullPerm)) (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| Mask@12) (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| Mask@12) (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| Mask@12) (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| Mask@12))) (and (=> (= (ControlFlow 0 5) (- 0 7)) (= (select (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| Heap@2) (|Seq#Index_28458| a_2 i@@39) Ref__Integer_value) (+ i@@39 1))) (=> (= (select (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| Heap@2) (|Seq#Index_28458| a_2 i@@39) Ref__Integer_value) (+ i@@39 1)) (and (=> (= (ControlFlow 0 5) (- 0 6)) (= (select (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| Heap@2) (|Seq#Index_28458| b_24 i@@39) Ref__Integer_value) i@@39)) (=> (= (select (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| Heap@2) (|Seq#Index_28458| b_24 i@@39) Ref__Integer_value) i@@39) (and (=> (= (ControlFlow 0 5) 2) anon36_Then_correct) (=> (= (ControlFlow 0 5) 4) anon36_Else_correct)))))))))
(let ((anon35_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 10) 5)) anon22_correct)))
(let ((anon35_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 8) (- 0 9)) (<= FullPerm (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| Mask@12) (|Seq#Index_28458| c i@@39) Ref__Integer_value))) (=> (<= FullPerm (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| Mask@12) (|Seq#Index_28458| c i@@39) Ref__Integer_value)) (=> (= (ControlFlow 0 8) 5) anon22_correct))))))
(let ((anon20_correct  (=> (= Mask@12 (PolymorphicMapType_40216 (store (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| Mask@11) (|Seq#Index_28458| b_24 i@@39) Ref__Integer_value (- (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| Mask@11) (|Seq#Index_28458| b_24 i@@39) Ref__Integer_value) perm@7)) (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| Mask@11) (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| Mask@11) (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| Mask@11) (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| Mask@11))) (and (=> (= (ControlFlow 0 11) 8) anon35_Then_correct) (=> (= (ControlFlow 0 11) 10) anon35_Else_correct)))))
(let ((anon34_Else_correct  (=> (and (= perm@7 NoPerm) (= (ControlFlow 0 14) 11)) anon20_correct)))
(let ((anon34_Then_correct  (=> (not (= perm@7 NoPerm)) (and (=> (= (ControlFlow 0 12) (- 0 13)) (<= perm@7 (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| Mask@11) (|Seq#Index_28458| b_24 i@@39) Ref__Integer_value))) (=> (<= perm@7 (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| Mask@11) (|Seq#Index_28458| b_24 i@@39) Ref__Integer_value)) (=> (= (ControlFlow 0 12) 11) anon20_correct))))))
(let ((anon18_correct  (=> (and (= Mask@11 (PolymorphicMapType_40216 (store (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| Mask@10) (|Seq#Index_28458| a_2 i@@39) Ref__Integer_value (- (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| Mask@10) (|Seq#Index_28458| a_2 i@@39) Ref__Integer_value) FullPerm)) (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| Mask@10) (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| Mask@10) (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| Mask@10) (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| Mask@10))) (= perm@7 (/ (to_real 1) (to_real 2)))) (and (=> (= (ControlFlow 0 15) (- 0 16)) (>= perm@7 NoPerm)) (=> (>= perm@7 NoPerm) (and (=> (= (ControlFlow 0 15) 12) anon34_Then_correct) (=> (= (ControlFlow 0 15) 14) anon34_Else_correct)))))))
(let ((anon33_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 19) 15)) anon18_correct)))
(let ((anon33_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 17) (- 0 18)) (<= FullPerm (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| Mask@10) (|Seq#Index_28458| a_2 i@@39) Ref__Integer_value))) (=> (<= FullPerm (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| Mask@10) (|Seq#Index_28458| a_2 i@@39) Ref__Integer_value)) (=> (= (ControlFlow 0 17) 15) anon18_correct))))))
(let ((anon16_correct  (=> (state Heap@2 Mask@10) (and (=> (= (ControlFlow 0 20) (- 0 25)) (= (|Seq#Length_28458| a_2) len_3)) (=> (= (|Seq#Length_28458| a_2) len_3) (and (=> (= (ControlFlow 0 20) (- 0 24)) (= (|Seq#Length_28458| b_24) len_3)) (=> (= (|Seq#Length_28458| b_24) len_3) (and (=> (= (ControlFlow 0 20) (- 0 23)) (= (|Seq#Length_28458| c) len_3)) (=> (= (|Seq#Length_28458| c) len_3) (and (=> (= (ControlFlow 0 20) (- 0 22)) (<= 0 i@@39)) (=> (<= 0 i@@39) (and (=> (= (ControlFlow 0 20) (- 0 21)) (< i@@39 len_3)) (=> (< i@@39 len_3) (and (=> (= (ControlFlow 0 20) 17) anon33_Then_correct) (=> (= (ControlFlow 0 20) 19) anon33_Else_correct)))))))))))))))
(let ((anon15_correct  (=> (= Mask@9 (PolymorphicMapType_40216 (store (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| Mask@8) (|Seq#Index_28458| a_2 (+ i@@39 1)) Ref__Integer_value (- (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| Mask@8) (|Seq#Index_28458| a_2 (+ i@@39 1)) Ref__Integer_value) perm@6)) (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| Mask@8) (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| Mask@8) (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| Mask@8) (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| Mask@8))) (=> (and (IdenticalOnKnownLocations Heap@1 ExhaleHeap@0 Mask@9) (state ExhaleHeap@0 Mask@9)) (=> (and (and (state ExhaleHeap@0 Mask@9) (= Mask@10 Mask@9)) (and (= Heap@2 ExhaleHeap@0) (= (ControlFlow 0 27) 20))) anon16_correct)))))
(let ((anon32_Else_correct  (=> (and (= perm@6 NoPerm) (= (ControlFlow 0 30) 27)) anon15_correct)))
(let ((anon32_Then_correct  (=> (not (= perm@6 NoPerm)) (and (=> (= (ControlFlow 0 28) (- 0 29)) (<= perm@6 (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| Mask@8) (|Seq#Index_28458| a_2 (+ i@@39 1)) Ref__Integer_value))) (=> (<= perm@6 (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| Mask@8) (|Seq#Index_28458| a_2 (+ i@@39 1)) Ref__Integer_value)) (=> (= (ControlFlow 0 28) 27) anon15_correct))))))
(let ((anon31_Then_correct  (=> (< i@@39 (- len_3 1)) (and (=> (= (ControlFlow 0 31) (- 0 43)) (>= i@@39 0)) (=> (>= i@@39 0) (and (=> (= (ControlFlow 0 31) (- 0 42)) (< i@@39 (|Seq#Length_28458| c))) (=> (< i@@39 (|Seq#Length_28458| c)) (=> (and (= __flatten_8@0 (|Seq#Index_28458| c i@@39)) (state Heap@0 Mask@8)) (and (=> (= (ControlFlow 0 31) (- 0 41)) (>= (+ i@@39 1) 0)) (=> (>= (+ i@@39 1) 0) (and (=> (= (ControlFlow 0 31) (- 0 40)) (< (+ i@@39 1) (|Seq#Length_28458| a_2))) (=> (< (+ i@@39 1) (|Seq#Length_28458| a_2)) (=> (and (= __flatten_10@0 (|Seq#Index_28458| a_2 (+ i@@39 1))) (state Heap@0 Mask@8)) (and (=> (= (ControlFlow 0 31) (- 0 39)) (HasDirectPerm_28419_3805 Mask@8 __flatten_10@0 Ref__Integer_value)) (=> (HasDirectPerm_28419_3805 Mask@8 __flatten_10@0 Ref__Integer_value) (=> (and (= __flatten_9@0 (+ (select (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| Heap@0) __flatten_10@0 Ref__Integer_value) 2)) (state Heap@0 Mask@8)) (and (=> (= (ControlFlow 0 31) (- 0 38)) (= FullPerm (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| Mask@8) __flatten_8@0 Ref__Integer_value))) (=> (= FullPerm (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| Mask@8) __flatten_8@0 Ref__Integer_value)) (=> (and (= Heap@1 (PolymorphicMapType_40195 (|PolymorphicMapType_40195_28163_53#PolymorphicMapType_40195| Heap@0) (|PolymorphicMapType_40195_28166_28167#PolymorphicMapType_40195| Heap@0) (store (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| Heap@0) __flatten_8@0 Ref__Integer_value __flatten_9@0) (|PolymorphicMapType_40195_28419_114171#PolymorphicMapType_40195| Heap@0) (|PolymorphicMapType_40195_40255_113994#PolymorphicMapType_40195| Heap@0))) (state Heap@1 Mask@8)) (and (=> (= (ControlFlow 0 31) (- 0 37)) (not (= diz null))) (=> (not (= diz null)) (and (=> (= (ControlFlow 0 31) (- 0 36)) (>= current_thread_id 0)) (=> (>= current_thread_id 0) (and (=> (= (ControlFlow 0 31) (- 0 35)) (= (|Seq#Length_28458| a_2) len_3)) (=> (= (|Seq#Length_28458| a_2) len_3) (and (=> (= (ControlFlow 0 31) (- 0 34)) (<= (- 0 1) i@@39)) (=> (<= (- 0 1) i@@39) (and (=> (= (ControlFlow 0 31) (- 0 33)) (< i@@39 (- (|Seq#Length_28458| a_2) 1))) (=> (< i@@39 (- (|Seq#Length_28458| a_2) 1)) (=> (= perm@6 (/ (to_real 1) (to_real 2))) (and (=> (= (ControlFlow 0 31) (- 0 32)) (>= perm@6 NoPerm)) (=> (>= perm@6 NoPerm) (and (=> (= (ControlFlow 0 31) 28) anon32_Then_correct) (=> (= (ControlFlow 0 31) 30) anon32_Else_correct))))))))))))))))))))))))))))))))))
(let ((anon31_Else_correct  (=> (and (and (<= (- len_3 1) i@@39) (= Mask@10 Mask@8)) (and (= Heap@2 Heap@0) (= (ControlFlow 0 26) 20))) anon16_correct)))
(let ((anon12_correct  (=> (state Heap@@41 Mask@8) (and (=> (= (ControlFlow 0 44) (- 0 50)) (>= i@@39 0)) (=> (>= i@@39 0) (and (=> (= (ControlFlow 0 44) (- 0 49)) (< i@@39 (|Seq#Length_28458| a_2))) (=> (< i@@39 (|Seq#Length_28458| a_2)) (=> (and (= __flatten_5@0 (|Seq#Index_28458| a_2 i@@39)) (state Heap@@41 Mask@8)) (and (=> (= (ControlFlow 0 44) (- 0 48)) (>= i@@39 0)) (=> (>= i@@39 0) (and (=> (= (ControlFlow 0 44) (- 0 47)) (< i@@39 (|Seq#Length_28458| b_24))) (=> (< i@@39 (|Seq#Length_28458| b_24)) (=> (and (= __flatten_7@0 (|Seq#Index_28458| b_24 i@@39)) (state Heap@@41 Mask@8)) (and (=> (= (ControlFlow 0 44) (- 0 46)) (HasDirectPerm_28419_3805 Mask@8 __flatten_7@0 Ref__Integer_value)) (=> (HasDirectPerm_28419_3805 Mask@8 __flatten_7@0 Ref__Integer_value) (=> (and (= __flatten_6@0 (+ (select (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| Heap@@41) __flatten_7@0 Ref__Integer_value) 1)) (state Heap@@41 Mask@8)) (and (=> (= (ControlFlow 0 44) (- 0 45)) (= FullPerm (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| Mask@8) __flatten_5@0 Ref__Integer_value))) (=> (= FullPerm (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| Mask@8) __flatten_5@0 Ref__Integer_value)) (=> (and (= Heap@0 (PolymorphicMapType_40195 (|PolymorphicMapType_40195_28163_53#PolymorphicMapType_40195| Heap@@41) (|PolymorphicMapType_40195_28166_28167#PolymorphicMapType_40195| Heap@@41) (store (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| Heap@@41) __flatten_5@0 Ref__Integer_value __flatten_6@0) (|PolymorphicMapType_40195_28419_114171#PolymorphicMapType_40195| Heap@@41) (|PolymorphicMapType_40195_40255_113994#PolymorphicMapType_40195| Heap@@41))) (state Heap@0 Mask@8)) (and (=> (= (ControlFlow 0 44) 31) anon31_Then_correct) (=> (= (ControlFlow 0 44) 26) anon31_Else_correct)))))))))))))))))))))
(let ((anon30_Else_correct  (=> (>= 0 i@@39) (=> (and (= Mask@8 Mask@6) (= (ControlFlow 0 57) 44)) anon12_correct))))
(let ((anon30_Then_correct  (=> (> i@@39 0) (and (=> (= (ControlFlow 0 51) (- 0 56)) (not (= diz null))) (=> (not (= diz null)) (and (=> (= (ControlFlow 0 51) (- 0 55)) (>= current_thread_id 0)) (=> (>= current_thread_id 0) (and (=> (= (ControlFlow 0 51) (- 0 54)) (<= 0 i@@39)) (=> (<= 0 i@@39) (and (=> (= (ControlFlow 0 51) (- 0 53)) (< i@@39 (|Seq#Length_28458| a_2))) (=> (< i@@39 (|Seq#Length_28458| a_2)) (=> (= i@@39 (+ (- i@@39 1) 1)) (=> (and (= (|Seq#Length_28458| a_2) len_3) (= perm@5 (/ (to_real 1) (to_real 2)))) (and (=> (= (ControlFlow 0 51) (- 0 52)) (>= perm@5 NoPerm)) (=> (>= perm@5 NoPerm) (=> (=> (> perm@5 NoPerm) (not (= (|Seq#Index_28458| a_2 i@@39) null))) (=> (and (= Mask@7 (PolymorphicMapType_40216 (store (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| Mask@6) (|Seq#Index_28458| a_2 i@@39) Ref__Integer_value (+ (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| Mask@6) (|Seq#Index_28458| a_2 i@@39) Ref__Integer_value) perm@5)) (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| Mask@6) (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| Mask@6) (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| Mask@6) (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| Mask@6))) (state Heap@@41 Mask@7)) (=> (and (and (state Heap@@41 Mask@7) (state Heap@@41 Mask@7)) (and (= Mask@8 Mask@7) (= (ControlFlow 0 51) 44))) anon12_correct))))))))))))))))))
(let ((anon28_Else_correct  (=> (and (and (select (|PolymorphicMapType_40195_28163_53#PolymorphicMapType_40195| Heap@@41) __flatten_5 $allocated) (select (|PolymorphicMapType_40195_28163_53#PolymorphicMapType_40195| Heap@@41) __flatten_7 $allocated)) (and (select (|PolymorphicMapType_40195_28163_53#PolymorphicMapType_40195| Heap@@41) __flatten_8 $allocated) (select (|PolymorphicMapType_40195_28163_53#PolymorphicMapType_40195| Heap@@41) __flatten_10 $allocated))) (and (=> (= (ControlFlow 0 58) 51) anon30_Then_correct) (=> (= (ControlFlow 0 58) 57) anon30_Else_correct)))))
(let ((anon6_correct  (=> (state Heap@@41 Mask@6) (and (=> (= (ControlFlow 0 79) (- 0 82)) (>= i@@39 0)) (=> (>= i@@39 0) (and (=> (= (ControlFlow 0 79) (- 0 81)) (< i@@39 (|Seq#Length_28458| b_24))) (=> (< i@@39 (|Seq#Length_28458| b_24)) (and (=> (= (ControlFlow 0 79) (- 0 80)) (HasDirectPerm_28419_3805 Mask@6 (|Seq#Index_28458| b_24 i@@39) Ref__Integer_value)) (=> (HasDirectPerm_28419_3805 Mask@6 (|Seq#Index_28458| b_24 i@@39) Ref__Integer_value) (=> (and (= (select (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| Heap@@41) (|Seq#Index_28458| b_24 i@@39) Ref__Integer_value) i@@39) (state Heap@@41 Mask@6)) (and (=> (= (ControlFlow 0 79) 65) anon28_Then_correct) (=> (= (ControlFlow 0 79) 58) anon28_Else_correct))))))))))))
(let ((anon27_Else_correct  (=> (and (<= (- len_3 1) i@@39) (= (ControlFlow 0 87) 79)) anon6_correct)))
(let ((anon27_Then_correct  (=> (< i@@39 (- len_3 1)) (and (=> (= (ControlFlow 0 83) (- 0 86)) (>= (+ i@@39 1) 0)) (=> (>= (+ i@@39 1) 0) (and (=> (= (ControlFlow 0 83) (- 0 85)) (< (+ i@@39 1) (|Seq#Length_28458| a_2))) (=> (< (+ i@@39 1) (|Seq#Length_28458| a_2)) (and (=> (= (ControlFlow 0 83) (- 0 84)) (HasDirectPerm_28419_3805 Mask@6 (|Seq#Index_28458| a_2 (+ i@@39 1)) Ref__Integer_value)) (=> (HasDirectPerm_28419_3805 Mask@6 (|Seq#Index_28458| a_2 (+ i@@39 1)) Ref__Integer_value) (=> (and (= (select (|PolymorphicMapType_40195_28419_3805#PolymorphicMapType_40195| Heap@@41) (|Seq#Index_28458| a_2 (+ i@@39 1)) Ref__Integer_value) 0) (= (ControlFlow 0 83) 79)) anon6_correct))))))))))
(let ((anon4_correct  (=> (state Heap@@41 Mask@4) (and (=> (= (ControlFlow 0 88) (- 0 93)) (>= i@@39 0)) (=> (>= i@@39 0) (and (=> (= (ControlFlow 0 88) (- 0 92)) (< i@@39 (|Seq#Length_28458| b_24))) (=> (< i@@39 (|Seq#Length_28458| b_24)) (=> (= perm@3 (/ (to_real 1) (to_real 2))) (and (=> (= (ControlFlow 0 88) (- 0 91)) (>= perm@3 NoPerm)) (=> (>= perm@3 NoPerm) (=> (and (and (=> (> perm@3 NoPerm) (not (= (|Seq#Index_28458| b_24 i@@39) null))) (= Mask@5 (PolymorphicMapType_40216 (store (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| Mask@4) (|Seq#Index_28458| b_24 i@@39) Ref__Integer_value (+ (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| Mask@4) (|Seq#Index_28458| b_24 i@@39) Ref__Integer_value) perm@3)) (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| Mask@4) (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| Mask@4) (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| Mask@4) (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| Mask@4)))) (and (state Heap@@41 Mask@5) (state Heap@@41 Mask@5))) (and (=> (= (ControlFlow 0 88) (- 0 90)) (>= i@@39 0)) (=> (>= i@@39 0) (and (=> (= (ControlFlow 0 88) (- 0 89)) (< i@@39 (|Seq#Length_28458| c))) (=> (< i@@39 (|Seq#Length_28458| c)) (=> (and (and (not (= (|Seq#Index_28458| c i@@39) null)) (= Mask@6 (PolymorphicMapType_40216 (store (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| Mask@5) (|Seq#Index_28458| c i@@39) Ref__Integer_value (+ (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| Mask@5) (|Seq#Index_28458| c i@@39) Ref__Integer_value) FullPerm)) (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| Mask@5) (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| Mask@5) (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| Mask@5) (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| Mask@5)))) (and (state Heap@@41 Mask@6) (state Heap@@41 Mask@6))) (and (=> (= (ControlFlow 0 88) 83) anon27_Then_correct) (=> (= (ControlFlow 0 88) 87) anon27_Else_correct))))))))))))))))))
(let ((anon26_Else_correct  (=> (<= (- len_3 1) i@@39) (=> (and (= Mask@4 Mask@2) (= (ControlFlow 0 98) 88)) anon4_correct))))
(let ((anon26_Then_correct  (=> (< i@@39 (- len_3 1)) (and (=> (= (ControlFlow 0 94) (- 0 97)) (>= (+ i@@39 1) 0)) (=> (>= (+ i@@39 1) 0) (and (=> (= (ControlFlow 0 94) (- 0 96)) (< (+ i@@39 1) (|Seq#Length_28458| a_2))) (=> (< (+ i@@39 1) (|Seq#Length_28458| a_2)) (=> (= perm@2 (/ (to_real 1) (to_real 2))) (and (=> (= (ControlFlow 0 94) (- 0 95)) (>= perm@2 NoPerm)) (=> (>= perm@2 NoPerm) (=> (=> (> perm@2 NoPerm) (not (= (|Seq#Index_28458| a_2 (+ i@@39 1)) null))) (=> (and (and (= Mask@3 (PolymorphicMapType_40216 (store (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| Mask@2) (|Seq#Index_28458| a_2 (+ i@@39 1)) Ref__Integer_value (+ (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| Mask@2) (|Seq#Index_28458| a_2 (+ i@@39 1)) Ref__Integer_value) perm@2)) (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| Mask@2) (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| Mask@2) (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| Mask@2) (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| Mask@2))) (state Heap@@41 Mask@3)) (and (= Mask@4 Mask@3) (= (ControlFlow 0 94) 88))) anon4_correct))))))))))))
(let ((anon2_correct  (=> (state Heap@@41 Mask@2) (and (=> (= (ControlFlow 0 99) 94) anon26_Then_correct) (=> (= (ControlFlow 0 99) 98) anon26_Else_correct)))))
(let ((anon25_Else_correct  (=> (not (= i@@39 0)) (=> (and (= Mask@2 Mask@0) (= (ControlFlow 0 104) 99)) anon2_correct))))
(let ((anon25_Then_correct  (=> (= i@@39 0) (and (=> (= (ControlFlow 0 100) (- 0 103)) (>= i@@39 0)) (=> (>= i@@39 0) (and (=> (= (ControlFlow 0 100) (- 0 102)) (< i@@39 (|Seq#Length_28458| a_2))) (=> (< i@@39 (|Seq#Length_28458| a_2)) (=> (= perm@1 (/ (to_real 1) (to_real 2))) (and (=> (= (ControlFlow 0 100) (- 0 101)) (>= perm@1 NoPerm)) (=> (>= perm@1 NoPerm) (=> (=> (> perm@1 NoPerm) (not (= (|Seq#Index_28458| a_2 i@@39) null))) (=> (and (and (= Mask@1 (PolymorphicMapType_40216 (store (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| Mask@0) (|Seq#Index_28458| a_2 i@@39) Ref__Integer_value (+ (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| Mask@0) (|Seq#Index_28458| a_2 i@@39) Ref__Integer_value) perm@1)) (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| Mask@0) (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| Mask@0) (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| Mask@0) (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| Mask@0))) (state Heap@@41 Mask@1)) (and (= Mask@2 Mask@1) (= (ControlFlow 0 100) 99))) anon2_correct))))))))))))
(let ((anon0_correct  (=> (state Heap@@41 ZeroMask) (=> (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (=> (and (and (select (|PolymorphicMapType_40195_28163_53#PolymorphicMapType_40195| Heap@@41) diz $allocated) (not (= diz null))) (and (state Heap@@41 ZeroMask) (>= current_thread_id 0))) (=> (and (and (and (state Heap@@41 ZeroMask) (= (|Seq#Length_28458| a_2) len_3)) (and (= (|Seq#Length_28458| b_24) len_3) (= (|Seq#Length_28458| c) len_3))) (and (and (state Heap@@41 ZeroMask) (<= 0 i@@39)) (and (< i@@39 len_3) (state Heap@@41 ZeroMask)))) (and (=> (= (ControlFlow 0 105) (- 0 108)) (>= i@@39 0)) (=> (>= i@@39 0) (and (=> (= (ControlFlow 0 105) (- 0 107)) (< i@@39 (|Seq#Length_28458| a_2))) (=> (< i@@39 (|Seq#Length_28458| a_2)) (=> (= perm@0 (/ (to_real 1) (to_real 2))) (and (=> (= (ControlFlow 0 105) (- 0 106)) (>= perm@0 NoPerm)) (=> (>= perm@0 NoPerm) (=> (and (and (=> (> perm@0 NoPerm) (not (= (|Seq#Index_28458| a_2 i@@39) null))) (= Mask@0 (PolymorphicMapType_40216 (store (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| ZeroMask) (|Seq#Index_28458| a_2 i@@39) Ref__Integer_value (+ (select (|PolymorphicMapType_40216_28419_3805#PolymorphicMapType_40216| ZeroMask) (|Seq#Index_28458| a_2 i@@39) Ref__Integer_value) perm@0)) (|PolymorphicMapType_40216_28419_53#PolymorphicMapType_40216| ZeroMask) (|PolymorphicMapType_40216_28419_40269#PolymorphicMapType_40216| ZeroMask) (|PolymorphicMapType_40216_28419_113994#PolymorphicMapType_40216| ZeroMask) (|PolymorphicMapType_40216_28419_118249#PolymorphicMapType_40216| ZeroMask)))) (and (state Heap@@41 Mask@0) (state Heap@@41 Mask@0))) (and (=> (= (ControlFlow 0 105) 100) anon25_Then_correct) (=> (= (ControlFlow 0 105) 104) anon25_Else_correct))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 109) 105) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
