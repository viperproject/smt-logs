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
(declare-sort T@Field_39440_53 0)
(declare-sort T@Field_39453_39454 0)
(declare-sort T@Field_45532_3877 0)
(declare-sort T@Field_27949_112482 0)
(declare-sort T@Field_27949_112349 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_39401 0)) (((PolymorphicMapType_39401 (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| (Array T@Ref T@Field_45532_3877 Real)) (|PolymorphicMapType_39401_27949_53#PolymorphicMapType_39401| (Array T@Ref T@Field_39440_53 Real)) (|PolymorphicMapType_39401_27949_39454#PolymorphicMapType_39401| (Array T@Ref T@Field_39453_39454 Real)) (|PolymorphicMapType_39401_27949_112349#PolymorphicMapType_39401| (Array T@Ref T@Field_27949_112349 Real)) (|PolymorphicMapType_39401_27949_116604#PolymorphicMapType_39401| (Array T@Ref T@Field_27949_112482 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_39929 0)) (((PolymorphicMapType_39929 (|PolymorphicMapType_39929_39440_53#PolymorphicMapType_39929| (Array T@Ref T@Field_39440_53 Bool)) (|PolymorphicMapType_39929_39440_39454#PolymorphicMapType_39929| (Array T@Ref T@Field_39453_39454 Bool)) (|PolymorphicMapType_39929_39440_3877#PolymorphicMapType_39929| (Array T@Ref T@Field_45532_3877 Bool)) (|PolymorphicMapType_39929_39440_112349#PolymorphicMapType_39929| (Array T@Ref T@Field_27949_112349 Bool)) (|PolymorphicMapType_39929_39440_113660#PolymorphicMapType_39929| (Array T@Ref T@Field_27949_112482 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_39380 0)) (((PolymorphicMapType_39380 (|PolymorphicMapType_39380_27687_53#PolymorphicMapType_39380| (Array T@Ref T@Field_39440_53 Bool)) (|PolymorphicMapType_39380_27690_27691#PolymorphicMapType_39380| (Array T@Ref T@Field_39453_39454 T@Ref)) (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| (Array T@Ref T@Field_45532_3877 Int)) (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| (Array T@Ref T@Field_27949_112482 T@PolymorphicMapType_39929)) (|PolymorphicMapType_39380_39440_112349#PolymorphicMapType_39380| (Array T@Ref T@Field_27949_112349 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_39440_53)
(declare-fun Ref__Integer_value () T@Field_45532_3877)
(declare-sort T@Seq_46574 0)
(declare-fun |Seq#Length_27988| (T@Seq_46574) Int)
(declare-fun |Seq#Drop_27988| (T@Seq_46574 Int) T@Seq_46574)
(declare-sort T@Seq_3755 0)
(declare-fun |Seq#Length_3755| (T@Seq_3755) Int)
(declare-fun |Seq#Drop_3755| (T@Seq_3755 Int) T@Seq_3755)
(declare-fun state (T@PolymorphicMapType_39380 T@PolymorphicMapType_39401) Bool)
(declare-fun |count_square'| (T@PolymorphicMapType_39380 Int Int Int Int Int Int T@Seq_46574 Int) Int)
(declare-fun |count_square#frame| (T@FrameType Int Int Int Int Int Int T@Seq_46574 Int) Int)
(declare-fun FrameFragment_4736 (Int) T@FrameType)
(declare-fun |count_square#condqp3| (T@PolymorphicMapType_39380 Int Int Int Int Int Int T@Seq_46574 Int) Int)
(declare-fun succHeap (T@PolymorphicMapType_39380 T@PolymorphicMapType_39380) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_39380 T@PolymorphicMapType_39380) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_39401) Bool)
(declare-fun |sum_list'| (T@PolymorphicMapType_39380 Int Int T@Seq_3755) Int)
(declare-fun dummyFunction_4184 (Int) Bool)
(declare-fun |sum_list#triggerStateless| (Int Int T@Seq_3755) Int)
(declare-fun ZeroPMask () T@PolymorphicMapType_39929)
(declare-fun |Seq#Index_27988| (T@Seq_46574 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3755| (T@Seq_3755 Int) Int)
(declare-fun |Seq#Empty_27988| () T@Seq_46574)
(declare-fun |Seq#Empty_3755| () T@Seq_3755)
(declare-fun |Seq#Update_27988| (T@Seq_46574 Int T@Ref) T@Seq_46574)
(declare-fun |Seq#Update_3755| (T@Seq_3755 Int Int) T@Seq_3755)
(declare-fun |Seq#Take_27988| (T@Seq_46574 Int) T@Seq_46574)
(declare-fun |Seq#Take_3755| (T@Seq_3755 Int) T@Seq_3755)
(declare-fun |Seq#Contains_3755| (T@Seq_3755 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3755)
(declare-fun |Seq#Contains_46574| (T@Seq_46574 T@Ref) Bool)
(declare-fun |Seq#Skolem_46574| (T@Seq_46574 T@Ref) Int)
(declare-fun |Seq#Skolem_3755| (T@Seq_3755 Int) Int)
(declare-fun sum_array (T@PolymorphicMapType_39380 Int Int Int T@Seq_46574) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |sum_array'| (T@PolymorphicMapType_39380 Int Int Int T@Seq_46574) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_39380 T@PolymorphicMapType_39380 T@PolymorphicMapType_39401) Bool)
(declare-fun IsPredicateField_27949_112440 (T@Field_27949_112349) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_27949 (T@Field_27949_112349) T@Field_27949_112482)
(declare-fun HasDirectPerm_27949_112413 (T@PolymorphicMapType_39401 T@Ref T@Field_27949_112349) Bool)
(declare-fun IsWandField_27949_114187 (T@Field_27949_112349) Bool)
(declare-fun WandMaskField_27949 (T@Field_27949_112349) T@Field_27949_112482)
(declare-fun |Seq#Singleton_27988| (T@Ref) T@Seq_46574)
(declare-fun |Seq#Singleton_3755| (Int) T@Seq_3755)
(declare-fun count_square (T@PolymorphicMapType_39380 Int Int Int Int Int Int T@Seq_46574 Int) Int)
(declare-fun |count_square#triggerStateless| (Int Int Int Int Int Int T@Seq_46574 Int) Int)
(declare-fun |Seq#Append_46574| (T@Seq_46574 T@Seq_46574) T@Seq_46574)
(declare-fun |Seq#Append_3755| (T@Seq_3755 T@Seq_3755) T@Seq_3755)
(declare-fun |sum_square#condqp2| (T@PolymorphicMapType_39380 Int Int Int Int Int Int T@Seq_46574) Int)
(declare-fun |sk_sum_square#condqp2| (Int Int) Int)
(declare-fun |sk_count_square#condqp3| (Int Int) Int)
(declare-fun dummyHeap () T@PolymorphicMapType_39380)
(declare-fun ZeroMask () T@PolymorphicMapType_39401)
(declare-fun sum_square (T@PolymorphicMapType_39380 Int Int Int Int Int Int T@Seq_46574) Int)
(declare-fun |sum_square'| (T@PolymorphicMapType_39380 Int Int Int Int Int Int T@Seq_46574) Int)
(declare-fun InsidePredicate_39440_39440 (T@Field_27949_112349 T@FrameType T@Field_27949_112349 T@FrameType) Bool)
(declare-fun IsPredicateField_27949_3877 (T@Field_45532_3877) Bool)
(declare-fun IsWandField_27949_3877 (T@Field_45532_3877) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_27949_117733 (T@Field_27949_112482) Bool)
(declare-fun IsWandField_27949_117749 (T@Field_27949_112482) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_27949_39454 (T@Field_39453_39454) Bool)
(declare-fun IsWandField_27949_39454 (T@Field_39453_39454) Bool)
(declare-fun IsPredicateField_27949_53 (T@Field_39440_53) Bool)
(declare-fun IsWandField_27949_53 (T@Field_39440_53) Bool)
(declare-fun |sum_list#frame| (T@FrameType Int Int T@Seq_3755) Int)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun HasDirectPerm_27949_118187 (T@PolymorphicMapType_39401 T@Ref T@Field_27949_112482) Bool)
(declare-fun HasDirectPerm_27949_39454 (T@PolymorphicMapType_39401 T@Ref T@Field_39453_39454) Bool)
(declare-fun HasDirectPerm_27949_53 (T@PolymorphicMapType_39401 T@Ref T@Field_39440_53) Bool)
(declare-fun HasDirectPerm_27949_3877 (T@PolymorphicMapType_39401 T@Ref T@Field_45532_3877) Bool)
(declare-fun |sum_array#triggerStateless| (Int Int Int T@Seq_46574) Int)
(declare-fun |count_list'| (T@PolymorphicMapType_39380 Int Int T@Seq_3755 Int) Int)
(declare-fun |count_list#triggerStateless| (Int Int T@Seq_3755 Int) Int)
(declare-fun |count_array'| (T@PolymorphicMapType_39380 Int Int T@Seq_46574 Int) Int)
(declare-fun |count_array#triggerStateless| (Int Int T@Seq_46574 Int) Int)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun count_list (T@PolymorphicMapType_39380 Int Int T@Seq_3755 Int) Int)
(declare-fun count_array (T@PolymorphicMapType_39380 Int Int T@Seq_46574 Int) Int)
(declare-fun sumMask (T@PolymorphicMapType_39401 T@PolymorphicMapType_39401 T@PolymorphicMapType_39401) Bool)
(declare-fun |sum_square#triggerStateless| (Int Int Int Int Int Int T@Seq_46574) Int)
(declare-fun |count_list#frame| (T@FrameType Int Int T@Seq_3755 Int) Int)
(declare-fun |Seq#Equal_46574| (T@Seq_46574 T@Seq_46574) Bool)
(declare-fun |Seq#Equal_3755| (T@Seq_3755 T@Seq_3755) Bool)
(declare-fun sum_list (T@PolymorphicMapType_39380 Int Int T@Seq_3755) Int)
(declare-fun |Seq#ContainsTrigger_27988| (T@Seq_46574 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3755| (T@Seq_3755 Int) Bool)
(declare-fun |count_array#condqp4| (T@PolymorphicMapType_39380 Int Int T@Seq_46574 Int) Int)
(declare-fun |sk_count_array#condqp4| (Int Int) Int)
(declare-fun |sum_array#condqp1| (T@PolymorphicMapType_39380 Int Int Int T@Seq_46574) Int)
(declare-fun |sk_sum_array#condqp1| (Int Int) Int)
(declare-fun |sum_square#frame| (T@FrameType Int Int Int Int Int Int T@Seq_46574) Int)
(declare-fun |Seq#SkolemDiff_46574| (T@Seq_46574 T@Seq_46574) Int)
(declare-fun |Seq#SkolemDiff_3755| (T@Seq_3755 T@Seq_3755) Int)
(declare-fun |sum_array#frame| (T@FrameType Int Int Int T@Seq_46574) Int)
(declare-fun |count_array#frame| (T@FrameType Int Int T@Seq_46574 Int) Int)
(assert (forall ((s T@Seq_46574) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_27988| s)) (= (|Seq#Length_27988| (|Seq#Drop_27988| s n)) (- (|Seq#Length_27988| s) n))) (=> (< (|Seq#Length_27988| s) n) (= (|Seq#Length_27988| (|Seq#Drop_27988| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_27988| (|Seq#Drop_27988| s n)) (|Seq#Length_27988| s))))
 :qid |stdinbpl.404:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_27988| (|Seq#Drop_27988| s n)))
 :pattern ( (|Seq#Length_27988| s) (|Seq#Drop_27988| s n))
)))
(assert (forall ((s@@0 T@Seq_3755) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3755| s@@0)) (= (|Seq#Length_3755| (|Seq#Drop_3755| s@@0 n@@0)) (- (|Seq#Length_3755| s@@0) n@@0))) (=> (< (|Seq#Length_3755| s@@0) n@@0) (= (|Seq#Length_3755| (|Seq#Drop_3755| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3755| (|Seq#Drop_3755| s@@0 n@@0)) (|Seq#Length_3755| s@@0))))
 :qid |stdinbpl.404:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3755| (|Seq#Drop_3755| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3755| s@@0) (|Seq#Drop_3755| s@@0 n@@0))
)))
(assert (forall ((Heap T@PolymorphicMapType_39380) (Mask T@PolymorphicMapType_39401) (i Int) (lo Int) (hi Int) (step Int) (vmin Int) (vmax_1 Int) (ar_1 T@Seq_46574) (v_2 Int) ) (!  (=> (state Heap Mask) (= (|count_square'| Heap i lo hi step vmin vmax_1 ar_1 v_2) (|count_square#frame| (FrameFragment_4736 (|count_square#condqp3| Heap i lo hi step vmin vmax_1 ar_1 v_2)) i lo hi step vmin vmax_1 ar_1 v_2)))
 :qid |stdinbpl.1292:15|
 :skolemid |108|
 :pattern ( (state Heap Mask) (|count_square'| Heap i lo hi step vmin vmax_1 ar_1 v_2))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_39380) (Heap1 T@PolymorphicMapType_39380) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_39380) (Mask@@0 T@PolymorphicMapType_39401) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_39380) (Heap1@@0 T@PolymorphicMapType_39380) (Heap2 T@PolymorphicMapType_39380) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_39380) (i@@0 Int) (hi@@0 Int) (ar_1@@0 T@Seq_3755) ) (! (dummyFunction_4184 (|sum_list#triggerStateless| i@@0 hi@@0 ar_1@@0))
 :qid |stdinbpl.690:15|
 :skolemid |59|
 :pattern ( (|sum_list'| Heap@@1 i@@0 hi@@0 ar_1@@0))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_27949_112482) ) (!  (not (select (|PolymorphicMapType_39929_39440_113660#PolymorphicMapType_39929| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_39929_39440_113660#PolymorphicMapType_39929| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_27949_112349) ) (!  (not (select (|PolymorphicMapType_39929_39440_112349#PolymorphicMapType_39929| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_39929_39440_112349#PolymorphicMapType_39929| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_45532_3877) ) (!  (not (select (|PolymorphicMapType_39929_39440_3877#PolymorphicMapType_39929| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_39929_39440_3877#PolymorphicMapType_39929| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_39453_39454) ) (!  (not (select (|PolymorphicMapType_39929_39440_39454#PolymorphicMapType_39929| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_39929_39440_39454#PolymorphicMapType_39929| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_39440_53) ) (!  (not (select (|PolymorphicMapType_39929_39440_53#PolymorphicMapType_39929| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_39929_39440_53#PolymorphicMapType_39929| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((s@@1 T@Seq_46574) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_27988| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_27988| (|Seq#Drop_27988| s@@1 n@@1) j) (|Seq#Index_27988| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.425:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_27988| (|Seq#Drop_27988| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3755) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3755| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3755| (|Seq#Drop_3755| s@@2 n@@2) j@@0) (|Seq#Index_3755| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.425:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3755| (|Seq#Drop_3755| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_27988| |Seq#Empty_27988|) 0))
(assert (= (|Seq#Length_3755| |Seq#Empty_3755|) 0))
(assert (forall ((s@@3 T@Seq_46574) (i@@1 Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_27988| s@@3))) (and (=> (= i@@1 n@@3) (= (|Seq#Index_27988| (|Seq#Update_27988| s@@3 i@@1 v) n@@3) v)) (=> (not (= i@@1 n@@3)) (= (|Seq#Index_27988| (|Seq#Update_27988| s@@3 i@@1 v) n@@3) (|Seq#Index_27988| s@@3 n@@3)))))
 :qid |stdinbpl.380:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_27988| (|Seq#Update_27988| s@@3 i@@1 v) n@@3))
 :pattern ( (|Seq#Index_27988| s@@3 n@@3) (|Seq#Update_27988| s@@3 i@@1 v))
)))
(assert (forall ((s@@4 T@Seq_3755) (i@@2 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3755| s@@4))) (and (=> (= i@@2 n@@4) (= (|Seq#Index_3755| (|Seq#Update_3755| s@@4 i@@2 v@@0) n@@4) v@@0)) (=> (not (= i@@2 n@@4)) (= (|Seq#Index_3755| (|Seq#Update_3755| s@@4 i@@2 v@@0) n@@4) (|Seq#Index_3755| s@@4 n@@4)))))
 :qid |stdinbpl.380:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3755| (|Seq#Update_3755| s@@4 i@@2 v@@0) n@@4))
 :pattern ( (|Seq#Index_3755| s@@4 n@@4) (|Seq#Update_3755| s@@4 i@@2 v@@0))
)))
(assert (forall ((s@@5 T@Seq_46574) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_27988| s@@5)) (= (|Seq#Length_27988| (|Seq#Take_27988| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_27988| s@@5) n@@5) (= (|Seq#Length_27988| (|Seq#Take_27988| s@@5 n@@5)) (|Seq#Length_27988| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_27988| (|Seq#Take_27988| s@@5 n@@5)) 0)))
 :qid |stdinbpl.391:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_27988| (|Seq#Take_27988| s@@5 n@@5)))
 :pattern ( (|Seq#Take_27988| s@@5 n@@5) (|Seq#Length_27988| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3755) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3755| s@@6)) (= (|Seq#Length_3755| (|Seq#Take_3755| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3755| s@@6) n@@6) (= (|Seq#Length_3755| (|Seq#Take_3755| s@@6 n@@6)) (|Seq#Length_3755| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3755| (|Seq#Take_3755| s@@6 n@@6)) 0)))
 :qid |stdinbpl.391:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3755| (|Seq#Take_3755| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3755| s@@6 n@@6) (|Seq#Length_3755| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3755| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.665:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3755| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_46574) (x T@Ref) ) (!  (=> (|Seq#Contains_46574| s@@7 x) (and (and (<= 0 (|Seq#Skolem_46574| s@@7 x)) (< (|Seq#Skolem_46574| s@@7 x) (|Seq#Length_27988| s@@7))) (= (|Seq#Index_27988| s@@7 (|Seq#Skolem_46574| s@@7 x)) x)))
 :qid |stdinbpl.523:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_46574| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3755) (x@@0 Int) ) (!  (=> (|Seq#Contains_3755| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3755| s@@8 x@@0)) (< (|Seq#Skolem_3755| s@@8 x@@0) (|Seq#Length_3755| s@@8))) (= (|Seq#Index_3755| s@@8 (|Seq#Skolem_3755| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.523:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3755| s@@8 x@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_39380) (Mask@@1 T@PolymorphicMapType_39401) (i@@3 Int) (lo@@0 Int) (hi@@1 Int) (ar_1@@1 T@Seq_46574) ) (!  (=> (and (state Heap@@2 Mask@@1) (< AssumeFunctionsAbove 1)) (=> (and (and (and (<= 0 lo@@0) (and (<= lo@@0 i@@3) (<= i@@3 hi@@1))) (<= hi@@1 (|Seq#Length_27988| ar_1@@1))) (forall ((k Int) (j@@1 Int) ) (!  (=> (and (>= k 0) (and (< k (|Seq#Length_27988| ar_1@@1)) (and (>= j@@1 0) (and (< j@@1 (|Seq#Length_27988| ar_1@@1)) (not (= k j@@1)))))) (not (= (|Seq#Index_27988| ar_1@@1 k) (|Seq#Index_27988| ar_1@@1 j@@1))))
 :qid |stdinbpl.783:126|
 :skolemid |64|
 :pattern ( (|Seq#Index_27988| ar_1@@1 k) (|Seq#Index_27988| ar_1@@1 j@@1))
))) (= (sum_array Heap@@2 i@@3 lo@@0 hi@@1 ar_1@@1) (ite (< i@@3 hi@@1) (+ (select (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| Heap@@2) (|Seq#Index_27988| ar_1@@1 i@@3) Ref__Integer_value) (|sum_array'| Heap@@2 (+ i@@3 1) lo@@0 hi@@1 ar_1@@1)) 0))))
 :qid |stdinbpl.781:15|
 :skolemid |65|
 :pattern ( (state Heap@@2 Mask@@1) (sum_array Heap@@2 i@@3 lo@@0 hi@@1 ar_1@@1))
)))
(assert (forall ((s@@9 T@Seq_46574) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_27988| s@@9 n@@7) s@@9))
 :qid |stdinbpl.507:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_27988| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3755) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3755| s@@10 n@@8) s@@10))
 :qid |stdinbpl.507:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3755| s@@10 n@@8))
)))
(assert (forall ((i@@4 Int) (j@@2 Int) ) (! (= (|Seq#Sub| i@@4 j@@2) (- i@@4 j@@2))
 :qid |stdinbpl.360:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@4 j@@2))
)))
(assert (forall ((i@@5 Int) (j@@3 Int) ) (! (= (|Seq#Add| i@@5 j@@3) (+ i@@5 j@@3))
 :qid |stdinbpl.358:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@5 j@@3))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_39380) (ExhaleHeap T@PolymorphicMapType_39380) (Mask@@2 T@PolymorphicMapType_39401) (pm_f_3 T@Field_27949_112349) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@2) (=> (and (HasDirectPerm_27949_112413 Mask@@2 null pm_f_3) (IsPredicateField_27949_112440 pm_f_3)) (= (select (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| Heap@@3) null (PredicateMaskField_27949 pm_f_3)) (select (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| ExhaleHeap) null (PredicateMaskField_27949 pm_f_3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@2) (IsPredicateField_27949_112440 pm_f_3) (select (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| ExhaleHeap) null (PredicateMaskField_27949 pm_f_3)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_39380) (ExhaleHeap@@0 T@PolymorphicMapType_39380) (Mask@@3 T@PolymorphicMapType_39401) (pm_f_3@@0 T@Field_27949_112349) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@3) (=> (and (HasDirectPerm_27949_112413 Mask@@3 null pm_f_3@@0) (IsWandField_27949_114187 pm_f_3@@0)) (= (select (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| Heap@@4) null (WandMaskField_27949 pm_f_3@@0)) (select (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| ExhaleHeap@@0) null (WandMaskField_27949 pm_f_3@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@3) (IsWandField_27949_114187 pm_f_3@@0) (select (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| ExhaleHeap@@0) null (WandMaskField_27949 pm_f_3@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_46574| (|Seq#Singleton_27988| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.648:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_46574| (|Seq#Singleton_27988| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3755| (|Seq#Singleton_3755| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.648:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3755| (|Seq#Singleton_3755| x@@2) y@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_39380) (i@@6 Int) (lo@@1 Int) (hi@@2 Int) (step@@0 Int) (vmin@@0 Int) (vmax_1@@0 Int) (ar_1@@2 T@Seq_46574) (v_2@@0 Int) ) (!  (and (= (count_square Heap@@5 i@@6 lo@@1 hi@@2 step@@0 vmin@@0 vmax_1@@0 ar_1@@2 v_2@@0) (|count_square'| Heap@@5 i@@6 lo@@1 hi@@2 step@@0 vmin@@0 vmax_1@@0 ar_1@@2 v_2@@0)) (dummyFunction_4184 (|count_square#triggerStateless| i@@6 lo@@1 hi@@2 step@@0 vmin@@0 vmax_1@@0 ar_1@@2 v_2@@0)))
 :qid |stdinbpl.1272:15|
 :skolemid |104|
 :pattern ( (count_square Heap@@5 i@@6 lo@@1 hi@@2 step@@0 vmin@@0 vmax_1@@0 ar_1@@2 v_2@@0))
)))
(assert (forall ((s@@11 T@Seq_46574) (n@@9 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@9)) (< j@@4 (|Seq#Length_27988| s@@11))) (= (|Seq#Index_27988| (|Seq#Take_27988| s@@11 n@@9) j@@4) (|Seq#Index_27988| s@@11 j@@4)))
 :qid |stdinbpl.399:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_27988| (|Seq#Take_27988| s@@11 n@@9) j@@4))
 :pattern ( (|Seq#Index_27988| s@@11 j@@4) (|Seq#Take_27988| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3755) (n@@10 Int) (j@@5 Int) ) (!  (=> (and (and (<= 0 j@@5) (< j@@5 n@@10)) (< j@@5 (|Seq#Length_3755| s@@12))) (= (|Seq#Index_3755| (|Seq#Take_3755| s@@12 n@@10) j@@5) (|Seq#Index_3755| s@@12 j@@5)))
 :qid |stdinbpl.399:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3755| (|Seq#Take_3755| s@@12 n@@10) j@@5))
 :pattern ( (|Seq#Index_3755| s@@12 j@@5) (|Seq#Take_3755| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_46574) (t T@Seq_46574) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_27988| s@@13))) (< n@@11 (|Seq#Length_27988| (|Seq#Append_46574| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_27988| s@@13)) (|Seq#Length_27988| s@@13)) n@@11) (= (|Seq#Take_27988| (|Seq#Append_46574| s@@13 t) n@@11) (|Seq#Append_46574| s@@13 (|Seq#Take_27988| t (|Seq#Sub| n@@11 (|Seq#Length_27988| s@@13)))))))
 :qid |stdinbpl.484:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_27988| (|Seq#Append_46574| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3755) (t@@0 T@Seq_3755) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3755| s@@14))) (< n@@12 (|Seq#Length_3755| (|Seq#Append_3755| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3755| s@@14)) (|Seq#Length_3755| s@@14)) n@@12) (= (|Seq#Take_3755| (|Seq#Append_3755| s@@14 t@@0) n@@12) (|Seq#Append_3755| s@@14 (|Seq#Take_3755| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3755| s@@14)))))))
 :qid |stdinbpl.484:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3755| (|Seq#Append_3755| s@@14 t@@0) n@@12))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_39380) (i@@7 Int) (lo@@2 Int) (hi@@3 Int) (step@@1 Int) (vmin@@1 Int) (vmax_1@@1 Int) (ar_1@@3 T@Seq_46574) (v_2@@1 Int) ) (! (dummyFunction_4184 (|count_square#triggerStateless| i@@7 lo@@2 hi@@3 step@@1 vmin@@1 vmax_1@@1 ar_1@@3 v_2@@1))
 :qid |stdinbpl.1276:15|
 :skolemid |105|
 :pattern ( (|count_square'| Heap@@6 i@@7 lo@@2 hi@@3 step@@1 vmin@@1 vmax_1@@1 ar_1@@3 v_2@@1))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_39380) (Heap1Heap T@PolymorphicMapType_39380) (i@@8 Int) (lo@@3 Int) (hi@@4 Int) (step@@2 Int) (vmin@@2 Int) (vmax_1@@2 Int) (ar_1@@4 T@Seq_46574) ) (!  (=> (and (=  (and (<= vmin@@2 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) vmax_1@@2) (and (<= lo@@3 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2) hi@@4))))  (and (<= vmin@@2 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) vmax_1@@2) (and (<= lo@@3 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2) hi@@4))))) (=> (and (<= vmin@@2 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) vmax_1@@2) (and (<= lo@@3 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2) hi@@4)))) (= (select (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| Heap2Heap) (|Seq#Index_27988| ar_1@@4 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) Ref__Integer_value) (select (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| Heap1Heap) (|Seq#Index_27988| ar_1@@4 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) Ref__Integer_value)))) (= (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)))
 :qid |stdinbpl.1036:15|
 :skolemid |88|
 :pattern ( (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_39380) (Heap1Heap@@0 T@PolymorphicMapType_39380) (i@@9 Int) (lo@@4 Int) (hi@@5 Int) (step@@3 Int) (vmin@@3 Int) (vmax_1@@3 Int) (ar_1@@5 T@Seq_46574) (v_2@@2 Int) ) (!  (=> (and (=  (and (<= vmin@@3 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) vmax_1@@3) (and (<= lo@@4 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) step@@3)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) step@@3) hi@@5))))  (and (<= vmin@@3 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) vmax_1@@3) (and (<= lo@@4 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) step@@3)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) step@@3) hi@@5))))) (=> (and (<= vmin@@3 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) vmax_1@@3) (and (<= lo@@4 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) step@@3)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) step@@3) hi@@5)))) (= (select (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| Heap2Heap@@0) (|Seq#Index_27988| ar_1@@5 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2))) Ref__Integer_value) (select (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| Heap1Heap@@0) (|Seq#Index_27988| ar_1@@5 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2))) Ref__Integer_value)))) (= (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)))
 :qid |stdinbpl.1302:15|
 :skolemid |109|
 :pattern ( (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@7 T@PolymorphicMapType_39380) (Mask@@4 T@PolymorphicMapType_39401) (i@@10 Int) (lo@@5 Int) (hi@@6 Int) (step@@4 Int) (vmin@@4 Int) (vmax_1@@4 Int) (ar_1@@6 T@Seq_46574) ) (!  (=> (and (state Heap@@7 Mask@@4) (< AssumeFunctionsAbove 2)) (=> (and (and (and (and (<= 0 lo@@5) (and (<= lo@@5 hi@@6) (and (<= hi@@6 step@@4) (> step@@4 0)))) (and (<= 0 vmin@@4) (and (<= vmin@@4 i@@10) (<= i@@10 vmax_1@@4)))) (<= vmax_1@@4 (|Seq#Length_27988| ar_1@@6))) (forall ((k@@0 Int) (j@@6 Int) ) (!  (=> (and (>= k@@0 0) (and (< k@@0 (|Seq#Length_27988| ar_1@@6)) (and (>= j@@6 0) (and (< j@@6 (|Seq#Length_27988| ar_1@@6)) (not (= k@@0 j@@6)))))) (not (= (|Seq#Index_27988| ar_1@@6 k@@0) (|Seq#Index_27988| ar_1@@6 j@@6))))
 :qid |stdinbpl.1018:195|
 :skolemid |85|
 :pattern ( (|Seq#Index_27988| ar_1@@6 k@@0) (|Seq#Index_27988| ar_1@@6 j@@6))
))) (= (sum_square Heap@@7 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6) (ite (< i@@10 vmax_1@@4) (+ (ite  (and (<= lo@@5 (mod i@@10 step@@4)) (< (mod i@@10 step@@4) hi@@6)) (select (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| Heap@@7) (|Seq#Index_27988| ar_1@@6 i@@10) Ref__Integer_value) 0) (|sum_square'| Heap@@7 (+ i@@10 1) lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6)) 0))))
 :qid |stdinbpl.1016:15|
 :skolemid |86|
 :pattern ( (state Heap@@7 Mask@@4) (sum_square Heap@@7 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_39380) (ExhaleHeap@@1 T@PolymorphicMapType_39380) (Mask@@5 T@PolymorphicMapType_39401) (o_11 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@5) (=> (select (|PolymorphicMapType_39380_27687_53#PolymorphicMapType_39380| Heap@@8) o_11 $allocated) (select (|PolymorphicMapType_39380_27687_53#PolymorphicMapType_39380| ExhaleHeap@@1) o_11 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@5) (select (|PolymorphicMapType_39380_27687_53#PolymorphicMapType_39380| ExhaleHeap@@1) o_11 $allocated))
)))
(assert (forall ((p T@Field_27949_112349) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_39440_39440 p v_1 p w))
 :qid |stdinbpl.302:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_39440_39440 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_46574) (s1 T@Seq_46574) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_27988|)) (not (= s1 |Seq#Empty_27988|))) (<= (|Seq#Length_27988| s0) n@@13)) (< n@@13 (|Seq#Length_27988| (|Seq#Append_46574| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_27988| s0)) (|Seq#Length_27988| s0)) n@@13) (= (|Seq#Index_27988| (|Seq#Append_46574| s0 s1) n@@13) (|Seq#Index_27988| s1 (|Seq#Sub| n@@13 (|Seq#Length_27988| s0))))))
 :qid |stdinbpl.371:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_27988| (|Seq#Append_46574| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3755) (s1@@0 T@Seq_3755) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3755|)) (not (= s1@@0 |Seq#Empty_3755|))) (<= (|Seq#Length_3755| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3755| (|Seq#Append_3755| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3755| s0@@0)) (|Seq#Length_3755| s0@@0)) n@@14) (= (|Seq#Index_3755| (|Seq#Append_3755| s0@@0 s1@@0) n@@14) (|Seq#Index_3755| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3755| s0@@0))))))
 :qid |stdinbpl.371:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3755| (|Seq#Append_3755| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_27949_3877 Ref__Integer_value)))
(assert  (not (IsWandField_27949_3877 Ref__Integer_value)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_39380) (ExhaleHeap@@2 T@PolymorphicMapType_39380) (Mask@@6 T@PolymorphicMapType_39401) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@6) (succHeap Heap@@9 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_39401) (o_2@@4 T@Ref) (f_4@@4 T@Field_27949_112482) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_39401_27949_116604#PolymorphicMapType_39401| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_27949_117733 f_4@@4))) (not (IsWandField_27949_117749 f_4@@4))) (<= (select (|PolymorphicMapType_39401_27949_116604#PolymorphicMapType_39401| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_39401_27949_116604#PolymorphicMapType_39401| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_39401) (o_2@@5 T@Ref) (f_4@@5 T@Field_27949_112349) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_39401_27949_112349#PolymorphicMapType_39401| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_27949_112440 f_4@@5))) (not (IsWandField_27949_114187 f_4@@5))) (<= (select (|PolymorphicMapType_39401_27949_112349#PolymorphicMapType_39401| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_39401_27949_112349#PolymorphicMapType_39401| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_39401) (o_2@@6 T@Ref) (f_4@@6 T@Field_39453_39454) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_39401_27949_39454#PolymorphicMapType_39401| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_27949_39454 f_4@@6))) (not (IsWandField_27949_39454 f_4@@6))) (<= (select (|PolymorphicMapType_39401_27949_39454#PolymorphicMapType_39401| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_39401_27949_39454#PolymorphicMapType_39401| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_39401) (o_2@@7 T@Ref) (f_4@@7 T@Field_39440_53) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_39401_27949_53#PolymorphicMapType_39401| Mask@@10) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_27949_53 f_4@@7))) (not (IsWandField_27949_53 f_4@@7))) (<= (select (|PolymorphicMapType_39401_27949_53#PolymorphicMapType_39401| Mask@@10) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_39401_27949_53#PolymorphicMapType_39401| Mask@@10) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_39401) (o_2@@8 T@Ref) (f_4@@8 T@Field_45532_3877) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| Mask@@11) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_27949_3877 f_4@@8))) (not (IsWandField_27949_3877 f_4@@8))) (<= (select (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| Mask@@11) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| Mask@@11) o_2@@8 f_4@@8))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_39380) (Mask@@12 T@PolymorphicMapType_39401) (i@@11 Int) (hi@@7 Int) (ar_1@@7 T@Seq_3755) ) (!  (=> (state Heap@@10 Mask@@12) (= (|sum_list'| Heap@@10 i@@11 hi@@7 ar_1@@7) (|sum_list#frame| EmptyFrame i@@11 hi@@7 ar_1@@7)))
 :qid |stdinbpl.703:15|
 :skolemid |61|
 :pattern ( (state Heap@@10 Mask@@12) (|sum_list'| Heap@@10 i@@11 hi@@7 ar_1@@7))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_39401) (o_2@@9 T@Ref) (f_4@@9 T@Field_27949_112482) ) (! (= (HasDirectPerm_27949_118187 Mask@@13 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_39401_27949_116604#PolymorphicMapType_39401| Mask@@13) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_27949_118187 Mask@@13 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_39401) (o_2@@10 T@Ref) (f_4@@10 T@Field_27949_112349) ) (! (= (HasDirectPerm_27949_112413 Mask@@14 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_39401_27949_112349#PolymorphicMapType_39401| Mask@@14) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_27949_112413 Mask@@14 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_39401) (o_2@@11 T@Ref) (f_4@@11 T@Field_39453_39454) ) (! (= (HasDirectPerm_27949_39454 Mask@@15 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_39401_27949_39454#PolymorphicMapType_39401| Mask@@15) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_27949_39454 Mask@@15 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_39401) (o_2@@12 T@Ref) (f_4@@12 T@Field_39440_53) ) (! (= (HasDirectPerm_27949_53 Mask@@16 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_39401_27949_53#PolymorphicMapType_39401| Mask@@16) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_27949_53 Mask@@16 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_39401) (o_2@@13 T@Ref) (f_4@@13 T@Field_45532_3877) ) (! (= (HasDirectPerm_27949_3877 Mask@@17 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| Mask@@17) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_27949_3877 Mask@@17 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_39380) (i@@12 Int) (lo@@6 Int) (hi@@8 Int) (ar_1@@8 T@Seq_46574) ) (! (dummyFunction_4184 (|sum_array#triggerStateless| i@@12 lo@@6 hi@@8 ar_1@@8))
 :qid |stdinbpl.775:15|
 :skolemid |63|
 :pattern ( (|sum_array'| Heap@@11 i@@12 lo@@6 hi@@8 ar_1@@8))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_39380) (i@@13 Int) (hi@@9 Int) (ar_1@@9 T@Seq_3755) (v_2@@3 Int) ) (! (dummyFunction_4184 (|count_list#triggerStateless| i@@13 hi@@9 ar_1@@9 v_2@@3))
 :qid |stdinbpl.1542:15|
 :skolemid |126|
 :pattern ( (|count_list'| Heap@@12 i@@13 hi@@9 ar_1@@9 v_2@@3))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_39380) (i@@14 Int) (hi@@10 Int) (ar_1@@10 T@Seq_46574) (v_2@@4 Int) ) (! (dummyFunction_4184 (|count_array#triggerStateless| i@@14 hi@@10 ar_1@@10 v_2@@4))
 :qid |stdinbpl.1627:15|
 :skolemid |130|
 :pattern ( (|count_array'| Heap@@13 i@@14 hi@@10 ar_1@@10 v_2@@4))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_39380) (ExhaleHeap@@3 T@PolymorphicMapType_39380) (Mask@@18 T@PolymorphicMapType_39401) (pm_f_3@@1 T@Field_27949_112349) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@3 Mask@@18) (=> (and (HasDirectPerm_27949_112413 Mask@@18 null pm_f_3@@1) (IsPredicateField_27949_112440 pm_f_3@@1)) (and (and (and (and (forall ((o2_3 T@Ref) (f_17 T@Field_39440_53) ) (!  (=> (select (|PolymorphicMapType_39929_39440_53#PolymorphicMapType_39929| (select (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| Heap@@14) null (PredicateMaskField_27949 pm_f_3@@1))) o2_3 f_17) (= (select (|PolymorphicMapType_39380_27687_53#PolymorphicMapType_39380| Heap@@14) o2_3 f_17) (select (|PolymorphicMapType_39380_27687_53#PolymorphicMapType_39380| ExhaleHeap@@3) o2_3 f_17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_39380_27687_53#PolymorphicMapType_39380| ExhaleHeap@@3) o2_3 f_17))
)) (forall ((o2_3@@0 T@Ref) (f_17@@0 T@Field_39453_39454) ) (!  (=> (select (|PolymorphicMapType_39929_39440_39454#PolymorphicMapType_39929| (select (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| Heap@@14) null (PredicateMaskField_27949 pm_f_3@@1))) o2_3@@0 f_17@@0) (= (select (|PolymorphicMapType_39380_27690_27691#PolymorphicMapType_39380| Heap@@14) o2_3@@0 f_17@@0) (select (|PolymorphicMapType_39380_27690_27691#PolymorphicMapType_39380| ExhaleHeap@@3) o2_3@@0 f_17@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_39380_27690_27691#PolymorphicMapType_39380| ExhaleHeap@@3) o2_3@@0 f_17@@0))
))) (forall ((o2_3@@1 T@Ref) (f_17@@1 T@Field_45532_3877) ) (!  (=> (select (|PolymorphicMapType_39929_39440_3877#PolymorphicMapType_39929| (select (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| Heap@@14) null (PredicateMaskField_27949 pm_f_3@@1))) o2_3@@1 f_17@@1) (= (select (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| Heap@@14) o2_3@@1 f_17@@1) (select (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| ExhaleHeap@@3) o2_3@@1 f_17@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| ExhaleHeap@@3) o2_3@@1 f_17@@1))
))) (forall ((o2_3@@2 T@Ref) (f_17@@2 T@Field_27949_112349) ) (!  (=> (select (|PolymorphicMapType_39929_39440_112349#PolymorphicMapType_39929| (select (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| Heap@@14) null (PredicateMaskField_27949 pm_f_3@@1))) o2_3@@2 f_17@@2) (= (select (|PolymorphicMapType_39380_39440_112349#PolymorphicMapType_39380| Heap@@14) o2_3@@2 f_17@@2) (select (|PolymorphicMapType_39380_39440_112349#PolymorphicMapType_39380| ExhaleHeap@@3) o2_3@@2 f_17@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_39380_39440_112349#PolymorphicMapType_39380| ExhaleHeap@@3) o2_3@@2 f_17@@2))
))) (forall ((o2_3@@3 T@Ref) (f_17@@3 T@Field_27949_112482) ) (!  (=> (select (|PolymorphicMapType_39929_39440_113660#PolymorphicMapType_39929| (select (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| Heap@@14) null (PredicateMaskField_27949 pm_f_3@@1))) o2_3@@3 f_17@@3) (= (select (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| Heap@@14) o2_3@@3 f_17@@3) (select (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| ExhaleHeap@@3) o2_3@@3 f_17@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| ExhaleHeap@@3) o2_3@@3 f_17@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@3 Mask@@18) (IsPredicateField_27949_112440 pm_f_3@@1))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_39380) (ExhaleHeap@@4 T@PolymorphicMapType_39380) (Mask@@19 T@PolymorphicMapType_39401) (pm_f_3@@2 T@Field_27949_112349) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@4 Mask@@19) (=> (and (HasDirectPerm_27949_112413 Mask@@19 null pm_f_3@@2) (IsWandField_27949_114187 pm_f_3@@2)) (and (and (and (and (forall ((o2_3@@4 T@Ref) (f_17@@4 T@Field_39440_53) ) (!  (=> (select (|PolymorphicMapType_39929_39440_53#PolymorphicMapType_39929| (select (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| Heap@@15) null (WandMaskField_27949 pm_f_3@@2))) o2_3@@4 f_17@@4) (= (select (|PolymorphicMapType_39380_27687_53#PolymorphicMapType_39380| Heap@@15) o2_3@@4 f_17@@4) (select (|PolymorphicMapType_39380_27687_53#PolymorphicMapType_39380| ExhaleHeap@@4) o2_3@@4 f_17@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_39380_27687_53#PolymorphicMapType_39380| ExhaleHeap@@4) o2_3@@4 f_17@@4))
)) (forall ((o2_3@@5 T@Ref) (f_17@@5 T@Field_39453_39454) ) (!  (=> (select (|PolymorphicMapType_39929_39440_39454#PolymorphicMapType_39929| (select (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| Heap@@15) null (WandMaskField_27949 pm_f_3@@2))) o2_3@@5 f_17@@5) (= (select (|PolymorphicMapType_39380_27690_27691#PolymorphicMapType_39380| Heap@@15) o2_3@@5 f_17@@5) (select (|PolymorphicMapType_39380_27690_27691#PolymorphicMapType_39380| ExhaleHeap@@4) o2_3@@5 f_17@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_39380_27690_27691#PolymorphicMapType_39380| ExhaleHeap@@4) o2_3@@5 f_17@@5))
))) (forall ((o2_3@@6 T@Ref) (f_17@@6 T@Field_45532_3877) ) (!  (=> (select (|PolymorphicMapType_39929_39440_3877#PolymorphicMapType_39929| (select (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| Heap@@15) null (WandMaskField_27949 pm_f_3@@2))) o2_3@@6 f_17@@6) (= (select (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| Heap@@15) o2_3@@6 f_17@@6) (select (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| ExhaleHeap@@4) o2_3@@6 f_17@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| ExhaleHeap@@4) o2_3@@6 f_17@@6))
))) (forall ((o2_3@@7 T@Ref) (f_17@@7 T@Field_27949_112349) ) (!  (=> (select (|PolymorphicMapType_39929_39440_112349#PolymorphicMapType_39929| (select (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| Heap@@15) null (WandMaskField_27949 pm_f_3@@2))) o2_3@@7 f_17@@7) (= (select (|PolymorphicMapType_39380_39440_112349#PolymorphicMapType_39380| Heap@@15) o2_3@@7 f_17@@7) (select (|PolymorphicMapType_39380_39440_112349#PolymorphicMapType_39380| ExhaleHeap@@4) o2_3@@7 f_17@@7)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_39380_39440_112349#PolymorphicMapType_39380| ExhaleHeap@@4) o2_3@@7 f_17@@7))
))) (forall ((o2_3@@8 T@Ref) (f_17@@8 T@Field_27949_112482) ) (!  (=> (select (|PolymorphicMapType_39929_39440_113660#PolymorphicMapType_39929| (select (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| Heap@@15) null (WandMaskField_27949 pm_f_3@@2))) o2_3@@8 f_17@@8) (= (select (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| Heap@@15) o2_3@@8 f_17@@8) (select (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| ExhaleHeap@@4) o2_3@@8 f_17@@8)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| ExhaleHeap@@4) o2_3@@8 f_17@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@4 Mask@@19) (IsWandField_27949_114187 pm_f_3@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.290:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3755| (|Seq#Range| q@min@@0 q@max@@0) j@@7) (+ q@min@@0 j@@7)))
 :qid |stdinbpl.663:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3755| (|Seq#Range| q@min@@0 q@max@@0) j@@7))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_39380) (ExhaleHeap@@5 T@PolymorphicMapType_39380) (Mask@@20 T@PolymorphicMapType_39401) (o_11@@0 T@Ref) (f_17@@9 T@Field_27949_112482) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@5 Mask@@20) (=> (HasDirectPerm_27949_118187 Mask@@20 o_11@@0 f_17@@9) (= (select (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| Heap@@16) o_11@@0 f_17@@9) (select (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| ExhaleHeap@@5) o_11@@0 f_17@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@5 Mask@@20) (select (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| ExhaleHeap@@5) o_11@@0 f_17@@9))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_39380) (ExhaleHeap@@6 T@PolymorphicMapType_39380) (Mask@@21 T@PolymorphicMapType_39401) (o_11@@1 T@Ref) (f_17@@10 T@Field_27949_112349) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@6 Mask@@21) (=> (HasDirectPerm_27949_112413 Mask@@21 o_11@@1 f_17@@10) (= (select (|PolymorphicMapType_39380_39440_112349#PolymorphicMapType_39380| Heap@@17) o_11@@1 f_17@@10) (select (|PolymorphicMapType_39380_39440_112349#PolymorphicMapType_39380| ExhaleHeap@@6) o_11@@1 f_17@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@6 Mask@@21) (select (|PolymorphicMapType_39380_39440_112349#PolymorphicMapType_39380| ExhaleHeap@@6) o_11@@1 f_17@@10))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_39380) (ExhaleHeap@@7 T@PolymorphicMapType_39380) (Mask@@22 T@PolymorphicMapType_39401) (o_11@@2 T@Ref) (f_17@@11 T@Field_39453_39454) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@7 Mask@@22) (=> (HasDirectPerm_27949_39454 Mask@@22 o_11@@2 f_17@@11) (= (select (|PolymorphicMapType_39380_27690_27691#PolymorphicMapType_39380| Heap@@18) o_11@@2 f_17@@11) (select (|PolymorphicMapType_39380_27690_27691#PolymorphicMapType_39380| ExhaleHeap@@7) o_11@@2 f_17@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@7 Mask@@22) (select (|PolymorphicMapType_39380_27690_27691#PolymorphicMapType_39380| ExhaleHeap@@7) o_11@@2 f_17@@11))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_39380) (ExhaleHeap@@8 T@PolymorphicMapType_39380) (Mask@@23 T@PolymorphicMapType_39401) (o_11@@3 T@Ref) (f_17@@12 T@Field_39440_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@8 Mask@@23) (=> (HasDirectPerm_27949_53 Mask@@23 o_11@@3 f_17@@12) (= (select (|PolymorphicMapType_39380_27687_53#PolymorphicMapType_39380| Heap@@19) o_11@@3 f_17@@12) (select (|PolymorphicMapType_39380_27687_53#PolymorphicMapType_39380| ExhaleHeap@@8) o_11@@3 f_17@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@8 Mask@@23) (select (|PolymorphicMapType_39380_27687_53#PolymorphicMapType_39380| ExhaleHeap@@8) o_11@@3 f_17@@12))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_39380) (ExhaleHeap@@9 T@PolymorphicMapType_39380) (Mask@@24 T@PolymorphicMapType_39401) (o_11@@4 T@Ref) (f_17@@13 T@Field_45532_3877) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@9 Mask@@24) (=> (HasDirectPerm_27949_3877 Mask@@24 o_11@@4 f_17@@13) (= (select (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| Heap@@20) o_11@@4 f_17@@13) (select (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| ExhaleHeap@@9) o_11@@4 f_17@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@9 Mask@@24) (select (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| ExhaleHeap@@9) o_11@@4 f_17@@13))
)))
(assert (forall ((s0@@1 T@Seq_46574) (s1@@1 T@Seq_46574) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_27988|)) (not (= s1@@1 |Seq#Empty_27988|))) (= (|Seq#Length_27988| (|Seq#Append_46574| s0@@1 s1@@1)) (+ (|Seq#Length_27988| s0@@1) (|Seq#Length_27988| s1@@1))))
 :qid |stdinbpl.340:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_27988| (|Seq#Append_46574| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3755) (s1@@2 T@Seq_3755) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3755|)) (not (= s1@@2 |Seq#Empty_3755|))) (= (|Seq#Length_3755| (|Seq#Append_3755| s0@@2 s1@@2)) (+ (|Seq#Length_3755| s0@@2) (|Seq#Length_3755| s1@@2))))
 :qid |stdinbpl.340:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3755| (|Seq#Append_3755| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_27949_112482) ) (! (= (select (|PolymorphicMapType_39401_27949_116604#PolymorphicMapType_39401| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_39401_27949_116604#PolymorphicMapType_39401| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_27949_112349) ) (! (= (select (|PolymorphicMapType_39401_27949_112349#PolymorphicMapType_39401| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_39401_27949_112349#PolymorphicMapType_39401| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_39453_39454) ) (! (= (select (|PolymorphicMapType_39401_27949_39454#PolymorphicMapType_39401| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_39401_27949_39454#PolymorphicMapType_39401| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_39440_53) ) (! (= (select (|PolymorphicMapType_39401_27949_53#PolymorphicMapType_39401| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_39401_27949_53#PolymorphicMapType_39401| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_45532_3877) ) (! (= (select (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_39380) (Mask@@25 T@PolymorphicMapType_39401) (i@@15 Int) (hi@@11 Int) (ar_1@@11 T@Seq_3755) (v_2@@5 Int) ) (!  (=> (and (state Heap@@21 Mask@@25) (< AssumeFunctionsAbove 5)) (=> (and (and (<= 0 i@@15) (<= i@@15 hi@@11)) (<= hi@@11 (|Seq#Length_3755| ar_1@@11))) (= (count_list Heap@@21 i@@15 hi@@11 ar_1@@11 v_2@@5) (ite (< i@@15 hi@@11) (+ (ite (= (|Seq#Index_3755| ar_1@@11 i@@15) v_2@@5) 1 0) (|count_list'| Heap@@21 (+ i@@15 1) hi@@11 ar_1@@11 v_2@@5)) 0))))
 :qid |stdinbpl.1548:15|
 :skolemid |127|
 :pattern ( (state Heap@@21 Mask@@25) (count_list Heap@@21 i@@15 hi@@11 ar_1@@11 v_2@@5))
)))
(assert (forall ((s@@15 T@Seq_46574) (t@@1 T@Seq_46574) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_27988| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_27988| s@@15)) (|Seq#Length_27988| s@@15)) n@@15) (= (|Seq#Drop_27988| (|Seq#Append_46574| s@@15 t@@1) n@@15) (|Seq#Drop_27988| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_27988| s@@15))))))
 :qid |stdinbpl.497:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_27988| (|Seq#Append_46574| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3755) (t@@2 T@Seq_3755) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3755| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3755| s@@16)) (|Seq#Length_3755| s@@16)) n@@16) (= (|Seq#Drop_3755| (|Seq#Append_3755| s@@16 t@@2) n@@16) (|Seq#Drop_3755| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3755| s@@16))))))
 :qid |stdinbpl.497:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3755| (|Seq#Append_3755| s@@16 t@@2) n@@16))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_39380) (i@@16 Int) (lo@@7 Int) (hi@@12 Int) (ar_1@@12 T@Seq_46574) ) (!  (and (= (sum_array Heap@@22 i@@16 lo@@7 hi@@12 ar_1@@12) (|sum_array'| Heap@@22 i@@16 lo@@7 hi@@12 ar_1@@12)) (dummyFunction_4184 (|sum_array#triggerStateless| i@@16 lo@@7 hi@@12 ar_1@@12)))
 :qid |stdinbpl.771:15|
 :skolemid |62|
 :pattern ( (sum_array Heap@@22 i@@16 lo@@7 hi@@12 ar_1@@12))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_39380) (i@@17 Int) (hi@@13 Int) (ar_1@@13 T@Seq_3755) (v_2@@6 Int) ) (!  (and (= (count_list Heap@@23 i@@17 hi@@13 ar_1@@13 v_2@@6) (|count_list'| Heap@@23 i@@17 hi@@13 ar_1@@13 v_2@@6)) (dummyFunction_4184 (|count_list#triggerStateless| i@@17 hi@@13 ar_1@@13 v_2@@6)))
 :qid |stdinbpl.1538:15|
 :skolemid |125|
 :pattern ( (count_list Heap@@23 i@@17 hi@@13 ar_1@@13 v_2@@6))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_39380) (i@@18 Int) (hi@@14 Int) (ar_1@@14 T@Seq_46574) (v_2@@7 Int) ) (!  (and (= (count_array Heap@@24 i@@18 hi@@14 ar_1@@14 v_2@@7) (|count_array'| Heap@@24 i@@18 hi@@14 ar_1@@14 v_2@@7)) (dummyFunction_4184 (|count_array#triggerStateless| i@@18 hi@@14 ar_1@@14 v_2@@7)))
 :qid |stdinbpl.1623:15|
 :skolemid |129|
 :pattern ( (count_array Heap@@24 i@@18 hi@@14 ar_1@@14 v_2@@7))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_39401) (SummandMask1 T@PolymorphicMapType_39401) (SummandMask2 T@PolymorphicMapType_39401) (o_2@@19 T@Ref) (f_4@@19 T@Field_27949_112482) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_39401_27949_116604#PolymorphicMapType_39401| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_39401_27949_116604#PolymorphicMapType_39401| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_39401_27949_116604#PolymorphicMapType_39401| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_39401_27949_116604#PolymorphicMapType_39401| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_39401_27949_116604#PolymorphicMapType_39401| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_39401_27949_116604#PolymorphicMapType_39401| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_39401) (SummandMask1@@0 T@PolymorphicMapType_39401) (SummandMask2@@0 T@PolymorphicMapType_39401) (o_2@@20 T@Ref) (f_4@@20 T@Field_27949_112349) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_39401_27949_112349#PolymorphicMapType_39401| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_39401_27949_112349#PolymorphicMapType_39401| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_39401_27949_112349#PolymorphicMapType_39401| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_39401_27949_112349#PolymorphicMapType_39401| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_39401_27949_112349#PolymorphicMapType_39401| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_39401_27949_112349#PolymorphicMapType_39401| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_39401) (SummandMask1@@1 T@PolymorphicMapType_39401) (SummandMask2@@1 T@PolymorphicMapType_39401) (o_2@@21 T@Ref) (f_4@@21 T@Field_39453_39454) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_39401_27949_39454#PolymorphicMapType_39401| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_39401_27949_39454#PolymorphicMapType_39401| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_39401_27949_39454#PolymorphicMapType_39401| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_39401_27949_39454#PolymorphicMapType_39401| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_39401_27949_39454#PolymorphicMapType_39401| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_39401_27949_39454#PolymorphicMapType_39401| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_39401) (SummandMask1@@2 T@PolymorphicMapType_39401) (SummandMask2@@2 T@PolymorphicMapType_39401) (o_2@@22 T@Ref) (f_4@@22 T@Field_39440_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_39401_27949_53#PolymorphicMapType_39401| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_39401_27949_53#PolymorphicMapType_39401| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_39401_27949_53#PolymorphicMapType_39401| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_39401_27949_53#PolymorphicMapType_39401| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_39401_27949_53#PolymorphicMapType_39401| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_39401_27949_53#PolymorphicMapType_39401| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_39401) (SummandMask1@@3 T@PolymorphicMapType_39401) (SummandMask2@@3 T@PolymorphicMapType_39401) (o_2@@23 T@Ref) (f_4@@23 T@Field_45532_3877) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_39380) (i@@19 Int) (lo@@8 Int) (hi@@15 Int) (step@@5 Int) (vmin@@5 Int) (vmax_1@@5 Int) (ar_1@@15 T@Seq_46574) ) (!  (and (= (sum_square Heap@@25 i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax_1@@5 ar_1@@15) (|sum_square'| Heap@@25 i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax_1@@5 ar_1@@15)) (dummyFunction_4184 (|sum_square#triggerStateless| i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax_1@@5 ar_1@@15)))
 :qid |stdinbpl.1006:15|
 :skolemid |83|
 :pattern ( (sum_square Heap@@25 i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax_1@@5 ar_1@@15))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_39380) (Mask@@26 T@PolymorphicMapType_39401) (i@@20 Int) (hi@@16 Int) (ar_1@@16 T@Seq_3755) (v_2@@8 Int) ) (!  (=> (state Heap@@26 Mask@@26) (= (|count_list'| Heap@@26 i@@20 hi@@16 ar_1@@16 v_2@@8) (|count_list#frame| EmptyFrame i@@20 hi@@16 ar_1@@16 v_2@@8)))
 :qid |stdinbpl.1555:15|
 :skolemid |128|
 :pattern ( (state Heap@@26 Mask@@26) (|count_list'| Heap@@26 i@@20 hi@@16 ar_1@@16 v_2@@8))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3755| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3755| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.662:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3755| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_46574) (b T@Seq_46574) ) (!  (=> (|Seq#Equal_46574| a b) (= a b))
 :qid |stdinbpl.635:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_46574| a b))
)))
(assert (forall ((a@@0 T@Seq_3755) (b@@0 T@Seq_3755) ) (!  (=> (|Seq#Equal_3755| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.635:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3755| a@@0 b@@0))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_39380) (Mask@@27 T@PolymorphicMapType_39401) (i@@21 Int) (lo@@9 Int) (hi@@17 Int) (step@@6 Int) (vmin@@6 Int) (vmax_1@@6 Int) (ar_1@@17 T@Seq_46574) (v_2@@9 Int) ) (!  (=> (and (state Heap@@27 Mask@@27) (< AssumeFunctionsAbove 0)) (=> (and (and (and (and (<= 0 lo@@9) (and (<= lo@@9 hi@@17) (and (<= hi@@17 step@@6) (> step@@6 0)))) (and (<= 0 vmin@@6) (and (<= vmin@@6 i@@21) (<= i@@21 vmax_1@@6)))) (<= vmax_1@@6 (|Seq#Length_27988| ar_1@@17))) (forall ((k@@1 Int) (j@@8 Int) ) (!  (=> (and (>= k@@1 0) (and (< k@@1 (|Seq#Length_27988| ar_1@@17)) (and (>= j@@8 0) (and (< j@@8 (|Seq#Length_27988| ar_1@@17)) (not (= k@@1 j@@8)))))) (not (= (|Seq#Index_27988| ar_1@@17 k@@1) (|Seq#Index_27988| ar_1@@17 j@@8))))
 :qid |stdinbpl.1284:195|
 :skolemid |106|
 :pattern ( (|Seq#Index_27988| ar_1@@17 k@@1) (|Seq#Index_27988| ar_1@@17 j@@8))
))) (= (count_square Heap@@27 i@@21 lo@@9 hi@@17 step@@6 vmin@@6 vmax_1@@6 ar_1@@17 v_2@@9) (ite (< i@@21 vmax_1@@6) (+ (ite  (and (<= lo@@9 (mod i@@21 step@@6)) (and (< (mod i@@21 step@@6) hi@@17) (= (select (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| Heap@@27) (|Seq#Index_27988| ar_1@@17 i@@21) Ref__Integer_value) v_2@@9))) 1 0) (|count_square'| Heap@@27 (+ i@@21 1) lo@@9 hi@@17 step@@6 vmin@@6 vmax_1@@6 ar_1@@17 v_2@@9)) 0))))
 :qid |stdinbpl.1282:15|
 :skolemid |107|
 :pattern ( (state Heap@@27 Mask@@27) (count_square Heap@@27 i@@21 lo@@9 hi@@17 step@@6 vmin@@6 vmax_1@@6 ar_1@@17 v_2@@9))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_39380) (i@@22 Int) (hi@@18 Int) (ar_1@@18 T@Seq_3755) ) (!  (and (= (sum_list Heap@@28 i@@22 hi@@18 ar_1@@18) (|sum_list'| Heap@@28 i@@22 hi@@18 ar_1@@18)) (dummyFunction_4184 (|sum_list#triggerStateless| i@@22 hi@@18 ar_1@@18)))
 :qid |stdinbpl.686:15|
 :skolemid |58|
 :pattern ( (sum_list Heap@@28 i@@22 hi@@18 ar_1@@18))
)))
(assert (forall ((s@@17 T@Seq_46574) (i@@23 Int) ) (!  (=> (and (<= 0 i@@23) (< i@@23 (|Seq#Length_27988| s@@17))) (|Seq#ContainsTrigger_27988| s@@17 (|Seq#Index_27988| s@@17 i@@23)))
 :qid |stdinbpl.528:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_27988| s@@17 i@@23))
)))
(assert (forall ((s@@18 T@Seq_3755) (i@@24 Int) ) (!  (=> (and (<= 0 i@@24) (< i@@24 (|Seq#Length_3755| s@@18))) (|Seq#ContainsTrigger_3755| s@@18 (|Seq#Index_3755| s@@18 i@@24)))
 :qid |stdinbpl.528:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3755| s@@18 i@@24))
)))
(assert (forall ((s0@@3 T@Seq_46574) (s1@@3 T@Seq_46574) ) (!  (and (=> (= s0@@3 |Seq#Empty_27988|) (= (|Seq#Append_46574| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_27988|) (= (|Seq#Append_46574| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.346:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_46574| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3755) (s1@@4 T@Seq_3755) ) (!  (and (=> (= s0@@4 |Seq#Empty_3755|) (= (|Seq#Append_3755| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3755|) (= (|Seq#Append_3755| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.346:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3755| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_27988| (|Seq#Singleton_27988| t@@3) 0) t@@3)
 :qid |stdinbpl.350:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_27988| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3755| (|Seq#Singleton_3755| t@@4) 0) t@@4)
 :qid |stdinbpl.350:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3755| t@@4))
)))
(assert (forall ((s@@19 T@Seq_46574) ) (! (<= 0 (|Seq#Length_27988| s@@19))
 :qid |stdinbpl.329:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_27988| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3755) ) (! (<= 0 (|Seq#Length_3755| s@@20))
 :qid |stdinbpl.329:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3755| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_46574) (s1@@5 T@Seq_46574) ) (!  (=> (|Seq#Equal_46574| s0@@5 s1@@5) (and (= (|Seq#Length_27988| s0@@5) (|Seq#Length_27988| s1@@5)) (forall ((j@@9 Int) ) (!  (=> (and (<= 0 j@@9) (< j@@9 (|Seq#Length_27988| s0@@5))) (= (|Seq#Index_27988| s0@@5 j@@9) (|Seq#Index_27988| s1@@5 j@@9)))
 :qid |stdinbpl.625:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_27988| s0@@5 j@@9))
 :pattern ( (|Seq#Index_27988| s1@@5 j@@9))
))))
 :qid |stdinbpl.622:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_46574| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3755) (s1@@6 T@Seq_3755) ) (!  (=> (|Seq#Equal_3755| s0@@6 s1@@6) (and (= (|Seq#Length_3755| s0@@6) (|Seq#Length_3755| s1@@6)) (forall ((j@@10 Int) ) (!  (=> (and (<= 0 j@@10) (< j@@10 (|Seq#Length_3755| s0@@6))) (= (|Seq#Index_3755| s0@@6 j@@10) (|Seq#Index_3755| s1@@6 j@@10)))
 :qid |stdinbpl.625:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3755| s0@@6 j@@10))
 :pattern ( (|Seq#Index_3755| s1@@6 j@@10))
))))
 :qid |stdinbpl.622:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3755| s0@@6 s1@@6))
)))
(assert (forall ((Heap2Heap@@1 T@PolymorphicMapType_39380) (Heap1Heap@@1 T@PolymorphicMapType_39380) (i@@25 Int) (hi@@19 Int) (ar_1@@19 T@Seq_46574) (v_2@@10 Int) ) (!  (=> (and (=  (and (<= 0 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10))) (< (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10)) hi@@19))  (and (<= 0 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10))) (< (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10)) hi@@19))) (=> (and (<= 0 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10))) (< (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10)) hi@@19)) (= (select (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| Heap2Heap@@1) (|Seq#Index_27988| ar_1@@19 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10))) Ref__Integer_value) (select (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| Heap1Heap@@1) (|Seq#Index_27988| ar_1@@19 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10))) Ref__Integer_value)))) (= (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10)))
 :qid |stdinbpl.1653:15|
 :skolemid |134|
 :pattern ( (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (succHeapTrans Heap2Heap@@1 Heap1Heap@@1))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_27988| (|Seq#Singleton_27988| t@@5)) 1)
 :qid |stdinbpl.337:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_27988| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3755| (|Seq#Singleton_3755| t@@6)) 1)
 :qid |stdinbpl.337:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3755| t@@6))
)))
(assert (forall ((Heap2Heap@@2 T@PolymorphicMapType_39380) (Heap1Heap@@2 T@PolymorphicMapType_39380) (i@@26 Int) (lo@@10 Int) (hi@@20 Int) (ar_1@@20 T@Seq_46574) ) (!  (=> (and (=  (and (<= lo@@10 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20))) (< (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20)) hi@@20))  (and (<= lo@@10 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20))) (< (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20)) hi@@20))) (=> (and (<= lo@@10 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20))) (< (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20)) hi@@20)) (= (select (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| Heap2Heap@@2) (|Seq#Index_27988| ar_1@@20 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20))) Ref__Integer_value) (select (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| Heap1Heap@@2) (|Seq#Index_27988| ar_1@@20 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20))) Ref__Integer_value)))) (= (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20)))
 :qid |stdinbpl.801:15|
 :skolemid |67|
 :pattern ( (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (succHeapTrans Heap2Heap@@2 Heap1Heap@@2))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_39380) (Mask@@28 T@PolymorphicMapType_39401) (i@@27 Int) (hi@@21 Int) (ar_1@@21 T@Seq_3755) ) (!  (=> (and (state Heap@@29 Mask@@28) (< AssumeFunctionsAbove 4)) (=> (and (and (<= 0 i@@27) (<= i@@27 hi@@21)) (<= hi@@21 (|Seq#Length_3755| ar_1@@21))) (= (sum_list Heap@@29 i@@27 hi@@21 ar_1@@21) (ite (< i@@27 hi@@21) (+ (|Seq#Index_3755| ar_1@@21 i@@27) (|sum_list'| Heap@@29 (+ i@@27 1) hi@@21 ar_1@@21)) 0))))
 :qid |stdinbpl.696:15|
 :skolemid |60|
 :pattern ( (state Heap@@29 Mask@@28) (sum_list Heap@@29 i@@27 hi@@21 ar_1@@21))
)))
(assert (forall ((s@@21 T@Seq_46574) (t@@7 T@Seq_46574) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_27988| s@@21))) (= (|Seq#Take_27988| (|Seq#Append_46574| s@@21 t@@7) n@@17) (|Seq#Take_27988| s@@21 n@@17)))
 :qid |stdinbpl.479:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_27988| (|Seq#Append_46574| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3755) (t@@8 T@Seq_3755) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3755| s@@22))) (= (|Seq#Take_3755| (|Seq#Append_3755| s@@22 t@@8) n@@18) (|Seq#Take_3755| s@@22 n@@18)))
 :qid |stdinbpl.479:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3755| (|Seq#Append_3755| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_46574) (i@@28 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@28) (< i@@28 (|Seq#Length_27988| s@@23))) (= (|Seq#Length_27988| (|Seq#Update_27988| s@@23 i@@28 v@@2)) (|Seq#Length_27988| s@@23)))
 :qid |stdinbpl.378:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_27988| (|Seq#Update_27988| s@@23 i@@28 v@@2)))
 :pattern ( (|Seq#Length_27988| s@@23) (|Seq#Update_27988| s@@23 i@@28 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3755) (i@@29 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@29) (< i@@29 (|Seq#Length_3755| s@@24))) (= (|Seq#Length_3755| (|Seq#Update_3755| s@@24 i@@29 v@@3)) (|Seq#Length_3755| s@@24)))
 :qid |stdinbpl.378:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3755| (|Seq#Update_3755| s@@24 i@@29 v@@3)))
 :pattern ( (|Seq#Length_3755| s@@24) (|Seq#Update_3755| s@@24 i@@29 v@@3))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_39380) (Mask@@29 T@PolymorphicMapType_39401) (i@@30 Int) (hi@@22 Int) (ar_1@@22 T@Seq_46574) (v_2@@11 Int) ) (!  (=> (and (state Heap@@30 Mask@@29) (< AssumeFunctionsAbove 3)) (=> (and (and (and (<= 0 i@@30) (<= i@@30 hi@@22)) (<= hi@@22 (|Seq#Length_27988| ar_1@@22))) (forall ((k@@2 Int) (j@@11 Int) ) (!  (=> (and (>= k@@2 0) (and (< k@@2 (|Seq#Length_27988| ar_1@@22)) (and (>= j@@11 0) (and (< j@@11 (|Seq#Length_27988| ar_1@@22)) (not (= k@@2 j@@11)))))) (not (= (|Seq#Index_27988| ar_1@@22 k@@2) (|Seq#Index_27988| ar_1@@22 j@@11))))
 :qid |stdinbpl.1635:112|
 :skolemid |131|
 :pattern ( (|Seq#Index_27988| ar_1@@22 k@@2) (|Seq#Index_27988| ar_1@@22 j@@11))
))) (= (count_array Heap@@30 i@@30 hi@@22 ar_1@@22 v_2@@11) (ite (< i@@30 hi@@22) (+ (ite (= (select (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| Heap@@30) (|Seq#Index_27988| ar_1@@22 i@@30) Ref__Integer_value) v_2@@11) 1 0) (|count_array'| Heap@@30 (+ i@@30 1) hi@@22 ar_1@@22 v_2@@11)) 0))))
 :qid |stdinbpl.1633:15|
 :skolemid |132|
 :pattern ( (state Heap@@30 Mask@@29) (count_array Heap@@30 i@@30 hi@@22 ar_1@@22 v_2@@11))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_39380) (o_10 T@Ref) (f_18 T@Field_27949_112349) (v@@4 T@FrameType) ) (! (succHeap Heap@@31 (PolymorphicMapType_39380 (|PolymorphicMapType_39380_27687_53#PolymorphicMapType_39380| Heap@@31) (|PolymorphicMapType_39380_27690_27691#PolymorphicMapType_39380| Heap@@31) (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| Heap@@31) (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| Heap@@31) (store (|PolymorphicMapType_39380_39440_112349#PolymorphicMapType_39380| Heap@@31) o_10 f_18 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_39380 (|PolymorphicMapType_39380_27687_53#PolymorphicMapType_39380| Heap@@31) (|PolymorphicMapType_39380_27690_27691#PolymorphicMapType_39380| Heap@@31) (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| Heap@@31) (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| Heap@@31) (store (|PolymorphicMapType_39380_39440_112349#PolymorphicMapType_39380| Heap@@31) o_10 f_18 v@@4)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_39380) (o_10@@0 T@Ref) (f_18@@0 T@Field_27949_112482) (v@@5 T@PolymorphicMapType_39929) ) (! (succHeap Heap@@32 (PolymorphicMapType_39380 (|PolymorphicMapType_39380_27687_53#PolymorphicMapType_39380| Heap@@32) (|PolymorphicMapType_39380_27690_27691#PolymorphicMapType_39380| Heap@@32) (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| Heap@@32) (store (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| Heap@@32) o_10@@0 f_18@@0 v@@5) (|PolymorphicMapType_39380_39440_112349#PolymorphicMapType_39380| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_39380 (|PolymorphicMapType_39380_27687_53#PolymorphicMapType_39380| Heap@@32) (|PolymorphicMapType_39380_27690_27691#PolymorphicMapType_39380| Heap@@32) (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| Heap@@32) (store (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| Heap@@32) o_10@@0 f_18@@0 v@@5) (|PolymorphicMapType_39380_39440_112349#PolymorphicMapType_39380| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_39380) (o_10@@1 T@Ref) (f_18@@1 T@Field_45532_3877) (v@@6 Int) ) (! (succHeap Heap@@33 (PolymorphicMapType_39380 (|PolymorphicMapType_39380_27687_53#PolymorphicMapType_39380| Heap@@33) (|PolymorphicMapType_39380_27690_27691#PolymorphicMapType_39380| Heap@@33) (store (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| Heap@@33) o_10@@1 f_18@@1 v@@6) (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| Heap@@33) (|PolymorphicMapType_39380_39440_112349#PolymorphicMapType_39380| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_39380 (|PolymorphicMapType_39380_27687_53#PolymorphicMapType_39380| Heap@@33) (|PolymorphicMapType_39380_27690_27691#PolymorphicMapType_39380| Heap@@33) (store (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| Heap@@33) o_10@@1 f_18@@1 v@@6) (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| Heap@@33) (|PolymorphicMapType_39380_39440_112349#PolymorphicMapType_39380| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_39380) (o_10@@2 T@Ref) (f_18@@2 T@Field_39453_39454) (v@@7 T@Ref) ) (! (succHeap Heap@@34 (PolymorphicMapType_39380 (|PolymorphicMapType_39380_27687_53#PolymorphicMapType_39380| Heap@@34) (store (|PolymorphicMapType_39380_27690_27691#PolymorphicMapType_39380| Heap@@34) o_10@@2 f_18@@2 v@@7) (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| Heap@@34) (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| Heap@@34) (|PolymorphicMapType_39380_39440_112349#PolymorphicMapType_39380| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_39380 (|PolymorphicMapType_39380_27687_53#PolymorphicMapType_39380| Heap@@34) (store (|PolymorphicMapType_39380_27690_27691#PolymorphicMapType_39380| Heap@@34) o_10@@2 f_18@@2 v@@7) (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| Heap@@34) (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| Heap@@34) (|PolymorphicMapType_39380_39440_112349#PolymorphicMapType_39380| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_39380) (o_10@@3 T@Ref) (f_18@@3 T@Field_39440_53) (v@@8 Bool) ) (! (succHeap Heap@@35 (PolymorphicMapType_39380 (store (|PolymorphicMapType_39380_27687_53#PolymorphicMapType_39380| Heap@@35) o_10@@3 f_18@@3 v@@8) (|PolymorphicMapType_39380_27690_27691#PolymorphicMapType_39380| Heap@@35) (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| Heap@@35) (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| Heap@@35) (|PolymorphicMapType_39380_39440_112349#PolymorphicMapType_39380| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_39380 (store (|PolymorphicMapType_39380_27687_53#PolymorphicMapType_39380| Heap@@35) o_10@@3 f_18@@3 v@@8) (|PolymorphicMapType_39380_27690_27691#PolymorphicMapType_39380| Heap@@35) (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| Heap@@35) (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| Heap@@35) (|PolymorphicMapType_39380_39440_112349#PolymorphicMapType_39380| Heap@@35)))
)))
(assert (forall ((s@@25 T@Seq_46574) (t@@9 T@Seq_46574) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_27988| s@@25))) (= (|Seq#Drop_27988| (|Seq#Append_46574| s@@25 t@@9) n@@19) (|Seq#Append_46574| (|Seq#Drop_27988| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.493:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_27988| (|Seq#Append_46574| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3755) (t@@10 T@Seq_3755) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3755| s@@26))) (= (|Seq#Drop_3755| (|Seq#Append_3755| s@@26 t@@10) n@@20) (|Seq#Append_3755| (|Seq#Drop_3755| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.493:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3755| (|Seq#Append_3755| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_46574) (n@@21 Int) (i@@31 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@31)) (< i@@31 (|Seq#Length_27988| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@31 n@@21) n@@21) i@@31) (= (|Seq#Index_27988| (|Seq#Drop_27988| s@@27 n@@21) (|Seq#Sub| i@@31 n@@21)) (|Seq#Index_27988| s@@27 i@@31))))
 :qid |stdinbpl.429:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_27988| s@@27 n@@21) (|Seq#Index_27988| s@@27 i@@31))
)))
(assert (forall ((s@@28 T@Seq_3755) (n@@22 Int) (i@@32 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@32)) (< i@@32 (|Seq#Length_3755| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@32 n@@22) n@@22) i@@32) (= (|Seq#Index_3755| (|Seq#Drop_3755| s@@28 n@@22) (|Seq#Sub| i@@32 n@@22)) (|Seq#Index_3755| s@@28 i@@32))))
 :qid |stdinbpl.429:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3755| s@@28 n@@22) (|Seq#Index_3755| s@@28 i@@32))
)))
(assert (forall ((s0@@7 T@Seq_46574) (s1@@7 T@Seq_46574) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_27988|)) (not (= s1@@7 |Seq#Empty_27988|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_27988| s0@@7))) (= (|Seq#Index_27988| (|Seq#Append_46574| s0@@7 s1@@7) n@@23) (|Seq#Index_27988| s0@@7 n@@23)))
 :qid |stdinbpl.369:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_27988| (|Seq#Append_46574| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_27988| s0@@7 n@@23) (|Seq#Append_46574| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3755) (s1@@8 T@Seq_3755) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3755|)) (not (= s1@@8 |Seq#Empty_3755|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3755| s0@@8))) (= (|Seq#Index_3755| (|Seq#Append_3755| s0@@8 s1@@8) n@@24) (|Seq#Index_3755| s0@@8 n@@24)))
 :qid |stdinbpl.369:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3755| (|Seq#Append_3755| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3755| s0@@8 n@@24) (|Seq#Append_3755| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_46574) (s1@@9 T@Seq_46574) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_27988|)) (not (= s1@@9 |Seq#Empty_27988|))) (<= 0 m)) (< m (|Seq#Length_27988| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_27988| s0@@9)) (|Seq#Length_27988| s0@@9)) m) (= (|Seq#Index_27988| (|Seq#Append_46574| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_27988| s0@@9))) (|Seq#Index_27988| s1@@9 m))))
 :qid |stdinbpl.374:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_27988| s1@@9 m) (|Seq#Append_46574| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3755) (s1@@10 T@Seq_3755) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3755|)) (not (= s1@@10 |Seq#Empty_3755|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3755| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3755| s0@@10)) (|Seq#Length_3755| s0@@10)) m@@0) (= (|Seq#Index_3755| (|Seq#Append_3755| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3755| s0@@10))) (|Seq#Index_3755| s1@@10 m@@0))))
 :qid |stdinbpl.374:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3755| s1@@10 m@@0) (|Seq#Append_3755| s0@@10 s1@@10))
)))
(assert (forall ((o_10@@4 T@Ref) (f_16 T@Field_39453_39454) (Heap@@36 T@PolymorphicMapType_39380) ) (!  (=> (select (|PolymorphicMapType_39380_27687_53#PolymorphicMapType_39380| Heap@@36) o_10@@4 $allocated) (select (|PolymorphicMapType_39380_27687_53#PolymorphicMapType_39380| Heap@@36) (select (|PolymorphicMapType_39380_27690_27691#PolymorphicMapType_39380| Heap@@36) o_10@@4 f_16) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_39380_27690_27691#PolymorphicMapType_39380| Heap@@36) o_10@@4 f_16))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_39380) (Mask@@30 T@PolymorphicMapType_39401) (i@@33 Int) (lo@@11 Int) (hi@@23 Int) (step@@7 Int) (vmin@@7 Int) (vmax_1@@7 Int) (ar_1@@23 T@Seq_46574) ) (!  (=> (state Heap@@37 Mask@@30) (= (|sum_square'| Heap@@37 i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax_1@@7 ar_1@@23) (|sum_square#frame| (FrameFragment_4736 (|sum_square#condqp2| Heap@@37 i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax_1@@7 ar_1@@23)) i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax_1@@7 ar_1@@23)))
 :qid |stdinbpl.1026:15|
 :skolemid |87|
 :pattern ( (state Heap@@37 Mask@@30) (|sum_square'| Heap@@37 i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax_1@@7 ar_1@@23))
)))
(assert (forall ((s@@29 T@Seq_46574) (x@@3 T@Ref) (i@@34 Int) ) (!  (=> (and (and (<= 0 i@@34) (< i@@34 (|Seq#Length_27988| s@@29))) (= (|Seq#Index_27988| s@@29 i@@34) x@@3)) (|Seq#Contains_46574| s@@29 x@@3))
 :qid |stdinbpl.526:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_46574| s@@29 x@@3) (|Seq#Index_27988| s@@29 i@@34))
)))
(assert (forall ((s@@30 T@Seq_3755) (x@@4 Int) (i@@35 Int) ) (!  (=> (and (and (<= 0 i@@35) (< i@@35 (|Seq#Length_3755| s@@30))) (= (|Seq#Index_3755| s@@30 i@@35) x@@4)) (|Seq#Contains_3755| s@@30 x@@4))
 :qid |stdinbpl.526:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3755| s@@30 x@@4) (|Seq#Index_3755| s@@30 i@@35))
)))
(assert (forall ((s0@@11 T@Seq_46574) (s1@@11 T@Seq_46574) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_46574| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_46574| s0@@11 s1@@11))) (not (= (|Seq#Length_27988| s0@@11) (|Seq#Length_27988| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_46574| s0@@11 s1@@11))) (= (|Seq#Length_27988| s0@@11) (|Seq#Length_27988| s1@@11))) (= (|Seq#SkolemDiff_46574| s0@@11 s1@@11) (|Seq#SkolemDiff_46574| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_46574| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_46574| s0@@11 s1@@11) (|Seq#Length_27988| s0@@11))) (not (= (|Seq#Index_27988| s0@@11 (|Seq#SkolemDiff_46574| s0@@11 s1@@11)) (|Seq#Index_27988| s1@@11 (|Seq#SkolemDiff_46574| s0@@11 s1@@11))))))
 :qid |stdinbpl.630:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_46574| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3755) (s1@@12 T@Seq_3755) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3755| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3755| s0@@12 s1@@12))) (not (= (|Seq#Length_3755| s0@@12) (|Seq#Length_3755| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3755| s0@@12 s1@@12))) (= (|Seq#Length_3755| s0@@12) (|Seq#Length_3755| s1@@12))) (= (|Seq#SkolemDiff_3755| s0@@12 s1@@12) (|Seq#SkolemDiff_3755| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3755| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3755| s0@@12 s1@@12) (|Seq#Length_3755| s0@@12))) (not (= (|Seq#Index_3755| s0@@12 (|Seq#SkolemDiff_3755| s0@@12 s1@@12)) (|Seq#Index_3755| s1@@12 (|Seq#SkolemDiff_3755| s0@@12 s1@@12))))))
 :qid |stdinbpl.630:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3755| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_27949_112349) (v_1@@0 T@FrameType) (q T@Field_27949_112349) (w@@0 T@FrameType) (r T@Field_27949_112349) (u T@FrameType) ) (!  (=> (and (InsidePredicate_39440_39440 p@@1 v_1@@0 q w@@0) (InsidePredicate_39440_39440 q w@@0 r u)) (InsidePredicate_39440_39440 p@@1 v_1@@0 r u))
 :qid |stdinbpl.297:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_39440_39440 p@@1 v_1@@0 q w@@0) (InsidePredicate_39440_39440 q w@@0 r u))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_39380) (i@@36 Int) (lo@@12 Int) (hi@@24 Int) (step@@8 Int) (vmin@@8 Int) (vmax_1@@8 Int) (ar_1@@24 T@Seq_46574) ) (! (dummyFunction_4184 (|sum_square#triggerStateless| i@@36 lo@@12 hi@@24 step@@8 vmin@@8 vmax_1@@8 ar_1@@24))
 :qid |stdinbpl.1010:15|
 :skolemid |84|
 :pattern ( (|sum_square'| Heap@@38 i@@36 lo@@12 hi@@24 step@@8 vmin@@8 vmax_1@@8 ar_1@@24))
)))
(assert (forall ((s@@31 T@Seq_46574) ) (!  (=> (= (|Seq#Length_27988| s@@31) 0) (= s@@31 |Seq#Empty_27988|))
 :qid |stdinbpl.333:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_27988| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3755) ) (!  (=> (= (|Seq#Length_3755| s@@32) 0) (= s@@32 |Seq#Empty_3755|))
 :qid |stdinbpl.333:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3755| s@@32))
)))
(assert (forall ((s@@33 T@Seq_46574) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_27988| s@@33 n@@25) |Seq#Empty_27988|))
 :qid |stdinbpl.509:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_27988| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3755) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3755| s@@34 n@@26) |Seq#Empty_3755|))
 :qid |stdinbpl.509:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3755| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@39 T@PolymorphicMapType_39380) (Mask@@31 T@PolymorphicMapType_39401) (i@@37 Int) (lo@@13 Int) (hi@@25 Int) (ar_1@@25 T@Seq_46574) ) (!  (=> (state Heap@@39 Mask@@31) (= (|sum_array'| Heap@@39 i@@37 lo@@13 hi@@25 ar_1@@25) (|sum_array#frame| (FrameFragment_4736 (|sum_array#condqp1| Heap@@39 i@@37 lo@@13 hi@@25 ar_1@@25)) i@@37 lo@@13 hi@@25 ar_1@@25)))
 :qid |stdinbpl.791:15|
 :skolemid |66|
 :pattern ( (state Heap@@39 Mask@@31) (|sum_array'| Heap@@39 i@@37 lo@@13 hi@@25 ar_1@@25))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_39380) (Mask@@32 T@PolymorphicMapType_39401) (i@@38 Int) (hi@@26 Int) (ar_1@@26 T@Seq_46574) (v_2@@12 Int) ) (!  (=> (state Heap@@40 Mask@@32) (= (|count_array'| Heap@@40 i@@38 hi@@26 ar_1@@26 v_2@@12) (|count_array#frame| (FrameFragment_4736 (|count_array#condqp4| Heap@@40 i@@38 hi@@26 ar_1@@26 v_2@@12)) i@@38 hi@@26 ar_1@@26 v_2@@12)))
 :qid |stdinbpl.1643:15|
 :skolemid |133|
 :pattern ( (state Heap@@40 Mask@@32) (|count_array'| Heap@@40 i@@38 hi@@26 ar_1@@26 v_2@@12))
)))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Mask@13 () T@PolymorphicMapType_39401)
(declare-fun c () T@Seq_46574)
(declare-fun i@@39 () Int)
(declare-fun Mask@12 () T@PolymorphicMapType_39401)
(declare-fun b_24 () T@Seq_46574)
(declare-fun perm@11 () Real)
(declare-fun Mask@11 () T@PolymorphicMapType_39401)
(declare-fun a_2 () T@Seq_46574)
(declare-fun perm@10 () Real)
(declare-fun Mask@10 () T@PolymorphicMapType_39401)
(declare-fun perm@9 () Real)
(declare-fun Heap@2 () T@PolymorphicMapType_39380)
(declare-fun N () Int)
(declare-fun Mask@9 () T@PolymorphicMapType_39401)
(declare-fun Mask@8 () T@PolymorphicMapType_39401)
(declare-fun perm@8 () Real)
(declare-fun Heap@1 () T@PolymorphicMapType_39380)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_39380)
(declare-fun __flatten_8@0 () T@Ref)
(declare-fun Heap@0 () T@PolymorphicMapType_39380)
(declare-fun __flatten_10@0 () T@Ref)
(declare-fun __flatten_9@0 () Int)
(declare-fun diz () T@Ref)
(declare-fun current_thread_id () Int)
(declare-fun Heap@@41 () T@PolymorphicMapType_39380)
(declare-fun __flatten_5@0 () T@Ref)
(declare-fun __flatten_7@0 () T@Ref)
(declare-fun __flatten_6@0 () Int)
(declare-fun Mask@6 () T@PolymorphicMapType_39401)
(declare-fun perm@7 () Real)
(declare-fun Mask@7 () T@PolymorphicMapType_39401)
(declare-fun __flatten_5 () T@Ref)
(declare-fun __flatten_7 () T@Ref)
(declare-fun __flatten_8 () T@Ref)
(declare-fun __flatten_10 () T@Ref)
(declare-fun PostHeap@0 () T@PolymorphicMapType_39380)
(declare-fun perm@4 () Real)
(declare-fun PostMask@0 () T@PolymorphicMapType_39401)
(declare-fun perm@5 () Real)
(declare-fun PostMask@1 () T@PolymorphicMapType_39401)
(declare-fun perm@6 () Real)
(declare-fun PostMask@2 () T@PolymorphicMapType_39401)
(declare-fun Mask@4 () T@PolymorphicMapType_39401)
(declare-fun perm@3 () Real)
(declare-fun Mask@5 () T@PolymorphicMapType_39401)
(declare-fun Mask@2 () T@PolymorphicMapType_39401)
(declare-fun perm@2 () Real)
(declare-fun Mask@3 () T@PolymorphicMapType_39401)
(declare-fun perm@0 () Real)
(declare-fun Mask@0 () T@PolymorphicMapType_39401)
(declare-fun perm@1 () Real)
(declare-fun Mask@1 () T@PolymorphicMapType_39401)
(set-info :boogie-vc-id Ref__loop_body_45)
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
 (=> (= (ControlFlow 0 0) 88) (let ((anon20_correct true))
(let ((anon30_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 16) 13)) anon20_correct)))
(let ((anon30_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 14) (- 0 15)) (<= FullPerm (select (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| Mask@13) (|Seq#Index_27988| c i@@39) Ref__Integer_value))) (=> (<= FullPerm (select (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| Mask@13) (|Seq#Index_27988| c i@@39) Ref__Integer_value)) (=> (= (ControlFlow 0 14) 13) anon20_correct))))))
(let ((anon18_correct  (=> (= Mask@13 (PolymorphicMapType_39401 (store (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| Mask@12) (|Seq#Index_27988| b_24 i@@39) Ref__Integer_value (- (select (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| Mask@12) (|Seq#Index_27988| b_24 i@@39) Ref__Integer_value) perm@11)) (|PolymorphicMapType_39401_27949_53#PolymorphicMapType_39401| Mask@12) (|PolymorphicMapType_39401_27949_39454#PolymorphicMapType_39401| Mask@12) (|PolymorphicMapType_39401_27949_112349#PolymorphicMapType_39401| Mask@12) (|PolymorphicMapType_39401_27949_116604#PolymorphicMapType_39401| Mask@12))) (and (=> (= (ControlFlow 0 17) 14) anon30_Then_correct) (=> (= (ControlFlow 0 17) 16) anon30_Else_correct)))))
(let ((anon29_Else_correct  (=> (and (= perm@11 NoPerm) (= (ControlFlow 0 20) 17)) anon18_correct)))
(let ((anon29_Then_correct  (=> (not (= perm@11 NoPerm)) (and (=> (= (ControlFlow 0 18) (- 0 19)) (<= perm@11 (select (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| Mask@12) (|Seq#Index_27988| b_24 i@@39) Ref__Integer_value))) (=> (<= perm@11 (select (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| Mask@12) (|Seq#Index_27988| b_24 i@@39) Ref__Integer_value)) (=> (= (ControlFlow 0 18) 17) anon18_correct))))))
(let ((anon16_correct  (=> (and (= Mask@12 (PolymorphicMapType_39401 (store (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| Mask@11) (|Seq#Index_27988| a_2 i@@39) Ref__Integer_value (- (select (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| Mask@11) (|Seq#Index_27988| a_2 i@@39) Ref__Integer_value) perm@10)) (|PolymorphicMapType_39401_27949_53#PolymorphicMapType_39401| Mask@11) (|PolymorphicMapType_39401_27949_39454#PolymorphicMapType_39401| Mask@11) (|PolymorphicMapType_39401_27949_112349#PolymorphicMapType_39401| Mask@11) (|PolymorphicMapType_39401_27949_116604#PolymorphicMapType_39401| Mask@11))) (= perm@11 (/ (to_real 1) (to_real 2)))) (and (=> (= (ControlFlow 0 21) (- 0 22)) (>= perm@11 NoPerm)) (=> (>= perm@11 NoPerm) (and (=> (= (ControlFlow 0 21) 18) anon29_Then_correct) (=> (= (ControlFlow 0 21) 20) anon29_Else_correct)))))))
(let ((anon28_Else_correct  (=> (and (= perm@10 NoPerm) (= (ControlFlow 0 25) 21)) anon16_correct)))
(let ((anon28_Then_correct  (=> (not (= perm@10 NoPerm)) (and (=> (= (ControlFlow 0 23) (- 0 24)) (<= perm@10 (select (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| Mask@11) (|Seq#Index_27988| a_2 i@@39) Ref__Integer_value))) (=> (<= perm@10 (select (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| Mask@11) (|Seq#Index_27988| a_2 i@@39) Ref__Integer_value)) (=> (= (ControlFlow 0 23) 21) anon16_correct))))))
(let ((anon14_correct  (=> (and (= Mask@11 (PolymorphicMapType_39401 (store (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| Mask@10) (|Seq#Index_27988| a_2 i@@39) Ref__Integer_value (- (select (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| Mask@10) (|Seq#Index_27988| a_2 i@@39) Ref__Integer_value) perm@9)) (|PolymorphicMapType_39401_27949_53#PolymorphicMapType_39401| Mask@10) (|PolymorphicMapType_39401_27949_39454#PolymorphicMapType_39401| Mask@10) (|PolymorphicMapType_39401_27949_112349#PolymorphicMapType_39401| Mask@10) (|PolymorphicMapType_39401_27949_116604#PolymorphicMapType_39401| Mask@10))) (= perm@10 (/ (to_real 1) (to_real 2)))) (and (=> (= (ControlFlow 0 26) (- 0 27)) (>= perm@10 NoPerm)) (=> (>= perm@10 NoPerm) (and (=> (= (ControlFlow 0 26) 23) anon28_Then_correct) (=> (= (ControlFlow 0 26) 25) anon28_Else_correct)))))))
(let ((anon27_Else_correct  (=> (and (= perm@9 NoPerm) (= (ControlFlow 0 30) 26)) anon14_correct)))
(let ((anon27_Then_correct  (=> (not (= perm@9 NoPerm)) (and (=> (= (ControlFlow 0 28) (- 0 29)) (<= perm@9 (select (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| Mask@10) (|Seq#Index_27988| a_2 i@@39) Ref__Integer_value))) (=> (<= perm@9 (select (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| Mask@10) (|Seq#Index_27988| a_2 i@@39) Ref__Integer_value)) (=> (= (ControlFlow 0 28) 26) anon14_correct))))))
(let ((anon12_correct  (=> (state Heap@2 Mask@10) (and (=> (= (ControlFlow 0 31) (- 0 34)) (<= 0 i@@39)) (=> (<= 0 i@@39) (and (=> (= (ControlFlow 0 31) (- 0 33)) (< i@@39 N)) (=> (< i@@39 N) (=> (= perm@9 (/ (to_real 1) (to_real 2))) (and (=> (= (ControlFlow 0 31) (- 0 32)) (>= perm@9 NoPerm)) (=> (>= perm@9 NoPerm) (and (=> (= (ControlFlow 0 31) 28) anon27_Then_correct) (=> (= (ControlFlow 0 31) 30) anon27_Else_correct))))))))))))
(let ((anon11_correct  (=> (= Mask@9 (PolymorphicMapType_39401 (store (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| Mask@8) (|Seq#Index_27988| a_2 (+ i@@39 1)) Ref__Integer_value (- (select (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| Mask@8) (|Seq#Index_27988| a_2 (+ i@@39 1)) Ref__Integer_value) perm@8)) (|PolymorphicMapType_39401_27949_53#PolymorphicMapType_39401| Mask@8) (|PolymorphicMapType_39401_27949_39454#PolymorphicMapType_39401| Mask@8) (|PolymorphicMapType_39401_27949_112349#PolymorphicMapType_39401| Mask@8) (|PolymorphicMapType_39401_27949_116604#PolymorphicMapType_39401| Mask@8))) (=> (and (IdenticalOnKnownLocations Heap@1 ExhaleHeap@0 Mask@9) (state ExhaleHeap@0 Mask@9)) (=> (and (and (state ExhaleHeap@0 Mask@9) (= Mask@10 Mask@9)) (and (= Heap@2 ExhaleHeap@0) (= (ControlFlow 0 36) 31))) anon12_correct)))))
(let ((anon26_Else_correct  (=> (and (= perm@8 NoPerm) (= (ControlFlow 0 39) 36)) anon11_correct)))
(let ((anon26_Then_correct  (=> (not (= perm@8 NoPerm)) (and (=> (= (ControlFlow 0 37) (- 0 38)) (<= perm@8 (select (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| Mask@8) (|Seq#Index_27988| a_2 (+ i@@39 1)) Ref__Integer_value))) (=> (<= perm@8 (select (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| Mask@8) (|Seq#Index_27988| a_2 (+ i@@39 1)) Ref__Integer_value)) (=> (= (ControlFlow 0 37) 36) anon11_correct))))))
(let ((anon25_Then_correct  (=> (< i@@39 (- N 1)) (and (=> (= (ControlFlow 0 40) (- 0 51)) (>= i@@39 0)) (=> (>= i@@39 0) (and (=> (= (ControlFlow 0 40) (- 0 50)) (< i@@39 (|Seq#Length_27988| c))) (=> (< i@@39 (|Seq#Length_27988| c)) (=> (and (= __flatten_8@0 (|Seq#Index_27988| c i@@39)) (state Heap@0 Mask@8)) (and (=> (= (ControlFlow 0 40) (- 0 49)) (>= (+ i@@39 1) 0)) (=> (>= (+ i@@39 1) 0) (and (=> (= (ControlFlow 0 40) (- 0 48)) (< (+ i@@39 1) (|Seq#Length_27988| a_2))) (=> (< (+ i@@39 1) (|Seq#Length_27988| a_2)) (=> (and (= __flatten_10@0 (|Seq#Index_27988| a_2 (+ i@@39 1))) (state Heap@0 Mask@8)) (and (=> (= (ControlFlow 0 40) (- 0 47)) (HasDirectPerm_27949_3877 Mask@8 __flatten_10@0 Ref__Integer_value)) (=> (HasDirectPerm_27949_3877 Mask@8 __flatten_10@0 Ref__Integer_value) (=> (and (= __flatten_9@0 (+ (select (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| Heap@0) __flatten_10@0 Ref__Integer_value) 2)) (state Heap@0 Mask@8)) (and (=> (= (ControlFlow 0 40) (- 0 46)) (= FullPerm (select (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| Mask@8) __flatten_8@0 Ref__Integer_value))) (=> (= FullPerm (select (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| Mask@8) __flatten_8@0 Ref__Integer_value)) (=> (and (= Heap@1 (PolymorphicMapType_39380 (|PolymorphicMapType_39380_27687_53#PolymorphicMapType_39380| Heap@0) (|PolymorphicMapType_39380_27690_27691#PolymorphicMapType_39380| Heap@0) (store (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| Heap@0) __flatten_8@0 Ref__Integer_value __flatten_9@0) (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| Heap@0) (|PolymorphicMapType_39380_39440_112349#PolymorphicMapType_39380| Heap@0))) (state Heap@1 Mask@8)) (and (=> (= (ControlFlow 0 40) (- 0 45)) (not (= diz null))) (=> (not (= diz null)) (and (=> (= (ControlFlow 0 40) (- 0 44)) (>= current_thread_id 0)) (=> (>= current_thread_id 0) (and (=> (= (ControlFlow 0 40) (- 0 43)) (<= (- 0 1) i@@39)) (=> (<= (- 0 1) i@@39) (and (=> (= (ControlFlow 0 40) (- 0 42)) (< (+ i@@39 1) (|Seq#Length_27988| a_2))) (=> (< (+ i@@39 1) (|Seq#Length_27988| a_2)) (=> (= perm@8 (/ (to_real 1) (to_real 2))) (and (=> (= (ControlFlow 0 40) (- 0 41)) (>= perm@8 NoPerm)) (=> (>= perm@8 NoPerm) (and (=> (= (ControlFlow 0 40) 37) anon26_Then_correct) (=> (= (ControlFlow 0 40) 39) anon26_Else_correct))))))))))))))))))))))))))))))))
(let ((anon25_Else_correct  (=> (and (and (<= (- N 1) i@@39) (= Mask@10 Mask@8)) (and (= Heap@2 Heap@0) (= (ControlFlow 0 35) 31))) anon12_correct)))
(let ((anon8_correct  (=> (state Heap@@41 Mask@8) (and (=> (= (ControlFlow 0 52) (- 0 58)) (>= i@@39 0)) (=> (>= i@@39 0) (and (=> (= (ControlFlow 0 52) (- 0 57)) (< i@@39 (|Seq#Length_27988| a_2))) (=> (< i@@39 (|Seq#Length_27988| a_2)) (=> (and (= __flatten_5@0 (|Seq#Index_27988| a_2 i@@39)) (state Heap@@41 Mask@8)) (and (=> (= (ControlFlow 0 52) (- 0 56)) (>= i@@39 0)) (=> (>= i@@39 0) (and (=> (= (ControlFlow 0 52) (- 0 55)) (< i@@39 (|Seq#Length_27988| b_24))) (=> (< i@@39 (|Seq#Length_27988| b_24)) (=> (and (= __flatten_7@0 (|Seq#Index_27988| b_24 i@@39)) (state Heap@@41 Mask@8)) (and (=> (= (ControlFlow 0 52) (- 0 54)) (HasDirectPerm_27949_3877 Mask@8 __flatten_7@0 Ref__Integer_value)) (=> (HasDirectPerm_27949_3877 Mask@8 __flatten_7@0 Ref__Integer_value) (=> (and (= __flatten_6@0 (+ (select (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| Heap@@41) __flatten_7@0 Ref__Integer_value) 1)) (state Heap@@41 Mask@8)) (and (=> (= (ControlFlow 0 52) (- 0 53)) (= FullPerm (select (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| Mask@8) __flatten_5@0 Ref__Integer_value))) (=> (= FullPerm (select (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| Mask@8) __flatten_5@0 Ref__Integer_value)) (=> (and (= Heap@0 (PolymorphicMapType_39380 (|PolymorphicMapType_39380_27687_53#PolymorphicMapType_39380| Heap@@41) (|PolymorphicMapType_39380_27690_27691#PolymorphicMapType_39380| Heap@@41) (store (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| Heap@@41) __flatten_5@0 Ref__Integer_value __flatten_6@0) (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| Heap@@41) (|PolymorphicMapType_39380_39440_112349#PolymorphicMapType_39380| Heap@@41))) (state Heap@0 Mask@8)) (and (=> (= (ControlFlow 0 52) 40) anon25_Then_correct) (=> (= (ControlFlow 0 52) 35) anon25_Else_correct)))))))))))))))))))))
(let ((anon24_Else_correct  (=> (>= 0 i@@39) (=> (and (= Mask@8 Mask@6) (= (ControlFlow 0 65) 52)) anon8_correct))))
(let ((anon24_Then_correct  (=> (> i@@39 0) (and (=> (= (ControlFlow 0 59) (- 0 64)) (not (= diz null))) (=> (not (= diz null)) (and (=> (= (ControlFlow 0 59) (- 0 63)) (>= current_thread_id 0)) (=> (>= current_thread_id 0) (and (=> (= (ControlFlow 0 59) (- 0 62)) (<= 0 i@@39)) (=> (<= 0 i@@39) (and (=> (= (ControlFlow 0 59) (- 0 61)) (< i@@39 (|Seq#Length_27988| a_2))) (=> (< i@@39 (|Seq#Length_27988| a_2)) (=> (= perm@7 (/ (to_real 1) (to_real 2))) (and (=> (= (ControlFlow 0 59) (- 0 60)) (>= perm@7 NoPerm)) (=> (>= perm@7 NoPerm) (=> (=> (> perm@7 NoPerm) (not (= (|Seq#Index_27988| a_2 i@@39) null))) (=> (and (= Mask@7 (PolymorphicMapType_39401 (store (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| Mask@6) (|Seq#Index_27988| a_2 i@@39) Ref__Integer_value (+ (select (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| Mask@6) (|Seq#Index_27988| a_2 i@@39) Ref__Integer_value) perm@7)) (|PolymorphicMapType_39401_27949_53#PolymorphicMapType_39401| Mask@6) (|PolymorphicMapType_39401_27949_39454#PolymorphicMapType_39401| Mask@6) (|PolymorphicMapType_39401_27949_112349#PolymorphicMapType_39401| Mask@6) (|PolymorphicMapType_39401_27949_116604#PolymorphicMapType_39401| Mask@6))) (state Heap@@41 Mask@7)) (=> (and (and (state Heap@@41 Mask@7) (state Heap@@41 Mask@7)) (and (= Mask@8 Mask@7) (= (ControlFlow 0 59) 52))) anon8_correct)))))))))))))))))
(let ((anon23_Else_correct  (=> (and (and (select (|PolymorphicMapType_39380_27687_53#PolymorphicMapType_39380| Heap@@41) __flatten_5 $allocated) (select (|PolymorphicMapType_39380_27687_53#PolymorphicMapType_39380| Heap@@41) __flatten_7 $allocated)) (and (select (|PolymorphicMapType_39380_27687_53#PolymorphicMapType_39380| Heap@@41) __flatten_8 $allocated) (select (|PolymorphicMapType_39380_27687_53#PolymorphicMapType_39380| Heap@@41) __flatten_10 $allocated))) (and (=> (= (ControlFlow 0 66) 59) anon24_Then_correct) (=> (= (ControlFlow 0 66) 65) anon24_Else_correct)))))
(let ((anon23_Then_correct  (=> (and (and (state PostHeap@0 ZeroMask) (<= 0 i@@39)) (and (< i@@39 N) (state PostHeap@0 ZeroMask))) (and (=> (= (ControlFlow 0 2) (- 0 12)) (>= i@@39 0)) (=> (>= i@@39 0) (and (=> (= (ControlFlow 0 2) (- 0 11)) (< i@@39 (|Seq#Length_27988| a_2))) (=> (< i@@39 (|Seq#Length_27988| a_2)) (=> (= perm@4 (/ (to_real 1) (to_real 2))) (and (=> (= (ControlFlow 0 2) (- 0 10)) (>= perm@4 NoPerm)) (=> (>= perm@4 NoPerm) (=> (and (and (=> (> perm@4 NoPerm) (not (= (|Seq#Index_27988| a_2 i@@39) null))) (= PostMask@0 (PolymorphicMapType_39401 (store (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| ZeroMask) (|Seq#Index_27988| a_2 i@@39) Ref__Integer_value (+ (select (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| ZeroMask) (|Seq#Index_27988| a_2 i@@39) Ref__Integer_value) perm@4)) (|PolymorphicMapType_39401_27949_53#PolymorphicMapType_39401| ZeroMask) (|PolymorphicMapType_39401_27949_39454#PolymorphicMapType_39401| ZeroMask) (|PolymorphicMapType_39401_27949_112349#PolymorphicMapType_39401| ZeroMask) (|PolymorphicMapType_39401_27949_116604#PolymorphicMapType_39401| ZeroMask)))) (and (state PostHeap@0 PostMask@0) (state PostHeap@0 PostMask@0))) (and (=> (= (ControlFlow 0 2) (- 0 9)) (>= i@@39 0)) (=> (>= i@@39 0) (and (=> (= (ControlFlow 0 2) (- 0 8)) (< i@@39 (|Seq#Length_27988| a_2))) (=> (< i@@39 (|Seq#Length_27988| a_2)) (=> (= perm@5 (/ (to_real 1) (to_real 2))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (>= perm@5 NoPerm)) (=> (>= perm@5 NoPerm) (=> (and (and (=> (> perm@5 NoPerm) (not (= (|Seq#Index_27988| a_2 i@@39) null))) (= PostMask@1 (PolymorphicMapType_39401 (store (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| PostMask@0) (|Seq#Index_27988| a_2 i@@39) Ref__Integer_value (+ (select (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| PostMask@0) (|Seq#Index_27988| a_2 i@@39) Ref__Integer_value) perm@5)) (|PolymorphicMapType_39401_27949_53#PolymorphicMapType_39401| PostMask@0) (|PolymorphicMapType_39401_27949_39454#PolymorphicMapType_39401| PostMask@0) (|PolymorphicMapType_39401_27949_112349#PolymorphicMapType_39401| PostMask@0) (|PolymorphicMapType_39401_27949_116604#PolymorphicMapType_39401| PostMask@0)))) (and (state PostHeap@0 PostMask@1) (state PostHeap@0 PostMask@1))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= i@@39 0)) (=> (>= i@@39 0) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< i@@39 (|Seq#Length_27988| b_24))) (=> (< i@@39 (|Seq#Length_27988| b_24)) (=> (= perm@6 (/ (to_real 1) (to_real 2))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= perm@6 NoPerm)) (=> (>= perm@6 NoPerm) (=> (and (and (=> (> perm@6 NoPerm) (not (= (|Seq#Index_27988| b_24 i@@39) null))) (= PostMask@2 (PolymorphicMapType_39401 (store (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| PostMask@1) (|Seq#Index_27988| b_24 i@@39) Ref__Integer_value (+ (select (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| PostMask@1) (|Seq#Index_27988| b_24 i@@39) Ref__Integer_value) perm@6)) (|PolymorphicMapType_39401_27949_53#PolymorphicMapType_39401| PostMask@1) (|PolymorphicMapType_39401_27949_39454#PolymorphicMapType_39401| PostMask@1) (|PolymorphicMapType_39401_27949_112349#PolymorphicMapType_39401| PostMask@1) (|PolymorphicMapType_39401_27949_116604#PolymorphicMapType_39401| PostMask@1)))) (and (state PostHeap@0 PostMask@2) (state PostHeap@0 PostMask@2))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (>= i@@39 0)) (=> (>= i@@39 0) (=> (= (ControlFlow 0 2) (- 0 1)) (< i@@39 (|Seq#Length_27988| c))))))))))))))))))))))))))))))))
(let ((anon4_correct  (=> (state Heap@@41 Mask@6) (and (=> (= (ControlFlow 0 67) 2) anon23_Then_correct) (=> (= (ControlFlow 0 67) 66) anon23_Else_correct)))))
(let ((anon22_Else_correct  (=> (<= (- N 1) i@@39) (=> (and (= Mask@6 Mask@4) (= (ControlFlow 0 72) 67)) anon4_correct))))
(let ((anon22_Then_correct  (=> (< i@@39 (- N 1)) (and (=> (= (ControlFlow 0 68) (- 0 71)) (>= (+ i@@39 1) 0)) (=> (>= (+ i@@39 1) 0) (and (=> (= (ControlFlow 0 68) (- 0 70)) (< (+ i@@39 1) (|Seq#Length_27988| a_2))) (=> (< (+ i@@39 1) (|Seq#Length_27988| a_2)) (=> (= perm@3 (/ (to_real 1) (to_real 2))) (and (=> (= (ControlFlow 0 68) (- 0 69)) (>= perm@3 NoPerm)) (=> (>= perm@3 NoPerm) (=> (=> (> perm@3 NoPerm) (not (= (|Seq#Index_27988| a_2 (+ i@@39 1)) null))) (=> (and (and (= Mask@5 (PolymorphicMapType_39401 (store (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| Mask@4) (|Seq#Index_27988| a_2 (+ i@@39 1)) Ref__Integer_value (+ (select (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| Mask@4) (|Seq#Index_27988| a_2 (+ i@@39 1)) Ref__Integer_value) perm@3)) (|PolymorphicMapType_39401_27949_53#PolymorphicMapType_39401| Mask@4) (|PolymorphicMapType_39401_27949_39454#PolymorphicMapType_39401| Mask@4) (|PolymorphicMapType_39401_27949_112349#PolymorphicMapType_39401| Mask@4) (|PolymorphicMapType_39401_27949_116604#PolymorphicMapType_39401| Mask@4))) (state Heap@@41 Mask@5)) (and (= Mask@6 Mask@5) (= (ControlFlow 0 68) 67))) anon4_correct))))))))))))
(let ((anon2_correct  (=> (state Heap@@41 Mask@4) (and (=> (= (ControlFlow 0 73) 68) anon22_Then_correct) (=> (= (ControlFlow 0 73) 72) anon22_Else_correct)))))
(let ((anon21_Else_correct  (=> (not (= i@@39 0)) (=> (and (= Mask@4 Mask@2) (= (ControlFlow 0 78) 73)) anon2_correct))))
(let ((anon21_Then_correct  (=> (= i@@39 0) (and (=> (= (ControlFlow 0 74) (- 0 77)) (>= i@@39 0)) (=> (>= i@@39 0) (and (=> (= (ControlFlow 0 74) (- 0 76)) (< i@@39 (|Seq#Length_27988| a_2))) (=> (< i@@39 (|Seq#Length_27988| a_2)) (=> (= perm@2 (/ (to_real 1) (to_real 2))) (and (=> (= (ControlFlow 0 74) (- 0 75)) (>= perm@2 NoPerm)) (=> (>= perm@2 NoPerm) (=> (=> (> perm@2 NoPerm) (not (= (|Seq#Index_27988| a_2 i@@39) null))) (=> (and (and (= Mask@3 (PolymorphicMapType_39401 (store (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| Mask@2) (|Seq#Index_27988| a_2 i@@39) Ref__Integer_value (+ (select (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| Mask@2) (|Seq#Index_27988| a_2 i@@39) Ref__Integer_value) perm@2)) (|PolymorphicMapType_39401_27949_53#PolymorphicMapType_39401| Mask@2) (|PolymorphicMapType_39401_27949_39454#PolymorphicMapType_39401| Mask@2) (|PolymorphicMapType_39401_27949_112349#PolymorphicMapType_39401| Mask@2) (|PolymorphicMapType_39401_27949_116604#PolymorphicMapType_39401| Mask@2))) (state Heap@@41 Mask@3)) (and (= Mask@4 Mask@3) (= (ControlFlow 0 74) 73))) anon2_correct))))))))))))
(let ((anon0_correct  (=> (state Heap@@41 ZeroMask) (=> (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (=> (and (and (select (|PolymorphicMapType_39380_27687_53#PolymorphicMapType_39380| Heap@@41) diz $allocated) (not (= diz null))) (and (state Heap@@41 ZeroMask) (>= current_thread_id 0))) (=> (and (and (and (state Heap@@41 ZeroMask) (<= 0 i@@39)) (and (< i@@39 N) (state Heap@@41 ZeroMask))) (and (and (<= N (|Seq#Length_27988| a_2)) (<= N (|Seq#Length_27988| b_24))) (and (<= N (|Seq#Length_27988| c)) (state Heap@@41 ZeroMask)))) (and (=> (= (ControlFlow 0 79) (- 0 87)) (>= i@@39 0)) (=> (>= i@@39 0) (and (=> (= (ControlFlow 0 79) (- 0 86)) (< i@@39 (|Seq#Length_27988| a_2))) (=> (< i@@39 (|Seq#Length_27988| a_2)) (=> (= perm@0 (/ (to_real 1) (to_real 2))) (and (=> (= (ControlFlow 0 79) (- 0 85)) (>= perm@0 NoPerm)) (=> (>= perm@0 NoPerm) (=> (and (and (=> (> perm@0 NoPerm) (not (= (|Seq#Index_27988| a_2 i@@39) null))) (= Mask@0 (PolymorphicMapType_39401 (store (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| ZeroMask) (|Seq#Index_27988| a_2 i@@39) Ref__Integer_value (+ (select (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| ZeroMask) (|Seq#Index_27988| a_2 i@@39) Ref__Integer_value) perm@0)) (|PolymorphicMapType_39401_27949_53#PolymorphicMapType_39401| ZeroMask) (|PolymorphicMapType_39401_27949_39454#PolymorphicMapType_39401| ZeroMask) (|PolymorphicMapType_39401_27949_112349#PolymorphicMapType_39401| ZeroMask) (|PolymorphicMapType_39401_27949_116604#PolymorphicMapType_39401| ZeroMask)))) (and (state Heap@@41 Mask@0) (state Heap@@41 Mask@0))) (and (=> (= (ControlFlow 0 79) (- 0 84)) (>= i@@39 0)) (=> (>= i@@39 0) (and (=> (= (ControlFlow 0 79) (- 0 83)) (< i@@39 (|Seq#Length_27988| b_24))) (=> (< i@@39 (|Seq#Length_27988| b_24)) (=> (= perm@1 (/ (to_real 1) (to_real 2))) (and (=> (= (ControlFlow 0 79) (- 0 82)) (>= perm@1 NoPerm)) (=> (>= perm@1 NoPerm) (=> (and (and (=> (> perm@1 NoPerm) (not (= (|Seq#Index_27988| b_24 i@@39) null))) (= Mask@1 (PolymorphicMapType_39401 (store (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| Mask@0) (|Seq#Index_27988| b_24 i@@39) Ref__Integer_value (+ (select (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| Mask@0) (|Seq#Index_27988| b_24 i@@39) Ref__Integer_value) perm@1)) (|PolymorphicMapType_39401_27949_53#PolymorphicMapType_39401| Mask@0) (|PolymorphicMapType_39401_27949_39454#PolymorphicMapType_39401| Mask@0) (|PolymorphicMapType_39401_27949_112349#PolymorphicMapType_39401| Mask@0) (|PolymorphicMapType_39401_27949_116604#PolymorphicMapType_39401| Mask@0)))) (and (state Heap@@41 Mask@1) (state Heap@@41 Mask@1))) (and (=> (= (ControlFlow 0 79) (- 0 81)) (>= i@@39 0)) (=> (>= i@@39 0) (and (=> (= (ControlFlow 0 79) (- 0 80)) (< i@@39 (|Seq#Length_27988| c))) (=> (< i@@39 (|Seq#Length_27988| c)) (=> (and (and (not (= (|Seq#Index_27988| c i@@39) null)) (= Mask@2 (PolymorphicMapType_39401 (store (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| Mask@1) (|Seq#Index_27988| c i@@39) Ref__Integer_value (+ (select (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| Mask@1) (|Seq#Index_27988| c i@@39) Ref__Integer_value) FullPerm)) (|PolymorphicMapType_39401_27949_53#PolymorphicMapType_39401| Mask@1) (|PolymorphicMapType_39401_27949_39454#PolymorphicMapType_39401| Mask@1) (|PolymorphicMapType_39401_27949_112349#PolymorphicMapType_39401| Mask@1) (|PolymorphicMapType_39401_27949_116604#PolymorphicMapType_39401| Mask@1)))) (and (state Heap@@41 Mask@2) (state Heap@@41 Mask@2))) (and (=> (= (ControlFlow 0 79) 74) anon21_Then_correct) (=> (= (ControlFlow 0 79) 78) anon21_Else_correct)))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 88) 79) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))
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
(declare-sort T@Field_39440_53 0)
(declare-sort T@Field_39453_39454 0)
(declare-sort T@Field_45532_3877 0)
(declare-sort T@Field_27949_112482 0)
(declare-sort T@Field_27949_112349 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_39401 0)) (((PolymorphicMapType_39401 (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| (Array T@Ref T@Field_45532_3877 Real)) (|PolymorphicMapType_39401_27949_53#PolymorphicMapType_39401| (Array T@Ref T@Field_39440_53 Real)) (|PolymorphicMapType_39401_27949_39454#PolymorphicMapType_39401| (Array T@Ref T@Field_39453_39454 Real)) (|PolymorphicMapType_39401_27949_112349#PolymorphicMapType_39401| (Array T@Ref T@Field_27949_112349 Real)) (|PolymorphicMapType_39401_27949_116604#PolymorphicMapType_39401| (Array T@Ref T@Field_27949_112482 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_39929 0)) (((PolymorphicMapType_39929 (|PolymorphicMapType_39929_39440_53#PolymorphicMapType_39929| (Array T@Ref T@Field_39440_53 Bool)) (|PolymorphicMapType_39929_39440_39454#PolymorphicMapType_39929| (Array T@Ref T@Field_39453_39454 Bool)) (|PolymorphicMapType_39929_39440_3877#PolymorphicMapType_39929| (Array T@Ref T@Field_45532_3877 Bool)) (|PolymorphicMapType_39929_39440_112349#PolymorphicMapType_39929| (Array T@Ref T@Field_27949_112349 Bool)) (|PolymorphicMapType_39929_39440_113660#PolymorphicMapType_39929| (Array T@Ref T@Field_27949_112482 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_39380 0)) (((PolymorphicMapType_39380 (|PolymorphicMapType_39380_27687_53#PolymorphicMapType_39380| (Array T@Ref T@Field_39440_53 Bool)) (|PolymorphicMapType_39380_27690_27691#PolymorphicMapType_39380| (Array T@Ref T@Field_39453_39454 T@Ref)) (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| (Array T@Ref T@Field_45532_3877 Int)) (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| (Array T@Ref T@Field_27949_112482 T@PolymorphicMapType_39929)) (|PolymorphicMapType_39380_39440_112349#PolymorphicMapType_39380| (Array T@Ref T@Field_27949_112349 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_39440_53)
(declare-fun Ref__Integer_value () T@Field_45532_3877)
(declare-sort T@Seq_46574 0)
(declare-fun |Seq#Length_27988| (T@Seq_46574) Int)
(declare-fun |Seq#Drop_27988| (T@Seq_46574 Int) T@Seq_46574)
(declare-sort T@Seq_3755 0)
(declare-fun |Seq#Length_3755| (T@Seq_3755) Int)
(declare-fun |Seq#Drop_3755| (T@Seq_3755 Int) T@Seq_3755)
(declare-fun state (T@PolymorphicMapType_39380 T@PolymorphicMapType_39401) Bool)
(declare-fun |count_square'| (T@PolymorphicMapType_39380 Int Int Int Int Int Int T@Seq_46574 Int) Int)
(declare-fun |count_square#frame| (T@FrameType Int Int Int Int Int Int T@Seq_46574 Int) Int)
(declare-fun FrameFragment_4736 (Int) T@FrameType)
(declare-fun |count_square#condqp3| (T@PolymorphicMapType_39380 Int Int Int Int Int Int T@Seq_46574 Int) Int)
(declare-fun succHeap (T@PolymorphicMapType_39380 T@PolymorphicMapType_39380) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_39380 T@PolymorphicMapType_39380) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_39401) Bool)
(declare-fun |sum_list'| (T@PolymorphicMapType_39380 Int Int T@Seq_3755) Int)
(declare-fun dummyFunction_4184 (Int) Bool)
(declare-fun |sum_list#triggerStateless| (Int Int T@Seq_3755) Int)
(declare-fun ZeroPMask () T@PolymorphicMapType_39929)
(declare-fun |Seq#Index_27988| (T@Seq_46574 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3755| (T@Seq_3755 Int) Int)
(declare-fun |Seq#Empty_27988| () T@Seq_46574)
(declare-fun |Seq#Empty_3755| () T@Seq_3755)
(declare-fun |Seq#Update_27988| (T@Seq_46574 Int T@Ref) T@Seq_46574)
(declare-fun |Seq#Update_3755| (T@Seq_3755 Int Int) T@Seq_3755)
(declare-fun |Seq#Take_27988| (T@Seq_46574 Int) T@Seq_46574)
(declare-fun |Seq#Take_3755| (T@Seq_3755 Int) T@Seq_3755)
(declare-fun |Seq#Contains_3755| (T@Seq_3755 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3755)
(declare-fun |Seq#Contains_46574| (T@Seq_46574 T@Ref) Bool)
(declare-fun |Seq#Skolem_46574| (T@Seq_46574 T@Ref) Int)
(declare-fun |Seq#Skolem_3755| (T@Seq_3755 Int) Int)
(declare-fun sum_array (T@PolymorphicMapType_39380 Int Int Int T@Seq_46574) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |sum_array'| (T@PolymorphicMapType_39380 Int Int Int T@Seq_46574) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_39380 T@PolymorphicMapType_39380 T@PolymorphicMapType_39401) Bool)
(declare-fun IsPredicateField_27949_112440 (T@Field_27949_112349) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_27949 (T@Field_27949_112349) T@Field_27949_112482)
(declare-fun HasDirectPerm_27949_112413 (T@PolymorphicMapType_39401 T@Ref T@Field_27949_112349) Bool)
(declare-fun IsWandField_27949_114187 (T@Field_27949_112349) Bool)
(declare-fun WandMaskField_27949 (T@Field_27949_112349) T@Field_27949_112482)
(declare-fun |Seq#Singleton_27988| (T@Ref) T@Seq_46574)
(declare-fun |Seq#Singleton_3755| (Int) T@Seq_3755)
(declare-fun count_square (T@PolymorphicMapType_39380 Int Int Int Int Int Int T@Seq_46574 Int) Int)
(declare-fun |count_square#triggerStateless| (Int Int Int Int Int Int T@Seq_46574 Int) Int)
(declare-fun |Seq#Append_46574| (T@Seq_46574 T@Seq_46574) T@Seq_46574)
(declare-fun |Seq#Append_3755| (T@Seq_3755 T@Seq_3755) T@Seq_3755)
(declare-fun |sum_square#condqp2| (T@PolymorphicMapType_39380 Int Int Int Int Int Int T@Seq_46574) Int)
(declare-fun |sk_sum_square#condqp2| (Int Int) Int)
(declare-fun |sk_count_square#condqp3| (Int Int) Int)
(declare-fun dummyHeap () T@PolymorphicMapType_39380)
(declare-fun ZeroMask () T@PolymorphicMapType_39401)
(declare-fun sum_square (T@PolymorphicMapType_39380 Int Int Int Int Int Int T@Seq_46574) Int)
(declare-fun |sum_square'| (T@PolymorphicMapType_39380 Int Int Int Int Int Int T@Seq_46574) Int)
(declare-fun InsidePredicate_39440_39440 (T@Field_27949_112349 T@FrameType T@Field_27949_112349 T@FrameType) Bool)
(declare-fun IsPredicateField_27949_3877 (T@Field_45532_3877) Bool)
(declare-fun IsWandField_27949_3877 (T@Field_45532_3877) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_27949_117733 (T@Field_27949_112482) Bool)
(declare-fun IsWandField_27949_117749 (T@Field_27949_112482) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_27949_39454 (T@Field_39453_39454) Bool)
(declare-fun IsWandField_27949_39454 (T@Field_39453_39454) Bool)
(declare-fun IsPredicateField_27949_53 (T@Field_39440_53) Bool)
(declare-fun IsWandField_27949_53 (T@Field_39440_53) Bool)
(declare-fun |sum_list#frame| (T@FrameType Int Int T@Seq_3755) Int)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun HasDirectPerm_27949_118187 (T@PolymorphicMapType_39401 T@Ref T@Field_27949_112482) Bool)
(declare-fun HasDirectPerm_27949_39454 (T@PolymorphicMapType_39401 T@Ref T@Field_39453_39454) Bool)
(declare-fun HasDirectPerm_27949_53 (T@PolymorphicMapType_39401 T@Ref T@Field_39440_53) Bool)
(declare-fun HasDirectPerm_27949_3877 (T@PolymorphicMapType_39401 T@Ref T@Field_45532_3877) Bool)
(declare-fun |sum_array#triggerStateless| (Int Int Int T@Seq_46574) Int)
(declare-fun |count_list'| (T@PolymorphicMapType_39380 Int Int T@Seq_3755 Int) Int)
(declare-fun |count_list#triggerStateless| (Int Int T@Seq_3755 Int) Int)
(declare-fun |count_array'| (T@PolymorphicMapType_39380 Int Int T@Seq_46574 Int) Int)
(declare-fun |count_array#triggerStateless| (Int Int T@Seq_46574 Int) Int)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun count_list (T@PolymorphicMapType_39380 Int Int T@Seq_3755 Int) Int)
(declare-fun count_array (T@PolymorphicMapType_39380 Int Int T@Seq_46574 Int) Int)
(declare-fun sumMask (T@PolymorphicMapType_39401 T@PolymorphicMapType_39401 T@PolymorphicMapType_39401) Bool)
(declare-fun |sum_square#triggerStateless| (Int Int Int Int Int Int T@Seq_46574) Int)
(declare-fun |count_list#frame| (T@FrameType Int Int T@Seq_3755 Int) Int)
(declare-fun |Seq#Equal_46574| (T@Seq_46574 T@Seq_46574) Bool)
(declare-fun |Seq#Equal_3755| (T@Seq_3755 T@Seq_3755) Bool)
(declare-fun sum_list (T@PolymorphicMapType_39380 Int Int T@Seq_3755) Int)
(declare-fun |Seq#ContainsTrigger_27988| (T@Seq_46574 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3755| (T@Seq_3755 Int) Bool)
(declare-fun |count_array#condqp4| (T@PolymorphicMapType_39380 Int Int T@Seq_46574 Int) Int)
(declare-fun |sk_count_array#condqp4| (Int Int) Int)
(declare-fun |sum_array#condqp1| (T@PolymorphicMapType_39380 Int Int Int T@Seq_46574) Int)
(declare-fun |sk_sum_array#condqp1| (Int Int) Int)
(declare-fun |sum_square#frame| (T@FrameType Int Int Int Int Int Int T@Seq_46574) Int)
(declare-fun |Seq#SkolemDiff_46574| (T@Seq_46574 T@Seq_46574) Int)
(declare-fun |Seq#SkolemDiff_3755| (T@Seq_3755 T@Seq_3755) Int)
(declare-fun |sum_array#frame| (T@FrameType Int Int Int T@Seq_46574) Int)
(declare-fun |count_array#frame| (T@FrameType Int Int T@Seq_46574 Int) Int)
(assert (forall ((s T@Seq_46574) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_27988| s)) (= (|Seq#Length_27988| (|Seq#Drop_27988| s n)) (- (|Seq#Length_27988| s) n))) (=> (< (|Seq#Length_27988| s) n) (= (|Seq#Length_27988| (|Seq#Drop_27988| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_27988| (|Seq#Drop_27988| s n)) (|Seq#Length_27988| s))))
 :qid |stdinbpl.404:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_27988| (|Seq#Drop_27988| s n)))
 :pattern ( (|Seq#Length_27988| s) (|Seq#Drop_27988| s n))
)))
(assert (forall ((s@@0 T@Seq_3755) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3755| s@@0)) (= (|Seq#Length_3755| (|Seq#Drop_3755| s@@0 n@@0)) (- (|Seq#Length_3755| s@@0) n@@0))) (=> (< (|Seq#Length_3755| s@@0) n@@0) (= (|Seq#Length_3755| (|Seq#Drop_3755| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3755| (|Seq#Drop_3755| s@@0 n@@0)) (|Seq#Length_3755| s@@0))))
 :qid |stdinbpl.404:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3755| (|Seq#Drop_3755| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3755| s@@0) (|Seq#Drop_3755| s@@0 n@@0))
)))
(assert (forall ((Heap T@PolymorphicMapType_39380) (Mask T@PolymorphicMapType_39401) (i Int) (lo Int) (hi Int) (step Int) (vmin Int) (vmax_1 Int) (ar_1 T@Seq_46574) (v_2 Int) ) (!  (=> (state Heap Mask) (= (|count_square'| Heap i lo hi step vmin vmax_1 ar_1 v_2) (|count_square#frame| (FrameFragment_4736 (|count_square#condqp3| Heap i lo hi step vmin vmax_1 ar_1 v_2)) i lo hi step vmin vmax_1 ar_1 v_2)))
 :qid |stdinbpl.1292:15|
 :skolemid |108|
 :pattern ( (state Heap Mask) (|count_square'| Heap i lo hi step vmin vmax_1 ar_1 v_2))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_39380) (Heap1 T@PolymorphicMapType_39380) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_39380) (Mask@@0 T@PolymorphicMapType_39401) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_39380) (Heap1@@0 T@PolymorphicMapType_39380) (Heap2 T@PolymorphicMapType_39380) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_39380) (i@@0 Int) (hi@@0 Int) (ar_1@@0 T@Seq_3755) ) (! (dummyFunction_4184 (|sum_list#triggerStateless| i@@0 hi@@0 ar_1@@0))
 :qid |stdinbpl.690:15|
 :skolemid |59|
 :pattern ( (|sum_list'| Heap@@1 i@@0 hi@@0 ar_1@@0))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_27949_112482) ) (!  (not (select (|PolymorphicMapType_39929_39440_113660#PolymorphicMapType_39929| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_39929_39440_113660#PolymorphicMapType_39929| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_27949_112349) ) (!  (not (select (|PolymorphicMapType_39929_39440_112349#PolymorphicMapType_39929| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_39929_39440_112349#PolymorphicMapType_39929| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_45532_3877) ) (!  (not (select (|PolymorphicMapType_39929_39440_3877#PolymorphicMapType_39929| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_39929_39440_3877#PolymorphicMapType_39929| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_39453_39454) ) (!  (not (select (|PolymorphicMapType_39929_39440_39454#PolymorphicMapType_39929| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_39929_39440_39454#PolymorphicMapType_39929| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_39440_53) ) (!  (not (select (|PolymorphicMapType_39929_39440_53#PolymorphicMapType_39929| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_39929_39440_53#PolymorphicMapType_39929| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((s@@1 T@Seq_46574) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_27988| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_27988| (|Seq#Drop_27988| s@@1 n@@1) j) (|Seq#Index_27988| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.425:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_27988| (|Seq#Drop_27988| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3755) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3755| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3755| (|Seq#Drop_3755| s@@2 n@@2) j@@0) (|Seq#Index_3755| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.425:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3755| (|Seq#Drop_3755| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_27988| |Seq#Empty_27988|) 0))
(assert (= (|Seq#Length_3755| |Seq#Empty_3755|) 0))
(assert (forall ((s@@3 T@Seq_46574) (i@@1 Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_27988| s@@3))) (and (=> (= i@@1 n@@3) (= (|Seq#Index_27988| (|Seq#Update_27988| s@@3 i@@1 v) n@@3) v)) (=> (not (= i@@1 n@@3)) (= (|Seq#Index_27988| (|Seq#Update_27988| s@@3 i@@1 v) n@@3) (|Seq#Index_27988| s@@3 n@@3)))))
 :qid |stdinbpl.380:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_27988| (|Seq#Update_27988| s@@3 i@@1 v) n@@3))
 :pattern ( (|Seq#Index_27988| s@@3 n@@3) (|Seq#Update_27988| s@@3 i@@1 v))
)))
(assert (forall ((s@@4 T@Seq_3755) (i@@2 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3755| s@@4))) (and (=> (= i@@2 n@@4) (= (|Seq#Index_3755| (|Seq#Update_3755| s@@4 i@@2 v@@0) n@@4) v@@0)) (=> (not (= i@@2 n@@4)) (= (|Seq#Index_3755| (|Seq#Update_3755| s@@4 i@@2 v@@0) n@@4) (|Seq#Index_3755| s@@4 n@@4)))))
 :qid |stdinbpl.380:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3755| (|Seq#Update_3755| s@@4 i@@2 v@@0) n@@4))
 :pattern ( (|Seq#Index_3755| s@@4 n@@4) (|Seq#Update_3755| s@@4 i@@2 v@@0))
)))
(assert (forall ((s@@5 T@Seq_46574) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_27988| s@@5)) (= (|Seq#Length_27988| (|Seq#Take_27988| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_27988| s@@5) n@@5) (= (|Seq#Length_27988| (|Seq#Take_27988| s@@5 n@@5)) (|Seq#Length_27988| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_27988| (|Seq#Take_27988| s@@5 n@@5)) 0)))
 :qid |stdinbpl.391:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_27988| (|Seq#Take_27988| s@@5 n@@5)))
 :pattern ( (|Seq#Take_27988| s@@5 n@@5) (|Seq#Length_27988| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3755) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3755| s@@6)) (= (|Seq#Length_3755| (|Seq#Take_3755| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3755| s@@6) n@@6) (= (|Seq#Length_3755| (|Seq#Take_3755| s@@6 n@@6)) (|Seq#Length_3755| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3755| (|Seq#Take_3755| s@@6 n@@6)) 0)))
 :qid |stdinbpl.391:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3755| (|Seq#Take_3755| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3755| s@@6 n@@6) (|Seq#Length_3755| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3755| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.665:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3755| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_46574) (x T@Ref) ) (!  (=> (|Seq#Contains_46574| s@@7 x) (and (and (<= 0 (|Seq#Skolem_46574| s@@7 x)) (< (|Seq#Skolem_46574| s@@7 x) (|Seq#Length_27988| s@@7))) (= (|Seq#Index_27988| s@@7 (|Seq#Skolem_46574| s@@7 x)) x)))
 :qid |stdinbpl.523:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_46574| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3755) (x@@0 Int) ) (!  (=> (|Seq#Contains_3755| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3755| s@@8 x@@0)) (< (|Seq#Skolem_3755| s@@8 x@@0) (|Seq#Length_3755| s@@8))) (= (|Seq#Index_3755| s@@8 (|Seq#Skolem_3755| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.523:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3755| s@@8 x@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_39380) (Mask@@1 T@PolymorphicMapType_39401) (i@@3 Int) (lo@@0 Int) (hi@@1 Int) (ar_1@@1 T@Seq_46574) ) (!  (=> (and (state Heap@@2 Mask@@1) (< AssumeFunctionsAbove 1)) (=> (and (and (and (<= 0 lo@@0) (and (<= lo@@0 i@@3) (<= i@@3 hi@@1))) (<= hi@@1 (|Seq#Length_27988| ar_1@@1))) (forall ((k Int) (j@@1 Int) ) (!  (=> (and (>= k 0) (and (< k (|Seq#Length_27988| ar_1@@1)) (and (>= j@@1 0) (and (< j@@1 (|Seq#Length_27988| ar_1@@1)) (not (= k j@@1)))))) (not (= (|Seq#Index_27988| ar_1@@1 k) (|Seq#Index_27988| ar_1@@1 j@@1))))
 :qid |stdinbpl.783:126|
 :skolemid |64|
 :pattern ( (|Seq#Index_27988| ar_1@@1 k) (|Seq#Index_27988| ar_1@@1 j@@1))
))) (= (sum_array Heap@@2 i@@3 lo@@0 hi@@1 ar_1@@1) (ite (< i@@3 hi@@1) (+ (select (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| Heap@@2) (|Seq#Index_27988| ar_1@@1 i@@3) Ref__Integer_value) (|sum_array'| Heap@@2 (+ i@@3 1) lo@@0 hi@@1 ar_1@@1)) 0))))
 :qid |stdinbpl.781:15|
 :skolemid |65|
 :pattern ( (state Heap@@2 Mask@@1) (sum_array Heap@@2 i@@3 lo@@0 hi@@1 ar_1@@1))
)))
(assert (forall ((s@@9 T@Seq_46574) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_27988| s@@9 n@@7) s@@9))
 :qid |stdinbpl.507:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_27988| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3755) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3755| s@@10 n@@8) s@@10))
 :qid |stdinbpl.507:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3755| s@@10 n@@8))
)))
(assert (forall ((i@@4 Int) (j@@2 Int) ) (! (= (|Seq#Sub| i@@4 j@@2) (- i@@4 j@@2))
 :qid |stdinbpl.360:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@4 j@@2))
)))
(assert (forall ((i@@5 Int) (j@@3 Int) ) (! (= (|Seq#Add| i@@5 j@@3) (+ i@@5 j@@3))
 :qid |stdinbpl.358:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@5 j@@3))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_39380) (ExhaleHeap T@PolymorphicMapType_39380) (Mask@@2 T@PolymorphicMapType_39401) (pm_f_3 T@Field_27949_112349) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@2) (=> (and (HasDirectPerm_27949_112413 Mask@@2 null pm_f_3) (IsPredicateField_27949_112440 pm_f_3)) (= (select (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| Heap@@3) null (PredicateMaskField_27949 pm_f_3)) (select (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| ExhaleHeap) null (PredicateMaskField_27949 pm_f_3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@2) (IsPredicateField_27949_112440 pm_f_3) (select (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| ExhaleHeap) null (PredicateMaskField_27949 pm_f_3)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_39380) (ExhaleHeap@@0 T@PolymorphicMapType_39380) (Mask@@3 T@PolymorphicMapType_39401) (pm_f_3@@0 T@Field_27949_112349) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@3) (=> (and (HasDirectPerm_27949_112413 Mask@@3 null pm_f_3@@0) (IsWandField_27949_114187 pm_f_3@@0)) (= (select (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| Heap@@4) null (WandMaskField_27949 pm_f_3@@0)) (select (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| ExhaleHeap@@0) null (WandMaskField_27949 pm_f_3@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@3) (IsWandField_27949_114187 pm_f_3@@0) (select (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| ExhaleHeap@@0) null (WandMaskField_27949 pm_f_3@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_46574| (|Seq#Singleton_27988| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.648:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_46574| (|Seq#Singleton_27988| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3755| (|Seq#Singleton_3755| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.648:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3755| (|Seq#Singleton_3755| x@@2) y@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_39380) (i@@6 Int) (lo@@1 Int) (hi@@2 Int) (step@@0 Int) (vmin@@0 Int) (vmax_1@@0 Int) (ar_1@@2 T@Seq_46574) (v_2@@0 Int) ) (!  (and (= (count_square Heap@@5 i@@6 lo@@1 hi@@2 step@@0 vmin@@0 vmax_1@@0 ar_1@@2 v_2@@0) (|count_square'| Heap@@5 i@@6 lo@@1 hi@@2 step@@0 vmin@@0 vmax_1@@0 ar_1@@2 v_2@@0)) (dummyFunction_4184 (|count_square#triggerStateless| i@@6 lo@@1 hi@@2 step@@0 vmin@@0 vmax_1@@0 ar_1@@2 v_2@@0)))
 :qid |stdinbpl.1272:15|
 :skolemid |104|
 :pattern ( (count_square Heap@@5 i@@6 lo@@1 hi@@2 step@@0 vmin@@0 vmax_1@@0 ar_1@@2 v_2@@0))
)))
(assert (forall ((s@@11 T@Seq_46574) (n@@9 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@9)) (< j@@4 (|Seq#Length_27988| s@@11))) (= (|Seq#Index_27988| (|Seq#Take_27988| s@@11 n@@9) j@@4) (|Seq#Index_27988| s@@11 j@@4)))
 :qid |stdinbpl.399:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_27988| (|Seq#Take_27988| s@@11 n@@9) j@@4))
 :pattern ( (|Seq#Index_27988| s@@11 j@@4) (|Seq#Take_27988| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3755) (n@@10 Int) (j@@5 Int) ) (!  (=> (and (and (<= 0 j@@5) (< j@@5 n@@10)) (< j@@5 (|Seq#Length_3755| s@@12))) (= (|Seq#Index_3755| (|Seq#Take_3755| s@@12 n@@10) j@@5) (|Seq#Index_3755| s@@12 j@@5)))
 :qid |stdinbpl.399:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3755| (|Seq#Take_3755| s@@12 n@@10) j@@5))
 :pattern ( (|Seq#Index_3755| s@@12 j@@5) (|Seq#Take_3755| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_46574) (t T@Seq_46574) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_27988| s@@13))) (< n@@11 (|Seq#Length_27988| (|Seq#Append_46574| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_27988| s@@13)) (|Seq#Length_27988| s@@13)) n@@11) (= (|Seq#Take_27988| (|Seq#Append_46574| s@@13 t) n@@11) (|Seq#Append_46574| s@@13 (|Seq#Take_27988| t (|Seq#Sub| n@@11 (|Seq#Length_27988| s@@13)))))))
 :qid |stdinbpl.484:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_27988| (|Seq#Append_46574| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3755) (t@@0 T@Seq_3755) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3755| s@@14))) (< n@@12 (|Seq#Length_3755| (|Seq#Append_3755| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3755| s@@14)) (|Seq#Length_3755| s@@14)) n@@12) (= (|Seq#Take_3755| (|Seq#Append_3755| s@@14 t@@0) n@@12) (|Seq#Append_3755| s@@14 (|Seq#Take_3755| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3755| s@@14)))))))
 :qid |stdinbpl.484:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3755| (|Seq#Append_3755| s@@14 t@@0) n@@12))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_39380) (i@@7 Int) (lo@@2 Int) (hi@@3 Int) (step@@1 Int) (vmin@@1 Int) (vmax_1@@1 Int) (ar_1@@3 T@Seq_46574) (v_2@@1 Int) ) (! (dummyFunction_4184 (|count_square#triggerStateless| i@@7 lo@@2 hi@@3 step@@1 vmin@@1 vmax_1@@1 ar_1@@3 v_2@@1))
 :qid |stdinbpl.1276:15|
 :skolemid |105|
 :pattern ( (|count_square'| Heap@@6 i@@7 lo@@2 hi@@3 step@@1 vmin@@1 vmax_1@@1 ar_1@@3 v_2@@1))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_39380) (Heap1Heap T@PolymorphicMapType_39380) (i@@8 Int) (lo@@3 Int) (hi@@4 Int) (step@@2 Int) (vmin@@2 Int) (vmax_1@@2 Int) (ar_1@@4 T@Seq_46574) ) (!  (=> (and (=  (and (<= vmin@@2 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) vmax_1@@2) (and (<= lo@@3 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2) hi@@4))))  (and (<= vmin@@2 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) vmax_1@@2) (and (<= lo@@3 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2) hi@@4))))) (=> (and (<= vmin@@2 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) vmax_1@@2) (and (<= lo@@3 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2) hi@@4)))) (= (select (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| Heap2Heap) (|Seq#Index_27988| ar_1@@4 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) Ref__Integer_value) (select (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| Heap1Heap) (|Seq#Index_27988| ar_1@@4 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) Ref__Integer_value)))) (= (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)))
 :qid |stdinbpl.1036:15|
 :skolemid |88|
 :pattern ( (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_39380) (Heap1Heap@@0 T@PolymorphicMapType_39380) (i@@9 Int) (lo@@4 Int) (hi@@5 Int) (step@@3 Int) (vmin@@3 Int) (vmax_1@@3 Int) (ar_1@@5 T@Seq_46574) (v_2@@2 Int) ) (!  (=> (and (=  (and (<= vmin@@3 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) vmax_1@@3) (and (<= lo@@4 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) step@@3)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) step@@3) hi@@5))))  (and (<= vmin@@3 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) vmax_1@@3) (and (<= lo@@4 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) step@@3)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) step@@3) hi@@5))))) (=> (and (<= vmin@@3 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) vmax_1@@3) (and (<= lo@@4 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) step@@3)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) step@@3) hi@@5)))) (= (select (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| Heap2Heap@@0) (|Seq#Index_27988| ar_1@@5 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2))) Ref__Integer_value) (select (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| Heap1Heap@@0) (|Seq#Index_27988| ar_1@@5 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2))) Ref__Integer_value)))) (= (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)))
 :qid |stdinbpl.1302:15|
 :skolemid |109|
 :pattern ( (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@7 T@PolymorphicMapType_39380) (Mask@@4 T@PolymorphicMapType_39401) (i@@10 Int) (lo@@5 Int) (hi@@6 Int) (step@@4 Int) (vmin@@4 Int) (vmax_1@@4 Int) (ar_1@@6 T@Seq_46574) ) (!  (=> (and (state Heap@@7 Mask@@4) (< AssumeFunctionsAbove 2)) (=> (and (and (and (and (<= 0 lo@@5) (and (<= lo@@5 hi@@6) (and (<= hi@@6 step@@4) (> step@@4 0)))) (and (<= 0 vmin@@4) (and (<= vmin@@4 i@@10) (<= i@@10 vmax_1@@4)))) (<= vmax_1@@4 (|Seq#Length_27988| ar_1@@6))) (forall ((k@@0 Int) (j@@6 Int) ) (!  (=> (and (>= k@@0 0) (and (< k@@0 (|Seq#Length_27988| ar_1@@6)) (and (>= j@@6 0) (and (< j@@6 (|Seq#Length_27988| ar_1@@6)) (not (= k@@0 j@@6)))))) (not (= (|Seq#Index_27988| ar_1@@6 k@@0) (|Seq#Index_27988| ar_1@@6 j@@6))))
 :qid |stdinbpl.1018:195|
 :skolemid |85|
 :pattern ( (|Seq#Index_27988| ar_1@@6 k@@0) (|Seq#Index_27988| ar_1@@6 j@@6))
))) (= (sum_square Heap@@7 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6) (ite (< i@@10 vmax_1@@4) (+ (ite  (and (<= lo@@5 (mod i@@10 step@@4)) (< (mod i@@10 step@@4) hi@@6)) (select (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| Heap@@7) (|Seq#Index_27988| ar_1@@6 i@@10) Ref__Integer_value) 0) (|sum_square'| Heap@@7 (+ i@@10 1) lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6)) 0))))
 :qid |stdinbpl.1016:15|
 :skolemid |86|
 :pattern ( (state Heap@@7 Mask@@4) (sum_square Heap@@7 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_39380) (ExhaleHeap@@1 T@PolymorphicMapType_39380) (Mask@@5 T@PolymorphicMapType_39401) (o_11 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@5) (=> (select (|PolymorphicMapType_39380_27687_53#PolymorphicMapType_39380| Heap@@8) o_11 $allocated) (select (|PolymorphicMapType_39380_27687_53#PolymorphicMapType_39380| ExhaleHeap@@1) o_11 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@5) (select (|PolymorphicMapType_39380_27687_53#PolymorphicMapType_39380| ExhaleHeap@@1) o_11 $allocated))
)))
(assert (forall ((p T@Field_27949_112349) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_39440_39440 p v_1 p w))
 :qid |stdinbpl.302:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_39440_39440 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_46574) (s1 T@Seq_46574) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_27988|)) (not (= s1 |Seq#Empty_27988|))) (<= (|Seq#Length_27988| s0) n@@13)) (< n@@13 (|Seq#Length_27988| (|Seq#Append_46574| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_27988| s0)) (|Seq#Length_27988| s0)) n@@13) (= (|Seq#Index_27988| (|Seq#Append_46574| s0 s1) n@@13) (|Seq#Index_27988| s1 (|Seq#Sub| n@@13 (|Seq#Length_27988| s0))))))
 :qid |stdinbpl.371:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_27988| (|Seq#Append_46574| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3755) (s1@@0 T@Seq_3755) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3755|)) (not (= s1@@0 |Seq#Empty_3755|))) (<= (|Seq#Length_3755| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3755| (|Seq#Append_3755| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3755| s0@@0)) (|Seq#Length_3755| s0@@0)) n@@14) (= (|Seq#Index_3755| (|Seq#Append_3755| s0@@0 s1@@0) n@@14) (|Seq#Index_3755| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3755| s0@@0))))))
 :qid |stdinbpl.371:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3755| (|Seq#Append_3755| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_27949_3877 Ref__Integer_value)))
(assert  (not (IsWandField_27949_3877 Ref__Integer_value)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_39380) (ExhaleHeap@@2 T@PolymorphicMapType_39380) (Mask@@6 T@PolymorphicMapType_39401) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@6) (succHeap Heap@@9 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_39401) (o_2@@4 T@Ref) (f_4@@4 T@Field_27949_112482) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_39401_27949_116604#PolymorphicMapType_39401| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_27949_117733 f_4@@4))) (not (IsWandField_27949_117749 f_4@@4))) (<= (select (|PolymorphicMapType_39401_27949_116604#PolymorphicMapType_39401| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_39401_27949_116604#PolymorphicMapType_39401| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_39401) (o_2@@5 T@Ref) (f_4@@5 T@Field_27949_112349) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_39401_27949_112349#PolymorphicMapType_39401| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_27949_112440 f_4@@5))) (not (IsWandField_27949_114187 f_4@@5))) (<= (select (|PolymorphicMapType_39401_27949_112349#PolymorphicMapType_39401| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_39401_27949_112349#PolymorphicMapType_39401| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_39401) (o_2@@6 T@Ref) (f_4@@6 T@Field_39453_39454) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_39401_27949_39454#PolymorphicMapType_39401| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_27949_39454 f_4@@6))) (not (IsWandField_27949_39454 f_4@@6))) (<= (select (|PolymorphicMapType_39401_27949_39454#PolymorphicMapType_39401| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_39401_27949_39454#PolymorphicMapType_39401| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_39401) (o_2@@7 T@Ref) (f_4@@7 T@Field_39440_53) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_39401_27949_53#PolymorphicMapType_39401| Mask@@10) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_27949_53 f_4@@7))) (not (IsWandField_27949_53 f_4@@7))) (<= (select (|PolymorphicMapType_39401_27949_53#PolymorphicMapType_39401| Mask@@10) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_39401_27949_53#PolymorphicMapType_39401| Mask@@10) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_39401) (o_2@@8 T@Ref) (f_4@@8 T@Field_45532_3877) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| Mask@@11) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_27949_3877 f_4@@8))) (not (IsWandField_27949_3877 f_4@@8))) (<= (select (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| Mask@@11) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| Mask@@11) o_2@@8 f_4@@8))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_39380) (Mask@@12 T@PolymorphicMapType_39401) (i@@11 Int) (hi@@7 Int) (ar_1@@7 T@Seq_3755) ) (!  (=> (state Heap@@10 Mask@@12) (= (|sum_list'| Heap@@10 i@@11 hi@@7 ar_1@@7) (|sum_list#frame| EmptyFrame i@@11 hi@@7 ar_1@@7)))
 :qid |stdinbpl.703:15|
 :skolemid |61|
 :pattern ( (state Heap@@10 Mask@@12) (|sum_list'| Heap@@10 i@@11 hi@@7 ar_1@@7))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_39401) (o_2@@9 T@Ref) (f_4@@9 T@Field_27949_112482) ) (! (= (HasDirectPerm_27949_118187 Mask@@13 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_39401_27949_116604#PolymorphicMapType_39401| Mask@@13) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_27949_118187 Mask@@13 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_39401) (o_2@@10 T@Ref) (f_4@@10 T@Field_27949_112349) ) (! (= (HasDirectPerm_27949_112413 Mask@@14 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_39401_27949_112349#PolymorphicMapType_39401| Mask@@14) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_27949_112413 Mask@@14 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_39401) (o_2@@11 T@Ref) (f_4@@11 T@Field_39453_39454) ) (! (= (HasDirectPerm_27949_39454 Mask@@15 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_39401_27949_39454#PolymorphicMapType_39401| Mask@@15) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_27949_39454 Mask@@15 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_39401) (o_2@@12 T@Ref) (f_4@@12 T@Field_39440_53) ) (! (= (HasDirectPerm_27949_53 Mask@@16 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_39401_27949_53#PolymorphicMapType_39401| Mask@@16) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_27949_53 Mask@@16 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_39401) (o_2@@13 T@Ref) (f_4@@13 T@Field_45532_3877) ) (! (= (HasDirectPerm_27949_3877 Mask@@17 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| Mask@@17) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_27949_3877 Mask@@17 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_39380) (i@@12 Int) (lo@@6 Int) (hi@@8 Int) (ar_1@@8 T@Seq_46574) ) (! (dummyFunction_4184 (|sum_array#triggerStateless| i@@12 lo@@6 hi@@8 ar_1@@8))
 :qid |stdinbpl.775:15|
 :skolemid |63|
 :pattern ( (|sum_array'| Heap@@11 i@@12 lo@@6 hi@@8 ar_1@@8))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_39380) (i@@13 Int) (hi@@9 Int) (ar_1@@9 T@Seq_3755) (v_2@@3 Int) ) (! (dummyFunction_4184 (|count_list#triggerStateless| i@@13 hi@@9 ar_1@@9 v_2@@3))
 :qid |stdinbpl.1542:15|
 :skolemid |126|
 :pattern ( (|count_list'| Heap@@12 i@@13 hi@@9 ar_1@@9 v_2@@3))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_39380) (i@@14 Int) (hi@@10 Int) (ar_1@@10 T@Seq_46574) (v_2@@4 Int) ) (! (dummyFunction_4184 (|count_array#triggerStateless| i@@14 hi@@10 ar_1@@10 v_2@@4))
 :qid |stdinbpl.1627:15|
 :skolemid |130|
 :pattern ( (|count_array'| Heap@@13 i@@14 hi@@10 ar_1@@10 v_2@@4))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_39380) (ExhaleHeap@@3 T@PolymorphicMapType_39380) (Mask@@18 T@PolymorphicMapType_39401) (pm_f_3@@1 T@Field_27949_112349) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@3 Mask@@18) (=> (and (HasDirectPerm_27949_112413 Mask@@18 null pm_f_3@@1) (IsPredicateField_27949_112440 pm_f_3@@1)) (and (and (and (and (forall ((o2_3 T@Ref) (f_17 T@Field_39440_53) ) (!  (=> (select (|PolymorphicMapType_39929_39440_53#PolymorphicMapType_39929| (select (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| Heap@@14) null (PredicateMaskField_27949 pm_f_3@@1))) o2_3 f_17) (= (select (|PolymorphicMapType_39380_27687_53#PolymorphicMapType_39380| Heap@@14) o2_3 f_17) (select (|PolymorphicMapType_39380_27687_53#PolymorphicMapType_39380| ExhaleHeap@@3) o2_3 f_17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_39380_27687_53#PolymorphicMapType_39380| ExhaleHeap@@3) o2_3 f_17))
)) (forall ((o2_3@@0 T@Ref) (f_17@@0 T@Field_39453_39454) ) (!  (=> (select (|PolymorphicMapType_39929_39440_39454#PolymorphicMapType_39929| (select (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| Heap@@14) null (PredicateMaskField_27949 pm_f_3@@1))) o2_3@@0 f_17@@0) (= (select (|PolymorphicMapType_39380_27690_27691#PolymorphicMapType_39380| Heap@@14) o2_3@@0 f_17@@0) (select (|PolymorphicMapType_39380_27690_27691#PolymorphicMapType_39380| ExhaleHeap@@3) o2_3@@0 f_17@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_39380_27690_27691#PolymorphicMapType_39380| ExhaleHeap@@3) o2_3@@0 f_17@@0))
))) (forall ((o2_3@@1 T@Ref) (f_17@@1 T@Field_45532_3877) ) (!  (=> (select (|PolymorphicMapType_39929_39440_3877#PolymorphicMapType_39929| (select (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| Heap@@14) null (PredicateMaskField_27949 pm_f_3@@1))) o2_3@@1 f_17@@1) (= (select (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| Heap@@14) o2_3@@1 f_17@@1) (select (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| ExhaleHeap@@3) o2_3@@1 f_17@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| ExhaleHeap@@3) o2_3@@1 f_17@@1))
))) (forall ((o2_3@@2 T@Ref) (f_17@@2 T@Field_27949_112349) ) (!  (=> (select (|PolymorphicMapType_39929_39440_112349#PolymorphicMapType_39929| (select (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| Heap@@14) null (PredicateMaskField_27949 pm_f_3@@1))) o2_3@@2 f_17@@2) (= (select (|PolymorphicMapType_39380_39440_112349#PolymorphicMapType_39380| Heap@@14) o2_3@@2 f_17@@2) (select (|PolymorphicMapType_39380_39440_112349#PolymorphicMapType_39380| ExhaleHeap@@3) o2_3@@2 f_17@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_39380_39440_112349#PolymorphicMapType_39380| ExhaleHeap@@3) o2_3@@2 f_17@@2))
))) (forall ((o2_3@@3 T@Ref) (f_17@@3 T@Field_27949_112482) ) (!  (=> (select (|PolymorphicMapType_39929_39440_113660#PolymorphicMapType_39929| (select (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| Heap@@14) null (PredicateMaskField_27949 pm_f_3@@1))) o2_3@@3 f_17@@3) (= (select (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| Heap@@14) o2_3@@3 f_17@@3) (select (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| ExhaleHeap@@3) o2_3@@3 f_17@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| ExhaleHeap@@3) o2_3@@3 f_17@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@3 Mask@@18) (IsPredicateField_27949_112440 pm_f_3@@1))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_39380) (ExhaleHeap@@4 T@PolymorphicMapType_39380) (Mask@@19 T@PolymorphicMapType_39401) (pm_f_3@@2 T@Field_27949_112349) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@4 Mask@@19) (=> (and (HasDirectPerm_27949_112413 Mask@@19 null pm_f_3@@2) (IsWandField_27949_114187 pm_f_3@@2)) (and (and (and (and (forall ((o2_3@@4 T@Ref) (f_17@@4 T@Field_39440_53) ) (!  (=> (select (|PolymorphicMapType_39929_39440_53#PolymorphicMapType_39929| (select (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| Heap@@15) null (WandMaskField_27949 pm_f_3@@2))) o2_3@@4 f_17@@4) (= (select (|PolymorphicMapType_39380_27687_53#PolymorphicMapType_39380| Heap@@15) o2_3@@4 f_17@@4) (select (|PolymorphicMapType_39380_27687_53#PolymorphicMapType_39380| ExhaleHeap@@4) o2_3@@4 f_17@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_39380_27687_53#PolymorphicMapType_39380| ExhaleHeap@@4) o2_3@@4 f_17@@4))
)) (forall ((o2_3@@5 T@Ref) (f_17@@5 T@Field_39453_39454) ) (!  (=> (select (|PolymorphicMapType_39929_39440_39454#PolymorphicMapType_39929| (select (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| Heap@@15) null (WandMaskField_27949 pm_f_3@@2))) o2_3@@5 f_17@@5) (= (select (|PolymorphicMapType_39380_27690_27691#PolymorphicMapType_39380| Heap@@15) o2_3@@5 f_17@@5) (select (|PolymorphicMapType_39380_27690_27691#PolymorphicMapType_39380| ExhaleHeap@@4) o2_3@@5 f_17@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_39380_27690_27691#PolymorphicMapType_39380| ExhaleHeap@@4) o2_3@@5 f_17@@5))
))) (forall ((o2_3@@6 T@Ref) (f_17@@6 T@Field_45532_3877) ) (!  (=> (select (|PolymorphicMapType_39929_39440_3877#PolymorphicMapType_39929| (select (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| Heap@@15) null (WandMaskField_27949 pm_f_3@@2))) o2_3@@6 f_17@@6) (= (select (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| Heap@@15) o2_3@@6 f_17@@6) (select (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| ExhaleHeap@@4) o2_3@@6 f_17@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| ExhaleHeap@@4) o2_3@@6 f_17@@6))
))) (forall ((o2_3@@7 T@Ref) (f_17@@7 T@Field_27949_112349) ) (!  (=> (select (|PolymorphicMapType_39929_39440_112349#PolymorphicMapType_39929| (select (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| Heap@@15) null (WandMaskField_27949 pm_f_3@@2))) o2_3@@7 f_17@@7) (= (select (|PolymorphicMapType_39380_39440_112349#PolymorphicMapType_39380| Heap@@15) o2_3@@7 f_17@@7) (select (|PolymorphicMapType_39380_39440_112349#PolymorphicMapType_39380| ExhaleHeap@@4) o2_3@@7 f_17@@7)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_39380_39440_112349#PolymorphicMapType_39380| ExhaleHeap@@4) o2_3@@7 f_17@@7))
))) (forall ((o2_3@@8 T@Ref) (f_17@@8 T@Field_27949_112482) ) (!  (=> (select (|PolymorphicMapType_39929_39440_113660#PolymorphicMapType_39929| (select (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| Heap@@15) null (WandMaskField_27949 pm_f_3@@2))) o2_3@@8 f_17@@8) (= (select (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| Heap@@15) o2_3@@8 f_17@@8) (select (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| ExhaleHeap@@4) o2_3@@8 f_17@@8)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| ExhaleHeap@@4) o2_3@@8 f_17@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@4 Mask@@19) (IsWandField_27949_114187 pm_f_3@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.290:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3755| (|Seq#Range| q@min@@0 q@max@@0) j@@7) (+ q@min@@0 j@@7)))
 :qid |stdinbpl.663:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3755| (|Seq#Range| q@min@@0 q@max@@0) j@@7))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_39380) (ExhaleHeap@@5 T@PolymorphicMapType_39380) (Mask@@20 T@PolymorphicMapType_39401) (o_11@@0 T@Ref) (f_17@@9 T@Field_27949_112482) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@5 Mask@@20) (=> (HasDirectPerm_27949_118187 Mask@@20 o_11@@0 f_17@@9) (= (select (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| Heap@@16) o_11@@0 f_17@@9) (select (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| ExhaleHeap@@5) o_11@@0 f_17@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@5 Mask@@20) (select (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| ExhaleHeap@@5) o_11@@0 f_17@@9))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_39380) (ExhaleHeap@@6 T@PolymorphicMapType_39380) (Mask@@21 T@PolymorphicMapType_39401) (o_11@@1 T@Ref) (f_17@@10 T@Field_27949_112349) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@6 Mask@@21) (=> (HasDirectPerm_27949_112413 Mask@@21 o_11@@1 f_17@@10) (= (select (|PolymorphicMapType_39380_39440_112349#PolymorphicMapType_39380| Heap@@17) o_11@@1 f_17@@10) (select (|PolymorphicMapType_39380_39440_112349#PolymorphicMapType_39380| ExhaleHeap@@6) o_11@@1 f_17@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@6 Mask@@21) (select (|PolymorphicMapType_39380_39440_112349#PolymorphicMapType_39380| ExhaleHeap@@6) o_11@@1 f_17@@10))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_39380) (ExhaleHeap@@7 T@PolymorphicMapType_39380) (Mask@@22 T@PolymorphicMapType_39401) (o_11@@2 T@Ref) (f_17@@11 T@Field_39453_39454) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@7 Mask@@22) (=> (HasDirectPerm_27949_39454 Mask@@22 o_11@@2 f_17@@11) (= (select (|PolymorphicMapType_39380_27690_27691#PolymorphicMapType_39380| Heap@@18) o_11@@2 f_17@@11) (select (|PolymorphicMapType_39380_27690_27691#PolymorphicMapType_39380| ExhaleHeap@@7) o_11@@2 f_17@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@7 Mask@@22) (select (|PolymorphicMapType_39380_27690_27691#PolymorphicMapType_39380| ExhaleHeap@@7) o_11@@2 f_17@@11))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_39380) (ExhaleHeap@@8 T@PolymorphicMapType_39380) (Mask@@23 T@PolymorphicMapType_39401) (o_11@@3 T@Ref) (f_17@@12 T@Field_39440_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@8 Mask@@23) (=> (HasDirectPerm_27949_53 Mask@@23 o_11@@3 f_17@@12) (= (select (|PolymorphicMapType_39380_27687_53#PolymorphicMapType_39380| Heap@@19) o_11@@3 f_17@@12) (select (|PolymorphicMapType_39380_27687_53#PolymorphicMapType_39380| ExhaleHeap@@8) o_11@@3 f_17@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@8 Mask@@23) (select (|PolymorphicMapType_39380_27687_53#PolymorphicMapType_39380| ExhaleHeap@@8) o_11@@3 f_17@@12))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_39380) (ExhaleHeap@@9 T@PolymorphicMapType_39380) (Mask@@24 T@PolymorphicMapType_39401) (o_11@@4 T@Ref) (f_17@@13 T@Field_45532_3877) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@9 Mask@@24) (=> (HasDirectPerm_27949_3877 Mask@@24 o_11@@4 f_17@@13) (= (select (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| Heap@@20) o_11@@4 f_17@@13) (select (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| ExhaleHeap@@9) o_11@@4 f_17@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@9 Mask@@24) (select (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| ExhaleHeap@@9) o_11@@4 f_17@@13))
)))
(assert (forall ((s0@@1 T@Seq_46574) (s1@@1 T@Seq_46574) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_27988|)) (not (= s1@@1 |Seq#Empty_27988|))) (= (|Seq#Length_27988| (|Seq#Append_46574| s0@@1 s1@@1)) (+ (|Seq#Length_27988| s0@@1) (|Seq#Length_27988| s1@@1))))
 :qid |stdinbpl.340:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_27988| (|Seq#Append_46574| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3755) (s1@@2 T@Seq_3755) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3755|)) (not (= s1@@2 |Seq#Empty_3755|))) (= (|Seq#Length_3755| (|Seq#Append_3755| s0@@2 s1@@2)) (+ (|Seq#Length_3755| s0@@2) (|Seq#Length_3755| s1@@2))))
 :qid |stdinbpl.340:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3755| (|Seq#Append_3755| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_27949_112482) ) (! (= (select (|PolymorphicMapType_39401_27949_116604#PolymorphicMapType_39401| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_39401_27949_116604#PolymorphicMapType_39401| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_27949_112349) ) (! (= (select (|PolymorphicMapType_39401_27949_112349#PolymorphicMapType_39401| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_39401_27949_112349#PolymorphicMapType_39401| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_39453_39454) ) (! (= (select (|PolymorphicMapType_39401_27949_39454#PolymorphicMapType_39401| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_39401_27949_39454#PolymorphicMapType_39401| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_39440_53) ) (! (= (select (|PolymorphicMapType_39401_27949_53#PolymorphicMapType_39401| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_39401_27949_53#PolymorphicMapType_39401| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_45532_3877) ) (! (= (select (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_39380) (Mask@@25 T@PolymorphicMapType_39401) (i@@15 Int) (hi@@11 Int) (ar_1@@11 T@Seq_3755) (v_2@@5 Int) ) (!  (=> (and (state Heap@@21 Mask@@25) (< AssumeFunctionsAbove 5)) (=> (and (and (<= 0 i@@15) (<= i@@15 hi@@11)) (<= hi@@11 (|Seq#Length_3755| ar_1@@11))) (= (count_list Heap@@21 i@@15 hi@@11 ar_1@@11 v_2@@5) (ite (< i@@15 hi@@11) (+ (ite (= (|Seq#Index_3755| ar_1@@11 i@@15) v_2@@5) 1 0) (|count_list'| Heap@@21 (+ i@@15 1) hi@@11 ar_1@@11 v_2@@5)) 0))))
 :qid |stdinbpl.1548:15|
 :skolemid |127|
 :pattern ( (state Heap@@21 Mask@@25) (count_list Heap@@21 i@@15 hi@@11 ar_1@@11 v_2@@5))
)))
(assert (forall ((s@@15 T@Seq_46574) (t@@1 T@Seq_46574) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_27988| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_27988| s@@15)) (|Seq#Length_27988| s@@15)) n@@15) (= (|Seq#Drop_27988| (|Seq#Append_46574| s@@15 t@@1) n@@15) (|Seq#Drop_27988| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_27988| s@@15))))))
 :qid |stdinbpl.497:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_27988| (|Seq#Append_46574| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3755) (t@@2 T@Seq_3755) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3755| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3755| s@@16)) (|Seq#Length_3755| s@@16)) n@@16) (= (|Seq#Drop_3755| (|Seq#Append_3755| s@@16 t@@2) n@@16) (|Seq#Drop_3755| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3755| s@@16))))))
 :qid |stdinbpl.497:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3755| (|Seq#Append_3755| s@@16 t@@2) n@@16))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_39380) (i@@16 Int) (lo@@7 Int) (hi@@12 Int) (ar_1@@12 T@Seq_46574) ) (!  (and (= (sum_array Heap@@22 i@@16 lo@@7 hi@@12 ar_1@@12) (|sum_array'| Heap@@22 i@@16 lo@@7 hi@@12 ar_1@@12)) (dummyFunction_4184 (|sum_array#triggerStateless| i@@16 lo@@7 hi@@12 ar_1@@12)))
 :qid |stdinbpl.771:15|
 :skolemid |62|
 :pattern ( (sum_array Heap@@22 i@@16 lo@@7 hi@@12 ar_1@@12))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_39380) (i@@17 Int) (hi@@13 Int) (ar_1@@13 T@Seq_3755) (v_2@@6 Int) ) (!  (and (= (count_list Heap@@23 i@@17 hi@@13 ar_1@@13 v_2@@6) (|count_list'| Heap@@23 i@@17 hi@@13 ar_1@@13 v_2@@6)) (dummyFunction_4184 (|count_list#triggerStateless| i@@17 hi@@13 ar_1@@13 v_2@@6)))
 :qid |stdinbpl.1538:15|
 :skolemid |125|
 :pattern ( (count_list Heap@@23 i@@17 hi@@13 ar_1@@13 v_2@@6))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_39380) (i@@18 Int) (hi@@14 Int) (ar_1@@14 T@Seq_46574) (v_2@@7 Int) ) (!  (and (= (count_array Heap@@24 i@@18 hi@@14 ar_1@@14 v_2@@7) (|count_array'| Heap@@24 i@@18 hi@@14 ar_1@@14 v_2@@7)) (dummyFunction_4184 (|count_array#triggerStateless| i@@18 hi@@14 ar_1@@14 v_2@@7)))
 :qid |stdinbpl.1623:15|
 :skolemid |129|
 :pattern ( (count_array Heap@@24 i@@18 hi@@14 ar_1@@14 v_2@@7))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_39401) (SummandMask1 T@PolymorphicMapType_39401) (SummandMask2 T@PolymorphicMapType_39401) (o_2@@19 T@Ref) (f_4@@19 T@Field_27949_112482) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_39401_27949_116604#PolymorphicMapType_39401| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_39401_27949_116604#PolymorphicMapType_39401| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_39401_27949_116604#PolymorphicMapType_39401| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_39401_27949_116604#PolymorphicMapType_39401| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_39401_27949_116604#PolymorphicMapType_39401| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_39401_27949_116604#PolymorphicMapType_39401| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_39401) (SummandMask1@@0 T@PolymorphicMapType_39401) (SummandMask2@@0 T@PolymorphicMapType_39401) (o_2@@20 T@Ref) (f_4@@20 T@Field_27949_112349) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_39401_27949_112349#PolymorphicMapType_39401| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_39401_27949_112349#PolymorphicMapType_39401| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_39401_27949_112349#PolymorphicMapType_39401| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_39401_27949_112349#PolymorphicMapType_39401| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_39401_27949_112349#PolymorphicMapType_39401| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_39401_27949_112349#PolymorphicMapType_39401| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_39401) (SummandMask1@@1 T@PolymorphicMapType_39401) (SummandMask2@@1 T@PolymorphicMapType_39401) (o_2@@21 T@Ref) (f_4@@21 T@Field_39453_39454) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_39401_27949_39454#PolymorphicMapType_39401| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_39401_27949_39454#PolymorphicMapType_39401| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_39401_27949_39454#PolymorphicMapType_39401| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_39401_27949_39454#PolymorphicMapType_39401| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_39401_27949_39454#PolymorphicMapType_39401| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_39401_27949_39454#PolymorphicMapType_39401| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_39401) (SummandMask1@@2 T@PolymorphicMapType_39401) (SummandMask2@@2 T@PolymorphicMapType_39401) (o_2@@22 T@Ref) (f_4@@22 T@Field_39440_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_39401_27949_53#PolymorphicMapType_39401| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_39401_27949_53#PolymorphicMapType_39401| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_39401_27949_53#PolymorphicMapType_39401| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_39401_27949_53#PolymorphicMapType_39401| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_39401_27949_53#PolymorphicMapType_39401| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_39401_27949_53#PolymorphicMapType_39401| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_39401) (SummandMask1@@3 T@PolymorphicMapType_39401) (SummandMask2@@3 T@PolymorphicMapType_39401) (o_2@@23 T@Ref) (f_4@@23 T@Field_45532_3877) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_39401_27949_3877#PolymorphicMapType_39401| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_39380) (i@@19 Int) (lo@@8 Int) (hi@@15 Int) (step@@5 Int) (vmin@@5 Int) (vmax_1@@5 Int) (ar_1@@15 T@Seq_46574) ) (!  (and (= (sum_square Heap@@25 i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax_1@@5 ar_1@@15) (|sum_square'| Heap@@25 i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax_1@@5 ar_1@@15)) (dummyFunction_4184 (|sum_square#triggerStateless| i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax_1@@5 ar_1@@15)))
 :qid |stdinbpl.1006:15|
 :skolemid |83|
 :pattern ( (sum_square Heap@@25 i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax_1@@5 ar_1@@15))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_39380) (Mask@@26 T@PolymorphicMapType_39401) (i@@20 Int) (hi@@16 Int) (ar_1@@16 T@Seq_3755) (v_2@@8 Int) ) (!  (=> (state Heap@@26 Mask@@26) (= (|count_list'| Heap@@26 i@@20 hi@@16 ar_1@@16 v_2@@8) (|count_list#frame| EmptyFrame i@@20 hi@@16 ar_1@@16 v_2@@8)))
 :qid |stdinbpl.1555:15|
 :skolemid |128|
 :pattern ( (state Heap@@26 Mask@@26) (|count_list'| Heap@@26 i@@20 hi@@16 ar_1@@16 v_2@@8))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3755| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3755| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.662:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3755| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_46574) (b T@Seq_46574) ) (!  (=> (|Seq#Equal_46574| a b) (= a b))
 :qid |stdinbpl.635:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_46574| a b))
)))
(assert (forall ((a@@0 T@Seq_3755) (b@@0 T@Seq_3755) ) (!  (=> (|Seq#Equal_3755| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.635:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3755| a@@0 b@@0))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_39380) (Mask@@27 T@PolymorphicMapType_39401) (i@@21 Int) (lo@@9 Int) (hi@@17 Int) (step@@6 Int) (vmin@@6 Int) (vmax_1@@6 Int) (ar_1@@17 T@Seq_46574) (v_2@@9 Int) ) (!  (=> (and (state Heap@@27 Mask@@27) (< AssumeFunctionsAbove 0)) (=> (and (and (and (and (<= 0 lo@@9) (and (<= lo@@9 hi@@17) (and (<= hi@@17 step@@6) (> step@@6 0)))) (and (<= 0 vmin@@6) (and (<= vmin@@6 i@@21) (<= i@@21 vmax_1@@6)))) (<= vmax_1@@6 (|Seq#Length_27988| ar_1@@17))) (forall ((k@@1 Int) (j@@8 Int) ) (!  (=> (and (>= k@@1 0) (and (< k@@1 (|Seq#Length_27988| ar_1@@17)) (and (>= j@@8 0) (and (< j@@8 (|Seq#Length_27988| ar_1@@17)) (not (= k@@1 j@@8)))))) (not (= (|Seq#Index_27988| ar_1@@17 k@@1) (|Seq#Index_27988| ar_1@@17 j@@8))))
 :qid |stdinbpl.1284:195|
 :skolemid |106|
 :pattern ( (|Seq#Index_27988| ar_1@@17 k@@1) (|Seq#Index_27988| ar_1@@17 j@@8))
))) (= (count_square Heap@@27 i@@21 lo@@9 hi@@17 step@@6 vmin@@6 vmax_1@@6 ar_1@@17 v_2@@9) (ite (< i@@21 vmax_1@@6) (+ (ite  (and (<= lo@@9 (mod i@@21 step@@6)) (and (< (mod i@@21 step@@6) hi@@17) (= (select (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| Heap@@27) (|Seq#Index_27988| ar_1@@17 i@@21) Ref__Integer_value) v_2@@9))) 1 0) (|count_square'| Heap@@27 (+ i@@21 1) lo@@9 hi@@17 step@@6 vmin@@6 vmax_1@@6 ar_1@@17 v_2@@9)) 0))))
 :qid |stdinbpl.1282:15|
 :skolemid |107|
 :pattern ( (state Heap@@27 Mask@@27) (count_square Heap@@27 i@@21 lo@@9 hi@@17 step@@6 vmin@@6 vmax_1@@6 ar_1@@17 v_2@@9))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_39380) (i@@22 Int) (hi@@18 Int) (ar_1@@18 T@Seq_3755) ) (!  (and (= (sum_list Heap@@28 i@@22 hi@@18 ar_1@@18) (|sum_list'| Heap@@28 i@@22 hi@@18 ar_1@@18)) (dummyFunction_4184 (|sum_list#triggerStateless| i@@22 hi@@18 ar_1@@18)))
 :qid |stdinbpl.686:15|
 :skolemid |58|
 :pattern ( (sum_list Heap@@28 i@@22 hi@@18 ar_1@@18))
)))
(assert (forall ((s@@17 T@Seq_46574) (i@@23 Int) ) (!  (=> (and (<= 0 i@@23) (< i@@23 (|Seq#Length_27988| s@@17))) (|Seq#ContainsTrigger_27988| s@@17 (|Seq#Index_27988| s@@17 i@@23)))
 :qid |stdinbpl.528:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_27988| s@@17 i@@23))
)))
(assert (forall ((s@@18 T@Seq_3755) (i@@24 Int) ) (!  (=> (and (<= 0 i@@24) (< i@@24 (|Seq#Length_3755| s@@18))) (|Seq#ContainsTrigger_3755| s@@18 (|Seq#Index_3755| s@@18 i@@24)))
 :qid |stdinbpl.528:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3755| s@@18 i@@24))
)))
(assert (forall ((s0@@3 T@Seq_46574) (s1@@3 T@Seq_46574) ) (!  (and (=> (= s0@@3 |Seq#Empty_27988|) (= (|Seq#Append_46574| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_27988|) (= (|Seq#Append_46574| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.346:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_46574| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3755) (s1@@4 T@Seq_3755) ) (!  (and (=> (= s0@@4 |Seq#Empty_3755|) (= (|Seq#Append_3755| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3755|) (= (|Seq#Append_3755| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.346:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3755| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_27988| (|Seq#Singleton_27988| t@@3) 0) t@@3)
 :qid |stdinbpl.350:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_27988| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3755| (|Seq#Singleton_3755| t@@4) 0) t@@4)
 :qid |stdinbpl.350:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3755| t@@4))
)))
(assert (forall ((s@@19 T@Seq_46574) ) (! (<= 0 (|Seq#Length_27988| s@@19))
 :qid |stdinbpl.329:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_27988| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3755) ) (! (<= 0 (|Seq#Length_3755| s@@20))
 :qid |stdinbpl.329:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3755| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_46574) (s1@@5 T@Seq_46574) ) (!  (=> (|Seq#Equal_46574| s0@@5 s1@@5) (and (= (|Seq#Length_27988| s0@@5) (|Seq#Length_27988| s1@@5)) (forall ((j@@9 Int) ) (!  (=> (and (<= 0 j@@9) (< j@@9 (|Seq#Length_27988| s0@@5))) (= (|Seq#Index_27988| s0@@5 j@@9) (|Seq#Index_27988| s1@@5 j@@9)))
 :qid |stdinbpl.625:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_27988| s0@@5 j@@9))
 :pattern ( (|Seq#Index_27988| s1@@5 j@@9))
))))
 :qid |stdinbpl.622:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_46574| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3755) (s1@@6 T@Seq_3755) ) (!  (=> (|Seq#Equal_3755| s0@@6 s1@@6) (and (= (|Seq#Length_3755| s0@@6) (|Seq#Length_3755| s1@@6)) (forall ((j@@10 Int) ) (!  (=> (and (<= 0 j@@10) (< j@@10 (|Seq#Length_3755| s0@@6))) (= (|Seq#Index_3755| s0@@6 j@@10) (|Seq#Index_3755| s1@@6 j@@10)))
 :qid |stdinbpl.625:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3755| s0@@6 j@@10))
 :pattern ( (|Seq#Index_3755| s1@@6 j@@10))
))))
 :qid |stdinbpl.622:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3755| s0@@6 s1@@6))
)))
(assert (forall ((Heap2Heap@@1 T@PolymorphicMapType_39380) (Heap1Heap@@1 T@PolymorphicMapType_39380) (i@@25 Int) (hi@@19 Int) (ar_1@@19 T@Seq_46574) (v_2@@10 Int) ) (!  (=> (and (=  (and (<= 0 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10))) (< (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10)) hi@@19))  (and (<= 0 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10))) (< (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10)) hi@@19))) (=> (and (<= 0 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10))) (< (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10)) hi@@19)) (= (select (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| Heap2Heap@@1) (|Seq#Index_27988| ar_1@@19 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10))) Ref__Integer_value) (select (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| Heap1Heap@@1) (|Seq#Index_27988| ar_1@@19 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10))) Ref__Integer_value)))) (= (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10)))
 :qid |stdinbpl.1653:15|
 :skolemid |134|
 :pattern ( (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (succHeapTrans Heap2Heap@@1 Heap1Heap@@1))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_27988| (|Seq#Singleton_27988| t@@5)) 1)
 :qid |stdinbpl.337:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_27988| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3755| (|Seq#Singleton_3755| t@@6)) 1)
 :qid |stdinbpl.337:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3755| t@@6))
)))
(assert (forall ((Heap2Heap@@2 T@PolymorphicMapType_39380) (Heap1Heap@@2 T@PolymorphicMapType_39380) (i@@26 Int) (lo@@10 Int) (hi@@20 Int) (ar_1@@20 T@Seq_46574) ) (!  (=> (and (=  (and (<= lo@@10 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20))) (< (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20)) hi@@20))  (and (<= lo@@10 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20))) (< (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20)) hi@@20))) (=> (and (<= lo@@10 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20))) (< (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20)) hi@@20)) (= (select (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| Heap2Heap@@2) (|Seq#Index_27988| ar_1@@20 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20))) Ref__Integer_value) (select (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| Heap1Heap@@2) (|Seq#Index_27988| ar_1@@20 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20))) Ref__Integer_value)))) (= (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20)))
 :qid |stdinbpl.801:15|
 :skolemid |67|
 :pattern ( (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (succHeapTrans Heap2Heap@@2 Heap1Heap@@2))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_39380) (Mask@@28 T@PolymorphicMapType_39401) (i@@27 Int) (hi@@21 Int) (ar_1@@21 T@Seq_3755) ) (!  (=> (and (state Heap@@29 Mask@@28) (< AssumeFunctionsAbove 4)) (=> (and (and (<= 0 i@@27) (<= i@@27 hi@@21)) (<= hi@@21 (|Seq#Length_3755| ar_1@@21))) (= (sum_list Heap@@29 i@@27 hi@@21 ar_1@@21) (ite (< i@@27 hi@@21) (+ (|Seq#Index_3755| ar_1@@21 i@@27) (|sum_list'| Heap@@29 (+ i@@27 1) hi@@21 ar_1@@21)) 0))))
 :qid |stdinbpl.696:15|
 :skolemid |60|
 :pattern ( (state Heap@@29 Mask@@28) (sum_list Heap@@29 i@@27 hi@@21 ar_1@@21))
)))
(assert (forall ((s@@21 T@Seq_46574) (t@@7 T@Seq_46574) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_27988| s@@21))) (= (|Seq#Take_27988| (|Seq#Append_46574| s@@21 t@@7) n@@17) (|Seq#Take_27988| s@@21 n@@17)))
 :qid |stdinbpl.479:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_27988| (|Seq#Append_46574| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3755) (t@@8 T@Seq_3755) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3755| s@@22))) (= (|Seq#Take_3755| (|Seq#Append_3755| s@@22 t@@8) n@@18) (|Seq#Take_3755| s@@22 n@@18)))
 :qid |stdinbpl.479:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3755| (|Seq#Append_3755| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_46574) (i@@28 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@28) (< i@@28 (|Seq#Length_27988| s@@23))) (= (|Seq#Length_27988| (|Seq#Update_27988| s@@23 i@@28 v@@2)) (|Seq#Length_27988| s@@23)))
 :qid |stdinbpl.378:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_27988| (|Seq#Update_27988| s@@23 i@@28 v@@2)))
 :pattern ( (|Seq#Length_27988| s@@23) (|Seq#Update_27988| s@@23 i@@28 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3755) (i@@29 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@29) (< i@@29 (|Seq#Length_3755| s@@24))) (= (|Seq#Length_3755| (|Seq#Update_3755| s@@24 i@@29 v@@3)) (|Seq#Length_3755| s@@24)))
 :qid |stdinbpl.378:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3755| (|Seq#Update_3755| s@@24 i@@29 v@@3)))
 :pattern ( (|Seq#Length_3755| s@@24) (|Seq#Update_3755| s@@24 i@@29 v@@3))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_39380) (Mask@@29 T@PolymorphicMapType_39401) (i@@30 Int) (hi@@22 Int) (ar_1@@22 T@Seq_46574) (v_2@@11 Int) ) (!  (=> (and (state Heap@@30 Mask@@29) (< AssumeFunctionsAbove 3)) (=> (and (and (and (<= 0 i@@30) (<= i@@30 hi@@22)) (<= hi@@22 (|Seq#Length_27988| ar_1@@22))) (forall ((k@@2 Int) (j@@11 Int) ) (!  (=> (and (>= k@@2 0) (and (< k@@2 (|Seq#Length_27988| ar_1@@22)) (and (>= j@@11 0) (and (< j@@11 (|Seq#Length_27988| ar_1@@22)) (not (= k@@2 j@@11)))))) (not (= (|Seq#Index_27988| ar_1@@22 k@@2) (|Seq#Index_27988| ar_1@@22 j@@11))))
 :qid |stdinbpl.1635:112|
 :skolemid |131|
 :pattern ( (|Seq#Index_27988| ar_1@@22 k@@2) (|Seq#Index_27988| ar_1@@22 j@@11))
))) (= (count_array Heap@@30 i@@30 hi@@22 ar_1@@22 v_2@@11) (ite (< i@@30 hi@@22) (+ (ite (= (select (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| Heap@@30) (|Seq#Index_27988| ar_1@@22 i@@30) Ref__Integer_value) v_2@@11) 1 0) (|count_array'| Heap@@30 (+ i@@30 1) hi@@22 ar_1@@22 v_2@@11)) 0))))
 :qid |stdinbpl.1633:15|
 :skolemid |132|
 :pattern ( (state Heap@@30 Mask@@29) (count_array Heap@@30 i@@30 hi@@22 ar_1@@22 v_2@@11))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_39380) (o_10 T@Ref) (f_18 T@Field_27949_112349) (v@@4 T@FrameType) ) (! (succHeap Heap@@31 (PolymorphicMapType_39380 (|PolymorphicMapType_39380_27687_53#PolymorphicMapType_39380| Heap@@31) (|PolymorphicMapType_39380_27690_27691#PolymorphicMapType_39380| Heap@@31) (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| Heap@@31) (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| Heap@@31) (store (|PolymorphicMapType_39380_39440_112349#PolymorphicMapType_39380| Heap@@31) o_10 f_18 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_39380 (|PolymorphicMapType_39380_27687_53#PolymorphicMapType_39380| Heap@@31) (|PolymorphicMapType_39380_27690_27691#PolymorphicMapType_39380| Heap@@31) (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| Heap@@31) (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| Heap@@31) (store (|PolymorphicMapType_39380_39440_112349#PolymorphicMapType_39380| Heap@@31) o_10 f_18 v@@4)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_39380) (o_10@@0 T@Ref) (f_18@@0 T@Field_27949_112482) (v@@5 T@PolymorphicMapType_39929) ) (! (succHeap Heap@@32 (PolymorphicMapType_39380 (|PolymorphicMapType_39380_27687_53#PolymorphicMapType_39380| Heap@@32) (|PolymorphicMapType_39380_27690_27691#PolymorphicMapType_39380| Heap@@32) (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| Heap@@32) (store (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| Heap@@32) o_10@@0 f_18@@0 v@@5) (|PolymorphicMapType_39380_39440_112349#PolymorphicMapType_39380| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_39380 (|PolymorphicMapType_39380_27687_53#PolymorphicMapType_39380| Heap@@32) (|PolymorphicMapType_39380_27690_27691#PolymorphicMapType_39380| Heap@@32) (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| Heap@@32) (store (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| Heap@@32) o_10@@0 f_18@@0 v@@5) (|PolymorphicMapType_39380_39440_112349#PolymorphicMapType_39380| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_39380) (o_10@@1 T@Ref) (f_18@@1 T@Field_45532_3877) (v@@6 Int) ) (! (succHeap Heap@@33 (PolymorphicMapType_39380 (|PolymorphicMapType_39380_27687_53#PolymorphicMapType_39380| Heap@@33) (|PolymorphicMapType_39380_27690_27691#PolymorphicMapType_39380| Heap@@33) (store (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| Heap@@33) o_10@@1 f_18@@1 v@@6) (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| Heap@@33) (|PolymorphicMapType_39380_39440_112349#PolymorphicMapType_39380| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_39380 (|PolymorphicMapType_39380_27687_53#PolymorphicMapType_39380| Heap@@33) (|PolymorphicMapType_39380_27690_27691#PolymorphicMapType_39380| Heap@@33) (store (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| Heap@@33) o_10@@1 f_18@@1 v@@6) (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| Heap@@33) (|PolymorphicMapType_39380_39440_112349#PolymorphicMapType_39380| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_39380) (o_10@@2 T@Ref) (f_18@@2 T@Field_39453_39454) (v@@7 T@Ref) ) (! (succHeap Heap@@34 (PolymorphicMapType_39380 (|PolymorphicMapType_39380_27687_53#PolymorphicMapType_39380| Heap@@34) (store (|PolymorphicMapType_39380_27690_27691#PolymorphicMapType_39380| Heap@@34) o_10@@2 f_18@@2 v@@7) (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| Heap@@34) (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| Heap@@34) (|PolymorphicMapType_39380_39440_112349#PolymorphicMapType_39380| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_39380 (|PolymorphicMapType_39380_27687_53#PolymorphicMapType_39380| Heap@@34) (store (|PolymorphicMapType_39380_27690_27691#PolymorphicMapType_39380| Heap@@34) o_10@@2 f_18@@2 v@@7) (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| Heap@@34) (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| Heap@@34) (|PolymorphicMapType_39380_39440_112349#PolymorphicMapType_39380| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_39380) (o_10@@3 T@Ref) (f_18@@3 T@Field_39440_53) (v@@8 Bool) ) (! (succHeap Heap@@35 (PolymorphicMapType_39380 (store (|PolymorphicMapType_39380_27687_53#PolymorphicMapType_39380| Heap@@35) o_10@@3 f_18@@3 v@@8) (|PolymorphicMapType_39380_27690_27691#PolymorphicMapType_39380| Heap@@35) (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| Heap@@35) (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| Heap@@35) (|PolymorphicMapType_39380_39440_112349#PolymorphicMapType_39380| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_39380 (store (|PolymorphicMapType_39380_27687_53#PolymorphicMapType_39380| Heap@@35) o_10@@3 f_18@@3 v@@8) (|PolymorphicMapType_39380_27690_27691#PolymorphicMapType_39380| Heap@@35) (|PolymorphicMapType_39380_27949_3877#PolymorphicMapType_39380| Heap@@35) (|PolymorphicMapType_39380_27949_112526#PolymorphicMapType_39380| Heap@@35) (|PolymorphicMapType_39380_39440_112349#PolymorphicMapType_39380| Heap@@35)))
)))
(assert (forall ((s@@25 T@Seq_46574) (t@@9 T@Seq_46574) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_27988| s@@25))) (= (|Seq#Drop_27988| (|Seq#Append_46574| s@@25 t@@9) n@@19) (|Seq#Append_46574| (|Seq#Drop_27988| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.493:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_27988| (|Seq#Append_46574| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3755) (t@@10 T@Seq_3755) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3755| s@@26))) (= (|Seq#Drop_3755| (|Seq#Append_3755| s@@26 t@@10) n@@20) (|Seq#Append_3755| (|Seq#Drop_3755| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.493:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3755| (|Seq#Append_3755| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_46574) (n@@21 Int) (i@@31 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@31)) (< i@@31 (|Seq#Length_27988| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@31 n@@21) n@@21) i@@31) (= (|Seq#Index_27988| (|Seq#Drop_27988| s@@27 n@@21) (|Seq#Sub| i@@31 n@@21)) (|Seq#Index_27988| s@@27 i@@31))))
 :qid |stdinbpl.429:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_27988| s@@27 n@@21) (|Seq#Index_27988| s@@27 i@@31))
)))
(assert (forall ((s@@28 T@Seq_3755) (n@@22 Int) (i@@32 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@32)) (< i@@32 (|Seq#Length_3755| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@32 n@@22) n@@22) i@@32) (= (|Seq#Index_3755| (|Seq#Drop_3755| s@@28 n@@22) (|Seq#Sub| i@@32 n@@22)) (|Seq#Index_3755| s@@28 i@@32))))
 :qid |stdinbpl.429:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3755| s@@28 n@@22) (|Seq#Index_3755| s@@28 i@@32))
)))
(assert (forall ((s0@@7 T@Seq_46574) (s1@@7 T@Seq_46574) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_27988|)) (not (= s1@@7 |Seq#Empty_27988|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_27988| s0@@7))) (= (|Seq#Index_27988| (|Seq#Append_46574| s0@@7 s1@@7) n@@23) (|Seq#Index_27988| s0@@7 n@@23)))
 :qid |stdinbpl.369:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_27988| (|Seq#Append_46574| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_27988| s0@@7 n@@23) (|Seq#Append_46574| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3755) (s1@@8 T@Seq_3755) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3755|)) (not (= s1@@8 |Seq#Empty_3755|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3755| s0@@8))) (= (|Seq#Index_3755| (|Seq#Append_3755| s0@@8 s1@@8) n@@24) (|Seq#Index_3755| s0@@8 n@@24)))
 :qid |stdinbpl.369:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3755| (|Seq#Append_3755| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3755| s0@@8 n@@24) (|Seq#Append_3755| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_46574) (s1@@9 T@Seq_46574) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_27988|)) (not (= s1@@9 |Seq#Empty_27988|))) (<= 0 m)) (< m (|Seq#Length_27988| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_27988| s0@@9)) (|Seq#Length_27988| s0@@9)) m) (= (|Seq#Index_27988| (|Seq#Append_46574| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_27988| s0@@9))) (|Seq#Index_27988| s1@@9 m))))
 :qid |stdinbpl.374:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_27988| s1@@9 m) (|Seq#Append_46574| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3755) (s1@@10 T@Seq_3755) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3755|)) (not (= s1@@10 |Seq#Empty_3755|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3755| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3755| s0@@10)) (|Seq#Length_3755| s0@@10)) m@@0) (= (|Seq#Index_3755| (|Seq#Append_3755| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3755| s0@@10))) (|Seq#Index_3755| s1@@10 m@@0))))
 :qid |stdinbpl.374:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3755| s1@@10 m@@0) (|Seq#Append_3755| s0@@10 s1@@10))
)))
(assert (forall ((o_10@@4 T@Ref) (f_16 T@Field_39453_39454) (Heap@@36 T@PolymorphicMapType_39380) ) (!  (=> (select (|PolymorphicMapType_39380_27687_53#PolymorphicMapType_39380| Heap@@36) o_10@@4 $allocated) (select (|PolymorphicMapType_39380_27687_53#PolymorphicMapType_39380| Heap@@36) (select (|PolymorphicMapType_39380_27690_27691#PolymorphicMapType_39380| Heap@@36) o_10@@4 f_16) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_39380_27690_27691#PolymorphicMapType_39380| Heap@@36) o_10@@4 f_16))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_39380) (Mask@@30 T@PolymorphicMapType_39401) (i@@33 Int) (lo@@11 Int) (hi@@23 Int) (step@@7 Int) (vmin@@7 Int) (vmax_1@@7 Int) (ar_1@@23 T@Seq_46574) ) (!  (=> (state Heap@@37 Mask@@30) (= (|sum_square'| Heap@@37 i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax_1@@7 ar_1@@23) (|sum_square#frame| (FrameFragment_4736 (|sum_square#condqp2| Heap@@37 i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax_1@@7 ar_1@@23)) i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax_1@@7 ar_1@@23)))
 :qid |stdinbpl.1026:15|
 :skolemid |87|
 :pattern ( (state Heap@@37 Mask@@30) (|sum_square'| Heap@@37 i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax_1@@7 ar_1@@23))
)))
(assert (forall ((s@@29 T@Seq_46574) (x@@3 T@Ref) (i@@34 Int) ) (!  (=> (and (and (<= 0 i@@34) (< i@@34 (|Seq#Length_27988| s@@29))) (= (|Seq#Index_27988| s@@29 i@@34) x@@3)) (|Seq#Contains_46574| s@@29 x@@3))
 :qid |stdinbpl.526:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_46574| s@@29 x@@3) (|Seq#Index_27988| s@@29 i@@34))
)))
(assert (forall ((s@@30 T@Seq_3755) (x@@4 Int) (i@@35 Int) ) (!  (=> (and (and (<= 0 i@@35) (< i@@35 (|Seq#Length_3755| s@@30))) (= (|Seq#Index_3755| s@@30 i@@35) x@@4)) (|Seq#Contains_3755| s@@30 x@@4))
 :qid |stdinbpl.526:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3755| s@@30 x@@4) (|Seq#Index_3755| s@@30 i@@35))
)))
(assert (forall ((s0@@11 T@Seq_46574) (s1@@11 T@Seq_46574) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_46574| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_46574| s0@@11 s1@@11))) (not (= (|Seq#Length_27988| s0@@11) (|Seq#Length_27988| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_46574| s0@@11 s1@@11))) (= (|Seq#Length_27988| s0@@11) (|Seq#Length_27988| s1@@11))) (= (|Seq#SkolemDiff_46574| s0@@11 s1@@11) (|Seq#SkolemDiff_46574| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_46574| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_46574| s0@@11 s1@@11) (|Seq#Length_27988| s0@@11))) (not (= (|Seq#Index_27988| s0@@11 (|Seq#SkolemDiff_46574| s0@@11 s1@@11)) (|Seq#Index_27988| s1@@11 (|Seq#SkolemDiff_46574| s0@@11 s1@@11))))))
 :qid |stdinbpl.630:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_46574| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3755) (s1@@12 T@Seq_3755) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3755| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3755| s0@@12 s1@@12))) (not (= (|Seq#Length_3755| s0@@12) (|Seq#Length_3755| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3755| s0@@12 s1@@12))) (= (|Seq#Length_3755| s0@@12) (|Seq#Length_3755| s1@@12))) (= (|Seq#SkolemDiff_3755| s0@@12 s1@@12) (|Seq#SkolemDiff_3755| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3755| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3755| s0@@12 s1@@12) (|Seq#Length_3755| s0@@12))) (not (= (|Seq#Index_3755| s0@@12 (|Seq#SkolemDiff_3755| s0@@12 s1@@12)) (|Seq#Index_3755| s1@@12 (|Seq#SkolemDiff_3755| s0@@12 s1@@12))))))
 :qid |stdinbpl.630:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3755| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_27949_112349) (v_1@@0 T@FrameType) (q T@Field_27949_112349) (w@@0 T@FrameType) (r T@Field_27949_112349) (u T@FrameType) ) (!  (=> (and (InsidePredicate_39440_39440 p@@1 v_1@@0 q w@@0) (InsidePredicate_39440_39440 q w@@0 r u)) (InsidePredicate_39440_39440 p@@1 v_1@@0 r u))
 :qid |stdinbpl.297:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_39440_39440 p@@1 v_1@@0 q w@@0) (InsidePredicate_39440_39440 q w@@0 r u))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_39380) (i@@36 Int) (lo@@12 Int) (hi@@24 Int) (step@@8 Int) (vmin@@8 Int) (vmax_1@@8 Int) (ar_1@@24 T@Seq_46574) ) (! (dummyFunction_4184 (|sum_square#triggerStateless| i@@36 lo@@12 hi@@24 step@@8 vmin@@8 vmax_1@@8 ar_1@@24))
 :qid |stdinbpl.1010:15|
 :skolemid |84|
 :pattern ( (|sum_square'| Heap@@38 i@@36 lo@@12 hi@@24 step@@8 vmin@@8 vmax_1@@8 ar_1@@24))
)))
(assert (forall ((s@@31 T@Seq_46574) ) (!  (=> (= (|Seq#Length_27988| s@@31) 0) (= s@@31 |Seq#Empty_27988|))
 :qid |stdinbpl.333:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_27988| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3755) ) (!  (=> (= (|Seq#Length_3755| s@@32) 0) (= s@@32 |Seq#Empty_3755|))
 :qid |stdinbpl.333:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3755| s@@32))
)))
(assert (forall ((s@@33 T@Seq_46574) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_27988| s@@33 n@@25) |Seq#Empty_27988|))
 :qid |stdinbpl.509:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_27988| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3755) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3755| s@@34 n@@26) |Seq#Empty_3755|))
 :qid |stdinbpl.509:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3755| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@39 T@PolymorphicMapType_39380) (Mask@@31 T@PolymorphicMapType_39401) (i@@37 Int) (lo@@13 Int) (hi@@25 Int) (ar_1@@25 T@Seq_46574) ) (!  (=> (state Heap@@39 Mask@@31) (= (|sum_array'| Heap@@39 i@@37 lo@@13 hi@@25 ar_1@@25) (|sum_array#frame| (FrameFragment_4736 (|sum_array#condqp1| Heap@@39 i@@37 lo@@13 hi@@25 ar_1@@25)) i@@37 lo@@13 hi@@25 ar_1@@25)))
 :qid |stdinbpl.791:15|
 :skolemid |66|
 :pattern ( (state Heap@@39 Mask@@31) (|sum_array'| Heap@@39 i@@37 lo@@13 hi@@25 ar_1@@25))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_39380) (Mask@@32 T@PolymorphicMapType_39401) (i@@38 Int) (hi@@26 Int) (ar_1@@26 T@Seq_46574) (v_2@@12 Int) ) (!  (=> (state Heap@@40 Mask@@32) (= (|count_array'| Heap@@40 i@@38 hi@@26 ar_1@@26 v_2@@12) (|count_array#frame| (FrameFragment_4736 (|count_array#condqp4| Heap@@40 i@@38 hi@@26 ar_1@@26 v_2@@12)) i@@38 hi@@26 ar_1@@26 v_2@@12)))
 :qid |stdinbpl.1643:15|
 :skolemid |133|
 :pattern ( (state Heap@@40 Mask@@32) (|count_array'| Heap@@40 i@@38 hi@@26 ar_1@@26 v_2@@12))
)))
; Valid

