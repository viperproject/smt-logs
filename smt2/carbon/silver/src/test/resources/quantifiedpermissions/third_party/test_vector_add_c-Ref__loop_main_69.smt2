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
(declare-sort T@Field_36709_53 0)
(declare-sort T@Field_36722_36723 0)
(declare-sort T@Field_42791_3757 0)
(declare-sort T@Field_26161_103376 0)
(declare-sort T@Field_26161_103243 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_36670 0)) (((PolymorphicMapType_36670 (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| (Array T@Ref T@Field_42791_3757 Real)) (|PolymorphicMapType_36670_26161_53#PolymorphicMapType_36670| (Array T@Ref T@Field_36709_53 Real)) (|PolymorphicMapType_36670_26161_36723#PolymorphicMapType_36670| (Array T@Ref T@Field_36722_36723 Real)) (|PolymorphicMapType_36670_26161_103243#PolymorphicMapType_36670| (Array T@Ref T@Field_26161_103243 Real)) (|PolymorphicMapType_36670_26161_107498#PolymorphicMapType_36670| (Array T@Ref T@Field_26161_103376 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_37198 0)) (((PolymorphicMapType_37198 (|PolymorphicMapType_37198_36709_53#PolymorphicMapType_37198| (Array T@Ref T@Field_36709_53 Bool)) (|PolymorphicMapType_37198_36709_36723#PolymorphicMapType_37198| (Array T@Ref T@Field_36722_36723 Bool)) (|PolymorphicMapType_37198_36709_3757#PolymorphicMapType_37198| (Array T@Ref T@Field_42791_3757 Bool)) (|PolymorphicMapType_37198_36709_103243#PolymorphicMapType_37198| (Array T@Ref T@Field_26161_103243 Bool)) (|PolymorphicMapType_37198_36709_104554#PolymorphicMapType_37198| (Array T@Ref T@Field_26161_103376 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_36649 0)) (((PolymorphicMapType_36649 (|PolymorphicMapType_36649_25909_53#PolymorphicMapType_36649| (Array T@Ref T@Field_36709_53 Bool)) (|PolymorphicMapType_36649_25912_25913#PolymorphicMapType_36649| (Array T@Ref T@Field_36722_36723 T@Ref)) (|PolymorphicMapType_36649_26161_3757#PolymorphicMapType_36649| (Array T@Ref T@Field_42791_3757 Int)) (|PolymorphicMapType_36649_26161_103420#PolymorphicMapType_36649| (Array T@Ref T@Field_26161_103376 T@PolymorphicMapType_37198)) (|PolymorphicMapType_36649_36709_103243#PolymorphicMapType_36649| (Array T@Ref T@Field_26161_103243 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_36709_53)
(declare-fun Ref__Integer_value () T@Field_42791_3757)
(declare-sort T@Seq_43833 0)
(declare-fun |Seq#Length_26200| (T@Seq_43833) Int)
(declare-fun |Seq#Drop_26200| (T@Seq_43833 Int) T@Seq_43833)
(declare-sort T@Seq_3635 0)
(declare-fun |Seq#Length_3635| (T@Seq_3635) Int)
(declare-fun |Seq#Drop_3635| (T@Seq_3635 Int) T@Seq_3635)
(declare-fun state (T@PolymorphicMapType_36649 T@PolymorphicMapType_36670) Bool)
(declare-fun |count_square'| (T@PolymorphicMapType_36649 Int Int Int Int Int Int T@Seq_43833 Int) Int)
(declare-fun |count_square#frame| (T@FrameType Int Int Int Int Int Int T@Seq_43833 Int) Int)
(declare-fun FrameFragment_4616 (Int) T@FrameType)
(declare-fun |count_square#condqp3| (T@PolymorphicMapType_36649 Int Int Int Int Int Int T@Seq_43833 Int) Int)
(declare-fun succHeap (T@PolymorphicMapType_36649 T@PolymorphicMapType_36649) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_36649 T@PolymorphicMapType_36649) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_36670) Bool)
(declare-fun |sum_list'| (T@PolymorphicMapType_36649 Int Int T@Seq_3635) Int)
(declare-fun dummyFunction_4064 (Int) Bool)
(declare-fun |sum_list#triggerStateless| (Int Int T@Seq_3635) Int)
(declare-fun ZeroPMask () T@PolymorphicMapType_37198)
(declare-fun |Seq#Index_26200| (T@Seq_43833 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3635| (T@Seq_3635 Int) Int)
(declare-fun |Seq#Empty_26200| () T@Seq_43833)
(declare-fun |Seq#Empty_3635| () T@Seq_3635)
(declare-fun |Seq#Update_26200| (T@Seq_43833 Int T@Ref) T@Seq_43833)
(declare-fun |Seq#Update_3635| (T@Seq_3635 Int Int) T@Seq_3635)
(declare-fun |Seq#Take_26200| (T@Seq_43833 Int) T@Seq_43833)
(declare-fun |Seq#Take_3635| (T@Seq_3635 Int) T@Seq_3635)
(declare-fun |Seq#Contains_3635| (T@Seq_3635 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3635)
(declare-fun |Seq#Contains_43833| (T@Seq_43833 T@Ref) Bool)
(declare-fun |Seq#Skolem_43833| (T@Seq_43833 T@Ref) Int)
(declare-fun |Seq#Skolem_3635| (T@Seq_3635 Int) Int)
(declare-fun sum_array (T@PolymorphicMapType_36649 Int Int Int T@Seq_43833) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |sum_array'| (T@PolymorphicMapType_36649 Int Int Int T@Seq_43833) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_36649 T@PolymorphicMapType_36649 T@PolymorphicMapType_36670) Bool)
(declare-fun IsPredicateField_26161_103334 (T@Field_26161_103243) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_26161 (T@Field_26161_103243) T@Field_26161_103376)
(declare-fun HasDirectPerm_26161_103307 (T@PolymorphicMapType_36670 T@Ref T@Field_26161_103243) Bool)
(declare-fun IsWandField_26161_105081 (T@Field_26161_103243) Bool)
(declare-fun WandMaskField_26161 (T@Field_26161_103243) T@Field_26161_103376)
(declare-fun |Seq#Singleton_26200| (T@Ref) T@Seq_43833)
(declare-fun |Seq#Singleton_3635| (Int) T@Seq_3635)
(declare-fun count_square (T@PolymorphicMapType_36649 Int Int Int Int Int Int T@Seq_43833 Int) Int)
(declare-fun |count_square#triggerStateless| (Int Int Int Int Int Int T@Seq_43833 Int) Int)
(declare-fun |Seq#Append_43833| (T@Seq_43833 T@Seq_43833) T@Seq_43833)
(declare-fun |Seq#Append_3635| (T@Seq_3635 T@Seq_3635) T@Seq_3635)
(declare-fun |sum_square#condqp2| (T@PolymorphicMapType_36649 Int Int Int Int Int Int T@Seq_43833) Int)
(declare-fun |sk_sum_square#condqp2| (Int Int) Int)
(declare-fun |sk_count_square#condqp3| (Int Int) Int)
(declare-fun dummyHeap () T@PolymorphicMapType_36649)
(declare-fun ZeroMask () T@PolymorphicMapType_36670)
(declare-fun sum_square (T@PolymorphicMapType_36649 Int Int Int Int Int Int T@Seq_43833) Int)
(declare-fun |sum_square'| (T@PolymorphicMapType_36649 Int Int Int Int Int Int T@Seq_43833) Int)
(declare-fun InsidePredicate_36709_36709 (T@Field_26161_103243 T@FrameType T@Field_26161_103243 T@FrameType) Bool)
(declare-fun IsPredicateField_26161_3757 (T@Field_42791_3757) Bool)
(declare-fun IsWandField_26161_3757 (T@Field_42791_3757) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_26161_108627 (T@Field_26161_103376) Bool)
(declare-fun IsWandField_26161_108643 (T@Field_26161_103376) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_26161_36723 (T@Field_36722_36723) Bool)
(declare-fun IsWandField_26161_36723 (T@Field_36722_36723) Bool)
(declare-fun IsPredicateField_26161_53 (T@Field_36709_53) Bool)
(declare-fun IsWandField_26161_53 (T@Field_36709_53) Bool)
(declare-fun |sum_list#frame| (T@FrameType Int Int T@Seq_3635) Int)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun HasDirectPerm_26161_109081 (T@PolymorphicMapType_36670 T@Ref T@Field_26161_103376) Bool)
(declare-fun HasDirectPerm_26161_36723 (T@PolymorphicMapType_36670 T@Ref T@Field_36722_36723) Bool)
(declare-fun HasDirectPerm_26161_53 (T@PolymorphicMapType_36670 T@Ref T@Field_36709_53) Bool)
(declare-fun HasDirectPerm_26161_3757 (T@PolymorphicMapType_36670 T@Ref T@Field_42791_3757) Bool)
(declare-fun |sum_array#triggerStateless| (Int Int Int T@Seq_43833) Int)
(declare-fun |count_list'| (T@PolymorphicMapType_36649 Int Int T@Seq_3635 Int) Int)
(declare-fun |count_list#triggerStateless| (Int Int T@Seq_3635 Int) Int)
(declare-fun |count_array'| (T@PolymorphicMapType_36649 Int Int T@Seq_43833 Int) Int)
(declare-fun |count_array#triggerStateless| (Int Int T@Seq_43833 Int) Int)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun count_list (T@PolymorphicMapType_36649 Int Int T@Seq_3635 Int) Int)
(declare-fun count_array (T@PolymorphicMapType_36649 Int Int T@Seq_43833 Int) Int)
(declare-fun sumMask (T@PolymorphicMapType_36670 T@PolymorphicMapType_36670 T@PolymorphicMapType_36670) Bool)
(declare-fun |sum_square#triggerStateless| (Int Int Int Int Int Int T@Seq_43833) Int)
(declare-fun |count_list#frame| (T@FrameType Int Int T@Seq_3635 Int) Int)
(declare-fun |Seq#Equal_43833| (T@Seq_43833 T@Seq_43833) Bool)
(declare-fun |Seq#Equal_3635| (T@Seq_3635 T@Seq_3635) Bool)
(declare-fun sum_list (T@PolymorphicMapType_36649 Int Int T@Seq_3635) Int)
(declare-fun |Seq#ContainsTrigger_26200| (T@Seq_43833 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3635| (T@Seq_3635 Int) Bool)
(declare-fun |count_array#condqp4| (T@PolymorphicMapType_36649 Int Int T@Seq_43833 Int) Int)
(declare-fun |sk_count_array#condqp4| (Int Int) Int)
(declare-fun |sum_array#condqp1| (T@PolymorphicMapType_36649 Int Int Int T@Seq_43833) Int)
(declare-fun |sk_sum_array#condqp1| (Int Int) Int)
(declare-fun |sum_square#frame| (T@FrameType Int Int Int Int Int Int T@Seq_43833) Int)
(declare-fun |Seq#SkolemDiff_43833| (T@Seq_43833 T@Seq_43833) Int)
(declare-fun |Seq#SkolemDiff_3635| (T@Seq_3635 T@Seq_3635) Int)
(declare-fun |sum_array#frame| (T@FrameType Int Int Int T@Seq_43833) Int)
(declare-fun |count_array#frame| (T@FrameType Int Int T@Seq_43833 Int) Int)
(assert (forall ((s T@Seq_43833) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_26200| s)) (= (|Seq#Length_26200| (|Seq#Drop_26200| s n)) (- (|Seq#Length_26200| s) n))) (=> (< (|Seq#Length_26200| s) n) (= (|Seq#Length_26200| (|Seq#Drop_26200| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_26200| (|Seq#Drop_26200| s n)) (|Seq#Length_26200| s))))
 :qid |stdinbpl.389:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_26200| (|Seq#Drop_26200| s n)))
 :pattern ( (|Seq#Length_26200| s) (|Seq#Drop_26200| s n))
)))
(assert (forall ((s@@0 T@Seq_3635) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3635| s@@0)) (= (|Seq#Length_3635| (|Seq#Drop_3635| s@@0 n@@0)) (- (|Seq#Length_3635| s@@0) n@@0))) (=> (< (|Seq#Length_3635| s@@0) n@@0) (= (|Seq#Length_3635| (|Seq#Drop_3635| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3635| (|Seq#Drop_3635| s@@0 n@@0)) (|Seq#Length_3635| s@@0))))
 :qid |stdinbpl.389:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3635| (|Seq#Drop_3635| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3635| s@@0) (|Seq#Drop_3635| s@@0 n@@0))
)))
(assert (forall ((Heap T@PolymorphicMapType_36649) (Mask T@PolymorphicMapType_36670) (i Int) (lo Int) (hi Int) (step Int) (vmin Int) (vmax Int) (ar T@Seq_43833) (v_2 Int) ) (!  (=> (state Heap Mask) (= (|count_square'| Heap i lo hi step vmin vmax ar v_2) (|count_square#frame| (FrameFragment_4616 (|count_square#condqp3| Heap i lo hi step vmin vmax ar v_2)) i lo hi step vmin vmax ar v_2)))
 :qid |stdinbpl.1277:15|
 :skolemid |108|
 :pattern ( (state Heap Mask) (|count_square'| Heap i lo hi step vmin vmax ar v_2))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_36649) (Heap1 T@PolymorphicMapType_36649) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_36649) (Mask@@0 T@PolymorphicMapType_36670) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_36649) (Heap1@@0 T@PolymorphicMapType_36649) (Heap2 T@PolymorphicMapType_36649) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_36649) (i@@0 Int) (hi@@0 Int) (ar@@0 T@Seq_3635) ) (! (dummyFunction_4064 (|sum_list#triggerStateless| i@@0 hi@@0 ar@@0))
 :qid |stdinbpl.675:15|
 :skolemid |59|
 :pattern ( (|sum_list'| Heap@@1 i@@0 hi@@0 ar@@0))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_26161_103376) ) (!  (not (select (|PolymorphicMapType_37198_36709_104554#PolymorphicMapType_37198| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_37198_36709_104554#PolymorphicMapType_37198| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_26161_103243) ) (!  (not (select (|PolymorphicMapType_37198_36709_103243#PolymorphicMapType_37198| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_37198_36709_103243#PolymorphicMapType_37198| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_42791_3757) ) (!  (not (select (|PolymorphicMapType_37198_36709_3757#PolymorphicMapType_37198| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_37198_36709_3757#PolymorphicMapType_37198| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_36722_36723) ) (!  (not (select (|PolymorphicMapType_37198_36709_36723#PolymorphicMapType_37198| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_37198_36709_36723#PolymorphicMapType_37198| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_36709_53) ) (!  (not (select (|PolymorphicMapType_37198_36709_53#PolymorphicMapType_37198| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_37198_36709_53#PolymorphicMapType_37198| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((s@@1 T@Seq_43833) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_26200| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_26200| (|Seq#Drop_26200| s@@1 n@@1) j) (|Seq#Index_26200| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.410:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_26200| (|Seq#Drop_26200| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3635) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3635| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3635| (|Seq#Drop_3635| s@@2 n@@2) j@@0) (|Seq#Index_3635| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.410:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3635| (|Seq#Drop_3635| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_26200| |Seq#Empty_26200|) 0))
(assert (= (|Seq#Length_3635| |Seq#Empty_3635|) 0))
(assert (forall ((s@@3 T@Seq_43833) (i@@1 Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_26200| s@@3))) (and (=> (= i@@1 n@@3) (= (|Seq#Index_26200| (|Seq#Update_26200| s@@3 i@@1 v) n@@3) v)) (=> (not (= i@@1 n@@3)) (= (|Seq#Index_26200| (|Seq#Update_26200| s@@3 i@@1 v) n@@3) (|Seq#Index_26200| s@@3 n@@3)))))
 :qid |stdinbpl.365:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_26200| (|Seq#Update_26200| s@@3 i@@1 v) n@@3))
 :pattern ( (|Seq#Index_26200| s@@3 n@@3) (|Seq#Update_26200| s@@3 i@@1 v))
)))
(assert (forall ((s@@4 T@Seq_3635) (i@@2 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3635| s@@4))) (and (=> (= i@@2 n@@4) (= (|Seq#Index_3635| (|Seq#Update_3635| s@@4 i@@2 v@@0) n@@4) v@@0)) (=> (not (= i@@2 n@@4)) (= (|Seq#Index_3635| (|Seq#Update_3635| s@@4 i@@2 v@@0) n@@4) (|Seq#Index_3635| s@@4 n@@4)))))
 :qid |stdinbpl.365:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3635| (|Seq#Update_3635| s@@4 i@@2 v@@0) n@@4))
 :pattern ( (|Seq#Index_3635| s@@4 n@@4) (|Seq#Update_3635| s@@4 i@@2 v@@0))
)))
(assert (forall ((s@@5 T@Seq_43833) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_26200| s@@5)) (= (|Seq#Length_26200| (|Seq#Take_26200| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_26200| s@@5) n@@5) (= (|Seq#Length_26200| (|Seq#Take_26200| s@@5 n@@5)) (|Seq#Length_26200| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_26200| (|Seq#Take_26200| s@@5 n@@5)) 0)))
 :qid |stdinbpl.376:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_26200| (|Seq#Take_26200| s@@5 n@@5)))
 :pattern ( (|Seq#Take_26200| s@@5 n@@5) (|Seq#Length_26200| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3635) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3635| s@@6)) (= (|Seq#Length_3635| (|Seq#Take_3635| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3635| s@@6) n@@6) (= (|Seq#Length_3635| (|Seq#Take_3635| s@@6 n@@6)) (|Seq#Length_3635| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3635| (|Seq#Take_3635| s@@6 n@@6)) 0)))
 :qid |stdinbpl.376:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3635| (|Seq#Take_3635| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3635| s@@6 n@@6) (|Seq#Length_3635| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3635| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.650:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3635| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_43833) (x T@Ref) ) (!  (=> (|Seq#Contains_43833| s@@7 x) (and (and (<= 0 (|Seq#Skolem_43833| s@@7 x)) (< (|Seq#Skolem_43833| s@@7 x) (|Seq#Length_26200| s@@7))) (= (|Seq#Index_26200| s@@7 (|Seq#Skolem_43833| s@@7 x)) x)))
 :qid |stdinbpl.508:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_43833| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3635) (x@@0 Int) ) (!  (=> (|Seq#Contains_3635| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3635| s@@8 x@@0)) (< (|Seq#Skolem_3635| s@@8 x@@0) (|Seq#Length_3635| s@@8))) (= (|Seq#Index_3635| s@@8 (|Seq#Skolem_3635| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.508:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3635| s@@8 x@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_36649) (Mask@@1 T@PolymorphicMapType_36670) (i@@3 Int) (lo@@0 Int) (hi@@1 Int) (ar@@1 T@Seq_43833) ) (!  (=> (and (state Heap@@2 Mask@@1) (< AssumeFunctionsAbove 3)) (=> (and (and (and (<= 0 lo@@0) (and (<= lo@@0 i@@3) (<= i@@3 hi@@1))) (<= hi@@1 (|Seq#Length_26200| ar@@1))) (forall ((ix_20 Int) (jx_20 Int) ) (!  (=> (and (>= ix_20 0) (and (< ix_20 (|Seq#Length_26200| ar@@1)) (and (>= jx_20 0) (and (< jx_20 (|Seq#Length_26200| ar@@1)) (not (= ix_20 jx_20)))))) (not (= (|Seq#Index_26200| ar@@1 ix_20) (|Seq#Index_26200| ar@@1 jx_20))))
 :qid |stdinbpl.768:124|
 :skolemid |64|
 :pattern ( (|Seq#Index_26200| ar@@1 ix_20) (|Seq#Index_26200| ar@@1 jx_20))
))) (= (sum_array Heap@@2 i@@3 lo@@0 hi@@1 ar@@1) (ite (< i@@3 hi@@1) (+ (select (|PolymorphicMapType_36649_26161_3757#PolymorphicMapType_36649| Heap@@2) (|Seq#Index_26200| ar@@1 i@@3) Ref__Integer_value) (|sum_array'| Heap@@2 (+ i@@3 1) lo@@0 hi@@1 ar@@1)) 0))))
 :qid |stdinbpl.766:15|
 :skolemid |65|
 :pattern ( (state Heap@@2 Mask@@1) (sum_array Heap@@2 i@@3 lo@@0 hi@@1 ar@@1))
)))
(assert (forall ((s@@9 T@Seq_43833) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_26200| s@@9 n@@7) s@@9))
 :qid |stdinbpl.492:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_26200| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3635) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3635| s@@10 n@@8) s@@10))
 :qid |stdinbpl.492:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3635| s@@10 n@@8))
)))
(assert (forall ((i@@4 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@4 j@@1) (- i@@4 j@@1))
 :qid |stdinbpl.345:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@4 j@@1))
)))
(assert (forall ((i@@5 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@5 j@@2) (+ i@@5 j@@2))
 :qid |stdinbpl.343:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@5 j@@2))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_36649) (ExhaleHeap T@PolymorphicMapType_36649) (Mask@@2 T@PolymorphicMapType_36670) (pm_f_26 T@Field_26161_103243) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@2) (=> (and (HasDirectPerm_26161_103307 Mask@@2 null pm_f_26) (IsPredicateField_26161_103334 pm_f_26)) (= (select (|PolymorphicMapType_36649_26161_103420#PolymorphicMapType_36649| Heap@@3) null (PredicateMaskField_26161 pm_f_26)) (select (|PolymorphicMapType_36649_26161_103420#PolymorphicMapType_36649| ExhaleHeap) null (PredicateMaskField_26161 pm_f_26)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@2) (IsPredicateField_26161_103334 pm_f_26) (select (|PolymorphicMapType_36649_26161_103420#PolymorphicMapType_36649| ExhaleHeap) null (PredicateMaskField_26161 pm_f_26)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_36649) (ExhaleHeap@@0 T@PolymorphicMapType_36649) (Mask@@3 T@PolymorphicMapType_36670) (pm_f_26@@0 T@Field_26161_103243) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@3) (=> (and (HasDirectPerm_26161_103307 Mask@@3 null pm_f_26@@0) (IsWandField_26161_105081 pm_f_26@@0)) (= (select (|PolymorphicMapType_36649_26161_103420#PolymorphicMapType_36649| Heap@@4) null (WandMaskField_26161 pm_f_26@@0)) (select (|PolymorphicMapType_36649_26161_103420#PolymorphicMapType_36649| ExhaleHeap@@0) null (WandMaskField_26161 pm_f_26@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@3) (IsWandField_26161_105081 pm_f_26@@0) (select (|PolymorphicMapType_36649_26161_103420#PolymorphicMapType_36649| ExhaleHeap@@0) null (WandMaskField_26161 pm_f_26@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_43833| (|Seq#Singleton_26200| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.633:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_43833| (|Seq#Singleton_26200| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3635| (|Seq#Singleton_3635| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.633:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3635| (|Seq#Singleton_3635| x@@2) y@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_36649) (i@@6 Int) (lo@@1 Int) (hi@@2 Int) (step@@0 Int) (vmin@@0 Int) (vmax@@0 Int) (ar@@2 T@Seq_43833) (v_2@@0 Int) ) (!  (and (= (count_square Heap@@5 i@@6 lo@@1 hi@@2 step@@0 vmin@@0 vmax@@0 ar@@2 v_2@@0) (|count_square'| Heap@@5 i@@6 lo@@1 hi@@2 step@@0 vmin@@0 vmax@@0 ar@@2 v_2@@0)) (dummyFunction_4064 (|count_square#triggerStateless| i@@6 lo@@1 hi@@2 step@@0 vmin@@0 vmax@@0 ar@@2 v_2@@0)))
 :qid |stdinbpl.1257:15|
 :skolemid |104|
 :pattern ( (count_square Heap@@5 i@@6 lo@@1 hi@@2 step@@0 vmin@@0 vmax@@0 ar@@2 v_2@@0))
)))
(assert (forall ((s@@11 T@Seq_43833) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_26200| s@@11))) (= (|Seq#Index_26200| (|Seq#Take_26200| s@@11 n@@9) j@@3) (|Seq#Index_26200| s@@11 j@@3)))
 :qid |stdinbpl.384:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_26200| (|Seq#Take_26200| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_26200| s@@11 j@@3) (|Seq#Take_26200| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3635) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3635| s@@12))) (= (|Seq#Index_3635| (|Seq#Take_3635| s@@12 n@@10) j@@4) (|Seq#Index_3635| s@@12 j@@4)))
 :qid |stdinbpl.384:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3635| (|Seq#Take_3635| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3635| s@@12 j@@4) (|Seq#Take_3635| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_43833) (t T@Seq_43833) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_26200| s@@13))) (< n@@11 (|Seq#Length_26200| (|Seq#Append_43833| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_26200| s@@13)) (|Seq#Length_26200| s@@13)) n@@11) (= (|Seq#Take_26200| (|Seq#Append_43833| s@@13 t) n@@11) (|Seq#Append_43833| s@@13 (|Seq#Take_26200| t (|Seq#Sub| n@@11 (|Seq#Length_26200| s@@13)))))))
 :qid |stdinbpl.469:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_26200| (|Seq#Append_43833| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3635) (t@@0 T@Seq_3635) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3635| s@@14))) (< n@@12 (|Seq#Length_3635| (|Seq#Append_3635| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3635| s@@14)) (|Seq#Length_3635| s@@14)) n@@12) (= (|Seq#Take_3635| (|Seq#Append_3635| s@@14 t@@0) n@@12) (|Seq#Append_3635| s@@14 (|Seq#Take_3635| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3635| s@@14)))))))
 :qid |stdinbpl.469:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3635| (|Seq#Append_3635| s@@14 t@@0) n@@12))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_36649) (i@@7 Int) (lo@@2 Int) (hi@@3 Int) (step@@1 Int) (vmin@@1 Int) (vmax@@1 Int) (ar@@3 T@Seq_43833) (v_2@@1 Int) ) (! (dummyFunction_4064 (|count_square#triggerStateless| i@@7 lo@@2 hi@@3 step@@1 vmin@@1 vmax@@1 ar@@3 v_2@@1))
 :qid |stdinbpl.1261:15|
 :skolemid |105|
 :pattern ( (|count_square'| Heap@@6 i@@7 lo@@2 hi@@3 step@@1 vmin@@1 vmax@@1 ar@@3 v_2@@1))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_36649) (Heap1Heap T@PolymorphicMapType_36649) (i@@8 Int) (lo@@3 Int) (hi@@4 Int) (step@@2 Int) (vmin@@2 Int) (vmax@@2 Int) (ar@@4 T@Seq_43833) ) (!  (=> (and (=  (and (<= vmin@@2 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4)) vmax@@2) (and (<= lo@@3 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4)) step@@2)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4)) step@@2) hi@@4))))  (and (<= vmin@@2 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4)) vmax@@2) (and (<= lo@@3 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4)) step@@2)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4)) step@@2) hi@@4))))) (=> (and (<= vmin@@2 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4)) vmax@@2) (and (<= lo@@3 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4)) step@@2)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4)) step@@2) hi@@4)))) (= (select (|PolymorphicMapType_36649_26161_3757#PolymorphicMapType_36649| Heap2Heap) (|Seq#Index_26200| ar@@4 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4))) Ref__Integer_value) (select (|PolymorphicMapType_36649_26161_3757#PolymorphicMapType_36649| Heap1Heap) (|Seq#Index_26200| ar@@4 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4))) Ref__Integer_value)))) (= (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4)))
 :qid |stdinbpl.1021:15|
 :skolemid |88|
 :pattern ( (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_36649) (Heap1Heap@@0 T@PolymorphicMapType_36649) (i@@9 Int) (lo@@4 Int) (hi@@5 Int) (step@@3 Int) (vmin@@3 Int) (vmax@@3 Int) (ar@@5 T@Seq_43833) (v_2@@2 Int) ) (!  (=> (and (=  (and (<= vmin@@3 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2)) vmax@@3) (and (<= lo@@4 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2)) step@@3)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2)) step@@3) hi@@5))))  (and (<= vmin@@3 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2)) vmax@@3) (and (<= lo@@4 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2)) step@@3)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2)) step@@3) hi@@5))))) (=> (and (<= vmin@@3 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2)) vmax@@3) (and (<= lo@@4 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2)) step@@3)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2)) step@@3) hi@@5)))) (= (select (|PolymorphicMapType_36649_26161_3757#PolymorphicMapType_36649| Heap2Heap@@0) (|Seq#Index_26200| ar@@5 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2))) Ref__Integer_value) (select (|PolymorphicMapType_36649_26161_3757#PolymorphicMapType_36649| Heap1Heap@@0) (|Seq#Index_26200| ar@@5 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2))) Ref__Integer_value)))) (= (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2)))
 :qid |stdinbpl.1287:15|
 :skolemid |109|
 :pattern ( (|count_square#condqp3| Heap2Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5 v_2@@2) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@7 T@PolymorphicMapType_36649) (Mask@@4 T@PolymorphicMapType_36670) (i@@10 Int) (lo@@5 Int) (hi@@6 Int) (step@@4 Int) (vmin@@4 Int) (vmax@@4 Int) (ar@@6 T@Seq_43833) ) (!  (=> (and (state Heap@@7 Mask@@4) (< AssumeFunctionsAbove 2)) (=> (and (and (and (and (<= 0 lo@@5) (and (<= lo@@5 hi@@6) (and (<= hi@@6 step@@4) (> step@@4 0)))) (and (<= 0 vmin@@4) (and (<= vmin@@4 i@@10) (<= i@@10 vmax@@4)))) (<= vmax@@4 (|Seq#Length_26200| ar@@6))) (forall ((ix_20@@0 Int) (jx_20@@0 Int) ) (!  (=> (and (>= ix_20@@0 0) (and (< ix_20@@0 (|Seq#Length_26200| ar@@6)) (and (>= jx_20@@0 0) (and (< jx_20@@0 (|Seq#Length_26200| ar@@6)) (not (= ix_20@@0 jx_20@@0)))))) (not (= (|Seq#Index_26200| ar@@6 ix_20@@0) (|Seq#Index_26200| ar@@6 jx_20@@0))))
 :qid |stdinbpl.1003:189|
 :skolemid |85|
 :pattern ( (|Seq#Index_26200| ar@@6 ix_20@@0) (|Seq#Index_26200| ar@@6 jx_20@@0))
))) (= (sum_square Heap@@7 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax@@4 ar@@6) (ite (< i@@10 vmax@@4) (+ (ite  (and (<= lo@@5 (mod i@@10 step@@4)) (< (mod i@@10 step@@4) hi@@6)) (select (|PolymorphicMapType_36649_26161_3757#PolymorphicMapType_36649| Heap@@7) (|Seq#Index_26200| ar@@6 i@@10) Ref__Integer_value) 0) (|sum_square'| Heap@@7 (+ i@@10 1) lo@@5 hi@@6 step@@4 vmin@@4 vmax@@4 ar@@6)) 0))))
 :qid |stdinbpl.1001:15|
 :skolemid |86|
 :pattern ( (state Heap@@7 Mask@@4) (sum_square Heap@@7 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax@@4 ar@@6))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_36649) (ExhaleHeap@@1 T@PolymorphicMapType_36649) (Mask@@5 T@PolymorphicMapType_36670) (o_51 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@5) (=> (select (|PolymorphicMapType_36649_25909_53#PolymorphicMapType_36649| Heap@@8) o_51 $allocated) (select (|PolymorphicMapType_36649_25909_53#PolymorphicMapType_36649| ExhaleHeap@@1) o_51 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@5) (select (|PolymorphicMapType_36649_25909_53#PolymorphicMapType_36649| ExhaleHeap@@1) o_51 $allocated))
)))
(assert (forall ((p T@Field_26161_103243) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_36709_36709 p v_1 p w))
 :qid |stdinbpl.287:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_36709_36709 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_43833) (s1 T@Seq_43833) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_26200|)) (not (= s1 |Seq#Empty_26200|))) (<= (|Seq#Length_26200| s0) n@@13)) (< n@@13 (|Seq#Length_26200| (|Seq#Append_43833| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_26200| s0)) (|Seq#Length_26200| s0)) n@@13) (= (|Seq#Index_26200| (|Seq#Append_43833| s0 s1) n@@13) (|Seq#Index_26200| s1 (|Seq#Sub| n@@13 (|Seq#Length_26200| s0))))))
 :qid |stdinbpl.356:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_26200| (|Seq#Append_43833| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3635) (s1@@0 T@Seq_3635) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3635|)) (not (= s1@@0 |Seq#Empty_3635|))) (<= (|Seq#Length_3635| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3635| (|Seq#Append_3635| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3635| s0@@0)) (|Seq#Length_3635| s0@@0)) n@@14) (= (|Seq#Index_3635| (|Seq#Append_3635| s0@@0 s1@@0) n@@14) (|Seq#Index_3635| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3635| s0@@0))))))
 :qid |stdinbpl.356:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3635| (|Seq#Append_3635| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_26161_3757 Ref__Integer_value)))
(assert  (not (IsWandField_26161_3757 Ref__Integer_value)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_36649) (ExhaleHeap@@2 T@PolymorphicMapType_36649) (Mask@@6 T@PolymorphicMapType_36670) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@6) (succHeap Heap@@9 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_36670) (o_2@@4 T@Ref) (f_4@@4 T@Field_26161_103376) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_36670_26161_107498#PolymorphicMapType_36670| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_26161_108627 f_4@@4))) (not (IsWandField_26161_108643 f_4@@4))) (<= (select (|PolymorphicMapType_36670_26161_107498#PolymorphicMapType_36670| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_36670_26161_107498#PolymorphicMapType_36670| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_36670) (o_2@@5 T@Ref) (f_4@@5 T@Field_26161_103243) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_36670_26161_103243#PolymorphicMapType_36670| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_26161_103334 f_4@@5))) (not (IsWandField_26161_105081 f_4@@5))) (<= (select (|PolymorphicMapType_36670_26161_103243#PolymorphicMapType_36670| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_36670_26161_103243#PolymorphicMapType_36670| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_36670) (o_2@@6 T@Ref) (f_4@@6 T@Field_36722_36723) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_36670_26161_36723#PolymorphicMapType_36670| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_26161_36723 f_4@@6))) (not (IsWandField_26161_36723 f_4@@6))) (<= (select (|PolymorphicMapType_36670_26161_36723#PolymorphicMapType_36670| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_36670_26161_36723#PolymorphicMapType_36670| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_36670) (o_2@@7 T@Ref) (f_4@@7 T@Field_36709_53) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_36670_26161_53#PolymorphicMapType_36670| Mask@@10) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_26161_53 f_4@@7))) (not (IsWandField_26161_53 f_4@@7))) (<= (select (|PolymorphicMapType_36670_26161_53#PolymorphicMapType_36670| Mask@@10) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_36670_26161_53#PolymorphicMapType_36670| Mask@@10) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_36670) (o_2@@8 T@Ref) (f_4@@8 T@Field_42791_3757) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| Mask@@11) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_26161_3757 f_4@@8))) (not (IsWandField_26161_3757 f_4@@8))) (<= (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| Mask@@11) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| Mask@@11) o_2@@8 f_4@@8))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_36649) (Mask@@12 T@PolymorphicMapType_36670) (i@@11 Int) (hi@@7 Int) (ar@@7 T@Seq_3635) ) (!  (=> (state Heap@@10 Mask@@12) (= (|sum_list'| Heap@@10 i@@11 hi@@7 ar@@7) (|sum_list#frame| EmptyFrame i@@11 hi@@7 ar@@7)))
 :qid |stdinbpl.688:15|
 :skolemid |61|
 :pattern ( (state Heap@@10 Mask@@12) (|sum_list'| Heap@@10 i@@11 hi@@7 ar@@7))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_36670) (o_2@@9 T@Ref) (f_4@@9 T@Field_26161_103376) ) (! (= (HasDirectPerm_26161_109081 Mask@@13 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_36670_26161_107498#PolymorphicMapType_36670| Mask@@13) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26161_109081 Mask@@13 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_36670) (o_2@@10 T@Ref) (f_4@@10 T@Field_26161_103243) ) (! (= (HasDirectPerm_26161_103307 Mask@@14 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_36670_26161_103243#PolymorphicMapType_36670| Mask@@14) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26161_103307 Mask@@14 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_36670) (o_2@@11 T@Ref) (f_4@@11 T@Field_36722_36723) ) (! (= (HasDirectPerm_26161_36723 Mask@@15 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_36670_26161_36723#PolymorphicMapType_36670| Mask@@15) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26161_36723 Mask@@15 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_36670) (o_2@@12 T@Ref) (f_4@@12 T@Field_36709_53) ) (! (= (HasDirectPerm_26161_53 Mask@@16 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_36670_26161_53#PolymorphicMapType_36670| Mask@@16) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26161_53 Mask@@16 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_36670) (o_2@@13 T@Ref) (f_4@@13 T@Field_42791_3757) ) (! (= (HasDirectPerm_26161_3757 Mask@@17 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| Mask@@17) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26161_3757 Mask@@17 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_36649) (i@@12 Int) (lo@@6 Int) (hi@@8 Int) (ar@@8 T@Seq_43833) ) (! (dummyFunction_4064 (|sum_array#triggerStateless| i@@12 lo@@6 hi@@8 ar@@8))
 :qid |stdinbpl.760:15|
 :skolemid |63|
 :pattern ( (|sum_array'| Heap@@11 i@@12 lo@@6 hi@@8 ar@@8))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_36649) (i@@13 Int) (hi@@9 Int) (ar@@9 T@Seq_3635) (v_2@@3 Int) ) (! (dummyFunction_4064 (|count_list#triggerStateless| i@@13 hi@@9 ar@@9 v_2@@3))
 :qid |stdinbpl.1527:15|
 :skolemid |126|
 :pattern ( (|count_list'| Heap@@12 i@@13 hi@@9 ar@@9 v_2@@3))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_36649) (i@@14 Int) (hi@@10 Int) (ar@@10 T@Seq_43833) (v_2@@4 Int) ) (! (dummyFunction_4064 (|count_array#triggerStateless| i@@14 hi@@10 ar@@10 v_2@@4))
 :qid |stdinbpl.1612:15|
 :skolemid |130|
 :pattern ( (|count_array'| Heap@@13 i@@14 hi@@10 ar@@10 v_2@@4))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_36649) (ExhaleHeap@@3 T@PolymorphicMapType_36649) (Mask@@18 T@PolymorphicMapType_36670) (pm_f_26@@1 T@Field_26161_103243) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@3 Mask@@18) (=> (and (HasDirectPerm_26161_103307 Mask@@18 null pm_f_26@@1) (IsPredicateField_26161_103334 pm_f_26@@1)) (and (and (and (and (forall ((o2_26 T@Ref) (f_50 T@Field_36709_53) ) (!  (=> (select (|PolymorphicMapType_37198_36709_53#PolymorphicMapType_37198| (select (|PolymorphicMapType_36649_26161_103420#PolymorphicMapType_36649| Heap@@14) null (PredicateMaskField_26161 pm_f_26@@1))) o2_26 f_50) (= (select (|PolymorphicMapType_36649_25909_53#PolymorphicMapType_36649| Heap@@14) o2_26 f_50) (select (|PolymorphicMapType_36649_25909_53#PolymorphicMapType_36649| ExhaleHeap@@3) o2_26 f_50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_36649_25909_53#PolymorphicMapType_36649| ExhaleHeap@@3) o2_26 f_50))
)) (forall ((o2_26@@0 T@Ref) (f_50@@0 T@Field_36722_36723) ) (!  (=> (select (|PolymorphicMapType_37198_36709_36723#PolymorphicMapType_37198| (select (|PolymorphicMapType_36649_26161_103420#PolymorphicMapType_36649| Heap@@14) null (PredicateMaskField_26161 pm_f_26@@1))) o2_26@@0 f_50@@0) (= (select (|PolymorphicMapType_36649_25912_25913#PolymorphicMapType_36649| Heap@@14) o2_26@@0 f_50@@0) (select (|PolymorphicMapType_36649_25912_25913#PolymorphicMapType_36649| ExhaleHeap@@3) o2_26@@0 f_50@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_36649_25912_25913#PolymorphicMapType_36649| ExhaleHeap@@3) o2_26@@0 f_50@@0))
))) (forall ((o2_26@@1 T@Ref) (f_50@@1 T@Field_42791_3757) ) (!  (=> (select (|PolymorphicMapType_37198_36709_3757#PolymorphicMapType_37198| (select (|PolymorphicMapType_36649_26161_103420#PolymorphicMapType_36649| Heap@@14) null (PredicateMaskField_26161 pm_f_26@@1))) o2_26@@1 f_50@@1) (= (select (|PolymorphicMapType_36649_26161_3757#PolymorphicMapType_36649| Heap@@14) o2_26@@1 f_50@@1) (select (|PolymorphicMapType_36649_26161_3757#PolymorphicMapType_36649| ExhaleHeap@@3) o2_26@@1 f_50@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_36649_26161_3757#PolymorphicMapType_36649| ExhaleHeap@@3) o2_26@@1 f_50@@1))
))) (forall ((o2_26@@2 T@Ref) (f_50@@2 T@Field_26161_103243) ) (!  (=> (select (|PolymorphicMapType_37198_36709_103243#PolymorphicMapType_37198| (select (|PolymorphicMapType_36649_26161_103420#PolymorphicMapType_36649| Heap@@14) null (PredicateMaskField_26161 pm_f_26@@1))) o2_26@@2 f_50@@2) (= (select (|PolymorphicMapType_36649_36709_103243#PolymorphicMapType_36649| Heap@@14) o2_26@@2 f_50@@2) (select (|PolymorphicMapType_36649_36709_103243#PolymorphicMapType_36649| ExhaleHeap@@3) o2_26@@2 f_50@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_36649_36709_103243#PolymorphicMapType_36649| ExhaleHeap@@3) o2_26@@2 f_50@@2))
))) (forall ((o2_26@@3 T@Ref) (f_50@@3 T@Field_26161_103376) ) (!  (=> (select (|PolymorphicMapType_37198_36709_104554#PolymorphicMapType_37198| (select (|PolymorphicMapType_36649_26161_103420#PolymorphicMapType_36649| Heap@@14) null (PredicateMaskField_26161 pm_f_26@@1))) o2_26@@3 f_50@@3) (= (select (|PolymorphicMapType_36649_26161_103420#PolymorphicMapType_36649| Heap@@14) o2_26@@3 f_50@@3) (select (|PolymorphicMapType_36649_26161_103420#PolymorphicMapType_36649| ExhaleHeap@@3) o2_26@@3 f_50@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_36649_26161_103420#PolymorphicMapType_36649| ExhaleHeap@@3) o2_26@@3 f_50@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@3 Mask@@18) (IsPredicateField_26161_103334 pm_f_26@@1))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_36649) (ExhaleHeap@@4 T@PolymorphicMapType_36649) (Mask@@19 T@PolymorphicMapType_36670) (pm_f_26@@2 T@Field_26161_103243) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@4 Mask@@19) (=> (and (HasDirectPerm_26161_103307 Mask@@19 null pm_f_26@@2) (IsWandField_26161_105081 pm_f_26@@2)) (and (and (and (and (forall ((o2_26@@4 T@Ref) (f_50@@4 T@Field_36709_53) ) (!  (=> (select (|PolymorphicMapType_37198_36709_53#PolymorphicMapType_37198| (select (|PolymorphicMapType_36649_26161_103420#PolymorphicMapType_36649| Heap@@15) null (WandMaskField_26161 pm_f_26@@2))) o2_26@@4 f_50@@4) (= (select (|PolymorphicMapType_36649_25909_53#PolymorphicMapType_36649| Heap@@15) o2_26@@4 f_50@@4) (select (|PolymorphicMapType_36649_25909_53#PolymorphicMapType_36649| ExhaleHeap@@4) o2_26@@4 f_50@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_36649_25909_53#PolymorphicMapType_36649| ExhaleHeap@@4) o2_26@@4 f_50@@4))
)) (forall ((o2_26@@5 T@Ref) (f_50@@5 T@Field_36722_36723) ) (!  (=> (select (|PolymorphicMapType_37198_36709_36723#PolymorphicMapType_37198| (select (|PolymorphicMapType_36649_26161_103420#PolymorphicMapType_36649| Heap@@15) null (WandMaskField_26161 pm_f_26@@2))) o2_26@@5 f_50@@5) (= (select (|PolymorphicMapType_36649_25912_25913#PolymorphicMapType_36649| Heap@@15) o2_26@@5 f_50@@5) (select (|PolymorphicMapType_36649_25912_25913#PolymorphicMapType_36649| ExhaleHeap@@4) o2_26@@5 f_50@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_36649_25912_25913#PolymorphicMapType_36649| ExhaleHeap@@4) o2_26@@5 f_50@@5))
))) (forall ((o2_26@@6 T@Ref) (f_50@@6 T@Field_42791_3757) ) (!  (=> (select (|PolymorphicMapType_37198_36709_3757#PolymorphicMapType_37198| (select (|PolymorphicMapType_36649_26161_103420#PolymorphicMapType_36649| Heap@@15) null (WandMaskField_26161 pm_f_26@@2))) o2_26@@6 f_50@@6) (= (select (|PolymorphicMapType_36649_26161_3757#PolymorphicMapType_36649| Heap@@15) o2_26@@6 f_50@@6) (select (|PolymorphicMapType_36649_26161_3757#PolymorphicMapType_36649| ExhaleHeap@@4) o2_26@@6 f_50@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_36649_26161_3757#PolymorphicMapType_36649| ExhaleHeap@@4) o2_26@@6 f_50@@6))
))) (forall ((o2_26@@7 T@Ref) (f_50@@7 T@Field_26161_103243) ) (!  (=> (select (|PolymorphicMapType_37198_36709_103243#PolymorphicMapType_37198| (select (|PolymorphicMapType_36649_26161_103420#PolymorphicMapType_36649| Heap@@15) null (WandMaskField_26161 pm_f_26@@2))) o2_26@@7 f_50@@7) (= (select (|PolymorphicMapType_36649_36709_103243#PolymorphicMapType_36649| Heap@@15) o2_26@@7 f_50@@7) (select (|PolymorphicMapType_36649_36709_103243#PolymorphicMapType_36649| ExhaleHeap@@4) o2_26@@7 f_50@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_36649_36709_103243#PolymorphicMapType_36649| ExhaleHeap@@4) o2_26@@7 f_50@@7))
))) (forall ((o2_26@@8 T@Ref) (f_50@@8 T@Field_26161_103376) ) (!  (=> (select (|PolymorphicMapType_37198_36709_104554#PolymorphicMapType_37198| (select (|PolymorphicMapType_36649_26161_103420#PolymorphicMapType_36649| Heap@@15) null (WandMaskField_26161 pm_f_26@@2))) o2_26@@8 f_50@@8) (= (select (|PolymorphicMapType_36649_26161_103420#PolymorphicMapType_36649| Heap@@15) o2_26@@8 f_50@@8) (select (|PolymorphicMapType_36649_26161_103420#PolymorphicMapType_36649| ExhaleHeap@@4) o2_26@@8 f_50@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_36649_26161_103420#PolymorphicMapType_36649| ExhaleHeap@@4) o2_26@@8 f_50@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@4 Mask@@19) (IsWandField_26161_105081 pm_f_26@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.275:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3635| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.648:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3635| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_36649) (ExhaleHeap@@5 T@PolymorphicMapType_36649) (Mask@@20 T@PolymorphicMapType_36670) (o_51@@0 T@Ref) (f_50@@9 T@Field_26161_103376) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@5 Mask@@20) (=> (HasDirectPerm_26161_109081 Mask@@20 o_51@@0 f_50@@9) (= (select (|PolymorphicMapType_36649_26161_103420#PolymorphicMapType_36649| Heap@@16) o_51@@0 f_50@@9) (select (|PolymorphicMapType_36649_26161_103420#PolymorphicMapType_36649| ExhaleHeap@@5) o_51@@0 f_50@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@5 Mask@@20) (select (|PolymorphicMapType_36649_26161_103420#PolymorphicMapType_36649| ExhaleHeap@@5) o_51@@0 f_50@@9))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_36649) (ExhaleHeap@@6 T@PolymorphicMapType_36649) (Mask@@21 T@PolymorphicMapType_36670) (o_51@@1 T@Ref) (f_50@@10 T@Field_26161_103243) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@6 Mask@@21) (=> (HasDirectPerm_26161_103307 Mask@@21 o_51@@1 f_50@@10) (= (select (|PolymorphicMapType_36649_36709_103243#PolymorphicMapType_36649| Heap@@17) o_51@@1 f_50@@10) (select (|PolymorphicMapType_36649_36709_103243#PolymorphicMapType_36649| ExhaleHeap@@6) o_51@@1 f_50@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@6 Mask@@21) (select (|PolymorphicMapType_36649_36709_103243#PolymorphicMapType_36649| ExhaleHeap@@6) o_51@@1 f_50@@10))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_36649) (ExhaleHeap@@7 T@PolymorphicMapType_36649) (Mask@@22 T@PolymorphicMapType_36670) (o_51@@2 T@Ref) (f_50@@11 T@Field_36722_36723) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@7 Mask@@22) (=> (HasDirectPerm_26161_36723 Mask@@22 o_51@@2 f_50@@11) (= (select (|PolymorphicMapType_36649_25912_25913#PolymorphicMapType_36649| Heap@@18) o_51@@2 f_50@@11) (select (|PolymorphicMapType_36649_25912_25913#PolymorphicMapType_36649| ExhaleHeap@@7) o_51@@2 f_50@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@7 Mask@@22) (select (|PolymorphicMapType_36649_25912_25913#PolymorphicMapType_36649| ExhaleHeap@@7) o_51@@2 f_50@@11))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_36649) (ExhaleHeap@@8 T@PolymorphicMapType_36649) (Mask@@23 T@PolymorphicMapType_36670) (o_51@@3 T@Ref) (f_50@@12 T@Field_36709_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@8 Mask@@23) (=> (HasDirectPerm_26161_53 Mask@@23 o_51@@3 f_50@@12) (= (select (|PolymorphicMapType_36649_25909_53#PolymorphicMapType_36649| Heap@@19) o_51@@3 f_50@@12) (select (|PolymorphicMapType_36649_25909_53#PolymorphicMapType_36649| ExhaleHeap@@8) o_51@@3 f_50@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@8 Mask@@23) (select (|PolymorphicMapType_36649_25909_53#PolymorphicMapType_36649| ExhaleHeap@@8) o_51@@3 f_50@@12))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_36649) (ExhaleHeap@@9 T@PolymorphicMapType_36649) (Mask@@24 T@PolymorphicMapType_36670) (o_51@@4 T@Ref) (f_50@@13 T@Field_42791_3757) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@9 Mask@@24) (=> (HasDirectPerm_26161_3757 Mask@@24 o_51@@4 f_50@@13) (= (select (|PolymorphicMapType_36649_26161_3757#PolymorphicMapType_36649| Heap@@20) o_51@@4 f_50@@13) (select (|PolymorphicMapType_36649_26161_3757#PolymorphicMapType_36649| ExhaleHeap@@9) o_51@@4 f_50@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@9 Mask@@24) (select (|PolymorphicMapType_36649_26161_3757#PolymorphicMapType_36649| ExhaleHeap@@9) o_51@@4 f_50@@13))
)))
(assert (forall ((s0@@1 T@Seq_43833) (s1@@1 T@Seq_43833) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_26200|)) (not (= s1@@1 |Seq#Empty_26200|))) (= (|Seq#Length_26200| (|Seq#Append_43833| s0@@1 s1@@1)) (+ (|Seq#Length_26200| s0@@1) (|Seq#Length_26200| s1@@1))))
 :qid |stdinbpl.325:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_26200| (|Seq#Append_43833| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3635) (s1@@2 T@Seq_3635) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3635|)) (not (= s1@@2 |Seq#Empty_3635|))) (= (|Seq#Length_3635| (|Seq#Append_3635| s0@@2 s1@@2)) (+ (|Seq#Length_3635| s0@@2) (|Seq#Length_3635| s1@@2))))
 :qid |stdinbpl.325:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3635| (|Seq#Append_3635| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_26161_103376) ) (! (= (select (|PolymorphicMapType_36670_26161_107498#PolymorphicMapType_36670| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_36670_26161_107498#PolymorphicMapType_36670| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_26161_103243) ) (! (= (select (|PolymorphicMapType_36670_26161_103243#PolymorphicMapType_36670| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_36670_26161_103243#PolymorphicMapType_36670| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_36722_36723) ) (! (= (select (|PolymorphicMapType_36670_26161_36723#PolymorphicMapType_36670| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_36670_26161_36723#PolymorphicMapType_36670| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_36709_53) ) (! (= (select (|PolymorphicMapType_36670_26161_53#PolymorphicMapType_36670| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_36670_26161_53#PolymorphicMapType_36670| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_42791_3757) ) (! (= (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_36649) (Mask@@25 T@PolymorphicMapType_36670) (i@@15 Int) (hi@@11 Int) (ar@@11 T@Seq_3635) (v_2@@5 Int) ) (!  (=> (and (state Heap@@21 Mask@@25) (< AssumeFunctionsAbove 5)) (=> (and (and (<= 0 i@@15) (<= i@@15 hi@@11)) (<= hi@@11 (|Seq#Length_3635| ar@@11))) (= (count_list Heap@@21 i@@15 hi@@11 ar@@11 v_2@@5) (ite (< i@@15 hi@@11) (+ (ite (= (|Seq#Index_3635| ar@@11 i@@15) v_2@@5) 1 0) (|count_list'| Heap@@21 (+ i@@15 1) hi@@11 ar@@11 v_2@@5)) 0))))
 :qid |stdinbpl.1533:15|
 :skolemid |127|
 :pattern ( (state Heap@@21 Mask@@25) (count_list Heap@@21 i@@15 hi@@11 ar@@11 v_2@@5))
)))
(assert (forall ((s@@15 T@Seq_43833) (t@@1 T@Seq_43833) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_26200| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_26200| s@@15)) (|Seq#Length_26200| s@@15)) n@@15) (= (|Seq#Drop_26200| (|Seq#Append_43833| s@@15 t@@1) n@@15) (|Seq#Drop_26200| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_26200| s@@15))))))
 :qid |stdinbpl.482:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_26200| (|Seq#Append_43833| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3635) (t@@2 T@Seq_3635) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3635| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3635| s@@16)) (|Seq#Length_3635| s@@16)) n@@16) (= (|Seq#Drop_3635| (|Seq#Append_3635| s@@16 t@@2) n@@16) (|Seq#Drop_3635| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3635| s@@16))))))
 :qid |stdinbpl.482:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3635| (|Seq#Append_3635| s@@16 t@@2) n@@16))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_36649) (i@@16 Int) (lo@@7 Int) (hi@@12 Int) (ar@@12 T@Seq_43833) ) (!  (and (= (sum_array Heap@@22 i@@16 lo@@7 hi@@12 ar@@12) (|sum_array'| Heap@@22 i@@16 lo@@7 hi@@12 ar@@12)) (dummyFunction_4064 (|sum_array#triggerStateless| i@@16 lo@@7 hi@@12 ar@@12)))
 :qid |stdinbpl.756:15|
 :skolemid |62|
 :pattern ( (sum_array Heap@@22 i@@16 lo@@7 hi@@12 ar@@12))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_36649) (i@@17 Int) (hi@@13 Int) (ar@@13 T@Seq_3635) (v_2@@6 Int) ) (!  (and (= (count_list Heap@@23 i@@17 hi@@13 ar@@13 v_2@@6) (|count_list'| Heap@@23 i@@17 hi@@13 ar@@13 v_2@@6)) (dummyFunction_4064 (|count_list#triggerStateless| i@@17 hi@@13 ar@@13 v_2@@6)))
 :qid |stdinbpl.1523:15|
 :skolemid |125|
 :pattern ( (count_list Heap@@23 i@@17 hi@@13 ar@@13 v_2@@6))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_36649) (i@@18 Int) (hi@@14 Int) (ar@@14 T@Seq_43833) (v_2@@7 Int) ) (!  (and (= (count_array Heap@@24 i@@18 hi@@14 ar@@14 v_2@@7) (|count_array'| Heap@@24 i@@18 hi@@14 ar@@14 v_2@@7)) (dummyFunction_4064 (|count_array#triggerStateless| i@@18 hi@@14 ar@@14 v_2@@7)))
 :qid |stdinbpl.1608:15|
 :skolemid |129|
 :pattern ( (count_array Heap@@24 i@@18 hi@@14 ar@@14 v_2@@7))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_36670) (SummandMask1 T@PolymorphicMapType_36670) (SummandMask2 T@PolymorphicMapType_36670) (o_2@@19 T@Ref) (f_4@@19 T@Field_26161_103376) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_36670_26161_107498#PolymorphicMapType_36670| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_36670_26161_107498#PolymorphicMapType_36670| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_36670_26161_107498#PolymorphicMapType_36670| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_36670_26161_107498#PolymorphicMapType_36670| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_36670_26161_107498#PolymorphicMapType_36670| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_36670_26161_107498#PolymorphicMapType_36670| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_36670) (SummandMask1@@0 T@PolymorphicMapType_36670) (SummandMask2@@0 T@PolymorphicMapType_36670) (o_2@@20 T@Ref) (f_4@@20 T@Field_26161_103243) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_36670_26161_103243#PolymorphicMapType_36670| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_36670_26161_103243#PolymorphicMapType_36670| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_36670_26161_103243#PolymorphicMapType_36670| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_36670_26161_103243#PolymorphicMapType_36670| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_36670_26161_103243#PolymorphicMapType_36670| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_36670_26161_103243#PolymorphicMapType_36670| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_36670) (SummandMask1@@1 T@PolymorphicMapType_36670) (SummandMask2@@1 T@PolymorphicMapType_36670) (o_2@@21 T@Ref) (f_4@@21 T@Field_36722_36723) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_36670_26161_36723#PolymorphicMapType_36670| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_36670_26161_36723#PolymorphicMapType_36670| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_36670_26161_36723#PolymorphicMapType_36670| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_36670_26161_36723#PolymorphicMapType_36670| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_36670_26161_36723#PolymorphicMapType_36670| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_36670_26161_36723#PolymorphicMapType_36670| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_36670) (SummandMask1@@2 T@PolymorphicMapType_36670) (SummandMask2@@2 T@PolymorphicMapType_36670) (o_2@@22 T@Ref) (f_4@@22 T@Field_36709_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_36670_26161_53#PolymorphicMapType_36670| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_36670_26161_53#PolymorphicMapType_36670| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_36670_26161_53#PolymorphicMapType_36670| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_36670_26161_53#PolymorphicMapType_36670| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_36670_26161_53#PolymorphicMapType_36670| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_36670_26161_53#PolymorphicMapType_36670| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_36670) (SummandMask1@@3 T@PolymorphicMapType_36670) (SummandMask2@@3 T@PolymorphicMapType_36670) (o_2@@23 T@Ref) (f_4@@23 T@Field_42791_3757) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_36649) (i@@19 Int) (lo@@8 Int) (hi@@15 Int) (step@@5 Int) (vmin@@5 Int) (vmax@@5 Int) (ar@@15 T@Seq_43833) ) (!  (and (= (sum_square Heap@@25 i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax@@5 ar@@15) (|sum_square'| Heap@@25 i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax@@5 ar@@15)) (dummyFunction_4064 (|sum_square#triggerStateless| i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax@@5 ar@@15)))
 :qid |stdinbpl.991:15|
 :skolemid |83|
 :pattern ( (sum_square Heap@@25 i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax@@5 ar@@15))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_36649) (Mask@@26 T@PolymorphicMapType_36670) (i@@20 Int) (hi@@16 Int) (ar@@16 T@Seq_3635) (v_2@@8 Int) ) (!  (=> (state Heap@@26 Mask@@26) (= (|count_list'| Heap@@26 i@@20 hi@@16 ar@@16 v_2@@8) (|count_list#frame| EmptyFrame i@@20 hi@@16 ar@@16 v_2@@8)))
 :qid |stdinbpl.1540:15|
 :skolemid |128|
 :pattern ( (state Heap@@26 Mask@@26) (|count_list'| Heap@@26 i@@20 hi@@16 ar@@16 v_2@@8))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3635| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3635| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.647:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3635| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_43833) (b T@Seq_43833) ) (!  (=> (|Seq#Equal_43833| a b) (= a b))
 :qid |stdinbpl.620:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_43833| a b))
)))
(assert (forall ((a@@0 T@Seq_3635) (b@@0 T@Seq_3635) ) (!  (=> (|Seq#Equal_3635| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.620:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3635| a@@0 b@@0))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_36649) (Mask@@27 T@PolymorphicMapType_36670) (i@@21 Int) (lo@@9 Int) (hi@@17 Int) (step@@6 Int) (vmin@@6 Int) (vmax@@6 Int) (ar@@17 T@Seq_43833) (v_2@@9 Int) ) (!  (=> (and (state Heap@@27 Mask@@27) (< AssumeFunctionsAbove 0)) (=> (and (and (and (and (<= 0 lo@@9) (and (<= lo@@9 hi@@17) (and (<= hi@@17 step@@6) (> step@@6 0)))) (and (<= 0 vmin@@6) (and (<= vmin@@6 i@@21) (<= i@@21 vmax@@6)))) (<= vmax@@6 (|Seq#Length_26200| ar@@17))) (forall ((ix_20@@1 Int) (jx_20@@1 Int) ) (!  (=> (and (>= ix_20@@1 0) (and (< ix_20@@1 (|Seq#Length_26200| ar@@17)) (and (>= jx_20@@1 0) (and (< jx_20@@1 (|Seq#Length_26200| ar@@17)) (not (= ix_20@@1 jx_20@@1)))))) (not (= (|Seq#Index_26200| ar@@17 ix_20@@1) (|Seq#Index_26200| ar@@17 jx_20@@1))))
 :qid |stdinbpl.1269:189|
 :skolemid |106|
 :pattern ( (|Seq#Index_26200| ar@@17 ix_20@@1) (|Seq#Index_26200| ar@@17 jx_20@@1))
))) (= (count_square Heap@@27 i@@21 lo@@9 hi@@17 step@@6 vmin@@6 vmax@@6 ar@@17 v_2@@9) (ite (< i@@21 vmax@@6) (+ (ite  (and (<= lo@@9 (mod i@@21 step@@6)) (and (< (mod i@@21 step@@6) hi@@17) (= (select (|PolymorphicMapType_36649_26161_3757#PolymorphicMapType_36649| Heap@@27) (|Seq#Index_26200| ar@@17 i@@21) Ref__Integer_value) v_2@@9))) 1 0) (|count_square'| Heap@@27 (+ i@@21 1) lo@@9 hi@@17 step@@6 vmin@@6 vmax@@6 ar@@17 v_2@@9)) 0))))
 :qid |stdinbpl.1267:15|
 :skolemid |107|
 :pattern ( (state Heap@@27 Mask@@27) (count_square Heap@@27 i@@21 lo@@9 hi@@17 step@@6 vmin@@6 vmax@@6 ar@@17 v_2@@9))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_36649) (i@@22 Int) (hi@@18 Int) (ar@@18 T@Seq_3635) ) (!  (and (= (sum_list Heap@@28 i@@22 hi@@18 ar@@18) (|sum_list'| Heap@@28 i@@22 hi@@18 ar@@18)) (dummyFunction_4064 (|sum_list#triggerStateless| i@@22 hi@@18 ar@@18)))
 :qid |stdinbpl.671:15|
 :skolemid |58|
 :pattern ( (sum_list Heap@@28 i@@22 hi@@18 ar@@18))
)))
(assert (forall ((s@@17 T@Seq_43833) (i@@23 Int) ) (!  (=> (and (<= 0 i@@23) (< i@@23 (|Seq#Length_26200| s@@17))) (|Seq#ContainsTrigger_26200| s@@17 (|Seq#Index_26200| s@@17 i@@23)))
 :qid |stdinbpl.513:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_26200| s@@17 i@@23))
)))
(assert (forall ((s@@18 T@Seq_3635) (i@@24 Int) ) (!  (=> (and (<= 0 i@@24) (< i@@24 (|Seq#Length_3635| s@@18))) (|Seq#ContainsTrigger_3635| s@@18 (|Seq#Index_3635| s@@18 i@@24)))
 :qid |stdinbpl.513:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3635| s@@18 i@@24))
)))
(assert (forall ((s0@@3 T@Seq_43833) (s1@@3 T@Seq_43833) ) (!  (and (=> (= s0@@3 |Seq#Empty_26200|) (= (|Seq#Append_43833| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_26200|) (= (|Seq#Append_43833| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.331:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_43833| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3635) (s1@@4 T@Seq_3635) ) (!  (and (=> (= s0@@4 |Seq#Empty_3635|) (= (|Seq#Append_3635| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3635|) (= (|Seq#Append_3635| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.331:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3635| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_26200| (|Seq#Singleton_26200| t@@3) 0) t@@3)
 :qid |stdinbpl.335:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_26200| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3635| (|Seq#Singleton_3635| t@@4) 0) t@@4)
 :qid |stdinbpl.335:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3635| t@@4))
)))
(assert (forall ((s@@19 T@Seq_43833) ) (! (<= 0 (|Seq#Length_26200| s@@19))
 :qid |stdinbpl.314:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_26200| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3635) ) (! (<= 0 (|Seq#Length_3635| s@@20))
 :qid |stdinbpl.314:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3635| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_43833) (s1@@5 T@Seq_43833) ) (!  (=> (|Seq#Equal_43833| s0@@5 s1@@5) (and (= (|Seq#Length_26200| s0@@5) (|Seq#Length_26200| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_26200| s0@@5))) (= (|Seq#Index_26200| s0@@5 j@@6) (|Seq#Index_26200| s1@@5 j@@6)))
 :qid |stdinbpl.610:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_26200| s0@@5 j@@6))
 :pattern ( (|Seq#Index_26200| s1@@5 j@@6))
))))
 :qid |stdinbpl.607:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_43833| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3635) (s1@@6 T@Seq_3635) ) (!  (=> (|Seq#Equal_3635| s0@@6 s1@@6) (and (= (|Seq#Length_3635| s0@@6) (|Seq#Length_3635| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_3635| s0@@6))) (= (|Seq#Index_3635| s0@@6 j@@7) (|Seq#Index_3635| s1@@6 j@@7)))
 :qid |stdinbpl.610:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3635| s0@@6 j@@7))
 :pattern ( (|Seq#Index_3635| s1@@6 j@@7))
))))
 :qid |stdinbpl.607:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3635| s0@@6 s1@@6))
)))
(assert (forall ((Heap2Heap@@1 T@PolymorphicMapType_36649) (Heap1Heap@@1 T@PolymorphicMapType_36649) (i@@25 Int) (hi@@19 Int) (ar@@19 T@Seq_43833) (v_2@@10 Int) ) (!  (=> (and (=  (and (<= 0 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10))) (< (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10)) hi@@19))  (and (<= 0 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10))) (< (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10)) hi@@19))) (=> (and (<= 0 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10))) (< (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10)) hi@@19)) (= (select (|PolymorphicMapType_36649_26161_3757#PolymorphicMapType_36649| Heap2Heap@@1) (|Seq#Index_26200| ar@@19 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10))) Ref__Integer_value) (select (|PolymorphicMapType_36649_26161_3757#PolymorphicMapType_36649| Heap1Heap@@1) (|Seq#Index_26200| ar@@19 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10))) Ref__Integer_value)))) (= (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10)))
 :qid |stdinbpl.1638:15|
 :skolemid |134|
 :pattern ( (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10) (succHeapTrans Heap2Heap@@1 Heap1Heap@@1))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_26200| (|Seq#Singleton_26200| t@@5)) 1)
 :qid |stdinbpl.322:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_26200| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3635| (|Seq#Singleton_3635| t@@6)) 1)
 :qid |stdinbpl.322:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3635| t@@6))
)))
(assert (forall ((Heap2Heap@@2 T@PolymorphicMapType_36649) (Heap1Heap@@2 T@PolymorphicMapType_36649) (i@@26 Int) (lo@@10 Int) (hi@@20 Int) (ar@@20 T@Seq_43833) ) (!  (=> (and (=  (and (<= lo@@10 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar@@20))) (< (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar@@20)) hi@@20))  (and (<= lo@@10 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar@@20))) (< (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar@@20)) hi@@20))) (=> (and (<= lo@@10 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar@@20))) (< (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar@@20)) hi@@20)) (= (select (|PolymorphicMapType_36649_26161_3757#PolymorphicMapType_36649| Heap2Heap@@2) (|Seq#Index_26200| ar@@20 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar@@20))) Ref__Integer_value) (select (|PolymorphicMapType_36649_26161_3757#PolymorphicMapType_36649| Heap1Heap@@2) (|Seq#Index_26200| ar@@20 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar@@20))) Ref__Integer_value)))) (= (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar@@20)))
 :qid |stdinbpl.786:15|
 :skolemid |67|
 :pattern ( (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar@@20) (succHeapTrans Heap2Heap@@2 Heap1Heap@@2))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_36649) (Mask@@28 T@PolymorphicMapType_36670) (i@@27 Int) (hi@@21 Int) (ar@@21 T@Seq_3635) ) (!  (=> (and (state Heap@@29 Mask@@28) (< AssumeFunctionsAbove 4)) (=> (and (and (<= 0 i@@27) (<= i@@27 hi@@21)) (<= hi@@21 (|Seq#Length_3635| ar@@21))) (= (sum_list Heap@@29 i@@27 hi@@21 ar@@21) (ite (< i@@27 hi@@21) (+ (|Seq#Index_3635| ar@@21 i@@27) (|sum_list'| Heap@@29 (+ i@@27 1) hi@@21 ar@@21)) 0))))
 :qid |stdinbpl.681:15|
 :skolemid |60|
 :pattern ( (state Heap@@29 Mask@@28) (sum_list Heap@@29 i@@27 hi@@21 ar@@21))
)))
(assert (forall ((s@@21 T@Seq_43833) (t@@7 T@Seq_43833) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_26200| s@@21))) (= (|Seq#Take_26200| (|Seq#Append_43833| s@@21 t@@7) n@@17) (|Seq#Take_26200| s@@21 n@@17)))
 :qid |stdinbpl.464:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_26200| (|Seq#Append_43833| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3635) (t@@8 T@Seq_3635) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3635| s@@22))) (= (|Seq#Take_3635| (|Seq#Append_3635| s@@22 t@@8) n@@18) (|Seq#Take_3635| s@@22 n@@18)))
 :qid |stdinbpl.464:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3635| (|Seq#Append_3635| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_43833) (i@@28 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@28) (< i@@28 (|Seq#Length_26200| s@@23))) (= (|Seq#Length_26200| (|Seq#Update_26200| s@@23 i@@28 v@@2)) (|Seq#Length_26200| s@@23)))
 :qid |stdinbpl.363:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_26200| (|Seq#Update_26200| s@@23 i@@28 v@@2)))
 :pattern ( (|Seq#Length_26200| s@@23) (|Seq#Update_26200| s@@23 i@@28 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3635) (i@@29 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@29) (< i@@29 (|Seq#Length_3635| s@@24))) (= (|Seq#Length_3635| (|Seq#Update_3635| s@@24 i@@29 v@@3)) (|Seq#Length_3635| s@@24)))
 :qid |stdinbpl.363:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3635| (|Seq#Update_3635| s@@24 i@@29 v@@3)))
 :pattern ( (|Seq#Length_3635| s@@24) (|Seq#Update_3635| s@@24 i@@29 v@@3))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_36649) (Mask@@29 T@PolymorphicMapType_36670) (i@@30 Int) (hi@@22 Int) (ar@@22 T@Seq_43833) (v_2@@11 Int) ) (!  (=> (and (state Heap@@30 Mask@@29) (< AssumeFunctionsAbove 1)) (=> (and (and (and (<= 0 i@@30) (<= i@@30 hi@@22)) (<= hi@@22 (|Seq#Length_26200| ar@@22))) (forall ((ix_20@@2 Int) (jx_20@@2 Int) ) (!  (=> (and (>= ix_20@@2 0) (and (< ix_20@@2 (|Seq#Length_26200| ar@@22)) (and (>= jx_20@@2 0) (and (< jx_20@@2 (|Seq#Length_26200| ar@@22)) (not (= ix_20@@2 jx_20@@2)))))) (not (= (|Seq#Index_26200| ar@@22 ix_20@@2) (|Seq#Index_26200| ar@@22 jx_20@@2))))
 :qid |stdinbpl.1620:110|
 :skolemid |131|
 :pattern ( (|Seq#Index_26200| ar@@22 ix_20@@2) (|Seq#Index_26200| ar@@22 jx_20@@2))
))) (= (count_array Heap@@30 i@@30 hi@@22 ar@@22 v_2@@11) (ite (< i@@30 hi@@22) (+ (ite (= (select (|PolymorphicMapType_36649_26161_3757#PolymorphicMapType_36649| Heap@@30) (|Seq#Index_26200| ar@@22 i@@30) Ref__Integer_value) v_2@@11) 1 0) (|count_array'| Heap@@30 (+ i@@30 1) hi@@22 ar@@22 v_2@@11)) 0))))
 :qid |stdinbpl.1618:15|
 :skolemid |132|
 :pattern ( (state Heap@@30 Mask@@29) (count_array Heap@@30 i@@30 hi@@22 ar@@22 v_2@@11))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_36649) (o_44 T@Ref) (f_42 T@Field_26161_103243) (v@@4 T@FrameType) ) (! (succHeap Heap@@31 (PolymorphicMapType_36649 (|PolymorphicMapType_36649_25909_53#PolymorphicMapType_36649| Heap@@31) (|PolymorphicMapType_36649_25912_25913#PolymorphicMapType_36649| Heap@@31) (|PolymorphicMapType_36649_26161_3757#PolymorphicMapType_36649| Heap@@31) (|PolymorphicMapType_36649_26161_103420#PolymorphicMapType_36649| Heap@@31) (store (|PolymorphicMapType_36649_36709_103243#PolymorphicMapType_36649| Heap@@31) o_44 f_42 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_36649 (|PolymorphicMapType_36649_25909_53#PolymorphicMapType_36649| Heap@@31) (|PolymorphicMapType_36649_25912_25913#PolymorphicMapType_36649| Heap@@31) (|PolymorphicMapType_36649_26161_3757#PolymorphicMapType_36649| Heap@@31) (|PolymorphicMapType_36649_26161_103420#PolymorphicMapType_36649| Heap@@31) (store (|PolymorphicMapType_36649_36709_103243#PolymorphicMapType_36649| Heap@@31) o_44 f_42 v@@4)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_36649) (o_44@@0 T@Ref) (f_42@@0 T@Field_26161_103376) (v@@5 T@PolymorphicMapType_37198) ) (! (succHeap Heap@@32 (PolymorphicMapType_36649 (|PolymorphicMapType_36649_25909_53#PolymorphicMapType_36649| Heap@@32) (|PolymorphicMapType_36649_25912_25913#PolymorphicMapType_36649| Heap@@32) (|PolymorphicMapType_36649_26161_3757#PolymorphicMapType_36649| Heap@@32) (store (|PolymorphicMapType_36649_26161_103420#PolymorphicMapType_36649| Heap@@32) o_44@@0 f_42@@0 v@@5) (|PolymorphicMapType_36649_36709_103243#PolymorphicMapType_36649| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_36649 (|PolymorphicMapType_36649_25909_53#PolymorphicMapType_36649| Heap@@32) (|PolymorphicMapType_36649_25912_25913#PolymorphicMapType_36649| Heap@@32) (|PolymorphicMapType_36649_26161_3757#PolymorphicMapType_36649| Heap@@32) (store (|PolymorphicMapType_36649_26161_103420#PolymorphicMapType_36649| Heap@@32) o_44@@0 f_42@@0 v@@5) (|PolymorphicMapType_36649_36709_103243#PolymorphicMapType_36649| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_36649) (o_44@@1 T@Ref) (f_42@@1 T@Field_42791_3757) (v@@6 Int) ) (! (succHeap Heap@@33 (PolymorphicMapType_36649 (|PolymorphicMapType_36649_25909_53#PolymorphicMapType_36649| Heap@@33) (|PolymorphicMapType_36649_25912_25913#PolymorphicMapType_36649| Heap@@33) (store (|PolymorphicMapType_36649_26161_3757#PolymorphicMapType_36649| Heap@@33) o_44@@1 f_42@@1 v@@6) (|PolymorphicMapType_36649_26161_103420#PolymorphicMapType_36649| Heap@@33) (|PolymorphicMapType_36649_36709_103243#PolymorphicMapType_36649| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_36649 (|PolymorphicMapType_36649_25909_53#PolymorphicMapType_36649| Heap@@33) (|PolymorphicMapType_36649_25912_25913#PolymorphicMapType_36649| Heap@@33) (store (|PolymorphicMapType_36649_26161_3757#PolymorphicMapType_36649| Heap@@33) o_44@@1 f_42@@1 v@@6) (|PolymorphicMapType_36649_26161_103420#PolymorphicMapType_36649| Heap@@33) (|PolymorphicMapType_36649_36709_103243#PolymorphicMapType_36649| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_36649) (o_44@@2 T@Ref) (f_42@@2 T@Field_36722_36723) (v@@7 T@Ref) ) (! (succHeap Heap@@34 (PolymorphicMapType_36649 (|PolymorphicMapType_36649_25909_53#PolymorphicMapType_36649| Heap@@34) (store (|PolymorphicMapType_36649_25912_25913#PolymorphicMapType_36649| Heap@@34) o_44@@2 f_42@@2 v@@7) (|PolymorphicMapType_36649_26161_3757#PolymorphicMapType_36649| Heap@@34) (|PolymorphicMapType_36649_26161_103420#PolymorphicMapType_36649| Heap@@34) (|PolymorphicMapType_36649_36709_103243#PolymorphicMapType_36649| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_36649 (|PolymorphicMapType_36649_25909_53#PolymorphicMapType_36649| Heap@@34) (store (|PolymorphicMapType_36649_25912_25913#PolymorphicMapType_36649| Heap@@34) o_44@@2 f_42@@2 v@@7) (|PolymorphicMapType_36649_26161_3757#PolymorphicMapType_36649| Heap@@34) (|PolymorphicMapType_36649_26161_103420#PolymorphicMapType_36649| Heap@@34) (|PolymorphicMapType_36649_36709_103243#PolymorphicMapType_36649| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_36649) (o_44@@3 T@Ref) (f_42@@3 T@Field_36709_53) (v@@8 Bool) ) (! (succHeap Heap@@35 (PolymorphicMapType_36649 (store (|PolymorphicMapType_36649_25909_53#PolymorphicMapType_36649| Heap@@35) o_44@@3 f_42@@3 v@@8) (|PolymorphicMapType_36649_25912_25913#PolymorphicMapType_36649| Heap@@35) (|PolymorphicMapType_36649_26161_3757#PolymorphicMapType_36649| Heap@@35) (|PolymorphicMapType_36649_26161_103420#PolymorphicMapType_36649| Heap@@35) (|PolymorphicMapType_36649_36709_103243#PolymorphicMapType_36649| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_36649 (store (|PolymorphicMapType_36649_25909_53#PolymorphicMapType_36649| Heap@@35) o_44@@3 f_42@@3 v@@8) (|PolymorphicMapType_36649_25912_25913#PolymorphicMapType_36649| Heap@@35) (|PolymorphicMapType_36649_26161_3757#PolymorphicMapType_36649| Heap@@35) (|PolymorphicMapType_36649_26161_103420#PolymorphicMapType_36649| Heap@@35) (|PolymorphicMapType_36649_36709_103243#PolymorphicMapType_36649| Heap@@35)))
)))
(assert (forall ((s@@25 T@Seq_43833) (t@@9 T@Seq_43833) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_26200| s@@25))) (= (|Seq#Drop_26200| (|Seq#Append_43833| s@@25 t@@9) n@@19) (|Seq#Append_43833| (|Seq#Drop_26200| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.478:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_26200| (|Seq#Append_43833| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3635) (t@@10 T@Seq_3635) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3635| s@@26))) (= (|Seq#Drop_3635| (|Seq#Append_3635| s@@26 t@@10) n@@20) (|Seq#Append_3635| (|Seq#Drop_3635| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.478:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3635| (|Seq#Append_3635| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_43833) (n@@21 Int) (i@@31 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@31)) (< i@@31 (|Seq#Length_26200| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@31 n@@21) n@@21) i@@31) (= (|Seq#Index_26200| (|Seq#Drop_26200| s@@27 n@@21) (|Seq#Sub| i@@31 n@@21)) (|Seq#Index_26200| s@@27 i@@31))))
 :qid |stdinbpl.414:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_26200| s@@27 n@@21) (|Seq#Index_26200| s@@27 i@@31))
)))
(assert (forall ((s@@28 T@Seq_3635) (n@@22 Int) (i@@32 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@32)) (< i@@32 (|Seq#Length_3635| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@32 n@@22) n@@22) i@@32) (= (|Seq#Index_3635| (|Seq#Drop_3635| s@@28 n@@22) (|Seq#Sub| i@@32 n@@22)) (|Seq#Index_3635| s@@28 i@@32))))
 :qid |stdinbpl.414:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3635| s@@28 n@@22) (|Seq#Index_3635| s@@28 i@@32))
)))
(assert (forall ((s0@@7 T@Seq_43833) (s1@@7 T@Seq_43833) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_26200|)) (not (= s1@@7 |Seq#Empty_26200|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_26200| s0@@7))) (= (|Seq#Index_26200| (|Seq#Append_43833| s0@@7 s1@@7) n@@23) (|Seq#Index_26200| s0@@7 n@@23)))
 :qid |stdinbpl.354:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_26200| (|Seq#Append_43833| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_26200| s0@@7 n@@23) (|Seq#Append_43833| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3635) (s1@@8 T@Seq_3635) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3635|)) (not (= s1@@8 |Seq#Empty_3635|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3635| s0@@8))) (= (|Seq#Index_3635| (|Seq#Append_3635| s0@@8 s1@@8) n@@24) (|Seq#Index_3635| s0@@8 n@@24)))
 :qid |stdinbpl.354:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3635| (|Seq#Append_3635| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3635| s0@@8 n@@24) (|Seq#Append_3635| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_43833) (s1@@9 T@Seq_43833) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_26200|)) (not (= s1@@9 |Seq#Empty_26200|))) (<= 0 m)) (< m (|Seq#Length_26200| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_26200| s0@@9)) (|Seq#Length_26200| s0@@9)) m) (= (|Seq#Index_26200| (|Seq#Append_43833| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_26200| s0@@9))) (|Seq#Index_26200| s1@@9 m))))
 :qid |stdinbpl.359:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_26200| s1@@9 m) (|Seq#Append_43833| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3635) (s1@@10 T@Seq_3635) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3635|)) (not (= s1@@10 |Seq#Empty_3635|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3635| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3635| s0@@10)) (|Seq#Length_3635| s0@@10)) m@@0) (= (|Seq#Index_3635| (|Seq#Append_3635| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3635| s0@@10))) (|Seq#Index_3635| s1@@10 m@@0))))
 :qid |stdinbpl.359:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3635| s1@@10 m@@0) (|Seq#Append_3635| s0@@10 s1@@10))
)))
(assert (forall ((o_44@@4 T@Ref) (f_47 T@Field_36722_36723) (Heap@@36 T@PolymorphicMapType_36649) ) (!  (=> (select (|PolymorphicMapType_36649_25909_53#PolymorphicMapType_36649| Heap@@36) o_44@@4 $allocated) (select (|PolymorphicMapType_36649_25909_53#PolymorphicMapType_36649| Heap@@36) (select (|PolymorphicMapType_36649_25912_25913#PolymorphicMapType_36649| Heap@@36) o_44@@4 f_47) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_36649_25912_25913#PolymorphicMapType_36649| Heap@@36) o_44@@4 f_47))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_36649) (Mask@@30 T@PolymorphicMapType_36670) (i@@33 Int) (lo@@11 Int) (hi@@23 Int) (step@@7 Int) (vmin@@7 Int) (vmax@@7 Int) (ar@@23 T@Seq_43833) ) (!  (=> (state Heap@@37 Mask@@30) (= (|sum_square'| Heap@@37 i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax@@7 ar@@23) (|sum_square#frame| (FrameFragment_4616 (|sum_square#condqp2| Heap@@37 i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax@@7 ar@@23)) i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax@@7 ar@@23)))
 :qid |stdinbpl.1011:15|
 :skolemid |87|
 :pattern ( (state Heap@@37 Mask@@30) (|sum_square'| Heap@@37 i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax@@7 ar@@23))
)))
(assert (forall ((s@@29 T@Seq_43833) (x@@3 T@Ref) (i@@34 Int) ) (!  (=> (and (and (<= 0 i@@34) (< i@@34 (|Seq#Length_26200| s@@29))) (= (|Seq#Index_26200| s@@29 i@@34) x@@3)) (|Seq#Contains_43833| s@@29 x@@3))
 :qid |stdinbpl.511:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_43833| s@@29 x@@3) (|Seq#Index_26200| s@@29 i@@34))
)))
(assert (forall ((s@@30 T@Seq_3635) (x@@4 Int) (i@@35 Int) ) (!  (=> (and (and (<= 0 i@@35) (< i@@35 (|Seq#Length_3635| s@@30))) (= (|Seq#Index_3635| s@@30 i@@35) x@@4)) (|Seq#Contains_3635| s@@30 x@@4))
 :qid |stdinbpl.511:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3635| s@@30 x@@4) (|Seq#Index_3635| s@@30 i@@35))
)))
(assert (forall ((s0@@11 T@Seq_43833) (s1@@11 T@Seq_43833) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_43833| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_43833| s0@@11 s1@@11))) (not (= (|Seq#Length_26200| s0@@11) (|Seq#Length_26200| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_43833| s0@@11 s1@@11))) (= (|Seq#Length_26200| s0@@11) (|Seq#Length_26200| s1@@11))) (= (|Seq#SkolemDiff_43833| s0@@11 s1@@11) (|Seq#SkolemDiff_43833| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_43833| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_43833| s0@@11 s1@@11) (|Seq#Length_26200| s0@@11))) (not (= (|Seq#Index_26200| s0@@11 (|Seq#SkolemDiff_43833| s0@@11 s1@@11)) (|Seq#Index_26200| s1@@11 (|Seq#SkolemDiff_43833| s0@@11 s1@@11))))))
 :qid |stdinbpl.615:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_43833| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3635) (s1@@12 T@Seq_3635) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3635| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3635| s0@@12 s1@@12))) (not (= (|Seq#Length_3635| s0@@12) (|Seq#Length_3635| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3635| s0@@12 s1@@12))) (= (|Seq#Length_3635| s0@@12) (|Seq#Length_3635| s1@@12))) (= (|Seq#SkolemDiff_3635| s0@@12 s1@@12) (|Seq#SkolemDiff_3635| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3635| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3635| s0@@12 s1@@12) (|Seq#Length_3635| s0@@12))) (not (= (|Seq#Index_3635| s0@@12 (|Seq#SkolemDiff_3635| s0@@12 s1@@12)) (|Seq#Index_3635| s1@@12 (|Seq#SkolemDiff_3635| s0@@12 s1@@12))))))
 :qid |stdinbpl.615:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3635| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_26161_103243) (v_1@@0 T@FrameType) (q T@Field_26161_103243) (w@@0 T@FrameType) (r T@Field_26161_103243) (u T@FrameType) ) (!  (=> (and (InsidePredicate_36709_36709 p@@1 v_1@@0 q w@@0) (InsidePredicate_36709_36709 q w@@0 r u)) (InsidePredicate_36709_36709 p@@1 v_1@@0 r u))
 :qid |stdinbpl.282:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_36709_36709 p@@1 v_1@@0 q w@@0) (InsidePredicate_36709_36709 q w@@0 r u))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_36649) (i@@36 Int) (lo@@12 Int) (hi@@24 Int) (step@@8 Int) (vmin@@8 Int) (vmax@@8 Int) (ar@@24 T@Seq_43833) ) (! (dummyFunction_4064 (|sum_square#triggerStateless| i@@36 lo@@12 hi@@24 step@@8 vmin@@8 vmax@@8 ar@@24))
 :qid |stdinbpl.995:15|
 :skolemid |84|
 :pattern ( (|sum_square'| Heap@@38 i@@36 lo@@12 hi@@24 step@@8 vmin@@8 vmax@@8 ar@@24))
)))
(assert (forall ((s@@31 T@Seq_43833) ) (!  (=> (= (|Seq#Length_26200| s@@31) 0) (= s@@31 |Seq#Empty_26200|))
 :qid |stdinbpl.318:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_26200| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3635) ) (!  (=> (= (|Seq#Length_3635| s@@32) 0) (= s@@32 |Seq#Empty_3635|))
 :qid |stdinbpl.318:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3635| s@@32))
)))
(assert (forall ((s@@33 T@Seq_43833) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_26200| s@@33 n@@25) |Seq#Empty_26200|))
 :qid |stdinbpl.494:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_26200| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3635) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3635| s@@34 n@@26) |Seq#Empty_3635|))
 :qid |stdinbpl.494:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3635| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@39 T@PolymorphicMapType_36649) (Mask@@31 T@PolymorphicMapType_36670) (i@@37 Int) (lo@@13 Int) (hi@@25 Int) (ar@@25 T@Seq_43833) ) (!  (=> (state Heap@@39 Mask@@31) (= (|sum_array'| Heap@@39 i@@37 lo@@13 hi@@25 ar@@25) (|sum_array#frame| (FrameFragment_4616 (|sum_array#condqp1| Heap@@39 i@@37 lo@@13 hi@@25 ar@@25)) i@@37 lo@@13 hi@@25 ar@@25)))
 :qid |stdinbpl.776:15|
 :skolemid |66|
 :pattern ( (state Heap@@39 Mask@@31) (|sum_array'| Heap@@39 i@@37 lo@@13 hi@@25 ar@@25))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_36649) (Mask@@32 T@PolymorphicMapType_36670) (i@@38 Int) (hi@@26 Int) (ar@@26 T@Seq_43833) (v_2@@12 Int) ) (!  (=> (state Heap@@40 Mask@@32) (= (|count_array'| Heap@@40 i@@38 hi@@26 ar@@26 v_2@@12) (|count_array#frame| (FrameFragment_4616 (|count_array#condqp4| Heap@@40 i@@38 hi@@26 ar@@26 v_2@@12)) i@@38 hi@@26 ar@@26 v_2@@12)))
 :qid |stdinbpl.1628:15|
 :skolemid |133|
 :pattern ( (state Heap@@40 Mask@@32) (|count_array'| Heap@@40 i@@38 hi@@26 ar@@26 v_2@@12))
)))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun i_32 () Int)
(declare-fun len () Int)
(declare-fun a_2 () T@Seq_43833)
(declare-fun QPMask@5 () T@PolymorphicMapType_36670)
(declare-fun b_24 () T@Seq_43833)
(declare-fun c () T@Seq_43833)
(declare-fun PostHeap@0 () T@PolymorphicMapType_36649)
(declare-fun Heap@@41 () T@PolymorphicMapType_36649)
(declare-fun i_31 () Int)
(declare-fun QPMask@2 () T@PolymorphicMapType_36670)
(declare-fun i_30 () Int)
(declare-fun qpRange14 (T@Ref) Bool)
(declare-fun invRecv14 (T@Ref) Int)
(declare-fun QPMask@4 () T@PolymorphicMapType_36670)
(declare-fun i_29 () Int)
(declare-fun qpRange13 (T@Ref) Bool)
(declare-fun invRecv13 (T@Ref) Int)
(declare-fun QPMask@3 () T@PolymorphicMapType_36670)
(declare-fun i_24 () Int)
(declare-fun qpRange12 (T@Ref) Bool)
(declare-fun invRecv12 (T@Ref) Int)
(declare-fun i_22 () Int)
(declare-fun qpRange11 (T@Ref) Bool)
(declare-fun invRecv11 (T@Ref) Int)
(declare-fun QPMask@1 () T@PolymorphicMapType_36670)
(declare-fun i_20 () Int)
(declare-fun ix_24 () Int)
(declare-fun jx_24 () Int)
(declare-fun qpRange10 (T@Ref) Bool)
(declare-fun invRecv10 (T@Ref) Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_36670)
(declare-fun i_18 () Int)
(declare-fun ix_5 () Int)
(declare-fun jx_5 () Int)
(declare-fun qpRange9 (T@Ref) Bool)
(declare-fun invRecv9 (T@Ref) Int)
(declare-fun i_12 () Int)
(declare-fun ix_23 () Int)
(declare-fun jx_23 () Int)
(declare-fun diz () T@Ref)
(declare-fun current_thread_id () Int)
(set-info :boogie-vc-id Ref__loop_main_69)
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
 (=> (= (ControlFlow 0 0) 125) (let ((anon60_correct true))
(let ((anon111_Else_correct  (=> (and (not (and (<= 0 i_32) (< i_32 len))) (= (ControlFlow 0 83) 72)) anon60_correct)))
(let ((anon111_Then_correct  (=> (and (<= 0 i_32) (< i_32 len)) (and (=> (= (ControlFlow 0 73) (- 0 82)) (>= i_32 0)) (=> (>= i_32 0) (and (=> (= (ControlFlow 0 73) (- 0 81)) (< i_32 (|Seq#Length_26200| a_2))) (=> (< i_32 (|Seq#Length_26200| a_2)) (and (=> (= (ControlFlow 0 73) (- 0 80)) (HasDirectPerm_26161_3757 QPMask@5 (|Seq#Index_26200| a_2 i_32) Ref__Integer_value)) (=> (HasDirectPerm_26161_3757 QPMask@5 (|Seq#Index_26200| a_2 i_32) Ref__Integer_value) (and (=> (= (ControlFlow 0 73) (- 0 79)) (>= i_32 0)) (=> (>= i_32 0) (and (=> (= (ControlFlow 0 73) (- 0 78)) (< i_32 (|Seq#Length_26200| b_24))) (=> (< i_32 (|Seq#Length_26200| b_24)) (and (=> (= (ControlFlow 0 73) (- 0 77)) (HasDirectPerm_26161_3757 QPMask@5 (|Seq#Index_26200| b_24 i_32) Ref__Integer_value)) (=> (HasDirectPerm_26161_3757 QPMask@5 (|Seq#Index_26200| b_24 i_32) Ref__Integer_value) (and (=> (= (ControlFlow 0 73) (- 0 76)) (>= i_32 0)) (=> (>= i_32 0) (and (=> (= (ControlFlow 0 73) (- 0 75)) (< i_32 (|Seq#Length_26200| c))) (=> (< i_32 (|Seq#Length_26200| c)) (and (=> (= (ControlFlow 0 73) (- 0 74)) (HasDirectPerm_26161_3757 QPMask@5 (|Seq#Index_26200| c i_32) Ref__Integer_value)) (=> (HasDirectPerm_26161_3757 QPMask@5 (|Seq#Index_26200| c i_32) Ref__Integer_value) (=> (= (ControlFlow 0 73) 72) anon60_correct))))))))))))))))))))))
(let ((anon110_Else_correct true))
(let ((anon108_Else_correct  (=> (and (forall ((i_15 Int) ) (!  (=> (and (<= 0 i_15) (< i_15 len)) (= (select (|PolymorphicMapType_36649_26161_3757#PolymorphicMapType_36649| PostHeap@0) (|Seq#Index_26200| c i_15) Ref__Integer_value) (select (|PolymorphicMapType_36649_26161_3757#PolymorphicMapType_36649| Heap@@41) (|Seq#Index_26200| c i_15) Ref__Integer_value)))
 :qid |stdinbpl.2319:20|
 :skolemid |194|
 :pattern ( (|Seq#Index_26200| c i_15))
)) (state PostHeap@0 QPMask@5)) (and (and (=> (= (ControlFlow 0 84) 71) anon110_Else_correct) (=> (= (ControlFlow 0 84) 73) anon111_Then_correct)) (=> (= (ControlFlow 0 84) 83) anon111_Else_correct)))))
(let ((anon56_correct true))
(let ((anon109_Else_correct  (=> (and (not (and (<= 0 i_31) (< i_31 len))) (= (ControlFlow 0 70) 62)) anon56_correct)))
(let ((anon109_Then_correct  (=> (and (<= 0 i_31) (< i_31 len)) (and (=> (= (ControlFlow 0 63) (- 0 69)) (>= i_31 0)) (=> (>= i_31 0) (and (=> (= (ControlFlow 0 63) (- 0 68)) (< i_31 (|Seq#Length_26200| c))) (=> (< i_31 (|Seq#Length_26200| c)) (and (=> (= (ControlFlow 0 63) (- 0 67)) (HasDirectPerm_26161_3757 QPMask@5 (|Seq#Index_26200| c i_31) Ref__Integer_value)) (=> (HasDirectPerm_26161_3757 QPMask@5 (|Seq#Index_26200| c i_31) Ref__Integer_value) (and (=> (= (ControlFlow 0 63) (- 0 66)) (>= i_31 0)) (=> (>= i_31 0) (and (=> (= (ControlFlow 0 63) (- 0 65)) (< i_31 (|Seq#Length_26200| c))) (=> (< i_31 (|Seq#Length_26200| c)) (and (=> (= (ControlFlow 0 63) (- 0 64)) (HasDirectPerm_26161_3757 QPMask@2 (|Seq#Index_26200| c i_31) Ref__Integer_value)) (=> (HasDirectPerm_26161_3757 QPMask@2 (|Seq#Index_26200| c i_31) Ref__Integer_value) (=> (= (ControlFlow 0 63) 62) anon56_correct))))))))))))))))
(let ((anon106_Else_correct  (=> (and (forall ((i_13_1 Int) ) (!  (=> (and (<= 0 i_13_1) (< i_13_1 len)) (= (select (|PolymorphicMapType_36649_26161_3757#PolymorphicMapType_36649| PostHeap@0) (|Seq#Index_26200| b_24 i_13_1) Ref__Integer_value) (select (|PolymorphicMapType_36649_26161_3757#PolymorphicMapType_36649| Heap@@41) (|Seq#Index_26200| b_24 i_13_1) Ref__Integer_value)))
 :qid |stdinbpl.2295:20|
 :skolemid |193|
 :pattern ( (|Seq#Index_26200| b_24 i_13_1))
)) (state PostHeap@0 QPMask@5)) (and (and (=> (= (ControlFlow 0 85) 84) anon108_Else_correct) (=> (= (ControlFlow 0 85) 63) anon109_Then_correct)) (=> (= (ControlFlow 0 85) 70) anon109_Else_correct)))))
(let ((anon52_correct true))
(let ((anon107_Else_correct  (=> (and (not (and (<= 0 i_30) (< i_30 len))) (= (ControlFlow 0 61) 53)) anon52_correct)))
(let ((anon107_Then_correct  (=> (and (<= 0 i_30) (< i_30 len)) (and (=> (= (ControlFlow 0 54) (- 0 60)) (>= i_30 0)) (=> (>= i_30 0) (and (=> (= (ControlFlow 0 54) (- 0 59)) (< i_30 (|Seq#Length_26200| b_24))) (=> (< i_30 (|Seq#Length_26200| b_24)) (and (=> (= (ControlFlow 0 54) (- 0 58)) (HasDirectPerm_26161_3757 QPMask@5 (|Seq#Index_26200| b_24 i_30) Ref__Integer_value)) (=> (HasDirectPerm_26161_3757 QPMask@5 (|Seq#Index_26200| b_24 i_30) Ref__Integer_value) (and (=> (= (ControlFlow 0 54) (- 0 57)) (>= i_30 0)) (=> (>= i_30 0) (and (=> (= (ControlFlow 0 54) (- 0 56)) (< i_30 (|Seq#Length_26200| b_24))) (=> (< i_30 (|Seq#Length_26200| b_24)) (and (=> (= (ControlFlow 0 54) (- 0 55)) (HasDirectPerm_26161_3757 QPMask@2 (|Seq#Index_26200| b_24 i_30) Ref__Integer_value)) (=> (HasDirectPerm_26161_3757 QPMask@2 (|Seq#Index_26200| b_24 i_30) Ref__Integer_value) (=> (= (ControlFlow 0 54) 53) anon52_correct))))))))))))))))
(let ((anon104_Else_correct  (and (=> (= (ControlFlow 0 86) (- 0 88)) (forall ((i_11_1 Int) (i_11_2 Int) ) (!  (=> (and (and (and (and (not (= i_11_1 i_11_2)) (and (<= 0 i_11_1) (< i_11_1 len))) (and (<= 0 i_11_2) (< i_11_2 len))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_26200| c i_11_1) (|Seq#Index_26200| c i_11_2))))
 :qid |stdinbpl.2237:15|
 :skolemid |186|
))) (=> (forall ((i_11_1@@0 Int) (i_11_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_11_1@@0 i_11_2@@0)) (and (<= 0 i_11_1@@0) (< i_11_1@@0 len))) (and (<= 0 i_11_2@@0) (< i_11_2@@0 len))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_26200| c i_11_1@@0) (|Seq#Index_26200| c i_11_2@@0))))
 :qid |stdinbpl.2237:15|
 :skolemid |186|
)) (=> (and (forall ((i_11_1@@1 Int) ) (!  (=> (and (and (<= 0 i_11_1@@1) (< i_11_1@@1 len)) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange14 (|Seq#Index_26200| c i_11_1@@1)) (= (invRecv14 (|Seq#Index_26200| c i_11_1@@1)) i_11_1@@1)))
 :qid |stdinbpl.2243:22|
 :skolemid |187|
 :pattern ( (|Seq#Index_26200| c i_11_1@@1))
 :pattern ( (|Seq#Index_26200| c i_11_1@@1))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv14 o_4)) (< (invRecv14 o_4) len)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange14 o_4)) (= (|Seq#Index_26200| c (invRecv14 o_4)) o_4))
 :qid |stdinbpl.2247:22|
 :skolemid |188|
 :pattern ( (invRecv14 o_4))
))) (and (=> (= (ControlFlow 0 86) (- 0 87)) (forall ((i_11_1@@2 Int) ) (!  (=> (and (<= 0 i_11_1@@2) (< i_11_1@@2 len)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2253:15|
 :skolemid |189|
 :pattern ( (|Seq#Index_26200| c i_11_1@@2))
 :pattern ( (|Seq#Index_26200| c i_11_1@@2))
))) (=> (forall ((i_11_1@@3 Int) ) (!  (=> (and (<= 0 i_11_1@@3) (< i_11_1@@3 len)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2253:15|
 :skolemid |189|
 :pattern ( (|Seq#Index_26200| c i_11_1@@3))
 :pattern ( (|Seq#Index_26200| c i_11_1@@3))
)) (=> (and (forall ((i_11_1@@4 Int) ) (!  (=> (and (and (<= 0 i_11_1@@4) (< i_11_1@@4 len)) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= (|Seq#Index_26200| c i_11_1@@4) null)))
 :qid |stdinbpl.2259:22|
 :skolemid |190|
 :pattern ( (|Seq#Index_26200| c i_11_1@@4))
 :pattern ( (|Seq#Index_26200| c i_11_1@@4))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv14 o_4@@0)) (< (invRecv14 o_4@@0) len)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange14 o_4@@0)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (|Seq#Index_26200| c (invRecv14 o_4@@0)) o_4@@0)) (= (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| QPMask@5) o_4@@0 Ref__Integer_value) (+ (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| QPMask@4) o_4@@0 Ref__Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (<= 0 (invRecv14 o_4@@0)) (< (invRecv14 o_4@@0) len)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange14 o_4@@0))) (= (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| QPMask@5) o_4@@0 Ref__Integer_value) (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| QPMask@4) o_4@@0 Ref__Integer_value))))
 :qid |stdinbpl.2265:22|
 :skolemid |191|
 :pattern ( (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| QPMask@5) o_4@@0 Ref__Integer_value))
))) (=> (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_36709_53) ) (!  (=> true (= (select (|PolymorphicMapType_36670_26161_53#PolymorphicMapType_36670| QPMask@4) o_4@@1 f_5) (select (|PolymorphicMapType_36670_26161_53#PolymorphicMapType_36670| QPMask@5) o_4@@1 f_5)))
 :qid |stdinbpl.2269:29|
 :skolemid |192|
 :pattern ( (select (|PolymorphicMapType_36670_26161_53#PolymorphicMapType_36670| QPMask@4) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_36670_26161_53#PolymorphicMapType_36670| QPMask@5) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_36722_36723) ) (!  (=> true (= (select (|PolymorphicMapType_36670_26161_36723#PolymorphicMapType_36670| QPMask@4) o_4@@2 f_5@@0) (select (|PolymorphicMapType_36670_26161_36723#PolymorphicMapType_36670| QPMask@5) o_4@@2 f_5@@0)))
 :qid |stdinbpl.2269:29|
 :skolemid |192|
 :pattern ( (select (|PolymorphicMapType_36670_26161_36723#PolymorphicMapType_36670| QPMask@4) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_36670_26161_36723#PolymorphicMapType_36670| QPMask@5) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_42791_3757) ) (!  (=> (not (= f_5@@1 Ref__Integer_value)) (= (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| QPMask@4) o_4@@3 f_5@@1) (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| QPMask@5) o_4@@3 f_5@@1)))
 :qid |stdinbpl.2269:29|
 :skolemid |192|
 :pattern ( (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| QPMask@4) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| QPMask@5) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_26161_103243) ) (!  (=> true (= (select (|PolymorphicMapType_36670_26161_103243#PolymorphicMapType_36670| QPMask@4) o_4@@4 f_5@@2) (select (|PolymorphicMapType_36670_26161_103243#PolymorphicMapType_36670| QPMask@5) o_4@@4 f_5@@2)))
 :qid |stdinbpl.2269:29|
 :skolemid |192|
 :pattern ( (select (|PolymorphicMapType_36670_26161_103243#PolymorphicMapType_36670| QPMask@4) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_36670_26161_103243#PolymorphicMapType_36670| QPMask@5) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_26161_103376) ) (!  (=> true (= (select (|PolymorphicMapType_36670_26161_107498#PolymorphicMapType_36670| QPMask@4) o_4@@5 f_5@@3) (select (|PolymorphicMapType_36670_26161_107498#PolymorphicMapType_36670| QPMask@5) o_4@@5 f_5@@3)))
 :qid |stdinbpl.2269:29|
 :skolemid |192|
 :pattern ( (select (|PolymorphicMapType_36670_26161_107498#PolymorphicMapType_36670| QPMask@4) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_36670_26161_107498#PolymorphicMapType_36670| QPMask@5) o_4@@5 f_5@@3))
))) (and (state PostHeap@0 QPMask@5) (state PostHeap@0 QPMask@5))) (and (and (=> (= (ControlFlow 0 86) 85) anon106_Else_correct) (=> (= (ControlFlow 0 86) 54) anon107_Then_correct)) (=> (= (ControlFlow 0 86) 61) anon107_Else_correct)))))))))))
(let ((anon48_correct true))
(let ((anon105_Else_correct  (=> (and (not (and (<= 0 i_29) (< i_29 len))) (= (ControlFlow 0 52) 48)) anon48_correct)))
(let ((anon105_Then_correct  (=> (and (<= 0 i_29) (< i_29 len)) (and (=> (= (ControlFlow 0 49) (- 0 51)) (>= i_29 0)) (=> (>= i_29 0) (and (=> (= (ControlFlow 0 49) (- 0 50)) (< i_29 (|Seq#Length_26200| c))) (=> (< i_29 (|Seq#Length_26200| c)) (=> (= (ControlFlow 0 49) 48) anon48_correct))))))))
(let ((anon45_correct  (=> (state PostHeap@0 QPMask@4) (and (and (=> (= (ControlFlow 0 89) 86) anon104_Else_correct) (=> (= (ControlFlow 0 89) 49) anon105_Then_correct)) (=> (= (ControlFlow 0 89) 52) anon105_Else_correct)))))
(let ((anon103_Else_correct  (=> (and (<= len 0) (= (ControlFlow 0 91) 89)) anon45_correct)))
(let ((anon103_Then_correct  (=> (< 0 len) (=> (and (= (|Seq#Length_26200| c) len) (= (ControlFlow 0 90) 89)) anon45_correct))))
(let ((anon101_Else_correct  (and (=> (= (ControlFlow 0 92) (- 0 94)) (forall ((i_9_1 Int) (i_9_2 Int) ) (!  (=> (and (and (and (and (not (= i_9_1 i_9_2)) (and (<= 0 i_9_1) (< i_9_1 len))) (and (<= 0 i_9_2) (< i_9_2 len))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_26200| b_24 i_9_1) (|Seq#Index_26200| b_24 i_9_2))))
 :qid |stdinbpl.2181:15|
 :skolemid |179|
))) (=> (forall ((i_9_1@@0 Int) (i_9_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_9_1@@0 i_9_2@@0)) (and (<= 0 i_9_1@@0) (< i_9_1@@0 len))) (and (<= 0 i_9_2@@0) (< i_9_2@@0 len))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_26200| b_24 i_9_1@@0) (|Seq#Index_26200| b_24 i_9_2@@0))))
 :qid |stdinbpl.2181:15|
 :skolemid |179|
)) (=> (and (forall ((i_9_1@@1 Int) ) (!  (=> (and (and (<= 0 i_9_1@@1) (< i_9_1@@1 len)) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange13 (|Seq#Index_26200| b_24 i_9_1@@1)) (= (invRecv13 (|Seq#Index_26200| b_24 i_9_1@@1)) i_9_1@@1)))
 :qid |stdinbpl.2187:22|
 :skolemid |180|
 :pattern ( (|Seq#Index_26200| b_24 i_9_1@@1))
 :pattern ( (|Seq#Index_26200| b_24 i_9_1@@1))
)) (forall ((o_4@@6 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv13 o_4@@6)) (< (invRecv13 o_4@@6) len)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange13 o_4@@6)) (= (|Seq#Index_26200| b_24 (invRecv13 o_4@@6)) o_4@@6))
 :qid |stdinbpl.2191:22|
 :skolemid |181|
 :pattern ( (invRecv13 o_4@@6))
))) (and (=> (= (ControlFlow 0 92) (- 0 93)) (forall ((i_9_1@@2 Int) ) (!  (=> (and (<= 0 i_9_1@@2) (< i_9_1@@2 len)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2197:15|
 :skolemid |182|
 :pattern ( (|Seq#Index_26200| b_24 i_9_1@@2))
 :pattern ( (|Seq#Index_26200| b_24 i_9_1@@2))
))) (=> (forall ((i_9_1@@3 Int) ) (!  (=> (and (<= 0 i_9_1@@3) (< i_9_1@@3 len)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2197:15|
 :skolemid |182|
 :pattern ( (|Seq#Index_26200| b_24 i_9_1@@3))
 :pattern ( (|Seq#Index_26200| b_24 i_9_1@@3))
)) (=> (and (forall ((i_9_1@@4 Int) ) (!  (=> (and (and (<= 0 i_9_1@@4) (< i_9_1@@4 len)) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= (|Seq#Index_26200| b_24 i_9_1@@4) null)))
 :qid |stdinbpl.2203:22|
 :skolemid |183|
 :pattern ( (|Seq#Index_26200| b_24 i_9_1@@4))
 :pattern ( (|Seq#Index_26200| b_24 i_9_1@@4))
)) (forall ((o_4@@7 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv13 o_4@@7)) (< (invRecv13 o_4@@7) len)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange13 o_4@@7)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (|Seq#Index_26200| b_24 (invRecv13 o_4@@7)) o_4@@7)) (= (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| QPMask@4) o_4@@7 Ref__Integer_value) (+ (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| QPMask@3) o_4@@7 Ref__Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (<= 0 (invRecv13 o_4@@7)) (< (invRecv13 o_4@@7) len)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange13 o_4@@7))) (= (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| QPMask@4) o_4@@7 Ref__Integer_value) (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| QPMask@3) o_4@@7 Ref__Integer_value))))
 :qid |stdinbpl.2209:22|
 :skolemid |184|
 :pattern ( (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| QPMask@4) o_4@@7 Ref__Integer_value))
))) (=> (and (and (and (and (and (forall ((o_4@@8 T@Ref) (f_5@@4 T@Field_36709_53) ) (!  (=> true (= (select (|PolymorphicMapType_36670_26161_53#PolymorphicMapType_36670| QPMask@3) o_4@@8 f_5@@4) (select (|PolymorphicMapType_36670_26161_53#PolymorphicMapType_36670| QPMask@4) o_4@@8 f_5@@4)))
 :qid |stdinbpl.2213:29|
 :skolemid |185|
 :pattern ( (select (|PolymorphicMapType_36670_26161_53#PolymorphicMapType_36670| QPMask@3) o_4@@8 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_36670_26161_53#PolymorphicMapType_36670| QPMask@4) o_4@@8 f_5@@4))
)) (forall ((o_4@@9 T@Ref) (f_5@@5 T@Field_36722_36723) ) (!  (=> true (= (select (|PolymorphicMapType_36670_26161_36723#PolymorphicMapType_36670| QPMask@3) o_4@@9 f_5@@5) (select (|PolymorphicMapType_36670_26161_36723#PolymorphicMapType_36670| QPMask@4) o_4@@9 f_5@@5)))
 :qid |stdinbpl.2213:29|
 :skolemid |185|
 :pattern ( (select (|PolymorphicMapType_36670_26161_36723#PolymorphicMapType_36670| QPMask@3) o_4@@9 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_36670_26161_36723#PolymorphicMapType_36670| QPMask@4) o_4@@9 f_5@@5))
))) (forall ((o_4@@10 T@Ref) (f_5@@6 T@Field_42791_3757) ) (!  (=> (not (= f_5@@6 Ref__Integer_value)) (= (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| QPMask@3) o_4@@10 f_5@@6) (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| QPMask@4) o_4@@10 f_5@@6)))
 :qid |stdinbpl.2213:29|
 :skolemid |185|
 :pattern ( (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| QPMask@3) o_4@@10 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| QPMask@4) o_4@@10 f_5@@6))
))) (forall ((o_4@@11 T@Ref) (f_5@@7 T@Field_26161_103243) ) (!  (=> true (= (select (|PolymorphicMapType_36670_26161_103243#PolymorphicMapType_36670| QPMask@3) o_4@@11 f_5@@7) (select (|PolymorphicMapType_36670_26161_103243#PolymorphicMapType_36670| QPMask@4) o_4@@11 f_5@@7)))
 :qid |stdinbpl.2213:29|
 :skolemid |185|
 :pattern ( (select (|PolymorphicMapType_36670_26161_103243#PolymorphicMapType_36670| QPMask@3) o_4@@11 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_36670_26161_103243#PolymorphicMapType_36670| QPMask@4) o_4@@11 f_5@@7))
))) (forall ((o_4@@12 T@Ref) (f_5@@8 T@Field_26161_103376) ) (!  (=> true (= (select (|PolymorphicMapType_36670_26161_107498#PolymorphicMapType_36670| QPMask@3) o_4@@12 f_5@@8) (select (|PolymorphicMapType_36670_26161_107498#PolymorphicMapType_36670| QPMask@4) o_4@@12 f_5@@8)))
 :qid |stdinbpl.2213:29|
 :skolemid |185|
 :pattern ( (select (|PolymorphicMapType_36670_26161_107498#PolymorphicMapType_36670| QPMask@3) o_4@@12 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_36670_26161_107498#PolymorphicMapType_36670| QPMask@4) o_4@@12 f_5@@8))
))) (and (state PostHeap@0 QPMask@4) (state PostHeap@0 QPMask@4))) (and (=> (= (ControlFlow 0 92) 90) anon103_Then_correct) (=> (= (ControlFlow 0 92) 91) anon103_Else_correct)))))))))))
(let ((anon42_correct true))
(let ((anon102_Else_correct  (=> (and (not (and (<= 0 i_24) (< i_24 len))) (= (ControlFlow 0 47) 43)) anon42_correct)))
(let ((anon102_Then_correct  (=> (and (<= 0 i_24) (< i_24 len)) (and (=> (= (ControlFlow 0 44) (- 0 46)) (>= i_24 0)) (=> (>= i_24 0) (and (=> (= (ControlFlow 0 44) (- 0 45)) (< i_24 (|Seq#Length_26200| b_24))) (=> (< i_24 (|Seq#Length_26200| b_24)) (=> (= (ControlFlow 0 44) 43) anon42_correct))))))))
(let ((anon39_correct  (=> (state PostHeap@0 QPMask@3) (and (and (=> (= (ControlFlow 0 95) 92) anon101_Else_correct) (=> (= (ControlFlow 0 95) 44) anon102_Then_correct)) (=> (= (ControlFlow 0 95) 47) anon102_Else_correct)))))
(let ((anon100_Else_correct  (=> (and (<= len 0) (= (ControlFlow 0 97) 95)) anon39_correct)))
(let ((anon100_Then_correct  (=> (< 0 len) (=> (and (= (|Seq#Length_26200| b_24) len) (= (ControlFlow 0 96) 95)) anon39_correct))))
(let ((anon98_Else_correct  (and (=> (= (ControlFlow 0 98) (- 0 99)) (forall ((i_7_1 Int) (i_7_2 Int) ) (!  (=> (and (and (and (and (not (= i_7_1 i_7_2)) (and (<= 0 i_7_1) (< i_7_1 len))) (and (<= 0 i_7_2) (< i_7_2 len))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_26200| a_2 i_7_1) (|Seq#Index_26200| a_2 i_7_2))))
 :qid |stdinbpl.2131:15|
 :skolemid |173|
))) (=> (forall ((i_7_1@@0 Int) (i_7_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_7_1@@0 i_7_2@@0)) (and (<= 0 i_7_1@@0) (< i_7_1@@0 len))) (and (<= 0 i_7_2@@0) (< i_7_2@@0 len))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_26200| a_2 i_7_1@@0) (|Seq#Index_26200| a_2 i_7_2@@0))))
 :qid |stdinbpl.2131:15|
 :skolemid |173|
)) (=> (and (and (forall ((i_7_1@@1 Int) ) (!  (=> (and (and (<= 0 i_7_1@@1) (< i_7_1@@1 len)) (< NoPerm FullPerm)) (and (qpRange12 (|Seq#Index_26200| a_2 i_7_1@@1)) (= (invRecv12 (|Seq#Index_26200| a_2 i_7_1@@1)) i_7_1@@1)))
 :qid |stdinbpl.2137:22|
 :skolemid |174|
 :pattern ( (|Seq#Index_26200| a_2 i_7_1@@1))
 :pattern ( (|Seq#Index_26200| a_2 i_7_1@@1))
)) (forall ((o_4@@13 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv12 o_4@@13)) (< (invRecv12 o_4@@13) len)) (< NoPerm FullPerm)) (qpRange12 o_4@@13)) (= (|Seq#Index_26200| a_2 (invRecv12 o_4@@13)) o_4@@13))
 :qid |stdinbpl.2141:22|
 :skolemid |175|
 :pattern ( (invRecv12 o_4@@13))
))) (and (forall ((i_7_1@@2 Int) ) (!  (=> (and (<= 0 i_7_1@@2) (< i_7_1@@2 len)) (not (= (|Seq#Index_26200| a_2 i_7_1@@2) null)))
 :qid |stdinbpl.2147:22|
 :skolemid |176|
 :pattern ( (|Seq#Index_26200| a_2 i_7_1@@2))
 :pattern ( (|Seq#Index_26200| a_2 i_7_1@@2))
)) (forall ((o_4@@14 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv12 o_4@@14)) (< (invRecv12 o_4@@14) len)) (< NoPerm FullPerm)) (qpRange12 o_4@@14)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_26200| a_2 (invRecv12 o_4@@14)) o_4@@14)) (= (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| QPMask@3) o_4@@14 Ref__Integer_value) (+ (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| ZeroMask) o_4@@14 Ref__Integer_value) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv12 o_4@@14)) (< (invRecv12 o_4@@14) len)) (< NoPerm FullPerm)) (qpRange12 o_4@@14))) (= (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| QPMask@3) o_4@@14 Ref__Integer_value) (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| ZeroMask) o_4@@14 Ref__Integer_value))))
 :qid |stdinbpl.2153:22|
 :skolemid |177|
 :pattern ( (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| QPMask@3) o_4@@14 Ref__Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_4@@15 T@Ref) (f_5@@9 T@Field_36709_53) ) (!  (=> true (= (select (|PolymorphicMapType_36670_26161_53#PolymorphicMapType_36670| ZeroMask) o_4@@15 f_5@@9) (select (|PolymorphicMapType_36670_26161_53#PolymorphicMapType_36670| QPMask@3) o_4@@15 f_5@@9)))
 :qid |stdinbpl.2157:29|
 :skolemid |178|
 :pattern ( (select (|PolymorphicMapType_36670_26161_53#PolymorphicMapType_36670| ZeroMask) o_4@@15 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_36670_26161_53#PolymorphicMapType_36670| QPMask@3) o_4@@15 f_5@@9))
)) (forall ((o_4@@16 T@Ref) (f_5@@10 T@Field_36722_36723) ) (!  (=> true (= (select (|PolymorphicMapType_36670_26161_36723#PolymorphicMapType_36670| ZeroMask) o_4@@16 f_5@@10) (select (|PolymorphicMapType_36670_26161_36723#PolymorphicMapType_36670| QPMask@3) o_4@@16 f_5@@10)))
 :qid |stdinbpl.2157:29|
 :skolemid |178|
 :pattern ( (select (|PolymorphicMapType_36670_26161_36723#PolymorphicMapType_36670| ZeroMask) o_4@@16 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_36670_26161_36723#PolymorphicMapType_36670| QPMask@3) o_4@@16 f_5@@10))
))) (forall ((o_4@@17 T@Ref) (f_5@@11 T@Field_42791_3757) ) (!  (=> (not (= f_5@@11 Ref__Integer_value)) (= (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| ZeroMask) o_4@@17 f_5@@11) (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| QPMask@3) o_4@@17 f_5@@11)))
 :qid |stdinbpl.2157:29|
 :skolemid |178|
 :pattern ( (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| ZeroMask) o_4@@17 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| QPMask@3) o_4@@17 f_5@@11))
))) (forall ((o_4@@18 T@Ref) (f_5@@12 T@Field_26161_103243) ) (!  (=> true (= (select (|PolymorphicMapType_36670_26161_103243#PolymorphicMapType_36670| ZeroMask) o_4@@18 f_5@@12) (select (|PolymorphicMapType_36670_26161_103243#PolymorphicMapType_36670| QPMask@3) o_4@@18 f_5@@12)))
 :qid |stdinbpl.2157:29|
 :skolemid |178|
 :pattern ( (select (|PolymorphicMapType_36670_26161_103243#PolymorphicMapType_36670| ZeroMask) o_4@@18 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_36670_26161_103243#PolymorphicMapType_36670| QPMask@3) o_4@@18 f_5@@12))
))) (forall ((o_4@@19 T@Ref) (f_5@@13 T@Field_26161_103376) ) (!  (=> true (= (select (|PolymorphicMapType_36670_26161_107498#PolymorphicMapType_36670| ZeroMask) o_4@@19 f_5@@13) (select (|PolymorphicMapType_36670_26161_107498#PolymorphicMapType_36670| QPMask@3) o_4@@19 f_5@@13)))
 :qid |stdinbpl.2157:29|
 :skolemid |178|
 :pattern ( (select (|PolymorphicMapType_36670_26161_107498#PolymorphicMapType_36670| ZeroMask) o_4@@19 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_36670_26161_107498#PolymorphicMapType_36670| QPMask@3) o_4@@19 f_5@@13))
))) (and (state PostHeap@0 QPMask@3) (state PostHeap@0 QPMask@3))) (and (=> (= (ControlFlow 0 98) 96) anon100_Then_correct) (=> (= (ControlFlow 0 98) 97) anon100_Else_correct))))))))
(let ((anon36_correct true))
(let ((anon99_Else_correct  (=> (and (not (and (<= 0 i_22) (< i_22 len))) (= (ControlFlow 0 42) 38)) anon36_correct)))
(let ((anon99_Then_correct  (=> (and (<= 0 i_22) (< i_22 len)) (and (=> (= (ControlFlow 0 39) (- 0 41)) (>= i_22 0)) (=> (>= i_22 0) (and (=> (= (ControlFlow 0 39) (- 0 40)) (< i_22 (|Seq#Length_26200| a_2))) (=> (< i_22 (|Seq#Length_26200| a_2)) (=> (= (ControlFlow 0 39) 38) anon36_correct))))))))
(let ((anon33_correct  (=> (state PostHeap@0 ZeroMask) (and (and (=> (= (ControlFlow 0 100) 98) anon98_Else_correct) (=> (= (ControlFlow 0 100) 39) anon99_Then_correct)) (=> (= (ControlFlow 0 100) 42) anon99_Else_correct)))))
(let ((anon97_Else_correct  (=> (and (<= len 0) (= (ControlFlow 0 102) 100)) anon33_correct)))
(let ((anon97_Then_correct  (=> (< 0 len) (=> (and (= (|Seq#Length_26200| a_2) len) (= (ControlFlow 0 101) 100)) anon33_correct))))
(let ((anon96_Then_correct  (=> (state PostHeap@0 ZeroMask) (and (=> (= (ControlFlow 0 103) 101) anon97_Then_correct) (=> (= (ControlFlow 0 103) 102) anon97_Else_correct)))))
(let ((anon96_Else_correct true))
(let ((anon94_Else_correct  (and (=> (= (ControlFlow 0 104) (- 0 106)) (forall ((i_5 Int) (i_5_1 Int) ) (!  (=> (and (and (and (and (not (= i_5 i_5_1)) (and (<= 0 i_5) (< i_5 len))) (and (<= 0 i_5_1) (< i_5_1 len))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_26200| c i_5) (|Seq#Index_26200| c i_5_1))))
 :qid |stdinbpl.2064:15|
 :skolemid |166|
))) (=> (forall ((i_5@@0 Int) (i_5_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_5@@0 i_5_1@@0)) (and (<= 0 i_5@@0) (< i_5@@0 len))) (and (<= 0 i_5_1@@0) (< i_5_1@@0 len))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_26200| c i_5@@0) (|Seq#Index_26200| c i_5_1@@0))))
 :qid |stdinbpl.2064:15|
 :skolemid |166|
)) (=> (and (forall ((i_5@@1 Int) ) (!  (=> (and (and (<= 0 i_5@@1) (< i_5@@1 len)) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange11 (|Seq#Index_26200| c i_5@@1)) (= (invRecv11 (|Seq#Index_26200| c i_5@@1)) i_5@@1)))
 :qid |stdinbpl.2070:22|
 :skolemid |167|
 :pattern ( (|Seq#Index_26200| c i_5@@1))
 :pattern ( (|Seq#Index_26200| c i_5@@1))
)) (forall ((o_4@@20 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv11 o_4@@20)) (< (invRecv11 o_4@@20) len)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange11 o_4@@20)) (= (|Seq#Index_26200| c (invRecv11 o_4@@20)) o_4@@20))
 :qid |stdinbpl.2074:22|
 :skolemid |168|
 :pattern ( (invRecv11 o_4@@20))
))) (and (=> (= (ControlFlow 0 104) (- 0 105)) (forall ((i_5@@2 Int) ) (!  (=> (and (<= 0 i_5@@2) (< i_5@@2 len)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2080:15|
 :skolemid |169|
 :pattern ( (|Seq#Index_26200| c i_5@@2))
 :pattern ( (|Seq#Index_26200| c i_5@@2))
))) (=> (forall ((i_5@@3 Int) ) (!  (=> (and (<= 0 i_5@@3) (< i_5@@3 len)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2080:15|
 :skolemid |169|
 :pattern ( (|Seq#Index_26200| c i_5@@3))
 :pattern ( (|Seq#Index_26200| c i_5@@3))
)) (=> (and (forall ((i_5@@4 Int) ) (!  (=> (and (and (<= 0 i_5@@4) (< i_5@@4 len)) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= (|Seq#Index_26200| c i_5@@4) null)))
 :qid |stdinbpl.2086:22|
 :skolemid |170|
 :pattern ( (|Seq#Index_26200| c i_5@@4))
 :pattern ( (|Seq#Index_26200| c i_5@@4))
)) (forall ((o_4@@21 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv11 o_4@@21)) (< (invRecv11 o_4@@21) len)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange11 o_4@@21)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (|Seq#Index_26200| c (invRecv11 o_4@@21)) o_4@@21)) (= (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| QPMask@2) o_4@@21 Ref__Integer_value) (+ (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| QPMask@1) o_4@@21 Ref__Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (<= 0 (invRecv11 o_4@@21)) (< (invRecv11 o_4@@21) len)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange11 o_4@@21))) (= (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| QPMask@2) o_4@@21 Ref__Integer_value) (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| QPMask@1) o_4@@21 Ref__Integer_value))))
 :qid |stdinbpl.2092:22|
 :skolemid |171|
 :pattern ( (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| QPMask@2) o_4@@21 Ref__Integer_value))
))) (=> (and (and (and (and (and (forall ((o_4@@22 T@Ref) (f_5@@14 T@Field_36709_53) ) (!  (=> true (= (select (|PolymorphicMapType_36670_26161_53#PolymorphicMapType_36670| QPMask@1) o_4@@22 f_5@@14) (select (|PolymorphicMapType_36670_26161_53#PolymorphicMapType_36670| QPMask@2) o_4@@22 f_5@@14)))
 :qid |stdinbpl.2096:29|
 :skolemid |172|
 :pattern ( (select (|PolymorphicMapType_36670_26161_53#PolymorphicMapType_36670| QPMask@1) o_4@@22 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_36670_26161_53#PolymorphicMapType_36670| QPMask@2) o_4@@22 f_5@@14))
)) (forall ((o_4@@23 T@Ref) (f_5@@15 T@Field_36722_36723) ) (!  (=> true (= (select (|PolymorphicMapType_36670_26161_36723#PolymorphicMapType_36670| QPMask@1) o_4@@23 f_5@@15) (select (|PolymorphicMapType_36670_26161_36723#PolymorphicMapType_36670| QPMask@2) o_4@@23 f_5@@15)))
 :qid |stdinbpl.2096:29|
 :skolemid |172|
 :pattern ( (select (|PolymorphicMapType_36670_26161_36723#PolymorphicMapType_36670| QPMask@1) o_4@@23 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_36670_26161_36723#PolymorphicMapType_36670| QPMask@2) o_4@@23 f_5@@15))
))) (forall ((o_4@@24 T@Ref) (f_5@@16 T@Field_42791_3757) ) (!  (=> (not (= f_5@@16 Ref__Integer_value)) (= (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| QPMask@1) o_4@@24 f_5@@16) (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| QPMask@2) o_4@@24 f_5@@16)))
 :qid |stdinbpl.2096:29|
 :skolemid |172|
 :pattern ( (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| QPMask@1) o_4@@24 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| QPMask@2) o_4@@24 f_5@@16))
))) (forall ((o_4@@25 T@Ref) (f_5@@17 T@Field_26161_103243) ) (!  (=> true (= (select (|PolymorphicMapType_36670_26161_103243#PolymorphicMapType_36670| QPMask@1) o_4@@25 f_5@@17) (select (|PolymorphicMapType_36670_26161_103243#PolymorphicMapType_36670| QPMask@2) o_4@@25 f_5@@17)))
 :qid |stdinbpl.2096:29|
 :skolemid |172|
 :pattern ( (select (|PolymorphicMapType_36670_26161_103243#PolymorphicMapType_36670| QPMask@1) o_4@@25 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_36670_26161_103243#PolymorphicMapType_36670| QPMask@2) o_4@@25 f_5@@17))
))) (forall ((o_4@@26 T@Ref) (f_5@@18 T@Field_26161_103376) ) (!  (=> true (= (select (|PolymorphicMapType_36670_26161_107498#PolymorphicMapType_36670| QPMask@1) o_4@@26 f_5@@18) (select (|PolymorphicMapType_36670_26161_107498#PolymorphicMapType_36670| QPMask@2) o_4@@26 f_5@@18)))
 :qid |stdinbpl.2096:29|
 :skolemid |172|
 :pattern ( (select (|PolymorphicMapType_36670_26161_107498#PolymorphicMapType_36670| QPMask@1) o_4@@26 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_36670_26161_107498#PolymorphicMapType_36670| QPMask@2) o_4@@26 f_5@@18))
))) (and (state Heap@@41 QPMask@2) (state Heap@@41 QPMask@2))) (and (=> (= (ControlFlow 0 104) 103) anon96_Then_correct) (=> (= (ControlFlow 0 104) 37) anon96_Else_correct)))))))))))
(let ((anon29_correct true))
(let ((anon95_Else_correct  (=> (and (not (and (<= 0 i_20) (< i_20 len))) (= (ControlFlow 0 36) 32)) anon29_correct)))
(let ((anon95_Then_correct  (=> (and (<= 0 i_20) (< i_20 len)) (and (=> (= (ControlFlow 0 33) (- 0 35)) (>= i_20 0)) (=> (>= i_20 0) (and (=> (= (ControlFlow 0 33) (- 0 34)) (< i_20 (|Seq#Length_26200| c))) (=> (< i_20 (|Seq#Length_26200| c)) (=> (= (ControlFlow 0 33) 32) anon29_correct))))))))
(let ((anon92_Else_correct  (=> (and (forall ((ix_5_2 Int) (jx_5_2 Int) ) (!  (=> (and (>= ix_5_2 0) (and (< ix_5_2 (|Seq#Length_26200| c)) (and (>= jx_5_2 0) (and (< jx_5_2 (|Seq#Length_26200| c)) (not (= ix_5_2 jx_5_2)))))) (not (= (|Seq#Index_26200| c ix_5_2) (|Seq#Index_26200| c jx_5_2))))
 :qid |stdinbpl.2046:20|
 :skolemid |165|
 :pattern ( (|Seq#Index_26200| c ix_5_2) (|Seq#Index_26200| c jx_5_2))
)) (state Heap@@41 QPMask@1)) (and (and (=> (= (ControlFlow 0 107) 104) anon94_Else_correct) (=> (= (ControlFlow 0 107) 33) anon95_Then_correct)) (=> (= (ControlFlow 0 107) 36) anon95_Else_correct)))))
(let ((anon25_correct true))
(let ((anon93_Else_correct  (=> (and (not (and (>= ix_24 0) (and (< ix_24 (|Seq#Length_26200| c)) (and (>= jx_24 0) (and (< jx_24 (|Seq#Length_26200| c)) (not (= ix_24 jx_24))))))) (= (ControlFlow 0 31) 25)) anon25_correct)))
(let ((anon93_Then_correct  (=> (and (>= ix_24 0) (and (< ix_24 (|Seq#Length_26200| c)) (and (>= jx_24 0) (and (< jx_24 (|Seq#Length_26200| c)) (not (= ix_24 jx_24)))))) (and (=> (= (ControlFlow 0 26) (- 0 30)) (>= ix_24 0)) (=> (>= ix_24 0) (and (=> (= (ControlFlow 0 26) (- 0 29)) (< ix_24 (|Seq#Length_26200| c))) (=> (< ix_24 (|Seq#Length_26200| c)) (and (=> (= (ControlFlow 0 26) (- 0 28)) (>= jx_24 0)) (=> (>= jx_24 0) (and (=> (= (ControlFlow 0 26) (- 0 27)) (< jx_24 (|Seq#Length_26200| c))) (=> (< jx_24 (|Seq#Length_26200| c)) (=> (= (ControlFlow 0 26) 25) anon25_correct))))))))))))
(let ((anon22_correct  (=> (state Heap@@41 QPMask@1) (and (and (=> (= (ControlFlow 0 108) 107) anon92_Else_correct) (=> (= (ControlFlow 0 108) 26) anon93_Then_correct)) (=> (= (ControlFlow 0 108) 31) anon93_Else_correct)))))
(let ((anon91_Else_correct  (=> (and (<= len 0) (= (ControlFlow 0 110) 108)) anon22_correct)))
(let ((anon91_Then_correct  (=> (< 0 len) (=> (and (= (|Seq#Length_26200| c) len) (= (ControlFlow 0 109) 108)) anon22_correct))))
(let ((anon89_Else_correct  (and (=> (= (ControlFlow 0 111) (- 0 113)) (forall ((i_3 Int) (i_3_1 Int) ) (!  (=> (and (and (and (and (not (= i_3 i_3_1)) (and (<= 0 i_3) (< i_3 len))) (and (<= 0 i_3_1) (< i_3_1 len))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_26200| b_24 i_3) (|Seq#Index_26200| b_24 i_3_1))))
 :qid |stdinbpl.1988:15|
 :skolemid |158|
))) (=> (forall ((i_3@@0 Int) (i_3_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_3@@0 i_3_1@@0)) (and (<= 0 i_3@@0) (< i_3@@0 len))) (and (<= 0 i_3_1@@0) (< i_3_1@@0 len))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_26200| b_24 i_3@@0) (|Seq#Index_26200| b_24 i_3_1@@0))))
 :qid |stdinbpl.1988:15|
 :skolemid |158|
)) (=> (and (forall ((i_3@@1 Int) ) (!  (=> (and (and (<= 0 i_3@@1) (< i_3@@1 len)) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange10 (|Seq#Index_26200| b_24 i_3@@1)) (= (invRecv10 (|Seq#Index_26200| b_24 i_3@@1)) i_3@@1)))
 :qid |stdinbpl.1994:22|
 :skolemid |159|
 :pattern ( (|Seq#Index_26200| b_24 i_3@@1))
 :pattern ( (|Seq#Index_26200| b_24 i_3@@1))
)) (forall ((o_4@@27 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv10 o_4@@27)) (< (invRecv10 o_4@@27) len)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange10 o_4@@27)) (= (|Seq#Index_26200| b_24 (invRecv10 o_4@@27)) o_4@@27))
 :qid |stdinbpl.1998:22|
 :skolemid |160|
 :pattern ( (invRecv10 o_4@@27))
))) (and (=> (= (ControlFlow 0 111) (- 0 112)) (forall ((i_3@@2 Int) ) (!  (=> (and (<= 0 i_3@@2) (< i_3@@2 len)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2004:15|
 :skolemid |161|
 :pattern ( (|Seq#Index_26200| b_24 i_3@@2))
 :pattern ( (|Seq#Index_26200| b_24 i_3@@2))
))) (=> (forall ((i_3@@3 Int) ) (!  (=> (and (<= 0 i_3@@3) (< i_3@@3 len)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2004:15|
 :skolemid |161|
 :pattern ( (|Seq#Index_26200| b_24 i_3@@3))
 :pattern ( (|Seq#Index_26200| b_24 i_3@@3))
)) (=> (and (forall ((i_3@@4 Int) ) (!  (=> (and (and (<= 0 i_3@@4) (< i_3@@4 len)) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= (|Seq#Index_26200| b_24 i_3@@4) null)))
 :qid |stdinbpl.2010:22|
 :skolemid |162|
 :pattern ( (|Seq#Index_26200| b_24 i_3@@4))
 :pattern ( (|Seq#Index_26200| b_24 i_3@@4))
)) (forall ((o_4@@28 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv10 o_4@@28)) (< (invRecv10 o_4@@28) len)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange10 o_4@@28)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (|Seq#Index_26200| b_24 (invRecv10 o_4@@28)) o_4@@28)) (= (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| QPMask@1) o_4@@28 Ref__Integer_value) (+ (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| QPMask@0) o_4@@28 Ref__Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (<= 0 (invRecv10 o_4@@28)) (< (invRecv10 o_4@@28) len)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange10 o_4@@28))) (= (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| QPMask@1) o_4@@28 Ref__Integer_value) (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| QPMask@0) o_4@@28 Ref__Integer_value))))
 :qid |stdinbpl.2016:22|
 :skolemid |163|
 :pattern ( (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| QPMask@1) o_4@@28 Ref__Integer_value))
))) (=> (and (and (and (and (and (forall ((o_4@@29 T@Ref) (f_5@@19 T@Field_36709_53) ) (!  (=> true (= (select (|PolymorphicMapType_36670_26161_53#PolymorphicMapType_36670| QPMask@0) o_4@@29 f_5@@19) (select (|PolymorphicMapType_36670_26161_53#PolymorphicMapType_36670| QPMask@1) o_4@@29 f_5@@19)))
 :qid |stdinbpl.2020:29|
 :skolemid |164|
 :pattern ( (select (|PolymorphicMapType_36670_26161_53#PolymorphicMapType_36670| QPMask@0) o_4@@29 f_5@@19))
 :pattern ( (select (|PolymorphicMapType_36670_26161_53#PolymorphicMapType_36670| QPMask@1) o_4@@29 f_5@@19))
)) (forall ((o_4@@30 T@Ref) (f_5@@20 T@Field_36722_36723) ) (!  (=> true (= (select (|PolymorphicMapType_36670_26161_36723#PolymorphicMapType_36670| QPMask@0) o_4@@30 f_5@@20) (select (|PolymorphicMapType_36670_26161_36723#PolymorphicMapType_36670| QPMask@1) o_4@@30 f_5@@20)))
 :qid |stdinbpl.2020:29|
 :skolemid |164|
 :pattern ( (select (|PolymorphicMapType_36670_26161_36723#PolymorphicMapType_36670| QPMask@0) o_4@@30 f_5@@20))
 :pattern ( (select (|PolymorphicMapType_36670_26161_36723#PolymorphicMapType_36670| QPMask@1) o_4@@30 f_5@@20))
))) (forall ((o_4@@31 T@Ref) (f_5@@21 T@Field_42791_3757) ) (!  (=> (not (= f_5@@21 Ref__Integer_value)) (= (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| QPMask@0) o_4@@31 f_5@@21) (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| QPMask@1) o_4@@31 f_5@@21)))
 :qid |stdinbpl.2020:29|
 :skolemid |164|
 :pattern ( (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| QPMask@0) o_4@@31 f_5@@21))
 :pattern ( (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| QPMask@1) o_4@@31 f_5@@21))
))) (forall ((o_4@@32 T@Ref) (f_5@@22 T@Field_26161_103243) ) (!  (=> true (= (select (|PolymorphicMapType_36670_26161_103243#PolymorphicMapType_36670| QPMask@0) o_4@@32 f_5@@22) (select (|PolymorphicMapType_36670_26161_103243#PolymorphicMapType_36670| QPMask@1) o_4@@32 f_5@@22)))
 :qid |stdinbpl.2020:29|
 :skolemid |164|
 :pattern ( (select (|PolymorphicMapType_36670_26161_103243#PolymorphicMapType_36670| QPMask@0) o_4@@32 f_5@@22))
 :pattern ( (select (|PolymorphicMapType_36670_26161_103243#PolymorphicMapType_36670| QPMask@1) o_4@@32 f_5@@22))
))) (forall ((o_4@@33 T@Ref) (f_5@@23 T@Field_26161_103376) ) (!  (=> true (= (select (|PolymorphicMapType_36670_26161_107498#PolymorphicMapType_36670| QPMask@0) o_4@@33 f_5@@23) (select (|PolymorphicMapType_36670_26161_107498#PolymorphicMapType_36670| QPMask@1) o_4@@33 f_5@@23)))
 :qid |stdinbpl.2020:29|
 :skolemid |164|
 :pattern ( (select (|PolymorphicMapType_36670_26161_107498#PolymorphicMapType_36670| QPMask@0) o_4@@33 f_5@@23))
 :pattern ( (select (|PolymorphicMapType_36670_26161_107498#PolymorphicMapType_36670| QPMask@1) o_4@@33 f_5@@23))
))) (and (state Heap@@41 QPMask@1) (state Heap@@41 QPMask@1))) (and (=> (= (ControlFlow 0 111) 109) anon91_Then_correct) (=> (= (ControlFlow 0 111) 110) anon91_Else_correct)))))))))))
(let ((anon19_correct true))
(let ((anon90_Else_correct  (=> (and (not (and (<= 0 i_18) (< i_18 len))) (= (ControlFlow 0 24) 20)) anon19_correct)))
(let ((anon90_Then_correct  (=> (and (<= 0 i_18) (< i_18 len)) (and (=> (= (ControlFlow 0 21) (- 0 23)) (>= i_18 0)) (=> (>= i_18 0) (and (=> (= (ControlFlow 0 21) (- 0 22)) (< i_18 (|Seq#Length_26200| b_24))) (=> (< i_18 (|Seq#Length_26200| b_24)) (=> (= (ControlFlow 0 21) 20) anon19_correct))))))))
(let ((anon87_Else_correct  (=> (and (forall ((ix_3 Int) (jx_3 Int) ) (!  (=> (and (>= ix_3 0) (and (< ix_3 (|Seq#Length_26200| b_24)) (and (>= jx_3 0) (and (< jx_3 (|Seq#Length_26200| b_24)) (not (= ix_3 jx_3)))))) (not (= (|Seq#Index_26200| b_24 ix_3) (|Seq#Index_26200| b_24 jx_3))))
 :qid |stdinbpl.1970:20|
 :skolemid |157|
 :pattern ( (|Seq#Index_26200| b_24 ix_3) (|Seq#Index_26200| b_24 jx_3))
)) (state Heap@@41 QPMask@0)) (and (and (=> (= (ControlFlow 0 114) 111) anon89_Else_correct) (=> (= (ControlFlow 0 114) 21) anon90_Then_correct)) (=> (= (ControlFlow 0 114) 24) anon90_Else_correct)))))
(let ((anon15_correct true))
(let ((anon88_Else_correct  (=> (and (not (and (>= ix_5 0) (and (< ix_5 (|Seq#Length_26200| b_24)) (and (>= jx_5 0) (and (< jx_5 (|Seq#Length_26200| b_24)) (not (= ix_5 jx_5))))))) (= (ControlFlow 0 19) 13)) anon15_correct)))
(let ((anon88_Then_correct  (=> (and (>= ix_5 0) (and (< ix_5 (|Seq#Length_26200| b_24)) (and (>= jx_5 0) (and (< jx_5 (|Seq#Length_26200| b_24)) (not (= ix_5 jx_5)))))) (and (=> (= (ControlFlow 0 14) (- 0 18)) (>= ix_5 0)) (=> (>= ix_5 0) (and (=> (= (ControlFlow 0 14) (- 0 17)) (< ix_5 (|Seq#Length_26200| b_24))) (=> (< ix_5 (|Seq#Length_26200| b_24)) (and (=> (= (ControlFlow 0 14) (- 0 16)) (>= jx_5 0)) (=> (>= jx_5 0) (and (=> (= (ControlFlow 0 14) (- 0 15)) (< jx_5 (|Seq#Length_26200| b_24))) (=> (< jx_5 (|Seq#Length_26200| b_24)) (=> (= (ControlFlow 0 14) 13) anon15_correct))))))))))))
(let ((anon12_correct  (=> (state Heap@@41 QPMask@0) (and (and (=> (= (ControlFlow 0 115) 114) anon87_Else_correct) (=> (= (ControlFlow 0 115) 14) anon88_Then_correct)) (=> (= (ControlFlow 0 115) 19) anon88_Else_correct)))))
(let ((anon86_Else_correct  (=> (and (<= len 0) (= (ControlFlow 0 117) 115)) anon12_correct)))
(let ((anon86_Then_correct  (=> (< 0 len) (=> (and (= (|Seq#Length_26200| b_24) len) (= (ControlFlow 0 116) 115)) anon12_correct))))
(let ((anon84_Else_correct  (and (=> (= (ControlFlow 0 118) (- 0 119)) (forall ((i_1 Int) (i_1_1 Int) ) (!  (=> (and (and (and (and (not (= i_1 i_1_1)) (and (<= 0 i_1) (< i_1 len))) (and (<= 0 i_1_1) (< i_1_1 len))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_26200| a_2 i_1) (|Seq#Index_26200| a_2 i_1_1))))
 :qid |stdinbpl.1918:15|
 :skolemid |151|
))) (=> (forall ((i_1@@0 Int) (i_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_1@@0 i_1_1@@0)) (and (<= 0 i_1@@0) (< i_1@@0 len))) (and (<= 0 i_1_1@@0) (< i_1_1@@0 len))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_26200| a_2 i_1@@0) (|Seq#Index_26200| a_2 i_1_1@@0))))
 :qid |stdinbpl.1918:15|
 :skolemid |151|
)) (=> (and (and (forall ((i_1@@1 Int) ) (!  (=> (and (and (<= 0 i_1@@1) (< i_1@@1 len)) (< NoPerm FullPerm)) (and (qpRange9 (|Seq#Index_26200| a_2 i_1@@1)) (= (invRecv9 (|Seq#Index_26200| a_2 i_1@@1)) i_1@@1)))
 :qid |stdinbpl.1924:22|
 :skolemid |152|
 :pattern ( (|Seq#Index_26200| a_2 i_1@@1))
 :pattern ( (|Seq#Index_26200| a_2 i_1@@1))
)) (forall ((o_4@@34 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv9 o_4@@34)) (< (invRecv9 o_4@@34) len)) (< NoPerm FullPerm)) (qpRange9 o_4@@34)) (= (|Seq#Index_26200| a_2 (invRecv9 o_4@@34)) o_4@@34))
 :qid |stdinbpl.1928:22|
 :skolemid |153|
 :pattern ( (invRecv9 o_4@@34))
))) (and (forall ((i_1@@2 Int) ) (!  (=> (and (<= 0 i_1@@2) (< i_1@@2 len)) (not (= (|Seq#Index_26200| a_2 i_1@@2) null)))
 :qid |stdinbpl.1934:22|
 :skolemid |154|
 :pattern ( (|Seq#Index_26200| a_2 i_1@@2))
 :pattern ( (|Seq#Index_26200| a_2 i_1@@2))
)) (forall ((o_4@@35 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv9 o_4@@35)) (< (invRecv9 o_4@@35) len)) (< NoPerm FullPerm)) (qpRange9 o_4@@35)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_26200| a_2 (invRecv9 o_4@@35)) o_4@@35)) (= (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| QPMask@0) o_4@@35 Ref__Integer_value) (+ (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| ZeroMask) o_4@@35 Ref__Integer_value) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv9 o_4@@35)) (< (invRecv9 o_4@@35) len)) (< NoPerm FullPerm)) (qpRange9 o_4@@35))) (= (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| QPMask@0) o_4@@35 Ref__Integer_value) (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| ZeroMask) o_4@@35 Ref__Integer_value))))
 :qid |stdinbpl.1940:22|
 :skolemid |155|
 :pattern ( (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| QPMask@0) o_4@@35 Ref__Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_4@@36 T@Ref) (f_5@@24 T@Field_36709_53) ) (!  (=> true (= (select (|PolymorphicMapType_36670_26161_53#PolymorphicMapType_36670| ZeroMask) o_4@@36 f_5@@24) (select (|PolymorphicMapType_36670_26161_53#PolymorphicMapType_36670| QPMask@0) o_4@@36 f_5@@24)))
 :qid |stdinbpl.1944:29|
 :skolemid |156|
 :pattern ( (select (|PolymorphicMapType_36670_26161_53#PolymorphicMapType_36670| ZeroMask) o_4@@36 f_5@@24))
 :pattern ( (select (|PolymorphicMapType_36670_26161_53#PolymorphicMapType_36670| QPMask@0) o_4@@36 f_5@@24))
)) (forall ((o_4@@37 T@Ref) (f_5@@25 T@Field_36722_36723) ) (!  (=> true (= (select (|PolymorphicMapType_36670_26161_36723#PolymorphicMapType_36670| ZeroMask) o_4@@37 f_5@@25) (select (|PolymorphicMapType_36670_26161_36723#PolymorphicMapType_36670| QPMask@0) o_4@@37 f_5@@25)))
 :qid |stdinbpl.1944:29|
 :skolemid |156|
 :pattern ( (select (|PolymorphicMapType_36670_26161_36723#PolymorphicMapType_36670| ZeroMask) o_4@@37 f_5@@25))
 :pattern ( (select (|PolymorphicMapType_36670_26161_36723#PolymorphicMapType_36670| QPMask@0) o_4@@37 f_5@@25))
))) (forall ((o_4@@38 T@Ref) (f_5@@26 T@Field_42791_3757) ) (!  (=> (not (= f_5@@26 Ref__Integer_value)) (= (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| ZeroMask) o_4@@38 f_5@@26) (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| QPMask@0) o_4@@38 f_5@@26)))
 :qid |stdinbpl.1944:29|
 :skolemid |156|
 :pattern ( (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| ZeroMask) o_4@@38 f_5@@26))
 :pattern ( (select (|PolymorphicMapType_36670_26161_3757#PolymorphicMapType_36670| QPMask@0) o_4@@38 f_5@@26))
))) (forall ((o_4@@39 T@Ref) (f_5@@27 T@Field_26161_103243) ) (!  (=> true (= (select (|PolymorphicMapType_36670_26161_103243#PolymorphicMapType_36670| ZeroMask) o_4@@39 f_5@@27) (select (|PolymorphicMapType_36670_26161_103243#PolymorphicMapType_36670| QPMask@0) o_4@@39 f_5@@27)))
 :qid |stdinbpl.1944:29|
 :skolemid |156|
 :pattern ( (select (|PolymorphicMapType_36670_26161_103243#PolymorphicMapType_36670| ZeroMask) o_4@@39 f_5@@27))
 :pattern ( (select (|PolymorphicMapType_36670_26161_103243#PolymorphicMapType_36670| QPMask@0) o_4@@39 f_5@@27))
))) (forall ((o_4@@40 T@Ref) (f_5@@28 T@Field_26161_103376) ) (!  (=> true (= (select (|PolymorphicMapType_36670_26161_107498#PolymorphicMapType_36670| ZeroMask) o_4@@40 f_5@@28) (select (|PolymorphicMapType_36670_26161_107498#PolymorphicMapType_36670| QPMask@0) o_4@@40 f_5@@28)))
 :qid |stdinbpl.1944:29|
 :skolemid |156|
 :pattern ( (select (|PolymorphicMapType_36670_26161_107498#PolymorphicMapType_36670| ZeroMask) o_4@@40 f_5@@28))
 :pattern ( (select (|PolymorphicMapType_36670_26161_107498#PolymorphicMapType_36670| QPMask@0) o_4@@40 f_5@@28))
))) (and (state Heap@@41 QPMask@0) (state Heap@@41 QPMask@0))) (and (=> (= (ControlFlow 0 118) 116) anon86_Then_correct) (=> (= (ControlFlow 0 118) 117) anon86_Else_correct))))))))
(let ((anon9_correct true))
(let ((anon85_Else_correct  (=> (and (not (and (<= 0 i_12) (< i_12 len))) (= (ControlFlow 0 12) 8)) anon9_correct)))
(let ((anon85_Then_correct  (=> (and (<= 0 i_12) (< i_12 len)) (and (=> (= (ControlFlow 0 9) (- 0 11)) (>= i_12 0)) (=> (>= i_12 0) (and (=> (= (ControlFlow 0 9) (- 0 10)) (< i_12 (|Seq#Length_26200| a_2))) (=> (< i_12 (|Seq#Length_26200| a_2)) (=> (= (ControlFlow 0 9) 8) anon9_correct))))))))
(let ((anon82_Else_correct  (=> (and (forall ((ix_1 Int) (jx_1 Int) ) (!  (=> (and (>= ix_1 0) (and (< ix_1 (|Seq#Length_26200| a_2)) (and (>= jx_1 0) (and (< jx_1 (|Seq#Length_26200| a_2)) (not (= ix_1 jx_1)))))) (not (= (|Seq#Index_26200| a_2 ix_1) (|Seq#Index_26200| a_2 jx_1))))
 :qid |stdinbpl.1900:20|
 :skolemid |150|
 :pattern ( (|Seq#Index_26200| a_2 ix_1) (|Seq#Index_26200| a_2 jx_1))
)) (state Heap@@41 ZeroMask)) (and (and (=> (= (ControlFlow 0 120) 118) anon84_Else_correct) (=> (= (ControlFlow 0 120) 9) anon85_Then_correct)) (=> (= (ControlFlow 0 120) 12) anon85_Else_correct)))))
(let ((anon5_correct true))
(let ((anon83_Else_correct  (=> (and (not (and (>= ix_23 0) (and (< ix_23 (|Seq#Length_26200| a_2)) (and (>= jx_23 0) (and (< jx_23 (|Seq#Length_26200| a_2)) (not (= ix_23 jx_23))))))) (= (ControlFlow 0 7) 1)) anon5_correct)))
(let ((anon83_Then_correct  (=> (and (>= ix_23 0) (and (< ix_23 (|Seq#Length_26200| a_2)) (and (>= jx_23 0) (and (< jx_23 (|Seq#Length_26200| a_2)) (not (= ix_23 jx_23)))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= ix_23 0)) (=> (>= ix_23 0) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< ix_23 (|Seq#Length_26200| a_2))) (=> (< ix_23 (|Seq#Length_26200| a_2)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= jx_23 0)) (=> (>= jx_23 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< jx_23 (|Seq#Length_26200| a_2))) (=> (< jx_23 (|Seq#Length_26200| a_2)) (=> (= (ControlFlow 0 2) 1) anon5_correct))))))))))))
(let ((anon2_correct  (=> (state Heap@@41 ZeroMask) (and (and (=> (= (ControlFlow 0 121) 120) anon82_Else_correct) (=> (= (ControlFlow 0 121) 2) anon83_Then_correct)) (=> (= (ControlFlow 0 121) 7) anon83_Else_correct)))))
(let ((anon81_Else_correct  (=> (and (<= len 0) (= (ControlFlow 0 123) 121)) anon2_correct)))
(let ((anon81_Then_correct  (=> (< 0 len) (=> (and (= (|Seq#Length_26200| a_2) len) (= (ControlFlow 0 122) 121)) anon2_correct))))
(let ((anon0_correct  (=> (and (and (and (state Heap@@41 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (and AssumePermUpperBound (select (|PolymorphicMapType_36649_25909_53#PolymorphicMapType_36649| Heap@@41) diz $allocated))) (and (and (not (= diz null)) (state Heap@@41 ZeroMask)) (and (>= current_thread_id 0) (state Heap@@41 ZeroMask)))) (and (=> (= (ControlFlow 0 124) 122) anon81_Then_correct) (=> (= (ControlFlow 0 124) 123) anon81_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 125) 124) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
