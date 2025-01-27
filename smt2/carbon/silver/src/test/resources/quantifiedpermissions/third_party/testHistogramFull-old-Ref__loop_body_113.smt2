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
(declare-sort T@Field_41028_53 0)
(declare-sort T@Field_41041_41042 0)
(declare-sort T@Field_47114_3805 0)
(declare-sort T@Field_29264_115647 0)
(declare-sort T@Field_29264_115514 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_40989 0)) (((PolymorphicMapType_40989 (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| (Array T@Ref T@Field_47114_3805 Real)) (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| (Array T@Ref T@Field_41028_53 Real)) (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| (Array T@Ref T@Field_41041_41042 Real)) (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| (Array T@Ref T@Field_29264_115514 Real)) (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| (Array T@Ref T@Field_29264_115647 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_41517 0)) (((PolymorphicMapType_41517 (|PolymorphicMapType_41517_41028_53#PolymorphicMapType_41517| (Array T@Ref T@Field_41028_53 Bool)) (|PolymorphicMapType_41517_41028_41042#PolymorphicMapType_41517| (Array T@Ref T@Field_41041_41042 Bool)) (|PolymorphicMapType_41517_41028_3805#PolymorphicMapType_41517| (Array T@Ref T@Field_47114_3805 Bool)) (|PolymorphicMapType_41517_41028_115514#PolymorphicMapType_41517| (Array T@Ref T@Field_29264_115514 Bool)) (|PolymorphicMapType_41517_41028_116825#PolymorphicMapType_41517| (Array T@Ref T@Field_29264_115647 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_40968 0)) (((PolymorphicMapType_40968 (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| (Array T@Ref T@Field_41028_53 Bool)) (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| (Array T@Ref T@Field_41041_41042 T@Ref)) (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| (Array T@Ref T@Field_47114_3805 Int)) (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| (Array T@Ref T@Field_29264_115647 T@PolymorphicMapType_41517)) (|PolymorphicMapType_40968_41028_115514#PolymorphicMapType_40968| (Array T@Ref T@Field_29264_115514 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_41028_53)
(declare-fun Ref__Integer_value () T@Field_47114_3805)
(declare-sort T@Seq_48156 0)
(declare-fun |Seq#Length_29303| (T@Seq_48156) Int)
(declare-fun |Seq#Drop_29303| (T@Seq_48156 Int) T@Seq_48156)
(declare-sort T@Seq_3683 0)
(declare-fun |Seq#Length_3683| (T@Seq_3683) Int)
(declare-fun |Seq#Drop_3683| (T@Seq_3683 Int) T@Seq_3683)
(declare-fun state (T@PolymorphicMapType_40968 T@PolymorphicMapType_40989) Bool)
(declare-fun |count_square'| (T@PolymorphicMapType_40968 Int Int Int Int Int Int T@Seq_48156 Int) Int)
(declare-fun |count_square#frame| (T@FrameType Int Int Int Int Int Int T@Seq_48156 Int) Int)
(declare-fun FrameFragment_4664 (Int) T@FrameType)
(declare-fun |count_square#condqp3| (T@PolymorphicMapType_40968 Int Int Int Int Int Int T@Seq_48156 Int) Int)
(declare-fun succHeap (T@PolymorphicMapType_40968 T@PolymorphicMapType_40968) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_40968 T@PolymorphicMapType_40968) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_40989) Bool)
(declare-fun |sum_list'| (T@PolymorphicMapType_40968 Int Int T@Seq_3683) Int)
(declare-fun dummyFunction_4112 (Int) Bool)
(declare-fun |sum_list#triggerStateless| (Int Int T@Seq_3683) Int)
(declare-fun ZeroPMask () T@PolymorphicMapType_41517)
(declare-fun |Seq#Index_29303| (T@Seq_48156 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3683| (T@Seq_3683 Int) Int)
(declare-fun |Seq#Empty_29303| () T@Seq_48156)
(declare-fun |Seq#Empty_3683| () T@Seq_3683)
(declare-fun |Seq#Update_29303| (T@Seq_48156 Int T@Ref) T@Seq_48156)
(declare-fun |Seq#Update_3683| (T@Seq_3683 Int Int) T@Seq_3683)
(declare-fun |Seq#Take_29303| (T@Seq_48156 Int) T@Seq_48156)
(declare-fun |Seq#Take_3683| (T@Seq_3683 Int) T@Seq_3683)
(declare-fun |Seq#Contains_3683| (T@Seq_3683 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3683)
(declare-fun |Seq#Contains_48156| (T@Seq_48156 T@Ref) Bool)
(declare-fun |Seq#Skolem_48156| (T@Seq_48156 T@Ref) Int)
(declare-fun |Seq#Skolem_3683| (T@Seq_3683 Int) Int)
(declare-fun sum_array (T@PolymorphicMapType_40968 Int Int Int T@Seq_48156) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |sum_array'| (T@PolymorphicMapType_40968 Int Int Int T@Seq_48156) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_40968 T@PolymorphicMapType_40968 T@PolymorphicMapType_40989) Bool)
(declare-fun IsPredicateField_29264_115605 (T@Field_29264_115514) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_29264 (T@Field_29264_115514) T@Field_29264_115647)
(declare-fun HasDirectPerm_29264_115578 (T@PolymorphicMapType_40989 T@Ref T@Field_29264_115514) Bool)
(declare-fun IsWandField_29264_117352 (T@Field_29264_115514) Bool)
(declare-fun WandMaskField_29264 (T@Field_29264_115514) T@Field_29264_115647)
(declare-fun |Seq#Singleton_29303| (T@Ref) T@Seq_48156)
(declare-fun |Seq#Singleton_3683| (Int) T@Seq_3683)
(declare-fun count_square (T@PolymorphicMapType_40968 Int Int Int Int Int Int T@Seq_48156 Int) Int)
(declare-fun |count_square#triggerStateless| (Int Int Int Int Int Int T@Seq_48156 Int) Int)
(declare-fun |Seq#Append_48156| (T@Seq_48156 T@Seq_48156) T@Seq_48156)
(declare-fun |Seq#Append_3683| (T@Seq_3683 T@Seq_3683) T@Seq_3683)
(declare-fun |sum_square#condqp2| (T@PolymorphicMapType_40968 Int Int Int Int Int Int T@Seq_48156) Int)
(declare-fun |sk_sum_square#condqp2| (Int Int) Int)
(declare-fun |sk_count_square#condqp3| (Int Int) Int)
(declare-fun dummyHeap () T@PolymorphicMapType_40968)
(declare-fun ZeroMask () T@PolymorphicMapType_40989)
(declare-fun sum_square (T@PolymorphicMapType_40968 Int Int Int Int Int Int T@Seq_48156) Int)
(declare-fun |sum_square'| (T@PolymorphicMapType_40968 Int Int Int Int Int Int T@Seq_48156) Int)
(declare-fun InsidePredicate_41028_41028 (T@Field_29264_115514 T@FrameType T@Field_29264_115514 T@FrameType) Bool)
(declare-fun IsPredicateField_29264_3805 (T@Field_47114_3805) Bool)
(declare-fun IsWandField_29264_3805 (T@Field_47114_3805) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_29264_120898 (T@Field_29264_115647) Bool)
(declare-fun IsWandField_29264_120914 (T@Field_29264_115647) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_29264_41042 (T@Field_41041_41042) Bool)
(declare-fun IsWandField_29264_41042 (T@Field_41041_41042) Bool)
(declare-fun IsPredicateField_29264_53 (T@Field_41028_53) Bool)
(declare-fun IsWandField_29264_53 (T@Field_41028_53) Bool)
(declare-fun |sum_list#frame| (T@FrameType Int Int T@Seq_3683) Int)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun HasDirectPerm_29264_121352 (T@PolymorphicMapType_40989 T@Ref T@Field_29264_115647) Bool)
(declare-fun HasDirectPerm_29264_41042 (T@PolymorphicMapType_40989 T@Ref T@Field_41041_41042) Bool)
(declare-fun HasDirectPerm_29264_53 (T@PolymorphicMapType_40989 T@Ref T@Field_41028_53) Bool)
(declare-fun HasDirectPerm_29264_3805 (T@PolymorphicMapType_40989 T@Ref T@Field_47114_3805) Bool)
(declare-fun |sum_array#triggerStateless| (Int Int Int T@Seq_48156) Int)
(declare-fun |count_list'| (T@PolymorphicMapType_40968 Int Int T@Seq_3683 Int) Int)
(declare-fun |count_list#triggerStateless| (Int Int T@Seq_3683 Int) Int)
(declare-fun |count_array'| (T@PolymorphicMapType_40968 Int Int T@Seq_48156 Int) Int)
(declare-fun |count_array#triggerStateless| (Int Int T@Seq_48156 Int) Int)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun count_list (T@PolymorphicMapType_40968 Int Int T@Seq_3683 Int) Int)
(declare-fun count_array (T@PolymorphicMapType_40968 Int Int T@Seq_48156 Int) Int)
(declare-fun sumMask (T@PolymorphicMapType_40989 T@PolymorphicMapType_40989 T@PolymorphicMapType_40989) Bool)
(declare-fun |sum_square#triggerStateless| (Int Int Int Int Int Int T@Seq_48156) Int)
(declare-fun |count_list#frame| (T@FrameType Int Int T@Seq_3683 Int) Int)
(declare-fun |count_array#condqp4| (T@PolymorphicMapType_40968 Int Int T@Seq_48156 Int) Int)
(declare-fun |sk_count_array#condqp4| (Int Int) Int)
(declare-fun |sum_array#condqp1| (T@PolymorphicMapType_40968 Int Int Int T@Seq_48156) Int)
(declare-fun |sk_sum_array#condqp1| (Int Int) Int)
(declare-fun |Seq#Equal_48156| (T@Seq_48156 T@Seq_48156) Bool)
(declare-fun |Seq#Equal_3683| (T@Seq_3683 T@Seq_3683) Bool)
(declare-fun sum_list (T@PolymorphicMapType_40968 Int Int T@Seq_3683) Int)
(declare-fun |Seq#ContainsTrigger_29303| (T@Seq_48156 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3683| (T@Seq_3683 Int) Bool)
(declare-fun |sum_square#frame| (T@FrameType Int Int Int Int Int Int T@Seq_48156) Int)
(declare-fun |Seq#SkolemDiff_48156| (T@Seq_48156 T@Seq_48156) Int)
(declare-fun |Seq#SkolemDiff_3683| (T@Seq_3683 T@Seq_3683) Int)
(declare-fun |sum_array#frame| (T@FrameType Int Int Int T@Seq_48156) Int)
(declare-fun |count_array#frame| (T@FrameType Int Int T@Seq_48156 Int) Int)
(assert (forall ((s T@Seq_48156) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_29303| s)) (= (|Seq#Length_29303| (|Seq#Drop_29303| s n)) (- (|Seq#Length_29303| s) n))) (=> (< (|Seq#Length_29303| s) n) (= (|Seq#Length_29303| (|Seq#Drop_29303| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_29303| (|Seq#Drop_29303| s n)) (|Seq#Length_29303| s))))
 :qid |stdinbpl.395:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_29303| (|Seq#Drop_29303| s n)))
 :pattern ( (|Seq#Length_29303| s) (|Seq#Drop_29303| s n))
)))
(assert (forall ((s@@0 T@Seq_3683) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3683| s@@0)) (= (|Seq#Length_3683| (|Seq#Drop_3683| s@@0 n@@0)) (- (|Seq#Length_3683| s@@0) n@@0))) (=> (< (|Seq#Length_3683| s@@0) n@@0) (= (|Seq#Length_3683| (|Seq#Drop_3683| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3683| (|Seq#Drop_3683| s@@0 n@@0)) (|Seq#Length_3683| s@@0))))
 :qid |stdinbpl.395:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3683| (|Seq#Drop_3683| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3683| s@@0) (|Seq#Drop_3683| s@@0 n@@0))
)))
(assert (forall ((Heap T@PolymorphicMapType_40968) (Mask T@PolymorphicMapType_40989) (i Int) (lo Int) (hi Int) (step Int) (vmin Int) (vmax_1 Int) (ar_1 T@Seq_48156) (v_2 Int) ) (!  (=> (state Heap Mask) (= (|count_square'| Heap i lo hi step vmin vmax_1 ar_1 v_2) (|count_square#frame| (FrameFragment_4664 (|count_square#condqp3| Heap i lo hi step vmin vmax_1 ar_1 v_2)) i lo hi step vmin vmax_1 ar_1 v_2)))
 :qid |stdinbpl.1283:15|
 :skolemid |108|
 :pattern ( (state Heap Mask) (|count_square'| Heap i lo hi step vmin vmax_1 ar_1 v_2))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_40968) (Heap1 T@PolymorphicMapType_40968) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_40968) (Mask@@0 T@PolymorphicMapType_40989) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_40968) (Heap1@@0 T@PolymorphicMapType_40968) (Heap2 T@PolymorphicMapType_40968) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_40968) (i@@0 Int) (hi@@0 Int) (ar_1@@0 T@Seq_3683) ) (! (dummyFunction_4112 (|sum_list#triggerStateless| i@@0 hi@@0 ar_1@@0))
 :qid |stdinbpl.681:15|
 :skolemid |59|
 :pattern ( (|sum_list'| Heap@@1 i@@0 hi@@0 ar_1@@0))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_29264_115647) ) (!  (not (select (|PolymorphicMapType_41517_41028_116825#PolymorphicMapType_41517| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_41517_41028_116825#PolymorphicMapType_41517| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_29264_115514) ) (!  (not (select (|PolymorphicMapType_41517_41028_115514#PolymorphicMapType_41517| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_41517_41028_115514#PolymorphicMapType_41517| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_47114_3805) ) (!  (not (select (|PolymorphicMapType_41517_41028_3805#PolymorphicMapType_41517| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_41517_41028_3805#PolymorphicMapType_41517| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_41041_41042) ) (!  (not (select (|PolymorphicMapType_41517_41028_41042#PolymorphicMapType_41517| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_41517_41028_41042#PolymorphicMapType_41517| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_41028_53) ) (!  (not (select (|PolymorphicMapType_41517_41028_53#PolymorphicMapType_41517| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_41517_41028_53#PolymorphicMapType_41517| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((s@@1 T@Seq_48156) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_29303| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_29303| (|Seq#Drop_29303| s@@1 n@@1) j) (|Seq#Index_29303| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.416:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_29303| (|Seq#Drop_29303| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3683) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3683| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3683| (|Seq#Drop_3683| s@@2 n@@2) j@@0) (|Seq#Index_3683| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.416:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3683| (|Seq#Drop_3683| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_29303| |Seq#Empty_29303|) 0))
(assert (= (|Seq#Length_3683| |Seq#Empty_3683|) 0))
(assert (forall ((s@@3 T@Seq_48156) (i@@1 Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_29303| s@@3))) (and (=> (= i@@1 n@@3) (= (|Seq#Index_29303| (|Seq#Update_29303| s@@3 i@@1 v) n@@3) v)) (=> (not (= i@@1 n@@3)) (= (|Seq#Index_29303| (|Seq#Update_29303| s@@3 i@@1 v) n@@3) (|Seq#Index_29303| s@@3 n@@3)))))
 :qid |stdinbpl.371:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_29303| (|Seq#Update_29303| s@@3 i@@1 v) n@@3))
 :pattern ( (|Seq#Index_29303| s@@3 n@@3) (|Seq#Update_29303| s@@3 i@@1 v))
)))
(assert (forall ((s@@4 T@Seq_3683) (i@@2 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3683| s@@4))) (and (=> (= i@@2 n@@4) (= (|Seq#Index_3683| (|Seq#Update_3683| s@@4 i@@2 v@@0) n@@4) v@@0)) (=> (not (= i@@2 n@@4)) (= (|Seq#Index_3683| (|Seq#Update_3683| s@@4 i@@2 v@@0) n@@4) (|Seq#Index_3683| s@@4 n@@4)))))
 :qid |stdinbpl.371:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3683| (|Seq#Update_3683| s@@4 i@@2 v@@0) n@@4))
 :pattern ( (|Seq#Index_3683| s@@4 n@@4) (|Seq#Update_3683| s@@4 i@@2 v@@0))
)))
(assert (forall ((s@@5 T@Seq_48156) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_29303| s@@5)) (= (|Seq#Length_29303| (|Seq#Take_29303| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_29303| s@@5) n@@5) (= (|Seq#Length_29303| (|Seq#Take_29303| s@@5 n@@5)) (|Seq#Length_29303| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_29303| (|Seq#Take_29303| s@@5 n@@5)) 0)))
 :qid |stdinbpl.382:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_29303| (|Seq#Take_29303| s@@5 n@@5)))
 :pattern ( (|Seq#Take_29303| s@@5 n@@5) (|Seq#Length_29303| s@@5))
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
(assert (forall ((s@@7 T@Seq_48156) (x T@Ref) ) (!  (=> (|Seq#Contains_48156| s@@7 x) (and (and (<= 0 (|Seq#Skolem_48156| s@@7 x)) (< (|Seq#Skolem_48156| s@@7 x) (|Seq#Length_29303| s@@7))) (= (|Seq#Index_29303| s@@7 (|Seq#Skolem_48156| s@@7 x)) x)))
 :qid |stdinbpl.514:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_48156| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3683) (x@@0 Int) ) (!  (=> (|Seq#Contains_3683| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3683| s@@8 x@@0)) (< (|Seq#Skolem_3683| s@@8 x@@0) (|Seq#Length_3683| s@@8))) (= (|Seq#Index_3683| s@@8 (|Seq#Skolem_3683| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.514:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3683| s@@8 x@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_40968) (Mask@@1 T@PolymorphicMapType_40989) (i@@3 Int) (lo@@0 Int) (hi@@1 Int) (ar_1@@1 T@Seq_48156) ) (!  (=> (and (state Heap@@2 Mask@@1) (< AssumeFunctionsAbove 1)) (=> (and (and (and (<= 0 lo@@0) (and (<= lo@@0 i@@3) (<= i@@3 hi@@1))) (<= hi@@1 (|Seq#Length_29303| ar_1@@1))) (forall ((k Int) (j@@1 Int) ) (!  (=> (and (>= k 0) (and (< k (|Seq#Length_29303| ar_1@@1)) (and (>= j@@1 0) (and (< j@@1 (|Seq#Length_29303| ar_1@@1)) (not (= k j@@1)))))) (not (= (|Seq#Index_29303| ar_1@@1 k) (|Seq#Index_29303| ar_1@@1 j@@1))))
 :qid |stdinbpl.774:126|
 :skolemid |64|
 :pattern ( (|Seq#Index_29303| ar_1@@1 k) (|Seq#Index_29303| ar_1@@1 j@@1))
))) (= (sum_array Heap@@2 i@@3 lo@@0 hi@@1 ar_1@@1) (ite (< i@@3 hi@@1) (+ (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@2) (|Seq#Index_29303| ar_1@@1 i@@3) Ref__Integer_value) (|sum_array'| Heap@@2 (+ i@@3 1) lo@@0 hi@@1 ar_1@@1)) 0))))
 :qid |stdinbpl.772:15|
 :skolemid |65|
 :pattern ( (state Heap@@2 Mask@@1) (sum_array Heap@@2 i@@3 lo@@0 hi@@1 ar_1@@1))
)))
(assert (forall ((s@@9 T@Seq_48156) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_29303| s@@9 n@@7) s@@9))
 :qid |stdinbpl.498:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_29303| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3683) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3683| s@@10 n@@8) s@@10))
 :qid |stdinbpl.498:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3683| s@@10 n@@8))
)))
(assert (forall ((i@@4 Int) (j@@2 Int) ) (! (= (|Seq#Sub| i@@4 j@@2) (- i@@4 j@@2))
 :qid |stdinbpl.351:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@4 j@@2))
)))
(assert (forall ((i@@5 Int) (j@@3 Int) ) (! (= (|Seq#Add| i@@5 j@@3) (+ i@@5 j@@3))
 :qid |stdinbpl.349:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@5 j@@3))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_40968) (ExhaleHeap T@PolymorphicMapType_40968) (Mask@@2 T@PolymorphicMapType_40989) (pm_f_22 T@Field_29264_115514) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@2) (=> (and (HasDirectPerm_29264_115578 Mask@@2 null pm_f_22) (IsPredicateField_29264_115605 pm_f_22)) (= (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@3) null (PredicateMaskField_29264 pm_f_22)) (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| ExhaleHeap) null (PredicateMaskField_29264 pm_f_22)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@2) (IsPredicateField_29264_115605 pm_f_22) (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| ExhaleHeap) null (PredicateMaskField_29264 pm_f_22)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_40968) (ExhaleHeap@@0 T@PolymorphicMapType_40968) (Mask@@3 T@PolymorphicMapType_40989) (pm_f_22@@0 T@Field_29264_115514) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@3) (=> (and (HasDirectPerm_29264_115578 Mask@@3 null pm_f_22@@0) (IsWandField_29264_117352 pm_f_22@@0)) (= (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@4) null (WandMaskField_29264 pm_f_22@@0)) (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| ExhaleHeap@@0) null (WandMaskField_29264 pm_f_22@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@3) (IsWandField_29264_117352 pm_f_22@@0) (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| ExhaleHeap@@0) null (WandMaskField_29264 pm_f_22@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_48156| (|Seq#Singleton_29303| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.639:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_48156| (|Seq#Singleton_29303| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3683| (|Seq#Singleton_3683| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.639:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3683| (|Seq#Singleton_3683| x@@2) y@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_40968) (i@@6 Int) (lo@@1 Int) (hi@@2 Int) (step@@0 Int) (vmin@@0 Int) (vmax_1@@0 Int) (ar_1@@2 T@Seq_48156) (v_2@@0 Int) ) (!  (and (= (count_square Heap@@5 i@@6 lo@@1 hi@@2 step@@0 vmin@@0 vmax_1@@0 ar_1@@2 v_2@@0) (|count_square'| Heap@@5 i@@6 lo@@1 hi@@2 step@@0 vmin@@0 vmax_1@@0 ar_1@@2 v_2@@0)) (dummyFunction_4112 (|count_square#triggerStateless| i@@6 lo@@1 hi@@2 step@@0 vmin@@0 vmax_1@@0 ar_1@@2 v_2@@0)))
 :qid |stdinbpl.1263:15|
 :skolemid |104|
 :pattern ( (count_square Heap@@5 i@@6 lo@@1 hi@@2 step@@0 vmin@@0 vmax_1@@0 ar_1@@2 v_2@@0))
)))
(assert (forall ((s@@11 T@Seq_48156) (n@@9 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@9)) (< j@@4 (|Seq#Length_29303| s@@11))) (= (|Seq#Index_29303| (|Seq#Take_29303| s@@11 n@@9) j@@4) (|Seq#Index_29303| s@@11 j@@4)))
 :qid |stdinbpl.390:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_29303| (|Seq#Take_29303| s@@11 n@@9) j@@4))
 :pattern ( (|Seq#Index_29303| s@@11 j@@4) (|Seq#Take_29303| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3683) (n@@10 Int) (j@@5 Int) ) (!  (=> (and (and (<= 0 j@@5) (< j@@5 n@@10)) (< j@@5 (|Seq#Length_3683| s@@12))) (= (|Seq#Index_3683| (|Seq#Take_3683| s@@12 n@@10) j@@5) (|Seq#Index_3683| s@@12 j@@5)))
 :qid |stdinbpl.390:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3683| (|Seq#Take_3683| s@@12 n@@10) j@@5))
 :pattern ( (|Seq#Index_3683| s@@12 j@@5) (|Seq#Take_3683| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_48156) (t T@Seq_48156) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_29303| s@@13))) (< n@@11 (|Seq#Length_29303| (|Seq#Append_48156| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_29303| s@@13)) (|Seq#Length_29303| s@@13)) n@@11) (= (|Seq#Take_29303| (|Seq#Append_48156| s@@13 t) n@@11) (|Seq#Append_48156| s@@13 (|Seq#Take_29303| t (|Seq#Sub| n@@11 (|Seq#Length_29303| s@@13)))))))
 :qid |stdinbpl.475:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_29303| (|Seq#Append_48156| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3683) (t@@0 T@Seq_3683) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3683| s@@14))) (< n@@12 (|Seq#Length_3683| (|Seq#Append_3683| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3683| s@@14)) (|Seq#Length_3683| s@@14)) n@@12) (= (|Seq#Take_3683| (|Seq#Append_3683| s@@14 t@@0) n@@12) (|Seq#Append_3683| s@@14 (|Seq#Take_3683| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3683| s@@14)))))))
 :qid |stdinbpl.475:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3683| (|Seq#Append_3683| s@@14 t@@0) n@@12))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_40968) (i@@7 Int) (lo@@2 Int) (hi@@3 Int) (step@@1 Int) (vmin@@1 Int) (vmax_1@@1 Int) (ar_1@@3 T@Seq_48156) (v_2@@1 Int) ) (! (dummyFunction_4112 (|count_square#triggerStateless| i@@7 lo@@2 hi@@3 step@@1 vmin@@1 vmax_1@@1 ar_1@@3 v_2@@1))
 :qid |stdinbpl.1267:15|
 :skolemid |105|
 :pattern ( (|count_square'| Heap@@6 i@@7 lo@@2 hi@@3 step@@1 vmin@@1 vmax_1@@1 ar_1@@3 v_2@@1))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_40968) (Heap1Heap T@PolymorphicMapType_40968) (i@@8 Int) (lo@@3 Int) (hi@@4 Int) (step@@2 Int) (vmin@@2 Int) (vmax_1@@2 Int) (ar_1@@4 T@Seq_48156) ) (!  (=> (and (=  (and (<= vmin@@2 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) vmax_1@@2) (and (<= lo@@3 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2) hi@@4))))  (and (<= vmin@@2 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) vmax_1@@2) (and (<= lo@@3 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2) hi@@4))))) (=> (and (<= vmin@@2 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) vmax_1@@2) (and (<= lo@@3 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2) hi@@4)))) (= (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap2Heap) (|Seq#Index_29303| ar_1@@4 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) Ref__Integer_value) (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap1Heap) (|Seq#Index_29303| ar_1@@4 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) Ref__Integer_value)))) (= (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)))
 :qid |stdinbpl.1027:15|
 :skolemid |88|
 :pattern ( (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_40968) (Heap1Heap@@0 T@PolymorphicMapType_40968) (i@@9 Int) (lo@@4 Int) (hi@@5 Int) (step@@3 Int) (vmin@@3 Int) (vmax_1@@3 Int) (ar_1@@5 T@Seq_48156) (v_2@@2 Int) ) (!  (=> (and (=  (and (<= vmin@@3 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) vmax_1@@3) (and (<= lo@@4 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) step@@3)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) step@@3) hi@@5))))  (and (<= vmin@@3 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) vmax_1@@3) (and (<= lo@@4 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) step@@3)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) step@@3) hi@@5))))) (=> (and (<= vmin@@3 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) vmax_1@@3) (and (<= lo@@4 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) step@@3)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) step@@3) hi@@5)))) (= (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap2Heap@@0) (|Seq#Index_29303| ar_1@@5 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2))) Ref__Integer_value) (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap1Heap@@0) (|Seq#Index_29303| ar_1@@5 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2))) Ref__Integer_value)))) (= (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)))
 :qid |stdinbpl.1293:15|
 :skolemid |109|
 :pattern ( (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@7 T@PolymorphicMapType_40968) (Mask@@4 T@PolymorphicMapType_40989) (i@@10 Int) (lo@@5 Int) (hi@@6 Int) (step@@4 Int) (vmin@@4 Int) (vmax_1@@4 Int) (ar_1@@6 T@Seq_48156) ) (!  (=> (and (state Heap@@7 Mask@@4) (< AssumeFunctionsAbove 3)) (=> (and (and (and (and (<= 0 lo@@5) (and (<= lo@@5 hi@@6) (and (<= hi@@6 step@@4) (> step@@4 0)))) (and (<= 0 vmin@@4) (and (<= vmin@@4 i@@10) (<= i@@10 vmax_1@@4)))) (<= vmax_1@@4 (|Seq#Length_29303| ar_1@@6))) (forall ((k@@0 Int) (j@@6 Int) ) (!  (=> (and (>= k@@0 0) (and (< k@@0 (|Seq#Length_29303| ar_1@@6)) (and (>= j@@6 0) (and (< j@@6 (|Seq#Length_29303| ar_1@@6)) (not (= k@@0 j@@6)))))) (not (= (|Seq#Index_29303| ar_1@@6 k@@0) (|Seq#Index_29303| ar_1@@6 j@@6))))
 :qid |stdinbpl.1009:195|
 :skolemid |85|
 :pattern ( (|Seq#Index_29303| ar_1@@6 k@@0) (|Seq#Index_29303| ar_1@@6 j@@6))
))) (= (sum_square Heap@@7 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6) (ite (< i@@10 vmax_1@@4) (+ (ite  (and (<= lo@@5 (mod i@@10 step@@4)) (< (mod i@@10 step@@4) hi@@6)) (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@7) (|Seq#Index_29303| ar_1@@6 i@@10) Ref__Integer_value) 0) (|sum_square'| Heap@@7 (+ i@@10 1) lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6)) 0))))
 :qid |stdinbpl.1007:15|
 :skolemid |86|
 :pattern ( (state Heap@@7 Mask@@4) (sum_square Heap@@7 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_40968) (ExhaleHeap@@1 T@PolymorphicMapType_40968) (Mask@@5 T@PolymorphicMapType_40989) (o_45 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@5) (=> (select (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| Heap@@8) o_45 $allocated) (select (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| ExhaleHeap@@1) o_45 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@5) (select (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| ExhaleHeap@@1) o_45 $allocated))
)))
(assert (forall ((p T@Field_29264_115514) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_41028_41028 p v_1 p w))
 :qid |stdinbpl.293:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_41028_41028 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_48156) (s1 T@Seq_48156) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_29303|)) (not (= s1 |Seq#Empty_29303|))) (<= (|Seq#Length_29303| s0) n@@13)) (< n@@13 (|Seq#Length_29303| (|Seq#Append_48156| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_29303| s0)) (|Seq#Length_29303| s0)) n@@13) (= (|Seq#Index_29303| (|Seq#Append_48156| s0 s1) n@@13) (|Seq#Index_29303| s1 (|Seq#Sub| n@@13 (|Seq#Length_29303| s0))))))
 :qid |stdinbpl.362:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_29303| (|Seq#Append_48156| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3683) (s1@@0 T@Seq_3683) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3683|)) (not (= s1@@0 |Seq#Empty_3683|))) (<= (|Seq#Length_3683| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3683| (|Seq#Append_3683| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3683| s0@@0)) (|Seq#Length_3683| s0@@0)) n@@14) (= (|Seq#Index_3683| (|Seq#Append_3683| s0@@0 s1@@0) n@@14) (|Seq#Index_3683| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3683| s0@@0))))))
 :qid |stdinbpl.362:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3683| (|Seq#Append_3683| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_29264_3805 Ref__Integer_value)))
(assert  (not (IsWandField_29264_3805 Ref__Integer_value)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_40968) (ExhaleHeap@@2 T@PolymorphicMapType_40968) (Mask@@6 T@PolymorphicMapType_40989) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@6) (succHeap Heap@@9 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_40989) (o_2@@4 T@Ref) (f_4@@4 T@Field_29264_115647) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_29264_120898 f_4@@4))) (not (IsWandField_29264_120914 f_4@@4))) (<= (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_40989) (o_2@@5 T@Ref) (f_4@@5 T@Field_29264_115514) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_29264_115605 f_4@@5))) (not (IsWandField_29264_117352 f_4@@5))) (<= (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_40989) (o_2@@6 T@Ref) (f_4@@6 T@Field_41041_41042) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_29264_41042 f_4@@6))) (not (IsWandField_29264_41042 f_4@@6))) (<= (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_40989) (o_2@@7 T@Ref) (f_4@@7 T@Field_41028_53) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| Mask@@10) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_29264_53 f_4@@7))) (not (IsWandField_29264_53 f_4@@7))) (<= (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| Mask@@10) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| Mask@@10) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_40989) (o_2@@8 T@Ref) (f_4@@8 T@Field_47114_3805) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| Mask@@11) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_29264_3805 f_4@@8))) (not (IsWandField_29264_3805 f_4@@8))) (<= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| Mask@@11) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| Mask@@11) o_2@@8 f_4@@8))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_40968) (Mask@@12 T@PolymorphicMapType_40989) (i@@11 Int) (hi@@7 Int) (ar_1@@7 T@Seq_3683) ) (!  (=> (state Heap@@10 Mask@@12) (= (|sum_list'| Heap@@10 i@@11 hi@@7 ar_1@@7) (|sum_list#frame| EmptyFrame i@@11 hi@@7 ar_1@@7)))
 :qid |stdinbpl.694:15|
 :skolemid |61|
 :pattern ( (state Heap@@10 Mask@@12) (|sum_list'| Heap@@10 i@@11 hi@@7 ar_1@@7))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_40989) (o_2@@9 T@Ref) (f_4@@9 T@Field_29264_115647) ) (! (= (HasDirectPerm_29264_121352 Mask@@13 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| Mask@@13) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_29264_121352 Mask@@13 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_40989) (o_2@@10 T@Ref) (f_4@@10 T@Field_29264_115514) ) (! (= (HasDirectPerm_29264_115578 Mask@@14 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| Mask@@14) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_29264_115578 Mask@@14 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_40989) (o_2@@11 T@Ref) (f_4@@11 T@Field_41041_41042) ) (! (= (HasDirectPerm_29264_41042 Mask@@15 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| Mask@@15) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_29264_41042 Mask@@15 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_40989) (o_2@@12 T@Ref) (f_4@@12 T@Field_41028_53) ) (! (= (HasDirectPerm_29264_53 Mask@@16 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| Mask@@16) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_29264_53 Mask@@16 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_40989) (o_2@@13 T@Ref) (f_4@@13 T@Field_47114_3805) ) (! (= (HasDirectPerm_29264_3805 Mask@@17 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| Mask@@17) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_29264_3805 Mask@@17 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_40968) (i@@12 Int) (lo@@6 Int) (hi@@8 Int) (ar_1@@8 T@Seq_48156) ) (! (dummyFunction_4112 (|sum_array#triggerStateless| i@@12 lo@@6 hi@@8 ar_1@@8))
 :qid |stdinbpl.766:15|
 :skolemid |63|
 :pattern ( (|sum_array'| Heap@@11 i@@12 lo@@6 hi@@8 ar_1@@8))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_40968) (i@@13 Int) (hi@@9 Int) (ar_1@@9 T@Seq_3683) (v_2@@3 Int) ) (! (dummyFunction_4112 (|count_list#triggerStateless| i@@13 hi@@9 ar_1@@9 v_2@@3))
 :qid |stdinbpl.1533:15|
 :skolemid |126|
 :pattern ( (|count_list'| Heap@@12 i@@13 hi@@9 ar_1@@9 v_2@@3))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_40968) (i@@14 Int) (hi@@10 Int) (ar_1@@10 T@Seq_48156) (v_2@@4 Int) ) (! (dummyFunction_4112 (|count_array#triggerStateless| i@@14 hi@@10 ar_1@@10 v_2@@4))
 :qid |stdinbpl.1618:15|
 :skolemid |130|
 :pattern ( (|count_array'| Heap@@13 i@@14 hi@@10 ar_1@@10 v_2@@4))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_40968) (ExhaleHeap@@3 T@PolymorphicMapType_40968) (Mask@@18 T@PolymorphicMapType_40989) (pm_f_22@@1 T@Field_29264_115514) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@3 Mask@@18) (=> (and (HasDirectPerm_29264_115578 Mask@@18 null pm_f_22@@1) (IsPredicateField_29264_115605 pm_f_22@@1)) (and (and (and (and (forall ((o2_22 T@Ref) (f_59 T@Field_41028_53) ) (!  (=> (select (|PolymorphicMapType_41517_41028_53#PolymorphicMapType_41517| (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@14) null (PredicateMaskField_29264 pm_f_22@@1))) o2_22 f_59) (= (select (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| Heap@@14) o2_22 f_59) (select (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| ExhaleHeap@@3) o2_22 f_59)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| ExhaleHeap@@3) o2_22 f_59))
)) (forall ((o2_22@@0 T@Ref) (f_59@@0 T@Field_41041_41042) ) (!  (=> (select (|PolymorphicMapType_41517_41028_41042#PolymorphicMapType_41517| (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@14) null (PredicateMaskField_29264 pm_f_22@@1))) o2_22@@0 f_59@@0) (= (select (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| Heap@@14) o2_22@@0 f_59@@0) (select (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| ExhaleHeap@@3) o2_22@@0 f_59@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| ExhaleHeap@@3) o2_22@@0 f_59@@0))
))) (forall ((o2_22@@1 T@Ref) (f_59@@1 T@Field_47114_3805) ) (!  (=> (select (|PolymorphicMapType_41517_41028_3805#PolymorphicMapType_41517| (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@14) null (PredicateMaskField_29264 pm_f_22@@1))) o2_22@@1 f_59@@1) (= (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@14) o2_22@@1 f_59@@1) (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| ExhaleHeap@@3) o2_22@@1 f_59@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| ExhaleHeap@@3) o2_22@@1 f_59@@1))
))) (forall ((o2_22@@2 T@Ref) (f_59@@2 T@Field_29264_115514) ) (!  (=> (select (|PolymorphicMapType_41517_41028_115514#PolymorphicMapType_41517| (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@14) null (PredicateMaskField_29264 pm_f_22@@1))) o2_22@@2 f_59@@2) (= (select (|PolymorphicMapType_40968_41028_115514#PolymorphicMapType_40968| Heap@@14) o2_22@@2 f_59@@2) (select (|PolymorphicMapType_40968_41028_115514#PolymorphicMapType_40968| ExhaleHeap@@3) o2_22@@2 f_59@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40968_41028_115514#PolymorphicMapType_40968| ExhaleHeap@@3) o2_22@@2 f_59@@2))
))) (forall ((o2_22@@3 T@Ref) (f_59@@3 T@Field_29264_115647) ) (!  (=> (select (|PolymorphicMapType_41517_41028_116825#PolymorphicMapType_41517| (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@14) null (PredicateMaskField_29264 pm_f_22@@1))) o2_22@@3 f_59@@3) (= (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@14) o2_22@@3 f_59@@3) (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| ExhaleHeap@@3) o2_22@@3 f_59@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| ExhaleHeap@@3) o2_22@@3 f_59@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@3 Mask@@18) (IsPredicateField_29264_115605 pm_f_22@@1))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_40968) (ExhaleHeap@@4 T@PolymorphicMapType_40968) (Mask@@19 T@PolymorphicMapType_40989) (pm_f_22@@2 T@Field_29264_115514) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@4 Mask@@19) (=> (and (HasDirectPerm_29264_115578 Mask@@19 null pm_f_22@@2) (IsWandField_29264_117352 pm_f_22@@2)) (and (and (and (and (forall ((o2_22@@4 T@Ref) (f_59@@4 T@Field_41028_53) ) (!  (=> (select (|PolymorphicMapType_41517_41028_53#PolymorphicMapType_41517| (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@15) null (WandMaskField_29264 pm_f_22@@2))) o2_22@@4 f_59@@4) (= (select (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| Heap@@15) o2_22@@4 f_59@@4) (select (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| ExhaleHeap@@4) o2_22@@4 f_59@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| ExhaleHeap@@4) o2_22@@4 f_59@@4))
)) (forall ((o2_22@@5 T@Ref) (f_59@@5 T@Field_41041_41042) ) (!  (=> (select (|PolymorphicMapType_41517_41028_41042#PolymorphicMapType_41517| (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@15) null (WandMaskField_29264 pm_f_22@@2))) o2_22@@5 f_59@@5) (= (select (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| Heap@@15) o2_22@@5 f_59@@5) (select (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| ExhaleHeap@@4) o2_22@@5 f_59@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| ExhaleHeap@@4) o2_22@@5 f_59@@5))
))) (forall ((o2_22@@6 T@Ref) (f_59@@6 T@Field_47114_3805) ) (!  (=> (select (|PolymorphicMapType_41517_41028_3805#PolymorphicMapType_41517| (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@15) null (WandMaskField_29264 pm_f_22@@2))) o2_22@@6 f_59@@6) (= (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@15) o2_22@@6 f_59@@6) (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| ExhaleHeap@@4) o2_22@@6 f_59@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| ExhaleHeap@@4) o2_22@@6 f_59@@6))
))) (forall ((o2_22@@7 T@Ref) (f_59@@7 T@Field_29264_115514) ) (!  (=> (select (|PolymorphicMapType_41517_41028_115514#PolymorphicMapType_41517| (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@15) null (WandMaskField_29264 pm_f_22@@2))) o2_22@@7 f_59@@7) (= (select (|PolymorphicMapType_40968_41028_115514#PolymorphicMapType_40968| Heap@@15) o2_22@@7 f_59@@7) (select (|PolymorphicMapType_40968_41028_115514#PolymorphicMapType_40968| ExhaleHeap@@4) o2_22@@7 f_59@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40968_41028_115514#PolymorphicMapType_40968| ExhaleHeap@@4) o2_22@@7 f_59@@7))
))) (forall ((o2_22@@8 T@Ref) (f_59@@8 T@Field_29264_115647) ) (!  (=> (select (|PolymorphicMapType_41517_41028_116825#PolymorphicMapType_41517| (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@15) null (WandMaskField_29264 pm_f_22@@2))) o2_22@@8 f_59@@8) (= (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@15) o2_22@@8 f_59@@8) (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| ExhaleHeap@@4) o2_22@@8 f_59@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| ExhaleHeap@@4) o2_22@@8 f_59@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@4 Mask@@19) (IsWandField_29264_117352 pm_f_22@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.281:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3683| (|Seq#Range| q@min@@0 q@max@@0) j@@7) (+ q@min@@0 j@@7)))
 :qid |stdinbpl.654:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3683| (|Seq#Range| q@min@@0 q@max@@0) j@@7))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_40968) (ExhaleHeap@@5 T@PolymorphicMapType_40968) (Mask@@20 T@PolymorphicMapType_40989) (o_45@@0 T@Ref) (f_59@@9 T@Field_29264_115647) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@5 Mask@@20) (=> (HasDirectPerm_29264_121352 Mask@@20 o_45@@0 f_59@@9) (= (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@16) o_45@@0 f_59@@9) (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| ExhaleHeap@@5) o_45@@0 f_59@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@5 Mask@@20) (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| ExhaleHeap@@5) o_45@@0 f_59@@9))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_40968) (ExhaleHeap@@6 T@PolymorphicMapType_40968) (Mask@@21 T@PolymorphicMapType_40989) (o_45@@1 T@Ref) (f_59@@10 T@Field_29264_115514) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@6 Mask@@21) (=> (HasDirectPerm_29264_115578 Mask@@21 o_45@@1 f_59@@10) (= (select (|PolymorphicMapType_40968_41028_115514#PolymorphicMapType_40968| Heap@@17) o_45@@1 f_59@@10) (select (|PolymorphicMapType_40968_41028_115514#PolymorphicMapType_40968| ExhaleHeap@@6) o_45@@1 f_59@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@6 Mask@@21) (select (|PolymorphicMapType_40968_41028_115514#PolymorphicMapType_40968| ExhaleHeap@@6) o_45@@1 f_59@@10))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_40968) (ExhaleHeap@@7 T@PolymorphicMapType_40968) (Mask@@22 T@PolymorphicMapType_40989) (o_45@@2 T@Ref) (f_59@@11 T@Field_41041_41042) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@7 Mask@@22) (=> (HasDirectPerm_29264_41042 Mask@@22 o_45@@2 f_59@@11) (= (select (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| Heap@@18) o_45@@2 f_59@@11) (select (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| ExhaleHeap@@7) o_45@@2 f_59@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@7 Mask@@22) (select (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| ExhaleHeap@@7) o_45@@2 f_59@@11))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_40968) (ExhaleHeap@@8 T@PolymorphicMapType_40968) (Mask@@23 T@PolymorphicMapType_40989) (o_45@@3 T@Ref) (f_59@@12 T@Field_41028_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@8 Mask@@23) (=> (HasDirectPerm_29264_53 Mask@@23 o_45@@3 f_59@@12) (= (select (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| Heap@@19) o_45@@3 f_59@@12) (select (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| ExhaleHeap@@8) o_45@@3 f_59@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@8 Mask@@23) (select (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| ExhaleHeap@@8) o_45@@3 f_59@@12))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_40968) (ExhaleHeap@@9 T@PolymorphicMapType_40968) (Mask@@24 T@PolymorphicMapType_40989) (o_45@@4 T@Ref) (f_59@@13 T@Field_47114_3805) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@9 Mask@@24) (=> (HasDirectPerm_29264_3805 Mask@@24 o_45@@4 f_59@@13) (= (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@20) o_45@@4 f_59@@13) (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| ExhaleHeap@@9) o_45@@4 f_59@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@9 Mask@@24) (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| ExhaleHeap@@9) o_45@@4 f_59@@13))
)))
(assert (forall ((s0@@1 T@Seq_48156) (s1@@1 T@Seq_48156) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_29303|)) (not (= s1@@1 |Seq#Empty_29303|))) (= (|Seq#Length_29303| (|Seq#Append_48156| s0@@1 s1@@1)) (+ (|Seq#Length_29303| s0@@1) (|Seq#Length_29303| s1@@1))))
 :qid |stdinbpl.331:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_29303| (|Seq#Append_48156| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3683) (s1@@2 T@Seq_3683) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3683|)) (not (= s1@@2 |Seq#Empty_3683|))) (= (|Seq#Length_3683| (|Seq#Append_3683| s0@@2 s1@@2)) (+ (|Seq#Length_3683| s0@@2) (|Seq#Length_3683| s1@@2))))
 :qid |stdinbpl.331:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3683| (|Seq#Append_3683| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_29264_115647) ) (! (= (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_29264_115514) ) (! (= (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_41041_41042) ) (! (= (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_41028_53) ) (! (= (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_47114_3805) ) (! (= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_40968) (Mask@@25 T@PolymorphicMapType_40989) (i@@15 Int) (hi@@11 Int) (ar_1@@11 T@Seq_3683) (v_2@@5 Int) ) (!  (=> (and (state Heap@@21 Mask@@25) (< AssumeFunctionsAbove 5)) (=> (and (and (<= 0 i@@15) (<= i@@15 hi@@11)) (<= hi@@11 (|Seq#Length_3683| ar_1@@11))) (= (count_list Heap@@21 i@@15 hi@@11 ar_1@@11 v_2@@5) (ite (< i@@15 hi@@11) (+ (ite (= (|Seq#Index_3683| ar_1@@11 i@@15) v_2@@5) 1 0) (|count_list'| Heap@@21 (+ i@@15 1) hi@@11 ar_1@@11 v_2@@5)) 0))))
 :qid |stdinbpl.1539:15|
 :skolemid |127|
 :pattern ( (state Heap@@21 Mask@@25) (count_list Heap@@21 i@@15 hi@@11 ar_1@@11 v_2@@5))
)))
(assert (forall ((s@@15 T@Seq_48156) (t@@1 T@Seq_48156) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_29303| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_29303| s@@15)) (|Seq#Length_29303| s@@15)) n@@15) (= (|Seq#Drop_29303| (|Seq#Append_48156| s@@15 t@@1) n@@15) (|Seq#Drop_29303| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_29303| s@@15))))))
 :qid |stdinbpl.488:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_29303| (|Seq#Append_48156| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3683) (t@@2 T@Seq_3683) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3683| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3683| s@@16)) (|Seq#Length_3683| s@@16)) n@@16) (= (|Seq#Drop_3683| (|Seq#Append_3683| s@@16 t@@2) n@@16) (|Seq#Drop_3683| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3683| s@@16))))))
 :qid |stdinbpl.488:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3683| (|Seq#Append_3683| s@@16 t@@2) n@@16))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_40968) (i@@16 Int) (lo@@7 Int) (hi@@12 Int) (ar_1@@12 T@Seq_48156) ) (!  (and (= (sum_array Heap@@22 i@@16 lo@@7 hi@@12 ar_1@@12) (|sum_array'| Heap@@22 i@@16 lo@@7 hi@@12 ar_1@@12)) (dummyFunction_4112 (|sum_array#triggerStateless| i@@16 lo@@7 hi@@12 ar_1@@12)))
 :qid |stdinbpl.762:15|
 :skolemid |62|
 :pattern ( (sum_array Heap@@22 i@@16 lo@@7 hi@@12 ar_1@@12))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_40968) (i@@17 Int) (hi@@13 Int) (ar_1@@13 T@Seq_3683) (v_2@@6 Int) ) (!  (and (= (count_list Heap@@23 i@@17 hi@@13 ar_1@@13 v_2@@6) (|count_list'| Heap@@23 i@@17 hi@@13 ar_1@@13 v_2@@6)) (dummyFunction_4112 (|count_list#triggerStateless| i@@17 hi@@13 ar_1@@13 v_2@@6)))
 :qid |stdinbpl.1529:15|
 :skolemid |125|
 :pattern ( (count_list Heap@@23 i@@17 hi@@13 ar_1@@13 v_2@@6))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_40968) (i@@18 Int) (hi@@14 Int) (ar_1@@14 T@Seq_48156) (v_2@@7 Int) ) (!  (and (= (count_array Heap@@24 i@@18 hi@@14 ar_1@@14 v_2@@7) (|count_array'| Heap@@24 i@@18 hi@@14 ar_1@@14 v_2@@7)) (dummyFunction_4112 (|count_array#triggerStateless| i@@18 hi@@14 ar_1@@14 v_2@@7)))
 :qid |stdinbpl.1614:15|
 :skolemid |129|
 :pattern ( (count_array Heap@@24 i@@18 hi@@14 ar_1@@14 v_2@@7))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_40989) (SummandMask1 T@PolymorphicMapType_40989) (SummandMask2 T@PolymorphicMapType_40989) (o_2@@19 T@Ref) (f_4@@19 T@Field_29264_115647) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_40989) (SummandMask1@@0 T@PolymorphicMapType_40989) (SummandMask2@@0 T@PolymorphicMapType_40989) (o_2@@20 T@Ref) (f_4@@20 T@Field_29264_115514) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_40989) (SummandMask1@@1 T@PolymorphicMapType_40989) (SummandMask2@@1 T@PolymorphicMapType_40989) (o_2@@21 T@Ref) (f_4@@21 T@Field_41041_41042) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_40989) (SummandMask1@@2 T@PolymorphicMapType_40989) (SummandMask2@@2 T@PolymorphicMapType_40989) (o_2@@22 T@Ref) (f_4@@22 T@Field_41028_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_40989) (SummandMask1@@3 T@PolymorphicMapType_40989) (SummandMask2@@3 T@PolymorphicMapType_40989) (o_2@@23 T@Ref) (f_4@@23 T@Field_47114_3805) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_40968) (i@@19 Int) (lo@@8 Int) (hi@@15 Int) (step@@5 Int) (vmin@@5 Int) (vmax_1@@5 Int) (ar_1@@15 T@Seq_48156) ) (!  (and (= (sum_square Heap@@25 i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax_1@@5 ar_1@@15) (|sum_square'| Heap@@25 i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax_1@@5 ar_1@@15)) (dummyFunction_4112 (|sum_square#triggerStateless| i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax_1@@5 ar_1@@15)))
 :qid |stdinbpl.997:15|
 :skolemid |83|
 :pattern ( (sum_square Heap@@25 i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax_1@@5 ar_1@@15))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_40968) (Mask@@26 T@PolymorphicMapType_40989) (i@@20 Int) (hi@@16 Int) (ar_1@@16 T@Seq_3683) (v_2@@8 Int) ) (!  (=> (state Heap@@26 Mask@@26) (= (|count_list'| Heap@@26 i@@20 hi@@16 ar_1@@16 v_2@@8) (|count_list#frame| EmptyFrame i@@20 hi@@16 ar_1@@16 v_2@@8)))
 :qid |stdinbpl.1546:15|
 :skolemid |128|
 :pattern ( (state Heap@@26 Mask@@26) (|count_list'| Heap@@26 i@@20 hi@@16 ar_1@@16 v_2@@8))
)))
(assert (forall ((Heap2Heap@@1 T@PolymorphicMapType_40968) (Heap1Heap@@1 T@PolymorphicMapType_40968) (i@@21 Int) (hi@@17 Int) (ar_1@@17 T@Seq_48156) (v_2@@9 Int) ) (!  (=> (and (= (|Seq#Contains_3683| (|Seq#Range| 0 hi@@17) (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@21 hi@@17 ar_1@@17 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@21 hi@@17 ar_1@@17 v_2@@9))) (|Seq#Contains_3683| (|Seq#Range| 0 hi@@17) (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@21 hi@@17 ar_1@@17 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@21 hi@@17 ar_1@@17 v_2@@9)))) (=> (|Seq#Contains_3683| (|Seq#Range| 0 hi@@17) (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@21 hi@@17 ar_1@@17 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@21 hi@@17 ar_1@@17 v_2@@9))) (= (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap2Heap@@1) (|Seq#Index_29303| ar_1@@17 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@21 hi@@17 ar_1@@17 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@21 hi@@17 ar_1@@17 v_2@@9))) Ref__Integer_value) (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap1Heap@@1) (|Seq#Index_29303| ar_1@@17 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@21 hi@@17 ar_1@@17 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@21 hi@@17 ar_1@@17 v_2@@9))) Ref__Integer_value)))) (= (|count_array#condqp4| Heap2Heap@@1 i@@21 hi@@17 ar_1@@17 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@21 hi@@17 ar_1@@17 v_2@@9)))
 :qid |stdinbpl.1644:15|
 :skolemid |134|
 :pattern ( (|count_array#condqp4| Heap2Heap@@1 i@@21 hi@@17 ar_1@@17 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@21 hi@@17 ar_1@@17 v_2@@9) (succHeapTrans Heap2Heap@@1 Heap1Heap@@1))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3683| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3683| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.653:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3683| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((Heap2Heap@@2 T@PolymorphicMapType_40968) (Heap1Heap@@2 T@PolymorphicMapType_40968) (i@@22 Int) (lo@@9 Int) (hi@@18 Int) (ar_1@@18 T@Seq_48156) ) (!  (=> (and (= (|Seq#Contains_3683| (|Seq#Range| lo@@9 hi@@18) (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@22 lo@@9 hi@@18 ar_1@@18) (|sum_array#condqp1| Heap1Heap@@2 i@@22 lo@@9 hi@@18 ar_1@@18))) (|Seq#Contains_3683| (|Seq#Range| lo@@9 hi@@18) (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@22 lo@@9 hi@@18 ar_1@@18) (|sum_array#condqp1| Heap1Heap@@2 i@@22 lo@@9 hi@@18 ar_1@@18)))) (=> (|Seq#Contains_3683| (|Seq#Range| lo@@9 hi@@18) (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@22 lo@@9 hi@@18 ar_1@@18) (|sum_array#condqp1| Heap1Heap@@2 i@@22 lo@@9 hi@@18 ar_1@@18))) (= (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap2Heap@@2) (|Seq#Index_29303| ar_1@@18 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@22 lo@@9 hi@@18 ar_1@@18) (|sum_array#condqp1| Heap1Heap@@2 i@@22 lo@@9 hi@@18 ar_1@@18))) Ref__Integer_value) (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap1Heap@@2) (|Seq#Index_29303| ar_1@@18 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@22 lo@@9 hi@@18 ar_1@@18) (|sum_array#condqp1| Heap1Heap@@2 i@@22 lo@@9 hi@@18 ar_1@@18))) Ref__Integer_value)))) (= (|sum_array#condqp1| Heap2Heap@@2 i@@22 lo@@9 hi@@18 ar_1@@18) (|sum_array#condqp1| Heap1Heap@@2 i@@22 lo@@9 hi@@18 ar_1@@18)))
 :qid |stdinbpl.792:15|
 :skolemid |67|
 :pattern ( (|sum_array#condqp1| Heap2Heap@@2 i@@22 lo@@9 hi@@18 ar_1@@18) (|sum_array#condqp1| Heap1Heap@@2 i@@22 lo@@9 hi@@18 ar_1@@18) (succHeapTrans Heap2Heap@@2 Heap1Heap@@2))
)))
(assert (forall ((a T@Seq_48156) (b T@Seq_48156) ) (!  (=> (|Seq#Equal_48156| a b) (= a b))
 :qid |stdinbpl.626:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_48156| a b))
)))
(assert (forall ((a@@0 T@Seq_3683) (b@@0 T@Seq_3683) ) (!  (=> (|Seq#Equal_3683| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.626:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3683| a@@0 b@@0))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_40968) (Mask@@27 T@PolymorphicMapType_40989) (i@@23 Int) (lo@@10 Int) (hi@@19 Int) (step@@6 Int) (vmin@@6 Int) (vmax_1@@6 Int) (ar_1@@19 T@Seq_48156) (v_2@@10 Int) ) (!  (=> (and (state Heap@@27 Mask@@27) (< AssumeFunctionsAbove 0)) (=> (and (and (and (and (<= 0 lo@@10) (and (<= lo@@10 hi@@19) (and (<= hi@@19 step@@6) (> step@@6 0)))) (and (<= 0 vmin@@6) (and (<= vmin@@6 i@@23) (<= i@@23 vmax_1@@6)))) (<= vmax_1@@6 (|Seq#Length_29303| ar_1@@19))) (forall ((k@@1 Int) (j@@8 Int) ) (!  (=> (and (>= k@@1 0) (and (< k@@1 (|Seq#Length_29303| ar_1@@19)) (and (>= j@@8 0) (and (< j@@8 (|Seq#Length_29303| ar_1@@19)) (not (= k@@1 j@@8)))))) (not (= (|Seq#Index_29303| ar_1@@19 k@@1) (|Seq#Index_29303| ar_1@@19 j@@8))))
 :qid |stdinbpl.1275:195|
 :skolemid |106|
 :pattern ( (|Seq#Index_29303| ar_1@@19 k@@1) (|Seq#Index_29303| ar_1@@19 j@@8))
))) (= (count_square Heap@@27 i@@23 lo@@10 hi@@19 step@@6 vmin@@6 vmax_1@@6 ar_1@@19 v_2@@10) (ite (< i@@23 vmax_1@@6) (+ (ite  (and (<= lo@@10 (mod i@@23 step@@6)) (and (< (mod i@@23 step@@6) hi@@19) (= (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@27) (|Seq#Index_29303| ar_1@@19 i@@23) Ref__Integer_value) v_2@@10))) 1 0) (|count_square'| Heap@@27 (+ i@@23 1) lo@@10 hi@@19 step@@6 vmin@@6 vmax_1@@6 ar_1@@19 v_2@@10)) 0))))
 :qid |stdinbpl.1273:15|
 :skolemid |107|
 :pattern ( (state Heap@@27 Mask@@27) (count_square Heap@@27 i@@23 lo@@10 hi@@19 step@@6 vmin@@6 vmax_1@@6 ar_1@@19 v_2@@10))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_40968) (i@@24 Int) (hi@@20 Int) (ar_1@@20 T@Seq_3683) ) (!  (and (= (sum_list Heap@@28 i@@24 hi@@20 ar_1@@20) (|sum_list'| Heap@@28 i@@24 hi@@20 ar_1@@20)) (dummyFunction_4112 (|sum_list#triggerStateless| i@@24 hi@@20 ar_1@@20)))
 :qid |stdinbpl.677:15|
 :skolemid |58|
 :pattern ( (sum_list Heap@@28 i@@24 hi@@20 ar_1@@20))
)))
(assert (forall ((s@@17 T@Seq_48156) (i@@25 Int) ) (!  (=> (and (<= 0 i@@25) (< i@@25 (|Seq#Length_29303| s@@17))) (|Seq#ContainsTrigger_29303| s@@17 (|Seq#Index_29303| s@@17 i@@25)))
 :qid |stdinbpl.519:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_29303| s@@17 i@@25))
)))
(assert (forall ((s@@18 T@Seq_3683) (i@@26 Int) ) (!  (=> (and (<= 0 i@@26) (< i@@26 (|Seq#Length_3683| s@@18))) (|Seq#ContainsTrigger_3683| s@@18 (|Seq#Index_3683| s@@18 i@@26)))
 :qid |stdinbpl.519:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3683| s@@18 i@@26))
)))
(assert (forall ((s0@@3 T@Seq_48156) (s1@@3 T@Seq_48156) ) (!  (and (=> (= s0@@3 |Seq#Empty_29303|) (= (|Seq#Append_48156| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_29303|) (= (|Seq#Append_48156| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.337:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_48156| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3683) (s1@@4 T@Seq_3683) ) (!  (and (=> (= s0@@4 |Seq#Empty_3683|) (= (|Seq#Append_3683| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3683|) (= (|Seq#Append_3683| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.337:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3683| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_29303| (|Seq#Singleton_29303| t@@3) 0) t@@3)
 :qid |stdinbpl.341:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_29303| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3683| (|Seq#Singleton_3683| t@@4) 0) t@@4)
 :qid |stdinbpl.341:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3683| t@@4))
)))
(assert (forall ((s@@19 T@Seq_48156) ) (! (<= 0 (|Seq#Length_29303| s@@19))
 :qid |stdinbpl.320:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_29303| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3683) ) (! (<= 0 (|Seq#Length_3683| s@@20))
 :qid |stdinbpl.320:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3683| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_48156) (s1@@5 T@Seq_48156) ) (!  (=> (|Seq#Equal_48156| s0@@5 s1@@5) (and (= (|Seq#Length_29303| s0@@5) (|Seq#Length_29303| s1@@5)) (forall ((j@@9 Int) ) (!  (=> (and (<= 0 j@@9) (< j@@9 (|Seq#Length_29303| s0@@5))) (= (|Seq#Index_29303| s0@@5 j@@9) (|Seq#Index_29303| s1@@5 j@@9)))
 :qid |stdinbpl.616:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_29303| s0@@5 j@@9))
 :pattern ( (|Seq#Index_29303| s1@@5 j@@9))
))))
 :qid |stdinbpl.613:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_48156| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3683) (s1@@6 T@Seq_3683) ) (!  (=> (|Seq#Equal_3683| s0@@6 s1@@6) (and (= (|Seq#Length_3683| s0@@6) (|Seq#Length_3683| s1@@6)) (forall ((j@@10 Int) ) (!  (=> (and (<= 0 j@@10) (< j@@10 (|Seq#Length_3683| s0@@6))) (= (|Seq#Index_3683| s0@@6 j@@10) (|Seq#Index_3683| s1@@6 j@@10)))
 :qid |stdinbpl.616:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3683| s0@@6 j@@10))
 :pattern ( (|Seq#Index_3683| s1@@6 j@@10))
))))
 :qid |stdinbpl.613:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3683| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_29303| (|Seq#Singleton_29303| t@@5)) 1)
 :qid |stdinbpl.328:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_29303| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3683| (|Seq#Singleton_3683| t@@6)) 1)
 :qid |stdinbpl.328:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3683| t@@6))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_40968) (Mask@@28 T@PolymorphicMapType_40989) (i@@27 Int) (hi@@21 Int) (ar_1@@21 T@Seq_3683) ) (!  (=> (and (state Heap@@29 Mask@@28) (< AssumeFunctionsAbove 4)) (=> (and (and (<= 0 i@@27) (<= i@@27 hi@@21)) (<= hi@@21 (|Seq#Length_3683| ar_1@@21))) (= (sum_list Heap@@29 i@@27 hi@@21 ar_1@@21) (ite (< i@@27 hi@@21) (+ (|Seq#Index_3683| ar_1@@21 i@@27) (|sum_list'| Heap@@29 (+ i@@27 1) hi@@21 ar_1@@21)) 0))))
 :qid |stdinbpl.687:15|
 :skolemid |60|
 :pattern ( (state Heap@@29 Mask@@28) (sum_list Heap@@29 i@@27 hi@@21 ar_1@@21))
)))
(assert (forall ((s@@21 T@Seq_48156) (t@@7 T@Seq_48156) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_29303| s@@21))) (= (|Seq#Take_29303| (|Seq#Append_48156| s@@21 t@@7) n@@17) (|Seq#Take_29303| s@@21 n@@17)))
 :qid |stdinbpl.470:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_29303| (|Seq#Append_48156| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3683) (t@@8 T@Seq_3683) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3683| s@@22))) (= (|Seq#Take_3683| (|Seq#Append_3683| s@@22 t@@8) n@@18) (|Seq#Take_3683| s@@22 n@@18)))
 :qid |stdinbpl.470:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3683| (|Seq#Append_3683| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_48156) (i@@28 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@28) (< i@@28 (|Seq#Length_29303| s@@23))) (= (|Seq#Length_29303| (|Seq#Update_29303| s@@23 i@@28 v@@2)) (|Seq#Length_29303| s@@23)))
 :qid |stdinbpl.369:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_29303| (|Seq#Update_29303| s@@23 i@@28 v@@2)))
 :pattern ( (|Seq#Length_29303| s@@23) (|Seq#Update_29303| s@@23 i@@28 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3683) (i@@29 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@29) (< i@@29 (|Seq#Length_3683| s@@24))) (= (|Seq#Length_3683| (|Seq#Update_3683| s@@24 i@@29 v@@3)) (|Seq#Length_3683| s@@24)))
 :qid |stdinbpl.369:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3683| (|Seq#Update_3683| s@@24 i@@29 v@@3)))
 :pattern ( (|Seq#Length_3683| s@@24) (|Seq#Update_3683| s@@24 i@@29 v@@3))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_40968) (Mask@@29 T@PolymorphicMapType_40989) (i@@30 Int) (hi@@22 Int) (ar_1@@22 T@Seq_48156) (v_2@@11 Int) ) (!  (=> (and (state Heap@@30 Mask@@29) (< AssumeFunctionsAbove 2)) (=> (and (and (and (<= 0 i@@30) (<= i@@30 hi@@22)) (<= hi@@22 (|Seq#Length_29303| ar_1@@22))) (forall ((k@@2 Int) (j@@11 Int) ) (!  (=> (and (>= k@@2 0) (and (< k@@2 (|Seq#Length_29303| ar_1@@22)) (and (>= j@@11 0) (and (< j@@11 (|Seq#Length_29303| ar_1@@22)) (not (= k@@2 j@@11)))))) (not (= (|Seq#Index_29303| ar_1@@22 k@@2) (|Seq#Index_29303| ar_1@@22 j@@11))))
 :qid |stdinbpl.1626:112|
 :skolemid |131|
 :pattern ( (|Seq#Index_29303| ar_1@@22 k@@2) (|Seq#Index_29303| ar_1@@22 j@@11))
))) (= (count_array Heap@@30 i@@30 hi@@22 ar_1@@22 v_2@@11) (ite (< i@@30 hi@@22) (+ (ite (= (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@30) (|Seq#Index_29303| ar_1@@22 i@@30) Ref__Integer_value) v_2@@11) 1 0) (|count_array'| Heap@@30 (+ i@@30 1) hi@@22 ar_1@@22 v_2@@11)) 0))))
 :qid |stdinbpl.1624:15|
 :skolemid |132|
 :pattern ( (state Heap@@30 Mask@@29) (count_array Heap@@30 i@@30 hi@@22 ar_1@@22 v_2@@11))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_40968) (o_44 T@Ref) (f_31 T@Field_29264_115514) (v@@4 T@FrameType) ) (! (succHeap Heap@@31 (PolymorphicMapType_40968 (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| Heap@@31) (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| Heap@@31) (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@31) (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@31) (store (|PolymorphicMapType_40968_41028_115514#PolymorphicMapType_40968| Heap@@31) o_44 f_31 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40968 (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| Heap@@31) (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| Heap@@31) (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@31) (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@31) (store (|PolymorphicMapType_40968_41028_115514#PolymorphicMapType_40968| Heap@@31) o_44 f_31 v@@4)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_40968) (o_44@@0 T@Ref) (f_31@@0 T@Field_29264_115647) (v@@5 T@PolymorphicMapType_41517) ) (! (succHeap Heap@@32 (PolymorphicMapType_40968 (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| Heap@@32) (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| Heap@@32) (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@32) (store (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@32) o_44@@0 f_31@@0 v@@5) (|PolymorphicMapType_40968_41028_115514#PolymorphicMapType_40968| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40968 (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| Heap@@32) (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| Heap@@32) (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@32) (store (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@32) o_44@@0 f_31@@0 v@@5) (|PolymorphicMapType_40968_41028_115514#PolymorphicMapType_40968| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_40968) (o_44@@1 T@Ref) (f_31@@1 T@Field_47114_3805) (v@@6 Int) ) (! (succHeap Heap@@33 (PolymorphicMapType_40968 (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| Heap@@33) (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| Heap@@33) (store (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@33) o_44@@1 f_31@@1 v@@6) (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@33) (|PolymorphicMapType_40968_41028_115514#PolymorphicMapType_40968| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40968 (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| Heap@@33) (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| Heap@@33) (store (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@33) o_44@@1 f_31@@1 v@@6) (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@33) (|PolymorphicMapType_40968_41028_115514#PolymorphicMapType_40968| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_40968) (o_44@@2 T@Ref) (f_31@@2 T@Field_41041_41042) (v@@7 T@Ref) ) (! (succHeap Heap@@34 (PolymorphicMapType_40968 (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| Heap@@34) (store (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| Heap@@34) o_44@@2 f_31@@2 v@@7) (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@34) (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@34) (|PolymorphicMapType_40968_41028_115514#PolymorphicMapType_40968| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40968 (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| Heap@@34) (store (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| Heap@@34) o_44@@2 f_31@@2 v@@7) (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@34) (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@34) (|PolymorphicMapType_40968_41028_115514#PolymorphicMapType_40968| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_40968) (o_44@@3 T@Ref) (f_31@@3 T@Field_41028_53) (v@@8 Bool) ) (! (succHeap Heap@@35 (PolymorphicMapType_40968 (store (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| Heap@@35) o_44@@3 f_31@@3 v@@8) (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| Heap@@35) (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@35) (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@35) (|PolymorphicMapType_40968_41028_115514#PolymorphicMapType_40968| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40968 (store (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| Heap@@35) o_44@@3 f_31@@3 v@@8) (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| Heap@@35) (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@35) (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@35) (|PolymorphicMapType_40968_41028_115514#PolymorphicMapType_40968| Heap@@35)))
)))
(assert (forall ((s@@25 T@Seq_48156) (t@@9 T@Seq_48156) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_29303| s@@25))) (= (|Seq#Drop_29303| (|Seq#Append_48156| s@@25 t@@9) n@@19) (|Seq#Append_48156| (|Seq#Drop_29303| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.484:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_29303| (|Seq#Append_48156| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3683) (t@@10 T@Seq_3683) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3683| s@@26))) (= (|Seq#Drop_3683| (|Seq#Append_3683| s@@26 t@@10) n@@20) (|Seq#Append_3683| (|Seq#Drop_3683| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.484:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3683| (|Seq#Append_3683| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_48156) (n@@21 Int) (i@@31 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@31)) (< i@@31 (|Seq#Length_29303| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@31 n@@21) n@@21) i@@31) (= (|Seq#Index_29303| (|Seq#Drop_29303| s@@27 n@@21) (|Seq#Sub| i@@31 n@@21)) (|Seq#Index_29303| s@@27 i@@31))))
 :qid |stdinbpl.420:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_29303| s@@27 n@@21) (|Seq#Index_29303| s@@27 i@@31))
)))
(assert (forall ((s@@28 T@Seq_3683) (n@@22 Int) (i@@32 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@32)) (< i@@32 (|Seq#Length_3683| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@32 n@@22) n@@22) i@@32) (= (|Seq#Index_3683| (|Seq#Drop_3683| s@@28 n@@22) (|Seq#Sub| i@@32 n@@22)) (|Seq#Index_3683| s@@28 i@@32))))
 :qid |stdinbpl.420:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3683| s@@28 n@@22) (|Seq#Index_3683| s@@28 i@@32))
)))
(assert (forall ((s0@@7 T@Seq_48156) (s1@@7 T@Seq_48156) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_29303|)) (not (= s1@@7 |Seq#Empty_29303|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_29303| s0@@7))) (= (|Seq#Index_29303| (|Seq#Append_48156| s0@@7 s1@@7) n@@23) (|Seq#Index_29303| s0@@7 n@@23)))
 :qid |stdinbpl.360:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_29303| (|Seq#Append_48156| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_29303| s0@@7 n@@23) (|Seq#Append_48156| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3683) (s1@@8 T@Seq_3683) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3683|)) (not (= s1@@8 |Seq#Empty_3683|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3683| s0@@8))) (= (|Seq#Index_3683| (|Seq#Append_3683| s0@@8 s1@@8) n@@24) (|Seq#Index_3683| s0@@8 n@@24)))
 :qid |stdinbpl.360:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3683| (|Seq#Append_3683| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3683| s0@@8 n@@24) (|Seq#Append_3683| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_48156) (s1@@9 T@Seq_48156) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_29303|)) (not (= s1@@9 |Seq#Empty_29303|))) (<= 0 m)) (< m (|Seq#Length_29303| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_29303| s0@@9)) (|Seq#Length_29303| s0@@9)) m) (= (|Seq#Index_29303| (|Seq#Append_48156| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_29303| s0@@9))) (|Seq#Index_29303| s1@@9 m))))
 :qid |stdinbpl.365:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_29303| s1@@9 m) (|Seq#Append_48156| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3683) (s1@@10 T@Seq_3683) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3683|)) (not (= s1@@10 |Seq#Empty_3683|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3683| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3683| s0@@10)) (|Seq#Length_3683| s0@@10)) m@@0) (= (|Seq#Index_3683| (|Seq#Append_3683| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3683| s0@@10))) (|Seq#Index_3683| s1@@10 m@@0))))
 :qid |stdinbpl.365:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3683| s1@@10 m@@0) (|Seq#Append_3683| s0@@10 s1@@10))
)))
(assert (forall ((o_44@@4 T@Ref) (f_58 T@Field_41041_41042) (Heap@@36 T@PolymorphicMapType_40968) ) (!  (=> (select (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| Heap@@36) o_44@@4 $allocated) (select (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| Heap@@36) (select (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| Heap@@36) o_44@@4 f_58) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| Heap@@36) o_44@@4 f_58))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_40968) (Mask@@30 T@PolymorphicMapType_40989) (i@@33 Int) (lo@@11 Int) (hi@@23 Int) (step@@7 Int) (vmin@@7 Int) (vmax_1@@7 Int) (ar_1@@23 T@Seq_48156) ) (!  (=> (state Heap@@37 Mask@@30) (= (|sum_square'| Heap@@37 i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax_1@@7 ar_1@@23) (|sum_square#frame| (FrameFragment_4664 (|sum_square#condqp2| Heap@@37 i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax_1@@7 ar_1@@23)) i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax_1@@7 ar_1@@23)))
 :qid |stdinbpl.1017:15|
 :skolemid |87|
 :pattern ( (state Heap@@37 Mask@@30) (|sum_square'| Heap@@37 i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax_1@@7 ar_1@@23))
)))
(assert (forall ((s@@29 T@Seq_48156) (x@@3 T@Ref) (i@@34 Int) ) (!  (=> (and (and (<= 0 i@@34) (< i@@34 (|Seq#Length_29303| s@@29))) (= (|Seq#Index_29303| s@@29 i@@34) x@@3)) (|Seq#Contains_48156| s@@29 x@@3))
 :qid |stdinbpl.517:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_48156| s@@29 x@@3) (|Seq#Index_29303| s@@29 i@@34))
)))
(assert (forall ((s@@30 T@Seq_3683) (x@@4 Int) (i@@35 Int) ) (!  (=> (and (and (<= 0 i@@35) (< i@@35 (|Seq#Length_3683| s@@30))) (= (|Seq#Index_3683| s@@30 i@@35) x@@4)) (|Seq#Contains_3683| s@@30 x@@4))
 :qid |stdinbpl.517:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3683| s@@30 x@@4) (|Seq#Index_3683| s@@30 i@@35))
)))
(assert (forall ((s0@@11 T@Seq_48156) (s1@@11 T@Seq_48156) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_48156| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_48156| s0@@11 s1@@11))) (not (= (|Seq#Length_29303| s0@@11) (|Seq#Length_29303| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_48156| s0@@11 s1@@11))) (= (|Seq#Length_29303| s0@@11) (|Seq#Length_29303| s1@@11))) (= (|Seq#SkolemDiff_48156| s0@@11 s1@@11) (|Seq#SkolemDiff_48156| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_48156| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_48156| s0@@11 s1@@11) (|Seq#Length_29303| s0@@11))) (not (= (|Seq#Index_29303| s0@@11 (|Seq#SkolemDiff_48156| s0@@11 s1@@11)) (|Seq#Index_29303| s1@@11 (|Seq#SkolemDiff_48156| s0@@11 s1@@11))))))
 :qid |stdinbpl.621:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_48156| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3683) (s1@@12 T@Seq_3683) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3683| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3683| s0@@12 s1@@12))) (not (= (|Seq#Length_3683| s0@@12) (|Seq#Length_3683| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3683| s0@@12 s1@@12))) (= (|Seq#Length_3683| s0@@12) (|Seq#Length_3683| s1@@12))) (= (|Seq#SkolemDiff_3683| s0@@12 s1@@12) (|Seq#SkolemDiff_3683| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3683| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3683| s0@@12 s1@@12) (|Seq#Length_3683| s0@@12))) (not (= (|Seq#Index_3683| s0@@12 (|Seq#SkolemDiff_3683| s0@@12 s1@@12)) (|Seq#Index_3683| s1@@12 (|Seq#SkolemDiff_3683| s0@@12 s1@@12))))))
 :qid |stdinbpl.621:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3683| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_29264_115514) (v_1@@0 T@FrameType) (q T@Field_29264_115514) (w@@0 T@FrameType) (r T@Field_29264_115514) (u T@FrameType) ) (!  (=> (and (InsidePredicate_41028_41028 p@@1 v_1@@0 q w@@0) (InsidePredicate_41028_41028 q w@@0 r u)) (InsidePredicate_41028_41028 p@@1 v_1@@0 r u))
 :qid |stdinbpl.288:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_41028_41028 p@@1 v_1@@0 q w@@0) (InsidePredicate_41028_41028 q w@@0 r u))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_40968) (i@@36 Int) (lo@@12 Int) (hi@@24 Int) (step@@8 Int) (vmin@@8 Int) (vmax_1@@8 Int) (ar_1@@24 T@Seq_48156) ) (! (dummyFunction_4112 (|sum_square#triggerStateless| i@@36 lo@@12 hi@@24 step@@8 vmin@@8 vmax_1@@8 ar_1@@24))
 :qid |stdinbpl.1001:15|
 :skolemid |84|
 :pattern ( (|sum_square'| Heap@@38 i@@36 lo@@12 hi@@24 step@@8 vmin@@8 vmax_1@@8 ar_1@@24))
)))
(assert (forall ((s@@31 T@Seq_48156) ) (!  (=> (= (|Seq#Length_29303| s@@31) 0) (= s@@31 |Seq#Empty_29303|))
 :qid |stdinbpl.324:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_29303| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3683) ) (!  (=> (= (|Seq#Length_3683| s@@32) 0) (= s@@32 |Seq#Empty_3683|))
 :qid |stdinbpl.324:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3683| s@@32))
)))
(assert (forall ((s@@33 T@Seq_48156) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_29303| s@@33 n@@25) |Seq#Empty_29303|))
 :qid |stdinbpl.500:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_29303| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3683) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3683| s@@34 n@@26) |Seq#Empty_3683|))
 :qid |stdinbpl.500:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3683| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@39 T@PolymorphicMapType_40968) (Mask@@31 T@PolymorphicMapType_40989) (i@@37 Int) (lo@@13 Int) (hi@@25 Int) (ar_1@@25 T@Seq_48156) ) (!  (=> (state Heap@@39 Mask@@31) (= (|sum_array'| Heap@@39 i@@37 lo@@13 hi@@25 ar_1@@25) (|sum_array#frame| (FrameFragment_4664 (|sum_array#condqp1| Heap@@39 i@@37 lo@@13 hi@@25 ar_1@@25)) i@@37 lo@@13 hi@@25 ar_1@@25)))
 :qid |stdinbpl.782:15|
 :skolemid |66|
 :pattern ( (state Heap@@39 Mask@@31) (|sum_array'| Heap@@39 i@@37 lo@@13 hi@@25 ar_1@@25))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_40968) (Mask@@32 T@PolymorphicMapType_40989) (i@@38 Int) (hi@@26 Int) (ar_1@@26 T@Seq_48156) (v_2@@12 Int) ) (!  (=> (state Heap@@40 Mask@@32) (= (|count_array'| Heap@@40 i@@38 hi@@26 ar_1@@26 v_2@@12) (|count_array#frame| (FrameFragment_4664 (|count_array#condqp4| Heap@@40 i@@38 hi@@26 ar_1@@26 v_2@@12)) i@@38 hi@@26 ar_1@@26 v_2@@12)))
 :qid |stdinbpl.1634:15|
 :skolemid |133|
 :pattern ( (state Heap@@40 Mask@@32) (|count_array'| Heap@@40 i@@38 hi@@26 ar_1@@26 v_2@@12))
)))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun P_2 () Int)
(declare-fun k_38 () Int)
(declare-fun hist () T@Seq_48156)
(declare-fun QPMask@2 () T@PolymorphicMapType_40989)
(declare-fun i@@39 () Int)
(declare-fun step@@9 () Int)
(declare-fun j@@12 () Int)
(declare-fun matrix_1 () T@Seq_48156)
(declare-fun PostHeap@0 () T@PolymorphicMapType_40968)
(declare-fun Mask@0 () T@PolymorphicMapType_40989)
(declare-fun qpRange20 (T@Ref) Bool)
(declare-fun invRecv20 (T@Ref) Int)
(declare-fun PostMask@0 () T@PolymorphicMapType_40989)
(declare-fun k_34 () Int)
(declare-fun M_1 () Int)
(declare-fun N () Int)
(declare-fun perm@1 () Real)
(declare-fun k_11 () Int)
(declare-fun Heap@0 () T@PolymorphicMapType_40968)
(declare-fun Heap@@41 () T@PolymorphicMapType_40968)
(declare-fun Mask@1 () T@PolymorphicMapType_40989)
(declare-fun perm@2 () Real)
(declare-fun neverTriggered21 (Int) Bool)
(declare-fun qpRange21 (T@Ref) Bool)
(declare-fun invRecv21 (T@Ref) Int)
(declare-fun QPMask@1 () T@PolymorphicMapType_40989)
(declare-fun __flatten_4 () T@Ref)
(declare-fun __flatten_5 () T@Ref)
(declare-fun __flatten_7 () T@Ref)
(declare-fun __flatten_8 () T@Ref)
(declare-fun __flatten_4@0 () T@Ref)
(declare-fun __flatten_5@0 () T@Ref)
(declare-fun __flatten_7@0 () T@Ref)
(declare-fun __flatten_8@0 () T@Ref)
(declare-fun __flatten_6@0 () Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_40989)
(declare-fun perm@0 () Real)
(declare-fun k_36 () Int)
(declare-fun qpRange19 (T@Ref) Bool)
(declare-fun invRecv19 (T@Ref) Int)
(declare-fun k_33 () Int)
(declare-fun k_28 () Int)
(declare-fun l_10 () Int)
(declare-fun diz () T@Ref)
(set-info :boogie-vc-id Ref__loop_body_113)
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
 (=> (= (ControlFlow 0 0) 89) (let ((anon20_correct true))
(let ((anon39_Else_correct  (=> (and (not (|Seq#Contains_3683| (|Seq#Range| 0 P_2) k_38)) (= (ControlFlow 0 71) 63)) anon20_correct)))
(let ((anon39_Then_correct  (=> (|Seq#Contains_3683| (|Seq#Range| 0 P_2) k_38) (and (=> (= (ControlFlow 0 64) (- 0 70)) (>= k_38 0)) (=> (>= k_38 0) (and (=> (= (ControlFlow 0 64) (- 0 69)) (< k_38 (|Seq#Length_29303| hist))) (=> (< k_38 (|Seq#Length_29303| hist)) (and (=> (= (ControlFlow 0 64) (- 0 68)) (HasDirectPerm_29264_3805 QPMask@2 (|Seq#Index_29303| hist k_38) Ref__Integer_value)) (=> (HasDirectPerm_29264_3805 QPMask@2 (|Seq#Index_29303| hist k_38) Ref__Integer_value) (and (=> (= (ControlFlow 0 64) (- 0 67)) (>= (+ (* i@@39 step@@9) j@@12) 0)) (=> (>= (+ (* i@@39 step@@9) j@@12) 0) (and (=> (= (ControlFlow 0 64) (- 0 66)) (< (+ (* i@@39 step@@9) j@@12) (|Seq#Length_29303| matrix_1))) (=> (< (+ (* i@@39 step@@9) j@@12) (|Seq#Length_29303| matrix_1)) (and (=> (= (ControlFlow 0 64) (- 0 65)) (HasDirectPerm_29264_3805 QPMask@2 (|Seq#Index_29303| matrix_1 (+ (* i@@39 step@@9) j@@12)) Ref__Integer_value)) (=> (HasDirectPerm_29264_3805 QPMask@2 (|Seq#Index_29303| matrix_1 (+ (* i@@39 step@@9) j@@12)) Ref__Integer_value) (=> (= (ControlFlow 0 64) 63) anon20_correct))))))))))))))))
(let ((anon38_Else_correct  (=> (and (forall ((k_9_1 Int) ) (!  (=> (|Seq#Contains_3683| (|Seq#Range| 0 P_2) k_9_1) (= (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| PostHeap@0) (|Seq#Index_29303| hist k_9_1) Ref__Integer_value) (ite (= (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| PostHeap@0) (|Seq#Index_29303| matrix_1 (+ (* i@@39 step@@9) j@@12)) Ref__Integer_value) k_9_1) 1 0)))
 :qid |stdinbpl.3092:20|
 :skolemid |240|
 :pattern ( (|Seq#ContainsTrigger_3683| (|Seq#Range| 0 P_2) k_9_1))
 :pattern ( (|Seq#Contains_3683| (|Seq#Range| 0 P_2) k_9_1))
 :pattern ( (|Seq#Index_29303| hist k_9_1))
)) (state PostHeap@0 QPMask@2)) (and (=> (= (ControlFlow 0 57) (- 0 62)) (>= (+ (* i@@39 step@@9) j@@12) 0)) (=> (>= (+ (* i@@39 step@@9) j@@12) 0) (and (=> (= (ControlFlow 0 57) (- 0 61)) (< (+ (* i@@39 step@@9) j@@12) (|Seq#Length_29303| matrix_1))) (=> (< (+ (* i@@39 step@@9) j@@12) (|Seq#Length_29303| matrix_1)) (and (=> (= (ControlFlow 0 57) (- 0 60)) (HasDirectPerm_29264_3805 QPMask@2 (|Seq#Index_29303| matrix_1 (+ (* i@@39 step@@9) j@@12)) Ref__Integer_value)) (=> (HasDirectPerm_29264_3805 QPMask@2 (|Seq#Index_29303| matrix_1 (+ (* i@@39 step@@9) j@@12)) Ref__Integer_value) (and (=> (= (ControlFlow 0 57) (- 0 59)) (>= (+ (* i@@39 step@@9) j@@12) 0)) (=> (>= (+ (* i@@39 step@@9) j@@12) 0) (and (=> (= (ControlFlow 0 57) (- 0 58)) (< (+ (* i@@39 step@@9) j@@12) (|Seq#Length_29303| matrix_1))) (=> (< (+ (* i@@39 step@@9) j@@12) (|Seq#Length_29303| matrix_1)) (=> (= (ControlFlow 0 57) (- 0 56)) (HasDirectPerm_29264_3805 Mask@0 (|Seq#Index_29303| matrix_1 (+ (* i@@39 step@@9) j@@12)) Ref__Integer_value)))))))))))))))
(let ((anon36_Else_correct  (and (=> (= (ControlFlow 0 72) (- 0 73)) (forall ((k_7_1 Int) (k_7_2 Int) ) (!  (=> (and (and (and (and (not (= k_7_1 k_7_2)) (|Seq#Contains_3683| (|Seq#Range| 0 P_2) k_7_1)) (|Seq#Contains_3683| (|Seq#Range| 0 P_2) k_7_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_29303| hist k_7_1) (|Seq#Index_29303| hist k_7_2))))
 :qid |stdinbpl.3040:15|
 :skolemid |234|
))) (=> (forall ((k_7_1@@0 Int) (k_7_2@@0 Int) ) (!  (=> (and (and (and (and (not (= k_7_1@@0 k_7_2@@0)) (|Seq#Contains_3683| (|Seq#Range| 0 P_2) k_7_1@@0)) (|Seq#Contains_3683| (|Seq#Range| 0 P_2) k_7_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_29303| hist k_7_1@@0) (|Seq#Index_29303| hist k_7_2@@0))))
 :qid |stdinbpl.3040:15|
 :skolemid |234|
)) (=> (and (and (forall ((k_7_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3683| (|Seq#Range| 0 P_2) k_7_1@@1) (< NoPerm FullPerm)) (and (qpRange20 (|Seq#Index_29303| hist k_7_1@@1)) (= (invRecv20 (|Seq#Index_29303| hist k_7_1@@1)) k_7_1@@1)))
 :qid |stdinbpl.3046:22|
 :skolemid |235|
 :pattern ( (|Seq#Index_29303| hist k_7_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3683| (|Seq#Range| 0 P_2) k_7_1@@1))
 :pattern ( (|Seq#Contains_3683| (|Seq#Range| 0 P_2) k_7_1@@1))
 :pattern ( (|Seq#Index_29303| hist k_7_1@@1))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3683| (|Seq#Range| 0 P_2) (invRecv20 o_9)) (< NoPerm FullPerm)) (qpRange20 o_9)) (= (|Seq#Index_29303| hist (invRecv20 o_9)) o_9))
 :qid |stdinbpl.3050:22|
 :skolemid |236|
 :pattern ( (invRecv20 o_9))
))) (and (forall ((k_7_1@@2 Int) ) (!  (=> (|Seq#Contains_3683| (|Seq#Range| 0 P_2) k_7_1@@2) (not (= (|Seq#Index_29303| hist k_7_1@@2) null)))
 :qid |stdinbpl.3056:22|
 :skolemid |237|
 :pattern ( (|Seq#Index_29303| hist k_7_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3683| (|Seq#Range| 0 P_2) k_7_1@@2))
 :pattern ( (|Seq#Contains_3683| (|Seq#Range| 0 P_2) k_7_1@@2))
 :pattern ( (|Seq#Index_29303| hist k_7_1@@2))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3683| (|Seq#Range| 0 P_2) (invRecv20 o_9@@0)) (< NoPerm FullPerm)) (qpRange20 o_9@@0)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_29303| hist (invRecv20 o_9@@0)) o_9@@0)) (= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@2) o_9@@0 Ref__Integer_value) (+ (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| PostMask@0) o_9@@0 Ref__Integer_value) FullPerm)))) (=> (not (and (and (|Seq#Contains_3683| (|Seq#Range| 0 P_2) (invRecv20 o_9@@0)) (< NoPerm FullPerm)) (qpRange20 o_9@@0))) (= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@2) o_9@@0 Ref__Integer_value) (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| PostMask@0) o_9@@0 Ref__Integer_value))))
 :qid |stdinbpl.3062:22|
 :skolemid |238|
 :pattern ( (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@2) o_9@@0 Ref__Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_41028_53) ) (!  (=> true (= (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| PostMask@0) o_9@@1 f_5) (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| QPMask@2) o_9@@1 f_5)))
 :qid |stdinbpl.3066:29|
 :skolemid |239|
 :pattern ( (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| PostMask@0) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| QPMask@2) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_41041_41042) ) (!  (=> true (= (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| PostMask@0) o_9@@2 f_5@@0) (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| QPMask@2) o_9@@2 f_5@@0)))
 :qid |stdinbpl.3066:29|
 :skolemid |239|
 :pattern ( (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| PostMask@0) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| QPMask@2) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_47114_3805) ) (!  (=> (not (= f_5@@1 Ref__Integer_value)) (= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| PostMask@0) o_9@@3 f_5@@1) (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@2) o_9@@3 f_5@@1)))
 :qid |stdinbpl.3066:29|
 :skolemid |239|
 :pattern ( (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| PostMask@0) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@2) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_29264_115514) ) (!  (=> true (= (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| PostMask@0) o_9@@4 f_5@@2) (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| QPMask@2) o_9@@4 f_5@@2)))
 :qid |stdinbpl.3066:29|
 :skolemid |239|
 :pattern ( (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| PostMask@0) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| QPMask@2) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_29264_115647) ) (!  (=> true (= (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| PostMask@0) o_9@@5 f_5@@3) (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| QPMask@2) o_9@@5 f_5@@3)))
 :qid |stdinbpl.3066:29|
 :skolemid |239|
 :pattern ( (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| PostMask@0) o_9@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| QPMask@2) o_9@@5 f_5@@3))
))) (and (state PostHeap@0 QPMask@2) (state PostHeap@0 QPMask@2))) (and (and (=> (= (ControlFlow 0 72) 57) anon38_Else_correct) (=> (= (ControlFlow 0 72) 64) anon39_Then_correct)) (=> (= (ControlFlow 0 72) 71) anon39_Else_correct))))))))
(let ((anon16_correct true))
(let ((anon37_Else_correct  (=> (and (not (|Seq#Contains_3683| (|Seq#Range| 0 P_2) k_34)) (= (ControlFlow 0 55) 51)) anon16_correct)))
(let ((anon37_Then_correct  (=> (|Seq#Contains_3683| (|Seq#Range| 0 P_2) k_34) (and (=> (= (ControlFlow 0 52) (- 0 54)) (>= k_34 0)) (=> (>= k_34 0) (and (=> (= (ControlFlow 0 52) (- 0 53)) (< k_34 (|Seq#Length_29303| hist))) (=> (< k_34 (|Seq#Length_29303| hist)) (=> (= (ControlFlow 0 52) 51) anon16_correct))))))))
(let ((anon35_Then_correct  (=> (state PostHeap@0 ZeroMask) (=> (and (and (and (> M_1 0) (> N 0)) (and (>= step@@9 N) (> P_2 0))) (and (and (state PostHeap@0 ZeroMask) (|Seq#Contains_3683| (|Seq#Range| 0 M_1) i@@39)) (and (|Seq#Contains_3683| (|Seq#Range| 0 N) j@@12) (state PostHeap@0 ZeroMask)))) (and (=> (= (ControlFlow 0 74) (- 0 77)) (>= (+ (* i@@39 step@@9) j@@12) 0)) (=> (>= (+ (* i@@39 step@@9) j@@12) 0) (and (=> (= (ControlFlow 0 74) (- 0 76)) (< (+ (* i@@39 step@@9) j@@12) (|Seq#Length_29303| matrix_1))) (=> (< (+ (* i@@39 step@@9) j@@12) (|Seq#Length_29303| matrix_1)) (=> (= perm@1 (/ (to_real 1) (to_real 4))) (and (=> (= (ControlFlow 0 74) (- 0 75)) (>= perm@1 NoPerm)) (=> (>= perm@1 NoPerm) (=> (and (and (=> (> perm@1 NoPerm) (not (= (|Seq#Index_29303| matrix_1 (+ (* i@@39 step@@9) j@@12)) null))) (= PostMask@0 (PolymorphicMapType_40989 (store (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| ZeroMask) (|Seq#Index_29303| matrix_1 (+ (* i@@39 step@@9) j@@12)) Ref__Integer_value (+ (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| ZeroMask) (|Seq#Index_29303| matrix_1 (+ (* i@@39 step@@9) j@@12)) Ref__Integer_value) perm@1)) (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| ZeroMask) (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| ZeroMask) (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| ZeroMask) (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| ZeroMask)))) (and (state PostHeap@0 PostMask@0) (state PostHeap@0 PostMask@0))) (and (and (=> (= (ControlFlow 0 74) 72) anon36_Else_correct) (=> (= (ControlFlow 0 74) 52) anon37_Then_correct)) (=> (= (ControlFlow 0 74) 55) anon37_Else_correct))))))))))))))
(let ((anon27_correct true))
(let ((anon42_Else_correct  (=> (and (not (|Seq#Contains_3683| (|Seq#Range| 0 P_2) k_11)) (= (ControlFlow 0 24) 21)) anon27_correct)))
(let ((anon42_Then_correct  (=> (|Seq#Contains_3683| (|Seq#Range| 0 P_2) k_11) (and (=> (= (ControlFlow 0 22) (- 0 23)) (= (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@0) (|Seq#Index_29303| hist k_11) Ref__Integer_value) (ite (= (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@0) (|Seq#Index_29303| matrix_1 (+ (* i@@39 step@@9) j@@12)) Ref__Integer_value) k_11) 1 0))) (=> (= (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@0) (|Seq#Index_29303| hist k_11) Ref__Integer_value) (ite (= (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@0) (|Seq#Index_29303| matrix_1 (+ (* i@@39 step@@9) j@@12)) Ref__Integer_value) k_11) 1 0)) (=> (= (ControlFlow 0 22) 21) anon27_correct))))))
(let ((anon41_Else_correct  (=> (and (forall ((k_12_1 Int) ) (!  (=> (|Seq#Contains_3683| (|Seq#Range| 0 P_2) k_12_1) (= (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@0) (|Seq#Index_29303| hist k_12_1) Ref__Integer_value) (ite (= (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@0) (|Seq#Index_29303| matrix_1 (+ (* i@@39 step@@9) j@@12)) Ref__Integer_value) k_12_1) 1 0)))
 :qid |stdinbpl.3252:20|
 :skolemid |247|
 :pattern ( (|Seq#ContainsTrigger_3683| (|Seq#Range| 0 P_2) k_12_1))
 :pattern ( (|Seq#Contains_3683| (|Seq#Range| 0 P_2) k_12_1))
 :pattern ( (|Seq#Index_29303| hist k_12_1))
)) (= (ControlFlow 0 20) (- 0 19))) (= (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@0) (|Seq#Index_29303| matrix_1 (+ (* i@@39 step@@9) j@@12)) Ref__Integer_value) (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@41) (|Seq#Index_29303| matrix_1 (+ (* i@@39 step@@9) j@@12)) Ref__Integer_value)))))
(let ((anon24_correct  (=> (= Mask@1 (PolymorphicMapType_40989 (store (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| Mask@0) (|Seq#Index_29303| matrix_1 (+ (* i@@39 step@@9) j@@12)) Ref__Integer_value (- (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| Mask@0) (|Seq#Index_29303| matrix_1 (+ (* i@@39 step@@9) j@@12)) Ref__Integer_value) perm@2)) (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| Mask@0) (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| Mask@0) (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| Mask@0) (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| Mask@0))) (and (=> (= (ControlFlow 0 25) (- 0 27)) (forall ((k_10 Int) (k_10_2 Int) ) (!  (=> (and (and (and (and (not (= k_10 k_10_2)) (|Seq#Contains_3683| (|Seq#Range| 0 P_2) k_10)) (|Seq#Contains_3683| (|Seq#Range| 0 P_2) k_10_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_29303| hist k_10) (|Seq#Index_29303| hist k_10_2))))
 :qid |stdinbpl.3211:17|
 :skolemid |241|
 :pattern ( (neverTriggered21 k_10) (neverTriggered21 k_10_2))
))) (=> (forall ((k_10@@0 Int) (k_10_2@@0 Int) ) (!  (=> (and (and (and (and (not (= k_10@@0 k_10_2@@0)) (|Seq#Contains_3683| (|Seq#Range| 0 P_2) k_10@@0)) (|Seq#Contains_3683| (|Seq#Range| 0 P_2) k_10_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_29303| hist k_10@@0) (|Seq#Index_29303| hist k_10_2@@0))))
 :qid |stdinbpl.3211:17|
 :skolemid |241|
 :pattern ( (neverTriggered21 k_10@@0) (neverTriggered21 k_10_2@@0))
)) (and (=> (= (ControlFlow 0 25) (- 0 26)) (forall ((k_10@@1 Int) ) (!  (=> (|Seq#Contains_3683| (|Seq#Range| 0 P_2) k_10@@1) (>= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| Mask@1) (|Seq#Index_29303| hist k_10@@1) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.3218:17|
 :skolemid |242|
 :pattern ( (|Seq#Index_29303| hist k_10@@1))
 :pattern ( (|Seq#ContainsTrigger_3683| (|Seq#Range| 0 P_2) k_10@@1))
 :pattern ( (|Seq#Contains_3683| (|Seq#Range| 0 P_2) k_10@@1))
 :pattern ( (|Seq#Index_29303| hist k_10@@1))
))) (=> (forall ((k_10@@2 Int) ) (!  (=> (|Seq#Contains_3683| (|Seq#Range| 0 P_2) k_10@@2) (>= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| Mask@1) (|Seq#Index_29303| hist k_10@@2) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.3218:17|
 :skolemid |242|
 :pattern ( (|Seq#Index_29303| hist k_10@@2))
 :pattern ( (|Seq#ContainsTrigger_3683| (|Seq#Range| 0 P_2) k_10@@2))
 :pattern ( (|Seq#Contains_3683| (|Seq#Range| 0 P_2) k_10@@2))
 :pattern ( (|Seq#Index_29303| hist k_10@@2))
)) (=> (forall ((k_10@@3 Int) ) (!  (=> (and (|Seq#Contains_3683| (|Seq#Range| 0 P_2) k_10@@3) (< NoPerm FullPerm)) (and (qpRange21 (|Seq#Index_29303| hist k_10@@3)) (= (invRecv21 (|Seq#Index_29303| hist k_10@@3)) k_10@@3)))
 :qid |stdinbpl.3224:22|
 :skolemid |243|
 :pattern ( (|Seq#Index_29303| hist k_10@@3))
 :pattern ( (|Seq#ContainsTrigger_3683| (|Seq#Range| 0 P_2) k_10@@3))
 :pattern ( (|Seq#Contains_3683| (|Seq#Range| 0 P_2) k_10@@3))
 :pattern ( (|Seq#Index_29303| hist k_10@@3))
)) (=> (and (forall ((o_9@@6 T@Ref) ) (!  (=> (and (|Seq#Contains_3683| (|Seq#Range| 0 P_2) (invRecv21 o_9@@6)) (and (< NoPerm FullPerm) (qpRange21 o_9@@6))) (= (|Seq#Index_29303| hist (invRecv21 o_9@@6)) o_9@@6))
 :qid |stdinbpl.3228:22|
 :skolemid |244|
 :pattern ( (invRecv21 o_9@@6))
)) (forall ((o_9@@7 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3683| (|Seq#Range| 0 P_2) (invRecv21 o_9@@7)) (and (< NoPerm FullPerm) (qpRange21 o_9@@7))) (and (= (|Seq#Index_29303| hist (invRecv21 o_9@@7)) o_9@@7) (= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@1) o_9@@7 Ref__Integer_value) (- (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| Mask@1) o_9@@7 Ref__Integer_value) FullPerm)))) (=> (not (and (|Seq#Contains_3683| (|Seq#Range| 0 P_2) (invRecv21 o_9@@7)) (and (< NoPerm FullPerm) (qpRange21 o_9@@7)))) (= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@1) o_9@@7 Ref__Integer_value) (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| Mask@1) o_9@@7 Ref__Integer_value))))
 :qid |stdinbpl.3234:22|
 :skolemid |245|
 :pattern ( (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@1) o_9@@7 Ref__Integer_value))
))) (=> (and (and (and (and (forall ((o_9@@8 T@Ref) (f_5@@4 T@Field_41028_53) ) (!  (=> true (= (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| Mask@1) o_9@@8 f_5@@4) (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| QPMask@1) o_9@@8 f_5@@4)))
 :qid |stdinbpl.3240:29|
 :skolemid |246|
 :pattern ( (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| QPMask@1) o_9@@8 f_5@@4))
)) (forall ((o_9@@9 T@Ref) (f_5@@5 T@Field_41041_41042) ) (!  (=> true (= (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| Mask@1) o_9@@9 f_5@@5) (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| QPMask@1) o_9@@9 f_5@@5)))
 :qid |stdinbpl.3240:29|
 :skolemid |246|
 :pattern ( (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| QPMask@1) o_9@@9 f_5@@5))
))) (forall ((o_9@@10 T@Ref) (f_5@@6 T@Field_47114_3805) ) (!  (=> (not (= f_5@@6 Ref__Integer_value)) (= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| Mask@1) o_9@@10 f_5@@6) (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@1) o_9@@10 f_5@@6)))
 :qid |stdinbpl.3240:29|
 :skolemid |246|
 :pattern ( (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@1) o_9@@10 f_5@@6))
))) (forall ((o_9@@11 T@Ref) (f_5@@7 T@Field_29264_115514) ) (!  (=> true (= (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| Mask@1) o_9@@11 f_5@@7) (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| QPMask@1) o_9@@11 f_5@@7)))
 :qid |stdinbpl.3240:29|
 :skolemid |246|
 :pattern ( (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| QPMask@1) o_9@@11 f_5@@7))
))) (forall ((o_9@@12 T@Ref) (f_5@@8 T@Field_29264_115647) ) (!  (=> true (= (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| Mask@1) o_9@@12 f_5@@8) (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| QPMask@1) o_9@@12 f_5@@8)))
 :qid |stdinbpl.3240:29|
 :skolemid |246|
 :pattern ( (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| QPMask@1) o_9@@12 f_5@@8))
))) (and (and (=> (= (ControlFlow 0 25) 20) anon41_Else_correct) (=> (= (ControlFlow 0 25) 22) anon42_Then_correct)) (=> (= (ControlFlow 0 25) 24) anon42_Else_correct))))))))))))
(let ((anon40_Else_correct  (=> (and (= perm@2 NoPerm) (= (ControlFlow 0 30) 25)) anon24_correct)))
(let ((anon40_Then_correct  (=> (not (= perm@2 NoPerm)) (and (=> (= (ControlFlow 0 28) (- 0 29)) (<= perm@2 (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| Mask@0) (|Seq#Index_29303| matrix_1 (+ (* i@@39 step@@9) j@@12)) Ref__Integer_value))) (=> (<= perm@2 (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| Mask@0) (|Seq#Index_29303| matrix_1 (+ (* i@@39 step@@9) j@@12)) Ref__Integer_value)) (=> (= (ControlFlow 0 28) 25) anon24_correct))))))
(let ((anon35_Else_correct  (=> (and (and (select (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| Heap@@41) __flatten_4 $allocated) (select (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| Heap@@41) __flatten_5 $allocated)) (and (select (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| Heap@@41) __flatten_7 $allocated) (select (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| Heap@@41) __flatten_8 $allocated))) (and (=> (= (ControlFlow 0 31) (- 0 50)) (>= (+ (* i@@39 step@@9) j@@12) 0)) (=> (>= (+ (* i@@39 step@@9) j@@12) 0) (and (=> (= (ControlFlow 0 31) (- 0 49)) (< (+ (* i@@39 step@@9) j@@12) (|Seq#Length_29303| matrix_1))) (=> (< (+ (* i@@39 step@@9) j@@12) (|Seq#Length_29303| matrix_1)) (=> (and (= __flatten_4@0 (|Seq#Index_29303| matrix_1 (+ (* i@@39 step@@9) j@@12))) (state Heap@@41 Mask@0)) (and (=> (= (ControlFlow 0 31) (- 0 48)) (HasDirectPerm_29264_3805 Mask@0 __flatten_4@0 Ref__Integer_value)) (=> (HasDirectPerm_29264_3805 Mask@0 __flatten_4@0 Ref__Integer_value) (and (=> (= (ControlFlow 0 31) (- 0 47)) (>= (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@41) __flatten_4@0 Ref__Integer_value) 0)) (=> (>= (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@41) __flatten_4@0 Ref__Integer_value) 0) (and (=> (= (ControlFlow 0 31) (- 0 46)) (< (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@41) __flatten_4@0 Ref__Integer_value) (|Seq#Length_29303| hist))) (=> (< (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@41) __flatten_4@0 Ref__Integer_value) (|Seq#Length_29303| hist)) (=> (and (= __flatten_5@0 (|Seq#Index_29303| hist (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@41) __flatten_4@0 Ref__Integer_value))) (state Heap@@41 Mask@0)) (and (=> (= (ControlFlow 0 31) (- 0 45)) (>= (+ (* i@@39 step@@9) j@@12) 0)) (=> (>= (+ (* i@@39 step@@9) j@@12) 0) (and (=> (= (ControlFlow 0 31) (- 0 44)) (< (+ (* i@@39 step@@9) j@@12) (|Seq#Length_29303| matrix_1))) (=> (< (+ (* i@@39 step@@9) j@@12) (|Seq#Length_29303| matrix_1)) (=> (and (= __flatten_7@0 (|Seq#Index_29303| matrix_1 (+ (* i@@39 step@@9) j@@12))) (state Heap@@41 Mask@0)) (and (=> (= (ControlFlow 0 31) (- 0 43)) (HasDirectPerm_29264_3805 Mask@0 __flatten_7@0 Ref__Integer_value)) (=> (HasDirectPerm_29264_3805 Mask@0 __flatten_7@0 Ref__Integer_value) (and (=> (= (ControlFlow 0 31) (- 0 42)) (>= (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@41) __flatten_7@0 Ref__Integer_value) 0)) (=> (>= (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@41) __flatten_7@0 Ref__Integer_value) 0) (and (=> (= (ControlFlow 0 31) (- 0 41)) (< (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@41) __flatten_7@0 Ref__Integer_value) (|Seq#Length_29303| hist))) (=> (< (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@41) __flatten_7@0 Ref__Integer_value) (|Seq#Length_29303| hist)) (=> (and (= __flatten_8@0 (|Seq#Index_29303| hist (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@41) __flatten_7@0 Ref__Integer_value))) (state Heap@@41 Mask@0)) (and (=> (= (ControlFlow 0 31) (- 0 40)) (HasDirectPerm_29264_3805 Mask@0 __flatten_8@0 Ref__Integer_value)) (=> (HasDirectPerm_29264_3805 Mask@0 __flatten_8@0 Ref__Integer_value) (=> (and (= __flatten_6@0 (+ (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@41) __flatten_8@0 Ref__Integer_value) 1)) (state Heap@@41 Mask@0)) (and (=> (= (ControlFlow 0 31) (- 0 39)) (= FullPerm (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| Mask@0) __flatten_5@0 Ref__Integer_value))) (=> (= FullPerm (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| Mask@0) __flatten_5@0 Ref__Integer_value)) (=> (and (= Heap@0 (PolymorphicMapType_40968 (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| Heap@@41) (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| Heap@@41) (store (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@41) __flatten_5@0 Ref__Integer_value __flatten_6@0) (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@41) (|PolymorphicMapType_40968_41028_115514#PolymorphicMapType_40968| Heap@@41))) (state Heap@0 Mask@0)) (and (=> (= (ControlFlow 0 31) (- 0 38)) (> M_1 0)) (=> (> M_1 0) (and (=> (= (ControlFlow 0 31) (- 0 37)) (> N 0)) (=> (> N 0) (and (=> (= (ControlFlow 0 31) (- 0 36)) (>= step@@9 N)) (=> (>= step@@9 N) (and (=> (= (ControlFlow 0 31) (- 0 35)) (> P_2 0)) (=> (> P_2 0) (and (=> (= (ControlFlow 0 31) (- 0 34)) (|Seq#Contains_3683| (|Seq#Range| 0 M_1) i@@39)) (=> (|Seq#Contains_3683| (|Seq#Range| 0 M_1) i@@39) (and (=> (= (ControlFlow 0 31) (- 0 33)) (|Seq#Contains_3683| (|Seq#Range| 0 N) j@@12)) (=> (|Seq#Contains_3683| (|Seq#Range| 0 N) j@@12) (=> (= perm@2 (/ (to_real 1) (to_real 4))) (and (=> (= (ControlFlow 0 31) (- 0 32)) (>= perm@2 NoPerm)) (=> (>= perm@2 NoPerm) (and (=> (= (ControlFlow 0 31) 28) anon40_Then_correct) (=> (= (ControlFlow 0 31) 30) anon40_Else_correct))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((anon33_Else_correct  (=> (and (and (forall ((k_5 Int) ) (!  (=> (|Seq#Contains_3683| (|Seq#Range| 0 P_2) k_5) (= (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@41) (|Seq#Index_29303| hist k_5) Ref__Integer_value) 0))
 :qid |stdinbpl.2965:20|
 :skolemid |233|
 :pattern ( (|Seq#ContainsTrigger_3683| (|Seq#Range| 0 P_2) k_5))
 :pattern ( (|Seq#Contains_3683| (|Seq#Range| 0 P_2) k_5))
 :pattern ( (|Seq#Index_29303| hist k_5))
)) (state Heap@@41 QPMask@0)) (and (< (+ (* i@@39 step@@9) j@@12) (|Seq#Length_29303| matrix_1)) (state Heap@@41 QPMask@0))) (and (=> (= (ControlFlow 0 78) (- 0 84)) (>= (+ (* i@@39 step@@9) j@@12) 0)) (=> (>= (+ (* i@@39 step@@9) j@@12) 0) (and (=> (= (ControlFlow 0 78) (- 0 83)) (< (+ (* i@@39 step@@9) j@@12) (|Seq#Length_29303| matrix_1))) (=> (< (+ (* i@@39 step@@9) j@@12) (|Seq#Length_29303| matrix_1)) (=> (= perm@0 (/ (to_real 1) (to_real 4))) (and (=> (= (ControlFlow 0 78) (- 0 82)) (>= perm@0 NoPerm)) (=> (>= perm@0 NoPerm) (=> (and (and (=> (> perm@0 NoPerm) (not (= (|Seq#Index_29303| matrix_1 (+ (* i@@39 step@@9) j@@12)) null))) (= Mask@0 (PolymorphicMapType_40989 (store (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@0) (|Seq#Index_29303| matrix_1 (+ (* i@@39 step@@9) j@@12)) Ref__Integer_value (+ (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@0) (|Seq#Index_29303| matrix_1 (+ (* i@@39 step@@9) j@@12)) Ref__Integer_value) perm@0)) (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| QPMask@0) (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| QPMask@0) (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| QPMask@0) (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| QPMask@0)))) (and (state Heap@@41 Mask@0) (state Heap@@41 Mask@0))) (and (=> (= (ControlFlow 0 78) (- 0 81)) (>= (+ (* i@@39 step@@9) j@@12) 0)) (=> (>= (+ (* i@@39 step@@9) j@@12) 0) (and (=> (= (ControlFlow 0 78) (- 0 80)) (< (+ (* i@@39 step@@9) j@@12) (|Seq#Length_29303| matrix_1))) (=> (< (+ (* i@@39 step@@9) j@@12) (|Seq#Length_29303| matrix_1)) (and (=> (= (ControlFlow 0 78) (- 0 79)) (HasDirectPerm_29264_3805 Mask@0 (|Seq#Index_29303| matrix_1 (+ (* i@@39 step@@9) j@@12)) Ref__Integer_value)) (=> (HasDirectPerm_29264_3805 Mask@0 (|Seq#Index_29303| matrix_1 (+ (* i@@39 step@@9) j@@12)) Ref__Integer_value) (=> (and (|Seq#Contains_3683| (|Seq#Range| 0 P_2) (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@41) (|Seq#Index_29303| matrix_1 (+ (* i@@39 step@@9) j@@12)) Ref__Integer_value)) (state Heap@@41 Mask@0)) (and (=> (= (ControlFlow 0 78) 74) anon35_Then_correct) (=> (= (ControlFlow 0 78) 31) anon35_Else_correct))))))))))))))))))))
(let ((anon11_correct true))
(let ((anon34_Else_correct  (=> (and (not (|Seq#Contains_3683| (|Seq#Range| 0 P_2) k_36)) (= (ControlFlow 0 18) 13)) anon11_correct)))
(let ((anon34_Then_correct  (=> (|Seq#Contains_3683| (|Seq#Range| 0 P_2) k_36) (and (=> (= (ControlFlow 0 14) (- 0 17)) (>= k_36 0)) (=> (>= k_36 0) (and (=> (= (ControlFlow 0 14) (- 0 16)) (< k_36 (|Seq#Length_29303| hist))) (=> (< k_36 (|Seq#Length_29303| hist)) (and (=> (= (ControlFlow 0 14) (- 0 15)) (HasDirectPerm_29264_3805 QPMask@0 (|Seq#Index_29303| hist k_36) Ref__Integer_value)) (=> (HasDirectPerm_29264_3805 QPMask@0 (|Seq#Index_29303| hist k_36) Ref__Integer_value) (=> (= (ControlFlow 0 14) 13) anon11_correct))))))))))
(let ((anon31_Else_correct  (and (=> (= (ControlFlow 0 85) (- 0 86)) (forall ((k_3 Int) (k_3_2 Int) ) (!  (=> (and (and (and (and (not (= k_3 k_3_2)) (|Seq#Contains_3683| (|Seq#Range| 0 P_2) k_3)) (|Seq#Contains_3683| (|Seq#Range| 0 P_2) k_3_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_29303| hist k_3) (|Seq#Index_29303| hist k_3_2))))
 :qid |stdinbpl.2919:15|
 :skolemid |227|
))) (=> (forall ((k_3@@0 Int) (k_3_2@@0 Int) ) (!  (=> (and (and (and (and (not (= k_3@@0 k_3_2@@0)) (|Seq#Contains_3683| (|Seq#Range| 0 P_2) k_3@@0)) (|Seq#Contains_3683| (|Seq#Range| 0 P_2) k_3_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_29303| hist k_3@@0) (|Seq#Index_29303| hist k_3_2@@0))))
 :qid |stdinbpl.2919:15|
 :skolemid |227|
)) (=> (and (and (forall ((k_3@@1 Int) ) (!  (=> (and (|Seq#Contains_3683| (|Seq#Range| 0 P_2) k_3@@1) (< NoPerm FullPerm)) (and (qpRange19 (|Seq#Index_29303| hist k_3@@1)) (= (invRecv19 (|Seq#Index_29303| hist k_3@@1)) k_3@@1)))
 :qid |stdinbpl.2925:22|
 :skolemid |228|
 :pattern ( (|Seq#Index_29303| hist k_3@@1))
 :pattern ( (|Seq#ContainsTrigger_3683| (|Seq#Range| 0 P_2) k_3@@1))
 :pattern ( (|Seq#Contains_3683| (|Seq#Range| 0 P_2) k_3@@1))
 :pattern ( (|Seq#Index_29303| hist k_3@@1))
)) (forall ((o_9@@13 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3683| (|Seq#Range| 0 P_2) (invRecv19 o_9@@13)) (< NoPerm FullPerm)) (qpRange19 o_9@@13)) (= (|Seq#Index_29303| hist (invRecv19 o_9@@13)) o_9@@13))
 :qid |stdinbpl.2929:22|
 :skolemid |229|
 :pattern ( (invRecv19 o_9@@13))
))) (and (forall ((k_3@@2 Int) ) (!  (=> (|Seq#Contains_3683| (|Seq#Range| 0 P_2) k_3@@2) (not (= (|Seq#Index_29303| hist k_3@@2) null)))
 :qid |stdinbpl.2935:22|
 :skolemid |230|
 :pattern ( (|Seq#Index_29303| hist k_3@@2))
 :pattern ( (|Seq#ContainsTrigger_3683| (|Seq#Range| 0 P_2) k_3@@2))
 :pattern ( (|Seq#Contains_3683| (|Seq#Range| 0 P_2) k_3@@2))
 :pattern ( (|Seq#Index_29303| hist k_3@@2))
)) (forall ((o_9@@14 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3683| (|Seq#Range| 0 P_2) (invRecv19 o_9@@14)) (< NoPerm FullPerm)) (qpRange19 o_9@@14)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_29303| hist (invRecv19 o_9@@14)) o_9@@14)) (= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@0) o_9@@14 Ref__Integer_value) (+ (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| ZeroMask) o_9@@14 Ref__Integer_value) FullPerm)))) (=> (not (and (and (|Seq#Contains_3683| (|Seq#Range| 0 P_2) (invRecv19 o_9@@14)) (< NoPerm FullPerm)) (qpRange19 o_9@@14))) (= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@0) o_9@@14 Ref__Integer_value) (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| ZeroMask) o_9@@14 Ref__Integer_value))))
 :qid |stdinbpl.2941:22|
 :skolemid |231|
 :pattern ( (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@0) o_9@@14 Ref__Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_9@@15 T@Ref) (f_5@@9 T@Field_41028_53) ) (!  (=> true (= (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| ZeroMask) o_9@@15 f_5@@9) (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| QPMask@0) o_9@@15 f_5@@9)))
 :qid |stdinbpl.2945:29|
 :skolemid |232|
 :pattern ( (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| ZeroMask) o_9@@15 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| QPMask@0) o_9@@15 f_5@@9))
)) (forall ((o_9@@16 T@Ref) (f_5@@10 T@Field_41041_41042) ) (!  (=> true (= (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| ZeroMask) o_9@@16 f_5@@10) (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| QPMask@0) o_9@@16 f_5@@10)))
 :qid |stdinbpl.2945:29|
 :skolemid |232|
 :pattern ( (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| ZeroMask) o_9@@16 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| QPMask@0) o_9@@16 f_5@@10))
))) (forall ((o_9@@17 T@Ref) (f_5@@11 T@Field_47114_3805) ) (!  (=> (not (= f_5@@11 Ref__Integer_value)) (= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| ZeroMask) o_9@@17 f_5@@11) (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@0) o_9@@17 f_5@@11)))
 :qid |stdinbpl.2945:29|
 :skolemid |232|
 :pattern ( (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| ZeroMask) o_9@@17 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@0) o_9@@17 f_5@@11))
))) (forall ((o_9@@18 T@Ref) (f_5@@12 T@Field_29264_115514) ) (!  (=> true (= (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| ZeroMask) o_9@@18 f_5@@12) (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| QPMask@0) o_9@@18 f_5@@12)))
 :qid |stdinbpl.2945:29|
 :skolemid |232|
 :pattern ( (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| ZeroMask) o_9@@18 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| QPMask@0) o_9@@18 f_5@@12))
))) (forall ((o_9@@19 T@Ref) (f_5@@13 T@Field_29264_115647) ) (!  (=> true (= (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| ZeroMask) o_9@@19 f_5@@13) (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| QPMask@0) o_9@@19 f_5@@13)))
 :qid |stdinbpl.2945:29|
 :skolemid |232|
 :pattern ( (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| ZeroMask) o_9@@19 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| QPMask@0) o_9@@19 f_5@@13))
))) (and (state Heap@@41 QPMask@0) (state Heap@@41 QPMask@0))) (and (and (=> (= (ControlFlow 0 85) 78) anon33_Else_correct) (=> (= (ControlFlow 0 85) 14) anon34_Then_correct)) (=> (= (ControlFlow 0 85) 18) anon34_Else_correct))))))))
(let ((anon7_correct true))
(let ((anon32_Else_correct  (=> (and (not (|Seq#Contains_3683| (|Seq#Range| 0 P_2) k_33)) (= (ControlFlow 0 12) 8)) anon7_correct)))
(let ((anon32_Then_correct  (=> (|Seq#Contains_3683| (|Seq#Range| 0 P_2) k_33) (and (=> (= (ControlFlow 0 9) (- 0 11)) (>= k_33 0)) (=> (>= k_33 0) (and (=> (= (ControlFlow 0 9) (- 0 10)) (< k_33 (|Seq#Length_29303| hist))) (=> (< k_33 (|Seq#Length_29303| hist)) (=> (= (ControlFlow 0 9) 8) anon7_correct))))))))
(let ((anon29_Else_correct  (=> (and (forall ((k_1 Int) (l_1_2 Int) ) (!  (=> (and (>= k_1 0) (and (< k_1 (|Seq#Length_29303| hist)) (and (>= l_1_2 0) (and (< l_1_2 (|Seq#Length_29303| hist)) (not (= k_1 l_1_2)))))) (not (= (|Seq#Index_29303| hist k_1) (|Seq#Index_29303| hist l_1_2))))
 :qid |stdinbpl.2901:20|
 :skolemid |226|
 :pattern ( (|Seq#Index_29303| hist k_1) (|Seq#Index_29303| hist l_1_2))
)) (state Heap@@41 ZeroMask)) (and (and (=> (= (ControlFlow 0 87) 85) anon31_Else_correct) (=> (= (ControlFlow 0 87) 9) anon32_Then_correct)) (=> (= (ControlFlow 0 87) 12) anon32_Else_correct)))))
(let ((anon3_correct true))
(let ((anon30_Else_correct  (=> (and (not (and (>= k_28 0) (and (< k_28 (|Seq#Length_29303| hist)) (and (>= l_10 0) (and (< l_10 (|Seq#Length_29303| hist)) (not (= k_28 l_10))))))) (= (ControlFlow 0 7) 1)) anon3_correct)))
(let ((anon30_Then_correct  (=> (and (>= k_28 0) (and (< k_28 (|Seq#Length_29303| hist)) (and (>= l_10 0) (and (< l_10 (|Seq#Length_29303| hist)) (not (= k_28 l_10)))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= k_28 0)) (=> (>= k_28 0) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< k_28 (|Seq#Length_29303| hist))) (=> (< k_28 (|Seq#Length_29303| hist)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= l_10 0)) (=> (>= l_10 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< l_10 (|Seq#Length_29303| hist))) (=> (< l_10 (|Seq#Length_29303| hist)) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))))))))
(let ((anon0_correct  (=> (and (and (and (and (state Heap@@41 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (and AssumePermUpperBound (select (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| Heap@@41) diz $allocated))) (and (and (not (= diz null)) (state Heap@@41 ZeroMask)) (and (> M_1 0) (> N 0)))) (and (and (and (>= step@@9 N) (> P_2 0)) (and (state Heap@@41 ZeroMask) (|Seq#Contains_3683| (|Seq#Range| 0 M_1) i@@39))) (and (and (|Seq#Contains_3683| (|Seq#Range| 0 N) j@@12) (state Heap@@41 ZeroMask)) (and (<= P_2 (|Seq#Length_29303| hist)) (state Heap@@41 ZeroMask))))) (and (and (=> (= (ControlFlow 0 88) 87) anon29_Else_correct) (=> (= (ControlFlow 0 88) 2) anon30_Then_correct)) (=> (= (ControlFlow 0 88) 7) anon30_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 89) 88) anon0_correct)))
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
(declare-sort T@Field_41028_53 0)
(declare-sort T@Field_41041_41042 0)
(declare-sort T@Field_47114_3805 0)
(declare-sort T@Field_29264_115647 0)
(declare-sort T@Field_29264_115514 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_40989 0)) (((PolymorphicMapType_40989 (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| (Array T@Ref T@Field_47114_3805 Real)) (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| (Array T@Ref T@Field_41028_53 Real)) (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| (Array T@Ref T@Field_41041_41042 Real)) (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| (Array T@Ref T@Field_29264_115514 Real)) (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| (Array T@Ref T@Field_29264_115647 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_41517 0)) (((PolymorphicMapType_41517 (|PolymorphicMapType_41517_41028_53#PolymorphicMapType_41517| (Array T@Ref T@Field_41028_53 Bool)) (|PolymorphicMapType_41517_41028_41042#PolymorphicMapType_41517| (Array T@Ref T@Field_41041_41042 Bool)) (|PolymorphicMapType_41517_41028_3805#PolymorphicMapType_41517| (Array T@Ref T@Field_47114_3805 Bool)) (|PolymorphicMapType_41517_41028_115514#PolymorphicMapType_41517| (Array T@Ref T@Field_29264_115514 Bool)) (|PolymorphicMapType_41517_41028_116825#PolymorphicMapType_41517| (Array T@Ref T@Field_29264_115647 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_40968 0)) (((PolymorphicMapType_40968 (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| (Array T@Ref T@Field_41028_53 Bool)) (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| (Array T@Ref T@Field_41041_41042 T@Ref)) (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| (Array T@Ref T@Field_47114_3805 Int)) (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| (Array T@Ref T@Field_29264_115647 T@PolymorphicMapType_41517)) (|PolymorphicMapType_40968_41028_115514#PolymorphicMapType_40968| (Array T@Ref T@Field_29264_115514 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_41028_53)
(declare-fun Ref__Integer_value () T@Field_47114_3805)
(declare-sort T@Seq_48156 0)
(declare-fun |Seq#Length_29303| (T@Seq_48156) Int)
(declare-fun |Seq#Drop_29303| (T@Seq_48156 Int) T@Seq_48156)
(declare-sort T@Seq_3683 0)
(declare-fun |Seq#Length_3683| (T@Seq_3683) Int)
(declare-fun |Seq#Drop_3683| (T@Seq_3683 Int) T@Seq_3683)
(declare-fun state (T@PolymorphicMapType_40968 T@PolymorphicMapType_40989) Bool)
(declare-fun |count_square'| (T@PolymorphicMapType_40968 Int Int Int Int Int Int T@Seq_48156 Int) Int)
(declare-fun |count_square#frame| (T@FrameType Int Int Int Int Int Int T@Seq_48156 Int) Int)
(declare-fun FrameFragment_4664 (Int) T@FrameType)
(declare-fun |count_square#condqp3| (T@PolymorphicMapType_40968 Int Int Int Int Int Int T@Seq_48156 Int) Int)
(declare-fun succHeap (T@PolymorphicMapType_40968 T@PolymorphicMapType_40968) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_40968 T@PolymorphicMapType_40968) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_40989) Bool)
(declare-fun |sum_list'| (T@PolymorphicMapType_40968 Int Int T@Seq_3683) Int)
(declare-fun dummyFunction_4112 (Int) Bool)
(declare-fun |sum_list#triggerStateless| (Int Int T@Seq_3683) Int)
(declare-fun ZeroPMask () T@PolymorphicMapType_41517)
(declare-fun |Seq#Index_29303| (T@Seq_48156 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3683| (T@Seq_3683 Int) Int)
(declare-fun |Seq#Empty_29303| () T@Seq_48156)
(declare-fun |Seq#Empty_3683| () T@Seq_3683)
(declare-fun |Seq#Update_29303| (T@Seq_48156 Int T@Ref) T@Seq_48156)
(declare-fun |Seq#Update_3683| (T@Seq_3683 Int Int) T@Seq_3683)
(declare-fun |Seq#Take_29303| (T@Seq_48156 Int) T@Seq_48156)
(declare-fun |Seq#Take_3683| (T@Seq_3683 Int) T@Seq_3683)
(declare-fun |Seq#Contains_3683| (T@Seq_3683 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3683)
(declare-fun |Seq#Contains_48156| (T@Seq_48156 T@Ref) Bool)
(declare-fun |Seq#Skolem_48156| (T@Seq_48156 T@Ref) Int)
(declare-fun |Seq#Skolem_3683| (T@Seq_3683 Int) Int)
(declare-fun sum_array (T@PolymorphicMapType_40968 Int Int Int T@Seq_48156) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |sum_array'| (T@PolymorphicMapType_40968 Int Int Int T@Seq_48156) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_40968 T@PolymorphicMapType_40968 T@PolymorphicMapType_40989) Bool)
(declare-fun IsPredicateField_29264_115605 (T@Field_29264_115514) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_29264 (T@Field_29264_115514) T@Field_29264_115647)
(declare-fun HasDirectPerm_29264_115578 (T@PolymorphicMapType_40989 T@Ref T@Field_29264_115514) Bool)
(declare-fun IsWandField_29264_117352 (T@Field_29264_115514) Bool)
(declare-fun WandMaskField_29264 (T@Field_29264_115514) T@Field_29264_115647)
(declare-fun |Seq#Singleton_29303| (T@Ref) T@Seq_48156)
(declare-fun |Seq#Singleton_3683| (Int) T@Seq_3683)
(declare-fun count_square (T@PolymorphicMapType_40968 Int Int Int Int Int Int T@Seq_48156 Int) Int)
(declare-fun |count_square#triggerStateless| (Int Int Int Int Int Int T@Seq_48156 Int) Int)
(declare-fun |Seq#Append_48156| (T@Seq_48156 T@Seq_48156) T@Seq_48156)
(declare-fun |Seq#Append_3683| (T@Seq_3683 T@Seq_3683) T@Seq_3683)
(declare-fun |sum_square#condqp2| (T@PolymorphicMapType_40968 Int Int Int Int Int Int T@Seq_48156) Int)
(declare-fun |sk_sum_square#condqp2| (Int Int) Int)
(declare-fun |sk_count_square#condqp3| (Int Int) Int)
(declare-fun dummyHeap () T@PolymorphicMapType_40968)
(declare-fun ZeroMask () T@PolymorphicMapType_40989)
(declare-fun sum_square (T@PolymorphicMapType_40968 Int Int Int Int Int Int T@Seq_48156) Int)
(declare-fun |sum_square'| (T@PolymorphicMapType_40968 Int Int Int Int Int Int T@Seq_48156) Int)
(declare-fun InsidePredicate_41028_41028 (T@Field_29264_115514 T@FrameType T@Field_29264_115514 T@FrameType) Bool)
(declare-fun IsPredicateField_29264_3805 (T@Field_47114_3805) Bool)
(declare-fun IsWandField_29264_3805 (T@Field_47114_3805) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_29264_120898 (T@Field_29264_115647) Bool)
(declare-fun IsWandField_29264_120914 (T@Field_29264_115647) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_29264_41042 (T@Field_41041_41042) Bool)
(declare-fun IsWandField_29264_41042 (T@Field_41041_41042) Bool)
(declare-fun IsPredicateField_29264_53 (T@Field_41028_53) Bool)
(declare-fun IsWandField_29264_53 (T@Field_41028_53) Bool)
(declare-fun |sum_list#frame| (T@FrameType Int Int T@Seq_3683) Int)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun HasDirectPerm_29264_121352 (T@PolymorphicMapType_40989 T@Ref T@Field_29264_115647) Bool)
(declare-fun HasDirectPerm_29264_41042 (T@PolymorphicMapType_40989 T@Ref T@Field_41041_41042) Bool)
(declare-fun HasDirectPerm_29264_53 (T@PolymorphicMapType_40989 T@Ref T@Field_41028_53) Bool)
(declare-fun HasDirectPerm_29264_3805 (T@PolymorphicMapType_40989 T@Ref T@Field_47114_3805) Bool)
(declare-fun |sum_array#triggerStateless| (Int Int Int T@Seq_48156) Int)
(declare-fun |count_list'| (T@PolymorphicMapType_40968 Int Int T@Seq_3683 Int) Int)
(declare-fun |count_list#triggerStateless| (Int Int T@Seq_3683 Int) Int)
(declare-fun |count_array'| (T@PolymorphicMapType_40968 Int Int T@Seq_48156 Int) Int)
(declare-fun |count_array#triggerStateless| (Int Int T@Seq_48156 Int) Int)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun count_list (T@PolymorphicMapType_40968 Int Int T@Seq_3683 Int) Int)
(declare-fun count_array (T@PolymorphicMapType_40968 Int Int T@Seq_48156 Int) Int)
(declare-fun sumMask (T@PolymorphicMapType_40989 T@PolymorphicMapType_40989 T@PolymorphicMapType_40989) Bool)
(declare-fun |sum_square#triggerStateless| (Int Int Int Int Int Int T@Seq_48156) Int)
(declare-fun |count_list#frame| (T@FrameType Int Int T@Seq_3683 Int) Int)
(declare-fun |count_array#condqp4| (T@PolymorphicMapType_40968 Int Int T@Seq_48156 Int) Int)
(declare-fun |sk_count_array#condqp4| (Int Int) Int)
(declare-fun |sum_array#condqp1| (T@PolymorphicMapType_40968 Int Int Int T@Seq_48156) Int)
(declare-fun |sk_sum_array#condqp1| (Int Int) Int)
(declare-fun |Seq#Equal_48156| (T@Seq_48156 T@Seq_48156) Bool)
(declare-fun |Seq#Equal_3683| (T@Seq_3683 T@Seq_3683) Bool)
(declare-fun sum_list (T@PolymorphicMapType_40968 Int Int T@Seq_3683) Int)
(declare-fun |Seq#ContainsTrigger_29303| (T@Seq_48156 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3683| (T@Seq_3683 Int) Bool)
(declare-fun |sum_square#frame| (T@FrameType Int Int Int Int Int Int T@Seq_48156) Int)
(declare-fun |Seq#SkolemDiff_48156| (T@Seq_48156 T@Seq_48156) Int)
(declare-fun |Seq#SkolemDiff_3683| (T@Seq_3683 T@Seq_3683) Int)
(declare-fun |sum_array#frame| (T@FrameType Int Int Int T@Seq_48156) Int)
(declare-fun |count_array#frame| (T@FrameType Int Int T@Seq_48156 Int) Int)
(assert (forall ((s T@Seq_48156) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_29303| s)) (= (|Seq#Length_29303| (|Seq#Drop_29303| s n)) (- (|Seq#Length_29303| s) n))) (=> (< (|Seq#Length_29303| s) n) (= (|Seq#Length_29303| (|Seq#Drop_29303| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_29303| (|Seq#Drop_29303| s n)) (|Seq#Length_29303| s))))
 :qid |stdinbpl.395:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_29303| (|Seq#Drop_29303| s n)))
 :pattern ( (|Seq#Length_29303| s) (|Seq#Drop_29303| s n))
)))
(assert (forall ((s@@0 T@Seq_3683) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3683| s@@0)) (= (|Seq#Length_3683| (|Seq#Drop_3683| s@@0 n@@0)) (- (|Seq#Length_3683| s@@0) n@@0))) (=> (< (|Seq#Length_3683| s@@0) n@@0) (= (|Seq#Length_3683| (|Seq#Drop_3683| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3683| (|Seq#Drop_3683| s@@0 n@@0)) (|Seq#Length_3683| s@@0))))
 :qid |stdinbpl.395:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3683| (|Seq#Drop_3683| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3683| s@@0) (|Seq#Drop_3683| s@@0 n@@0))
)))
(assert (forall ((Heap T@PolymorphicMapType_40968) (Mask T@PolymorphicMapType_40989) (i Int) (lo Int) (hi Int) (step Int) (vmin Int) (vmax_1 Int) (ar_1 T@Seq_48156) (v_2 Int) ) (!  (=> (state Heap Mask) (= (|count_square'| Heap i lo hi step vmin vmax_1 ar_1 v_2) (|count_square#frame| (FrameFragment_4664 (|count_square#condqp3| Heap i lo hi step vmin vmax_1 ar_1 v_2)) i lo hi step vmin vmax_1 ar_1 v_2)))
 :qid |stdinbpl.1283:15|
 :skolemid |108|
 :pattern ( (state Heap Mask) (|count_square'| Heap i lo hi step vmin vmax_1 ar_1 v_2))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_40968) (Heap1 T@PolymorphicMapType_40968) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_40968) (Mask@@0 T@PolymorphicMapType_40989) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_40968) (Heap1@@0 T@PolymorphicMapType_40968) (Heap2 T@PolymorphicMapType_40968) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_40968) (i@@0 Int) (hi@@0 Int) (ar_1@@0 T@Seq_3683) ) (! (dummyFunction_4112 (|sum_list#triggerStateless| i@@0 hi@@0 ar_1@@0))
 :qid |stdinbpl.681:15|
 :skolemid |59|
 :pattern ( (|sum_list'| Heap@@1 i@@0 hi@@0 ar_1@@0))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_29264_115647) ) (!  (not (select (|PolymorphicMapType_41517_41028_116825#PolymorphicMapType_41517| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_41517_41028_116825#PolymorphicMapType_41517| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_29264_115514) ) (!  (not (select (|PolymorphicMapType_41517_41028_115514#PolymorphicMapType_41517| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_41517_41028_115514#PolymorphicMapType_41517| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_47114_3805) ) (!  (not (select (|PolymorphicMapType_41517_41028_3805#PolymorphicMapType_41517| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_41517_41028_3805#PolymorphicMapType_41517| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_41041_41042) ) (!  (not (select (|PolymorphicMapType_41517_41028_41042#PolymorphicMapType_41517| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_41517_41028_41042#PolymorphicMapType_41517| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_41028_53) ) (!  (not (select (|PolymorphicMapType_41517_41028_53#PolymorphicMapType_41517| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_41517_41028_53#PolymorphicMapType_41517| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((s@@1 T@Seq_48156) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_29303| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_29303| (|Seq#Drop_29303| s@@1 n@@1) j) (|Seq#Index_29303| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.416:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_29303| (|Seq#Drop_29303| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3683) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3683| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3683| (|Seq#Drop_3683| s@@2 n@@2) j@@0) (|Seq#Index_3683| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.416:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3683| (|Seq#Drop_3683| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_29303| |Seq#Empty_29303|) 0))
(assert (= (|Seq#Length_3683| |Seq#Empty_3683|) 0))
(assert (forall ((s@@3 T@Seq_48156) (i@@1 Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_29303| s@@3))) (and (=> (= i@@1 n@@3) (= (|Seq#Index_29303| (|Seq#Update_29303| s@@3 i@@1 v) n@@3) v)) (=> (not (= i@@1 n@@3)) (= (|Seq#Index_29303| (|Seq#Update_29303| s@@3 i@@1 v) n@@3) (|Seq#Index_29303| s@@3 n@@3)))))
 :qid |stdinbpl.371:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_29303| (|Seq#Update_29303| s@@3 i@@1 v) n@@3))
 :pattern ( (|Seq#Index_29303| s@@3 n@@3) (|Seq#Update_29303| s@@3 i@@1 v))
)))
(assert (forall ((s@@4 T@Seq_3683) (i@@2 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3683| s@@4))) (and (=> (= i@@2 n@@4) (= (|Seq#Index_3683| (|Seq#Update_3683| s@@4 i@@2 v@@0) n@@4) v@@0)) (=> (not (= i@@2 n@@4)) (= (|Seq#Index_3683| (|Seq#Update_3683| s@@4 i@@2 v@@0) n@@4) (|Seq#Index_3683| s@@4 n@@4)))))
 :qid |stdinbpl.371:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3683| (|Seq#Update_3683| s@@4 i@@2 v@@0) n@@4))
 :pattern ( (|Seq#Index_3683| s@@4 n@@4) (|Seq#Update_3683| s@@4 i@@2 v@@0))
)))
(assert (forall ((s@@5 T@Seq_48156) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_29303| s@@5)) (= (|Seq#Length_29303| (|Seq#Take_29303| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_29303| s@@5) n@@5) (= (|Seq#Length_29303| (|Seq#Take_29303| s@@5 n@@5)) (|Seq#Length_29303| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_29303| (|Seq#Take_29303| s@@5 n@@5)) 0)))
 :qid |stdinbpl.382:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_29303| (|Seq#Take_29303| s@@5 n@@5)))
 :pattern ( (|Seq#Take_29303| s@@5 n@@5) (|Seq#Length_29303| s@@5))
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
(assert (forall ((s@@7 T@Seq_48156) (x T@Ref) ) (!  (=> (|Seq#Contains_48156| s@@7 x) (and (and (<= 0 (|Seq#Skolem_48156| s@@7 x)) (< (|Seq#Skolem_48156| s@@7 x) (|Seq#Length_29303| s@@7))) (= (|Seq#Index_29303| s@@7 (|Seq#Skolem_48156| s@@7 x)) x)))
 :qid |stdinbpl.514:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_48156| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3683) (x@@0 Int) ) (!  (=> (|Seq#Contains_3683| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3683| s@@8 x@@0)) (< (|Seq#Skolem_3683| s@@8 x@@0) (|Seq#Length_3683| s@@8))) (= (|Seq#Index_3683| s@@8 (|Seq#Skolem_3683| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.514:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3683| s@@8 x@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_40968) (Mask@@1 T@PolymorphicMapType_40989) (i@@3 Int) (lo@@0 Int) (hi@@1 Int) (ar_1@@1 T@Seq_48156) ) (!  (=> (and (state Heap@@2 Mask@@1) (< AssumeFunctionsAbove 1)) (=> (and (and (and (<= 0 lo@@0) (and (<= lo@@0 i@@3) (<= i@@3 hi@@1))) (<= hi@@1 (|Seq#Length_29303| ar_1@@1))) (forall ((k Int) (j@@1 Int) ) (!  (=> (and (>= k 0) (and (< k (|Seq#Length_29303| ar_1@@1)) (and (>= j@@1 0) (and (< j@@1 (|Seq#Length_29303| ar_1@@1)) (not (= k j@@1)))))) (not (= (|Seq#Index_29303| ar_1@@1 k) (|Seq#Index_29303| ar_1@@1 j@@1))))
 :qid |stdinbpl.774:126|
 :skolemid |64|
 :pattern ( (|Seq#Index_29303| ar_1@@1 k) (|Seq#Index_29303| ar_1@@1 j@@1))
))) (= (sum_array Heap@@2 i@@3 lo@@0 hi@@1 ar_1@@1) (ite (< i@@3 hi@@1) (+ (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@2) (|Seq#Index_29303| ar_1@@1 i@@3) Ref__Integer_value) (|sum_array'| Heap@@2 (+ i@@3 1) lo@@0 hi@@1 ar_1@@1)) 0))))
 :qid |stdinbpl.772:15|
 :skolemid |65|
 :pattern ( (state Heap@@2 Mask@@1) (sum_array Heap@@2 i@@3 lo@@0 hi@@1 ar_1@@1))
)))
(assert (forall ((s@@9 T@Seq_48156) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_29303| s@@9 n@@7) s@@9))
 :qid |stdinbpl.498:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_29303| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3683) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3683| s@@10 n@@8) s@@10))
 :qid |stdinbpl.498:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3683| s@@10 n@@8))
)))
(assert (forall ((i@@4 Int) (j@@2 Int) ) (! (= (|Seq#Sub| i@@4 j@@2) (- i@@4 j@@2))
 :qid |stdinbpl.351:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@4 j@@2))
)))
(assert (forall ((i@@5 Int) (j@@3 Int) ) (! (= (|Seq#Add| i@@5 j@@3) (+ i@@5 j@@3))
 :qid |stdinbpl.349:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@5 j@@3))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_40968) (ExhaleHeap T@PolymorphicMapType_40968) (Mask@@2 T@PolymorphicMapType_40989) (pm_f_22 T@Field_29264_115514) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@2) (=> (and (HasDirectPerm_29264_115578 Mask@@2 null pm_f_22) (IsPredicateField_29264_115605 pm_f_22)) (= (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@3) null (PredicateMaskField_29264 pm_f_22)) (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| ExhaleHeap) null (PredicateMaskField_29264 pm_f_22)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@2) (IsPredicateField_29264_115605 pm_f_22) (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| ExhaleHeap) null (PredicateMaskField_29264 pm_f_22)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_40968) (ExhaleHeap@@0 T@PolymorphicMapType_40968) (Mask@@3 T@PolymorphicMapType_40989) (pm_f_22@@0 T@Field_29264_115514) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@3) (=> (and (HasDirectPerm_29264_115578 Mask@@3 null pm_f_22@@0) (IsWandField_29264_117352 pm_f_22@@0)) (= (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@4) null (WandMaskField_29264 pm_f_22@@0)) (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| ExhaleHeap@@0) null (WandMaskField_29264 pm_f_22@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@3) (IsWandField_29264_117352 pm_f_22@@0) (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| ExhaleHeap@@0) null (WandMaskField_29264 pm_f_22@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_48156| (|Seq#Singleton_29303| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.639:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_48156| (|Seq#Singleton_29303| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3683| (|Seq#Singleton_3683| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.639:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3683| (|Seq#Singleton_3683| x@@2) y@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_40968) (i@@6 Int) (lo@@1 Int) (hi@@2 Int) (step@@0 Int) (vmin@@0 Int) (vmax_1@@0 Int) (ar_1@@2 T@Seq_48156) (v_2@@0 Int) ) (!  (and (= (count_square Heap@@5 i@@6 lo@@1 hi@@2 step@@0 vmin@@0 vmax_1@@0 ar_1@@2 v_2@@0) (|count_square'| Heap@@5 i@@6 lo@@1 hi@@2 step@@0 vmin@@0 vmax_1@@0 ar_1@@2 v_2@@0)) (dummyFunction_4112 (|count_square#triggerStateless| i@@6 lo@@1 hi@@2 step@@0 vmin@@0 vmax_1@@0 ar_1@@2 v_2@@0)))
 :qid |stdinbpl.1263:15|
 :skolemid |104|
 :pattern ( (count_square Heap@@5 i@@6 lo@@1 hi@@2 step@@0 vmin@@0 vmax_1@@0 ar_1@@2 v_2@@0))
)))
(assert (forall ((s@@11 T@Seq_48156) (n@@9 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@9)) (< j@@4 (|Seq#Length_29303| s@@11))) (= (|Seq#Index_29303| (|Seq#Take_29303| s@@11 n@@9) j@@4) (|Seq#Index_29303| s@@11 j@@4)))
 :qid |stdinbpl.390:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_29303| (|Seq#Take_29303| s@@11 n@@9) j@@4))
 :pattern ( (|Seq#Index_29303| s@@11 j@@4) (|Seq#Take_29303| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3683) (n@@10 Int) (j@@5 Int) ) (!  (=> (and (and (<= 0 j@@5) (< j@@5 n@@10)) (< j@@5 (|Seq#Length_3683| s@@12))) (= (|Seq#Index_3683| (|Seq#Take_3683| s@@12 n@@10) j@@5) (|Seq#Index_3683| s@@12 j@@5)))
 :qid |stdinbpl.390:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3683| (|Seq#Take_3683| s@@12 n@@10) j@@5))
 :pattern ( (|Seq#Index_3683| s@@12 j@@5) (|Seq#Take_3683| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_48156) (t T@Seq_48156) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_29303| s@@13))) (< n@@11 (|Seq#Length_29303| (|Seq#Append_48156| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_29303| s@@13)) (|Seq#Length_29303| s@@13)) n@@11) (= (|Seq#Take_29303| (|Seq#Append_48156| s@@13 t) n@@11) (|Seq#Append_48156| s@@13 (|Seq#Take_29303| t (|Seq#Sub| n@@11 (|Seq#Length_29303| s@@13)))))))
 :qid |stdinbpl.475:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_29303| (|Seq#Append_48156| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3683) (t@@0 T@Seq_3683) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3683| s@@14))) (< n@@12 (|Seq#Length_3683| (|Seq#Append_3683| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3683| s@@14)) (|Seq#Length_3683| s@@14)) n@@12) (= (|Seq#Take_3683| (|Seq#Append_3683| s@@14 t@@0) n@@12) (|Seq#Append_3683| s@@14 (|Seq#Take_3683| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3683| s@@14)))))))
 :qid |stdinbpl.475:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3683| (|Seq#Append_3683| s@@14 t@@0) n@@12))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_40968) (i@@7 Int) (lo@@2 Int) (hi@@3 Int) (step@@1 Int) (vmin@@1 Int) (vmax_1@@1 Int) (ar_1@@3 T@Seq_48156) (v_2@@1 Int) ) (! (dummyFunction_4112 (|count_square#triggerStateless| i@@7 lo@@2 hi@@3 step@@1 vmin@@1 vmax_1@@1 ar_1@@3 v_2@@1))
 :qid |stdinbpl.1267:15|
 :skolemid |105|
 :pattern ( (|count_square'| Heap@@6 i@@7 lo@@2 hi@@3 step@@1 vmin@@1 vmax_1@@1 ar_1@@3 v_2@@1))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_40968) (Heap1Heap T@PolymorphicMapType_40968) (i@@8 Int) (lo@@3 Int) (hi@@4 Int) (step@@2 Int) (vmin@@2 Int) (vmax_1@@2 Int) (ar_1@@4 T@Seq_48156) ) (!  (=> (and (=  (and (<= vmin@@2 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) vmax_1@@2) (and (<= lo@@3 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2) hi@@4))))  (and (<= vmin@@2 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) vmax_1@@2) (and (<= lo@@3 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2) hi@@4))))) (=> (and (<= vmin@@2 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) vmax_1@@2) (and (<= lo@@3 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2) hi@@4)))) (= (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap2Heap) (|Seq#Index_29303| ar_1@@4 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) Ref__Integer_value) (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap1Heap) (|Seq#Index_29303| ar_1@@4 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) Ref__Integer_value)))) (= (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)))
 :qid |stdinbpl.1027:15|
 :skolemid |88|
 :pattern ( (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_40968) (Heap1Heap@@0 T@PolymorphicMapType_40968) (i@@9 Int) (lo@@4 Int) (hi@@5 Int) (step@@3 Int) (vmin@@3 Int) (vmax_1@@3 Int) (ar_1@@5 T@Seq_48156) (v_2@@2 Int) ) (!  (=> (and (=  (and (<= vmin@@3 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) vmax_1@@3) (and (<= lo@@4 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) step@@3)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) step@@3) hi@@5))))  (and (<= vmin@@3 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) vmax_1@@3) (and (<= lo@@4 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) step@@3)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) step@@3) hi@@5))))) (=> (and (<= vmin@@3 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) vmax_1@@3) (and (<= lo@@4 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) step@@3)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)) step@@3) hi@@5)))) (= (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap2Heap@@0) (|Seq#Index_29303| ar_1@@5 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2))) Ref__Integer_value) (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap1Heap@@0) (|Seq#Index_29303| ar_1@@5 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2))) Ref__Integer_value)))) (= (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2)))
 :qid |stdinbpl.1293:15|
 :skolemid |109|
 :pattern ( (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5 v_2@@2) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@7 T@PolymorphicMapType_40968) (Mask@@4 T@PolymorphicMapType_40989) (i@@10 Int) (lo@@5 Int) (hi@@6 Int) (step@@4 Int) (vmin@@4 Int) (vmax_1@@4 Int) (ar_1@@6 T@Seq_48156) ) (!  (=> (and (state Heap@@7 Mask@@4) (< AssumeFunctionsAbove 3)) (=> (and (and (and (and (<= 0 lo@@5) (and (<= lo@@5 hi@@6) (and (<= hi@@6 step@@4) (> step@@4 0)))) (and (<= 0 vmin@@4) (and (<= vmin@@4 i@@10) (<= i@@10 vmax_1@@4)))) (<= vmax_1@@4 (|Seq#Length_29303| ar_1@@6))) (forall ((k@@0 Int) (j@@6 Int) ) (!  (=> (and (>= k@@0 0) (and (< k@@0 (|Seq#Length_29303| ar_1@@6)) (and (>= j@@6 0) (and (< j@@6 (|Seq#Length_29303| ar_1@@6)) (not (= k@@0 j@@6)))))) (not (= (|Seq#Index_29303| ar_1@@6 k@@0) (|Seq#Index_29303| ar_1@@6 j@@6))))
 :qid |stdinbpl.1009:195|
 :skolemid |85|
 :pattern ( (|Seq#Index_29303| ar_1@@6 k@@0) (|Seq#Index_29303| ar_1@@6 j@@6))
))) (= (sum_square Heap@@7 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6) (ite (< i@@10 vmax_1@@4) (+ (ite  (and (<= lo@@5 (mod i@@10 step@@4)) (< (mod i@@10 step@@4) hi@@6)) (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@7) (|Seq#Index_29303| ar_1@@6 i@@10) Ref__Integer_value) 0) (|sum_square'| Heap@@7 (+ i@@10 1) lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6)) 0))))
 :qid |stdinbpl.1007:15|
 :skolemid |86|
 :pattern ( (state Heap@@7 Mask@@4) (sum_square Heap@@7 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_40968) (ExhaleHeap@@1 T@PolymorphicMapType_40968) (Mask@@5 T@PolymorphicMapType_40989) (o_45 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@5) (=> (select (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| Heap@@8) o_45 $allocated) (select (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| ExhaleHeap@@1) o_45 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@5) (select (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| ExhaleHeap@@1) o_45 $allocated))
)))
(assert (forall ((p T@Field_29264_115514) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_41028_41028 p v_1 p w))
 :qid |stdinbpl.293:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_41028_41028 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_48156) (s1 T@Seq_48156) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_29303|)) (not (= s1 |Seq#Empty_29303|))) (<= (|Seq#Length_29303| s0) n@@13)) (< n@@13 (|Seq#Length_29303| (|Seq#Append_48156| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_29303| s0)) (|Seq#Length_29303| s0)) n@@13) (= (|Seq#Index_29303| (|Seq#Append_48156| s0 s1) n@@13) (|Seq#Index_29303| s1 (|Seq#Sub| n@@13 (|Seq#Length_29303| s0))))))
 :qid |stdinbpl.362:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_29303| (|Seq#Append_48156| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3683) (s1@@0 T@Seq_3683) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3683|)) (not (= s1@@0 |Seq#Empty_3683|))) (<= (|Seq#Length_3683| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3683| (|Seq#Append_3683| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3683| s0@@0)) (|Seq#Length_3683| s0@@0)) n@@14) (= (|Seq#Index_3683| (|Seq#Append_3683| s0@@0 s1@@0) n@@14) (|Seq#Index_3683| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3683| s0@@0))))))
 :qid |stdinbpl.362:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3683| (|Seq#Append_3683| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_29264_3805 Ref__Integer_value)))
(assert  (not (IsWandField_29264_3805 Ref__Integer_value)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_40968) (ExhaleHeap@@2 T@PolymorphicMapType_40968) (Mask@@6 T@PolymorphicMapType_40989) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@6) (succHeap Heap@@9 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_40989) (o_2@@4 T@Ref) (f_4@@4 T@Field_29264_115647) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_29264_120898 f_4@@4))) (not (IsWandField_29264_120914 f_4@@4))) (<= (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_40989) (o_2@@5 T@Ref) (f_4@@5 T@Field_29264_115514) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_29264_115605 f_4@@5))) (not (IsWandField_29264_117352 f_4@@5))) (<= (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_40989) (o_2@@6 T@Ref) (f_4@@6 T@Field_41041_41042) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_29264_41042 f_4@@6))) (not (IsWandField_29264_41042 f_4@@6))) (<= (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_40989) (o_2@@7 T@Ref) (f_4@@7 T@Field_41028_53) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| Mask@@10) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_29264_53 f_4@@7))) (not (IsWandField_29264_53 f_4@@7))) (<= (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| Mask@@10) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| Mask@@10) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_40989) (o_2@@8 T@Ref) (f_4@@8 T@Field_47114_3805) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| Mask@@11) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_29264_3805 f_4@@8))) (not (IsWandField_29264_3805 f_4@@8))) (<= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| Mask@@11) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| Mask@@11) o_2@@8 f_4@@8))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_40968) (Mask@@12 T@PolymorphicMapType_40989) (i@@11 Int) (hi@@7 Int) (ar_1@@7 T@Seq_3683) ) (!  (=> (state Heap@@10 Mask@@12) (= (|sum_list'| Heap@@10 i@@11 hi@@7 ar_1@@7) (|sum_list#frame| EmptyFrame i@@11 hi@@7 ar_1@@7)))
 :qid |stdinbpl.694:15|
 :skolemid |61|
 :pattern ( (state Heap@@10 Mask@@12) (|sum_list'| Heap@@10 i@@11 hi@@7 ar_1@@7))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_40989) (o_2@@9 T@Ref) (f_4@@9 T@Field_29264_115647) ) (! (= (HasDirectPerm_29264_121352 Mask@@13 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| Mask@@13) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_29264_121352 Mask@@13 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_40989) (o_2@@10 T@Ref) (f_4@@10 T@Field_29264_115514) ) (! (= (HasDirectPerm_29264_115578 Mask@@14 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| Mask@@14) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_29264_115578 Mask@@14 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_40989) (o_2@@11 T@Ref) (f_4@@11 T@Field_41041_41042) ) (! (= (HasDirectPerm_29264_41042 Mask@@15 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| Mask@@15) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_29264_41042 Mask@@15 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_40989) (o_2@@12 T@Ref) (f_4@@12 T@Field_41028_53) ) (! (= (HasDirectPerm_29264_53 Mask@@16 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| Mask@@16) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_29264_53 Mask@@16 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_40989) (o_2@@13 T@Ref) (f_4@@13 T@Field_47114_3805) ) (! (= (HasDirectPerm_29264_3805 Mask@@17 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| Mask@@17) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_29264_3805 Mask@@17 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_40968) (i@@12 Int) (lo@@6 Int) (hi@@8 Int) (ar_1@@8 T@Seq_48156) ) (! (dummyFunction_4112 (|sum_array#triggerStateless| i@@12 lo@@6 hi@@8 ar_1@@8))
 :qid |stdinbpl.766:15|
 :skolemid |63|
 :pattern ( (|sum_array'| Heap@@11 i@@12 lo@@6 hi@@8 ar_1@@8))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_40968) (i@@13 Int) (hi@@9 Int) (ar_1@@9 T@Seq_3683) (v_2@@3 Int) ) (! (dummyFunction_4112 (|count_list#triggerStateless| i@@13 hi@@9 ar_1@@9 v_2@@3))
 :qid |stdinbpl.1533:15|
 :skolemid |126|
 :pattern ( (|count_list'| Heap@@12 i@@13 hi@@9 ar_1@@9 v_2@@3))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_40968) (i@@14 Int) (hi@@10 Int) (ar_1@@10 T@Seq_48156) (v_2@@4 Int) ) (! (dummyFunction_4112 (|count_array#triggerStateless| i@@14 hi@@10 ar_1@@10 v_2@@4))
 :qid |stdinbpl.1618:15|
 :skolemid |130|
 :pattern ( (|count_array'| Heap@@13 i@@14 hi@@10 ar_1@@10 v_2@@4))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_40968) (ExhaleHeap@@3 T@PolymorphicMapType_40968) (Mask@@18 T@PolymorphicMapType_40989) (pm_f_22@@1 T@Field_29264_115514) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@3 Mask@@18) (=> (and (HasDirectPerm_29264_115578 Mask@@18 null pm_f_22@@1) (IsPredicateField_29264_115605 pm_f_22@@1)) (and (and (and (and (forall ((o2_22 T@Ref) (f_59 T@Field_41028_53) ) (!  (=> (select (|PolymorphicMapType_41517_41028_53#PolymorphicMapType_41517| (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@14) null (PredicateMaskField_29264 pm_f_22@@1))) o2_22 f_59) (= (select (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| Heap@@14) o2_22 f_59) (select (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| ExhaleHeap@@3) o2_22 f_59)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| ExhaleHeap@@3) o2_22 f_59))
)) (forall ((o2_22@@0 T@Ref) (f_59@@0 T@Field_41041_41042) ) (!  (=> (select (|PolymorphicMapType_41517_41028_41042#PolymorphicMapType_41517| (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@14) null (PredicateMaskField_29264 pm_f_22@@1))) o2_22@@0 f_59@@0) (= (select (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| Heap@@14) o2_22@@0 f_59@@0) (select (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| ExhaleHeap@@3) o2_22@@0 f_59@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| ExhaleHeap@@3) o2_22@@0 f_59@@0))
))) (forall ((o2_22@@1 T@Ref) (f_59@@1 T@Field_47114_3805) ) (!  (=> (select (|PolymorphicMapType_41517_41028_3805#PolymorphicMapType_41517| (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@14) null (PredicateMaskField_29264 pm_f_22@@1))) o2_22@@1 f_59@@1) (= (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@14) o2_22@@1 f_59@@1) (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| ExhaleHeap@@3) o2_22@@1 f_59@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| ExhaleHeap@@3) o2_22@@1 f_59@@1))
))) (forall ((o2_22@@2 T@Ref) (f_59@@2 T@Field_29264_115514) ) (!  (=> (select (|PolymorphicMapType_41517_41028_115514#PolymorphicMapType_41517| (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@14) null (PredicateMaskField_29264 pm_f_22@@1))) o2_22@@2 f_59@@2) (= (select (|PolymorphicMapType_40968_41028_115514#PolymorphicMapType_40968| Heap@@14) o2_22@@2 f_59@@2) (select (|PolymorphicMapType_40968_41028_115514#PolymorphicMapType_40968| ExhaleHeap@@3) o2_22@@2 f_59@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40968_41028_115514#PolymorphicMapType_40968| ExhaleHeap@@3) o2_22@@2 f_59@@2))
))) (forall ((o2_22@@3 T@Ref) (f_59@@3 T@Field_29264_115647) ) (!  (=> (select (|PolymorphicMapType_41517_41028_116825#PolymorphicMapType_41517| (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@14) null (PredicateMaskField_29264 pm_f_22@@1))) o2_22@@3 f_59@@3) (= (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@14) o2_22@@3 f_59@@3) (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| ExhaleHeap@@3) o2_22@@3 f_59@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| ExhaleHeap@@3) o2_22@@3 f_59@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@3 Mask@@18) (IsPredicateField_29264_115605 pm_f_22@@1))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_40968) (ExhaleHeap@@4 T@PolymorphicMapType_40968) (Mask@@19 T@PolymorphicMapType_40989) (pm_f_22@@2 T@Field_29264_115514) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@4 Mask@@19) (=> (and (HasDirectPerm_29264_115578 Mask@@19 null pm_f_22@@2) (IsWandField_29264_117352 pm_f_22@@2)) (and (and (and (and (forall ((o2_22@@4 T@Ref) (f_59@@4 T@Field_41028_53) ) (!  (=> (select (|PolymorphicMapType_41517_41028_53#PolymorphicMapType_41517| (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@15) null (WandMaskField_29264 pm_f_22@@2))) o2_22@@4 f_59@@4) (= (select (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| Heap@@15) o2_22@@4 f_59@@4) (select (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| ExhaleHeap@@4) o2_22@@4 f_59@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| ExhaleHeap@@4) o2_22@@4 f_59@@4))
)) (forall ((o2_22@@5 T@Ref) (f_59@@5 T@Field_41041_41042) ) (!  (=> (select (|PolymorphicMapType_41517_41028_41042#PolymorphicMapType_41517| (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@15) null (WandMaskField_29264 pm_f_22@@2))) o2_22@@5 f_59@@5) (= (select (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| Heap@@15) o2_22@@5 f_59@@5) (select (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| ExhaleHeap@@4) o2_22@@5 f_59@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| ExhaleHeap@@4) o2_22@@5 f_59@@5))
))) (forall ((o2_22@@6 T@Ref) (f_59@@6 T@Field_47114_3805) ) (!  (=> (select (|PolymorphicMapType_41517_41028_3805#PolymorphicMapType_41517| (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@15) null (WandMaskField_29264 pm_f_22@@2))) o2_22@@6 f_59@@6) (= (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@15) o2_22@@6 f_59@@6) (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| ExhaleHeap@@4) o2_22@@6 f_59@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| ExhaleHeap@@4) o2_22@@6 f_59@@6))
))) (forall ((o2_22@@7 T@Ref) (f_59@@7 T@Field_29264_115514) ) (!  (=> (select (|PolymorphicMapType_41517_41028_115514#PolymorphicMapType_41517| (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@15) null (WandMaskField_29264 pm_f_22@@2))) o2_22@@7 f_59@@7) (= (select (|PolymorphicMapType_40968_41028_115514#PolymorphicMapType_40968| Heap@@15) o2_22@@7 f_59@@7) (select (|PolymorphicMapType_40968_41028_115514#PolymorphicMapType_40968| ExhaleHeap@@4) o2_22@@7 f_59@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40968_41028_115514#PolymorphicMapType_40968| ExhaleHeap@@4) o2_22@@7 f_59@@7))
))) (forall ((o2_22@@8 T@Ref) (f_59@@8 T@Field_29264_115647) ) (!  (=> (select (|PolymorphicMapType_41517_41028_116825#PolymorphicMapType_41517| (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@15) null (WandMaskField_29264 pm_f_22@@2))) o2_22@@8 f_59@@8) (= (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@15) o2_22@@8 f_59@@8) (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| ExhaleHeap@@4) o2_22@@8 f_59@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| ExhaleHeap@@4) o2_22@@8 f_59@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@4 Mask@@19) (IsWandField_29264_117352 pm_f_22@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.281:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3683| (|Seq#Range| q@min@@0 q@max@@0) j@@7) (+ q@min@@0 j@@7)))
 :qid |stdinbpl.654:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3683| (|Seq#Range| q@min@@0 q@max@@0) j@@7))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_40968) (ExhaleHeap@@5 T@PolymorphicMapType_40968) (Mask@@20 T@PolymorphicMapType_40989) (o_45@@0 T@Ref) (f_59@@9 T@Field_29264_115647) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@5 Mask@@20) (=> (HasDirectPerm_29264_121352 Mask@@20 o_45@@0 f_59@@9) (= (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@16) o_45@@0 f_59@@9) (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| ExhaleHeap@@5) o_45@@0 f_59@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@5 Mask@@20) (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| ExhaleHeap@@5) o_45@@0 f_59@@9))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_40968) (ExhaleHeap@@6 T@PolymorphicMapType_40968) (Mask@@21 T@PolymorphicMapType_40989) (o_45@@1 T@Ref) (f_59@@10 T@Field_29264_115514) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@6 Mask@@21) (=> (HasDirectPerm_29264_115578 Mask@@21 o_45@@1 f_59@@10) (= (select (|PolymorphicMapType_40968_41028_115514#PolymorphicMapType_40968| Heap@@17) o_45@@1 f_59@@10) (select (|PolymorphicMapType_40968_41028_115514#PolymorphicMapType_40968| ExhaleHeap@@6) o_45@@1 f_59@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@6 Mask@@21) (select (|PolymorphicMapType_40968_41028_115514#PolymorphicMapType_40968| ExhaleHeap@@6) o_45@@1 f_59@@10))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_40968) (ExhaleHeap@@7 T@PolymorphicMapType_40968) (Mask@@22 T@PolymorphicMapType_40989) (o_45@@2 T@Ref) (f_59@@11 T@Field_41041_41042) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@7 Mask@@22) (=> (HasDirectPerm_29264_41042 Mask@@22 o_45@@2 f_59@@11) (= (select (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| Heap@@18) o_45@@2 f_59@@11) (select (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| ExhaleHeap@@7) o_45@@2 f_59@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@7 Mask@@22) (select (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| ExhaleHeap@@7) o_45@@2 f_59@@11))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_40968) (ExhaleHeap@@8 T@PolymorphicMapType_40968) (Mask@@23 T@PolymorphicMapType_40989) (o_45@@3 T@Ref) (f_59@@12 T@Field_41028_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@8 Mask@@23) (=> (HasDirectPerm_29264_53 Mask@@23 o_45@@3 f_59@@12) (= (select (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| Heap@@19) o_45@@3 f_59@@12) (select (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| ExhaleHeap@@8) o_45@@3 f_59@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@8 Mask@@23) (select (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| ExhaleHeap@@8) o_45@@3 f_59@@12))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_40968) (ExhaleHeap@@9 T@PolymorphicMapType_40968) (Mask@@24 T@PolymorphicMapType_40989) (o_45@@4 T@Ref) (f_59@@13 T@Field_47114_3805) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@9 Mask@@24) (=> (HasDirectPerm_29264_3805 Mask@@24 o_45@@4 f_59@@13) (= (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@20) o_45@@4 f_59@@13) (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| ExhaleHeap@@9) o_45@@4 f_59@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@9 Mask@@24) (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| ExhaleHeap@@9) o_45@@4 f_59@@13))
)))
(assert (forall ((s0@@1 T@Seq_48156) (s1@@1 T@Seq_48156) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_29303|)) (not (= s1@@1 |Seq#Empty_29303|))) (= (|Seq#Length_29303| (|Seq#Append_48156| s0@@1 s1@@1)) (+ (|Seq#Length_29303| s0@@1) (|Seq#Length_29303| s1@@1))))
 :qid |stdinbpl.331:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_29303| (|Seq#Append_48156| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3683) (s1@@2 T@Seq_3683) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3683|)) (not (= s1@@2 |Seq#Empty_3683|))) (= (|Seq#Length_3683| (|Seq#Append_3683| s0@@2 s1@@2)) (+ (|Seq#Length_3683| s0@@2) (|Seq#Length_3683| s1@@2))))
 :qid |stdinbpl.331:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3683| (|Seq#Append_3683| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_29264_115647) ) (! (= (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_29264_115514) ) (! (= (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_41041_41042) ) (! (= (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_41028_53) ) (! (= (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_47114_3805) ) (! (= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_40968) (Mask@@25 T@PolymorphicMapType_40989) (i@@15 Int) (hi@@11 Int) (ar_1@@11 T@Seq_3683) (v_2@@5 Int) ) (!  (=> (and (state Heap@@21 Mask@@25) (< AssumeFunctionsAbove 5)) (=> (and (and (<= 0 i@@15) (<= i@@15 hi@@11)) (<= hi@@11 (|Seq#Length_3683| ar_1@@11))) (= (count_list Heap@@21 i@@15 hi@@11 ar_1@@11 v_2@@5) (ite (< i@@15 hi@@11) (+ (ite (= (|Seq#Index_3683| ar_1@@11 i@@15) v_2@@5) 1 0) (|count_list'| Heap@@21 (+ i@@15 1) hi@@11 ar_1@@11 v_2@@5)) 0))))
 :qid |stdinbpl.1539:15|
 :skolemid |127|
 :pattern ( (state Heap@@21 Mask@@25) (count_list Heap@@21 i@@15 hi@@11 ar_1@@11 v_2@@5))
)))
(assert (forall ((s@@15 T@Seq_48156) (t@@1 T@Seq_48156) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_29303| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_29303| s@@15)) (|Seq#Length_29303| s@@15)) n@@15) (= (|Seq#Drop_29303| (|Seq#Append_48156| s@@15 t@@1) n@@15) (|Seq#Drop_29303| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_29303| s@@15))))))
 :qid |stdinbpl.488:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_29303| (|Seq#Append_48156| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3683) (t@@2 T@Seq_3683) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3683| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3683| s@@16)) (|Seq#Length_3683| s@@16)) n@@16) (= (|Seq#Drop_3683| (|Seq#Append_3683| s@@16 t@@2) n@@16) (|Seq#Drop_3683| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3683| s@@16))))))
 :qid |stdinbpl.488:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3683| (|Seq#Append_3683| s@@16 t@@2) n@@16))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_40968) (i@@16 Int) (lo@@7 Int) (hi@@12 Int) (ar_1@@12 T@Seq_48156) ) (!  (and (= (sum_array Heap@@22 i@@16 lo@@7 hi@@12 ar_1@@12) (|sum_array'| Heap@@22 i@@16 lo@@7 hi@@12 ar_1@@12)) (dummyFunction_4112 (|sum_array#triggerStateless| i@@16 lo@@7 hi@@12 ar_1@@12)))
 :qid |stdinbpl.762:15|
 :skolemid |62|
 :pattern ( (sum_array Heap@@22 i@@16 lo@@7 hi@@12 ar_1@@12))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_40968) (i@@17 Int) (hi@@13 Int) (ar_1@@13 T@Seq_3683) (v_2@@6 Int) ) (!  (and (= (count_list Heap@@23 i@@17 hi@@13 ar_1@@13 v_2@@6) (|count_list'| Heap@@23 i@@17 hi@@13 ar_1@@13 v_2@@6)) (dummyFunction_4112 (|count_list#triggerStateless| i@@17 hi@@13 ar_1@@13 v_2@@6)))
 :qid |stdinbpl.1529:15|
 :skolemid |125|
 :pattern ( (count_list Heap@@23 i@@17 hi@@13 ar_1@@13 v_2@@6))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_40968) (i@@18 Int) (hi@@14 Int) (ar_1@@14 T@Seq_48156) (v_2@@7 Int) ) (!  (and (= (count_array Heap@@24 i@@18 hi@@14 ar_1@@14 v_2@@7) (|count_array'| Heap@@24 i@@18 hi@@14 ar_1@@14 v_2@@7)) (dummyFunction_4112 (|count_array#triggerStateless| i@@18 hi@@14 ar_1@@14 v_2@@7)))
 :qid |stdinbpl.1614:15|
 :skolemid |129|
 :pattern ( (count_array Heap@@24 i@@18 hi@@14 ar_1@@14 v_2@@7))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_40989) (SummandMask1 T@PolymorphicMapType_40989) (SummandMask2 T@PolymorphicMapType_40989) (o_2@@19 T@Ref) (f_4@@19 T@Field_29264_115647) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_40989) (SummandMask1@@0 T@PolymorphicMapType_40989) (SummandMask2@@0 T@PolymorphicMapType_40989) (o_2@@20 T@Ref) (f_4@@20 T@Field_29264_115514) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_40989) (SummandMask1@@1 T@PolymorphicMapType_40989) (SummandMask2@@1 T@PolymorphicMapType_40989) (o_2@@21 T@Ref) (f_4@@21 T@Field_41041_41042) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_40989) (SummandMask1@@2 T@PolymorphicMapType_40989) (SummandMask2@@2 T@PolymorphicMapType_40989) (o_2@@22 T@Ref) (f_4@@22 T@Field_41028_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_40989) (SummandMask1@@3 T@PolymorphicMapType_40989) (SummandMask2@@3 T@PolymorphicMapType_40989) (o_2@@23 T@Ref) (f_4@@23 T@Field_47114_3805) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_40968) (i@@19 Int) (lo@@8 Int) (hi@@15 Int) (step@@5 Int) (vmin@@5 Int) (vmax_1@@5 Int) (ar_1@@15 T@Seq_48156) ) (!  (and (= (sum_square Heap@@25 i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax_1@@5 ar_1@@15) (|sum_square'| Heap@@25 i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax_1@@5 ar_1@@15)) (dummyFunction_4112 (|sum_square#triggerStateless| i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax_1@@5 ar_1@@15)))
 :qid |stdinbpl.997:15|
 :skolemid |83|
 :pattern ( (sum_square Heap@@25 i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax_1@@5 ar_1@@15))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_40968) (Mask@@26 T@PolymorphicMapType_40989) (i@@20 Int) (hi@@16 Int) (ar_1@@16 T@Seq_3683) (v_2@@8 Int) ) (!  (=> (state Heap@@26 Mask@@26) (= (|count_list'| Heap@@26 i@@20 hi@@16 ar_1@@16 v_2@@8) (|count_list#frame| EmptyFrame i@@20 hi@@16 ar_1@@16 v_2@@8)))
 :qid |stdinbpl.1546:15|
 :skolemid |128|
 :pattern ( (state Heap@@26 Mask@@26) (|count_list'| Heap@@26 i@@20 hi@@16 ar_1@@16 v_2@@8))
)))
(assert (forall ((Heap2Heap@@1 T@PolymorphicMapType_40968) (Heap1Heap@@1 T@PolymorphicMapType_40968) (i@@21 Int) (hi@@17 Int) (ar_1@@17 T@Seq_48156) (v_2@@9 Int) ) (!  (=> (and (= (|Seq#Contains_3683| (|Seq#Range| 0 hi@@17) (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@21 hi@@17 ar_1@@17 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@21 hi@@17 ar_1@@17 v_2@@9))) (|Seq#Contains_3683| (|Seq#Range| 0 hi@@17) (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@21 hi@@17 ar_1@@17 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@21 hi@@17 ar_1@@17 v_2@@9)))) (=> (|Seq#Contains_3683| (|Seq#Range| 0 hi@@17) (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@21 hi@@17 ar_1@@17 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@21 hi@@17 ar_1@@17 v_2@@9))) (= (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap2Heap@@1) (|Seq#Index_29303| ar_1@@17 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@21 hi@@17 ar_1@@17 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@21 hi@@17 ar_1@@17 v_2@@9))) Ref__Integer_value) (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap1Heap@@1) (|Seq#Index_29303| ar_1@@17 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@21 hi@@17 ar_1@@17 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@21 hi@@17 ar_1@@17 v_2@@9))) Ref__Integer_value)))) (= (|count_array#condqp4| Heap2Heap@@1 i@@21 hi@@17 ar_1@@17 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@21 hi@@17 ar_1@@17 v_2@@9)))
 :qid |stdinbpl.1644:15|
 :skolemid |134|
 :pattern ( (|count_array#condqp4| Heap2Heap@@1 i@@21 hi@@17 ar_1@@17 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@21 hi@@17 ar_1@@17 v_2@@9) (succHeapTrans Heap2Heap@@1 Heap1Heap@@1))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3683| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3683| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.653:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3683| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((Heap2Heap@@2 T@PolymorphicMapType_40968) (Heap1Heap@@2 T@PolymorphicMapType_40968) (i@@22 Int) (lo@@9 Int) (hi@@18 Int) (ar_1@@18 T@Seq_48156) ) (!  (=> (and (= (|Seq#Contains_3683| (|Seq#Range| lo@@9 hi@@18) (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@22 lo@@9 hi@@18 ar_1@@18) (|sum_array#condqp1| Heap1Heap@@2 i@@22 lo@@9 hi@@18 ar_1@@18))) (|Seq#Contains_3683| (|Seq#Range| lo@@9 hi@@18) (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@22 lo@@9 hi@@18 ar_1@@18) (|sum_array#condqp1| Heap1Heap@@2 i@@22 lo@@9 hi@@18 ar_1@@18)))) (=> (|Seq#Contains_3683| (|Seq#Range| lo@@9 hi@@18) (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@22 lo@@9 hi@@18 ar_1@@18) (|sum_array#condqp1| Heap1Heap@@2 i@@22 lo@@9 hi@@18 ar_1@@18))) (= (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap2Heap@@2) (|Seq#Index_29303| ar_1@@18 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@22 lo@@9 hi@@18 ar_1@@18) (|sum_array#condqp1| Heap1Heap@@2 i@@22 lo@@9 hi@@18 ar_1@@18))) Ref__Integer_value) (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap1Heap@@2) (|Seq#Index_29303| ar_1@@18 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@22 lo@@9 hi@@18 ar_1@@18) (|sum_array#condqp1| Heap1Heap@@2 i@@22 lo@@9 hi@@18 ar_1@@18))) Ref__Integer_value)))) (= (|sum_array#condqp1| Heap2Heap@@2 i@@22 lo@@9 hi@@18 ar_1@@18) (|sum_array#condqp1| Heap1Heap@@2 i@@22 lo@@9 hi@@18 ar_1@@18)))
 :qid |stdinbpl.792:15|
 :skolemid |67|
 :pattern ( (|sum_array#condqp1| Heap2Heap@@2 i@@22 lo@@9 hi@@18 ar_1@@18) (|sum_array#condqp1| Heap1Heap@@2 i@@22 lo@@9 hi@@18 ar_1@@18) (succHeapTrans Heap2Heap@@2 Heap1Heap@@2))
)))
(assert (forall ((a T@Seq_48156) (b T@Seq_48156) ) (!  (=> (|Seq#Equal_48156| a b) (= a b))
 :qid |stdinbpl.626:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_48156| a b))
)))
(assert (forall ((a@@0 T@Seq_3683) (b@@0 T@Seq_3683) ) (!  (=> (|Seq#Equal_3683| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.626:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3683| a@@0 b@@0))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_40968) (Mask@@27 T@PolymorphicMapType_40989) (i@@23 Int) (lo@@10 Int) (hi@@19 Int) (step@@6 Int) (vmin@@6 Int) (vmax_1@@6 Int) (ar_1@@19 T@Seq_48156) (v_2@@10 Int) ) (!  (=> (and (state Heap@@27 Mask@@27) (< AssumeFunctionsAbove 0)) (=> (and (and (and (and (<= 0 lo@@10) (and (<= lo@@10 hi@@19) (and (<= hi@@19 step@@6) (> step@@6 0)))) (and (<= 0 vmin@@6) (and (<= vmin@@6 i@@23) (<= i@@23 vmax_1@@6)))) (<= vmax_1@@6 (|Seq#Length_29303| ar_1@@19))) (forall ((k@@1 Int) (j@@8 Int) ) (!  (=> (and (>= k@@1 0) (and (< k@@1 (|Seq#Length_29303| ar_1@@19)) (and (>= j@@8 0) (and (< j@@8 (|Seq#Length_29303| ar_1@@19)) (not (= k@@1 j@@8)))))) (not (= (|Seq#Index_29303| ar_1@@19 k@@1) (|Seq#Index_29303| ar_1@@19 j@@8))))
 :qid |stdinbpl.1275:195|
 :skolemid |106|
 :pattern ( (|Seq#Index_29303| ar_1@@19 k@@1) (|Seq#Index_29303| ar_1@@19 j@@8))
))) (= (count_square Heap@@27 i@@23 lo@@10 hi@@19 step@@6 vmin@@6 vmax_1@@6 ar_1@@19 v_2@@10) (ite (< i@@23 vmax_1@@6) (+ (ite  (and (<= lo@@10 (mod i@@23 step@@6)) (and (< (mod i@@23 step@@6) hi@@19) (= (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@27) (|Seq#Index_29303| ar_1@@19 i@@23) Ref__Integer_value) v_2@@10))) 1 0) (|count_square'| Heap@@27 (+ i@@23 1) lo@@10 hi@@19 step@@6 vmin@@6 vmax_1@@6 ar_1@@19 v_2@@10)) 0))))
 :qid |stdinbpl.1273:15|
 :skolemid |107|
 :pattern ( (state Heap@@27 Mask@@27) (count_square Heap@@27 i@@23 lo@@10 hi@@19 step@@6 vmin@@6 vmax_1@@6 ar_1@@19 v_2@@10))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_40968) (i@@24 Int) (hi@@20 Int) (ar_1@@20 T@Seq_3683) ) (!  (and (= (sum_list Heap@@28 i@@24 hi@@20 ar_1@@20) (|sum_list'| Heap@@28 i@@24 hi@@20 ar_1@@20)) (dummyFunction_4112 (|sum_list#triggerStateless| i@@24 hi@@20 ar_1@@20)))
 :qid |stdinbpl.677:15|
 :skolemid |58|
 :pattern ( (sum_list Heap@@28 i@@24 hi@@20 ar_1@@20))
)))
(assert (forall ((s@@17 T@Seq_48156) (i@@25 Int) ) (!  (=> (and (<= 0 i@@25) (< i@@25 (|Seq#Length_29303| s@@17))) (|Seq#ContainsTrigger_29303| s@@17 (|Seq#Index_29303| s@@17 i@@25)))
 :qid |stdinbpl.519:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_29303| s@@17 i@@25))
)))
(assert (forall ((s@@18 T@Seq_3683) (i@@26 Int) ) (!  (=> (and (<= 0 i@@26) (< i@@26 (|Seq#Length_3683| s@@18))) (|Seq#ContainsTrigger_3683| s@@18 (|Seq#Index_3683| s@@18 i@@26)))
 :qid |stdinbpl.519:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3683| s@@18 i@@26))
)))
(assert (forall ((s0@@3 T@Seq_48156) (s1@@3 T@Seq_48156) ) (!  (and (=> (= s0@@3 |Seq#Empty_29303|) (= (|Seq#Append_48156| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_29303|) (= (|Seq#Append_48156| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.337:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_48156| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3683) (s1@@4 T@Seq_3683) ) (!  (and (=> (= s0@@4 |Seq#Empty_3683|) (= (|Seq#Append_3683| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3683|) (= (|Seq#Append_3683| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.337:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3683| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_29303| (|Seq#Singleton_29303| t@@3) 0) t@@3)
 :qid |stdinbpl.341:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_29303| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3683| (|Seq#Singleton_3683| t@@4) 0) t@@4)
 :qid |stdinbpl.341:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3683| t@@4))
)))
(assert (forall ((s@@19 T@Seq_48156) ) (! (<= 0 (|Seq#Length_29303| s@@19))
 :qid |stdinbpl.320:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_29303| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3683) ) (! (<= 0 (|Seq#Length_3683| s@@20))
 :qid |stdinbpl.320:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3683| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_48156) (s1@@5 T@Seq_48156) ) (!  (=> (|Seq#Equal_48156| s0@@5 s1@@5) (and (= (|Seq#Length_29303| s0@@5) (|Seq#Length_29303| s1@@5)) (forall ((j@@9 Int) ) (!  (=> (and (<= 0 j@@9) (< j@@9 (|Seq#Length_29303| s0@@5))) (= (|Seq#Index_29303| s0@@5 j@@9) (|Seq#Index_29303| s1@@5 j@@9)))
 :qid |stdinbpl.616:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_29303| s0@@5 j@@9))
 :pattern ( (|Seq#Index_29303| s1@@5 j@@9))
))))
 :qid |stdinbpl.613:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_48156| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3683) (s1@@6 T@Seq_3683) ) (!  (=> (|Seq#Equal_3683| s0@@6 s1@@6) (and (= (|Seq#Length_3683| s0@@6) (|Seq#Length_3683| s1@@6)) (forall ((j@@10 Int) ) (!  (=> (and (<= 0 j@@10) (< j@@10 (|Seq#Length_3683| s0@@6))) (= (|Seq#Index_3683| s0@@6 j@@10) (|Seq#Index_3683| s1@@6 j@@10)))
 :qid |stdinbpl.616:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3683| s0@@6 j@@10))
 :pattern ( (|Seq#Index_3683| s1@@6 j@@10))
))))
 :qid |stdinbpl.613:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3683| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_29303| (|Seq#Singleton_29303| t@@5)) 1)
 :qid |stdinbpl.328:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_29303| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3683| (|Seq#Singleton_3683| t@@6)) 1)
 :qid |stdinbpl.328:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3683| t@@6))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_40968) (Mask@@28 T@PolymorphicMapType_40989) (i@@27 Int) (hi@@21 Int) (ar_1@@21 T@Seq_3683) ) (!  (=> (and (state Heap@@29 Mask@@28) (< AssumeFunctionsAbove 4)) (=> (and (and (<= 0 i@@27) (<= i@@27 hi@@21)) (<= hi@@21 (|Seq#Length_3683| ar_1@@21))) (= (sum_list Heap@@29 i@@27 hi@@21 ar_1@@21) (ite (< i@@27 hi@@21) (+ (|Seq#Index_3683| ar_1@@21 i@@27) (|sum_list'| Heap@@29 (+ i@@27 1) hi@@21 ar_1@@21)) 0))))
 :qid |stdinbpl.687:15|
 :skolemid |60|
 :pattern ( (state Heap@@29 Mask@@28) (sum_list Heap@@29 i@@27 hi@@21 ar_1@@21))
)))
(assert (forall ((s@@21 T@Seq_48156) (t@@7 T@Seq_48156) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_29303| s@@21))) (= (|Seq#Take_29303| (|Seq#Append_48156| s@@21 t@@7) n@@17) (|Seq#Take_29303| s@@21 n@@17)))
 :qid |stdinbpl.470:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_29303| (|Seq#Append_48156| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3683) (t@@8 T@Seq_3683) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3683| s@@22))) (= (|Seq#Take_3683| (|Seq#Append_3683| s@@22 t@@8) n@@18) (|Seq#Take_3683| s@@22 n@@18)))
 :qid |stdinbpl.470:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3683| (|Seq#Append_3683| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_48156) (i@@28 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@28) (< i@@28 (|Seq#Length_29303| s@@23))) (= (|Seq#Length_29303| (|Seq#Update_29303| s@@23 i@@28 v@@2)) (|Seq#Length_29303| s@@23)))
 :qid |stdinbpl.369:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_29303| (|Seq#Update_29303| s@@23 i@@28 v@@2)))
 :pattern ( (|Seq#Length_29303| s@@23) (|Seq#Update_29303| s@@23 i@@28 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3683) (i@@29 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@29) (< i@@29 (|Seq#Length_3683| s@@24))) (= (|Seq#Length_3683| (|Seq#Update_3683| s@@24 i@@29 v@@3)) (|Seq#Length_3683| s@@24)))
 :qid |stdinbpl.369:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3683| (|Seq#Update_3683| s@@24 i@@29 v@@3)))
 :pattern ( (|Seq#Length_3683| s@@24) (|Seq#Update_3683| s@@24 i@@29 v@@3))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_40968) (Mask@@29 T@PolymorphicMapType_40989) (i@@30 Int) (hi@@22 Int) (ar_1@@22 T@Seq_48156) (v_2@@11 Int) ) (!  (=> (and (state Heap@@30 Mask@@29) (< AssumeFunctionsAbove 2)) (=> (and (and (and (<= 0 i@@30) (<= i@@30 hi@@22)) (<= hi@@22 (|Seq#Length_29303| ar_1@@22))) (forall ((k@@2 Int) (j@@11 Int) ) (!  (=> (and (>= k@@2 0) (and (< k@@2 (|Seq#Length_29303| ar_1@@22)) (and (>= j@@11 0) (and (< j@@11 (|Seq#Length_29303| ar_1@@22)) (not (= k@@2 j@@11)))))) (not (= (|Seq#Index_29303| ar_1@@22 k@@2) (|Seq#Index_29303| ar_1@@22 j@@11))))
 :qid |stdinbpl.1626:112|
 :skolemid |131|
 :pattern ( (|Seq#Index_29303| ar_1@@22 k@@2) (|Seq#Index_29303| ar_1@@22 j@@11))
))) (= (count_array Heap@@30 i@@30 hi@@22 ar_1@@22 v_2@@11) (ite (< i@@30 hi@@22) (+ (ite (= (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@30) (|Seq#Index_29303| ar_1@@22 i@@30) Ref__Integer_value) v_2@@11) 1 0) (|count_array'| Heap@@30 (+ i@@30 1) hi@@22 ar_1@@22 v_2@@11)) 0))))
 :qid |stdinbpl.1624:15|
 :skolemid |132|
 :pattern ( (state Heap@@30 Mask@@29) (count_array Heap@@30 i@@30 hi@@22 ar_1@@22 v_2@@11))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_40968) (o_44 T@Ref) (f_31 T@Field_29264_115514) (v@@4 T@FrameType) ) (! (succHeap Heap@@31 (PolymorphicMapType_40968 (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| Heap@@31) (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| Heap@@31) (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@31) (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@31) (store (|PolymorphicMapType_40968_41028_115514#PolymorphicMapType_40968| Heap@@31) o_44 f_31 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40968 (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| Heap@@31) (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| Heap@@31) (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@31) (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@31) (store (|PolymorphicMapType_40968_41028_115514#PolymorphicMapType_40968| Heap@@31) o_44 f_31 v@@4)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_40968) (o_44@@0 T@Ref) (f_31@@0 T@Field_29264_115647) (v@@5 T@PolymorphicMapType_41517) ) (! (succHeap Heap@@32 (PolymorphicMapType_40968 (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| Heap@@32) (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| Heap@@32) (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@32) (store (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@32) o_44@@0 f_31@@0 v@@5) (|PolymorphicMapType_40968_41028_115514#PolymorphicMapType_40968| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40968 (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| Heap@@32) (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| Heap@@32) (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@32) (store (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@32) o_44@@0 f_31@@0 v@@5) (|PolymorphicMapType_40968_41028_115514#PolymorphicMapType_40968| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_40968) (o_44@@1 T@Ref) (f_31@@1 T@Field_47114_3805) (v@@6 Int) ) (! (succHeap Heap@@33 (PolymorphicMapType_40968 (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| Heap@@33) (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| Heap@@33) (store (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@33) o_44@@1 f_31@@1 v@@6) (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@33) (|PolymorphicMapType_40968_41028_115514#PolymorphicMapType_40968| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40968 (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| Heap@@33) (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| Heap@@33) (store (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@33) o_44@@1 f_31@@1 v@@6) (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@33) (|PolymorphicMapType_40968_41028_115514#PolymorphicMapType_40968| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_40968) (o_44@@2 T@Ref) (f_31@@2 T@Field_41041_41042) (v@@7 T@Ref) ) (! (succHeap Heap@@34 (PolymorphicMapType_40968 (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| Heap@@34) (store (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| Heap@@34) o_44@@2 f_31@@2 v@@7) (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@34) (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@34) (|PolymorphicMapType_40968_41028_115514#PolymorphicMapType_40968| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40968 (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| Heap@@34) (store (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| Heap@@34) o_44@@2 f_31@@2 v@@7) (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@34) (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@34) (|PolymorphicMapType_40968_41028_115514#PolymorphicMapType_40968| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_40968) (o_44@@3 T@Ref) (f_31@@3 T@Field_41028_53) (v@@8 Bool) ) (! (succHeap Heap@@35 (PolymorphicMapType_40968 (store (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| Heap@@35) o_44@@3 f_31@@3 v@@8) (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| Heap@@35) (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@35) (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@35) (|PolymorphicMapType_40968_41028_115514#PolymorphicMapType_40968| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40968 (store (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| Heap@@35) o_44@@3 f_31@@3 v@@8) (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| Heap@@35) (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@35) (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@35) (|PolymorphicMapType_40968_41028_115514#PolymorphicMapType_40968| Heap@@35)))
)))
(assert (forall ((s@@25 T@Seq_48156) (t@@9 T@Seq_48156) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_29303| s@@25))) (= (|Seq#Drop_29303| (|Seq#Append_48156| s@@25 t@@9) n@@19) (|Seq#Append_48156| (|Seq#Drop_29303| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.484:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_29303| (|Seq#Append_48156| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3683) (t@@10 T@Seq_3683) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3683| s@@26))) (= (|Seq#Drop_3683| (|Seq#Append_3683| s@@26 t@@10) n@@20) (|Seq#Append_3683| (|Seq#Drop_3683| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.484:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3683| (|Seq#Append_3683| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_48156) (n@@21 Int) (i@@31 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@31)) (< i@@31 (|Seq#Length_29303| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@31 n@@21) n@@21) i@@31) (= (|Seq#Index_29303| (|Seq#Drop_29303| s@@27 n@@21) (|Seq#Sub| i@@31 n@@21)) (|Seq#Index_29303| s@@27 i@@31))))
 :qid |stdinbpl.420:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_29303| s@@27 n@@21) (|Seq#Index_29303| s@@27 i@@31))
)))
(assert (forall ((s@@28 T@Seq_3683) (n@@22 Int) (i@@32 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@32)) (< i@@32 (|Seq#Length_3683| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@32 n@@22) n@@22) i@@32) (= (|Seq#Index_3683| (|Seq#Drop_3683| s@@28 n@@22) (|Seq#Sub| i@@32 n@@22)) (|Seq#Index_3683| s@@28 i@@32))))
 :qid |stdinbpl.420:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3683| s@@28 n@@22) (|Seq#Index_3683| s@@28 i@@32))
)))
(assert (forall ((s0@@7 T@Seq_48156) (s1@@7 T@Seq_48156) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_29303|)) (not (= s1@@7 |Seq#Empty_29303|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_29303| s0@@7))) (= (|Seq#Index_29303| (|Seq#Append_48156| s0@@7 s1@@7) n@@23) (|Seq#Index_29303| s0@@7 n@@23)))
 :qid |stdinbpl.360:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_29303| (|Seq#Append_48156| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_29303| s0@@7 n@@23) (|Seq#Append_48156| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3683) (s1@@8 T@Seq_3683) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3683|)) (not (= s1@@8 |Seq#Empty_3683|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3683| s0@@8))) (= (|Seq#Index_3683| (|Seq#Append_3683| s0@@8 s1@@8) n@@24) (|Seq#Index_3683| s0@@8 n@@24)))
 :qid |stdinbpl.360:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3683| (|Seq#Append_3683| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3683| s0@@8 n@@24) (|Seq#Append_3683| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_48156) (s1@@9 T@Seq_48156) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_29303|)) (not (= s1@@9 |Seq#Empty_29303|))) (<= 0 m)) (< m (|Seq#Length_29303| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_29303| s0@@9)) (|Seq#Length_29303| s0@@9)) m) (= (|Seq#Index_29303| (|Seq#Append_48156| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_29303| s0@@9))) (|Seq#Index_29303| s1@@9 m))))
 :qid |stdinbpl.365:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_29303| s1@@9 m) (|Seq#Append_48156| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3683) (s1@@10 T@Seq_3683) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3683|)) (not (= s1@@10 |Seq#Empty_3683|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3683| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3683| s0@@10)) (|Seq#Length_3683| s0@@10)) m@@0) (= (|Seq#Index_3683| (|Seq#Append_3683| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3683| s0@@10))) (|Seq#Index_3683| s1@@10 m@@0))))
 :qid |stdinbpl.365:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3683| s1@@10 m@@0) (|Seq#Append_3683| s0@@10 s1@@10))
)))
(assert (forall ((o_44@@4 T@Ref) (f_58 T@Field_41041_41042) (Heap@@36 T@PolymorphicMapType_40968) ) (!  (=> (select (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| Heap@@36) o_44@@4 $allocated) (select (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| Heap@@36) (select (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| Heap@@36) o_44@@4 f_58) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| Heap@@36) o_44@@4 f_58))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_40968) (Mask@@30 T@PolymorphicMapType_40989) (i@@33 Int) (lo@@11 Int) (hi@@23 Int) (step@@7 Int) (vmin@@7 Int) (vmax_1@@7 Int) (ar_1@@23 T@Seq_48156) ) (!  (=> (state Heap@@37 Mask@@30) (= (|sum_square'| Heap@@37 i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax_1@@7 ar_1@@23) (|sum_square#frame| (FrameFragment_4664 (|sum_square#condqp2| Heap@@37 i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax_1@@7 ar_1@@23)) i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax_1@@7 ar_1@@23)))
 :qid |stdinbpl.1017:15|
 :skolemid |87|
 :pattern ( (state Heap@@37 Mask@@30) (|sum_square'| Heap@@37 i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax_1@@7 ar_1@@23))
)))
(assert (forall ((s@@29 T@Seq_48156) (x@@3 T@Ref) (i@@34 Int) ) (!  (=> (and (and (<= 0 i@@34) (< i@@34 (|Seq#Length_29303| s@@29))) (= (|Seq#Index_29303| s@@29 i@@34) x@@3)) (|Seq#Contains_48156| s@@29 x@@3))
 :qid |stdinbpl.517:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_48156| s@@29 x@@3) (|Seq#Index_29303| s@@29 i@@34))
)))
(assert (forall ((s@@30 T@Seq_3683) (x@@4 Int) (i@@35 Int) ) (!  (=> (and (and (<= 0 i@@35) (< i@@35 (|Seq#Length_3683| s@@30))) (= (|Seq#Index_3683| s@@30 i@@35) x@@4)) (|Seq#Contains_3683| s@@30 x@@4))
 :qid |stdinbpl.517:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3683| s@@30 x@@4) (|Seq#Index_3683| s@@30 i@@35))
)))
(assert (forall ((s0@@11 T@Seq_48156) (s1@@11 T@Seq_48156) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_48156| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_48156| s0@@11 s1@@11))) (not (= (|Seq#Length_29303| s0@@11) (|Seq#Length_29303| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_48156| s0@@11 s1@@11))) (= (|Seq#Length_29303| s0@@11) (|Seq#Length_29303| s1@@11))) (= (|Seq#SkolemDiff_48156| s0@@11 s1@@11) (|Seq#SkolemDiff_48156| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_48156| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_48156| s0@@11 s1@@11) (|Seq#Length_29303| s0@@11))) (not (= (|Seq#Index_29303| s0@@11 (|Seq#SkolemDiff_48156| s0@@11 s1@@11)) (|Seq#Index_29303| s1@@11 (|Seq#SkolemDiff_48156| s0@@11 s1@@11))))))
 :qid |stdinbpl.621:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_48156| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3683) (s1@@12 T@Seq_3683) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3683| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3683| s0@@12 s1@@12))) (not (= (|Seq#Length_3683| s0@@12) (|Seq#Length_3683| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3683| s0@@12 s1@@12))) (= (|Seq#Length_3683| s0@@12) (|Seq#Length_3683| s1@@12))) (= (|Seq#SkolemDiff_3683| s0@@12 s1@@12) (|Seq#SkolemDiff_3683| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3683| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3683| s0@@12 s1@@12) (|Seq#Length_3683| s0@@12))) (not (= (|Seq#Index_3683| s0@@12 (|Seq#SkolemDiff_3683| s0@@12 s1@@12)) (|Seq#Index_3683| s1@@12 (|Seq#SkolemDiff_3683| s0@@12 s1@@12))))))
 :qid |stdinbpl.621:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3683| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_29264_115514) (v_1@@0 T@FrameType) (q T@Field_29264_115514) (w@@0 T@FrameType) (r T@Field_29264_115514) (u T@FrameType) ) (!  (=> (and (InsidePredicate_41028_41028 p@@1 v_1@@0 q w@@0) (InsidePredicate_41028_41028 q w@@0 r u)) (InsidePredicate_41028_41028 p@@1 v_1@@0 r u))
 :qid |stdinbpl.288:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_41028_41028 p@@1 v_1@@0 q w@@0) (InsidePredicate_41028_41028 q w@@0 r u))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_40968) (i@@36 Int) (lo@@12 Int) (hi@@24 Int) (step@@8 Int) (vmin@@8 Int) (vmax_1@@8 Int) (ar_1@@24 T@Seq_48156) ) (! (dummyFunction_4112 (|sum_square#triggerStateless| i@@36 lo@@12 hi@@24 step@@8 vmin@@8 vmax_1@@8 ar_1@@24))
 :qid |stdinbpl.1001:15|
 :skolemid |84|
 :pattern ( (|sum_square'| Heap@@38 i@@36 lo@@12 hi@@24 step@@8 vmin@@8 vmax_1@@8 ar_1@@24))
)))
(assert (forall ((s@@31 T@Seq_48156) ) (!  (=> (= (|Seq#Length_29303| s@@31) 0) (= s@@31 |Seq#Empty_29303|))
 :qid |stdinbpl.324:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_29303| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3683) ) (!  (=> (= (|Seq#Length_3683| s@@32) 0) (= s@@32 |Seq#Empty_3683|))
 :qid |stdinbpl.324:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3683| s@@32))
)))
(assert (forall ((s@@33 T@Seq_48156) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_29303| s@@33 n@@25) |Seq#Empty_29303|))
 :qid |stdinbpl.500:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_29303| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3683) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3683| s@@34 n@@26) |Seq#Empty_3683|))
 :qid |stdinbpl.500:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3683| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@39 T@PolymorphicMapType_40968) (Mask@@31 T@PolymorphicMapType_40989) (i@@37 Int) (lo@@13 Int) (hi@@25 Int) (ar_1@@25 T@Seq_48156) ) (!  (=> (state Heap@@39 Mask@@31) (= (|sum_array'| Heap@@39 i@@37 lo@@13 hi@@25 ar_1@@25) (|sum_array#frame| (FrameFragment_4664 (|sum_array#condqp1| Heap@@39 i@@37 lo@@13 hi@@25 ar_1@@25)) i@@37 lo@@13 hi@@25 ar_1@@25)))
 :qid |stdinbpl.782:15|
 :skolemid |66|
 :pattern ( (state Heap@@39 Mask@@31) (|sum_array'| Heap@@39 i@@37 lo@@13 hi@@25 ar_1@@25))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_40968) (Mask@@32 T@PolymorphicMapType_40989) (i@@38 Int) (hi@@26 Int) (ar_1@@26 T@Seq_48156) (v_2@@12 Int) ) (!  (=> (state Heap@@40 Mask@@32) (= (|count_array'| Heap@@40 i@@38 hi@@26 ar_1@@26 v_2@@12) (|count_array#frame| (FrameFragment_4664 (|count_array#condqp4| Heap@@40 i@@38 hi@@26 ar_1@@26 v_2@@12)) i@@38 hi@@26 ar_1@@26 v_2@@12)))
 :qid |stdinbpl.1634:15|
 :skolemid |133|
 :pattern ( (state Heap@@40 Mask@@32) (|count_array'| Heap@@40 i@@38 hi@@26 ar_1@@26 v_2@@12))
)))
; Valid

