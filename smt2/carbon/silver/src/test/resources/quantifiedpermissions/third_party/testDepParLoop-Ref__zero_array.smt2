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
(declare-sort T@Field_39050_53 0)
(declare-sort T@Field_39063_39064 0)
(declare-sort T@Field_45138_3829 0)
(declare-sort T@Field_27513_111173 0)
(declare-sort T@Field_27513_111040 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_39011 0)) (((PolymorphicMapType_39011 (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| (Array T@Ref T@Field_45138_3829 Real)) (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| (Array T@Ref T@Field_39050_53 Real)) (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| (Array T@Ref T@Field_39063_39064 Real)) (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| (Array T@Ref T@Field_27513_111040 Real)) (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| (Array T@Ref T@Field_27513_111173 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_39539 0)) (((PolymorphicMapType_39539 (|PolymorphicMapType_39539_39050_53#PolymorphicMapType_39539| (Array T@Ref T@Field_39050_53 Bool)) (|PolymorphicMapType_39539_39050_39064#PolymorphicMapType_39539| (Array T@Ref T@Field_39063_39064 Bool)) (|PolymorphicMapType_39539_39050_3829#PolymorphicMapType_39539| (Array T@Ref T@Field_45138_3829 Bool)) (|PolymorphicMapType_39539_39050_111040#PolymorphicMapType_39539| (Array T@Ref T@Field_27513_111040 Bool)) (|PolymorphicMapType_39539_39050_112351#PolymorphicMapType_39539| (Array T@Ref T@Field_27513_111173 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_38990 0)) (((PolymorphicMapType_38990 (|PolymorphicMapType_38990_27255_53#PolymorphicMapType_38990| (Array T@Ref T@Field_39050_53 Bool)) (|PolymorphicMapType_38990_27258_27259#PolymorphicMapType_38990| (Array T@Ref T@Field_39063_39064 T@Ref)) (|PolymorphicMapType_38990_27513_3829#PolymorphicMapType_38990| (Array T@Ref T@Field_45138_3829 Int)) (|PolymorphicMapType_38990_27513_111217#PolymorphicMapType_38990| (Array T@Ref T@Field_27513_111173 T@PolymorphicMapType_39539)) (|PolymorphicMapType_38990_39050_111040#PolymorphicMapType_38990| (Array T@Ref T@Field_27513_111040 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_39050_53)
(declare-fun Ref__Integer_value () T@Field_45138_3829)
(declare-sort T@Seq_46180 0)
(declare-fun |Seq#Length_27552| (T@Seq_46180) Int)
(declare-fun |Seq#Drop_27552| (T@Seq_46180 Int) T@Seq_46180)
(declare-sort T@Seq_3707 0)
(declare-fun |Seq#Length_3707| (T@Seq_3707) Int)
(declare-fun |Seq#Drop_3707| (T@Seq_3707 Int) T@Seq_3707)
(declare-fun state (T@PolymorphicMapType_38990 T@PolymorphicMapType_39011) Bool)
(declare-fun |count_square'| (T@PolymorphicMapType_38990 Int Int Int Int Int Int T@Seq_46180 Int) Int)
(declare-fun |count_square#frame| (T@FrameType Int Int Int Int Int Int T@Seq_46180 Int) Int)
(declare-fun FrameFragment_4688 (Int) T@FrameType)
(declare-fun |count_square#condqp3| (T@PolymorphicMapType_38990 Int Int Int Int Int Int T@Seq_46180 Int) Int)
(declare-fun succHeap (T@PolymorphicMapType_38990 T@PolymorphicMapType_38990) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_38990 T@PolymorphicMapType_38990) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_39011) Bool)
(declare-fun |sum_list'| (T@PolymorphicMapType_38990 Int Int T@Seq_3707) Int)
(declare-fun dummyFunction_4136 (Int) Bool)
(declare-fun |sum_list#triggerStateless| (Int Int T@Seq_3707) Int)
(declare-fun ZeroPMask () T@PolymorphicMapType_39539)
(declare-fun |Seq#Index_27552| (T@Seq_46180 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3707| (T@Seq_3707 Int) Int)
(declare-fun |Seq#Empty_27552| () T@Seq_46180)
(declare-fun |Seq#Empty_3707| () T@Seq_3707)
(declare-fun |Seq#Update_27552| (T@Seq_46180 Int T@Ref) T@Seq_46180)
(declare-fun |Seq#Update_3707| (T@Seq_3707 Int Int) T@Seq_3707)
(declare-fun |Seq#Take_27552| (T@Seq_46180 Int) T@Seq_46180)
(declare-fun |Seq#Take_3707| (T@Seq_3707 Int) T@Seq_3707)
(declare-fun sum_array (T@PolymorphicMapType_38990 Int Int Int T@Seq_46180) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |sum_array'| (T@PolymorphicMapType_38990 Int Int Int T@Seq_46180) Int)
(declare-fun |Seq#Contains_3707| (T@Seq_3707 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3707)
(declare-fun |Seq#Contains_46180| (T@Seq_46180 T@Ref) Bool)
(declare-fun |Seq#Skolem_46180| (T@Seq_46180 T@Ref) Int)
(declare-fun |Seq#Skolem_3707| (T@Seq_3707 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_38990 T@PolymorphicMapType_38990 T@PolymorphicMapType_39011) Bool)
(declare-fun IsPredicateField_27513_111131 (T@Field_27513_111040) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_27513 (T@Field_27513_111040) T@Field_27513_111173)
(declare-fun HasDirectPerm_27513_111104 (T@PolymorphicMapType_39011 T@Ref T@Field_27513_111040) Bool)
(declare-fun IsWandField_27513_112878 (T@Field_27513_111040) Bool)
(declare-fun WandMaskField_27513 (T@Field_27513_111040) T@Field_27513_111173)
(declare-fun |Seq#Singleton_27552| (T@Ref) T@Seq_46180)
(declare-fun |Seq#Singleton_3707| (Int) T@Seq_3707)
(declare-fun count_square (T@PolymorphicMapType_38990 Int Int Int Int Int Int T@Seq_46180 Int) Int)
(declare-fun |count_square#triggerStateless| (Int Int Int Int Int Int T@Seq_46180 Int) Int)
(declare-fun |Seq#Append_46180| (T@Seq_46180 T@Seq_46180) T@Seq_46180)
(declare-fun |Seq#Append_3707| (T@Seq_3707 T@Seq_3707) T@Seq_3707)
(declare-fun |sum_square#condqp2| (T@PolymorphicMapType_38990 Int Int Int Int Int Int T@Seq_46180) Int)
(declare-fun |sk_sum_square#condqp2| (Int Int) Int)
(declare-fun sum_square (T@PolymorphicMapType_38990 Int Int Int Int Int Int T@Seq_46180) Int)
(declare-fun |sum_square'| (T@PolymorphicMapType_38990 Int Int Int Int Int Int T@Seq_46180) Int)
(declare-fun |sk_count_square#condqp3| (Int Int) Int)
(declare-fun dummyHeap () T@PolymorphicMapType_38990)
(declare-fun ZeroMask () T@PolymorphicMapType_39011)
(declare-fun InsidePredicate_39050_39050 (T@Field_27513_111040 T@FrameType T@Field_27513_111040 T@FrameType) Bool)
(declare-fun IsPredicateField_27513_3829 (T@Field_45138_3829) Bool)
(declare-fun IsWandField_27513_3829 (T@Field_45138_3829) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_27513_116424 (T@Field_27513_111173) Bool)
(declare-fun IsWandField_27513_116440 (T@Field_27513_111173) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_27513_39064 (T@Field_39063_39064) Bool)
(declare-fun IsWandField_27513_39064 (T@Field_39063_39064) Bool)
(declare-fun IsPredicateField_27513_53 (T@Field_39050_53) Bool)
(declare-fun IsWandField_27513_53 (T@Field_39050_53) Bool)
(declare-fun |sum_list#frame| (T@FrameType Int Int T@Seq_3707) Int)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun HasDirectPerm_27513_116878 (T@PolymorphicMapType_39011 T@Ref T@Field_27513_111173) Bool)
(declare-fun HasDirectPerm_27513_39064 (T@PolymorphicMapType_39011 T@Ref T@Field_39063_39064) Bool)
(declare-fun HasDirectPerm_27513_53 (T@PolymorphicMapType_39011 T@Ref T@Field_39050_53) Bool)
(declare-fun HasDirectPerm_27513_3829 (T@PolymorphicMapType_39011 T@Ref T@Field_45138_3829) Bool)
(declare-fun |sum_array#triggerStateless| (Int Int Int T@Seq_46180) Int)
(declare-fun |count_list'| (T@PolymorphicMapType_38990 Int Int T@Seq_3707 Int) Int)
(declare-fun |count_list#triggerStateless| (Int Int T@Seq_3707 Int) Int)
(declare-fun |count_array'| (T@PolymorphicMapType_38990 Int Int T@Seq_46180 Int) Int)
(declare-fun |count_array#triggerStateless| (Int Int T@Seq_46180 Int) Int)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun count_list (T@PolymorphicMapType_38990 Int Int T@Seq_3707 Int) Int)
(declare-fun count_array (T@PolymorphicMapType_38990 Int Int T@Seq_46180 Int) Int)
(declare-fun sumMask (T@PolymorphicMapType_39011 T@PolymorphicMapType_39011 T@PolymorphicMapType_39011) Bool)
(declare-fun |sum_square#triggerStateless| (Int Int Int Int Int Int T@Seq_46180) Int)
(declare-fun |count_list#frame| (T@FrameType Int Int T@Seq_3707 Int) Int)
(declare-fun |Seq#Equal_46180| (T@Seq_46180 T@Seq_46180) Bool)
(declare-fun |Seq#Equal_3707| (T@Seq_3707 T@Seq_3707) Bool)
(declare-fun sum_list (T@PolymorphicMapType_38990 Int Int T@Seq_3707) Int)
(declare-fun |Seq#ContainsTrigger_27552| (T@Seq_46180 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3707| (T@Seq_3707 Int) Bool)
(declare-fun |count_array#condqp4| (T@PolymorphicMapType_38990 Int Int T@Seq_46180 Int) Int)
(declare-fun |sk_count_array#condqp4| (Int Int) Int)
(declare-fun |sum_array#condqp1| (T@PolymorphicMapType_38990 Int Int Int T@Seq_46180) Int)
(declare-fun |sk_sum_array#condqp1| (Int Int) Int)
(declare-fun |sum_square#frame| (T@FrameType Int Int Int Int Int Int T@Seq_46180) Int)
(declare-fun |Seq#SkolemDiff_46180| (T@Seq_46180 T@Seq_46180) Int)
(declare-fun |Seq#SkolemDiff_3707| (T@Seq_3707 T@Seq_3707) Int)
(declare-fun |sum_array#frame| (T@FrameType Int Int Int T@Seq_46180) Int)
(declare-fun |count_array#frame| (T@FrameType Int Int T@Seq_46180 Int) Int)
(assert (forall ((s T@Seq_46180) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_27552| s)) (= (|Seq#Length_27552| (|Seq#Drop_27552| s n)) (- (|Seq#Length_27552| s) n))) (=> (< (|Seq#Length_27552| s) n) (= (|Seq#Length_27552| (|Seq#Drop_27552| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_27552| (|Seq#Drop_27552| s n)) (|Seq#Length_27552| s))))
 :qid |stdinbpl.398:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_27552| (|Seq#Drop_27552| s n)))
 :pattern ( (|Seq#Length_27552| s) (|Seq#Drop_27552| s n))
)))
(assert (forall ((s@@0 T@Seq_3707) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3707| s@@0)) (= (|Seq#Length_3707| (|Seq#Drop_3707| s@@0 n@@0)) (- (|Seq#Length_3707| s@@0) n@@0))) (=> (< (|Seq#Length_3707| s@@0) n@@0) (= (|Seq#Length_3707| (|Seq#Drop_3707| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3707| (|Seq#Drop_3707| s@@0 n@@0)) (|Seq#Length_3707| s@@0))))
 :qid |stdinbpl.398:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3707| (|Seq#Drop_3707| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3707| s@@0) (|Seq#Drop_3707| s@@0 n@@0))
)))
(assert (forall ((Heap T@PolymorphicMapType_38990) (Mask T@PolymorphicMapType_39011) (i Int) (lo Int) (hi Int) (step Int) (vmin Int) (vmax_1 Int) (ar_1 T@Seq_46180) (v_2 Int) ) (!  (=> (state Heap Mask) (= (|count_square'| Heap i lo hi step vmin vmax_1 ar_1 v_2) (|count_square#frame| (FrameFragment_4688 (|count_square#condqp3| Heap i lo hi step vmin vmax_1 ar_1 v_2)) i lo hi step vmin vmax_1 ar_1 v_2)))
 :qid |stdinbpl.1286:15|
 :skolemid |108|
 :pattern ( (state Heap Mask) (|count_square'| Heap i lo hi step vmin vmax_1 ar_1 v_2))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_38990) (Heap1 T@PolymorphicMapType_38990) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_38990) (Mask@@0 T@PolymorphicMapType_39011) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_38990) (Heap1@@0 T@PolymorphicMapType_38990) (Heap2 T@PolymorphicMapType_38990) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_38990) (i@@0 Int) (hi@@0 Int) (ar_1@@0 T@Seq_3707) ) (! (dummyFunction_4136 (|sum_list#triggerStateless| i@@0 hi@@0 ar_1@@0))
 :qid |stdinbpl.684:15|
 :skolemid |59|
 :pattern ( (|sum_list'| Heap@@1 i@@0 hi@@0 ar_1@@0))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_27513_111173) ) (!  (not (select (|PolymorphicMapType_39539_39050_112351#PolymorphicMapType_39539| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_39539_39050_112351#PolymorphicMapType_39539| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_27513_111040) ) (!  (not (select (|PolymorphicMapType_39539_39050_111040#PolymorphicMapType_39539| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_39539_39050_111040#PolymorphicMapType_39539| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_45138_3829) ) (!  (not (select (|PolymorphicMapType_39539_39050_3829#PolymorphicMapType_39539| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_39539_39050_3829#PolymorphicMapType_39539| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_39063_39064) ) (!  (not (select (|PolymorphicMapType_39539_39050_39064#PolymorphicMapType_39539| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_39539_39050_39064#PolymorphicMapType_39539| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_39050_53) ) (!  (not (select (|PolymorphicMapType_39539_39050_53#PolymorphicMapType_39539| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_39539_39050_53#PolymorphicMapType_39539| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((s@@1 T@Seq_46180) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_27552| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_27552| (|Seq#Drop_27552| s@@1 n@@1) j) (|Seq#Index_27552| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.419:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_27552| (|Seq#Drop_27552| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3707) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3707| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3707| (|Seq#Drop_3707| s@@2 n@@2) j@@0) (|Seq#Index_3707| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.419:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3707| (|Seq#Drop_3707| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_27552| |Seq#Empty_27552|) 0))
(assert (= (|Seq#Length_3707| |Seq#Empty_3707|) 0))
(assert (forall ((s@@3 T@Seq_46180) (i@@1 Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_27552| s@@3))) (and (=> (= i@@1 n@@3) (= (|Seq#Index_27552| (|Seq#Update_27552| s@@3 i@@1 v) n@@3) v)) (=> (not (= i@@1 n@@3)) (= (|Seq#Index_27552| (|Seq#Update_27552| s@@3 i@@1 v) n@@3) (|Seq#Index_27552| s@@3 n@@3)))))
 :qid |stdinbpl.374:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_27552| (|Seq#Update_27552| s@@3 i@@1 v) n@@3))
 :pattern ( (|Seq#Index_27552| s@@3 n@@3) (|Seq#Update_27552| s@@3 i@@1 v))
)))
(assert (forall ((s@@4 T@Seq_3707) (i@@2 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3707| s@@4))) (and (=> (= i@@2 n@@4) (= (|Seq#Index_3707| (|Seq#Update_3707| s@@4 i@@2 v@@0) n@@4) v@@0)) (=> (not (= i@@2 n@@4)) (= (|Seq#Index_3707| (|Seq#Update_3707| s@@4 i@@2 v@@0) n@@4) (|Seq#Index_3707| s@@4 n@@4)))))
 :qid |stdinbpl.374:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3707| (|Seq#Update_3707| s@@4 i@@2 v@@0) n@@4))
 :pattern ( (|Seq#Index_3707| s@@4 n@@4) (|Seq#Update_3707| s@@4 i@@2 v@@0))
)))
(assert (forall ((s@@5 T@Seq_46180) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_27552| s@@5)) (= (|Seq#Length_27552| (|Seq#Take_27552| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_27552| s@@5) n@@5) (= (|Seq#Length_27552| (|Seq#Take_27552| s@@5 n@@5)) (|Seq#Length_27552| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_27552| (|Seq#Take_27552| s@@5 n@@5)) 0)))
 :qid |stdinbpl.385:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_27552| (|Seq#Take_27552| s@@5 n@@5)))
 :pattern ( (|Seq#Take_27552| s@@5 n@@5) (|Seq#Length_27552| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3707) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3707| s@@6)) (= (|Seq#Length_3707| (|Seq#Take_3707| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3707| s@@6) n@@6) (= (|Seq#Length_3707| (|Seq#Take_3707| s@@6 n@@6)) (|Seq#Length_3707| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3707| (|Seq#Take_3707| s@@6 n@@6)) 0)))
 :qid |stdinbpl.385:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3707| (|Seq#Take_3707| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3707| s@@6 n@@6) (|Seq#Length_3707| s@@6))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_38990) (Mask@@1 T@PolymorphicMapType_39011) (i@@3 Int) (lo@@0 Int) (hi@@1 Int) (ar_1@@1 T@Seq_46180) ) (!  (=> (and (state Heap@@2 Mask@@1) (< AssumeFunctionsAbove 3)) (=> (and (and (and (<= 0 lo@@0) (and (<= lo@@0 i@@3) (<= i@@3 hi@@1))) (<= hi@@1 (|Seq#Length_27552| ar_1@@1))) (forall ((j@@1 Int) (k Int) ) (!  (=> (and (<= 0 j@@1) (and (< j@@1 (|Seq#Length_27552| ar_1@@1)) (and (<= 0 k) (and (< k (|Seq#Length_27552| ar_1@@1)) (not (= j@@1 k)))))) (not (= (|Seq#Index_27552| ar_1@@1 j@@1) (|Seq#Index_27552| ar_1@@1 k))))
 :qid |stdinbpl.777:126|
 :skolemid |64|
 :pattern ( (|Seq#Index_27552| ar_1@@1 j@@1) (|Seq#Index_27552| ar_1@@1 k))
))) (= (sum_array Heap@@2 i@@3 lo@@0 hi@@1 ar_1@@1) (ite (< i@@3 hi@@1) (+ (select (|PolymorphicMapType_38990_27513_3829#PolymorphicMapType_38990| Heap@@2) (|Seq#Index_27552| ar_1@@1 i@@3) Ref__Integer_value) (|sum_array'| Heap@@2 (+ i@@3 1) lo@@0 hi@@1 ar_1@@1)) 0))))
 :qid |stdinbpl.775:15|
 :skolemid |65|
 :pattern ( (state Heap@@2 Mask@@1) (sum_array Heap@@2 i@@3 lo@@0 hi@@1 ar_1@@1))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3707| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.659:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3707| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_46180) (x T@Ref) ) (!  (=> (|Seq#Contains_46180| s@@7 x) (and (and (<= 0 (|Seq#Skolem_46180| s@@7 x)) (< (|Seq#Skolem_46180| s@@7 x) (|Seq#Length_27552| s@@7))) (= (|Seq#Index_27552| s@@7 (|Seq#Skolem_46180| s@@7 x)) x)))
 :qid |stdinbpl.517:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_46180| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3707) (x@@0 Int) ) (!  (=> (|Seq#Contains_3707| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3707| s@@8 x@@0)) (< (|Seq#Skolem_3707| s@@8 x@@0) (|Seq#Length_3707| s@@8))) (= (|Seq#Index_3707| s@@8 (|Seq#Skolem_3707| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.517:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3707| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_46180) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_27552| s@@9 n@@7) s@@9))
 :qid |stdinbpl.501:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_27552| s@@9 n@@7))
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
(assert (forall ((Heap@@3 T@PolymorphicMapType_38990) (ExhaleHeap T@PolymorphicMapType_38990) (Mask@@2 T@PolymorphicMapType_39011) (pm_f_48 T@Field_27513_111040) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@2) (=> (and (HasDirectPerm_27513_111104 Mask@@2 null pm_f_48) (IsPredicateField_27513_111131 pm_f_48)) (= (select (|PolymorphicMapType_38990_27513_111217#PolymorphicMapType_38990| Heap@@3) null (PredicateMaskField_27513 pm_f_48)) (select (|PolymorphicMapType_38990_27513_111217#PolymorphicMapType_38990| ExhaleHeap) null (PredicateMaskField_27513 pm_f_48)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@2) (IsPredicateField_27513_111131 pm_f_48) (select (|PolymorphicMapType_38990_27513_111217#PolymorphicMapType_38990| ExhaleHeap) null (PredicateMaskField_27513 pm_f_48)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_38990) (ExhaleHeap@@0 T@PolymorphicMapType_38990) (Mask@@3 T@PolymorphicMapType_39011) (pm_f_48@@0 T@Field_27513_111040) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@3) (=> (and (HasDirectPerm_27513_111104 Mask@@3 null pm_f_48@@0) (IsWandField_27513_112878 pm_f_48@@0)) (= (select (|PolymorphicMapType_38990_27513_111217#PolymorphicMapType_38990| Heap@@4) null (WandMaskField_27513 pm_f_48@@0)) (select (|PolymorphicMapType_38990_27513_111217#PolymorphicMapType_38990| ExhaleHeap@@0) null (WandMaskField_27513 pm_f_48@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@3) (IsWandField_27513_112878 pm_f_48@@0) (select (|PolymorphicMapType_38990_27513_111217#PolymorphicMapType_38990| ExhaleHeap@@0) null (WandMaskField_27513 pm_f_48@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_46180| (|Seq#Singleton_27552| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.642:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_46180| (|Seq#Singleton_27552| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3707| (|Seq#Singleton_3707| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.642:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3707| (|Seq#Singleton_3707| x@@2) y@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_38990) (i@@6 Int) (lo@@1 Int) (hi@@2 Int) (step@@0 Int) (vmin@@0 Int) (vmax_1@@0 Int) (ar_1@@2 T@Seq_46180) (v_2@@0 Int) ) (!  (and (= (count_square Heap@@5 i@@6 lo@@1 hi@@2 step@@0 vmin@@0 vmax_1@@0 ar_1@@2 v_2@@0) (|count_square'| Heap@@5 i@@6 lo@@1 hi@@2 step@@0 vmin@@0 vmax_1@@0 ar_1@@2 v_2@@0)) (dummyFunction_4136 (|count_square#triggerStateless| i@@6 lo@@1 hi@@2 step@@0 vmin@@0 vmax_1@@0 ar_1@@2 v_2@@0)))
 :qid |stdinbpl.1266:15|
 :skolemid |104|
 :pattern ( (count_square Heap@@5 i@@6 lo@@1 hi@@2 step@@0 vmin@@0 vmax_1@@0 ar_1@@2 v_2@@0))
)))
(assert (forall ((s@@11 T@Seq_46180) (n@@9 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@9)) (< j@@4 (|Seq#Length_27552| s@@11))) (= (|Seq#Index_27552| (|Seq#Take_27552| s@@11 n@@9) j@@4) (|Seq#Index_27552| s@@11 j@@4)))
 :qid |stdinbpl.393:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_27552| (|Seq#Take_27552| s@@11 n@@9) j@@4))
 :pattern ( (|Seq#Index_27552| s@@11 j@@4) (|Seq#Take_27552| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3707) (n@@10 Int) (j@@5 Int) ) (!  (=> (and (and (<= 0 j@@5) (< j@@5 n@@10)) (< j@@5 (|Seq#Length_3707| s@@12))) (= (|Seq#Index_3707| (|Seq#Take_3707| s@@12 n@@10) j@@5) (|Seq#Index_3707| s@@12 j@@5)))
 :qid |stdinbpl.393:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3707| (|Seq#Take_3707| s@@12 n@@10) j@@5))
 :pattern ( (|Seq#Index_3707| s@@12 j@@5) (|Seq#Take_3707| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_46180) (t T@Seq_46180) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_27552| s@@13))) (< n@@11 (|Seq#Length_27552| (|Seq#Append_46180| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_27552| s@@13)) (|Seq#Length_27552| s@@13)) n@@11) (= (|Seq#Take_27552| (|Seq#Append_46180| s@@13 t) n@@11) (|Seq#Append_46180| s@@13 (|Seq#Take_27552| t (|Seq#Sub| n@@11 (|Seq#Length_27552| s@@13)))))))
 :qid |stdinbpl.478:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_27552| (|Seq#Append_46180| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3707) (t@@0 T@Seq_3707) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3707| s@@14))) (< n@@12 (|Seq#Length_3707| (|Seq#Append_3707| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3707| s@@14)) (|Seq#Length_3707| s@@14)) n@@12) (= (|Seq#Take_3707| (|Seq#Append_3707| s@@14 t@@0) n@@12) (|Seq#Append_3707| s@@14 (|Seq#Take_3707| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3707| s@@14)))))))
 :qid |stdinbpl.478:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3707| (|Seq#Append_3707| s@@14 t@@0) n@@12))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_38990) (i@@7 Int) (lo@@2 Int) (hi@@3 Int) (step@@1 Int) (vmin@@1 Int) (vmax_1@@1 Int) (ar_1@@3 T@Seq_46180) (v_2@@1 Int) ) (! (dummyFunction_4136 (|count_square#triggerStateless| i@@7 lo@@2 hi@@3 step@@1 vmin@@1 vmax_1@@1 ar_1@@3 v_2@@1))
 :qid |stdinbpl.1270:15|
 :skolemid |105|
 :pattern ( (|count_square'| Heap@@6 i@@7 lo@@2 hi@@3 step@@1 vmin@@1 vmax_1@@1 ar_1@@3 v_2@@1))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_38990) (Heap1Heap T@PolymorphicMapType_38990) (i@@8 Int) (lo@@3 Int) (hi@@4 Int) (step@@2 Int) (vmin@@2 Int) (vmax_1@@2 Int) (ar_1@@4 T@Seq_46180) ) (!  (=> (and (=  (and (<= vmin@@2 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) vmax_1@@2) (and (<= lo@@3 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2) hi@@4))))  (and (<= vmin@@2 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) vmax_1@@2) (and (<= lo@@3 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2) hi@@4))))) (=> (and (<= vmin@@2 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) vmax_1@@2) (and (<= lo@@3 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2) hi@@4)))) (= (select (|PolymorphicMapType_38990_27513_3829#PolymorphicMapType_38990| Heap2Heap) (|Seq#Index_27552| ar_1@@4 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) Ref__Integer_value) (select (|PolymorphicMapType_38990_27513_3829#PolymorphicMapType_38990| Heap1Heap) (|Seq#Index_27552| ar_1@@4 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) Ref__Integer_value)))) (= (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)))
 :qid |stdinbpl.1030:15|
 :skolemid |88|
 :pattern ( (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_38990) (Mask@@4 T@PolymorphicMapType_39011) (i@@9 Int) (lo@@4 Int) (hi@@5 Int) (step@@3 Int) (vmin@@3 Int) (vmax_1@@3 Int) (ar_1@@5 T@Seq_46180) ) (!  (=> (and (state Heap@@7 Mask@@4) (< AssumeFunctionsAbove 1)) (=> (and (and (and (and (<= 0 lo@@4) (and (<= lo@@4 hi@@5) (and (<= hi@@5 step@@3) (> step@@3 0)))) (and (<= 0 vmin@@3) (and (<= vmin@@3 i@@9) (<= i@@9 vmax_1@@3)))) (<= vmax_1@@3 (|Seq#Length_27552| ar_1@@5))) (forall ((j@@6 Int) (k@@0 Int) ) (!  (=> (and (<= 0 j@@6) (and (< j@@6 (|Seq#Length_27552| ar_1@@5)) (and (<= 0 k@@0) (and (< k@@0 (|Seq#Length_27552| ar_1@@5)) (not (= j@@6 k@@0)))))) (not (= (|Seq#Index_27552| ar_1@@5 j@@6) (|Seq#Index_27552| ar_1@@5 k@@0))))
 :qid |stdinbpl.1012:195|
 :skolemid |85|
 :pattern ( (|Seq#Index_27552| ar_1@@5 j@@6) (|Seq#Index_27552| ar_1@@5 k@@0))
))) (= (sum_square Heap@@7 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5) (ite (< i@@9 vmax_1@@3) (+ (ite  (and (<= lo@@4 (mod i@@9 step@@3)) (< (mod i@@9 step@@3) hi@@5)) (select (|PolymorphicMapType_38990_27513_3829#PolymorphicMapType_38990| Heap@@7) (|Seq#Index_27552| ar_1@@5 i@@9) Ref__Integer_value) 0) (|sum_square'| Heap@@7 (+ i@@9 1) lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5)) 0))))
 :qid |stdinbpl.1010:15|
 :skolemid |86|
 :pattern ( (state Heap@@7 Mask@@4) (sum_square Heap@@7 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_38990) (Heap1Heap@@0 T@PolymorphicMapType_38990) (i@@10 Int) (lo@@5 Int) (hi@@6 Int) (step@@4 Int) (vmin@@4 Int) (vmax_1@@4 Int) (ar_1@@6 T@Seq_46180) (v_2@@2 Int) ) (!  (=> (and (=  (and (<= vmin@@4 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2)) vmax_1@@4) (and (<= lo@@5 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2)) step@@4)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2)) step@@4) hi@@6))))  (and (<= vmin@@4 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2)) vmax_1@@4) (and (<= lo@@5 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2)) step@@4)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2)) step@@4) hi@@6))))) (=> (and (<= vmin@@4 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2)) vmax_1@@4) (and (<= lo@@5 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2)) step@@4)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2)) step@@4) hi@@6)))) (= (select (|PolymorphicMapType_38990_27513_3829#PolymorphicMapType_38990| Heap2Heap@@0) (|Seq#Index_27552| ar_1@@6 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2))) Ref__Integer_value) (select (|PolymorphicMapType_38990_27513_3829#PolymorphicMapType_38990| Heap1Heap@@0) (|Seq#Index_27552| ar_1@@6 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2))) Ref__Integer_value)))) (= (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2)))
 :qid |stdinbpl.1296:15|
 :skolemid |109|
 :pattern ( (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@8 T@PolymorphicMapType_38990) (ExhaleHeap@@1 T@PolymorphicMapType_38990) (Mask@@5 T@PolymorphicMapType_39011) (o_24 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@5) (=> (select (|PolymorphicMapType_38990_27255_53#PolymorphicMapType_38990| Heap@@8) o_24 $allocated) (select (|PolymorphicMapType_38990_27255_53#PolymorphicMapType_38990| ExhaleHeap@@1) o_24 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@5) (select (|PolymorphicMapType_38990_27255_53#PolymorphicMapType_38990| ExhaleHeap@@1) o_24 $allocated))
)))
(assert (forall ((p T@Field_27513_111040) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_39050_39050 p v_1 p w))
 :qid |stdinbpl.296:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_39050_39050 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_46180) (s1 T@Seq_46180) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_27552|)) (not (= s1 |Seq#Empty_27552|))) (<= (|Seq#Length_27552| s0) n@@13)) (< n@@13 (|Seq#Length_27552| (|Seq#Append_46180| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_27552| s0)) (|Seq#Length_27552| s0)) n@@13) (= (|Seq#Index_27552| (|Seq#Append_46180| s0 s1) n@@13) (|Seq#Index_27552| s1 (|Seq#Sub| n@@13 (|Seq#Length_27552| s0))))))
 :qid |stdinbpl.365:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_27552| (|Seq#Append_46180| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3707) (s1@@0 T@Seq_3707) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3707|)) (not (= s1@@0 |Seq#Empty_3707|))) (<= (|Seq#Length_3707| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3707| (|Seq#Append_3707| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3707| s0@@0)) (|Seq#Length_3707| s0@@0)) n@@14) (= (|Seq#Index_3707| (|Seq#Append_3707| s0@@0 s1@@0) n@@14) (|Seq#Index_3707| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3707| s0@@0))))))
 :qid |stdinbpl.365:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3707| (|Seq#Append_3707| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_27513_3829 Ref__Integer_value)))
(assert  (not (IsWandField_27513_3829 Ref__Integer_value)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_38990) (ExhaleHeap@@2 T@PolymorphicMapType_38990) (Mask@@6 T@PolymorphicMapType_39011) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@6) (succHeap Heap@@9 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_39011) (o_2@@4 T@Ref) (f_4@@4 T@Field_27513_111173) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_27513_116424 f_4@@4))) (not (IsWandField_27513_116440 f_4@@4))) (<= (select (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_39011) (o_2@@5 T@Ref) (f_4@@5 T@Field_27513_111040) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_27513_111131 f_4@@5))) (not (IsWandField_27513_112878 f_4@@5))) (<= (select (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_39011) (o_2@@6 T@Ref) (f_4@@6 T@Field_39063_39064) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_27513_39064 f_4@@6))) (not (IsWandField_27513_39064 f_4@@6))) (<= (select (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_39011) (o_2@@7 T@Ref) (f_4@@7 T@Field_39050_53) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| Mask@@10) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_27513_53 f_4@@7))) (not (IsWandField_27513_53 f_4@@7))) (<= (select (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| Mask@@10) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| Mask@@10) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_39011) (o_2@@8 T@Ref) (f_4@@8 T@Field_45138_3829) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| Mask@@11) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_27513_3829 f_4@@8))) (not (IsWandField_27513_3829 f_4@@8))) (<= (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| Mask@@11) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| Mask@@11) o_2@@8 f_4@@8))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_38990) (Mask@@12 T@PolymorphicMapType_39011) (i@@11 Int) (hi@@7 Int) (ar_1@@7 T@Seq_3707) ) (!  (=> (state Heap@@10 Mask@@12) (= (|sum_list'| Heap@@10 i@@11 hi@@7 ar_1@@7) (|sum_list#frame| EmptyFrame i@@11 hi@@7 ar_1@@7)))
 :qid |stdinbpl.697:15|
 :skolemid |61|
 :pattern ( (state Heap@@10 Mask@@12) (|sum_list'| Heap@@10 i@@11 hi@@7 ar_1@@7))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_39011) (o_2@@9 T@Ref) (f_4@@9 T@Field_27513_111173) ) (! (= (HasDirectPerm_27513_116878 Mask@@13 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| Mask@@13) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_27513_116878 Mask@@13 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_39011) (o_2@@10 T@Ref) (f_4@@10 T@Field_27513_111040) ) (! (= (HasDirectPerm_27513_111104 Mask@@14 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| Mask@@14) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_27513_111104 Mask@@14 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_39011) (o_2@@11 T@Ref) (f_4@@11 T@Field_39063_39064) ) (! (= (HasDirectPerm_27513_39064 Mask@@15 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| Mask@@15) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_27513_39064 Mask@@15 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_39011) (o_2@@12 T@Ref) (f_4@@12 T@Field_39050_53) ) (! (= (HasDirectPerm_27513_53 Mask@@16 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| Mask@@16) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_27513_53 Mask@@16 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_39011) (o_2@@13 T@Ref) (f_4@@13 T@Field_45138_3829) ) (! (= (HasDirectPerm_27513_3829 Mask@@17 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| Mask@@17) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_27513_3829 Mask@@17 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_38990) (i@@12 Int) (lo@@6 Int) (hi@@8 Int) (ar_1@@8 T@Seq_46180) ) (! (dummyFunction_4136 (|sum_array#triggerStateless| i@@12 lo@@6 hi@@8 ar_1@@8))
 :qid |stdinbpl.769:15|
 :skolemid |63|
 :pattern ( (|sum_array'| Heap@@11 i@@12 lo@@6 hi@@8 ar_1@@8))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_38990) (i@@13 Int) (hi@@9 Int) (ar_1@@9 T@Seq_3707) (v_2@@3 Int) ) (! (dummyFunction_4136 (|count_list#triggerStateless| i@@13 hi@@9 ar_1@@9 v_2@@3))
 :qid |stdinbpl.1536:15|
 :skolemid |126|
 :pattern ( (|count_list'| Heap@@12 i@@13 hi@@9 ar_1@@9 v_2@@3))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_38990) (i@@14 Int) (hi@@10 Int) (ar_1@@10 T@Seq_46180) (v_2@@4 Int) ) (! (dummyFunction_4136 (|count_array#triggerStateless| i@@14 hi@@10 ar_1@@10 v_2@@4))
 :qid |stdinbpl.1621:15|
 :skolemid |130|
 :pattern ( (|count_array'| Heap@@13 i@@14 hi@@10 ar_1@@10 v_2@@4))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_38990) (ExhaleHeap@@3 T@PolymorphicMapType_38990) (Mask@@18 T@PolymorphicMapType_39011) (pm_f_48@@1 T@Field_27513_111040) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@3 Mask@@18) (=> (and (HasDirectPerm_27513_111104 Mask@@18 null pm_f_48@@1) (IsPredicateField_27513_111131 pm_f_48@@1)) (and (and (and (and (forall ((o2_49 T@Ref) (f_34 T@Field_39050_53) ) (!  (=> (select (|PolymorphicMapType_39539_39050_53#PolymorphicMapType_39539| (select (|PolymorphicMapType_38990_27513_111217#PolymorphicMapType_38990| Heap@@14) null (PredicateMaskField_27513 pm_f_48@@1))) o2_49 f_34) (= (select (|PolymorphicMapType_38990_27255_53#PolymorphicMapType_38990| Heap@@14) o2_49 f_34) (select (|PolymorphicMapType_38990_27255_53#PolymorphicMapType_38990| ExhaleHeap@@3) o2_49 f_34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38990_27255_53#PolymorphicMapType_38990| ExhaleHeap@@3) o2_49 f_34))
)) (forall ((o2_49@@0 T@Ref) (f_34@@0 T@Field_39063_39064) ) (!  (=> (select (|PolymorphicMapType_39539_39050_39064#PolymorphicMapType_39539| (select (|PolymorphicMapType_38990_27513_111217#PolymorphicMapType_38990| Heap@@14) null (PredicateMaskField_27513 pm_f_48@@1))) o2_49@@0 f_34@@0) (= (select (|PolymorphicMapType_38990_27258_27259#PolymorphicMapType_38990| Heap@@14) o2_49@@0 f_34@@0) (select (|PolymorphicMapType_38990_27258_27259#PolymorphicMapType_38990| ExhaleHeap@@3) o2_49@@0 f_34@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38990_27258_27259#PolymorphicMapType_38990| ExhaleHeap@@3) o2_49@@0 f_34@@0))
))) (forall ((o2_49@@1 T@Ref) (f_34@@1 T@Field_45138_3829) ) (!  (=> (select (|PolymorphicMapType_39539_39050_3829#PolymorphicMapType_39539| (select (|PolymorphicMapType_38990_27513_111217#PolymorphicMapType_38990| Heap@@14) null (PredicateMaskField_27513 pm_f_48@@1))) o2_49@@1 f_34@@1) (= (select (|PolymorphicMapType_38990_27513_3829#PolymorphicMapType_38990| Heap@@14) o2_49@@1 f_34@@1) (select (|PolymorphicMapType_38990_27513_3829#PolymorphicMapType_38990| ExhaleHeap@@3) o2_49@@1 f_34@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38990_27513_3829#PolymorphicMapType_38990| ExhaleHeap@@3) o2_49@@1 f_34@@1))
))) (forall ((o2_49@@2 T@Ref) (f_34@@2 T@Field_27513_111040) ) (!  (=> (select (|PolymorphicMapType_39539_39050_111040#PolymorphicMapType_39539| (select (|PolymorphicMapType_38990_27513_111217#PolymorphicMapType_38990| Heap@@14) null (PredicateMaskField_27513 pm_f_48@@1))) o2_49@@2 f_34@@2) (= (select (|PolymorphicMapType_38990_39050_111040#PolymorphicMapType_38990| Heap@@14) o2_49@@2 f_34@@2) (select (|PolymorphicMapType_38990_39050_111040#PolymorphicMapType_38990| ExhaleHeap@@3) o2_49@@2 f_34@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38990_39050_111040#PolymorphicMapType_38990| ExhaleHeap@@3) o2_49@@2 f_34@@2))
))) (forall ((o2_49@@3 T@Ref) (f_34@@3 T@Field_27513_111173) ) (!  (=> (select (|PolymorphicMapType_39539_39050_112351#PolymorphicMapType_39539| (select (|PolymorphicMapType_38990_27513_111217#PolymorphicMapType_38990| Heap@@14) null (PredicateMaskField_27513 pm_f_48@@1))) o2_49@@3 f_34@@3) (= (select (|PolymorphicMapType_38990_27513_111217#PolymorphicMapType_38990| Heap@@14) o2_49@@3 f_34@@3) (select (|PolymorphicMapType_38990_27513_111217#PolymorphicMapType_38990| ExhaleHeap@@3) o2_49@@3 f_34@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38990_27513_111217#PolymorphicMapType_38990| ExhaleHeap@@3) o2_49@@3 f_34@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@3 Mask@@18) (IsPredicateField_27513_111131 pm_f_48@@1))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_38990) (ExhaleHeap@@4 T@PolymorphicMapType_38990) (Mask@@19 T@PolymorphicMapType_39011) (pm_f_48@@2 T@Field_27513_111040) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@4 Mask@@19) (=> (and (HasDirectPerm_27513_111104 Mask@@19 null pm_f_48@@2) (IsWandField_27513_112878 pm_f_48@@2)) (and (and (and (and (forall ((o2_49@@4 T@Ref) (f_34@@4 T@Field_39050_53) ) (!  (=> (select (|PolymorphicMapType_39539_39050_53#PolymorphicMapType_39539| (select (|PolymorphicMapType_38990_27513_111217#PolymorphicMapType_38990| Heap@@15) null (WandMaskField_27513 pm_f_48@@2))) o2_49@@4 f_34@@4) (= (select (|PolymorphicMapType_38990_27255_53#PolymorphicMapType_38990| Heap@@15) o2_49@@4 f_34@@4) (select (|PolymorphicMapType_38990_27255_53#PolymorphicMapType_38990| ExhaleHeap@@4) o2_49@@4 f_34@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38990_27255_53#PolymorphicMapType_38990| ExhaleHeap@@4) o2_49@@4 f_34@@4))
)) (forall ((o2_49@@5 T@Ref) (f_34@@5 T@Field_39063_39064) ) (!  (=> (select (|PolymorphicMapType_39539_39050_39064#PolymorphicMapType_39539| (select (|PolymorphicMapType_38990_27513_111217#PolymorphicMapType_38990| Heap@@15) null (WandMaskField_27513 pm_f_48@@2))) o2_49@@5 f_34@@5) (= (select (|PolymorphicMapType_38990_27258_27259#PolymorphicMapType_38990| Heap@@15) o2_49@@5 f_34@@5) (select (|PolymorphicMapType_38990_27258_27259#PolymorphicMapType_38990| ExhaleHeap@@4) o2_49@@5 f_34@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38990_27258_27259#PolymorphicMapType_38990| ExhaleHeap@@4) o2_49@@5 f_34@@5))
))) (forall ((o2_49@@6 T@Ref) (f_34@@6 T@Field_45138_3829) ) (!  (=> (select (|PolymorphicMapType_39539_39050_3829#PolymorphicMapType_39539| (select (|PolymorphicMapType_38990_27513_111217#PolymorphicMapType_38990| Heap@@15) null (WandMaskField_27513 pm_f_48@@2))) o2_49@@6 f_34@@6) (= (select (|PolymorphicMapType_38990_27513_3829#PolymorphicMapType_38990| Heap@@15) o2_49@@6 f_34@@6) (select (|PolymorphicMapType_38990_27513_3829#PolymorphicMapType_38990| ExhaleHeap@@4) o2_49@@6 f_34@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38990_27513_3829#PolymorphicMapType_38990| ExhaleHeap@@4) o2_49@@6 f_34@@6))
))) (forall ((o2_49@@7 T@Ref) (f_34@@7 T@Field_27513_111040) ) (!  (=> (select (|PolymorphicMapType_39539_39050_111040#PolymorphicMapType_39539| (select (|PolymorphicMapType_38990_27513_111217#PolymorphicMapType_38990| Heap@@15) null (WandMaskField_27513 pm_f_48@@2))) o2_49@@7 f_34@@7) (= (select (|PolymorphicMapType_38990_39050_111040#PolymorphicMapType_38990| Heap@@15) o2_49@@7 f_34@@7) (select (|PolymorphicMapType_38990_39050_111040#PolymorphicMapType_38990| ExhaleHeap@@4) o2_49@@7 f_34@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38990_39050_111040#PolymorphicMapType_38990| ExhaleHeap@@4) o2_49@@7 f_34@@7))
))) (forall ((o2_49@@8 T@Ref) (f_34@@8 T@Field_27513_111173) ) (!  (=> (select (|PolymorphicMapType_39539_39050_112351#PolymorphicMapType_39539| (select (|PolymorphicMapType_38990_27513_111217#PolymorphicMapType_38990| Heap@@15) null (WandMaskField_27513 pm_f_48@@2))) o2_49@@8 f_34@@8) (= (select (|PolymorphicMapType_38990_27513_111217#PolymorphicMapType_38990| Heap@@15) o2_49@@8 f_34@@8) (select (|PolymorphicMapType_38990_27513_111217#PolymorphicMapType_38990| ExhaleHeap@@4) o2_49@@8 f_34@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38990_27513_111217#PolymorphicMapType_38990| ExhaleHeap@@4) o2_49@@8 f_34@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@4 Mask@@19) (IsWandField_27513_112878 pm_f_48@@2))
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
(assert (forall ((Heap@@16 T@PolymorphicMapType_38990) (ExhaleHeap@@5 T@PolymorphicMapType_38990) (Mask@@20 T@PolymorphicMapType_39011) (o_24@@0 T@Ref) (f_34@@9 T@Field_27513_111173) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@5 Mask@@20) (=> (HasDirectPerm_27513_116878 Mask@@20 o_24@@0 f_34@@9) (= (select (|PolymorphicMapType_38990_27513_111217#PolymorphicMapType_38990| Heap@@16) o_24@@0 f_34@@9) (select (|PolymorphicMapType_38990_27513_111217#PolymorphicMapType_38990| ExhaleHeap@@5) o_24@@0 f_34@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@5 Mask@@20) (select (|PolymorphicMapType_38990_27513_111217#PolymorphicMapType_38990| ExhaleHeap@@5) o_24@@0 f_34@@9))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_38990) (ExhaleHeap@@6 T@PolymorphicMapType_38990) (Mask@@21 T@PolymorphicMapType_39011) (o_24@@1 T@Ref) (f_34@@10 T@Field_27513_111040) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@6 Mask@@21) (=> (HasDirectPerm_27513_111104 Mask@@21 o_24@@1 f_34@@10) (= (select (|PolymorphicMapType_38990_39050_111040#PolymorphicMapType_38990| Heap@@17) o_24@@1 f_34@@10) (select (|PolymorphicMapType_38990_39050_111040#PolymorphicMapType_38990| ExhaleHeap@@6) o_24@@1 f_34@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@6 Mask@@21) (select (|PolymorphicMapType_38990_39050_111040#PolymorphicMapType_38990| ExhaleHeap@@6) o_24@@1 f_34@@10))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_38990) (ExhaleHeap@@7 T@PolymorphicMapType_38990) (Mask@@22 T@PolymorphicMapType_39011) (o_24@@2 T@Ref) (f_34@@11 T@Field_39063_39064) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@7 Mask@@22) (=> (HasDirectPerm_27513_39064 Mask@@22 o_24@@2 f_34@@11) (= (select (|PolymorphicMapType_38990_27258_27259#PolymorphicMapType_38990| Heap@@18) o_24@@2 f_34@@11) (select (|PolymorphicMapType_38990_27258_27259#PolymorphicMapType_38990| ExhaleHeap@@7) o_24@@2 f_34@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@7 Mask@@22) (select (|PolymorphicMapType_38990_27258_27259#PolymorphicMapType_38990| ExhaleHeap@@7) o_24@@2 f_34@@11))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_38990) (ExhaleHeap@@8 T@PolymorphicMapType_38990) (Mask@@23 T@PolymorphicMapType_39011) (o_24@@3 T@Ref) (f_34@@12 T@Field_39050_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@8 Mask@@23) (=> (HasDirectPerm_27513_53 Mask@@23 o_24@@3 f_34@@12) (= (select (|PolymorphicMapType_38990_27255_53#PolymorphicMapType_38990| Heap@@19) o_24@@3 f_34@@12) (select (|PolymorphicMapType_38990_27255_53#PolymorphicMapType_38990| ExhaleHeap@@8) o_24@@3 f_34@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@8 Mask@@23) (select (|PolymorphicMapType_38990_27255_53#PolymorphicMapType_38990| ExhaleHeap@@8) o_24@@3 f_34@@12))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_38990) (ExhaleHeap@@9 T@PolymorphicMapType_38990) (Mask@@24 T@PolymorphicMapType_39011) (o_24@@4 T@Ref) (f_34@@13 T@Field_45138_3829) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@9 Mask@@24) (=> (HasDirectPerm_27513_3829 Mask@@24 o_24@@4 f_34@@13) (= (select (|PolymorphicMapType_38990_27513_3829#PolymorphicMapType_38990| Heap@@20) o_24@@4 f_34@@13) (select (|PolymorphicMapType_38990_27513_3829#PolymorphicMapType_38990| ExhaleHeap@@9) o_24@@4 f_34@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@9 Mask@@24) (select (|PolymorphicMapType_38990_27513_3829#PolymorphicMapType_38990| ExhaleHeap@@9) o_24@@4 f_34@@13))
)))
(assert (forall ((s0@@1 T@Seq_46180) (s1@@1 T@Seq_46180) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_27552|)) (not (= s1@@1 |Seq#Empty_27552|))) (= (|Seq#Length_27552| (|Seq#Append_46180| s0@@1 s1@@1)) (+ (|Seq#Length_27552| s0@@1) (|Seq#Length_27552| s1@@1))))
 :qid |stdinbpl.334:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_27552| (|Seq#Append_46180| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3707) (s1@@2 T@Seq_3707) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3707|)) (not (= s1@@2 |Seq#Empty_3707|))) (= (|Seq#Length_3707| (|Seq#Append_3707| s0@@2 s1@@2)) (+ (|Seq#Length_3707| s0@@2) (|Seq#Length_3707| s1@@2))))
 :qid |stdinbpl.334:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3707| (|Seq#Append_3707| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_27513_111173) ) (! (= (select (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_27513_111040) ) (! (= (select (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_39063_39064) ) (! (= (select (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_39050_53) ) (! (= (select (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_45138_3829) ) (! (= (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_38990) (Mask@@25 T@PolymorphicMapType_39011) (i@@15 Int) (hi@@11 Int) (ar_1@@11 T@Seq_3707) (v_2@@5 Int) ) (!  (=> (and (state Heap@@21 Mask@@25) (< AssumeFunctionsAbove 5)) (=> (and (and (<= 0 i@@15) (<= i@@15 hi@@11)) (<= hi@@11 (|Seq#Length_3707| ar_1@@11))) (= (count_list Heap@@21 i@@15 hi@@11 ar_1@@11 v_2@@5) (ite (< i@@15 hi@@11) (+ (ite (= (|Seq#Index_3707| ar_1@@11 i@@15) v_2@@5) 1 0) (|count_list'| Heap@@21 (+ i@@15 1) hi@@11 ar_1@@11 v_2@@5)) 0))))
 :qid |stdinbpl.1542:15|
 :skolemid |127|
 :pattern ( (state Heap@@21 Mask@@25) (count_list Heap@@21 i@@15 hi@@11 ar_1@@11 v_2@@5))
)))
(assert (forall ((s@@15 T@Seq_46180) (t@@1 T@Seq_46180) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_27552| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_27552| s@@15)) (|Seq#Length_27552| s@@15)) n@@15) (= (|Seq#Drop_27552| (|Seq#Append_46180| s@@15 t@@1) n@@15) (|Seq#Drop_27552| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_27552| s@@15))))))
 :qid |stdinbpl.491:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_27552| (|Seq#Append_46180| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3707) (t@@2 T@Seq_3707) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3707| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3707| s@@16)) (|Seq#Length_3707| s@@16)) n@@16) (= (|Seq#Drop_3707| (|Seq#Append_3707| s@@16 t@@2) n@@16) (|Seq#Drop_3707| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3707| s@@16))))))
 :qid |stdinbpl.491:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3707| (|Seq#Append_3707| s@@16 t@@2) n@@16))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_38990) (i@@16 Int) (lo@@7 Int) (hi@@12 Int) (ar_1@@12 T@Seq_46180) ) (!  (and (= (sum_array Heap@@22 i@@16 lo@@7 hi@@12 ar_1@@12) (|sum_array'| Heap@@22 i@@16 lo@@7 hi@@12 ar_1@@12)) (dummyFunction_4136 (|sum_array#triggerStateless| i@@16 lo@@7 hi@@12 ar_1@@12)))
 :qid |stdinbpl.765:15|
 :skolemid |62|
 :pattern ( (sum_array Heap@@22 i@@16 lo@@7 hi@@12 ar_1@@12))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_38990) (i@@17 Int) (hi@@13 Int) (ar_1@@13 T@Seq_3707) (v_2@@6 Int) ) (!  (and (= (count_list Heap@@23 i@@17 hi@@13 ar_1@@13 v_2@@6) (|count_list'| Heap@@23 i@@17 hi@@13 ar_1@@13 v_2@@6)) (dummyFunction_4136 (|count_list#triggerStateless| i@@17 hi@@13 ar_1@@13 v_2@@6)))
 :qid |stdinbpl.1532:15|
 :skolemid |125|
 :pattern ( (count_list Heap@@23 i@@17 hi@@13 ar_1@@13 v_2@@6))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_38990) (i@@18 Int) (hi@@14 Int) (ar_1@@14 T@Seq_46180) (v_2@@7 Int) ) (!  (and (= (count_array Heap@@24 i@@18 hi@@14 ar_1@@14 v_2@@7) (|count_array'| Heap@@24 i@@18 hi@@14 ar_1@@14 v_2@@7)) (dummyFunction_4136 (|count_array#triggerStateless| i@@18 hi@@14 ar_1@@14 v_2@@7)))
 :qid |stdinbpl.1617:15|
 :skolemid |129|
 :pattern ( (count_array Heap@@24 i@@18 hi@@14 ar_1@@14 v_2@@7))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_39011) (SummandMask1 T@PolymorphicMapType_39011) (SummandMask2 T@PolymorphicMapType_39011) (o_2@@19 T@Ref) (f_4@@19 T@Field_27513_111173) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_39011) (SummandMask1@@0 T@PolymorphicMapType_39011) (SummandMask2@@0 T@PolymorphicMapType_39011) (o_2@@20 T@Ref) (f_4@@20 T@Field_27513_111040) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_39011) (SummandMask1@@1 T@PolymorphicMapType_39011) (SummandMask2@@1 T@PolymorphicMapType_39011) (o_2@@21 T@Ref) (f_4@@21 T@Field_39063_39064) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_39011) (SummandMask1@@2 T@PolymorphicMapType_39011) (SummandMask2@@2 T@PolymorphicMapType_39011) (o_2@@22 T@Ref) (f_4@@22 T@Field_39050_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_39011) (SummandMask1@@3 T@PolymorphicMapType_39011) (SummandMask2@@3 T@PolymorphicMapType_39011) (o_2@@23 T@Ref) (f_4@@23 T@Field_45138_3829) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_38990) (i@@19 Int) (lo@@8 Int) (hi@@15 Int) (step@@5 Int) (vmin@@5 Int) (vmax_1@@5 Int) (ar_1@@15 T@Seq_46180) ) (!  (and (= (sum_square Heap@@25 i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax_1@@5 ar_1@@15) (|sum_square'| Heap@@25 i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax_1@@5 ar_1@@15)) (dummyFunction_4136 (|sum_square#triggerStateless| i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax_1@@5 ar_1@@15)))
 :qid |stdinbpl.1000:15|
 :skolemid |83|
 :pattern ( (sum_square Heap@@25 i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax_1@@5 ar_1@@15))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_38990) (Mask@@26 T@PolymorphicMapType_39011) (i@@20 Int) (hi@@16 Int) (ar_1@@16 T@Seq_3707) (v_2@@8 Int) ) (!  (=> (state Heap@@26 Mask@@26) (= (|count_list'| Heap@@26 i@@20 hi@@16 ar_1@@16 v_2@@8) (|count_list#frame| EmptyFrame i@@20 hi@@16 ar_1@@16 v_2@@8)))
 :qid |stdinbpl.1549:15|
 :skolemid |128|
 :pattern ( (state Heap@@26 Mask@@26) (|count_list'| Heap@@26 i@@20 hi@@16 ar_1@@16 v_2@@8))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3707| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3707| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.656:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3707| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_38990) (Mask@@27 T@PolymorphicMapType_39011) (i@@21 Int) (lo@@9 Int) (hi@@17 Int) (step@@6 Int) (vmin@@6 Int) (vmax_1@@6 Int) (ar_1@@17 T@Seq_46180) (v_2@@9 Int) ) (!  (=> (and (state Heap@@27 Mask@@27) (< AssumeFunctionsAbove 0)) (=> (and (and (and (and (<= 0 lo@@9) (and (<= lo@@9 hi@@17) (and (<= hi@@17 step@@6) (> step@@6 0)))) (and (<= 0 vmin@@6) (and (<= vmin@@6 i@@21) (<= i@@21 vmax_1@@6)))) (<= vmax_1@@6 (|Seq#Length_27552| ar_1@@17))) (forall ((j@@8 Int) (k@@1 Int) ) (!  (=> (and (<= 0 j@@8) (and (< j@@8 (|Seq#Length_27552| ar_1@@17)) (and (<= 0 k@@1) (and (< k@@1 (|Seq#Length_27552| ar_1@@17)) (not (= j@@8 k@@1)))))) (not (= (|Seq#Index_27552| ar_1@@17 j@@8) (|Seq#Index_27552| ar_1@@17 k@@1))))
 :qid |stdinbpl.1278:195|
 :skolemid |106|
 :pattern ( (|Seq#Index_27552| ar_1@@17 j@@8) (|Seq#Index_27552| ar_1@@17 k@@1))
))) (= (count_square Heap@@27 i@@21 lo@@9 hi@@17 step@@6 vmin@@6 vmax_1@@6 ar_1@@17 v_2@@9) (ite (< i@@21 vmax_1@@6) (+ (ite  (and (<= lo@@9 (mod i@@21 step@@6)) (and (< (mod i@@21 step@@6) hi@@17) (= (select (|PolymorphicMapType_38990_27513_3829#PolymorphicMapType_38990| Heap@@27) (|Seq#Index_27552| ar_1@@17 i@@21) Ref__Integer_value) v_2@@9))) 1 0) (|count_square'| Heap@@27 (+ i@@21 1) lo@@9 hi@@17 step@@6 vmin@@6 vmax_1@@6 ar_1@@17 v_2@@9)) 0))))
 :qid |stdinbpl.1276:15|
 :skolemid |107|
 :pattern ( (state Heap@@27 Mask@@27) (count_square Heap@@27 i@@21 lo@@9 hi@@17 step@@6 vmin@@6 vmax_1@@6 ar_1@@17 v_2@@9))
)))
(assert (forall ((a T@Seq_46180) (b T@Seq_46180) ) (!  (=> (|Seq#Equal_46180| a b) (= a b))
 :qid |stdinbpl.629:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_46180| a b))
)))
(assert (forall ((a@@0 T@Seq_3707) (b@@0 T@Seq_3707) ) (!  (=> (|Seq#Equal_3707| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.629:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3707| a@@0 b@@0))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_38990) (i@@22 Int) (hi@@18 Int) (ar_1@@18 T@Seq_3707) ) (!  (and (= (sum_list Heap@@28 i@@22 hi@@18 ar_1@@18) (|sum_list'| Heap@@28 i@@22 hi@@18 ar_1@@18)) (dummyFunction_4136 (|sum_list#triggerStateless| i@@22 hi@@18 ar_1@@18)))
 :qid |stdinbpl.680:15|
 :skolemid |58|
 :pattern ( (sum_list Heap@@28 i@@22 hi@@18 ar_1@@18))
)))
(assert (forall ((s@@17 T@Seq_46180) (i@@23 Int) ) (!  (=> (and (<= 0 i@@23) (< i@@23 (|Seq#Length_27552| s@@17))) (|Seq#ContainsTrigger_27552| s@@17 (|Seq#Index_27552| s@@17 i@@23)))
 :qid |stdinbpl.522:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_27552| s@@17 i@@23))
)))
(assert (forall ((s@@18 T@Seq_3707) (i@@24 Int) ) (!  (=> (and (<= 0 i@@24) (< i@@24 (|Seq#Length_3707| s@@18))) (|Seq#ContainsTrigger_3707| s@@18 (|Seq#Index_3707| s@@18 i@@24)))
 :qid |stdinbpl.522:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3707| s@@18 i@@24))
)))
(assert (forall ((s0@@3 T@Seq_46180) (s1@@3 T@Seq_46180) ) (!  (and (=> (= s0@@3 |Seq#Empty_27552|) (= (|Seq#Append_46180| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_27552|) (= (|Seq#Append_46180| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.340:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_46180| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3707) (s1@@4 T@Seq_3707) ) (!  (and (=> (= s0@@4 |Seq#Empty_3707|) (= (|Seq#Append_3707| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3707|) (= (|Seq#Append_3707| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.340:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3707| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_27552| (|Seq#Singleton_27552| t@@3) 0) t@@3)
 :qid |stdinbpl.344:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_27552| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3707| (|Seq#Singleton_3707| t@@4) 0) t@@4)
 :qid |stdinbpl.344:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3707| t@@4))
)))
(assert (forall ((s@@19 T@Seq_46180) ) (! (<= 0 (|Seq#Length_27552| s@@19))
 :qid |stdinbpl.323:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_27552| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3707) ) (! (<= 0 (|Seq#Length_3707| s@@20))
 :qid |stdinbpl.323:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3707| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_46180) (s1@@5 T@Seq_46180) ) (!  (=> (|Seq#Equal_46180| s0@@5 s1@@5) (and (= (|Seq#Length_27552| s0@@5) (|Seq#Length_27552| s1@@5)) (forall ((j@@9 Int) ) (!  (=> (and (<= 0 j@@9) (< j@@9 (|Seq#Length_27552| s0@@5))) (= (|Seq#Index_27552| s0@@5 j@@9) (|Seq#Index_27552| s1@@5 j@@9)))
 :qid |stdinbpl.619:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_27552| s0@@5 j@@9))
 :pattern ( (|Seq#Index_27552| s1@@5 j@@9))
))))
 :qid |stdinbpl.616:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_46180| s0@@5 s1@@5))
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
(assert (forall ((Heap2Heap@@1 T@PolymorphicMapType_38990) (Heap1Heap@@1 T@PolymorphicMapType_38990) (i@@25 Int) (hi@@19 Int) (ar_1@@19 T@Seq_46180) (v_2@@10 Int) ) (!  (=> (and (=  (and (<= 0 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10))) (< (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10)) hi@@19))  (and (<= 0 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10))) (< (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10)) hi@@19))) (=> (and (<= 0 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10))) (< (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10)) hi@@19)) (= (select (|PolymorphicMapType_38990_27513_3829#PolymorphicMapType_38990| Heap2Heap@@1) (|Seq#Index_27552| ar_1@@19 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10))) Ref__Integer_value) (select (|PolymorphicMapType_38990_27513_3829#PolymorphicMapType_38990| Heap1Heap@@1) (|Seq#Index_27552| ar_1@@19 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10))) Ref__Integer_value)))) (= (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10)))
 :qid |stdinbpl.1647:15|
 :skolemid |134|
 :pattern ( (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (succHeapTrans Heap2Heap@@1 Heap1Heap@@1))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_27552| (|Seq#Singleton_27552| t@@5)) 1)
 :qid |stdinbpl.331:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_27552| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3707| (|Seq#Singleton_3707| t@@6)) 1)
 :qid |stdinbpl.331:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3707| t@@6))
)))
(assert (forall ((Heap2Heap@@2 T@PolymorphicMapType_38990) (Heap1Heap@@2 T@PolymorphicMapType_38990) (i@@26 Int) (lo@@10 Int) (hi@@20 Int) (ar_1@@20 T@Seq_46180) ) (!  (=> (and (=  (and (<= lo@@10 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20))) (< (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20)) hi@@20))  (and (<= lo@@10 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20))) (< (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20)) hi@@20))) (=> (and (<= lo@@10 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20))) (< (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20)) hi@@20)) (= (select (|PolymorphicMapType_38990_27513_3829#PolymorphicMapType_38990| Heap2Heap@@2) (|Seq#Index_27552| ar_1@@20 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20))) Ref__Integer_value) (select (|PolymorphicMapType_38990_27513_3829#PolymorphicMapType_38990| Heap1Heap@@2) (|Seq#Index_27552| ar_1@@20 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20))) Ref__Integer_value)))) (= (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20)))
 :qid |stdinbpl.795:15|
 :skolemid |67|
 :pattern ( (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (succHeapTrans Heap2Heap@@2 Heap1Heap@@2))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_38990) (Mask@@28 T@PolymorphicMapType_39011) (i@@27 Int) (hi@@21 Int) (ar_1@@21 T@Seq_3707) ) (!  (=> (and (state Heap@@29 Mask@@28) (< AssumeFunctionsAbove 4)) (=> (and (and (<= 0 i@@27) (<= i@@27 hi@@21)) (<= hi@@21 (|Seq#Length_3707| ar_1@@21))) (= (sum_list Heap@@29 i@@27 hi@@21 ar_1@@21) (ite (< i@@27 hi@@21) (+ (|Seq#Index_3707| ar_1@@21 i@@27) (|sum_list'| Heap@@29 (+ i@@27 1) hi@@21 ar_1@@21)) 0))))
 :qid |stdinbpl.690:15|
 :skolemid |60|
 :pattern ( (state Heap@@29 Mask@@28) (sum_list Heap@@29 i@@27 hi@@21 ar_1@@21))
)))
(assert (forall ((s@@21 T@Seq_46180) (t@@7 T@Seq_46180) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_27552| s@@21))) (= (|Seq#Take_27552| (|Seq#Append_46180| s@@21 t@@7) n@@17) (|Seq#Take_27552| s@@21 n@@17)))
 :qid |stdinbpl.473:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_27552| (|Seq#Append_46180| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3707) (t@@8 T@Seq_3707) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3707| s@@22))) (= (|Seq#Take_3707| (|Seq#Append_3707| s@@22 t@@8) n@@18) (|Seq#Take_3707| s@@22 n@@18)))
 :qid |stdinbpl.473:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3707| (|Seq#Append_3707| s@@22 t@@8) n@@18))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_38990) (Mask@@29 T@PolymorphicMapType_39011) (i@@28 Int) (hi@@22 Int) (ar_1@@22 T@Seq_46180) (v_2@@11 Int) ) (!  (=> (and (state Heap@@30 Mask@@29) (< AssumeFunctionsAbove 2)) (=> (and (and (and (<= 0 i@@28) (<= i@@28 hi@@22)) (<= hi@@22 (|Seq#Length_27552| ar_1@@22))) (forall ((j@@11 Int) (k@@2 Int) ) (!  (=> (and (<= 0 j@@11) (and (< j@@11 (|Seq#Length_27552| ar_1@@22)) (and (<= 0 k@@2) (and (< k@@2 (|Seq#Length_27552| ar_1@@22)) (not (= j@@11 k@@2)))))) (not (= (|Seq#Index_27552| ar_1@@22 j@@11) (|Seq#Index_27552| ar_1@@22 k@@2))))
 :qid |stdinbpl.1629:112|
 :skolemid |131|
 :pattern ( (|Seq#Index_27552| ar_1@@22 j@@11) (|Seq#Index_27552| ar_1@@22 k@@2))
))) (= (count_array Heap@@30 i@@28 hi@@22 ar_1@@22 v_2@@11) (ite (< i@@28 hi@@22) (+ (ite (= (select (|PolymorphicMapType_38990_27513_3829#PolymorphicMapType_38990| Heap@@30) (|Seq#Index_27552| ar_1@@22 i@@28) Ref__Integer_value) v_2@@11) 1 0) (|count_array'| Heap@@30 (+ i@@28 1) hi@@22 ar_1@@22 v_2@@11)) 0))))
 :qid |stdinbpl.1627:15|
 :skolemid |132|
 :pattern ( (state Heap@@30 Mask@@29) (count_array Heap@@30 i@@28 hi@@22 ar_1@@22 v_2@@11))
)))
(assert (forall ((s@@23 T@Seq_46180) (i@@29 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@29) (< i@@29 (|Seq#Length_27552| s@@23))) (= (|Seq#Length_27552| (|Seq#Update_27552| s@@23 i@@29 v@@2)) (|Seq#Length_27552| s@@23)))
 :qid |stdinbpl.372:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_27552| (|Seq#Update_27552| s@@23 i@@29 v@@2)))
 :pattern ( (|Seq#Length_27552| s@@23) (|Seq#Update_27552| s@@23 i@@29 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3707) (i@@30 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@30) (< i@@30 (|Seq#Length_3707| s@@24))) (= (|Seq#Length_3707| (|Seq#Update_3707| s@@24 i@@30 v@@3)) (|Seq#Length_3707| s@@24)))
 :qid |stdinbpl.372:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3707| (|Seq#Update_3707| s@@24 i@@30 v@@3)))
 :pattern ( (|Seq#Length_3707| s@@24) (|Seq#Update_3707| s@@24 i@@30 v@@3))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_38990) (o_53 T@Ref) (f_16 T@Field_27513_111040) (v@@4 T@FrameType) ) (! (succHeap Heap@@31 (PolymorphicMapType_38990 (|PolymorphicMapType_38990_27255_53#PolymorphicMapType_38990| Heap@@31) (|PolymorphicMapType_38990_27258_27259#PolymorphicMapType_38990| Heap@@31) (|PolymorphicMapType_38990_27513_3829#PolymorphicMapType_38990| Heap@@31) (|PolymorphicMapType_38990_27513_111217#PolymorphicMapType_38990| Heap@@31) (store (|PolymorphicMapType_38990_39050_111040#PolymorphicMapType_38990| Heap@@31) o_53 f_16 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38990 (|PolymorphicMapType_38990_27255_53#PolymorphicMapType_38990| Heap@@31) (|PolymorphicMapType_38990_27258_27259#PolymorphicMapType_38990| Heap@@31) (|PolymorphicMapType_38990_27513_3829#PolymorphicMapType_38990| Heap@@31) (|PolymorphicMapType_38990_27513_111217#PolymorphicMapType_38990| Heap@@31) (store (|PolymorphicMapType_38990_39050_111040#PolymorphicMapType_38990| Heap@@31) o_53 f_16 v@@4)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_38990) (o_53@@0 T@Ref) (f_16@@0 T@Field_27513_111173) (v@@5 T@PolymorphicMapType_39539) ) (! (succHeap Heap@@32 (PolymorphicMapType_38990 (|PolymorphicMapType_38990_27255_53#PolymorphicMapType_38990| Heap@@32) (|PolymorphicMapType_38990_27258_27259#PolymorphicMapType_38990| Heap@@32) (|PolymorphicMapType_38990_27513_3829#PolymorphicMapType_38990| Heap@@32) (store (|PolymorphicMapType_38990_27513_111217#PolymorphicMapType_38990| Heap@@32) o_53@@0 f_16@@0 v@@5) (|PolymorphicMapType_38990_39050_111040#PolymorphicMapType_38990| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38990 (|PolymorphicMapType_38990_27255_53#PolymorphicMapType_38990| Heap@@32) (|PolymorphicMapType_38990_27258_27259#PolymorphicMapType_38990| Heap@@32) (|PolymorphicMapType_38990_27513_3829#PolymorphicMapType_38990| Heap@@32) (store (|PolymorphicMapType_38990_27513_111217#PolymorphicMapType_38990| Heap@@32) o_53@@0 f_16@@0 v@@5) (|PolymorphicMapType_38990_39050_111040#PolymorphicMapType_38990| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_38990) (o_53@@1 T@Ref) (f_16@@1 T@Field_45138_3829) (v@@6 Int) ) (! (succHeap Heap@@33 (PolymorphicMapType_38990 (|PolymorphicMapType_38990_27255_53#PolymorphicMapType_38990| Heap@@33) (|PolymorphicMapType_38990_27258_27259#PolymorphicMapType_38990| Heap@@33) (store (|PolymorphicMapType_38990_27513_3829#PolymorphicMapType_38990| Heap@@33) o_53@@1 f_16@@1 v@@6) (|PolymorphicMapType_38990_27513_111217#PolymorphicMapType_38990| Heap@@33) (|PolymorphicMapType_38990_39050_111040#PolymorphicMapType_38990| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38990 (|PolymorphicMapType_38990_27255_53#PolymorphicMapType_38990| Heap@@33) (|PolymorphicMapType_38990_27258_27259#PolymorphicMapType_38990| Heap@@33) (store (|PolymorphicMapType_38990_27513_3829#PolymorphicMapType_38990| Heap@@33) o_53@@1 f_16@@1 v@@6) (|PolymorphicMapType_38990_27513_111217#PolymorphicMapType_38990| Heap@@33) (|PolymorphicMapType_38990_39050_111040#PolymorphicMapType_38990| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_38990) (o_53@@2 T@Ref) (f_16@@2 T@Field_39063_39064) (v@@7 T@Ref) ) (! (succHeap Heap@@34 (PolymorphicMapType_38990 (|PolymorphicMapType_38990_27255_53#PolymorphicMapType_38990| Heap@@34) (store (|PolymorphicMapType_38990_27258_27259#PolymorphicMapType_38990| Heap@@34) o_53@@2 f_16@@2 v@@7) (|PolymorphicMapType_38990_27513_3829#PolymorphicMapType_38990| Heap@@34) (|PolymorphicMapType_38990_27513_111217#PolymorphicMapType_38990| Heap@@34) (|PolymorphicMapType_38990_39050_111040#PolymorphicMapType_38990| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38990 (|PolymorphicMapType_38990_27255_53#PolymorphicMapType_38990| Heap@@34) (store (|PolymorphicMapType_38990_27258_27259#PolymorphicMapType_38990| Heap@@34) o_53@@2 f_16@@2 v@@7) (|PolymorphicMapType_38990_27513_3829#PolymorphicMapType_38990| Heap@@34) (|PolymorphicMapType_38990_27513_111217#PolymorphicMapType_38990| Heap@@34) (|PolymorphicMapType_38990_39050_111040#PolymorphicMapType_38990| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_38990) (o_53@@3 T@Ref) (f_16@@3 T@Field_39050_53) (v@@8 Bool) ) (! (succHeap Heap@@35 (PolymorphicMapType_38990 (store (|PolymorphicMapType_38990_27255_53#PolymorphicMapType_38990| Heap@@35) o_53@@3 f_16@@3 v@@8) (|PolymorphicMapType_38990_27258_27259#PolymorphicMapType_38990| Heap@@35) (|PolymorphicMapType_38990_27513_3829#PolymorphicMapType_38990| Heap@@35) (|PolymorphicMapType_38990_27513_111217#PolymorphicMapType_38990| Heap@@35) (|PolymorphicMapType_38990_39050_111040#PolymorphicMapType_38990| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38990 (store (|PolymorphicMapType_38990_27255_53#PolymorphicMapType_38990| Heap@@35) o_53@@3 f_16@@3 v@@8) (|PolymorphicMapType_38990_27258_27259#PolymorphicMapType_38990| Heap@@35) (|PolymorphicMapType_38990_27513_3829#PolymorphicMapType_38990| Heap@@35) (|PolymorphicMapType_38990_27513_111217#PolymorphicMapType_38990| Heap@@35) (|PolymorphicMapType_38990_39050_111040#PolymorphicMapType_38990| Heap@@35)))
)))
(assert (forall ((s@@25 T@Seq_46180) (t@@9 T@Seq_46180) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_27552| s@@25))) (= (|Seq#Drop_27552| (|Seq#Append_46180| s@@25 t@@9) n@@19) (|Seq#Append_46180| (|Seq#Drop_27552| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.487:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_27552| (|Seq#Append_46180| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3707) (t@@10 T@Seq_3707) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3707| s@@26))) (= (|Seq#Drop_3707| (|Seq#Append_3707| s@@26 t@@10) n@@20) (|Seq#Append_3707| (|Seq#Drop_3707| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.487:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3707| (|Seq#Append_3707| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_46180) (n@@21 Int) (i@@31 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@31)) (< i@@31 (|Seq#Length_27552| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@31 n@@21) n@@21) i@@31) (= (|Seq#Index_27552| (|Seq#Drop_27552| s@@27 n@@21) (|Seq#Sub| i@@31 n@@21)) (|Seq#Index_27552| s@@27 i@@31))))
 :qid |stdinbpl.423:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_27552| s@@27 n@@21) (|Seq#Index_27552| s@@27 i@@31))
)))
(assert (forall ((s@@28 T@Seq_3707) (n@@22 Int) (i@@32 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@32)) (< i@@32 (|Seq#Length_3707| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@32 n@@22) n@@22) i@@32) (= (|Seq#Index_3707| (|Seq#Drop_3707| s@@28 n@@22) (|Seq#Sub| i@@32 n@@22)) (|Seq#Index_3707| s@@28 i@@32))))
 :qid |stdinbpl.423:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3707| s@@28 n@@22) (|Seq#Index_3707| s@@28 i@@32))
)))
(assert (forall ((s0@@7 T@Seq_46180) (s1@@7 T@Seq_46180) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_27552|)) (not (= s1@@7 |Seq#Empty_27552|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_27552| s0@@7))) (= (|Seq#Index_27552| (|Seq#Append_46180| s0@@7 s1@@7) n@@23) (|Seq#Index_27552| s0@@7 n@@23)))
 :qid |stdinbpl.363:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_27552| (|Seq#Append_46180| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_27552| s0@@7 n@@23) (|Seq#Append_46180| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3707) (s1@@8 T@Seq_3707) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3707|)) (not (= s1@@8 |Seq#Empty_3707|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3707| s0@@8))) (= (|Seq#Index_3707| (|Seq#Append_3707| s0@@8 s1@@8) n@@24) (|Seq#Index_3707| s0@@8 n@@24)))
 :qid |stdinbpl.363:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3707| (|Seq#Append_3707| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3707| s0@@8 n@@24) (|Seq#Append_3707| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_46180) (s1@@9 T@Seq_46180) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_27552|)) (not (= s1@@9 |Seq#Empty_27552|))) (<= 0 m)) (< m (|Seq#Length_27552| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_27552| s0@@9)) (|Seq#Length_27552| s0@@9)) m) (= (|Seq#Index_27552| (|Seq#Append_46180| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_27552| s0@@9))) (|Seq#Index_27552| s1@@9 m))))
 :qid |stdinbpl.368:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_27552| s1@@9 m) (|Seq#Append_46180| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3707) (s1@@10 T@Seq_3707) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3707|)) (not (= s1@@10 |Seq#Empty_3707|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3707| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3707| s0@@10)) (|Seq#Length_3707| s0@@10)) m@@0) (= (|Seq#Index_3707| (|Seq#Append_3707| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3707| s0@@10))) (|Seq#Index_3707| s1@@10 m@@0))))
 :qid |stdinbpl.368:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3707| s1@@10 m@@0) (|Seq#Append_3707| s0@@10 s1@@10))
)))
(assert (forall ((o_53@@4 T@Ref) (f_67 T@Field_39063_39064) (Heap@@36 T@PolymorphicMapType_38990) ) (!  (=> (select (|PolymorphicMapType_38990_27255_53#PolymorphicMapType_38990| Heap@@36) o_53@@4 $allocated) (select (|PolymorphicMapType_38990_27255_53#PolymorphicMapType_38990| Heap@@36) (select (|PolymorphicMapType_38990_27258_27259#PolymorphicMapType_38990| Heap@@36) o_53@@4 f_67) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_38990_27258_27259#PolymorphicMapType_38990| Heap@@36) o_53@@4 f_67))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_38990) (Mask@@30 T@PolymorphicMapType_39011) (i@@33 Int) (lo@@11 Int) (hi@@23 Int) (step@@7 Int) (vmin@@7 Int) (vmax_1@@7 Int) (ar_1@@23 T@Seq_46180) ) (!  (=> (state Heap@@37 Mask@@30) (= (|sum_square'| Heap@@37 i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax_1@@7 ar_1@@23) (|sum_square#frame| (FrameFragment_4688 (|sum_square#condqp2| Heap@@37 i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax_1@@7 ar_1@@23)) i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax_1@@7 ar_1@@23)))
 :qid |stdinbpl.1020:15|
 :skolemid |87|
 :pattern ( (state Heap@@37 Mask@@30) (|sum_square'| Heap@@37 i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax_1@@7 ar_1@@23))
)))
(assert (forall ((s@@29 T@Seq_46180) (x@@3 T@Ref) (i@@34 Int) ) (!  (=> (and (and (<= 0 i@@34) (< i@@34 (|Seq#Length_27552| s@@29))) (= (|Seq#Index_27552| s@@29 i@@34) x@@3)) (|Seq#Contains_46180| s@@29 x@@3))
 :qid |stdinbpl.520:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_46180| s@@29 x@@3) (|Seq#Index_27552| s@@29 i@@34))
)))
(assert (forall ((s@@30 T@Seq_3707) (x@@4 Int) (i@@35 Int) ) (!  (=> (and (and (<= 0 i@@35) (< i@@35 (|Seq#Length_3707| s@@30))) (= (|Seq#Index_3707| s@@30 i@@35) x@@4)) (|Seq#Contains_3707| s@@30 x@@4))
 :qid |stdinbpl.520:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3707| s@@30 x@@4) (|Seq#Index_3707| s@@30 i@@35))
)))
(assert (forall ((s0@@11 T@Seq_46180) (s1@@11 T@Seq_46180) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_46180| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_46180| s0@@11 s1@@11))) (not (= (|Seq#Length_27552| s0@@11) (|Seq#Length_27552| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_46180| s0@@11 s1@@11))) (= (|Seq#Length_27552| s0@@11) (|Seq#Length_27552| s1@@11))) (= (|Seq#SkolemDiff_46180| s0@@11 s1@@11) (|Seq#SkolemDiff_46180| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_46180| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_46180| s0@@11 s1@@11) (|Seq#Length_27552| s0@@11))) (not (= (|Seq#Index_27552| s0@@11 (|Seq#SkolemDiff_46180| s0@@11 s1@@11)) (|Seq#Index_27552| s1@@11 (|Seq#SkolemDiff_46180| s0@@11 s1@@11))))))
 :qid |stdinbpl.624:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_46180| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3707) (s1@@12 T@Seq_3707) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3707| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3707| s0@@12 s1@@12))) (not (= (|Seq#Length_3707| s0@@12) (|Seq#Length_3707| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3707| s0@@12 s1@@12))) (= (|Seq#Length_3707| s0@@12) (|Seq#Length_3707| s1@@12))) (= (|Seq#SkolemDiff_3707| s0@@12 s1@@12) (|Seq#SkolemDiff_3707| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3707| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3707| s0@@12 s1@@12) (|Seq#Length_3707| s0@@12))) (not (= (|Seq#Index_3707| s0@@12 (|Seq#SkolemDiff_3707| s0@@12 s1@@12)) (|Seq#Index_3707| s1@@12 (|Seq#SkolemDiff_3707| s0@@12 s1@@12))))))
 :qid |stdinbpl.624:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3707| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_27513_111040) (v_1@@0 T@FrameType) (q T@Field_27513_111040) (w@@0 T@FrameType) (r T@Field_27513_111040) (u T@FrameType) ) (!  (=> (and (InsidePredicate_39050_39050 p@@1 v_1@@0 q w@@0) (InsidePredicate_39050_39050 q w@@0 r u)) (InsidePredicate_39050_39050 p@@1 v_1@@0 r u))
 :qid |stdinbpl.291:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_39050_39050 p@@1 v_1@@0 q w@@0) (InsidePredicate_39050_39050 q w@@0 r u))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_38990) (i@@36 Int) (lo@@12 Int) (hi@@24 Int) (step@@8 Int) (vmin@@8 Int) (vmax_1@@8 Int) (ar_1@@24 T@Seq_46180) ) (! (dummyFunction_4136 (|sum_square#triggerStateless| i@@36 lo@@12 hi@@24 step@@8 vmin@@8 vmax_1@@8 ar_1@@24))
 :qid |stdinbpl.1004:15|
 :skolemid |84|
 :pattern ( (|sum_square'| Heap@@38 i@@36 lo@@12 hi@@24 step@@8 vmin@@8 vmax_1@@8 ar_1@@24))
)))
(assert (forall ((s@@31 T@Seq_46180) ) (!  (=> (= (|Seq#Length_27552| s@@31) 0) (= s@@31 |Seq#Empty_27552|))
 :qid |stdinbpl.327:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_27552| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3707) ) (!  (=> (= (|Seq#Length_3707| s@@32) 0) (= s@@32 |Seq#Empty_3707|))
 :qid |stdinbpl.327:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3707| s@@32))
)))
(assert (forall ((s@@33 T@Seq_46180) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_27552| s@@33 n@@25) |Seq#Empty_27552|))
 :qid |stdinbpl.503:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_27552| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3707) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3707| s@@34 n@@26) |Seq#Empty_3707|))
 :qid |stdinbpl.503:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3707| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@39 T@PolymorphicMapType_38990) (Mask@@31 T@PolymorphicMapType_39011) (i@@37 Int) (lo@@13 Int) (hi@@25 Int) (ar_1@@25 T@Seq_46180) ) (!  (=> (state Heap@@39 Mask@@31) (= (|sum_array'| Heap@@39 i@@37 lo@@13 hi@@25 ar_1@@25) (|sum_array#frame| (FrameFragment_4688 (|sum_array#condqp1| Heap@@39 i@@37 lo@@13 hi@@25 ar_1@@25)) i@@37 lo@@13 hi@@25 ar_1@@25)))
 :qid |stdinbpl.785:15|
 :skolemid |66|
 :pattern ( (state Heap@@39 Mask@@31) (|sum_array'| Heap@@39 i@@37 lo@@13 hi@@25 ar_1@@25))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_38990) (Mask@@32 T@PolymorphicMapType_39011) (i@@38 Int) (hi@@26 Int) (ar_1@@26 T@Seq_46180) (v_2@@12 Int) ) (!  (=> (state Heap@@40 Mask@@32) (= (|count_array'| Heap@@40 i@@38 hi@@26 ar_1@@26 v_2@@12) (|count_array#frame| (FrameFragment_4688 (|count_array#condqp4| Heap@@40 i@@38 hi@@26 ar_1@@26 v_2@@12)) i@@38 hi@@26 ar_1@@26 v_2@@12)))
 :qid |stdinbpl.1637:15|
 :skolemid |133|
 :pattern ( (state Heap@@40 Mask@@32) (|count_array'| Heap@@40 i@@38 hi@@26 ar_1@@26 v_2@@12))
)))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun i_65 () Int)
(declare-fun len_3 () Int)
(declare-fun cr () T@Seq_46180)
(declare-fun br () T@Seq_46180)
(declare-fun qpRange24 (T@Ref) Bool)
(declare-fun invRecv24 (T@Ref) Int)
(declare-fun QPMask@14 () T@PolymorphicMapType_39011)
(declare-fun QPMask@13 () T@PolymorphicMapType_39011)
(declare-fun PostHeap@0 () T@PolymorphicMapType_38990)
(declare-fun i_55 () Int)
(declare-fun ar_1@@27 () T@Seq_46180)
(declare-fun qpRange23 (T@Ref) Bool)
(declare-fun invRecv23 (T@Ref) Int)
(declare-fun i_64 () Int)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_38990)
(declare-fun Mask@1 () T@PolymorphicMapType_39011)
(declare-fun neverTriggered26 (Int) Bool)
(declare-fun qpRange26 (T@Ref) Bool)
(declare-fun invRecv26 (T@Ref) Int)
(declare-fun QPMask@10 () T@PolymorphicMapType_39011)
(declare-fun neverTriggered27 (Int) Bool)
(declare-fun qpRange27 (T@Ref) Bool)
(declare-fun invRecv27 (T@Ref) Int)
(declare-fun QPMask@11 () T@PolymorphicMapType_39011)
(declare-fun neverTriggered28 (Int) Bool)
(declare-fun QPMask@9 () T@PolymorphicMapType_39011)
(declare-fun perm@0 () Real)
(declare-fun Mask@0 () T@PolymorphicMapType_39011)
(declare-fun qpRange34 (T@Ref) Bool)
(declare-fun invRecv34 (T@Ref) Int)
(declare-fun QPMask@8 () T@PolymorphicMapType_39011)
(declare-fun QPMask@7 () T@PolymorphicMapType_39011)
(declare-fun qpRange35 (T@Ref) Bool)
(declare-fun invRecv35 (T@Ref) Int)
(declare-fun qpRange33 (T@Ref) Bool)
(declare-fun invRecv33 (T@Ref) Int)
(declare-fun QPMask@6 () T@PolymorphicMapType_39011)
(declare-fun qpRange32 (T@Ref) Bool)
(declare-fun invRecv32 (T@Ref) Int)
(declare-fun QPMask@5 () T@PolymorphicMapType_39011)
(declare-fun neverTriggered31 (Int) Bool)
(declare-fun QPMask@4 () T@PolymorphicMapType_39011)
(declare-fun qpRange31 (T@Ref) Bool)
(declare-fun invRecv31 (T@Ref) Int)
(declare-fun Heap@@41 () T@PolymorphicMapType_38990)
(declare-fun j_10_2 () Int)
(declare-fun k_10 () Int)
(declare-fun neverTriggered30 (Int) Bool)
(declare-fun QPMask@3 () T@PolymorphicMapType_39011)
(declare-fun qpRange30 (T@Ref) Bool)
(declare-fun invRecv30 (T@Ref) Int)
(declare-fun j_8_2 () Int)
(declare-fun k_8 () Int)
(declare-fun neverTriggered29 (Int) Bool)
(declare-fun QPMask@2 () T@PolymorphicMapType_39011)
(declare-fun qpRange29 (T@Ref) Bool)
(declare-fun invRecv29 (T@Ref) Int)
(declare-fun j_6_2 () Int)
(declare-fun k_6_2 () Int)
(declare-fun diz () T@Ref)
(declare-fun current_thread_id () Int)
(declare-fun qpRange22 (T@Ref) Bool)
(declare-fun invRecv22 (T@Ref) Int)
(declare-fun QPMask@1 () T@PolymorphicMapType_39011)
(declare-fun i_53 () Int)
(declare-fun j_35 () Int)
(declare-fun k_28 () Int)
(declare-fun qpRange21 (T@Ref) Bool)
(declare-fun invRecv21 (T@Ref) Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_39011)
(declare-fun i_42 () Int)
(declare-fun j_11 () Int)
(declare-fun k_27 () Int)
(declare-fun qpRange20 (T@Ref) Bool)
(declare-fun invRecv20 (T@Ref) Int)
(declare-fun i_27 () Int)
(declare-fun j_25 () Int)
(declare-fun k_26 () Int)
(set-info :boogie-vc-id Ref__zero_array)
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
 (=> (= (ControlFlow 0 0) 138) (let ((anon36_correct true))
(let ((anon83_Else_correct  (=> (and (not (and (<= 0 i_65) (< i_65 len_3))) (= (ControlFlow 0 120) 116)) anon36_correct)))
(let ((anon83_Then_correct  (=> (and (<= 0 i_65) (< i_65 len_3)) (and (=> (= (ControlFlow 0 117) (- 0 119)) (>= i_65 0)) (=> (>= i_65 0) (and (=> (= (ControlFlow 0 117) (- 0 118)) (< i_65 (|Seq#Length_27552| cr))) (=> (< i_65 (|Seq#Length_27552| cr)) (=> (= (ControlFlow 0 117) 116) anon36_correct))))))))
(let ((anon82_Else_correct  (=> (= (ControlFlow 0 115) (- 0 114)) (forall ((i_11_1 Int) (i_11_2 Int) ) (!  (=> (and (and (and (and (not (= i_11_1 i_11_2)) (and (<= 0 i_11_1) (< i_11_1 len_3))) (and (<= 0 i_11_2) (< i_11_2 len_3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27552| cr i_11_1) (|Seq#Index_27552| cr i_11_2))))
 :qid |stdinbpl.3622:15|
 :skolemid |261|
)))))
(let ((anon80_Else_correct  (and (=> (= (ControlFlow 0 121) (- 0 123)) (forall ((i_9_1 Int) (i_9_2 Int) ) (!  (=> (and (and (and (and (not (= i_9_1 i_9_2)) (and (<= 0 i_9_1) (< i_9_1 len_3))) (and (<= 0 i_9_2) (< i_9_2 len_3))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_27552| br i_9_1) (|Seq#Index_27552| br i_9_2))))
 :qid |stdinbpl.3568:15|
 :skolemid |254|
))) (=> (forall ((i_9_1@@0 Int) (i_9_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_9_1@@0 i_9_2@@0)) (and (<= 0 i_9_1@@0) (< i_9_1@@0 len_3))) (and (<= 0 i_9_2@@0) (< i_9_2@@0 len_3))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_27552| br i_9_1@@0) (|Seq#Index_27552| br i_9_2@@0))))
 :qid |stdinbpl.3568:15|
 :skolemid |254|
)) (=> (and (forall ((i_9_1@@1 Int) ) (!  (=> (and (and (<= 0 i_9_1@@1) (< i_9_1@@1 len_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange24 (|Seq#Index_27552| br i_9_1@@1)) (= (invRecv24 (|Seq#Index_27552| br i_9_1@@1)) i_9_1@@1)))
 :qid |stdinbpl.3574:22|
 :skolemid |255|
 :pattern ( (|Seq#Index_27552| br i_9_1@@1))
 :pattern ( (|Seq#Index_27552| br i_9_1@@1))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv24 o_9)) (< (invRecv24 o_9) len_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange24 o_9)) (= (|Seq#Index_27552| br (invRecv24 o_9)) o_9))
 :qid |stdinbpl.3578:22|
 :skolemid |256|
 :pattern ( (invRecv24 o_9))
))) (and (=> (= (ControlFlow 0 121) (- 0 122)) (forall ((i_9_1@@2 Int) ) (!  (=> (and (<= 0 i_9_1@@2) (< i_9_1@@2 len_3)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3584:15|
 :skolemid |257|
 :pattern ( (|Seq#Index_27552| br i_9_1@@2))
 :pattern ( (|Seq#Index_27552| br i_9_1@@2))
))) (=> (forall ((i_9_1@@3 Int) ) (!  (=> (and (<= 0 i_9_1@@3) (< i_9_1@@3 len_3)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3584:15|
 :skolemid |257|
 :pattern ( (|Seq#Index_27552| br i_9_1@@3))
 :pattern ( (|Seq#Index_27552| br i_9_1@@3))
)) (=> (and (forall ((i_9_1@@4 Int) ) (!  (=> (and (and (<= 0 i_9_1@@4) (< i_9_1@@4 len_3)) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= (|Seq#Index_27552| br i_9_1@@4) null)))
 :qid |stdinbpl.3590:22|
 :skolemid |258|
 :pattern ( (|Seq#Index_27552| br i_9_1@@4))
 :pattern ( (|Seq#Index_27552| br i_9_1@@4))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv24 o_9@@0)) (< (invRecv24 o_9@@0) len_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange24 o_9@@0)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (|Seq#Index_27552| br (invRecv24 o_9@@0)) o_9@@0)) (= (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@14) o_9@@0 Ref__Integer_value) (+ (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@13) o_9@@0 Ref__Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (<= 0 (invRecv24 o_9@@0)) (< (invRecv24 o_9@@0) len_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange24 o_9@@0))) (= (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@14) o_9@@0 Ref__Integer_value) (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@13) o_9@@0 Ref__Integer_value))))
 :qid |stdinbpl.3596:22|
 :skolemid |259|
 :pattern ( (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@14) o_9@@0 Ref__Integer_value))
))) (=> (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_39050_53) ) (!  (=> true (= (select (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| QPMask@13) o_9@@1 f_5) (select (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| QPMask@14) o_9@@1 f_5)))
 :qid |stdinbpl.3600:29|
 :skolemid |260|
 :pattern ( (select (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| QPMask@13) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| QPMask@14) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_39063_39064) ) (!  (=> true (= (select (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| QPMask@13) o_9@@2 f_5@@0) (select (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| QPMask@14) o_9@@2 f_5@@0)))
 :qid |stdinbpl.3600:29|
 :skolemid |260|
 :pattern ( (select (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| QPMask@13) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| QPMask@14) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_45138_3829) ) (!  (=> (not (= f_5@@1 Ref__Integer_value)) (= (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@13) o_9@@3 f_5@@1) (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@14) o_9@@3 f_5@@1)))
 :qid |stdinbpl.3600:29|
 :skolemid |260|
 :pattern ( (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@13) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@14) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_27513_111040) ) (!  (=> true (= (select (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| QPMask@13) o_9@@4 f_5@@2) (select (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| QPMask@14) o_9@@4 f_5@@2)))
 :qid |stdinbpl.3600:29|
 :skolemid |260|
 :pattern ( (select (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| QPMask@13) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| QPMask@14) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_27513_111173) ) (!  (=> true (= (select (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| QPMask@13) o_9@@5 f_5@@3) (select (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| QPMask@14) o_9@@5 f_5@@3)))
 :qid |stdinbpl.3600:29|
 :skolemid |260|
 :pattern ( (select (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| QPMask@13) o_9@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| QPMask@14) o_9@@5 f_5@@3))
))) (and (and (state PostHeap@0 QPMask@14) (state PostHeap@0 QPMask@14)) (and (= (|Seq#Length_27552| cr) len_3) (state PostHeap@0 QPMask@14)))) (and (and (=> (= (ControlFlow 0 121) 115) anon82_Else_correct) (=> (= (ControlFlow 0 121) 117) anon83_Then_correct)) (=> (= (ControlFlow 0 121) 120) anon83_Else_correct)))))))))))
(let ((anon32_correct true))
(let ((anon81_Else_correct  (=> (and (not (and (<= 0 i_55) (< i_55 len_3))) (= (ControlFlow 0 113) 109)) anon32_correct)))
(let ((anon81_Then_correct  (=> (and (<= 0 i_55) (< i_55 len_3)) (and (=> (= (ControlFlow 0 110) (- 0 112)) (>= i_55 0)) (=> (>= i_55 0) (and (=> (= (ControlFlow 0 110) (- 0 111)) (< i_55 (|Seq#Length_27552| br))) (=> (< i_55 (|Seq#Length_27552| br)) (=> (= (ControlFlow 0 110) 109) anon32_correct))))))))
(let ((anon78_Else_correct  (and (=> (= (ControlFlow 0 124) (- 0 125)) (forall ((i_7_1 Int) (i_7_2 Int) ) (!  (=> (and (and (and (and (not (= i_7_1 i_7_2)) (and (<= 0 i_7_1) (< i_7_1 len_3))) (and (<= 0 i_7_2) (< i_7_2 len_3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27552| ar_1@@27 i_7_1) (|Seq#Index_27552| ar_1@@27 i_7_2))))
 :qid |stdinbpl.3520:15|
 :skolemid |248|
))) (=> (forall ((i_7_1@@0 Int) (i_7_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_7_1@@0 i_7_2@@0)) (and (<= 0 i_7_1@@0) (< i_7_1@@0 len_3))) (and (<= 0 i_7_2@@0) (< i_7_2@@0 len_3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27552| ar_1@@27 i_7_1@@0) (|Seq#Index_27552| ar_1@@27 i_7_2@@0))))
 :qid |stdinbpl.3520:15|
 :skolemid |248|
)) (=> (and (and (forall ((i_7_1@@1 Int) ) (!  (=> (and (and (<= 0 i_7_1@@1) (< i_7_1@@1 len_3)) (< NoPerm FullPerm)) (and (qpRange23 (|Seq#Index_27552| ar_1@@27 i_7_1@@1)) (= (invRecv23 (|Seq#Index_27552| ar_1@@27 i_7_1@@1)) i_7_1@@1)))
 :qid |stdinbpl.3526:22|
 :skolemid |249|
 :pattern ( (|Seq#Index_27552| ar_1@@27 i_7_1@@1))
 :pattern ( (|Seq#Index_27552| ar_1@@27 i_7_1@@1))
)) (forall ((o_9@@6 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv23 o_9@@6)) (< (invRecv23 o_9@@6) len_3)) (< NoPerm FullPerm)) (qpRange23 o_9@@6)) (= (|Seq#Index_27552| ar_1@@27 (invRecv23 o_9@@6)) o_9@@6))
 :qid |stdinbpl.3530:22|
 :skolemid |250|
 :pattern ( (invRecv23 o_9@@6))
))) (and (forall ((i_7_1@@2 Int) ) (!  (=> (and (<= 0 i_7_1@@2) (< i_7_1@@2 len_3)) (not (= (|Seq#Index_27552| ar_1@@27 i_7_1@@2) null)))
 :qid |stdinbpl.3536:22|
 :skolemid |251|
 :pattern ( (|Seq#Index_27552| ar_1@@27 i_7_1@@2))
 :pattern ( (|Seq#Index_27552| ar_1@@27 i_7_1@@2))
)) (forall ((o_9@@7 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv23 o_9@@7)) (< (invRecv23 o_9@@7) len_3)) (< NoPerm FullPerm)) (qpRange23 o_9@@7)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_27552| ar_1@@27 (invRecv23 o_9@@7)) o_9@@7)) (= (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@13) o_9@@7 Ref__Integer_value) (+ (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| ZeroMask) o_9@@7 Ref__Integer_value) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv23 o_9@@7)) (< (invRecv23 o_9@@7) len_3)) (< NoPerm FullPerm)) (qpRange23 o_9@@7))) (= (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@13) o_9@@7 Ref__Integer_value) (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| ZeroMask) o_9@@7 Ref__Integer_value))))
 :qid |stdinbpl.3542:22|
 :skolemid |252|
 :pattern ( (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@13) o_9@@7 Ref__Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_9@@8 T@Ref) (f_5@@4 T@Field_39050_53) ) (!  (=> true (= (select (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| ZeroMask) o_9@@8 f_5@@4) (select (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| QPMask@13) o_9@@8 f_5@@4)))
 :qid |stdinbpl.3546:29|
 :skolemid |253|
 :pattern ( (select (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| ZeroMask) o_9@@8 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| QPMask@13) o_9@@8 f_5@@4))
)) (forall ((o_9@@9 T@Ref) (f_5@@5 T@Field_39063_39064) ) (!  (=> true (= (select (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| ZeroMask) o_9@@9 f_5@@5) (select (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| QPMask@13) o_9@@9 f_5@@5)))
 :qid |stdinbpl.3546:29|
 :skolemid |253|
 :pattern ( (select (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| ZeroMask) o_9@@9 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| QPMask@13) o_9@@9 f_5@@5))
))) (forall ((o_9@@10 T@Ref) (f_5@@6 T@Field_45138_3829) ) (!  (=> (not (= f_5@@6 Ref__Integer_value)) (= (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| ZeroMask) o_9@@10 f_5@@6) (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@13) o_9@@10 f_5@@6)))
 :qid |stdinbpl.3546:29|
 :skolemid |253|
 :pattern ( (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| ZeroMask) o_9@@10 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@13) o_9@@10 f_5@@6))
))) (forall ((o_9@@11 T@Ref) (f_5@@7 T@Field_27513_111040) ) (!  (=> true (= (select (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| ZeroMask) o_9@@11 f_5@@7) (select (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| QPMask@13) o_9@@11 f_5@@7)))
 :qid |stdinbpl.3546:29|
 :skolemid |253|
 :pattern ( (select (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| ZeroMask) o_9@@11 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| QPMask@13) o_9@@11 f_5@@7))
))) (forall ((o_9@@12 T@Ref) (f_5@@8 T@Field_27513_111173) ) (!  (=> true (= (select (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| ZeroMask) o_9@@12 f_5@@8) (select (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| QPMask@13) o_9@@12 f_5@@8)))
 :qid |stdinbpl.3546:29|
 :skolemid |253|
 :pattern ( (select (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| ZeroMask) o_9@@12 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| QPMask@13) o_9@@12 f_5@@8))
))) (and (and (state PostHeap@0 QPMask@13) (state PostHeap@0 QPMask@13)) (and (= (|Seq#Length_27552| br) len_3) (state PostHeap@0 QPMask@13)))) (and (and (=> (= (ControlFlow 0 124) 121) anon80_Else_correct) (=> (= (ControlFlow 0 124) 110) anon81_Then_correct)) (=> (= (ControlFlow 0 124) 113) anon81_Else_correct))))))))
(let ((anon28_correct true))
(let ((anon79_Else_correct  (=> (and (not (and (<= 0 i_64) (< i_64 len_3))) (= (ControlFlow 0 108) 104)) anon28_correct)))
(let ((anon79_Then_correct  (=> (and (<= 0 i_64) (< i_64 len_3)) (and (=> (= (ControlFlow 0 105) (- 0 107)) (>= i_64 0)) (=> (>= i_64 0) (and (=> (= (ControlFlow 0 105) (- 0 106)) (< i_64 (|Seq#Length_27552| ar_1@@27))) (=> (< i_64 (|Seq#Length_27552| ar_1@@27)) (=> (= (ControlFlow 0 105) 104) anon28_correct))))))))
(let ((anon77_Then_correct  (=> (state PostHeap@0 ZeroMask) (=> (and (= (|Seq#Length_27552| ar_1@@27) len_3) (state PostHeap@0 ZeroMask)) (and (and (=> (= (ControlFlow 0 126) 124) anon78_Else_correct) (=> (= (ControlFlow 0 126) 105) anon79_Then_correct)) (=> (= (ControlFlow 0 126) 108) anon79_Else_correct))))))
(let ((anon64_correct  (=> (and (state ExhaleHeap@0 Mask@1) (state ExhaleHeap@0 Mask@1)) (and (=> (= (ControlFlow 0 50) (- 0 59)) (= (|Seq#Length_27552| ar_1@@27) len_3)) (=> (= (|Seq#Length_27552| ar_1@@27) len_3) (and (=> (= (ControlFlow 0 50) (- 0 58)) (forall ((i_12_1 Int) (i_12_2 Int) ) (!  (=> (and (and (and (and (not (= i_12_1 i_12_2)) (and (<= 0 i_12_1) (< i_12_1 len_3))) (and (<= 0 i_12_2) (< i_12_2 len_3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27552| ar_1@@27 i_12_1) (|Seq#Index_27552| ar_1@@27 i_12_2))))
 :qid |stdinbpl.4055:17|
 :skolemid |316|
 :pattern ( (neverTriggered26 i_12_1) (neverTriggered26 i_12_2))
))) (=> (forall ((i_12_1@@0 Int) (i_12_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_12_1@@0 i_12_2@@0)) (and (<= 0 i_12_1@@0) (< i_12_1@@0 len_3))) (and (<= 0 i_12_2@@0) (< i_12_2@@0 len_3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27552| ar_1@@27 i_12_1@@0) (|Seq#Index_27552| ar_1@@27 i_12_2@@0))))
 :qid |stdinbpl.4055:17|
 :skolemid |316|
 :pattern ( (neverTriggered26 i_12_1@@0) (neverTriggered26 i_12_2@@0))
)) (and (=> (= (ControlFlow 0 50) (- 0 57)) (forall ((i_12_1@@1 Int) ) (!  (=> (and (<= 0 i_12_1@@1) (< i_12_1@@1 len_3)) (>= (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| Mask@1) (|Seq#Index_27552| ar_1@@27 i_12_1@@1) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.4062:17|
 :skolemid |317|
 :pattern ( (|Seq#Index_27552| ar_1@@27 i_12_1@@1))
 :pattern ( (|Seq#Index_27552| ar_1@@27 i_12_1@@1))
))) (=> (forall ((i_12_1@@2 Int) ) (!  (=> (and (<= 0 i_12_1@@2) (< i_12_1@@2 len_3)) (>= (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| Mask@1) (|Seq#Index_27552| ar_1@@27 i_12_1@@2) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.4062:17|
 :skolemid |317|
 :pattern ( (|Seq#Index_27552| ar_1@@27 i_12_1@@2))
 :pattern ( (|Seq#Index_27552| ar_1@@27 i_12_1@@2))
)) (=> (forall ((i_12_1@@3 Int) ) (!  (=> (and (and (<= 0 i_12_1@@3) (< i_12_1@@3 len_3)) (< NoPerm FullPerm)) (and (qpRange26 (|Seq#Index_27552| ar_1@@27 i_12_1@@3)) (= (invRecv26 (|Seq#Index_27552| ar_1@@27 i_12_1@@3)) i_12_1@@3)))
 :qid |stdinbpl.4068:22|
 :skolemid |318|
 :pattern ( (|Seq#Index_27552| ar_1@@27 i_12_1@@3))
 :pattern ( (|Seq#Index_27552| ar_1@@27 i_12_1@@3))
)) (=> (and (forall ((o_9@@13 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv26 o_9@@13)) (< (invRecv26 o_9@@13) len_3)) (and (< NoPerm FullPerm) (qpRange26 o_9@@13))) (= (|Seq#Index_27552| ar_1@@27 (invRecv26 o_9@@13)) o_9@@13))
 :qid |stdinbpl.4072:22|
 :skolemid |319|
 :pattern ( (invRecv26 o_9@@13))
)) (forall ((o_9@@14 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv26 o_9@@14)) (< (invRecv26 o_9@@14) len_3)) (and (< NoPerm FullPerm) (qpRange26 o_9@@14))) (and (= (|Seq#Index_27552| ar_1@@27 (invRecv26 o_9@@14)) o_9@@14) (= (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@10) o_9@@14 Ref__Integer_value) (- (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| Mask@1) o_9@@14 Ref__Integer_value) FullPerm)))) (=> (not (and (and (<= 0 (invRecv26 o_9@@14)) (< (invRecv26 o_9@@14) len_3)) (and (< NoPerm FullPerm) (qpRange26 o_9@@14)))) (= (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@10) o_9@@14 Ref__Integer_value) (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| Mask@1) o_9@@14 Ref__Integer_value))))
 :qid |stdinbpl.4078:22|
 :skolemid |320|
 :pattern ( (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@10) o_9@@14 Ref__Integer_value))
))) (=> (and (and (and (and (forall ((o_9@@15 T@Ref) (f_5@@9 T@Field_39050_53) ) (!  (=> true (= (select (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| Mask@1) o_9@@15 f_5@@9) (select (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| QPMask@10) o_9@@15 f_5@@9)))
 :qid |stdinbpl.4084:29|
 :skolemid |321|
 :pattern ( (select (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| QPMask@10) o_9@@15 f_5@@9))
)) (forall ((o_9@@16 T@Ref) (f_5@@10 T@Field_39063_39064) ) (!  (=> true (= (select (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| Mask@1) o_9@@16 f_5@@10) (select (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| QPMask@10) o_9@@16 f_5@@10)))
 :qid |stdinbpl.4084:29|
 :skolemid |321|
 :pattern ( (select (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| QPMask@10) o_9@@16 f_5@@10))
))) (forall ((o_9@@17 T@Ref) (f_5@@11 T@Field_45138_3829) ) (!  (=> (not (= f_5@@11 Ref__Integer_value)) (= (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| Mask@1) o_9@@17 f_5@@11) (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@10) o_9@@17 f_5@@11)))
 :qid |stdinbpl.4084:29|
 :skolemid |321|
 :pattern ( (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@10) o_9@@17 f_5@@11))
))) (forall ((o_9@@18 T@Ref) (f_5@@12 T@Field_27513_111040) ) (!  (=> true (= (select (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| Mask@1) o_9@@18 f_5@@12) (select (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| QPMask@10) o_9@@18 f_5@@12)))
 :qid |stdinbpl.4084:29|
 :skolemid |321|
 :pattern ( (select (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| QPMask@10) o_9@@18 f_5@@12))
))) (forall ((o_9@@19 T@Ref) (f_5@@13 T@Field_27513_111173) ) (!  (=> true (= (select (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| Mask@1) o_9@@19 f_5@@13) (select (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| QPMask@10) o_9@@19 f_5@@13)))
 :qid |stdinbpl.4084:29|
 :skolemid |321|
 :pattern ( (select (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| QPMask@10) o_9@@19 f_5@@13))
))) (and (=> (= (ControlFlow 0 50) (- 0 56)) (= (|Seq#Length_27552| br) len_3)) (=> (= (|Seq#Length_27552| br) len_3) (and (=> (= (ControlFlow 0 50) (- 0 55)) (forall ((i_13_1 Int) ) (!  (=> (and (and (<= 0 i_13_1) (< i_13_1 len_3)) (dummyFunction_4136 (select (|PolymorphicMapType_38990_27513_3829#PolymorphicMapType_38990| ExhaleHeap@0) (|Seq#Index_27552| br i_13_1) Ref__Integer_value))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4095:17|
 :skolemid |322|
 :pattern ( (|Seq#Index_27552| br i_13_1))
 :pattern ( (|Seq#Index_27552| br i_13_1))
))) (=> (forall ((i_13_1@@0 Int) ) (!  (=> (and (and (<= 0 i_13_1@@0) (< i_13_1@@0 len_3)) (dummyFunction_4136 (select (|PolymorphicMapType_38990_27513_3829#PolymorphicMapType_38990| ExhaleHeap@0) (|Seq#Index_27552| br i_13_1@@0) Ref__Integer_value))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4095:17|
 :skolemid |322|
 :pattern ( (|Seq#Index_27552| br i_13_1@@0))
 :pattern ( (|Seq#Index_27552| br i_13_1@@0))
)) (and (=> (= (ControlFlow 0 50) (- 0 54)) (forall ((i_13_1@@1 Int) (i_13_2 Int) ) (!  (=> (and (and (and (and (not (= i_13_1@@1 i_13_2)) (and (<= 0 i_13_1@@1) (< i_13_1@@1 len_3))) (and (<= 0 i_13_2) (< i_13_2 len_3))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_27552| br i_13_1@@1) (|Seq#Index_27552| br i_13_2))))
 :qid |stdinbpl.4102:17|
 :skolemid |323|
 :pattern ( (neverTriggered27 i_13_1@@1) (neverTriggered27 i_13_2))
))) (=> (forall ((i_13_1@@2 Int) (i_13_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_13_1@@2 i_13_2@@0)) (and (<= 0 i_13_1@@2) (< i_13_1@@2 len_3))) (and (<= 0 i_13_2@@0) (< i_13_2@@0 len_3))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_27552| br i_13_1@@2) (|Seq#Index_27552| br i_13_2@@0))))
 :qid |stdinbpl.4102:17|
 :skolemid |323|
 :pattern ( (neverTriggered27 i_13_1@@2) (neverTriggered27 i_13_2@@0))
)) (and (=> (= (ControlFlow 0 50) (- 0 53)) (forall ((i_13_1@@3 Int) ) (!  (=> (and (<= 0 i_13_1@@3) (< i_13_1@@3 len_3)) (>= (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@10) (|Seq#Index_27552| br i_13_1@@3) Ref__Integer_value) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.4109:17|
 :skolemid |324|
 :pattern ( (|Seq#Index_27552| br i_13_1@@3))
 :pattern ( (|Seq#Index_27552| br i_13_1@@3))
))) (=> (forall ((i_13_1@@4 Int) ) (!  (=> (and (<= 0 i_13_1@@4) (< i_13_1@@4 len_3)) (>= (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@10) (|Seq#Index_27552| br i_13_1@@4) Ref__Integer_value) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.4109:17|
 :skolemid |324|
 :pattern ( (|Seq#Index_27552| br i_13_1@@4))
 :pattern ( (|Seq#Index_27552| br i_13_1@@4))
)) (=> (forall ((i_13_1@@5 Int) ) (!  (=> (and (and (<= 0 i_13_1@@5) (< i_13_1@@5 len_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange27 (|Seq#Index_27552| br i_13_1@@5)) (= (invRecv27 (|Seq#Index_27552| br i_13_1@@5)) i_13_1@@5)))
 :qid |stdinbpl.4115:22|
 :skolemid |325|
 :pattern ( (|Seq#Index_27552| br i_13_1@@5))
 :pattern ( (|Seq#Index_27552| br i_13_1@@5))
)) (=> (and (forall ((o_9@@20 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv27 o_9@@20)) (< (invRecv27 o_9@@20) len_3)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange27 o_9@@20))) (= (|Seq#Index_27552| br (invRecv27 o_9@@20)) o_9@@20))
 :qid |stdinbpl.4119:22|
 :skolemid |326|
 :pattern ( (invRecv27 o_9@@20))
)) (forall ((o_9@@21 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv27 o_9@@21)) (< (invRecv27 o_9@@21) len_3)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange27 o_9@@21))) (and (= (|Seq#Index_27552| br (invRecv27 o_9@@21)) o_9@@21) (= (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@11) o_9@@21 Ref__Integer_value) (- (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@10) o_9@@21 Ref__Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (<= 0 (invRecv27 o_9@@21)) (< (invRecv27 o_9@@21) len_3)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange27 o_9@@21)))) (= (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@11) o_9@@21 Ref__Integer_value) (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@10) o_9@@21 Ref__Integer_value))))
 :qid |stdinbpl.4125:22|
 :skolemid |327|
 :pattern ( (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@11) o_9@@21 Ref__Integer_value))
))) (=> (and (and (and (and (forall ((o_9@@22 T@Ref) (f_5@@14 T@Field_39050_53) ) (!  (=> true (= (select (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| QPMask@10) o_9@@22 f_5@@14) (select (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| QPMask@11) o_9@@22 f_5@@14)))
 :qid |stdinbpl.4131:29|
 :skolemid |328|
 :pattern ( (select (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| QPMask@11) o_9@@22 f_5@@14))
)) (forall ((o_9@@23 T@Ref) (f_5@@15 T@Field_39063_39064) ) (!  (=> true (= (select (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| QPMask@10) o_9@@23 f_5@@15) (select (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| QPMask@11) o_9@@23 f_5@@15)))
 :qid |stdinbpl.4131:29|
 :skolemid |328|
 :pattern ( (select (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| QPMask@11) o_9@@23 f_5@@15))
))) (forall ((o_9@@24 T@Ref) (f_5@@16 T@Field_45138_3829) ) (!  (=> (not (= f_5@@16 Ref__Integer_value)) (= (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@10) o_9@@24 f_5@@16) (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@11) o_9@@24 f_5@@16)))
 :qid |stdinbpl.4131:29|
 :skolemid |328|
 :pattern ( (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@11) o_9@@24 f_5@@16))
))) (forall ((o_9@@25 T@Ref) (f_5@@17 T@Field_27513_111040) ) (!  (=> true (= (select (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| QPMask@10) o_9@@25 f_5@@17) (select (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| QPMask@11) o_9@@25 f_5@@17)))
 :qid |stdinbpl.4131:29|
 :skolemid |328|
 :pattern ( (select (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| QPMask@11) o_9@@25 f_5@@17))
))) (forall ((o_9@@26 T@Ref) (f_5@@18 T@Field_27513_111173) ) (!  (=> true (= (select (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| QPMask@10) o_9@@26 f_5@@18) (select (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| QPMask@11) o_9@@26 f_5@@18)))
 :qid |stdinbpl.4131:29|
 :skolemid |328|
 :pattern ( (select (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| QPMask@11) o_9@@26 f_5@@18))
))) (and (=> (= (ControlFlow 0 50) (- 0 52)) (= (|Seq#Length_27552| cr) len_3)) (=> (= (|Seq#Length_27552| cr) len_3) (and (=> (= (ControlFlow 0 50) (- 0 51)) (forall ((i_14_1 Int) (i_14_2 Int) ) (!  (=> (and (and (and (and (not (= i_14_1 i_14_2)) (and (<= 0 i_14_1) (< i_14_1 len_3))) (and (<= 0 i_14_2) (< i_14_2 len_3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27552| cr i_14_1) (|Seq#Index_27552| cr i_14_2))))
 :qid |stdinbpl.4145:17|
 :skolemid |329|
 :pattern ( (neverTriggered28 i_14_1) (neverTriggered28 i_14_2))
))) (=> (forall ((i_14_1@@0 Int) (i_14_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_14_1@@0 i_14_2@@0)) (and (<= 0 i_14_1@@0) (< i_14_1@@0 len_3))) (and (<= 0 i_14_2@@0) (< i_14_2@@0 len_3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27552| cr i_14_1@@0) (|Seq#Index_27552| cr i_14_2@@0))))
 :qid |stdinbpl.4145:17|
 :skolemid |329|
 :pattern ( (neverTriggered28 i_14_1@@0) (neverTriggered28 i_14_2@@0))
)) (=> (= (ControlFlow 0 50) (- 0 49)) (forall ((i_14_1@@1 Int) ) (!  (=> (and (<= 0 i_14_1@@1) (< i_14_1@@1 len_3)) (>= (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@11) (|Seq#Index_27552| cr i_14_1@@1) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.4152:17|
 :skolemid |330|
 :pattern ( (|Seq#Index_27552| cr i_14_1@@1))
 :pattern ( (|Seq#Index_27552| cr i_14_1@@1))
))))))))))))))))))))))))))))))
(let ((anon96_Else_correct  (=> (not (and (<= 0 (- (|Seq#Length_27552| ar_1@@27) 1)) (< (- (|Seq#Length_27552| ar_1@@27) 1) len_3))) (=> (and (= Mask@1 QPMask@9) (= (ControlFlow 0 62) 50)) anon64_correct))))
(let ((anon96_Then_correct  (=> (and (and (<= 0 (- (|Seq#Length_27552| ar_1@@27) 1)) (< (- (|Seq#Length_27552| ar_1@@27) 1) len_3)) (= perm@0 (/ (to_real 1) (to_real 2)))) (and (=> (= (ControlFlow 0 60) (- 0 61)) (>= perm@0 NoPerm)) (=> (>= perm@0 NoPerm) (=> (=> (> perm@0 NoPerm) (not (= (|Seq#Index_27552| ar_1@@27 (- (|Seq#Length_27552| ar_1@@27) 1)) null))) (=> (and (and (= Mask@0 (PolymorphicMapType_39011 (store (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@9) (|Seq#Index_27552| ar_1@@27 (- (|Seq#Length_27552| ar_1@@27) 1)) Ref__Integer_value (+ (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@9) (|Seq#Index_27552| ar_1@@27 (- (|Seq#Length_27552| ar_1@@27) 1)) Ref__Integer_value) perm@0)) (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| QPMask@9) (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| QPMask@9) (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| QPMask@9) (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| QPMask@9))) (state ExhaleHeap@0 Mask@0)) (and (= Mask@1 Mask@0) (= (ControlFlow 0 60) 50))) anon64_correct)))))))
(let ((anon62_correct  (and (=> (= (ControlFlow 0 63) (- 0 66)) (forall ((i_20_2 Int) (i_20_3 Int) ) (!  (=> (and (and (and (and (not (= i_20_2 i_20_3)) (and (<= 0 i_20_2) (< i_20_2 len_3))) (and (<= 0 i_20_3) (< i_20_3 len_3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27552| cr i_20_2) (|Seq#Index_27552| cr i_20_3))))
 :qid |stdinbpl.3960:17|
 :skolemid |303|
))) (=> (forall ((i_20_2@@0 Int) (i_20_3@@0 Int) ) (!  (=> (and (and (and (and (not (= i_20_2@@0 i_20_3@@0)) (and (<= 0 i_20_2@@0) (< i_20_2@@0 len_3))) (and (<= 0 i_20_3@@0) (< i_20_3@@0 len_3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27552| cr i_20_2@@0) (|Seq#Index_27552| cr i_20_3@@0))))
 :qid |stdinbpl.3960:17|
 :skolemid |303|
)) (=> (and (and (forall ((i_20_2@@1 Int) ) (!  (=> (and (and (<= 0 i_20_2@@1) (< i_20_2@@1 len_3)) (< NoPerm FullPerm)) (and (qpRange34 (|Seq#Index_27552| cr i_20_2@@1)) (= (invRecv34 (|Seq#Index_27552| cr i_20_2@@1)) i_20_2@@1)))
 :qid |stdinbpl.3966:24|
 :skolemid |304|
 :pattern ( (|Seq#Index_27552| cr i_20_2@@1))
 :pattern ( (|Seq#Index_27552| cr i_20_2@@1))
)) (forall ((o_9@@27 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv34 o_9@@27)) (< (invRecv34 o_9@@27) len_3)) (< NoPerm FullPerm)) (qpRange34 o_9@@27)) (= (|Seq#Index_27552| cr (invRecv34 o_9@@27)) o_9@@27))
 :qid |stdinbpl.3970:24|
 :skolemid |305|
 :pattern ( (invRecv34 o_9@@27))
))) (and (forall ((i_20_2@@2 Int) ) (!  (=> (and (<= 0 i_20_2@@2) (< i_20_2@@2 len_3)) (not (= (|Seq#Index_27552| cr i_20_2@@2) null)))
 :qid |stdinbpl.3976:24|
 :skolemid |306|
 :pattern ( (|Seq#Index_27552| cr i_20_2@@2))
 :pattern ( (|Seq#Index_27552| cr i_20_2@@2))
)) (forall ((o_9@@28 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv34 o_9@@28)) (< (invRecv34 o_9@@28) len_3)) (< NoPerm FullPerm)) (qpRange34 o_9@@28)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_27552| cr (invRecv34 o_9@@28)) o_9@@28)) (= (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@8) o_9@@28 Ref__Integer_value) (+ (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@7) o_9@@28 Ref__Integer_value) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv34 o_9@@28)) (< (invRecv34 o_9@@28) len_3)) (< NoPerm FullPerm)) (qpRange34 o_9@@28))) (= (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@8) o_9@@28 Ref__Integer_value) (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@7) o_9@@28 Ref__Integer_value))))
 :qid |stdinbpl.3982:24|
 :skolemid |307|
 :pattern ( (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@8) o_9@@28 Ref__Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_9@@29 T@Ref) (f_5@@19 T@Field_39050_53) ) (!  (=> true (= (select (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| QPMask@7) o_9@@29 f_5@@19) (select (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| QPMask@8) o_9@@29 f_5@@19)))
 :qid |stdinbpl.3986:31|
 :skolemid |308|
 :pattern ( (select (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| QPMask@7) o_9@@29 f_5@@19))
 :pattern ( (select (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| QPMask@8) o_9@@29 f_5@@19))
)) (forall ((o_9@@30 T@Ref) (f_5@@20 T@Field_39063_39064) ) (!  (=> true (= (select (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| QPMask@7) o_9@@30 f_5@@20) (select (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| QPMask@8) o_9@@30 f_5@@20)))
 :qid |stdinbpl.3986:31|
 :skolemid |308|
 :pattern ( (select (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| QPMask@7) o_9@@30 f_5@@20))
 :pattern ( (select (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| QPMask@8) o_9@@30 f_5@@20))
))) (forall ((o_9@@31 T@Ref) (f_5@@21 T@Field_45138_3829) ) (!  (=> (not (= f_5@@21 Ref__Integer_value)) (= (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@7) o_9@@31 f_5@@21) (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@8) o_9@@31 f_5@@21)))
 :qid |stdinbpl.3986:31|
 :skolemid |308|
 :pattern ( (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@7) o_9@@31 f_5@@21))
 :pattern ( (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@8) o_9@@31 f_5@@21))
))) (forall ((o_9@@32 T@Ref) (f_5@@22 T@Field_27513_111040) ) (!  (=> true (= (select (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| QPMask@7) o_9@@32 f_5@@22) (select (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| QPMask@8) o_9@@32 f_5@@22)))
 :qid |stdinbpl.3986:31|
 :skolemid |308|
 :pattern ( (select (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| QPMask@7) o_9@@32 f_5@@22))
 :pattern ( (select (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| QPMask@8) o_9@@32 f_5@@22))
))) (forall ((o_9@@33 T@Ref) (f_5@@23 T@Field_27513_111173) ) (!  (=> true (= (select (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| QPMask@7) o_9@@33 f_5@@23) (select (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| QPMask@8) o_9@@33 f_5@@23)))
 :qid |stdinbpl.3986:31|
 :skolemid |308|
 :pattern ( (select (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| QPMask@7) o_9@@33 f_5@@23))
 :pattern ( (select (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| QPMask@8) o_9@@33 f_5@@23))
))) (state ExhaleHeap@0 QPMask@8)) (and (=> (= (ControlFlow 0 63) (- 0 65)) (forall ((i_21_1 Int) (i_21_2 Int) ) (!  (=> (and (and (and (and (not (= i_21_1 i_21_2)) (and (<= 0 i_21_1) (< i_21_1 (- len_3 1)))) (and (<= 0 i_21_2) (< i_21_2 (- len_3 1)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_27552| ar_1@@27 i_21_1) (|Seq#Index_27552| ar_1@@27 i_21_2))))
 :qid |stdinbpl.3994:17|
 :skolemid |309|
))) (=> (forall ((i_21_1@@0 Int) (i_21_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_21_1@@0 i_21_2@@0)) (and (<= 0 i_21_1@@0) (< i_21_1@@0 (- len_3 1)))) (and (<= 0 i_21_2@@0) (< i_21_2@@0 (- len_3 1)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_27552| ar_1@@27 i_21_1@@0) (|Seq#Index_27552| ar_1@@27 i_21_2@@0))))
 :qid |stdinbpl.3994:17|
 :skolemid |309|
)) (=> (and (forall ((i_21_1@@1 Int) ) (!  (=> (and (and (<= 0 i_21_1@@1) (< i_21_1@@1 (- len_3 1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange35 (|Seq#Index_27552| ar_1@@27 i_21_1@@1)) (= (invRecv35 (|Seq#Index_27552| ar_1@@27 i_21_1@@1)) i_21_1@@1)))
 :qid |stdinbpl.4000:24|
 :skolemid |310|
 :pattern ( (|Seq#Index_27552| ar_1@@27 i_21_1@@1))
 :pattern ( (|Seq#Index_27552| ar_1@@27 i_21_1@@1))
)) (forall ((o_9@@34 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv35 o_9@@34)) (< (invRecv35 o_9@@34) (- len_3 1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange35 o_9@@34)) (= (|Seq#Index_27552| ar_1@@27 (invRecv35 o_9@@34)) o_9@@34))
 :qid |stdinbpl.4004:24|
 :skolemid |311|
 :pattern ( (invRecv35 o_9@@34))
))) (and (=> (= (ControlFlow 0 63) (- 0 64)) (forall ((i_21_1@@2 Int) ) (!  (=> (and (<= 0 i_21_1@@2) (< i_21_1@@2 (- len_3 1))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4010:17|
 :skolemid |312|
 :pattern ( (|Seq#Index_27552| ar_1@@27 i_21_1@@2))
 :pattern ( (|Seq#Index_27552| ar_1@@27 i_21_1@@2))
))) (=> (forall ((i_21_1@@3 Int) ) (!  (=> (and (<= 0 i_21_1@@3) (< i_21_1@@3 (- len_3 1))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4010:17|
 :skolemid |312|
 :pattern ( (|Seq#Index_27552| ar_1@@27 i_21_1@@3))
 :pattern ( (|Seq#Index_27552| ar_1@@27 i_21_1@@3))
)) (=> (and (forall ((i_21_1@@4 Int) ) (!  (=> (and (and (<= 0 i_21_1@@4) (< i_21_1@@4 (- len_3 1))) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= (|Seq#Index_27552| ar_1@@27 i_21_1@@4) null)))
 :qid |stdinbpl.4016:24|
 :skolemid |313|
 :pattern ( (|Seq#Index_27552| ar_1@@27 i_21_1@@4))
 :pattern ( (|Seq#Index_27552| ar_1@@27 i_21_1@@4))
)) (forall ((o_9@@35 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv35 o_9@@35)) (< (invRecv35 o_9@@35) (- len_3 1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange35 o_9@@35)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (|Seq#Index_27552| ar_1@@27 (invRecv35 o_9@@35)) o_9@@35)) (= (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@9) o_9@@35 Ref__Integer_value) (+ (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@8) o_9@@35 Ref__Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (<= 0 (invRecv35 o_9@@35)) (< (invRecv35 o_9@@35) (- len_3 1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange35 o_9@@35))) (= (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@9) o_9@@35 Ref__Integer_value) (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@8) o_9@@35 Ref__Integer_value))))
 :qid |stdinbpl.4022:24|
 :skolemid |314|
 :pattern ( (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@9) o_9@@35 Ref__Integer_value))
))) (=> (and (and (and (and (and (forall ((o_9@@36 T@Ref) (f_5@@24 T@Field_39050_53) ) (!  (=> true (= (select (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| QPMask@8) o_9@@36 f_5@@24) (select (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| QPMask@9) o_9@@36 f_5@@24)))
 :qid |stdinbpl.4026:31|
 :skolemid |315|
 :pattern ( (select (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| QPMask@8) o_9@@36 f_5@@24))
 :pattern ( (select (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| QPMask@9) o_9@@36 f_5@@24))
)) (forall ((o_9@@37 T@Ref) (f_5@@25 T@Field_39063_39064) ) (!  (=> true (= (select (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| QPMask@8) o_9@@37 f_5@@25) (select (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| QPMask@9) o_9@@37 f_5@@25)))
 :qid |stdinbpl.4026:31|
 :skolemid |315|
 :pattern ( (select (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| QPMask@8) o_9@@37 f_5@@25))
 :pattern ( (select (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| QPMask@9) o_9@@37 f_5@@25))
))) (forall ((o_9@@38 T@Ref) (f_5@@26 T@Field_45138_3829) ) (!  (=> (not (= f_5@@26 Ref__Integer_value)) (= (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@8) o_9@@38 f_5@@26) (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@9) o_9@@38 f_5@@26)))
 :qid |stdinbpl.4026:31|
 :skolemid |315|
 :pattern ( (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@8) o_9@@38 f_5@@26))
 :pattern ( (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@9) o_9@@38 f_5@@26))
))) (forall ((o_9@@39 T@Ref) (f_5@@27 T@Field_27513_111040) ) (!  (=> true (= (select (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| QPMask@8) o_9@@39 f_5@@27) (select (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| QPMask@9) o_9@@39 f_5@@27)))
 :qid |stdinbpl.4026:31|
 :skolemid |315|
 :pattern ( (select (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| QPMask@8) o_9@@39 f_5@@27))
 :pattern ( (select (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| QPMask@9) o_9@@39 f_5@@27))
))) (forall ((o_9@@40 T@Ref) (f_5@@28 T@Field_27513_111173) ) (!  (=> true (= (select (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| QPMask@8) o_9@@40 f_5@@28) (select (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| QPMask@9) o_9@@40 f_5@@28)))
 :qid |stdinbpl.4026:31|
 :skolemid |315|
 :pattern ( (select (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| QPMask@8) o_9@@40 f_5@@28))
 :pattern ( (select (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| QPMask@9) o_9@@40 f_5@@28))
))) (state ExhaleHeap@0 QPMask@9)) (and (=> (= (ControlFlow 0 63) 60) anon96_Then_correct) (=> (= (ControlFlow 0 63) 62) anon96_Else_correct)))))))))))))))
(let ((anon95_Else_correct  (=> (and (<= len_3 0) (= (ControlFlow 0 68) 63)) anon62_correct)))
(let ((anon95_Then_correct  (=> (< 0 len_3) (=> (and (= (|Seq#Length_27552| cr) len_3) (= (ControlFlow 0 67) 63)) anon62_correct))))
(let ((anon60_correct  (and (=> (= (ControlFlow 0 69) (- 0 71)) (forall ((i_19_1 Int) (i_19_2 Int) ) (!  (=> (and (and (and (and (not (= i_19_1 i_19_2)) (and (<= 0 i_19_1) (< i_19_1 len_3))) (and (<= 0 i_19_2) (< i_19_2 len_3))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_27552| br i_19_1) (|Seq#Index_27552| br i_19_2))))
 :qid |stdinbpl.3917:17|
 :skolemid |296|
))) (=> (forall ((i_19_1@@0 Int) (i_19_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_19_1@@0 i_19_2@@0)) (and (<= 0 i_19_1@@0) (< i_19_1@@0 len_3))) (and (<= 0 i_19_2@@0) (< i_19_2@@0 len_3))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_27552| br i_19_1@@0) (|Seq#Index_27552| br i_19_2@@0))))
 :qid |stdinbpl.3917:17|
 :skolemid |296|
)) (=> (and (forall ((i_19_1@@1 Int) ) (!  (=> (and (and (<= 0 i_19_1@@1) (< i_19_1@@1 len_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange33 (|Seq#Index_27552| br i_19_1@@1)) (= (invRecv33 (|Seq#Index_27552| br i_19_1@@1)) i_19_1@@1)))
 :qid |stdinbpl.3923:24|
 :skolemid |297|
 :pattern ( (|Seq#Index_27552| br i_19_1@@1))
 :pattern ( (|Seq#Index_27552| br i_19_1@@1))
)) (forall ((o_9@@41 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv33 o_9@@41)) (< (invRecv33 o_9@@41) len_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange33 o_9@@41)) (= (|Seq#Index_27552| br (invRecv33 o_9@@41)) o_9@@41))
 :qid |stdinbpl.3927:24|
 :skolemid |298|
 :pattern ( (invRecv33 o_9@@41))
))) (and (=> (= (ControlFlow 0 69) (- 0 70)) (forall ((i_19_1@@2 Int) ) (!  (=> (and (<= 0 i_19_1@@2) (< i_19_1@@2 len_3)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3933:17|
 :skolemid |299|
 :pattern ( (|Seq#Index_27552| br i_19_1@@2))
 :pattern ( (|Seq#Index_27552| br i_19_1@@2))
))) (=> (forall ((i_19_1@@3 Int) ) (!  (=> (and (<= 0 i_19_1@@3) (< i_19_1@@3 len_3)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3933:17|
 :skolemid |299|
 :pattern ( (|Seq#Index_27552| br i_19_1@@3))
 :pattern ( (|Seq#Index_27552| br i_19_1@@3))
)) (=> (and (forall ((i_19_1@@4 Int) ) (!  (=> (and (and (<= 0 i_19_1@@4) (< i_19_1@@4 len_3)) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= (|Seq#Index_27552| br i_19_1@@4) null)))
 :qid |stdinbpl.3939:24|
 :skolemid |300|
 :pattern ( (|Seq#Index_27552| br i_19_1@@4))
 :pattern ( (|Seq#Index_27552| br i_19_1@@4))
)) (forall ((o_9@@42 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv33 o_9@@42)) (< (invRecv33 o_9@@42) len_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange33 o_9@@42)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (|Seq#Index_27552| br (invRecv33 o_9@@42)) o_9@@42)) (= (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@7) o_9@@42 Ref__Integer_value) (+ (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@6) o_9@@42 Ref__Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (<= 0 (invRecv33 o_9@@42)) (< (invRecv33 o_9@@42) len_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange33 o_9@@42))) (= (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@7) o_9@@42 Ref__Integer_value) (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@6) o_9@@42 Ref__Integer_value))))
 :qid |stdinbpl.3945:24|
 :skolemid |301|
 :pattern ( (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@7) o_9@@42 Ref__Integer_value))
))) (=> (and (and (and (and (and (forall ((o_9@@43 T@Ref) (f_5@@29 T@Field_39050_53) ) (!  (=> true (= (select (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| QPMask@6) o_9@@43 f_5@@29) (select (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| QPMask@7) o_9@@43 f_5@@29)))
 :qid |stdinbpl.3949:31|
 :skolemid |302|
 :pattern ( (select (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| QPMask@6) o_9@@43 f_5@@29))
 :pattern ( (select (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| QPMask@7) o_9@@43 f_5@@29))
)) (forall ((o_9@@44 T@Ref) (f_5@@30 T@Field_39063_39064) ) (!  (=> true (= (select (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| QPMask@6) o_9@@44 f_5@@30) (select (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| QPMask@7) o_9@@44 f_5@@30)))
 :qid |stdinbpl.3949:31|
 :skolemid |302|
 :pattern ( (select (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| QPMask@6) o_9@@44 f_5@@30))
 :pattern ( (select (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| QPMask@7) o_9@@44 f_5@@30))
))) (forall ((o_9@@45 T@Ref) (f_5@@31 T@Field_45138_3829) ) (!  (=> (not (= f_5@@31 Ref__Integer_value)) (= (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@6) o_9@@45 f_5@@31) (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@7) o_9@@45 f_5@@31)))
 :qid |stdinbpl.3949:31|
 :skolemid |302|
 :pattern ( (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@6) o_9@@45 f_5@@31))
 :pattern ( (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@7) o_9@@45 f_5@@31))
))) (forall ((o_9@@46 T@Ref) (f_5@@32 T@Field_27513_111040) ) (!  (=> true (= (select (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| QPMask@6) o_9@@46 f_5@@32) (select (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| QPMask@7) o_9@@46 f_5@@32)))
 :qid |stdinbpl.3949:31|
 :skolemid |302|
 :pattern ( (select (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| QPMask@6) o_9@@46 f_5@@32))
 :pattern ( (select (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| QPMask@7) o_9@@46 f_5@@32))
))) (forall ((o_9@@47 T@Ref) (f_5@@33 T@Field_27513_111173) ) (!  (=> true (= (select (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| QPMask@6) o_9@@47 f_5@@33) (select (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| QPMask@7) o_9@@47 f_5@@33)))
 :qid |stdinbpl.3949:31|
 :skolemid |302|
 :pattern ( (select (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| QPMask@6) o_9@@47 f_5@@33))
 :pattern ( (select (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| QPMask@7) o_9@@47 f_5@@33))
))) (state ExhaleHeap@0 QPMask@7)) (and (=> (= (ControlFlow 0 69) 67) anon95_Then_correct) (=> (= (ControlFlow 0 69) 68) anon95_Else_correct)))))))))))
(let ((anon94_Else_correct  (=> (and (<= len_3 0) (= (ControlFlow 0 73) 69)) anon60_correct)))
(let ((anon94_Then_correct  (=> (< 0 len_3) (=> (and (= (|Seq#Length_27552| br) len_3) (= (ControlFlow 0 72) 69)) anon60_correct))))
(let ((anon58_correct  (and (=> (= (ControlFlow 0 74) (- 0 76)) (forall ((i_18_1 Int) (i_18_2 Int) ) (!  (=> (and (and (and (and (not (= i_18_1 i_18_2)) (and (<= 0 i_18_1) (< i_18_1 len_3))) (and (<= 0 i_18_2) (< i_18_2 len_3))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_27552| ar_1@@27 i_18_1) (|Seq#Index_27552| ar_1@@27 i_18_2))))
 :qid |stdinbpl.3874:17|
 :skolemid |289|
))) (=> (forall ((i_18_1@@0 Int) (i_18_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_18_1@@0 i_18_2@@0)) (and (<= 0 i_18_1@@0) (< i_18_1@@0 len_3))) (and (<= 0 i_18_2@@0) (< i_18_2@@0 len_3))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_27552| ar_1@@27 i_18_1@@0) (|Seq#Index_27552| ar_1@@27 i_18_2@@0))))
 :qid |stdinbpl.3874:17|
 :skolemid |289|
)) (=> (and (forall ((i_18_1@@1 Int) ) (!  (=> (and (and (<= 0 i_18_1@@1) (< i_18_1@@1 len_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange32 (|Seq#Index_27552| ar_1@@27 i_18_1@@1)) (= (invRecv32 (|Seq#Index_27552| ar_1@@27 i_18_1@@1)) i_18_1@@1)))
 :qid |stdinbpl.3880:24|
 :skolemid |290|
 :pattern ( (|Seq#Index_27552| ar_1@@27 i_18_1@@1))
 :pattern ( (|Seq#Index_27552| ar_1@@27 i_18_1@@1))
)) (forall ((o_9@@48 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv32 o_9@@48)) (< (invRecv32 o_9@@48) len_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange32 o_9@@48)) (= (|Seq#Index_27552| ar_1@@27 (invRecv32 o_9@@48)) o_9@@48))
 :qid |stdinbpl.3884:24|
 :skolemid |291|
 :pattern ( (invRecv32 o_9@@48))
))) (and (=> (= (ControlFlow 0 74) (- 0 75)) (forall ((i_18_1@@2 Int) ) (!  (=> (and (<= 0 i_18_1@@2) (< i_18_1@@2 len_3)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3890:17|
 :skolemid |292|
 :pattern ( (|Seq#Index_27552| ar_1@@27 i_18_1@@2))
 :pattern ( (|Seq#Index_27552| ar_1@@27 i_18_1@@2))
))) (=> (forall ((i_18_1@@3 Int) ) (!  (=> (and (<= 0 i_18_1@@3) (< i_18_1@@3 len_3)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3890:17|
 :skolemid |292|
 :pattern ( (|Seq#Index_27552| ar_1@@27 i_18_1@@3))
 :pattern ( (|Seq#Index_27552| ar_1@@27 i_18_1@@3))
)) (=> (and (forall ((i_18_1@@4 Int) ) (!  (=> (and (and (<= 0 i_18_1@@4) (< i_18_1@@4 len_3)) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= (|Seq#Index_27552| ar_1@@27 i_18_1@@4) null)))
 :qid |stdinbpl.3896:24|
 :skolemid |293|
 :pattern ( (|Seq#Index_27552| ar_1@@27 i_18_1@@4))
 :pattern ( (|Seq#Index_27552| ar_1@@27 i_18_1@@4))
)) (forall ((o_9@@49 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv32 o_9@@49)) (< (invRecv32 o_9@@49) len_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange32 o_9@@49)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (|Seq#Index_27552| ar_1@@27 (invRecv32 o_9@@49)) o_9@@49)) (= (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@6) o_9@@49 Ref__Integer_value) (+ (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@5) o_9@@49 Ref__Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (<= 0 (invRecv32 o_9@@49)) (< (invRecv32 o_9@@49) len_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange32 o_9@@49))) (= (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@6) o_9@@49 Ref__Integer_value) (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@5) o_9@@49 Ref__Integer_value))))
 :qid |stdinbpl.3902:24|
 :skolemid |294|
 :pattern ( (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@6) o_9@@49 Ref__Integer_value))
))) (=> (and (and (and (and (and (forall ((o_9@@50 T@Ref) (f_5@@34 T@Field_39050_53) ) (!  (=> true (= (select (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| QPMask@5) o_9@@50 f_5@@34) (select (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| QPMask@6) o_9@@50 f_5@@34)))
 :qid |stdinbpl.3906:31|
 :skolemid |295|
 :pattern ( (select (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| QPMask@5) o_9@@50 f_5@@34))
 :pattern ( (select (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| QPMask@6) o_9@@50 f_5@@34))
)) (forall ((o_9@@51 T@Ref) (f_5@@35 T@Field_39063_39064) ) (!  (=> true (= (select (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| QPMask@5) o_9@@51 f_5@@35) (select (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| QPMask@6) o_9@@51 f_5@@35)))
 :qid |stdinbpl.3906:31|
 :skolemid |295|
 :pattern ( (select (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| QPMask@5) o_9@@51 f_5@@35))
 :pattern ( (select (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| QPMask@6) o_9@@51 f_5@@35))
))) (forall ((o_9@@52 T@Ref) (f_5@@36 T@Field_45138_3829) ) (!  (=> (not (= f_5@@36 Ref__Integer_value)) (= (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@5) o_9@@52 f_5@@36) (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@6) o_9@@52 f_5@@36)))
 :qid |stdinbpl.3906:31|
 :skolemid |295|
 :pattern ( (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@5) o_9@@52 f_5@@36))
 :pattern ( (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@6) o_9@@52 f_5@@36))
))) (forall ((o_9@@53 T@Ref) (f_5@@37 T@Field_27513_111040) ) (!  (=> true (= (select (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| QPMask@5) o_9@@53 f_5@@37) (select (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| QPMask@6) o_9@@53 f_5@@37)))
 :qid |stdinbpl.3906:31|
 :skolemid |295|
 :pattern ( (select (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| QPMask@5) o_9@@53 f_5@@37))
 :pattern ( (select (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| QPMask@6) o_9@@53 f_5@@37))
))) (forall ((o_9@@54 T@Ref) (f_5@@38 T@Field_27513_111173) ) (!  (=> true (= (select (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| QPMask@5) o_9@@54 f_5@@38) (select (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| QPMask@6) o_9@@54 f_5@@38)))
 :qid |stdinbpl.3906:31|
 :skolemid |295|
 :pattern ( (select (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| QPMask@5) o_9@@54 f_5@@38))
 :pattern ( (select (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| QPMask@6) o_9@@54 f_5@@38))
))) (state ExhaleHeap@0 QPMask@6)) (and (=> (= (ControlFlow 0 74) 72) anon94_Then_correct) (=> (= (ControlFlow 0 74) 73) anon94_Else_correct)))))))))))
(let ((anon93_Else_correct  (=> (and (<= len_3 0) (= (ControlFlow 0 78) 74)) anon58_correct)))
(let ((anon93_Then_correct  (=> (< 0 len_3) (=> (and (= (|Seq#Length_27552| ar_1@@27) len_3) (= (ControlFlow 0 77) 74)) anon58_correct))))
(let ((anon91_Else_correct  (=> (forall ((j_11_1_1 Int) (k_11_1_1 Int) ) (!  (=> (and (<= 0 j_11_1_1) (and (< j_11_1_1 (|Seq#Length_27552| cr)) (and (<= 0 k_11_1_1) (and (< k_11_1_1 (|Seq#Length_27552| cr)) (not (= j_11_1_1 k_11_1_1)))))) (not (= (|Seq#Index_27552| cr j_11_1_1) (|Seq#Index_27552| cr k_11_1_1))))
 :qid |stdinbpl.3818:22|
 :skolemid |282|
 :pattern ( (|Seq#Index_27552| cr j_11_1_1) (|Seq#Index_27552| cr k_11_1_1))
)) (and (=> (= (ControlFlow 0 79) (- 0 81)) (forall ((i_17_1 Int) (i_17_2 Int) ) (!  (=> (and (and (and (and (not (= i_17_1 i_17_2)) (and (<= 0 i_17_1) (< i_17_1 len_3))) (and (<= 0 i_17_2) (< i_17_2 len_3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27552| cr i_17_1) (|Seq#Index_27552| cr i_17_2))))
 :qid |stdinbpl.3829:19|
 :skolemid |283|
 :pattern ( (neverTriggered31 i_17_1) (neverTriggered31 i_17_2))
))) (=> (forall ((i_17_1@@0 Int) (i_17_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_17_1@@0 i_17_2@@0)) (and (<= 0 i_17_1@@0) (< i_17_1@@0 len_3))) (and (<= 0 i_17_2@@0) (< i_17_2@@0 len_3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27552| cr i_17_1@@0) (|Seq#Index_27552| cr i_17_2@@0))))
 :qid |stdinbpl.3829:19|
 :skolemid |283|
 :pattern ( (neverTriggered31 i_17_1@@0) (neverTriggered31 i_17_2@@0))
)) (and (=> (= (ControlFlow 0 79) (- 0 80)) (forall ((i_17_1@@1 Int) ) (!  (=> (and (<= 0 i_17_1@@1) (< i_17_1@@1 len_3)) (>= (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@4) (|Seq#Index_27552| cr i_17_1@@1) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.3836:19|
 :skolemid |284|
 :pattern ( (|Seq#Index_27552| cr i_17_1@@1))
 :pattern ( (|Seq#Index_27552| cr i_17_1@@1))
))) (=> (forall ((i_17_1@@2 Int) ) (!  (=> (and (<= 0 i_17_1@@2) (< i_17_1@@2 len_3)) (>= (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@4) (|Seq#Index_27552| cr i_17_1@@2) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.3836:19|
 :skolemid |284|
 :pattern ( (|Seq#Index_27552| cr i_17_1@@2))
 :pattern ( (|Seq#Index_27552| cr i_17_1@@2))
)) (=> (forall ((i_17_1@@3 Int) ) (!  (=> (and (and (<= 0 i_17_1@@3) (< i_17_1@@3 len_3)) (< NoPerm FullPerm)) (and (qpRange31 (|Seq#Index_27552| cr i_17_1@@3)) (= (invRecv31 (|Seq#Index_27552| cr i_17_1@@3)) i_17_1@@3)))
 :qid |stdinbpl.3842:24|
 :skolemid |285|
 :pattern ( (|Seq#Index_27552| cr i_17_1@@3))
 :pattern ( (|Seq#Index_27552| cr i_17_1@@3))
)) (=> (and (forall ((o_9@@55 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv31 o_9@@55)) (< (invRecv31 o_9@@55) len_3)) (and (< NoPerm FullPerm) (qpRange31 o_9@@55))) (= (|Seq#Index_27552| cr (invRecv31 o_9@@55)) o_9@@55))
 :qid |stdinbpl.3846:24|
 :skolemid |286|
 :pattern ( (invRecv31 o_9@@55))
)) (forall ((o_9@@56 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv31 o_9@@56)) (< (invRecv31 o_9@@56) len_3)) (and (< NoPerm FullPerm) (qpRange31 o_9@@56))) (and (= (|Seq#Index_27552| cr (invRecv31 o_9@@56)) o_9@@56) (= (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@5) o_9@@56 Ref__Integer_value) (- (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@4) o_9@@56 Ref__Integer_value) FullPerm)))) (=> (not (and (and (<= 0 (invRecv31 o_9@@56)) (< (invRecv31 o_9@@56) len_3)) (and (< NoPerm FullPerm) (qpRange31 o_9@@56)))) (= (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@5) o_9@@56 Ref__Integer_value) (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@4) o_9@@56 Ref__Integer_value))))
 :qid |stdinbpl.3852:24|
 :skolemid |287|
 :pattern ( (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@5) o_9@@56 Ref__Integer_value))
))) (=> (and (and (and (and (and (forall ((o_9@@57 T@Ref) (f_5@@39 T@Field_39050_53) ) (!  (=> true (= (select (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| QPMask@4) o_9@@57 f_5@@39) (select (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| QPMask@5) o_9@@57 f_5@@39)))
 :qid |stdinbpl.3858:31|
 :skolemid |288|
 :pattern ( (select (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| QPMask@5) o_9@@57 f_5@@39))
)) (forall ((o_9@@58 T@Ref) (f_5@@40 T@Field_39063_39064) ) (!  (=> true (= (select (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| QPMask@4) o_9@@58 f_5@@40) (select (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| QPMask@5) o_9@@58 f_5@@40)))
 :qid |stdinbpl.3858:31|
 :skolemid |288|
 :pattern ( (select (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| QPMask@5) o_9@@58 f_5@@40))
))) (forall ((o_9@@59 T@Ref) (f_5@@41 T@Field_45138_3829) ) (!  (=> (not (= f_5@@41 Ref__Integer_value)) (= (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@4) o_9@@59 f_5@@41) (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@5) o_9@@59 f_5@@41)))
 :qid |stdinbpl.3858:31|
 :skolemid |288|
 :pattern ( (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@5) o_9@@59 f_5@@41))
))) (forall ((o_9@@60 T@Ref) (f_5@@42 T@Field_27513_111040) ) (!  (=> true (= (select (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| QPMask@4) o_9@@60 f_5@@42) (select (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| QPMask@5) o_9@@60 f_5@@42)))
 :qid |stdinbpl.3858:31|
 :skolemid |288|
 :pattern ( (select (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| QPMask@5) o_9@@60 f_5@@42))
))) (forall ((o_9@@61 T@Ref) (f_5@@43 T@Field_27513_111173) ) (!  (=> true (= (select (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| QPMask@4) o_9@@61 f_5@@43) (select (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| QPMask@5) o_9@@61 f_5@@43)))
 :qid |stdinbpl.3858:31|
 :skolemid |288|
 :pattern ( (select (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| QPMask@5) o_9@@61 f_5@@43))
))) (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@0 QPMask@5)) (and (=> (= (ControlFlow 0 79) 77) anon93_Then_correct) (=> (= (ControlFlow 0 79) 78) anon93_Else_correct))))))))))))
(let ((anon55_correct true))
(let ((anon92_Else_correct  (=> (and (not (and (<= 0 j_10_2) (and (< j_10_2 (|Seq#Length_27552| cr)) (and (<= 0 k_10) (and (< k_10 (|Seq#Length_27552| cr)) (not (= j_10_2 k_10))))))) (= (ControlFlow 0 48) 45)) anon55_correct)))
(let ((anon92_Then_correct  (=> (and (<= 0 j_10_2) (and (< j_10_2 (|Seq#Length_27552| cr)) (and (<= 0 k_10) (and (< k_10 (|Seq#Length_27552| cr)) (not (= j_10_2 k_10)))))) (and (=> (= (ControlFlow 0 46) (- 0 47)) (not (= (|Seq#Index_27552| cr j_10_2) (|Seq#Index_27552| cr k_10)))) (=> (not (= (|Seq#Index_27552| cr j_10_2) (|Seq#Index_27552| cr k_10))) (=> (= (ControlFlow 0 46) 45) anon55_correct))))))
(let ((anon90_Else_correct  (=> (<= len_3 0) (and (and (=> (= (ControlFlow 0 84) 79) anon91_Else_correct) (=> (= (ControlFlow 0 84) 46) anon92_Then_correct)) (=> (= (ControlFlow 0 84) 48) anon92_Else_correct)))))
(let ((anon90_Then_correct  (=> (< 0 len_3) (and (=> (= (ControlFlow 0 82) (- 0 83)) (= (|Seq#Length_27552| cr) len_3)) (=> (= (|Seq#Length_27552| cr) len_3) (and (and (=> (= (ControlFlow 0 82) 79) anon91_Else_correct) (=> (= (ControlFlow 0 82) 46) anon92_Then_correct)) (=> (= (ControlFlow 0 82) 48) anon92_Else_correct)))))))
(let ((anon88_Else_correct  (=> (forall ((j_9_1_1 Int) (k_9_1_1 Int) ) (!  (=> (and (<= 0 j_9_1_1) (and (< j_9_1_1 (|Seq#Length_27552| br)) (and (<= 0 k_9_1_1) (and (< k_9_1_1 (|Seq#Length_27552| br)) (not (= j_9_1_1 k_9_1_1)))))) (not (= (|Seq#Index_27552| br j_9_1_1) (|Seq#Index_27552| br k_9_1_1))))
 :qid |stdinbpl.3758:22|
 :skolemid |274|
 :pattern ( (|Seq#Index_27552| br j_9_1_1) (|Seq#Index_27552| br k_9_1_1))
)) (and (=> (= (ControlFlow 0 85) (- 0 88)) (forall ((i_16_1 Int) ) (!  (=> (and (and (<= 0 i_16_1) (< i_16_1 len_3)) (dummyFunction_4136 (select (|PolymorphicMapType_38990_27513_3829#PolymorphicMapType_38990| Heap@@41) (|Seq#Index_27552| br i_16_1) Ref__Integer_value))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3766:19|
 :skolemid |275|
 :pattern ( (|Seq#Index_27552| br i_16_1))
 :pattern ( (|Seq#Index_27552| br i_16_1))
))) (=> (forall ((i_16_1@@0 Int) ) (!  (=> (and (and (<= 0 i_16_1@@0) (< i_16_1@@0 len_3)) (dummyFunction_4136 (select (|PolymorphicMapType_38990_27513_3829#PolymorphicMapType_38990| Heap@@41) (|Seq#Index_27552| br i_16_1@@0) Ref__Integer_value))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3766:19|
 :skolemid |275|
 :pattern ( (|Seq#Index_27552| br i_16_1@@0))
 :pattern ( (|Seq#Index_27552| br i_16_1@@0))
)) (and (=> (= (ControlFlow 0 85) (- 0 87)) (forall ((i_16_1@@1 Int) (i_16_2 Int) ) (!  (=> (and (and (and (and (not (= i_16_1@@1 i_16_2)) (and (<= 0 i_16_1@@1) (< i_16_1@@1 len_3))) (and (<= 0 i_16_2) (< i_16_2 len_3))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_27552| br i_16_1@@1) (|Seq#Index_27552| br i_16_2))))
 :qid |stdinbpl.3773:19|
 :skolemid |276|
 :pattern ( (neverTriggered30 i_16_1@@1) (neverTriggered30 i_16_2))
))) (=> (forall ((i_16_1@@2 Int) (i_16_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_16_1@@2 i_16_2@@0)) (and (<= 0 i_16_1@@2) (< i_16_1@@2 len_3))) (and (<= 0 i_16_2@@0) (< i_16_2@@0 len_3))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_27552| br i_16_1@@2) (|Seq#Index_27552| br i_16_2@@0))))
 :qid |stdinbpl.3773:19|
 :skolemid |276|
 :pattern ( (neverTriggered30 i_16_1@@2) (neverTriggered30 i_16_2@@0))
)) (and (=> (= (ControlFlow 0 85) (- 0 86)) (forall ((i_16_1@@3 Int) ) (!  (=> (and (<= 0 i_16_1@@3) (< i_16_1@@3 len_3)) (>= (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@3) (|Seq#Index_27552| br i_16_1@@3) Ref__Integer_value) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.3780:19|
 :skolemid |277|
 :pattern ( (|Seq#Index_27552| br i_16_1@@3))
 :pattern ( (|Seq#Index_27552| br i_16_1@@3))
))) (=> (forall ((i_16_1@@4 Int) ) (!  (=> (and (<= 0 i_16_1@@4) (< i_16_1@@4 len_3)) (>= (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@3) (|Seq#Index_27552| br i_16_1@@4) Ref__Integer_value) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.3780:19|
 :skolemid |277|
 :pattern ( (|Seq#Index_27552| br i_16_1@@4))
 :pattern ( (|Seq#Index_27552| br i_16_1@@4))
)) (=> (forall ((i_16_1@@5 Int) ) (!  (=> (and (and (<= 0 i_16_1@@5) (< i_16_1@@5 len_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange30 (|Seq#Index_27552| br i_16_1@@5)) (= (invRecv30 (|Seq#Index_27552| br i_16_1@@5)) i_16_1@@5)))
 :qid |stdinbpl.3786:24|
 :skolemid |278|
 :pattern ( (|Seq#Index_27552| br i_16_1@@5))
 :pattern ( (|Seq#Index_27552| br i_16_1@@5))
)) (=> (and (forall ((o_9@@62 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv30 o_9@@62)) (< (invRecv30 o_9@@62) len_3)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange30 o_9@@62))) (= (|Seq#Index_27552| br (invRecv30 o_9@@62)) o_9@@62))
 :qid |stdinbpl.3790:24|
 :skolemid |279|
 :pattern ( (invRecv30 o_9@@62))
)) (forall ((o_9@@63 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv30 o_9@@63)) (< (invRecv30 o_9@@63) len_3)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange30 o_9@@63))) (and (= (|Seq#Index_27552| br (invRecv30 o_9@@63)) o_9@@63) (= (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@4) o_9@@63 Ref__Integer_value) (- (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@3) o_9@@63 Ref__Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (<= 0 (invRecv30 o_9@@63)) (< (invRecv30 o_9@@63) len_3)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange30 o_9@@63)))) (= (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@4) o_9@@63 Ref__Integer_value) (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@3) o_9@@63 Ref__Integer_value))))
 :qid |stdinbpl.3796:24|
 :skolemid |280|
 :pattern ( (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@4) o_9@@63 Ref__Integer_value))
))) (=> (and (and (and (and (forall ((o_9@@64 T@Ref) (f_5@@44 T@Field_39050_53) ) (!  (=> true (= (select (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| QPMask@3) o_9@@64 f_5@@44) (select (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| QPMask@4) o_9@@64 f_5@@44)))
 :qid |stdinbpl.3802:31|
 :skolemid |281|
 :pattern ( (select (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| QPMask@4) o_9@@64 f_5@@44))
)) (forall ((o_9@@65 T@Ref) (f_5@@45 T@Field_39063_39064) ) (!  (=> true (= (select (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| QPMask@3) o_9@@65 f_5@@45) (select (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| QPMask@4) o_9@@65 f_5@@45)))
 :qid |stdinbpl.3802:31|
 :skolemid |281|
 :pattern ( (select (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| QPMask@4) o_9@@65 f_5@@45))
))) (forall ((o_9@@66 T@Ref) (f_5@@46 T@Field_45138_3829) ) (!  (=> (not (= f_5@@46 Ref__Integer_value)) (= (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@3) o_9@@66 f_5@@46) (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@4) o_9@@66 f_5@@46)))
 :qid |stdinbpl.3802:31|
 :skolemid |281|
 :pattern ( (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@4) o_9@@66 f_5@@46))
))) (forall ((o_9@@67 T@Ref) (f_5@@47 T@Field_27513_111040) ) (!  (=> true (= (select (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| QPMask@3) o_9@@67 f_5@@47) (select (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| QPMask@4) o_9@@67 f_5@@47)))
 :qid |stdinbpl.3802:31|
 :skolemid |281|
 :pattern ( (select (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| QPMask@4) o_9@@67 f_5@@47))
))) (forall ((o_9@@68 T@Ref) (f_5@@48 T@Field_27513_111173) ) (!  (=> true (= (select (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| QPMask@3) o_9@@68 f_5@@48) (select (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| QPMask@4) o_9@@68 f_5@@48)))
 :qid |stdinbpl.3802:31|
 :skolemid |281|
 :pattern ( (select (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| QPMask@4) o_9@@68 f_5@@48))
))) (and (=> (= (ControlFlow 0 85) 82) anon90_Then_correct) (=> (= (ControlFlow 0 85) 84) anon90_Else_correct))))))))))))))
(let ((anon49_correct true))
(let ((anon89_Else_correct  (=> (and (not (and (<= 0 j_8_2) (and (< j_8_2 (|Seq#Length_27552| br)) (and (<= 0 k_8) (and (< k_8 (|Seq#Length_27552| br)) (not (= j_8_2 k_8))))))) (= (ControlFlow 0 44) 41)) anon49_correct)))
(let ((anon89_Then_correct  (=> (and (<= 0 j_8_2) (and (< j_8_2 (|Seq#Length_27552| br)) (and (<= 0 k_8) (and (< k_8 (|Seq#Length_27552| br)) (not (= j_8_2 k_8)))))) (and (=> (= (ControlFlow 0 42) (- 0 43)) (not (= (|Seq#Index_27552| br j_8_2) (|Seq#Index_27552| br k_8)))) (=> (not (= (|Seq#Index_27552| br j_8_2) (|Seq#Index_27552| br k_8))) (=> (= (ControlFlow 0 42) 41) anon49_correct))))))
(let ((anon87_Else_correct  (=> (<= len_3 0) (and (and (=> (= (ControlFlow 0 91) 85) anon88_Else_correct) (=> (= (ControlFlow 0 91) 42) anon89_Then_correct)) (=> (= (ControlFlow 0 91) 44) anon89_Else_correct)))))
(let ((anon87_Then_correct  (=> (< 0 len_3) (and (=> (= (ControlFlow 0 89) (- 0 90)) (= (|Seq#Length_27552| br) len_3)) (=> (= (|Seq#Length_27552| br) len_3) (and (and (=> (= (ControlFlow 0 89) 85) anon88_Else_correct) (=> (= (ControlFlow 0 89) 42) anon89_Then_correct)) (=> (= (ControlFlow 0 89) 44) anon89_Else_correct)))))))
(let ((anon85_Else_correct  (=> (forall ((j_7_1_1 Int) (k_7_1_1 Int) ) (!  (=> (and (<= 0 j_7_1_1) (and (< j_7_1_1 (|Seq#Length_27552| ar_1@@27)) (and (<= 0 k_7_1_1) (and (< k_7_1_1 (|Seq#Length_27552| ar_1@@27)) (not (= j_7_1_1 k_7_1_1)))))) (not (= (|Seq#Index_27552| ar_1@@27 j_7_1_1) (|Seq#Index_27552| ar_1@@27 k_7_1_1))))
 :qid |stdinbpl.3702:22|
 :skolemid |267|
 :pattern ( (|Seq#Index_27552| ar_1@@27 j_7_1_1) (|Seq#Index_27552| ar_1@@27 k_7_1_1))
)) (and (=> (= (ControlFlow 0 92) (- 0 94)) (forall ((i_15_1 Int) (i_15_2 Int) ) (!  (=> (and (and (and (and (not (= i_15_1 i_15_2)) (and (<= 0 i_15_1) (< i_15_1 len_3))) (and (<= 0 i_15_2) (< i_15_2 len_3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27552| ar_1@@27 i_15_1) (|Seq#Index_27552| ar_1@@27 i_15_2))))
 :qid |stdinbpl.3713:19|
 :skolemid |268|
 :pattern ( (neverTriggered29 i_15_1) (neverTriggered29 i_15_2))
))) (=> (forall ((i_15_1@@0 Int) (i_15_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_15_1@@0 i_15_2@@0)) (and (<= 0 i_15_1@@0) (< i_15_1@@0 len_3))) (and (<= 0 i_15_2@@0) (< i_15_2@@0 len_3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27552| ar_1@@27 i_15_1@@0) (|Seq#Index_27552| ar_1@@27 i_15_2@@0))))
 :qid |stdinbpl.3713:19|
 :skolemid |268|
 :pattern ( (neverTriggered29 i_15_1@@0) (neverTriggered29 i_15_2@@0))
)) (and (=> (= (ControlFlow 0 92) (- 0 93)) (forall ((i_15_1@@1 Int) ) (!  (=> (and (<= 0 i_15_1@@1) (< i_15_1@@1 len_3)) (>= (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@2) (|Seq#Index_27552| ar_1@@27 i_15_1@@1) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.3720:19|
 :skolemid |269|
 :pattern ( (|Seq#Index_27552| ar_1@@27 i_15_1@@1))
 :pattern ( (|Seq#Index_27552| ar_1@@27 i_15_1@@1))
))) (=> (forall ((i_15_1@@2 Int) ) (!  (=> (and (<= 0 i_15_1@@2) (< i_15_1@@2 len_3)) (>= (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@2) (|Seq#Index_27552| ar_1@@27 i_15_1@@2) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.3720:19|
 :skolemid |269|
 :pattern ( (|Seq#Index_27552| ar_1@@27 i_15_1@@2))
 :pattern ( (|Seq#Index_27552| ar_1@@27 i_15_1@@2))
)) (=> (forall ((i_15_1@@3 Int) ) (!  (=> (and (and (<= 0 i_15_1@@3) (< i_15_1@@3 len_3)) (< NoPerm FullPerm)) (and (qpRange29 (|Seq#Index_27552| ar_1@@27 i_15_1@@3)) (= (invRecv29 (|Seq#Index_27552| ar_1@@27 i_15_1@@3)) i_15_1@@3)))
 :qid |stdinbpl.3726:24|
 :skolemid |270|
 :pattern ( (|Seq#Index_27552| ar_1@@27 i_15_1@@3))
 :pattern ( (|Seq#Index_27552| ar_1@@27 i_15_1@@3))
)) (=> (and (forall ((o_9@@69 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv29 o_9@@69)) (< (invRecv29 o_9@@69) len_3)) (and (< NoPerm FullPerm) (qpRange29 o_9@@69))) (= (|Seq#Index_27552| ar_1@@27 (invRecv29 o_9@@69)) o_9@@69))
 :qid |stdinbpl.3730:24|
 :skolemid |271|
 :pattern ( (invRecv29 o_9@@69))
)) (forall ((o_9@@70 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv29 o_9@@70)) (< (invRecv29 o_9@@70) len_3)) (and (< NoPerm FullPerm) (qpRange29 o_9@@70))) (and (= (|Seq#Index_27552| ar_1@@27 (invRecv29 o_9@@70)) o_9@@70) (= (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@3) o_9@@70 Ref__Integer_value) (- (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@2) o_9@@70 Ref__Integer_value) FullPerm)))) (=> (not (and (and (<= 0 (invRecv29 o_9@@70)) (< (invRecv29 o_9@@70) len_3)) (and (< NoPerm FullPerm) (qpRange29 o_9@@70)))) (= (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@3) o_9@@70 Ref__Integer_value) (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@2) o_9@@70 Ref__Integer_value))))
 :qid |stdinbpl.3736:24|
 :skolemid |272|
 :pattern ( (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@3) o_9@@70 Ref__Integer_value))
))) (=> (and (and (and (and (forall ((o_9@@71 T@Ref) (f_5@@49 T@Field_39050_53) ) (!  (=> true (= (select (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| QPMask@2) o_9@@71 f_5@@49) (select (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| QPMask@3) o_9@@71 f_5@@49)))
 :qid |stdinbpl.3742:31|
 :skolemid |273|
 :pattern ( (select (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| QPMask@3) o_9@@71 f_5@@49))
)) (forall ((o_9@@72 T@Ref) (f_5@@50 T@Field_39063_39064) ) (!  (=> true (= (select (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| QPMask@2) o_9@@72 f_5@@50) (select (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| QPMask@3) o_9@@72 f_5@@50)))
 :qid |stdinbpl.3742:31|
 :skolemid |273|
 :pattern ( (select (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| QPMask@3) o_9@@72 f_5@@50))
))) (forall ((o_9@@73 T@Ref) (f_5@@51 T@Field_45138_3829) ) (!  (=> (not (= f_5@@51 Ref__Integer_value)) (= (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@2) o_9@@73 f_5@@51) (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@3) o_9@@73 f_5@@51)))
 :qid |stdinbpl.3742:31|
 :skolemid |273|
 :pattern ( (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@3) o_9@@73 f_5@@51))
))) (forall ((o_9@@74 T@Ref) (f_5@@52 T@Field_27513_111040) ) (!  (=> true (= (select (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| QPMask@2) o_9@@74 f_5@@52) (select (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| QPMask@3) o_9@@74 f_5@@52)))
 :qid |stdinbpl.3742:31|
 :skolemid |273|
 :pattern ( (select (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| QPMask@3) o_9@@74 f_5@@52))
))) (forall ((o_9@@75 T@Ref) (f_5@@53 T@Field_27513_111173) ) (!  (=> true (= (select (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| QPMask@2) o_9@@75 f_5@@53) (select (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| QPMask@3) o_9@@75 f_5@@53)))
 :qid |stdinbpl.3742:31|
 :skolemid |273|
 :pattern ( (select (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| QPMask@3) o_9@@75 f_5@@53))
))) (and (=> (= (ControlFlow 0 92) 89) anon87_Then_correct) (=> (= (ControlFlow 0 92) 91) anon87_Else_correct))))))))))))
(let ((anon43_correct true))
(let ((anon86_Else_correct  (=> (and (not (and (<= 0 j_6_2) (and (< j_6_2 (|Seq#Length_27552| ar_1@@27)) (and (<= 0 k_6_2) (and (< k_6_2 (|Seq#Length_27552| ar_1@@27)) (not (= j_6_2 k_6_2))))))) (= (ControlFlow 0 40) 37)) anon43_correct)))
(let ((anon86_Then_correct  (=> (and (<= 0 j_6_2) (and (< j_6_2 (|Seq#Length_27552| ar_1@@27)) (and (<= 0 k_6_2) (and (< k_6_2 (|Seq#Length_27552| ar_1@@27)) (not (= j_6_2 k_6_2)))))) (and (=> (= (ControlFlow 0 38) (- 0 39)) (not (= (|Seq#Index_27552| ar_1@@27 j_6_2) (|Seq#Index_27552| ar_1@@27 k_6_2)))) (=> (not (= (|Seq#Index_27552| ar_1@@27 j_6_2) (|Seq#Index_27552| ar_1@@27 k_6_2))) (=> (= (ControlFlow 0 38) 37) anon43_correct))))))
(let ((anon84_Else_correct  (=> (<= len_3 0) (and (and (=> (= (ControlFlow 0 97) 92) anon85_Else_correct) (=> (= (ControlFlow 0 97) 38) anon86_Then_correct)) (=> (= (ControlFlow 0 97) 40) anon86_Else_correct)))))
(let ((anon84_Then_correct  (=> (< 0 len_3) (and (=> (= (ControlFlow 0 95) (- 0 96)) (= (|Seq#Length_27552| ar_1@@27) len_3)) (=> (= (|Seq#Length_27552| ar_1@@27) len_3) (and (and (=> (= (ControlFlow 0 95) 92) anon85_Else_correct) (=> (= (ControlFlow 0 95) 38) anon86_Then_correct)) (=> (= (ControlFlow 0 95) 40) anon86_Else_correct)))))))
(let ((anon77_Else_correct  (and (=> (= (ControlFlow 0 98) (- 0 103)) (= (|Seq#Length_27552| ar_1@@27) len_3)) (=> (= (|Seq#Length_27552| ar_1@@27) len_3) (=> (state Heap@@41 QPMask@2) (and (=> (= (ControlFlow 0 98) (- 0 102)) (= (|Seq#Length_27552| br) len_3)) (=> (= (|Seq#Length_27552| br) len_3) (=> (state Heap@@41 QPMask@2) (and (=> (= (ControlFlow 0 98) (- 0 101)) (= (|Seq#Length_27552| cr) len_3)) (=> (= (|Seq#Length_27552| cr) len_3) (=> (state Heap@@41 QPMask@2) (and (=> (= (ControlFlow 0 98) (- 0 100)) (not (= diz null))) (=> (not (= diz null)) (and (=> (= (ControlFlow 0 98) (- 0 99)) (>= current_thread_id 0)) (=> (>= current_thread_id 0) (and (=> (= (ControlFlow 0 98) 95) anon84_Then_correct) (=> (= (ControlFlow 0 98) 97) anon84_Else_correct)))))))))))))))))
(let ((anon75_Else_correct  (and (=> (= (ControlFlow 0 127) (- 0 128)) (forall ((i_5_1 Int) (i_5_2 Int) ) (!  (=> (and (and (and (and (not (= i_5_1 i_5_2)) (and (<= 0 i_5_1) (< i_5_1 len_3))) (and (<= 0 i_5_2) (< i_5_2 len_3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27552| cr i_5_1) (|Seq#Index_27552| cr i_5_2))))
 :qid |stdinbpl.3461:15|
 :skolemid |242|
))) (=> (forall ((i_5_1@@0 Int) (i_5_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_5_1@@0 i_5_2@@0)) (and (<= 0 i_5_1@@0) (< i_5_1@@0 len_3))) (and (<= 0 i_5_2@@0) (< i_5_2@@0 len_3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27552| cr i_5_1@@0) (|Seq#Index_27552| cr i_5_2@@0))))
 :qid |stdinbpl.3461:15|
 :skolemid |242|
)) (=> (and (and (forall ((i_5_1@@1 Int) ) (!  (=> (and (and (<= 0 i_5_1@@1) (< i_5_1@@1 len_3)) (< NoPerm FullPerm)) (and (qpRange22 (|Seq#Index_27552| cr i_5_1@@1)) (= (invRecv22 (|Seq#Index_27552| cr i_5_1@@1)) i_5_1@@1)))
 :qid |stdinbpl.3467:22|
 :skolemid |243|
 :pattern ( (|Seq#Index_27552| cr i_5_1@@1))
 :pattern ( (|Seq#Index_27552| cr i_5_1@@1))
)) (forall ((o_9@@76 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv22 o_9@@76)) (< (invRecv22 o_9@@76) len_3)) (< NoPerm FullPerm)) (qpRange22 o_9@@76)) (= (|Seq#Index_27552| cr (invRecv22 o_9@@76)) o_9@@76))
 :qid |stdinbpl.3471:22|
 :skolemid |244|
 :pattern ( (invRecv22 o_9@@76))
))) (and (forall ((i_5_1@@2 Int) ) (!  (=> (and (<= 0 i_5_1@@2) (< i_5_1@@2 len_3)) (not (= (|Seq#Index_27552| cr i_5_1@@2) null)))
 :qid |stdinbpl.3477:22|
 :skolemid |245|
 :pattern ( (|Seq#Index_27552| cr i_5_1@@2))
 :pattern ( (|Seq#Index_27552| cr i_5_1@@2))
)) (forall ((o_9@@77 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv22 o_9@@77)) (< (invRecv22 o_9@@77) len_3)) (< NoPerm FullPerm)) (qpRange22 o_9@@77)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_27552| cr (invRecv22 o_9@@77)) o_9@@77)) (= (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@2) o_9@@77 Ref__Integer_value) (+ (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@1) o_9@@77 Ref__Integer_value) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv22 o_9@@77)) (< (invRecv22 o_9@@77) len_3)) (< NoPerm FullPerm)) (qpRange22 o_9@@77))) (= (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@2) o_9@@77 Ref__Integer_value) (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@1) o_9@@77 Ref__Integer_value))))
 :qid |stdinbpl.3483:22|
 :skolemid |246|
 :pattern ( (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@2) o_9@@77 Ref__Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_9@@78 T@Ref) (f_5@@54 T@Field_39050_53) ) (!  (=> true (= (select (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| QPMask@1) o_9@@78 f_5@@54) (select (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| QPMask@2) o_9@@78 f_5@@54)))
 :qid |stdinbpl.3487:29|
 :skolemid |247|
 :pattern ( (select (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| QPMask@1) o_9@@78 f_5@@54))
 :pattern ( (select (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| QPMask@2) o_9@@78 f_5@@54))
)) (forall ((o_9@@79 T@Ref) (f_5@@55 T@Field_39063_39064) ) (!  (=> true (= (select (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| QPMask@1) o_9@@79 f_5@@55) (select (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| QPMask@2) o_9@@79 f_5@@55)))
 :qid |stdinbpl.3487:29|
 :skolemid |247|
 :pattern ( (select (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| QPMask@1) o_9@@79 f_5@@55))
 :pattern ( (select (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| QPMask@2) o_9@@79 f_5@@55))
))) (forall ((o_9@@80 T@Ref) (f_5@@56 T@Field_45138_3829) ) (!  (=> (not (= f_5@@56 Ref__Integer_value)) (= (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@1) o_9@@80 f_5@@56) (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@2) o_9@@80 f_5@@56)))
 :qid |stdinbpl.3487:29|
 :skolemid |247|
 :pattern ( (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@1) o_9@@80 f_5@@56))
 :pattern ( (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@2) o_9@@80 f_5@@56))
))) (forall ((o_9@@81 T@Ref) (f_5@@57 T@Field_27513_111040) ) (!  (=> true (= (select (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| QPMask@1) o_9@@81 f_5@@57) (select (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| QPMask@2) o_9@@81 f_5@@57)))
 :qid |stdinbpl.3487:29|
 :skolemid |247|
 :pattern ( (select (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| QPMask@1) o_9@@81 f_5@@57))
 :pattern ( (select (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| QPMask@2) o_9@@81 f_5@@57))
))) (forall ((o_9@@82 T@Ref) (f_5@@58 T@Field_27513_111173) ) (!  (=> true (= (select (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| QPMask@1) o_9@@82 f_5@@58) (select (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| QPMask@2) o_9@@82 f_5@@58)))
 :qid |stdinbpl.3487:29|
 :skolemid |247|
 :pattern ( (select (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| QPMask@1) o_9@@82 f_5@@58))
 :pattern ( (select (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| QPMask@2) o_9@@82 f_5@@58))
))) (and (state Heap@@41 QPMask@2) (state Heap@@41 QPMask@2))) (and (=> (= (ControlFlow 0 127) 126) anon77_Then_correct) (=> (= (ControlFlow 0 127) 98) anon77_Else_correct))))))))
(let ((anon23_correct true))
(let ((anon76_Else_correct  (=> (and (not (and (<= 0 i_53) (< i_53 len_3))) (= (ControlFlow 0 36) 32)) anon23_correct)))
(let ((anon76_Then_correct  (=> (and (<= 0 i_53) (< i_53 len_3)) (and (=> (= (ControlFlow 0 33) (- 0 35)) (>= i_53 0)) (=> (>= i_53 0) (and (=> (= (ControlFlow 0 33) (- 0 34)) (< i_53 (|Seq#Length_27552| cr))) (=> (< i_53 (|Seq#Length_27552| cr)) (=> (= (ControlFlow 0 33) 32) anon23_correct))))))))
(let ((anon73_Else_correct  (=> (and (forall ((j_5 Int) (k_5 Int) ) (!  (=> (and (<= 0 j_5) (and (< j_5 (|Seq#Length_27552| cr)) (and (<= 0 k_5) (and (< k_5 (|Seq#Length_27552| cr)) (not (= j_5 k_5)))))) (not (= (|Seq#Index_27552| cr j_5) (|Seq#Index_27552| cr k_5))))
 :qid |stdinbpl.3443:20|
 :skolemid |241|
 :pattern ( (|Seq#Index_27552| cr j_5) (|Seq#Index_27552| cr k_5))
)) (state Heap@@41 QPMask@1)) (and (and (=> (= (ControlFlow 0 129) 127) anon75_Else_correct) (=> (= (ControlFlow 0 129) 33) anon76_Then_correct)) (=> (= (ControlFlow 0 129) 36) anon76_Else_correct)))))
(let ((anon19_correct true))
(let ((anon74_Else_correct  (=> (and (not (and (<= 0 j_35) (and (< j_35 (|Seq#Length_27552| cr)) (and (<= 0 k_28) (and (< k_28 (|Seq#Length_27552| cr)) (not (= j_35 k_28))))))) (= (ControlFlow 0 31) 25)) anon19_correct)))
(let ((anon74_Then_correct  (=> (and (<= 0 j_35) (and (< j_35 (|Seq#Length_27552| cr)) (and (<= 0 k_28) (and (< k_28 (|Seq#Length_27552| cr)) (not (= j_35 k_28)))))) (and (=> (= (ControlFlow 0 26) (- 0 30)) (>= j_35 0)) (=> (>= j_35 0) (and (=> (= (ControlFlow 0 26) (- 0 29)) (< j_35 (|Seq#Length_27552| cr))) (=> (< j_35 (|Seq#Length_27552| cr)) (and (=> (= (ControlFlow 0 26) (- 0 28)) (>= k_28 0)) (=> (>= k_28 0) (and (=> (= (ControlFlow 0 26) (- 0 27)) (< k_28 (|Seq#Length_27552| cr))) (=> (< k_28 (|Seq#Length_27552| cr)) (=> (= (ControlFlow 0 26) 25) anon19_correct))))))))))))
(let ((anon71_Else_correct  (and (=> (= (ControlFlow 0 130) (- 0 132)) (forall ((i_3_2 Int) (i_3_3 Int) ) (!  (=> (and (and (and (and (not (= i_3_2 i_3_3)) (and (<= 0 i_3_2) (< i_3_2 len_3))) (and (<= 0 i_3_3) (< i_3_3 len_3))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_27552| br i_3_2) (|Seq#Index_27552| br i_3_3))))
 :qid |stdinbpl.3387:15|
 :skolemid |234|
))) (=> (forall ((i_3_2@@0 Int) (i_3_3@@0 Int) ) (!  (=> (and (and (and (and (not (= i_3_2@@0 i_3_3@@0)) (and (<= 0 i_3_2@@0) (< i_3_2@@0 len_3))) (and (<= 0 i_3_3@@0) (< i_3_3@@0 len_3))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_27552| br i_3_2@@0) (|Seq#Index_27552| br i_3_3@@0))))
 :qid |stdinbpl.3387:15|
 :skolemid |234|
)) (=> (and (forall ((i_3_2@@1 Int) ) (!  (=> (and (and (<= 0 i_3_2@@1) (< i_3_2@@1 len_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange21 (|Seq#Index_27552| br i_3_2@@1)) (= (invRecv21 (|Seq#Index_27552| br i_3_2@@1)) i_3_2@@1)))
 :qid |stdinbpl.3393:22|
 :skolemid |235|
 :pattern ( (|Seq#Index_27552| br i_3_2@@1))
 :pattern ( (|Seq#Index_27552| br i_3_2@@1))
)) (forall ((o_9@@83 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv21 o_9@@83)) (< (invRecv21 o_9@@83) len_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange21 o_9@@83)) (= (|Seq#Index_27552| br (invRecv21 o_9@@83)) o_9@@83))
 :qid |stdinbpl.3397:22|
 :skolemid |236|
 :pattern ( (invRecv21 o_9@@83))
))) (and (=> (= (ControlFlow 0 130) (- 0 131)) (forall ((i_3_2@@2 Int) ) (!  (=> (and (<= 0 i_3_2@@2) (< i_3_2@@2 len_3)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3403:15|
 :skolemid |237|
 :pattern ( (|Seq#Index_27552| br i_3_2@@2))
 :pattern ( (|Seq#Index_27552| br i_3_2@@2))
))) (=> (forall ((i_3_2@@3 Int) ) (!  (=> (and (<= 0 i_3_2@@3) (< i_3_2@@3 len_3)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3403:15|
 :skolemid |237|
 :pattern ( (|Seq#Index_27552| br i_3_2@@3))
 :pattern ( (|Seq#Index_27552| br i_3_2@@3))
)) (=> (and (forall ((i_3_2@@4 Int) ) (!  (=> (and (and (<= 0 i_3_2@@4) (< i_3_2@@4 len_3)) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= (|Seq#Index_27552| br i_3_2@@4) null)))
 :qid |stdinbpl.3409:22|
 :skolemid |238|
 :pattern ( (|Seq#Index_27552| br i_3_2@@4))
 :pattern ( (|Seq#Index_27552| br i_3_2@@4))
)) (forall ((o_9@@84 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv21 o_9@@84)) (< (invRecv21 o_9@@84) len_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange21 o_9@@84)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (|Seq#Index_27552| br (invRecv21 o_9@@84)) o_9@@84)) (= (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@1) o_9@@84 Ref__Integer_value) (+ (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@0) o_9@@84 Ref__Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (<= 0 (invRecv21 o_9@@84)) (< (invRecv21 o_9@@84) len_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange21 o_9@@84))) (= (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@1) o_9@@84 Ref__Integer_value) (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@0) o_9@@84 Ref__Integer_value))))
 :qid |stdinbpl.3415:22|
 :skolemid |239|
 :pattern ( (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@1) o_9@@84 Ref__Integer_value))
))) (=> (and (and (and (and (and (forall ((o_9@@85 T@Ref) (f_5@@59 T@Field_39050_53) ) (!  (=> true (= (select (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| QPMask@0) o_9@@85 f_5@@59) (select (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| QPMask@1) o_9@@85 f_5@@59)))
 :qid |stdinbpl.3419:29|
 :skolemid |240|
 :pattern ( (select (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| QPMask@0) o_9@@85 f_5@@59))
 :pattern ( (select (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| QPMask@1) o_9@@85 f_5@@59))
)) (forall ((o_9@@86 T@Ref) (f_5@@60 T@Field_39063_39064) ) (!  (=> true (= (select (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| QPMask@0) o_9@@86 f_5@@60) (select (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| QPMask@1) o_9@@86 f_5@@60)))
 :qid |stdinbpl.3419:29|
 :skolemid |240|
 :pattern ( (select (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| QPMask@0) o_9@@86 f_5@@60))
 :pattern ( (select (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| QPMask@1) o_9@@86 f_5@@60))
))) (forall ((o_9@@87 T@Ref) (f_5@@61 T@Field_45138_3829) ) (!  (=> (not (= f_5@@61 Ref__Integer_value)) (= (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@0) o_9@@87 f_5@@61) (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@1) o_9@@87 f_5@@61)))
 :qid |stdinbpl.3419:29|
 :skolemid |240|
 :pattern ( (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@0) o_9@@87 f_5@@61))
 :pattern ( (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@1) o_9@@87 f_5@@61))
))) (forall ((o_9@@88 T@Ref) (f_5@@62 T@Field_27513_111040) ) (!  (=> true (= (select (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| QPMask@0) o_9@@88 f_5@@62) (select (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| QPMask@1) o_9@@88 f_5@@62)))
 :qid |stdinbpl.3419:29|
 :skolemid |240|
 :pattern ( (select (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| QPMask@0) o_9@@88 f_5@@62))
 :pattern ( (select (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| QPMask@1) o_9@@88 f_5@@62))
))) (forall ((o_9@@89 T@Ref) (f_5@@63 T@Field_27513_111173) ) (!  (=> true (= (select (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| QPMask@0) o_9@@89 f_5@@63) (select (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| QPMask@1) o_9@@89 f_5@@63)))
 :qid |stdinbpl.3419:29|
 :skolemid |240|
 :pattern ( (select (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| QPMask@0) o_9@@89 f_5@@63))
 :pattern ( (select (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| QPMask@1) o_9@@89 f_5@@63))
))) (and (and (state Heap@@41 QPMask@1) (state Heap@@41 QPMask@1)) (and (= (|Seq#Length_27552| cr) len_3) (state Heap@@41 QPMask@1)))) (and (and (=> (= (ControlFlow 0 130) 129) anon73_Else_correct) (=> (= (ControlFlow 0 130) 26) anon74_Then_correct)) (=> (= (ControlFlow 0 130) 31) anon74_Else_correct)))))))))))
(let ((anon15_correct true))
(let ((anon72_Else_correct  (=> (and (not (and (<= 0 i_42) (< i_42 len_3))) (= (ControlFlow 0 24) 20)) anon15_correct)))
(let ((anon72_Then_correct  (=> (and (<= 0 i_42) (< i_42 len_3)) (and (=> (= (ControlFlow 0 21) (- 0 23)) (>= i_42 0)) (=> (>= i_42 0) (and (=> (= (ControlFlow 0 21) (- 0 22)) (< i_42 (|Seq#Length_27552| br))) (=> (< i_42 (|Seq#Length_27552| br)) (=> (= (ControlFlow 0 21) 20) anon15_correct))))))))
(let ((anon69_Else_correct  (=> (and (forall ((j_3 Int) (k_3 Int) ) (!  (=> (and (<= 0 j_3) (and (< j_3 (|Seq#Length_27552| br)) (and (<= 0 k_3) (and (< k_3 (|Seq#Length_27552| br)) (not (= j_3 k_3)))))) (not (= (|Seq#Index_27552| br j_3) (|Seq#Index_27552| br k_3))))
 :qid |stdinbpl.3369:20|
 :skolemid |233|
 :pattern ( (|Seq#Index_27552| br j_3) (|Seq#Index_27552| br k_3))
)) (state Heap@@41 QPMask@0)) (and (and (=> (= (ControlFlow 0 133) 130) anon71_Else_correct) (=> (= (ControlFlow 0 133) 21) anon72_Then_correct)) (=> (= (ControlFlow 0 133) 24) anon72_Else_correct)))))
(let ((anon11_correct true))
(let ((anon70_Else_correct  (=> (and (not (and (<= 0 j_11) (and (< j_11 (|Seq#Length_27552| br)) (and (<= 0 k_27) (and (< k_27 (|Seq#Length_27552| br)) (not (= j_11 k_27))))))) (= (ControlFlow 0 19) 13)) anon11_correct)))
(let ((anon70_Then_correct  (=> (and (<= 0 j_11) (and (< j_11 (|Seq#Length_27552| br)) (and (<= 0 k_27) (and (< k_27 (|Seq#Length_27552| br)) (not (= j_11 k_27)))))) (and (=> (= (ControlFlow 0 14) (- 0 18)) (>= j_11 0)) (=> (>= j_11 0) (and (=> (= (ControlFlow 0 14) (- 0 17)) (< j_11 (|Seq#Length_27552| br))) (=> (< j_11 (|Seq#Length_27552| br)) (and (=> (= (ControlFlow 0 14) (- 0 16)) (>= k_27 0)) (=> (>= k_27 0) (and (=> (= (ControlFlow 0 14) (- 0 15)) (< k_27 (|Seq#Length_27552| br))) (=> (< k_27 (|Seq#Length_27552| br)) (=> (= (ControlFlow 0 14) 13) anon11_correct))))))))))))
(let ((anon67_Else_correct  (and (=> (= (ControlFlow 0 134) (- 0 135)) (forall ((i_1 Int) (i_1_1 Int) ) (!  (=> (and (and (and (and (not (= i_1 i_1_1)) (and (<= 0 i_1) (< i_1 len_3))) (and (<= 0 i_1_1) (< i_1_1 len_3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27552| ar_1@@27 i_1) (|Seq#Index_27552| ar_1@@27 i_1_1))))
 :qid |stdinbpl.3319:15|
 :skolemid |227|
))) (=> (forall ((i_1@@0 Int) (i_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_1@@0 i_1_1@@0)) (and (<= 0 i_1@@0) (< i_1@@0 len_3))) (and (<= 0 i_1_1@@0) (< i_1_1@@0 len_3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27552| ar_1@@27 i_1@@0) (|Seq#Index_27552| ar_1@@27 i_1_1@@0))))
 :qid |stdinbpl.3319:15|
 :skolemid |227|
)) (=> (and (and (forall ((i_1@@1 Int) ) (!  (=> (and (and (<= 0 i_1@@1) (< i_1@@1 len_3)) (< NoPerm FullPerm)) (and (qpRange20 (|Seq#Index_27552| ar_1@@27 i_1@@1)) (= (invRecv20 (|Seq#Index_27552| ar_1@@27 i_1@@1)) i_1@@1)))
 :qid |stdinbpl.3325:22|
 :skolemid |228|
 :pattern ( (|Seq#Index_27552| ar_1@@27 i_1@@1))
 :pattern ( (|Seq#Index_27552| ar_1@@27 i_1@@1))
)) (forall ((o_9@@90 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv20 o_9@@90)) (< (invRecv20 o_9@@90) len_3)) (< NoPerm FullPerm)) (qpRange20 o_9@@90)) (= (|Seq#Index_27552| ar_1@@27 (invRecv20 o_9@@90)) o_9@@90))
 :qid |stdinbpl.3329:22|
 :skolemid |229|
 :pattern ( (invRecv20 o_9@@90))
))) (and (forall ((i_1@@2 Int) ) (!  (=> (and (<= 0 i_1@@2) (< i_1@@2 len_3)) (not (= (|Seq#Index_27552| ar_1@@27 i_1@@2) null)))
 :qid |stdinbpl.3335:22|
 :skolemid |230|
 :pattern ( (|Seq#Index_27552| ar_1@@27 i_1@@2))
 :pattern ( (|Seq#Index_27552| ar_1@@27 i_1@@2))
)) (forall ((o_9@@91 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv20 o_9@@91)) (< (invRecv20 o_9@@91) len_3)) (< NoPerm FullPerm)) (qpRange20 o_9@@91)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_27552| ar_1@@27 (invRecv20 o_9@@91)) o_9@@91)) (= (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@0) o_9@@91 Ref__Integer_value) (+ (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| ZeroMask) o_9@@91 Ref__Integer_value) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv20 o_9@@91)) (< (invRecv20 o_9@@91) len_3)) (< NoPerm FullPerm)) (qpRange20 o_9@@91))) (= (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@0) o_9@@91 Ref__Integer_value) (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| ZeroMask) o_9@@91 Ref__Integer_value))))
 :qid |stdinbpl.3341:22|
 :skolemid |231|
 :pattern ( (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@0) o_9@@91 Ref__Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_9@@92 T@Ref) (f_5@@64 T@Field_39050_53) ) (!  (=> true (= (select (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| ZeroMask) o_9@@92 f_5@@64) (select (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| QPMask@0) o_9@@92 f_5@@64)))
 :qid |stdinbpl.3345:29|
 :skolemid |232|
 :pattern ( (select (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| ZeroMask) o_9@@92 f_5@@64))
 :pattern ( (select (|PolymorphicMapType_39011_27513_53#PolymorphicMapType_39011| QPMask@0) o_9@@92 f_5@@64))
)) (forall ((o_9@@93 T@Ref) (f_5@@65 T@Field_39063_39064) ) (!  (=> true (= (select (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| ZeroMask) o_9@@93 f_5@@65) (select (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| QPMask@0) o_9@@93 f_5@@65)))
 :qid |stdinbpl.3345:29|
 :skolemid |232|
 :pattern ( (select (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| ZeroMask) o_9@@93 f_5@@65))
 :pattern ( (select (|PolymorphicMapType_39011_27513_39064#PolymorphicMapType_39011| QPMask@0) o_9@@93 f_5@@65))
))) (forall ((o_9@@94 T@Ref) (f_5@@66 T@Field_45138_3829) ) (!  (=> (not (= f_5@@66 Ref__Integer_value)) (= (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| ZeroMask) o_9@@94 f_5@@66) (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@0) o_9@@94 f_5@@66)))
 :qid |stdinbpl.3345:29|
 :skolemid |232|
 :pattern ( (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| ZeroMask) o_9@@94 f_5@@66))
 :pattern ( (select (|PolymorphicMapType_39011_27513_3829#PolymorphicMapType_39011| QPMask@0) o_9@@94 f_5@@66))
))) (forall ((o_9@@95 T@Ref) (f_5@@67 T@Field_27513_111040) ) (!  (=> true (= (select (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| ZeroMask) o_9@@95 f_5@@67) (select (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| QPMask@0) o_9@@95 f_5@@67)))
 :qid |stdinbpl.3345:29|
 :skolemid |232|
 :pattern ( (select (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| ZeroMask) o_9@@95 f_5@@67))
 :pattern ( (select (|PolymorphicMapType_39011_27513_111040#PolymorphicMapType_39011| QPMask@0) o_9@@95 f_5@@67))
))) (forall ((o_9@@96 T@Ref) (f_5@@68 T@Field_27513_111173) ) (!  (=> true (= (select (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| ZeroMask) o_9@@96 f_5@@68) (select (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| QPMask@0) o_9@@96 f_5@@68)))
 :qid |stdinbpl.3345:29|
 :skolemid |232|
 :pattern ( (select (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| ZeroMask) o_9@@96 f_5@@68))
 :pattern ( (select (|PolymorphicMapType_39011_27513_115295#PolymorphicMapType_39011| QPMask@0) o_9@@96 f_5@@68))
))) (and (and (state Heap@@41 QPMask@0) (state Heap@@41 QPMask@0)) (and (= (|Seq#Length_27552| br) len_3) (state Heap@@41 QPMask@0)))) (and (and (=> (= (ControlFlow 0 134) 133) anon69_Else_correct) (=> (= (ControlFlow 0 134) 14) anon70_Then_correct)) (=> (= (ControlFlow 0 134) 19) anon70_Else_correct))))))))
(let ((anon7_correct true))
(let ((anon68_Else_correct  (=> (and (not (and (<= 0 i_27) (< i_27 len_3))) (= (ControlFlow 0 12) 8)) anon7_correct)))
(let ((anon68_Then_correct  (=> (and (<= 0 i_27) (< i_27 len_3)) (and (=> (= (ControlFlow 0 9) (- 0 11)) (>= i_27 0)) (=> (>= i_27 0) (and (=> (= (ControlFlow 0 9) (- 0 10)) (< i_27 (|Seq#Length_27552| ar_1@@27))) (=> (< i_27 (|Seq#Length_27552| ar_1@@27)) (=> (= (ControlFlow 0 9) 8) anon7_correct))))))))
(let ((anon65_Else_correct  (=> (and (forall ((j_1 Int) (k_1 Int) ) (!  (=> (and (<= 0 j_1) (and (< j_1 (|Seq#Length_27552| ar_1@@27)) (and (<= 0 k_1) (and (< k_1 (|Seq#Length_27552| ar_1@@27)) (not (= j_1 k_1)))))) (not (= (|Seq#Index_27552| ar_1@@27 j_1) (|Seq#Index_27552| ar_1@@27 k_1))))
 :qid |stdinbpl.3301:20|
 :skolemid |226|
 :pattern ( (|Seq#Index_27552| ar_1@@27 j_1) (|Seq#Index_27552| ar_1@@27 k_1))
)) (state Heap@@41 ZeroMask)) (and (and (=> (= (ControlFlow 0 136) 134) anon67_Else_correct) (=> (= (ControlFlow 0 136) 9) anon68_Then_correct)) (=> (= (ControlFlow 0 136) 12) anon68_Else_correct)))))
(let ((anon3_correct true))
(let ((anon66_Else_correct  (=> (and (not (and (<= 0 j_25) (and (< j_25 (|Seq#Length_27552| ar_1@@27)) (and (<= 0 k_26) (and (< k_26 (|Seq#Length_27552| ar_1@@27)) (not (= j_25 k_26))))))) (= (ControlFlow 0 7) 1)) anon3_correct)))
(let ((anon66_Then_correct  (=> (and (<= 0 j_25) (and (< j_25 (|Seq#Length_27552| ar_1@@27)) (and (<= 0 k_26) (and (< k_26 (|Seq#Length_27552| ar_1@@27)) (not (= j_25 k_26)))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= j_25 0)) (=> (>= j_25 0) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< j_25 (|Seq#Length_27552| ar_1@@27))) (=> (< j_25 (|Seq#Length_27552| ar_1@@27)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= k_26 0)) (=> (>= k_26 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< k_26 (|Seq#Length_27552| ar_1@@27))) (=> (< k_26 (|Seq#Length_27552| ar_1@@27)) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))))))))
(let ((anon0_correct  (=> (and (state Heap@@41 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (=> (and (and (and AssumePermUpperBound (select (|PolymorphicMapType_38990_27255_53#PolymorphicMapType_38990| Heap@@41) diz $allocated)) (and (not (= diz null)) (state Heap@@41 ZeroMask))) (and (and (>= current_thread_id 0) (state Heap@@41 ZeroMask)) (and (= (|Seq#Length_27552| ar_1@@27) len_3) (state Heap@@41 ZeroMask)))) (and (and (=> (= (ControlFlow 0 137) 136) anon65_Else_correct) (=> (= (ControlFlow 0 137) 2) anon66_Then_correct)) (=> (= (ControlFlow 0 137) 7) anon66_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 138) 137) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
