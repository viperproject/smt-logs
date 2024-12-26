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
(assert (forall ((Heap T@PolymorphicMapType_40968) (Mask T@PolymorphicMapType_40989) (i Int) (lo Int) (hi Int) (step Int) (vmin Int) (vmax Int) (ar T@Seq_48156) (v_2 Int) ) (!  (=> (state Heap Mask) (= (|count_square'| Heap i lo hi step vmin vmax ar v_2) (|count_square#frame| (FrameFragment_4664 (|count_square#condqp3| Heap i lo hi step vmin vmax ar v_2)) i lo hi step vmin vmax ar v_2)))
 :qid |stdinbpl.1283:15|
 :skolemid |108|
 :pattern ( (state Heap Mask) (|count_square'| Heap i lo hi step vmin vmax ar v_2))
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
(assert (forall ((Heap@@1 T@PolymorphicMapType_40968) (i@@0 Int) (hi@@0 Int) (ar@@0 T@Seq_3683) ) (! (dummyFunction_4112 (|sum_list#triggerStateless| i@@0 hi@@0 ar@@0))
 :qid |stdinbpl.681:15|
 :skolemid |59|
 :pattern ( (|sum_list'| Heap@@1 i@@0 hi@@0 ar@@0))
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
(assert (forall ((Heap@@2 T@PolymorphicMapType_40968) (Mask@@1 T@PolymorphicMapType_40989) (i@@3 Int) (lo@@0 Int) (hi@@1 Int) (ar@@1 T@Seq_48156) ) (!  (=> (and (state Heap@@2 Mask@@1) (< AssumeFunctionsAbove 1)) (=> (and (and (and (<= 0 lo@@0) (and (<= lo@@0 i@@3) (<= i@@3 hi@@1))) (<= hi@@1 (|Seq#Length_29303| ar@@1))) (forall ((k Int) (j_9 Int) ) (!  (=> (and (>= k 0) (and (< k (|Seq#Length_29303| ar@@1)) (and (>= j_9 0) (and (< j_9 (|Seq#Length_29303| ar@@1)) (not (= k j_9)))))) (not (= (|Seq#Index_29303| ar@@1 k) (|Seq#Index_29303| ar@@1 j_9))))
 :qid |stdinbpl.774:124|
 :skolemid |64|
 :pattern ( (|Seq#Index_29303| ar@@1 k) (|Seq#Index_29303| ar@@1 j_9))
))) (= (sum_array Heap@@2 i@@3 lo@@0 hi@@1 ar@@1) (ite (< i@@3 hi@@1) (+ (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@2) (|Seq#Index_29303| ar@@1 i@@3) Ref__Integer_value) (|sum_array'| Heap@@2 (+ i@@3 1) lo@@0 hi@@1 ar@@1)) 0))))
 :qid |stdinbpl.772:15|
 :skolemid |65|
 :pattern ( (state Heap@@2 Mask@@1) (sum_array Heap@@2 i@@3 lo@@0 hi@@1 ar@@1))
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
(assert (forall ((i@@4 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@4 j@@1) (- i@@4 j@@1))
 :qid |stdinbpl.351:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@4 j@@1))
)))
(assert (forall ((i@@5 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@5 j@@2) (+ i@@5 j@@2))
 :qid |stdinbpl.349:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@5 j@@2))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_40968) (ExhaleHeap T@PolymorphicMapType_40968) (Mask@@2 T@PolymorphicMapType_40989) (pm_f_20 T@Field_29264_115514) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@2) (=> (and (HasDirectPerm_29264_115578 Mask@@2 null pm_f_20) (IsPredicateField_29264_115605 pm_f_20)) (= (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@3) null (PredicateMaskField_29264 pm_f_20)) (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| ExhaleHeap) null (PredicateMaskField_29264 pm_f_20)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@2) (IsPredicateField_29264_115605 pm_f_20) (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| ExhaleHeap) null (PredicateMaskField_29264 pm_f_20)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_40968) (ExhaleHeap@@0 T@PolymorphicMapType_40968) (Mask@@3 T@PolymorphicMapType_40989) (pm_f_20@@0 T@Field_29264_115514) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@3) (=> (and (HasDirectPerm_29264_115578 Mask@@3 null pm_f_20@@0) (IsWandField_29264_117352 pm_f_20@@0)) (= (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@4) null (WandMaskField_29264 pm_f_20@@0)) (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| ExhaleHeap@@0) null (WandMaskField_29264 pm_f_20@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@3) (IsWandField_29264_117352 pm_f_20@@0) (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| ExhaleHeap@@0) null (WandMaskField_29264 pm_f_20@@0)))
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
(assert (forall ((Heap@@5 T@PolymorphicMapType_40968) (i@@6 Int) (lo@@1 Int) (hi@@2 Int) (step@@0 Int) (vmin@@0 Int) (vmax@@0 Int) (ar@@2 T@Seq_48156) (v_2@@0 Int) ) (!  (and (= (count_square Heap@@5 i@@6 lo@@1 hi@@2 step@@0 vmin@@0 vmax@@0 ar@@2 v_2@@0) (|count_square'| Heap@@5 i@@6 lo@@1 hi@@2 step@@0 vmin@@0 vmax@@0 ar@@2 v_2@@0)) (dummyFunction_4112 (|count_square#triggerStateless| i@@6 lo@@1 hi@@2 step@@0 vmin@@0 vmax@@0 ar@@2 v_2@@0)))
 :qid |stdinbpl.1263:15|
 :skolemid |104|
 :pattern ( (count_square Heap@@5 i@@6 lo@@1 hi@@2 step@@0 vmin@@0 vmax@@0 ar@@2 v_2@@0))
)))
(assert (forall ((s@@11 T@Seq_48156) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_29303| s@@11))) (= (|Seq#Index_29303| (|Seq#Take_29303| s@@11 n@@9) j@@3) (|Seq#Index_29303| s@@11 j@@3)))
 :qid |stdinbpl.390:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_29303| (|Seq#Take_29303| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_29303| s@@11 j@@3) (|Seq#Take_29303| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3683) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3683| s@@12))) (= (|Seq#Index_3683| (|Seq#Take_3683| s@@12 n@@10) j@@4) (|Seq#Index_3683| s@@12 j@@4)))
 :qid |stdinbpl.390:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3683| (|Seq#Take_3683| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3683| s@@12 j@@4) (|Seq#Take_3683| s@@12 n@@10))
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
(assert (forall ((Heap@@6 T@PolymorphicMapType_40968) (i@@7 Int) (lo@@2 Int) (hi@@3 Int) (step@@1 Int) (vmin@@1 Int) (vmax@@1 Int) (ar@@3 T@Seq_48156) (v_2@@1 Int) ) (! (dummyFunction_4112 (|count_square#triggerStateless| i@@7 lo@@2 hi@@3 step@@1 vmin@@1 vmax@@1 ar@@3 v_2@@1))
 :qid |stdinbpl.1267:15|
 :skolemid |105|
 :pattern ( (|count_square'| Heap@@6 i@@7 lo@@2 hi@@3 step@@1 vmin@@1 vmax@@1 ar@@3 v_2@@1))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_40968) (Heap1Heap T@PolymorphicMapType_40968) (i@@8 Int) (lo@@3 Int) (hi@@4 Int) (step@@2 Int) (vmin@@2 Int) (vmax@@2 Int) (ar@@4 T@Seq_48156) ) (!  (=> (and (=  (and (<= vmin@@2 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4)) vmax@@2) (and (<= lo@@3 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4)) step@@2)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4)) step@@2) hi@@4))))  (and (<= vmin@@2 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4)) vmax@@2) (and (<= lo@@3 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4)) step@@2)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4)) step@@2) hi@@4))))) (=> (and (<= vmin@@2 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4)) vmax@@2) (and (<= lo@@3 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4)) step@@2)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4)) step@@2) hi@@4)))) (= (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap2Heap) (|Seq#Index_29303| ar@@4 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4))) Ref__Integer_value) (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap1Heap) (|Seq#Index_29303| ar@@4 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4))) Ref__Integer_value)))) (= (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4)))
 :qid |stdinbpl.1027:15|
 :skolemid |88|
 :pattern ( (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_40968) (Heap1Heap@@0 T@PolymorphicMapType_40968) (i@@9 Int) (lo@@4 Int) (hi@@5 Int) (step@@3 Int) (vmin@@3 Int) (vmax@@3 Int) (ar@@5 T@Seq_48156) (v_2@@2 Int) ) (!  (=> (and (=  (and (<= vmin@@3 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2)) vmax@@3) (and (<= lo@@4 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2)) step@@3)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2)) step@@3) hi@@5))))  (and (<= vmin@@3 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2)) vmax@@3) (and (<= lo@@4 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2)) step@@3)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2)) step@@3) hi@@5))))) (=> (and (<= vmin@@3 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2)) vmax@@3) (and (<= lo@@4 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2)) step@@3)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2)) step@@3) hi@@5)))) (= (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap2Heap@@0) (|Seq#Index_29303| ar@@5 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2))) Ref__Integer_value) (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap1Heap@@0) (|Seq#Index_29303| ar@@5 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2))) Ref__Integer_value)))) (= (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2)))
 :qid |stdinbpl.1293:15|
 :skolemid |109|
 :pattern ( (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@7 T@PolymorphicMapType_40968) (Mask@@4 T@PolymorphicMapType_40989) (i@@10 Int) (lo@@5 Int) (hi@@6 Int) (step@@4 Int) (vmin@@4 Int) (vmax@@4 Int) (ar@@6 T@Seq_48156) ) (!  (=> (and (state Heap@@7 Mask@@4) (< AssumeFunctionsAbove 3)) (=> (and (and (and (and (<= 0 lo@@5) (and (<= lo@@5 hi@@6) (and (<= hi@@6 step@@4) (> step@@4 0)))) (and (<= 0 vmin@@4) (and (<= vmin@@4 i@@10) (<= i@@10 vmax@@4)))) (<= vmax@@4 (|Seq#Length_29303| ar@@6))) (forall ((k@@0 Int) (j_9@@0 Int) ) (!  (=> (and (>= k@@0 0) (and (< k@@0 (|Seq#Length_29303| ar@@6)) (and (>= j_9@@0 0) (and (< j_9@@0 (|Seq#Length_29303| ar@@6)) (not (= k@@0 j_9@@0)))))) (not (= (|Seq#Index_29303| ar@@6 k@@0) (|Seq#Index_29303| ar@@6 j_9@@0))))
 :qid |stdinbpl.1009:189|
 :skolemid |85|
 :pattern ( (|Seq#Index_29303| ar@@6 k@@0) (|Seq#Index_29303| ar@@6 j_9@@0))
))) (= (sum_square Heap@@7 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax@@4 ar@@6) (ite (< i@@10 vmax@@4) (+ (ite  (and (<= lo@@5 (mod i@@10 step@@4)) (< (mod i@@10 step@@4) hi@@6)) (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@7) (|Seq#Index_29303| ar@@6 i@@10) Ref__Integer_value) 0) (|sum_square'| Heap@@7 (+ i@@10 1) lo@@5 hi@@6 step@@4 vmin@@4 vmax@@4 ar@@6)) 0))))
 :qid |stdinbpl.1007:15|
 :skolemid |86|
 :pattern ( (state Heap@@7 Mask@@4) (sum_square Heap@@7 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax@@4 ar@@6))
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
(assert (forall ((Heap@@10 T@PolymorphicMapType_40968) (Mask@@12 T@PolymorphicMapType_40989) (i@@11 Int) (hi@@7 Int) (ar@@7 T@Seq_3683) ) (!  (=> (state Heap@@10 Mask@@12) (= (|sum_list'| Heap@@10 i@@11 hi@@7 ar@@7) (|sum_list#frame| EmptyFrame i@@11 hi@@7 ar@@7)))
 :qid |stdinbpl.694:15|
 :skolemid |61|
 :pattern ( (state Heap@@10 Mask@@12) (|sum_list'| Heap@@10 i@@11 hi@@7 ar@@7))
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
(assert (forall ((Heap@@11 T@PolymorphicMapType_40968) (i@@12 Int) (lo@@6 Int) (hi@@8 Int) (ar@@8 T@Seq_48156) ) (! (dummyFunction_4112 (|sum_array#triggerStateless| i@@12 lo@@6 hi@@8 ar@@8))
 :qid |stdinbpl.766:15|
 :skolemid |63|
 :pattern ( (|sum_array'| Heap@@11 i@@12 lo@@6 hi@@8 ar@@8))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_40968) (i@@13 Int) (hi@@9 Int) (ar@@9 T@Seq_3683) (v_2@@3 Int) ) (! (dummyFunction_4112 (|count_list#triggerStateless| i@@13 hi@@9 ar@@9 v_2@@3))
 :qid |stdinbpl.1533:15|
 :skolemid |126|
 :pattern ( (|count_list'| Heap@@12 i@@13 hi@@9 ar@@9 v_2@@3))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_40968) (i@@14 Int) (hi@@10 Int) (ar@@10 T@Seq_48156) (v_2@@4 Int) ) (! (dummyFunction_4112 (|count_array#triggerStateless| i@@14 hi@@10 ar@@10 v_2@@4))
 :qid |stdinbpl.1618:15|
 :skolemid |130|
 :pattern ( (|count_array'| Heap@@13 i@@14 hi@@10 ar@@10 v_2@@4))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_40968) (ExhaleHeap@@3 T@PolymorphicMapType_40968) (Mask@@18 T@PolymorphicMapType_40989) (pm_f_20@@1 T@Field_29264_115514) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@3 Mask@@18) (=> (and (HasDirectPerm_29264_115578 Mask@@18 null pm_f_20@@1) (IsPredicateField_29264_115605 pm_f_20@@1)) (and (and (and (and (forall ((o2_20 T@Ref) (f_49 T@Field_41028_53) ) (!  (=> (select (|PolymorphicMapType_41517_41028_53#PolymorphicMapType_41517| (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@14) null (PredicateMaskField_29264 pm_f_20@@1))) o2_20 f_49) (= (select (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| Heap@@14) o2_20 f_49) (select (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| ExhaleHeap@@3) o2_20 f_49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| ExhaleHeap@@3) o2_20 f_49))
)) (forall ((o2_20@@0 T@Ref) (f_49@@0 T@Field_41041_41042) ) (!  (=> (select (|PolymorphicMapType_41517_41028_41042#PolymorphicMapType_41517| (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@14) null (PredicateMaskField_29264 pm_f_20@@1))) o2_20@@0 f_49@@0) (= (select (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| Heap@@14) o2_20@@0 f_49@@0) (select (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| ExhaleHeap@@3) o2_20@@0 f_49@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| ExhaleHeap@@3) o2_20@@0 f_49@@0))
))) (forall ((o2_20@@1 T@Ref) (f_49@@1 T@Field_47114_3805) ) (!  (=> (select (|PolymorphicMapType_41517_41028_3805#PolymorphicMapType_41517| (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@14) null (PredicateMaskField_29264 pm_f_20@@1))) o2_20@@1 f_49@@1) (= (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@14) o2_20@@1 f_49@@1) (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| ExhaleHeap@@3) o2_20@@1 f_49@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| ExhaleHeap@@3) o2_20@@1 f_49@@1))
))) (forall ((o2_20@@2 T@Ref) (f_49@@2 T@Field_29264_115514) ) (!  (=> (select (|PolymorphicMapType_41517_41028_115514#PolymorphicMapType_41517| (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@14) null (PredicateMaskField_29264 pm_f_20@@1))) o2_20@@2 f_49@@2) (= (select (|PolymorphicMapType_40968_41028_115514#PolymorphicMapType_40968| Heap@@14) o2_20@@2 f_49@@2) (select (|PolymorphicMapType_40968_41028_115514#PolymorphicMapType_40968| ExhaleHeap@@3) o2_20@@2 f_49@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40968_41028_115514#PolymorphicMapType_40968| ExhaleHeap@@3) o2_20@@2 f_49@@2))
))) (forall ((o2_20@@3 T@Ref) (f_49@@3 T@Field_29264_115647) ) (!  (=> (select (|PolymorphicMapType_41517_41028_116825#PolymorphicMapType_41517| (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@14) null (PredicateMaskField_29264 pm_f_20@@1))) o2_20@@3 f_49@@3) (= (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@14) o2_20@@3 f_49@@3) (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| ExhaleHeap@@3) o2_20@@3 f_49@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| ExhaleHeap@@3) o2_20@@3 f_49@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@3 Mask@@18) (IsPredicateField_29264_115605 pm_f_20@@1))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_40968) (ExhaleHeap@@4 T@PolymorphicMapType_40968) (Mask@@19 T@PolymorphicMapType_40989) (pm_f_20@@2 T@Field_29264_115514) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@4 Mask@@19) (=> (and (HasDirectPerm_29264_115578 Mask@@19 null pm_f_20@@2) (IsWandField_29264_117352 pm_f_20@@2)) (and (and (and (and (forall ((o2_20@@4 T@Ref) (f_49@@4 T@Field_41028_53) ) (!  (=> (select (|PolymorphicMapType_41517_41028_53#PolymorphicMapType_41517| (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@15) null (WandMaskField_29264 pm_f_20@@2))) o2_20@@4 f_49@@4) (= (select (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| Heap@@15) o2_20@@4 f_49@@4) (select (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| ExhaleHeap@@4) o2_20@@4 f_49@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| ExhaleHeap@@4) o2_20@@4 f_49@@4))
)) (forall ((o2_20@@5 T@Ref) (f_49@@5 T@Field_41041_41042) ) (!  (=> (select (|PolymorphicMapType_41517_41028_41042#PolymorphicMapType_41517| (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@15) null (WandMaskField_29264 pm_f_20@@2))) o2_20@@5 f_49@@5) (= (select (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| Heap@@15) o2_20@@5 f_49@@5) (select (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| ExhaleHeap@@4) o2_20@@5 f_49@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| ExhaleHeap@@4) o2_20@@5 f_49@@5))
))) (forall ((o2_20@@6 T@Ref) (f_49@@6 T@Field_47114_3805) ) (!  (=> (select (|PolymorphicMapType_41517_41028_3805#PolymorphicMapType_41517| (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@15) null (WandMaskField_29264 pm_f_20@@2))) o2_20@@6 f_49@@6) (= (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@15) o2_20@@6 f_49@@6) (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| ExhaleHeap@@4) o2_20@@6 f_49@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| ExhaleHeap@@4) o2_20@@6 f_49@@6))
))) (forall ((o2_20@@7 T@Ref) (f_49@@7 T@Field_29264_115514) ) (!  (=> (select (|PolymorphicMapType_41517_41028_115514#PolymorphicMapType_41517| (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@15) null (WandMaskField_29264 pm_f_20@@2))) o2_20@@7 f_49@@7) (= (select (|PolymorphicMapType_40968_41028_115514#PolymorphicMapType_40968| Heap@@15) o2_20@@7 f_49@@7) (select (|PolymorphicMapType_40968_41028_115514#PolymorphicMapType_40968| ExhaleHeap@@4) o2_20@@7 f_49@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40968_41028_115514#PolymorphicMapType_40968| ExhaleHeap@@4) o2_20@@7 f_49@@7))
))) (forall ((o2_20@@8 T@Ref) (f_49@@8 T@Field_29264_115647) ) (!  (=> (select (|PolymorphicMapType_41517_41028_116825#PolymorphicMapType_41517| (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@15) null (WandMaskField_29264 pm_f_20@@2))) o2_20@@8 f_49@@8) (= (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@15) o2_20@@8 f_49@@8) (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| ExhaleHeap@@4) o2_20@@8 f_49@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| ExhaleHeap@@4) o2_20@@8 f_49@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@4 Mask@@19) (IsWandField_29264_117352 pm_f_20@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.281:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3683| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.654:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3683| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_40968) (ExhaleHeap@@5 T@PolymorphicMapType_40968) (Mask@@20 T@PolymorphicMapType_40989) (o_45@@0 T@Ref) (f_49@@9 T@Field_29264_115647) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@5 Mask@@20) (=> (HasDirectPerm_29264_121352 Mask@@20 o_45@@0 f_49@@9) (= (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@16) o_45@@0 f_49@@9) (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| ExhaleHeap@@5) o_45@@0 f_49@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@5 Mask@@20) (select (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| ExhaleHeap@@5) o_45@@0 f_49@@9))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_40968) (ExhaleHeap@@6 T@PolymorphicMapType_40968) (Mask@@21 T@PolymorphicMapType_40989) (o_45@@1 T@Ref) (f_49@@10 T@Field_29264_115514) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@6 Mask@@21) (=> (HasDirectPerm_29264_115578 Mask@@21 o_45@@1 f_49@@10) (= (select (|PolymorphicMapType_40968_41028_115514#PolymorphicMapType_40968| Heap@@17) o_45@@1 f_49@@10) (select (|PolymorphicMapType_40968_41028_115514#PolymorphicMapType_40968| ExhaleHeap@@6) o_45@@1 f_49@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@6 Mask@@21) (select (|PolymorphicMapType_40968_41028_115514#PolymorphicMapType_40968| ExhaleHeap@@6) o_45@@1 f_49@@10))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_40968) (ExhaleHeap@@7 T@PolymorphicMapType_40968) (Mask@@22 T@PolymorphicMapType_40989) (o_45@@2 T@Ref) (f_49@@11 T@Field_41041_41042) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@7 Mask@@22) (=> (HasDirectPerm_29264_41042 Mask@@22 o_45@@2 f_49@@11) (= (select (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| Heap@@18) o_45@@2 f_49@@11) (select (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| ExhaleHeap@@7) o_45@@2 f_49@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@7 Mask@@22) (select (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| ExhaleHeap@@7) o_45@@2 f_49@@11))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_40968) (ExhaleHeap@@8 T@PolymorphicMapType_40968) (Mask@@23 T@PolymorphicMapType_40989) (o_45@@3 T@Ref) (f_49@@12 T@Field_41028_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@8 Mask@@23) (=> (HasDirectPerm_29264_53 Mask@@23 o_45@@3 f_49@@12) (= (select (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| Heap@@19) o_45@@3 f_49@@12) (select (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| ExhaleHeap@@8) o_45@@3 f_49@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@8 Mask@@23) (select (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| ExhaleHeap@@8) o_45@@3 f_49@@12))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_40968) (ExhaleHeap@@9 T@PolymorphicMapType_40968) (Mask@@24 T@PolymorphicMapType_40989) (o_45@@4 T@Ref) (f_49@@13 T@Field_47114_3805) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@9 Mask@@24) (=> (HasDirectPerm_29264_3805 Mask@@24 o_45@@4 f_49@@13) (= (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@20) o_45@@4 f_49@@13) (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| ExhaleHeap@@9) o_45@@4 f_49@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@9 Mask@@24) (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| ExhaleHeap@@9) o_45@@4 f_49@@13))
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
(assert (forall ((Heap@@21 T@PolymorphicMapType_40968) (Mask@@25 T@PolymorphicMapType_40989) (i@@15 Int) (hi@@11 Int) (ar@@11 T@Seq_3683) (v_2@@5 Int) ) (!  (=> (and (state Heap@@21 Mask@@25) (< AssumeFunctionsAbove 5)) (=> (and (and (<= 0 i@@15) (<= i@@15 hi@@11)) (<= hi@@11 (|Seq#Length_3683| ar@@11))) (= (count_list Heap@@21 i@@15 hi@@11 ar@@11 v_2@@5) (ite (< i@@15 hi@@11) (+ (ite (= (|Seq#Index_3683| ar@@11 i@@15) v_2@@5) 1 0) (|count_list'| Heap@@21 (+ i@@15 1) hi@@11 ar@@11 v_2@@5)) 0))))
 :qid |stdinbpl.1539:15|
 :skolemid |127|
 :pattern ( (state Heap@@21 Mask@@25) (count_list Heap@@21 i@@15 hi@@11 ar@@11 v_2@@5))
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
(assert (forall ((Heap@@22 T@PolymorphicMapType_40968) (i@@16 Int) (lo@@7 Int) (hi@@12 Int) (ar@@12 T@Seq_48156) ) (!  (and (= (sum_array Heap@@22 i@@16 lo@@7 hi@@12 ar@@12) (|sum_array'| Heap@@22 i@@16 lo@@7 hi@@12 ar@@12)) (dummyFunction_4112 (|sum_array#triggerStateless| i@@16 lo@@7 hi@@12 ar@@12)))
 :qid |stdinbpl.762:15|
 :skolemid |62|
 :pattern ( (sum_array Heap@@22 i@@16 lo@@7 hi@@12 ar@@12))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_40968) (i@@17 Int) (hi@@13 Int) (ar@@13 T@Seq_3683) (v_2@@6 Int) ) (!  (and (= (count_list Heap@@23 i@@17 hi@@13 ar@@13 v_2@@6) (|count_list'| Heap@@23 i@@17 hi@@13 ar@@13 v_2@@6)) (dummyFunction_4112 (|count_list#triggerStateless| i@@17 hi@@13 ar@@13 v_2@@6)))
 :qid |stdinbpl.1529:15|
 :skolemid |125|
 :pattern ( (count_list Heap@@23 i@@17 hi@@13 ar@@13 v_2@@6))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_40968) (i@@18 Int) (hi@@14 Int) (ar@@14 T@Seq_48156) (v_2@@7 Int) ) (!  (and (= (count_array Heap@@24 i@@18 hi@@14 ar@@14 v_2@@7) (|count_array'| Heap@@24 i@@18 hi@@14 ar@@14 v_2@@7)) (dummyFunction_4112 (|count_array#triggerStateless| i@@18 hi@@14 ar@@14 v_2@@7)))
 :qid |stdinbpl.1614:15|
 :skolemid |129|
 :pattern ( (count_array Heap@@24 i@@18 hi@@14 ar@@14 v_2@@7))
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
(assert (forall ((Heap@@25 T@PolymorphicMapType_40968) (i@@19 Int) (lo@@8 Int) (hi@@15 Int) (step@@5 Int) (vmin@@5 Int) (vmax@@5 Int) (ar@@15 T@Seq_48156) ) (!  (and (= (sum_square Heap@@25 i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax@@5 ar@@15) (|sum_square'| Heap@@25 i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax@@5 ar@@15)) (dummyFunction_4112 (|sum_square#triggerStateless| i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax@@5 ar@@15)))
 :qid |stdinbpl.997:15|
 :skolemid |83|
 :pattern ( (sum_square Heap@@25 i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax@@5 ar@@15))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_40968) (Mask@@26 T@PolymorphicMapType_40989) (i@@20 Int) (hi@@16 Int) (ar@@16 T@Seq_3683) (v_2@@8 Int) ) (!  (=> (state Heap@@26 Mask@@26) (= (|count_list'| Heap@@26 i@@20 hi@@16 ar@@16 v_2@@8) (|count_list#frame| EmptyFrame i@@20 hi@@16 ar@@16 v_2@@8)))
 :qid |stdinbpl.1546:15|
 :skolemid |128|
 :pattern ( (state Heap@@26 Mask@@26) (|count_list'| Heap@@26 i@@20 hi@@16 ar@@16 v_2@@8))
)))
(assert (forall ((Heap2Heap@@1 T@PolymorphicMapType_40968) (Heap1Heap@@1 T@PolymorphicMapType_40968) (i@@21 Int) (hi@@17 Int) (ar@@17 T@Seq_48156) (v_2@@9 Int) ) (!  (=> (and (= (|Seq#Contains_3683| (|Seq#Range| 0 hi@@17) (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@21 hi@@17 ar@@17 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@21 hi@@17 ar@@17 v_2@@9))) (|Seq#Contains_3683| (|Seq#Range| 0 hi@@17) (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@21 hi@@17 ar@@17 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@21 hi@@17 ar@@17 v_2@@9)))) (=> (|Seq#Contains_3683| (|Seq#Range| 0 hi@@17) (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@21 hi@@17 ar@@17 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@21 hi@@17 ar@@17 v_2@@9))) (= (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap2Heap@@1) (|Seq#Index_29303| ar@@17 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@21 hi@@17 ar@@17 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@21 hi@@17 ar@@17 v_2@@9))) Ref__Integer_value) (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap1Heap@@1) (|Seq#Index_29303| ar@@17 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@21 hi@@17 ar@@17 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@21 hi@@17 ar@@17 v_2@@9))) Ref__Integer_value)))) (= (|count_array#condqp4| Heap2Heap@@1 i@@21 hi@@17 ar@@17 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@21 hi@@17 ar@@17 v_2@@9)))
 :qid |stdinbpl.1644:15|
 :skolemid |134|
 :pattern ( (|count_array#condqp4| Heap2Heap@@1 i@@21 hi@@17 ar@@17 v_2@@9) (|count_array#condqp4| Heap1Heap@@1 i@@21 hi@@17 ar@@17 v_2@@9) (succHeapTrans Heap2Heap@@1 Heap1Heap@@1))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3683| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3683| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.653:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3683| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((Heap2Heap@@2 T@PolymorphicMapType_40968) (Heap1Heap@@2 T@PolymorphicMapType_40968) (i@@22 Int) (lo@@9 Int) (hi@@18 Int) (ar@@18 T@Seq_48156) ) (!  (=> (and (= (|Seq#Contains_3683| (|Seq#Range| lo@@9 hi@@18) (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@22 lo@@9 hi@@18 ar@@18) (|sum_array#condqp1| Heap1Heap@@2 i@@22 lo@@9 hi@@18 ar@@18))) (|Seq#Contains_3683| (|Seq#Range| lo@@9 hi@@18) (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@22 lo@@9 hi@@18 ar@@18) (|sum_array#condqp1| Heap1Heap@@2 i@@22 lo@@9 hi@@18 ar@@18)))) (=> (|Seq#Contains_3683| (|Seq#Range| lo@@9 hi@@18) (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@22 lo@@9 hi@@18 ar@@18) (|sum_array#condqp1| Heap1Heap@@2 i@@22 lo@@9 hi@@18 ar@@18))) (= (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap2Heap@@2) (|Seq#Index_29303| ar@@18 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@22 lo@@9 hi@@18 ar@@18) (|sum_array#condqp1| Heap1Heap@@2 i@@22 lo@@9 hi@@18 ar@@18))) Ref__Integer_value) (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap1Heap@@2) (|Seq#Index_29303| ar@@18 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@22 lo@@9 hi@@18 ar@@18) (|sum_array#condqp1| Heap1Heap@@2 i@@22 lo@@9 hi@@18 ar@@18))) Ref__Integer_value)))) (= (|sum_array#condqp1| Heap2Heap@@2 i@@22 lo@@9 hi@@18 ar@@18) (|sum_array#condqp1| Heap1Heap@@2 i@@22 lo@@9 hi@@18 ar@@18)))
 :qid |stdinbpl.792:15|
 :skolemid |67|
 :pattern ( (|sum_array#condqp1| Heap2Heap@@2 i@@22 lo@@9 hi@@18 ar@@18) (|sum_array#condqp1| Heap1Heap@@2 i@@22 lo@@9 hi@@18 ar@@18) (succHeapTrans Heap2Heap@@2 Heap1Heap@@2))
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
(assert (forall ((Heap@@27 T@PolymorphicMapType_40968) (Mask@@27 T@PolymorphicMapType_40989) (i@@23 Int) (lo@@10 Int) (hi@@19 Int) (step@@6 Int) (vmin@@6 Int) (vmax@@6 Int) (ar@@19 T@Seq_48156) (v_2@@10 Int) ) (!  (=> (and (state Heap@@27 Mask@@27) (< AssumeFunctionsAbove 0)) (=> (and (and (and (and (<= 0 lo@@10) (and (<= lo@@10 hi@@19) (and (<= hi@@19 step@@6) (> step@@6 0)))) (and (<= 0 vmin@@6) (and (<= vmin@@6 i@@23) (<= i@@23 vmax@@6)))) (<= vmax@@6 (|Seq#Length_29303| ar@@19))) (forall ((k@@1 Int) (j_9@@1 Int) ) (!  (=> (and (>= k@@1 0) (and (< k@@1 (|Seq#Length_29303| ar@@19)) (and (>= j_9@@1 0) (and (< j_9@@1 (|Seq#Length_29303| ar@@19)) (not (= k@@1 j_9@@1)))))) (not (= (|Seq#Index_29303| ar@@19 k@@1) (|Seq#Index_29303| ar@@19 j_9@@1))))
 :qid |stdinbpl.1275:189|
 :skolemid |106|
 :pattern ( (|Seq#Index_29303| ar@@19 k@@1) (|Seq#Index_29303| ar@@19 j_9@@1))
))) (= (count_square Heap@@27 i@@23 lo@@10 hi@@19 step@@6 vmin@@6 vmax@@6 ar@@19 v_2@@10) (ite (< i@@23 vmax@@6) (+ (ite  (and (<= lo@@10 (mod i@@23 step@@6)) (and (< (mod i@@23 step@@6) hi@@19) (= (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@27) (|Seq#Index_29303| ar@@19 i@@23) Ref__Integer_value) v_2@@10))) 1 0) (|count_square'| Heap@@27 (+ i@@23 1) lo@@10 hi@@19 step@@6 vmin@@6 vmax@@6 ar@@19 v_2@@10)) 0))))
 :qid |stdinbpl.1273:15|
 :skolemid |107|
 :pattern ( (state Heap@@27 Mask@@27) (count_square Heap@@27 i@@23 lo@@10 hi@@19 step@@6 vmin@@6 vmax@@6 ar@@19 v_2@@10))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_40968) (i@@24 Int) (hi@@20 Int) (ar@@20 T@Seq_3683) ) (!  (and (= (sum_list Heap@@28 i@@24 hi@@20 ar@@20) (|sum_list'| Heap@@28 i@@24 hi@@20 ar@@20)) (dummyFunction_4112 (|sum_list#triggerStateless| i@@24 hi@@20 ar@@20)))
 :qid |stdinbpl.677:15|
 :skolemid |58|
 :pattern ( (sum_list Heap@@28 i@@24 hi@@20 ar@@20))
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
(assert (forall ((s0@@5 T@Seq_48156) (s1@@5 T@Seq_48156) ) (!  (=> (|Seq#Equal_48156| s0@@5 s1@@5) (and (= (|Seq#Length_29303| s0@@5) (|Seq#Length_29303| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_29303| s0@@5))) (= (|Seq#Index_29303| s0@@5 j@@6) (|Seq#Index_29303| s1@@5 j@@6)))
 :qid |stdinbpl.616:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_29303| s0@@5 j@@6))
 :pattern ( (|Seq#Index_29303| s1@@5 j@@6))
))))
 :qid |stdinbpl.613:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_48156| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3683) (s1@@6 T@Seq_3683) ) (!  (=> (|Seq#Equal_3683| s0@@6 s1@@6) (and (= (|Seq#Length_3683| s0@@6) (|Seq#Length_3683| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_3683| s0@@6))) (= (|Seq#Index_3683| s0@@6 j@@7) (|Seq#Index_3683| s1@@6 j@@7)))
 :qid |stdinbpl.616:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3683| s0@@6 j@@7))
 :pattern ( (|Seq#Index_3683| s1@@6 j@@7))
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
(assert (forall ((Heap@@29 T@PolymorphicMapType_40968) (Mask@@28 T@PolymorphicMapType_40989) (i@@27 Int) (hi@@21 Int) (ar@@21 T@Seq_3683) ) (!  (=> (and (state Heap@@29 Mask@@28) (< AssumeFunctionsAbove 4)) (=> (and (and (<= 0 i@@27) (<= i@@27 hi@@21)) (<= hi@@21 (|Seq#Length_3683| ar@@21))) (= (sum_list Heap@@29 i@@27 hi@@21 ar@@21) (ite (< i@@27 hi@@21) (+ (|Seq#Index_3683| ar@@21 i@@27) (|sum_list'| Heap@@29 (+ i@@27 1) hi@@21 ar@@21)) 0))))
 :qid |stdinbpl.687:15|
 :skolemid |60|
 :pattern ( (state Heap@@29 Mask@@28) (sum_list Heap@@29 i@@27 hi@@21 ar@@21))
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
(assert (forall ((Heap@@30 T@PolymorphicMapType_40968) (Mask@@29 T@PolymorphicMapType_40989) (i@@30 Int) (hi@@22 Int) (ar@@22 T@Seq_48156) (v_2@@11 Int) ) (!  (=> (and (state Heap@@30 Mask@@29) (< AssumeFunctionsAbove 2)) (=> (and (and (and (<= 0 i@@30) (<= i@@30 hi@@22)) (<= hi@@22 (|Seq#Length_29303| ar@@22))) (forall ((k@@2 Int) (j_9@@2 Int) ) (!  (=> (and (>= k@@2 0) (and (< k@@2 (|Seq#Length_29303| ar@@22)) (and (>= j_9@@2 0) (and (< j_9@@2 (|Seq#Length_29303| ar@@22)) (not (= k@@2 j_9@@2)))))) (not (= (|Seq#Index_29303| ar@@22 k@@2) (|Seq#Index_29303| ar@@22 j_9@@2))))
 :qid |stdinbpl.1626:110|
 :skolemid |131|
 :pattern ( (|Seq#Index_29303| ar@@22 k@@2) (|Seq#Index_29303| ar@@22 j_9@@2))
))) (= (count_array Heap@@30 i@@30 hi@@22 ar@@22 v_2@@11) (ite (< i@@30 hi@@22) (+ (ite (= (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@30) (|Seq#Index_29303| ar@@22 i@@30) Ref__Integer_value) v_2@@11) 1 0) (|count_array'| Heap@@30 (+ i@@30 1) hi@@22 ar@@22 v_2@@11)) 0))))
 :qid |stdinbpl.1624:15|
 :skolemid |132|
 :pattern ( (state Heap@@30 Mask@@29) (count_array Heap@@30 i@@30 hi@@22 ar@@22 v_2@@11))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_40968) (o_40 T@Ref) (f_50 T@Field_29264_115514) (v@@4 T@FrameType) ) (! (succHeap Heap@@31 (PolymorphicMapType_40968 (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| Heap@@31) (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| Heap@@31) (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@31) (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@31) (store (|PolymorphicMapType_40968_41028_115514#PolymorphicMapType_40968| Heap@@31) o_40 f_50 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40968 (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| Heap@@31) (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| Heap@@31) (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@31) (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@31) (store (|PolymorphicMapType_40968_41028_115514#PolymorphicMapType_40968| Heap@@31) o_40 f_50 v@@4)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_40968) (o_40@@0 T@Ref) (f_50@@0 T@Field_29264_115647) (v@@5 T@PolymorphicMapType_41517) ) (! (succHeap Heap@@32 (PolymorphicMapType_40968 (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| Heap@@32) (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| Heap@@32) (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@32) (store (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@32) o_40@@0 f_50@@0 v@@5) (|PolymorphicMapType_40968_41028_115514#PolymorphicMapType_40968| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40968 (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| Heap@@32) (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| Heap@@32) (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@32) (store (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@32) o_40@@0 f_50@@0 v@@5) (|PolymorphicMapType_40968_41028_115514#PolymorphicMapType_40968| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_40968) (o_40@@1 T@Ref) (f_50@@1 T@Field_47114_3805) (v@@6 Int) ) (! (succHeap Heap@@33 (PolymorphicMapType_40968 (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| Heap@@33) (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| Heap@@33) (store (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@33) o_40@@1 f_50@@1 v@@6) (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@33) (|PolymorphicMapType_40968_41028_115514#PolymorphicMapType_40968| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40968 (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| Heap@@33) (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| Heap@@33) (store (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@33) o_40@@1 f_50@@1 v@@6) (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@33) (|PolymorphicMapType_40968_41028_115514#PolymorphicMapType_40968| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_40968) (o_40@@2 T@Ref) (f_50@@2 T@Field_41041_41042) (v@@7 T@Ref) ) (! (succHeap Heap@@34 (PolymorphicMapType_40968 (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| Heap@@34) (store (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| Heap@@34) o_40@@2 f_50@@2 v@@7) (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@34) (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@34) (|PolymorphicMapType_40968_41028_115514#PolymorphicMapType_40968| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40968 (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| Heap@@34) (store (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| Heap@@34) o_40@@2 f_50@@2 v@@7) (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@34) (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@34) (|PolymorphicMapType_40968_41028_115514#PolymorphicMapType_40968| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_40968) (o_40@@3 T@Ref) (f_50@@3 T@Field_41028_53) (v@@8 Bool) ) (! (succHeap Heap@@35 (PolymorphicMapType_40968 (store (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| Heap@@35) o_40@@3 f_50@@3 v@@8) (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| Heap@@35) (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@35) (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@35) (|PolymorphicMapType_40968_41028_115514#PolymorphicMapType_40968| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40968 (store (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| Heap@@35) o_40@@3 f_50@@3 v@@8) (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| Heap@@35) (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@35) (|PolymorphicMapType_40968_29264_115691#PolymorphicMapType_40968| Heap@@35) (|PolymorphicMapType_40968_41028_115514#PolymorphicMapType_40968| Heap@@35)))
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
(assert (forall ((o_40@@4 T@Ref) (f_46 T@Field_41041_41042) (Heap@@36 T@PolymorphicMapType_40968) ) (!  (=> (select (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| Heap@@36) o_40@@4 $allocated) (select (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| Heap@@36) (select (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| Heap@@36) o_40@@4 f_46) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_40968_29011_29012#PolymorphicMapType_40968| Heap@@36) o_40@@4 f_46))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_40968) (Mask@@30 T@PolymorphicMapType_40989) (i@@33 Int) (lo@@11 Int) (hi@@23 Int) (step@@7 Int) (vmin@@7 Int) (vmax@@7 Int) (ar@@23 T@Seq_48156) ) (!  (=> (state Heap@@37 Mask@@30) (= (|sum_square'| Heap@@37 i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax@@7 ar@@23) (|sum_square#frame| (FrameFragment_4664 (|sum_square#condqp2| Heap@@37 i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax@@7 ar@@23)) i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax@@7 ar@@23)))
 :qid |stdinbpl.1017:15|
 :skolemid |87|
 :pattern ( (state Heap@@37 Mask@@30) (|sum_square'| Heap@@37 i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax@@7 ar@@23))
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
(assert (forall ((Heap@@38 T@PolymorphicMapType_40968) (i@@36 Int) (lo@@12 Int) (hi@@24 Int) (step@@8 Int) (vmin@@8 Int) (vmax@@8 Int) (ar@@24 T@Seq_48156) ) (! (dummyFunction_4112 (|sum_square#triggerStateless| i@@36 lo@@12 hi@@24 step@@8 vmin@@8 vmax@@8 ar@@24))
 :qid |stdinbpl.1001:15|
 :skolemid |84|
 :pattern ( (|sum_square'| Heap@@38 i@@36 lo@@12 hi@@24 step@@8 vmin@@8 vmax@@8 ar@@24))
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
(assert (forall ((Heap@@39 T@PolymorphicMapType_40968) (Mask@@31 T@PolymorphicMapType_40989) (i@@37 Int) (lo@@13 Int) (hi@@25 Int) (ar@@25 T@Seq_48156) ) (!  (=> (state Heap@@39 Mask@@31) (= (|sum_array'| Heap@@39 i@@37 lo@@13 hi@@25 ar@@25) (|sum_array#frame| (FrameFragment_4664 (|sum_array#condqp1| Heap@@39 i@@37 lo@@13 hi@@25 ar@@25)) i@@37 lo@@13 hi@@25 ar@@25)))
 :qid |stdinbpl.782:15|
 :skolemid |66|
 :pattern ( (state Heap@@39 Mask@@31) (|sum_array'| Heap@@39 i@@37 lo@@13 hi@@25 ar@@25))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_40968) (Mask@@32 T@PolymorphicMapType_40989) (i@@38 Int) (hi@@26 Int) (ar@@26 T@Seq_48156) (v_2@@12 Int) ) (!  (=> (state Heap@@40 Mask@@32) (= (|count_array'| Heap@@40 i@@38 hi@@26 ar@@26 v_2@@12) (|count_array#frame| (FrameFragment_4664 (|count_array#condqp4| Heap@@40 i@@38 hi@@26 ar@@26 v_2@@12)) i@@38 hi@@26 ar@@26 v_2@@12)))
 :qid |stdinbpl.1634:15|
 :skolemid |133|
 :pattern ( (state Heap@@40 Mask@@32) (|count_array'| Heap@@40 i@@38 hi@@26 ar@@26 v_2@@12))
)))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun M () Int)
(declare-fun step@@9 () Int)
(declare-fun k_fresh_rw_0_6 () Int)
(declare-fun N () Int)
(declare-fun matrix () T@Seq_48156)
(declare-fun QPMask@11 () T@PolymorphicMapType_40989)
(declare-fun QPMask@1 () T@PolymorphicMapType_40989)
(declare-fun P_1 () Int)
(declare-fun hist () T@Seq_48156)
(declare-fun PostHeap@0 () T@PolymorphicMapType_40968)
(declare-fun k$0 () Int)
(declare-fun j_6_1 () Int)
(declare-fun wildcard@0 () Real)
(declare-fun neverTriggered26 (Int) Bool)
(declare-fun k_39 () Int)
(declare-fun qpRange25 (T@Ref) Bool)
(declare-fun invRecv25 (T@Ref) Int)
(declare-fun QPMask@10 () T@PolymorphicMapType_40989)
(declare-fun i1_11 () Int)
(declare-fun qpRange24 (T@Ref) Bool)
(declare-fun invRecv24 (T@Ref) Int)
(declare-fun j1_14 () Int)
(declare-fun k_fresh_rw_0_4 () Int)
(declare-fun ExhaleHeap@1 () T@PolymorphicMapType_40968)
(declare-fun Heap@@41 () T@PolymorphicMapType_40968)
(declare-fun k_8 () Int)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_40968)
(declare-fun QPMask@5 () T@PolymorphicMapType_40989)
(declare-fun qpRange33 (T@Ref) Bool)
(declare-fun invRecv33 (T@Ref) Int)
(declare-fun QPMask@6 () T@PolymorphicMapType_40989)
(declare-fun qpRange34 (T@Ref) Bool)
(declare-fun invRecv34 (T@Ref) Int)
(declare-fun QPMask@7 () T@PolymorphicMapType_40989)
(declare-fun neverTriggered27 (Int) Bool)
(declare-fun qpRange27 (T@Ref) Bool)
(declare-fun invRecv27 (T@Ref) Int)
(declare-fun QPMask@8 () T@PolymorphicMapType_40989)
(declare-fun neverTriggered28 (Int) Bool)
(declare-fun qpRange28 (T@Ref) Bool)
(declare-fun invRecv28 (T@Ref) Int)
(declare-fun QPMask@9 () T@PolymorphicMapType_40989)
(declare-fun k_20_1 () Int)
(declare-fun j_15_1 () Int)
(declare-fun k_fresh_rw_0_6_1 () Int)
(declare-fun neverTriggered32 (Int) Bool)
(declare-fun QPMask@4 () T@PolymorphicMapType_40989)
(declare-fun qpRange32 (T@Ref) Bool)
(declare-fun invRecv32 (T@Ref) Int)
(declare-fun k_18_1 () Int)
(declare-fun j_12_2 () Int)
(declare-fun neverTriggered31 (Int) Bool)
(declare-fun QPMask@3 () T@PolymorphicMapType_40989)
(declare-fun qpRange31 (T@Ref) Bool)
(declare-fun invRecv31 (T@Ref) Int)
(declare-fun k_15_1 () Int)
(declare-fun j_10_2 () Int)
(declare-fun neverTriggered29 (Int) Bool)
(declare-fun qpRange29 (T@Ref) Bool)
(declare-fun invRecv29 (T@Ref) Int)
(declare-fun QPMask@2 () T@PolymorphicMapType_40989)
(declare-fun qpRange30 (T@Ref) Bool)
(declare-fun invRecv30 (T@Ref) Int)
(declare-fun diz () T@Ref)
(declare-fun k_10_2 () Int)
(declare-fun j_8 () Int)
(declare-fun qpRange23 (T@Ref) Bool)
(declare-fun invRecv23 (T@Ref) Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_40989)
(declare-fun i1_9 () Int)
(declare-fun k_38 () Int)
(declare-fun j_32 () Int)
(declare-fun k_37 () Int)
(declare-fun j_31 () Int)
(declare-fun k_fresh_rw_0_5 () Int)
(declare-fun qpRange22 (T@Ref) Bool)
(declare-fun invRecv22 (T@Ref) Int)
(declare-fun j1_13 () Int)
(declare-fun k_34 () Int)
(declare-fun j_29 () Int)
(declare-fun wildcard () Real)
(set-info :boogie-vc-id Ref__histogram)
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
 (=> (= (ControlFlow 0 0) 177) (let ((anon53_correct true))
(let ((anon111_Else_correct  (=> (and (not (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) k_fresh_rw_0_6) (< (mod k_fresh_rw_0_6 step@@9) N))) (= (ControlFlow 0 156) 148)) anon53_correct)))
(let ((anon111_Then_correct  (=> (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) k_fresh_rw_0_6) (< (mod k_fresh_rw_0_6 step@@9) N)) (and (=> (= (ControlFlow 0 149) (- 0 155)) (>= k_fresh_rw_0_6 0)) (=> (>= k_fresh_rw_0_6 0) (and (=> (= (ControlFlow 0 149) (- 0 154)) (< k_fresh_rw_0_6 (|Seq#Length_29303| matrix))) (=> (< k_fresh_rw_0_6 (|Seq#Length_29303| matrix)) (and (=> (= (ControlFlow 0 149) (- 0 153)) (HasDirectPerm_29264_3805 QPMask@11 (|Seq#Index_29303| matrix k_fresh_rw_0_6) Ref__Integer_value)) (=> (HasDirectPerm_29264_3805 QPMask@11 (|Seq#Index_29303| matrix k_fresh_rw_0_6) Ref__Integer_value) (and (=> (= (ControlFlow 0 149) (- 0 152)) (>= k_fresh_rw_0_6 0)) (=> (>= k_fresh_rw_0_6 0) (and (=> (= (ControlFlow 0 149) (- 0 151)) (< k_fresh_rw_0_6 (|Seq#Length_29303| matrix))) (=> (< k_fresh_rw_0_6 (|Seq#Length_29303| matrix)) (and (=> (= (ControlFlow 0 149) (- 0 150)) (HasDirectPerm_29264_3805 QPMask@1 (|Seq#Index_29303| matrix k_fresh_rw_0_6) Ref__Integer_value)) (=> (HasDirectPerm_29264_3805 QPMask@1 (|Seq#Index_29303| matrix k_fresh_rw_0_6) Ref__Integer_value) (=> (= (ControlFlow 0 149) 148) anon53_correct))))))))))))))))
(let ((anon110_Else_correct  (=> (not (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) k_fresh_rw_0_6)) (and (=> (= (ControlFlow 0 159) 149) anon111_Then_correct) (=> (= (ControlFlow 0 159) 156) anon111_Else_correct)))))
(let ((anon110_Then_correct  (=> (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) k_fresh_rw_0_6) (and (=> (= (ControlFlow 0 157) (- 0 158)) (not (= step@@9 0))) (=> (not (= step@@9 0)) (and (=> (= (ControlFlow 0 157) 149) anon111_Then_correct) (=> (= (ControlFlow 0 157) 156) anon111_Else_correct)))))))
(let ((anon109_Else_correct true))
(let ((anon104_Else_correct  (=> (forall ((k_7_1 Int) ) (!  (=> (|Seq#Contains_3683| (|Seq#Range| 0 P_1) k_7_1) (= (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| PostHeap@0) (|Seq#Index_29303| hist k_7_1) Ref__Integer_value) (count_square PostHeap@0 0 0 N step@@9 0 (* M step@@9) matrix k_7_1)))
 :qid |stdinbpl.3727:20|
 :skolemid |286|
 :pattern ( (|Seq#ContainsTrigger_3683| (|Seq#Range| 0 P_1) k_7_1))
 :pattern ( (|Seq#Contains_3683| (|Seq#Range| 0 P_1) k_7_1))
 :pattern ( (|Seq#Index_29303| hist k_7_1))
)) (=> (and (state PostHeap@0 QPMask@11) (<= N step@@9)) (and (and (=> (= (ControlFlow 0 160) 147) anon109_Else_correct) (=> (= (ControlFlow 0 160) 157) anon110_Then_correct)) (=> (= (ControlFlow 0 160) 159) anon110_Else_correct))))))
(let ((anon45_correct true))
(let ((anon108_Else_correct  (=> (and (not (and (>= k$0 0) (and (< k$0 (|Seq#Length_29303| matrix)) (and (>= j_6_1 0) (and (< j_6_1 (|Seq#Length_29303| matrix)) (not (= k$0 j_6_1))))))) (= (ControlFlow 0 136) 133)) anon45_correct)))
(let ((anon108_Then_correct  (=> (and (>= k$0 0) (and (< k$0 (|Seq#Length_29303| matrix)) (and (>= j_6_1 0) (and (< j_6_1 (|Seq#Length_29303| matrix)) (not (= k$0 j_6_1)))))) (and (=> (= (ControlFlow 0 134) (- 0 135)) (not (= (|Seq#Index_29303| matrix k$0) (|Seq#Index_29303| matrix j_6_1)))) (=> (not (= (|Seq#Index_29303| matrix k$0) (|Seq#Index_29303| matrix j_6_1))) (=> (= (ControlFlow 0 134) 133) anon45_correct))))))
(let ((anon107_Else_correct  (=> (and (forall ((k$0_1_1 Int) (j_7_1_1 Int) ) (!  (=> (and (>= k$0_1_1 0) (and (< k$0_1_1 (|Seq#Length_29303| matrix)) (and (>= j_7_1_1 0) (and (< j_7_1_1 (|Seq#Length_29303| matrix)) (not (= k$0_1_1 j_7_1_1)))))) (not (= (|Seq#Index_29303| matrix k$0_1_1) (|Seq#Index_29303| matrix j_7_1_1))))
 :qid |stdinbpl.3670:28|
 :skolemid |278|
 :pattern ( (|Seq#Index_29303| matrix k$0_1_1) (|Seq#Index_29303| matrix j_7_1_1))
)) (> wildcard@0 0.0)) (and (=> (= (ControlFlow 0 129) (- 0 132)) (forall ((k$0_2 Int) ) (!  (=> (and (<= 0 k$0_2) (and (< k$0_2 (* M step@@9)) (and (<= 0 (mod k$0_2 step@@9)) (< (mod k$0_2 step@@9) N)))) (> (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@11) (|Seq#Index_29303| matrix k$0_2) Ref__Integer_value) NoPerm))
 :qid |stdinbpl.3678:23|
 :skolemid |279|
))) (=> (forall ((k$0_2@@0 Int) ) (!  (=> (and (<= 0 k$0_2@@0) (and (< k$0_2@@0 (* M step@@9)) (and (<= 0 (mod k$0_2@@0 step@@9)) (< (mod k$0_2@@0 step@@9) N)))) (> (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@11) (|Seq#Index_29303| matrix k$0_2@@0) Ref__Integer_value) NoPerm))
 :qid |stdinbpl.3678:23|
 :skolemid |279|
)) (=> (forall ((k$0_2@@1 Int) ) (!  (=> (and (<= 0 k$0_2@@1) (and (< k$0_2@@1 (* M step@@9)) (and (<= 0 (mod k$0_2@@1 step@@9)) (< (mod k$0_2@@1 step@@9) N)))) (< wildcard@0 (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@11) (|Seq#Index_29303| matrix k$0_2@@1) Ref__Integer_value)))
 :qid |stdinbpl.3682:28|
 :skolemid |280|
)) (and (=> (= (ControlFlow 0 129) (- 0 131)) (forall ((k$0_2@@2 Int) ) (!  (=> (and (and (<= 0 k$0_2@@2) (and (< k$0_2@@2 (* M step@@9)) (and (<= 0 (mod k$0_2@@2 step@@9)) (< (mod k$0_2@@2 step@@9) N)))) (dummyFunction_4112 (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| PostHeap@0) (|Seq#Index_29303| matrix k$0_2@@2) Ref__Integer_value))) (>= wildcard@0 NoPerm))
 :qid |stdinbpl.3689:25|
 :skolemid |281|
 :pattern ( (|Seq#Index_29303| matrix k$0_2@@2))
 :pattern ( (|Seq#Index_29303| matrix k$0_2@@2))
))) (=> (forall ((k$0_2@@3 Int) ) (!  (=> (and (and (<= 0 k$0_2@@3) (and (< k$0_2@@3 (* M step@@9)) (and (<= 0 (mod k$0_2@@3 step@@9)) (< (mod k$0_2@@3 step@@9) N)))) (dummyFunction_4112 (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| PostHeap@0) (|Seq#Index_29303| matrix k$0_2@@3) Ref__Integer_value))) (>= wildcard@0 NoPerm))
 :qid |stdinbpl.3689:25|
 :skolemid |281|
 :pattern ( (|Seq#Index_29303| matrix k$0_2@@3))
 :pattern ( (|Seq#Index_29303| matrix k$0_2@@3))
)) (and (=> (= (ControlFlow 0 129) (- 0 130)) (forall ((k$0_2@@4 Int) (k$0_2_1 Int) ) (!  (=> (and (and (and (and (not (= k$0_2@@4 k$0_2_1)) (and (<= 0 k$0_2@@4) (and (< k$0_2@@4 (* M step@@9)) (and (<= 0 (mod k$0_2@@4 step@@9)) (< (mod k$0_2@@4 step@@9) N))))) (and (<= 0 k$0_2_1) (and (< k$0_2_1 (* M step@@9)) (and (<= 0 (mod k$0_2_1 step@@9)) (< (mod k$0_2_1 step@@9) N))))) (< NoPerm wildcard@0)) (< NoPerm wildcard@0)) (not (= (|Seq#Index_29303| matrix k$0_2@@4) (|Seq#Index_29303| matrix k$0_2_1))))
 :qid |stdinbpl.3696:25|
 :skolemid |282|
 :pattern ( (neverTriggered26 k$0_2@@4) (neverTriggered26 k$0_2_1))
))) (=> (forall ((k$0_2@@5 Int) (k$0_2_1@@0 Int) ) (!  (=> (and (and (and (and (not (= k$0_2@@5 k$0_2_1@@0)) (and (<= 0 k$0_2@@5) (and (< k$0_2@@5 (* M step@@9)) (and (<= 0 (mod k$0_2@@5 step@@9)) (< (mod k$0_2@@5 step@@9) N))))) (and (<= 0 k$0_2_1@@0) (and (< k$0_2_1@@0 (* M step@@9)) (and (<= 0 (mod k$0_2_1@@0 step@@9)) (< (mod k$0_2_1@@0 step@@9) N))))) (< NoPerm wildcard@0)) (< NoPerm wildcard@0)) (not (= (|Seq#Index_29303| matrix k$0_2@@5) (|Seq#Index_29303| matrix k$0_2_1@@0))))
 :qid |stdinbpl.3696:25|
 :skolemid |282|
 :pattern ( (neverTriggered26 k$0_2@@5) (neverTriggered26 k$0_2_1@@0))
)) (=> (= (ControlFlow 0 129) (- 0 128)) (forall ((k$0_2@@6 Int) ) (!  (=> (and (<= 0 k$0_2@@6) (and (< k$0_2@@6 (* M step@@9)) (and (<= 0 (mod k$0_2@@6 step@@9)) (< (mod k$0_2@@6 step@@9) N)))) (=> (> wildcard@0 NoPerm) (> (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@11) (|Seq#Index_29303| matrix k$0_2@@6) Ref__Integer_value) NoPerm)))
 :qid |stdinbpl.3703:25|
 :skolemid |283|
 :pattern ( (|Seq#Index_29303| matrix k$0_2@@6))
 :pattern ( (|Seq#Index_29303| matrix k$0_2@@6))
)))))))))))))
(let ((anon106_Then_correct  (and (=> (= (ControlFlow 0 137) (- 0 142)) (<= 0 N)) (=> (<= 0 N) (and (=> (= (ControlFlow 0 137) (- 0 141)) (<= N step@@9)) (=> (<= N step@@9) (and (=> (= (ControlFlow 0 137) (- 0 140)) (> step@@9 0)) (=> (> step@@9 0) (and (=> (= (ControlFlow 0 137) (- 0 139)) (<= 0 (* M step@@9))) (=> (<= 0 (* M step@@9)) (and (=> (= (ControlFlow 0 137) (- 0 138)) (<= (* M step@@9) (|Seq#Length_29303| matrix))) (=> (<= (* M step@@9) (|Seq#Length_29303| matrix)) (and (and (=> (= (ControlFlow 0 137) 129) anon107_Else_correct) (=> (= (ControlFlow 0 137) 134) anon108_Then_correct)) (=> (= (ControlFlow 0 137) 136) anon108_Else_correct))))))))))))))
(let ((anon47_correct true))
(let ((anon105_Then_correct  (=> (|Seq#Contains_3683| (|Seq#Range| 0 P_1) k_39) (and (=> (= (ControlFlow 0 143) (- 0 146)) (>= k_39 0)) (=> (>= k_39 0) (and (=> (= (ControlFlow 0 143) (- 0 145)) (< k_39 (|Seq#Length_29303| hist))) (=> (< k_39 (|Seq#Length_29303| hist)) (and (=> (= (ControlFlow 0 143) (- 0 144)) (HasDirectPerm_29264_3805 QPMask@11 (|Seq#Index_29303| hist k_39) Ref__Integer_value)) (=> (HasDirectPerm_29264_3805 QPMask@11 (|Seq#Index_29303| hist k_39) Ref__Integer_value) (and (=> (= (ControlFlow 0 143) 137) anon106_Then_correct) (=> (= (ControlFlow 0 143) 126) anon47_correct)))))))))))
(let ((anon105_Else_correct  (=> (and (not (|Seq#Contains_3683| (|Seq#Range| 0 P_1) k_39)) (= (ControlFlow 0 127) 126)) anon47_correct)))
(let ((anon102_Else_correct  (and (=> (= (ControlFlow 0 161) (- 0 162)) (forall ((i1_3 Int) (i1_3_1 Int) ) (!  (=> (and (and (and (and (not (= i1_3 i1_3_1)) (|Seq#Contains_3683| (|Seq#Range| 0 P_1) i1_3)) (|Seq#Contains_3683| (|Seq#Range| 0 P_1) i1_3_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_29303| hist i1_3) (|Seq#Index_29303| hist i1_3_1))))
 :qid |stdinbpl.3605:15|
 :skolemid |272|
))) (=> (forall ((i1_3@@0 Int) (i1_3_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i1_3@@0 i1_3_1@@0)) (|Seq#Contains_3683| (|Seq#Range| 0 P_1) i1_3@@0)) (|Seq#Contains_3683| (|Seq#Range| 0 P_1) i1_3_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_29303| hist i1_3@@0) (|Seq#Index_29303| hist i1_3_1@@0))))
 :qid |stdinbpl.3605:15|
 :skolemid |272|
)) (=> (and (and (forall ((i1_3@@1 Int) ) (!  (=> (and (|Seq#Contains_3683| (|Seq#Range| 0 P_1) i1_3@@1) (< NoPerm FullPerm)) (and (qpRange25 (|Seq#Index_29303| hist i1_3@@1)) (= (invRecv25 (|Seq#Index_29303| hist i1_3@@1)) i1_3@@1)))
 :qid |stdinbpl.3611:22|
 :skolemid |273|
 :pattern ( (|Seq#Index_29303| hist i1_3@@1))
 :pattern ( (|Seq#ContainsTrigger_3683| (|Seq#Range| 0 P_1) i1_3@@1))
 :pattern ( (|Seq#Contains_3683| (|Seq#Range| 0 P_1) i1_3@@1))
 :pattern ( (|Seq#Index_29303| hist i1_3@@1))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3683| (|Seq#Range| 0 P_1) (invRecv25 o_4)) (< NoPerm FullPerm)) (qpRange25 o_4)) (= (|Seq#Index_29303| hist (invRecv25 o_4)) o_4))
 :qid |stdinbpl.3615:22|
 :skolemid |274|
 :pattern ( (invRecv25 o_4))
))) (and (forall ((i1_3@@2 Int) ) (!  (=> (|Seq#Contains_3683| (|Seq#Range| 0 P_1) i1_3@@2) (not (= (|Seq#Index_29303| hist i1_3@@2) null)))
 :qid |stdinbpl.3621:22|
 :skolemid |275|
 :pattern ( (|Seq#Index_29303| hist i1_3@@2))
 :pattern ( (|Seq#ContainsTrigger_3683| (|Seq#Range| 0 P_1) i1_3@@2))
 :pattern ( (|Seq#Contains_3683| (|Seq#Range| 0 P_1) i1_3@@2))
 :pattern ( (|Seq#Index_29303| hist i1_3@@2))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3683| (|Seq#Range| 0 P_1) (invRecv25 o_4@@0)) (< NoPerm FullPerm)) (qpRange25 o_4@@0)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_29303| hist (invRecv25 o_4@@0)) o_4@@0)) (= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@11) o_4@@0 Ref__Integer_value) (+ (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@10) o_4@@0 Ref__Integer_value) FullPerm)))) (=> (not (and (and (|Seq#Contains_3683| (|Seq#Range| 0 P_1) (invRecv25 o_4@@0)) (< NoPerm FullPerm)) (qpRange25 o_4@@0))) (= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@11) o_4@@0 Ref__Integer_value) (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@10) o_4@@0 Ref__Integer_value))))
 :qid |stdinbpl.3627:22|
 :skolemid |276|
 :pattern ( (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@11) o_4@@0 Ref__Integer_value))
)))) (=> (and (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_41028_53) ) (!  (=> true (= (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| QPMask@10) o_4@@1 f_5) (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| QPMask@11) o_4@@1 f_5)))
 :qid |stdinbpl.3631:29|
 :skolemid |277|
 :pattern ( (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| QPMask@10) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| QPMask@11) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_41041_41042) ) (!  (=> true (= (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| QPMask@10) o_4@@2 f_5@@0) (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| QPMask@11) o_4@@2 f_5@@0)))
 :qid |stdinbpl.3631:29|
 :skolemid |277|
 :pattern ( (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| QPMask@10) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| QPMask@11) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_47114_3805) ) (!  (=> (not (= f_5@@1 Ref__Integer_value)) (= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@10) o_4@@3 f_5@@1) (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@11) o_4@@3 f_5@@1)))
 :qid |stdinbpl.3631:29|
 :skolemid |277|
 :pattern ( (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@10) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@11) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_29264_115514) ) (!  (=> true (= (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| QPMask@10) o_4@@4 f_5@@2) (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| QPMask@11) o_4@@4 f_5@@2)))
 :qid |stdinbpl.3631:29|
 :skolemid |277|
 :pattern ( (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| QPMask@10) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| QPMask@11) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_29264_115647) ) (!  (=> true (= (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| QPMask@10) o_4@@5 f_5@@3) (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| QPMask@11) o_4@@5 f_5@@3)))
 :qid |stdinbpl.3631:29|
 :skolemid |277|
 :pattern ( (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| QPMask@10) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| QPMask@11) o_4@@5 f_5@@3))
))) (state PostHeap@0 QPMask@11)) (and (state PostHeap@0 QPMask@11) (state PostHeap@0 QPMask@11))) (and (and (=> (= (ControlFlow 0 161) 160) anon104_Else_correct) (=> (= (ControlFlow 0 161) 143) anon105_Then_correct)) (=> (= (ControlFlow 0 161) 127) anon105_Else_correct))))))))
(let ((anon38_correct true))
(let ((anon103_Else_correct  (=> (and (not (|Seq#Contains_3683| (|Seq#Range| 0 P_1) i1_11)) (= (ControlFlow 0 125) 121)) anon38_correct)))
(let ((anon103_Then_correct  (=> (|Seq#Contains_3683| (|Seq#Range| 0 P_1) i1_11) (and (=> (= (ControlFlow 0 122) (- 0 124)) (>= i1_11 0)) (=> (>= i1_11 0) (and (=> (= (ControlFlow 0 122) (- 0 123)) (< i1_11 (|Seq#Length_29303| hist))) (=> (< i1_11 (|Seq#Length_29303| hist)) (=> (= (ControlFlow 0 122) 121) anon38_correct))))))))
(let ((anon99_Else_correct  (and (=> (= (ControlFlow 0 163) (- 0 165)) (forall ((j1_3 Int) (j1_3_1 Int) ) (!  (=> (and (and (and (and (not (= j1_3 j1_3_1)) (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) j1_3) (< (mod j1_3 step@@9) N))) (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) j1_3_1) (< (mod j1_3_1 step@@9) N))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_29303| matrix j1_3) (|Seq#Index_29303| matrix j1_3_1))))
 :qid |stdinbpl.3553:15|
 :skolemid |265|
))) (=> (forall ((j1_3@@0 Int) (j1_3_1@@0 Int) ) (!  (=> (and (and (and (and (not (= j1_3@@0 j1_3_1@@0)) (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) j1_3@@0) (< (mod j1_3@@0 step@@9) N))) (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) j1_3_1@@0) (< (mod j1_3_1@@0 step@@9) N))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_29303| matrix j1_3@@0) (|Seq#Index_29303| matrix j1_3_1@@0))))
 :qid |stdinbpl.3553:15|
 :skolemid |265|
)) (=> (and (forall ((j1_3@@1 Int) ) (!  (=> (and (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) j1_3@@1) (< (mod j1_3@@1 step@@9) N)) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange24 (|Seq#Index_29303| matrix j1_3@@1)) (= (invRecv24 (|Seq#Index_29303| matrix j1_3@@1)) j1_3@@1)))
 :qid |stdinbpl.3559:22|
 :skolemid |266|
 :pattern ( (|Seq#Index_29303| matrix j1_3@@1))
 :pattern ( (|Seq#Index_29303| matrix j1_3@@1))
)) (forall ((o_4@@6 T@Ref) ) (!  (=> (and (and (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) (invRecv24 o_4@@6)) (< (mod (invRecv24 o_4@@6) step@@9) N)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange24 o_4@@6)) (= (|Seq#Index_29303| matrix (invRecv24 o_4@@6)) o_4@@6))
 :qid |stdinbpl.3563:22|
 :skolemid |267|
 :pattern ( (invRecv24 o_4@@6))
))) (and (=> (= (ControlFlow 0 163) (- 0 164)) (forall ((j1_3@@2 Int) ) (!  (=> (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) j1_3@@2) (< (mod j1_3@@2 step@@9) N)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3569:15|
 :skolemid |268|
 :pattern ( (|Seq#Index_29303| matrix j1_3@@2))
 :pattern ( (|Seq#Index_29303| matrix j1_3@@2))
))) (=> (forall ((j1_3@@3 Int) ) (!  (=> (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) j1_3@@3) (< (mod j1_3@@3 step@@9) N)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3569:15|
 :skolemid |268|
 :pattern ( (|Seq#Index_29303| matrix j1_3@@3))
 :pattern ( (|Seq#Index_29303| matrix j1_3@@3))
)) (=> (and (forall ((j1_3@@4 Int) ) (!  (=> (and (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) j1_3@@4) (< (mod j1_3@@4 step@@9) N)) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= (|Seq#Index_29303| matrix j1_3@@4) null)))
 :qid |stdinbpl.3575:22|
 :skolemid |269|
 :pattern ( (|Seq#Index_29303| matrix j1_3@@4))
 :pattern ( (|Seq#Index_29303| matrix j1_3@@4))
)) (forall ((o_4@@7 T@Ref) ) (!  (and (=> (and (and (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) (invRecv24 o_4@@7)) (< (mod (invRecv24 o_4@@7) step@@9) N)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange24 o_4@@7)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (|Seq#Index_29303| matrix (invRecv24 o_4@@7)) o_4@@7)) (= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@10) o_4@@7 Ref__Integer_value) (+ (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| ZeroMask) o_4@@7 Ref__Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) (invRecv24 o_4@@7)) (< (mod (invRecv24 o_4@@7) step@@9) N)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange24 o_4@@7))) (= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@10) o_4@@7 Ref__Integer_value) (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| ZeroMask) o_4@@7 Ref__Integer_value))))
 :qid |stdinbpl.3581:22|
 :skolemid |270|
 :pattern ( (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@10) o_4@@7 Ref__Integer_value))
))) (=> (and (and (and (and (and (forall ((o_4@@8 T@Ref) (f_5@@4 T@Field_41028_53) ) (!  (=> true (= (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| ZeroMask) o_4@@8 f_5@@4) (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| QPMask@10) o_4@@8 f_5@@4)))
 :qid |stdinbpl.3585:29|
 :skolemid |271|
 :pattern ( (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| ZeroMask) o_4@@8 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| QPMask@10) o_4@@8 f_5@@4))
)) (forall ((o_4@@9 T@Ref) (f_5@@5 T@Field_41041_41042) ) (!  (=> true (= (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| ZeroMask) o_4@@9 f_5@@5) (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| QPMask@10) o_4@@9 f_5@@5)))
 :qid |stdinbpl.3585:29|
 :skolemid |271|
 :pattern ( (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| ZeroMask) o_4@@9 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| QPMask@10) o_4@@9 f_5@@5))
))) (forall ((o_4@@10 T@Ref) (f_5@@6 T@Field_47114_3805) ) (!  (=> (not (= f_5@@6 Ref__Integer_value)) (= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| ZeroMask) o_4@@10 f_5@@6) (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@10) o_4@@10 f_5@@6)))
 :qid |stdinbpl.3585:29|
 :skolemid |271|
 :pattern ( (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| ZeroMask) o_4@@10 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@10) o_4@@10 f_5@@6))
))) (forall ((o_4@@11 T@Ref) (f_5@@7 T@Field_29264_115514) ) (!  (=> true (= (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| ZeroMask) o_4@@11 f_5@@7) (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| QPMask@10) o_4@@11 f_5@@7)))
 :qid |stdinbpl.3585:29|
 :skolemid |271|
 :pattern ( (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| ZeroMask) o_4@@11 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| QPMask@10) o_4@@11 f_5@@7))
))) (forall ((o_4@@12 T@Ref) (f_5@@8 T@Field_29264_115647) ) (!  (=> true (= (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| ZeroMask) o_4@@12 f_5@@8) (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| QPMask@10) o_4@@12 f_5@@8)))
 :qid |stdinbpl.3585:29|
 :skolemid |271|
 :pattern ( (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| ZeroMask) o_4@@12 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| QPMask@10) o_4@@12 f_5@@8))
))) (and (state PostHeap@0 QPMask@10) (state PostHeap@0 QPMask@10))) (and (and (=> (= (ControlFlow 0 163) 161) anon102_Else_correct) (=> (= (ControlFlow 0 163) 122) anon103_Then_correct)) (=> (= (ControlFlow 0 163) 125) anon103_Else_correct)))))))))))
(let ((anon34_correct true))
(let ((anon101_Else_correct  (=> (and (not (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) j1_14) (< (mod j1_14 step@@9) N))) (= (ControlFlow 0 117) 113)) anon34_correct)))
(let ((anon101_Then_correct  (=> (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) j1_14) (< (mod j1_14 step@@9) N)) (and (=> (= (ControlFlow 0 114) (- 0 116)) (>= j1_14 0)) (=> (>= j1_14 0) (and (=> (= (ControlFlow 0 114) (- 0 115)) (< j1_14 (|Seq#Length_29303| matrix))) (=> (< j1_14 (|Seq#Length_29303| matrix)) (=> (= (ControlFlow 0 114) 113) anon34_correct))))))))
(let ((anon100_Else_correct  (=> (not (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) j1_14)) (and (=> (= (ControlFlow 0 120) 114) anon101_Then_correct) (=> (= (ControlFlow 0 120) 117) anon101_Else_correct)))))
(let ((anon100_Then_correct  (=> (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) j1_14) (and (=> (= (ControlFlow 0 118) (- 0 119)) (not (= step@@9 0))) (=> (not (= step@@9 0)) (and (=> (= (ControlFlow 0 118) 114) anon101_Then_correct) (=> (= (ControlFlow 0 118) 117) anon101_Else_correct)))))))
(let ((anon98_Then_correct  (=> (and (and (and (state PostHeap@0 ZeroMask) (> M 0)) (and (> N 0) (>= step@@9 N))) (and (and (> P_1 0) (state PostHeap@0 ZeroMask)) (and (<= N step@@9) (state PostHeap@0 ZeroMask)))) (and (and (=> (= (ControlFlow 0 166) 163) anon99_Else_correct) (=> (= (ControlFlow 0 166) 118) anon100_Then_correct)) (=> (= (ControlFlow 0 166) 120) anon100_Else_correct)))))
(let ((anon82_correct true))
(let ((anon125_Else_correct  (=> (and (not (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) k_fresh_rw_0_4) (< (mod k_fresh_rw_0_4 step@@9) N))) (= (ControlFlow 0 72) 69)) anon82_correct)))
(let ((anon125_Then_correct  (=> (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) k_fresh_rw_0_4) (< (mod k_fresh_rw_0_4 step@@9) N)) (and (=> (= (ControlFlow 0 70) (- 0 71)) (= (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| ExhaleHeap@1) (|Seq#Index_29303| matrix k_fresh_rw_0_4) Ref__Integer_value) (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@41) (|Seq#Index_29303| matrix k_fresh_rw_0_4) Ref__Integer_value))) (=> (= (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| ExhaleHeap@1) (|Seq#Index_29303| matrix k_fresh_rw_0_4) Ref__Integer_value) (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@41) (|Seq#Index_29303| matrix k_fresh_rw_0_4) Ref__Integer_value)) (=> (= (ControlFlow 0 70) 69) anon82_correct))))))
(let ((anon124_Else_correct true))
(let ((anon122_Else_correct  (=> (forall ((k_9_1 Int) ) (!  (=> (|Seq#Contains_3683| (|Seq#Range| 0 P_1) k_9_1) (= (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| ExhaleHeap@1) (|Seq#Index_29303| hist k_9_1) Ref__Integer_value) (count_square ExhaleHeap@1 0 0 N step@@9 0 (* M step@@9) matrix k_9_1)))
 :qid |stdinbpl.4234:20|
 :skolemid |347|
 :pattern ( (|Seq#ContainsTrigger_3683| (|Seq#Range| 0 P_1) k_9_1))
 :pattern ( (|Seq#Contains_3683| (|Seq#Range| 0 P_1) k_9_1))
 :pattern ( (|Seq#Index_29303| hist k_9_1))
)) (and (=> (= (ControlFlow 0 73) (- 0 74)) (<= N step@@9)) (=> (<= N step@@9) (and (and (=> (= (ControlFlow 0 73) 68) anon124_Else_correct) (=> (= (ControlFlow 0 73) 70) anon125_Then_correct)) (=> (= (ControlFlow 0 73) 72) anon125_Else_correct)))))))
(let ((anon78_correct true))
(let ((anon123_Else_correct  (=> (and (not (|Seq#Contains_3683| (|Seq#Range| 0 P_1) k_8)) (= (ControlFlow 0 67) 64)) anon78_correct)))
(let ((anon123_Then_correct  (=> (|Seq#Contains_3683| (|Seq#Range| 0 P_1) k_8) (and (=> (= (ControlFlow 0 65) (- 0 66)) (= (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| ExhaleHeap@1) (|Seq#Index_29303| hist k_8) Ref__Integer_value) (count_square ExhaleHeap@1 0 0 N step@@9 0 (* M step@@9) matrix k_8))) (=> (= (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| ExhaleHeap@1) (|Seq#Index_29303| hist k_8) Ref__Integer_value) (count_square ExhaleHeap@1 0 0 N step@@9 0 (* M step@@9) matrix k_8)) (=> (= (ControlFlow 0 65) 64) anon78_correct))))))
(let ((anon120_Else_correct  (=> (forall ((k_21_1_1 Int) (j_16_1 Int) ) (!  (=> (and (>= k_21_1_1 0) (and (< k_21_1_1 (|Seq#Length_29303| hist)) (and (>= j_16_1 0) (and (< j_16_1 (|Seq#Length_29303| hist)) (not (= k_21_1_1 j_16_1)))))) (not (= (|Seq#Index_29303| hist k_21_1_1) (|Seq#Index_29303| hist j_16_1))))
 :qid |stdinbpl.4026:22|
 :skolemid |318|
 :pattern ( (|Seq#Index_29303| hist k_21_1_1) (|Seq#Index_29303| hist j_16_1))
)) (=> (and (IdenticalOnKnownLocations ExhaleHeap@0 ExhaleHeap@1 QPMask@5) (> M 0)) (=> (and (and (> N 0) (>= step@@9 N)) (and (> P_1 0) (<= N step@@9))) (and (=> (= (ControlFlow 0 75) (- 0 88)) (forall ((j_17_1 Int) (j_17_2 Int) ) (!  (=> (and (and (and (and (not (= j_17_1 j_17_2)) (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) j_17_1) (< (mod j_17_1 step@@9) N))) (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) j_17_2) (< (mod j_17_2 step@@9) N))) (< NoPerm (/ (to_real 1) (to_real 4)))) (< NoPerm (/ (to_real 1) (to_real 4)))) (not (= (|Seq#Index_29303| matrix j_17_1) (|Seq#Index_29303| matrix j_17_2))))
 :qid |stdinbpl.4043:17|
 :skolemid |319|
))) (=> (forall ((j_17_1@@0 Int) (j_17_2@@0 Int) ) (!  (=> (and (and (and (and (not (= j_17_1@@0 j_17_2@@0)) (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) j_17_1@@0) (< (mod j_17_1@@0 step@@9) N))) (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) j_17_2@@0) (< (mod j_17_2@@0 step@@9) N))) (< NoPerm (/ (to_real 1) (to_real 4)))) (< NoPerm (/ (to_real 1) (to_real 4)))) (not (= (|Seq#Index_29303| matrix j_17_1@@0) (|Seq#Index_29303| matrix j_17_2@@0))))
 :qid |stdinbpl.4043:17|
 :skolemid |319|
)) (=> (and (forall ((j_17_1@@1 Int) ) (!  (=> (and (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) j_17_1@@1) (< (mod j_17_1@@1 step@@9) N)) (< NoPerm (/ (to_real 1) (to_real 4)))) (and (qpRange33 (|Seq#Index_29303| matrix j_17_1@@1)) (= (invRecv33 (|Seq#Index_29303| matrix j_17_1@@1)) j_17_1@@1)))
 :qid |stdinbpl.4049:24|
 :skolemid |320|
 :pattern ( (|Seq#Index_29303| matrix j_17_1@@1))
 :pattern ( (|Seq#Index_29303| matrix j_17_1@@1))
)) (forall ((o_4@@13 T@Ref) ) (!  (=> (and (and (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) (invRecv33 o_4@@13)) (< (mod (invRecv33 o_4@@13) step@@9) N)) (< NoPerm (/ (to_real 1) (to_real 4)))) (qpRange33 o_4@@13)) (= (|Seq#Index_29303| matrix (invRecv33 o_4@@13)) o_4@@13))
 :qid |stdinbpl.4053:24|
 :skolemid |321|
 :pattern ( (invRecv33 o_4@@13))
))) (and (=> (= (ControlFlow 0 75) (- 0 87)) (forall ((j_17_1@@2 Int) ) (!  (=> (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) j_17_1@@2) (< (mod j_17_1@@2 step@@9) N)) (>= (/ (to_real 1) (to_real 4)) NoPerm))
 :qid |stdinbpl.4059:17|
 :skolemid |322|
 :pattern ( (|Seq#Index_29303| matrix j_17_1@@2))
 :pattern ( (|Seq#Index_29303| matrix j_17_1@@2))
))) (=> (forall ((j_17_1@@3 Int) ) (!  (=> (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) j_17_1@@3) (< (mod j_17_1@@3 step@@9) N)) (>= (/ (to_real 1) (to_real 4)) NoPerm))
 :qid |stdinbpl.4059:17|
 :skolemid |322|
 :pattern ( (|Seq#Index_29303| matrix j_17_1@@3))
 :pattern ( (|Seq#Index_29303| matrix j_17_1@@3))
)) (=> (and (forall ((j_17_1@@4 Int) ) (!  (=> (and (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) j_17_1@@4) (< (mod j_17_1@@4 step@@9) N)) (> (/ (to_real 1) (to_real 4)) NoPerm)) (not (= (|Seq#Index_29303| matrix j_17_1@@4) null)))
 :qid |stdinbpl.4065:24|
 :skolemid |323|
 :pattern ( (|Seq#Index_29303| matrix j_17_1@@4))
 :pattern ( (|Seq#Index_29303| matrix j_17_1@@4))
)) (forall ((o_4@@14 T@Ref) ) (!  (and (=> (and (and (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) (invRecv33 o_4@@14)) (< (mod (invRecv33 o_4@@14) step@@9) N)) (< NoPerm (/ (to_real 1) (to_real 4)))) (qpRange33 o_4@@14)) (and (=> (< NoPerm (/ (to_real 1) (to_real 4))) (= (|Seq#Index_29303| matrix (invRecv33 o_4@@14)) o_4@@14)) (= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@6) o_4@@14 Ref__Integer_value) (+ (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@5) o_4@@14 Ref__Integer_value) (/ (to_real 1) (to_real 4)))))) (=> (not (and (and (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) (invRecv33 o_4@@14)) (< (mod (invRecv33 o_4@@14) step@@9) N)) (< NoPerm (/ (to_real 1) (to_real 4)))) (qpRange33 o_4@@14))) (= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@6) o_4@@14 Ref__Integer_value) (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@5) o_4@@14 Ref__Integer_value))))
 :qid |stdinbpl.4071:24|
 :skolemid |324|
 :pattern ( (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@6) o_4@@14 Ref__Integer_value))
))) (=> (and (and (and (and (and (forall ((o_4@@15 T@Ref) (f_5@@9 T@Field_41028_53) ) (!  (=> true (= (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| QPMask@5) o_4@@15 f_5@@9) (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| QPMask@6) o_4@@15 f_5@@9)))
 :qid |stdinbpl.4075:31|
 :skolemid |325|
 :pattern ( (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| QPMask@5) o_4@@15 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| QPMask@6) o_4@@15 f_5@@9))
)) (forall ((o_4@@16 T@Ref) (f_5@@10 T@Field_41041_41042) ) (!  (=> true (= (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| QPMask@5) o_4@@16 f_5@@10) (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| QPMask@6) o_4@@16 f_5@@10)))
 :qid |stdinbpl.4075:31|
 :skolemid |325|
 :pattern ( (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| QPMask@5) o_4@@16 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| QPMask@6) o_4@@16 f_5@@10))
))) (forall ((o_4@@17 T@Ref) (f_5@@11 T@Field_47114_3805) ) (!  (=> (not (= f_5@@11 Ref__Integer_value)) (= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@5) o_4@@17 f_5@@11) (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@6) o_4@@17 f_5@@11)))
 :qid |stdinbpl.4075:31|
 :skolemid |325|
 :pattern ( (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@5) o_4@@17 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@6) o_4@@17 f_5@@11))
))) (forall ((o_4@@18 T@Ref) (f_5@@12 T@Field_29264_115514) ) (!  (=> true (= (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| QPMask@5) o_4@@18 f_5@@12) (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| QPMask@6) o_4@@18 f_5@@12)))
 :qid |stdinbpl.4075:31|
 :skolemid |325|
 :pattern ( (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| QPMask@5) o_4@@18 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| QPMask@6) o_4@@18 f_5@@12))
))) (forall ((o_4@@19 T@Ref) (f_5@@13 T@Field_29264_115647) ) (!  (=> true (= (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| QPMask@5) o_4@@19 f_5@@13) (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| QPMask@6) o_4@@19 f_5@@13)))
 :qid |stdinbpl.4075:31|
 :skolemid |325|
 :pattern ( (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| QPMask@5) o_4@@19 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| QPMask@6) o_4@@19 f_5@@13))
))) (state ExhaleHeap@1 QPMask@6)) (and (=> (= (ControlFlow 0 75) (- 0 86)) (forall ((k_22_2 Int) (k_22_3 Int) ) (!  (=> (and (and (and (and (not (= k_22_2 k_22_3)) (|Seq#Contains_3683| (|Seq#Range| 0 P_1) k_22_2)) (|Seq#Contains_3683| (|Seq#Range| 0 P_1) k_22_3)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_29303| hist k_22_2) (|Seq#Index_29303| hist k_22_3))))
 :qid |stdinbpl.4083:17|
 :skolemid |326|
))) (=> (forall ((k_22_2@@0 Int) (k_22_3@@0 Int) ) (!  (=> (and (and (and (and (not (= k_22_2@@0 k_22_3@@0)) (|Seq#Contains_3683| (|Seq#Range| 0 P_1) k_22_2@@0)) (|Seq#Contains_3683| (|Seq#Range| 0 P_1) k_22_3@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_29303| hist k_22_2@@0) (|Seq#Index_29303| hist k_22_3@@0))))
 :qid |stdinbpl.4083:17|
 :skolemid |326|
)) (=> (and (and (forall ((k_22_2@@1 Int) ) (!  (=> (and (|Seq#Contains_3683| (|Seq#Range| 0 P_1) k_22_2@@1) (< NoPerm FullPerm)) (and (qpRange34 (|Seq#Index_29303| hist k_22_2@@1)) (= (invRecv34 (|Seq#Index_29303| hist k_22_2@@1)) k_22_2@@1)))
 :qid |stdinbpl.4089:24|
 :skolemid |327|
 :pattern ( (|Seq#Index_29303| hist k_22_2@@1))
 :pattern ( (|Seq#ContainsTrigger_3683| (|Seq#Range| 0 P_1) k_22_2@@1))
 :pattern ( (|Seq#Contains_3683| (|Seq#Range| 0 P_1) k_22_2@@1))
 :pattern ( (|Seq#Index_29303| hist k_22_2@@1))
)) (forall ((o_4@@20 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3683| (|Seq#Range| 0 P_1) (invRecv34 o_4@@20)) (< NoPerm FullPerm)) (qpRange34 o_4@@20)) (= (|Seq#Index_29303| hist (invRecv34 o_4@@20)) o_4@@20))
 :qid |stdinbpl.4093:24|
 :skolemid |328|
 :pattern ( (invRecv34 o_4@@20))
))) (and (forall ((k_22_2@@2 Int) ) (!  (=> (|Seq#Contains_3683| (|Seq#Range| 0 P_1) k_22_2@@2) (not (= (|Seq#Index_29303| hist k_22_2@@2) null)))
 :qid |stdinbpl.4099:24|
 :skolemid |329|
 :pattern ( (|Seq#Index_29303| hist k_22_2@@2))
 :pattern ( (|Seq#ContainsTrigger_3683| (|Seq#Range| 0 P_1) k_22_2@@2))
 :pattern ( (|Seq#Contains_3683| (|Seq#Range| 0 P_1) k_22_2@@2))
 :pattern ( (|Seq#Index_29303| hist k_22_2@@2))
)) (forall ((o_4@@21 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3683| (|Seq#Range| 0 P_1) (invRecv34 o_4@@21)) (< NoPerm FullPerm)) (qpRange34 o_4@@21)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_29303| hist (invRecv34 o_4@@21)) o_4@@21)) (= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@7) o_4@@21 Ref__Integer_value) (+ (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@6) o_4@@21 Ref__Integer_value) FullPerm)))) (=> (not (and (and (|Seq#Contains_3683| (|Seq#Range| 0 P_1) (invRecv34 o_4@@21)) (< NoPerm FullPerm)) (qpRange34 o_4@@21))) (= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@7) o_4@@21 Ref__Integer_value) (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@6) o_4@@21 Ref__Integer_value))))
 :qid |stdinbpl.4105:24|
 :skolemid |330|
 :pattern ( (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@7) o_4@@21 Ref__Integer_value))
)))) (=> (and (and (and (and (and (and (and (forall ((o_4@@22 T@Ref) (f_5@@14 T@Field_41028_53) ) (!  (=> true (= (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| QPMask@6) o_4@@22 f_5@@14) (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| QPMask@7) o_4@@22 f_5@@14)))
 :qid |stdinbpl.4109:31|
 :skolemid |331|
 :pattern ( (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| QPMask@6) o_4@@22 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| QPMask@7) o_4@@22 f_5@@14))
)) (forall ((o_4@@23 T@Ref) (f_5@@15 T@Field_41041_41042) ) (!  (=> true (= (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| QPMask@6) o_4@@23 f_5@@15) (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| QPMask@7) o_4@@23 f_5@@15)))
 :qid |stdinbpl.4109:31|
 :skolemid |331|
 :pattern ( (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| QPMask@6) o_4@@23 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| QPMask@7) o_4@@23 f_5@@15))
))) (forall ((o_4@@24 T@Ref) (f_5@@16 T@Field_47114_3805) ) (!  (=> (not (= f_5@@16 Ref__Integer_value)) (= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@6) o_4@@24 f_5@@16) (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@7) o_4@@24 f_5@@16)))
 :qid |stdinbpl.4109:31|
 :skolemid |331|
 :pattern ( (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@6) o_4@@24 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@7) o_4@@24 f_5@@16))
))) (forall ((o_4@@25 T@Ref) (f_5@@17 T@Field_29264_115514) ) (!  (=> true (= (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| QPMask@6) o_4@@25 f_5@@17) (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| QPMask@7) o_4@@25 f_5@@17)))
 :qid |stdinbpl.4109:31|
 :skolemid |331|
 :pattern ( (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| QPMask@6) o_4@@25 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| QPMask@7) o_4@@25 f_5@@17))
))) (forall ((o_4@@26 T@Ref) (f_5@@18 T@Field_29264_115647) ) (!  (=> true (= (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| QPMask@6) o_4@@26 f_5@@18) (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| QPMask@7) o_4@@26 f_5@@18)))
 :qid |stdinbpl.4109:31|
 :skolemid |331|
 :pattern ( (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| QPMask@6) o_4@@26 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| QPMask@7) o_4@@26 f_5@@18))
))) (state ExhaleHeap@1 QPMask@7)) (and (state ExhaleHeap@1 QPMask@7) (forall ((k_23_1 Int) ) (!  (=> (|Seq#Contains_3683| (|Seq#Range| 0 P_1) k_23_1) (= (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| ExhaleHeap@1) (|Seq#Index_29303| hist k_23_1) Ref__Integer_value) (+ (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| ExhaleHeap@0) (|Seq#Index_29303| hist k_23_1) Ref__Integer_value) (count_square ExhaleHeap@1 0 0 N step@@9 0 (* M step@@9) matrix k_23_1))))
 :qid |stdinbpl.4116:22|
 :skolemid |332|
 :pattern ( (|Seq#ContainsTrigger_3683| (|Seq#Range| 0 P_1) k_23_1))
 :pattern ( (|Seq#Contains_3683| (|Seq#Range| 0 P_1) k_23_1))
 :pattern ( (|Seq#Index_29303| hist k_23_1))
)))) (and (and (<= N step@@9) (forall ((k_fresh_rw_0_8 Int) ) (!  (=> (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) k_fresh_rw_0_8) (< (mod k_fresh_rw_0_8 step@@9) N)) (= (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| ExhaleHeap@1) (|Seq#Index_29303| matrix k_fresh_rw_0_8) Ref__Integer_value) (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| ExhaleHeap@0) (|Seq#Index_29303| matrix k_fresh_rw_0_8) Ref__Integer_value)))
 :qid |stdinbpl.4121:22|
 :skolemid |333|
 :pattern ( (|Seq#Index_29303| matrix k_fresh_rw_0_8))
))) (and (state ExhaleHeap@1 QPMask@7) (state ExhaleHeap@1 QPMask@7)))) (and (=> (= (ControlFlow 0 75) (- 0 85)) (> M 0)) (=> (> M 0) (and (=> (= (ControlFlow 0 75) (- 0 84)) (> N 0)) (=> (> N 0) (and (=> (= (ControlFlow 0 75) (- 0 83)) (>= step@@9 N)) (=> (>= step@@9 N) (and (=> (= (ControlFlow 0 75) (- 0 82)) (> P_1 0)) (=> (> P_1 0) (and (=> (= (ControlFlow 0 75) (- 0 81)) (<= N step@@9)) (=> (<= N step@@9) (and (=> (= (ControlFlow 0 75) (- 0 80)) (forall ((j1_4_1 Int) ) (!  (=> (and (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) j1_4_1) (< (mod j1_4_1 step@@9) N)) (dummyFunction_4112 (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| ExhaleHeap@1) (|Seq#Index_29303| matrix j1_4_1) Ref__Integer_value))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4145:17|
 :skolemid |334|
 :pattern ( (|Seq#Index_29303| matrix j1_4_1))
 :pattern ( (|Seq#Index_29303| matrix j1_4_1))
))) (=> (forall ((j1_4_1@@0 Int) ) (!  (=> (and (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) j1_4_1@@0) (< (mod j1_4_1@@0 step@@9) N)) (dummyFunction_4112 (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| ExhaleHeap@1) (|Seq#Index_29303| matrix j1_4_1@@0) Ref__Integer_value))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4145:17|
 :skolemid |334|
 :pattern ( (|Seq#Index_29303| matrix j1_4_1@@0))
 :pattern ( (|Seq#Index_29303| matrix j1_4_1@@0))
)) (and (=> (= (ControlFlow 0 75) (- 0 79)) (forall ((j1_4_1@@1 Int) (j1_4_2 Int) ) (!  (=> (and (and (and (and (not (= j1_4_1@@1 j1_4_2)) (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) j1_4_1@@1) (< (mod j1_4_1@@1 step@@9) N))) (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) j1_4_2) (< (mod j1_4_2 step@@9) N))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_29303| matrix j1_4_1@@1) (|Seq#Index_29303| matrix j1_4_2))))
 :qid |stdinbpl.4152:17|
 :skolemid |335|
 :pattern ( (neverTriggered27 j1_4_1@@1) (neverTriggered27 j1_4_2))
))) (=> (forall ((j1_4_1@@2 Int) (j1_4_2@@0 Int) ) (!  (=> (and (and (and (and (not (= j1_4_1@@2 j1_4_2@@0)) (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) j1_4_1@@2) (< (mod j1_4_1@@2 step@@9) N))) (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) j1_4_2@@0) (< (mod j1_4_2@@0 step@@9) N))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_29303| matrix j1_4_1@@2) (|Seq#Index_29303| matrix j1_4_2@@0))))
 :qid |stdinbpl.4152:17|
 :skolemid |335|
 :pattern ( (neverTriggered27 j1_4_1@@2) (neverTriggered27 j1_4_2@@0))
)) (and (=> (= (ControlFlow 0 75) (- 0 78)) (forall ((j1_4_1@@3 Int) ) (!  (=> (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) j1_4_1@@3) (< (mod j1_4_1@@3 step@@9) N)) (>= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@7) (|Seq#Index_29303| matrix j1_4_1@@3) Ref__Integer_value) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.4159:17|
 :skolemid |336|
 :pattern ( (|Seq#Index_29303| matrix j1_4_1@@3))
 :pattern ( (|Seq#Index_29303| matrix j1_4_1@@3))
))) (=> (forall ((j1_4_1@@4 Int) ) (!  (=> (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) j1_4_1@@4) (< (mod j1_4_1@@4 step@@9) N)) (>= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@7) (|Seq#Index_29303| matrix j1_4_1@@4) Ref__Integer_value) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.4159:17|
 :skolemid |336|
 :pattern ( (|Seq#Index_29303| matrix j1_4_1@@4))
 :pattern ( (|Seq#Index_29303| matrix j1_4_1@@4))
)) (=> (forall ((j1_4_1@@5 Int) ) (!  (=> (and (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) j1_4_1@@5) (< (mod j1_4_1@@5 step@@9) N)) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange27 (|Seq#Index_29303| matrix j1_4_1@@5)) (= (invRecv27 (|Seq#Index_29303| matrix j1_4_1@@5)) j1_4_1@@5)))
 :qid |stdinbpl.4165:22|
 :skolemid |337|
 :pattern ( (|Seq#Index_29303| matrix j1_4_1@@5))
 :pattern ( (|Seq#Index_29303| matrix j1_4_1@@5))
)) (=> (and (forall ((o_4@@27 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) (invRecv27 o_4@@27)) (< (mod (invRecv27 o_4@@27) step@@9) N)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange27 o_4@@27))) (= (|Seq#Index_29303| matrix (invRecv27 o_4@@27)) o_4@@27))
 :qid |stdinbpl.4169:22|
 :skolemid |338|
 :pattern ( (invRecv27 o_4@@27))
)) (forall ((o_4@@28 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) (invRecv27 o_4@@28)) (< (mod (invRecv27 o_4@@28) step@@9) N)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange27 o_4@@28))) (and (= (|Seq#Index_29303| matrix (invRecv27 o_4@@28)) o_4@@28) (= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@8) o_4@@28 Ref__Integer_value) (- (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@7) o_4@@28 Ref__Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) (invRecv27 o_4@@28)) (< (mod (invRecv27 o_4@@28) step@@9) N)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange27 o_4@@28)))) (= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@8) o_4@@28 Ref__Integer_value) (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@7) o_4@@28 Ref__Integer_value))))
 :qid |stdinbpl.4175:22|
 :skolemid |339|
 :pattern ( (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@8) o_4@@28 Ref__Integer_value))
))) (=> (and (and (and (and (forall ((o_4@@29 T@Ref) (f_5@@19 T@Field_41028_53) ) (!  (=> true (= (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| QPMask@7) o_4@@29 f_5@@19) (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| QPMask@8) o_4@@29 f_5@@19)))
 :qid |stdinbpl.4181:29|
 :skolemid |340|
 :pattern ( (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| QPMask@8) o_4@@29 f_5@@19))
)) (forall ((o_4@@30 T@Ref) (f_5@@20 T@Field_41041_41042) ) (!  (=> true (= (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| QPMask@7) o_4@@30 f_5@@20) (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| QPMask@8) o_4@@30 f_5@@20)))
 :qid |stdinbpl.4181:29|
 :skolemid |340|
 :pattern ( (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| QPMask@8) o_4@@30 f_5@@20))
))) (forall ((o_4@@31 T@Ref) (f_5@@21 T@Field_47114_3805) ) (!  (=> (not (= f_5@@21 Ref__Integer_value)) (= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@7) o_4@@31 f_5@@21) (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@8) o_4@@31 f_5@@21)))
 :qid |stdinbpl.4181:29|
 :skolemid |340|
 :pattern ( (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@8) o_4@@31 f_5@@21))
))) (forall ((o_4@@32 T@Ref) (f_5@@22 T@Field_29264_115514) ) (!  (=> true (= (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| QPMask@7) o_4@@32 f_5@@22) (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| QPMask@8) o_4@@32 f_5@@22)))
 :qid |stdinbpl.4181:29|
 :skolemid |340|
 :pattern ( (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| QPMask@8) o_4@@32 f_5@@22))
))) (forall ((o_4@@33 T@Ref) (f_5@@23 T@Field_29264_115647) ) (!  (=> true (= (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| QPMask@7) o_4@@33 f_5@@23) (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| QPMask@8) o_4@@33 f_5@@23)))
 :qid |stdinbpl.4181:29|
 :skolemid |340|
 :pattern ( (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| QPMask@8) o_4@@33 f_5@@23))
))) (and (=> (= (ControlFlow 0 75) (- 0 77)) (forall ((i1_4_1 Int) (i1_4_2 Int) ) (!  (=> (and (and (and (and (not (= i1_4_1 i1_4_2)) (|Seq#Contains_3683| (|Seq#Range| 0 P_1) i1_4_1)) (|Seq#Contains_3683| (|Seq#Range| 0 P_1) i1_4_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_29303| hist i1_4_1) (|Seq#Index_29303| hist i1_4_2))))
 :qid |stdinbpl.4193:17|
 :skolemid |341|
 :pattern ( (neverTriggered28 i1_4_1) (neverTriggered28 i1_4_2))
))) (=> (forall ((i1_4_1@@0 Int) (i1_4_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i1_4_1@@0 i1_4_2@@0)) (|Seq#Contains_3683| (|Seq#Range| 0 P_1) i1_4_1@@0)) (|Seq#Contains_3683| (|Seq#Range| 0 P_1) i1_4_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_29303| hist i1_4_1@@0) (|Seq#Index_29303| hist i1_4_2@@0))))
 :qid |stdinbpl.4193:17|
 :skolemid |341|
 :pattern ( (neverTriggered28 i1_4_1@@0) (neverTriggered28 i1_4_2@@0))
)) (and (=> (= (ControlFlow 0 75) (- 0 76)) (forall ((i1_4_1@@1 Int) ) (!  (=> (|Seq#Contains_3683| (|Seq#Range| 0 P_1) i1_4_1@@1) (>= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@8) (|Seq#Index_29303| hist i1_4_1@@1) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.4200:17|
 :skolemid |342|
 :pattern ( (|Seq#Index_29303| hist i1_4_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3683| (|Seq#Range| 0 P_1) i1_4_1@@1))
 :pattern ( (|Seq#Contains_3683| (|Seq#Range| 0 P_1) i1_4_1@@1))
 :pattern ( (|Seq#Index_29303| hist i1_4_1@@1))
))) (=> (forall ((i1_4_1@@2 Int) ) (!  (=> (|Seq#Contains_3683| (|Seq#Range| 0 P_1) i1_4_1@@2) (>= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@8) (|Seq#Index_29303| hist i1_4_1@@2) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.4200:17|
 :skolemid |342|
 :pattern ( (|Seq#Index_29303| hist i1_4_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3683| (|Seq#Range| 0 P_1) i1_4_1@@2))
 :pattern ( (|Seq#Contains_3683| (|Seq#Range| 0 P_1) i1_4_1@@2))
 :pattern ( (|Seq#Index_29303| hist i1_4_1@@2))
)) (=> (forall ((i1_4_1@@3 Int) ) (!  (=> (and (|Seq#Contains_3683| (|Seq#Range| 0 P_1) i1_4_1@@3) (< NoPerm FullPerm)) (and (qpRange28 (|Seq#Index_29303| hist i1_4_1@@3)) (= (invRecv28 (|Seq#Index_29303| hist i1_4_1@@3)) i1_4_1@@3)))
 :qid |stdinbpl.4206:22|
 :skolemid |343|
 :pattern ( (|Seq#Index_29303| hist i1_4_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3683| (|Seq#Range| 0 P_1) i1_4_1@@3))
 :pattern ( (|Seq#Contains_3683| (|Seq#Range| 0 P_1) i1_4_1@@3))
 :pattern ( (|Seq#Index_29303| hist i1_4_1@@3))
)) (=> (and (forall ((o_4@@34 T@Ref) ) (!  (=> (and (|Seq#Contains_3683| (|Seq#Range| 0 P_1) (invRecv28 o_4@@34)) (and (< NoPerm FullPerm) (qpRange28 o_4@@34))) (= (|Seq#Index_29303| hist (invRecv28 o_4@@34)) o_4@@34))
 :qid |stdinbpl.4210:22|
 :skolemid |344|
 :pattern ( (invRecv28 o_4@@34))
)) (forall ((o_4@@35 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3683| (|Seq#Range| 0 P_1) (invRecv28 o_4@@35)) (and (< NoPerm FullPerm) (qpRange28 o_4@@35))) (and (= (|Seq#Index_29303| hist (invRecv28 o_4@@35)) o_4@@35) (= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@9) o_4@@35 Ref__Integer_value) (- (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@8) o_4@@35 Ref__Integer_value) FullPerm)))) (=> (not (and (|Seq#Contains_3683| (|Seq#Range| 0 P_1) (invRecv28 o_4@@35)) (and (< NoPerm FullPerm) (qpRange28 o_4@@35)))) (= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@9) o_4@@35 Ref__Integer_value) (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@8) o_4@@35 Ref__Integer_value))))
 :qid |stdinbpl.4216:22|
 :skolemid |345|
 :pattern ( (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@9) o_4@@35 Ref__Integer_value))
))) (=> (and (and (and (and (forall ((o_4@@36 T@Ref) (f_5@@24 T@Field_41028_53) ) (!  (=> true (= (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| QPMask@8) o_4@@36 f_5@@24) (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| QPMask@9) o_4@@36 f_5@@24)))
 :qid |stdinbpl.4222:29|
 :skolemid |346|
 :pattern ( (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| QPMask@9) o_4@@36 f_5@@24))
)) (forall ((o_4@@37 T@Ref) (f_5@@25 T@Field_41041_41042) ) (!  (=> true (= (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| QPMask@8) o_4@@37 f_5@@25) (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| QPMask@9) o_4@@37 f_5@@25)))
 :qid |stdinbpl.4222:29|
 :skolemid |346|
 :pattern ( (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| QPMask@9) o_4@@37 f_5@@25))
))) (forall ((o_4@@38 T@Ref) (f_5@@26 T@Field_47114_3805) ) (!  (=> (not (= f_5@@26 Ref__Integer_value)) (= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@8) o_4@@38 f_5@@26) (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@9) o_4@@38 f_5@@26)))
 :qid |stdinbpl.4222:29|
 :skolemid |346|
 :pattern ( (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@9) o_4@@38 f_5@@26))
))) (forall ((o_4@@39 T@Ref) (f_5@@27 T@Field_29264_115514) ) (!  (=> true (= (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| QPMask@8) o_4@@39 f_5@@27) (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| QPMask@9) o_4@@39 f_5@@27)))
 :qid |stdinbpl.4222:29|
 :skolemid |346|
 :pattern ( (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| QPMask@9) o_4@@39 f_5@@27))
))) (forall ((o_4@@40 T@Ref) (f_5@@28 T@Field_29264_115647) ) (!  (=> true (= (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| QPMask@8) o_4@@40 f_5@@28) (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| QPMask@9) o_4@@40 f_5@@28)))
 :qid |stdinbpl.4222:29|
 :skolemid |346|
 :pattern ( (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| QPMask@9) o_4@@40 f_5@@28))
))) (and (and (=> (= (ControlFlow 0 75) 73) anon122_Else_correct) (=> (= (ControlFlow 0 75) 65) anon123_Then_correct)) (=> (= (ControlFlow 0 75) 67) anon123_Else_correct))))))))))))))))))))))))))))))))))))))))))))
(let ((anon74_correct true))
(let ((anon121_Else_correct  (=> (and (not (and (>= k_20_1 0) (and (< k_20_1 (|Seq#Length_29303| hist)) (and (>= j_15_1 0) (and (< j_15_1 (|Seq#Length_29303| hist)) (not (= k_20_1 j_15_1))))))) (= (ControlFlow 0 63) 60)) anon74_correct)))
(let ((anon121_Then_correct  (=> (and (>= k_20_1 0) (and (< k_20_1 (|Seq#Length_29303| hist)) (and (>= j_15_1 0) (and (< j_15_1 (|Seq#Length_29303| hist)) (not (= k_20_1 j_15_1)))))) (and (=> (= (ControlFlow 0 61) (- 0 62)) (not (= (|Seq#Index_29303| hist k_20_1) (|Seq#Index_29303| hist j_15_1)))) (=> (not (= (|Seq#Index_29303| hist k_20_1) (|Seq#Index_29303| hist j_15_1))) (=> (= (ControlFlow 0 61) 60) anon74_correct))))))
(let ((anon118_Else_correct  (=> (forall ((k_fresh_rw_0_7_1 Int) ) (!  (=> (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) k_fresh_rw_0_7_1) (< (mod k_fresh_rw_0_7_1 step@@9) N)) (|Seq#Contains_3683| (|Seq#Range| 0 P_1) (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| ExhaleHeap@0) (|Seq#Index_29303| matrix k_fresh_rw_0_7_1) Ref__Integer_value)))
 :qid |stdinbpl.4015:22|
 :skolemid |317|
 :pattern ( (|Seq#ContainsTrigger_3683| (|Seq#Range| 0 P_1) (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| ExhaleHeap@0) (|Seq#Index_29303| matrix k_fresh_rw_0_7_1) Ref__Integer_value)))
 :pattern ( (|Seq#Contains_3683| (|Seq#Range| 0 P_1) (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| ExhaleHeap@0) (|Seq#Index_29303| matrix k_fresh_rw_0_7_1) Ref__Integer_value)))
)) (and (and (=> (= (ControlFlow 0 89) 75) anon120_Else_correct) (=> (= (ControlFlow 0 89) 61) anon121_Then_correct)) (=> (= (ControlFlow 0 89) 63) anon121_Else_correct)))))
(let ((anon70_correct true))
(let ((anon119_Else_correct  (=> (and (not (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) k_fresh_rw_0_6_1) (< (mod k_fresh_rw_0_6_1 step@@9) N))) (= (ControlFlow 0 59) 56)) anon70_correct)))
(let ((anon119_Then_correct  (=> (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) k_fresh_rw_0_6_1) (< (mod k_fresh_rw_0_6_1 step@@9) N)) (and (=> (= (ControlFlow 0 57) (- 0 58)) (|Seq#Contains_3683| (|Seq#Range| 0 P_1) (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| ExhaleHeap@0) (|Seq#Index_29303| matrix k_fresh_rw_0_6_1) Ref__Integer_value))) (=> (|Seq#Contains_3683| (|Seq#Range| 0 P_1) (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| ExhaleHeap@0) (|Seq#Index_29303| matrix k_fresh_rw_0_6_1) Ref__Integer_value)) (=> (= (ControlFlow 0 57) 56) anon70_correct))))))
(let ((anon116_Else_correct  (=> (forall ((k_19_1_1 Int) (j_13_1 Int) ) (!  (=> (and (>= k_19_1_1 0) (and (< k_19_1_1 (|Seq#Length_29303| matrix)) (and (>= j_13_1 0) (and (< j_13_1 (|Seq#Length_29303| matrix)) (not (= k_19_1_1 j_13_1)))))) (not (= (|Seq#Index_29303| matrix k_19_1_1) (|Seq#Index_29303| matrix j_13_1))))
 :qid |stdinbpl.3957:22|
 :skolemid |309|
 :pattern ( (|Seq#Index_29303| matrix k_19_1_1) (|Seq#Index_29303| matrix j_13_1))
)) (and (=> (= (ControlFlow 0 90) (- 0 94)) (forall ((j_14_1 Int) ) (!  (=> (and (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) j_14_1) (< (mod j_14_1 step@@9) N)) (dummyFunction_4112 (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| ExhaleHeap@0) (|Seq#Index_29303| matrix j_14_1) Ref__Integer_value))) (>= (/ (to_real 1) (to_real 4)) NoPerm))
 :qid |stdinbpl.3965:19|
 :skolemid |310|
 :pattern ( (|Seq#Index_29303| matrix j_14_1))
 :pattern ( (|Seq#Index_29303| matrix j_14_1))
))) (=> (forall ((j_14_1@@0 Int) ) (!  (=> (and (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) j_14_1@@0) (< (mod j_14_1@@0 step@@9) N)) (dummyFunction_4112 (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| ExhaleHeap@0) (|Seq#Index_29303| matrix j_14_1@@0) Ref__Integer_value))) (>= (/ (to_real 1) (to_real 4)) NoPerm))
 :qid |stdinbpl.3965:19|
 :skolemid |310|
 :pattern ( (|Seq#Index_29303| matrix j_14_1@@0))
 :pattern ( (|Seq#Index_29303| matrix j_14_1@@0))
)) (and (=> (= (ControlFlow 0 90) (- 0 93)) (forall ((j_14_1@@1 Int) (j_14_2 Int) ) (!  (=> (and (and (and (and (not (= j_14_1@@1 j_14_2)) (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) j_14_1@@1) (< (mod j_14_1@@1 step@@9) N))) (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) j_14_2) (< (mod j_14_2 step@@9) N))) (< NoPerm (/ (to_real 1) (to_real 4)))) (< NoPerm (/ (to_real 1) (to_real 4)))) (not (= (|Seq#Index_29303| matrix j_14_1@@1) (|Seq#Index_29303| matrix j_14_2))))
 :qid |stdinbpl.3972:19|
 :skolemid |311|
 :pattern ( (neverTriggered32 j_14_1@@1) (neverTriggered32 j_14_2))
))) (=> (forall ((j_14_1@@2 Int) (j_14_2@@0 Int) ) (!  (=> (and (and (and (and (not (= j_14_1@@2 j_14_2@@0)) (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) j_14_1@@2) (< (mod j_14_1@@2 step@@9) N))) (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) j_14_2@@0) (< (mod j_14_2@@0 step@@9) N))) (< NoPerm (/ (to_real 1) (to_real 4)))) (< NoPerm (/ (to_real 1) (to_real 4)))) (not (= (|Seq#Index_29303| matrix j_14_1@@2) (|Seq#Index_29303| matrix j_14_2@@0))))
 :qid |stdinbpl.3972:19|
 :skolemid |311|
 :pattern ( (neverTriggered32 j_14_1@@2) (neverTriggered32 j_14_2@@0))
)) (and (=> (= (ControlFlow 0 90) (- 0 92)) (forall ((j_14_1@@3 Int) ) (!  (=> (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) j_14_1@@3) (< (mod j_14_1@@3 step@@9) N)) (>= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@4) (|Seq#Index_29303| matrix j_14_1@@3) Ref__Integer_value) (/ (to_real 1) (to_real 4))))
 :qid |stdinbpl.3979:19|
 :skolemid |312|
 :pattern ( (|Seq#Index_29303| matrix j_14_1@@3))
 :pattern ( (|Seq#Index_29303| matrix j_14_1@@3))
))) (=> (forall ((j_14_1@@4 Int) ) (!  (=> (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) j_14_1@@4) (< (mod j_14_1@@4 step@@9) N)) (>= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@4) (|Seq#Index_29303| matrix j_14_1@@4) Ref__Integer_value) (/ (to_real 1) (to_real 4))))
 :qid |stdinbpl.3979:19|
 :skolemid |312|
 :pattern ( (|Seq#Index_29303| matrix j_14_1@@4))
 :pattern ( (|Seq#Index_29303| matrix j_14_1@@4))
)) (=> (forall ((j_14_1@@5 Int) ) (!  (=> (and (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) j_14_1@@5) (< (mod j_14_1@@5 step@@9) N)) (< NoPerm (/ (to_real 1) (to_real 4)))) (and (qpRange32 (|Seq#Index_29303| matrix j_14_1@@5)) (= (invRecv32 (|Seq#Index_29303| matrix j_14_1@@5)) j_14_1@@5)))
 :qid |stdinbpl.3985:24|
 :skolemid |313|
 :pattern ( (|Seq#Index_29303| matrix j_14_1@@5))
 :pattern ( (|Seq#Index_29303| matrix j_14_1@@5))
)) (=> (and (forall ((o_4@@41 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) (invRecv32 o_4@@41)) (< (mod (invRecv32 o_4@@41) step@@9) N)) (and (< NoPerm (/ (to_real 1) (to_real 4))) (qpRange32 o_4@@41))) (= (|Seq#Index_29303| matrix (invRecv32 o_4@@41)) o_4@@41))
 :qid |stdinbpl.3989:24|
 :skolemid |314|
 :pattern ( (invRecv32 o_4@@41))
)) (forall ((o_4@@42 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) (invRecv32 o_4@@42)) (< (mod (invRecv32 o_4@@42) step@@9) N)) (and (< NoPerm (/ (to_real 1) (to_real 4))) (qpRange32 o_4@@42))) (and (= (|Seq#Index_29303| matrix (invRecv32 o_4@@42)) o_4@@42) (= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@5) o_4@@42 Ref__Integer_value) (- (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@4) o_4@@42 Ref__Integer_value) (/ (to_real 1) (to_real 4)))))) (=> (not (and (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) (invRecv32 o_4@@42)) (< (mod (invRecv32 o_4@@42) step@@9) N)) (and (< NoPerm (/ (to_real 1) (to_real 4))) (qpRange32 o_4@@42)))) (= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@5) o_4@@42 Ref__Integer_value) (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@4) o_4@@42 Ref__Integer_value))))
 :qid |stdinbpl.3995:24|
 :skolemid |315|
 :pattern ( (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@5) o_4@@42 Ref__Integer_value))
))) (=> (and (and (and (and (forall ((o_4@@43 T@Ref) (f_5@@29 T@Field_41028_53) ) (!  (=> true (= (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| QPMask@4) o_4@@43 f_5@@29) (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| QPMask@5) o_4@@43 f_5@@29)))
 :qid |stdinbpl.4001:31|
 :skolemid |316|
 :pattern ( (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| QPMask@5) o_4@@43 f_5@@29))
)) (forall ((o_4@@44 T@Ref) (f_5@@30 T@Field_41041_41042) ) (!  (=> true (= (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| QPMask@4) o_4@@44 f_5@@30) (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| QPMask@5) o_4@@44 f_5@@30)))
 :qid |stdinbpl.4001:31|
 :skolemid |316|
 :pattern ( (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| QPMask@5) o_4@@44 f_5@@30))
))) (forall ((o_4@@45 T@Ref) (f_5@@31 T@Field_47114_3805) ) (!  (=> (not (= f_5@@31 Ref__Integer_value)) (= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@4) o_4@@45 f_5@@31) (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@5) o_4@@45 f_5@@31)))
 :qid |stdinbpl.4001:31|
 :skolemid |316|
 :pattern ( (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@5) o_4@@45 f_5@@31))
))) (forall ((o_4@@46 T@Ref) (f_5@@32 T@Field_29264_115514) ) (!  (=> true (= (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| QPMask@4) o_4@@46 f_5@@32) (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| QPMask@5) o_4@@46 f_5@@32)))
 :qid |stdinbpl.4001:31|
 :skolemid |316|
 :pattern ( (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| QPMask@5) o_4@@46 f_5@@32))
))) (forall ((o_4@@47 T@Ref) (f_5@@33 T@Field_29264_115647) ) (!  (=> true (= (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| QPMask@4) o_4@@47 f_5@@33) (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| QPMask@5) o_4@@47 f_5@@33)))
 :qid |stdinbpl.4001:31|
 :skolemid |316|
 :pattern ( (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| QPMask@5) o_4@@47 f_5@@33))
))) (and (=> (= (ControlFlow 0 90) (- 0 91)) (<= N step@@9)) (=> (<= N step@@9) (and (and (=> (= (ControlFlow 0 90) 89) anon118_Else_correct) (=> (= (ControlFlow 0 90) 57) anon119_Then_correct)) (=> (= (ControlFlow 0 90) 59) anon119_Else_correct))))))))))))))))
(let ((anon66_correct true))
(let ((anon117_Else_correct  (=> (and (not (and (>= k_18_1 0) (and (< k_18_1 (|Seq#Length_29303| matrix)) (and (>= j_12_2 0) (and (< j_12_2 (|Seq#Length_29303| matrix)) (not (= k_18_1 j_12_2))))))) (= (ControlFlow 0 55) 52)) anon66_correct)))
(let ((anon117_Then_correct  (=> (and (>= k_18_1 0) (and (< k_18_1 (|Seq#Length_29303| matrix)) (and (>= j_12_2 0) (and (< j_12_2 (|Seq#Length_29303| matrix)) (not (= k_18_1 j_12_2)))))) (and (=> (= (ControlFlow 0 53) (- 0 54)) (not (= (|Seq#Index_29303| matrix k_18_1) (|Seq#Index_29303| matrix j_12_2)))) (=> (not (= (|Seq#Index_29303| matrix k_18_1) (|Seq#Index_29303| matrix j_12_2))) (=> (= (ControlFlow 0 53) 52) anon66_correct))))))
(let ((anon114_Else_correct  (=> (forall ((k_16_1_1 Int) (j_11_1 Int) ) (!  (=> (and (>= k_16_1_1 0) (and (< k_16_1_1 (|Seq#Length_29303| hist)) (and (>= j_11_1 0) (and (< j_11_1 (|Seq#Length_29303| hist)) (not (= k_16_1_1 j_11_1)))))) (not (= (|Seq#Index_29303| hist k_16_1_1) (|Seq#Index_29303| hist j_11_1))))
 :qid |stdinbpl.3901:22|
 :skolemid |302|
 :pattern ( (|Seq#Index_29303| hist k_16_1_1) (|Seq#Index_29303| hist j_11_1))
)) (and (=> (= (ControlFlow 0 95) (- 0 99)) (forall ((k_17_2 Int) (k_17_3 Int) ) (!  (=> (and (and (and (and (not (= k_17_2 k_17_3)) (|Seq#Contains_3683| (|Seq#Range| 0 P_1) k_17_2)) (|Seq#Contains_3683| (|Seq#Range| 0 P_1) k_17_3)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_29303| hist k_17_2) (|Seq#Index_29303| hist k_17_3))))
 :qid |stdinbpl.3912:19|
 :skolemid |303|
 :pattern ( (neverTriggered31 k_17_2) (neverTriggered31 k_17_3))
))) (=> (forall ((k_17_2@@0 Int) (k_17_3@@0 Int) ) (!  (=> (and (and (and (and (not (= k_17_2@@0 k_17_3@@0)) (|Seq#Contains_3683| (|Seq#Range| 0 P_1) k_17_2@@0)) (|Seq#Contains_3683| (|Seq#Range| 0 P_1) k_17_3@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_29303| hist k_17_2@@0) (|Seq#Index_29303| hist k_17_3@@0))))
 :qid |stdinbpl.3912:19|
 :skolemid |303|
 :pattern ( (neverTriggered31 k_17_2@@0) (neverTriggered31 k_17_3@@0))
)) (and (=> (= (ControlFlow 0 95) (- 0 98)) (forall ((k_17_2@@1 Int) ) (!  (=> (|Seq#Contains_3683| (|Seq#Range| 0 P_1) k_17_2@@1) (>= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@3) (|Seq#Index_29303| hist k_17_2@@1) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.3919:19|
 :skolemid |304|
 :pattern ( (|Seq#Index_29303| hist k_17_2@@1))
 :pattern ( (|Seq#ContainsTrigger_3683| (|Seq#Range| 0 P_1) k_17_2@@1))
 :pattern ( (|Seq#Contains_3683| (|Seq#Range| 0 P_1) k_17_2@@1))
 :pattern ( (|Seq#Index_29303| hist k_17_2@@1))
))) (=> (forall ((k_17_2@@2 Int) ) (!  (=> (|Seq#Contains_3683| (|Seq#Range| 0 P_1) k_17_2@@2) (>= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@3) (|Seq#Index_29303| hist k_17_2@@2) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.3919:19|
 :skolemid |304|
 :pattern ( (|Seq#Index_29303| hist k_17_2@@2))
 :pattern ( (|Seq#ContainsTrigger_3683| (|Seq#Range| 0 P_1) k_17_2@@2))
 :pattern ( (|Seq#Contains_3683| (|Seq#Range| 0 P_1) k_17_2@@2))
 :pattern ( (|Seq#Index_29303| hist k_17_2@@2))
)) (=> (forall ((k_17_2@@3 Int) ) (!  (=> (and (|Seq#Contains_3683| (|Seq#Range| 0 P_1) k_17_2@@3) (< NoPerm FullPerm)) (and (qpRange31 (|Seq#Index_29303| hist k_17_2@@3)) (= (invRecv31 (|Seq#Index_29303| hist k_17_2@@3)) k_17_2@@3)))
 :qid |stdinbpl.3925:24|
 :skolemid |305|
 :pattern ( (|Seq#Index_29303| hist k_17_2@@3))
 :pattern ( (|Seq#ContainsTrigger_3683| (|Seq#Range| 0 P_1) k_17_2@@3))
 :pattern ( (|Seq#Contains_3683| (|Seq#Range| 0 P_1) k_17_2@@3))
 :pattern ( (|Seq#Index_29303| hist k_17_2@@3))
)) (=> (and (forall ((o_4@@48 T@Ref) ) (!  (=> (and (|Seq#Contains_3683| (|Seq#Range| 0 P_1) (invRecv31 o_4@@48)) (and (< NoPerm FullPerm) (qpRange31 o_4@@48))) (= (|Seq#Index_29303| hist (invRecv31 o_4@@48)) o_4@@48))
 :qid |stdinbpl.3929:24|
 :skolemid |306|
 :pattern ( (invRecv31 o_4@@48))
)) (forall ((o_4@@49 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3683| (|Seq#Range| 0 P_1) (invRecv31 o_4@@49)) (and (< NoPerm FullPerm) (qpRange31 o_4@@49))) (and (= (|Seq#Index_29303| hist (invRecv31 o_4@@49)) o_4@@49) (= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@4) o_4@@49 Ref__Integer_value) (- (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@3) o_4@@49 Ref__Integer_value) FullPerm)))) (=> (not (and (|Seq#Contains_3683| (|Seq#Range| 0 P_1) (invRecv31 o_4@@49)) (and (< NoPerm FullPerm) (qpRange31 o_4@@49)))) (= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@4) o_4@@49 Ref__Integer_value) (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@3) o_4@@49 Ref__Integer_value))))
 :qid |stdinbpl.3935:24|
 :skolemid |307|
 :pattern ( (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@4) o_4@@49 Ref__Integer_value))
))) (=> (and (and (and (and (forall ((o_4@@50 T@Ref) (f_5@@34 T@Field_41028_53) ) (!  (=> true (= (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| QPMask@3) o_4@@50 f_5@@34) (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| QPMask@4) o_4@@50 f_5@@34)))
 :qid |stdinbpl.3941:31|
 :skolemid |308|
 :pattern ( (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| QPMask@4) o_4@@50 f_5@@34))
)) (forall ((o_4@@51 T@Ref) (f_5@@35 T@Field_41041_41042) ) (!  (=> true (= (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| QPMask@3) o_4@@51 f_5@@35) (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| QPMask@4) o_4@@51 f_5@@35)))
 :qid |stdinbpl.3941:31|
 :skolemid |308|
 :pattern ( (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| QPMask@4) o_4@@51 f_5@@35))
))) (forall ((o_4@@52 T@Ref) (f_5@@36 T@Field_47114_3805) ) (!  (=> (not (= f_5@@36 Ref__Integer_value)) (= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@3) o_4@@52 f_5@@36) (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@4) o_4@@52 f_5@@36)))
 :qid |stdinbpl.3941:31|
 :skolemid |308|
 :pattern ( (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@4) o_4@@52 f_5@@36))
))) (forall ((o_4@@53 T@Ref) (f_5@@37 T@Field_29264_115514) ) (!  (=> true (= (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| QPMask@3) o_4@@53 f_5@@37) (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| QPMask@4) o_4@@53 f_5@@37)))
 :qid |stdinbpl.3941:31|
 :skolemid |308|
 :pattern ( (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| QPMask@4) o_4@@53 f_5@@37))
))) (forall ((o_4@@54 T@Ref) (f_5@@38 T@Field_29264_115647) ) (!  (=> true (= (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| QPMask@3) o_4@@54 f_5@@38) (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| QPMask@4) o_4@@54 f_5@@38)))
 :qid |stdinbpl.3941:31|
 :skolemid |308|
 :pattern ( (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| QPMask@4) o_4@@54 f_5@@38))
))) (and (=> (= (ControlFlow 0 95) (- 0 97)) (<= N step@@9)) (=> (<= N step@@9) (and (=> (= (ControlFlow 0 95) (- 0 96)) (<= (* M step@@9) (|Seq#Length_29303| matrix))) (=> (<= (* M step@@9) (|Seq#Length_29303| matrix)) (and (and (=> (= (ControlFlow 0 95) 90) anon116_Else_correct) (=> (= (ControlFlow 0 95) 53) anon117_Then_correct)) (=> (= (ControlFlow 0 95) 55) anon117_Else_correct))))))))))))))))
(let ((anon62_correct true))
(let ((anon115_Else_correct  (=> (and (not (and (>= k_15_1 0) (and (< k_15_1 (|Seq#Length_29303| hist)) (and (>= j_10_2 0) (and (< j_10_2 (|Seq#Length_29303| hist)) (not (= k_15_1 j_10_2))))))) (= (ControlFlow 0 51) 48)) anon62_correct)))
(let ((anon115_Then_correct  (=> (and (>= k_15_1 0) (and (< k_15_1 (|Seq#Length_29303| hist)) (and (>= j_10_2 0) (and (< j_10_2 (|Seq#Length_29303| hist)) (not (= k_15_1 j_10_2)))))) (and (=> (= (ControlFlow 0 49) (- 0 50)) (not (= (|Seq#Index_29303| hist k_15_1) (|Seq#Index_29303| hist j_10_2)))) (=> (not (= (|Seq#Index_29303| hist k_15_1) (|Seq#Index_29303| hist j_10_2))) (=> (= (ControlFlow 0 49) 48) anon62_correct))))))
(let ((anon112_Else_correct  (=> (forall ((k_11_1_1 Int) (j_9_1_1 Int) ) (!  (=> (and (>= k_11_1_1 0) (and (< k_11_1_1 (|Seq#Length_29303| hist)) (and (>= j_9_1_1 0) (and (< j_9_1_1 (|Seq#Length_29303| hist)) (not (= k_11_1_1 j_9_1_1)))))) (not (= (|Seq#Index_29303| hist k_11_1_1) (|Seq#Index_29303| hist j_9_1_1))))
 :qid |stdinbpl.3783:22|
 :skolemid |288|
 :pattern ( (|Seq#Index_29303| hist k_11_1_1) (|Seq#Index_29303| hist j_9_1_1))
)) (and (=> (= (ControlFlow 0 100) (- 0 109)) (forall ((k_12_2 Int) (k_12_3 Int) ) (!  (=> (and (and (and (and (not (= k_12_2 k_12_3)) (|Seq#Contains_3683| (|Seq#Range| 0 P_1) k_12_2)) (|Seq#Contains_3683| (|Seq#Range| 0 P_1) k_12_3)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_29303| hist k_12_2) (|Seq#Index_29303| hist k_12_3))))
 :qid |stdinbpl.3794:19|
 :skolemid |289|
 :pattern ( (neverTriggered29 k_12_2) (neverTriggered29 k_12_3))
))) (=> (forall ((k_12_2@@0 Int) (k_12_3@@0 Int) ) (!  (=> (and (and (and (and (not (= k_12_2@@0 k_12_3@@0)) (|Seq#Contains_3683| (|Seq#Range| 0 P_1) k_12_2@@0)) (|Seq#Contains_3683| (|Seq#Range| 0 P_1) k_12_3@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_29303| hist k_12_2@@0) (|Seq#Index_29303| hist k_12_3@@0))))
 :qid |stdinbpl.3794:19|
 :skolemid |289|
 :pattern ( (neverTriggered29 k_12_2@@0) (neverTriggered29 k_12_3@@0))
)) (and (=> (= (ControlFlow 0 100) (- 0 108)) (forall ((k_12_2@@1 Int) ) (!  (=> (|Seq#Contains_3683| (|Seq#Range| 0 P_1) k_12_2@@1) (>= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@1) (|Seq#Index_29303| hist k_12_2@@1) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.3801:19|
 :skolemid |290|
 :pattern ( (|Seq#Index_29303| hist k_12_2@@1))
 :pattern ( (|Seq#ContainsTrigger_3683| (|Seq#Range| 0 P_1) k_12_2@@1))
 :pattern ( (|Seq#Contains_3683| (|Seq#Range| 0 P_1) k_12_2@@1))
 :pattern ( (|Seq#Index_29303| hist k_12_2@@1))
))) (=> (forall ((k_12_2@@2 Int) ) (!  (=> (|Seq#Contains_3683| (|Seq#Range| 0 P_1) k_12_2@@2) (>= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@1) (|Seq#Index_29303| hist k_12_2@@2) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.3801:19|
 :skolemid |290|
 :pattern ( (|Seq#Index_29303| hist k_12_2@@2))
 :pattern ( (|Seq#ContainsTrigger_3683| (|Seq#Range| 0 P_1) k_12_2@@2))
 :pattern ( (|Seq#Contains_3683| (|Seq#Range| 0 P_1) k_12_2@@2))
 :pattern ( (|Seq#Index_29303| hist k_12_2@@2))
)) (=> (forall ((k_12_2@@3 Int) ) (!  (=> (and (|Seq#Contains_3683| (|Seq#Range| 0 P_1) k_12_2@@3) (< NoPerm FullPerm)) (and (qpRange29 (|Seq#Index_29303| hist k_12_2@@3)) (= (invRecv29 (|Seq#Index_29303| hist k_12_2@@3)) k_12_2@@3)))
 :qid |stdinbpl.3807:24|
 :skolemid |291|
 :pattern ( (|Seq#Index_29303| hist k_12_2@@3))
 :pattern ( (|Seq#ContainsTrigger_3683| (|Seq#Range| 0 P_1) k_12_2@@3))
 :pattern ( (|Seq#Contains_3683| (|Seq#Range| 0 P_1) k_12_2@@3))
 :pattern ( (|Seq#Index_29303| hist k_12_2@@3))
)) (=> (and (forall ((o_4@@55 T@Ref) ) (!  (=> (and (|Seq#Contains_3683| (|Seq#Range| 0 P_1) (invRecv29 o_4@@55)) (and (< NoPerm FullPerm) (qpRange29 o_4@@55))) (= (|Seq#Index_29303| hist (invRecv29 o_4@@55)) o_4@@55))
 :qid |stdinbpl.3811:24|
 :skolemid |292|
 :pattern ( (invRecv29 o_4@@55))
)) (forall ((o_4@@56 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3683| (|Seq#Range| 0 P_1) (invRecv29 o_4@@56)) (and (< NoPerm FullPerm) (qpRange29 o_4@@56))) (and (= (|Seq#Index_29303| hist (invRecv29 o_4@@56)) o_4@@56) (= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@2) o_4@@56 Ref__Integer_value) (- (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@1) o_4@@56 Ref__Integer_value) FullPerm)))) (=> (not (and (|Seq#Contains_3683| (|Seq#Range| 0 P_1) (invRecv29 o_4@@56)) (and (< NoPerm FullPerm) (qpRange29 o_4@@56)))) (= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@2) o_4@@56 Ref__Integer_value) (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@1) o_4@@56 Ref__Integer_value))))
 :qid |stdinbpl.3817:24|
 :skolemid |293|
 :pattern ( (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@2) o_4@@56 Ref__Integer_value))
))) (=> (and (and (and (and (and (forall ((o_4@@57 T@Ref) (f_5@@39 T@Field_41028_53) ) (!  (=> true (= (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| QPMask@1) o_4@@57 f_5@@39) (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| QPMask@2) o_4@@57 f_5@@39)))
 :qid |stdinbpl.3823:31|
 :skolemid |294|
 :pattern ( (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| QPMask@2) o_4@@57 f_5@@39))
)) (forall ((o_4@@58 T@Ref) (f_5@@40 T@Field_41041_41042) ) (!  (=> true (= (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| QPMask@1) o_4@@58 f_5@@40) (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| QPMask@2) o_4@@58 f_5@@40)))
 :qid |stdinbpl.3823:31|
 :skolemid |294|
 :pattern ( (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| QPMask@2) o_4@@58 f_5@@40))
))) (forall ((o_4@@59 T@Ref) (f_5@@41 T@Field_47114_3805) ) (!  (=> (not (= f_5@@41 Ref__Integer_value)) (= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@1) o_4@@59 f_5@@41) (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@2) o_4@@59 f_5@@41)))
 :qid |stdinbpl.3823:31|
 :skolemid |294|
 :pattern ( (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@2) o_4@@59 f_5@@41))
))) (forall ((o_4@@60 T@Ref) (f_5@@42 T@Field_29264_115514) ) (!  (=> true (= (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| QPMask@1) o_4@@60 f_5@@42) (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| QPMask@2) o_4@@60 f_5@@42)))
 :qid |stdinbpl.3823:31|
 :skolemid |294|
 :pattern ( (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| QPMask@2) o_4@@60 f_5@@42))
))) (forall ((o_4@@61 T@Ref) (f_5@@43 T@Field_29264_115647) ) (!  (=> true (= (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| QPMask@1) o_4@@61 f_5@@43) (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| QPMask@2) o_4@@61 f_5@@43)))
 :qid |stdinbpl.3823:31|
 :skolemid |294|
 :pattern ( (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| QPMask@2) o_4@@61 f_5@@43))
))) (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@0 QPMask@2)) (and (=> (= (ControlFlow 0 100) (- 0 107)) (forall ((k_13 Int) (k_13_1 Int) ) (!  (=> (and (and (and (and (not (= k_13 k_13_1)) (|Seq#Contains_3683| (|Seq#Range| 0 P_1) k_13)) (|Seq#Contains_3683| (|Seq#Range| 0 P_1) k_13_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_29303| hist k_13) (|Seq#Index_29303| hist k_13_1))))
 :qid |stdinbpl.3836:17|
 :skolemid |295|
))) (=> (forall ((k_13@@0 Int) (k_13_1@@0 Int) ) (!  (=> (and (and (and (and (not (= k_13@@0 k_13_1@@0)) (|Seq#Contains_3683| (|Seq#Range| 0 P_1) k_13@@0)) (|Seq#Contains_3683| (|Seq#Range| 0 P_1) k_13_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_29303| hist k_13@@0) (|Seq#Index_29303| hist k_13_1@@0))))
 :qid |stdinbpl.3836:17|
 :skolemid |295|
)) (=> (and (and (forall ((k_13@@1 Int) ) (!  (=> (and (|Seq#Contains_3683| (|Seq#Range| 0 P_1) k_13@@1) (< NoPerm FullPerm)) (and (qpRange30 (|Seq#Index_29303| hist k_13@@1)) (= (invRecv30 (|Seq#Index_29303| hist k_13@@1)) k_13@@1)))
 :qid |stdinbpl.3842:24|
 :skolemid |296|
 :pattern ( (|Seq#Index_29303| hist k_13@@1))
 :pattern ( (|Seq#ContainsTrigger_3683| (|Seq#Range| 0 P_1) k_13@@1))
 :pattern ( (|Seq#Contains_3683| (|Seq#Range| 0 P_1) k_13@@1))
 :pattern ( (|Seq#Index_29303| hist k_13@@1))
)) (forall ((o_4@@62 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3683| (|Seq#Range| 0 P_1) (invRecv30 o_4@@62)) (< NoPerm FullPerm)) (qpRange30 o_4@@62)) (= (|Seq#Index_29303| hist (invRecv30 o_4@@62)) o_4@@62))
 :qid |stdinbpl.3846:24|
 :skolemid |297|
 :pattern ( (invRecv30 o_4@@62))
))) (and (forall ((k_13@@2 Int) ) (!  (=> (|Seq#Contains_3683| (|Seq#Range| 0 P_1) k_13@@2) (not (= (|Seq#Index_29303| hist k_13@@2) null)))
 :qid |stdinbpl.3852:24|
 :skolemid |298|
 :pattern ( (|Seq#Index_29303| hist k_13@@2))
 :pattern ( (|Seq#ContainsTrigger_3683| (|Seq#Range| 0 P_1) k_13@@2))
 :pattern ( (|Seq#Contains_3683| (|Seq#Range| 0 P_1) k_13@@2))
 :pattern ( (|Seq#Index_29303| hist k_13@@2))
)) (forall ((o_4@@63 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3683| (|Seq#Range| 0 P_1) (invRecv30 o_4@@63)) (< NoPerm FullPerm)) (qpRange30 o_4@@63)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_29303| hist (invRecv30 o_4@@63)) o_4@@63)) (= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@3) o_4@@63 Ref__Integer_value) (+ (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@2) o_4@@63 Ref__Integer_value) FullPerm)))) (=> (not (and (and (|Seq#Contains_3683| (|Seq#Range| 0 P_1) (invRecv30 o_4@@63)) (< NoPerm FullPerm)) (qpRange30 o_4@@63))) (= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@3) o_4@@63 Ref__Integer_value) (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@2) o_4@@63 Ref__Integer_value))))
 :qid |stdinbpl.3858:24|
 :skolemid |299|
 :pattern ( (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@3) o_4@@63 Ref__Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_4@@64 T@Ref) (f_5@@44 T@Field_41028_53) ) (!  (=> true (= (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| QPMask@2) o_4@@64 f_5@@44) (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| QPMask@3) o_4@@64 f_5@@44)))
 :qid |stdinbpl.3862:31|
 :skolemid |300|
 :pattern ( (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| QPMask@2) o_4@@64 f_5@@44))
 :pattern ( (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| QPMask@3) o_4@@64 f_5@@44))
)) (forall ((o_4@@65 T@Ref) (f_5@@45 T@Field_41041_41042) ) (!  (=> true (= (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| QPMask@2) o_4@@65 f_5@@45) (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| QPMask@3) o_4@@65 f_5@@45)))
 :qid |stdinbpl.3862:31|
 :skolemid |300|
 :pattern ( (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| QPMask@2) o_4@@65 f_5@@45))
 :pattern ( (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| QPMask@3) o_4@@65 f_5@@45))
))) (forall ((o_4@@66 T@Ref) (f_5@@46 T@Field_47114_3805) ) (!  (=> (not (= f_5@@46 Ref__Integer_value)) (= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@2) o_4@@66 f_5@@46) (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@3) o_4@@66 f_5@@46)))
 :qid |stdinbpl.3862:31|
 :skolemid |300|
 :pattern ( (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@2) o_4@@66 f_5@@46))
 :pattern ( (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@3) o_4@@66 f_5@@46))
))) (forall ((o_4@@67 T@Ref) (f_5@@47 T@Field_29264_115514) ) (!  (=> true (= (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| QPMask@2) o_4@@67 f_5@@47) (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| QPMask@3) o_4@@67 f_5@@47)))
 :qid |stdinbpl.3862:31|
 :skolemid |300|
 :pattern ( (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| QPMask@2) o_4@@67 f_5@@47))
 :pattern ( (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| QPMask@3) o_4@@67 f_5@@47))
))) (forall ((o_4@@68 T@Ref) (f_5@@48 T@Field_29264_115647) ) (!  (=> true (= (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| QPMask@2) o_4@@68 f_5@@48) (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| QPMask@3) o_4@@68 f_5@@48)))
 :qid |stdinbpl.3862:31|
 :skolemid |300|
 :pattern ( (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| QPMask@2) o_4@@68 f_5@@48))
 :pattern ( (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| QPMask@3) o_4@@68 f_5@@48))
))) (and (and (state ExhaleHeap@0 QPMask@3) (forall ((k_14 Int) ) (!  (=> (|Seq#Contains_3683| (|Seq#Range| 0 P_1) k_14) (= (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| ExhaleHeap@0) (|Seq#Index_29303| hist k_14) Ref__Integer_value) 0))
 :qid |stdinbpl.3868:22|
 :skolemid |301|
 :pattern ( (|Seq#ContainsTrigger_3683| (|Seq#Range| 0 P_1) k_14))
 :pattern ( (|Seq#Contains_3683| (|Seq#Range| 0 P_1) k_14))
 :pattern ( (|Seq#Index_29303| hist k_14))
))) (and (state ExhaleHeap@0 QPMask@3) (state ExhaleHeap@0 QPMask@3)))) (and (=> (= (ControlFlow 0 100) (- 0 106)) (not (= diz null))) (=> (not (= diz null)) (and (=> (= (ControlFlow 0 100) (- 0 105)) (> M 0)) (=> (> M 0) (and (=> (= (ControlFlow 0 100) (- 0 104)) (> N 0)) (=> (> N 0) (and (=> (= (ControlFlow 0 100) (- 0 103)) (>= step@@9 N)) (=> (>= step@@9 N) (and (=> (= (ControlFlow 0 100) (- 0 102)) (> P_1 0)) (=> (> P_1 0) (and (=> (= (ControlFlow 0 100) (- 0 101)) (<= P_1 (|Seq#Length_29303| hist))) (=> (<= P_1 (|Seq#Length_29303| hist)) (and (and (=> (= (ControlFlow 0 100) 95) anon114_Else_correct) (=> (= (ControlFlow 0 100) 49) anon115_Then_correct)) (=> (= (ControlFlow 0 100) 51) anon115_Else_correct))))))))))))))))))))))))))))
(let ((anon58_correct true))
(let ((anon113_Else_correct  (=> (and (not (and (>= k_10_2 0) (and (< k_10_2 (|Seq#Length_29303| hist)) (and (>= j_8 0) (and (< j_8 (|Seq#Length_29303| hist)) (not (= k_10_2 j_8))))))) (= (ControlFlow 0 47) 44)) anon58_correct)))
(let ((anon113_Then_correct  (=> (and (>= k_10_2 0) (and (< k_10_2 (|Seq#Length_29303| hist)) (and (>= j_8 0) (and (< j_8 (|Seq#Length_29303| hist)) (not (= k_10_2 j_8)))))) (and (=> (= (ControlFlow 0 45) (- 0 46)) (not (= (|Seq#Index_29303| hist k_10_2) (|Seq#Index_29303| hist j_8)))) (=> (not (= (|Seq#Index_29303| hist k_10_2) (|Seq#Index_29303| hist j_8))) (=> (= (ControlFlow 0 45) 44) anon58_correct))))))
(let ((anon98_Else_correct  (and (=> (= (ControlFlow 0 110) (- 0 112)) (not (= diz null))) (=> (not (= diz null)) (and (=> (= (ControlFlow 0 110) (- 0 111)) (<= P_1 (|Seq#Length_29303| hist))) (=> (<= P_1 (|Seq#Length_29303| hist)) (and (and (=> (= (ControlFlow 0 110) 100) anon112_Else_correct) (=> (= (ControlFlow 0 110) 45) anon113_Then_correct)) (=> (= (ControlFlow 0 110) 47) anon113_Else_correct))))))))
(let ((anon96_Else_correct  (and (=> (= (ControlFlow 0 167) (- 0 168)) (forall ((i1_1_1 Int) (i1_1_2 Int) ) (!  (=> (and (and (and (and (not (= i1_1_1 i1_1_2)) (|Seq#Contains_3683| (|Seq#Range| 0 P_1) i1_1_1)) (|Seq#Contains_3683| (|Seq#Range| 0 P_1) i1_1_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_29303| hist i1_1_1) (|Seq#Index_29303| hist i1_1_2))))
 :qid |stdinbpl.3485:15|
 :skolemid |259|
))) (=> (forall ((i1_1_1@@0 Int) (i1_1_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i1_1_1@@0 i1_1_2@@0)) (|Seq#Contains_3683| (|Seq#Range| 0 P_1) i1_1_1@@0)) (|Seq#Contains_3683| (|Seq#Range| 0 P_1) i1_1_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_29303| hist i1_1_1@@0) (|Seq#Index_29303| hist i1_1_2@@0))))
 :qid |stdinbpl.3485:15|
 :skolemid |259|
)) (=> (and (and (forall ((i1_1_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3683| (|Seq#Range| 0 P_1) i1_1_1@@1) (< NoPerm FullPerm)) (and (qpRange23 (|Seq#Index_29303| hist i1_1_1@@1)) (= (invRecv23 (|Seq#Index_29303| hist i1_1_1@@1)) i1_1_1@@1)))
 :qid |stdinbpl.3491:22|
 :skolemid |260|
 :pattern ( (|Seq#Index_29303| hist i1_1_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3683| (|Seq#Range| 0 P_1) i1_1_1@@1))
 :pattern ( (|Seq#Contains_3683| (|Seq#Range| 0 P_1) i1_1_1@@1))
 :pattern ( (|Seq#Index_29303| hist i1_1_1@@1))
)) (forall ((o_4@@69 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3683| (|Seq#Range| 0 P_1) (invRecv23 o_4@@69)) (< NoPerm FullPerm)) (qpRange23 o_4@@69)) (= (|Seq#Index_29303| hist (invRecv23 o_4@@69)) o_4@@69))
 :qid |stdinbpl.3495:22|
 :skolemid |261|
 :pattern ( (invRecv23 o_4@@69))
))) (and (forall ((i1_1_1@@2 Int) ) (!  (=> (|Seq#Contains_3683| (|Seq#Range| 0 P_1) i1_1_1@@2) (not (= (|Seq#Index_29303| hist i1_1_1@@2) null)))
 :qid |stdinbpl.3501:22|
 :skolemid |262|
 :pattern ( (|Seq#Index_29303| hist i1_1_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3683| (|Seq#Range| 0 P_1) i1_1_1@@2))
 :pattern ( (|Seq#Contains_3683| (|Seq#Range| 0 P_1) i1_1_1@@2))
 :pattern ( (|Seq#Index_29303| hist i1_1_1@@2))
)) (forall ((o_4@@70 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3683| (|Seq#Range| 0 P_1) (invRecv23 o_4@@70)) (< NoPerm FullPerm)) (qpRange23 o_4@@70)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_29303| hist (invRecv23 o_4@@70)) o_4@@70)) (= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@1) o_4@@70 Ref__Integer_value) (+ (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@0) o_4@@70 Ref__Integer_value) FullPerm)))) (=> (not (and (and (|Seq#Contains_3683| (|Seq#Range| 0 P_1) (invRecv23 o_4@@70)) (< NoPerm FullPerm)) (qpRange23 o_4@@70))) (= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@1) o_4@@70 Ref__Integer_value) (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@0) o_4@@70 Ref__Integer_value))))
 :qid |stdinbpl.3507:22|
 :skolemid |263|
 :pattern ( (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@1) o_4@@70 Ref__Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_4@@71 T@Ref) (f_5@@49 T@Field_41028_53) ) (!  (=> true (= (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| QPMask@0) o_4@@71 f_5@@49) (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| QPMask@1) o_4@@71 f_5@@49)))
 :qid |stdinbpl.3511:29|
 :skolemid |264|
 :pattern ( (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| QPMask@0) o_4@@71 f_5@@49))
 :pattern ( (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| QPMask@1) o_4@@71 f_5@@49))
)) (forall ((o_4@@72 T@Ref) (f_5@@50 T@Field_41041_41042) ) (!  (=> true (= (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| QPMask@0) o_4@@72 f_5@@50) (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| QPMask@1) o_4@@72 f_5@@50)))
 :qid |stdinbpl.3511:29|
 :skolemid |264|
 :pattern ( (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| QPMask@0) o_4@@72 f_5@@50))
 :pattern ( (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| QPMask@1) o_4@@72 f_5@@50))
))) (forall ((o_4@@73 T@Ref) (f_5@@51 T@Field_47114_3805) ) (!  (=> (not (= f_5@@51 Ref__Integer_value)) (= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@0) o_4@@73 f_5@@51) (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@1) o_4@@73 f_5@@51)))
 :qid |stdinbpl.3511:29|
 :skolemid |264|
 :pattern ( (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@0) o_4@@73 f_5@@51))
 :pattern ( (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@1) o_4@@73 f_5@@51))
))) (forall ((o_4@@74 T@Ref) (f_5@@52 T@Field_29264_115514) ) (!  (=> true (= (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| QPMask@0) o_4@@74 f_5@@52) (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| QPMask@1) o_4@@74 f_5@@52)))
 :qid |stdinbpl.3511:29|
 :skolemid |264|
 :pattern ( (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| QPMask@0) o_4@@74 f_5@@52))
 :pattern ( (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| QPMask@1) o_4@@74 f_5@@52))
))) (forall ((o_4@@75 T@Ref) (f_5@@53 T@Field_29264_115647) ) (!  (=> true (= (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| QPMask@0) o_4@@75 f_5@@53) (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| QPMask@1) o_4@@75 f_5@@53)))
 :qid |stdinbpl.3511:29|
 :skolemid |264|
 :pattern ( (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| QPMask@0) o_4@@75 f_5@@53))
 :pattern ( (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| QPMask@1) o_4@@75 f_5@@53))
))) (and (state Heap@@41 QPMask@1) (state Heap@@41 QPMask@1))) (and (=> (= (ControlFlow 0 167) 166) anon98_Then_correct) (=> (= (ControlFlow 0 167) 110) anon98_Else_correct))))))))
(let ((anon27_correct true))
(let ((anon97_Else_correct  (=> (and (not (|Seq#Contains_3683| (|Seq#Range| 0 P_1) i1_9)) (= (ControlFlow 0 43) 39)) anon27_correct)))
(let ((anon97_Then_correct  (=> (|Seq#Contains_3683| (|Seq#Range| 0 P_1) i1_9) (and (=> (= (ControlFlow 0 40) (- 0 42)) (>= i1_9 0)) (=> (>= i1_9 0) (and (=> (= (ControlFlow 0 40) (- 0 41)) (< i1_9 (|Seq#Length_29303| hist))) (=> (< i1_9 (|Seq#Length_29303| hist)) (=> (= (ControlFlow 0 40) 39) anon27_correct))))))))
(let ((anon94_Else_correct  (=> (and (forall ((k_5 Int) (j_5_1 Int) ) (!  (=> (and (>= k_5 0) (and (< k_5 (|Seq#Length_29303| matrix)) (and (>= j_5_1 0) (and (< j_5_1 (|Seq#Length_29303| matrix)) (not (= k_5 j_5_1)))))) (not (= (|Seq#Index_29303| matrix k_5) (|Seq#Index_29303| matrix j_5_1))))
 :qid |stdinbpl.3467:20|
 :skolemid |258|
 :pattern ( (|Seq#Index_29303| matrix k_5) (|Seq#Index_29303| matrix j_5_1))
)) (state Heap@@41 QPMask@0)) (and (and (=> (= (ControlFlow 0 169) 167) anon96_Else_correct) (=> (= (ControlFlow 0 169) 40) anon97_Then_correct)) (=> (= (ControlFlow 0 169) 43) anon97_Else_correct)))))
(let ((anon23_correct true))
(let ((anon95_Else_correct  (=> (and (not (and (>= k_38 0) (and (< k_38 (|Seq#Length_29303| matrix)) (and (>= j_32 0) (and (< j_32 (|Seq#Length_29303| matrix)) (not (= k_38 j_32))))))) (= (ControlFlow 0 38) 32)) anon23_correct)))
(let ((anon95_Then_correct  (=> (and (>= k_38 0) (and (< k_38 (|Seq#Length_29303| matrix)) (and (>= j_32 0) (and (< j_32 (|Seq#Length_29303| matrix)) (not (= k_38 j_32)))))) (and (=> (= (ControlFlow 0 33) (- 0 37)) (>= k_38 0)) (=> (>= k_38 0) (and (=> (= (ControlFlow 0 33) (- 0 36)) (< k_38 (|Seq#Length_29303| matrix))) (=> (< k_38 (|Seq#Length_29303| matrix)) (and (=> (= (ControlFlow 0 33) (- 0 35)) (>= j_32 0)) (=> (>= j_32 0) (and (=> (= (ControlFlow 0 33) (- 0 34)) (< j_32 (|Seq#Length_29303| matrix))) (=> (< j_32 (|Seq#Length_29303| matrix)) (=> (= (ControlFlow 0 33) 32) anon23_correct))))))))))))
(let ((anon92_Else_correct  (=> (and (forall ((k_3 Int) (j_3_1 Int) ) (!  (=> (and (>= k_3 0) (and (< k_3 (|Seq#Length_29303| hist)) (and (>= j_3_1 0) (and (< j_3_1 (|Seq#Length_29303| hist)) (not (= k_3 j_3_1)))))) (not (= (|Seq#Index_29303| hist k_3) (|Seq#Index_29303| hist j_3_1))))
 :qid |stdinbpl.3447:20|
 :skolemid |257|
 :pattern ( (|Seq#Index_29303| hist k_3) (|Seq#Index_29303| hist j_3_1))
)) (state Heap@@41 QPMask@0)) (and (and (=> (= (ControlFlow 0 170) 169) anon94_Else_correct) (=> (= (ControlFlow 0 170) 33) anon95_Then_correct)) (=> (= (ControlFlow 0 170) 38) anon95_Else_correct)))))
(let ((anon19_correct true))
(let ((anon93_Else_correct  (=> (and (not (and (>= k_37 0) (and (< k_37 (|Seq#Length_29303| hist)) (and (>= j_31 0) (and (< j_31 (|Seq#Length_29303| hist)) (not (= k_37 j_31))))))) (= (ControlFlow 0 31) 25)) anon19_correct)))
(let ((anon93_Then_correct  (=> (and (>= k_37 0) (and (< k_37 (|Seq#Length_29303| hist)) (and (>= j_31 0) (and (< j_31 (|Seq#Length_29303| hist)) (not (= k_37 j_31)))))) (and (=> (= (ControlFlow 0 26) (- 0 30)) (>= k_37 0)) (=> (>= k_37 0) (and (=> (= (ControlFlow 0 26) (- 0 29)) (< k_37 (|Seq#Length_29303| hist))) (=> (< k_37 (|Seq#Length_29303| hist)) (and (=> (= (ControlFlow 0 26) (- 0 28)) (>= j_31 0)) (=> (>= j_31 0) (and (=> (= (ControlFlow 0 26) (- 0 27)) (< j_31 (|Seq#Length_29303| hist))) (=> (< j_31 (|Seq#Length_29303| hist)) (=> (= (ControlFlow 0 26) 25) anon19_correct))))))))))))
(let ((anon89_Else_correct  (=> (and (and (forall ((k_fresh_rw_0_1 Int) ) (!  (=> (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) k_fresh_rw_0_1) (< (mod k_fresh_rw_0_1 step@@9) N)) (|Seq#Contains_3683| (|Seq#Range| 0 P_1) (select (|PolymorphicMapType_40968_29264_3805#PolymorphicMapType_40968| Heap@@41) (|Seq#Index_29303| matrix k_fresh_rw_0_1) Ref__Integer_value)))
 :qid |stdinbpl.3425:20|
 :skolemid |256|
 :pattern ( (|Seq#Index_29303| matrix k_fresh_rw_0_1))
)) (state Heap@@41 QPMask@0)) (and (<= P_1 (|Seq#Length_29303| hist)) (state Heap@@41 QPMask@0))) (and (and (=> (= (ControlFlow 0 171) 170) anon92_Else_correct) (=> (= (ControlFlow 0 171) 26) anon93_Then_correct)) (=> (= (ControlFlow 0 171) 31) anon93_Else_correct)))))
(let ((anon15_correct true))
(let ((anon91_Else_correct  (=> (and (not (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) k_fresh_rw_0_5) (< (mod k_fresh_rw_0_5 step@@9) N))) (= (ControlFlow 0 21) 16)) anon15_correct)))
(let ((anon91_Then_correct  (=> (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) k_fresh_rw_0_5) (< (mod k_fresh_rw_0_5 step@@9) N)) (and (=> (= (ControlFlow 0 17) (- 0 20)) (>= k_fresh_rw_0_5 0)) (=> (>= k_fresh_rw_0_5 0) (and (=> (= (ControlFlow 0 17) (- 0 19)) (< k_fresh_rw_0_5 (|Seq#Length_29303| matrix))) (=> (< k_fresh_rw_0_5 (|Seq#Length_29303| matrix)) (and (=> (= (ControlFlow 0 17) (- 0 18)) (HasDirectPerm_29264_3805 QPMask@0 (|Seq#Index_29303| matrix k_fresh_rw_0_5) Ref__Integer_value)) (=> (HasDirectPerm_29264_3805 QPMask@0 (|Seq#Index_29303| matrix k_fresh_rw_0_5) Ref__Integer_value) (=> (= (ControlFlow 0 17) 16) anon15_correct))))))))))
(let ((anon90_Else_correct  (=> (not (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) k_fresh_rw_0_5)) (and (=> (= (ControlFlow 0 24) 17) anon91_Then_correct) (=> (= (ControlFlow 0 24) 21) anon91_Else_correct)))))
(let ((anon90_Then_correct  (=> (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) k_fresh_rw_0_5) (and (=> (= (ControlFlow 0 22) (- 0 23)) (not (= step@@9 0))) (=> (not (= step@@9 0)) (and (=> (= (ControlFlow 0 22) 17) anon91_Then_correct) (=> (= (ControlFlow 0 22) 21) anon91_Else_correct)))))))
(let ((anon86_Else_correct  (and (=> (= (ControlFlow 0 172) (- 0 174)) (forall ((j1_1 Int) (j1_1_1 Int) ) (!  (=> (and (and (and (and (not (= j1_1 j1_1_1)) (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) j1_1) (< (mod j1_1 step@@9) N))) (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) j1_1_1) (< (mod j1_1_1 step@@9) N))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_29303| matrix j1_1) (|Seq#Index_29303| matrix j1_1_1))))
 :qid |stdinbpl.3367:15|
 :skolemid |249|
))) (=> (forall ((j1_1@@0 Int) (j1_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= j1_1@@0 j1_1_1@@0)) (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) j1_1@@0) (< (mod j1_1@@0 step@@9) N))) (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) j1_1_1@@0) (< (mod j1_1_1@@0 step@@9) N))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_29303| matrix j1_1@@0) (|Seq#Index_29303| matrix j1_1_1@@0))))
 :qid |stdinbpl.3367:15|
 :skolemid |249|
)) (=> (and (forall ((j1_1@@1 Int) ) (!  (=> (and (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) j1_1@@1) (< (mod j1_1@@1 step@@9) N)) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange22 (|Seq#Index_29303| matrix j1_1@@1)) (= (invRecv22 (|Seq#Index_29303| matrix j1_1@@1)) j1_1@@1)))
 :qid |stdinbpl.3373:22|
 :skolemid |250|
 :pattern ( (|Seq#Index_29303| matrix j1_1@@1))
 :pattern ( (|Seq#Index_29303| matrix j1_1@@1))
)) (forall ((o_4@@76 T@Ref) ) (!  (=> (and (and (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) (invRecv22 o_4@@76)) (< (mod (invRecv22 o_4@@76) step@@9) N)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange22 o_4@@76)) (= (|Seq#Index_29303| matrix (invRecv22 o_4@@76)) o_4@@76))
 :qid |stdinbpl.3377:22|
 :skolemid |251|
 :pattern ( (invRecv22 o_4@@76))
))) (and (=> (= (ControlFlow 0 172) (- 0 173)) (forall ((j1_1@@2 Int) ) (!  (=> (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) j1_1@@2) (< (mod j1_1@@2 step@@9) N)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3383:15|
 :skolemid |252|
 :pattern ( (|Seq#Index_29303| matrix j1_1@@2))
 :pattern ( (|Seq#Index_29303| matrix j1_1@@2))
))) (=> (forall ((j1_1@@3 Int) ) (!  (=> (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) j1_1@@3) (< (mod j1_1@@3 step@@9) N)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3383:15|
 :skolemid |252|
 :pattern ( (|Seq#Index_29303| matrix j1_1@@3))
 :pattern ( (|Seq#Index_29303| matrix j1_1@@3))
)) (=> (and (forall ((j1_1@@4 Int) ) (!  (=> (and (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) j1_1@@4) (< (mod j1_1@@4 step@@9) N)) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= (|Seq#Index_29303| matrix j1_1@@4) null)))
 :qid |stdinbpl.3389:22|
 :skolemid |253|
 :pattern ( (|Seq#Index_29303| matrix j1_1@@4))
 :pattern ( (|Seq#Index_29303| matrix j1_1@@4))
)) (forall ((o_4@@77 T@Ref) ) (!  (and (=> (and (and (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) (invRecv22 o_4@@77)) (< (mod (invRecv22 o_4@@77) step@@9) N)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange22 o_4@@77)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (|Seq#Index_29303| matrix (invRecv22 o_4@@77)) o_4@@77)) (= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@0) o_4@@77 Ref__Integer_value) (+ (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| ZeroMask) o_4@@77 Ref__Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) (invRecv22 o_4@@77)) (< (mod (invRecv22 o_4@@77) step@@9) N)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange22 o_4@@77))) (= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@0) o_4@@77 Ref__Integer_value) (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| ZeroMask) o_4@@77 Ref__Integer_value))))
 :qid |stdinbpl.3395:22|
 :skolemid |254|
 :pattern ( (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@0) o_4@@77 Ref__Integer_value))
))) (=> (and (and (and (and (and (forall ((o_4@@78 T@Ref) (f_5@@54 T@Field_41028_53) ) (!  (=> true (= (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| ZeroMask) o_4@@78 f_5@@54) (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| QPMask@0) o_4@@78 f_5@@54)))
 :qid |stdinbpl.3399:29|
 :skolemid |255|
 :pattern ( (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| ZeroMask) o_4@@78 f_5@@54))
 :pattern ( (select (|PolymorphicMapType_40989_29264_53#PolymorphicMapType_40989| QPMask@0) o_4@@78 f_5@@54))
)) (forall ((o_4@@79 T@Ref) (f_5@@55 T@Field_41041_41042) ) (!  (=> true (= (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| ZeroMask) o_4@@79 f_5@@55) (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| QPMask@0) o_4@@79 f_5@@55)))
 :qid |stdinbpl.3399:29|
 :skolemid |255|
 :pattern ( (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| ZeroMask) o_4@@79 f_5@@55))
 :pattern ( (select (|PolymorphicMapType_40989_29264_41042#PolymorphicMapType_40989| QPMask@0) o_4@@79 f_5@@55))
))) (forall ((o_4@@80 T@Ref) (f_5@@56 T@Field_47114_3805) ) (!  (=> (not (= f_5@@56 Ref__Integer_value)) (= (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| ZeroMask) o_4@@80 f_5@@56) (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@0) o_4@@80 f_5@@56)))
 :qid |stdinbpl.3399:29|
 :skolemid |255|
 :pattern ( (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| ZeroMask) o_4@@80 f_5@@56))
 :pattern ( (select (|PolymorphicMapType_40989_29264_3805#PolymorphicMapType_40989| QPMask@0) o_4@@80 f_5@@56))
))) (forall ((o_4@@81 T@Ref) (f_5@@57 T@Field_29264_115514) ) (!  (=> true (= (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| ZeroMask) o_4@@81 f_5@@57) (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| QPMask@0) o_4@@81 f_5@@57)))
 :qid |stdinbpl.3399:29|
 :skolemid |255|
 :pattern ( (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| ZeroMask) o_4@@81 f_5@@57))
 :pattern ( (select (|PolymorphicMapType_40989_29264_115514#PolymorphicMapType_40989| QPMask@0) o_4@@81 f_5@@57))
))) (forall ((o_4@@82 T@Ref) (f_5@@58 T@Field_29264_115647) ) (!  (=> true (= (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| ZeroMask) o_4@@82 f_5@@58) (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| QPMask@0) o_4@@82 f_5@@58)))
 :qid |stdinbpl.3399:29|
 :skolemid |255|
 :pattern ( (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| ZeroMask) o_4@@82 f_5@@58))
 :pattern ( (select (|PolymorphicMapType_40989_29264_119769#PolymorphicMapType_40989| QPMask@0) o_4@@82 f_5@@58))
))) (and (and (state Heap@@41 QPMask@0) (state Heap@@41 QPMask@0)) (and (<= N step@@9) (state Heap@@41 QPMask@0)))) (and (and (=> (= (ControlFlow 0 172) 171) anon89_Else_correct) (=> (= (ControlFlow 0 172) 22) anon90_Then_correct)) (=> (= (ControlFlow 0 172) 24) anon90_Else_correct)))))))))))
(let ((anon9_correct true))
(let ((anon88_Else_correct  (=> (and (not (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) j1_13) (< (mod j1_13 step@@9) N))) (= (ControlFlow 0 12) 8)) anon9_correct)))
(let ((anon88_Then_correct  (=> (and (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) j1_13) (< (mod j1_13 step@@9) N)) (and (=> (= (ControlFlow 0 9) (- 0 11)) (>= j1_13 0)) (=> (>= j1_13 0) (and (=> (= (ControlFlow 0 9) (- 0 10)) (< j1_13 (|Seq#Length_29303| matrix))) (=> (< j1_13 (|Seq#Length_29303| matrix)) (=> (= (ControlFlow 0 9) 8) anon9_correct))))))))
(let ((anon87_Else_correct  (=> (not (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) j1_13)) (and (=> (= (ControlFlow 0 15) 9) anon88_Then_correct) (=> (= (ControlFlow 0 15) 12) anon88_Else_correct)))))
(let ((anon87_Then_correct  (=> (|Seq#Contains_3683| (|Seq#Range| 0 (* M step@@9)) j1_13) (and (=> (= (ControlFlow 0 13) (- 0 14)) (not (= step@@9 0))) (=> (not (= step@@9 0)) (and (=> (= (ControlFlow 0 13) 9) anon88_Then_correct) (=> (= (ControlFlow 0 13) 12) anon88_Else_correct)))))))
(let ((anon84_Else_correct  (=> (and (forall ((k_1_1 Int) (j_1 Int) ) (!  (=> (and (>= k_1_1 0) (and (< k_1_1 (|Seq#Length_29303| matrix)) (and (>= j_1 0) (and (< j_1 (|Seq#Length_29303| matrix)) (not (= k_1_1 j_1)))))) (not (= (|Seq#Index_29303| matrix k_1_1) (|Seq#Index_29303| matrix j_1))))
 :qid |stdinbpl.3345:20|
 :skolemid |248|
 :pattern ( (|Seq#Index_29303| matrix k_1_1) (|Seq#Index_29303| matrix j_1))
)) (state Heap@@41 ZeroMask)) (and (and (=> (= (ControlFlow 0 175) 172) anon86_Else_correct) (=> (= (ControlFlow 0 175) 13) anon87_Then_correct)) (=> (= (ControlFlow 0 175) 15) anon87_Else_correct)))))
(let ((anon3_correct true))
(let ((anon85_Else_correct  (=> (and (not (and (>= k_34 0) (and (< k_34 (|Seq#Length_29303| matrix)) (and (>= j_29 0) (and (< j_29 (|Seq#Length_29303| matrix)) (not (= k_34 j_29))))))) (= (ControlFlow 0 7) 1)) anon3_correct)))
(let ((anon85_Then_correct  (=> (and (>= k_34 0) (and (< k_34 (|Seq#Length_29303| matrix)) (and (>= j_29 0) (and (< j_29 (|Seq#Length_29303| matrix)) (not (= k_34 j_29)))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= k_34 0)) (=> (>= k_34 0) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< k_34 (|Seq#Length_29303| matrix))) (=> (< k_34 (|Seq#Length_29303| matrix)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= j_29 0)) (=> (>= j_29 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< j_29 (|Seq#Length_29303| matrix))) (=> (< j_29 (|Seq#Length_29303| matrix)) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))))))))
(let ((anon0_correct  (=> (state Heap@@41 ZeroMask) (=> (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (=> (and (and (select (|PolymorphicMapType_40968_29008_53#PolymorphicMapType_40968| Heap@@41) diz $allocated) (not (= diz null))) (and (state Heap@@41 ZeroMask) (> M 0))) (=> (and (and (and (> N 0) (>= step@@9 N)) (and (> P_1 0) (state Heap@@41 ZeroMask))) (and (and (<= N step@@9) (state Heap@@41 ZeroMask)) (and (<= (* M step@@9) (|Seq#Length_29303| matrix)) (state Heap@@41 ZeroMask)))) (and (and (=> (= (ControlFlow 0 176) 175) anon84_Else_correct) (=> (= (ControlFlow 0 176) 2) anon85_Then_correct)) (=> (= (ControlFlow 0 176) 7) anon85_Else_correct))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (> wildcard 0.0) true) (= (ControlFlow 0 177) 176)) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
