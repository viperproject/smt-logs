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
(declare-sort T@Field_40898_53 0)
(declare-sort T@Field_40911_40912 0)
(declare-sort T@Field_46984_3805 0)
(declare-sort T@Field_28958_115599 0)
(declare-sort T@Field_28958_115466 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_40859 0)) (((PolymorphicMapType_40859 (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| (Array T@Ref T@Field_46984_3805 Real)) (|PolymorphicMapType_40859_28958_53#PolymorphicMapType_40859| (Array T@Ref T@Field_40898_53 Real)) (|PolymorphicMapType_40859_28958_40912#PolymorphicMapType_40859| (Array T@Ref T@Field_40911_40912 Real)) (|PolymorphicMapType_40859_28958_115466#PolymorphicMapType_40859| (Array T@Ref T@Field_28958_115466 Real)) (|PolymorphicMapType_40859_28958_119721#PolymorphicMapType_40859| (Array T@Ref T@Field_28958_115599 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_41387 0)) (((PolymorphicMapType_41387 (|PolymorphicMapType_41387_40898_53#PolymorphicMapType_41387| (Array T@Ref T@Field_40898_53 Bool)) (|PolymorphicMapType_41387_40898_40912#PolymorphicMapType_41387| (Array T@Ref T@Field_40911_40912 Bool)) (|PolymorphicMapType_41387_40898_3805#PolymorphicMapType_41387| (Array T@Ref T@Field_46984_3805 Bool)) (|PolymorphicMapType_41387_40898_115466#PolymorphicMapType_41387| (Array T@Ref T@Field_28958_115466 Bool)) (|PolymorphicMapType_41387_40898_116777#PolymorphicMapType_41387| (Array T@Ref T@Field_28958_115599 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_40838 0)) (((PolymorphicMapType_40838 (|PolymorphicMapType_40838_28702_53#PolymorphicMapType_40838| (Array T@Ref T@Field_40898_53 Bool)) (|PolymorphicMapType_40838_28705_28706#PolymorphicMapType_40838| (Array T@Ref T@Field_40911_40912 T@Ref)) (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| (Array T@Ref T@Field_46984_3805 Int)) (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| (Array T@Ref T@Field_28958_115599 T@PolymorphicMapType_41387)) (|PolymorphicMapType_40838_40898_115466#PolymorphicMapType_40838| (Array T@Ref T@Field_28958_115466 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_40898_53)
(declare-fun Ref__Integer_value () T@Field_46984_3805)
(declare-sort T@Seq_50030 0)
(declare-fun |Seq#Length_29015| (T@Seq_50030) Int)
(declare-fun |Seq#Drop_29015| (T@Seq_50030 Int) T@Seq_50030)
(declare-sort T@Seq_3683 0)
(declare-fun |Seq#Length_3683| (T@Seq_3683) Int)
(declare-fun |Seq#Drop_3683| (T@Seq_3683 Int) T@Seq_3683)
(declare-fun state (T@PolymorphicMapType_40838 T@PolymorphicMapType_40859) Bool)
(declare-fun |Ref__multidim_index_2'| (T@PolymorphicMapType_40838 Int Int Int Int) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |Ref__multidim_index_2#trigger| (T@FrameType Int Int Int Int) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |count_square'| (T@PolymorphicMapType_40838 Int Int Int Int Int Int T@Seq_50030 Int) Int)
(declare-fun |count_square#frame| (T@FrameType Int Int Int Int Int Int T@Seq_50030 Int) Int)
(declare-fun FrameFragment_5496 (Int) T@FrameType)
(declare-fun |count_square#condqp3| (T@PolymorphicMapType_40838 Int Int Int Int Int Int T@Seq_50030 Int) Int)
(declare-fun succHeap (T@PolymorphicMapType_40838 T@PolymorphicMapType_40838) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_40838 T@PolymorphicMapType_40838) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_40859) Bool)
(declare-fun |sum_list'| (T@PolymorphicMapType_40838 Int Int T@Seq_3683) Int)
(declare-fun dummyFunction_4485 (Int) Bool)
(declare-fun |sum_list#triggerStateless| (Int Int T@Seq_3683) Int)
(declare-fun ZeroPMask () T@PolymorphicMapType_41387)
(declare-fun |Seq#Index_29015| (T@Seq_50030 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3683| (T@Seq_3683 Int) Int)
(declare-fun |Seq#Empty_29015| () T@Seq_50030)
(declare-fun |Seq#Empty_3683| () T@Seq_3683)
(declare-fun |Seq#Update_29015| (T@Seq_50030 Int T@Ref) T@Seq_50030)
(declare-fun |Seq#Update_3683| (T@Seq_3683 Int Int) T@Seq_3683)
(declare-fun |Seq#Take_29015| (T@Seq_50030 Int) T@Seq_50030)
(declare-fun |Seq#Take_3683| (T@Seq_3683 Int) T@Seq_3683)
(declare-fun |Seq#Contains_3683| (T@Seq_3683 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3683)
(declare-fun |Seq#Contains_50030| (T@Seq_50030 T@Ref) Bool)
(declare-fun |Seq#Skolem_50030| (T@Seq_50030 T@Ref) Int)
(declare-fun |Seq#Skolem_3683| (T@Seq_3683 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_40838 T@PolymorphicMapType_40838 T@PolymorphicMapType_40859) Bool)
(declare-fun IsPredicateField_28958_115557 (T@Field_28958_115466) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_28958 (T@Field_28958_115466) T@Field_28958_115599)
(declare-fun HasDirectPerm_28958_115530 (T@PolymorphicMapType_40859 T@Ref T@Field_28958_115466) Bool)
(declare-fun IsWandField_28958_117304 (T@Field_28958_115466) Bool)
(declare-fun WandMaskField_28958 (T@Field_28958_115466) T@Field_28958_115599)
(declare-fun |Seq#Singleton_29015| (T@Ref) T@Seq_50030)
(declare-fun |Seq#Singleton_3683| (Int) T@Seq_3683)
(declare-fun count_square (T@PolymorphicMapType_40838 Int Int Int Int Int Int T@Seq_50030 Int) Int)
(declare-fun |count_square#triggerStateless| (Int Int Int Int Int Int T@Seq_50030 Int) Int)
(declare-fun |Seq#Append_50030| (T@Seq_50030 T@Seq_50030) T@Seq_50030)
(declare-fun |Seq#Append_3683| (T@Seq_3683 T@Seq_3683) T@Seq_3683)
(declare-fun sum_array (T@PolymorphicMapType_40838 Int Int Int T@Seq_50030) Int)
(declare-fun |sum_array'| (T@PolymorphicMapType_40838 Int Int Int T@Seq_50030) Int)
(declare-fun |sum_square#condqp2| (T@PolymorphicMapType_40838 Int Int Int Int Int Int T@Seq_50030) Int)
(declare-fun |sk_sum_square#condqp2| (Int Int) Int)
(declare-fun sum_square (T@PolymorphicMapType_40838 Int Int Int Int Int Int T@Seq_50030) Int)
(declare-fun |sum_square'| (T@PolymorphicMapType_40838 Int Int Int Int Int Int T@Seq_50030) Int)
(declare-fun |sk_count_square#condqp3| (Int Int) Int)
(declare-fun dummyHeap () T@PolymorphicMapType_40838)
(declare-fun ZeroMask () T@PolymorphicMapType_40859)
(declare-fun InsidePredicate_40898_40898 (T@Field_28958_115466 T@FrameType T@Field_28958_115466 T@FrameType) Bool)
(declare-fun IsPredicateField_28958_3805 (T@Field_46984_3805) Bool)
(declare-fun IsWandField_28958_3805 (T@Field_46984_3805) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_28958_120850 (T@Field_28958_115599) Bool)
(declare-fun IsWandField_28958_120866 (T@Field_28958_115599) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_28958_40912 (T@Field_40911_40912) Bool)
(declare-fun IsWandField_28958_40912 (T@Field_40911_40912) Bool)
(declare-fun IsPredicateField_28958_53 (T@Field_40898_53) Bool)
(declare-fun IsWandField_28958_53 (T@Field_40898_53) Bool)
(declare-fun |sum_list#frame| (T@FrameType Int Int T@Seq_3683) Int)
(declare-fun HasDirectPerm_28958_121304 (T@PolymorphicMapType_40859 T@Ref T@Field_28958_115599) Bool)
(declare-fun HasDirectPerm_28958_40912 (T@PolymorphicMapType_40859 T@Ref T@Field_40911_40912) Bool)
(declare-fun HasDirectPerm_28958_53 (T@PolymorphicMapType_40859 T@Ref T@Field_40898_53) Bool)
(declare-fun HasDirectPerm_28958_3805 (T@PolymorphicMapType_40859 T@Ref T@Field_46984_3805) Bool)
(declare-fun |Ref__multidim_index_2#triggerStateless| (Int Int Int Int) Int)
(declare-fun |sum_array#triggerStateless| (Int Int Int T@Seq_50030) Int)
(declare-fun |count_list'| (T@PolymorphicMapType_40838 Int Int T@Seq_3683 Int) Int)
(declare-fun |count_list#triggerStateless| (Int Int T@Seq_3683 Int) Int)
(declare-fun |count_array'| (T@PolymorphicMapType_40838 Int Int T@Seq_50030 Int) Int)
(declare-fun |count_array#triggerStateless| (Int Int T@Seq_50030 Int) Int)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun count_list (T@PolymorphicMapType_40838 Int Int T@Seq_3683 Int) Int)
(declare-fun Ref__multidim_index_2 (T@PolymorphicMapType_40838 Int Int Int Int) Int)
(declare-fun count_array (T@PolymorphicMapType_40838 Int Int T@Seq_50030 Int) Int)
(declare-fun sumMask (T@PolymorphicMapType_40859 T@PolymorphicMapType_40859 T@PolymorphicMapType_40859) Bool)
(declare-fun |sum_square#triggerStateless| (Int Int Int Int Int Int T@Seq_50030) Int)
(declare-fun |Ref__multidim_index_2#frame| (T@FrameType Int Int Int Int) Int)
(declare-fun |count_list#frame| (T@FrameType Int Int T@Seq_3683 Int) Int)
(declare-fun |Seq#Equal_50030| (T@Seq_50030 T@Seq_50030) Bool)
(declare-fun |Seq#Equal_3683| (T@Seq_3683 T@Seq_3683) Bool)
(declare-fun sum_list (T@PolymorphicMapType_40838 Int Int T@Seq_3683) Int)
(declare-fun |Seq#ContainsTrigger_29015| (T@Seq_50030 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3683| (T@Seq_3683 Int) Bool)
(declare-fun |count_array#condqp4| (T@PolymorphicMapType_40838 Int Int T@Seq_50030 Int) Int)
(declare-fun |sk_count_array#condqp4| (Int Int) Int)
(declare-fun |sum_array#condqp1| (T@PolymorphicMapType_40838 Int Int Int T@Seq_50030) Int)
(declare-fun |sk_sum_array#condqp1| (Int Int) Int)
(declare-fun |sum_square#frame| (T@FrameType Int Int Int Int Int Int T@Seq_50030) Int)
(declare-fun |Seq#SkolemDiff_50030| (T@Seq_50030 T@Seq_50030) Int)
(declare-fun |Seq#SkolemDiff_3683| (T@Seq_3683 T@Seq_3683) Int)
(declare-fun |sum_array#frame| (T@FrameType Int Int Int T@Seq_50030) Int)
(declare-fun |count_array#frame| (T@FrameType Int Int T@Seq_50030 Int) Int)
(assert (forall ((s T@Seq_50030) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_29015| s)) (= (|Seq#Length_29015| (|Seq#Drop_29015| s n)) (- (|Seq#Length_29015| s) n))) (=> (< (|Seq#Length_29015| s) n) (= (|Seq#Length_29015| (|Seq#Drop_29015| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_29015| (|Seq#Drop_29015| s n)) (|Seq#Length_29015| s))))
 :qid |stdinbpl.396:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_29015| (|Seq#Drop_29015| s n)))
 :pattern ( (|Seq#Length_29015| s) (|Seq#Drop_29015| s n))
)))
(assert (forall ((s@@0 T@Seq_3683) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3683| s@@0)) (= (|Seq#Length_3683| (|Seq#Drop_3683| s@@0 n@@0)) (- (|Seq#Length_3683| s@@0) n@@0))) (=> (< (|Seq#Length_3683| s@@0) n@@0) (= (|Seq#Length_3683| (|Seq#Drop_3683| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3683| (|Seq#Drop_3683| s@@0 n@@0)) (|Seq#Length_3683| s@@0))))
 :qid |stdinbpl.396:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3683| (|Seq#Drop_3683| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3683| s@@0) (|Seq#Drop_3683| s@@0 n@@0))
)))
(assert (forall ((Heap T@PolymorphicMapType_40838) (Mask T@PolymorphicMapType_40859) (N0 Int) (N1 Int) (i0_3 Int) (i1_9 Int) ) (!  (=> (and (state Heap Mask) (or (< AssumeFunctionsAbove 1) (|Ref__multidim_index_2#trigger| EmptyFrame N0 N1 i0_3 i1_9))) (=> (and (and (and (and (and (<= 0 i0_3) (< i0_3 N0)) (<= 0 N0)) (<= 0 i1_9)) (< i1_9 N1)) (<= 0 N1)) (= (|Ref__multidim_index_2'| Heap N0 N1 i0_3 i1_9) (+ (* i0_3 N1) i1_9))))
 :qid |stdinbpl.703:15|
 :skolemid |63|
 :pattern ( (state Heap Mask) (|Ref__multidim_index_2'| Heap N0 N1 i0_3 i1_9))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_40838) (Mask@@0 T@PolymorphicMapType_40859) (i Int) (lo Int) (hi Int) (step Int) (vmin Int) (vmax_1 Int) (ar_1 T@Seq_50030) (v_2 Int) ) (!  (=> (state Heap@@0 Mask@@0) (= (|count_square'| Heap@@0 i lo hi step vmin vmax_1 ar_1 v_2) (|count_square#frame| (FrameFragment_5496 (|count_square#condqp3| Heap@@0 i lo hi step vmin vmax_1 ar_1 v_2)) i lo hi step vmin vmax_1 ar_1 v_2)))
 :qid |stdinbpl.1381:15|
 :skolemid |116|
 :pattern ( (state Heap@@0 Mask@@0) (|count_square'| Heap@@0 i lo hi step vmin vmax_1 ar_1 v_2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_40838) (Mask@@1 T@PolymorphicMapType_40859) (N0@@0 Int) (N1@@0 Int) (i0_3@@0 Int) (i1_9@@0 Int) ) (!  (=> (and (state Heap@@1 Mask@@1) (or (< AssumeFunctionsAbove 1) (|Ref__multidim_index_2#trigger| EmptyFrame N0@@0 N1@@0 i0_3@@0 i1_9@@0))) (=> (and (and (and (and (and (<= 0 i0_3@@0) (< i0_3@@0 N0@@0)) (<= 0 N0@@0)) (<= 0 i1_9@@0)) (< i1_9@@0 N1@@0)) (<= 0 N1@@0)) (< (mod (|Ref__multidim_index_2'| Heap@@1 N0@@0 N1@@0 i0_3@@0 i1_9@@0) N1@@0) N0@@0)))
 :qid |stdinbpl.711:15|
 :skolemid |65|
 :pattern ( (state Heap@@1 Mask@@1) (|Ref__multidim_index_2'| Heap@@1 N0@@0 N1@@0 i0_3@@0 i1_9@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_40838) (Heap1 T@PolymorphicMapType_40838) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_40838) (Mask@@2 T@PolymorphicMapType_40859) ) (!  (=> (state Heap@@2 Mask@@2) (GoodMask Mask@@2))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@2 Mask@@2))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_40838) (Heap1@@0 T@PolymorphicMapType_40838) (Heap2 T@PolymorphicMapType_40838) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_40838) (i@@0 Int) (hi@@0 Int) (ar_1@@0 T@Seq_3683) ) (! (dummyFunction_4485 (|sum_list#triggerStateless| i@@0 hi@@0 ar_1@@0))
 :qid |stdinbpl.779:15|
 :skolemid |67|
 :pattern ( (|sum_list'| Heap@@3 i@@0 hi@@0 ar_1@@0))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_28958_115599) ) (!  (not (select (|PolymorphicMapType_41387_40898_116777#PolymorphicMapType_41387| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_41387_40898_116777#PolymorphicMapType_41387| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_28958_115466) ) (!  (not (select (|PolymorphicMapType_41387_40898_115466#PolymorphicMapType_41387| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_41387_40898_115466#PolymorphicMapType_41387| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_46984_3805) ) (!  (not (select (|PolymorphicMapType_41387_40898_3805#PolymorphicMapType_41387| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_41387_40898_3805#PolymorphicMapType_41387| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_40911_40912) ) (!  (not (select (|PolymorphicMapType_41387_40898_40912#PolymorphicMapType_41387| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_41387_40898_40912#PolymorphicMapType_41387| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_40898_53) ) (!  (not (select (|PolymorphicMapType_41387_40898_53#PolymorphicMapType_41387| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_41387_40898_53#PolymorphicMapType_41387| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((s@@1 T@Seq_50030) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_29015| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_29015| (|Seq#Drop_29015| s@@1 n@@1) j) (|Seq#Index_29015| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.417:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_29015| (|Seq#Drop_29015| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3683) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3683| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3683| (|Seq#Drop_3683| s@@2 n@@2) j@@0) (|Seq#Index_3683| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.417:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3683| (|Seq#Drop_3683| s@@2 n@@2) j@@0))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_40838) (Mask@@3 T@PolymorphicMapType_40859) (N0@@1 Int) (N1@@1 Int) (i0_3@@1 Int) (i1_9@@1 Int) ) (!  (=> (and (state Heap@@4 Mask@@3) (or (< AssumeFunctionsAbove 1) (|Ref__multidim_index_2#trigger| EmptyFrame N0@@1 N1@@1 i0_3@@1 i1_9@@1))) (=> (and (and (and (and (and (<= 0 i0_3@@1) (< i0_3@@1 N0@@1)) (<= 0 N0@@1)) (<= 0 i1_9@@1)) (< i1_9@@1 N1@@1)) (<= 0 N1@@1)) (= (mod (|Ref__multidim_index_2'| Heap@@4 N0@@1 N1@@1 i0_3@@1 i1_9@@1) N1@@1) i1_9@@1)))
 :qid |stdinbpl.707:15|
 :skolemid |64|
 :pattern ( (state Heap@@4 Mask@@3) (|Ref__multidim_index_2'| Heap@@4 N0@@1 N1@@1 i0_3@@1 i1_9@@1))
)))
(assert (= (|Seq#Length_29015| |Seq#Empty_29015|) 0))
(assert (= (|Seq#Length_3683| |Seq#Empty_3683|) 0))
(assert (forall ((s@@3 T@Seq_50030) (i@@1 Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_29015| s@@3))) (and (=> (= i@@1 n@@3) (= (|Seq#Index_29015| (|Seq#Update_29015| s@@3 i@@1 v) n@@3) v)) (=> (not (= i@@1 n@@3)) (= (|Seq#Index_29015| (|Seq#Update_29015| s@@3 i@@1 v) n@@3) (|Seq#Index_29015| s@@3 n@@3)))))
 :qid |stdinbpl.372:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_29015| (|Seq#Update_29015| s@@3 i@@1 v) n@@3))
 :pattern ( (|Seq#Index_29015| s@@3 n@@3) (|Seq#Update_29015| s@@3 i@@1 v))
)))
(assert (forall ((s@@4 T@Seq_3683) (i@@2 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3683| s@@4))) (and (=> (= i@@2 n@@4) (= (|Seq#Index_3683| (|Seq#Update_3683| s@@4 i@@2 v@@0) n@@4) v@@0)) (=> (not (= i@@2 n@@4)) (= (|Seq#Index_3683| (|Seq#Update_3683| s@@4 i@@2 v@@0) n@@4) (|Seq#Index_3683| s@@4 n@@4)))))
 :qid |stdinbpl.372:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3683| (|Seq#Update_3683| s@@4 i@@2 v@@0) n@@4))
 :pattern ( (|Seq#Index_3683| s@@4 n@@4) (|Seq#Update_3683| s@@4 i@@2 v@@0))
)))
(assert (forall ((s@@5 T@Seq_50030) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_29015| s@@5)) (= (|Seq#Length_29015| (|Seq#Take_29015| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_29015| s@@5) n@@5) (= (|Seq#Length_29015| (|Seq#Take_29015| s@@5 n@@5)) (|Seq#Length_29015| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_29015| (|Seq#Take_29015| s@@5 n@@5)) 0)))
 :qid |stdinbpl.383:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_29015| (|Seq#Take_29015| s@@5 n@@5)))
 :pattern ( (|Seq#Take_29015| s@@5 n@@5) (|Seq#Length_29015| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3683) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3683| s@@6)) (= (|Seq#Length_3683| (|Seq#Take_3683| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3683| s@@6) n@@6) (= (|Seq#Length_3683| (|Seq#Take_3683| s@@6 n@@6)) (|Seq#Length_3683| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3683| (|Seq#Take_3683| s@@6 n@@6)) 0)))
 :qid |stdinbpl.383:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3683| (|Seq#Take_3683| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3683| s@@6 n@@6) (|Seq#Length_3683| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3683| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.657:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3683| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_50030) (x T@Ref) ) (!  (=> (|Seq#Contains_50030| s@@7 x) (and (and (<= 0 (|Seq#Skolem_50030| s@@7 x)) (< (|Seq#Skolem_50030| s@@7 x) (|Seq#Length_29015| s@@7))) (= (|Seq#Index_29015| s@@7 (|Seq#Skolem_50030| s@@7 x)) x)))
 :qid |stdinbpl.515:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_50030| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3683) (x@@0 Int) ) (!  (=> (|Seq#Contains_3683| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3683| s@@8 x@@0)) (< (|Seq#Skolem_3683| s@@8 x@@0) (|Seq#Length_3683| s@@8))) (= (|Seq#Index_3683| s@@8 (|Seq#Skolem_3683| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.515:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3683| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_50030) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_29015| s@@9 n@@7) s@@9))
 :qid |stdinbpl.499:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_29015| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3683) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3683| s@@10 n@@8) s@@10))
 :qid |stdinbpl.499:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3683| s@@10 n@@8))
)))
(assert (forall ((i@@3 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@3 j@@1) (- i@@3 j@@1))
 :qid |stdinbpl.352:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@3 j@@1))
)))
(assert (forall ((i@@4 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@4 j@@2) (+ i@@4 j@@2))
 :qid |stdinbpl.350:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@4 j@@2))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_40838) (ExhaleHeap T@PolymorphicMapType_40838) (Mask@@4 T@PolymorphicMapType_40859) (pm_f_52 T@Field_28958_115466) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@4) (=> (and (HasDirectPerm_28958_115530 Mask@@4 null pm_f_52) (IsPredicateField_28958_115557 pm_f_52)) (= (select (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| Heap@@5) null (PredicateMaskField_28958 pm_f_52)) (select (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| ExhaleHeap) null (PredicateMaskField_28958 pm_f_52)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@4) (IsPredicateField_28958_115557 pm_f_52) (select (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| ExhaleHeap) null (PredicateMaskField_28958 pm_f_52)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_40838) (ExhaleHeap@@0 T@PolymorphicMapType_40838) (Mask@@5 T@PolymorphicMapType_40859) (pm_f_52@@0 T@Field_28958_115466) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@5) (=> (and (HasDirectPerm_28958_115530 Mask@@5 null pm_f_52@@0) (IsWandField_28958_117304 pm_f_52@@0)) (= (select (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| Heap@@6) null (WandMaskField_28958 pm_f_52@@0)) (select (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| ExhaleHeap@@0) null (WandMaskField_28958 pm_f_52@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@5) (IsWandField_28958_117304 pm_f_52@@0) (select (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| ExhaleHeap@@0) null (WandMaskField_28958 pm_f_52@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_50030| (|Seq#Singleton_29015| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.640:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_50030| (|Seq#Singleton_29015| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3683| (|Seq#Singleton_3683| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.640:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3683| (|Seq#Singleton_3683| x@@2) y@@0))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_40838) (i@@5 Int) (lo@@0 Int) (hi@@1 Int) (step@@0 Int) (vmin@@0 Int) (vmax_1@@0 Int) (ar_1@@1 T@Seq_50030) (v_2@@0 Int) ) (!  (and (= (count_square Heap@@7 i@@5 lo@@0 hi@@1 step@@0 vmin@@0 vmax_1@@0 ar_1@@1 v_2@@0) (|count_square'| Heap@@7 i@@5 lo@@0 hi@@1 step@@0 vmin@@0 vmax_1@@0 ar_1@@1 v_2@@0)) (dummyFunction_4485 (|count_square#triggerStateless| i@@5 lo@@0 hi@@1 step@@0 vmin@@0 vmax_1@@0 ar_1@@1 v_2@@0)))
 :qid |stdinbpl.1361:15|
 :skolemid |112|
 :pattern ( (count_square Heap@@7 i@@5 lo@@0 hi@@1 step@@0 vmin@@0 vmax_1@@0 ar_1@@1 v_2@@0))
)))
(assert (forall ((s@@11 T@Seq_50030) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_29015| s@@11))) (= (|Seq#Index_29015| (|Seq#Take_29015| s@@11 n@@9) j@@3) (|Seq#Index_29015| s@@11 j@@3)))
 :qid |stdinbpl.391:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_29015| (|Seq#Take_29015| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_29015| s@@11 j@@3) (|Seq#Take_29015| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3683) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3683| s@@12))) (= (|Seq#Index_3683| (|Seq#Take_3683| s@@12 n@@10) j@@4) (|Seq#Index_3683| s@@12 j@@4)))
 :qid |stdinbpl.391:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3683| (|Seq#Take_3683| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3683| s@@12 j@@4) (|Seq#Take_3683| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_50030) (t T@Seq_50030) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_29015| s@@13))) (< n@@11 (|Seq#Length_29015| (|Seq#Append_50030| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_29015| s@@13)) (|Seq#Length_29015| s@@13)) n@@11) (= (|Seq#Take_29015| (|Seq#Append_50030| s@@13 t) n@@11) (|Seq#Append_50030| s@@13 (|Seq#Take_29015| t (|Seq#Sub| n@@11 (|Seq#Length_29015| s@@13)))))))
 :qid |stdinbpl.476:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_29015| (|Seq#Append_50030| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3683) (t@@0 T@Seq_3683) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3683| s@@14))) (< n@@12 (|Seq#Length_3683| (|Seq#Append_3683| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3683| s@@14)) (|Seq#Length_3683| s@@14)) n@@12) (= (|Seq#Take_3683| (|Seq#Append_3683| s@@14 t@@0) n@@12) (|Seq#Append_3683| s@@14 (|Seq#Take_3683| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3683| s@@14)))))))
 :qid |stdinbpl.476:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3683| (|Seq#Append_3683| s@@14 t@@0) n@@12))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_40838) (i@@6 Int) (lo@@1 Int) (hi@@2 Int) (step@@1 Int) (vmin@@1 Int) (vmax_1@@1 Int) (ar_1@@2 T@Seq_50030) (v_2@@1 Int) ) (! (dummyFunction_4485 (|count_square#triggerStateless| i@@6 lo@@1 hi@@2 step@@1 vmin@@1 vmax_1@@1 ar_1@@2 v_2@@1))
 :qid |stdinbpl.1365:15|
 :skolemid |113|
 :pattern ( (|count_square'| Heap@@8 i@@6 lo@@1 hi@@2 step@@1 vmin@@1 vmax_1@@1 ar_1@@2 v_2@@1))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_40838) (Mask@@6 T@PolymorphicMapType_40859) (i@@7 Int) (lo@@2 Int) (hi@@3 Int) (ar_1@@3 T@Seq_50030) ) (!  (=> (and (state Heap@@9 Mask@@6) (< AssumeFunctionsAbove 4)) (=> (and (and (and (<= 0 lo@@2) (and (<= lo@@2 i@@7) (<= i@@7 hi@@3))) (<= hi@@3 (|Seq#Length_29015| ar_1@@3))) (forall ((j@@5 Int) (k Int) ) (!  (=> (and (<= 0 j@@5) (and (< j@@5 hi@@3) (and (<= 0 k) (and (< k hi@@3) (not (= j@@5 k)))))) (not (= (|Seq#Index_29015| ar_1@@3 j@@5) (|Seq#Index_29015| ar_1@@3 k))))
 :qid |stdinbpl.872:126|
 :skolemid |72|
 :pattern ( (|Seq#Index_29015| ar_1@@3 j@@5) (|Seq#Index_29015| ar_1@@3 k))
))) (= (sum_array Heap@@9 i@@7 lo@@2 hi@@3 ar_1@@3) (ite (< i@@7 hi@@3) (+ (select (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| Heap@@9) (|Seq#Index_29015| ar_1@@3 i@@7) Ref__Integer_value) (|sum_array'| Heap@@9 (+ i@@7 1) lo@@2 hi@@3 ar_1@@3)) 0))))
 :qid |stdinbpl.870:15|
 :skolemid |73|
 :pattern ( (state Heap@@9 Mask@@6) (sum_array Heap@@9 i@@7 lo@@2 hi@@3 ar_1@@3))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_40838) (Heap1Heap T@PolymorphicMapType_40838) (i@@8 Int) (lo@@3 Int) (hi@@4 Int) (step@@2 Int) (vmin@@2 Int) (vmax_1@@2 Int) (ar_1@@4 T@Seq_50030) ) (!  (=> (and (=  (and (<= vmin@@2 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) vmax_1@@2) (and (<= lo@@3 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2) hi@@4))))  (and (<= vmin@@2 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) vmax_1@@2) (and (<= lo@@3 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2) hi@@4))))) (=> (and (<= vmin@@2 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) vmax_1@@2) (and (<= lo@@3 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2) hi@@4)))) (= (select (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| Heap2Heap) (|Seq#Index_29015| ar_1@@4 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) Ref__Integer_value) (select (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| Heap1Heap) (|Seq#Index_29015| ar_1@@4 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) Ref__Integer_value)))) (= (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)))
 :qid |stdinbpl.1125:15|
 :skolemid |96|
 :pattern ( (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_40838) (Mask@@7 T@PolymorphicMapType_40859) (i@@9 Int) (lo@@4 Int) (hi@@5 Int) (step@@3 Int) (vmin@@3 Int) (vmax_1@@3 Int) (ar_1@@5 T@Seq_50030) ) (!  (=> (and (state Heap@@10 Mask@@7) (< AssumeFunctionsAbove 2)) (=> (and (and (and (and (<= 0 lo@@4) (and (<= lo@@4 hi@@5) (and (<= hi@@5 step@@3) (> step@@3 0)))) (and (<= 0 vmin@@3) (and (<= vmin@@3 i@@9) (<= i@@9 vmax_1@@3)))) (<= vmax_1@@3 (|Seq#Length_29015| ar_1@@5))) (forall ((j@@6 Int) (k@@0 Int) ) (!  (=> (and (<= 0 j@@6) (and (< j@@6 (|Seq#Length_29015| ar_1@@5)) (and (<= 0 k@@0) (and (< k@@0 (|Seq#Length_29015| ar_1@@5)) (not (= j@@6 k@@0)))))) (not (= (|Seq#Index_29015| ar_1@@5 j@@6) (|Seq#Index_29015| ar_1@@5 k@@0))))
 :qid |stdinbpl.1107:195|
 :skolemid |93|
 :pattern ( (|Seq#Index_29015| ar_1@@5 j@@6) (|Seq#Index_29015| ar_1@@5 k@@0))
))) (= (sum_square Heap@@10 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5) (ite (< i@@9 vmax_1@@3) (+ (ite  (and (<= lo@@4 (mod i@@9 step@@3)) (< (mod i@@9 step@@3) hi@@5)) (select (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| Heap@@10) (|Seq#Index_29015| ar_1@@5 i@@9) Ref__Integer_value) 0) (|sum_square'| Heap@@10 (+ i@@9 1) lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5)) 0))))
 :qid |stdinbpl.1105:15|
 :skolemid |94|
 :pattern ( (state Heap@@10 Mask@@7) (sum_square Heap@@10 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_40838) (Heap1Heap@@0 T@PolymorphicMapType_40838) (i@@10 Int) (lo@@5 Int) (hi@@6 Int) (step@@4 Int) (vmin@@4 Int) (vmax_1@@4 Int) (ar_1@@6 T@Seq_50030) (v_2@@2 Int) ) (!  (=> (and (=  (and (<= vmin@@4 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2)) vmax_1@@4) (and (<= lo@@5 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2)) step@@4)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2)) step@@4) hi@@6))))  (and (<= vmin@@4 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2)) vmax_1@@4) (and (<= lo@@5 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2)) step@@4)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2)) step@@4) hi@@6))))) (=> (and (<= vmin@@4 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2)) vmax_1@@4) (and (<= lo@@5 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2)) step@@4)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2)) step@@4) hi@@6)))) (= (select (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| Heap2Heap@@0) (|Seq#Index_29015| ar_1@@6 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2))) Ref__Integer_value) (select (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| Heap1Heap@@0) (|Seq#Index_29015| ar_1@@6 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2))) Ref__Integer_value)))) (= (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2)))
 :qid |stdinbpl.1391:15|
 :skolemid |117|
 :pattern ( (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@11 T@PolymorphicMapType_40838) (ExhaleHeap@@1 T@PolymorphicMapType_40838) (Mask@@8 T@PolymorphicMapType_40859) (o_144 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@1 Mask@@8) (=> (select (|PolymorphicMapType_40838_28702_53#PolymorphicMapType_40838| Heap@@11) o_144 $allocated) (select (|PolymorphicMapType_40838_28702_53#PolymorphicMapType_40838| ExhaleHeap@@1) o_144 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@1 Mask@@8) (select (|PolymorphicMapType_40838_28702_53#PolymorphicMapType_40838| ExhaleHeap@@1) o_144 $allocated))
)))
(assert (forall ((p T@Field_28958_115466) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_40898_40898 p v_1 p w))
 :qid |stdinbpl.294:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_40898_40898 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_50030) (s1 T@Seq_50030) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_29015|)) (not (= s1 |Seq#Empty_29015|))) (<= (|Seq#Length_29015| s0) n@@13)) (< n@@13 (|Seq#Length_29015| (|Seq#Append_50030| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_29015| s0)) (|Seq#Length_29015| s0)) n@@13) (= (|Seq#Index_29015| (|Seq#Append_50030| s0 s1) n@@13) (|Seq#Index_29015| s1 (|Seq#Sub| n@@13 (|Seq#Length_29015| s0))))))
 :qid |stdinbpl.363:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_29015| (|Seq#Append_50030| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3683) (s1@@0 T@Seq_3683) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3683|)) (not (= s1@@0 |Seq#Empty_3683|))) (<= (|Seq#Length_3683| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3683| (|Seq#Append_3683| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3683| s0@@0)) (|Seq#Length_3683| s0@@0)) n@@14) (= (|Seq#Index_3683| (|Seq#Append_3683| s0@@0 s1@@0) n@@14) (|Seq#Index_3683| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3683| s0@@0))))))
 :qid |stdinbpl.363:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3683| (|Seq#Append_3683| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_28958_3805 Ref__Integer_value)))
(assert  (not (IsWandField_28958_3805 Ref__Integer_value)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_40838) (ExhaleHeap@@2 T@PolymorphicMapType_40838) (Mask@@9 T@PolymorphicMapType_40859) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@2 Mask@@9) (succHeap Heap@@12 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@2 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_40859) (o_2@@4 T@Ref) (f_4@@4 T@Field_28958_115599) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_40859_28958_119721#PolymorphicMapType_40859| Mask@@10) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_28958_120850 f_4@@4))) (not (IsWandField_28958_120866 f_4@@4))) (<= (select (|PolymorphicMapType_40859_28958_119721#PolymorphicMapType_40859| Mask@@10) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_40859_28958_119721#PolymorphicMapType_40859| Mask@@10) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_40859) (o_2@@5 T@Ref) (f_4@@5 T@Field_28958_115466) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_40859_28958_115466#PolymorphicMapType_40859| Mask@@11) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_28958_115557 f_4@@5))) (not (IsWandField_28958_117304 f_4@@5))) (<= (select (|PolymorphicMapType_40859_28958_115466#PolymorphicMapType_40859| Mask@@11) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_40859_28958_115466#PolymorphicMapType_40859| Mask@@11) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_40859) (o_2@@6 T@Ref) (f_4@@6 T@Field_40911_40912) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_40859_28958_40912#PolymorphicMapType_40859| Mask@@12) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_28958_40912 f_4@@6))) (not (IsWandField_28958_40912 f_4@@6))) (<= (select (|PolymorphicMapType_40859_28958_40912#PolymorphicMapType_40859| Mask@@12) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_40859_28958_40912#PolymorphicMapType_40859| Mask@@12) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_40859) (o_2@@7 T@Ref) (f_4@@7 T@Field_40898_53) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_40859_28958_53#PolymorphicMapType_40859| Mask@@13) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_28958_53 f_4@@7))) (not (IsWandField_28958_53 f_4@@7))) (<= (select (|PolymorphicMapType_40859_28958_53#PolymorphicMapType_40859| Mask@@13) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_40859_28958_53#PolymorphicMapType_40859| Mask@@13) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_40859) (o_2@@8 T@Ref) (f_4@@8 T@Field_46984_3805) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| Mask@@14) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_28958_3805 f_4@@8))) (not (IsWandField_28958_3805 f_4@@8))) (<= (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| Mask@@14) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| Mask@@14) o_2@@8 f_4@@8))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_40838) (Mask@@15 T@PolymorphicMapType_40859) (i@@11 Int) (hi@@7 Int) (ar_1@@7 T@Seq_3683) ) (!  (=> (state Heap@@13 Mask@@15) (= (|sum_list'| Heap@@13 i@@11 hi@@7 ar_1@@7) (|sum_list#frame| EmptyFrame i@@11 hi@@7 ar_1@@7)))
 :qid |stdinbpl.792:15|
 :skolemid |69|
 :pattern ( (state Heap@@13 Mask@@15) (|sum_list'| Heap@@13 i@@11 hi@@7 ar_1@@7))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_40859) (o_2@@9 T@Ref) (f_4@@9 T@Field_28958_115599) ) (! (= (HasDirectPerm_28958_121304 Mask@@16 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_40859_28958_119721#PolymorphicMapType_40859| Mask@@16) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_28958_121304 Mask@@16 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_40859) (o_2@@10 T@Ref) (f_4@@10 T@Field_28958_115466) ) (! (= (HasDirectPerm_28958_115530 Mask@@17 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_40859_28958_115466#PolymorphicMapType_40859| Mask@@17) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_28958_115530 Mask@@17 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_40859) (o_2@@11 T@Ref) (f_4@@11 T@Field_40911_40912) ) (! (= (HasDirectPerm_28958_40912 Mask@@18 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_40859_28958_40912#PolymorphicMapType_40859| Mask@@18) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_28958_40912 Mask@@18 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_40859) (o_2@@12 T@Ref) (f_4@@12 T@Field_40898_53) ) (! (= (HasDirectPerm_28958_53 Mask@@19 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_40859_28958_53#PolymorphicMapType_40859| Mask@@19) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_28958_53 Mask@@19 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_40859) (o_2@@13 T@Ref) (f_4@@13 T@Field_46984_3805) ) (! (= (HasDirectPerm_28958_3805 Mask@@20 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| Mask@@20) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_28958_3805 Mask@@20 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_40838) (N0@@2 Int) (N1@@2 Int) (i0_3@@2 Int) (i1_9@@2 Int) ) (! (dummyFunction_4485 (|Ref__multidim_index_2#triggerStateless| N0@@2 N1@@2 i0_3@@2 i1_9@@2))
 :qid |stdinbpl.682:15|
 :skolemid |59|
 :pattern ( (|Ref__multidim_index_2'| Heap@@14 N0@@2 N1@@2 i0_3@@2 i1_9@@2))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_40838) (i@@12 Int) (lo@@6 Int) (hi@@8 Int) (ar_1@@8 T@Seq_50030) ) (! (dummyFunction_4485 (|sum_array#triggerStateless| i@@12 lo@@6 hi@@8 ar_1@@8))
 :qid |stdinbpl.864:15|
 :skolemid |71|
 :pattern ( (|sum_array'| Heap@@15 i@@12 lo@@6 hi@@8 ar_1@@8))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_40838) (i@@13 Int) (hi@@9 Int) (ar_1@@9 T@Seq_3683) (v_2@@3 Int) ) (! (dummyFunction_4485 (|count_list#triggerStateless| i@@13 hi@@9 ar_1@@9 v_2@@3))
 :qid |stdinbpl.1631:15|
 :skolemid |134|
 :pattern ( (|count_list'| Heap@@16 i@@13 hi@@9 ar_1@@9 v_2@@3))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_40838) (i@@14 Int) (hi@@10 Int) (ar_1@@10 T@Seq_50030) (v_2@@4 Int) ) (! (dummyFunction_4485 (|count_array#triggerStateless| i@@14 hi@@10 ar_1@@10 v_2@@4))
 :qid |stdinbpl.1716:15|
 :skolemid |138|
 :pattern ( (|count_array'| Heap@@17 i@@14 hi@@10 ar_1@@10 v_2@@4))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_40838) (ExhaleHeap@@3 T@PolymorphicMapType_40838) (Mask@@21 T@PolymorphicMapType_40859) (pm_f_52@@1 T@Field_28958_115466) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@3 Mask@@21) (=> (and (HasDirectPerm_28958_115530 Mask@@21 null pm_f_52@@1) (IsPredicateField_28958_115557 pm_f_52@@1)) (and (and (and (and (forall ((o2_53 T@Ref) (f_75 T@Field_40898_53) ) (!  (=> (select (|PolymorphicMapType_41387_40898_53#PolymorphicMapType_41387| (select (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| Heap@@18) null (PredicateMaskField_28958 pm_f_52@@1))) o2_53 f_75) (= (select (|PolymorphicMapType_40838_28702_53#PolymorphicMapType_40838| Heap@@18) o2_53 f_75) (select (|PolymorphicMapType_40838_28702_53#PolymorphicMapType_40838| ExhaleHeap@@3) o2_53 f_75)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40838_28702_53#PolymorphicMapType_40838| ExhaleHeap@@3) o2_53 f_75))
)) (forall ((o2_53@@0 T@Ref) (f_75@@0 T@Field_40911_40912) ) (!  (=> (select (|PolymorphicMapType_41387_40898_40912#PolymorphicMapType_41387| (select (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| Heap@@18) null (PredicateMaskField_28958 pm_f_52@@1))) o2_53@@0 f_75@@0) (= (select (|PolymorphicMapType_40838_28705_28706#PolymorphicMapType_40838| Heap@@18) o2_53@@0 f_75@@0) (select (|PolymorphicMapType_40838_28705_28706#PolymorphicMapType_40838| ExhaleHeap@@3) o2_53@@0 f_75@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40838_28705_28706#PolymorphicMapType_40838| ExhaleHeap@@3) o2_53@@0 f_75@@0))
))) (forall ((o2_53@@1 T@Ref) (f_75@@1 T@Field_46984_3805) ) (!  (=> (select (|PolymorphicMapType_41387_40898_3805#PolymorphicMapType_41387| (select (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| Heap@@18) null (PredicateMaskField_28958 pm_f_52@@1))) o2_53@@1 f_75@@1) (= (select (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| Heap@@18) o2_53@@1 f_75@@1) (select (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| ExhaleHeap@@3) o2_53@@1 f_75@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| ExhaleHeap@@3) o2_53@@1 f_75@@1))
))) (forall ((o2_53@@2 T@Ref) (f_75@@2 T@Field_28958_115466) ) (!  (=> (select (|PolymorphicMapType_41387_40898_115466#PolymorphicMapType_41387| (select (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| Heap@@18) null (PredicateMaskField_28958 pm_f_52@@1))) o2_53@@2 f_75@@2) (= (select (|PolymorphicMapType_40838_40898_115466#PolymorphicMapType_40838| Heap@@18) o2_53@@2 f_75@@2) (select (|PolymorphicMapType_40838_40898_115466#PolymorphicMapType_40838| ExhaleHeap@@3) o2_53@@2 f_75@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40838_40898_115466#PolymorphicMapType_40838| ExhaleHeap@@3) o2_53@@2 f_75@@2))
))) (forall ((o2_53@@3 T@Ref) (f_75@@3 T@Field_28958_115599) ) (!  (=> (select (|PolymorphicMapType_41387_40898_116777#PolymorphicMapType_41387| (select (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| Heap@@18) null (PredicateMaskField_28958 pm_f_52@@1))) o2_53@@3 f_75@@3) (= (select (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| Heap@@18) o2_53@@3 f_75@@3) (select (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| ExhaleHeap@@3) o2_53@@3 f_75@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| ExhaleHeap@@3) o2_53@@3 f_75@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@3 Mask@@21) (IsPredicateField_28958_115557 pm_f_52@@1))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_40838) (ExhaleHeap@@4 T@PolymorphicMapType_40838) (Mask@@22 T@PolymorphicMapType_40859) (pm_f_52@@2 T@Field_28958_115466) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@4 Mask@@22) (=> (and (HasDirectPerm_28958_115530 Mask@@22 null pm_f_52@@2) (IsWandField_28958_117304 pm_f_52@@2)) (and (and (and (and (forall ((o2_53@@4 T@Ref) (f_75@@4 T@Field_40898_53) ) (!  (=> (select (|PolymorphicMapType_41387_40898_53#PolymorphicMapType_41387| (select (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| Heap@@19) null (WandMaskField_28958 pm_f_52@@2))) o2_53@@4 f_75@@4) (= (select (|PolymorphicMapType_40838_28702_53#PolymorphicMapType_40838| Heap@@19) o2_53@@4 f_75@@4) (select (|PolymorphicMapType_40838_28702_53#PolymorphicMapType_40838| ExhaleHeap@@4) o2_53@@4 f_75@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40838_28702_53#PolymorphicMapType_40838| ExhaleHeap@@4) o2_53@@4 f_75@@4))
)) (forall ((o2_53@@5 T@Ref) (f_75@@5 T@Field_40911_40912) ) (!  (=> (select (|PolymorphicMapType_41387_40898_40912#PolymorphicMapType_41387| (select (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| Heap@@19) null (WandMaskField_28958 pm_f_52@@2))) o2_53@@5 f_75@@5) (= (select (|PolymorphicMapType_40838_28705_28706#PolymorphicMapType_40838| Heap@@19) o2_53@@5 f_75@@5) (select (|PolymorphicMapType_40838_28705_28706#PolymorphicMapType_40838| ExhaleHeap@@4) o2_53@@5 f_75@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40838_28705_28706#PolymorphicMapType_40838| ExhaleHeap@@4) o2_53@@5 f_75@@5))
))) (forall ((o2_53@@6 T@Ref) (f_75@@6 T@Field_46984_3805) ) (!  (=> (select (|PolymorphicMapType_41387_40898_3805#PolymorphicMapType_41387| (select (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| Heap@@19) null (WandMaskField_28958 pm_f_52@@2))) o2_53@@6 f_75@@6) (= (select (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| Heap@@19) o2_53@@6 f_75@@6) (select (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| ExhaleHeap@@4) o2_53@@6 f_75@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| ExhaleHeap@@4) o2_53@@6 f_75@@6))
))) (forall ((o2_53@@7 T@Ref) (f_75@@7 T@Field_28958_115466) ) (!  (=> (select (|PolymorphicMapType_41387_40898_115466#PolymorphicMapType_41387| (select (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| Heap@@19) null (WandMaskField_28958 pm_f_52@@2))) o2_53@@7 f_75@@7) (= (select (|PolymorphicMapType_40838_40898_115466#PolymorphicMapType_40838| Heap@@19) o2_53@@7 f_75@@7) (select (|PolymorphicMapType_40838_40898_115466#PolymorphicMapType_40838| ExhaleHeap@@4) o2_53@@7 f_75@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40838_40898_115466#PolymorphicMapType_40838| ExhaleHeap@@4) o2_53@@7 f_75@@7))
))) (forall ((o2_53@@8 T@Ref) (f_75@@8 T@Field_28958_115599) ) (!  (=> (select (|PolymorphicMapType_41387_40898_116777#PolymorphicMapType_41387| (select (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| Heap@@19) null (WandMaskField_28958 pm_f_52@@2))) o2_53@@8 f_75@@8) (= (select (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| Heap@@19) o2_53@@8 f_75@@8) (select (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| ExhaleHeap@@4) o2_53@@8 f_75@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| ExhaleHeap@@4) o2_53@@8 f_75@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@4 Mask@@22) (IsWandField_28958_117304 pm_f_52@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.282:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3683| (|Seq#Range| q@min@@0 q@max@@0) j@@7) (+ q@min@@0 j@@7)))
 :qid |stdinbpl.655:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3683| (|Seq#Range| q@min@@0 q@max@@0) j@@7))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_40838) (ExhaleHeap@@5 T@PolymorphicMapType_40838) (Mask@@23 T@PolymorphicMapType_40859) (o_144@@0 T@Ref) (f_75@@9 T@Field_28958_115599) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@5 Mask@@23) (=> (HasDirectPerm_28958_121304 Mask@@23 o_144@@0 f_75@@9) (= (select (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| Heap@@20) o_144@@0 f_75@@9) (select (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| ExhaleHeap@@5) o_144@@0 f_75@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@5 Mask@@23) (select (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| ExhaleHeap@@5) o_144@@0 f_75@@9))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_40838) (ExhaleHeap@@6 T@PolymorphicMapType_40838) (Mask@@24 T@PolymorphicMapType_40859) (o_144@@1 T@Ref) (f_75@@10 T@Field_28958_115466) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@6 Mask@@24) (=> (HasDirectPerm_28958_115530 Mask@@24 o_144@@1 f_75@@10) (= (select (|PolymorphicMapType_40838_40898_115466#PolymorphicMapType_40838| Heap@@21) o_144@@1 f_75@@10) (select (|PolymorphicMapType_40838_40898_115466#PolymorphicMapType_40838| ExhaleHeap@@6) o_144@@1 f_75@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@6 Mask@@24) (select (|PolymorphicMapType_40838_40898_115466#PolymorphicMapType_40838| ExhaleHeap@@6) o_144@@1 f_75@@10))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_40838) (ExhaleHeap@@7 T@PolymorphicMapType_40838) (Mask@@25 T@PolymorphicMapType_40859) (o_144@@2 T@Ref) (f_75@@11 T@Field_40911_40912) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@7 Mask@@25) (=> (HasDirectPerm_28958_40912 Mask@@25 o_144@@2 f_75@@11) (= (select (|PolymorphicMapType_40838_28705_28706#PolymorphicMapType_40838| Heap@@22) o_144@@2 f_75@@11) (select (|PolymorphicMapType_40838_28705_28706#PolymorphicMapType_40838| ExhaleHeap@@7) o_144@@2 f_75@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@7 Mask@@25) (select (|PolymorphicMapType_40838_28705_28706#PolymorphicMapType_40838| ExhaleHeap@@7) o_144@@2 f_75@@11))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_40838) (ExhaleHeap@@8 T@PolymorphicMapType_40838) (Mask@@26 T@PolymorphicMapType_40859) (o_144@@3 T@Ref) (f_75@@12 T@Field_40898_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@8 Mask@@26) (=> (HasDirectPerm_28958_53 Mask@@26 o_144@@3 f_75@@12) (= (select (|PolymorphicMapType_40838_28702_53#PolymorphicMapType_40838| Heap@@23) o_144@@3 f_75@@12) (select (|PolymorphicMapType_40838_28702_53#PolymorphicMapType_40838| ExhaleHeap@@8) o_144@@3 f_75@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@8 Mask@@26) (select (|PolymorphicMapType_40838_28702_53#PolymorphicMapType_40838| ExhaleHeap@@8) o_144@@3 f_75@@12))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_40838) (ExhaleHeap@@9 T@PolymorphicMapType_40838) (Mask@@27 T@PolymorphicMapType_40859) (o_144@@4 T@Ref) (f_75@@13 T@Field_46984_3805) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@9 Mask@@27) (=> (HasDirectPerm_28958_3805 Mask@@27 o_144@@4 f_75@@13) (= (select (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| Heap@@24) o_144@@4 f_75@@13) (select (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| ExhaleHeap@@9) o_144@@4 f_75@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@9 Mask@@27) (select (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| ExhaleHeap@@9) o_144@@4 f_75@@13))
)))
(assert (forall ((s0@@1 T@Seq_50030) (s1@@1 T@Seq_50030) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_29015|)) (not (= s1@@1 |Seq#Empty_29015|))) (= (|Seq#Length_29015| (|Seq#Append_50030| s0@@1 s1@@1)) (+ (|Seq#Length_29015| s0@@1) (|Seq#Length_29015| s1@@1))))
 :qid |stdinbpl.332:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_29015| (|Seq#Append_50030| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3683) (s1@@2 T@Seq_3683) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3683|)) (not (= s1@@2 |Seq#Empty_3683|))) (= (|Seq#Length_3683| (|Seq#Append_3683| s0@@2 s1@@2)) (+ (|Seq#Length_3683| s0@@2) (|Seq#Length_3683| s1@@2))))
 :qid |stdinbpl.332:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3683| (|Seq#Append_3683| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_28958_115599) ) (! (= (select (|PolymorphicMapType_40859_28958_119721#PolymorphicMapType_40859| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_40859_28958_119721#PolymorphicMapType_40859| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_28958_115466) ) (! (= (select (|PolymorphicMapType_40859_28958_115466#PolymorphicMapType_40859| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_40859_28958_115466#PolymorphicMapType_40859| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_40911_40912) ) (! (= (select (|PolymorphicMapType_40859_28958_40912#PolymorphicMapType_40859| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_40859_28958_40912#PolymorphicMapType_40859| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_40898_53) ) (! (= (select (|PolymorphicMapType_40859_28958_53#PolymorphicMapType_40859| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_40859_28958_53#PolymorphicMapType_40859| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_46984_3805) ) (! (= (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_40838) (Mask@@28 T@PolymorphicMapType_40859) (i@@15 Int) (hi@@11 Int) (ar_1@@11 T@Seq_3683) (v_2@@5 Int) ) (!  (=> (and (state Heap@@25 Mask@@28) (< AssumeFunctionsAbove 6)) (=> (and (and (<= 0 i@@15) (<= i@@15 hi@@11)) (<= hi@@11 (|Seq#Length_3683| ar_1@@11))) (= (count_list Heap@@25 i@@15 hi@@11 ar_1@@11 v_2@@5) (ite (< i@@15 hi@@11) (+ (ite (= (|Seq#Index_3683| ar_1@@11 i@@15) v_2@@5) 1 0) (|count_list'| Heap@@25 (+ i@@15 1) hi@@11 ar_1@@11 v_2@@5)) 0))))
 :qid |stdinbpl.1637:15|
 :skolemid |135|
 :pattern ( (state Heap@@25 Mask@@28) (count_list Heap@@25 i@@15 hi@@11 ar_1@@11 v_2@@5))
)))
(assert (forall ((s@@15 T@Seq_50030) (t@@1 T@Seq_50030) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_29015| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_29015| s@@15)) (|Seq#Length_29015| s@@15)) n@@15) (= (|Seq#Drop_29015| (|Seq#Append_50030| s@@15 t@@1) n@@15) (|Seq#Drop_29015| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_29015| s@@15))))))
 :qid |stdinbpl.489:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_29015| (|Seq#Append_50030| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3683) (t@@2 T@Seq_3683) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3683| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3683| s@@16)) (|Seq#Length_3683| s@@16)) n@@16) (= (|Seq#Drop_3683| (|Seq#Append_3683| s@@16 t@@2) n@@16) (|Seq#Drop_3683| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3683| s@@16))))))
 :qid |stdinbpl.489:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3683| (|Seq#Append_3683| s@@16 t@@2) n@@16))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_40838) (N0@@3 Int) (N1@@3 Int) (i0_3@@3 Int) (i1_9@@3 Int) ) (!  (and (= (Ref__multidim_index_2 Heap@@26 N0@@3 N1@@3 i0_3@@3 i1_9@@3) (|Ref__multidim_index_2'| Heap@@26 N0@@3 N1@@3 i0_3@@3 i1_9@@3)) (dummyFunction_4485 (|Ref__multidim_index_2#triggerStateless| N0@@3 N1@@3 i0_3@@3 i1_9@@3)))
 :qid |stdinbpl.678:15|
 :skolemid |58|
 :pattern ( (Ref__multidim_index_2 Heap@@26 N0@@3 N1@@3 i0_3@@3 i1_9@@3))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_40838) (i@@16 Int) (lo@@7 Int) (hi@@12 Int) (ar_1@@12 T@Seq_50030) ) (!  (and (= (sum_array Heap@@27 i@@16 lo@@7 hi@@12 ar_1@@12) (|sum_array'| Heap@@27 i@@16 lo@@7 hi@@12 ar_1@@12)) (dummyFunction_4485 (|sum_array#triggerStateless| i@@16 lo@@7 hi@@12 ar_1@@12)))
 :qid |stdinbpl.860:15|
 :skolemid |70|
 :pattern ( (sum_array Heap@@27 i@@16 lo@@7 hi@@12 ar_1@@12))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_40838) (i@@17 Int) (hi@@13 Int) (ar_1@@13 T@Seq_3683) (v_2@@6 Int) ) (!  (and (= (count_list Heap@@28 i@@17 hi@@13 ar_1@@13 v_2@@6) (|count_list'| Heap@@28 i@@17 hi@@13 ar_1@@13 v_2@@6)) (dummyFunction_4485 (|count_list#triggerStateless| i@@17 hi@@13 ar_1@@13 v_2@@6)))
 :qid |stdinbpl.1627:15|
 :skolemid |133|
 :pattern ( (count_list Heap@@28 i@@17 hi@@13 ar_1@@13 v_2@@6))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_40838) (i@@18 Int) (hi@@14 Int) (ar_1@@14 T@Seq_50030) (v_2@@7 Int) ) (!  (and (= (count_array Heap@@29 i@@18 hi@@14 ar_1@@14 v_2@@7) (|count_array'| Heap@@29 i@@18 hi@@14 ar_1@@14 v_2@@7)) (dummyFunction_4485 (|count_array#triggerStateless| i@@18 hi@@14 ar_1@@14 v_2@@7)))
 :qid |stdinbpl.1712:15|
 :skolemid |137|
 :pattern ( (count_array Heap@@29 i@@18 hi@@14 ar_1@@14 v_2@@7))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_40859) (SummandMask1 T@PolymorphicMapType_40859) (SummandMask2 T@PolymorphicMapType_40859) (o_2@@19 T@Ref) (f_4@@19 T@Field_28958_115599) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_40859_28958_119721#PolymorphicMapType_40859| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_40859_28958_119721#PolymorphicMapType_40859| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_40859_28958_119721#PolymorphicMapType_40859| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_40859_28958_119721#PolymorphicMapType_40859| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_40859_28958_119721#PolymorphicMapType_40859| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_40859_28958_119721#PolymorphicMapType_40859| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_40859) (SummandMask1@@0 T@PolymorphicMapType_40859) (SummandMask2@@0 T@PolymorphicMapType_40859) (o_2@@20 T@Ref) (f_4@@20 T@Field_28958_115466) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_40859_28958_115466#PolymorphicMapType_40859| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_40859_28958_115466#PolymorphicMapType_40859| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_40859_28958_115466#PolymorphicMapType_40859| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_40859_28958_115466#PolymorphicMapType_40859| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_40859_28958_115466#PolymorphicMapType_40859| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_40859_28958_115466#PolymorphicMapType_40859| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_40859) (SummandMask1@@1 T@PolymorphicMapType_40859) (SummandMask2@@1 T@PolymorphicMapType_40859) (o_2@@21 T@Ref) (f_4@@21 T@Field_40911_40912) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_40859_28958_40912#PolymorphicMapType_40859| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_40859_28958_40912#PolymorphicMapType_40859| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_40859_28958_40912#PolymorphicMapType_40859| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_40859_28958_40912#PolymorphicMapType_40859| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_40859_28958_40912#PolymorphicMapType_40859| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_40859_28958_40912#PolymorphicMapType_40859| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_40859) (SummandMask1@@2 T@PolymorphicMapType_40859) (SummandMask2@@2 T@PolymorphicMapType_40859) (o_2@@22 T@Ref) (f_4@@22 T@Field_40898_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_40859_28958_53#PolymorphicMapType_40859| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_40859_28958_53#PolymorphicMapType_40859| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_40859_28958_53#PolymorphicMapType_40859| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_40859_28958_53#PolymorphicMapType_40859| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_40859_28958_53#PolymorphicMapType_40859| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_40859_28958_53#PolymorphicMapType_40859| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_40859) (SummandMask1@@3 T@PolymorphicMapType_40859) (SummandMask2@@3 T@PolymorphicMapType_40859) (o_2@@23 T@Ref) (f_4@@23 T@Field_46984_3805) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_40838) (i@@19 Int) (lo@@8 Int) (hi@@15 Int) (step@@5 Int) (vmin@@5 Int) (vmax_1@@5 Int) (ar_1@@15 T@Seq_50030) ) (!  (and (= (sum_square Heap@@30 i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax_1@@5 ar_1@@15) (|sum_square'| Heap@@30 i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax_1@@5 ar_1@@15)) (dummyFunction_4485 (|sum_square#triggerStateless| i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax_1@@5 ar_1@@15)))
 :qid |stdinbpl.1095:15|
 :skolemid |91|
 :pattern ( (sum_square Heap@@30 i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax_1@@5 ar_1@@15))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_40838) (Mask@@29 T@PolymorphicMapType_40859) (N0@@4 Int) (N1@@4 Int) (i0_3@@4 Int) (i1_9@@4 Int) ) (!  (=> (state Heap@@31 Mask@@29) (= (|Ref__multidim_index_2'| Heap@@31 N0@@4 N1@@4 i0_3@@4 i1_9@@4) (|Ref__multidim_index_2#frame| EmptyFrame N0@@4 N1@@4 i0_3@@4 i1_9@@4)))
 :qid |stdinbpl.689:15|
 :skolemid |60|
 :pattern ( (state Heap@@31 Mask@@29) (|Ref__multidim_index_2'| Heap@@31 N0@@4 N1@@4 i0_3@@4 i1_9@@4))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_40838) (Mask@@30 T@PolymorphicMapType_40859) (i@@20 Int) (hi@@16 Int) (ar_1@@16 T@Seq_3683) (v_2@@8 Int) ) (!  (=> (state Heap@@32 Mask@@30) (= (|count_list'| Heap@@32 i@@20 hi@@16 ar_1@@16 v_2@@8) (|count_list#frame| EmptyFrame i@@20 hi@@16 ar_1@@16 v_2@@8)))
 :qid |stdinbpl.1644:15|
 :skolemid |136|
 :pattern ( (state Heap@@32 Mask@@30) (|count_list'| Heap@@32 i@@20 hi@@16 ar_1@@16 v_2@@8))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3683| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3683| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.654:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3683| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_50030) (b T@Seq_50030) ) (!  (=> (|Seq#Equal_50030| a b) (= a b))
 :qid |stdinbpl.627:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_50030| a b))
)))
(assert (forall ((a@@0 T@Seq_3683) (b@@0 T@Seq_3683) ) (!  (=> (|Seq#Equal_3683| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.627:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3683| a@@0 b@@0))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_40838) (i@@21 Int) (hi@@17 Int) (ar_1@@17 T@Seq_3683) ) (!  (and (= (sum_list Heap@@33 i@@21 hi@@17 ar_1@@17) (|sum_list'| Heap@@33 i@@21 hi@@17 ar_1@@17)) (dummyFunction_4485 (|sum_list#triggerStateless| i@@21 hi@@17 ar_1@@17)))
 :qid |stdinbpl.775:15|
 :skolemid |66|
 :pattern ( (sum_list Heap@@33 i@@21 hi@@17 ar_1@@17))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_40838) (Mask@@31 T@PolymorphicMapType_40859) (N0@@5 Int) (N1@@5 Int) (i0_3@@5 Int) (i1_9@@5 Int) ) (!  (=> (and (state Heap@@34 Mask@@31) (or (< AssumeFunctionsAbove 1) (|Ref__multidim_index_2#trigger| EmptyFrame N0@@5 N1@@5 i0_3@@5 i1_9@@5))) (=> (and (and (and (and (and (<= 0 i0_3@@5) (< i0_3@@5 N0@@5)) (<= 0 N0@@5)) (<= 0 i1_9@@5)) (< i1_9@@5 N1@@5)) (<= 0 N1@@5)) (< (|Ref__multidim_index_2'| Heap@@34 N0@@5 N1@@5 i0_3@@5 i1_9@@5) (* N0@@5 N1@@5))))
 :qid |stdinbpl.699:15|
 :skolemid |62|
 :pattern ( (state Heap@@34 Mask@@31) (|Ref__multidim_index_2'| Heap@@34 N0@@5 N1@@5 i0_3@@5 i1_9@@5))
)))
(assert (forall ((s@@17 T@Seq_50030) (i@@22 Int) ) (!  (=> (and (<= 0 i@@22) (< i@@22 (|Seq#Length_29015| s@@17))) (|Seq#ContainsTrigger_29015| s@@17 (|Seq#Index_29015| s@@17 i@@22)))
 :qid |stdinbpl.520:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_29015| s@@17 i@@22))
)))
(assert (forall ((s@@18 T@Seq_3683) (i@@23 Int) ) (!  (=> (and (<= 0 i@@23) (< i@@23 (|Seq#Length_3683| s@@18))) (|Seq#ContainsTrigger_3683| s@@18 (|Seq#Index_3683| s@@18 i@@23)))
 :qid |stdinbpl.520:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3683| s@@18 i@@23))
)))
(assert (forall ((s0@@3 T@Seq_50030) (s1@@3 T@Seq_50030) ) (!  (and (=> (= s0@@3 |Seq#Empty_29015|) (= (|Seq#Append_50030| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_29015|) (= (|Seq#Append_50030| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.338:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_50030| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3683) (s1@@4 T@Seq_3683) ) (!  (and (=> (= s0@@4 |Seq#Empty_3683|) (= (|Seq#Append_3683| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3683|) (= (|Seq#Append_3683| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.338:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3683| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_29015| (|Seq#Singleton_29015| t@@3) 0) t@@3)
 :qid |stdinbpl.342:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_29015| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3683| (|Seq#Singleton_3683| t@@4) 0) t@@4)
 :qid |stdinbpl.342:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3683| t@@4))
)))
(assert (forall ((s@@19 T@Seq_50030) ) (! (<= 0 (|Seq#Length_29015| s@@19))
 :qid |stdinbpl.321:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_29015| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3683) ) (! (<= 0 (|Seq#Length_3683| s@@20))
 :qid |stdinbpl.321:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3683| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_50030) (s1@@5 T@Seq_50030) ) (!  (=> (|Seq#Equal_50030| s0@@5 s1@@5) (and (= (|Seq#Length_29015| s0@@5) (|Seq#Length_29015| s1@@5)) (forall ((j@@8 Int) ) (!  (=> (and (<= 0 j@@8) (< j@@8 (|Seq#Length_29015| s0@@5))) (= (|Seq#Index_29015| s0@@5 j@@8) (|Seq#Index_29015| s1@@5 j@@8)))
 :qid |stdinbpl.617:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_29015| s0@@5 j@@8))
 :pattern ( (|Seq#Index_29015| s1@@5 j@@8))
))))
 :qid |stdinbpl.614:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_50030| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3683) (s1@@6 T@Seq_3683) ) (!  (=> (|Seq#Equal_3683| s0@@6 s1@@6) (and (= (|Seq#Length_3683| s0@@6) (|Seq#Length_3683| s1@@6)) (forall ((j@@9 Int) ) (!  (=> (and (<= 0 j@@9) (< j@@9 (|Seq#Length_3683| s0@@6))) (= (|Seq#Index_3683| s0@@6 j@@9) (|Seq#Index_3683| s1@@6 j@@9)))
 :qid |stdinbpl.617:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3683| s0@@6 j@@9))
 :pattern ( (|Seq#Index_3683| s1@@6 j@@9))
))))
 :qid |stdinbpl.614:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3683| s0@@6 s1@@6))
)))
(assert (forall ((Heap2Heap@@1 T@PolymorphicMapType_40838) (Heap1Heap@@1 T@PolymorphicMapType_40838) (i@@24 Int) (hi@@18 Int) (ar_1@@18 T@Seq_50030) (v_2@@9 Int) ) (!  (=> (and (=  (and (<= 0 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9))) (< (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9)) hi@@18))  (and (<= 0 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9))) (< (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9)) hi@@18))) (=> (and (<= 0 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9))) (< (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9)) hi@@18)) (= (select (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| Heap2Heap@@1) (|Seq#Index_29015| ar_1@@18 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9))) Ref__Integer_value) (select (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| Heap1Heap@@1) (|Seq#Index_29015| ar_1@@18 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9))) Ref__Integer_value)))) (= (|count_array#condqp4| Heap2Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9)))
 :qid |stdinbpl.1742:15|
 :skolemid |142|
 :pattern ( (|count_array#condqp4| Heap2Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9) (succHeapTrans Heap2Heap@@1 Heap1Heap@@1))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_29015| (|Seq#Singleton_29015| t@@5)) 1)
 :qid |stdinbpl.329:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_29015| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3683| (|Seq#Singleton_3683| t@@6)) 1)
 :qid |stdinbpl.329:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3683| t@@6))
)))
(assert (forall ((Heap2Heap@@2 T@PolymorphicMapType_40838) (Heap1Heap@@2 T@PolymorphicMapType_40838) (i@@25 Int) (lo@@9 Int) (hi@@19 Int) (ar_1@@19 T@Seq_50030) ) (!  (=> (and (=  (and (<= lo@@9 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19))) (< (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19)) hi@@19))  (and (<= lo@@9 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19))) (< (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19)) hi@@19))) (=> (and (<= lo@@9 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19))) (< (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19)) hi@@19)) (= (select (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| Heap2Heap@@2) (|Seq#Index_29015| ar_1@@19 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19))) Ref__Integer_value) (select (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| Heap1Heap@@2) (|Seq#Index_29015| ar_1@@19 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19))) Ref__Integer_value)))) (= (|sum_array#condqp1| Heap2Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19)))
 :qid |stdinbpl.890:15|
 :skolemid |75|
 :pattern ( (|sum_array#condqp1| Heap2Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19) (succHeapTrans Heap2Heap@@2 Heap1Heap@@2))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_40838) (Mask@@32 T@PolymorphicMapType_40859) (i@@26 Int) (lo@@10 Int) (hi@@20 Int) (step@@6 Int) (vmin@@6 Int) (vmax_1@@6 Int) (ar_1@@20 T@Seq_50030) (v_2@@10 Int) ) (!  (=> (and (state Heap@@35 Mask@@32) (< AssumeFunctionsAbove 0)) (=> (and (and (and (and (<= 0 lo@@10) (and (<= lo@@10 hi@@20) (and (<= hi@@20 step@@6) (> step@@6 0)))) (and (<= 0 vmin@@6) (and (<= vmin@@6 i@@26) (<= i@@26 vmax_1@@6)))) (<= vmax_1@@6 (|Seq#Length_29015| ar_1@@20))) (forall ((j@@10 Int) (k@@1 Int) ) (!  (=> (and (<= 0 j@@10) (and (< j@@10 vmax_1@@6) (and (<= 0 k@@1) (and (< k@@1 vmax_1@@6) (not (= j@@10 k@@1)))))) (not (= (|Seq#Index_29015| ar_1@@20 j@@10) (|Seq#Index_29015| ar_1@@20 k@@1))))
 :qid |stdinbpl.1373:195|
 :skolemid |114|
 :pattern ( (|Seq#Index_29015| ar_1@@20 j@@10) (|Seq#Index_29015| ar_1@@20 k@@1))
))) (= (count_square Heap@@35 i@@26 lo@@10 hi@@20 step@@6 vmin@@6 vmax_1@@6 ar_1@@20 v_2@@10) (ite (< i@@26 vmax_1@@6) (+ (ite  (and (<= lo@@10 (mod i@@26 step@@6)) (and (< (mod i@@26 step@@6) hi@@20) (= (select (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| Heap@@35) (|Seq#Index_29015| ar_1@@20 i@@26) Ref__Integer_value) v_2@@10))) 1 0) (|count_square'| Heap@@35 (+ i@@26 1) lo@@10 hi@@20 step@@6 vmin@@6 vmax_1@@6 ar_1@@20 v_2@@10)) 0))))
 :qid |stdinbpl.1371:15|
 :skolemid |115|
 :pattern ( (state Heap@@35 Mask@@32) (count_square Heap@@35 i@@26 lo@@10 hi@@20 step@@6 vmin@@6 vmax_1@@6 ar_1@@20 v_2@@10))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_40838) (Mask@@33 T@PolymorphicMapType_40859) (i@@27 Int) (hi@@21 Int) (ar_1@@21 T@Seq_3683) ) (!  (=> (and (state Heap@@36 Mask@@33) (< AssumeFunctionsAbove 5)) (=> (and (and (<= 0 i@@27) (<= i@@27 hi@@21)) (<= hi@@21 (|Seq#Length_3683| ar_1@@21))) (= (sum_list Heap@@36 i@@27 hi@@21 ar_1@@21) (ite (< i@@27 hi@@21) (+ (|Seq#Index_3683| ar_1@@21 i@@27) (|sum_list'| Heap@@36 (+ i@@27 1) hi@@21 ar_1@@21)) 0))))
 :qid |stdinbpl.785:15|
 :skolemid |68|
 :pattern ( (state Heap@@36 Mask@@33) (sum_list Heap@@36 i@@27 hi@@21 ar_1@@21))
)))
(assert (forall ((s@@21 T@Seq_50030) (t@@7 T@Seq_50030) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_29015| s@@21))) (= (|Seq#Take_29015| (|Seq#Append_50030| s@@21 t@@7) n@@17) (|Seq#Take_29015| s@@21 n@@17)))
 :qid |stdinbpl.471:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_29015| (|Seq#Append_50030| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3683) (t@@8 T@Seq_3683) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3683| s@@22))) (= (|Seq#Take_3683| (|Seq#Append_3683| s@@22 t@@8) n@@18) (|Seq#Take_3683| s@@22 n@@18)))
 :qid |stdinbpl.471:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3683| (|Seq#Append_3683| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_50030) (i@@28 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@28) (< i@@28 (|Seq#Length_29015| s@@23))) (= (|Seq#Length_29015| (|Seq#Update_29015| s@@23 i@@28 v@@2)) (|Seq#Length_29015| s@@23)))
 :qid |stdinbpl.370:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_29015| (|Seq#Update_29015| s@@23 i@@28 v@@2)))
 :pattern ( (|Seq#Length_29015| s@@23) (|Seq#Update_29015| s@@23 i@@28 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3683) (i@@29 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@29) (< i@@29 (|Seq#Length_3683| s@@24))) (= (|Seq#Length_3683| (|Seq#Update_3683| s@@24 i@@29 v@@3)) (|Seq#Length_3683| s@@24)))
 :qid |stdinbpl.370:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3683| (|Seq#Update_3683| s@@24 i@@29 v@@3)))
 :pattern ( (|Seq#Length_3683| s@@24) (|Seq#Update_3683| s@@24 i@@29 v@@3))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_40838) (o_143 T@Ref) (f_27 T@Field_28958_115466) (v@@4 T@FrameType) ) (! (succHeap Heap@@37 (PolymorphicMapType_40838 (|PolymorphicMapType_40838_28702_53#PolymorphicMapType_40838| Heap@@37) (|PolymorphicMapType_40838_28705_28706#PolymorphicMapType_40838| Heap@@37) (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| Heap@@37) (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| Heap@@37) (store (|PolymorphicMapType_40838_40898_115466#PolymorphicMapType_40838| Heap@@37) o_143 f_27 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40838 (|PolymorphicMapType_40838_28702_53#PolymorphicMapType_40838| Heap@@37) (|PolymorphicMapType_40838_28705_28706#PolymorphicMapType_40838| Heap@@37) (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| Heap@@37) (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| Heap@@37) (store (|PolymorphicMapType_40838_40898_115466#PolymorphicMapType_40838| Heap@@37) o_143 f_27 v@@4)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_40838) (o_143@@0 T@Ref) (f_27@@0 T@Field_28958_115599) (v@@5 T@PolymorphicMapType_41387) ) (! (succHeap Heap@@38 (PolymorphicMapType_40838 (|PolymorphicMapType_40838_28702_53#PolymorphicMapType_40838| Heap@@38) (|PolymorphicMapType_40838_28705_28706#PolymorphicMapType_40838| Heap@@38) (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| Heap@@38) (store (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| Heap@@38) o_143@@0 f_27@@0 v@@5) (|PolymorphicMapType_40838_40898_115466#PolymorphicMapType_40838| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40838 (|PolymorphicMapType_40838_28702_53#PolymorphicMapType_40838| Heap@@38) (|PolymorphicMapType_40838_28705_28706#PolymorphicMapType_40838| Heap@@38) (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| Heap@@38) (store (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| Heap@@38) o_143@@0 f_27@@0 v@@5) (|PolymorphicMapType_40838_40898_115466#PolymorphicMapType_40838| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_40838) (o_143@@1 T@Ref) (f_27@@1 T@Field_46984_3805) (v@@6 Int) ) (! (succHeap Heap@@39 (PolymorphicMapType_40838 (|PolymorphicMapType_40838_28702_53#PolymorphicMapType_40838| Heap@@39) (|PolymorphicMapType_40838_28705_28706#PolymorphicMapType_40838| Heap@@39) (store (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| Heap@@39) o_143@@1 f_27@@1 v@@6) (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| Heap@@39) (|PolymorphicMapType_40838_40898_115466#PolymorphicMapType_40838| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40838 (|PolymorphicMapType_40838_28702_53#PolymorphicMapType_40838| Heap@@39) (|PolymorphicMapType_40838_28705_28706#PolymorphicMapType_40838| Heap@@39) (store (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| Heap@@39) o_143@@1 f_27@@1 v@@6) (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| Heap@@39) (|PolymorphicMapType_40838_40898_115466#PolymorphicMapType_40838| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_40838) (o_143@@2 T@Ref) (f_27@@2 T@Field_40911_40912) (v@@7 T@Ref) ) (! (succHeap Heap@@40 (PolymorphicMapType_40838 (|PolymorphicMapType_40838_28702_53#PolymorphicMapType_40838| Heap@@40) (store (|PolymorphicMapType_40838_28705_28706#PolymorphicMapType_40838| Heap@@40) o_143@@2 f_27@@2 v@@7) (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| Heap@@40) (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| Heap@@40) (|PolymorphicMapType_40838_40898_115466#PolymorphicMapType_40838| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40838 (|PolymorphicMapType_40838_28702_53#PolymorphicMapType_40838| Heap@@40) (store (|PolymorphicMapType_40838_28705_28706#PolymorphicMapType_40838| Heap@@40) o_143@@2 f_27@@2 v@@7) (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| Heap@@40) (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| Heap@@40) (|PolymorphicMapType_40838_40898_115466#PolymorphicMapType_40838| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_40838) (o_143@@3 T@Ref) (f_27@@3 T@Field_40898_53) (v@@8 Bool) ) (! (succHeap Heap@@41 (PolymorphicMapType_40838 (store (|PolymorphicMapType_40838_28702_53#PolymorphicMapType_40838| Heap@@41) o_143@@3 f_27@@3 v@@8) (|PolymorphicMapType_40838_28705_28706#PolymorphicMapType_40838| Heap@@41) (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| Heap@@41) (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| Heap@@41) (|PolymorphicMapType_40838_40898_115466#PolymorphicMapType_40838| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40838 (store (|PolymorphicMapType_40838_28702_53#PolymorphicMapType_40838| Heap@@41) o_143@@3 f_27@@3 v@@8) (|PolymorphicMapType_40838_28705_28706#PolymorphicMapType_40838| Heap@@41) (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| Heap@@41) (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| Heap@@41) (|PolymorphicMapType_40838_40898_115466#PolymorphicMapType_40838| Heap@@41)))
)))
(assert (forall ((s@@25 T@Seq_50030) (t@@9 T@Seq_50030) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_29015| s@@25))) (= (|Seq#Drop_29015| (|Seq#Append_50030| s@@25 t@@9) n@@19) (|Seq#Append_50030| (|Seq#Drop_29015| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.485:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_29015| (|Seq#Append_50030| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3683) (t@@10 T@Seq_3683) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3683| s@@26))) (= (|Seq#Drop_3683| (|Seq#Append_3683| s@@26 t@@10) n@@20) (|Seq#Append_3683| (|Seq#Drop_3683| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.485:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3683| (|Seq#Append_3683| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_50030) (n@@21 Int) (i@@30 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@30)) (< i@@30 (|Seq#Length_29015| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@30 n@@21) n@@21) i@@30) (= (|Seq#Index_29015| (|Seq#Drop_29015| s@@27 n@@21) (|Seq#Sub| i@@30 n@@21)) (|Seq#Index_29015| s@@27 i@@30))))
 :qid |stdinbpl.421:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_29015| s@@27 n@@21) (|Seq#Index_29015| s@@27 i@@30))
)))
(assert (forall ((s@@28 T@Seq_3683) (n@@22 Int) (i@@31 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@31)) (< i@@31 (|Seq#Length_3683| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@31 n@@22) n@@22) i@@31) (= (|Seq#Index_3683| (|Seq#Drop_3683| s@@28 n@@22) (|Seq#Sub| i@@31 n@@22)) (|Seq#Index_3683| s@@28 i@@31))))
 :qid |stdinbpl.421:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3683| s@@28 n@@22) (|Seq#Index_3683| s@@28 i@@31))
)))
(assert (forall ((s0@@7 T@Seq_50030) (s1@@7 T@Seq_50030) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_29015|)) (not (= s1@@7 |Seq#Empty_29015|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_29015| s0@@7))) (= (|Seq#Index_29015| (|Seq#Append_50030| s0@@7 s1@@7) n@@23) (|Seq#Index_29015| s0@@7 n@@23)))
 :qid |stdinbpl.361:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_29015| (|Seq#Append_50030| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_29015| s0@@7 n@@23) (|Seq#Append_50030| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3683) (s1@@8 T@Seq_3683) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3683|)) (not (= s1@@8 |Seq#Empty_3683|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3683| s0@@8))) (= (|Seq#Index_3683| (|Seq#Append_3683| s0@@8 s1@@8) n@@24) (|Seq#Index_3683| s0@@8 n@@24)))
 :qid |stdinbpl.361:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3683| (|Seq#Append_3683| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3683| s0@@8 n@@24) (|Seq#Append_3683| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_50030) (s1@@9 T@Seq_50030) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_29015|)) (not (= s1@@9 |Seq#Empty_29015|))) (<= 0 m)) (< m (|Seq#Length_29015| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_29015| s0@@9)) (|Seq#Length_29015| s0@@9)) m) (= (|Seq#Index_29015| (|Seq#Append_50030| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_29015| s0@@9))) (|Seq#Index_29015| s1@@9 m))))
 :qid |stdinbpl.366:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_29015| s1@@9 m) (|Seq#Append_50030| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3683) (s1@@10 T@Seq_3683) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3683|)) (not (= s1@@10 |Seq#Empty_3683|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3683| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3683| s0@@10)) (|Seq#Length_3683| s0@@10)) m@@0) (= (|Seq#Index_3683| (|Seq#Append_3683| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3683| s0@@10))) (|Seq#Index_3683| s1@@10 m@@0))))
 :qid |stdinbpl.366:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3683| s1@@10 m@@0) (|Seq#Append_3683| s0@@10 s1@@10))
)))
(assert (forall ((o_143@@4 T@Ref) (f_57 T@Field_40911_40912) (Heap@@42 T@PolymorphicMapType_40838) ) (!  (=> (select (|PolymorphicMapType_40838_28702_53#PolymorphicMapType_40838| Heap@@42) o_143@@4 $allocated) (select (|PolymorphicMapType_40838_28702_53#PolymorphicMapType_40838| Heap@@42) (select (|PolymorphicMapType_40838_28705_28706#PolymorphicMapType_40838| Heap@@42) o_143@@4 f_57) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_40838_28705_28706#PolymorphicMapType_40838| Heap@@42) o_143@@4 f_57))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_40838) (Mask@@34 T@PolymorphicMapType_40859) (i@@32 Int) (lo@@11 Int) (hi@@22 Int) (step@@7 Int) (vmin@@7 Int) (vmax_1@@7 Int) (ar_1@@22 T@Seq_50030) ) (!  (=> (state Heap@@43 Mask@@34) (= (|sum_square'| Heap@@43 i@@32 lo@@11 hi@@22 step@@7 vmin@@7 vmax_1@@7 ar_1@@22) (|sum_square#frame| (FrameFragment_5496 (|sum_square#condqp2| Heap@@43 i@@32 lo@@11 hi@@22 step@@7 vmin@@7 vmax_1@@7 ar_1@@22)) i@@32 lo@@11 hi@@22 step@@7 vmin@@7 vmax_1@@7 ar_1@@22)))
 :qid |stdinbpl.1115:15|
 :skolemid |95|
 :pattern ( (state Heap@@43 Mask@@34) (|sum_square'| Heap@@43 i@@32 lo@@11 hi@@22 step@@7 vmin@@7 vmax_1@@7 ar_1@@22))
)))
(assert (forall ((s@@29 T@Seq_50030) (x@@3 T@Ref) (i@@33 Int) ) (!  (=> (and (and (<= 0 i@@33) (< i@@33 (|Seq#Length_29015| s@@29))) (= (|Seq#Index_29015| s@@29 i@@33) x@@3)) (|Seq#Contains_50030| s@@29 x@@3))
 :qid |stdinbpl.518:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_50030| s@@29 x@@3) (|Seq#Index_29015| s@@29 i@@33))
)))
(assert (forall ((s@@30 T@Seq_3683) (x@@4 Int) (i@@34 Int) ) (!  (=> (and (and (<= 0 i@@34) (< i@@34 (|Seq#Length_3683| s@@30))) (= (|Seq#Index_3683| s@@30 i@@34) x@@4)) (|Seq#Contains_3683| s@@30 x@@4))
 :qid |stdinbpl.518:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3683| s@@30 x@@4) (|Seq#Index_3683| s@@30 i@@34))
)))
(assert (forall ((s0@@11 T@Seq_50030) (s1@@11 T@Seq_50030) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_50030| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_50030| s0@@11 s1@@11))) (not (= (|Seq#Length_29015| s0@@11) (|Seq#Length_29015| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_50030| s0@@11 s1@@11))) (= (|Seq#Length_29015| s0@@11) (|Seq#Length_29015| s1@@11))) (= (|Seq#SkolemDiff_50030| s0@@11 s1@@11) (|Seq#SkolemDiff_50030| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_50030| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_50030| s0@@11 s1@@11) (|Seq#Length_29015| s0@@11))) (not (= (|Seq#Index_29015| s0@@11 (|Seq#SkolemDiff_50030| s0@@11 s1@@11)) (|Seq#Index_29015| s1@@11 (|Seq#SkolemDiff_50030| s0@@11 s1@@11))))))
 :qid |stdinbpl.622:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_50030| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3683) (s1@@12 T@Seq_3683) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3683| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3683| s0@@12 s1@@12))) (not (= (|Seq#Length_3683| s0@@12) (|Seq#Length_3683| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3683| s0@@12 s1@@12))) (= (|Seq#Length_3683| s0@@12) (|Seq#Length_3683| s1@@12))) (= (|Seq#SkolemDiff_3683| s0@@12 s1@@12) (|Seq#SkolemDiff_3683| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3683| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3683| s0@@12 s1@@12) (|Seq#Length_3683| s0@@12))) (not (= (|Seq#Index_3683| s0@@12 (|Seq#SkolemDiff_3683| s0@@12 s1@@12)) (|Seq#Index_3683| s1@@12 (|Seq#SkolemDiff_3683| s0@@12 s1@@12))))))
 :qid |stdinbpl.622:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3683| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_28958_115466) (v_1@@0 T@FrameType) (q T@Field_28958_115466) (w@@0 T@FrameType) (r T@Field_28958_115466) (u T@FrameType) ) (!  (=> (and (InsidePredicate_40898_40898 p@@1 v_1@@0 q w@@0) (InsidePredicate_40898_40898 q w@@0 r u)) (InsidePredicate_40898_40898 p@@1 v_1@@0 r u))
 :qid |stdinbpl.289:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_40898_40898 p@@1 v_1@@0 q w@@0) (InsidePredicate_40898_40898 q w@@0 r u))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_40838) (i@@35 Int) (lo@@12 Int) (hi@@23 Int) (step@@8 Int) (vmin@@8 Int) (vmax_1@@8 Int) (ar_1@@23 T@Seq_50030) ) (! (dummyFunction_4485 (|sum_square#triggerStateless| i@@35 lo@@12 hi@@23 step@@8 vmin@@8 vmax_1@@8 ar_1@@23))
 :qid |stdinbpl.1099:15|
 :skolemid |92|
 :pattern ( (|sum_square'| Heap@@44 i@@35 lo@@12 hi@@23 step@@8 vmin@@8 vmax_1@@8 ar_1@@23))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_40838) (Mask@@35 T@PolymorphicMapType_40859) (i@@36 Int) (hi@@24 Int) (ar_1@@24 T@Seq_50030) (v_2@@11 Int) ) (!  (=> (and (state Heap@@45 Mask@@35) (< AssumeFunctionsAbove 3)) (=> (and (and (and (<= 0 i@@36) (<= i@@36 hi@@24)) (<= hi@@24 (|Seq#Length_29015| ar_1@@24))) (forall ((j@@11 Int) (k@@2 Int) ) (!  (=> (and (<= 0 j@@11) (and (< j@@11 hi@@24) (and (<= 0 k@@2) (and (< k@@2 hi@@24) (not (= j@@11 k@@2)))))) (not (= (|Seq#Index_29015| ar_1@@24 j@@11) (|Seq#Index_29015| ar_1@@24 k@@2))))
 :qid |stdinbpl.1724:112|
 :skolemid |139|
 :pattern ( (|Seq#Index_29015| ar_1@@24 j@@11) (|Seq#Index_29015| ar_1@@24 k@@2))
))) (= (count_array Heap@@45 i@@36 hi@@24 ar_1@@24 v_2@@11) (ite (< i@@36 hi@@24) (+ (ite (= (select (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| Heap@@45) (|Seq#Index_29015| ar_1@@24 i@@36) Ref__Integer_value) v_2@@11) 1 0) (|count_array'| Heap@@45 (+ i@@36 1) hi@@24 ar_1@@24 v_2@@11)) 0))))
 :qid |stdinbpl.1722:15|
 :skolemid |140|
 :pattern ( (state Heap@@45 Mask@@35) (count_array Heap@@45 i@@36 hi@@24 ar_1@@24 v_2@@11))
)))
(assert (forall ((s@@31 T@Seq_50030) ) (!  (=> (= (|Seq#Length_29015| s@@31) 0) (= s@@31 |Seq#Empty_29015|))
 :qid |stdinbpl.325:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_29015| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3683) ) (!  (=> (= (|Seq#Length_3683| s@@32) 0) (= s@@32 |Seq#Empty_3683|))
 :qid |stdinbpl.325:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3683| s@@32))
)))
(assert (forall ((s@@33 T@Seq_50030) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_29015| s@@33 n@@25) |Seq#Empty_29015|))
 :qid |stdinbpl.501:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_29015| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3683) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3683| s@@34 n@@26) |Seq#Empty_3683|))
 :qid |stdinbpl.501:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3683| s@@34 n@@26))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_40838) (Mask@@36 T@PolymorphicMapType_40859) (N0@@6 Int) (N1@@6 Int) (i0_3@@6 Int) (i1_9@@6 Int) ) (!  (=> (and (state Heap@@46 Mask@@36) (or (< AssumeFunctionsAbove 1) (|Ref__multidim_index_2#trigger| EmptyFrame N0@@6 N1@@6 i0_3@@6 i1_9@@6))) (=> (and (and (and (and (and (<= 0 i0_3@@6) (< i0_3@@6 N0@@6)) (<= 0 N0@@6)) (<= 0 i1_9@@6)) (< i1_9@@6 N1@@6)) (<= 0 N1@@6)) (<= 0 (|Ref__multidim_index_2'| Heap@@46 N0@@6 N1@@6 i0_3@@6 i1_9@@6))))
 :qid |stdinbpl.695:15|
 :skolemid |61|
 :pattern ( (state Heap@@46 Mask@@36) (|Ref__multidim_index_2'| Heap@@46 N0@@6 N1@@6 i0_3@@6 i1_9@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@47 T@PolymorphicMapType_40838) (Mask@@37 T@PolymorphicMapType_40859) (i@@37 Int) (lo@@13 Int) (hi@@25 Int) (ar_1@@25 T@Seq_50030) ) (!  (=> (state Heap@@47 Mask@@37) (= (|sum_array'| Heap@@47 i@@37 lo@@13 hi@@25 ar_1@@25) (|sum_array#frame| (FrameFragment_5496 (|sum_array#condqp1| Heap@@47 i@@37 lo@@13 hi@@25 ar_1@@25)) i@@37 lo@@13 hi@@25 ar_1@@25)))
 :qid |stdinbpl.880:15|
 :skolemid |74|
 :pattern ( (state Heap@@47 Mask@@37) (|sum_array'| Heap@@47 i@@37 lo@@13 hi@@25 ar_1@@25))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_40838) (Mask@@38 T@PolymorphicMapType_40859) (i@@38 Int) (hi@@26 Int) (ar_1@@26 T@Seq_50030) (v_2@@12 Int) ) (!  (=> (state Heap@@48 Mask@@38) (= (|count_array'| Heap@@48 i@@38 hi@@26 ar_1@@26 v_2@@12) (|count_array#frame| (FrameFragment_5496 (|count_array#condqp4| Heap@@48 i@@38 hi@@26 ar_1@@26 v_2@@12)) i@@38 hi@@26 ar_1@@26 v_2@@12)))
 :qid |stdinbpl.1732:15|
 :skolemid |141|
 :pattern ( (state Heap@@48 Mask@@38) (|count_array'| Heap@@48 i@@38 hi@@26 ar_1@@26 v_2@@12))
)))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun j_12_2 () Int)
(declare-fun M_1 () Int)
(declare-fun N () Int)
(declare-fun k$0 () Int)
(declare-fun matrix_1 () T@Seq_50030)
(declare-fun wildcard@0 () Real)
(declare-fun QPMask@5 () T@PolymorphicMapType_40859)
(declare-fun PostHeap@0 () T@PolymorphicMapType_40838)
(declare-fun neverTriggered16 (Int) Bool)
(declare-fun k_27 () Int)
(declare-fun P_2 () Int)
(declare-fun hist () T@Seq_50030)
(declare-fun QPMask@1 () T@PolymorphicMapType_40859)
(declare-fun qpRange15 (T@Ref) Bool)
(declare-fun invRecv15 (T@Ref) Int)
(declare-fun QPMask@4 () T@PolymorphicMapType_40859)
(declare-fun k_30 () Int)
(declare-fun qpRange14 (T@Ref) Bool)
(declare-fun invRecv14 (T@Ref) Int)
(declare-fun j_25 () Int)
(declare-fun Heap@@49 () T@PolymorphicMapType_40838)
(declare-fun i_24 () Int)
(declare-fun j_20 () Int)
(declare-fun i_23 () Int)
(declare-fun j_24 () Int)
(declare-fun qpRange13 (T@Ref) Bool)
(declare-fun invRecv13 (T@Ref) Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_40859)
(declare-fun j_19 () Int)
(declare-fun j_23 () Int)
(declare-fun k_24 () Int)
(declare-fun qpRange12 (T@Ref) Bool)
(declare-fun invRecv12 (T@Ref) Int)
(declare-fun k_23 () Int)
(declare-fun j_22 () Int)
(declare-fun k_31 () Int)
(declare-fun diz () T@Ref)
(declare-fun current_thread_id () Int)
(declare-fun wildcard () Real)
(set-info :boogie-vc-id Ref__loop_main_96)
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
 (=> (= (ControlFlow 0 0) 119) (let ((anon45_correct true))
(let ((anon79_Else_correct  (=> (and (not (and (<= 0 j_12_2) (and (< j_12_2 (* M_1 N)) (and (<= 0 k$0) (and (< k$0 (* M_1 N)) (not (= j_12_2 k$0))))))) (= (ControlFlow 0 92) 89)) anon45_correct)))
(let ((anon79_Then_correct  (=> (and (<= 0 j_12_2) (and (< j_12_2 (* M_1 N)) (and (<= 0 k$0) (and (< k$0 (* M_1 N)) (not (= j_12_2 k$0)))))) (and (=> (= (ControlFlow 0 90) (- 0 91)) (not (= (|Seq#Index_29015| matrix_1 j_12_2) (|Seq#Index_29015| matrix_1 k$0)))) (=> (not (= (|Seq#Index_29015| matrix_1 j_12_2) (|Seq#Index_29015| matrix_1 k$0))) (=> (= (ControlFlow 0 90) 89) anon45_correct))))))
(let ((anon78_Else_correct  (=> (and (forall ((j_13_1 Int) (k$0_1_1_1 Int) ) (!  (=> (and (<= 0 j_13_1) (and (< j_13_1 (* M_1 N)) (and (<= 0 k$0_1_1_1) (and (< k$0_1_1_1 (* M_1 N)) (not (= j_13_1 k$0_1_1_1)))))) (not (= (|Seq#Index_29015| matrix_1 j_13_1) (|Seq#Index_29015| matrix_1 k$0_1_1_1))))
 :qid |stdinbpl.2752:28|
 :skolemid |209|
 :pattern ( (|Seq#Index_29015| matrix_1 j_13_1) (|Seq#Index_29015| matrix_1 k$0_1_1_1))
)) (> wildcard@0 0.0)) (and (=> (= (ControlFlow 0 85) (- 0 88)) (forall ((k$0_2 Int) ) (!  (=> (and (<= 0 k$0_2) (< k$0_2 (* M_1 N))) (> (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| QPMask@5) (|Seq#Index_29015| matrix_1 k$0_2) Ref__Integer_value) NoPerm))
 :qid |stdinbpl.2760:23|
 :skolemid |210|
))) (=> (forall ((k$0_2@@0 Int) ) (!  (=> (and (<= 0 k$0_2@@0) (< k$0_2@@0 (* M_1 N))) (> (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| QPMask@5) (|Seq#Index_29015| matrix_1 k$0_2@@0) Ref__Integer_value) NoPerm))
 :qid |stdinbpl.2760:23|
 :skolemid |210|
)) (=> (forall ((k$0_2@@1 Int) ) (!  (=> (and (<= 0 k$0_2@@1) (< k$0_2@@1 (* M_1 N))) (< wildcard@0 (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| QPMask@5) (|Seq#Index_29015| matrix_1 k$0_2@@1) Ref__Integer_value)))
 :qid |stdinbpl.2764:28|
 :skolemid |211|
)) (and (=> (= (ControlFlow 0 85) (- 0 87)) (forall ((k$0_2@@2 Int) ) (!  (=> (and (and (<= 0 k$0_2@@2) (< k$0_2@@2 (* M_1 N))) (dummyFunction_4485 (select (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| PostHeap@0) (|Seq#Index_29015| matrix_1 k$0_2@@2) Ref__Integer_value))) (>= wildcard@0 NoPerm))
 :qid |stdinbpl.2771:25|
 :skolemid |212|
 :pattern ( (|Seq#Index_29015| matrix_1 k$0_2@@2))
 :pattern ( (|Seq#Index_29015| matrix_1 k$0_2@@2))
))) (=> (forall ((k$0_2@@3 Int) ) (!  (=> (and (and (<= 0 k$0_2@@3) (< k$0_2@@3 (* M_1 N))) (dummyFunction_4485 (select (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| PostHeap@0) (|Seq#Index_29015| matrix_1 k$0_2@@3) Ref__Integer_value))) (>= wildcard@0 NoPerm))
 :qid |stdinbpl.2771:25|
 :skolemid |212|
 :pattern ( (|Seq#Index_29015| matrix_1 k$0_2@@3))
 :pattern ( (|Seq#Index_29015| matrix_1 k$0_2@@3))
)) (and (=> (= (ControlFlow 0 85) (- 0 86)) (forall ((k$0_2@@4 Int) (k$0_2_1 Int) ) (!  (=> (and (and (and (and (not (= k$0_2@@4 k$0_2_1)) (and (<= 0 k$0_2@@4) (< k$0_2@@4 (* M_1 N)))) (and (<= 0 k$0_2_1) (< k$0_2_1 (* M_1 N)))) (< NoPerm wildcard@0)) (< NoPerm wildcard@0)) (not (= (|Seq#Index_29015| matrix_1 k$0_2@@4) (|Seq#Index_29015| matrix_1 k$0_2_1))))
 :qid |stdinbpl.2778:25|
 :skolemid |213|
 :pattern ( (neverTriggered16 k$0_2@@4) (neverTriggered16 k$0_2_1))
))) (=> (forall ((k$0_2@@5 Int) (k$0_2_1@@0 Int) ) (!  (=> (and (and (and (and (not (= k$0_2@@5 k$0_2_1@@0)) (and (<= 0 k$0_2@@5) (< k$0_2@@5 (* M_1 N)))) (and (<= 0 k$0_2_1@@0) (< k$0_2_1@@0 (* M_1 N)))) (< NoPerm wildcard@0)) (< NoPerm wildcard@0)) (not (= (|Seq#Index_29015| matrix_1 k$0_2@@5) (|Seq#Index_29015| matrix_1 k$0_2_1@@0))))
 :qid |stdinbpl.2778:25|
 :skolemid |213|
 :pattern ( (neverTriggered16 k$0_2@@5) (neverTriggered16 k$0_2_1@@0))
)) (=> (= (ControlFlow 0 85) (- 0 84)) (forall ((k$0_2@@6 Int) ) (!  (=> (and (<= 0 k$0_2@@6) (< k$0_2@@6 (* M_1 N))) (=> (> wildcard@0 NoPerm) (> (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| QPMask@5) (|Seq#Index_29015| matrix_1 k$0_2@@6) Ref__Integer_value) NoPerm)))
 :qid |stdinbpl.2785:25|
 :skolemid |214|
 :pattern ( (|Seq#Index_29015| matrix_1 k$0_2@@6))
 :pattern ( (|Seq#Index_29015| matrix_1 k$0_2@@6))
)))))))))))))
(let ((anon77_Then_correct  (and (=> (= (ControlFlow 0 93) (- 0 95)) (<= 0 (* M_1 N))) (=> (<= 0 (* M_1 N)) (and (=> (= (ControlFlow 0 93) (- 0 94)) (<= (* M_1 N) (|Seq#Length_29015| matrix_1))) (=> (<= (* M_1 N) (|Seq#Length_29015| matrix_1)) (and (and (=> (= (ControlFlow 0 93) 85) anon78_Else_correct) (=> (= (ControlFlow 0 93) 90) anon79_Then_correct)) (=> (= (ControlFlow 0 93) 92) anon79_Else_correct))))))))
(let ((anon47_correct true))
(let ((anon76_Then_correct  (=> (and (<= 0 k_27) (< k_27 P_2)) (and (=> (= (ControlFlow 0 96) (- 0 102)) (>= k_27 0)) (=> (>= k_27 0) (and (=> (= (ControlFlow 0 96) (- 0 101)) (< k_27 (|Seq#Length_29015| hist))) (=> (< k_27 (|Seq#Length_29015| hist)) (and (=> (= (ControlFlow 0 96) (- 0 100)) (HasDirectPerm_28958_3805 QPMask@5 (|Seq#Index_29015| hist k_27) Ref__Integer_value)) (=> (HasDirectPerm_28958_3805 QPMask@5 (|Seq#Index_29015| hist k_27) Ref__Integer_value) (and (=> (= (ControlFlow 0 96) (- 0 99)) (>= k_27 0)) (=> (>= k_27 0) (and (=> (= (ControlFlow 0 96) (- 0 98)) (< k_27 (|Seq#Length_29015| hist))) (=> (< k_27 (|Seq#Length_29015| hist)) (and (=> (= (ControlFlow 0 96) (- 0 97)) (HasDirectPerm_28958_3805 QPMask@1 (|Seq#Index_29015| hist k_27) Ref__Integer_value)) (=> (HasDirectPerm_28958_3805 QPMask@1 (|Seq#Index_29015| hist k_27) Ref__Integer_value) (and (=> (= (ControlFlow 0 96) 93) anon77_Then_correct) (=> (= (ControlFlow 0 96) 82) anon47_correct)))))))))))))))))
(let ((anon76_Else_correct  (=> (and (not (and (<= 0 k_27) (< k_27 P_2))) (= (ControlFlow 0 83) 82)) anon47_correct)))
(let ((anon75_Else_correct true))
(let ((anon73_Else_correct  (and (=> (= (ControlFlow 0 103) (- 0 104)) (forall ((k_7_1 Int) (k_7_2 Int) ) (!  (=> (and (and (and (and (not (= k_7_1 k_7_2)) (and (<= 0 k_7_1) (< k_7_1 P_2))) (and (<= 0 k_7_2) (< k_7_2 P_2))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_29015| hist k_7_1) (|Seq#Index_29015| hist k_7_2))))
 :qid |stdinbpl.2687:15|
 :skolemid |203|
))) (=> (forall ((k_7_1@@0 Int) (k_7_2@@0 Int) ) (!  (=> (and (and (and (and (not (= k_7_1@@0 k_7_2@@0)) (and (<= 0 k_7_1@@0) (< k_7_1@@0 P_2))) (and (<= 0 k_7_2@@0) (< k_7_2@@0 P_2))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_29015| hist k_7_1@@0) (|Seq#Index_29015| hist k_7_2@@0))))
 :qid |stdinbpl.2687:15|
 :skolemid |203|
)) (=> (and (and (forall ((k_7_1@@1 Int) ) (!  (=> (and (and (<= 0 k_7_1@@1) (< k_7_1@@1 P_2)) (< NoPerm FullPerm)) (and (qpRange15 (|Seq#Index_29015| hist k_7_1@@1)) (= (invRecv15 (|Seq#Index_29015| hist k_7_1@@1)) k_7_1@@1)))
 :qid |stdinbpl.2693:22|
 :skolemid |204|
 :pattern ( (|Seq#Index_29015| hist k_7_1@@1))
 :pattern ( (|Seq#Index_29015| hist k_7_1@@1))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv15 o_9)) (< (invRecv15 o_9) P_2)) (< NoPerm FullPerm)) (qpRange15 o_9)) (= (|Seq#Index_29015| hist (invRecv15 o_9)) o_9))
 :qid |stdinbpl.2697:22|
 :skolemid |205|
 :pattern ( (invRecv15 o_9))
))) (and (forall ((k_7_1@@2 Int) ) (!  (=> (and (<= 0 k_7_1@@2) (< k_7_1@@2 P_2)) (not (= (|Seq#Index_29015| hist k_7_1@@2) null)))
 :qid |stdinbpl.2703:22|
 :skolemid |206|
 :pattern ( (|Seq#Index_29015| hist k_7_1@@2))
 :pattern ( (|Seq#Index_29015| hist k_7_1@@2))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv15 o_9@@0)) (< (invRecv15 o_9@@0) P_2)) (< NoPerm FullPerm)) (qpRange15 o_9@@0)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_29015| hist (invRecv15 o_9@@0)) o_9@@0)) (= (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| QPMask@5) o_9@@0 Ref__Integer_value) (+ (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| QPMask@4) o_9@@0 Ref__Integer_value) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv15 o_9@@0)) (< (invRecv15 o_9@@0) P_2)) (< NoPerm FullPerm)) (qpRange15 o_9@@0))) (= (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| QPMask@5) o_9@@0 Ref__Integer_value) (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| QPMask@4) o_9@@0 Ref__Integer_value))))
 :qid |stdinbpl.2709:22|
 :skolemid |207|
 :pattern ( (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| QPMask@5) o_9@@0 Ref__Integer_value))
)))) (=> (and (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_40898_53) ) (!  (=> true (= (select (|PolymorphicMapType_40859_28958_53#PolymorphicMapType_40859| QPMask@4) o_9@@1 f_5) (select (|PolymorphicMapType_40859_28958_53#PolymorphicMapType_40859| QPMask@5) o_9@@1 f_5)))
 :qid |stdinbpl.2713:29|
 :skolemid |208|
 :pattern ( (select (|PolymorphicMapType_40859_28958_53#PolymorphicMapType_40859| QPMask@4) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_40859_28958_53#PolymorphicMapType_40859| QPMask@5) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_40911_40912) ) (!  (=> true (= (select (|PolymorphicMapType_40859_28958_40912#PolymorphicMapType_40859| QPMask@4) o_9@@2 f_5@@0) (select (|PolymorphicMapType_40859_28958_40912#PolymorphicMapType_40859| QPMask@5) o_9@@2 f_5@@0)))
 :qid |stdinbpl.2713:29|
 :skolemid |208|
 :pattern ( (select (|PolymorphicMapType_40859_28958_40912#PolymorphicMapType_40859| QPMask@4) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_40859_28958_40912#PolymorphicMapType_40859| QPMask@5) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_46984_3805) ) (!  (=> (not (= f_5@@1 Ref__Integer_value)) (= (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| QPMask@4) o_9@@3 f_5@@1) (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| QPMask@5) o_9@@3 f_5@@1)))
 :qid |stdinbpl.2713:29|
 :skolemid |208|
 :pattern ( (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| QPMask@4) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| QPMask@5) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_28958_115466) ) (!  (=> true (= (select (|PolymorphicMapType_40859_28958_115466#PolymorphicMapType_40859| QPMask@4) o_9@@4 f_5@@2) (select (|PolymorphicMapType_40859_28958_115466#PolymorphicMapType_40859| QPMask@5) o_9@@4 f_5@@2)))
 :qid |stdinbpl.2713:29|
 :skolemid |208|
 :pattern ( (select (|PolymorphicMapType_40859_28958_115466#PolymorphicMapType_40859| QPMask@4) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_40859_28958_115466#PolymorphicMapType_40859| QPMask@5) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_28958_115599) ) (!  (=> true (= (select (|PolymorphicMapType_40859_28958_119721#PolymorphicMapType_40859| QPMask@4) o_9@@5 f_5@@3) (select (|PolymorphicMapType_40859_28958_119721#PolymorphicMapType_40859| QPMask@5) o_9@@5 f_5@@3)))
 :qid |stdinbpl.2713:29|
 :skolemid |208|
 :pattern ( (select (|PolymorphicMapType_40859_28958_119721#PolymorphicMapType_40859| QPMask@4) o_9@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_40859_28958_119721#PolymorphicMapType_40859| QPMask@5) o_9@@5 f_5@@3))
))) (state PostHeap@0 QPMask@5)) (and (state PostHeap@0 QPMask@5) (state PostHeap@0 QPMask@5))) (and (and (=> (= (ControlFlow 0 103) 81) anon75_Else_correct) (=> (= (ControlFlow 0 103) 96) anon76_Then_correct)) (=> (= (ControlFlow 0 103) 83) anon76_Else_correct))))))))
(let ((anon38_correct true))
(let ((anon74_Else_correct  (=> (and (not (and (<= 0 k_30) (< k_30 P_2))) (= (ControlFlow 0 80) 76)) anon38_correct)))
(let ((anon74_Then_correct  (=> (and (<= 0 k_30) (< k_30 P_2)) (and (=> (= (ControlFlow 0 77) (- 0 79)) (>= k_30 0)) (=> (>= k_30 0) (and (=> (= (ControlFlow 0 77) (- 0 78)) (< k_30 (|Seq#Length_29015| hist))) (=> (< k_30 (|Seq#Length_29015| hist)) (=> (= (ControlFlow 0 77) 76) anon38_correct))))))))
(let ((anon71_Else_correct  (and (=> (= (ControlFlow 0 105) (- 0 107)) (forall ((j_11_1 Int) (j_11_2 Int) ) (!  (=> (and (and (and (and (not (= j_11_1 j_11_2)) (and (<= 0 j_11_1) (< j_11_1 (* M_1 N)))) (and (<= 0 j_11_2) (< j_11_2 (* M_1 N)))) (< NoPerm (/ (to_real 1) (to_real 4)))) (< NoPerm (/ (to_real 1) (to_real 4)))) (not (= (|Seq#Index_29015| matrix_1 j_11_1) (|Seq#Index_29015| matrix_1 j_11_2))))
 :qid |stdinbpl.2635:15|
 :skolemid |196|
))) (=> (forall ((j_11_1@@0 Int) (j_11_2@@0 Int) ) (!  (=> (and (and (and (and (not (= j_11_1@@0 j_11_2@@0)) (and (<= 0 j_11_1@@0) (< j_11_1@@0 (* M_1 N)))) (and (<= 0 j_11_2@@0) (< j_11_2@@0 (* M_1 N)))) (< NoPerm (/ (to_real 1) (to_real 4)))) (< NoPerm (/ (to_real 1) (to_real 4)))) (not (= (|Seq#Index_29015| matrix_1 j_11_1@@0) (|Seq#Index_29015| matrix_1 j_11_2@@0))))
 :qid |stdinbpl.2635:15|
 :skolemid |196|
)) (=> (and (forall ((j_11_1@@1 Int) ) (!  (=> (and (and (<= 0 j_11_1@@1) (< j_11_1@@1 (* M_1 N))) (< NoPerm (/ (to_real 1) (to_real 4)))) (and (qpRange14 (|Seq#Index_29015| matrix_1 j_11_1@@1)) (= (invRecv14 (|Seq#Index_29015| matrix_1 j_11_1@@1)) j_11_1@@1)))
 :qid |stdinbpl.2641:22|
 :skolemid |197|
 :pattern ( (|Seq#Index_29015| matrix_1 j_11_1@@1))
 :pattern ( (|Seq#Index_29015| matrix_1 j_11_1@@1))
)) (forall ((o_9@@6 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv14 o_9@@6)) (< (invRecv14 o_9@@6) (* M_1 N))) (< NoPerm (/ (to_real 1) (to_real 4)))) (qpRange14 o_9@@6)) (= (|Seq#Index_29015| matrix_1 (invRecv14 o_9@@6)) o_9@@6))
 :qid |stdinbpl.2645:22|
 :skolemid |198|
 :pattern ( (invRecv14 o_9@@6))
))) (and (=> (= (ControlFlow 0 105) (- 0 106)) (forall ((j_11_1@@2 Int) ) (!  (=> (and (<= 0 j_11_1@@2) (< j_11_1@@2 (* M_1 N))) (>= (/ (to_real 1) (to_real 4)) NoPerm))
 :qid |stdinbpl.2651:15|
 :skolemid |199|
 :pattern ( (|Seq#Index_29015| matrix_1 j_11_1@@2))
 :pattern ( (|Seq#Index_29015| matrix_1 j_11_1@@2))
))) (=> (forall ((j_11_1@@3 Int) ) (!  (=> (and (<= 0 j_11_1@@3) (< j_11_1@@3 (* M_1 N))) (>= (/ (to_real 1) (to_real 4)) NoPerm))
 :qid |stdinbpl.2651:15|
 :skolemid |199|
 :pattern ( (|Seq#Index_29015| matrix_1 j_11_1@@3))
 :pattern ( (|Seq#Index_29015| matrix_1 j_11_1@@3))
)) (=> (and (forall ((j_11_1@@4 Int) ) (!  (=> (and (and (<= 0 j_11_1@@4) (< j_11_1@@4 (* M_1 N))) (> (/ (to_real 1) (to_real 4)) NoPerm)) (not (= (|Seq#Index_29015| matrix_1 j_11_1@@4) null)))
 :qid |stdinbpl.2657:22|
 :skolemid |200|
 :pattern ( (|Seq#Index_29015| matrix_1 j_11_1@@4))
 :pattern ( (|Seq#Index_29015| matrix_1 j_11_1@@4))
)) (forall ((o_9@@7 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv14 o_9@@7)) (< (invRecv14 o_9@@7) (* M_1 N))) (< NoPerm (/ (to_real 1) (to_real 4)))) (qpRange14 o_9@@7)) (and (=> (< NoPerm (/ (to_real 1) (to_real 4))) (= (|Seq#Index_29015| matrix_1 (invRecv14 o_9@@7)) o_9@@7)) (= (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| QPMask@4) o_9@@7 Ref__Integer_value) (+ (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| ZeroMask) o_9@@7 Ref__Integer_value) (/ (to_real 1) (to_real 4)))))) (=> (not (and (and (and (<= 0 (invRecv14 o_9@@7)) (< (invRecv14 o_9@@7) (* M_1 N))) (< NoPerm (/ (to_real 1) (to_real 4)))) (qpRange14 o_9@@7))) (= (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| QPMask@4) o_9@@7 Ref__Integer_value) (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| ZeroMask) o_9@@7 Ref__Integer_value))))
 :qid |stdinbpl.2663:22|
 :skolemid |201|
 :pattern ( (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| QPMask@4) o_9@@7 Ref__Integer_value))
))) (=> (and (and (and (and (and (forall ((o_9@@8 T@Ref) (f_5@@4 T@Field_40898_53) ) (!  (=> true (= (select (|PolymorphicMapType_40859_28958_53#PolymorphicMapType_40859| ZeroMask) o_9@@8 f_5@@4) (select (|PolymorphicMapType_40859_28958_53#PolymorphicMapType_40859| QPMask@4) o_9@@8 f_5@@4)))
 :qid |stdinbpl.2667:29|
 :skolemid |202|
 :pattern ( (select (|PolymorphicMapType_40859_28958_53#PolymorphicMapType_40859| ZeroMask) o_9@@8 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_40859_28958_53#PolymorphicMapType_40859| QPMask@4) o_9@@8 f_5@@4))
)) (forall ((o_9@@9 T@Ref) (f_5@@5 T@Field_40911_40912) ) (!  (=> true (= (select (|PolymorphicMapType_40859_28958_40912#PolymorphicMapType_40859| ZeroMask) o_9@@9 f_5@@5) (select (|PolymorphicMapType_40859_28958_40912#PolymorphicMapType_40859| QPMask@4) o_9@@9 f_5@@5)))
 :qid |stdinbpl.2667:29|
 :skolemid |202|
 :pattern ( (select (|PolymorphicMapType_40859_28958_40912#PolymorphicMapType_40859| ZeroMask) o_9@@9 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_40859_28958_40912#PolymorphicMapType_40859| QPMask@4) o_9@@9 f_5@@5))
))) (forall ((o_9@@10 T@Ref) (f_5@@6 T@Field_46984_3805) ) (!  (=> (not (= f_5@@6 Ref__Integer_value)) (= (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| ZeroMask) o_9@@10 f_5@@6) (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| QPMask@4) o_9@@10 f_5@@6)))
 :qid |stdinbpl.2667:29|
 :skolemid |202|
 :pattern ( (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| ZeroMask) o_9@@10 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| QPMask@4) o_9@@10 f_5@@6))
))) (forall ((o_9@@11 T@Ref) (f_5@@7 T@Field_28958_115466) ) (!  (=> true (= (select (|PolymorphicMapType_40859_28958_115466#PolymorphicMapType_40859| ZeroMask) o_9@@11 f_5@@7) (select (|PolymorphicMapType_40859_28958_115466#PolymorphicMapType_40859| QPMask@4) o_9@@11 f_5@@7)))
 :qid |stdinbpl.2667:29|
 :skolemid |202|
 :pattern ( (select (|PolymorphicMapType_40859_28958_115466#PolymorphicMapType_40859| ZeroMask) o_9@@11 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_40859_28958_115466#PolymorphicMapType_40859| QPMask@4) o_9@@11 f_5@@7))
))) (forall ((o_9@@12 T@Ref) (f_5@@8 T@Field_28958_115599) ) (!  (=> true (= (select (|PolymorphicMapType_40859_28958_119721#PolymorphicMapType_40859| ZeroMask) o_9@@12 f_5@@8) (select (|PolymorphicMapType_40859_28958_119721#PolymorphicMapType_40859| QPMask@4) o_9@@12 f_5@@8)))
 :qid |stdinbpl.2667:29|
 :skolemid |202|
 :pattern ( (select (|PolymorphicMapType_40859_28958_119721#PolymorphicMapType_40859| ZeroMask) o_9@@12 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_40859_28958_119721#PolymorphicMapType_40859| QPMask@4) o_9@@12 f_5@@8))
))) (and (state PostHeap@0 QPMask@4) (state PostHeap@0 QPMask@4))) (and (and (=> (= (ControlFlow 0 105) 103) anon73_Else_correct) (=> (= (ControlFlow 0 105) 77) anon74_Then_correct)) (=> (= (ControlFlow 0 105) 80) anon74_Else_correct)))))))))))
(let ((anon34_correct true))
(let ((anon72_Else_correct  (=> (and (not (and (<= 0 j_25) (< j_25 (* M_1 N)))) (= (ControlFlow 0 75) 71)) anon34_correct)))
(let ((anon72_Then_correct  (=> (and (<= 0 j_25) (< j_25 (* M_1 N))) (and (=> (= (ControlFlow 0 72) (- 0 74)) (>= j_25 0)) (=> (>= j_25 0) (and (=> (= (ControlFlow 0 72) (- 0 73)) (< j_25 (|Seq#Length_29015| matrix_1))) (=> (< j_25 (|Seq#Length_29015| matrix_1)) (=> (= (ControlFlow 0 72) 71) anon34_correct))))))))
(let ((anon70_Then_correct  (=> (state PostHeap@0 ZeroMask) (=> (and (and (> M_1 0) (> N 0)) (and (> P_2 0) (state PostHeap@0 ZeroMask))) (and (and (=> (= (ControlFlow 0 108) 105) anon71_Else_correct) (=> (= (ControlFlow 0 108) 72) anon72_Then_correct)) (=> (= (ControlFlow 0 108) 75) anon72_Else_correct))))))
(let ((anon70_Else_correct true))
(let ((anon65_Else_correct  (=> (and (forall ((i_3_2 Int) (j_9_1 Int) ) (!  (=> (and (<= 0 i_3_2) (and (< i_3_2 M_1) (and (<= 0 j_9_1) (< j_9_1 N)))) (and (<= 0 (select (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| Heap@@49) (|Seq#Index_29015| matrix_1 (Ref__multidim_index_2 Heap@@49 M_1 N i_3_2 j_9_1)) Ref__Integer_value)) (< (select (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| Heap@@49) (|Seq#Index_29015| matrix_1 (Ref__multidim_index_2 Heap@@49 M_1 N i_3_2 j_9_1)) Ref__Integer_value) P_2)))
 :qid |stdinbpl.2602:20|
 :skolemid |195|
 :pattern ( (|Seq#Index_29015| matrix_1 (|Ref__multidim_index_2#frame| EmptyFrame M_1 N i_3_2 j_9_1)))
)) (state Heap@@49 QPMask@1)) (and (=> (= (ControlFlow 0 109) 108) anon70_Then_correct) (=> (= (ControlFlow 0 109) 63) anon70_Else_correct)))))
(let ((anon69_Then_correct  (and (=> (= (ControlFlow 0 46) (- 0 51)) (<= 0 i_24)) (=> (<= 0 i_24) (and (=> (= (ControlFlow 0 46) (- 0 50)) (< i_24 M_1)) (=> (< i_24 M_1) (and (=> (= (ControlFlow 0 46) (- 0 49)) (<= 0 M_1)) (=> (<= 0 M_1) (and (=> (= (ControlFlow 0 46) (- 0 48)) (<= 0 j_20)) (=> (<= 0 j_20) (and (=> (= (ControlFlow 0 46) (- 0 47)) (< j_20 N)) (=> (< j_20 N) (=> (= (ControlFlow 0 46) (- 0 45)) (<= 0 N))))))))))))))
(let ((anon67_Then_correct  (and (=> (= (ControlFlow 0 38) (- 0 43)) (<= 0 i_24)) (=> (<= 0 i_24) (and (=> (= (ControlFlow 0 38) (- 0 42)) (< i_24 M_1)) (=> (< i_24 M_1) (and (=> (= (ControlFlow 0 38) (- 0 41)) (<= 0 M_1)) (=> (<= 0 M_1) (and (=> (= (ControlFlow 0 38) (- 0 40)) (<= 0 j_20)) (=> (<= 0 j_20) (and (=> (= (ControlFlow 0 38) (- 0 39)) (< j_20 N)) (=> (< j_20 N) (=> (= (ControlFlow 0 38) (- 0 37)) (<= 0 N))))))))))))))
(let ((anon29_correct true))
(let ((anon69_Else_correct  (and (=> (= (ControlFlow 0 52) (- 0 55)) (>= (Ref__multidim_index_2 Heap@@49 M_1 N i_24 j_20) 0)) (=> (>= (Ref__multidim_index_2 Heap@@49 M_1 N i_24 j_20) 0) (and (=> (= (ControlFlow 0 52) (- 0 54)) (< (Ref__multidim_index_2 Heap@@49 M_1 N i_24 j_20) (|Seq#Length_29015| matrix_1))) (=> (< (Ref__multidim_index_2 Heap@@49 M_1 N i_24 j_20) (|Seq#Length_29015| matrix_1)) (and (=> (= (ControlFlow 0 52) (- 0 53)) (HasDirectPerm_28958_3805 QPMask@1 (|Seq#Index_29015| matrix_1 (Ref__multidim_index_2 Heap@@49 M_1 N i_24 j_20)) Ref__Integer_value)) (=> (HasDirectPerm_28958_3805 QPMask@1 (|Seq#Index_29015| matrix_1 (Ref__multidim_index_2 Heap@@49 M_1 N i_24 j_20)) Ref__Integer_value) (=> (= (ControlFlow 0 52) 35) anon29_correct)))))))))
(let ((anon68_Then_correct  (=> (<= 0 (select (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| Heap@@49) (|Seq#Index_29015| matrix_1 (Ref__multidim_index_2 Heap@@49 M_1 N i_24 j_20)) Ref__Integer_value)) (and (=> (= (ControlFlow 0 56) 46) anon69_Then_correct) (=> (= (ControlFlow 0 56) 52) anon69_Else_correct)))))
(let ((anon68_Else_correct  (=> (and (< (select (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| Heap@@49) (|Seq#Index_29015| matrix_1 (Ref__multidim_index_2 Heap@@49 M_1 N i_24 j_20)) Ref__Integer_value) 0) (= (ControlFlow 0 44) 35)) anon29_correct)))
(let ((anon67_Else_correct  (and (=> (= (ControlFlow 0 57) (- 0 60)) (>= (Ref__multidim_index_2 Heap@@49 M_1 N i_24 j_20) 0)) (=> (>= (Ref__multidim_index_2 Heap@@49 M_1 N i_24 j_20) 0) (and (=> (= (ControlFlow 0 57) (- 0 59)) (< (Ref__multidim_index_2 Heap@@49 M_1 N i_24 j_20) (|Seq#Length_29015| matrix_1))) (=> (< (Ref__multidim_index_2 Heap@@49 M_1 N i_24 j_20) (|Seq#Length_29015| matrix_1)) (and (=> (= (ControlFlow 0 57) (- 0 58)) (HasDirectPerm_28958_3805 QPMask@1 (|Seq#Index_29015| matrix_1 (Ref__multidim_index_2 Heap@@49 M_1 N i_24 j_20)) Ref__Integer_value)) (=> (HasDirectPerm_28958_3805 QPMask@1 (|Seq#Index_29015| matrix_1 (Ref__multidim_index_2 Heap@@49 M_1 N i_24 j_20)) Ref__Integer_value) (and (=> (= (ControlFlow 0 57) 56) anon68_Then_correct) (=> (= (ControlFlow 0 57) 44) anon68_Else_correct))))))))))
(let ((anon66_Then_correct  (=> (and (<= 0 i_24) (and (< i_24 M_1) (and (<= 0 j_20) (< j_20 N)))) (and (=> (= (ControlFlow 0 61) 38) anon67_Then_correct) (=> (= (ControlFlow 0 61) 57) anon67_Else_correct)))))
(let ((anon66_Else_correct  (=> (and (not (and (<= 0 i_24) (and (< i_24 M_1) (and (<= 0 j_20) (< j_20 N))))) (= (ControlFlow 0 36) 35)) anon29_correct)))
(let ((anon62_Else_correct  (=> (forall ((i_1 Int) (j_7_1 Int) ) (!  (=> (and (<= 0 i_1) (and (< i_1 M_1) (and (<= 0 j_7_1) (< j_7_1 N)))) (< (Ref__multidim_index_2 Heap@@49 M_1 N i_1 j_7_1) (|Seq#Length_29015| matrix_1)))
 :qid |stdinbpl.2537:20|
 :skolemid |194|
 :pattern ( (|Ref__multidim_index_2#frame| EmptyFrame M_1 N i_1 j_7_1))
)) (=> (and (state Heap@@49 QPMask@1) (state Heap@@49 QPMask@1)) (and (and (=> (= (ControlFlow 0 110) 109) anon65_Else_correct) (=> (= (ControlFlow 0 110) 61) anon66_Then_correct)) (=> (= (ControlFlow 0 110) 36) anon66_Else_correct))))))
(let ((anon64_Then_correct  (and (=> (= (ControlFlow 0 28) (- 0 33)) (<= 0 i_23)) (=> (<= 0 i_23) (and (=> (= (ControlFlow 0 28) (- 0 32)) (< i_23 M_1)) (=> (< i_23 M_1) (and (=> (= (ControlFlow 0 28) (- 0 31)) (<= 0 M_1)) (=> (<= 0 M_1) (and (=> (= (ControlFlow 0 28) (- 0 30)) (<= 0 j_24)) (=> (<= 0 j_24) (and (=> (= (ControlFlow 0 28) (- 0 29)) (< j_24 N)) (=> (< j_24 N) (=> (= (ControlFlow 0 28) (- 0 27)) (<= 0 N))))))))))))))
(let ((anon20_correct true))
(let ((anon63_Then_correct  (=> (and (<= 0 i_23) (and (< i_23 M_1) (and (<= 0 j_24) (< j_24 N)))) (and (=> (= (ControlFlow 0 34) 28) anon64_Then_correct) (=> (= (ControlFlow 0 34) 25) anon20_correct)))))
(let ((anon63_Else_correct  (=> (and (not (and (<= 0 i_23) (and (< i_23 M_1) (and (<= 0 j_24) (< j_24 N))))) (= (ControlFlow 0 26) 25)) anon20_correct)))
(let ((anon60_Else_correct  (and (=> (= (ControlFlow 0 111) (- 0 113)) (forall ((j_5 Int) (j_5_1 Int) ) (!  (=> (and (and (and (and (not (= j_5 j_5_1)) (and (<= 0 j_5) (< j_5 (* M_1 N)))) (and (<= 0 j_5_1) (< j_5_1 (* M_1 N)))) (< NoPerm (/ (to_real 1) (to_real 4)))) (< NoPerm (/ (to_real 1) (to_real 4)))) (not (= (|Seq#Index_29015| matrix_1 j_5) (|Seq#Index_29015| matrix_1 j_5_1))))
 :qid |stdinbpl.2471:15|
 :skolemid |187|
))) (=> (forall ((j_5@@0 Int) (j_5_1@@0 Int) ) (!  (=> (and (and (and (and (not (= j_5@@0 j_5_1@@0)) (and (<= 0 j_5@@0) (< j_5@@0 (* M_1 N)))) (and (<= 0 j_5_1@@0) (< j_5_1@@0 (* M_1 N)))) (< NoPerm (/ (to_real 1) (to_real 4)))) (< NoPerm (/ (to_real 1) (to_real 4)))) (not (= (|Seq#Index_29015| matrix_1 j_5@@0) (|Seq#Index_29015| matrix_1 j_5_1@@0))))
 :qid |stdinbpl.2471:15|
 :skolemid |187|
)) (=> (and (forall ((j_5@@1 Int) ) (!  (=> (and (and (<= 0 j_5@@1) (< j_5@@1 (* M_1 N))) (< NoPerm (/ (to_real 1) (to_real 4)))) (and (qpRange13 (|Seq#Index_29015| matrix_1 j_5@@1)) (= (invRecv13 (|Seq#Index_29015| matrix_1 j_5@@1)) j_5@@1)))
 :qid |stdinbpl.2477:22|
 :skolemid |188|
 :pattern ( (|Seq#Index_29015| matrix_1 j_5@@1))
 :pattern ( (|Seq#Index_29015| matrix_1 j_5@@1))
)) (forall ((o_9@@13 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv13 o_9@@13)) (< (invRecv13 o_9@@13) (* M_1 N))) (< NoPerm (/ (to_real 1) (to_real 4)))) (qpRange13 o_9@@13)) (= (|Seq#Index_29015| matrix_1 (invRecv13 o_9@@13)) o_9@@13))
 :qid |stdinbpl.2481:22|
 :skolemid |189|
 :pattern ( (invRecv13 o_9@@13))
))) (and (=> (= (ControlFlow 0 111) (- 0 112)) (forall ((j_5@@2 Int) ) (!  (=> (and (<= 0 j_5@@2) (< j_5@@2 (* M_1 N))) (>= (/ (to_real 1) (to_real 4)) NoPerm))
 :qid |stdinbpl.2487:15|
 :skolemid |190|
 :pattern ( (|Seq#Index_29015| matrix_1 j_5@@2))
 :pattern ( (|Seq#Index_29015| matrix_1 j_5@@2))
))) (=> (forall ((j_5@@3 Int) ) (!  (=> (and (<= 0 j_5@@3) (< j_5@@3 (* M_1 N))) (>= (/ (to_real 1) (to_real 4)) NoPerm))
 :qid |stdinbpl.2487:15|
 :skolemid |190|
 :pattern ( (|Seq#Index_29015| matrix_1 j_5@@3))
 :pattern ( (|Seq#Index_29015| matrix_1 j_5@@3))
)) (=> (and (forall ((j_5@@4 Int) ) (!  (=> (and (and (<= 0 j_5@@4) (< j_5@@4 (* M_1 N))) (> (/ (to_real 1) (to_real 4)) NoPerm)) (not (= (|Seq#Index_29015| matrix_1 j_5@@4) null)))
 :qid |stdinbpl.2493:22|
 :skolemid |191|
 :pattern ( (|Seq#Index_29015| matrix_1 j_5@@4))
 :pattern ( (|Seq#Index_29015| matrix_1 j_5@@4))
)) (forall ((o_9@@14 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv13 o_9@@14)) (< (invRecv13 o_9@@14) (* M_1 N))) (< NoPerm (/ (to_real 1) (to_real 4)))) (qpRange13 o_9@@14)) (and (=> (< NoPerm (/ (to_real 1) (to_real 4))) (= (|Seq#Index_29015| matrix_1 (invRecv13 o_9@@14)) o_9@@14)) (= (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| QPMask@1) o_9@@14 Ref__Integer_value) (+ (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| QPMask@0) o_9@@14 Ref__Integer_value) (/ (to_real 1) (to_real 4)))))) (=> (not (and (and (and (<= 0 (invRecv13 o_9@@14)) (< (invRecv13 o_9@@14) (* M_1 N))) (< NoPerm (/ (to_real 1) (to_real 4)))) (qpRange13 o_9@@14))) (= (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| QPMask@1) o_9@@14 Ref__Integer_value) (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| QPMask@0) o_9@@14 Ref__Integer_value))))
 :qid |stdinbpl.2499:22|
 :skolemid |192|
 :pattern ( (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| QPMask@1) o_9@@14 Ref__Integer_value))
))) (=> (and (and (and (and (and (and (forall ((o_9@@15 T@Ref) (f_5@@9 T@Field_40898_53) ) (!  (=> true (= (select (|PolymorphicMapType_40859_28958_53#PolymorphicMapType_40859| QPMask@0) o_9@@15 f_5@@9) (select (|PolymorphicMapType_40859_28958_53#PolymorphicMapType_40859| QPMask@1) o_9@@15 f_5@@9)))
 :qid |stdinbpl.2503:29|
 :skolemid |193|
 :pattern ( (select (|PolymorphicMapType_40859_28958_53#PolymorphicMapType_40859| QPMask@0) o_9@@15 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_40859_28958_53#PolymorphicMapType_40859| QPMask@1) o_9@@15 f_5@@9))
)) (forall ((o_9@@16 T@Ref) (f_5@@10 T@Field_40911_40912) ) (!  (=> true (= (select (|PolymorphicMapType_40859_28958_40912#PolymorphicMapType_40859| QPMask@0) o_9@@16 f_5@@10) (select (|PolymorphicMapType_40859_28958_40912#PolymorphicMapType_40859| QPMask@1) o_9@@16 f_5@@10)))
 :qid |stdinbpl.2503:29|
 :skolemid |193|
 :pattern ( (select (|PolymorphicMapType_40859_28958_40912#PolymorphicMapType_40859| QPMask@0) o_9@@16 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_40859_28958_40912#PolymorphicMapType_40859| QPMask@1) o_9@@16 f_5@@10))
))) (forall ((o_9@@17 T@Ref) (f_5@@11 T@Field_46984_3805) ) (!  (=> (not (= f_5@@11 Ref__Integer_value)) (= (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| QPMask@0) o_9@@17 f_5@@11) (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| QPMask@1) o_9@@17 f_5@@11)))
 :qid |stdinbpl.2503:29|
 :skolemid |193|
 :pattern ( (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| QPMask@0) o_9@@17 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| QPMask@1) o_9@@17 f_5@@11))
))) (forall ((o_9@@18 T@Ref) (f_5@@12 T@Field_28958_115466) ) (!  (=> true (= (select (|PolymorphicMapType_40859_28958_115466#PolymorphicMapType_40859| QPMask@0) o_9@@18 f_5@@12) (select (|PolymorphicMapType_40859_28958_115466#PolymorphicMapType_40859| QPMask@1) o_9@@18 f_5@@12)))
 :qid |stdinbpl.2503:29|
 :skolemid |193|
 :pattern ( (select (|PolymorphicMapType_40859_28958_115466#PolymorphicMapType_40859| QPMask@0) o_9@@18 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_40859_28958_115466#PolymorphicMapType_40859| QPMask@1) o_9@@18 f_5@@12))
))) (forall ((o_9@@19 T@Ref) (f_5@@13 T@Field_28958_115599) ) (!  (=> true (= (select (|PolymorphicMapType_40859_28958_119721#PolymorphicMapType_40859| QPMask@0) o_9@@19 f_5@@13) (select (|PolymorphicMapType_40859_28958_119721#PolymorphicMapType_40859| QPMask@1) o_9@@19 f_5@@13)))
 :qid |stdinbpl.2503:29|
 :skolemid |193|
 :pattern ( (select (|PolymorphicMapType_40859_28958_119721#PolymorphicMapType_40859| QPMask@0) o_9@@19 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_40859_28958_119721#PolymorphicMapType_40859| QPMask@1) o_9@@19 f_5@@13))
))) (state Heap@@49 QPMask@1)) (and (state Heap@@49 QPMask@1) (state Heap@@49 QPMask@1))) (and (and (=> (= (ControlFlow 0 111) 110) anon62_Else_correct) (=> (= (ControlFlow 0 111) 34) anon63_Then_correct)) (=> (= (ControlFlow 0 111) 26) anon63_Else_correct)))))))))))
(let ((anon15_correct true))
(let ((anon61_Else_correct  (=> (and (not (and (<= 0 j_19) (< j_19 (* M_1 N)))) (= (ControlFlow 0 24) 20)) anon15_correct)))
(let ((anon61_Then_correct  (=> (and (<= 0 j_19) (< j_19 (* M_1 N))) (and (=> (= (ControlFlow 0 21) (- 0 23)) (>= j_19 0)) (=> (>= j_19 0) (and (=> (= (ControlFlow 0 21) (- 0 22)) (< j_19 (|Seq#Length_29015| matrix_1))) (=> (< j_19 (|Seq#Length_29015| matrix_1)) (=> (= (ControlFlow 0 21) 20) anon15_correct))))))))
(let ((anon58_Else_correct  (=> (and (forall ((j_3 Int) (k_5 Int) ) (!  (=> (and (<= 0 j_3) (and (< j_3 (* M_1 N)) (and (<= 0 k_5) (and (< k_5 (* M_1 N)) (not (= j_3 k_5)))))) (not (= (|Seq#Index_29015| matrix_1 j_3) (|Seq#Index_29015| matrix_1 k_5))))
 :qid |stdinbpl.2453:20|
 :skolemid |186|
 :pattern ( (|Seq#Index_29015| matrix_1 j_3) (|Seq#Index_29015| matrix_1 k_5))
)) (state Heap@@49 QPMask@0)) (and (and (=> (= (ControlFlow 0 114) 111) anon60_Else_correct) (=> (= (ControlFlow 0 114) 21) anon61_Then_correct)) (=> (= (ControlFlow 0 114) 24) anon61_Else_correct)))))
(let ((anon11_correct true))
(let ((anon59_Else_correct  (=> (and (not (and (<= 0 j_23) (and (< j_23 (* M_1 N)) (and (<= 0 k_24) (and (< k_24 (* M_1 N)) (not (= j_23 k_24))))))) (= (ControlFlow 0 19) 13)) anon11_correct)))
(let ((anon59_Then_correct  (=> (and (<= 0 j_23) (and (< j_23 (* M_1 N)) (and (<= 0 k_24) (and (< k_24 (* M_1 N)) (not (= j_23 k_24)))))) (and (=> (= (ControlFlow 0 14) (- 0 18)) (>= j_23 0)) (=> (>= j_23 0) (and (=> (= (ControlFlow 0 14) (- 0 17)) (< j_23 (|Seq#Length_29015| matrix_1))) (=> (< j_23 (|Seq#Length_29015| matrix_1)) (and (=> (= (ControlFlow 0 14) (- 0 16)) (>= k_24 0)) (=> (>= k_24 0) (and (=> (= (ControlFlow 0 14) (- 0 15)) (< k_24 (|Seq#Length_29015| matrix_1))) (=> (< k_24 (|Seq#Length_29015| matrix_1)) (=> (= (ControlFlow 0 14) 13) anon11_correct))))))))))))
(let ((anon56_Else_correct  (and (=> (= (ControlFlow 0 115) (- 0 116)) (forall ((k_3 Int) (k_3_2 Int) ) (!  (=> (and (and (and (and (not (= k_3 k_3_2)) (and (<= 0 k_3) (< k_3 P_2))) (and (<= 0 k_3_2) (< k_3_2 P_2))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_29015| hist k_3) (|Seq#Index_29015| hist k_3_2))))
 :qid |stdinbpl.2403:15|
 :skolemid |180|
))) (=> (forall ((k_3@@0 Int) (k_3_2@@0 Int) ) (!  (=> (and (and (and (and (not (= k_3@@0 k_3_2@@0)) (and (<= 0 k_3@@0) (< k_3@@0 P_2))) (and (<= 0 k_3_2@@0) (< k_3_2@@0 P_2))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_29015| hist k_3@@0) (|Seq#Index_29015| hist k_3_2@@0))))
 :qid |stdinbpl.2403:15|
 :skolemid |180|
)) (=> (and (and (forall ((k_3@@1 Int) ) (!  (=> (and (and (<= 0 k_3@@1) (< k_3@@1 P_2)) (< NoPerm FullPerm)) (and (qpRange12 (|Seq#Index_29015| hist k_3@@1)) (= (invRecv12 (|Seq#Index_29015| hist k_3@@1)) k_3@@1)))
 :qid |stdinbpl.2409:22|
 :skolemid |181|
 :pattern ( (|Seq#Index_29015| hist k_3@@1))
 :pattern ( (|Seq#Index_29015| hist k_3@@1))
)) (forall ((o_9@@20 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv12 o_9@@20)) (< (invRecv12 o_9@@20) P_2)) (< NoPerm FullPerm)) (qpRange12 o_9@@20)) (= (|Seq#Index_29015| hist (invRecv12 o_9@@20)) o_9@@20))
 :qid |stdinbpl.2413:22|
 :skolemid |182|
 :pattern ( (invRecv12 o_9@@20))
))) (and (forall ((k_3@@2 Int) ) (!  (=> (and (<= 0 k_3@@2) (< k_3@@2 P_2)) (not (= (|Seq#Index_29015| hist k_3@@2) null)))
 :qid |stdinbpl.2419:22|
 :skolemid |183|
 :pattern ( (|Seq#Index_29015| hist k_3@@2))
 :pattern ( (|Seq#Index_29015| hist k_3@@2))
)) (forall ((o_9@@21 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv12 o_9@@21)) (< (invRecv12 o_9@@21) P_2)) (< NoPerm FullPerm)) (qpRange12 o_9@@21)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_29015| hist (invRecv12 o_9@@21)) o_9@@21)) (= (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| QPMask@0) o_9@@21 Ref__Integer_value) (+ (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| ZeroMask) o_9@@21 Ref__Integer_value) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv12 o_9@@21)) (< (invRecv12 o_9@@21) P_2)) (< NoPerm FullPerm)) (qpRange12 o_9@@21))) (= (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| QPMask@0) o_9@@21 Ref__Integer_value) (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| ZeroMask) o_9@@21 Ref__Integer_value))))
 :qid |stdinbpl.2425:22|
 :skolemid |184|
 :pattern ( (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| QPMask@0) o_9@@21 Ref__Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_9@@22 T@Ref) (f_5@@14 T@Field_40898_53) ) (!  (=> true (= (select (|PolymorphicMapType_40859_28958_53#PolymorphicMapType_40859| ZeroMask) o_9@@22 f_5@@14) (select (|PolymorphicMapType_40859_28958_53#PolymorphicMapType_40859| QPMask@0) o_9@@22 f_5@@14)))
 :qid |stdinbpl.2429:29|
 :skolemid |185|
 :pattern ( (select (|PolymorphicMapType_40859_28958_53#PolymorphicMapType_40859| ZeroMask) o_9@@22 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_40859_28958_53#PolymorphicMapType_40859| QPMask@0) o_9@@22 f_5@@14))
)) (forall ((o_9@@23 T@Ref) (f_5@@15 T@Field_40911_40912) ) (!  (=> true (= (select (|PolymorphicMapType_40859_28958_40912#PolymorphicMapType_40859| ZeroMask) o_9@@23 f_5@@15) (select (|PolymorphicMapType_40859_28958_40912#PolymorphicMapType_40859| QPMask@0) o_9@@23 f_5@@15)))
 :qid |stdinbpl.2429:29|
 :skolemid |185|
 :pattern ( (select (|PolymorphicMapType_40859_28958_40912#PolymorphicMapType_40859| ZeroMask) o_9@@23 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_40859_28958_40912#PolymorphicMapType_40859| QPMask@0) o_9@@23 f_5@@15))
))) (forall ((o_9@@24 T@Ref) (f_5@@16 T@Field_46984_3805) ) (!  (=> (not (= f_5@@16 Ref__Integer_value)) (= (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| ZeroMask) o_9@@24 f_5@@16) (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| QPMask@0) o_9@@24 f_5@@16)))
 :qid |stdinbpl.2429:29|
 :skolemid |185|
 :pattern ( (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| ZeroMask) o_9@@24 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| QPMask@0) o_9@@24 f_5@@16))
))) (forall ((o_9@@25 T@Ref) (f_5@@17 T@Field_28958_115466) ) (!  (=> true (= (select (|PolymorphicMapType_40859_28958_115466#PolymorphicMapType_40859| ZeroMask) o_9@@25 f_5@@17) (select (|PolymorphicMapType_40859_28958_115466#PolymorphicMapType_40859| QPMask@0) o_9@@25 f_5@@17)))
 :qid |stdinbpl.2429:29|
 :skolemid |185|
 :pattern ( (select (|PolymorphicMapType_40859_28958_115466#PolymorphicMapType_40859| ZeroMask) o_9@@25 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_40859_28958_115466#PolymorphicMapType_40859| QPMask@0) o_9@@25 f_5@@17))
))) (forall ((o_9@@26 T@Ref) (f_5@@18 T@Field_28958_115599) ) (!  (=> true (= (select (|PolymorphicMapType_40859_28958_119721#PolymorphicMapType_40859| ZeroMask) o_9@@26 f_5@@18) (select (|PolymorphicMapType_40859_28958_119721#PolymorphicMapType_40859| QPMask@0) o_9@@26 f_5@@18)))
 :qid |stdinbpl.2429:29|
 :skolemid |185|
 :pattern ( (select (|PolymorphicMapType_40859_28958_119721#PolymorphicMapType_40859| ZeroMask) o_9@@26 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_40859_28958_119721#PolymorphicMapType_40859| QPMask@0) o_9@@26 f_5@@18))
))) (and (and (state Heap@@49 QPMask@0) (state Heap@@49 QPMask@0)) (and (<= (* M_1 N) (|Seq#Length_29015| matrix_1)) (state Heap@@49 QPMask@0)))) (and (and (=> (= (ControlFlow 0 115) 114) anon58_Else_correct) (=> (= (ControlFlow 0 115) 14) anon59_Then_correct)) (=> (= (ControlFlow 0 115) 19) anon59_Else_correct))))))))
(let ((anon7_correct true))
(let ((anon57_Else_correct  (=> (and (not (and (<= 0 k_23) (< k_23 P_2))) (= (ControlFlow 0 12) 8)) anon7_correct)))
(let ((anon57_Then_correct  (=> (and (<= 0 k_23) (< k_23 P_2)) (and (=> (= (ControlFlow 0 9) (- 0 11)) (>= k_23 0)) (=> (>= k_23 0) (and (=> (= (ControlFlow 0 9) (- 0 10)) (< k_23 (|Seq#Length_29015| hist))) (=> (< k_23 (|Seq#Length_29015| hist)) (=> (= (ControlFlow 0 9) 8) anon7_correct))))))))
(let ((anon54_Else_correct  (=> (and (forall ((j_1 Int) (k_1 Int) ) (!  (=> (and (<= 0 j_1) (and (< j_1 P_2) (and (<= 0 k_1) (and (< k_1 P_2) (not (= j_1 k_1)))))) (not (= (|Seq#Index_29015| hist j_1) (|Seq#Index_29015| hist k_1))))
 :qid |stdinbpl.2385:20|
 :skolemid |179|
 :pattern ( (|Seq#Index_29015| hist j_1) (|Seq#Index_29015| hist k_1))
)) (state Heap@@49 ZeroMask)) (and (and (=> (= (ControlFlow 0 117) 115) anon56_Else_correct) (=> (= (ControlFlow 0 117) 9) anon57_Then_correct)) (=> (= (ControlFlow 0 117) 12) anon57_Else_correct)))))
(let ((anon3_correct true))
(let ((anon55_Else_correct  (=> (and (not (and (<= 0 j_22) (and (< j_22 P_2) (and (<= 0 k_31) (and (< k_31 P_2) (not (= j_22 k_31))))))) (= (ControlFlow 0 7) 1)) anon3_correct)))
(let ((anon55_Then_correct  (=> (and (<= 0 j_22) (and (< j_22 P_2) (and (<= 0 k_31) (and (< k_31 P_2) (not (= j_22 k_31)))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= j_22 0)) (=> (>= j_22 0) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< j_22 (|Seq#Length_29015| hist))) (=> (< j_22 (|Seq#Length_29015| hist)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= k_31 0)) (=> (>= k_31 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< k_31 (|Seq#Length_29015| hist))) (=> (< k_31 (|Seq#Length_29015| hist)) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))))))))
(let ((anon0_correct  (=> (and (state Heap@@49 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (=> (and (and AssumePermUpperBound (select (|PolymorphicMapType_40838_28702_53#PolymorphicMapType_40838| Heap@@49) diz $allocated)) (and (not (= diz null)) (state Heap@@49 ZeroMask))) (=> (and (and (and (>= current_thread_id 0) (state Heap@@49 ZeroMask)) (and (> M_1 0) (> N 0))) (and (and (> P_2 0) (state Heap@@49 ZeroMask)) (and (<= P_2 (|Seq#Length_29015| hist)) (state Heap@@49 ZeroMask)))) (and (and (=> (= (ControlFlow 0 118) 117) anon54_Else_correct) (=> (= (ControlFlow 0 118) 2) anon55_Then_correct)) (=> (= (ControlFlow 0 118) 7) anon55_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (> wildcard 0.0) true) (= (ControlFlow 0 119) 118)) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))
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
(declare-sort T@Field_40898_53 0)
(declare-sort T@Field_40911_40912 0)
(declare-sort T@Field_46984_3805 0)
(declare-sort T@Field_28958_115599 0)
(declare-sort T@Field_28958_115466 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_40859 0)) (((PolymorphicMapType_40859 (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| (Array T@Ref T@Field_46984_3805 Real)) (|PolymorphicMapType_40859_28958_53#PolymorphicMapType_40859| (Array T@Ref T@Field_40898_53 Real)) (|PolymorphicMapType_40859_28958_40912#PolymorphicMapType_40859| (Array T@Ref T@Field_40911_40912 Real)) (|PolymorphicMapType_40859_28958_115466#PolymorphicMapType_40859| (Array T@Ref T@Field_28958_115466 Real)) (|PolymorphicMapType_40859_28958_119721#PolymorphicMapType_40859| (Array T@Ref T@Field_28958_115599 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_41387 0)) (((PolymorphicMapType_41387 (|PolymorphicMapType_41387_40898_53#PolymorphicMapType_41387| (Array T@Ref T@Field_40898_53 Bool)) (|PolymorphicMapType_41387_40898_40912#PolymorphicMapType_41387| (Array T@Ref T@Field_40911_40912 Bool)) (|PolymorphicMapType_41387_40898_3805#PolymorphicMapType_41387| (Array T@Ref T@Field_46984_3805 Bool)) (|PolymorphicMapType_41387_40898_115466#PolymorphicMapType_41387| (Array T@Ref T@Field_28958_115466 Bool)) (|PolymorphicMapType_41387_40898_116777#PolymorphicMapType_41387| (Array T@Ref T@Field_28958_115599 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_40838 0)) (((PolymorphicMapType_40838 (|PolymorphicMapType_40838_28702_53#PolymorphicMapType_40838| (Array T@Ref T@Field_40898_53 Bool)) (|PolymorphicMapType_40838_28705_28706#PolymorphicMapType_40838| (Array T@Ref T@Field_40911_40912 T@Ref)) (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| (Array T@Ref T@Field_46984_3805 Int)) (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| (Array T@Ref T@Field_28958_115599 T@PolymorphicMapType_41387)) (|PolymorphicMapType_40838_40898_115466#PolymorphicMapType_40838| (Array T@Ref T@Field_28958_115466 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_40898_53)
(declare-fun Ref__Integer_value () T@Field_46984_3805)
(declare-sort T@Seq_50030 0)
(declare-fun |Seq#Length_29015| (T@Seq_50030) Int)
(declare-fun |Seq#Drop_29015| (T@Seq_50030 Int) T@Seq_50030)
(declare-sort T@Seq_3683 0)
(declare-fun |Seq#Length_3683| (T@Seq_3683) Int)
(declare-fun |Seq#Drop_3683| (T@Seq_3683 Int) T@Seq_3683)
(declare-fun state (T@PolymorphicMapType_40838 T@PolymorphicMapType_40859) Bool)
(declare-fun |Ref__multidim_index_2'| (T@PolymorphicMapType_40838 Int Int Int Int) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |Ref__multidim_index_2#trigger| (T@FrameType Int Int Int Int) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |count_square'| (T@PolymorphicMapType_40838 Int Int Int Int Int Int T@Seq_50030 Int) Int)
(declare-fun |count_square#frame| (T@FrameType Int Int Int Int Int Int T@Seq_50030 Int) Int)
(declare-fun FrameFragment_5496 (Int) T@FrameType)
(declare-fun |count_square#condqp3| (T@PolymorphicMapType_40838 Int Int Int Int Int Int T@Seq_50030 Int) Int)
(declare-fun succHeap (T@PolymorphicMapType_40838 T@PolymorphicMapType_40838) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_40838 T@PolymorphicMapType_40838) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_40859) Bool)
(declare-fun |sum_list'| (T@PolymorphicMapType_40838 Int Int T@Seq_3683) Int)
(declare-fun dummyFunction_4485 (Int) Bool)
(declare-fun |sum_list#triggerStateless| (Int Int T@Seq_3683) Int)
(declare-fun ZeroPMask () T@PolymorphicMapType_41387)
(declare-fun |Seq#Index_29015| (T@Seq_50030 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3683| (T@Seq_3683 Int) Int)
(declare-fun |Seq#Empty_29015| () T@Seq_50030)
(declare-fun |Seq#Empty_3683| () T@Seq_3683)
(declare-fun |Seq#Update_29015| (T@Seq_50030 Int T@Ref) T@Seq_50030)
(declare-fun |Seq#Update_3683| (T@Seq_3683 Int Int) T@Seq_3683)
(declare-fun |Seq#Take_29015| (T@Seq_50030 Int) T@Seq_50030)
(declare-fun |Seq#Take_3683| (T@Seq_3683 Int) T@Seq_3683)
(declare-fun |Seq#Contains_3683| (T@Seq_3683 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3683)
(declare-fun |Seq#Contains_50030| (T@Seq_50030 T@Ref) Bool)
(declare-fun |Seq#Skolem_50030| (T@Seq_50030 T@Ref) Int)
(declare-fun |Seq#Skolem_3683| (T@Seq_3683 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_40838 T@PolymorphicMapType_40838 T@PolymorphicMapType_40859) Bool)
(declare-fun IsPredicateField_28958_115557 (T@Field_28958_115466) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_28958 (T@Field_28958_115466) T@Field_28958_115599)
(declare-fun HasDirectPerm_28958_115530 (T@PolymorphicMapType_40859 T@Ref T@Field_28958_115466) Bool)
(declare-fun IsWandField_28958_117304 (T@Field_28958_115466) Bool)
(declare-fun WandMaskField_28958 (T@Field_28958_115466) T@Field_28958_115599)
(declare-fun |Seq#Singleton_29015| (T@Ref) T@Seq_50030)
(declare-fun |Seq#Singleton_3683| (Int) T@Seq_3683)
(declare-fun count_square (T@PolymorphicMapType_40838 Int Int Int Int Int Int T@Seq_50030 Int) Int)
(declare-fun |count_square#triggerStateless| (Int Int Int Int Int Int T@Seq_50030 Int) Int)
(declare-fun |Seq#Append_50030| (T@Seq_50030 T@Seq_50030) T@Seq_50030)
(declare-fun |Seq#Append_3683| (T@Seq_3683 T@Seq_3683) T@Seq_3683)
(declare-fun sum_array (T@PolymorphicMapType_40838 Int Int Int T@Seq_50030) Int)
(declare-fun |sum_array'| (T@PolymorphicMapType_40838 Int Int Int T@Seq_50030) Int)
(declare-fun |sum_square#condqp2| (T@PolymorphicMapType_40838 Int Int Int Int Int Int T@Seq_50030) Int)
(declare-fun |sk_sum_square#condqp2| (Int Int) Int)
(declare-fun sum_square (T@PolymorphicMapType_40838 Int Int Int Int Int Int T@Seq_50030) Int)
(declare-fun |sum_square'| (T@PolymorphicMapType_40838 Int Int Int Int Int Int T@Seq_50030) Int)
(declare-fun |sk_count_square#condqp3| (Int Int) Int)
(declare-fun dummyHeap () T@PolymorphicMapType_40838)
(declare-fun ZeroMask () T@PolymorphicMapType_40859)
(declare-fun InsidePredicate_40898_40898 (T@Field_28958_115466 T@FrameType T@Field_28958_115466 T@FrameType) Bool)
(declare-fun IsPredicateField_28958_3805 (T@Field_46984_3805) Bool)
(declare-fun IsWandField_28958_3805 (T@Field_46984_3805) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_28958_120850 (T@Field_28958_115599) Bool)
(declare-fun IsWandField_28958_120866 (T@Field_28958_115599) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_28958_40912 (T@Field_40911_40912) Bool)
(declare-fun IsWandField_28958_40912 (T@Field_40911_40912) Bool)
(declare-fun IsPredicateField_28958_53 (T@Field_40898_53) Bool)
(declare-fun IsWandField_28958_53 (T@Field_40898_53) Bool)
(declare-fun |sum_list#frame| (T@FrameType Int Int T@Seq_3683) Int)
(declare-fun HasDirectPerm_28958_121304 (T@PolymorphicMapType_40859 T@Ref T@Field_28958_115599) Bool)
(declare-fun HasDirectPerm_28958_40912 (T@PolymorphicMapType_40859 T@Ref T@Field_40911_40912) Bool)
(declare-fun HasDirectPerm_28958_53 (T@PolymorphicMapType_40859 T@Ref T@Field_40898_53) Bool)
(declare-fun HasDirectPerm_28958_3805 (T@PolymorphicMapType_40859 T@Ref T@Field_46984_3805) Bool)
(declare-fun |Ref__multidim_index_2#triggerStateless| (Int Int Int Int) Int)
(declare-fun |sum_array#triggerStateless| (Int Int Int T@Seq_50030) Int)
(declare-fun |count_list'| (T@PolymorphicMapType_40838 Int Int T@Seq_3683 Int) Int)
(declare-fun |count_list#triggerStateless| (Int Int T@Seq_3683 Int) Int)
(declare-fun |count_array'| (T@PolymorphicMapType_40838 Int Int T@Seq_50030 Int) Int)
(declare-fun |count_array#triggerStateless| (Int Int T@Seq_50030 Int) Int)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun count_list (T@PolymorphicMapType_40838 Int Int T@Seq_3683 Int) Int)
(declare-fun Ref__multidim_index_2 (T@PolymorphicMapType_40838 Int Int Int Int) Int)
(declare-fun count_array (T@PolymorphicMapType_40838 Int Int T@Seq_50030 Int) Int)
(declare-fun sumMask (T@PolymorphicMapType_40859 T@PolymorphicMapType_40859 T@PolymorphicMapType_40859) Bool)
(declare-fun |sum_square#triggerStateless| (Int Int Int Int Int Int T@Seq_50030) Int)
(declare-fun |Ref__multidim_index_2#frame| (T@FrameType Int Int Int Int) Int)
(declare-fun |count_list#frame| (T@FrameType Int Int T@Seq_3683 Int) Int)
(declare-fun |Seq#Equal_50030| (T@Seq_50030 T@Seq_50030) Bool)
(declare-fun |Seq#Equal_3683| (T@Seq_3683 T@Seq_3683) Bool)
(declare-fun sum_list (T@PolymorphicMapType_40838 Int Int T@Seq_3683) Int)
(declare-fun |Seq#ContainsTrigger_29015| (T@Seq_50030 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3683| (T@Seq_3683 Int) Bool)
(declare-fun |count_array#condqp4| (T@PolymorphicMapType_40838 Int Int T@Seq_50030 Int) Int)
(declare-fun |sk_count_array#condqp4| (Int Int) Int)
(declare-fun |sum_array#condqp1| (T@PolymorphicMapType_40838 Int Int Int T@Seq_50030) Int)
(declare-fun |sk_sum_array#condqp1| (Int Int) Int)
(declare-fun |sum_square#frame| (T@FrameType Int Int Int Int Int Int T@Seq_50030) Int)
(declare-fun |Seq#SkolemDiff_50030| (T@Seq_50030 T@Seq_50030) Int)
(declare-fun |Seq#SkolemDiff_3683| (T@Seq_3683 T@Seq_3683) Int)
(declare-fun |sum_array#frame| (T@FrameType Int Int Int T@Seq_50030) Int)
(declare-fun |count_array#frame| (T@FrameType Int Int T@Seq_50030 Int) Int)
(assert (forall ((s T@Seq_50030) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_29015| s)) (= (|Seq#Length_29015| (|Seq#Drop_29015| s n)) (- (|Seq#Length_29015| s) n))) (=> (< (|Seq#Length_29015| s) n) (= (|Seq#Length_29015| (|Seq#Drop_29015| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_29015| (|Seq#Drop_29015| s n)) (|Seq#Length_29015| s))))
 :qid |stdinbpl.396:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_29015| (|Seq#Drop_29015| s n)))
 :pattern ( (|Seq#Length_29015| s) (|Seq#Drop_29015| s n))
)))
(assert (forall ((s@@0 T@Seq_3683) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3683| s@@0)) (= (|Seq#Length_3683| (|Seq#Drop_3683| s@@0 n@@0)) (- (|Seq#Length_3683| s@@0) n@@0))) (=> (< (|Seq#Length_3683| s@@0) n@@0) (= (|Seq#Length_3683| (|Seq#Drop_3683| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3683| (|Seq#Drop_3683| s@@0 n@@0)) (|Seq#Length_3683| s@@0))))
 :qid |stdinbpl.396:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3683| (|Seq#Drop_3683| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3683| s@@0) (|Seq#Drop_3683| s@@0 n@@0))
)))
(assert (forall ((Heap T@PolymorphicMapType_40838) (Mask T@PolymorphicMapType_40859) (N0 Int) (N1 Int) (i0_3 Int) (i1_9 Int) ) (!  (=> (and (state Heap Mask) (or (< AssumeFunctionsAbove 1) (|Ref__multidim_index_2#trigger| EmptyFrame N0 N1 i0_3 i1_9))) (=> (and (and (and (and (and (<= 0 i0_3) (< i0_3 N0)) (<= 0 N0)) (<= 0 i1_9)) (< i1_9 N1)) (<= 0 N1)) (= (|Ref__multidim_index_2'| Heap N0 N1 i0_3 i1_9) (+ (* i0_3 N1) i1_9))))
 :qid |stdinbpl.703:15|
 :skolemid |63|
 :pattern ( (state Heap Mask) (|Ref__multidim_index_2'| Heap N0 N1 i0_3 i1_9))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_40838) (Mask@@0 T@PolymorphicMapType_40859) (i Int) (lo Int) (hi Int) (step Int) (vmin Int) (vmax_1 Int) (ar_1 T@Seq_50030) (v_2 Int) ) (!  (=> (state Heap@@0 Mask@@0) (= (|count_square'| Heap@@0 i lo hi step vmin vmax_1 ar_1 v_2) (|count_square#frame| (FrameFragment_5496 (|count_square#condqp3| Heap@@0 i lo hi step vmin vmax_1 ar_1 v_2)) i lo hi step vmin vmax_1 ar_1 v_2)))
 :qid |stdinbpl.1381:15|
 :skolemid |116|
 :pattern ( (state Heap@@0 Mask@@0) (|count_square'| Heap@@0 i lo hi step vmin vmax_1 ar_1 v_2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_40838) (Mask@@1 T@PolymorphicMapType_40859) (N0@@0 Int) (N1@@0 Int) (i0_3@@0 Int) (i1_9@@0 Int) ) (!  (=> (and (state Heap@@1 Mask@@1) (or (< AssumeFunctionsAbove 1) (|Ref__multidim_index_2#trigger| EmptyFrame N0@@0 N1@@0 i0_3@@0 i1_9@@0))) (=> (and (and (and (and (and (<= 0 i0_3@@0) (< i0_3@@0 N0@@0)) (<= 0 N0@@0)) (<= 0 i1_9@@0)) (< i1_9@@0 N1@@0)) (<= 0 N1@@0)) (< (mod (|Ref__multidim_index_2'| Heap@@1 N0@@0 N1@@0 i0_3@@0 i1_9@@0) N1@@0) N0@@0)))
 :qid |stdinbpl.711:15|
 :skolemid |65|
 :pattern ( (state Heap@@1 Mask@@1) (|Ref__multidim_index_2'| Heap@@1 N0@@0 N1@@0 i0_3@@0 i1_9@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_40838) (Heap1 T@PolymorphicMapType_40838) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_40838) (Mask@@2 T@PolymorphicMapType_40859) ) (!  (=> (state Heap@@2 Mask@@2) (GoodMask Mask@@2))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@2 Mask@@2))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_40838) (Heap1@@0 T@PolymorphicMapType_40838) (Heap2 T@PolymorphicMapType_40838) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_40838) (i@@0 Int) (hi@@0 Int) (ar_1@@0 T@Seq_3683) ) (! (dummyFunction_4485 (|sum_list#triggerStateless| i@@0 hi@@0 ar_1@@0))
 :qid |stdinbpl.779:15|
 :skolemid |67|
 :pattern ( (|sum_list'| Heap@@3 i@@0 hi@@0 ar_1@@0))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_28958_115599) ) (!  (not (select (|PolymorphicMapType_41387_40898_116777#PolymorphicMapType_41387| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_41387_40898_116777#PolymorphicMapType_41387| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_28958_115466) ) (!  (not (select (|PolymorphicMapType_41387_40898_115466#PolymorphicMapType_41387| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_41387_40898_115466#PolymorphicMapType_41387| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_46984_3805) ) (!  (not (select (|PolymorphicMapType_41387_40898_3805#PolymorphicMapType_41387| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_41387_40898_3805#PolymorphicMapType_41387| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_40911_40912) ) (!  (not (select (|PolymorphicMapType_41387_40898_40912#PolymorphicMapType_41387| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_41387_40898_40912#PolymorphicMapType_41387| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_40898_53) ) (!  (not (select (|PolymorphicMapType_41387_40898_53#PolymorphicMapType_41387| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_41387_40898_53#PolymorphicMapType_41387| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((s@@1 T@Seq_50030) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_29015| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_29015| (|Seq#Drop_29015| s@@1 n@@1) j) (|Seq#Index_29015| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.417:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_29015| (|Seq#Drop_29015| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3683) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3683| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3683| (|Seq#Drop_3683| s@@2 n@@2) j@@0) (|Seq#Index_3683| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.417:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3683| (|Seq#Drop_3683| s@@2 n@@2) j@@0))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_40838) (Mask@@3 T@PolymorphicMapType_40859) (N0@@1 Int) (N1@@1 Int) (i0_3@@1 Int) (i1_9@@1 Int) ) (!  (=> (and (state Heap@@4 Mask@@3) (or (< AssumeFunctionsAbove 1) (|Ref__multidim_index_2#trigger| EmptyFrame N0@@1 N1@@1 i0_3@@1 i1_9@@1))) (=> (and (and (and (and (and (<= 0 i0_3@@1) (< i0_3@@1 N0@@1)) (<= 0 N0@@1)) (<= 0 i1_9@@1)) (< i1_9@@1 N1@@1)) (<= 0 N1@@1)) (= (mod (|Ref__multidim_index_2'| Heap@@4 N0@@1 N1@@1 i0_3@@1 i1_9@@1) N1@@1) i1_9@@1)))
 :qid |stdinbpl.707:15|
 :skolemid |64|
 :pattern ( (state Heap@@4 Mask@@3) (|Ref__multidim_index_2'| Heap@@4 N0@@1 N1@@1 i0_3@@1 i1_9@@1))
)))
(assert (= (|Seq#Length_29015| |Seq#Empty_29015|) 0))
(assert (= (|Seq#Length_3683| |Seq#Empty_3683|) 0))
(assert (forall ((s@@3 T@Seq_50030) (i@@1 Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_29015| s@@3))) (and (=> (= i@@1 n@@3) (= (|Seq#Index_29015| (|Seq#Update_29015| s@@3 i@@1 v) n@@3) v)) (=> (not (= i@@1 n@@3)) (= (|Seq#Index_29015| (|Seq#Update_29015| s@@3 i@@1 v) n@@3) (|Seq#Index_29015| s@@3 n@@3)))))
 :qid |stdinbpl.372:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_29015| (|Seq#Update_29015| s@@3 i@@1 v) n@@3))
 :pattern ( (|Seq#Index_29015| s@@3 n@@3) (|Seq#Update_29015| s@@3 i@@1 v))
)))
(assert (forall ((s@@4 T@Seq_3683) (i@@2 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3683| s@@4))) (and (=> (= i@@2 n@@4) (= (|Seq#Index_3683| (|Seq#Update_3683| s@@4 i@@2 v@@0) n@@4) v@@0)) (=> (not (= i@@2 n@@4)) (= (|Seq#Index_3683| (|Seq#Update_3683| s@@4 i@@2 v@@0) n@@4) (|Seq#Index_3683| s@@4 n@@4)))))
 :qid |stdinbpl.372:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3683| (|Seq#Update_3683| s@@4 i@@2 v@@0) n@@4))
 :pattern ( (|Seq#Index_3683| s@@4 n@@4) (|Seq#Update_3683| s@@4 i@@2 v@@0))
)))
(assert (forall ((s@@5 T@Seq_50030) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_29015| s@@5)) (= (|Seq#Length_29015| (|Seq#Take_29015| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_29015| s@@5) n@@5) (= (|Seq#Length_29015| (|Seq#Take_29015| s@@5 n@@5)) (|Seq#Length_29015| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_29015| (|Seq#Take_29015| s@@5 n@@5)) 0)))
 :qid |stdinbpl.383:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_29015| (|Seq#Take_29015| s@@5 n@@5)))
 :pattern ( (|Seq#Take_29015| s@@5 n@@5) (|Seq#Length_29015| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3683) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3683| s@@6)) (= (|Seq#Length_3683| (|Seq#Take_3683| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3683| s@@6) n@@6) (= (|Seq#Length_3683| (|Seq#Take_3683| s@@6 n@@6)) (|Seq#Length_3683| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3683| (|Seq#Take_3683| s@@6 n@@6)) 0)))
 :qid |stdinbpl.383:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3683| (|Seq#Take_3683| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3683| s@@6 n@@6) (|Seq#Length_3683| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3683| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.657:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3683| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_50030) (x T@Ref) ) (!  (=> (|Seq#Contains_50030| s@@7 x) (and (and (<= 0 (|Seq#Skolem_50030| s@@7 x)) (< (|Seq#Skolem_50030| s@@7 x) (|Seq#Length_29015| s@@7))) (= (|Seq#Index_29015| s@@7 (|Seq#Skolem_50030| s@@7 x)) x)))
 :qid |stdinbpl.515:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_50030| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3683) (x@@0 Int) ) (!  (=> (|Seq#Contains_3683| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3683| s@@8 x@@0)) (< (|Seq#Skolem_3683| s@@8 x@@0) (|Seq#Length_3683| s@@8))) (= (|Seq#Index_3683| s@@8 (|Seq#Skolem_3683| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.515:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3683| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_50030) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_29015| s@@9 n@@7) s@@9))
 :qid |stdinbpl.499:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_29015| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3683) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3683| s@@10 n@@8) s@@10))
 :qid |stdinbpl.499:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3683| s@@10 n@@8))
)))
(assert (forall ((i@@3 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@3 j@@1) (- i@@3 j@@1))
 :qid |stdinbpl.352:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@3 j@@1))
)))
(assert (forall ((i@@4 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@4 j@@2) (+ i@@4 j@@2))
 :qid |stdinbpl.350:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@4 j@@2))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_40838) (ExhaleHeap T@PolymorphicMapType_40838) (Mask@@4 T@PolymorphicMapType_40859) (pm_f_52 T@Field_28958_115466) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@4) (=> (and (HasDirectPerm_28958_115530 Mask@@4 null pm_f_52) (IsPredicateField_28958_115557 pm_f_52)) (= (select (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| Heap@@5) null (PredicateMaskField_28958 pm_f_52)) (select (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| ExhaleHeap) null (PredicateMaskField_28958 pm_f_52)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@4) (IsPredicateField_28958_115557 pm_f_52) (select (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| ExhaleHeap) null (PredicateMaskField_28958 pm_f_52)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_40838) (ExhaleHeap@@0 T@PolymorphicMapType_40838) (Mask@@5 T@PolymorphicMapType_40859) (pm_f_52@@0 T@Field_28958_115466) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@5) (=> (and (HasDirectPerm_28958_115530 Mask@@5 null pm_f_52@@0) (IsWandField_28958_117304 pm_f_52@@0)) (= (select (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| Heap@@6) null (WandMaskField_28958 pm_f_52@@0)) (select (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| ExhaleHeap@@0) null (WandMaskField_28958 pm_f_52@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@5) (IsWandField_28958_117304 pm_f_52@@0) (select (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| ExhaleHeap@@0) null (WandMaskField_28958 pm_f_52@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_50030| (|Seq#Singleton_29015| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.640:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_50030| (|Seq#Singleton_29015| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3683| (|Seq#Singleton_3683| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.640:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3683| (|Seq#Singleton_3683| x@@2) y@@0))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_40838) (i@@5 Int) (lo@@0 Int) (hi@@1 Int) (step@@0 Int) (vmin@@0 Int) (vmax_1@@0 Int) (ar_1@@1 T@Seq_50030) (v_2@@0 Int) ) (!  (and (= (count_square Heap@@7 i@@5 lo@@0 hi@@1 step@@0 vmin@@0 vmax_1@@0 ar_1@@1 v_2@@0) (|count_square'| Heap@@7 i@@5 lo@@0 hi@@1 step@@0 vmin@@0 vmax_1@@0 ar_1@@1 v_2@@0)) (dummyFunction_4485 (|count_square#triggerStateless| i@@5 lo@@0 hi@@1 step@@0 vmin@@0 vmax_1@@0 ar_1@@1 v_2@@0)))
 :qid |stdinbpl.1361:15|
 :skolemid |112|
 :pattern ( (count_square Heap@@7 i@@5 lo@@0 hi@@1 step@@0 vmin@@0 vmax_1@@0 ar_1@@1 v_2@@0))
)))
(assert (forall ((s@@11 T@Seq_50030) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_29015| s@@11))) (= (|Seq#Index_29015| (|Seq#Take_29015| s@@11 n@@9) j@@3) (|Seq#Index_29015| s@@11 j@@3)))
 :qid |stdinbpl.391:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_29015| (|Seq#Take_29015| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_29015| s@@11 j@@3) (|Seq#Take_29015| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3683) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3683| s@@12))) (= (|Seq#Index_3683| (|Seq#Take_3683| s@@12 n@@10) j@@4) (|Seq#Index_3683| s@@12 j@@4)))
 :qid |stdinbpl.391:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3683| (|Seq#Take_3683| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3683| s@@12 j@@4) (|Seq#Take_3683| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_50030) (t T@Seq_50030) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_29015| s@@13))) (< n@@11 (|Seq#Length_29015| (|Seq#Append_50030| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_29015| s@@13)) (|Seq#Length_29015| s@@13)) n@@11) (= (|Seq#Take_29015| (|Seq#Append_50030| s@@13 t) n@@11) (|Seq#Append_50030| s@@13 (|Seq#Take_29015| t (|Seq#Sub| n@@11 (|Seq#Length_29015| s@@13)))))))
 :qid |stdinbpl.476:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_29015| (|Seq#Append_50030| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3683) (t@@0 T@Seq_3683) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3683| s@@14))) (< n@@12 (|Seq#Length_3683| (|Seq#Append_3683| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3683| s@@14)) (|Seq#Length_3683| s@@14)) n@@12) (= (|Seq#Take_3683| (|Seq#Append_3683| s@@14 t@@0) n@@12) (|Seq#Append_3683| s@@14 (|Seq#Take_3683| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3683| s@@14)))))))
 :qid |stdinbpl.476:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3683| (|Seq#Append_3683| s@@14 t@@0) n@@12))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_40838) (i@@6 Int) (lo@@1 Int) (hi@@2 Int) (step@@1 Int) (vmin@@1 Int) (vmax_1@@1 Int) (ar_1@@2 T@Seq_50030) (v_2@@1 Int) ) (! (dummyFunction_4485 (|count_square#triggerStateless| i@@6 lo@@1 hi@@2 step@@1 vmin@@1 vmax_1@@1 ar_1@@2 v_2@@1))
 :qid |stdinbpl.1365:15|
 :skolemid |113|
 :pattern ( (|count_square'| Heap@@8 i@@6 lo@@1 hi@@2 step@@1 vmin@@1 vmax_1@@1 ar_1@@2 v_2@@1))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_40838) (Mask@@6 T@PolymorphicMapType_40859) (i@@7 Int) (lo@@2 Int) (hi@@3 Int) (ar_1@@3 T@Seq_50030) ) (!  (=> (and (state Heap@@9 Mask@@6) (< AssumeFunctionsAbove 4)) (=> (and (and (and (<= 0 lo@@2) (and (<= lo@@2 i@@7) (<= i@@7 hi@@3))) (<= hi@@3 (|Seq#Length_29015| ar_1@@3))) (forall ((j@@5 Int) (k Int) ) (!  (=> (and (<= 0 j@@5) (and (< j@@5 hi@@3) (and (<= 0 k) (and (< k hi@@3) (not (= j@@5 k)))))) (not (= (|Seq#Index_29015| ar_1@@3 j@@5) (|Seq#Index_29015| ar_1@@3 k))))
 :qid |stdinbpl.872:126|
 :skolemid |72|
 :pattern ( (|Seq#Index_29015| ar_1@@3 j@@5) (|Seq#Index_29015| ar_1@@3 k))
))) (= (sum_array Heap@@9 i@@7 lo@@2 hi@@3 ar_1@@3) (ite (< i@@7 hi@@3) (+ (select (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| Heap@@9) (|Seq#Index_29015| ar_1@@3 i@@7) Ref__Integer_value) (|sum_array'| Heap@@9 (+ i@@7 1) lo@@2 hi@@3 ar_1@@3)) 0))))
 :qid |stdinbpl.870:15|
 :skolemid |73|
 :pattern ( (state Heap@@9 Mask@@6) (sum_array Heap@@9 i@@7 lo@@2 hi@@3 ar_1@@3))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_40838) (Heap1Heap T@PolymorphicMapType_40838) (i@@8 Int) (lo@@3 Int) (hi@@4 Int) (step@@2 Int) (vmin@@2 Int) (vmax_1@@2 Int) (ar_1@@4 T@Seq_50030) ) (!  (=> (and (=  (and (<= vmin@@2 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) vmax_1@@2) (and (<= lo@@3 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2) hi@@4))))  (and (<= vmin@@2 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) vmax_1@@2) (and (<= lo@@3 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2) hi@@4))))) (=> (and (<= vmin@@2 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) vmax_1@@2) (and (<= lo@@3 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2) hi@@4)))) (= (select (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| Heap2Heap) (|Seq#Index_29015| ar_1@@4 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) Ref__Integer_value) (select (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| Heap1Heap) (|Seq#Index_29015| ar_1@@4 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) Ref__Integer_value)))) (= (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)))
 :qid |stdinbpl.1125:15|
 :skolemid |96|
 :pattern ( (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_40838) (Mask@@7 T@PolymorphicMapType_40859) (i@@9 Int) (lo@@4 Int) (hi@@5 Int) (step@@3 Int) (vmin@@3 Int) (vmax_1@@3 Int) (ar_1@@5 T@Seq_50030) ) (!  (=> (and (state Heap@@10 Mask@@7) (< AssumeFunctionsAbove 2)) (=> (and (and (and (and (<= 0 lo@@4) (and (<= lo@@4 hi@@5) (and (<= hi@@5 step@@3) (> step@@3 0)))) (and (<= 0 vmin@@3) (and (<= vmin@@3 i@@9) (<= i@@9 vmax_1@@3)))) (<= vmax_1@@3 (|Seq#Length_29015| ar_1@@5))) (forall ((j@@6 Int) (k@@0 Int) ) (!  (=> (and (<= 0 j@@6) (and (< j@@6 (|Seq#Length_29015| ar_1@@5)) (and (<= 0 k@@0) (and (< k@@0 (|Seq#Length_29015| ar_1@@5)) (not (= j@@6 k@@0)))))) (not (= (|Seq#Index_29015| ar_1@@5 j@@6) (|Seq#Index_29015| ar_1@@5 k@@0))))
 :qid |stdinbpl.1107:195|
 :skolemid |93|
 :pattern ( (|Seq#Index_29015| ar_1@@5 j@@6) (|Seq#Index_29015| ar_1@@5 k@@0))
))) (= (sum_square Heap@@10 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5) (ite (< i@@9 vmax_1@@3) (+ (ite  (and (<= lo@@4 (mod i@@9 step@@3)) (< (mod i@@9 step@@3) hi@@5)) (select (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| Heap@@10) (|Seq#Index_29015| ar_1@@5 i@@9) Ref__Integer_value) 0) (|sum_square'| Heap@@10 (+ i@@9 1) lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5)) 0))))
 :qid |stdinbpl.1105:15|
 :skolemid |94|
 :pattern ( (state Heap@@10 Mask@@7) (sum_square Heap@@10 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_40838) (Heap1Heap@@0 T@PolymorphicMapType_40838) (i@@10 Int) (lo@@5 Int) (hi@@6 Int) (step@@4 Int) (vmin@@4 Int) (vmax_1@@4 Int) (ar_1@@6 T@Seq_50030) (v_2@@2 Int) ) (!  (=> (and (=  (and (<= vmin@@4 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2)) vmax_1@@4) (and (<= lo@@5 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2)) step@@4)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2)) step@@4) hi@@6))))  (and (<= vmin@@4 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2)) vmax_1@@4) (and (<= lo@@5 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2)) step@@4)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2)) step@@4) hi@@6))))) (=> (and (<= vmin@@4 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2)) vmax_1@@4) (and (<= lo@@5 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2)) step@@4)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2)) step@@4) hi@@6)))) (= (select (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| Heap2Heap@@0) (|Seq#Index_29015| ar_1@@6 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2))) Ref__Integer_value) (select (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| Heap1Heap@@0) (|Seq#Index_29015| ar_1@@6 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2))) Ref__Integer_value)))) (= (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2)))
 :qid |stdinbpl.1391:15|
 :skolemid |117|
 :pattern ( (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@11 T@PolymorphicMapType_40838) (ExhaleHeap@@1 T@PolymorphicMapType_40838) (Mask@@8 T@PolymorphicMapType_40859) (o_144 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@1 Mask@@8) (=> (select (|PolymorphicMapType_40838_28702_53#PolymorphicMapType_40838| Heap@@11) o_144 $allocated) (select (|PolymorphicMapType_40838_28702_53#PolymorphicMapType_40838| ExhaleHeap@@1) o_144 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@1 Mask@@8) (select (|PolymorphicMapType_40838_28702_53#PolymorphicMapType_40838| ExhaleHeap@@1) o_144 $allocated))
)))
(assert (forall ((p T@Field_28958_115466) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_40898_40898 p v_1 p w))
 :qid |stdinbpl.294:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_40898_40898 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_50030) (s1 T@Seq_50030) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_29015|)) (not (= s1 |Seq#Empty_29015|))) (<= (|Seq#Length_29015| s0) n@@13)) (< n@@13 (|Seq#Length_29015| (|Seq#Append_50030| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_29015| s0)) (|Seq#Length_29015| s0)) n@@13) (= (|Seq#Index_29015| (|Seq#Append_50030| s0 s1) n@@13) (|Seq#Index_29015| s1 (|Seq#Sub| n@@13 (|Seq#Length_29015| s0))))))
 :qid |stdinbpl.363:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_29015| (|Seq#Append_50030| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3683) (s1@@0 T@Seq_3683) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3683|)) (not (= s1@@0 |Seq#Empty_3683|))) (<= (|Seq#Length_3683| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3683| (|Seq#Append_3683| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3683| s0@@0)) (|Seq#Length_3683| s0@@0)) n@@14) (= (|Seq#Index_3683| (|Seq#Append_3683| s0@@0 s1@@0) n@@14) (|Seq#Index_3683| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3683| s0@@0))))))
 :qid |stdinbpl.363:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3683| (|Seq#Append_3683| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_28958_3805 Ref__Integer_value)))
(assert  (not (IsWandField_28958_3805 Ref__Integer_value)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_40838) (ExhaleHeap@@2 T@PolymorphicMapType_40838) (Mask@@9 T@PolymorphicMapType_40859) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@2 Mask@@9) (succHeap Heap@@12 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@2 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_40859) (o_2@@4 T@Ref) (f_4@@4 T@Field_28958_115599) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_40859_28958_119721#PolymorphicMapType_40859| Mask@@10) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_28958_120850 f_4@@4))) (not (IsWandField_28958_120866 f_4@@4))) (<= (select (|PolymorphicMapType_40859_28958_119721#PolymorphicMapType_40859| Mask@@10) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_40859_28958_119721#PolymorphicMapType_40859| Mask@@10) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_40859) (o_2@@5 T@Ref) (f_4@@5 T@Field_28958_115466) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_40859_28958_115466#PolymorphicMapType_40859| Mask@@11) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_28958_115557 f_4@@5))) (not (IsWandField_28958_117304 f_4@@5))) (<= (select (|PolymorphicMapType_40859_28958_115466#PolymorphicMapType_40859| Mask@@11) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_40859_28958_115466#PolymorphicMapType_40859| Mask@@11) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_40859) (o_2@@6 T@Ref) (f_4@@6 T@Field_40911_40912) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_40859_28958_40912#PolymorphicMapType_40859| Mask@@12) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_28958_40912 f_4@@6))) (not (IsWandField_28958_40912 f_4@@6))) (<= (select (|PolymorphicMapType_40859_28958_40912#PolymorphicMapType_40859| Mask@@12) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_40859_28958_40912#PolymorphicMapType_40859| Mask@@12) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_40859) (o_2@@7 T@Ref) (f_4@@7 T@Field_40898_53) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_40859_28958_53#PolymorphicMapType_40859| Mask@@13) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_28958_53 f_4@@7))) (not (IsWandField_28958_53 f_4@@7))) (<= (select (|PolymorphicMapType_40859_28958_53#PolymorphicMapType_40859| Mask@@13) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_40859_28958_53#PolymorphicMapType_40859| Mask@@13) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_40859) (o_2@@8 T@Ref) (f_4@@8 T@Field_46984_3805) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| Mask@@14) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_28958_3805 f_4@@8))) (not (IsWandField_28958_3805 f_4@@8))) (<= (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| Mask@@14) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| Mask@@14) o_2@@8 f_4@@8))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_40838) (Mask@@15 T@PolymorphicMapType_40859) (i@@11 Int) (hi@@7 Int) (ar_1@@7 T@Seq_3683) ) (!  (=> (state Heap@@13 Mask@@15) (= (|sum_list'| Heap@@13 i@@11 hi@@7 ar_1@@7) (|sum_list#frame| EmptyFrame i@@11 hi@@7 ar_1@@7)))
 :qid |stdinbpl.792:15|
 :skolemid |69|
 :pattern ( (state Heap@@13 Mask@@15) (|sum_list'| Heap@@13 i@@11 hi@@7 ar_1@@7))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_40859) (o_2@@9 T@Ref) (f_4@@9 T@Field_28958_115599) ) (! (= (HasDirectPerm_28958_121304 Mask@@16 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_40859_28958_119721#PolymorphicMapType_40859| Mask@@16) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_28958_121304 Mask@@16 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_40859) (o_2@@10 T@Ref) (f_4@@10 T@Field_28958_115466) ) (! (= (HasDirectPerm_28958_115530 Mask@@17 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_40859_28958_115466#PolymorphicMapType_40859| Mask@@17) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_28958_115530 Mask@@17 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_40859) (o_2@@11 T@Ref) (f_4@@11 T@Field_40911_40912) ) (! (= (HasDirectPerm_28958_40912 Mask@@18 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_40859_28958_40912#PolymorphicMapType_40859| Mask@@18) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_28958_40912 Mask@@18 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_40859) (o_2@@12 T@Ref) (f_4@@12 T@Field_40898_53) ) (! (= (HasDirectPerm_28958_53 Mask@@19 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_40859_28958_53#PolymorphicMapType_40859| Mask@@19) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_28958_53 Mask@@19 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_40859) (o_2@@13 T@Ref) (f_4@@13 T@Field_46984_3805) ) (! (= (HasDirectPerm_28958_3805 Mask@@20 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| Mask@@20) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_28958_3805 Mask@@20 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_40838) (N0@@2 Int) (N1@@2 Int) (i0_3@@2 Int) (i1_9@@2 Int) ) (! (dummyFunction_4485 (|Ref__multidim_index_2#triggerStateless| N0@@2 N1@@2 i0_3@@2 i1_9@@2))
 :qid |stdinbpl.682:15|
 :skolemid |59|
 :pattern ( (|Ref__multidim_index_2'| Heap@@14 N0@@2 N1@@2 i0_3@@2 i1_9@@2))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_40838) (i@@12 Int) (lo@@6 Int) (hi@@8 Int) (ar_1@@8 T@Seq_50030) ) (! (dummyFunction_4485 (|sum_array#triggerStateless| i@@12 lo@@6 hi@@8 ar_1@@8))
 :qid |stdinbpl.864:15|
 :skolemid |71|
 :pattern ( (|sum_array'| Heap@@15 i@@12 lo@@6 hi@@8 ar_1@@8))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_40838) (i@@13 Int) (hi@@9 Int) (ar_1@@9 T@Seq_3683) (v_2@@3 Int) ) (! (dummyFunction_4485 (|count_list#triggerStateless| i@@13 hi@@9 ar_1@@9 v_2@@3))
 :qid |stdinbpl.1631:15|
 :skolemid |134|
 :pattern ( (|count_list'| Heap@@16 i@@13 hi@@9 ar_1@@9 v_2@@3))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_40838) (i@@14 Int) (hi@@10 Int) (ar_1@@10 T@Seq_50030) (v_2@@4 Int) ) (! (dummyFunction_4485 (|count_array#triggerStateless| i@@14 hi@@10 ar_1@@10 v_2@@4))
 :qid |stdinbpl.1716:15|
 :skolemid |138|
 :pattern ( (|count_array'| Heap@@17 i@@14 hi@@10 ar_1@@10 v_2@@4))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_40838) (ExhaleHeap@@3 T@PolymorphicMapType_40838) (Mask@@21 T@PolymorphicMapType_40859) (pm_f_52@@1 T@Field_28958_115466) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@3 Mask@@21) (=> (and (HasDirectPerm_28958_115530 Mask@@21 null pm_f_52@@1) (IsPredicateField_28958_115557 pm_f_52@@1)) (and (and (and (and (forall ((o2_53 T@Ref) (f_75 T@Field_40898_53) ) (!  (=> (select (|PolymorphicMapType_41387_40898_53#PolymorphicMapType_41387| (select (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| Heap@@18) null (PredicateMaskField_28958 pm_f_52@@1))) o2_53 f_75) (= (select (|PolymorphicMapType_40838_28702_53#PolymorphicMapType_40838| Heap@@18) o2_53 f_75) (select (|PolymorphicMapType_40838_28702_53#PolymorphicMapType_40838| ExhaleHeap@@3) o2_53 f_75)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40838_28702_53#PolymorphicMapType_40838| ExhaleHeap@@3) o2_53 f_75))
)) (forall ((o2_53@@0 T@Ref) (f_75@@0 T@Field_40911_40912) ) (!  (=> (select (|PolymorphicMapType_41387_40898_40912#PolymorphicMapType_41387| (select (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| Heap@@18) null (PredicateMaskField_28958 pm_f_52@@1))) o2_53@@0 f_75@@0) (= (select (|PolymorphicMapType_40838_28705_28706#PolymorphicMapType_40838| Heap@@18) o2_53@@0 f_75@@0) (select (|PolymorphicMapType_40838_28705_28706#PolymorphicMapType_40838| ExhaleHeap@@3) o2_53@@0 f_75@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40838_28705_28706#PolymorphicMapType_40838| ExhaleHeap@@3) o2_53@@0 f_75@@0))
))) (forall ((o2_53@@1 T@Ref) (f_75@@1 T@Field_46984_3805) ) (!  (=> (select (|PolymorphicMapType_41387_40898_3805#PolymorphicMapType_41387| (select (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| Heap@@18) null (PredicateMaskField_28958 pm_f_52@@1))) o2_53@@1 f_75@@1) (= (select (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| Heap@@18) o2_53@@1 f_75@@1) (select (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| ExhaleHeap@@3) o2_53@@1 f_75@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| ExhaleHeap@@3) o2_53@@1 f_75@@1))
))) (forall ((o2_53@@2 T@Ref) (f_75@@2 T@Field_28958_115466) ) (!  (=> (select (|PolymorphicMapType_41387_40898_115466#PolymorphicMapType_41387| (select (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| Heap@@18) null (PredicateMaskField_28958 pm_f_52@@1))) o2_53@@2 f_75@@2) (= (select (|PolymorphicMapType_40838_40898_115466#PolymorphicMapType_40838| Heap@@18) o2_53@@2 f_75@@2) (select (|PolymorphicMapType_40838_40898_115466#PolymorphicMapType_40838| ExhaleHeap@@3) o2_53@@2 f_75@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40838_40898_115466#PolymorphicMapType_40838| ExhaleHeap@@3) o2_53@@2 f_75@@2))
))) (forall ((o2_53@@3 T@Ref) (f_75@@3 T@Field_28958_115599) ) (!  (=> (select (|PolymorphicMapType_41387_40898_116777#PolymorphicMapType_41387| (select (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| Heap@@18) null (PredicateMaskField_28958 pm_f_52@@1))) o2_53@@3 f_75@@3) (= (select (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| Heap@@18) o2_53@@3 f_75@@3) (select (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| ExhaleHeap@@3) o2_53@@3 f_75@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| ExhaleHeap@@3) o2_53@@3 f_75@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@3 Mask@@21) (IsPredicateField_28958_115557 pm_f_52@@1))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_40838) (ExhaleHeap@@4 T@PolymorphicMapType_40838) (Mask@@22 T@PolymorphicMapType_40859) (pm_f_52@@2 T@Field_28958_115466) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@4 Mask@@22) (=> (and (HasDirectPerm_28958_115530 Mask@@22 null pm_f_52@@2) (IsWandField_28958_117304 pm_f_52@@2)) (and (and (and (and (forall ((o2_53@@4 T@Ref) (f_75@@4 T@Field_40898_53) ) (!  (=> (select (|PolymorphicMapType_41387_40898_53#PolymorphicMapType_41387| (select (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| Heap@@19) null (WandMaskField_28958 pm_f_52@@2))) o2_53@@4 f_75@@4) (= (select (|PolymorphicMapType_40838_28702_53#PolymorphicMapType_40838| Heap@@19) o2_53@@4 f_75@@4) (select (|PolymorphicMapType_40838_28702_53#PolymorphicMapType_40838| ExhaleHeap@@4) o2_53@@4 f_75@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40838_28702_53#PolymorphicMapType_40838| ExhaleHeap@@4) o2_53@@4 f_75@@4))
)) (forall ((o2_53@@5 T@Ref) (f_75@@5 T@Field_40911_40912) ) (!  (=> (select (|PolymorphicMapType_41387_40898_40912#PolymorphicMapType_41387| (select (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| Heap@@19) null (WandMaskField_28958 pm_f_52@@2))) o2_53@@5 f_75@@5) (= (select (|PolymorphicMapType_40838_28705_28706#PolymorphicMapType_40838| Heap@@19) o2_53@@5 f_75@@5) (select (|PolymorphicMapType_40838_28705_28706#PolymorphicMapType_40838| ExhaleHeap@@4) o2_53@@5 f_75@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40838_28705_28706#PolymorphicMapType_40838| ExhaleHeap@@4) o2_53@@5 f_75@@5))
))) (forall ((o2_53@@6 T@Ref) (f_75@@6 T@Field_46984_3805) ) (!  (=> (select (|PolymorphicMapType_41387_40898_3805#PolymorphicMapType_41387| (select (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| Heap@@19) null (WandMaskField_28958 pm_f_52@@2))) o2_53@@6 f_75@@6) (= (select (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| Heap@@19) o2_53@@6 f_75@@6) (select (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| ExhaleHeap@@4) o2_53@@6 f_75@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| ExhaleHeap@@4) o2_53@@6 f_75@@6))
))) (forall ((o2_53@@7 T@Ref) (f_75@@7 T@Field_28958_115466) ) (!  (=> (select (|PolymorphicMapType_41387_40898_115466#PolymorphicMapType_41387| (select (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| Heap@@19) null (WandMaskField_28958 pm_f_52@@2))) o2_53@@7 f_75@@7) (= (select (|PolymorphicMapType_40838_40898_115466#PolymorphicMapType_40838| Heap@@19) o2_53@@7 f_75@@7) (select (|PolymorphicMapType_40838_40898_115466#PolymorphicMapType_40838| ExhaleHeap@@4) o2_53@@7 f_75@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40838_40898_115466#PolymorphicMapType_40838| ExhaleHeap@@4) o2_53@@7 f_75@@7))
))) (forall ((o2_53@@8 T@Ref) (f_75@@8 T@Field_28958_115599) ) (!  (=> (select (|PolymorphicMapType_41387_40898_116777#PolymorphicMapType_41387| (select (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| Heap@@19) null (WandMaskField_28958 pm_f_52@@2))) o2_53@@8 f_75@@8) (= (select (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| Heap@@19) o2_53@@8 f_75@@8) (select (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| ExhaleHeap@@4) o2_53@@8 f_75@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| ExhaleHeap@@4) o2_53@@8 f_75@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@4 Mask@@22) (IsWandField_28958_117304 pm_f_52@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.282:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3683| (|Seq#Range| q@min@@0 q@max@@0) j@@7) (+ q@min@@0 j@@7)))
 :qid |stdinbpl.655:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3683| (|Seq#Range| q@min@@0 q@max@@0) j@@7))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_40838) (ExhaleHeap@@5 T@PolymorphicMapType_40838) (Mask@@23 T@PolymorphicMapType_40859) (o_144@@0 T@Ref) (f_75@@9 T@Field_28958_115599) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@5 Mask@@23) (=> (HasDirectPerm_28958_121304 Mask@@23 o_144@@0 f_75@@9) (= (select (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| Heap@@20) o_144@@0 f_75@@9) (select (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| ExhaleHeap@@5) o_144@@0 f_75@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@5 Mask@@23) (select (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| ExhaleHeap@@5) o_144@@0 f_75@@9))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_40838) (ExhaleHeap@@6 T@PolymorphicMapType_40838) (Mask@@24 T@PolymorphicMapType_40859) (o_144@@1 T@Ref) (f_75@@10 T@Field_28958_115466) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@6 Mask@@24) (=> (HasDirectPerm_28958_115530 Mask@@24 o_144@@1 f_75@@10) (= (select (|PolymorphicMapType_40838_40898_115466#PolymorphicMapType_40838| Heap@@21) o_144@@1 f_75@@10) (select (|PolymorphicMapType_40838_40898_115466#PolymorphicMapType_40838| ExhaleHeap@@6) o_144@@1 f_75@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@6 Mask@@24) (select (|PolymorphicMapType_40838_40898_115466#PolymorphicMapType_40838| ExhaleHeap@@6) o_144@@1 f_75@@10))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_40838) (ExhaleHeap@@7 T@PolymorphicMapType_40838) (Mask@@25 T@PolymorphicMapType_40859) (o_144@@2 T@Ref) (f_75@@11 T@Field_40911_40912) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@7 Mask@@25) (=> (HasDirectPerm_28958_40912 Mask@@25 o_144@@2 f_75@@11) (= (select (|PolymorphicMapType_40838_28705_28706#PolymorphicMapType_40838| Heap@@22) o_144@@2 f_75@@11) (select (|PolymorphicMapType_40838_28705_28706#PolymorphicMapType_40838| ExhaleHeap@@7) o_144@@2 f_75@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@7 Mask@@25) (select (|PolymorphicMapType_40838_28705_28706#PolymorphicMapType_40838| ExhaleHeap@@7) o_144@@2 f_75@@11))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_40838) (ExhaleHeap@@8 T@PolymorphicMapType_40838) (Mask@@26 T@PolymorphicMapType_40859) (o_144@@3 T@Ref) (f_75@@12 T@Field_40898_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@8 Mask@@26) (=> (HasDirectPerm_28958_53 Mask@@26 o_144@@3 f_75@@12) (= (select (|PolymorphicMapType_40838_28702_53#PolymorphicMapType_40838| Heap@@23) o_144@@3 f_75@@12) (select (|PolymorphicMapType_40838_28702_53#PolymorphicMapType_40838| ExhaleHeap@@8) o_144@@3 f_75@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@8 Mask@@26) (select (|PolymorphicMapType_40838_28702_53#PolymorphicMapType_40838| ExhaleHeap@@8) o_144@@3 f_75@@12))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_40838) (ExhaleHeap@@9 T@PolymorphicMapType_40838) (Mask@@27 T@PolymorphicMapType_40859) (o_144@@4 T@Ref) (f_75@@13 T@Field_46984_3805) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@9 Mask@@27) (=> (HasDirectPerm_28958_3805 Mask@@27 o_144@@4 f_75@@13) (= (select (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| Heap@@24) o_144@@4 f_75@@13) (select (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| ExhaleHeap@@9) o_144@@4 f_75@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@9 Mask@@27) (select (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| ExhaleHeap@@9) o_144@@4 f_75@@13))
)))
(assert (forall ((s0@@1 T@Seq_50030) (s1@@1 T@Seq_50030) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_29015|)) (not (= s1@@1 |Seq#Empty_29015|))) (= (|Seq#Length_29015| (|Seq#Append_50030| s0@@1 s1@@1)) (+ (|Seq#Length_29015| s0@@1) (|Seq#Length_29015| s1@@1))))
 :qid |stdinbpl.332:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_29015| (|Seq#Append_50030| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3683) (s1@@2 T@Seq_3683) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3683|)) (not (= s1@@2 |Seq#Empty_3683|))) (= (|Seq#Length_3683| (|Seq#Append_3683| s0@@2 s1@@2)) (+ (|Seq#Length_3683| s0@@2) (|Seq#Length_3683| s1@@2))))
 :qid |stdinbpl.332:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3683| (|Seq#Append_3683| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_28958_115599) ) (! (= (select (|PolymorphicMapType_40859_28958_119721#PolymorphicMapType_40859| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_40859_28958_119721#PolymorphicMapType_40859| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_28958_115466) ) (! (= (select (|PolymorphicMapType_40859_28958_115466#PolymorphicMapType_40859| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_40859_28958_115466#PolymorphicMapType_40859| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_40911_40912) ) (! (= (select (|PolymorphicMapType_40859_28958_40912#PolymorphicMapType_40859| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_40859_28958_40912#PolymorphicMapType_40859| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_40898_53) ) (! (= (select (|PolymorphicMapType_40859_28958_53#PolymorphicMapType_40859| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_40859_28958_53#PolymorphicMapType_40859| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_46984_3805) ) (! (= (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_40838) (Mask@@28 T@PolymorphicMapType_40859) (i@@15 Int) (hi@@11 Int) (ar_1@@11 T@Seq_3683) (v_2@@5 Int) ) (!  (=> (and (state Heap@@25 Mask@@28) (< AssumeFunctionsAbove 6)) (=> (and (and (<= 0 i@@15) (<= i@@15 hi@@11)) (<= hi@@11 (|Seq#Length_3683| ar_1@@11))) (= (count_list Heap@@25 i@@15 hi@@11 ar_1@@11 v_2@@5) (ite (< i@@15 hi@@11) (+ (ite (= (|Seq#Index_3683| ar_1@@11 i@@15) v_2@@5) 1 0) (|count_list'| Heap@@25 (+ i@@15 1) hi@@11 ar_1@@11 v_2@@5)) 0))))
 :qid |stdinbpl.1637:15|
 :skolemid |135|
 :pattern ( (state Heap@@25 Mask@@28) (count_list Heap@@25 i@@15 hi@@11 ar_1@@11 v_2@@5))
)))
(assert (forall ((s@@15 T@Seq_50030) (t@@1 T@Seq_50030) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_29015| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_29015| s@@15)) (|Seq#Length_29015| s@@15)) n@@15) (= (|Seq#Drop_29015| (|Seq#Append_50030| s@@15 t@@1) n@@15) (|Seq#Drop_29015| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_29015| s@@15))))))
 :qid |stdinbpl.489:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_29015| (|Seq#Append_50030| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3683) (t@@2 T@Seq_3683) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3683| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3683| s@@16)) (|Seq#Length_3683| s@@16)) n@@16) (= (|Seq#Drop_3683| (|Seq#Append_3683| s@@16 t@@2) n@@16) (|Seq#Drop_3683| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3683| s@@16))))))
 :qid |stdinbpl.489:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3683| (|Seq#Append_3683| s@@16 t@@2) n@@16))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_40838) (N0@@3 Int) (N1@@3 Int) (i0_3@@3 Int) (i1_9@@3 Int) ) (!  (and (= (Ref__multidim_index_2 Heap@@26 N0@@3 N1@@3 i0_3@@3 i1_9@@3) (|Ref__multidim_index_2'| Heap@@26 N0@@3 N1@@3 i0_3@@3 i1_9@@3)) (dummyFunction_4485 (|Ref__multidim_index_2#triggerStateless| N0@@3 N1@@3 i0_3@@3 i1_9@@3)))
 :qid |stdinbpl.678:15|
 :skolemid |58|
 :pattern ( (Ref__multidim_index_2 Heap@@26 N0@@3 N1@@3 i0_3@@3 i1_9@@3))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_40838) (i@@16 Int) (lo@@7 Int) (hi@@12 Int) (ar_1@@12 T@Seq_50030) ) (!  (and (= (sum_array Heap@@27 i@@16 lo@@7 hi@@12 ar_1@@12) (|sum_array'| Heap@@27 i@@16 lo@@7 hi@@12 ar_1@@12)) (dummyFunction_4485 (|sum_array#triggerStateless| i@@16 lo@@7 hi@@12 ar_1@@12)))
 :qid |stdinbpl.860:15|
 :skolemid |70|
 :pattern ( (sum_array Heap@@27 i@@16 lo@@7 hi@@12 ar_1@@12))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_40838) (i@@17 Int) (hi@@13 Int) (ar_1@@13 T@Seq_3683) (v_2@@6 Int) ) (!  (and (= (count_list Heap@@28 i@@17 hi@@13 ar_1@@13 v_2@@6) (|count_list'| Heap@@28 i@@17 hi@@13 ar_1@@13 v_2@@6)) (dummyFunction_4485 (|count_list#triggerStateless| i@@17 hi@@13 ar_1@@13 v_2@@6)))
 :qid |stdinbpl.1627:15|
 :skolemid |133|
 :pattern ( (count_list Heap@@28 i@@17 hi@@13 ar_1@@13 v_2@@6))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_40838) (i@@18 Int) (hi@@14 Int) (ar_1@@14 T@Seq_50030) (v_2@@7 Int) ) (!  (and (= (count_array Heap@@29 i@@18 hi@@14 ar_1@@14 v_2@@7) (|count_array'| Heap@@29 i@@18 hi@@14 ar_1@@14 v_2@@7)) (dummyFunction_4485 (|count_array#triggerStateless| i@@18 hi@@14 ar_1@@14 v_2@@7)))
 :qid |stdinbpl.1712:15|
 :skolemid |137|
 :pattern ( (count_array Heap@@29 i@@18 hi@@14 ar_1@@14 v_2@@7))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_40859) (SummandMask1 T@PolymorphicMapType_40859) (SummandMask2 T@PolymorphicMapType_40859) (o_2@@19 T@Ref) (f_4@@19 T@Field_28958_115599) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_40859_28958_119721#PolymorphicMapType_40859| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_40859_28958_119721#PolymorphicMapType_40859| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_40859_28958_119721#PolymorphicMapType_40859| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_40859_28958_119721#PolymorphicMapType_40859| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_40859_28958_119721#PolymorphicMapType_40859| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_40859_28958_119721#PolymorphicMapType_40859| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_40859) (SummandMask1@@0 T@PolymorphicMapType_40859) (SummandMask2@@0 T@PolymorphicMapType_40859) (o_2@@20 T@Ref) (f_4@@20 T@Field_28958_115466) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_40859_28958_115466#PolymorphicMapType_40859| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_40859_28958_115466#PolymorphicMapType_40859| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_40859_28958_115466#PolymorphicMapType_40859| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_40859_28958_115466#PolymorphicMapType_40859| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_40859_28958_115466#PolymorphicMapType_40859| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_40859_28958_115466#PolymorphicMapType_40859| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_40859) (SummandMask1@@1 T@PolymorphicMapType_40859) (SummandMask2@@1 T@PolymorphicMapType_40859) (o_2@@21 T@Ref) (f_4@@21 T@Field_40911_40912) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_40859_28958_40912#PolymorphicMapType_40859| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_40859_28958_40912#PolymorphicMapType_40859| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_40859_28958_40912#PolymorphicMapType_40859| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_40859_28958_40912#PolymorphicMapType_40859| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_40859_28958_40912#PolymorphicMapType_40859| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_40859_28958_40912#PolymorphicMapType_40859| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_40859) (SummandMask1@@2 T@PolymorphicMapType_40859) (SummandMask2@@2 T@PolymorphicMapType_40859) (o_2@@22 T@Ref) (f_4@@22 T@Field_40898_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_40859_28958_53#PolymorphicMapType_40859| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_40859_28958_53#PolymorphicMapType_40859| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_40859_28958_53#PolymorphicMapType_40859| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_40859_28958_53#PolymorphicMapType_40859| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_40859_28958_53#PolymorphicMapType_40859| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_40859_28958_53#PolymorphicMapType_40859| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_40859) (SummandMask1@@3 T@PolymorphicMapType_40859) (SummandMask2@@3 T@PolymorphicMapType_40859) (o_2@@23 T@Ref) (f_4@@23 T@Field_46984_3805) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_40859_28958_3805#PolymorphicMapType_40859| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_40838) (i@@19 Int) (lo@@8 Int) (hi@@15 Int) (step@@5 Int) (vmin@@5 Int) (vmax_1@@5 Int) (ar_1@@15 T@Seq_50030) ) (!  (and (= (sum_square Heap@@30 i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax_1@@5 ar_1@@15) (|sum_square'| Heap@@30 i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax_1@@5 ar_1@@15)) (dummyFunction_4485 (|sum_square#triggerStateless| i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax_1@@5 ar_1@@15)))
 :qid |stdinbpl.1095:15|
 :skolemid |91|
 :pattern ( (sum_square Heap@@30 i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax_1@@5 ar_1@@15))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_40838) (Mask@@29 T@PolymorphicMapType_40859) (N0@@4 Int) (N1@@4 Int) (i0_3@@4 Int) (i1_9@@4 Int) ) (!  (=> (state Heap@@31 Mask@@29) (= (|Ref__multidim_index_2'| Heap@@31 N0@@4 N1@@4 i0_3@@4 i1_9@@4) (|Ref__multidim_index_2#frame| EmptyFrame N0@@4 N1@@4 i0_3@@4 i1_9@@4)))
 :qid |stdinbpl.689:15|
 :skolemid |60|
 :pattern ( (state Heap@@31 Mask@@29) (|Ref__multidim_index_2'| Heap@@31 N0@@4 N1@@4 i0_3@@4 i1_9@@4))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_40838) (Mask@@30 T@PolymorphicMapType_40859) (i@@20 Int) (hi@@16 Int) (ar_1@@16 T@Seq_3683) (v_2@@8 Int) ) (!  (=> (state Heap@@32 Mask@@30) (= (|count_list'| Heap@@32 i@@20 hi@@16 ar_1@@16 v_2@@8) (|count_list#frame| EmptyFrame i@@20 hi@@16 ar_1@@16 v_2@@8)))
 :qid |stdinbpl.1644:15|
 :skolemid |136|
 :pattern ( (state Heap@@32 Mask@@30) (|count_list'| Heap@@32 i@@20 hi@@16 ar_1@@16 v_2@@8))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3683| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3683| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.654:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3683| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_50030) (b T@Seq_50030) ) (!  (=> (|Seq#Equal_50030| a b) (= a b))
 :qid |stdinbpl.627:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_50030| a b))
)))
(assert (forall ((a@@0 T@Seq_3683) (b@@0 T@Seq_3683) ) (!  (=> (|Seq#Equal_3683| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.627:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3683| a@@0 b@@0))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_40838) (i@@21 Int) (hi@@17 Int) (ar_1@@17 T@Seq_3683) ) (!  (and (= (sum_list Heap@@33 i@@21 hi@@17 ar_1@@17) (|sum_list'| Heap@@33 i@@21 hi@@17 ar_1@@17)) (dummyFunction_4485 (|sum_list#triggerStateless| i@@21 hi@@17 ar_1@@17)))
 :qid |stdinbpl.775:15|
 :skolemid |66|
 :pattern ( (sum_list Heap@@33 i@@21 hi@@17 ar_1@@17))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_40838) (Mask@@31 T@PolymorphicMapType_40859) (N0@@5 Int) (N1@@5 Int) (i0_3@@5 Int) (i1_9@@5 Int) ) (!  (=> (and (state Heap@@34 Mask@@31) (or (< AssumeFunctionsAbove 1) (|Ref__multidim_index_2#trigger| EmptyFrame N0@@5 N1@@5 i0_3@@5 i1_9@@5))) (=> (and (and (and (and (and (<= 0 i0_3@@5) (< i0_3@@5 N0@@5)) (<= 0 N0@@5)) (<= 0 i1_9@@5)) (< i1_9@@5 N1@@5)) (<= 0 N1@@5)) (< (|Ref__multidim_index_2'| Heap@@34 N0@@5 N1@@5 i0_3@@5 i1_9@@5) (* N0@@5 N1@@5))))
 :qid |stdinbpl.699:15|
 :skolemid |62|
 :pattern ( (state Heap@@34 Mask@@31) (|Ref__multidim_index_2'| Heap@@34 N0@@5 N1@@5 i0_3@@5 i1_9@@5))
)))
(assert (forall ((s@@17 T@Seq_50030) (i@@22 Int) ) (!  (=> (and (<= 0 i@@22) (< i@@22 (|Seq#Length_29015| s@@17))) (|Seq#ContainsTrigger_29015| s@@17 (|Seq#Index_29015| s@@17 i@@22)))
 :qid |stdinbpl.520:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_29015| s@@17 i@@22))
)))
(assert (forall ((s@@18 T@Seq_3683) (i@@23 Int) ) (!  (=> (and (<= 0 i@@23) (< i@@23 (|Seq#Length_3683| s@@18))) (|Seq#ContainsTrigger_3683| s@@18 (|Seq#Index_3683| s@@18 i@@23)))
 :qid |stdinbpl.520:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3683| s@@18 i@@23))
)))
(assert (forall ((s0@@3 T@Seq_50030) (s1@@3 T@Seq_50030) ) (!  (and (=> (= s0@@3 |Seq#Empty_29015|) (= (|Seq#Append_50030| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_29015|) (= (|Seq#Append_50030| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.338:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_50030| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3683) (s1@@4 T@Seq_3683) ) (!  (and (=> (= s0@@4 |Seq#Empty_3683|) (= (|Seq#Append_3683| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3683|) (= (|Seq#Append_3683| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.338:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3683| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_29015| (|Seq#Singleton_29015| t@@3) 0) t@@3)
 :qid |stdinbpl.342:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_29015| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3683| (|Seq#Singleton_3683| t@@4) 0) t@@4)
 :qid |stdinbpl.342:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3683| t@@4))
)))
(assert (forall ((s@@19 T@Seq_50030) ) (! (<= 0 (|Seq#Length_29015| s@@19))
 :qid |stdinbpl.321:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_29015| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3683) ) (! (<= 0 (|Seq#Length_3683| s@@20))
 :qid |stdinbpl.321:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3683| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_50030) (s1@@5 T@Seq_50030) ) (!  (=> (|Seq#Equal_50030| s0@@5 s1@@5) (and (= (|Seq#Length_29015| s0@@5) (|Seq#Length_29015| s1@@5)) (forall ((j@@8 Int) ) (!  (=> (and (<= 0 j@@8) (< j@@8 (|Seq#Length_29015| s0@@5))) (= (|Seq#Index_29015| s0@@5 j@@8) (|Seq#Index_29015| s1@@5 j@@8)))
 :qid |stdinbpl.617:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_29015| s0@@5 j@@8))
 :pattern ( (|Seq#Index_29015| s1@@5 j@@8))
))))
 :qid |stdinbpl.614:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_50030| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3683) (s1@@6 T@Seq_3683) ) (!  (=> (|Seq#Equal_3683| s0@@6 s1@@6) (and (= (|Seq#Length_3683| s0@@6) (|Seq#Length_3683| s1@@6)) (forall ((j@@9 Int) ) (!  (=> (and (<= 0 j@@9) (< j@@9 (|Seq#Length_3683| s0@@6))) (= (|Seq#Index_3683| s0@@6 j@@9) (|Seq#Index_3683| s1@@6 j@@9)))
 :qid |stdinbpl.617:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3683| s0@@6 j@@9))
 :pattern ( (|Seq#Index_3683| s1@@6 j@@9))
))))
 :qid |stdinbpl.614:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3683| s0@@6 s1@@6))
)))
(assert (forall ((Heap2Heap@@1 T@PolymorphicMapType_40838) (Heap1Heap@@1 T@PolymorphicMapType_40838) (i@@24 Int) (hi@@18 Int) (ar_1@@18 T@Seq_50030) (v_2@@9 Int) ) (!  (=> (and (=  (and (<= 0 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9))) (< (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9)) hi@@18))  (and (<= 0 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9))) (< (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9)) hi@@18))) (=> (and (<= 0 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9))) (< (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9)) hi@@18)) (= (select (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| Heap2Heap@@1) (|Seq#Index_29015| ar_1@@18 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9))) Ref__Integer_value) (select (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| Heap1Heap@@1) (|Seq#Index_29015| ar_1@@18 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9))) Ref__Integer_value)))) (= (|count_array#condqp4| Heap2Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9)))
 :qid |stdinbpl.1742:15|
 :skolemid |142|
 :pattern ( (|count_array#condqp4| Heap2Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@24 hi@@18 ar_1@@18 v_2@@9) (succHeapTrans Heap2Heap@@1 Heap1Heap@@1))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_29015| (|Seq#Singleton_29015| t@@5)) 1)
 :qid |stdinbpl.329:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_29015| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3683| (|Seq#Singleton_3683| t@@6)) 1)
 :qid |stdinbpl.329:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3683| t@@6))
)))
(assert (forall ((Heap2Heap@@2 T@PolymorphicMapType_40838) (Heap1Heap@@2 T@PolymorphicMapType_40838) (i@@25 Int) (lo@@9 Int) (hi@@19 Int) (ar_1@@19 T@Seq_50030) ) (!  (=> (and (=  (and (<= lo@@9 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19))) (< (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19)) hi@@19))  (and (<= lo@@9 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19))) (< (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19)) hi@@19))) (=> (and (<= lo@@9 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19))) (< (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19)) hi@@19)) (= (select (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| Heap2Heap@@2) (|Seq#Index_29015| ar_1@@19 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19))) Ref__Integer_value) (select (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| Heap1Heap@@2) (|Seq#Index_29015| ar_1@@19 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19))) Ref__Integer_value)))) (= (|sum_array#condqp1| Heap2Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19)))
 :qid |stdinbpl.890:15|
 :skolemid |75|
 :pattern ( (|sum_array#condqp1| Heap2Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19) (|sum_array#condqp1| Heap1Heap@@2 i@@25 lo@@9 hi@@19 ar_1@@19) (succHeapTrans Heap2Heap@@2 Heap1Heap@@2))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_40838) (Mask@@32 T@PolymorphicMapType_40859) (i@@26 Int) (lo@@10 Int) (hi@@20 Int) (step@@6 Int) (vmin@@6 Int) (vmax_1@@6 Int) (ar_1@@20 T@Seq_50030) (v_2@@10 Int) ) (!  (=> (and (state Heap@@35 Mask@@32) (< AssumeFunctionsAbove 0)) (=> (and (and (and (and (<= 0 lo@@10) (and (<= lo@@10 hi@@20) (and (<= hi@@20 step@@6) (> step@@6 0)))) (and (<= 0 vmin@@6) (and (<= vmin@@6 i@@26) (<= i@@26 vmax_1@@6)))) (<= vmax_1@@6 (|Seq#Length_29015| ar_1@@20))) (forall ((j@@10 Int) (k@@1 Int) ) (!  (=> (and (<= 0 j@@10) (and (< j@@10 vmax_1@@6) (and (<= 0 k@@1) (and (< k@@1 vmax_1@@6) (not (= j@@10 k@@1)))))) (not (= (|Seq#Index_29015| ar_1@@20 j@@10) (|Seq#Index_29015| ar_1@@20 k@@1))))
 :qid |stdinbpl.1373:195|
 :skolemid |114|
 :pattern ( (|Seq#Index_29015| ar_1@@20 j@@10) (|Seq#Index_29015| ar_1@@20 k@@1))
))) (= (count_square Heap@@35 i@@26 lo@@10 hi@@20 step@@6 vmin@@6 vmax_1@@6 ar_1@@20 v_2@@10) (ite (< i@@26 vmax_1@@6) (+ (ite  (and (<= lo@@10 (mod i@@26 step@@6)) (and (< (mod i@@26 step@@6) hi@@20) (= (select (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| Heap@@35) (|Seq#Index_29015| ar_1@@20 i@@26) Ref__Integer_value) v_2@@10))) 1 0) (|count_square'| Heap@@35 (+ i@@26 1) lo@@10 hi@@20 step@@6 vmin@@6 vmax_1@@6 ar_1@@20 v_2@@10)) 0))))
 :qid |stdinbpl.1371:15|
 :skolemid |115|
 :pattern ( (state Heap@@35 Mask@@32) (count_square Heap@@35 i@@26 lo@@10 hi@@20 step@@6 vmin@@6 vmax_1@@6 ar_1@@20 v_2@@10))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_40838) (Mask@@33 T@PolymorphicMapType_40859) (i@@27 Int) (hi@@21 Int) (ar_1@@21 T@Seq_3683) ) (!  (=> (and (state Heap@@36 Mask@@33) (< AssumeFunctionsAbove 5)) (=> (and (and (<= 0 i@@27) (<= i@@27 hi@@21)) (<= hi@@21 (|Seq#Length_3683| ar_1@@21))) (= (sum_list Heap@@36 i@@27 hi@@21 ar_1@@21) (ite (< i@@27 hi@@21) (+ (|Seq#Index_3683| ar_1@@21 i@@27) (|sum_list'| Heap@@36 (+ i@@27 1) hi@@21 ar_1@@21)) 0))))
 :qid |stdinbpl.785:15|
 :skolemid |68|
 :pattern ( (state Heap@@36 Mask@@33) (sum_list Heap@@36 i@@27 hi@@21 ar_1@@21))
)))
(assert (forall ((s@@21 T@Seq_50030) (t@@7 T@Seq_50030) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_29015| s@@21))) (= (|Seq#Take_29015| (|Seq#Append_50030| s@@21 t@@7) n@@17) (|Seq#Take_29015| s@@21 n@@17)))
 :qid |stdinbpl.471:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_29015| (|Seq#Append_50030| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3683) (t@@8 T@Seq_3683) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3683| s@@22))) (= (|Seq#Take_3683| (|Seq#Append_3683| s@@22 t@@8) n@@18) (|Seq#Take_3683| s@@22 n@@18)))
 :qid |stdinbpl.471:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3683| (|Seq#Append_3683| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_50030) (i@@28 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@28) (< i@@28 (|Seq#Length_29015| s@@23))) (= (|Seq#Length_29015| (|Seq#Update_29015| s@@23 i@@28 v@@2)) (|Seq#Length_29015| s@@23)))
 :qid |stdinbpl.370:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_29015| (|Seq#Update_29015| s@@23 i@@28 v@@2)))
 :pattern ( (|Seq#Length_29015| s@@23) (|Seq#Update_29015| s@@23 i@@28 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3683) (i@@29 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@29) (< i@@29 (|Seq#Length_3683| s@@24))) (= (|Seq#Length_3683| (|Seq#Update_3683| s@@24 i@@29 v@@3)) (|Seq#Length_3683| s@@24)))
 :qid |stdinbpl.370:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3683| (|Seq#Update_3683| s@@24 i@@29 v@@3)))
 :pattern ( (|Seq#Length_3683| s@@24) (|Seq#Update_3683| s@@24 i@@29 v@@3))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_40838) (o_143 T@Ref) (f_27 T@Field_28958_115466) (v@@4 T@FrameType) ) (! (succHeap Heap@@37 (PolymorphicMapType_40838 (|PolymorphicMapType_40838_28702_53#PolymorphicMapType_40838| Heap@@37) (|PolymorphicMapType_40838_28705_28706#PolymorphicMapType_40838| Heap@@37) (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| Heap@@37) (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| Heap@@37) (store (|PolymorphicMapType_40838_40898_115466#PolymorphicMapType_40838| Heap@@37) o_143 f_27 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40838 (|PolymorphicMapType_40838_28702_53#PolymorphicMapType_40838| Heap@@37) (|PolymorphicMapType_40838_28705_28706#PolymorphicMapType_40838| Heap@@37) (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| Heap@@37) (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| Heap@@37) (store (|PolymorphicMapType_40838_40898_115466#PolymorphicMapType_40838| Heap@@37) o_143 f_27 v@@4)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_40838) (o_143@@0 T@Ref) (f_27@@0 T@Field_28958_115599) (v@@5 T@PolymorphicMapType_41387) ) (! (succHeap Heap@@38 (PolymorphicMapType_40838 (|PolymorphicMapType_40838_28702_53#PolymorphicMapType_40838| Heap@@38) (|PolymorphicMapType_40838_28705_28706#PolymorphicMapType_40838| Heap@@38) (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| Heap@@38) (store (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| Heap@@38) o_143@@0 f_27@@0 v@@5) (|PolymorphicMapType_40838_40898_115466#PolymorphicMapType_40838| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40838 (|PolymorphicMapType_40838_28702_53#PolymorphicMapType_40838| Heap@@38) (|PolymorphicMapType_40838_28705_28706#PolymorphicMapType_40838| Heap@@38) (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| Heap@@38) (store (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| Heap@@38) o_143@@0 f_27@@0 v@@5) (|PolymorphicMapType_40838_40898_115466#PolymorphicMapType_40838| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_40838) (o_143@@1 T@Ref) (f_27@@1 T@Field_46984_3805) (v@@6 Int) ) (! (succHeap Heap@@39 (PolymorphicMapType_40838 (|PolymorphicMapType_40838_28702_53#PolymorphicMapType_40838| Heap@@39) (|PolymorphicMapType_40838_28705_28706#PolymorphicMapType_40838| Heap@@39) (store (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| Heap@@39) o_143@@1 f_27@@1 v@@6) (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| Heap@@39) (|PolymorphicMapType_40838_40898_115466#PolymorphicMapType_40838| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40838 (|PolymorphicMapType_40838_28702_53#PolymorphicMapType_40838| Heap@@39) (|PolymorphicMapType_40838_28705_28706#PolymorphicMapType_40838| Heap@@39) (store (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| Heap@@39) o_143@@1 f_27@@1 v@@6) (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| Heap@@39) (|PolymorphicMapType_40838_40898_115466#PolymorphicMapType_40838| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_40838) (o_143@@2 T@Ref) (f_27@@2 T@Field_40911_40912) (v@@7 T@Ref) ) (! (succHeap Heap@@40 (PolymorphicMapType_40838 (|PolymorphicMapType_40838_28702_53#PolymorphicMapType_40838| Heap@@40) (store (|PolymorphicMapType_40838_28705_28706#PolymorphicMapType_40838| Heap@@40) o_143@@2 f_27@@2 v@@7) (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| Heap@@40) (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| Heap@@40) (|PolymorphicMapType_40838_40898_115466#PolymorphicMapType_40838| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40838 (|PolymorphicMapType_40838_28702_53#PolymorphicMapType_40838| Heap@@40) (store (|PolymorphicMapType_40838_28705_28706#PolymorphicMapType_40838| Heap@@40) o_143@@2 f_27@@2 v@@7) (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| Heap@@40) (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| Heap@@40) (|PolymorphicMapType_40838_40898_115466#PolymorphicMapType_40838| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_40838) (o_143@@3 T@Ref) (f_27@@3 T@Field_40898_53) (v@@8 Bool) ) (! (succHeap Heap@@41 (PolymorphicMapType_40838 (store (|PolymorphicMapType_40838_28702_53#PolymorphicMapType_40838| Heap@@41) o_143@@3 f_27@@3 v@@8) (|PolymorphicMapType_40838_28705_28706#PolymorphicMapType_40838| Heap@@41) (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| Heap@@41) (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| Heap@@41) (|PolymorphicMapType_40838_40898_115466#PolymorphicMapType_40838| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40838 (store (|PolymorphicMapType_40838_28702_53#PolymorphicMapType_40838| Heap@@41) o_143@@3 f_27@@3 v@@8) (|PolymorphicMapType_40838_28705_28706#PolymorphicMapType_40838| Heap@@41) (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| Heap@@41) (|PolymorphicMapType_40838_28958_115643#PolymorphicMapType_40838| Heap@@41) (|PolymorphicMapType_40838_40898_115466#PolymorphicMapType_40838| Heap@@41)))
)))
(assert (forall ((s@@25 T@Seq_50030) (t@@9 T@Seq_50030) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_29015| s@@25))) (= (|Seq#Drop_29015| (|Seq#Append_50030| s@@25 t@@9) n@@19) (|Seq#Append_50030| (|Seq#Drop_29015| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.485:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_29015| (|Seq#Append_50030| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3683) (t@@10 T@Seq_3683) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3683| s@@26))) (= (|Seq#Drop_3683| (|Seq#Append_3683| s@@26 t@@10) n@@20) (|Seq#Append_3683| (|Seq#Drop_3683| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.485:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3683| (|Seq#Append_3683| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_50030) (n@@21 Int) (i@@30 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@30)) (< i@@30 (|Seq#Length_29015| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@30 n@@21) n@@21) i@@30) (= (|Seq#Index_29015| (|Seq#Drop_29015| s@@27 n@@21) (|Seq#Sub| i@@30 n@@21)) (|Seq#Index_29015| s@@27 i@@30))))
 :qid |stdinbpl.421:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_29015| s@@27 n@@21) (|Seq#Index_29015| s@@27 i@@30))
)))
(assert (forall ((s@@28 T@Seq_3683) (n@@22 Int) (i@@31 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@31)) (< i@@31 (|Seq#Length_3683| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@31 n@@22) n@@22) i@@31) (= (|Seq#Index_3683| (|Seq#Drop_3683| s@@28 n@@22) (|Seq#Sub| i@@31 n@@22)) (|Seq#Index_3683| s@@28 i@@31))))
 :qid |stdinbpl.421:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3683| s@@28 n@@22) (|Seq#Index_3683| s@@28 i@@31))
)))
(assert (forall ((s0@@7 T@Seq_50030) (s1@@7 T@Seq_50030) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_29015|)) (not (= s1@@7 |Seq#Empty_29015|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_29015| s0@@7))) (= (|Seq#Index_29015| (|Seq#Append_50030| s0@@7 s1@@7) n@@23) (|Seq#Index_29015| s0@@7 n@@23)))
 :qid |stdinbpl.361:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_29015| (|Seq#Append_50030| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_29015| s0@@7 n@@23) (|Seq#Append_50030| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3683) (s1@@8 T@Seq_3683) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3683|)) (not (= s1@@8 |Seq#Empty_3683|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3683| s0@@8))) (= (|Seq#Index_3683| (|Seq#Append_3683| s0@@8 s1@@8) n@@24) (|Seq#Index_3683| s0@@8 n@@24)))
 :qid |stdinbpl.361:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3683| (|Seq#Append_3683| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3683| s0@@8 n@@24) (|Seq#Append_3683| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_50030) (s1@@9 T@Seq_50030) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_29015|)) (not (= s1@@9 |Seq#Empty_29015|))) (<= 0 m)) (< m (|Seq#Length_29015| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_29015| s0@@9)) (|Seq#Length_29015| s0@@9)) m) (= (|Seq#Index_29015| (|Seq#Append_50030| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_29015| s0@@9))) (|Seq#Index_29015| s1@@9 m))))
 :qid |stdinbpl.366:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_29015| s1@@9 m) (|Seq#Append_50030| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3683) (s1@@10 T@Seq_3683) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3683|)) (not (= s1@@10 |Seq#Empty_3683|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3683| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3683| s0@@10)) (|Seq#Length_3683| s0@@10)) m@@0) (= (|Seq#Index_3683| (|Seq#Append_3683| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3683| s0@@10))) (|Seq#Index_3683| s1@@10 m@@0))))
 :qid |stdinbpl.366:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3683| s1@@10 m@@0) (|Seq#Append_3683| s0@@10 s1@@10))
)))
(assert (forall ((o_143@@4 T@Ref) (f_57 T@Field_40911_40912) (Heap@@42 T@PolymorphicMapType_40838) ) (!  (=> (select (|PolymorphicMapType_40838_28702_53#PolymorphicMapType_40838| Heap@@42) o_143@@4 $allocated) (select (|PolymorphicMapType_40838_28702_53#PolymorphicMapType_40838| Heap@@42) (select (|PolymorphicMapType_40838_28705_28706#PolymorphicMapType_40838| Heap@@42) o_143@@4 f_57) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_40838_28705_28706#PolymorphicMapType_40838| Heap@@42) o_143@@4 f_57))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_40838) (Mask@@34 T@PolymorphicMapType_40859) (i@@32 Int) (lo@@11 Int) (hi@@22 Int) (step@@7 Int) (vmin@@7 Int) (vmax_1@@7 Int) (ar_1@@22 T@Seq_50030) ) (!  (=> (state Heap@@43 Mask@@34) (= (|sum_square'| Heap@@43 i@@32 lo@@11 hi@@22 step@@7 vmin@@7 vmax_1@@7 ar_1@@22) (|sum_square#frame| (FrameFragment_5496 (|sum_square#condqp2| Heap@@43 i@@32 lo@@11 hi@@22 step@@7 vmin@@7 vmax_1@@7 ar_1@@22)) i@@32 lo@@11 hi@@22 step@@7 vmin@@7 vmax_1@@7 ar_1@@22)))
 :qid |stdinbpl.1115:15|
 :skolemid |95|
 :pattern ( (state Heap@@43 Mask@@34) (|sum_square'| Heap@@43 i@@32 lo@@11 hi@@22 step@@7 vmin@@7 vmax_1@@7 ar_1@@22))
)))
(assert (forall ((s@@29 T@Seq_50030) (x@@3 T@Ref) (i@@33 Int) ) (!  (=> (and (and (<= 0 i@@33) (< i@@33 (|Seq#Length_29015| s@@29))) (= (|Seq#Index_29015| s@@29 i@@33) x@@3)) (|Seq#Contains_50030| s@@29 x@@3))
 :qid |stdinbpl.518:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_50030| s@@29 x@@3) (|Seq#Index_29015| s@@29 i@@33))
)))
(assert (forall ((s@@30 T@Seq_3683) (x@@4 Int) (i@@34 Int) ) (!  (=> (and (and (<= 0 i@@34) (< i@@34 (|Seq#Length_3683| s@@30))) (= (|Seq#Index_3683| s@@30 i@@34) x@@4)) (|Seq#Contains_3683| s@@30 x@@4))
 :qid |stdinbpl.518:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3683| s@@30 x@@4) (|Seq#Index_3683| s@@30 i@@34))
)))
(assert (forall ((s0@@11 T@Seq_50030) (s1@@11 T@Seq_50030) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_50030| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_50030| s0@@11 s1@@11))) (not (= (|Seq#Length_29015| s0@@11) (|Seq#Length_29015| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_50030| s0@@11 s1@@11))) (= (|Seq#Length_29015| s0@@11) (|Seq#Length_29015| s1@@11))) (= (|Seq#SkolemDiff_50030| s0@@11 s1@@11) (|Seq#SkolemDiff_50030| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_50030| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_50030| s0@@11 s1@@11) (|Seq#Length_29015| s0@@11))) (not (= (|Seq#Index_29015| s0@@11 (|Seq#SkolemDiff_50030| s0@@11 s1@@11)) (|Seq#Index_29015| s1@@11 (|Seq#SkolemDiff_50030| s0@@11 s1@@11))))))
 :qid |stdinbpl.622:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_50030| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3683) (s1@@12 T@Seq_3683) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3683| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3683| s0@@12 s1@@12))) (not (= (|Seq#Length_3683| s0@@12) (|Seq#Length_3683| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3683| s0@@12 s1@@12))) (= (|Seq#Length_3683| s0@@12) (|Seq#Length_3683| s1@@12))) (= (|Seq#SkolemDiff_3683| s0@@12 s1@@12) (|Seq#SkolemDiff_3683| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3683| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3683| s0@@12 s1@@12) (|Seq#Length_3683| s0@@12))) (not (= (|Seq#Index_3683| s0@@12 (|Seq#SkolemDiff_3683| s0@@12 s1@@12)) (|Seq#Index_3683| s1@@12 (|Seq#SkolemDiff_3683| s0@@12 s1@@12))))))
 :qid |stdinbpl.622:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3683| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_28958_115466) (v_1@@0 T@FrameType) (q T@Field_28958_115466) (w@@0 T@FrameType) (r T@Field_28958_115466) (u T@FrameType) ) (!  (=> (and (InsidePredicate_40898_40898 p@@1 v_1@@0 q w@@0) (InsidePredicate_40898_40898 q w@@0 r u)) (InsidePredicate_40898_40898 p@@1 v_1@@0 r u))
 :qid |stdinbpl.289:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_40898_40898 p@@1 v_1@@0 q w@@0) (InsidePredicate_40898_40898 q w@@0 r u))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_40838) (i@@35 Int) (lo@@12 Int) (hi@@23 Int) (step@@8 Int) (vmin@@8 Int) (vmax_1@@8 Int) (ar_1@@23 T@Seq_50030) ) (! (dummyFunction_4485 (|sum_square#triggerStateless| i@@35 lo@@12 hi@@23 step@@8 vmin@@8 vmax_1@@8 ar_1@@23))
 :qid |stdinbpl.1099:15|
 :skolemid |92|
 :pattern ( (|sum_square'| Heap@@44 i@@35 lo@@12 hi@@23 step@@8 vmin@@8 vmax_1@@8 ar_1@@23))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_40838) (Mask@@35 T@PolymorphicMapType_40859) (i@@36 Int) (hi@@24 Int) (ar_1@@24 T@Seq_50030) (v_2@@11 Int) ) (!  (=> (and (state Heap@@45 Mask@@35) (< AssumeFunctionsAbove 3)) (=> (and (and (and (<= 0 i@@36) (<= i@@36 hi@@24)) (<= hi@@24 (|Seq#Length_29015| ar_1@@24))) (forall ((j@@11 Int) (k@@2 Int) ) (!  (=> (and (<= 0 j@@11) (and (< j@@11 hi@@24) (and (<= 0 k@@2) (and (< k@@2 hi@@24) (not (= j@@11 k@@2)))))) (not (= (|Seq#Index_29015| ar_1@@24 j@@11) (|Seq#Index_29015| ar_1@@24 k@@2))))
 :qid |stdinbpl.1724:112|
 :skolemid |139|
 :pattern ( (|Seq#Index_29015| ar_1@@24 j@@11) (|Seq#Index_29015| ar_1@@24 k@@2))
))) (= (count_array Heap@@45 i@@36 hi@@24 ar_1@@24 v_2@@11) (ite (< i@@36 hi@@24) (+ (ite (= (select (|PolymorphicMapType_40838_28958_3805#PolymorphicMapType_40838| Heap@@45) (|Seq#Index_29015| ar_1@@24 i@@36) Ref__Integer_value) v_2@@11) 1 0) (|count_array'| Heap@@45 (+ i@@36 1) hi@@24 ar_1@@24 v_2@@11)) 0))))
 :qid |stdinbpl.1722:15|
 :skolemid |140|
 :pattern ( (state Heap@@45 Mask@@35) (count_array Heap@@45 i@@36 hi@@24 ar_1@@24 v_2@@11))
)))
(assert (forall ((s@@31 T@Seq_50030) ) (!  (=> (= (|Seq#Length_29015| s@@31) 0) (= s@@31 |Seq#Empty_29015|))
 :qid |stdinbpl.325:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_29015| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3683) ) (!  (=> (= (|Seq#Length_3683| s@@32) 0) (= s@@32 |Seq#Empty_3683|))
 :qid |stdinbpl.325:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3683| s@@32))
)))
(assert (forall ((s@@33 T@Seq_50030) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_29015| s@@33 n@@25) |Seq#Empty_29015|))
 :qid |stdinbpl.501:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_29015| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3683) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3683| s@@34 n@@26) |Seq#Empty_3683|))
 :qid |stdinbpl.501:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3683| s@@34 n@@26))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_40838) (Mask@@36 T@PolymorphicMapType_40859) (N0@@6 Int) (N1@@6 Int) (i0_3@@6 Int) (i1_9@@6 Int) ) (!  (=> (and (state Heap@@46 Mask@@36) (or (< AssumeFunctionsAbove 1) (|Ref__multidim_index_2#trigger| EmptyFrame N0@@6 N1@@6 i0_3@@6 i1_9@@6))) (=> (and (and (and (and (and (<= 0 i0_3@@6) (< i0_3@@6 N0@@6)) (<= 0 N0@@6)) (<= 0 i1_9@@6)) (< i1_9@@6 N1@@6)) (<= 0 N1@@6)) (<= 0 (|Ref__multidim_index_2'| Heap@@46 N0@@6 N1@@6 i0_3@@6 i1_9@@6))))
 :qid |stdinbpl.695:15|
 :skolemid |61|
 :pattern ( (state Heap@@46 Mask@@36) (|Ref__multidim_index_2'| Heap@@46 N0@@6 N1@@6 i0_3@@6 i1_9@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@47 T@PolymorphicMapType_40838) (Mask@@37 T@PolymorphicMapType_40859) (i@@37 Int) (lo@@13 Int) (hi@@25 Int) (ar_1@@25 T@Seq_50030) ) (!  (=> (state Heap@@47 Mask@@37) (= (|sum_array'| Heap@@47 i@@37 lo@@13 hi@@25 ar_1@@25) (|sum_array#frame| (FrameFragment_5496 (|sum_array#condqp1| Heap@@47 i@@37 lo@@13 hi@@25 ar_1@@25)) i@@37 lo@@13 hi@@25 ar_1@@25)))
 :qid |stdinbpl.880:15|
 :skolemid |74|
 :pattern ( (state Heap@@47 Mask@@37) (|sum_array'| Heap@@47 i@@37 lo@@13 hi@@25 ar_1@@25))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_40838) (Mask@@38 T@PolymorphicMapType_40859) (i@@38 Int) (hi@@26 Int) (ar_1@@26 T@Seq_50030) (v_2@@12 Int) ) (!  (=> (state Heap@@48 Mask@@38) (= (|count_array'| Heap@@48 i@@38 hi@@26 ar_1@@26 v_2@@12) (|count_array#frame| (FrameFragment_5496 (|count_array#condqp4| Heap@@48 i@@38 hi@@26 ar_1@@26 v_2@@12)) i@@38 hi@@26 ar_1@@26 v_2@@12)))
 :qid |stdinbpl.1732:15|
 :skolemid |141|
 :pattern ( (state Heap@@48 Mask@@38) (|count_array'| Heap@@48 i@@38 hi@@26 ar_1@@26 v_2@@12))
)))
; Valid

