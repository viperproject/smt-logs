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
(declare-sort T@Field_27545_53 0)
(declare-sort T@Field_27558_27559 0)
(declare-sort T@Field_33595_3373 0)
(declare-sort T@Field_19611_74983 0)
(declare-sort T@Field_19611_74850 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_27506 0)) (((PolymorphicMapType_27506 (|PolymorphicMapType_27506_19611_3373#PolymorphicMapType_27506| (Array T@Ref T@Field_33595_3373 Real)) (|PolymorphicMapType_27506_19611_53#PolymorphicMapType_27506| (Array T@Ref T@Field_27545_53 Real)) (|PolymorphicMapType_27506_19611_27559#PolymorphicMapType_27506| (Array T@Ref T@Field_27558_27559 Real)) (|PolymorphicMapType_27506_19611_74850#PolymorphicMapType_27506| (Array T@Ref T@Field_19611_74850 Real)) (|PolymorphicMapType_27506_19611_79105#PolymorphicMapType_27506| (Array T@Ref T@Field_19611_74983 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_28034 0)) (((PolymorphicMapType_28034 (|PolymorphicMapType_28034_27545_53#PolymorphicMapType_28034| (Array T@Ref T@Field_27545_53 Bool)) (|PolymorphicMapType_28034_27545_27559#PolymorphicMapType_28034| (Array T@Ref T@Field_27558_27559 Bool)) (|PolymorphicMapType_28034_27545_3373#PolymorphicMapType_28034| (Array T@Ref T@Field_33595_3373 Bool)) (|PolymorphicMapType_28034_27545_74850#PolymorphicMapType_28034| (Array T@Ref T@Field_19611_74850 Bool)) (|PolymorphicMapType_28034_27545_76161#PolymorphicMapType_28034| (Array T@Ref T@Field_19611_74983 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_27485 0)) (((PolymorphicMapType_27485 (|PolymorphicMapType_27485_19391_53#PolymorphicMapType_27485| (Array T@Ref T@Field_27545_53 Bool)) (|PolymorphicMapType_27485_19394_19395#PolymorphicMapType_27485| (Array T@Ref T@Field_27558_27559 T@Ref)) (|PolymorphicMapType_27485_19611_3373#PolymorphicMapType_27485| (Array T@Ref T@Field_33595_3373 Int)) (|PolymorphicMapType_27485_19611_75027#PolymorphicMapType_27485| (Array T@Ref T@Field_19611_74983 T@PolymorphicMapType_28034)) (|PolymorphicMapType_27485_27545_74850#PolymorphicMapType_27485| (Array T@Ref T@Field_19611_74850 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_27545_53)
(declare-fun Ref__Integer_value () T@Field_33595_3373)
(declare-sort T@Seq_36641 0)
(declare-fun |Seq#Length_19668| (T@Seq_36641) Int)
(declare-fun |Seq#Drop_19668| (T@Seq_36641 Int) T@Seq_36641)
(declare-sort T@Seq_3251 0)
(declare-fun |Seq#Length_3251| (T@Seq_3251) Int)
(declare-fun |Seq#Drop_3251| (T@Seq_3251 Int) T@Seq_3251)
(declare-fun state (T@PolymorphicMapType_27485 T@PolymorphicMapType_27506) Bool)
(declare-fun |Ref__multidim_index_2'| (T@PolymorphicMapType_27485 Int Int Int Int) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |Ref__multidim_index_2#trigger| (T@FrameType Int Int Int Int) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |count_square'| (T@PolymorphicMapType_27485 Int Int Int Int Int Int T@Seq_36641 Int) Int)
(declare-fun |count_square#frame| (T@FrameType Int Int Int Int Int Int T@Seq_36641 Int) Int)
(declare-fun FrameFragment_5064 (Int) T@FrameType)
(declare-fun |count_square#condqp3| (T@PolymorphicMapType_27485 Int Int Int Int Int Int T@Seq_36641 Int) Int)
(declare-fun succHeap (T@PolymorphicMapType_27485 T@PolymorphicMapType_27485) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_27485 T@PolymorphicMapType_27485) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_27506) Bool)
(declare-fun |sum_list'| (T@PolymorphicMapType_27485 Int Int T@Seq_3251) Int)
(declare-fun dummyFunction_4053 (Int) Bool)
(declare-fun |sum_list#triggerStateless| (Int Int T@Seq_3251) Int)
(declare-fun ZeroPMask () T@PolymorphicMapType_28034)
(declare-fun |Seq#Index_19668| (T@Seq_36641 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3251| (T@Seq_3251 Int) Int)
(declare-fun |Seq#Empty_19668| () T@Seq_36641)
(declare-fun |Seq#Empty_3251| () T@Seq_3251)
(declare-fun |Seq#Update_19668| (T@Seq_36641 Int T@Ref) T@Seq_36641)
(declare-fun |Seq#Update_3251| (T@Seq_3251 Int Int) T@Seq_3251)
(declare-fun |Seq#Take_19668| (T@Seq_36641 Int) T@Seq_36641)
(declare-fun |Seq#Take_3251| (T@Seq_3251 Int) T@Seq_3251)
(declare-fun |Seq#Contains_3251| (T@Seq_3251 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3251)
(declare-fun |Seq#Contains_36641| (T@Seq_36641 T@Ref) Bool)
(declare-fun |Seq#Skolem_36641| (T@Seq_36641 T@Ref) Int)
(declare-fun |Seq#Skolem_3251| (T@Seq_3251 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_27485 T@PolymorphicMapType_27485 T@PolymorphicMapType_27506) Bool)
(declare-fun IsPredicateField_19611_74941 (T@Field_19611_74850) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_19611 (T@Field_19611_74850) T@Field_19611_74983)
(declare-fun HasDirectPerm_19611_74914 (T@PolymorphicMapType_27506 T@Ref T@Field_19611_74850) Bool)
(declare-fun IsWandField_19611_76688 (T@Field_19611_74850) Bool)
(declare-fun WandMaskField_19611 (T@Field_19611_74850) T@Field_19611_74983)
(declare-fun |Seq#Singleton_19668| (T@Ref) T@Seq_36641)
(declare-fun |Seq#Singleton_3251| (Int) T@Seq_3251)
(declare-fun count_square (T@PolymorphicMapType_27485 Int Int Int Int Int Int T@Seq_36641 Int) Int)
(declare-fun |count_square#triggerStateless| (Int Int Int Int Int Int T@Seq_36641 Int) Int)
(declare-fun |Seq#Append_36641| (T@Seq_36641 T@Seq_36641) T@Seq_36641)
(declare-fun |Seq#Append_3251| (T@Seq_3251 T@Seq_3251) T@Seq_3251)
(declare-fun sum_array (T@PolymorphicMapType_27485 Int Int Int T@Seq_36641) Int)
(declare-fun |sum_array'| (T@PolymorphicMapType_27485 Int Int Int T@Seq_36641) Int)
(declare-fun |sum_square#condqp2| (T@PolymorphicMapType_27485 Int Int Int Int Int Int T@Seq_36641) Int)
(declare-fun |sk_sum_square#condqp2| (Int Int) Int)
(declare-fun |sk_count_square#condqp3| (Int Int) Int)
(declare-fun dummyHeap () T@PolymorphicMapType_27485)
(declare-fun ZeroMask () T@PolymorphicMapType_27506)
(declare-fun InsidePredicate_27545_27545 (T@Field_19611_74850 T@FrameType T@Field_19611_74850 T@FrameType) Bool)
(declare-fun IsPredicateField_19611_3373 (T@Field_33595_3373) Bool)
(declare-fun IsWandField_19611_3373 (T@Field_33595_3373) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_19611_80234 (T@Field_19611_74983) Bool)
(declare-fun IsWandField_19611_80250 (T@Field_19611_74983) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_19611_27559 (T@Field_27558_27559) Bool)
(declare-fun IsWandField_19611_27559 (T@Field_27558_27559) Bool)
(declare-fun IsPredicateField_19611_53 (T@Field_27545_53) Bool)
(declare-fun IsWandField_19611_53 (T@Field_27545_53) Bool)
(declare-fun |sum_list#frame| (T@FrameType Int Int T@Seq_3251) Int)
(declare-fun HasDirectPerm_19611_80688 (T@PolymorphicMapType_27506 T@Ref T@Field_19611_74983) Bool)
(declare-fun HasDirectPerm_19611_27559 (T@PolymorphicMapType_27506 T@Ref T@Field_27558_27559) Bool)
(declare-fun HasDirectPerm_19611_53 (T@PolymorphicMapType_27506 T@Ref T@Field_27545_53) Bool)
(declare-fun HasDirectPerm_19611_3373 (T@PolymorphicMapType_27506 T@Ref T@Field_33595_3373) Bool)
(declare-fun |Ref__multidim_index_2#triggerStateless| (Int Int Int Int) Int)
(declare-fun |sum_array#triggerStateless| (Int Int Int T@Seq_36641) Int)
(declare-fun |count_list'| (T@PolymorphicMapType_27485 Int Int T@Seq_3251 Int) Int)
(declare-fun |count_list#triggerStateless| (Int Int T@Seq_3251 Int) Int)
(declare-fun |count_array'| (T@PolymorphicMapType_27485 Int Int T@Seq_36641 Int) Int)
(declare-fun |count_array#triggerStateless| (Int Int T@Seq_36641 Int) Int)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun sum_square (T@PolymorphicMapType_27485 Int Int Int Int Int Int T@Seq_36641) Int)
(declare-fun |sum_square'| (T@PolymorphicMapType_27485 Int Int Int Int Int Int T@Seq_36641) Int)
(declare-fun count_list (T@PolymorphicMapType_27485 Int Int T@Seq_3251 Int) Int)
(declare-fun Ref__multidim_index_2 (T@PolymorphicMapType_27485 Int Int Int Int) Int)
(declare-fun count_array (T@PolymorphicMapType_27485 Int Int T@Seq_36641 Int) Int)
(declare-fun sumMask (T@PolymorphicMapType_27506 T@PolymorphicMapType_27506 T@PolymorphicMapType_27506) Bool)
(declare-fun |sum_square#triggerStateless| (Int Int Int Int Int Int T@Seq_36641) Int)
(declare-fun |Ref__multidim_index_2#frame| (T@FrameType Int Int Int Int) Int)
(declare-fun |count_list#frame| (T@FrameType Int Int T@Seq_3251 Int) Int)
(declare-fun |Seq#Equal_36641| (T@Seq_36641 T@Seq_36641) Bool)
(declare-fun |Seq#Equal_3251| (T@Seq_3251 T@Seq_3251) Bool)
(declare-fun sum_list (T@PolymorphicMapType_27485 Int Int T@Seq_3251) Int)
(declare-fun |Seq#ContainsTrigger_19668| (T@Seq_36641 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3251| (T@Seq_3251 Int) Bool)
(declare-fun |count_array#condqp4| (T@PolymorphicMapType_27485 Int Int T@Seq_36641 Int) Int)
(declare-fun |sk_count_array#condqp4| (Int Int) Int)
(declare-fun |sum_array#condqp1| (T@PolymorphicMapType_27485 Int Int Int T@Seq_36641) Int)
(declare-fun |sk_sum_array#condqp1| (Int Int) Int)
(declare-fun |sum_square#frame| (T@FrameType Int Int Int Int Int Int T@Seq_36641) Int)
(declare-fun |Seq#SkolemDiff_36641| (T@Seq_36641 T@Seq_36641) Int)
(declare-fun |Seq#SkolemDiff_3251| (T@Seq_3251 T@Seq_3251) Int)
(declare-fun |sum_array#frame| (T@FrameType Int Int Int T@Seq_36641) Int)
(declare-fun |count_array#frame| (T@FrameType Int Int T@Seq_36641 Int) Int)
(assert (forall ((s T@Seq_36641) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_19668| s)) (= (|Seq#Length_19668| (|Seq#Drop_19668| s n)) (- (|Seq#Length_19668| s) n))) (=> (< (|Seq#Length_19668| s) n) (= (|Seq#Length_19668| (|Seq#Drop_19668| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_19668| (|Seq#Drop_19668| s n)) (|Seq#Length_19668| s))))
 :qid |stdinbpl.342:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_19668| (|Seq#Drop_19668| s n)))
 :pattern ( (|Seq#Length_19668| s) (|Seq#Drop_19668| s n))
)))
(assert (forall ((s@@0 T@Seq_3251) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3251| s@@0)) (= (|Seq#Length_3251| (|Seq#Drop_3251| s@@0 n@@0)) (- (|Seq#Length_3251| s@@0) n@@0))) (=> (< (|Seq#Length_3251| s@@0) n@@0) (= (|Seq#Length_3251| (|Seq#Drop_3251| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3251| (|Seq#Drop_3251| s@@0 n@@0)) (|Seq#Length_3251| s@@0))))
 :qid |stdinbpl.342:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3251| (|Seq#Drop_3251| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3251| s@@0) (|Seq#Drop_3251| s@@0 n@@0))
)))
(assert (forall ((Heap T@PolymorphicMapType_27485) (Mask T@PolymorphicMapType_27506) (N0 Int) (N1 Int) (i0_3 Int) (i1_9 Int) ) (!  (=> (and (state Heap Mask) (or (< AssumeFunctionsAbove 1) (|Ref__multidim_index_2#trigger| EmptyFrame N0 N1 i0_3 i1_9))) (=> (and (and (and (and (and (<= 0 i0_3) (< i0_3 N0)) (<= 0 N0)) (<= 0 i1_9)) (< i1_9 N1)) (<= 0 N1)) (= (|Ref__multidim_index_2'| Heap N0 N1 i0_3 i1_9) (+ (* i0_3 N1) i1_9))))
 :qid |stdinbpl.649:15|
 :skolemid |63|
 :pattern ( (state Heap Mask) (|Ref__multidim_index_2'| Heap N0 N1 i0_3 i1_9))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_27485) (Mask@@0 T@PolymorphicMapType_27506) (i Int) (lo Int) (hi Int) (step Int) (vmin Int) (vmax_1 Int) (ar_1 T@Seq_36641) (v_2 Int) ) (!  (=> (state Heap@@0 Mask@@0) (= (|count_square'| Heap@@0 i lo hi step vmin vmax_1 ar_1 v_2) (|count_square#frame| (FrameFragment_5064 (|count_square#condqp3| Heap@@0 i lo hi step vmin vmax_1 ar_1 v_2)) i lo hi step vmin vmax_1 ar_1 v_2)))
 :qid |stdinbpl.1327:15|
 :skolemid |116|
 :pattern ( (state Heap@@0 Mask@@0) (|count_square'| Heap@@0 i lo hi step vmin vmax_1 ar_1 v_2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_27485) (Mask@@1 T@PolymorphicMapType_27506) (N0@@0 Int) (N1@@0 Int) (i0_3@@0 Int) (i1_9@@0 Int) ) (!  (=> (and (state Heap@@1 Mask@@1) (or (< AssumeFunctionsAbove 1) (|Ref__multidim_index_2#trigger| EmptyFrame N0@@0 N1@@0 i0_3@@0 i1_9@@0))) (=> (and (and (and (and (and (<= 0 i0_3@@0) (< i0_3@@0 N0@@0)) (<= 0 N0@@0)) (<= 0 i1_9@@0)) (< i1_9@@0 N1@@0)) (<= 0 N1@@0)) (< (mod (|Ref__multidim_index_2'| Heap@@1 N0@@0 N1@@0 i0_3@@0 i1_9@@0) N1@@0) N0@@0)))
 :qid |stdinbpl.657:15|
 :skolemid |65|
 :pattern ( (state Heap@@1 Mask@@1) (|Ref__multidim_index_2'| Heap@@1 N0@@0 N1@@0 i0_3@@0 i1_9@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_27485) (Heap1 T@PolymorphicMapType_27485) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_27485) (Mask@@2 T@PolymorphicMapType_27506) ) (!  (=> (state Heap@@2 Mask@@2) (GoodMask Mask@@2))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@2 Mask@@2))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_27485) (Heap1@@0 T@PolymorphicMapType_27485) (Heap2 T@PolymorphicMapType_27485) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_27485) (i@@0 Int) (hi@@0 Int) (ar_1@@0 T@Seq_3251) ) (! (dummyFunction_4053 (|sum_list#triggerStateless| i@@0 hi@@0 ar_1@@0))
 :qid |stdinbpl.725:15|
 :skolemid |67|
 :pattern ( (|sum_list'| Heap@@3 i@@0 hi@@0 ar_1@@0))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_19611_74983) ) (!  (not (select (|PolymorphicMapType_28034_27545_76161#PolymorphicMapType_28034| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_28034_27545_76161#PolymorphicMapType_28034| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_19611_74850) ) (!  (not (select (|PolymorphicMapType_28034_27545_74850#PolymorphicMapType_28034| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_28034_27545_74850#PolymorphicMapType_28034| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_33595_3373) ) (!  (not (select (|PolymorphicMapType_28034_27545_3373#PolymorphicMapType_28034| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_28034_27545_3373#PolymorphicMapType_28034| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_27558_27559) ) (!  (not (select (|PolymorphicMapType_28034_27545_27559#PolymorphicMapType_28034| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_28034_27545_27559#PolymorphicMapType_28034| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_27545_53) ) (!  (not (select (|PolymorphicMapType_28034_27545_53#PolymorphicMapType_28034| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_28034_27545_53#PolymorphicMapType_28034| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((s@@1 T@Seq_36641) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_19668| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_19668| (|Seq#Drop_19668| s@@1 n@@1) j) (|Seq#Index_19668| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.363:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_19668| (|Seq#Drop_19668| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3251) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3251| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3251| (|Seq#Drop_3251| s@@2 n@@2) j@@0) (|Seq#Index_3251| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.363:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3251| (|Seq#Drop_3251| s@@2 n@@2) j@@0))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_27485) (Mask@@3 T@PolymorphicMapType_27506) (N0@@1 Int) (N1@@1 Int) (i0_3@@1 Int) (i1_9@@1 Int) ) (!  (=> (and (state Heap@@4 Mask@@3) (or (< AssumeFunctionsAbove 1) (|Ref__multidim_index_2#trigger| EmptyFrame N0@@1 N1@@1 i0_3@@1 i1_9@@1))) (=> (and (and (and (and (and (<= 0 i0_3@@1) (< i0_3@@1 N0@@1)) (<= 0 N0@@1)) (<= 0 i1_9@@1)) (< i1_9@@1 N1@@1)) (<= 0 N1@@1)) (= (mod (|Ref__multidim_index_2'| Heap@@4 N0@@1 N1@@1 i0_3@@1 i1_9@@1) N1@@1) i1_9@@1)))
 :qid |stdinbpl.653:15|
 :skolemid |64|
 :pattern ( (state Heap@@4 Mask@@3) (|Ref__multidim_index_2'| Heap@@4 N0@@1 N1@@1 i0_3@@1 i1_9@@1))
)))
(assert (= (|Seq#Length_19668| |Seq#Empty_19668|) 0))
(assert (= (|Seq#Length_3251| |Seq#Empty_3251|) 0))
(assert (forall ((s@@3 T@Seq_36641) (i@@1 Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_19668| s@@3))) (and (=> (= i@@1 n@@3) (= (|Seq#Index_19668| (|Seq#Update_19668| s@@3 i@@1 v) n@@3) v)) (=> (not (= i@@1 n@@3)) (= (|Seq#Index_19668| (|Seq#Update_19668| s@@3 i@@1 v) n@@3) (|Seq#Index_19668| s@@3 n@@3)))))
 :qid |stdinbpl.318:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_19668| (|Seq#Update_19668| s@@3 i@@1 v) n@@3))
 :pattern ( (|Seq#Index_19668| s@@3 n@@3) (|Seq#Update_19668| s@@3 i@@1 v))
)))
(assert (forall ((s@@4 T@Seq_3251) (i@@2 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3251| s@@4))) (and (=> (= i@@2 n@@4) (= (|Seq#Index_3251| (|Seq#Update_3251| s@@4 i@@2 v@@0) n@@4) v@@0)) (=> (not (= i@@2 n@@4)) (= (|Seq#Index_3251| (|Seq#Update_3251| s@@4 i@@2 v@@0) n@@4) (|Seq#Index_3251| s@@4 n@@4)))))
 :qid |stdinbpl.318:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3251| (|Seq#Update_3251| s@@4 i@@2 v@@0) n@@4))
 :pattern ( (|Seq#Index_3251| s@@4 n@@4) (|Seq#Update_3251| s@@4 i@@2 v@@0))
)))
(assert (forall ((s@@5 T@Seq_36641) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_19668| s@@5)) (= (|Seq#Length_19668| (|Seq#Take_19668| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_19668| s@@5) n@@5) (= (|Seq#Length_19668| (|Seq#Take_19668| s@@5 n@@5)) (|Seq#Length_19668| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_19668| (|Seq#Take_19668| s@@5 n@@5)) 0)))
 :qid |stdinbpl.329:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_19668| (|Seq#Take_19668| s@@5 n@@5)))
 :pattern ( (|Seq#Take_19668| s@@5 n@@5) (|Seq#Length_19668| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3251) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3251| s@@6)) (= (|Seq#Length_3251| (|Seq#Take_3251| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3251| s@@6) n@@6) (= (|Seq#Length_3251| (|Seq#Take_3251| s@@6 n@@6)) (|Seq#Length_3251| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3251| (|Seq#Take_3251| s@@6 n@@6)) 0)))
 :qid |stdinbpl.329:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3251| (|Seq#Take_3251| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3251| s@@6 n@@6) (|Seq#Length_3251| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3251| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.603:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3251| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_36641) (x T@Ref) ) (!  (=> (|Seq#Contains_36641| s@@7 x) (and (and (<= 0 (|Seq#Skolem_36641| s@@7 x)) (< (|Seq#Skolem_36641| s@@7 x) (|Seq#Length_19668| s@@7))) (= (|Seq#Index_19668| s@@7 (|Seq#Skolem_36641| s@@7 x)) x)))
 :qid |stdinbpl.461:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_36641| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3251) (x@@0 Int) ) (!  (=> (|Seq#Contains_3251| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3251| s@@8 x@@0)) (< (|Seq#Skolem_3251| s@@8 x@@0) (|Seq#Length_3251| s@@8))) (= (|Seq#Index_3251| s@@8 (|Seq#Skolem_3251| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.461:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3251| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_36641) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_19668| s@@9 n@@7) s@@9))
 :qid |stdinbpl.445:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_19668| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3251) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3251| s@@10 n@@8) s@@10))
 :qid |stdinbpl.445:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3251| s@@10 n@@8))
)))
(assert (forall ((i@@3 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@3 j@@1) (- i@@3 j@@1))
 :qid |stdinbpl.298:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@3 j@@1))
)))
(assert (forall ((i@@4 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@4 j@@2) (+ i@@4 j@@2))
 :qid |stdinbpl.296:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@4 j@@2))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_27485) (ExhaleHeap T@PolymorphicMapType_27485) (Mask@@4 T@PolymorphicMapType_27506) (pm_f_37 T@Field_19611_74850) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@4) (=> (and (HasDirectPerm_19611_74914 Mask@@4 null pm_f_37) (IsPredicateField_19611_74941 pm_f_37)) (= (select (|PolymorphicMapType_27485_19611_75027#PolymorphicMapType_27485| Heap@@5) null (PredicateMaskField_19611 pm_f_37)) (select (|PolymorphicMapType_27485_19611_75027#PolymorphicMapType_27485| ExhaleHeap) null (PredicateMaskField_19611 pm_f_37)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@4) (IsPredicateField_19611_74941 pm_f_37) (select (|PolymorphicMapType_27485_19611_75027#PolymorphicMapType_27485| ExhaleHeap) null (PredicateMaskField_19611 pm_f_37)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_27485) (ExhaleHeap@@0 T@PolymorphicMapType_27485) (Mask@@5 T@PolymorphicMapType_27506) (pm_f_37@@0 T@Field_19611_74850) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@5) (=> (and (HasDirectPerm_19611_74914 Mask@@5 null pm_f_37@@0) (IsWandField_19611_76688 pm_f_37@@0)) (= (select (|PolymorphicMapType_27485_19611_75027#PolymorphicMapType_27485| Heap@@6) null (WandMaskField_19611 pm_f_37@@0)) (select (|PolymorphicMapType_27485_19611_75027#PolymorphicMapType_27485| ExhaleHeap@@0) null (WandMaskField_19611 pm_f_37@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@5) (IsWandField_19611_76688 pm_f_37@@0) (select (|PolymorphicMapType_27485_19611_75027#PolymorphicMapType_27485| ExhaleHeap@@0) null (WandMaskField_19611 pm_f_37@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_36641| (|Seq#Singleton_19668| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.586:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_36641| (|Seq#Singleton_19668| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3251| (|Seq#Singleton_3251| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.586:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3251| (|Seq#Singleton_3251| x@@2) y@@0))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_27485) (i@@5 Int) (lo@@0 Int) (hi@@1 Int) (step@@0 Int) (vmin@@0 Int) (vmax_1@@0 Int) (ar_1@@1 T@Seq_36641) (v_2@@0 Int) ) (!  (and (= (count_square Heap@@7 i@@5 lo@@0 hi@@1 step@@0 vmin@@0 vmax_1@@0 ar_1@@1 v_2@@0) (|count_square'| Heap@@7 i@@5 lo@@0 hi@@1 step@@0 vmin@@0 vmax_1@@0 ar_1@@1 v_2@@0)) (dummyFunction_4053 (|count_square#triggerStateless| i@@5 lo@@0 hi@@1 step@@0 vmin@@0 vmax_1@@0 ar_1@@1 v_2@@0)))
 :qid |stdinbpl.1307:15|
 :skolemid |112|
 :pattern ( (count_square Heap@@7 i@@5 lo@@0 hi@@1 step@@0 vmin@@0 vmax_1@@0 ar_1@@1 v_2@@0))
)))
(assert (forall ((s@@11 T@Seq_36641) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_19668| s@@11))) (= (|Seq#Index_19668| (|Seq#Take_19668| s@@11 n@@9) j@@3) (|Seq#Index_19668| s@@11 j@@3)))
 :qid |stdinbpl.337:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_19668| (|Seq#Take_19668| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_19668| s@@11 j@@3) (|Seq#Take_19668| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3251) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3251| s@@12))) (= (|Seq#Index_3251| (|Seq#Take_3251| s@@12 n@@10) j@@4) (|Seq#Index_3251| s@@12 j@@4)))
 :qid |stdinbpl.337:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3251| (|Seq#Take_3251| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3251| s@@12 j@@4) (|Seq#Take_3251| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_36641) (t T@Seq_36641) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_19668| s@@13))) (< n@@11 (|Seq#Length_19668| (|Seq#Append_36641| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_19668| s@@13)) (|Seq#Length_19668| s@@13)) n@@11) (= (|Seq#Take_19668| (|Seq#Append_36641| s@@13 t) n@@11) (|Seq#Append_36641| s@@13 (|Seq#Take_19668| t (|Seq#Sub| n@@11 (|Seq#Length_19668| s@@13)))))))
 :qid |stdinbpl.422:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_19668| (|Seq#Append_36641| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3251) (t@@0 T@Seq_3251) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3251| s@@14))) (< n@@12 (|Seq#Length_3251| (|Seq#Append_3251| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3251| s@@14)) (|Seq#Length_3251| s@@14)) n@@12) (= (|Seq#Take_3251| (|Seq#Append_3251| s@@14 t@@0) n@@12) (|Seq#Append_3251| s@@14 (|Seq#Take_3251| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3251| s@@14)))))))
 :qid |stdinbpl.422:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3251| (|Seq#Append_3251| s@@14 t@@0) n@@12))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_27485) (i@@6 Int) (lo@@1 Int) (hi@@2 Int) (step@@1 Int) (vmin@@1 Int) (vmax_1@@1 Int) (ar_1@@2 T@Seq_36641) (v_2@@1 Int) ) (! (dummyFunction_4053 (|count_square#triggerStateless| i@@6 lo@@1 hi@@2 step@@1 vmin@@1 vmax_1@@1 ar_1@@2 v_2@@1))
 :qid |stdinbpl.1311:15|
 :skolemid |113|
 :pattern ( (|count_square'| Heap@@8 i@@6 lo@@1 hi@@2 step@@1 vmin@@1 vmax_1@@1 ar_1@@2 v_2@@1))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_27485) (Mask@@6 T@PolymorphicMapType_27506) (i@@7 Int) (lo@@2 Int) (hi@@3 Int) (ar_1@@3 T@Seq_36641) ) (!  (=> (and (state Heap@@9 Mask@@6) (< AssumeFunctionsAbove 3)) (=> (and (and (and (<= 0 lo@@2) (and (<= lo@@2 i@@7) (<= i@@7 hi@@3))) (<= hi@@3 (|Seq#Length_19668| ar_1@@3))) (forall ((j@@5 Int) (k Int) ) (!  (=> (and (<= 0 j@@5) (and (< j@@5 hi@@3) (and (<= 0 k) (and (< k hi@@3) (not (= j@@5 k)))))) (not (= (|Seq#Index_19668| ar_1@@3 j@@5) (|Seq#Index_19668| ar_1@@3 k))))
 :qid |stdinbpl.818:126|
 :skolemid |72|
 :pattern ( (|Seq#Index_19668| ar_1@@3 j@@5) (|Seq#Index_19668| ar_1@@3 k))
))) (= (sum_array Heap@@9 i@@7 lo@@2 hi@@3 ar_1@@3) (ite (< i@@7 hi@@3) (+ (select (|PolymorphicMapType_27485_19611_3373#PolymorphicMapType_27485| Heap@@9) (|Seq#Index_19668| ar_1@@3 i@@7) Ref__Integer_value) (|sum_array'| Heap@@9 (+ i@@7 1) lo@@2 hi@@3 ar_1@@3)) 0))))
 :qid |stdinbpl.816:15|
 :skolemid |73|
 :pattern ( (state Heap@@9 Mask@@6) (sum_array Heap@@9 i@@7 lo@@2 hi@@3 ar_1@@3))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_27485) (Heap1Heap T@PolymorphicMapType_27485) (i@@8 Int) (lo@@3 Int) (hi@@4 Int) (step@@2 Int) (vmin@@2 Int) (vmax_1@@2 Int) (ar_1@@4 T@Seq_36641) ) (!  (=> (and (=  (and (<= vmin@@2 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) vmax_1@@2) (and (<= lo@@3 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2) hi@@4))))  (and (<= vmin@@2 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) vmax_1@@2) (and (<= lo@@3 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2) hi@@4))))) (=> (and (<= vmin@@2 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) vmax_1@@2) (and (<= lo@@3 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2) hi@@4)))) (= (select (|PolymorphicMapType_27485_19611_3373#PolymorphicMapType_27485| Heap2Heap) (|Seq#Index_19668| ar_1@@4 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) Ref__Integer_value) (select (|PolymorphicMapType_27485_19611_3373#PolymorphicMapType_27485| Heap1Heap) (|Seq#Index_19668| ar_1@@4 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) Ref__Integer_value)))) (= (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)))
 :qid |stdinbpl.1071:15|
 :skolemid |96|
 :pattern ( (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_27485) (Heap1Heap@@0 T@PolymorphicMapType_27485) (i@@9 Int) (lo@@4 Int) (hi@@5 Int) (step@@3 Int) (vmin@@3 Int) (vmax_1@@3 Int) (ar_1@@5 T@Seq_36641) (v_2@@2 Int) ) (!  (=> (and (=  (and (<= vmin@@3 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) vmax_1@@3) (and (<= lo@@4 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) step@@3)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) step@@3) hi@@5))))  (and (<= vmin@@3 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) vmax_1@@3) (and (<= lo@@4 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) step@@3)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) step@@3) hi@@5))))) (=> (and (<= vmin@@3 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) vmax_1@@3) (and (<= lo@@4 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) step@@3)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) step@@3) hi@@5)))) (= (select (|PolymorphicMapType_27485_19611_3373#PolymorphicMapType_27485| Heap2Heap@@0) (|Seq#Index_19668| ar_1@@5 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2))) Ref__Integer_value) (select (|PolymorphicMapType_27485_19611_3373#PolymorphicMapType_27485| Heap1Heap@@0) (|Seq#Index_19668| ar_1@@5 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2))) Ref__Integer_value)))) (= (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)))
 :qid |stdinbpl.1337:15|
 :skolemid |117|
 :pattern ( (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@10 T@PolymorphicMapType_27485) (ExhaleHeap@@1 T@PolymorphicMapType_27485) (Mask@@7 T@PolymorphicMapType_27506) (o_20 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@1 Mask@@7) (=> (select (|PolymorphicMapType_27485_19391_53#PolymorphicMapType_27485| Heap@@10) o_20 $allocated) (select (|PolymorphicMapType_27485_19391_53#PolymorphicMapType_27485| ExhaleHeap@@1) o_20 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@1 Mask@@7) (select (|PolymorphicMapType_27485_19391_53#PolymorphicMapType_27485| ExhaleHeap@@1) o_20 $allocated))
)))
(assert (forall ((p T@Field_19611_74850) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_27545_27545 p v_1 p w))
 :qid |stdinbpl.240:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_27545_27545 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_36641) (s1 T@Seq_36641) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_19668|)) (not (= s1 |Seq#Empty_19668|))) (<= (|Seq#Length_19668| s0) n@@13)) (< n@@13 (|Seq#Length_19668| (|Seq#Append_36641| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_19668| s0)) (|Seq#Length_19668| s0)) n@@13) (= (|Seq#Index_19668| (|Seq#Append_36641| s0 s1) n@@13) (|Seq#Index_19668| s1 (|Seq#Sub| n@@13 (|Seq#Length_19668| s0))))))
 :qid |stdinbpl.309:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_19668| (|Seq#Append_36641| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3251) (s1@@0 T@Seq_3251) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3251|)) (not (= s1@@0 |Seq#Empty_3251|))) (<= (|Seq#Length_3251| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3251| (|Seq#Append_3251| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3251| s0@@0)) (|Seq#Length_3251| s0@@0)) n@@14) (= (|Seq#Index_3251| (|Seq#Append_3251| s0@@0 s1@@0) n@@14) (|Seq#Index_3251| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3251| s0@@0))))))
 :qid |stdinbpl.309:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3251| (|Seq#Append_3251| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_19611_3373 Ref__Integer_value)))
(assert  (not (IsWandField_19611_3373 Ref__Integer_value)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_27485) (ExhaleHeap@@2 T@PolymorphicMapType_27485) (Mask@@8 T@PolymorphicMapType_27506) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@2 Mask@@8) (succHeap Heap@@11 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@2 Mask@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_27506) (o_2@@4 T@Ref) (f_4@@4 T@Field_19611_74983) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_27506_19611_79105#PolymorphicMapType_27506| Mask@@9) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_19611_80234 f_4@@4))) (not (IsWandField_19611_80250 f_4@@4))) (<= (select (|PolymorphicMapType_27506_19611_79105#PolymorphicMapType_27506| Mask@@9) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_27506_19611_79105#PolymorphicMapType_27506| Mask@@9) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_27506) (o_2@@5 T@Ref) (f_4@@5 T@Field_19611_74850) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_27506_19611_74850#PolymorphicMapType_27506| Mask@@10) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_19611_74941 f_4@@5))) (not (IsWandField_19611_76688 f_4@@5))) (<= (select (|PolymorphicMapType_27506_19611_74850#PolymorphicMapType_27506| Mask@@10) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_27506_19611_74850#PolymorphicMapType_27506| Mask@@10) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_27506) (o_2@@6 T@Ref) (f_4@@6 T@Field_27558_27559) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_27506_19611_27559#PolymorphicMapType_27506| Mask@@11) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_19611_27559 f_4@@6))) (not (IsWandField_19611_27559 f_4@@6))) (<= (select (|PolymorphicMapType_27506_19611_27559#PolymorphicMapType_27506| Mask@@11) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_27506_19611_27559#PolymorphicMapType_27506| Mask@@11) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_27506) (o_2@@7 T@Ref) (f_4@@7 T@Field_27545_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_27506_19611_53#PolymorphicMapType_27506| Mask@@12) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_19611_53 f_4@@7))) (not (IsWandField_19611_53 f_4@@7))) (<= (select (|PolymorphicMapType_27506_19611_53#PolymorphicMapType_27506| Mask@@12) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_27506_19611_53#PolymorphicMapType_27506| Mask@@12) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_27506) (o_2@@8 T@Ref) (f_4@@8 T@Field_33595_3373) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_27506_19611_3373#PolymorphicMapType_27506| Mask@@13) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_19611_3373 f_4@@8))) (not (IsWandField_19611_3373 f_4@@8))) (<= (select (|PolymorphicMapType_27506_19611_3373#PolymorphicMapType_27506| Mask@@13) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_27506_19611_3373#PolymorphicMapType_27506| Mask@@13) o_2@@8 f_4@@8))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_27485) (Mask@@14 T@PolymorphicMapType_27506) (i@@10 Int) (hi@@6 Int) (ar_1@@6 T@Seq_3251) ) (!  (=> (state Heap@@12 Mask@@14) (= (|sum_list'| Heap@@12 i@@10 hi@@6 ar_1@@6) (|sum_list#frame| EmptyFrame i@@10 hi@@6 ar_1@@6)))
 :qid |stdinbpl.738:15|
 :skolemid |69|
 :pattern ( (state Heap@@12 Mask@@14) (|sum_list'| Heap@@12 i@@10 hi@@6 ar_1@@6))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_27506) (o_2@@9 T@Ref) (f_4@@9 T@Field_19611_74983) ) (! (= (HasDirectPerm_19611_80688 Mask@@15 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_27506_19611_79105#PolymorphicMapType_27506| Mask@@15) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19611_80688 Mask@@15 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_27506) (o_2@@10 T@Ref) (f_4@@10 T@Field_19611_74850) ) (! (= (HasDirectPerm_19611_74914 Mask@@16 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_27506_19611_74850#PolymorphicMapType_27506| Mask@@16) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19611_74914 Mask@@16 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_27506) (o_2@@11 T@Ref) (f_4@@11 T@Field_27558_27559) ) (! (= (HasDirectPerm_19611_27559 Mask@@17 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_27506_19611_27559#PolymorphicMapType_27506| Mask@@17) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19611_27559 Mask@@17 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_27506) (o_2@@12 T@Ref) (f_4@@12 T@Field_27545_53) ) (! (= (HasDirectPerm_19611_53 Mask@@18 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_27506_19611_53#PolymorphicMapType_27506| Mask@@18) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19611_53 Mask@@18 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_27506) (o_2@@13 T@Ref) (f_4@@13 T@Field_33595_3373) ) (! (= (HasDirectPerm_19611_3373 Mask@@19 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_27506_19611_3373#PolymorphicMapType_27506| Mask@@19) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19611_3373 Mask@@19 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_27485) (N0@@2 Int) (N1@@2 Int) (i0_3@@2 Int) (i1_9@@2 Int) ) (! (dummyFunction_4053 (|Ref__multidim_index_2#triggerStateless| N0@@2 N1@@2 i0_3@@2 i1_9@@2))
 :qid |stdinbpl.628:15|
 :skolemid |59|
 :pattern ( (|Ref__multidim_index_2'| Heap@@13 N0@@2 N1@@2 i0_3@@2 i1_9@@2))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_27485) (i@@11 Int) (lo@@5 Int) (hi@@7 Int) (ar_1@@7 T@Seq_36641) ) (! (dummyFunction_4053 (|sum_array#triggerStateless| i@@11 lo@@5 hi@@7 ar_1@@7))
 :qid |stdinbpl.810:15|
 :skolemid |71|
 :pattern ( (|sum_array'| Heap@@14 i@@11 lo@@5 hi@@7 ar_1@@7))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_27485) (i@@12 Int) (hi@@8 Int) (ar_1@@8 T@Seq_3251) (v_2@@3 Int) ) (! (dummyFunction_4053 (|count_list#triggerStateless| i@@12 hi@@8 ar_1@@8 v_2@@3))
 :qid |stdinbpl.1577:15|
 :skolemid |134|
 :pattern ( (|count_list'| Heap@@15 i@@12 hi@@8 ar_1@@8 v_2@@3))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_27485) (i@@13 Int) (hi@@9 Int) (ar_1@@9 T@Seq_36641) (v_2@@4 Int) ) (! (dummyFunction_4053 (|count_array#triggerStateless| i@@13 hi@@9 ar_1@@9 v_2@@4))
 :qid |stdinbpl.1662:15|
 :skolemid |138|
 :pattern ( (|count_array'| Heap@@16 i@@13 hi@@9 ar_1@@9 v_2@@4))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_27485) (ExhaleHeap@@3 T@PolymorphicMapType_27485) (Mask@@20 T@PolymorphicMapType_27506) (pm_f_37@@1 T@Field_19611_74850) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@3 Mask@@20) (=> (and (HasDirectPerm_19611_74914 Mask@@20 null pm_f_37@@1) (IsPredicateField_19611_74941 pm_f_37@@1)) (and (and (and (and (forall ((o2_37 T@Ref) (f_29 T@Field_27545_53) ) (!  (=> (select (|PolymorphicMapType_28034_27545_53#PolymorphicMapType_28034| (select (|PolymorphicMapType_27485_19611_75027#PolymorphicMapType_27485| Heap@@17) null (PredicateMaskField_19611 pm_f_37@@1))) o2_37 f_29) (= (select (|PolymorphicMapType_27485_19391_53#PolymorphicMapType_27485| Heap@@17) o2_37 f_29) (select (|PolymorphicMapType_27485_19391_53#PolymorphicMapType_27485| ExhaleHeap@@3) o2_37 f_29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27485_19391_53#PolymorphicMapType_27485| ExhaleHeap@@3) o2_37 f_29))
)) (forall ((o2_37@@0 T@Ref) (f_29@@0 T@Field_27558_27559) ) (!  (=> (select (|PolymorphicMapType_28034_27545_27559#PolymorphicMapType_28034| (select (|PolymorphicMapType_27485_19611_75027#PolymorphicMapType_27485| Heap@@17) null (PredicateMaskField_19611 pm_f_37@@1))) o2_37@@0 f_29@@0) (= (select (|PolymorphicMapType_27485_19394_19395#PolymorphicMapType_27485| Heap@@17) o2_37@@0 f_29@@0) (select (|PolymorphicMapType_27485_19394_19395#PolymorphicMapType_27485| ExhaleHeap@@3) o2_37@@0 f_29@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27485_19394_19395#PolymorphicMapType_27485| ExhaleHeap@@3) o2_37@@0 f_29@@0))
))) (forall ((o2_37@@1 T@Ref) (f_29@@1 T@Field_33595_3373) ) (!  (=> (select (|PolymorphicMapType_28034_27545_3373#PolymorphicMapType_28034| (select (|PolymorphicMapType_27485_19611_75027#PolymorphicMapType_27485| Heap@@17) null (PredicateMaskField_19611 pm_f_37@@1))) o2_37@@1 f_29@@1) (= (select (|PolymorphicMapType_27485_19611_3373#PolymorphicMapType_27485| Heap@@17) o2_37@@1 f_29@@1) (select (|PolymorphicMapType_27485_19611_3373#PolymorphicMapType_27485| ExhaleHeap@@3) o2_37@@1 f_29@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27485_19611_3373#PolymorphicMapType_27485| ExhaleHeap@@3) o2_37@@1 f_29@@1))
))) (forall ((o2_37@@2 T@Ref) (f_29@@2 T@Field_19611_74850) ) (!  (=> (select (|PolymorphicMapType_28034_27545_74850#PolymorphicMapType_28034| (select (|PolymorphicMapType_27485_19611_75027#PolymorphicMapType_27485| Heap@@17) null (PredicateMaskField_19611 pm_f_37@@1))) o2_37@@2 f_29@@2) (= (select (|PolymorphicMapType_27485_27545_74850#PolymorphicMapType_27485| Heap@@17) o2_37@@2 f_29@@2) (select (|PolymorphicMapType_27485_27545_74850#PolymorphicMapType_27485| ExhaleHeap@@3) o2_37@@2 f_29@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27485_27545_74850#PolymorphicMapType_27485| ExhaleHeap@@3) o2_37@@2 f_29@@2))
))) (forall ((o2_37@@3 T@Ref) (f_29@@3 T@Field_19611_74983) ) (!  (=> (select (|PolymorphicMapType_28034_27545_76161#PolymorphicMapType_28034| (select (|PolymorphicMapType_27485_19611_75027#PolymorphicMapType_27485| Heap@@17) null (PredicateMaskField_19611 pm_f_37@@1))) o2_37@@3 f_29@@3) (= (select (|PolymorphicMapType_27485_19611_75027#PolymorphicMapType_27485| Heap@@17) o2_37@@3 f_29@@3) (select (|PolymorphicMapType_27485_19611_75027#PolymorphicMapType_27485| ExhaleHeap@@3) o2_37@@3 f_29@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27485_19611_75027#PolymorphicMapType_27485| ExhaleHeap@@3) o2_37@@3 f_29@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@3 Mask@@20) (IsPredicateField_19611_74941 pm_f_37@@1))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_27485) (ExhaleHeap@@4 T@PolymorphicMapType_27485) (Mask@@21 T@PolymorphicMapType_27506) (pm_f_37@@2 T@Field_19611_74850) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@4 Mask@@21) (=> (and (HasDirectPerm_19611_74914 Mask@@21 null pm_f_37@@2) (IsWandField_19611_76688 pm_f_37@@2)) (and (and (and (and (forall ((o2_37@@4 T@Ref) (f_29@@4 T@Field_27545_53) ) (!  (=> (select (|PolymorphicMapType_28034_27545_53#PolymorphicMapType_28034| (select (|PolymorphicMapType_27485_19611_75027#PolymorphicMapType_27485| Heap@@18) null (WandMaskField_19611 pm_f_37@@2))) o2_37@@4 f_29@@4) (= (select (|PolymorphicMapType_27485_19391_53#PolymorphicMapType_27485| Heap@@18) o2_37@@4 f_29@@4) (select (|PolymorphicMapType_27485_19391_53#PolymorphicMapType_27485| ExhaleHeap@@4) o2_37@@4 f_29@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27485_19391_53#PolymorphicMapType_27485| ExhaleHeap@@4) o2_37@@4 f_29@@4))
)) (forall ((o2_37@@5 T@Ref) (f_29@@5 T@Field_27558_27559) ) (!  (=> (select (|PolymorphicMapType_28034_27545_27559#PolymorphicMapType_28034| (select (|PolymorphicMapType_27485_19611_75027#PolymorphicMapType_27485| Heap@@18) null (WandMaskField_19611 pm_f_37@@2))) o2_37@@5 f_29@@5) (= (select (|PolymorphicMapType_27485_19394_19395#PolymorphicMapType_27485| Heap@@18) o2_37@@5 f_29@@5) (select (|PolymorphicMapType_27485_19394_19395#PolymorphicMapType_27485| ExhaleHeap@@4) o2_37@@5 f_29@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27485_19394_19395#PolymorphicMapType_27485| ExhaleHeap@@4) o2_37@@5 f_29@@5))
))) (forall ((o2_37@@6 T@Ref) (f_29@@6 T@Field_33595_3373) ) (!  (=> (select (|PolymorphicMapType_28034_27545_3373#PolymorphicMapType_28034| (select (|PolymorphicMapType_27485_19611_75027#PolymorphicMapType_27485| Heap@@18) null (WandMaskField_19611 pm_f_37@@2))) o2_37@@6 f_29@@6) (= (select (|PolymorphicMapType_27485_19611_3373#PolymorphicMapType_27485| Heap@@18) o2_37@@6 f_29@@6) (select (|PolymorphicMapType_27485_19611_3373#PolymorphicMapType_27485| ExhaleHeap@@4) o2_37@@6 f_29@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27485_19611_3373#PolymorphicMapType_27485| ExhaleHeap@@4) o2_37@@6 f_29@@6))
))) (forall ((o2_37@@7 T@Ref) (f_29@@7 T@Field_19611_74850) ) (!  (=> (select (|PolymorphicMapType_28034_27545_74850#PolymorphicMapType_28034| (select (|PolymorphicMapType_27485_19611_75027#PolymorphicMapType_27485| Heap@@18) null (WandMaskField_19611 pm_f_37@@2))) o2_37@@7 f_29@@7) (= (select (|PolymorphicMapType_27485_27545_74850#PolymorphicMapType_27485| Heap@@18) o2_37@@7 f_29@@7) (select (|PolymorphicMapType_27485_27545_74850#PolymorphicMapType_27485| ExhaleHeap@@4) o2_37@@7 f_29@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27485_27545_74850#PolymorphicMapType_27485| ExhaleHeap@@4) o2_37@@7 f_29@@7))
))) (forall ((o2_37@@8 T@Ref) (f_29@@8 T@Field_19611_74983) ) (!  (=> (select (|PolymorphicMapType_28034_27545_76161#PolymorphicMapType_28034| (select (|PolymorphicMapType_27485_19611_75027#PolymorphicMapType_27485| Heap@@18) null (WandMaskField_19611 pm_f_37@@2))) o2_37@@8 f_29@@8) (= (select (|PolymorphicMapType_27485_19611_75027#PolymorphicMapType_27485| Heap@@18) o2_37@@8 f_29@@8) (select (|PolymorphicMapType_27485_19611_75027#PolymorphicMapType_27485| ExhaleHeap@@4) o2_37@@8 f_29@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27485_19611_75027#PolymorphicMapType_27485| ExhaleHeap@@4) o2_37@@8 f_29@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@4 Mask@@21) (IsWandField_19611_76688 pm_f_37@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.228:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3251| (|Seq#Range| q@min@@0 q@max@@0) j@@6) (+ q@min@@0 j@@6)))
 :qid |stdinbpl.601:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3251| (|Seq#Range| q@min@@0 q@max@@0) j@@6))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_27485) (ExhaleHeap@@5 T@PolymorphicMapType_27485) (Mask@@22 T@PolymorphicMapType_27506) (o_20@@0 T@Ref) (f_29@@9 T@Field_19611_74983) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@5 Mask@@22) (=> (HasDirectPerm_19611_80688 Mask@@22 o_20@@0 f_29@@9) (= (select (|PolymorphicMapType_27485_19611_75027#PolymorphicMapType_27485| Heap@@19) o_20@@0 f_29@@9) (select (|PolymorphicMapType_27485_19611_75027#PolymorphicMapType_27485| ExhaleHeap@@5) o_20@@0 f_29@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@5 Mask@@22) (select (|PolymorphicMapType_27485_19611_75027#PolymorphicMapType_27485| ExhaleHeap@@5) o_20@@0 f_29@@9))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_27485) (ExhaleHeap@@6 T@PolymorphicMapType_27485) (Mask@@23 T@PolymorphicMapType_27506) (o_20@@1 T@Ref) (f_29@@10 T@Field_19611_74850) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@6 Mask@@23) (=> (HasDirectPerm_19611_74914 Mask@@23 o_20@@1 f_29@@10) (= (select (|PolymorphicMapType_27485_27545_74850#PolymorphicMapType_27485| Heap@@20) o_20@@1 f_29@@10) (select (|PolymorphicMapType_27485_27545_74850#PolymorphicMapType_27485| ExhaleHeap@@6) o_20@@1 f_29@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@6 Mask@@23) (select (|PolymorphicMapType_27485_27545_74850#PolymorphicMapType_27485| ExhaleHeap@@6) o_20@@1 f_29@@10))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_27485) (ExhaleHeap@@7 T@PolymorphicMapType_27485) (Mask@@24 T@PolymorphicMapType_27506) (o_20@@2 T@Ref) (f_29@@11 T@Field_27558_27559) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@7 Mask@@24) (=> (HasDirectPerm_19611_27559 Mask@@24 o_20@@2 f_29@@11) (= (select (|PolymorphicMapType_27485_19394_19395#PolymorphicMapType_27485| Heap@@21) o_20@@2 f_29@@11) (select (|PolymorphicMapType_27485_19394_19395#PolymorphicMapType_27485| ExhaleHeap@@7) o_20@@2 f_29@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@7 Mask@@24) (select (|PolymorphicMapType_27485_19394_19395#PolymorphicMapType_27485| ExhaleHeap@@7) o_20@@2 f_29@@11))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_27485) (ExhaleHeap@@8 T@PolymorphicMapType_27485) (Mask@@25 T@PolymorphicMapType_27506) (o_20@@3 T@Ref) (f_29@@12 T@Field_27545_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@8 Mask@@25) (=> (HasDirectPerm_19611_53 Mask@@25 o_20@@3 f_29@@12) (= (select (|PolymorphicMapType_27485_19391_53#PolymorphicMapType_27485| Heap@@22) o_20@@3 f_29@@12) (select (|PolymorphicMapType_27485_19391_53#PolymorphicMapType_27485| ExhaleHeap@@8) o_20@@3 f_29@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@8 Mask@@25) (select (|PolymorphicMapType_27485_19391_53#PolymorphicMapType_27485| ExhaleHeap@@8) o_20@@3 f_29@@12))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_27485) (ExhaleHeap@@9 T@PolymorphicMapType_27485) (Mask@@26 T@PolymorphicMapType_27506) (o_20@@4 T@Ref) (f_29@@13 T@Field_33595_3373) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@9 Mask@@26) (=> (HasDirectPerm_19611_3373 Mask@@26 o_20@@4 f_29@@13) (= (select (|PolymorphicMapType_27485_19611_3373#PolymorphicMapType_27485| Heap@@23) o_20@@4 f_29@@13) (select (|PolymorphicMapType_27485_19611_3373#PolymorphicMapType_27485| ExhaleHeap@@9) o_20@@4 f_29@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@9 Mask@@26) (select (|PolymorphicMapType_27485_19611_3373#PolymorphicMapType_27485| ExhaleHeap@@9) o_20@@4 f_29@@13))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_27485) (Mask@@27 T@PolymorphicMapType_27506) (i@@14 Int) (lo@@6 Int) (hi@@10 Int) (step@@4 Int) (vmin@@4 Int) (vmax_1@@4 Int) (ar_1@@10 T@Seq_36641) ) (!  (=> (and (state Heap@@24 Mask@@27) (< AssumeFunctionsAbove 4)) (=> (and (and (and (and (<= 0 lo@@6) (and (<= lo@@6 hi@@10) (and (<= hi@@10 step@@4) (> step@@4 0)))) (and (<= 0 vmin@@4) (and (<= vmin@@4 i@@14) (<= i@@14 vmax_1@@4)))) (<= vmax_1@@4 (|Seq#Length_19668| ar_1@@10))) (forall ((j@@7 Int) (k@@0 Int) ) (!  (=> (and (<= 0 j@@7) (and (< j@@7 vmax_1@@4) (and (<= 0 k@@0) (and (< k@@0 vmax_1@@4) (not (= j@@7 k@@0)))))) (not (= (|Seq#Index_19668| ar_1@@10 j@@7) (|Seq#Index_19668| ar_1@@10 k@@0))))
 :qid |stdinbpl.1053:195|
 :skolemid |93|
 :pattern ( (|Seq#Index_19668| ar_1@@10 j@@7) (|Seq#Index_19668| ar_1@@10 k@@0))
))) (= (sum_square Heap@@24 i@@14 lo@@6 hi@@10 step@@4 vmin@@4 vmax_1@@4 ar_1@@10) (ite (< i@@14 vmax_1@@4) (+ (ite  (and (<= lo@@6 (mod i@@14 step@@4)) (< (mod i@@14 step@@4) hi@@10)) (select (|PolymorphicMapType_27485_19611_3373#PolymorphicMapType_27485| Heap@@24) (|Seq#Index_19668| ar_1@@10 i@@14) Ref__Integer_value) 0) (|sum_square'| Heap@@24 (+ i@@14 1) lo@@6 hi@@10 step@@4 vmin@@4 vmax_1@@4 ar_1@@10)) 0))))
 :qid |stdinbpl.1051:15|
 :skolemid |94|
 :pattern ( (state Heap@@24 Mask@@27) (sum_square Heap@@24 i@@14 lo@@6 hi@@10 step@@4 vmin@@4 vmax_1@@4 ar_1@@10))
)))
(assert (forall ((s0@@1 T@Seq_36641) (s1@@1 T@Seq_36641) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_19668|)) (not (= s1@@1 |Seq#Empty_19668|))) (= (|Seq#Length_19668| (|Seq#Append_36641| s0@@1 s1@@1)) (+ (|Seq#Length_19668| s0@@1) (|Seq#Length_19668| s1@@1))))
 :qid |stdinbpl.278:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_19668| (|Seq#Append_36641| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3251) (s1@@2 T@Seq_3251) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3251|)) (not (= s1@@2 |Seq#Empty_3251|))) (= (|Seq#Length_3251| (|Seq#Append_3251| s0@@2 s1@@2)) (+ (|Seq#Length_3251| s0@@2) (|Seq#Length_3251| s1@@2))))
 :qid |stdinbpl.278:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3251| (|Seq#Append_3251| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_19611_74983) ) (! (= (select (|PolymorphicMapType_27506_19611_79105#PolymorphicMapType_27506| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27506_19611_79105#PolymorphicMapType_27506| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_19611_74850) ) (! (= (select (|PolymorphicMapType_27506_19611_74850#PolymorphicMapType_27506| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27506_19611_74850#PolymorphicMapType_27506| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_27558_27559) ) (! (= (select (|PolymorphicMapType_27506_19611_27559#PolymorphicMapType_27506| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27506_19611_27559#PolymorphicMapType_27506| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_27545_53) ) (! (= (select (|PolymorphicMapType_27506_19611_53#PolymorphicMapType_27506| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27506_19611_53#PolymorphicMapType_27506| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_33595_3373) ) (! (= (select (|PolymorphicMapType_27506_19611_3373#PolymorphicMapType_27506| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27506_19611_3373#PolymorphicMapType_27506| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_27485) (Mask@@28 T@PolymorphicMapType_27506) (i@@15 Int) (hi@@11 Int) (ar_1@@11 T@Seq_3251) (v_2@@5 Int) ) (!  (=> (and (state Heap@@25 Mask@@28) (< AssumeFunctionsAbove 6)) (=> (and (and (<= 0 i@@15) (<= i@@15 hi@@11)) (<= hi@@11 (|Seq#Length_3251| ar_1@@11))) (= (count_list Heap@@25 i@@15 hi@@11 ar_1@@11 v_2@@5) (ite (< i@@15 hi@@11) (+ (ite (= (|Seq#Index_3251| ar_1@@11 i@@15) v_2@@5) 1 0) (|count_list'| Heap@@25 (+ i@@15 1) hi@@11 ar_1@@11 v_2@@5)) 0))))
 :qid |stdinbpl.1583:15|
 :skolemid |135|
 :pattern ( (state Heap@@25 Mask@@28) (count_list Heap@@25 i@@15 hi@@11 ar_1@@11 v_2@@5))
)))
(assert (forall ((s@@15 T@Seq_36641) (t@@1 T@Seq_36641) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_19668| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_19668| s@@15)) (|Seq#Length_19668| s@@15)) n@@15) (= (|Seq#Drop_19668| (|Seq#Append_36641| s@@15 t@@1) n@@15) (|Seq#Drop_19668| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_19668| s@@15))))))
 :qid |stdinbpl.435:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_19668| (|Seq#Append_36641| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3251) (t@@2 T@Seq_3251) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3251| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3251| s@@16)) (|Seq#Length_3251| s@@16)) n@@16) (= (|Seq#Drop_3251| (|Seq#Append_3251| s@@16 t@@2) n@@16) (|Seq#Drop_3251| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3251| s@@16))))))
 :qid |stdinbpl.435:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3251| (|Seq#Append_3251| s@@16 t@@2) n@@16))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_27485) (N0@@3 Int) (N1@@3 Int) (i0_3@@3 Int) (i1_9@@3 Int) ) (!  (and (= (Ref__multidim_index_2 Heap@@26 N0@@3 N1@@3 i0_3@@3 i1_9@@3) (|Ref__multidim_index_2'| Heap@@26 N0@@3 N1@@3 i0_3@@3 i1_9@@3)) (dummyFunction_4053 (|Ref__multidim_index_2#triggerStateless| N0@@3 N1@@3 i0_3@@3 i1_9@@3)))
 :qid |stdinbpl.624:15|
 :skolemid |58|
 :pattern ( (Ref__multidim_index_2 Heap@@26 N0@@3 N1@@3 i0_3@@3 i1_9@@3))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_27485) (i@@16 Int) (lo@@7 Int) (hi@@12 Int) (ar_1@@12 T@Seq_36641) ) (!  (and (= (sum_array Heap@@27 i@@16 lo@@7 hi@@12 ar_1@@12) (|sum_array'| Heap@@27 i@@16 lo@@7 hi@@12 ar_1@@12)) (dummyFunction_4053 (|sum_array#triggerStateless| i@@16 lo@@7 hi@@12 ar_1@@12)))
 :qid |stdinbpl.806:15|
 :skolemid |70|
 :pattern ( (sum_array Heap@@27 i@@16 lo@@7 hi@@12 ar_1@@12))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_27485) (i@@17 Int) (hi@@13 Int) (ar_1@@13 T@Seq_3251) (v_2@@6 Int) ) (!  (and (= (count_list Heap@@28 i@@17 hi@@13 ar_1@@13 v_2@@6) (|count_list'| Heap@@28 i@@17 hi@@13 ar_1@@13 v_2@@6)) (dummyFunction_4053 (|count_list#triggerStateless| i@@17 hi@@13 ar_1@@13 v_2@@6)))
 :qid |stdinbpl.1573:15|
 :skolemid |133|
 :pattern ( (count_list Heap@@28 i@@17 hi@@13 ar_1@@13 v_2@@6))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_27485) (i@@18 Int) (hi@@14 Int) (ar_1@@14 T@Seq_36641) (v_2@@7 Int) ) (!  (and (= (count_array Heap@@29 i@@18 hi@@14 ar_1@@14 v_2@@7) (|count_array'| Heap@@29 i@@18 hi@@14 ar_1@@14 v_2@@7)) (dummyFunction_4053 (|count_array#triggerStateless| i@@18 hi@@14 ar_1@@14 v_2@@7)))
 :qid |stdinbpl.1658:15|
 :skolemid |137|
 :pattern ( (count_array Heap@@29 i@@18 hi@@14 ar_1@@14 v_2@@7))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_27506) (SummandMask1 T@PolymorphicMapType_27506) (SummandMask2 T@PolymorphicMapType_27506) (o_2@@19 T@Ref) (f_4@@19 T@Field_19611_74983) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_27506_19611_79105#PolymorphicMapType_27506| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_27506_19611_79105#PolymorphicMapType_27506| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_27506_19611_79105#PolymorphicMapType_27506| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_27506_19611_79105#PolymorphicMapType_27506| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_27506_19611_79105#PolymorphicMapType_27506| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_27506_19611_79105#PolymorphicMapType_27506| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_27506) (SummandMask1@@0 T@PolymorphicMapType_27506) (SummandMask2@@0 T@PolymorphicMapType_27506) (o_2@@20 T@Ref) (f_4@@20 T@Field_19611_74850) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_27506_19611_74850#PolymorphicMapType_27506| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_27506_19611_74850#PolymorphicMapType_27506| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_27506_19611_74850#PolymorphicMapType_27506| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_27506_19611_74850#PolymorphicMapType_27506| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_27506_19611_74850#PolymorphicMapType_27506| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_27506_19611_74850#PolymorphicMapType_27506| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_27506) (SummandMask1@@1 T@PolymorphicMapType_27506) (SummandMask2@@1 T@PolymorphicMapType_27506) (o_2@@21 T@Ref) (f_4@@21 T@Field_27558_27559) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_27506_19611_27559#PolymorphicMapType_27506| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_27506_19611_27559#PolymorphicMapType_27506| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_27506_19611_27559#PolymorphicMapType_27506| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_27506_19611_27559#PolymorphicMapType_27506| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_27506_19611_27559#PolymorphicMapType_27506| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_27506_19611_27559#PolymorphicMapType_27506| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_27506) (SummandMask1@@2 T@PolymorphicMapType_27506) (SummandMask2@@2 T@PolymorphicMapType_27506) (o_2@@22 T@Ref) (f_4@@22 T@Field_27545_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_27506_19611_53#PolymorphicMapType_27506| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_27506_19611_53#PolymorphicMapType_27506| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_27506_19611_53#PolymorphicMapType_27506| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_27506_19611_53#PolymorphicMapType_27506| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_27506_19611_53#PolymorphicMapType_27506| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_27506_19611_53#PolymorphicMapType_27506| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_27506) (SummandMask1@@3 T@PolymorphicMapType_27506) (SummandMask2@@3 T@PolymorphicMapType_27506) (o_2@@23 T@Ref) (f_4@@23 T@Field_33595_3373) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_27506_19611_3373#PolymorphicMapType_27506| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_27506_19611_3373#PolymorphicMapType_27506| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_27506_19611_3373#PolymorphicMapType_27506| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_27506_19611_3373#PolymorphicMapType_27506| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_27506_19611_3373#PolymorphicMapType_27506| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_27506_19611_3373#PolymorphicMapType_27506| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_27485) (i@@19 Int) (lo@@8 Int) (hi@@15 Int) (step@@5 Int) (vmin@@5 Int) (vmax_1@@5 Int) (ar_1@@15 T@Seq_36641) ) (!  (and (= (sum_square Heap@@30 i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax_1@@5 ar_1@@15) (|sum_square'| Heap@@30 i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax_1@@5 ar_1@@15)) (dummyFunction_4053 (|sum_square#triggerStateless| i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax_1@@5 ar_1@@15)))
 :qid |stdinbpl.1041:15|
 :skolemid |91|
 :pattern ( (sum_square Heap@@30 i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax_1@@5 ar_1@@15))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_27485) (Mask@@29 T@PolymorphicMapType_27506) (N0@@4 Int) (N1@@4 Int) (i0_3@@4 Int) (i1_9@@4 Int) ) (!  (=> (state Heap@@31 Mask@@29) (= (|Ref__multidim_index_2'| Heap@@31 N0@@4 N1@@4 i0_3@@4 i1_9@@4) (|Ref__multidim_index_2#frame| EmptyFrame N0@@4 N1@@4 i0_3@@4 i1_9@@4)))
 :qid |stdinbpl.635:15|
 :skolemid |60|
 :pattern ( (state Heap@@31 Mask@@29) (|Ref__multidim_index_2'| Heap@@31 N0@@4 N1@@4 i0_3@@4 i1_9@@4))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_27485) (Mask@@30 T@PolymorphicMapType_27506) (i@@20 Int) (hi@@16 Int) (ar_1@@16 T@Seq_3251) (v_2@@8 Int) ) (!  (=> (state Heap@@32 Mask@@30) (= (|count_list'| Heap@@32 i@@20 hi@@16 ar_1@@16 v_2@@8) (|count_list#frame| EmptyFrame i@@20 hi@@16 ar_1@@16 v_2@@8)))
 :qid |stdinbpl.1590:15|
 :skolemid |136|
 :pattern ( (state Heap@@32 Mask@@30) (|count_list'| Heap@@32 i@@20 hi@@16 ar_1@@16 v_2@@8))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3251| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3251| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.600:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3251| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_36641) (b T@Seq_36641) ) (!  (=> (|Seq#Equal_36641| a b) (= a b))
 :qid |stdinbpl.573:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_36641| a b))
)))
(assert (forall ((a@@0 T@Seq_3251) (b@@0 T@Seq_3251) ) (!  (=> (|Seq#Equal_3251| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.573:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3251| a@@0 b@@0))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_27485) (i@@21 Int) (hi@@17 Int) (ar_1@@17 T@Seq_3251) ) (!  (and (= (sum_list Heap@@33 i@@21 hi@@17 ar_1@@17) (|sum_list'| Heap@@33 i@@21 hi@@17 ar_1@@17)) (dummyFunction_4053 (|sum_list#triggerStateless| i@@21 hi@@17 ar_1@@17)))
 :qid |stdinbpl.721:15|
 :skolemid |66|
 :pattern ( (sum_list Heap@@33 i@@21 hi@@17 ar_1@@17))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_27485) (Mask@@31 T@PolymorphicMapType_27506) (N0@@5 Int) (N1@@5 Int) (i0_3@@5 Int) (i1_9@@5 Int) ) (!  (=> (and (state Heap@@34 Mask@@31) (or (< AssumeFunctionsAbove 1) (|Ref__multidim_index_2#trigger| EmptyFrame N0@@5 N1@@5 i0_3@@5 i1_9@@5))) (=> (and (and (and (and (and (<= 0 i0_3@@5) (< i0_3@@5 N0@@5)) (<= 0 N0@@5)) (<= 0 i1_9@@5)) (< i1_9@@5 N1@@5)) (<= 0 N1@@5)) (< (|Ref__multidim_index_2'| Heap@@34 N0@@5 N1@@5 i0_3@@5 i1_9@@5) (* N0@@5 N1@@5))))
 :qid |stdinbpl.645:15|
 :skolemid |62|
 :pattern ( (state Heap@@34 Mask@@31) (|Ref__multidim_index_2'| Heap@@34 N0@@5 N1@@5 i0_3@@5 i1_9@@5))
)))
(assert (forall ((s@@17 T@Seq_36641) (i@@22 Int) ) (!  (=> (and (<= 0 i@@22) (< i@@22 (|Seq#Length_19668| s@@17))) (|Seq#ContainsTrigger_19668| s@@17 (|Seq#Index_19668| s@@17 i@@22)))
 :qid |stdinbpl.466:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_19668| s@@17 i@@22))
)))
(assert (forall ((s@@18 T@Seq_3251) (i@@23 Int) ) (!  (=> (and (<= 0 i@@23) (< i@@23 (|Seq#Length_3251| s@@18))) (|Seq#ContainsTrigger_3251| s@@18 (|Seq#Index_3251| s@@18 i@@23)))
 :qid |stdinbpl.466:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3251| s@@18 i@@23))
)))
(assert (forall ((s0@@3 T@Seq_36641) (s1@@3 T@Seq_36641) ) (!  (and (=> (= s0@@3 |Seq#Empty_19668|) (= (|Seq#Append_36641| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_19668|) (= (|Seq#Append_36641| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.284:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_36641| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3251) (s1@@4 T@Seq_3251) ) (!  (and (=> (= s0@@4 |Seq#Empty_3251|) (= (|Seq#Append_3251| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3251|) (= (|Seq#Append_3251| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.284:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3251| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_19668| (|Seq#Singleton_19668| t@@3) 0) t@@3)
 :qid |stdinbpl.288:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_19668| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3251| (|Seq#Singleton_3251| t@@4) 0) t@@4)
 :qid |stdinbpl.288:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3251| t@@4))
)))
(assert (forall ((s@@19 T@Seq_36641) ) (! (<= 0 (|Seq#Length_19668| s@@19))
 :qid |stdinbpl.267:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_19668| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3251) ) (! (<= 0 (|Seq#Length_3251| s@@20))
 :qid |stdinbpl.267:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3251| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_36641) (s1@@5 T@Seq_36641) ) (!  (=> (|Seq#Equal_36641| s0@@5 s1@@5) (and (= (|Seq#Length_19668| s0@@5) (|Seq#Length_19668| s1@@5)) (forall ((j@@8 Int) ) (!  (=> (and (<= 0 j@@8) (< j@@8 (|Seq#Length_19668| s0@@5))) (= (|Seq#Index_19668| s0@@5 j@@8) (|Seq#Index_19668| s1@@5 j@@8)))
 :qid |stdinbpl.563:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_19668| s0@@5 j@@8))
 :pattern ( (|Seq#Index_19668| s1@@5 j@@8))
))))
 :qid |stdinbpl.560:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_36641| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3251) (s1@@6 T@Seq_3251) ) (!  (=> (|Seq#Equal_3251| s0@@6 s1@@6) (and (= (|Seq#Length_3251| s0@@6) (|Seq#Length_3251| s1@@6)) (forall ((j@@9 Int) ) (!  (=> (and (<= 0 j@@9) (< j@@9 (|Seq#Length_3251| s0@@6))) (= (|Seq#Index_3251| s0@@6 j@@9) (|Seq#Index_3251| s1@@6 j@@9)))
 :qid |stdinbpl.563:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3251| s0@@6 j@@9))
 :pattern ( (|Seq#Index_3251| s1@@6 j@@9))
))))
 :qid |stdinbpl.560:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3251| s0@@6 s1@@6))
)))
(assert (forall ((Heap2Heap@@1 T@PolymorphicMapType_27485) (Heap1Heap@@1 T@PolymorphicMapType_27485) (i@@24 Int) (hi@@18 Int) (ar_1@@18 T@Seq_36641) (v_2@@9 Int) ) (!  (=> (and (=  (and (<= 0 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9))) (< (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9)) hi@@18))  (and (<= 0 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9))) (< (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9)) hi@@18))) (=> (and (<= 0 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9))) (< (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9)) hi@@18)) (= (select (|PolymorphicMapType_27485_19611_3373#PolymorphicMapType_27485| Heap2Heap@@1) (|Seq#Index_19668| ar_1@@18 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9))) Ref__Integer_value) (select (|PolymorphicMapType_27485_19611_3373#PolymorphicMapType_27485| Heap1Heap@@1) (|Seq#Index_19668| ar_1@@18 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9))) Ref__Integer_value)))) (= (|count_array#condqp4| Heap2Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9)))
 :qid |stdinbpl.1688:15|
 :skolemid |142|
 :pattern ( (|count_array#condqp4| Heap2Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9) (succHeapTrans Heap2Heap@@1 Heap1Heap@@1))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_19668| (|Seq#Singleton_19668| t@@5)) 1)
 :qid |stdinbpl.275:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_19668| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3251| (|Seq#Singleton_3251| t@@6)) 1)
 :qid |stdinbpl.275:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3251| t@@6))
)))
(assert (forall ((Heap2Heap@@2 T@PolymorphicMapType_27485) (Heap1Heap@@2 T@PolymorphicMapType_27485) (i@@25 Int) (lo@@9 Int) (hi@@19 Int) (ar_1@@19 T@Seq_36641) ) (!  (=> (and (=  (and (<= lo@@9 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19))) (< (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19)) hi@@19))  (and (<= lo@@9 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19))) (< (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19)) hi@@19))) (=> (and (<= lo@@9 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19))) (< (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19)) hi@@19)) (= (select (|PolymorphicMapType_27485_19611_3373#PolymorphicMapType_27485| Heap2Heap@@2) (|Seq#Index_19668| ar_1@@19 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19))) Ref__Integer_value) (select (|PolymorphicMapType_27485_19611_3373#PolymorphicMapType_27485| Heap1Heap@@2) (|Seq#Index_19668| ar_1@@19 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19))) Ref__Integer_value)))) (= (|sum_array#condqp1| Heap2Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19)))
 :qid |stdinbpl.836:15|
 :skolemid |75|
 :pattern ( (|sum_array#condqp1| Heap2Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19) (succHeapTrans Heap2Heap@@2 Heap1Heap@@2))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_27485) (Mask@@32 T@PolymorphicMapType_27506) (i@@26 Int) (lo@@10 Int) (hi@@20 Int) (step@@6 Int) (vmin@@6 Int) (vmax_1@@6 Int) (ar_1@@20 T@Seq_36641) (v_2@@10 Int) ) (!  (=> (and (state Heap@@35 Mask@@32) (< AssumeFunctionsAbove 0)) (=> (and (and (and (and (<= 0 lo@@10) (and (<= lo@@10 hi@@20) (and (<= hi@@20 step@@6) (> step@@6 0)))) (and (<= 0 vmin@@6) (and (<= vmin@@6 i@@26) (<= i@@26 vmax_1@@6)))) (<= vmax_1@@6 (|Seq#Length_19668| ar_1@@20))) (forall ((j@@10 Int) (k@@1 Int) ) (!  (=> (and (<= 0 j@@10) (and (< j@@10 vmax_1@@6) (and (<= 0 k@@1) (and (< k@@1 vmax_1@@6) (not (= j@@10 k@@1)))))) (not (= (|Seq#Index_19668| ar_1@@20 j@@10) (|Seq#Index_19668| ar_1@@20 k@@1))))
 :qid |stdinbpl.1319:195|
 :skolemid |114|
 :pattern ( (|Seq#Index_19668| ar_1@@20 j@@10) (|Seq#Index_19668| ar_1@@20 k@@1))
))) (= (count_square Heap@@35 i@@26 lo@@10 hi@@20 step@@6 vmin@@6 vmax_1@@6 ar_1@@20 v_2@@10) (ite (< i@@26 vmax_1@@6) (+ (ite  (and (<= lo@@10 (mod i@@26 step@@6)) (and (< (mod i@@26 step@@6) hi@@20) (= (select (|PolymorphicMapType_27485_19611_3373#PolymorphicMapType_27485| Heap@@35) (|Seq#Index_19668| ar_1@@20 i@@26) Ref__Integer_value) v_2@@10))) 1 0) (|count_square'| Heap@@35 (+ i@@26 1) lo@@10 hi@@20 step@@6 vmin@@6 vmax_1@@6 ar_1@@20 v_2@@10)) 0))))
 :qid |stdinbpl.1317:15|
 :skolemid |115|
 :pattern ( (state Heap@@35 Mask@@32) (count_square Heap@@35 i@@26 lo@@10 hi@@20 step@@6 vmin@@6 vmax_1@@6 ar_1@@20 v_2@@10))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_27485) (Mask@@33 T@PolymorphicMapType_27506) (i@@27 Int) (hi@@21 Int) (ar_1@@21 T@Seq_3251) ) (!  (=> (and (state Heap@@36 Mask@@33) (< AssumeFunctionsAbove 5)) (=> (and (and (<= 0 i@@27) (<= i@@27 hi@@21)) (<= hi@@21 (|Seq#Length_3251| ar_1@@21))) (= (sum_list Heap@@36 i@@27 hi@@21 ar_1@@21) (ite (< i@@27 hi@@21) (+ (|Seq#Index_3251| ar_1@@21 i@@27) (|sum_list'| Heap@@36 (+ i@@27 1) hi@@21 ar_1@@21)) 0))))
 :qid |stdinbpl.731:15|
 :skolemid |68|
 :pattern ( (state Heap@@36 Mask@@33) (sum_list Heap@@36 i@@27 hi@@21 ar_1@@21))
)))
(assert (forall ((s@@21 T@Seq_36641) (t@@7 T@Seq_36641) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_19668| s@@21))) (= (|Seq#Take_19668| (|Seq#Append_36641| s@@21 t@@7) n@@17) (|Seq#Take_19668| s@@21 n@@17)))
 :qid |stdinbpl.417:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_19668| (|Seq#Append_36641| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3251) (t@@8 T@Seq_3251) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3251| s@@22))) (= (|Seq#Take_3251| (|Seq#Append_3251| s@@22 t@@8) n@@18) (|Seq#Take_3251| s@@22 n@@18)))
 :qid |stdinbpl.417:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3251| (|Seq#Append_3251| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_36641) (i@@28 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@28) (< i@@28 (|Seq#Length_19668| s@@23))) (= (|Seq#Length_19668| (|Seq#Update_19668| s@@23 i@@28 v@@2)) (|Seq#Length_19668| s@@23)))
 :qid |stdinbpl.316:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_19668| (|Seq#Update_19668| s@@23 i@@28 v@@2)))
 :pattern ( (|Seq#Length_19668| s@@23) (|Seq#Update_19668| s@@23 i@@28 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3251) (i@@29 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@29) (< i@@29 (|Seq#Length_3251| s@@24))) (= (|Seq#Length_3251| (|Seq#Update_3251| s@@24 i@@29 v@@3)) (|Seq#Length_3251| s@@24)))
 :qid |stdinbpl.316:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3251| (|Seq#Update_3251| s@@24 i@@29 v@@3)))
 :pattern ( (|Seq#Length_3251| s@@24) (|Seq#Update_3251| s@@24 i@@29 v@@3))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_27485) (o_13 T@Ref) (f_66 T@Field_19611_74850) (v@@4 T@FrameType) ) (! (succHeap Heap@@37 (PolymorphicMapType_27485 (|PolymorphicMapType_27485_19391_53#PolymorphicMapType_27485| Heap@@37) (|PolymorphicMapType_27485_19394_19395#PolymorphicMapType_27485| Heap@@37) (|PolymorphicMapType_27485_19611_3373#PolymorphicMapType_27485| Heap@@37) (|PolymorphicMapType_27485_19611_75027#PolymorphicMapType_27485| Heap@@37) (store (|PolymorphicMapType_27485_27545_74850#PolymorphicMapType_27485| Heap@@37) o_13 f_66 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27485 (|PolymorphicMapType_27485_19391_53#PolymorphicMapType_27485| Heap@@37) (|PolymorphicMapType_27485_19394_19395#PolymorphicMapType_27485| Heap@@37) (|PolymorphicMapType_27485_19611_3373#PolymorphicMapType_27485| Heap@@37) (|PolymorphicMapType_27485_19611_75027#PolymorphicMapType_27485| Heap@@37) (store (|PolymorphicMapType_27485_27545_74850#PolymorphicMapType_27485| Heap@@37) o_13 f_66 v@@4)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_27485) (o_13@@0 T@Ref) (f_66@@0 T@Field_19611_74983) (v@@5 T@PolymorphicMapType_28034) ) (! (succHeap Heap@@38 (PolymorphicMapType_27485 (|PolymorphicMapType_27485_19391_53#PolymorphicMapType_27485| Heap@@38) (|PolymorphicMapType_27485_19394_19395#PolymorphicMapType_27485| Heap@@38) (|PolymorphicMapType_27485_19611_3373#PolymorphicMapType_27485| Heap@@38) (store (|PolymorphicMapType_27485_19611_75027#PolymorphicMapType_27485| Heap@@38) o_13@@0 f_66@@0 v@@5) (|PolymorphicMapType_27485_27545_74850#PolymorphicMapType_27485| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27485 (|PolymorphicMapType_27485_19391_53#PolymorphicMapType_27485| Heap@@38) (|PolymorphicMapType_27485_19394_19395#PolymorphicMapType_27485| Heap@@38) (|PolymorphicMapType_27485_19611_3373#PolymorphicMapType_27485| Heap@@38) (store (|PolymorphicMapType_27485_19611_75027#PolymorphicMapType_27485| Heap@@38) o_13@@0 f_66@@0 v@@5) (|PolymorphicMapType_27485_27545_74850#PolymorphicMapType_27485| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_27485) (o_13@@1 T@Ref) (f_66@@1 T@Field_33595_3373) (v@@6 Int) ) (! (succHeap Heap@@39 (PolymorphicMapType_27485 (|PolymorphicMapType_27485_19391_53#PolymorphicMapType_27485| Heap@@39) (|PolymorphicMapType_27485_19394_19395#PolymorphicMapType_27485| Heap@@39) (store (|PolymorphicMapType_27485_19611_3373#PolymorphicMapType_27485| Heap@@39) o_13@@1 f_66@@1 v@@6) (|PolymorphicMapType_27485_19611_75027#PolymorphicMapType_27485| Heap@@39) (|PolymorphicMapType_27485_27545_74850#PolymorphicMapType_27485| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27485 (|PolymorphicMapType_27485_19391_53#PolymorphicMapType_27485| Heap@@39) (|PolymorphicMapType_27485_19394_19395#PolymorphicMapType_27485| Heap@@39) (store (|PolymorphicMapType_27485_19611_3373#PolymorphicMapType_27485| Heap@@39) o_13@@1 f_66@@1 v@@6) (|PolymorphicMapType_27485_19611_75027#PolymorphicMapType_27485| Heap@@39) (|PolymorphicMapType_27485_27545_74850#PolymorphicMapType_27485| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_27485) (o_13@@2 T@Ref) (f_66@@2 T@Field_27558_27559) (v@@7 T@Ref) ) (! (succHeap Heap@@40 (PolymorphicMapType_27485 (|PolymorphicMapType_27485_19391_53#PolymorphicMapType_27485| Heap@@40) (store (|PolymorphicMapType_27485_19394_19395#PolymorphicMapType_27485| Heap@@40) o_13@@2 f_66@@2 v@@7) (|PolymorphicMapType_27485_19611_3373#PolymorphicMapType_27485| Heap@@40) (|PolymorphicMapType_27485_19611_75027#PolymorphicMapType_27485| Heap@@40) (|PolymorphicMapType_27485_27545_74850#PolymorphicMapType_27485| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27485 (|PolymorphicMapType_27485_19391_53#PolymorphicMapType_27485| Heap@@40) (store (|PolymorphicMapType_27485_19394_19395#PolymorphicMapType_27485| Heap@@40) o_13@@2 f_66@@2 v@@7) (|PolymorphicMapType_27485_19611_3373#PolymorphicMapType_27485| Heap@@40) (|PolymorphicMapType_27485_19611_75027#PolymorphicMapType_27485| Heap@@40) (|PolymorphicMapType_27485_27545_74850#PolymorphicMapType_27485| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_27485) (o_13@@3 T@Ref) (f_66@@3 T@Field_27545_53) (v@@8 Bool) ) (! (succHeap Heap@@41 (PolymorphicMapType_27485 (store (|PolymorphicMapType_27485_19391_53#PolymorphicMapType_27485| Heap@@41) o_13@@3 f_66@@3 v@@8) (|PolymorphicMapType_27485_19394_19395#PolymorphicMapType_27485| Heap@@41) (|PolymorphicMapType_27485_19611_3373#PolymorphicMapType_27485| Heap@@41) (|PolymorphicMapType_27485_19611_75027#PolymorphicMapType_27485| Heap@@41) (|PolymorphicMapType_27485_27545_74850#PolymorphicMapType_27485| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27485 (store (|PolymorphicMapType_27485_19391_53#PolymorphicMapType_27485| Heap@@41) o_13@@3 f_66@@3 v@@8) (|PolymorphicMapType_27485_19394_19395#PolymorphicMapType_27485| Heap@@41) (|PolymorphicMapType_27485_19611_3373#PolymorphicMapType_27485| Heap@@41) (|PolymorphicMapType_27485_19611_75027#PolymorphicMapType_27485| Heap@@41) (|PolymorphicMapType_27485_27545_74850#PolymorphicMapType_27485| Heap@@41)))
)))
(assert (forall ((s@@25 T@Seq_36641) (t@@9 T@Seq_36641) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_19668| s@@25))) (= (|Seq#Drop_19668| (|Seq#Append_36641| s@@25 t@@9) n@@19) (|Seq#Append_36641| (|Seq#Drop_19668| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.431:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_19668| (|Seq#Append_36641| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3251) (t@@10 T@Seq_3251) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3251| s@@26))) (= (|Seq#Drop_3251| (|Seq#Append_3251| s@@26 t@@10) n@@20) (|Seq#Append_3251| (|Seq#Drop_3251| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.431:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3251| (|Seq#Append_3251| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_36641) (n@@21 Int) (i@@30 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@30)) (< i@@30 (|Seq#Length_19668| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@30 n@@21) n@@21) i@@30) (= (|Seq#Index_19668| (|Seq#Drop_19668| s@@27 n@@21) (|Seq#Sub| i@@30 n@@21)) (|Seq#Index_19668| s@@27 i@@30))))
 :qid |stdinbpl.367:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_19668| s@@27 n@@21) (|Seq#Index_19668| s@@27 i@@30))
)))
(assert (forall ((s@@28 T@Seq_3251) (n@@22 Int) (i@@31 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@31)) (< i@@31 (|Seq#Length_3251| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@31 n@@22) n@@22) i@@31) (= (|Seq#Index_3251| (|Seq#Drop_3251| s@@28 n@@22) (|Seq#Sub| i@@31 n@@22)) (|Seq#Index_3251| s@@28 i@@31))))
 :qid |stdinbpl.367:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3251| s@@28 n@@22) (|Seq#Index_3251| s@@28 i@@31))
)))
(assert (forall ((s0@@7 T@Seq_36641) (s1@@7 T@Seq_36641) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_19668|)) (not (= s1@@7 |Seq#Empty_19668|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_19668| s0@@7))) (= (|Seq#Index_19668| (|Seq#Append_36641| s0@@7 s1@@7) n@@23) (|Seq#Index_19668| s0@@7 n@@23)))
 :qid |stdinbpl.307:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_19668| (|Seq#Append_36641| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_19668| s0@@7 n@@23) (|Seq#Append_36641| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3251) (s1@@8 T@Seq_3251) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3251|)) (not (= s1@@8 |Seq#Empty_3251|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3251| s0@@8))) (= (|Seq#Index_3251| (|Seq#Append_3251| s0@@8 s1@@8) n@@24) (|Seq#Index_3251| s0@@8 n@@24)))
 :qid |stdinbpl.307:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3251| (|Seq#Append_3251| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3251| s0@@8 n@@24) (|Seq#Append_3251| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_36641) (s1@@9 T@Seq_36641) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_19668|)) (not (= s1@@9 |Seq#Empty_19668|))) (<= 0 m)) (< m (|Seq#Length_19668| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_19668| s0@@9)) (|Seq#Length_19668| s0@@9)) m) (= (|Seq#Index_19668| (|Seq#Append_36641| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_19668| s0@@9))) (|Seq#Index_19668| s1@@9 m))))
 :qid |stdinbpl.312:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_19668| s1@@9 m) (|Seq#Append_36641| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3251) (s1@@10 T@Seq_3251) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3251|)) (not (= s1@@10 |Seq#Empty_3251|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3251| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3251| s0@@10)) (|Seq#Length_3251| s0@@10)) m@@0) (= (|Seq#Index_3251| (|Seq#Append_3251| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3251| s0@@10))) (|Seq#Index_3251| s1@@10 m@@0))))
 :qid |stdinbpl.312:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3251| s1@@10 m@@0) (|Seq#Append_3251| s0@@10 s1@@10))
)))
(assert (forall ((o_13@@4 T@Ref) (f_20 T@Field_27558_27559) (Heap@@42 T@PolymorphicMapType_27485) ) (!  (=> (select (|PolymorphicMapType_27485_19391_53#PolymorphicMapType_27485| Heap@@42) o_13@@4 $allocated) (select (|PolymorphicMapType_27485_19391_53#PolymorphicMapType_27485| Heap@@42) (select (|PolymorphicMapType_27485_19394_19395#PolymorphicMapType_27485| Heap@@42) o_13@@4 f_20) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_27485_19394_19395#PolymorphicMapType_27485| Heap@@42) o_13@@4 f_20))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_27485) (Mask@@34 T@PolymorphicMapType_27506) (i@@32 Int) (lo@@11 Int) (hi@@22 Int) (step@@7 Int) (vmin@@7 Int) (vmax_1@@7 Int) (ar_1@@22 T@Seq_36641) ) (!  (=> (state Heap@@43 Mask@@34) (= (|sum_square'| Heap@@43 i@@32 lo@@11 hi@@22 step@@7 vmin@@7 vmax_1@@7 ar_1@@22) (|sum_square#frame| (FrameFragment_5064 (|sum_square#condqp2| Heap@@43 i@@32 lo@@11 hi@@22 step@@7 vmin@@7 vmax_1@@7 ar_1@@22)) i@@32 lo@@11 hi@@22 step@@7 vmin@@7 vmax_1@@7 ar_1@@22)))
 :qid |stdinbpl.1061:15|
 :skolemid |95|
 :pattern ( (state Heap@@43 Mask@@34) (|sum_square'| Heap@@43 i@@32 lo@@11 hi@@22 step@@7 vmin@@7 vmax_1@@7 ar_1@@22))
)))
(assert (forall ((s@@29 T@Seq_36641) (x@@3 T@Ref) (i@@33 Int) ) (!  (=> (and (and (<= 0 i@@33) (< i@@33 (|Seq#Length_19668| s@@29))) (= (|Seq#Index_19668| s@@29 i@@33) x@@3)) (|Seq#Contains_36641| s@@29 x@@3))
 :qid |stdinbpl.464:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_36641| s@@29 x@@3) (|Seq#Index_19668| s@@29 i@@33))
)))
(assert (forall ((s@@30 T@Seq_3251) (x@@4 Int) (i@@34 Int) ) (!  (=> (and (and (<= 0 i@@34) (< i@@34 (|Seq#Length_3251| s@@30))) (= (|Seq#Index_3251| s@@30 i@@34) x@@4)) (|Seq#Contains_3251| s@@30 x@@4))
 :qid |stdinbpl.464:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3251| s@@30 x@@4) (|Seq#Index_3251| s@@30 i@@34))
)))
(assert (forall ((s0@@11 T@Seq_36641) (s1@@11 T@Seq_36641) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_36641| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_36641| s0@@11 s1@@11))) (not (= (|Seq#Length_19668| s0@@11) (|Seq#Length_19668| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_36641| s0@@11 s1@@11))) (= (|Seq#Length_19668| s0@@11) (|Seq#Length_19668| s1@@11))) (= (|Seq#SkolemDiff_36641| s0@@11 s1@@11) (|Seq#SkolemDiff_36641| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_36641| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_36641| s0@@11 s1@@11) (|Seq#Length_19668| s0@@11))) (not (= (|Seq#Index_19668| s0@@11 (|Seq#SkolemDiff_36641| s0@@11 s1@@11)) (|Seq#Index_19668| s1@@11 (|Seq#SkolemDiff_36641| s0@@11 s1@@11))))))
 :qid |stdinbpl.568:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_36641| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3251) (s1@@12 T@Seq_3251) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3251| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3251| s0@@12 s1@@12))) (not (= (|Seq#Length_3251| s0@@12) (|Seq#Length_3251| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3251| s0@@12 s1@@12))) (= (|Seq#Length_3251| s0@@12) (|Seq#Length_3251| s1@@12))) (= (|Seq#SkolemDiff_3251| s0@@12 s1@@12) (|Seq#SkolemDiff_3251| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3251| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3251| s0@@12 s1@@12) (|Seq#Length_3251| s0@@12))) (not (= (|Seq#Index_3251| s0@@12 (|Seq#SkolemDiff_3251| s0@@12 s1@@12)) (|Seq#Index_3251| s1@@12 (|Seq#SkolemDiff_3251| s0@@12 s1@@12))))))
 :qid |stdinbpl.568:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3251| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_19611_74850) (v_1@@0 T@FrameType) (q T@Field_19611_74850) (w@@0 T@FrameType) (r T@Field_19611_74850) (u T@FrameType) ) (!  (=> (and (InsidePredicate_27545_27545 p@@1 v_1@@0 q w@@0) (InsidePredicate_27545_27545 q w@@0 r u)) (InsidePredicate_27545_27545 p@@1 v_1@@0 r u))
 :qid |stdinbpl.235:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27545_27545 p@@1 v_1@@0 q w@@0) (InsidePredicate_27545_27545 q w@@0 r u))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_27485) (i@@35 Int) (lo@@12 Int) (hi@@23 Int) (step@@8 Int) (vmin@@8 Int) (vmax_1@@8 Int) (ar_1@@23 T@Seq_36641) ) (! (dummyFunction_4053 (|sum_square#triggerStateless| i@@35 lo@@12 hi@@23 step@@8 vmin@@8 vmax_1@@8 ar_1@@23))
 :qid |stdinbpl.1045:15|
 :skolemid |92|
 :pattern ( (|sum_square'| Heap@@44 i@@35 lo@@12 hi@@23 step@@8 vmin@@8 vmax_1@@8 ar_1@@23))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_27485) (Mask@@35 T@PolymorphicMapType_27506) (i@@36 Int) (hi@@24 Int) (ar_1@@24 T@Seq_36641) (v_2@@11 Int) ) (!  (=> (and (state Heap@@45 Mask@@35) (< AssumeFunctionsAbove 2)) (=> (and (and (and (<= 0 i@@36) (<= i@@36 hi@@24)) (<= hi@@24 (|Seq#Length_19668| ar_1@@24))) (forall ((j@@11 Int) (k@@2 Int) ) (!  (=> (and (<= 0 j@@11) (and (< j@@11 hi@@24) (and (<= 0 k@@2) (and (< k@@2 hi@@24) (not (= j@@11 k@@2)))))) (not (= (|Seq#Index_19668| ar_1@@24 j@@11) (|Seq#Index_19668| ar_1@@24 k@@2))))
 :qid |stdinbpl.1670:112|
 :skolemid |139|
 :pattern ( (|Seq#Index_19668| ar_1@@24 j@@11) (|Seq#Index_19668| ar_1@@24 k@@2))
))) (= (count_array Heap@@45 i@@36 hi@@24 ar_1@@24 v_2@@11) (ite (< i@@36 hi@@24) (+ (ite (= (select (|PolymorphicMapType_27485_19611_3373#PolymorphicMapType_27485| Heap@@45) (|Seq#Index_19668| ar_1@@24 i@@36) Ref__Integer_value) v_2@@11) 1 0) (|count_array'| Heap@@45 (+ i@@36 1) hi@@24 ar_1@@24 v_2@@11)) 0))))
 :qid |stdinbpl.1668:15|
 :skolemid |140|
 :pattern ( (state Heap@@45 Mask@@35) (count_array Heap@@45 i@@36 hi@@24 ar_1@@24 v_2@@11))
)))
(assert (forall ((s@@31 T@Seq_36641) ) (!  (=> (= (|Seq#Length_19668| s@@31) 0) (= s@@31 |Seq#Empty_19668|))
 :qid |stdinbpl.271:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_19668| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3251) ) (!  (=> (= (|Seq#Length_3251| s@@32) 0) (= s@@32 |Seq#Empty_3251|))
 :qid |stdinbpl.271:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3251| s@@32))
)))
(assert (forall ((s@@33 T@Seq_36641) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_19668| s@@33 n@@25) |Seq#Empty_19668|))
 :qid |stdinbpl.447:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_19668| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3251) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3251| s@@34 n@@26) |Seq#Empty_3251|))
 :qid |stdinbpl.447:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3251| s@@34 n@@26))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_27485) (Mask@@36 T@PolymorphicMapType_27506) (N0@@6 Int) (N1@@6 Int) (i0_3@@6 Int) (i1_9@@6 Int) ) (!  (=> (and (state Heap@@46 Mask@@36) (or (< AssumeFunctionsAbove 1) (|Ref__multidim_index_2#trigger| EmptyFrame N0@@6 N1@@6 i0_3@@6 i1_9@@6))) (=> (and (and (and (and (and (<= 0 i0_3@@6) (< i0_3@@6 N0@@6)) (<= 0 N0@@6)) (<= 0 i1_9@@6)) (< i1_9@@6 N1@@6)) (<= 0 N1@@6)) (<= 0 (|Ref__multidim_index_2'| Heap@@46 N0@@6 N1@@6 i0_3@@6 i1_9@@6))))
 :qid |stdinbpl.641:15|
 :skolemid |61|
 :pattern ( (state Heap@@46 Mask@@36) (|Ref__multidim_index_2'| Heap@@46 N0@@6 N1@@6 i0_3@@6 i1_9@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@47 T@PolymorphicMapType_27485) (Mask@@37 T@PolymorphicMapType_27506) (i@@37 Int) (lo@@13 Int) (hi@@25 Int) (ar_1@@25 T@Seq_36641) ) (!  (=> (state Heap@@47 Mask@@37) (= (|sum_array'| Heap@@47 i@@37 lo@@13 hi@@25 ar_1@@25) (|sum_array#frame| (FrameFragment_5064 (|sum_array#condqp1| Heap@@47 i@@37 lo@@13 hi@@25 ar_1@@25)) i@@37 lo@@13 hi@@25 ar_1@@25)))
 :qid |stdinbpl.826:15|
 :skolemid |74|
 :pattern ( (state Heap@@47 Mask@@37) (|sum_array'| Heap@@47 i@@37 lo@@13 hi@@25 ar_1@@25))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_27485) (Mask@@38 T@PolymorphicMapType_27506) (i@@38 Int) (hi@@26 Int) (ar_1@@26 T@Seq_36641) (v_2@@12 Int) ) (!  (=> (state Heap@@48 Mask@@38) (= (|count_array'| Heap@@48 i@@38 hi@@26 ar_1@@26 v_2@@12) (|count_array#frame| (FrameFragment_5064 (|count_array#condqp4| Heap@@48 i@@38 hi@@26 ar_1@@26 v_2@@12)) i@@38 hi@@26 ar_1@@26 v_2@@12)))
 :qid |stdinbpl.1678:15|
 :skolemid |141|
 :pattern ( (state Heap@@48 Mask@@38) (|count_array'| Heap@@48 i@@38 hi@@26 ar_1@@26 v_2@@12))
)))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun i_11 () Int)
(declare-fun M_1 () Int)
(declare-fun j_9 () Int)
(declare-fun step@@9 () Int)
(declare-fun PostHeap@0 () T@PolymorphicMapType_27485)
(declare-fun matrix_1 () T@Seq_36641)
(declare-fun QPMask@1 () T@PolymorphicMapType_27506)
(declare-fun N () Int)
(declare-fun qpRange10 (T@Ref) Bool)
(declare-fun invRecv10 (T@Ref) Int)
(declare-fun j_22 () Int)
(declare-fun qpRange9 (T@Ref) Bool)
(declare-fun invRecv9 (T@Ref) Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_27506)
(declare-fun Heap@@49 () T@PolymorphicMapType_27485)
(declare-fun j_7 () Int)
(declare-fun j_10 () Int)
(declare-fun k_22 () Int)
(declare-fun diz () T@Ref)
(declare-fun current_thread_id () Int)
(set-info :boogie-vc-id Ref__loop_main_38)
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
 (=> (= (ControlFlow 0 0) 55) (let ((anon54_Then_correct  (and (=> (= (ControlFlow 0 35) (- 0 40)) (<= 0 i_11)) (=> (<= 0 i_11) (and (=> (= (ControlFlow 0 35) (- 0 39)) (< i_11 M_1)) (=> (< i_11 M_1) (and (=> (= (ControlFlow 0 35) (- 0 38)) (<= 0 M_1)) (=> (<= 0 M_1) (and (=> (= (ControlFlow 0 35) (- 0 37)) (<= 0 j_9)) (=> (<= 0 j_9) (and (=> (= (ControlFlow 0 35) (- 0 36)) (< j_9 step@@9)) (=> (< j_9 step@@9) (=> (= (ControlFlow 0 35) (- 0 34)) (<= 0 step@@9))))))))))))))
(let ((anon28_correct true))
(let ((anon54_Else_correct  (and (=> (= (ControlFlow 0 41) (- 0 44)) (>= (Ref__multidim_index_2 PostHeap@0 M_1 step@@9 i_11 j_9) 0)) (=> (>= (Ref__multidim_index_2 PostHeap@0 M_1 step@@9 i_11 j_9) 0) (and (=> (= (ControlFlow 0 41) (- 0 43)) (< (Ref__multidim_index_2 PostHeap@0 M_1 step@@9 i_11 j_9) (|Seq#Length_19668| matrix_1))) (=> (< (Ref__multidim_index_2 PostHeap@0 M_1 step@@9 i_11 j_9) (|Seq#Length_19668| matrix_1)) (and (=> (= (ControlFlow 0 41) (- 0 42)) (HasDirectPerm_19611_3373 QPMask@1 (|Seq#Index_19668| matrix_1 (Ref__multidim_index_2 PostHeap@0 M_1 step@@9 i_11 j_9)) Ref__Integer_value)) (=> (HasDirectPerm_19611_3373 QPMask@1 (|Seq#Index_19668| matrix_1 (Ref__multidim_index_2 PostHeap@0 M_1 step@@9 i_11 j_9)) Ref__Integer_value) (=> (= (ControlFlow 0 41) 32) anon28_correct)))))))))
(let ((anon53_Then_correct  (=> (and (<= 0 i_11) (and (< i_11 M_1) (and (<= 0 j_9) (< j_9 N)))) (and (=> (= (ControlFlow 0 45) 35) anon54_Then_correct) (=> (= (ControlFlow 0 45) 41) anon54_Else_correct)))))
(let ((anon53_Else_correct  (=> (and (not (and (<= 0 i_11) (and (< i_11 M_1) (and (<= 0 j_9) (< j_9 N))))) (= (ControlFlow 0 33) 32)) anon28_correct)))
(let ((anon52_Else_correct true))
(let ((anon48_Else_correct  (and (=> (= (ControlFlow 0 46) (- 0 47)) (forall ((j_5 Int) (j_5_1 Int) ) (!  (=> (and (and (and (and (not (= j_5 j_5_1)) (and (<= 0 j_5) (and (< j_5 (* M_1 step@@9)) (< (mod j_5 step@@9) N)))) (and (<= 0 j_5_1) (and (< j_5_1 (* M_1 step@@9)) (< (mod j_5_1 step@@9) N)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_19668| matrix_1 j_5) (|Seq#Index_19668| matrix_1 j_5_1))))
 :qid |stdinbpl.2050:15|
 :skolemid |167|
))) (=> (forall ((j_5@@0 Int) (j_5_1@@0 Int) ) (!  (=> (and (and (and (and (not (= j_5@@0 j_5_1@@0)) (and (<= 0 j_5@@0) (and (< j_5@@0 (* M_1 step@@9)) (< (mod j_5@@0 step@@9) N)))) (and (<= 0 j_5_1@@0) (and (< j_5_1@@0 (* M_1 step@@9)) (< (mod j_5_1@@0 step@@9) N)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_19668| matrix_1 j_5@@0) (|Seq#Index_19668| matrix_1 j_5_1@@0))))
 :qid |stdinbpl.2050:15|
 :skolemid |167|
)) (=> (and (and (forall ((j_5@@1 Int) ) (!  (=> (and (and (<= 0 j_5@@1) (and (< j_5@@1 (* M_1 step@@9)) (< (mod j_5@@1 step@@9) N))) (< NoPerm FullPerm)) (and (qpRange10 (|Seq#Index_19668| matrix_1 j_5@@1)) (= (invRecv10 (|Seq#Index_19668| matrix_1 j_5@@1)) j_5@@1)))
 :qid |stdinbpl.2056:22|
 :skolemid |168|
 :pattern ( (|Seq#Index_19668| matrix_1 j_5@@1))
 :pattern ( (|Seq#Index_19668| matrix_1 j_5@@1))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv10 o_9)) (and (< (invRecv10 o_9) (* M_1 step@@9)) (< (mod (invRecv10 o_9) step@@9) N))) (< NoPerm FullPerm)) (qpRange10 o_9)) (= (|Seq#Index_19668| matrix_1 (invRecv10 o_9)) o_9))
 :qid |stdinbpl.2060:22|
 :skolemid |169|
 :pattern ( (invRecv10 o_9))
))) (and (forall ((j_5@@2 Int) ) (!  (=> (and (<= 0 j_5@@2) (and (< j_5@@2 (* M_1 step@@9)) (< (mod j_5@@2 step@@9) N))) (not (= (|Seq#Index_19668| matrix_1 j_5@@2) null)))
 :qid |stdinbpl.2066:22|
 :skolemid |170|
 :pattern ( (|Seq#Index_19668| matrix_1 j_5@@2))
 :pattern ( (|Seq#Index_19668| matrix_1 j_5@@2))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv10 o_9@@0)) (and (< (invRecv10 o_9@@0) (* M_1 step@@9)) (< (mod (invRecv10 o_9@@0) step@@9) N))) (< NoPerm FullPerm)) (qpRange10 o_9@@0)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_19668| matrix_1 (invRecv10 o_9@@0)) o_9@@0)) (= (select (|PolymorphicMapType_27506_19611_3373#PolymorphicMapType_27506| QPMask@1) o_9@@0 Ref__Integer_value) (+ (select (|PolymorphicMapType_27506_19611_3373#PolymorphicMapType_27506| ZeroMask) o_9@@0 Ref__Integer_value) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv10 o_9@@0)) (and (< (invRecv10 o_9@@0) (* M_1 step@@9)) (< (mod (invRecv10 o_9@@0) step@@9) N))) (< NoPerm FullPerm)) (qpRange10 o_9@@0))) (= (select (|PolymorphicMapType_27506_19611_3373#PolymorphicMapType_27506| QPMask@1) o_9@@0 Ref__Integer_value) (select (|PolymorphicMapType_27506_19611_3373#PolymorphicMapType_27506| ZeroMask) o_9@@0 Ref__Integer_value))))
 :qid |stdinbpl.2072:22|
 :skolemid |171|
 :pattern ( (select (|PolymorphicMapType_27506_19611_3373#PolymorphicMapType_27506| QPMask@1) o_9@@0 Ref__Integer_value))
)))) (=> (and (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_27545_53) ) (!  (=> true (= (select (|PolymorphicMapType_27506_19611_53#PolymorphicMapType_27506| ZeroMask) o_9@@1 f_5) (select (|PolymorphicMapType_27506_19611_53#PolymorphicMapType_27506| QPMask@1) o_9@@1 f_5)))
 :qid |stdinbpl.2076:29|
 :skolemid |172|
 :pattern ( (select (|PolymorphicMapType_27506_19611_53#PolymorphicMapType_27506| ZeroMask) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_27506_19611_53#PolymorphicMapType_27506| QPMask@1) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_27558_27559) ) (!  (=> true (= (select (|PolymorphicMapType_27506_19611_27559#PolymorphicMapType_27506| ZeroMask) o_9@@2 f_5@@0) (select (|PolymorphicMapType_27506_19611_27559#PolymorphicMapType_27506| QPMask@1) o_9@@2 f_5@@0)))
 :qid |stdinbpl.2076:29|
 :skolemid |172|
 :pattern ( (select (|PolymorphicMapType_27506_19611_27559#PolymorphicMapType_27506| ZeroMask) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_27506_19611_27559#PolymorphicMapType_27506| QPMask@1) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_33595_3373) ) (!  (=> (not (= f_5@@1 Ref__Integer_value)) (= (select (|PolymorphicMapType_27506_19611_3373#PolymorphicMapType_27506| ZeroMask) o_9@@3 f_5@@1) (select (|PolymorphicMapType_27506_19611_3373#PolymorphicMapType_27506| QPMask@1) o_9@@3 f_5@@1)))
 :qid |stdinbpl.2076:29|
 :skolemid |172|
 :pattern ( (select (|PolymorphicMapType_27506_19611_3373#PolymorphicMapType_27506| ZeroMask) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_27506_19611_3373#PolymorphicMapType_27506| QPMask@1) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_19611_74850) ) (!  (=> true (= (select (|PolymorphicMapType_27506_19611_74850#PolymorphicMapType_27506| ZeroMask) o_9@@4 f_5@@2) (select (|PolymorphicMapType_27506_19611_74850#PolymorphicMapType_27506| QPMask@1) o_9@@4 f_5@@2)))
 :qid |stdinbpl.2076:29|
 :skolemid |172|
 :pattern ( (select (|PolymorphicMapType_27506_19611_74850#PolymorphicMapType_27506| ZeroMask) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_27506_19611_74850#PolymorphicMapType_27506| QPMask@1) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_19611_74983) ) (!  (=> true (= (select (|PolymorphicMapType_27506_19611_79105#PolymorphicMapType_27506| ZeroMask) o_9@@5 f_5@@3) (select (|PolymorphicMapType_27506_19611_79105#PolymorphicMapType_27506| QPMask@1) o_9@@5 f_5@@3)))
 :qid |stdinbpl.2076:29|
 :skolemid |172|
 :pattern ( (select (|PolymorphicMapType_27506_19611_79105#PolymorphicMapType_27506| ZeroMask) o_9@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_27506_19611_79105#PolymorphicMapType_27506| QPMask@1) o_9@@5 f_5@@3))
))) (state PostHeap@0 QPMask@1)) (and (state PostHeap@0 QPMask@1) (state PostHeap@0 QPMask@1))) (and (and (=> (= (ControlFlow 0 46) 31) anon52_Else_correct) (=> (= (ControlFlow 0 46) 45) anon53_Then_correct)) (=> (= (ControlFlow 0 46) 33) anon53_Else_correct))))))))
(let ((anon22_correct true))
(let ((anon51_Else_correct  (=> (and (not (and (<= 0 j_22) (and (< j_22 (* M_1 step@@9)) (< (mod j_22 step@@9) N)))) (= (ControlFlow 0 25) 21)) anon22_correct)))
(let ((anon51_Then_correct  (=> (and (<= 0 j_22) (and (< j_22 (* M_1 step@@9)) (< (mod j_22 step@@9) N))) (and (=> (= (ControlFlow 0 22) (- 0 24)) (>= j_22 0)) (=> (>= j_22 0) (and (=> (= (ControlFlow 0 22) (- 0 23)) (< j_22 (|Seq#Length_19668| matrix_1))) (=> (< j_22 (|Seq#Length_19668| matrix_1)) (=> (= (ControlFlow 0 22) 21) anon22_correct))))))))
(let ((anon50_Else_correct  (=> (<= (* M_1 step@@9) j_22) (and (=> (= (ControlFlow 0 29) 22) anon51_Then_correct) (=> (= (ControlFlow 0 29) 25) anon51_Else_correct)))))
(let ((anon50_Then_correct  (=> (< j_22 (* M_1 step@@9)) (and (=> (= (ControlFlow 0 27) (- 0 28)) (not (= step@@9 0))) (=> (not (= step@@9 0)) (and (=> (= (ControlFlow 0 27) 22) anon51_Then_correct) (=> (= (ControlFlow 0 27) 25) anon51_Else_correct)))))))
(let ((anon49_Then_correct  (=> (<= 0 j_22) (and (=> (= (ControlFlow 0 30) 27) anon50_Then_correct) (=> (= (ControlFlow 0 30) 29) anon50_Else_correct)))))
(let ((anon49_Else_correct  (=> (< j_22 0) (and (=> (= (ControlFlow 0 26) 22) anon51_Then_correct) (=> (= (ControlFlow 0 26) 25) anon51_Else_correct)))))
(let ((anon47_Else_correct  (=> (and (and (forall ((i_3_2 Int) ) (!  (=> (and (<= 0 i_3_2) (and (< i_3_2 M_1) (< 0 N))) (and (> M_1 0) (and (> N 0) (>= step@@9 N))))
 :qid |stdinbpl.2024:20|
 :skolemid |166|
)) (state PostHeap@0 ZeroMask)) (and (<= N step@@9) (state PostHeap@0 ZeroMask))) (and (and (=> (= (ControlFlow 0 48) 46) anon48_Else_correct) (=> (= (ControlFlow 0 48) 30) anon49_Then_correct)) (=> (= (ControlFlow 0 48) 26) anon49_Else_correct)))))
(let ((anon47_Then_correct true))
(let ((anon46_Then_correct  (=> (state PostHeap@0 ZeroMask) (and (=> (= (ControlFlow 0 49) 20) anon47_Then_correct) (=> (= (ControlFlow 0 49) 48) anon47_Else_correct)))))
(let ((anon46_Else_correct true))
(let ((anon42_Else_correct  (and (=> (= (ControlFlow 0 50) (- 0 51)) (forall ((j_3 Int) (j_3_1 Int) ) (!  (=> (and (and (and (and (not (= j_3 j_3_1)) (and (<= 0 j_3) (and (< j_3 (* M_1 step@@9)) (< (mod j_3 step@@9) N)))) (and (<= 0 j_3_1) (and (< j_3_1 (* M_1 step@@9)) (< (mod j_3_1 step@@9) N)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_19668| matrix_1 j_3) (|Seq#Index_19668| matrix_1 j_3_1))))
 :qid |stdinbpl.1975:15|
 :skolemid |160|
))) (=> (forall ((j_3@@0 Int) (j_3_1@@0 Int) ) (!  (=> (and (and (and (and (not (= j_3@@0 j_3_1@@0)) (and (<= 0 j_3@@0) (and (< j_3@@0 (* M_1 step@@9)) (< (mod j_3@@0 step@@9) N)))) (and (<= 0 j_3_1@@0) (and (< j_3_1@@0 (* M_1 step@@9)) (< (mod j_3_1@@0 step@@9) N)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_19668| matrix_1 j_3@@0) (|Seq#Index_19668| matrix_1 j_3_1@@0))))
 :qid |stdinbpl.1975:15|
 :skolemid |160|
)) (=> (and (and (forall ((j_3@@1 Int) ) (!  (=> (and (and (<= 0 j_3@@1) (and (< j_3@@1 (* M_1 step@@9)) (< (mod j_3@@1 step@@9) N))) (< NoPerm FullPerm)) (and (qpRange9 (|Seq#Index_19668| matrix_1 j_3@@1)) (= (invRecv9 (|Seq#Index_19668| matrix_1 j_3@@1)) j_3@@1)))
 :qid |stdinbpl.1981:22|
 :skolemid |161|
 :pattern ( (|Seq#Index_19668| matrix_1 j_3@@1))
 :pattern ( (|Seq#Index_19668| matrix_1 j_3@@1))
)) (forall ((o_9@@6 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv9 o_9@@6)) (and (< (invRecv9 o_9@@6) (* M_1 step@@9)) (< (mod (invRecv9 o_9@@6) step@@9) N))) (< NoPerm FullPerm)) (qpRange9 o_9@@6)) (= (|Seq#Index_19668| matrix_1 (invRecv9 o_9@@6)) o_9@@6))
 :qid |stdinbpl.1985:22|
 :skolemid |162|
 :pattern ( (invRecv9 o_9@@6))
))) (and (forall ((j_3@@2 Int) ) (!  (=> (and (<= 0 j_3@@2) (and (< j_3@@2 (* M_1 step@@9)) (< (mod j_3@@2 step@@9) N))) (not (= (|Seq#Index_19668| matrix_1 j_3@@2) null)))
 :qid |stdinbpl.1991:22|
 :skolemid |163|
 :pattern ( (|Seq#Index_19668| matrix_1 j_3@@2))
 :pattern ( (|Seq#Index_19668| matrix_1 j_3@@2))
)) (forall ((o_9@@7 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv9 o_9@@7)) (and (< (invRecv9 o_9@@7) (* M_1 step@@9)) (< (mod (invRecv9 o_9@@7) step@@9) N))) (< NoPerm FullPerm)) (qpRange9 o_9@@7)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_19668| matrix_1 (invRecv9 o_9@@7)) o_9@@7)) (= (select (|PolymorphicMapType_27506_19611_3373#PolymorphicMapType_27506| QPMask@0) o_9@@7 Ref__Integer_value) (+ (select (|PolymorphicMapType_27506_19611_3373#PolymorphicMapType_27506| ZeroMask) o_9@@7 Ref__Integer_value) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv9 o_9@@7)) (and (< (invRecv9 o_9@@7) (* M_1 step@@9)) (< (mod (invRecv9 o_9@@7) step@@9) N))) (< NoPerm FullPerm)) (qpRange9 o_9@@7))) (= (select (|PolymorphicMapType_27506_19611_3373#PolymorphicMapType_27506| QPMask@0) o_9@@7 Ref__Integer_value) (select (|PolymorphicMapType_27506_19611_3373#PolymorphicMapType_27506| ZeroMask) o_9@@7 Ref__Integer_value))))
 :qid |stdinbpl.1997:22|
 :skolemid |164|
 :pattern ( (select (|PolymorphicMapType_27506_19611_3373#PolymorphicMapType_27506| QPMask@0) o_9@@7 Ref__Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_9@@8 T@Ref) (f_5@@4 T@Field_27545_53) ) (!  (=> true (= (select (|PolymorphicMapType_27506_19611_53#PolymorphicMapType_27506| ZeroMask) o_9@@8 f_5@@4) (select (|PolymorphicMapType_27506_19611_53#PolymorphicMapType_27506| QPMask@0) o_9@@8 f_5@@4)))
 :qid |stdinbpl.2001:29|
 :skolemid |165|
 :pattern ( (select (|PolymorphicMapType_27506_19611_53#PolymorphicMapType_27506| ZeroMask) o_9@@8 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_27506_19611_53#PolymorphicMapType_27506| QPMask@0) o_9@@8 f_5@@4))
)) (forall ((o_9@@9 T@Ref) (f_5@@5 T@Field_27558_27559) ) (!  (=> true (= (select (|PolymorphicMapType_27506_19611_27559#PolymorphicMapType_27506| ZeroMask) o_9@@9 f_5@@5) (select (|PolymorphicMapType_27506_19611_27559#PolymorphicMapType_27506| QPMask@0) o_9@@9 f_5@@5)))
 :qid |stdinbpl.2001:29|
 :skolemid |165|
 :pattern ( (select (|PolymorphicMapType_27506_19611_27559#PolymorphicMapType_27506| ZeroMask) o_9@@9 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_27506_19611_27559#PolymorphicMapType_27506| QPMask@0) o_9@@9 f_5@@5))
))) (forall ((o_9@@10 T@Ref) (f_5@@6 T@Field_33595_3373) ) (!  (=> (not (= f_5@@6 Ref__Integer_value)) (= (select (|PolymorphicMapType_27506_19611_3373#PolymorphicMapType_27506| ZeroMask) o_9@@10 f_5@@6) (select (|PolymorphicMapType_27506_19611_3373#PolymorphicMapType_27506| QPMask@0) o_9@@10 f_5@@6)))
 :qid |stdinbpl.2001:29|
 :skolemid |165|
 :pattern ( (select (|PolymorphicMapType_27506_19611_3373#PolymorphicMapType_27506| ZeroMask) o_9@@10 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_27506_19611_3373#PolymorphicMapType_27506| QPMask@0) o_9@@10 f_5@@6))
))) (forall ((o_9@@11 T@Ref) (f_5@@7 T@Field_19611_74850) ) (!  (=> true (= (select (|PolymorphicMapType_27506_19611_74850#PolymorphicMapType_27506| ZeroMask) o_9@@11 f_5@@7) (select (|PolymorphicMapType_27506_19611_74850#PolymorphicMapType_27506| QPMask@0) o_9@@11 f_5@@7)))
 :qid |stdinbpl.2001:29|
 :skolemid |165|
 :pattern ( (select (|PolymorphicMapType_27506_19611_74850#PolymorphicMapType_27506| ZeroMask) o_9@@11 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_27506_19611_74850#PolymorphicMapType_27506| QPMask@0) o_9@@11 f_5@@7))
))) (forall ((o_9@@12 T@Ref) (f_5@@8 T@Field_19611_74983) ) (!  (=> true (= (select (|PolymorphicMapType_27506_19611_79105#PolymorphicMapType_27506| ZeroMask) o_9@@12 f_5@@8) (select (|PolymorphicMapType_27506_19611_79105#PolymorphicMapType_27506| QPMask@0) o_9@@12 f_5@@8)))
 :qid |stdinbpl.2001:29|
 :skolemid |165|
 :pattern ( (select (|PolymorphicMapType_27506_19611_79105#PolymorphicMapType_27506| ZeroMask) o_9@@12 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_27506_19611_79105#PolymorphicMapType_27506| QPMask@0) o_9@@12 f_5@@8))
))) (and (state Heap@@49 QPMask@0) (state Heap@@49 QPMask@0))) (and (=> (= (ControlFlow 0 50) 49) anon46_Then_correct) (=> (= (ControlFlow 0 50) 19) anon46_Else_correct))))))))
(let ((anon12_correct true))
(let ((anon45_Else_correct  (=> (and (not (and (<= 0 j_7) (and (< j_7 (* M_1 step@@9)) (< (mod j_7 step@@9) N)))) (= (ControlFlow 0 13) 9)) anon12_correct)))
(let ((anon45_Then_correct  (=> (and (<= 0 j_7) (and (< j_7 (* M_1 step@@9)) (< (mod j_7 step@@9) N))) (and (=> (= (ControlFlow 0 10) (- 0 12)) (>= j_7 0)) (=> (>= j_7 0) (and (=> (= (ControlFlow 0 10) (- 0 11)) (< j_7 (|Seq#Length_19668| matrix_1))) (=> (< j_7 (|Seq#Length_19668| matrix_1)) (=> (= (ControlFlow 0 10) 9) anon12_correct))))))))
(let ((anon44_Else_correct  (=> (<= (* M_1 step@@9) j_7) (and (=> (= (ControlFlow 0 17) 10) anon45_Then_correct) (=> (= (ControlFlow 0 17) 13) anon45_Else_correct)))))
(let ((anon44_Then_correct  (=> (< j_7 (* M_1 step@@9)) (and (=> (= (ControlFlow 0 15) (- 0 16)) (not (= step@@9 0))) (=> (not (= step@@9 0)) (and (=> (= (ControlFlow 0 15) 10) anon45_Then_correct) (=> (= (ControlFlow 0 15) 13) anon45_Else_correct)))))))
(let ((anon43_Then_correct  (=> (<= 0 j_7) (and (=> (= (ControlFlow 0 18) 15) anon44_Then_correct) (=> (= (ControlFlow 0 18) 17) anon44_Else_correct)))))
(let ((anon43_Else_correct  (=> (< j_7 0) (and (=> (= (ControlFlow 0 14) 10) anon45_Then_correct) (=> (= (ControlFlow 0 14) 13) anon45_Else_correct)))))
(let ((anon40_Else_correct  (=> (and (forall ((j_1 Int) (k_1 Int) ) (!  (=> (and (<= 0 j_1) (and (< j_1 (* M_1 step@@9)) (and (<= 0 k_1) (and (< k_1 (* M_1 step@@9)) (not (= j_1 k_1)))))) (not (= (|Seq#Index_19668| matrix_1 j_1) (|Seq#Index_19668| matrix_1 k_1))))
 :qid |stdinbpl.1951:20|
 :skolemid |159|
 :pattern ( (|Seq#Index_19668| matrix_1 j_1) (|Seq#Index_19668| matrix_1 k_1))
)) (state Heap@@49 ZeroMask)) (and (and (=> (= (ControlFlow 0 52) 50) anon42_Else_correct) (=> (= (ControlFlow 0 52) 18) anon43_Then_correct)) (=> (= (ControlFlow 0 52) 14) anon43_Else_correct)))))
(let ((anon5_correct true))
(let ((anon41_Else_correct  (=> (and (not (and (<= 0 j_10) (and (< j_10 (* M_1 step@@9)) (and (<= 0 k_22) (and (< k_22 (* M_1 step@@9)) (not (= j_10 k_22))))))) (= (ControlFlow 0 8) 2)) anon5_correct)))
(let ((anon41_Then_correct  (=> (and (<= 0 j_10) (and (< j_10 (* M_1 step@@9)) (and (<= 0 k_22) (and (< k_22 (* M_1 step@@9)) (not (= j_10 k_22)))))) (and (=> (= (ControlFlow 0 3) (- 0 7)) (>= j_10 0)) (=> (>= j_10 0) (and (=> (= (ControlFlow 0 3) (- 0 6)) (< j_10 (|Seq#Length_19668| matrix_1))) (=> (< j_10 (|Seq#Length_19668| matrix_1)) (and (=> (= (ControlFlow 0 3) (- 0 5)) (>= k_22 0)) (=> (>= k_22 0) (and (=> (= (ControlFlow 0 3) (- 0 4)) (< k_22 (|Seq#Length_19668| matrix_1))) (=> (< k_22 (|Seq#Length_19668| matrix_1)) (=> (= (ControlFlow 0 3) 2) anon5_correct))))))))))))
(let ((anon39_Else_correct  (=> (and (forall ((i_1 Int) ) (!  (=> (and (<= 0 i_1) (and (< i_1 M_1) (< 0 N))) (and (> M_1 0) (and (> N 0) (>= step@@9 N))))
 :qid |stdinbpl.1927:20|
 :skolemid |158|
)) (state Heap@@49 ZeroMask)) (=> (and (and (<= N step@@9) (state Heap@@49 ZeroMask)) (and (<= (* M_1 step@@9) (|Seq#Length_19668| matrix_1)) (state Heap@@49 ZeroMask))) (and (and (=> (= (ControlFlow 0 53) 52) anon40_Else_correct) (=> (= (ControlFlow 0 53) 3) anon41_Then_correct)) (=> (= (ControlFlow 0 53) 8) anon41_Else_correct))))))
(let ((anon39_Then_correct true))
(let ((anon0_correct  (=> (and (and (and (state Heap@@49 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (and AssumePermUpperBound (select (|PolymorphicMapType_27485_19391_53#PolymorphicMapType_27485| Heap@@49) diz $allocated))) (and (and (not (= diz null)) (state Heap@@49 ZeroMask)) (and (>= current_thread_id 0) (state Heap@@49 ZeroMask)))) (and (=> (= (ControlFlow 0 54) 1) anon39_Then_correct) (=> (= (ControlFlow 0 54) 53) anon39_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 55) 54) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
