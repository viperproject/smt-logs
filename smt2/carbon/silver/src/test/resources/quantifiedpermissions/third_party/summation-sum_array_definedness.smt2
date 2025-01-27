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
(declare-sort T@Field_27001_53 0)
(declare-sort T@Field_27014_27015 0)
(declare-sort T@Field_33055_3421 0)
(declare-sort T@Field_18875_74807 0)
(declare-sort T@Field_18875_74674 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_26962 0)) (((PolymorphicMapType_26962 (|PolymorphicMapType_26962_18875_3436#PolymorphicMapType_26962| (Array T@Ref T@Field_33055_3421 Real)) (|PolymorphicMapType_26962_18875_53#PolymorphicMapType_26962| (Array T@Ref T@Field_27001_53 Real)) (|PolymorphicMapType_26962_18875_27015#PolymorphicMapType_26962| (Array T@Ref T@Field_27014_27015 Real)) (|PolymorphicMapType_26962_18875_74674#PolymorphicMapType_26962| (Array T@Ref T@Field_18875_74674 Real)) (|PolymorphicMapType_26962_18875_78929#PolymorphicMapType_26962| (Array T@Ref T@Field_18875_74807 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_27490 0)) (((PolymorphicMapType_27490 (|PolymorphicMapType_27490_27001_53#PolymorphicMapType_27490| (Array T@Ref T@Field_27001_53 Bool)) (|PolymorphicMapType_27490_27001_27015#PolymorphicMapType_27490| (Array T@Ref T@Field_27014_27015 Bool)) (|PolymorphicMapType_27490_27001_3421#PolymorphicMapType_27490| (Array T@Ref T@Field_33055_3421 Bool)) (|PolymorphicMapType_27490_27001_74674#PolymorphicMapType_27490| (Array T@Ref T@Field_18875_74674 Bool)) (|PolymorphicMapType_27490_27001_75985#PolymorphicMapType_27490| (Array T@Ref T@Field_18875_74807 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_26941 0)) (((PolymorphicMapType_26941 (|PolymorphicMapType_26941_18649_53#PolymorphicMapType_26941| (Array T@Ref T@Field_27001_53 Bool)) (|PolymorphicMapType_26941_18652_18653#PolymorphicMapType_26941| (Array T@Ref T@Field_27014_27015 T@Ref)) (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| (Array T@Ref T@Field_33055_3421 Int)) (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| (Array T@Ref T@Field_18875_74807 T@PolymorphicMapType_27490)) (|PolymorphicMapType_26941_27001_74674#PolymorphicMapType_26941| (Array T@Ref T@Field_18875_74674 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_27001_53)
(declare-fun Ref__res () T@Field_33055_3421)
(declare-fun Ref__Integer_value () T@Field_33055_3421)
(declare-sort T@Seq_34127 0)
(declare-fun |Seq#Length_18914| (T@Seq_34127) Int)
(declare-fun |Seq#Drop_18914| (T@Seq_34127 Int) T@Seq_34127)
(declare-sort T@Seq_3299 0)
(declare-fun |Seq#Length_3299| (T@Seq_3299) Int)
(declare-fun |Seq#Drop_3299| (T@Seq_3299 Int) T@Seq_3299)
(declare-fun state (T@PolymorphicMapType_26941 T@PolymorphicMapType_26962) Bool)
(declare-fun |count_square'| (T@PolymorphicMapType_26941 Int Int Int Int Int Int T@Seq_34127 Int) Int)
(declare-fun |count_square#frame| (T@FrameType Int Int Int Int Int Int T@Seq_34127 Int) Int)
(declare-fun FrameFragment_4295 (Int) T@FrameType)
(declare-fun |count_square#condqp3| (T@PolymorphicMapType_26941 Int Int Int Int Int Int T@Seq_34127 Int) Int)
(declare-fun succHeap (T@PolymorphicMapType_26941 T@PolymorphicMapType_26941) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_26941 T@PolymorphicMapType_26941) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_26962) Bool)
(declare-fun |sum_list'| (T@PolymorphicMapType_26941 Int Int T@Seq_3299) Int)
(declare-fun dummyFunction_3743 (Int) Bool)
(declare-fun |sum_list#triggerStateless| (Int Int T@Seq_3299) Int)
(declare-fun ZeroPMask () T@PolymorphicMapType_27490)
(declare-fun |Seq#Index_18914| (T@Seq_34127 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3299| (T@Seq_3299 Int) Int)
(declare-fun |Seq#Empty_18914| () T@Seq_34127)
(declare-fun |Seq#Empty_3299| () T@Seq_3299)
(declare-fun |Seq#Update_18914| (T@Seq_34127 Int T@Ref) T@Seq_34127)
(declare-fun |Seq#Update_3299| (T@Seq_3299 Int Int) T@Seq_3299)
(declare-fun |Seq#Take_18914| (T@Seq_34127 Int) T@Seq_34127)
(declare-fun |Seq#Take_3299| (T@Seq_3299 Int) T@Seq_3299)
(declare-fun sum_array (T@PolymorphicMapType_26941 Int Int Int T@Seq_34127) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |sum_array'| (T@PolymorphicMapType_26941 Int Int Int T@Seq_34127) Int)
(declare-fun |Seq#Contains_3299| (T@Seq_3299 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3299)
(declare-fun |Seq#Contains_34127| (T@Seq_34127 T@Ref) Bool)
(declare-fun |Seq#Skolem_34127| (T@Seq_34127 T@Ref) Int)
(declare-fun |Seq#Skolem_3299| (T@Seq_3299 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_26941 T@PolymorphicMapType_26941 T@PolymorphicMapType_26962) Bool)
(declare-fun IsPredicateField_18875_74765 (T@Field_18875_74674) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_18875 (T@Field_18875_74674) T@Field_18875_74807)
(declare-fun HasDirectPerm_18875_74738 (T@PolymorphicMapType_26962 T@Ref T@Field_18875_74674) Bool)
(declare-fun IsWandField_18875_76512 (T@Field_18875_74674) Bool)
(declare-fun WandMaskField_18875 (T@Field_18875_74674) T@Field_18875_74807)
(declare-fun |Seq#Singleton_18914| (T@Ref) T@Seq_34127)
(declare-fun |Seq#Singleton_3299| (Int) T@Seq_3299)
(declare-fun count_square (T@PolymorphicMapType_26941 Int Int Int Int Int Int T@Seq_34127 Int) Int)
(declare-fun |count_square#triggerStateless| (Int Int Int Int Int Int T@Seq_34127 Int) Int)
(declare-fun |Seq#Append_34127| (T@Seq_34127 T@Seq_34127) T@Seq_34127)
(declare-fun |Seq#Append_3299| (T@Seq_3299 T@Seq_3299) T@Seq_3299)
(declare-fun |sum_square#condqp2| (T@PolymorphicMapType_26941 Int Int Int Int Int Int T@Seq_34127) Int)
(declare-fun |sk_sum_square#condqp2| (Int Int) Int)
(declare-fun sum_square (T@PolymorphicMapType_26941 Int Int Int Int Int Int T@Seq_34127) Int)
(declare-fun |sum_square'| (T@PolymorphicMapType_26941 Int Int Int Int Int Int T@Seq_34127) Int)
(declare-fun |sk_count_square#condqp3| (Int Int) Int)
(declare-fun dummyHeap () T@PolymorphicMapType_26941)
(declare-fun ZeroMask () T@PolymorphicMapType_26962)
(declare-fun InsidePredicate_27001_27001 (T@Field_18875_74674 T@FrameType T@Field_18875_74674 T@FrameType) Bool)
(declare-fun IsPredicateField_18873_3421 (T@Field_33055_3421) Bool)
(declare-fun IsWandField_18873_3421 (T@Field_33055_3421) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_18875_80058 (T@Field_18875_74807) Bool)
(declare-fun IsWandField_18875_80074 (T@Field_18875_74807) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_18875_27015 (T@Field_27014_27015) Bool)
(declare-fun IsWandField_18875_27015 (T@Field_27014_27015) Bool)
(declare-fun IsPredicateField_18875_53 (T@Field_27001_53) Bool)
(declare-fun IsWandField_18875_53 (T@Field_27001_53) Bool)
(declare-fun |sum_list#frame| (T@FrameType Int Int T@Seq_3299) Int)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun HasDirectPerm_18875_80512 (T@PolymorphicMapType_26962 T@Ref T@Field_18875_74807) Bool)
(declare-fun HasDirectPerm_18875_27015 (T@PolymorphicMapType_26962 T@Ref T@Field_27014_27015) Bool)
(declare-fun HasDirectPerm_18875_53 (T@PolymorphicMapType_26962 T@Ref T@Field_27001_53) Bool)
(declare-fun HasDirectPerm_18875_3436 (T@PolymorphicMapType_26962 T@Ref T@Field_33055_3421) Bool)
(declare-fun |sum_array#triggerStateless| (Int Int Int T@Seq_34127) Int)
(declare-fun |count_list'| (T@PolymorphicMapType_26941 Int Int T@Seq_3299 Int) Int)
(declare-fun |count_list#triggerStateless| (Int Int T@Seq_3299 Int) Int)
(declare-fun |count_array'| (T@PolymorphicMapType_26941 Int Int T@Seq_34127 Int) Int)
(declare-fun |count_array#triggerStateless| (Int Int T@Seq_34127 Int) Int)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun count_list (T@PolymorphicMapType_26941 Int Int T@Seq_3299 Int) Int)
(declare-fun count_array (T@PolymorphicMapType_26941 Int Int T@Seq_34127 Int) Int)
(declare-fun sumMask (T@PolymorphicMapType_26962 T@PolymorphicMapType_26962 T@PolymorphicMapType_26962) Bool)
(declare-fun |sum_square#triggerStateless| (Int Int Int Int Int Int T@Seq_34127) Int)
(declare-fun |count_list#frame| (T@FrameType Int Int T@Seq_3299 Int) Int)
(declare-fun |Seq#Equal_34127| (T@Seq_34127 T@Seq_34127) Bool)
(declare-fun |Seq#Equal_3299| (T@Seq_3299 T@Seq_3299) Bool)
(declare-fun sum_list (T@PolymorphicMapType_26941 Int Int T@Seq_3299) Int)
(declare-fun |Seq#ContainsTrigger_18914| (T@Seq_34127 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3299| (T@Seq_3299 Int) Bool)
(declare-fun |count_array#condqp4| (T@PolymorphicMapType_26941 Int Int T@Seq_34127 Int) Int)
(declare-fun |sk_count_array#condqp4| (Int Int) Int)
(declare-fun |sum_array#condqp1| (T@PolymorphicMapType_26941 Int Int Int T@Seq_34127) Int)
(declare-fun |sk_sum_array#condqp1| (Int Int) Int)
(declare-fun |sum_square#frame| (T@FrameType Int Int Int Int Int Int T@Seq_34127) Int)
(declare-fun |Seq#SkolemDiff_34127| (T@Seq_34127 T@Seq_34127) Int)
(declare-fun |Seq#SkolemDiff_3299| (T@Seq_3299 T@Seq_3299) Int)
(declare-fun |sum_array#frame| (T@FrameType Int Int Int T@Seq_34127) Int)
(declare-fun |count_array#frame| (T@FrameType Int Int T@Seq_34127 Int) Int)
(assert (distinct Ref__res Ref__Integer_value)
)
(assert (forall ((s T@Seq_34127) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_18914| s)) (= (|Seq#Length_18914| (|Seq#Drop_18914| s n)) (- (|Seq#Length_18914| s) n))) (=> (< (|Seq#Length_18914| s) n) (= (|Seq#Length_18914| (|Seq#Drop_18914| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_18914| (|Seq#Drop_18914| s n)) (|Seq#Length_18914| s))))
 :qid |stdinbpl.347:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_18914| (|Seq#Drop_18914| s n)))
 :pattern ( (|Seq#Length_18914| s) (|Seq#Drop_18914| s n))
)))
(assert (forall ((s@@0 T@Seq_3299) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3299| s@@0)) (= (|Seq#Length_3299| (|Seq#Drop_3299| s@@0 n@@0)) (- (|Seq#Length_3299| s@@0) n@@0))) (=> (< (|Seq#Length_3299| s@@0) n@@0) (= (|Seq#Length_3299| (|Seq#Drop_3299| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3299| (|Seq#Drop_3299| s@@0 n@@0)) (|Seq#Length_3299| s@@0))))
 :qid |stdinbpl.347:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3299| (|Seq#Drop_3299| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3299| s@@0) (|Seq#Drop_3299| s@@0 n@@0))
)))
(assert (forall ((Heap T@PolymorphicMapType_26941) (Mask T@PolymorphicMapType_26962) (i Int) (lo Int) (hi Int) (step Int) (vmin Int) (vmax_1 Int) (ar_1 T@Seq_34127) (v_2 Int) ) (!  (=> (state Heap Mask) (= (|count_square'| Heap i lo hi step vmin vmax_1 ar_1 v_2) (|count_square#frame| (FrameFragment_4295 (|count_square#condqp3| Heap i lo hi step vmin vmax_1 ar_1 v_2)) i lo hi step vmin vmax_1 ar_1 v_2)))
 :qid |stdinbpl.1238:15|
 :skolemid |108|
 :pattern ( (state Heap Mask) (|count_square'| Heap i lo hi step vmin vmax_1 ar_1 v_2))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_26941) (Heap1 T@PolymorphicMapType_26941) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_26941) (Mask@@0 T@PolymorphicMapType_26962) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_26941) (Heap1@@0 T@PolymorphicMapType_26941) (Heap2 T@PolymorphicMapType_26941) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_26941) (i@@0 Int) (hi@@0 Int) (ar_1@@0 T@Seq_3299) ) (! (dummyFunction_3743 (|sum_list#triggerStateless| i@@0 hi@@0 ar_1@@0))
 :qid |stdinbpl.636:15|
 :skolemid |59|
 :pattern ( (|sum_list'| Heap@@1 i@@0 hi@@0 ar_1@@0))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_18875_74807) ) (!  (not (select (|PolymorphicMapType_27490_27001_75985#PolymorphicMapType_27490| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_27490_27001_75985#PolymorphicMapType_27490| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_18875_74674) ) (!  (not (select (|PolymorphicMapType_27490_27001_74674#PolymorphicMapType_27490| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_27490_27001_74674#PolymorphicMapType_27490| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_33055_3421) ) (!  (not (select (|PolymorphicMapType_27490_27001_3421#PolymorphicMapType_27490| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_27490_27001_3421#PolymorphicMapType_27490| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_27014_27015) ) (!  (not (select (|PolymorphicMapType_27490_27001_27015#PolymorphicMapType_27490| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_27490_27001_27015#PolymorphicMapType_27490| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_27001_53) ) (!  (not (select (|PolymorphicMapType_27490_27001_53#PolymorphicMapType_27490| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_27490_27001_53#PolymorphicMapType_27490| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((s@@1 T@Seq_34127) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_18914| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_18914| (|Seq#Drop_18914| s@@1 n@@1) j) (|Seq#Index_18914| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.368:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_18914| (|Seq#Drop_18914| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3299) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3299| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3299| (|Seq#Drop_3299| s@@2 n@@2) j@@0) (|Seq#Index_3299| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.368:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3299| (|Seq#Drop_3299| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_18914| |Seq#Empty_18914|) 0))
(assert (= (|Seq#Length_3299| |Seq#Empty_3299|) 0))
(assert (forall ((s@@3 T@Seq_34127) (i@@1 Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_18914| s@@3))) (and (=> (= i@@1 n@@3) (= (|Seq#Index_18914| (|Seq#Update_18914| s@@3 i@@1 v) n@@3) v)) (=> (not (= i@@1 n@@3)) (= (|Seq#Index_18914| (|Seq#Update_18914| s@@3 i@@1 v) n@@3) (|Seq#Index_18914| s@@3 n@@3)))))
 :qid |stdinbpl.323:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_18914| (|Seq#Update_18914| s@@3 i@@1 v) n@@3))
 :pattern ( (|Seq#Index_18914| s@@3 n@@3) (|Seq#Update_18914| s@@3 i@@1 v))
)))
(assert (forall ((s@@4 T@Seq_3299) (i@@2 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3299| s@@4))) (and (=> (= i@@2 n@@4) (= (|Seq#Index_3299| (|Seq#Update_3299| s@@4 i@@2 v@@0) n@@4) v@@0)) (=> (not (= i@@2 n@@4)) (= (|Seq#Index_3299| (|Seq#Update_3299| s@@4 i@@2 v@@0) n@@4) (|Seq#Index_3299| s@@4 n@@4)))))
 :qid |stdinbpl.323:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3299| (|Seq#Update_3299| s@@4 i@@2 v@@0) n@@4))
 :pattern ( (|Seq#Index_3299| s@@4 n@@4) (|Seq#Update_3299| s@@4 i@@2 v@@0))
)))
(assert (forall ((s@@5 T@Seq_34127) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_18914| s@@5)) (= (|Seq#Length_18914| (|Seq#Take_18914| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_18914| s@@5) n@@5) (= (|Seq#Length_18914| (|Seq#Take_18914| s@@5 n@@5)) (|Seq#Length_18914| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_18914| (|Seq#Take_18914| s@@5 n@@5)) 0)))
 :qid |stdinbpl.334:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_18914| (|Seq#Take_18914| s@@5 n@@5)))
 :pattern ( (|Seq#Take_18914| s@@5 n@@5) (|Seq#Length_18914| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3299) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3299| s@@6)) (= (|Seq#Length_3299| (|Seq#Take_3299| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3299| s@@6) n@@6) (= (|Seq#Length_3299| (|Seq#Take_3299| s@@6 n@@6)) (|Seq#Length_3299| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3299| (|Seq#Take_3299| s@@6 n@@6)) 0)))
 :qid |stdinbpl.334:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3299| (|Seq#Take_3299| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3299| s@@6 n@@6) (|Seq#Length_3299| s@@6))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_26941) (Mask@@1 T@PolymorphicMapType_26962) (i@@3 Int) (lo@@0 Int) (hi@@1 Int) (ar_1@@1 T@Seq_34127) ) (!  (=> (and (state Heap@@2 Mask@@1) (< AssumeFunctionsAbove 3)) (=> (and (and (and (<= 0 lo@@0) (and (<= lo@@0 i@@3) (<= i@@3 hi@@1))) (<= hi@@1 (|Seq#Length_18914| ar_1@@1))) (forall ((j@@1 Int) (k Int) ) (!  (=> (and (<= 0 j@@1) (and (< j@@1 (|Seq#Length_18914| ar_1@@1)) (and (<= 0 k) (and (< k (|Seq#Length_18914| ar_1@@1)) (not (= j@@1 k)))))) (not (= (|Seq#Index_18914| ar_1@@1 j@@1) (|Seq#Index_18914| ar_1@@1 k))))
 :qid |stdinbpl.729:126|
 :skolemid |64|
 :pattern ( (|Seq#Index_18914| ar_1@@1 j@@1) (|Seq#Index_18914| ar_1@@1 k))
))) (= (sum_array Heap@@2 i@@3 lo@@0 hi@@1 ar_1@@1) (ite (< i@@3 hi@@1) (+ (select (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| Heap@@2) (|Seq#Index_18914| ar_1@@1 i@@3) Ref__Integer_value) (|sum_array'| Heap@@2 (+ i@@3 1) lo@@0 hi@@1 ar_1@@1)) 0))))
 :qid |stdinbpl.727:15|
 :skolemid |65|
 :pattern ( (state Heap@@2 Mask@@1) (sum_array Heap@@2 i@@3 lo@@0 hi@@1 ar_1@@1))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3299| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.608:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3299| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_34127) (x T@Ref) ) (!  (=> (|Seq#Contains_34127| s@@7 x) (and (and (<= 0 (|Seq#Skolem_34127| s@@7 x)) (< (|Seq#Skolem_34127| s@@7 x) (|Seq#Length_18914| s@@7))) (= (|Seq#Index_18914| s@@7 (|Seq#Skolem_34127| s@@7 x)) x)))
 :qid |stdinbpl.466:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_34127| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3299) (x@@0 Int) ) (!  (=> (|Seq#Contains_3299| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3299| s@@8 x@@0)) (< (|Seq#Skolem_3299| s@@8 x@@0) (|Seq#Length_3299| s@@8))) (= (|Seq#Index_3299| s@@8 (|Seq#Skolem_3299| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.466:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3299| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_34127) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_18914| s@@9 n@@7) s@@9))
 :qid |stdinbpl.450:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_18914| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3299) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3299| s@@10 n@@8) s@@10))
 :qid |stdinbpl.450:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3299| s@@10 n@@8))
)))
(assert (forall ((i@@4 Int) (j@@2 Int) ) (! (= (|Seq#Sub| i@@4 j@@2) (- i@@4 j@@2))
 :qid |stdinbpl.303:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@4 j@@2))
)))
(assert (forall ((i@@5 Int) (j@@3 Int) ) (! (= (|Seq#Add| i@@5 j@@3) (+ i@@5 j@@3))
 :qid |stdinbpl.301:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@5 j@@3))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_26941) (ExhaleHeap T@PolymorphicMapType_26941) (Mask@@2 T@PolymorphicMapType_26962) (pm_f_2 T@Field_18875_74674) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@2) (=> (and (HasDirectPerm_18875_74738 Mask@@2 null pm_f_2) (IsPredicateField_18875_74765 pm_f_2)) (= (select (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| Heap@@3) null (PredicateMaskField_18875 pm_f_2)) (select (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| ExhaleHeap) null (PredicateMaskField_18875 pm_f_2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@2) (IsPredicateField_18875_74765 pm_f_2) (select (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| ExhaleHeap) null (PredicateMaskField_18875 pm_f_2)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_26941) (ExhaleHeap@@0 T@PolymorphicMapType_26941) (Mask@@3 T@PolymorphicMapType_26962) (pm_f_2@@0 T@Field_18875_74674) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@3) (=> (and (HasDirectPerm_18875_74738 Mask@@3 null pm_f_2@@0) (IsWandField_18875_76512 pm_f_2@@0)) (= (select (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| Heap@@4) null (WandMaskField_18875 pm_f_2@@0)) (select (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| ExhaleHeap@@0) null (WandMaskField_18875 pm_f_2@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@3) (IsWandField_18875_76512 pm_f_2@@0) (select (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| ExhaleHeap@@0) null (WandMaskField_18875 pm_f_2@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_34127| (|Seq#Singleton_18914| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.591:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_34127| (|Seq#Singleton_18914| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3299| (|Seq#Singleton_3299| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.591:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3299| (|Seq#Singleton_3299| x@@2) y@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_26941) (i@@6 Int) (lo@@1 Int) (hi@@2 Int) (step@@0 Int) (vmin@@0 Int) (vmax_1@@0 Int) (ar_1@@2 T@Seq_34127) (v_2@@0 Int) ) (!  (and (= (count_square Heap@@5 i@@6 lo@@1 hi@@2 step@@0 vmin@@0 vmax_1@@0 ar_1@@2 v_2@@0) (|count_square'| Heap@@5 i@@6 lo@@1 hi@@2 step@@0 vmin@@0 vmax_1@@0 ar_1@@2 v_2@@0)) (dummyFunction_3743 (|count_square#triggerStateless| i@@6 lo@@1 hi@@2 step@@0 vmin@@0 vmax_1@@0 ar_1@@2 v_2@@0)))
 :qid |stdinbpl.1218:15|
 :skolemid |104|
 :pattern ( (count_square Heap@@5 i@@6 lo@@1 hi@@2 step@@0 vmin@@0 vmax_1@@0 ar_1@@2 v_2@@0))
)))
(assert (forall ((s@@11 T@Seq_34127) (n@@9 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@9)) (< j@@4 (|Seq#Length_18914| s@@11))) (= (|Seq#Index_18914| (|Seq#Take_18914| s@@11 n@@9) j@@4) (|Seq#Index_18914| s@@11 j@@4)))
 :qid |stdinbpl.342:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_18914| (|Seq#Take_18914| s@@11 n@@9) j@@4))
 :pattern ( (|Seq#Index_18914| s@@11 j@@4) (|Seq#Take_18914| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3299) (n@@10 Int) (j@@5 Int) ) (!  (=> (and (and (<= 0 j@@5) (< j@@5 n@@10)) (< j@@5 (|Seq#Length_3299| s@@12))) (= (|Seq#Index_3299| (|Seq#Take_3299| s@@12 n@@10) j@@5) (|Seq#Index_3299| s@@12 j@@5)))
 :qid |stdinbpl.342:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3299| (|Seq#Take_3299| s@@12 n@@10) j@@5))
 :pattern ( (|Seq#Index_3299| s@@12 j@@5) (|Seq#Take_3299| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_34127) (t T@Seq_34127) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_18914| s@@13))) (< n@@11 (|Seq#Length_18914| (|Seq#Append_34127| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_18914| s@@13)) (|Seq#Length_18914| s@@13)) n@@11) (= (|Seq#Take_18914| (|Seq#Append_34127| s@@13 t) n@@11) (|Seq#Append_34127| s@@13 (|Seq#Take_18914| t (|Seq#Sub| n@@11 (|Seq#Length_18914| s@@13)))))))
 :qid |stdinbpl.427:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_18914| (|Seq#Append_34127| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3299) (t@@0 T@Seq_3299) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3299| s@@14))) (< n@@12 (|Seq#Length_3299| (|Seq#Append_3299| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3299| s@@14)) (|Seq#Length_3299| s@@14)) n@@12) (= (|Seq#Take_3299| (|Seq#Append_3299| s@@14 t@@0) n@@12) (|Seq#Append_3299| s@@14 (|Seq#Take_3299| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3299| s@@14)))))))
 :qid |stdinbpl.427:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3299| (|Seq#Append_3299| s@@14 t@@0) n@@12))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_26941) (i@@7 Int) (lo@@2 Int) (hi@@3 Int) (step@@1 Int) (vmin@@1 Int) (vmax_1@@1 Int) (ar_1@@3 T@Seq_34127) (v_2@@1 Int) ) (! (dummyFunction_3743 (|count_square#triggerStateless| i@@7 lo@@2 hi@@3 step@@1 vmin@@1 vmax_1@@1 ar_1@@3 v_2@@1))
 :qid |stdinbpl.1222:15|
 :skolemid |105|
 :pattern ( (|count_square'| Heap@@6 i@@7 lo@@2 hi@@3 step@@1 vmin@@1 vmax_1@@1 ar_1@@3 v_2@@1))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_26941) (Heap1Heap T@PolymorphicMapType_26941) (i@@8 Int) (lo@@3 Int) (hi@@4 Int) (step@@2 Int) (vmin@@2 Int) (vmax_1@@2 Int) (ar_1@@4 T@Seq_34127) ) (!  (=> (and (=  (and (<= vmin@@2 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) vmax_1@@2) (and (<= lo@@3 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2) hi@@4))))  (and (<= vmin@@2 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) vmax_1@@2) (and (<= lo@@3 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2) hi@@4))))) (=> (and (<= vmin@@2 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) vmax_1@@2) (and (<= lo@@3 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2) hi@@4)))) (= (select (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| Heap2Heap) (|Seq#Index_18914| ar_1@@4 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) Ref__Integer_value) (select (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| Heap1Heap) (|Seq#Index_18914| ar_1@@4 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) Ref__Integer_value)))) (= (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)))
 :qid |stdinbpl.982:15|
 :skolemid |88|
 :pattern ( (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_26941) (Mask@@4 T@PolymorphicMapType_26962) (i@@9 Int) (lo@@4 Int) (hi@@5 Int) (step@@3 Int) (vmin@@3 Int) (vmax_1@@3 Int) (ar_1@@5 T@Seq_34127) ) (!  (=> (and (state Heap@@7 Mask@@4) (< AssumeFunctionsAbove 1)) (=> (and (and (and (and (<= 0 lo@@4) (and (<= lo@@4 hi@@5) (and (<= hi@@5 step@@3) (> step@@3 0)))) (and (<= 0 vmin@@3) (and (<= vmin@@3 i@@9) (<= i@@9 vmax_1@@3)))) (<= vmax_1@@3 (|Seq#Length_18914| ar_1@@5))) (forall ((j@@6 Int) (k@@0 Int) ) (!  (=> (and (<= 0 j@@6) (and (< j@@6 (|Seq#Length_18914| ar_1@@5)) (and (<= 0 k@@0) (and (< k@@0 (|Seq#Length_18914| ar_1@@5)) (not (= j@@6 k@@0)))))) (not (= (|Seq#Index_18914| ar_1@@5 j@@6) (|Seq#Index_18914| ar_1@@5 k@@0))))
 :qid |stdinbpl.964:195|
 :skolemid |85|
 :pattern ( (|Seq#Index_18914| ar_1@@5 j@@6) (|Seq#Index_18914| ar_1@@5 k@@0))
))) (= (sum_square Heap@@7 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5) (ite (< i@@9 vmax_1@@3) (+ (ite  (and (<= lo@@4 (mod i@@9 step@@3)) (< (mod i@@9 step@@3) hi@@5)) (select (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| Heap@@7) (|Seq#Index_18914| ar_1@@5 i@@9) Ref__Integer_value) 0) (|sum_square'| Heap@@7 (+ i@@9 1) lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5)) 0))))
 :qid |stdinbpl.962:15|
 :skolemid |86|
 :pattern ( (state Heap@@7 Mask@@4) (sum_square Heap@@7 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_26941) (Heap1Heap@@0 T@PolymorphicMapType_26941) (i@@10 Int) (lo@@5 Int) (hi@@6 Int) (step@@4 Int) (vmin@@4 Int) (vmax_1@@4 Int) (ar_1@@6 T@Seq_34127) (v_2@@2 Int) ) (!  (=> (and (=  (and (<= vmin@@4 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2)) vmax_1@@4) (and (<= lo@@5 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2)) step@@4)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2)) step@@4) hi@@6))))  (and (<= vmin@@4 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2)) vmax_1@@4) (and (<= lo@@5 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2)) step@@4)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2)) step@@4) hi@@6))))) (=> (and (<= vmin@@4 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2)) vmax_1@@4) (and (<= lo@@5 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2)) step@@4)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2)) step@@4) hi@@6)))) (= (select (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| Heap2Heap@@0) (|Seq#Index_18914| ar_1@@6 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2))) Ref__Integer_value) (select (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| Heap1Heap@@0) (|Seq#Index_18914| ar_1@@6 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2))) Ref__Integer_value)))) (= (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2)))
 :qid |stdinbpl.1248:15|
 :skolemid |109|
 :pattern ( (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@8 T@PolymorphicMapType_26941) (ExhaleHeap@@1 T@PolymorphicMapType_26941) (Mask@@5 T@PolymorphicMapType_26962) (o_8 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@5) (=> (select (|PolymorphicMapType_26941_18649_53#PolymorphicMapType_26941| Heap@@8) o_8 $allocated) (select (|PolymorphicMapType_26941_18649_53#PolymorphicMapType_26941| ExhaleHeap@@1) o_8 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@5) (select (|PolymorphicMapType_26941_18649_53#PolymorphicMapType_26941| ExhaleHeap@@1) o_8 $allocated))
)))
(assert (forall ((p T@Field_18875_74674) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_27001_27001 p v_1 p w))
 :qid |stdinbpl.245:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_27001_27001 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_34127) (s1 T@Seq_34127) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_18914|)) (not (= s1 |Seq#Empty_18914|))) (<= (|Seq#Length_18914| s0) n@@13)) (< n@@13 (|Seq#Length_18914| (|Seq#Append_34127| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_18914| s0)) (|Seq#Length_18914| s0)) n@@13) (= (|Seq#Index_18914| (|Seq#Append_34127| s0 s1) n@@13) (|Seq#Index_18914| s1 (|Seq#Sub| n@@13 (|Seq#Length_18914| s0))))))
 :qid |stdinbpl.314:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_18914| (|Seq#Append_34127| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3299) (s1@@0 T@Seq_3299) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3299|)) (not (= s1@@0 |Seq#Empty_3299|))) (<= (|Seq#Length_3299| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3299| (|Seq#Append_3299| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3299| s0@@0)) (|Seq#Length_3299| s0@@0)) n@@14) (= (|Seq#Index_3299| (|Seq#Append_3299| s0@@0 s1@@0) n@@14) (|Seq#Index_3299| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3299| s0@@0))))))
 :qid |stdinbpl.314:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3299| (|Seq#Append_3299| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_18873_3421 Ref__res)))
(assert  (not (IsWandField_18873_3421 Ref__res)))
(assert  (not (IsPredicateField_18873_3421 Ref__Integer_value)))
(assert  (not (IsWandField_18873_3421 Ref__Integer_value)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_26941) (ExhaleHeap@@2 T@PolymorphicMapType_26941) (Mask@@6 T@PolymorphicMapType_26962) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@6) (succHeap Heap@@9 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_26962) (o_2@@4 T@Ref) (f_4@@4 T@Field_18875_74807) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_26962_18875_78929#PolymorphicMapType_26962| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_18875_80058 f_4@@4))) (not (IsWandField_18875_80074 f_4@@4))) (<= (select (|PolymorphicMapType_26962_18875_78929#PolymorphicMapType_26962| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_26962_18875_78929#PolymorphicMapType_26962| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_26962) (o_2@@5 T@Ref) (f_4@@5 T@Field_18875_74674) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_26962_18875_74674#PolymorphicMapType_26962| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_18875_74765 f_4@@5))) (not (IsWandField_18875_76512 f_4@@5))) (<= (select (|PolymorphicMapType_26962_18875_74674#PolymorphicMapType_26962| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_26962_18875_74674#PolymorphicMapType_26962| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_26962) (o_2@@6 T@Ref) (f_4@@6 T@Field_27014_27015) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_26962_18875_27015#PolymorphicMapType_26962| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_18875_27015 f_4@@6))) (not (IsWandField_18875_27015 f_4@@6))) (<= (select (|PolymorphicMapType_26962_18875_27015#PolymorphicMapType_26962| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_26962_18875_27015#PolymorphicMapType_26962| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_26962) (o_2@@7 T@Ref) (f_4@@7 T@Field_27001_53) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_26962_18875_53#PolymorphicMapType_26962| Mask@@10) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_18875_53 f_4@@7))) (not (IsWandField_18875_53 f_4@@7))) (<= (select (|PolymorphicMapType_26962_18875_53#PolymorphicMapType_26962| Mask@@10) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_26962_18875_53#PolymorphicMapType_26962| Mask@@10) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_26962) (o_2@@8 T@Ref) (f_4@@8 T@Field_33055_3421) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_26962_18875_3436#PolymorphicMapType_26962| Mask@@11) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_18873_3421 f_4@@8))) (not (IsWandField_18873_3421 f_4@@8))) (<= (select (|PolymorphicMapType_26962_18875_3436#PolymorphicMapType_26962| Mask@@11) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_26962_18875_3436#PolymorphicMapType_26962| Mask@@11) o_2@@8 f_4@@8))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_26941) (Mask@@12 T@PolymorphicMapType_26962) (i@@11 Int) (hi@@7 Int) (ar_1@@7 T@Seq_3299) ) (!  (=> (state Heap@@10 Mask@@12) (= (|sum_list'| Heap@@10 i@@11 hi@@7 ar_1@@7) (|sum_list#frame| EmptyFrame i@@11 hi@@7 ar_1@@7)))
 :qid |stdinbpl.649:15|
 :skolemid |61|
 :pattern ( (state Heap@@10 Mask@@12) (|sum_list'| Heap@@10 i@@11 hi@@7 ar_1@@7))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_26962) (o_2@@9 T@Ref) (f_4@@9 T@Field_18875_74807) ) (! (= (HasDirectPerm_18875_80512 Mask@@13 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_26962_18875_78929#PolymorphicMapType_26962| Mask@@13) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18875_80512 Mask@@13 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_26962) (o_2@@10 T@Ref) (f_4@@10 T@Field_18875_74674) ) (! (= (HasDirectPerm_18875_74738 Mask@@14 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_26962_18875_74674#PolymorphicMapType_26962| Mask@@14) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18875_74738 Mask@@14 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_26962) (o_2@@11 T@Ref) (f_4@@11 T@Field_27014_27015) ) (! (= (HasDirectPerm_18875_27015 Mask@@15 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_26962_18875_27015#PolymorphicMapType_26962| Mask@@15) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18875_27015 Mask@@15 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_26962) (o_2@@12 T@Ref) (f_4@@12 T@Field_27001_53) ) (! (= (HasDirectPerm_18875_53 Mask@@16 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_26962_18875_53#PolymorphicMapType_26962| Mask@@16) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18875_53 Mask@@16 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_26962) (o_2@@13 T@Ref) (f_4@@13 T@Field_33055_3421) ) (! (= (HasDirectPerm_18875_3436 Mask@@17 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_26962_18875_3436#PolymorphicMapType_26962| Mask@@17) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18875_3436 Mask@@17 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_26941) (i@@12 Int) (lo@@6 Int) (hi@@8 Int) (ar_1@@8 T@Seq_34127) ) (! (dummyFunction_3743 (|sum_array#triggerStateless| i@@12 lo@@6 hi@@8 ar_1@@8))
 :qid |stdinbpl.721:15|
 :skolemid |63|
 :pattern ( (|sum_array'| Heap@@11 i@@12 lo@@6 hi@@8 ar_1@@8))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_26941) (i@@13 Int) (hi@@9 Int) (ar_1@@9 T@Seq_3299) (v_2@@3 Int) ) (! (dummyFunction_3743 (|count_list#triggerStateless| i@@13 hi@@9 ar_1@@9 v_2@@3))
 :qid |stdinbpl.1488:15|
 :skolemid |126|
 :pattern ( (|count_list'| Heap@@12 i@@13 hi@@9 ar_1@@9 v_2@@3))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_26941) (i@@14 Int) (hi@@10 Int) (ar_1@@10 T@Seq_34127) (v_2@@4 Int) ) (! (dummyFunction_3743 (|count_array#triggerStateless| i@@14 hi@@10 ar_1@@10 v_2@@4))
 :qid |stdinbpl.1573:15|
 :skolemid |130|
 :pattern ( (|count_array'| Heap@@13 i@@14 hi@@10 ar_1@@10 v_2@@4))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_26941) (ExhaleHeap@@3 T@PolymorphicMapType_26941) (Mask@@18 T@PolymorphicMapType_26962) (pm_f_2@@1 T@Field_18875_74674) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@3 Mask@@18) (=> (and (HasDirectPerm_18875_74738 Mask@@18 null pm_f_2@@1) (IsPredicateField_18875_74765 pm_f_2@@1)) (and (and (and (and (forall ((o2_2 T@Ref) (f_14 T@Field_27001_53) ) (!  (=> (select (|PolymorphicMapType_27490_27001_53#PolymorphicMapType_27490| (select (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| Heap@@14) null (PredicateMaskField_18875 pm_f_2@@1))) o2_2 f_14) (= (select (|PolymorphicMapType_26941_18649_53#PolymorphicMapType_26941| Heap@@14) o2_2 f_14) (select (|PolymorphicMapType_26941_18649_53#PolymorphicMapType_26941| ExhaleHeap@@3) o2_2 f_14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26941_18649_53#PolymorphicMapType_26941| ExhaleHeap@@3) o2_2 f_14))
)) (forall ((o2_2@@0 T@Ref) (f_14@@0 T@Field_27014_27015) ) (!  (=> (select (|PolymorphicMapType_27490_27001_27015#PolymorphicMapType_27490| (select (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| Heap@@14) null (PredicateMaskField_18875 pm_f_2@@1))) o2_2@@0 f_14@@0) (= (select (|PolymorphicMapType_26941_18652_18653#PolymorphicMapType_26941| Heap@@14) o2_2@@0 f_14@@0) (select (|PolymorphicMapType_26941_18652_18653#PolymorphicMapType_26941| ExhaleHeap@@3) o2_2@@0 f_14@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26941_18652_18653#PolymorphicMapType_26941| ExhaleHeap@@3) o2_2@@0 f_14@@0))
))) (forall ((o2_2@@1 T@Ref) (f_14@@1 T@Field_33055_3421) ) (!  (=> (select (|PolymorphicMapType_27490_27001_3421#PolymorphicMapType_27490| (select (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| Heap@@14) null (PredicateMaskField_18875 pm_f_2@@1))) o2_2@@1 f_14@@1) (= (select (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| Heap@@14) o2_2@@1 f_14@@1) (select (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| ExhaleHeap@@3) o2_2@@1 f_14@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| ExhaleHeap@@3) o2_2@@1 f_14@@1))
))) (forall ((o2_2@@2 T@Ref) (f_14@@2 T@Field_18875_74674) ) (!  (=> (select (|PolymorphicMapType_27490_27001_74674#PolymorphicMapType_27490| (select (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| Heap@@14) null (PredicateMaskField_18875 pm_f_2@@1))) o2_2@@2 f_14@@2) (= (select (|PolymorphicMapType_26941_27001_74674#PolymorphicMapType_26941| Heap@@14) o2_2@@2 f_14@@2) (select (|PolymorphicMapType_26941_27001_74674#PolymorphicMapType_26941| ExhaleHeap@@3) o2_2@@2 f_14@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26941_27001_74674#PolymorphicMapType_26941| ExhaleHeap@@3) o2_2@@2 f_14@@2))
))) (forall ((o2_2@@3 T@Ref) (f_14@@3 T@Field_18875_74807) ) (!  (=> (select (|PolymorphicMapType_27490_27001_75985#PolymorphicMapType_27490| (select (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| Heap@@14) null (PredicateMaskField_18875 pm_f_2@@1))) o2_2@@3 f_14@@3) (= (select (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| Heap@@14) o2_2@@3 f_14@@3) (select (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| ExhaleHeap@@3) o2_2@@3 f_14@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| ExhaleHeap@@3) o2_2@@3 f_14@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@3 Mask@@18) (IsPredicateField_18875_74765 pm_f_2@@1))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_26941) (ExhaleHeap@@4 T@PolymorphicMapType_26941) (Mask@@19 T@PolymorphicMapType_26962) (pm_f_2@@2 T@Field_18875_74674) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@4 Mask@@19) (=> (and (HasDirectPerm_18875_74738 Mask@@19 null pm_f_2@@2) (IsWandField_18875_76512 pm_f_2@@2)) (and (and (and (and (forall ((o2_2@@4 T@Ref) (f_14@@4 T@Field_27001_53) ) (!  (=> (select (|PolymorphicMapType_27490_27001_53#PolymorphicMapType_27490| (select (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| Heap@@15) null (WandMaskField_18875 pm_f_2@@2))) o2_2@@4 f_14@@4) (= (select (|PolymorphicMapType_26941_18649_53#PolymorphicMapType_26941| Heap@@15) o2_2@@4 f_14@@4) (select (|PolymorphicMapType_26941_18649_53#PolymorphicMapType_26941| ExhaleHeap@@4) o2_2@@4 f_14@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26941_18649_53#PolymorphicMapType_26941| ExhaleHeap@@4) o2_2@@4 f_14@@4))
)) (forall ((o2_2@@5 T@Ref) (f_14@@5 T@Field_27014_27015) ) (!  (=> (select (|PolymorphicMapType_27490_27001_27015#PolymorphicMapType_27490| (select (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| Heap@@15) null (WandMaskField_18875 pm_f_2@@2))) o2_2@@5 f_14@@5) (= (select (|PolymorphicMapType_26941_18652_18653#PolymorphicMapType_26941| Heap@@15) o2_2@@5 f_14@@5) (select (|PolymorphicMapType_26941_18652_18653#PolymorphicMapType_26941| ExhaleHeap@@4) o2_2@@5 f_14@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26941_18652_18653#PolymorphicMapType_26941| ExhaleHeap@@4) o2_2@@5 f_14@@5))
))) (forall ((o2_2@@6 T@Ref) (f_14@@6 T@Field_33055_3421) ) (!  (=> (select (|PolymorphicMapType_27490_27001_3421#PolymorphicMapType_27490| (select (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| Heap@@15) null (WandMaskField_18875 pm_f_2@@2))) o2_2@@6 f_14@@6) (= (select (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| Heap@@15) o2_2@@6 f_14@@6) (select (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| ExhaleHeap@@4) o2_2@@6 f_14@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| ExhaleHeap@@4) o2_2@@6 f_14@@6))
))) (forall ((o2_2@@7 T@Ref) (f_14@@7 T@Field_18875_74674) ) (!  (=> (select (|PolymorphicMapType_27490_27001_74674#PolymorphicMapType_27490| (select (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| Heap@@15) null (WandMaskField_18875 pm_f_2@@2))) o2_2@@7 f_14@@7) (= (select (|PolymorphicMapType_26941_27001_74674#PolymorphicMapType_26941| Heap@@15) o2_2@@7 f_14@@7) (select (|PolymorphicMapType_26941_27001_74674#PolymorphicMapType_26941| ExhaleHeap@@4) o2_2@@7 f_14@@7)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26941_27001_74674#PolymorphicMapType_26941| ExhaleHeap@@4) o2_2@@7 f_14@@7))
))) (forall ((o2_2@@8 T@Ref) (f_14@@8 T@Field_18875_74807) ) (!  (=> (select (|PolymorphicMapType_27490_27001_75985#PolymorphicMapType_27490| (select (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| Heap@@15) null (WandMaskField_18875 pm_f_2@@2))) o2_2@@8 f_14@@8) (= (select (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| Heap@@15) o2_2@@8 f_14@@8) (select (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| ExhaleHeap@@4) o2_2@@8 f_14@@8)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| ExhaleHeap@@4) o2_2@@8 f_14@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@4 Mask@@19) (IsWandField_18875_76512 pm_f_2@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.233:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3299| (|Seq#Range| q@min@@0 q@max@@0) j@@7) (+ q@min@@0 j@@7)))
 :qid |stdinbpl.606:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3299| (|Seq#Range| q@min@@0 q@max@@0) j@@7))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_26941) (ExhaleHeap@@5 T@PolymorphicMapType_26941) (Mask@@20 T@PolymorphicMapType_26962) (o_8@@0 T@Ref) (f_14@@9 T@Field_18875_74807) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@5 Mask@@20) (=> (HasDirectPerm_18875_80512 Mask@@20 o_8@@0 f_14@@9) (= (select (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| Heap@@16) o_8@@0 f_14@@9) (select (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| ExhaleHeap@@5) o_8@@0 f_14@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@5 Mask@@20) (select (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| ExhaleHeap@@5) o_8@@0 f_14@@9))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_26941) (ExhaleHeap@@6 T@PolymorphicMapType_26941) (Mask@@21 T@PolymorphicMapType_26962) (o_8@@1 T@Ref) (f_14@@10 T@Field_18875_74674) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@6 Mask@@21) (=> (HasDirectPerm_18875_74738 Mask@@21 o_8@@1 f_14@@10) (= (select (|PolymorphicMapType_26941_27001_74674#PolymorphicMapType_26941| Heap@@17) o_8@@1 f_14@@10) (select (|PolymorphicMapType_26941_27001_74674#PolymorphicMapType_26941| ExhaleHeap@@6) o_8@@1 f_14@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@6 Mask@@21) (select (|PolymorphicMapType_26941_27001_74674#PolymorphicMapType_26941| ExhaleHeap@@6) o_8@@1 f_14@@10))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_26941) (ExhaleHeap@@7 T@PolymorphicMapType_26941) (Mask@@22 T@PolymorphicMapType_26962) (o_8@@2 T@Ref) (f_14@@11 T@Field_27014_27015) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@7 Mask@@22) (=> (HasDirectPerm_18875_27015 Mask@@22 o_8@@2 f_14@@11) (= (select (|PolymorphicMapType_26941_18652_18653#PolymorphicMapType_26941| Heap@@18) o_8@@2 f_14@@11) (select (|PolymorphicMapType_26941_18652_18653#PolymorphicMapType_26941| ExhaleHeap@@7) o_8@@2 f_14@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@7 Mask@@22) (select (|PolymorphicMapType_26941_18652_18653#PolymorphicMapType_26941| ExhaleHeap@@7) o_8@@2 f_14@@11))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_26941) (ExhaleHeap@@8 T@PolymorphicMapType_26941) (Mask@@23 T@PolymorphicMapType_26962) (o_8@@3 T@Ref) (f_14@@12 T@Field_27001_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@8 Mask@@23) (=> (HasDirectPerm_18875_53 Mask@@23 o_8@@3 f_14@@12) (= (select (|PolymorphicMapType_26941_18649_53#PolymorphicMapType_26941| Heap@@19) o_8@@3 f_14@@12) (select (|PolymorphicMapType_26941_18649_53#PolymorphicMapType_26941| ExhaleHeap@@8) o_8@@3 f_14@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@8 Mask@@23) (select (|PolymorphicMapType_26941_18649_53#PolymorphicMapType_26941| ExhaleHeap@@8) o_8@@3 f_14@@12))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_26941) (ExhaleHeap@@9 T@PolymorphicMapType_26941) (Mask@@24 T@PolymorphicMapType_26962) (o_8@@4 T@Ref) (f_14@@13 T@Field_33055_3421) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@9 Mask@@24) (=> (HasDirectPerm_18875_3436 Mask@@24 o_8@@4 f_14@@13) (= (select (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| Heap@@20) o_8@@4 f_14@@13) (select (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| ExhaleHeap@@9) o_8@@4 f_14@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@9 Mask@@24) (select (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| ExhaleHeap@@9) o_8@@4 f_14@@13))
)))
(assert (forall ((s0@@1 T@Seq_34127) (s1@@1 T@Seq_34127) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_18914|)) (not (= s1@@1 |Seq#Empty_18914|))) (= (|Seq#Length_18914| (|Seq#Append_34127| s0@@1 s1@@1)) (+ (|Seq#Length_18914| s0@@1) (|Seq#Length_18914| s1@@1))))
 :qid |stdinbpl.283:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_18914| (|Seq#Append_34127| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3299) (s1@@2 T@Seq_3299) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3299|)) (not (= s1@@2 |Seq#Empty_3299|))) (= (|Seq#Length_3299| (|Seq#Append_3299| s0@@2 s1@@2)) (+ (|Seq#Length_3299| s0@@2) (|Seq#Length_3299| s1@@2))))
 :qid |stdinbpl.283:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3299| (|Seq#Append_3299| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_18875_74807) ) (! (= (select (|PolymorphicMapType_26962_18875_78929#PolymorphicMapType_26962| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_26962_18875_78929#PolymorphicMapType_26962| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_18875_74674) ) (! (= (select (|PolymorphicMapType_26962_18875_74674#PolymorphicMapType_26962| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_26962_18875_74674#PolymorphicMapType_26962| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_27014_27015) ) (! (= (select (|PolymorphicMapType_26962_18875_27015#PolymorphicMapType_26962| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_26962_18875_27015#PolymorphicMapType_26962| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_27001_53) ) (! (= (select (|PolymorphicMapType_26962_18875_53#PolymorphicMapType_26962| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_26962_18875_53#PolymorphicMapType_26962| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_33055_3421) ) (! (= (select (|PolymorphicMapType_26962_18875_3436#PolymorphicMapType_26962| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_26962_18875_3436#PolymorphicMapType_26962| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_26941) (Mask@@25 T@PolymorphicMapType_26962) (i@@15 Int) (hi@@11 Int) (ar_1@@11 T@Seq_3299) (v_2@@5 Int) ) (!  (=> (and (state Heap@@21 Mask@@25) (< AssumeFunctionsAbove 5)) (=> (and (and (<= 0 i@@15) (<= i@@15 hi@@11)) (<= hi@@11 (|Seq#Length_3299| ar_1@@11))) (= (count_list Heap@@21 i@@15 hi@@11 ar_1@@11 v_2@@5) (ite (< i@@15 hi@@11) (+ (ite (= (|Seq#Index_3299| ar_1@@11 i@@15) v_2@@5) 1 0) (|count_list'| Heap@@21 (+ i@@15 1) hi@@11 ar_1@@11 v_2@@5)) 0))))
 :qid |stdinbpl.1494:15|
 :skolemid |127|
 :pattern ( (state Heap@@21 Mask@@25) (count_list Heap@@21 i@@15 hi@@11 ar_1@@11 v_2@@5))
)))
(assert (forall ((s@@15 T@Seq_34127) (t@@1 T@Seq_34127) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_18914| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_18914| s@@15)) (|Seq#Length_18914| s@@15)) n@@15) (= (|Seq#Drop_18914| (|Seq#Append_34127| s@@15 t@@1) n@@15) (|Seq#Drop_18914| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_18914| s@@15))))))
 :qid |stdinbpl.440:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_18914| (|Seq#Append_34127| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3299) (t@@2 T@Seq_3299) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3299| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3299| s@@16)) (|Seq#Length_3299| s@@16)) n@@16) (= (|Seq#Drop_3299| (|Seq#Append_3299| s@@16 t@@2) n@@16) (|Seq#Drop_3299| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3299| s@@16))))))
 :qid |stdinbpl.440:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3299| (|Seq#Append_3299| s@@16 t@@2) n@@16))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_26941) (i@@16 Int) (lo@@7 Int) (hi@@12 Int) (ar_1@@12 T@Seq_34127) ) (!  (and (= (sum_array Heap@@22 i@@16 lo@@7 hi@@12 ar_1@@12) (|sum_array'| Heap@@22 i@@16 lo@@7 hi@@12 ar_1@@12)) (dummyFunction_3743 (|sum_array#triggerStateless| i@@16 lo@@7 hi@@12 ar_1@@12)))
 :qid |stdinbpl.717:15|
 :skolemid |62|
 :pattern ( (sum_array Heap@@22 i@@16 lo@@7 hi@@12 ar_1@@12))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_26941) (i@@17 Int) (hi@@13 Int) (ar_1@@13 T@Seq_3299) (v_2@@6 Int) ) (!  (and (= (count_list Heap@@23 i@@17 hi@@13 ar_1@@13 v_2@@6) (|count_list'| Heap@@23 i@@17 hi@@13 ar_1@@13 v_2@@6)) (dummyFunction_3743 (|count_list#triggerStateless| i@@17 hi@@13 ar_1@@13 v_2@@6)))
 :qid |stdinbpl.1484:15|
 :skolemid |125|
 :pattern ( (count_list Heap@@23 i@@17 hi@@13 ar_1@@13 v_2@@6))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_26941) (i@@18 Int) (hi@@14 Int) (ar_1@@14 T@Seq_34127) (v_2@@7 Int) ) (!  (and (= (count_array Heap@@24 i@@18 hi@@14 ar_1@@14 v_2@@7) (|count_array'| Heap@@24 i@@18 hi@@14 ar_1@@14 v_2@@7)) (dummyFunction_3743 (|count_array#triggerStateless| i@@18 hi@@14 ar_1@@14 v_2@@7)))
 :qid |stdinbpl.1569:15|
 :skolemid |129|
 :pattern ( (count_array Heap@@24 i@@18 hi@@14 ar_1@@14 v_2@@7))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_26962) (SummandMask1 T@PolymorphicMapType_26962) (SummandMask2 T@PolymorphicMapType_26962) (o_2@@19 T@Ref) (f_4@@19 T@Field_18875_74807) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_26962_18875_78929#PolymorphicMapType_26962| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_26962_18875_78929#PolymorphicMapType_26962| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_26962_18875_78929#PolymorphicMapType_26962| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_26962_18875_78929#PolymorphicMapType_26962| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_26962_18875_78929#PolymorphicMapType_26962| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_26962_18875_78929#PolymorphicMapType_26962| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_26962) (SummandMask1@@0 T@PolymorphicMapType_26962) (SummandMask2@@0 T@PolymorphicMapType_26962) (o_2@@20 T@Ref) (f_4@@20 T@Field_18875_74674) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_26962_18875_74674#PolymorphicMapType_26962| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_26962_18875_74674#PolymorphicMapType_26962| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_26962_18875_74674#PolymorphicMapType_26962| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_26962_18875_74674#PolymorphicMapType_26962| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_26962_18875_74674#PolymorphicMapType_26962| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_26962_18875_74674#PolymorphicMapType_26962| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_26962) (SummandMask1@@1 T@PolymorphicMapType_26962) (SummandMask2@@1 T@PolymorphicMapType_26962) (o_2@@21 T@Ref) (f_4@@21 T@Field_27014_27015) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_26962_18875_27015#PolymorphicMapType_26962| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_26962_18875_27015#PolymorphicMapType_26962| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_26962_18875_27015#PolymorphicMapType_26962| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_26962_18875_27015#PolymorphicMapType_26962| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_26962_18875_27015#PolymorphicMapType_26962| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_26962_18875_27015#PolymorphicMapType_26962| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_26962) (SummandMask1@@2 T@PolymorphicMapType_26962) (SummandMask2@@2 T@PolymorphicMapType_26962) (o_2@@22 T@Ref) (f_4@@22 T@Field_27001_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_26962_18875_53#PolymorphicMapType_26962| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_26962_18875_53#PolymorphicMapType_26962| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_26962_18875_53#PolymorphicMapType_26962| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_26962_18875_53#PolymorphicMapType_26962| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_26962_18875_53#PolymorphicMapType_26962| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_26962_18875_53#PolymorphicMapType_26962| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_26962) (SummandMask1@@3 T@PolymorphicMapType_26962) (SummandMask2@@3 T@PolymorphicMapType_26962) (o_2@@23 T@Ref) (f_4@@23 T@Field_33055_3421) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_26962_18875_3436#PolymorphicMapType_26962| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_26962_18875_3436#PolymorphicMapType_26962| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_26962_18875_3436#PolymorphicMapType_26962| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_26962_18875_3436#PolymorphicMapType_26962| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_26962_18875_3436#PolymorphicMapType_26962| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_26962_18875_3436#PolymorphicMapType_26962| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_26941) (i@@19 Int) (lo@@8 Int) (hi@@15 Int) (step@@5 Int) (vmin@@5 Int) (vmax_1@@5 Int) (ar_1@@15 T@Seq_34127) ) (!  (and (= (sum_square Heap@@25 i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax_1@@5 ar_1@@15) (|sum_square'| Heap@@25 i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax_1@@5 ar_1@@15)) (dummyFunction_3743 (|sum_square#triggerStateless| i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax_1@@5 ar_1@@15)))
 :qid |stdinbpl.952:15|
 :skolemid |83|
 :pattern ( (sum_square Heap@@25 i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax_1@@5 ar_1@@15))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_26941) (Mask@@26 T@PolymorphicMapType_26962) (i@@20 Int) (hi@@16 Int) (ar_1@@16 T@Seq_3299) (v_2@@8 Int) ) (!  (=> (state Heap@@26 Mask@@26) (= (|count_list'| Heap@@26 i@@20 hi@@16 ar_1@@16 v_2@@8) (|count_list#frame| EmptyFrame i@@20 hi@@16 ar_1@@16 v_2@@8)))
 :qid |stdinbpl.1501:15|
 :skolemid |128|
 :pattern ( (state Heap@@26 Mask@@26) (|count_list'| Heap@@26 i@@20 hi@@16 ar_1@@16 v_2@@8))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3299| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3299| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.605:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3299| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_26941) (Mask@@27 T@PolymorphicMapType_26962) (i@@21 Int) (lo@@9 Int) (hi@@17 Int) (step@@6 Int) (vmin@@6 Int) (vmax_1@@6 Int) (ar_1@@17 T@Seq_34127) (v_2@@9 Int) ) (!  (=> (and (state Heap@@27 Mask@@27) (< AssumeFunctionsAbove 0)) (=> (and (and (and (and (<= 0 lo@@9) (and (<= lo@@9 hi@@17) (and (<= hi@@17 step@@6) (> step@@6 0)))) (and (<= 0 vmin@@6) (and (<= vmin@@6 i@@21) (<= i@@21 vmax_1@@6)))) (<= vmax_1@@6 (|Seq#Length_18914| ar_1@@17))) (forall ((j@@8 Int) (k@@1 Int) ) (!  (=> (and (<= 0 j@@8) (and (< j@@8 (|Seq#Length_18914| ar_1@@17)) (and (<= 0 k@@1) (and (< k@@1 (|Seq#Length_18914| ar_1@@17)) (not (= j@@8 k@@1)))))) (not (= (|Seq#Index_18914| ar_1@@17 j@@8) (|Seq#Index_18914| ar_1@@17 k@@1))))
 :qid |stdinbpl.1230:195|
 :skolemid |106|
 :pattern ( (|Seq#Index_18914| ar_1@@17 j@@8) (|Seq#Index_18914| ar_1@@17 k@@1))
))) (= (count_square Heap@@27 i@@21 lo@@9 hi@@17 step@@6 vmin@@6 vmax_1@@6 ar_1@@17 v_2@@9) (ite (< i@@21 vmax_1@@6) (+ (ite  (and (<= lo@@9 (mod i@@21 step@@6)) (and (< (mod i@@21 step@@6) hi@@17) (= (select (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| Heap@@27) (|Seq#Index_18914| ar_1@@17 i@@21) Ref__Integer_value) v_2@@9))) 1 0) (|count_square'| Heap@@27 (+ i@@21 1) lo@@9 hi@@17 step@@6 vmin@@6 vmax_1@@6 ar_1@@17 v_2@@9)) 0))))
 :qid |stdinbpl.1228:15|
 :skolemid |107|
 :pattern ( (state Heap@@27 Mask@@27) (count_square Heap@@27 i@@21 lo@@9 hi@@17 step@@6 vmin@@6 vmax_1@@6 ar_1@@17 v_2@@9))
)))
(assert (forall ((a T@Seq_34127) (b T@Seq_34127) ) (!  (=> (|Seq#Equal_34127| a b) (= a b))
 :qid |stdinbpl.578:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_34127| a b))
)))
(assert (forall ((a@@0 T@Seq_3299) (b@@0 T@Seq_3299) ) (!  (=> (|Seq#Equal_3299| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.578:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3299| a@@0 b@@0))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_26941) (i@@22 Int) (hi@@18 Int) (ar_1@@18 T@Seq_3299) ) (!  (and (= (sum_list Heap@@28 i@@22 hi@@18 ar_1@@18) (|sum_list'| Heap@@28 i@@22 hi@@18 ar_1@@18)) (dummyFunction_3743 (|sum_list#triggerStateless| i@@22 hi@@18 ar_1@@18)))
 :qid |stdinbpl.632:15|
 :skolemid |58|
 :pattern ( (sum_list Heap@@28 i@@22 hi@@18 ar_1@@18))
)))
(assert (forall ((s@@17 T@Seq_34127) (i@@23 Int) ) (!  (=> (and (<= 0 i@@23) (< i@@23 (|Seq#Length_18914| s@@17))) (|Seq#ContainsTrigger_18914| s@@17 (|Seq#Index_18914| s@@17 i@@23)))
 :qid |stdinbpl.471:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_18914| s@@17 i@@23))
)))
(assert (forall ((s@@18 T@Seq_3299) (i@@24 Int) ) (!  (=> (and (<= 0 i@@24) (< i@@24 (|Seq#Length_3299| s@@18))) (|Seq#ContainsTrigger_3299| s@@18 (|Seq#Index_3299| s@@18 i@@24)))
 :qid |stdinbpl.471:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3299| s@@18 i@@24))
)))
(assert (forall ((s0@@3 T@Seq_34127) (s1@@3 T@Seq_34127) ) (!  (and (=> (= s0@@3 |Seq#Empty_18914|) (= (|Seq#Append_34127| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_18914|) (= (|Seq#Append_34127| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.289:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_34127| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3299) (s1@@4 T@Seq_3299) ) (!  (and (=> (= s0@@4 |Seq#Empty_3299|) (= (|Seq#Append_3299| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3299|) (= (|Seq#Append_3299| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.289:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3299| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_18914| (|Seq#Singleton_18914| t@@3) 0) t@@3)
 :qid |stdinbpl.293:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_18914| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3299| (|Seq#Singleton_3299| t@@4) 0) t@@4)
 :qid |stdinbpl.293:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3299| t@@4))
)))
(assert (forall ((s@@19 T@Seq_34127) ) (! (<= 0 (|Seq#Length_18914| s@@19))
 :qid |stdinbpl.272:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_18914| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3299) ) (! (<= 0 (|Seq#Length_3299| s@@20))
 :qid |stdinbpl.272:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3299| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_34127) (s1@@5 T@Seq_34127) ) (!  (=> (|Seq#Equal_34127| s0@@5 s1@@5) (and (= (|Seq#Length_18914| s0@@5) (|Seq#Length_18914| s1@@5)) (forall ((j@@9 Int) ) (!  (=> (and (<= 0 j@@9) (< j@@9 (|Seq#Length_18914| s0@@5))) (= (|Seq#Index_18914| s0@@5 j@@9) (|Seq#Index_18914| s1@@5 j@@9)))
 :qid |stdinbpl.568:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_18914| s0@@5 j@@9))
 :pattern ( (|Seq#Index_18914| s1@@5 j@@9))
))))
 :qid |stdinbpl.565:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_34127| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3299) (s1@@6 T@Seq_3299) ) (!  (=> (|Seq#Equal_3299| s0@@6 s1@@6) (and (= (|Seq#Length_3299| s0@@6) (|Seq#Length_3299| s1@@6)) (forall ((j@@10 Int) ) (!  (=> (and (<= 0 j@@10) (< j@@10 (|Seq#Length_3299| s0@@6))) (= (|Seq#Index_3299| s0@@6 j@@10) (|Seq#Index_3299| s1@@6 j@@10)))
 :qid |stdinbpl.568:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3299| s0@@6 j@@10))
 :pattern ( (|Seq#Index_3299| s1@@6 j@@10))
))))
 :qid |stdinbpl.565:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3299| s0@@6 s1@@6))
)))
(assert (forall ((Heap2Heap@@1 T@PolymorphicMapType_26941) (Heap1Heap@@1 T@PolymorphicMapType_26941) (i@@25 Int) (hi@@19 Int) (ar_1@@19 T@Seq_34127) (v_2@@10 Int) ) (!  (=> (and (=  (and (<= 0 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10))) (< (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10)) hi@@19))  (and (<= 0 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10))) (< (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10)) hi@@19))) (=> (and (<= 0 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10))) (< (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10)) hi@@19)) (= (select (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| Heap2Heap@@1) (|Seq#Index_18914| ar_1@@19 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10))) Ref__Integer_value) (select (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| Heap1Heap@@1) (|Seq#Index_18914| ar_1@@19 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10))) Ref__Integer_value)))) (= (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10)))
 :qid |stdinbpl.1599:15|
 :skolemid |134|
 :pattern ( (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (succHeapTrans Heap2Heap@@1 Heap1Heap@@1))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_18914| (|Seq#Singleton_18914| t@@5)) 1)
 :qid |stdinbpl.280:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_18914| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3299| (|Seq#Singleton_3299| t@@6)) 1)
 :qid |stdinbpl.280:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3299| t@@6))
)))
(assert (forall ((Heap2Heap@@2 T@PolymorphicMapType_26941) (Heap1Heap@@2 T@PolymorphicMapType_26941) (i@@26 Int) (lo@@10 Int) (hi@@20 Int) (ar_1@@20 T@Seq_34127) ) (!  (=> (and (=  (and (<= lo@@10 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20))) (< (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20)) hi@@20))  (and (<= lo@@10 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20))) (< (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20)) hi@@20))) (=> (and (<= lo@@10 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20))) (< (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20)) hi@@20)) (= (select (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| Heap2Heap@@2) (|Seq#Index_18914| ar_1@@20 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20))) Ref__Integer_value) (select (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| Heap1Heap@@2) (|Seq#Index_18914| ar_1@@20 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20))) Ref__Integer_value)))) (= (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20)))
 :qid |stdinbpl.747:15|
 :skolemid |67|
 :pattern ( (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (succHeapTrans Heap2Heap@@2 Heap1Heap@@2))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_26941) (Mask@@28 T@PolymorphicMapType_26962) (i@@27 Int) (hi@@21 Int) (ar_1@@21 T@Seq_3299) ) (!  (=> (and (state Heap@@29 Mask@@28) (< AssumeFunctionsAbove 4)) (=> (and (and (<= 0 i@@27) (<= i@@27 hi@@21)) (<= hi@@21 (|Seq#Length_3299| ar_1@@21))) (= (sum_list Heap@@29 i@@27 hi@@21 ar_1@@21) (ite (< i@@27 hi@@21) (+ (|Seq#Index_3299| ar_1@@21 i@@27) (|sum_list'| Heap@@29 (+ i@@27 1) hi@@21 ar_1@@21)) 0))))
 :qid |stdinbpl.642:15|
 :skolemid |60|
 :pattern ( (state Heap@@29 Mask@@28) (sum_list Heap@@29 i@@27 hi@@21 ar_1@@21))
)))
(assert (forall ((s@@21 T@Seq_34127) (t@@7 T@Seq_34127) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_18914| s@@21))) (= (|Seq#Take_18914| (|Seq#Append_34127| s@@21 t@@7) n@@17) (|Seq#Take_18914| s@@21 n@@17)))
 :qid |stdinbpl.422:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_18914| (|Seq#Append_34127| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3299) (t@@8 T@Seq_3299) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3299| s@@22))) (= (|Seq#Take_3299| (|Seq#Append_3299| s@@22 t@@8) n@@18) (|Seq#Take_3299| s@@22 n@@18)))
 :qid |stdinbpl.422:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3299| (|Seq#Append_3299| s@@22 t@@8) n@@18))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_26941) (Mask@@29 T@PolymorphicMapType_26962) (i@@28 Int) (hi@@22 Int) (ar_1@@22 T@Seq_34127) (v_2@@11 Int) ) (!  (=> (and (state Heap@@30 Mask@@29) (< AssumeFunctionsAbove 2)) (=> (and (and (and (<= 0 i@@28) (<= i@@28 hi@@22)) (<= hi@@22 (|Seq#Length_18914| ar_1@@22))) (forall ((j@@11 Int) (k@@2 Int) ) (!  (=> (and (<= 0 j@@11) (and (< j@@11 (|Seq#Length_18914| ar_1@@22)) (and (<= 0 k@@2) (and (< k@@2 (|Seq#Length_18914| ar_1@@22)) (not (= j@@11 k@@2)))))) (not (= (|Seq#Index_18914| ar_1@@22 j@@11) (|Seq#Index_18914| ar_1@@22 k@@2))))
 :qid |stdinbpl.1581:112|
 :skolemid |131|
 :pattern ( (|Seq#Index_18914| ar_1@@22 j@@11) (|Seq#Index_18914| ar_1@@22 k@@2))
))) (= (count_array Heap@@30 i@@28 hi@@22 ar_1@@22 v_2@@11) (ite (< i@@28 hi@@22) (+ (ite (= (select (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| Heap@@30) (|Seq#Index_18914| ar_1@@22 i@@28) Ref__Integer_value) v_2@@11) 1 0) (|count_array'| Heap@@30 (+ i@@28 1) hi@@22 ar_1@@22 v_2@@11)) 0))))
 :qid |stdinbpl.1579:15|
 :skolemid |132|
 :pattern ( (state Heap@@30 Mask@@29) (count_array Heap@@30 i@@28 hi@@22 ar_1@@22 v_2@@11))
)))
(assert (forall ((s@@23 T@Seq_34127) (i@@29 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@29) (< i@@29 (|Seq#Length_18914| s@@23))) (= (|Seq#Length_18914| (|Seq#Update_18914| s@@23 i@@29 v@@2)) (|Seq#Length_18914| s@@23)))
 :qid |stdinbpl.321:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_18914| (|Seq#Update_18914| s@@23 i@@29 v@@2)))
 :pattern ( (|Seq#Length_18914| s@@23) (|Seq#Update_18914| s@@23 i@@29 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3299) (i@@30 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@30) (< i@@30 (|Seq#Length_3299| s@@24))) (= (|Seq#Length_3299| (|Seq#Update_3299| s@@24 i@@30 v@@3)) (|Seq#Length_3299| s@@24)))
 :qid |stdinbpl.321:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3299| (|Seq#Update_3299| s@@24 i@@30 v@@3)))
 :pattern ( (|Seq#Length_3299| s@@24) (|Seq#Update_3299| s@@24 i@@30 v@@3))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_26941) (o_7 T@Ref) (f_15 T@Field_18875_74674) (v@@4 T@FrameType) ) (! (succHeap Heap@@31 (PolymorphicMapType_26941 (|PolymorphicMapType_26941_18649_53#PolymorphicMapType_26941| Heap@@31) (|PolymorphicMapType_26941_18652_18653#PolymorphicMapType_26941| Heap@@31) (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| Heap@@31) (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| Heap@@31) (store (|PolymorphicMapType_26941_27001_74674#PolymorphicMapType_26941| Heap@@31) o_7 f_15 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_26941 (|PolymorphicMapType_26941_18649_53#PolymorphicMapType_26941| Heap@@31) (|PolymorphicMapType_26941_18652_18653#PolymorphicMapType_26941| Heap@@31) (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| Heap@@31) (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| Heap@@31) (store (|PolymorphicMapType_26941_27001_74674#PolymorphicMapType_26941| Heap@@31) o_7 f_15 v@@4)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_26941) (o_7@@0 T@Ref) (f_15@@0 T@Field_18875_74807) (v@@5 T@PolymorphicMapType_27490) ) (! (succHeap Heap@@32 (PolymorphicMapType_26941 (|PolymorphicMapType_26941_18649_53#PolymorphicMapType_26941| Heap@@32) (|PolymorphicMapType_26941_18652_18653#PolymorphicMapType_26941| Heap@@32) (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| Heap@@32) (store (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| Heap@@32) o_7@@0 f_15@@0 v@@5) (|PolymorphicMapType_26941_27001_74674#PolymorphicMapType_26941| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_26941 (|PolymorphicMapType_26941_18649_53#PolymorphicMapType_26941| Heap@@32) (|PolymorphicMapType_26941_18652_18653#PolymorphicMapType_26941| Heap@@32) (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| Heap@@32) (store (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| Heap@@32) o_7@@0 f_15@@0 v@@5) (|PolymorphicMapType_26941_27001_74674#PolymorphicMapType_26941| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_26941) (o_7@@1 T@Ref) (f_15@@1 T@Field_33055_3421) (v@@6 Int) ) (! (succHeap Heap@@33 (PolymorphicMapType_26941 (|PolymorphicMapType_26941_18649_53#PolymorphicMapType_26941| Heap@@33) (|PolymorphicMapType_26941_18652_18653#PolymorphicMapType_26941| Heap@@33) (store (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| Heap@@33) o_7@@1 f_15@@1 v@@6) (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| Heap@@33) (|PolymorphicMapType_26941_27001_74674#PolymorphicMapType_26941| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_26941 (|PolymorphicMapType_26941_18649_53#PolymorphicMapType_26941| Heap@@33) (|PolymorphicMapType_26941_18652_18653#PolymorphicMapType_26941| Heap@@33) (store (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| Heap@@33) o_7@@1 f_15@@1 v@@6) (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| Heap@@33) (|PolymorphicMapType_26941_27001_74674#PolymorphicMapType_26941| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_26941) (o_7@@2 T@Ref) (f_15@@2 T@Field_27014_27015) (v@@7 T@Ref) ) (! (succHeap Heap@@34 (PolymorphicMapType_26941 (|PolymorphicMapType_26941_18649_53#PolymorphicMapType_26941| Heap@@34) (store (|PolymorphicMapType_26941_18652_18653#PolymorphicMapType_26941| Heap@@34) o_7@@2 f_15@@2 v@@7) (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| Heap@@34) (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| Heap@@34) (|PolymorphicMapType_26941_27001_74674#PolymorphicMapType_26941| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_26941 (|PolymorphicMapType_26941_18649_53#PolymorphicMapType_26941| Heap@@34) (store (|PolymorphicMapType_26941_18652_18653#PolymorphicMapType_26941| Heap@@34) o_7@@2 f_15@@2 v@@7) (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| Heap@@34) (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| Heap@@34) (|PolymorphicMapType_26941_27001_74674#PolymorphicMapType_26941| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_26941) (o_7@@3 T@Ref) (f_15@@3 T@Field_27001_53) (v@@8 Bool) ) (! (succHeap Heap@@35 (PolymorphicMapType_26941 (store (|PolymorphicMapType_26941_18649_53#PolymorphicMapType_26941| Heap@@35) o_7@@3 f_15@@3 v@@8) (|PolymorphicMapType_26941_18652_18653#PolymorphicMapType_26941| Heap@@35) (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| Heap@@35) (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| Heap@@35) (|PolymorphicMapType_26941_27001_74674#PolymorphicMapType_26941| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_26941 (store (|PolymorphicMapType_26941_18649_53#PolymorphicMapType_26941| Heap@@35) o_7@@3 f_15@@3 v@@8) (|PolymorphicMapType_26941_18652_18653#PolymorphicMapType_26941| Heap@@35) (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| Heap@@35) (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| Heap@@35) (|PolymorphicMapType_26941_27001_74674#PolymorphicMapType_26941| Heap@@35)))
)))
(assert (forall ((s@@25 T@Seq_34127) (t@@9 T@Seq_34127) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_18914| s@@25))) (= (|Seq#Drop_18914| (|Seq#Append_34127| s@@25 t@@9) n@@19) (|Seq#Append_34127| (|Seq#Drop_18914| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.436:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_18914| (|Seq#Append_34127| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3299) (t@@10 T@Seq_3299) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3299| s@@26))) (= (|Seq#Drop_3299| (|Seq#Append_3299| s@@26 t@@10) n@@20) (|Seq#Append_3299| (|Seq#Drop_3299| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.436:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3299| (|Seq#Append_3299| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_34127) (n@@21 Int) (i@@31 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@31)) (< i@@31 (|Seq#Length_18914| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@31 n@@21) n@@21) i@@31) (= (|Seq#Index_18914| (|Seq#Drop_18914| s@@27 n@@21) (|Seq#Sub| i@@31 n@@21)) (|Seq#Index_18914| s@@27 i@@31))))
 :qid |stdinbpl.372:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_18914| s@@27 n@@21) (|Seq#Index_18914| s@@27 i@@31))
)))
(assert (forall ((s@@28 T@Seq_3299) (n@@22 Int) (i@@32 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@32)) (< i@@32 (|Seq#Length_3299| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@32 n@@22) n@@22) i@@32) (= (|Seq#Index_3299| (|Seq#Drop_3299| s@@28 n@@22) (|Seq#Sub| i@@32 n@@22)) (|Seq#Index_3299| s@@28 i@@32))))
 :qid |stdinbpl.372:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3299| s@@28 n@@22) (|Seq#Index_3299| s@@28 i@@32))
)))
(assert (forall ((s0@@7 T@Seq_34127) (s1@@7 T@Seq_34127) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_18914|)) (not (= s1@@7 |Seq#Empty_18914|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_18914| s0@@7))) (= (|Seq#Index_18914| (|Seq#Append_34127| s0@@7 s1@@7) n@@23) (|Seq#Index_18914| s0@@7 n@@23)))
 :qid |stdinbpl.312:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_18914| (|Seq#Append_34127| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_18914| s0@@7 n@@23) (|Seq#Append_34127| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3299) (s1@@8 T@Seq_3299) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3299|)) (not (= s1@@8 |Seq#Empty_3299|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3299| s0@@8))) (= (|Seq#Index_3299| (|Seq#Append_3299| s0@@8 s1@@8) n@@24) (|Seq#Index_3299| s0@@8 n@@24)))
 :qid |stdinbpl.312:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3299| (|Seq#Append_3299| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3299| s0@@8 n@@24) (|Seq#Append_3299| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_34127) (s1@@9 T@Seq_34127) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_18914|)) (not (= s1@@9 |Seq#Empty_18914|))) (<= 0 m)) (< m (|Seq#Length_18914| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_18914| s0@@9)) (|Seq#Length_18914| s0@@9)) m) (= (|Seq#Index_18914| (|Seq#Append_34127| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_18914| s0@@9))) (|Seq#Index_18914| s1@@9 m))))
 :qid |stdinbpl.317:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_18914| s1@@9 m) (|Seq#Append_34127| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3299) (s1@@10 T@Seq_3299) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3299|)) (not (= s1@@10 |Seq#Empty_3299|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3299| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3299| s0@@10)) (|Seq#Length_3299| s0@@10)) m@@0) (= (|Seq#Index_3299| (|Seq#Append_3299| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3299| s0@@10))) (|Seq#Index_3299| s1@@10 m@@0))))
 :qid |stdinbpl.317:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3299| s1@@10 m@@0) (|Seq#Append_3299| s0@@10 s1@@10))
)))
(assert (forall ((o_7@@4 T@Ref) (f_13 T@Field_27014_27015) (Heap@@36 T@PolymorphicMapType_26941) ) (!  (=> (select (|PolymorphicMapType_26941_18649_53#PolymorphicMapType_26941| Heap@@36) o_7@@4 $allocated) (select (|PolymorphicMapType_26941_18649_53#PolymorphicMapType_26941| Heap@@36) (select (|PolymorphicMapType_26941_18652_18653#PolymorphicMapType_26941| Heap@@36) o_7@@4 f_13) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_26941_18652_18653#PolymorphicMapType_26941| Heap@@36) o_7@@4 f_13))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_26941) (Mask@@30 T@PolymorphicMapType_26962) (i@@33 Int) (lo@@11 Int) (hi@@23 Int) (step@@7 Int) (vmin@@7 Int) (vmax_1@@7 Int) (ar_1@@23 T@Seq_34127) ) (!  (=> (state Heap@@37 Mask@@30) (= (|sum_square'| Heap@@37 i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax_1@@7 ar_1@@23) (|sum_square#frame| (FrameFragment_4295 (|sum_square#condqp2| Heap@@37 i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax_1@@7 ar_1@@23)) i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax_1@@7 ar_1@@23)))
 :qid |stdinbpl.972:15|
 :skolemid |87|
 :pattern ( (state Heap@@37 Mask@@30) (|sum_square'| Heap@@37 i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax_1@@7 ar_1@@23))
)))
(assert (forall ((s@@29 T@Seq_34127) (x@@3 T@Ref) (i@@34 Int) ) (!  (=> (and (and (<= 0 i@@34) (< i@@34 (|Seq#Length_18914| s@@29))) (= (|Seq#Index_18914| s@@29 i@@34) x@@3)) (|Seq#Contains_34127| s@@29 x@@3))
 :qid |stdinbpl.469:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_34127| s@@29 x@@3) (|Seq#Index_18914| s@@29 i@@34))
)))
(assert (forall ((s@@30 T@Seq_3299) (x@@4 Int) (i@@35 Int) ) (!  (=> (and (and (<= 0 i@@35) (< i@@35 (|Seq#Length_3299| s@@30))) (= (|Seq#Index_3299| s@@30 i@@35) x@@4)) (|Seq#Contains_3299| s@@30 x@@4))
 :qid |stdinbpl.469:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3299| s@@30 x@@4) (|Seq#Index_3299| s@@30 i@@35))
)))
(assert (forall ((s0@@11 T@Seq_34127) (s1@@11 T@Seq_34127) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_34127| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_34127| s0@@11 s1@@11))) (not (= (|Seq#Length_18914| s0@@11) (|Seq#Length_18914| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_34127| s0@@11 s1@@11))) (= (|Seq#Length_18914| s0@@11) (|Seq#Length_18914| s1@@11))) (= (|Seq#SkolemDiff_34127| s0@@11 s1@@11) (|Seq#SkolemDiff_34127| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_34127| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_34127| s0@@11 s1@@11) (|Seq#Length_18914| s0@@11))) (not (= (|Seq#Index_18914| s0@@11 (|Seq#SkolemDiff_34127| s0@@11 s1@@11)) (|Seq#Index_18914| s1@@11 (|Seq#SkolemDiff_34127| s0@@11 s1@@11))))))
 :qid |stdinbpl.573:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_34127| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3299) (s1@@12 T@Seq_3299) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3299| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3299| s0@@12 s1@@12))) (not (= (|Seq#Length_3299| s0@@12) (|Seq#Length_3299| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3299| s0@@12 s1@@12))) (= (|Seq#Length_3299| s0@@12) (|Seq#Length_3299| s1@@12))) (= (|Seq#SkolemDiff_3299| s0@@12 s1@@12) (|Seq#SkolemDiff_3299| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3299| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3299| s0@@12 s1@@12) (|Seq#Length_3299| s0@@12))) (not (= (|Seq#Index_3299| s0@@12 (|Seq#SkolemDiff_3299| s0@@12 s1@@12)) (|Seq#Index_3299| s1@@12 (|Seq#SkolemDiff_3299| s0@@12 s1@@12))))))
 :qid |stdinbpl.573:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3299| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_18875_74674) (v_1@@0 T@FrameType) (q T@Field_18875_74674) (w@@0 T@FrameType) (r T@Field_18875_74674) (u T@FrameType) ) (!  (=> (and (InsidePredicate_27001_27001 p@@1 v_1@@0 q w@@0) (InsidePredicate_27001_27001 q w@@0 r u)) (InsidePredicate_27001_27001 p@@1 v_1@@0 r u))
 :qid |stdinbpl.240:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27001_27001 p@@1 v_1@@0 q w@@0) (InsidePredicate_27001_27001 q w@@0 r u))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_26941) (i@@36 Int) (lo@@12 Int) (hi@@24 Int) (step@@8 Int) (vmin@@8 Int) (vmax_1@@8 Int) (ar_1@@24 T@Seq_34127) ) (! (dummyFunction_3743 (|sum_square#triggerStateless| i@@36 lo@@12 hi@@24 step@@8 vmin@@8 vmax_1@@8 ar_1@@24))
 :qid |stdinbpl.956:15|
 :skolemid |84|
 :pattern ( (|sum_square'| Heap@@38 i@@36 lo@@12 hi@@24 step@@8 vmin@@8 vmax_1@@8 ar_1@@24))
)))
(assert (forall ((s@@31 T@Seq_34127) ) (!  (=> (= (|Seq#Length_18914| s@@31) 0) (= s@@31 |Seq#Empty_18914|))
 :qid |stdinbpl.276:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_18914| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3299) ) (!  (=> (= (|Seq#Length_3299| s@@32) 0) (= s@@32 |Seq#Empty_3299|))
 :qid |stdinbpl.276:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3299| s@@32))
)))
(assert (forall ((s@@33 T@Seq_34127) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_18914| s@@33 n@@25) |Seq#Empty_18914|))
 :qid |stdinbpl.452:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_18914| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3299) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3299| s@@34 n@@26) |Seq#Empty_3299|))
 :qid |stdinbpl.452:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3299| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@39 T@PolymorphicMapType_26941) (Mask@@31 T@PolymorphicMapType_26962) (i@@37 Int) (lo@@13 Int) (hi@@25 Int) (ar_1@@25 T@Seq_34127) ) (!  (=> (state Heap@@39 Mask@@31) (= (|sum_array'| Heap@@39 i@@37 lo@@13 hi@@25 ar_1@@25) (|sum_array#frame| (FrameFragment_4295 (|sum_array#condqp1| Heap@@39 i@@37 lo@@13 hi@@25 ar_1@@25)) i@@37 lo@@13 hi@@25 ar_1@@25)))
 :qid |stdinbpl.737:15|
 :skolemid |66|
 :pattern ( (state Heap@@39 Mask@@31) (|sum_array'| Heap@@39 i@@37 lo@@13 hi@@25 ar_1@@25))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_26941) (Mask@@32 T@PolymorphicMapType_26962) (i@@38 Int) (hi@@26 Int) (ar_1@@26 T@Seq_34127) (v_2@@12 Int) ) (!  (=> (state Heap@@40 Mask@@32) (= (|count_array'| Heap@@40 i@@38 hi@@26 ar_1@@26 v_2@@12) (|count_array#frame| (FrameFragment_4295 (|count_array#condqp4| Heap@@40 i@@38 hi@@26 ar_1@@26 v_2@@12)) i@@38 hi@@26 ar_1@@26 v_2@@12)))
 :qid |stdinbpl.1589:15|
 :skolemid |133|
 :pattern ( (state Heap@@40 Mask@@32) (|count_array'| Heap@@40 i@@38 hi@@26 ar_1@@26 v_2@@12))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun j_4_1 () Int)
(declare-fun ar_1@@27 () T@Seq_34127)
(declare-fun k_9_1 () Int)
(declare-fun wildcard@0 () Real)
(declare-fun lo@@14 () Int)
(declare-fun hi@@27 () Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_26962)
(declare-fun Heap@@41 () T@PolymorphicMapType_26941)
(declare-fun neverTriggered2 (Int) Bool)
(declare-fun i@@39 () Int)
(declare-fun |sum_array#trigger| (T@FrameType Int Int Int T@Seq_34127) Bool)
(declare-fun wildcard () Real)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) Int)
(declare-fun k_6 () Int)
(declare-fun j_14 () Int)
(declare-fun k_16 () Int)
(set-info :boogie-vc-id |sum_array#definedness|)
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
 (=> (= (ControlFlow 0 0) 38) (let ((anon13_correct true))
(let ((anon24_Else_correct  (=> (and (not (and (<= 0 j_4_1) (and (< j_4_1 (|Seq#Length_18914| ar_1@@27)) (and (<= 0 k_9_1) (and (< k_9_1 (|Seq#Length_18914| ar_1@@27)) (not (= j_4_1 k_9_1))))))) (= (ControlFlow 0 24) 21)) anon13_correct)))
(let ((anon24_Then_correct  (=> (and (<= 0 j_4_1) (and (< j_4_1 (|Seq#Length_18914| ar_1@@27)) (and (<= 0 k_9_1) (and (< k_9_1 (|Seq#Length_18914| ar_1@@27)) (not (= j_4_1 k_9_1)))))) (and (=> (= (ControlFlow 0 22) (- 0 23)) (not (= (|Seq#Index_18914| ar_1@@27 j_4_1) (|Seq#Index_18914| ar_1@@27 k_9_1)))) (=> (not (= (|Seq#Index_18914| ar_1@@27 j_4_1) (|Seq#Index_18914| ar_1@@27 k_9_1))) (=> (= (ControlFlow 0 22) 21) anon13_correct))))))
(let ((anon23_Else_correct  (=> (and (forall ((j_5_1_1 Int) (k_10_1 Int) ) (!  (=> (and (<= 0 j_5_1_1) (and (< j_5_1_1 (|Seq#Length_18914| ar_1@@27)) (and (<= 0 k_10_1) (and (< k_10_1 (|Seq#Length_18914| ar_1@@27)) (not (= j_5_1_1 k_10_1)))))) (not (= (|Seq#Index_18914| ar_1@@27 j_5_1_1) (|Seq#Index_18914| ar_1@@27 k_10_1))))
 :qid |stdinbpl.882:26|
 :skolemid |75|
 :pattern ( (|Seq#Index_18914| ar_1@@27 j_5_1_1) (|Seq#Index_18914| ar_1@@27 k_10_1))
)) (> wildcard@0 0.0)) (and (=> (= (ControlFlow 0 17) (- 0 20)) (forall ((k_11 Int) ) (!  (=> (and (<= lo@@14 k_11) (< k_11 hi@@27)) (> (select (|PolymorphicMapType_26962_18875_3436#PolymorphicMapType_26962| QPMask@0) (|Seq#Index_18914| ar_1@@27 k_11) Ref__Integer_value) NoPerm))
 :qid |stdinbpl.890:21|
 :skolemid |76|
))) (=> (forall ((k_11@@0 Int) ) (!  (=> (and (<= lo@@14 k_11@@0) (< k_11@@0 hi@@27)) (> (select (|PolymorphicMapType_26962_18875_3436#PolymorphicMapType_26962| QPMask@0) (|Seq#Index_18914| ar_1@@27 k_11@@0) Ref__Integer_value) NoPerm))
 :qid |stdinbpl.890:21|
 :skolemid |76|
)) (=> (forall ((k_11@@1 Int) ) (!  (=> (and (<= lo@@14 k_11@@1) (< k_11@@1 hi@@27)) (< wildcard@0 (select (|PolymorphicMapType_26962_18875_3436#PolymorphicMapType_26962| QPMask@0) (|Seq#Index_18914| ar_1@@27 k_11@@1) Ref__Integer_value)))
 :qid |stdinbpl.894:26|
 :skolemid |77|
)) (and (=> (= (ControlFlow 0 17) (- 0 19)) (forall ((k_11@@2 Int) ) (!  (=> (and (and (<= lo@@14 k_11@@2) (< k_11@@2 hi@@27)) (dummyFunction_3743 (select (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| Heap@@41) (|Seq#Index_18914| ar_1@@27 k_11@@2) Ref__Integer_value))) (>= wildcard@0 NoPerm))
 :qid |stdinbpl.901:23|
 :skolemid |78|
 :pattern ( (|Seq#Index_18914| ar_1@@27 k_11@@2))
 :pattern ( (|Seq#Index_18914| ar_1@@27 k_11@@2))
))) (=> (forall ((k_11@@3 Int) ) (!  (=> (and (and (<= lo@@14 k_11@@3) (< k_11@@3 hi@@27)) (dummyFunction_3743 (select (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| Heap@@41) (|Seq#Index_18914| ar_1@@27 k_11@@3) Ref__Integer_value))) (>= wildcard@0 NoPerm))
 :qid |stdinbpl.901:23|
 :skolemid |78|
 :pattern ( (|Seq#Index_18914| ar_1@@27 k_11@@3))
 :pattern ( (|Seq#Index_18914| ar_1@@27 k_11@@3))
)) (and (=> (= (ControlFlow 0 17) (- 0 18)) (forall ((k_11@@4 Int) (k_11_1 Int) ) (!  (=> (and (and (and (and (not (= k_11@@4 k_11_1)) (and (<= lo@@14 k_11@@4) (< k_11@@4 hi@@27))) (and (<= lo@@14 k_11_1) (< k_11_1 hi@@27))) (< NoPerm wildcard@0)) (< NoPerm wildcard@0)) (not (= (|Seq#Index_18914| ar_1@@27 k_11@@4) (|Seq#Index_18914| ar_1@@27 k_11_1))))
 :qid |stdinbpl.908:23|
 :skolemid |79|
 :pattern ( (neverTriggered2 k_11@@4) (neverTriggered2 k_11_1))
))) (=> (forall ((k_11@@5 Int) (k_11_1@@0 Int) ) (!  (=> (and (and (and (and (not (= k_11@@5 k_11_1@@0)) (and (<= lo@@14 k_11@@5) (< k_11@@5 hi@@27))) (and (<= lo@@14 k_11_1@@0) (< k_11_1@@0 hi@@27))) (< NoPerm wildcard@0)) (< NoPerm wildcard@0)) (not (= (|Seq#Index_18914| ar_1@@27 k_11@@5) (|Seq#Index_18914| ar_1@@27 k_11_1@@0))))
 :qid |stdinbpl.908:23|
 :skolemid |79|
 :pattern ( (neverTriggered2 k_11@@5) (neverTriggered2 k_11_1@@0))
)) (=> (= (ControlFlow 0 17) (- 0 16)) (forall ((k_11@@6 Int) ) (!  (=> (and (<= lo@@14 k_11@@6) (< k_11@@6 hi@@27)) (=> (> wildcard@0 NoPerm) (> (select (|PolymorphicMapType_26962_18875_3436#PolymorphicMapType_26962| QPMask@0) (|Seq#Index_18914| ar_1@@27 k_11@@6) Ref__Integer_value) NoPerm)))
 :qid |stdinbpl.915:23|
 :skolemid |80|
 :pattern ( (|Seq#Index_18914| ar_1@@27 k_11@@6))
 :pattern ( (|Seq#Index_18914| ar_1@@27 k_11@@6))
)))))))))))))
(let ((anon22_Then_correct  (and (=> (= (ControlFlow 0 25) (- 0 29)) (<= 0 lo@@14)) (=> (<= 0 lo@@14) (and (=> (= (ControlFlow 0 25) (- 0 28)) (<= lo@@14 (+ i@@39 1))) (=> (<= lo@@14 (+ i@@39 1)) (and (=> (= (ControlFlow 0 25) (- 0 27)) (<= (+ i@@39 1) hi@@27)) (=> (<= (+ i@@39 1) hi@@27) (and (=> (= (ControlFlow 0 25) (- 0 26)) (<= hi@@27 (|Seq#Length_18914| ar_1@@27))) (=> (<= hi@@27 (|Seq#Length_18914| ar_1@@27)) (and (and (=> (= (ControlFlow 0 25) 17) anon23_Else_correct) (=> (= (ControlFlow 0 25) 22) anon24_Then_correct)) (=> (= (ControlFlow 0 25) 24) anon24_Else_correct))))))))))))
(let ((anon16_correct true))
(let ((anon22_Else_correct  (=> (and (|sum_array#trigger| (FrameFragment_4295 (|sum_array#condqp1| Heap@@41 (+ i@@39 1) lo@@14 hi@@27 ar_1@@27)) (+ i@@39 1) lo@@14 hi@@27 ar_1@@27) (= (ControlFlow 0 15) 13)) anon16_correct)))
(let ((anon21_Then_correct  (=> (< i@@39 hi@@27) (and (=> (= (ControlFlow 0 30) (- 0 33)) (>= i@@39 0)) (=> (>= i@@39 0) (and (=> (= (ControlFlow 0 30) (- 0 32)) (< i@@39 (|Seq#Length_18914| ar_1@@27))) (=> (< i@@39 (|Seq#Length_18914| ar_1@@27)) (and (=> (= (ControlFlow 0 30) (- 0 31)) (HasDirectPerm_18875_3436 QPMask@0 (|Seq#Index_18914| ar_1@@27 i@@39) Ref__Integer_value)) (=> (HasDirectPerm_18875_3436 QPMask@0 (|Seq#Index_18914| ar_1@@27 i@@39) Ref__Integer_value) (and (=> (= (ControlFlow 0 30) 25) anon22_Then_correct) (=> (= (ControlFlow 0 30) 15) anon22_Else_correct)))))))))))
(let ((anon21_Else_correct  (=> (and (<= hi@@27 i@@39) (= (ControlFlow 0 14) 13)) anon16_correct)))
(let ((anon19_Else_correct  (and (=> (= (ControlFlow 0 34) (- 0 35)) (forall ((k_8 Int) (k_8_1 Int) ) (!  (=> (and (and (and (and (not (= k_8 k_8_1)) (and (<= lo@@14 k_8) (< k_8 hi@@27))) (and (<= lo@@14 k_8_1) (< k_8_1 hi@@27))) (< NoPerm wildcard)) (< NoPerm wildcard)) (not (= (|Seq#Index_18914| ar_1@@27 k_8) (|Seq#Index_18914| ar_1@@27 k_8_1))))
 :qid |stdinbpl.819:15|
 :skolemid |69|
))) (=> (forall ((k_8@@0 Int) (k_8_1@@0 Int) ) (!  (=> (and (and (and (and (not (= k_8@@0 k_8_1@@0)) (and (<= lo@@14 k_8@@0) (< k_8@@0 hi@@27))) (and (<= lo@@14 k_8_1@@0) (< k_8_1@@0 hi@@27))) (< NoPerm wildcard)) (< NoPerm wildcard)) (not (= (|Seq#Index_18914| ar_1@@27 k_8@@0) (|Seq#Index_18914| ar_1@@27 k_8_1@@0))))
 :qid |stdinbpl.819:15|
 :skolemid |69|
)) (=> (and (and (forall ((k_8@@1 Int) ) (!  (=> (and (<= lo@@14 k_8@@1) (< k_8@@1 hi@@27)) (and (qpRange1 (|Seq#Index_18914| ar_1@@27 k_8@@1)) (= (invRecv1 (|Seq#Index_18914| ar_1@@27 k_8@@1)) k_8@@1)))
 :qid |stdinbpl.825:22|
 :skolemid |70|
 :pattern ( (|Seq#Index_18914| ar_1@@27 k_8@@1))
 :pattern ( (|Seq#Index_18914| ar_1@@27 k_8@@1))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (<= lo@@14 (invRecv1 o_9)) (< (invRecv1 o_9) hi@@27)) (qpRange1 o_9)) (= (|Seq#Index_18914| ar_1@@27 (invRecv1 o_9)) o_9))
 :qid |stdinbpl.829:22|
 :skolemid |71|
 :pattern ( (invRecv1 o_9))
))) (and (forall ((k_8@@2 Int) ) (!  (=> (and (<= lo@@14 k_8@@2) (< k_8@@2 hi@@27)) (not (= (|Seq#Index_18914| ar_1@@27 k_8@@2) null)))
 :qid |stdinbpl.835:22|
 :skolemid |72|
 :pattern ( (|Seq#Index_18914| ar_1@@27 k_8@@2))
 :pattern ( (|Seq#Index_18914| ar_1@@27 k_8@@2))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (<= lo@@14 (invRecv1 o_9@@0)) (< (invRecv1 o_9@@0) hi@@27)) (qpRange1 o_9@@0)) (and (= (|Seq#Index_18914| ar_1@@27 (invRecv1 o_9@@0)) o_9@@0) (< (select (|PolymorphicMapType_26962_18875_3436#PolymorphicMapType_26962| ZeroMask) o_9@@0 Ref__Integer_value) (select (|PolymorphicMapType_26962_18875_3436#PolymorphicMapType_26962| QPMask@0) o_9@@0 Ref__Integer_value)))) (=> (not (and (and (<= lo@@14 (invRecv1 o_9@@0)) (< (invRecv1 o_9@@0) hi@@27)) (qpRange1 o_9@@0))) (= (select (|PolymorphicMapType_26962_18875_3436#PolymorphicMapType_26962| QPMask@0) o_9@@0 Ref__Integer_value) (select (|PolymorphicMapType_26962_18875_3436#PolymorphicMapType_26962| ZeroMask) o_9@@0 Ref__Integer_value))))
 :qid |stdinbpl.841:22|
 :skolemid |73|
 :pattern ( (select (|PolymorphicMapType_26962_18875_3436#PolymorphicMapType_26962| QPMask@0) o_9@@0 Ref__Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_27001_53) ) (!  (=> true (= (select (|PolymorphicMapType_26962_18875_53#PolymorphicMapType_26962| ZeroMask) o_9@@1 f_5) (select (|PolymorphicMapType_26962_18875_53#PolymorphicMapType_26962| QPMask@0) o_9@@1 f_5)))
 :qid |stdinbpl.845:29|
 :skolemid |74|
 :pattern ( (select (|PolymorphicMapType_26962_18875_53#PolymorphicMapType_26962| ZeroMask) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_26962_18875_53#PolymorphicMapType_26962| QPMask@0) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_27014_27015) ) (!  (=> true (= (select (|PolymorphicMapType_26962_18875_27015#PolymorphicMapType_26962| ZeroMask) o_9@@2 f_5@@0) (select (|PolymorphicMapType_26962_18875_27015#PolymorphicMapType_26962| QPMask@0) o_9@@2 f_5@@0)))
 :qid |stdinbpl.845:29|
 :skolemid |74|
 :pattern ( (select (|PolymorphicMapType_26962_18875_27015#PolymorphicMapType_26962| ZeroMask) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_26962_18875_27015#PolymorphicMapType_26962| QPMask@0) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_33055_3421) ) (!  (=> (not (= f_5@@1 Ref__Integer_value)) (= (select (|PolymorphicMapType_26962_18875_3436#PolymorphicMapType_26962| ZeroMask) o_9@@3 f_5@@1) (select (|PolymorphicMapType_26962_18875_3436#PolymorphicMapType_26962| QPMask@0) o_9@@3 f_5@@1)))
 :qid |stdinbpl.845:29|
 :skolemid |74|
 :pattern ( (select (|PolymorphicMapType_26962_18875_3436#PolymorphicMapType_26962| ZeroMask) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_26962_18875_3436#PolymorphicMapType_26962| QPMask@0) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_18875_74674) ) (!  (=> true (= (select (|PolymorphicMapType_26962_18875_74674#PolymorphicMapType_26962| ZeroMask) o_9@@4 f_5@@2) (select (|PolymorphicMapType_26962_18875_74674#PolymorphicMapType_26962| QPMask@0) o_9@@4 f_5@@2)))
 :qid |stdinbpl.845:29|
 :skolemid |74|
 :pattern ( (select (|PolymorphicMapType_26962_18875_74674#PolymorphicMapType_26962| ZeroMask) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_26962_18875_74674#PolymorphicMapType_26962| QPMask@0) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_18875_74807) ) (!  (=> true (= (select (|PolymorphicMapType_26962_18875_78929#PolymorphicMapType_26962| ZeroMask) o_9@@5 f_5@@3) (select (|PolymorphicMapType_26962_18875_78929#PolymorphicMapType_26962| QPMask@0) o_9@@5 f_5@@3)))
 :qid |stdinbpl.845:29|
 :skolemid |74|
 :pattern ( (select (|PolymorphicMapType_26962_18875_78929#PolymorphicMapType_26962| ZeroMask) o_9@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_26962_18875_78929#PolymorphicMapType_26962| QPMask@0) o_9@@5 f_5@@3))
))) (and (state Heap@@41 QPMask@0) (state Heap@@41 QPMask@0))) (and (=> (= (ControlFlow 0 34) 30) anon21_Then_correct) (=> (= (ControlFlow 0 34) 14) anon21_Else_correct))))))))
(let ((anon7_correct true))
(let ((anon20_Else_correct  (=> (and (not (and (<= lo@@14 k_6) (< k_6 hi@@27))) (= (ControlFlow 0 12) 8)) anon7_correct)))
(let ((anon20_Then_correct  (=> (and (<= lo@@14 k_6) (< k_6 hi@@27)) (and (=> (= (ControlFlow 0 9) (- 0 11)) (>= k_6 0)) (=> (>= k_6 0) (and (=> (= (ControlFlow 0 9) (- 0 10)) (< k_6 (|Seq#Length_18914| ar_1@@27))) (=> (< k_6 (|Seq#Length_18914| ar_1@@27)) (=> (= (ControlFlow 0 9) 8) anon7_correct))))))))
(let ((anon17_Else_correct  (=> (and (forall ((j_3 Int) (k_6_2 Int) ) (!  (=> (and (<= 0 j_3) (and (< j_3 (|Seq#Length_18914| ar_1@@27)) (and (<= 0 k_6_2) (and (< k_6_2 (|Seq#Length_18914| ar_1@@27)) (not (= j_3 k_6_2)))))) (not (= (|Seq#Index_18914| ar_1@@27 j_3) (|Seq#Index_18914| ar_1@@27 k_6_2))))
 :qid |stdinbpl.801:20|
 :skolemid |68|
 :pattern ( (|Seq#Index_18914| ar_1@@27 j_3) (|Seq#Index_18914| ar_1@@27 k_6_2))
)) (state Heap@@41 ZeroMask)) (and (and (=> (= (ControlFlow 0 36) 34) anon19_Else_correct) (=> (= (ControlFlow 0 36) 9) anon20_Then_correct)) (=> (= (ControlFlow 0 36) 12) anon20_Else_correct)))))
(let ((anon3_correct true))
(let ((anon18_Else_correct  (=> (and (not (and (<= 0 j_14) (and (< j_14 (|Seq#Length_18914| ar_1@@27)) (and (<= 0 k_16) (and (< k_16 (|Seq#Length_18914| ar_1@@27)) (not (= j_14 k_16))))))) (= (ControlFlow 0 7) 1)) anon3_correct)))
(let ((anon18_Then_correct  (=> (and (<= 0 j_14) (and (< j_14 (|Seq#Length_18914| ar_1@@27)) (and (<= 0 k_16) (and (< k_16 (|Seq#Length_18914| ar_1@@27)) (not (= j_14 k_16)))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= j_14 0)) (=> (>= j_14 0) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< j_14 (|Seq#Length_18914| ar_1@@27))) (=> (< j_14 (|Seq#Length_18914| ar_1@@27)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= k_16 0)) (=> (>= k_16 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< k_16 (|Seq#Length_18914| ar_1@@27))) (=> (< k_16 (|Seq#Length_18914| ar_1@@27)) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))))))))
(let ((anon0_correct  (=> (state Heap@@41 ZeroMask) (=> (and (and (and (not AssumePermUpperBound) (= AssumeFunctionsAbove 3)) (and (<= 0 lo@@14) (<= lo@@14 i@@39))) (and (and (<= i@@39 hi@@27) (state Heap@@41 ZeroMask)) (and (<= hi@@27 (|Seq#Length_18914| ar_1@@27)) (state Heap@@41 ZeroMask)))) (and (and (=> (= (ControlFlow 0 37) 36) anon17_Else_correct) (=> (= (ControlFlow 0 37) 2) anon18_Then_correct)) (=> (= (ControlFlow 0 37) 7) anon18_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (> wildcard 0.0) true) (= (ControlFlow 0 38) 37)) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))
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
(declare-sort T@Field_27001_53 0)
(declare-sort T@Field_27014_27015 0)
(declare-sort T@Field_33055_3421 0)
(declare-sort T@Field_18875_74807 0)
(declare-sort T@Field_18875_74674 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_26962 0)) (((PolymorphicMapType_26962 (|PolymorphicMapType_26962_18875_3436#PolymorphicMapType_26962| (Array T@Ref T@Field_33055_3421 Real)) (|PolymorphicMapType_26962_18875_53#PolymorphicMapType_26962| (Array T@Ref T@Field_27001_53 Real)) (|PolymorphicMapType_26962_18875_27015#PolymorphicMapType_26962| (Array T@Ref T@Field_27014_27015 Real)) (|PolymorphicMapType_26962_18875_74674#PolymorphicMapType_26962| (Array T@Ref T@Field_18875_74674 Real)) (|PolymorphicMapType_26962_18875_78929#PolymorphicMapType_26962| (Array T@Ref T@Field_18875_74807 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_27490 0)) (((PolymorphicMapType_27490 (|PolymorphicMapType_27490_27001_53#PolymorphicMapType_27490| (Array T@Ref T@Field_27001_53 Bool)) (|PolymorphicMapType_27490_27001_27015#PolymorphicMapType_27490| (Array T@Ref T@Field_27014_27015 Bool)) (|PolymorphicMapType_27490_27001_3421#PolymorphicMapType_27490| (Array T@Ref T@Field_33055_3421 Bool)) (|PolymorphicMapType_27490_27001_74674#PolymorphicMapType_27490| (Array T@Ref T@Field_18875_74674 Bool)) (|PolymorphicMapType_27490_27001_75985#PolymorphicMapType_27490| (Array T@Ref T@Field_18875_74807 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_26941 0)) (((PolymorphicMapType_26941 (|PolymorphicMapType_26941_18649_53#PolymorphicMapType_26941| (Array T@Ref T@Field_27001_53 Bool)) (|PolymorphicMapType_26941_18652_18653#PolymorphicMapType_26941| (Array T@Ref T@Field_27014_27015 T@Ref)) (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| (Array T@Ref T@Field_33055_3421 Int)) (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| (Array T@Ref T@Field_18875_74807 T@PolymorphicMapType_27490)) (|PolymorphicMapType_26941_27001_74674#PolymorphicMapType_26941| (Array T@Ref T@Field_18875_74674 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_27001_53)
(declare-fun Ref__res () T@Field_33055_3421)
(declare-fun Ref__Integer_value () T@Field_33055_3421)
(declare-sort T@Seq_34127 0)
(declare-fun |Seq#Length_18914| (T@Seq_34127) Int)
(declare-fun |Seq#Drop_18914| (T@Seq_34127 Int) T@Seq_34127)
(declare-sort T@Seq_3299 0)
(declare-fun |Seq#Length_3299| (T@Seq_3299) Int)
(declare-fun |Seq#Drop_3299| (T@Seq_3299 Int) T@Seq_3299)
(declare-fun state (T@PolymorphicMapType_26941 T@PolymorphicMapType_26962) Bool)
(declare-fun |count_square'| (T@PolymorphicMapType_26941 Int Int Int Int Int Int T@Seq_34127 Int) Int)
(declare-fun |count_square#frame| (T@FrameType Int Int Int Int Int Int T@Seq_34127 Int) Int)
(declare-fun FrameFragment_4295 (Int) T@FrameType)
(declare-fun |count_square#condqp3| (T@PolymorphicMapType_26941 Int Int Int Int Int Int T@Seq_34127 Int) Int)
(declare-fun succHeap (T@PolymorphicMapType_26941 T@PolymorphicMapType_26941) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_26941 T@PolymorphicMapType_26941) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_26962) Bool)
(declare-fun |sum_list'| (T@PolymorphicMapType_26941 Int Int T@Seq_3299) Int)
(declare-fun dummyFunction_3743 (Int) Bool)
(declare-fun |sum_list#triggerStateless| (Int Int T@Seq_3299) Int)
(declare-fun ZeroPMask () T@PolymorphicMapType_27490)
(declare-fun |Seq#Index_18914| (T@Seq_34127 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3299| (T@Seq_3299 Int) Int)
(declare-fun |Seq#Empty_18914| () T@Seq_34127)
(declare-fun |Seq#Empty_3299| () T@Seq_3299)
(declare-fun |Seq#Update_18914| (T@Seq_34127 Int T@Ref) T@Seq_34127)
(declare-fun |Seq#Update_3299| (T@Seq_3299 Int Int) T@Seq_3299)
(declare-fun |Seq#Take_18914| (T@Seq_34127 Int) T@Seq_34127)
(declare-fun |Seq#Take_3299| (T@Seq_3299 Int) T@Seq_3299)
(declare-fun sum_array (T@PolymorphicMapType_26941 Int Int Int T@Seq_34127) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |sum_array'| (T@PolymorphicMapType_26941 Int Int Int T@Seq_34127) Int)
(declare-fun |Seq#Contains_3299| (T@Seq_3299 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3299)
(declare-fun |Seq#Contains_34127| (T@Seq_34127 T@Ref) Bool)
(declare-fun |Seq#Skolem_34127| (T@Seq_34127 T@Ref) Int)
(declare-fun |Seq#Skolem_3299| (T@Seq_3299 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_26941 T@PolymorphicMapType_26941 T@PolymorphicMapType_26962) Bool)
(declare-fun IsPredicateField_18875_74765 (T@Field_18875_74674) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_18875 (T@Field_18875_74674) T@Field_18875_74807)
(declare-fun HasDirectPerm_18875_74738 (T@PolymorphicMapType_26962 T@Ref T@Field_18875_74674) Bool)
(declare-fun IsWandField_18875_76512 (T@Field_18875_74674) Bool)
(declare-fun WandMaskField_18875 (T@Field_18875_74674) T@Field_18875_74807)
(declare-fun |Seq#Singleton_18914| (T@Ref) T@Seq_34127)
(declare-fun |Seq#Singleton_3299| (Int) T@Seq_3299)
(declare-fun count_square (T@PolymorphicMapType_26941 Int Int Int Int Int Int T@Seq_34127 Int) Int)
(declare-fun |count_square#triggerStateless| (Int Int Int Int Int Int T@Seq_34127 Int) Int)
(declare-fun |Seq#Append_34127| (T@Seq_34127 T@Seq_34127) T@Seq_34127)
(declare-fun |Seq#Append_3299| (T@Seq_3299 T@Seq_3299) T@Seq_3299)
(declare-fun |sum_square#condqp2| (T@PolymorphicMapType_26941 Int Int Int Int Int Int T@Seq_34127) Int)
(declare-fun |sk_sum_square#condqp2| (Int Int) Int)
(declare-fun sum_square (T@PolymorphicMapType_26941 Int Int Int Int Int Int T@Seq_34127) Int)
(declare-fun |sum_square'| (T@PolymorphicMapType_26941 Int Int Int Int Int Int T@Seq_34127) Int)
(declare-fun |sk_count_square#condqp3| (Int Int) Int)
(declare-fun dummyHeap () T@PolymorphicMapType_26941)
(declare-fun ZeroMask () T@PolymorphicMapType_26962)
(declare-fun InsidePredicate_27001_27001 (T@Field_18875_74674 T@FrameType T@Field_18875_74674 T@FrameType) Bool)
(declare-fun IsPredicateField_18873_3421 (T@Field_33055_3421) Bool)
(declare-fun IsWandField_18873_3421 (T@Field_33055_3421) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_18875_80058 (T@Field_18875_74807) Bool)
(declare-fun IsWandField_18875_80074 (T@Field_18875_74807) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_18875_27015 (T@Field_27014_27015) Bool)
(declare-fun IsWandField_18875_27015 (T@Field_27014_27015) Bool)
(declare-fun IsPredicateField_18875_53 (T@Field_27001_53) Bool)
(declare-fun IsWandField_18875_53 (T@Field_27001_53) Bool)
(declare-fun |sum_list#frame| (T@FrameType Int Int T@Seq_3299) Int)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun HasDirectPerm_18875_80512 (T@PolymorphicMapType_26962 T@Ref T@Field_18875_74807) Bool)
(declare-fun HasDirectPerm_18875_27015 (T@PolymorphicMapType_26962 T@Ref T@Field_27014_27015) Bool)
(declare-fun HasDirectPerm_18875_53 (T@PolymorphicMapType_26962 T@Ref T@Field_27001_53) Bool)
(declare-fun HasDirectPerm_18875_3436 (T@PolymorphicMapType_26962 T@Ref T@Field_33055_3421) Bool)
(declare-fun |sum_array#triggerStateless| (Int Int Int T@Seq_34127) Int)
(declare-fun |count_list'| (T@PolymorphicMapType_26941 Int Int T@Seq_3299 Int) Int)
(declare-fun |count_list#triggerStateless| (Int Int T@Seq_3299 Int) Int)
(declare-fun |count_array'| (T@PolymorphicMapType_26941 Int Int T@Seq_34127 Int) Int)
(declare-fun |count_array#triggerStateless| (Int Int T@Seq_34127 Int) Int)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun count_list (T@PolymorphicMapType_26941 Int Int T@Seq_3299 Int) Int)
(declare-fun count_array (T@PolymorphicMapType_26941 Int Int T@Seq_34127 Int) Int)
(declare-fun sumMask (T@PolymorphicMapType_26962 T@PolymorphicMapType_26962 T@PolymorphicMapType_26962) Bool)
(declare-fun |sum_square#triggerStateless| (Int Int Int Int Int Int T@Seq_34127) Int)
(declare-fun |count_list#frame| (T@FrameType Int Int T@Seq_3299 Int) Int)
(declare-fun |Seq#Equal_34127| (T@Seq_34127 T@Seq_34127) Bool)
(declare-fun |Seq#Equal_3299| (T@Seq_3299 T@Seq_3299) Bool)
(declare-fun sum_list (T@PolymorphicMapType_26941 Int Int T@Seq_3299) Int)
(declare-fun |Seq#ContainsTrigger_18914| (T@Seq_34127 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3299| (T@Seq_3299 Int) Bool)
(declare-fun |count_array#condqp4| (T@PolymorphicMapType_26941 Int Int T@Seq_34127 Int) Int)
(declare-fun |sk_count_array#condqp4| (Int Int) Int)
(declare-fun |sum_array#condqp1| (T@PolymorphicMapType_26941 Int Int Int T@Seq_34127) Int)
(declare-fun |sk_sum_array#condqp1| (Int Int) Int)
(declare-fun |sum_square#frame| (T@FrameType Int Int Int Int Int Int T@Seq_34127) Int)
(declare-fun |Seq#SkolemDiff_34127| (T@Seq_34127 T@Seq_34127) Int)
(declare-fun |Seq#SkolemDiff_3299| (T@Seq_3299 T@Seq_3299) Int)
(declare-fun |sum_array#frame| (T@FrameType Int Int Int T@Seq_34127) Int)
(declare-fun |count_array#frame| (T@FrameType Int Int T@Seq_34127 Int) Int)
(assert (distinct Ref__res Ref__Integer_value)
)
(assert (forall ((s T@Seq_34127) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_18914| s)) (= (|Seq#Length_18914| (|Seq#Drop_18914| s n)) (- (|Seq#Length_18914| s) n))) (=> (< (|Seq#Length_18914| s) n) (= (|Seq#Length_18914| (|Seq#Drop_18914| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_18914| (|Seq#Drop_18914| s n)) (|Seq#Length_18914| s))))
 :qid |stdinbpl.347:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_18914| (|Seq#Drop_18914| s n)))
 :pattern ( (|Seq#Length_18914| s) (|Seq#Drop_18914| s n))
)))
(assert (forall ((s@@0 T@Seq_3299) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3299| s@@0)) (= (|Seq#Length_3299| (|Seq#Drop_3299| s@@0 n@@0)) (- (|Seq#Length_3299| s@@0) n@@0))) (=> (< (|Seq#Length_3299| s@@0) n@@0) (= (|Seq#Length_3299| (|Seq#Drop_3299| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3299| (|Seq#Drop_3299| s@@0 n@@0)) (|Seq#Length_3299| s@@0))))
 :qid |stdinbpl.347:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3299| (|Seq#Drop_3299| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3299| s@@0) (|Seq#Drop_3299| s@@0 n@@0))
)))
(assert (forall ((Heap T@PolymorphicMapType_26941) (Mask T@PolymorphicMapType_26962) (i Int) (lo Int) (hi Int) (step Int) (vmin Int) (vmax_1 Int) (ar_1 T@Seq_34127) (v_2 Int) ) (!  (=> (state Heap Mask) (= (|count_square'| Heap i lo hi step vmin vmax_1 ar_1 v_2) (|count_square#frame| (FrameFragment_4295 (|count_square#condqp3| Heap i lo hi step vmin vmax_1 ar_1 v_2)) i lo hi step vmin vmax_1 ar_1 v_2)))
 :qid |stdinbpl.1238:15|
 :skolemid |108|
 :pattern ( (state Heap Mask) (|count_square'| Heap i lo hi step vmin vmax_1 ar_1 v_2))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_26941) (Heap1 T@PolymorphicMapType_26941) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_26941) (Mask@@0 T@PolymorphicMapType_26962) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_26941) (Heap1@@0 T@PolymorphicMapType_26941) (Heap2 T@PolymorphicMapType_26941) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_26941) (i@@0 Int) (hi@@0 Int) (ar_1@@0 T@Seq_3299) ) (! (dummyFunction_3743 (|sum_list#triggerStateless| i@@0 hi@@0 ar_1@@0))
 :qid |stdinbpl.636:15|
 :skolemid |59|
 :pattern ( (|sum_list'| Heap@@1 i@@0 hi@@0 ar_1@@0))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_18875_74807) ) (!  (not (select (|PolymorphicMapType_27490_27001_75985#PolymorphicMapType_27490| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_27490_27001_75985#PolymorphicMapType_27490| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_18875_74674) ) (!  (not (select (|PolymorphicMapType_27490_27001_74674#PolymorphicMapType_27490| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_27490_27001_74674#PolymorphicMapType_27490| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_33055_3421) ) (!  (not (select (|PolymorphicMapType_27490_27001_3421#PolymorphicMapType_27490| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_27490_27001_3421#PolymorphicMapType_27490| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_27014_27015) ) (!  (not (select (|PolymorphicMapType_27490_27001_27015#PolymorphicMapType_27490| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_27490_27001_27015#PolymorphicMapType_27490| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_27001_53) ) (!  (not (select (|PolymorphicMapType_27490_27001_53#PolymorphicMapType_27490| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_27490_27001_53#PolymorphicMapType_27490| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((s@@1 T@Seq_34127) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_18914| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_18914| (|Seq#Drop_18914| s@@1 n@@1) j) (|Seq#Index_18914| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.368:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_18914| (|Seq#Drop_18914| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3299) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3299| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3299| (|Seq#Drop_3299| s@@2 n@@2) j@@0) (|Seq#Index_3299| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.368:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3299| (|Seq#Drop_3299| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_18914| |Seq#Empty_18914|) 0))
(assert (= (|Seq#Length_3299| |Seq#Empty_3299|) 0))
(assert (forall ((s@@3 T@Seq_34127) (i@@1 Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_18914| s@@3))) (and (=> (= i@@1 n@@3) (= (|Seq#Index_18914| (|Seq#Update_18914| s@@3 i@@1 v) n@@3) v)) (=> (not (= i@@1 n@@3)) (= (|Seq#Index_18914| (|Seq#Update_18914| s@@3 i@@1 v) n@@3) (|Seq#Index_18914| s@@3 n@@3)))))
 :qid |stdinbpl.323:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_18914| (|Seq#Update_18914| s@@3 i@@1 v) n@@3))
 :pattern ( (|Seq#Index_18914| s@@3 n@@3) (|Seq#Update_18914| s@@3 i@@1 v))
)))
(assert (forall ((s@@4 T@Seq_3299) (i@@2 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3299| s@@4))) (and (=> (= i@@2 n@@4) (= (|Seq#Index_3299| (|Seq#Update_3299| s@@4 i@@2 v@@0) n@@4) v@@0)) (=> (not (= i@@2 n@@4)) (= (|Seq#Index_3299| (|Seq#Update_3299| s@@4 i@@2 v@@0) n@@4) (|Seq#Index_3299| s@@4 n@@4)))))
 :qid |stdinbpl.323:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3299| (|Seq#Update_3299| s@@4 i@@2 v@@0) n@@4))
 :pattern ( (|Seq#Index_3299| s@@4 n@@4) (|Seq#Update_3299| s@@4 i@@2 v@@0))
)))
(assert (forall ((s@@5 T@Seq_34127) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_18914| s@@5)) (= (|Seq#Length_18914| (|Seq#Take_18914| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_18914| s@@5) n@@5) (= (|Seq#Length_18914| (|Seq#Take_18914| s@@5 n@@5)) (|Seq#Length_18914| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_18914| (|Seq#Take_18914| s@@5 n@@5)) 0)))
 :qid |stdinbpl.334:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_18914| (|Seq#Take_18914| s@@5 n@@5)))
 :pattern ( (|Seq#Take_18914| s@@5 n@@5) (|Seq#Length_18914| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3299) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3299| s@@6)) (= (|Seq#Length_3299| (|Seq#Take_3299| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3299| s@@6) n@@6) (= (|Seq#Length_3299| (|Seq#Take_3299| s@@6 n@@6)) (|Seq#Length_3299| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3299| (|Seq#Take_3299| s@@6 n@@6)) 0)))
 :qid |stdinbpl.334:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3299| (|Seq#Take_3299| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3299| s@@6 n@@6) (|Seq#Length_3299| s@@6))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_26941) (Mask@@1 T@PolymorphicMapType_26962) (i@@3 Int) (lo@@0 Int) (hi@@1 Int) (ar_1@@1 T@Seq_34127) ) (!  (=> (and (state Heap@@2 Mask@@1) (< AssumeFunctionsAbove 3)) (=> (and (and (and (<= 0 lo@@0) (and (<= lo@@0 i@@3) (<= i@@3 hi@@1))) (<= hi@@1 (|Seq#Length_18914| ar_1@@1))) (forall ((j@@1 Int) (k Int) ) (!  (=> (and (<= 0 j@@1) (and (< j@@1 (|Seq#Length_18914| ar_1@@1)) (and (<= 0 k) (and (< k (|Seq#Length_18914| ar_1@@1)) (not (= j@@1 k)))))) (not (= (|Seq#Index_18914| ar_1@@1 j@@1) (|Seq#Index_18914| ar_1@@1 k))))
 :qid |stdinbpl.729:126|
 :skolemid |64|
 :pattern ( (|Seq#Index_18914| ar_1@@1 j@@1) (|Seq#Index_18914| ar_1@@1 k))
))) (= (sum_array Heap@@2 i@@3 lo@@0 hi@@1 ar_1@@1) (ite (< i@@3 hi@@1) (+ (select (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| Heap@@2) (|Seq#Index_18914| ar_1@@1 i@@3) Ref__Integer_value) (|sum_array'| Heap@@2 (+ i@@3 1) lo@@0 hi@@1 ar_1@@1)) 0))))
 :qid |stdinbpl.727:15|
 :skolemid |65|
 :pattern ( (state Heap@@2 Mask@@1) (sum_array Heap@@2 i@@3 lo@@0 hi@@1 ar_1@@1))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3299| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.608:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3299| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_34127) (x T@Ref) ) (!  (=> (|Seq#Contains_34127| s@@7 x) (and (and (<= 0 (|Seq#Skolem_34127| s@@7 x)) (< (|Seq#Skolem_34127| s@@7 x) (|Seq#Length_18914| s@@7))) (= (|Seq#Index_18914| s@@7 (|Seq#Skolem_34127| s@@7 x)) x)))
 :qid |stdinbpl.466:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_34127| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3299) (x@@0 Int) ) (!  (=> (|Seq#Contains_3299| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3299| s@@8 x@@0)) (< (|Seq#Skolem_3299| s@@8 x@@0) (|Seq#Length_3299| s@@8))) (= (|Seq#Index_3299| s@@8 (|Seq#Skolem_3299| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.466:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3299| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_34127) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_18914| s@@9 n@@7) s@@9))
 :qid |stdinbpl.450:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_18914| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3299) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3299| s@@10 n@@8) s@@10))
 :qid |stdinbpl.450:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3299| s@@10 n@@8))
)))
(assert (forall ((i@@4 Int) (j@@2 Int) ) (! (= (|Seq#Sub| i@@4 j@@2) (- i@@4 j@@2))
 :qid |stdinbpl.303:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@4 j@@2))
)))
(assert (forall ((i@@5 Int) (j@@3 Int) ) (! (= (|Seq#Add| i@@5 j@@3) (+ i@@5 j@@3))
 :qid |stdinbpl.301:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@5 j@@3))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_26941) (ExhaleHeap T@PolymorphicMapType_26941) (Mask@@2 T@PolymorphicMapType_26962) (pm_f_2 T@Field_18875_74674) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@2) (=> (and (HasDirectPerm_18875_74738 Mask@@2 null pm_f_2) (IsPredicateField_18875_74765 pm_f_2)) (= (select (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| Heap@@3) null (PredicateMaskField_18875 pm_f_2)) (select (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| ExhaleHeap) null (PredicateMaskField_18875 pm_f_2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@2) (IsPredicateField_18875_74765 pm_f_2) (select (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| ExhaleHeap) null (PredicateMaskField_18875 pm_f_2)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_26941) (ExhaleHeap@@0 T@PolymorphicMapType_26941) (Mask@@3 T@PolymorphicMapType_26962) (pm_f_2@@0 T@Field_18875_74674) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@3) (=> (and (HasDirectPerm_18875_74738 Mask@@3 null pm_f_2@@0) (IsWandField_18875_76512 pm_f_2@@0)) (= (select (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| Heap@@4) null (WandMaskField_18875 pm_f_2@@0)) (select (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| ExhaleHeap@@0) null (WandMaskField_18875 pm_f_2@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@3) (IsWandField_18875_76512 pm_f_2@@0) (select (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| ExhaleHeap@@0) null (WandMaskField_18875 pm_f_2@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_34127| (|Seq#Singleton_18914| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.591:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_34127| (|Seq#Singleton_18914| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3299| (|Seq#Singleton_3299| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.591:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3299| (|Seq#Singleton_3299| x@@2) y@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_26941) (i@@6 Int) (lo@@1 Int) (hi@@2 Int) (step@@0 Int) (vmin@@0 Int) (vmax_1@@0 Int) (ar_1@@2 T@Seq_34127) (v_2@@0 Int) ) (!  (and (= (count_square Heap@@5 i@@6 lo@@1 hi@@2 step@@0 vmin@@0 vmax_1@@0 ar_1@@2 v_2@@0) (|count_square'| Heap@@5 i@@6 lo@@1 hi@@2 step@@0 vmin@@0 vmax_1@@0 ar_1@@2 v_2@@0)) (dummyFunction_3743 (|count_square#triggerStateless| i@@6 lo@@1 hi@@2 step@@0 vmin@@0 vmax_1@@0 ar_1@@2 v_2@@0)))
 :qid |stdinbpl.1218:15|
 :skolemid |104|
 :pattern ( (count_square Heap@@5 i@@6 lo@@1 hi@@2 step@@0 vmin@@0 vmax_1@@0 ar_1@@2 v_2@@0))
)))
(assert (forall ((s@@11 T@Seq_34127) (n@@9 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@9)) (< j@@4 (|Seq#Length_18914| s@@11))) (= (|Seq#Index_18914| (|Seq#Take_18914| s@@11 n@@9) j@@4) (|Seq#Index_18914| s@@11 j@@4)))
 :qid |stdinbpl.342:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_18914| (|Seq#Take_18914| s@@11 n@@9) j@@4))
 :pattern ( (|Seq#Index_18914| s@@11 j@@4) (|Seq#Take_18914| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3299) (n@@10 Int) (j@@5 Int) ) (!  (=> (and (and (<= 0 j@@5) (< j@@5 n@@10)) (< j@@5 (|Seq#Length_3299| s@@12))) (= (|Seq#Index_3299| (|Seq#Take_3299| s@@12 n@@10) j@@5) (|Seq#Index_3299| s@@12 j@@5)))
 :qid |stdinbpl.342:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3299| (|Seq#Take_3299| s@@12 n@@10) j@@5))
 :pattern ( (|Seq#Index_3299| s@@12 j@@5) (|Seq#Take_3299| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_34127) (t T@Seq_34127) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_18914| s@@13))) (< n@@11 (|Seq#Length_18914| (|Seq#Append_34127| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_18914| s@@13)) (|Seq#Length_18914| s@@13)) n@@11) (= (|Seq#Take_18914| (|Seq#Append_34127| s@@13 t) n@@11) (|Seq#Append_34127| s@@13 (|Seq#Take_18914| t (|Seq#Sub| n@@11 (|Seq#Length_18914| s@@13)))))))
 :qid |stdinbpl.427:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_18914| (|Seq#Append_34127| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3299) (t@@0 T@Seq_3299) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3299| s@@14))) (< n@@12 (|Seq#Length_3299| (|Seq#Append_3299| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3299| s@@14)) (|Seq#Length_3299| s@@14)) n@@12) (= (|Seq#Take_3299| (|Seq#Append_3299| s@@14 t@@0) n@@12) (|Seq#Append_3299| s@@14 (|Seq#Take_3299| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3299| s@@14)))))))
 :qid |stdinbpl.427:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3299| (|Seq#Append_3299| s@@14 t@@0) n@@12))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_26941) (i@@7 Int) (lo@@2 Int) (hi@@3 Int) (step@@1 Int) (vmin@@1 Int) (vmax_1@@1 Int) (ar_1@@3 T@Seq_34127) (v_2@@1 Int) ) (! (dummyFunction_3743 (|count_square#triggerStateless| i@@7 lo@@2 hi@@3 step@@1 vmin@@1 vmax_1@@1 ar_1@@3 v_2@@1))
 :qid |stdinbpl.1222:15|
 :skolemid |105|
 :pattern ( (|count_square'| Heap@@6 i@@7 lo@@2 hi@@3 step@@1 vmin@@1 vmax_1@@1 ar_1@@3 v_2@@1))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_26941) (Heap1Heap T@PolymorphicMapType_26941) (i@@8 Int) (lo@@3 Int) (hi@@4 Int) (step@@2 Int) (vmin@@2 Int) (vmax_1@@2 Int) (ar_1@@4 T@Seq_34127) ) (!  (=> (and (=  (and (<= vmin@@2 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) vmax_1@@2) (and (<= lo@@3 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2) hi@@4))))  (and (<= vmin@@2 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) vmax_1@@2) (and (<= lo@@3 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2) hi@@4))))) (=> (and (<= vmin@@2 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) vmax_1@@2) (and (<= lo@@3 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)) step@@2) hi@@4)))) (= (select (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| Heap2Heap) (|Seq#Index_18914| ar_1@@4 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) Ref__Integer_value) (select (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| Heap1Heap) (|Seq#Index_18914| ar_1@@4 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4))) Ref__Integer_value)))) (= (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4)))
 :qid |stdinbpl.982:15|
 :skolemid |88|
 :pattern ( (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax_1@@2 ar_1@@4) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_26941) (Mask@@4 T@PolymorphicMapType_26962) (i@@9 Int) (lo@@4 Int) (hi@@5 Int) (step@@3 Int) (vmin@@3 Int) (vmax_1@@3 Int) (ar_1@@5 T@Seq_34127) ) (!  (=> (and (state Heap@@7 Mask@@4) (< AssumeFunctionsAbove 1)) (=> (and (and (and (and (<= 0 lo@@4) (and (<= lo@@4 hi@@5) (and (<= hi@@5 step@@3) (> step@@3 0)))) (and (<= 0 vmin@@3) (and (<= vmin@@3 i@@9) (<= i@@9 vmax_1@@3)))) (<= vmax_1@@3 (|Seq#Length_18914| ar_1@@5))) (forall ((j@@6 Int) (k@@0 Int) ) (!  (=> (and (<= 0 j@@6) (and (< j@@6 (|Seq#Length_18914| ar_1@@5)) (and (<= 0 k@@0) (and (< k@@0 (|Seq#Length_18914| ar_1@@5)) (not (= j@@6 k@@0)))))) (not (= (|Seq#Index_18914| ar_1@@5 j@@6) (|Seq#Index_18914| ar_1@@5 k@@0))))
 :qid |stdinbpl.964:195|
 :skolemid |85|
 :pattern ( (|Seq#Index_18914| ar_1@@5 j@@6) (|Seq#Index_18914| ar_1@@5 k@@0))
))) (= (sum_square Heap@@7 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5) (ite (< i@@9 vmax_1@@3) (+ (ite  (and (<= lo@@4 (mod i@@9 step@@3)) (< (mod i@@9 step@@3) hi@@5)) (select (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| Heap@@7) (|Seq#Index_18914| ar_1@@5 i@@9) Ref__Integer_value) 0) (|sum_square'| Heap@@7 (+ i@@9 1) lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5)) 0))))
 :qid |stdinbpl.962:15|
 :skolemid |86|
 :pattern ( (state Heap@@7 Mask@@4) (sum_square Heap@@7 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax_1@@3 ar_1@@5))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_26941) (Heap1Heap@@0 T@PolymorphicMapType_26941) (i@@10 Int) (lo@@5 Int) (hi@@6 Int) (step@@4 Int) (vmin@@4 Int) (vmax_1@@4 Int) (ar_1@@6 T@Seq_34127) (v_2@@2 Int) ) (!  (=> (and (=  (and (<= vmin@@4 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2)) vmax_1@@4) (and (<= lo@@5 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2)) step@@4)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2)) step@@4) hi@@6))))  (and (<= vmin@@4 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2)) vmax_1@@4) (and (<= lo@@5 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2)) step@@4)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2)) step@@4) hi@@6))))) (=> (and (<= vmin@@4 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2)) vmax_1@@4) (and (<= lo@@5 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2)) step@@4)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2)) step@@4) hi@@6)))) (= (select (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| Heap2Heap@@0) (|Seq#Index_18914| ar_1@@6 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2))) Ref__Integer_value) (select (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| Heap1Heap@@0) (|Seq#Index_18914| ar_1@@6 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2))) Ref__Integer_value)))) (= (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2)))
 :qid |stdinbpl.1248:15|
 :skolemid |109|
 :pattern ( (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax_1@@4 ar_1@@6 v_2@@2) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@8 T@PolymorphicMapType_26941) (ExhaleHeap@@1 T@PolymorphicMapType_26941) (Mask@@5 T@PolymorphicMapType_26962) (o_8 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@5) (=> (select (|PolymorphicMapType_26941_18649_53#PolymorphicMapType_26941| Heap@@8) o_8 $allocated) (select (|PolymorphicMapType_26941_18649_53#PolymorphicMapType_26941| ExhaleHeap@@1) o_8 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@5) (select (|PolymorphicMapType_26941_18649_53#PolymorphicMapType_26941| ExhaleHeap@@1) o_8 $allocated))
)))
(assert (forall ((p T@Field_18875_74674) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_27001_27001 p v_1 p w))
 :qid |stdinbpl.245:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_27001_27001 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_34127) (s1 T@Seq_34127) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_18914|)) (not (= s1 |Seq#Empty_18914|))) (<= (|Seq#Length_18914| s0) n@@13)) (< n@@13 (|Seq#Length_18914| (|Seq#Append_34127| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_18914| s0)) (|Seq#Length_18914| s0)) n@@13) (= (|Seq#Index_18914| (|Seq#Append_34127| s0 s1) n@@13) (|Seq#Index_18914| s1 (|Seq#Sub| n@@13 (|Seq#Length_18914| s0))))))
 :qid |stdinbpl.314:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_18914| (|Seq#Append_34127| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3299) (s1@@0 T@Seq_3299) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3299|)) (not (= s1@@0 |Seq#Empty_3299|))) (<= (|Seq#Length_3299| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3299| (|Seq#Append_3299| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3299| s0@@0)) (|Seq#Length_3299| s0@@0)) n@@14) (= (|Seq#Index_3299| (|Seq#Append_3299| s0@@0 s1@@0) n@@14) (|Seq#Index_3299| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3299| s0@@0))))))
 :qid |stdinbpl.314:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3299| (|Seq#Append_3299| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_18873_3421 Ref__res)))
(assert  (not (IsWandField_18873_3421 Ref__res)))
(assert  (not (IsPredicateField_18873_3421 Ref__Integer_value)))
(assert  (not (IsWandField_18873_3421 Ref__Integer_value)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_26941) (ExhaleHeap@@2 T@PolymorphicMapType_26941) (Mask@@6 T@PolymorphicMapType_26962) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@6) (succHeap Heap@@9 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_26962) (o_2@@4 T@Ref) (f_4@@4 T@Field_18875_74807) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_26962_18875_78929#PolymorphicMapType_26962| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_18875_80058 f_4@@4))) (not (IsWandField_18875_80074 f_4@@4))) (<= (select (|PolymorphicMapType_26962_18875_78929#PolymorphicMapType_26962| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_26962_18875_78929#PolymorphicMapType_26962| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_26962) (o_2@@5 T@Ref) (f_4@@5 T@Field_18875_74674) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_26962_18875_74674#PolymorphicMapType_26962| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_18875_74765 f_4@@5))) (not (IsWandField_18875_76512 f_4@@5))) (<= (select (|PolymorphicMapType_26962_18875_74674#PolymorphicMapType_26962| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_26962_18875_74674#PolymorphicMapType_26962| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_26962) (o_2@@6 T@Ref) (f_4@@6 T@Field_27014_27015) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_26962_18875_27015#PolymorphicMapType_26962| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_18875_27015 f_4@@6))) (not (IsWandField_18875_27015 f_4@@6))) (<= (select (|PolymorphicMapType_26962_18875_27015#PolymorphicMapType_26962| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_26962_18875_27015#PolymorphicMapType_26962| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_26962) (o_2@@7 T@Ref) (f_4@@7 T@Field_27001_53) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_26962_18875_53#PolymorphicMapType_26962| Mask@@10) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_18875_53 f_4@@7))) (not (IsWandField_18875_53 f_4@@7))) (<= (select (|PolymorphicMapType_26962_18875_53#PolymorphicMapType_26962| Mask@@10) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_26962_18875_53#PolymorphicMapType_26962| Mask@@10) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_26962) (o_2@@8 T@Ref) (f_4@@8 T@Field_33055_3421) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_26962_18875_3436#PolymorphicMapType_26962| Mask@@11) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_18873_3421 f_4@@8))) (not (IsWandField_18873_3421 f_4@@8))) (<= (select (|PolymorphicMapType_26962_18875_3436#PolymorphicMapType_26962| Mask@@11) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_26962_18875_3436#PolymorphicMapType_26962| Mask@@11) o_2@@8 f_4@@8))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_26941) (Mask@@12 T@PolymorphicMapType_26962) (i@@11 Int) (hi@@7 Int) (ar_1@@7 T@Seq_3299) ) (!  (=> (state Heap@@10 Mask@@12) (= (|sum_list'| Heap@@10 i@@11 hi@@7 ar_1@@7) (|sum_list#frame| EmptyFrame i@@11 hi@@7 ar_1@@7)))
 :qid |stdinbpl.649:15|
 :skolemid |61|
 :pattern ( (state Heap@@10 Mask@@12) (|sum_list'| Heap@@10 i@@11 hi@@7 ar_1@@7))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_26962) (o_2@@9 T@Ref) (f_4@@9 T@Field_18875_74807) ) (! (= (HasDirectPerm_18875_80512 Mask@@13 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_26962_18875_78929#PolymorphicMapType_26962| Mask@@13) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18875_80512 Mask@@13 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_26962) (o_2@@10 T@Ref) (f_4@@10 T@Field_18875_74674) ) (! (= (HasDirectPerm_18875_74738 Mask@@14 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_26962_18875_74674#PolymorphicMapType_26962| Mask@@14) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18875_74738 Mask@@14 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_26962) (o_2@@11 T@Ref) (f_4@@11 T@Field_27014_27015) ) (! (= (HasDirectPerm_18875_27015 Mask@@15 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_26962_18875_27015#PolymorphicMapType_26962| Mask@@15) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18875_27015 Mask@@15 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_26962) (o_2@@12 T@Ref) (f_4@@12 T@Field_27001_53) ) (! (= (HasDirectPerm_18875_53 Mask@@16 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_26962_18875_53#PolymorphicMapType_26962| Mask@@16) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18875_53 Mask@@16 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_26962) (o_2@@13 T@Ref) (f_4@@13 T@Field_33055_3421) ) (! (= (HasDirectPerm_18875_3436 Mask@@17 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_26962_18875_3436#PolymorphicMapType_26962| Mask@@17) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18875_3436 Mask@@17 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_26941) (i@@12 Int) (lo@@6 Int) (hi@@8 Int) (ar_1@@8 T@Seq_34127) ) (! (dummyFunction_3743 (|sum_array#triggerStateless| i@@12 lo@@6 hi@@8 ar_1@@8))
 :qid |stdinbpl.721:15|
 :skolemid |63|
 :pattern ( (|sum_array'| Heap@@11 i@@12 lo@@6 hi@@8 ar_1@@8))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_26941) (i@@13 Int) (hi@@9 Int) (ar_1@@9 T@Seq_3299) (v_2@@3 Int) ) (! (dummyFunction_3743 (|count_list#triggerStateless| i@@13 hi@@9 ar_1@@9 v_2@@3))
 :qid |stdinbpl.1488:15|
 :skolemid |126|
 :pattern ( (|count_list'| Heap@@12 i@@13 hi@@9 ar_1@@9 v_2@@3))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_26941) (i@@14 Int) (hi@@10 Int) (ar_1@@10 T@Seq_34127) (v_2@@4 Int) ) (! (dummyFunction_3743 (|count_array#triggerStateless| i@@14 hi@@10 ar_1@@10 v_2@@4))
 :qid |stdinbpl.1573:15|
 :skolemid |130|
 :pattern ( (|count_array'| Heap@@13 i@@14 hi@@10 ar_1@@10 v_2@@4))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_26941) (ExhaleHeap@@3 T@PolymorphicMapType_26941) (Mask@@18 T@PolymorphicMapType_26962) (pm_f_2@@1 T@Field_18875_74674) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@3 Mask@@18) (=> (and (HasDirectPerm_18875_74738 Mask@@18 null pm_f_2@@1) (IsPredicateField_18875_74765 pm_f_2@@1)) (and (and (and (and (forall ((o2_2 T@Ref) (f_14 T@Field_27001_53) ) (!  (=> (select (|PolymorphicMapType_27490_27001_53#PolymorphicMapType_27490| (select (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| Heap@@14) null (PredicateMaskField_18875 pm_f_2@@1))) o2_2 f_14) (= (select (|PolymorphicMapType_26941_18649_53#PolymorphicMapType_26941| Heap@@14) o2_2 f_14) (select (|PolymorphicMapType_26941_18649_53#PolymorphicMapType_26941| ExhaleHeap@@3) o2_2 f_14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26941_18649_53#PolymorphicMapType_26941| ExhaleHeap@@3) o2_2 f_14))
)) (forall ((o2_2@@0 T@Ref) (f_14@@0 T@Field_27014_27015) ) (!  (=> (select (|PolymorphicMapType_27490_27001_27015#PolymorphicMapType_27490| (select (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| Heap@@14) null (PredicateMaskField_18875 pm_f_2@@1))) o2_2@@0 f_14@@0) (= (select (|PolymorphicMapType_26941_18652_18653#PolymorphicMapType_26941| Heap@@14) o2_2@@0 f_14@@0) (select (|PolymorphicMapType_26941_18652_18653#PolymorphicMapType_26941| ExhaleHeap@@3) o2_2@@0 f_14@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26941_18652_18653#PolymorphicMapType_26941| ExhaleHeap@@3) o2_2@@0 f_14@@0))
))) (forall ((o2_2@@1 T@Ref) (f_14@@1 T@Field_33055_3421) ) (!  (=> (select (|PolymorphicMapType_27490_27001_3421#PolymorphicMapType_27490| (select (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| Heap@@14) null (PredicateMaskField_18875 pm_f_2@@1))) o2_2@@1 f_14@@1) (= (select (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| Heap@@14) o2_2@@1 f_14@@1) (select (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| ExhaleHeap@@3) o2_2@@1 f_14@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| ExhaleHeap@@3) o2_2@@1 f_14@@1))
))) (forall ((o2_2@@2 T@Ref) (f_14@@2 T@Field_18875_74674) ) (!  (=> (select (|PolymorphicMapType_27490_27001_74674#PolymorphicMapType_27490| (select (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| Heap@@14) null (PredicateMaskField_18875 pm_f_2@@1))) o2_2@@2 f_14@@2) (= (select (|PolymorphicMapType_26941_27001_74674#PolymorphicMapType_26941| Heap@@14) o2_2@@2 f_14@@2) (select (|PolymorphicMapType_26941_27001_74674#PolymorphicMapType_26941| ExhaleHeap@@3) o2_2@@2 f_14@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26941_27001_74674#PolymorphicMapType_26941| ExhaleHeap@@3) o2_2@@2 f_14@@2))
))) (forall ((o2_2@@3 T@Ref) (f_14@@3 T@Field_18875_74807) ) (!  (=> (select (|PolymorphicMapType_27490_27001_75985#PolymorphicMapType_27490| (select (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| Heap@@14) null (PredicateMaskField_18875 pm_f_2@@1))) o2_2@@3 f_14@@3) (= (select (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| Heap@@14) o2_2@@3 f_14@@3) (select (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| ExhaleHeap@@3) o2_2@@3 f_14@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| ExhaleHeap@@3) o2_2@@3 f_14@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@3 Mask@@18) (IsPredicateField_18875_74765 pm_f_2@@1))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_26941) (ExhaleHeap@@4 T@PolymorphicMapType_26941) (Mask@@19 T@PolymorphicMapType_26962) (pm_f_2@@2 T@Field_18875_74674) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@4 Mask@@19) (=> (and (HasDirectPerm_18875_74738 Mask@@19 null pm_f_2@@2) (IsWandField_18875_76512 pm_f_2@@2)) (and (and (and (and (forall ((o2_2@@4 T@Ref) (f_14@@4 T@Field_27001_53) ) (!  (=> (select (|PolymorphicMapType_27490_27001_53#PolymorphicMapType_27490| (select (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| Heap@@15) null (WandMaskField_18875 pm_f_2@@2))) o2_2@@4 f_14@@4) (= (select (|PolymorphicMapType_26941_18649_53#PolymorphicMapType_26941| Heap@@15) o2_2@@4 f_14@@4) (select (|PolymorphicMapType_26941_18649_53#PolymorphicMapType_26941| ExhaleHeap@@4) o2_2@@4 f_14@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26941_18649_53#PolymorphicMapType_26941| ExhaleHeap@@4) o2_2@@4 f_14@@4))
)) (forall ((o2_2@@5 T@Ref) (f_14@@5 T@Field_27014_27015) ) (!  (=> (select (|PolymorphicMapType_27490_27001_27015#PolymorphicMapType_27490| (select (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| Heap@@15) null (WandMaskField_18875 pm_f_2@@2))) o2_2@@5 f_14@@5) (= (select (|PolymorphicMapType_26941_18652_18653#PolymorphicMapType_26941| Heap@@15) o2_2@@5 f_14@@5) (select (|PolymorphicMapType_26941_18652_18653#PolymorphicMapType_26941| ExhaleHeap@@4) o2_2@@5 f_14@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26941_18652_18653#PolymorphicMapType_26941| ExhaleHeap@@4) o2_2@@5 f_14@@5))
))) (forall ((o2_2@@6 T@Ref) (f_14@@6 T@Field_33055_3421) ) (!  (=> (select (|PolymorphicMapType_27490_27001_3421#PolymorphicMapType_27490| (select (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| Heap@@15) null (WandMaskField_18875 pm_f_2@@2))) o2_2@@6 f_14@@6) (= (select (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| Heap@@15) o2_2@@6 f_14@@6) (select (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| ExhaleHeap@@4) o2_2@@6 f_14@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| ExhaleHeap@@4) o2_2@@6 f_14@@6))
))) (forall ((o2_2@@7 T@Ref) (f_14@@7 T@Field_18875_74674) ) (!  (=> (select (|PolymorphicMapType_27490_27001_74674#PolymorphicMapType_27490| (select (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| Heap@@15) null (WandMaskField_18875 pm_f_2@@2))) o2_2@@7 f_14@@7) (= (select (|PolymorphicMapType_26941_27001_74674#PolymorphicMapType_26941| Heap@@15) o2_2@@7 f_14@@7) (select (|PolymorphicMapType_26941_27001_74674#PolymorphicMapType_26941| ExhaleHeap@@4) o2_2@@7 f_14@@7)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26941_27001_74674#PolymorphicMapType_26941| ExhaleHeap@@4) o2_2@@7 f_14@@7))
))) (forall ((o2_2@@8 T@Ref) (f_14@@8 T@Field_18875_74807) ) (!  (=> (select (|PolymorphicMapType_27490_27001_75985#PolymorphicMapType_27490| (select (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| Heap@@15) null (WandMaskField_18875 pm_f_2@@2))) o2_2@@8 f_14@@8) (= (select (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| Heap@@15) o2_2@@8 f_14@@8) (select (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| ExhaleHeap@@4) o2_2@@8 f_14@@8)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| ExhaleHeap@@4) o2_2@@8 f_14@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@4 Mask@@19) (IsWandField_18875_76512 pm_f_2@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.233:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3299| (|Seq#Range| q@min@@0 q@max@@0) j@@7) (+ q@min@@0 j@@7)))
 :qid |stdinbpl.606:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3299| (|Seq#Range| q@min@@0 q@max@@0) j@@7))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_26941) (ExhaleHeap@@5 T@PolymorphicMapType_26941) (Mask@@20 T@PolymorphicMapType_26962) (o_8@@0 T@Ref) (f_14@@9 T@Field_18875_74807) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@5 Mask@@20) (=> (HasDirectPerm_18875_80512 Mask@@20 o_8@@0 f_14@@9) (= (select (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| Heap@@16) o_8@@0 f_14@@9) (select (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| ExhaleHeap@@5) o_8@@0 f_14@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@5 Mask@@20) (select (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| ExhaleHeap@@5) o_8@@0 f_14@@9))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_26941) (ExhaleHeap@@6 T@PolymorphicMapType_26941) (Mask@@21 T@PolymorphicMapType_26962) (o_8@@1 T@Ref) (f_14@@10 T@Field_18875_74674) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@6 Mask@@21) (=> (HasDirectPerm_18875_74738 Mask@@21 o_8@@1 f_14@@10) (= (select (|PolymorphicMapType_26941_27001_74674#PolymorphicMapType_26941| Heap@@17) o_8@@1 f_14@@10) (select (|PolymorphicMapType_26941_27001_74674#PolymorphicMapType_26941| ExhaleHeap@@6) o_8@@1 f_14@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@6 Mask@@21) (select (|PolymorphicMapType_26941_27001_74674#PolymorphicMapType_26941| ExhaleHeap@@6) o_8@@1 f_14@@10))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_26941) (ExhaleHeap@@7 T@PolymorphicMapType_26941) (Mask@@22 T@PolymorphicMapType_26962) (o_8@@2 T@Ref) (f_14@@11 T@Field_27014_27015) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@7 Mask@@22) (=> (HasDirectPerm_18875_27015 Mask@@22 o_8@@2 f_14@@11) (= (select (|PolymorphicMapType_26941_18652_18653#PolymorphicMapType_26941| Heap@@18) o_8@@2 f_14@@11) (select (|PolymorphicMapType_26941_18652_18653#PolymorphicMapType_26941| ExhaleHeap@@7) o_8@@2 f_14@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@7 Mask@@22) (select (|PolymorphicMapType_26941_18652_18653#PolymorphicMapType_26941| ExhaleHeap@@7) o_8@@2 f_14@@11))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_26941) (ExhaleHeap@@8 T@PolymorphicMapType_26941) (Mask@@23 T@PolymorphicMapType_26962) (o_8@@3 T@Ref) (f_14@@12 T@Field_27001_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@8 Mask@@23) (=> (HasDirectPerm_18875_53 Mask@@23 o_8@@3 f_14@@12) (= (select (|PolymorphicMapType_26941_18649_53#PolymorphicMapType_26941| Heap@@19) o_8@@3 f_14@@12) (select (|PolymorphicMapType_26941_18649_53#PolymorphicMapType_26941| ExhaleHeap@@8) o_8@@3 f_14@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@8 Mask@@23) (select (|PolymorphicMapType_26941_18649_53#PolymorphicMapType_26941| ExhaleHeap@@8) o_8@@3 f_14@@12))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_26941) (ExhaleHeap@@9 T@PolymorphicMapType_26941) (Mask@@24 T@PolymorphicMapType_26962) (o_8@@4 T@Ref) (f_14@@13 T@Field_33055_3421) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@9 Mask@@24) (=> (HasDirectPerm_18875_3436 Mask@@24 o_8@@4 f_14@@13) (= (select (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| Heap@@20) o_8@@4 f_14@@13) (select (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| ExhaleHeap@@9) o_8@@4 f_14@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@9 Mask@@24) (select (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| ExhaleHeap@@9) o_8@@4 f_14@@13))
)))
(assert (forall ((s0@@1 T@Seq_34127) (s1@@1 T@Seq_34127) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_18914|)) (not (= s1@@1 |Seq#Empty_18914|))) (= (|Seq#Length_18914| (|Seq#Append_34127| s0@@1 s1@@1)) (+ (|Seq#Length_18914| s0@@1) (|Seq#Length_18914| s1@@1))))
 :qid |stdinbpl.283:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_18914| (|Seq#Append_34127| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3299) (s1@@2 T@Seq_3299) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3299|)) (not (= s1@@2 |Seq#Empty_3299|))) (= (|Seq#Length_3299| (|Seq#Append_3299| s0@@2 s1@@2)) (+ (|Seq#Length_3299| s0@@2) (|Seq#Length_3299| s1@@2))))
 :qid |stdinbpl.283:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3299| (|Seq#Append_3299| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_18875_74807) ) (! (= (select (|PolymorphicMapType_26962_18875_78929#PolymorphicMapType_26962| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_26962_18875_78929#PolymorphicMapType_26962| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_18875_74674) ) (! (= (select (|PolymorphicMapType_26962_18875_74674#PolymorphicMapType_26962| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_26962_18875_74674#PolymorphicMapType_26962| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_27014_27015) ) (! (= (select (|PolymorphicMapType_26962_18875_27015#PolymorphicMapType_26962| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_26962_18875_27015#PolymorphicMapType_26962| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_27001_53) ) (! (= (select (|PolymorphicMapType_26962_18875_53#PolymorphicMapType_26962| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_26962_18875_53#PolymorphicMapType_26962| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_33055_3421) ) (! (= (select (|PolymorphicMapType_26962_18875_3436#PolymorphicMapType_26962| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_26962_18875_3436#PolymorphicMapType_26962| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_26941) (Mask@@25 T@PolymorphicMapType_26962) (i@@15 Int) (hi@@11 Int) (ar_1@@11 T@Seq_3299) (v_2@@5 Int) ) (!  (=> (and (state Heap@@21 Mask@@25) (< AssumeFunctionsAbove 5)) (=> (and (and (<= 0 i@@15) (<= i@@15 hi@@11)) (<= hi@@11 (|Seq#Length_3299| ar_1@@11))) (= (count_list Heap@@21 i@@15 hi@@11 ar_1@@11 v_2@@5) (ite (< i@@15 hi@@11) (+ (ite (= (|Seq#Index_3299| ar_1@@11 i@@15) v_2@@5) 1 0) (|count_list'| Heap@@21 (+ i@@15 1) hi@@11 ar_1@@11 v_2@@5)) 0))))
 :qid |stdinbpl.1494:15|
 :skolemid |127|
 :pattern ( (state Heap@@21 Mask@@25) (count_list Heap@@21 i@@15 hi@@11 ar_1@@11 v_2@@5))
)))
(assert (forall ((s@@15 T@Seq_34127) (t@@1 T@Seq_34127) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_18914| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_18914| s@@15)) (|Seq#Length_18914| s@@15)) n@@15) (= (|Seq#Drop_18914| (|Seq#Append_34127| s@@15 t@@1) n@@15) (|Seq#Drop_18914| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_18914| s@@15))))))
 :qid |stdinbpl.440:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_18914| (|Seq#Append_34127| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3299) (t@@2 T@Seq_3299) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3299| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3299| s@@16)) (|Seq#Length_3299| s@@16)) n@@16) (= (|Seq#Drop_3299| (|Seq#Append_3299| s@@16 t@@2) n@@16) (|Seq#Drop_3299| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3299| s@@16))))))
 :qid |stdinbpl.440:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3299| (|Seq#Append_3299| s@@16 t@@2) n@@16))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_26941) (i@@16 Int) (lo@@7 Int) (hi@@12 Int) (ar_1@@12 T@Seq_34127) ) (!  (and (= (sum_array Heap@@22 i@@16 lo@@7 hi@@12 ar_1@@12) (|sum_array'| Heap@@22 i@@16 lo@@7 hi@@12 ar_1@@12)) (dummyFunction_3743 (|sum_array#triggerStateless| i@@16 lo@@7 hi@@12 ar_1@@12)))
 :qid |stdinbpl.717:15|
 :skolemid |62|
 :pattern ( (sum_array Heap@@22 i@@16 lo@@7 hi@@12 ar_1@@12))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_26941) (i@@17 Int) (hi@@13 Int) (ar_1@@13 T@Seq_3299) (v_2@@6 Int) ) (!  (and (= (count_list Heap@@23 i@@17 hi@@13 ar_1@@13 v_2@@6) (|count_list'| Heap@@23 i@@17 hi@@13 ar_1@@13 v_2@@6)) (dummyFunction_3743 (|count_list#triggerStateless| i@@17 hi@@13 ar_1@@13 v_2@@6)))
 :qid |stdinbpl.1484:15|
 :skolemid |125|
 :pattern ( (count_list Heap@@23 i@@17 hi@@13 ar_1@@13 v_2@@6))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_26941) (i@@18 Int) (hi@@14 Int) (ar_1@@14 T@Seq_34127) (v_2@@7 Int) ) (!  (and (= (count_array Heap@@24 i@@18 hi@@14 ar_1@@14 v_2@@7) (|count_array'| Heap@@24 i@@18 hi@@14 ar_1@@14 v_2@@7)) (dummyFunction_3743 (|count_array#triggerStateless| i@@18 hi@@14 ar_1@@14 v_2@@7)))
 :qid |stdinbpl.1569:15|
 :skolemid |129|
 :pattern ( (count_array Heap@@24 i@@18 hi@@14 ar_1@@14 v_2@@7))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_26962) (SummandMask1 T@PolymorphicMapType_26962) (SummandMask2 T@PolymorphicMapType_26962) (o_2@@19 T@Ref) (f_4@@19 T@Field_18875_74807) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_26962_18875_78929#PolymorphicMapType_26962| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_26962_18875_78929#PolymorphicMapType_26962| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_26962_18875_78929#PolymorphicMapType_26962| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_26962_18875_78929#PolymorphicMapType_26962| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_26962_18875_78929#PolymorphicMapType_26962| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_26962_18875_78929#PolymorphicMapType_26962| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_26962) (SummandMask1@@0 T@PolymorphicMapType_26962) (SummandMask2@@0 T@PolymorphicMapType_26962) (o_2@@20 T@Ref) (f_4@@20 T@Field_18875_74674) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_26962_18875_74674#PolymorphicMapType_26962| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_26962_18875_74674#PolymorphicMapType_26962| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_26962_18875_74674#PolymorphicMapType_26962| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_26962_18875_74674#PolymorphicMapType_26962| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_26962_18875_74674#PolymorphicMapType_26962| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_26962_18875_74674#PolymorphicMapType_26962| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_26962) (SummandMask1@@1 T@PolymorphicMapType_26962) (SummandMask2@@1 T@PolymorphicMapType_26962) (o_2@@21 T@Ref) (f_4@@21 T@Field_27014_27015) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_26962_18875_27015#PolymorphicMapType_26962| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_26962_18875_27015#PolymorphicMapType_26962| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_26962_18875_27015#PolymorphicMapType_26962| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_26962_18875_27015#PolymorphicMapType_26962| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_26962_18875_27015#PolymorphicMapType_26962| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_26962_18875_27015#PolymorphicMapType_26962| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_26962) (SummandMask1@@2 T@PolymorphicMapType_26962) (SummandMask2@@2 T@PolymorphicMapType_26962) (o_2@@22 T@Ref) (f_4@@22 T@Field_27001_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_26962_18875_53#PolymorphicMapType_26962| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_26962_18875_53#PolymorphicMapType_26962| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_26962_18875_53#PolymorphicMapType_26962| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_26962_18875_53#PolymorphicMapType_26962| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_26962_18875_53#PolymorphicMapType_26962| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_26962_18875_53#PolymorphicMapType_26962| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_26962) (SummandMask1@@3 T@PolymorphicMapType_26962) (SummandMask2@@3 T@PolymorphicMapType_26962) (o_2@@23 T@Ref) (f_4@@23 T@Field_33055_3421) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_26962_18875_3436#PolymorphicMapType_26962| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_26962_18875_3436#PolymorphicMapType_26962| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_26962_18875_3436#PolymorphicMapType_26962| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_26962_18875_3436#PolymorphicMapType_26962| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_26962_18875_3436#PolymorphicMapType_26962| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_26962_18875_3436#PolymorphicMapType_26962| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_26941) (i@@19 Int) (lo@@8 Int) (hi@@15 Int) (step@@5 Int) (vmin@@5 Int) (vmax_1@@5 Int) (ar_1@@15 T@Seq_34127) ) (!  (and (= (sum_square Heap@@25 i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax_1@@5 ar_1@@15) (|sum_square'| Heap@@25 i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax_1@@5 ar_1@@15)) (dummyFunction_3743 (|sum_square#triggerStateless| i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax_1@@5 ar_1@@15)))
 :qid |stdinbpl.952:15|
 :skolemid |83|
 :pattern ( (sum_square Heap@@25 i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax_1@@5 ar_1@@15))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_26941) (Mask@@26 T@PolymorphicMapType_26962) (i@@20 Int) (hi@@16 Int) (ar_1@@16 T@Seq_3299) (v_2@@8 Int) ) (!  (=> (state Heap@@26 Mask@@26) (= (|count_list'| Heap@@26 i@@20 hi@@16 ar_1@@16 v_2@@8) (|count_list#frame| EmptyFrame i@@20 hi@@16 ar_1@@16 v_2@@8)))
 :qid |stdinbpl.1501:15|
 :skolemid |128|
 :pattern ( (state Heap@@26 Mask@@26) (|count_list'| Heap@@26 i@@20 hi@@16 ar_1@@16 v_2@@8))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3299| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3299| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.605:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3299| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_26941) (Mask@@27 T@PolymorphicMapType_26962) (i@@21 Int) (lo@@9 Int) (hi@@17 Int) (step@@6 Int) (vmin@@6 Int) (vmax_1@@6 Int) (ar_1@@17 T@Seq_34127) (v_2@@9 Int) ) (!  (=> (and (state Heap@@27 Mask@@27) (< AssumeFunctionsAbove 0)) (=> (and (and (and (and (<= 0 lo@@9) (and (<= lo@@9 hi@@17) (and (<= hi@@17 step@@6) (> step@@6 0)))) (and (<= 0 vmin@@6) (and (<= vmin@@6 i@@21) (<= i@@21 vmax_1@@6)))) (<= vmax_1@@6 (|Seq#Length_18914| ar_1@@17))) (forall ((j@@8 Int) (k@@1 Int) ) (!  (=> (and (<= 0 j@@8) (and (< j@@8 (|Seq#Length_18914| ar_1@@17)) (and (<= 0 k@@1) (and (< k@@1 (|Seq#Length_18914| ar_1@@17)) (not (= j@@8 k@@1)))))) (not (= (|Seq#Index_18914| ar_1@@17 j@@8) (|Seq#Index_18914| ar_1@@17 k@@1))))
 :qid |stdinbpl.1230:195|
 :skolemid |106|
 :pattern ( (|Seq#Index_18914| ar_1@@17 j@@8) (|Seq#Index_18914| ar_1@@17 k@@1))
))) (= (count_square Heap@@27 i@@21 lo@@9 hi@@17 step@@6 vmin@@6 vmax_1@@6 ar_1@@17 v_2@@9) (ite (< i@@21 vmax_1@@6) (+ (ite  (and (<= lo@@9 (mod i@@21 step@@6)) (and (< (mod i@@21 step@@6) hi@@17) (= (select (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| Heap@@27) (|Seq#Index_18914| ar_1@@17 i@@21) Ref__Integer_value) v_2@@9))) 1 0) (|count_square'| Heap@@27 (+ i@@21 1) lo@@9 hi@@17 step@@6 vmin@@6 vmax_1@@6 ar_1@@17 v_2@@9)) 0))))
 :qid |stdinbpl.1228:15|
 :skolemid |107|
 :pattern ( (state Heap@@27 Mask@@27) (count_square Heap@@27 i@@21 lo@@9 hi@@17 step@@6 vmin@@6 vmax_1@@6 ar_1@@17 v_2@@9))
)))
(assert (forall ((a T@Seq_34127) (b T@Seq_34127) ) (!  (=> (|Seq#Equal_34127| a b) (= a b))
 :qid |stdinbpl.578:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_34127| a b))
)))
(assert (forall ((a@@0 T@Seq_3299) (b@@0 T@Seq_3299) ) (!  (=> (|Seq#Equal_3299| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.578:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3299| a@@0 b@@0))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_26941) (i@@22 Int) (hi@@18 Int) (ar_1@@18 T@Seq_3299) ) (!  (and (= (sum_list Heap@@28 i@@22 hi@@18 ar_1@@18) (|sum_list'| Heap@@28 i@@22 hi@@18 ar_1@@18)) (dummyFunction_3743 (|sum_list#triggerStateless| i@@22 hi@@18 ar_1@@18)))
 :qid |stdinbpl.632:15|
 :skolemid |58|
 :pattern ( (sum_list Heap@@28 i@@22 hi@@18 ar_1@@18))
)))
(assert (forall ((s@@17 T@Seq_34127) (i@@23 Int) ) (!  (=> (and (<= 0 i@@23) (< i@@23 (|Seq#Length_18914| s@@17))) (|Seq#ContainsTrigger_18914| s@@17 (|Seq#Index_18914| s@@17 i@@23)))
 :qid |stdinbpl.471:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_18914| s@@17 i@@23))
)))
(assert (forall ((s@@18 T@Seq_3299) (i@@24 Int) ) (!  (=> (and (<= 0 i@@24) (< i@@24 (|Seq#Length_3299| s@@18))) (|Seq#ContainsTrigger_3299| s@@18 (|Seq#Index_3299| s@@18 i@@24)))
 :qid |stdinbpl.471:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3299| s@@18 i@@24))
)))
(assert (forall ((s0@@3 T@Seq_34127) (s1@@3 T@Seq_34127) ) (!  (and (=> (= s0@@3 |Seq#Empty_18914|) (= (|Seq#Append_34127| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_18914|) (= (|Seq#Append_34127| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.289:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_34127| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3299) (s1@@4 T@Seq_3299) ) (!  (and (=> (= s0@@4 |Seq#Empty_3299|) (= (|Seq#Append_3299| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3299|) (= (|Seq#Append_3299| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.289:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3299| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_18914| (|Seq#Singleton_18914| t@@3) 0) t@@3)
 :qid |stdinbpl.293:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_18914| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3299| (|Seq#Singleton_3299| t@@4) 0) t@@4)
 :qid |stdinbpl.293:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3299| t@@4))
)))
(assert (forall ((s@@19 T@Seq_34127) ) (! (<= 0 (|Seq#Length_18914| s@@19))
 :qid |stdinbpl.272:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_18914| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3299) ) (! (<= 0 (|Seq#Length_3299| s@@20))
 :qid |stdinbpl.272:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3299| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_34127) (s1@@5 T@Seq_34127) ) (!  (=> (|Seq#Equal_34127| s0@@5 s1@@5) (and (= (|Seq#Length_18914| s0@@5) (|Seq#Length_18914| s1@@5)) (forall ((j@@9 Int) ) (!  (=> (and (<= 0 j@@9) (< j@@9 (|Seq#Length_18914| s0@@5))) (= (|Seq#Index_18914| s0@@5 j@@9) (|Seq#Index_18914| s1@@5 j@@9)))
 :qid |stdinbpl.568:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_18914| s0@@5 j@@9))
 :pattern ( (|Seq#Index_18914| s1@@5 j@@9))
))))
 :qid |stdinbpl.565:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_34127| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3299) (s1@@6 T@Seq_3299) ) (!  (=> (|Seq#Equal_3299| s0@@6 s1@@6) (and (= (|Seq#Length_3299| s0@@6) (|Seq#Length_3299| s1@@6)) (forall ((j@@10 Int) ) (!  (=> (and (<= 0 j@@10) (< j@@10 (|Seq#Length_3299| s0@@6))) (= (|Seq#Index_3299| s0@@6 j@@10) (|Seq#Index_3299| s1@@6 j@@10)))
 :qid |stdinbpl.568:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3299| s0@@6 j@@10))
 :pattern ( (|Seq#Index_3299| s1@@6 j@@10))
))))
 :qid |stdinbpl.565:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3299| s0@@6 s1@@6))
)))
(assert (forall ((Heap2Heap@@1 T@PolymorphicMapType_26941) (Heap1Heap@@1 T@PolymorphicMapType_26941) (i@@25 Int) (hi@@19 Int) (ar_1@@19 T@Seq_34127) (v_2@@10 Int) ) (!  (=> (and (=  (and (<= 0 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10))) (< (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10)) hi@@19))  (and (<= 0 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10))) (< (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10)) hi@@19))) (=> (and (<= 0 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10))) (< (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10)) hi@@19)) (= (select (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| Heap2Heap@@1) (|Seq#Index_18914| ar_1@@19 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10))) Ref__Integer_value) (select (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| Heap1Heap@@1) (|Seq#Index_18914| ar_1@@19 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10))) Ref__Integer_value)))) (= (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10)))
 :qid |stdinbpl.1599:15|
 :skolemid |134|
 :pattern ( (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@10) (succHeapTrans Heap2Heap@@1 Heap1Heap@@1))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_18914| (|Seq#Singleton_18914| t@@5)) 1)
 :qid |stdinbpl.280:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_18914| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3299| (|Seq#Singleton_3299| t@@6)) 1)
 :qid |stdinbpl.280:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3299| t@@6))
)))
(assert (forall ((Heap2Heap@@2 T@PolymorphicMapType_26941) (Heap1Heap@@2 T@PolymorphicMapType_26941) (i@@26 Int) (lo@@10 Int) (hi@@20 Int) (ar_1@@20 T@Seq_34127) ) (!  (=> (and (=  (and (<= lo@@10 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20))) (< (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20)) hi@@20))  (and (<= lo@@10 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20))) (< (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20)) hi@@20))) (=> (and (<= lo@@10 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20))) (< (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20)) hi@@20)) (= (select (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| Heap2Heap@@2) (|Seq#Index_18914| ar_1@@20 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20))) Ref__Integer_value) (select (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| Heap1Heap@@2) (|Seq#Index_18914| ar_1@@20 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20))) Ref__Integer_value)))) (= (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20)))
 :qid |stdinbpl.747:15|
 :skolemid |67|
 :pattern ( (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar_1@@20) (succHeapTrans Heap2Heap@@2 Heap1Heap@@2))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_26941) (Mask@@28 T@PolymorphicMapType_26962) (i@@27 Int) (hi@@21 Int) (ar_1@@21 T@Seq_3299) ) (!  (=> (and (state Heap@@29 Mask@@28) (< AssumeFunctionsAbove 4)) (=> (and (and (<= 0 i@@27) (<= i@@27 hi@@21)) (<= hi@@21 (|Seq#Length_3299| ar_1@@21))) (= (sum_list Heap@@29 i@@27 hi@@21 ar_1@@21) (ite (< i@@27 hi@@21) (+ (|Seq#Index_3299| ar_1@@21 i@@27) (|sum_list'| Heap@@29 (+ i@@27 1) hi@@21 ar_1@@21)) 0))))
 :qid |stdinbpl.642:15|
 :skolemid |60|
 :pattern ( (state Heap@@29 Mask@@28) (sum_list Heap@@29 i@@27 hi@@21 ar_1@@21))
)))
(assert (forall ((s@@21 T@Seq_34127) (t@@7 T@Seq_34127) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_18914| s@@21))) (= (|Seq#Take_18914| (|Seq#Append_34127| s@@21 t@@7) n@@17) (|Seq#Take_18914| s@@21 n@@17)))
 :qid |stdinbpl.422:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_18914| (|Seq#Append_34127| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3299) (t@@8 T@Seq_3299) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3299| s@@22))) (= (|Seq#Take_3299| (|Seq#Append_3299| s@@22 t@@8) n@@18) (|Seq#Take_3299| s@@22 n@@18)))
 :qid |stdinbpl.422:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3299| (|Seq#Append_3299| s@@22 t@@8) n@@18))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_26941) (Mask@@29 T@PolymorphicMapType_26962) (i@@28 Int) (hi@@22 Int) (ar_1@@22 T@Seq_34127) (v_2@@11 Int) ) (!  (=> (and (state Heap@@30 Mask@@29) (< AssumeFunctionsAbove 2)) (=> (and (and (and (<= 0 i@@28) (<= i@@28 hi@@22)) (<= hi@@22 (|Seq#Length_18914| ar_1@@22))) (forall ((j@@11 Int) (k@@2 Int) ) (!  (=> (and (<= 0 j@@11) (and (< j@@11 (|Seq#Length_18914| ar_1@@22)) (and (<= 0 k@@2) (and (< k@@2 (|Seq#Length_18914| ar_1@@22)) (not (= j@@11 k@@2)))))) (not (= (|Seq#Index_18914| ar_1@@22 j@@11) (|Seq#Index_18914| ar_1@@22 k@@2))))
 :qid |stdinbpl.1581:112|
 :skolemid |131|
 :pattern ( (|Seq#Index_18914| ar_1@@22 j@@11) (|Seq#Index_18914| ar_1@@22 k@@2))
))) (= (count_array Heap@@30 i@@28 hi@@22 ar_1@@22 v_2@@11) (ite (< i@@28 hi@@22) (+ (ite (= (select (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| Heap@@30) (|Seq#Index_18914| ar_1@@22 i@@28) Ref__Integer_value) v_2@@11) 1 0) (|count_array'| Heap@@30 (+ i@@28 1) hi@@22 ar_1@@22 v_2@@11)) 0))))
 :qid |stdinbpl.1579:15|
 :skolemid |132|
 :pattern ( (state Heap@@30 Mask@@29) (count_array Heap@@30 i@@28 hi@@22 ar_1@@22 v_2@@11))
)))
(assert (forall ((s@@23 T@Seq_34127) (i@@29 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@29) (< i@@29 (|Seq#Length_18914| s@@23))) (= (|Seq#Length_18914| (|Seq#Update_18914| s@@23 i@@29 v@@2)) (|Seq#Length_18914| s@@23)))
 :qid |stdinbpl.321:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_18914| (|Seq#Update_18914| s@@23 i@@29 v@@2)))
 :pattern ( (|Seq#Length_18914| s@@23) (|Seq#Update_18914| s@@23 i@@29 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3299) (i@@30 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@30) (< i@@30 (|Seq#Length_3299| s@@24))) (= (|Seq#Length_3299| (|Seq#Update_3299| s@@24 i@@30 v@@3)) (|Seq#Length_3299| s@@24)))
 :qid |stdinbpl.321:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3299| (|Seq#Update_3299| s@@24 i@@30 v@@3)))
 :pattern ( (|Seq#Length_3299| s@@24) (|Seq#Update_3299| s@@24 i@@30 v@@3))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_26941) (o_7 T@Ref) (f_15 T@Field_18875_74674) (v@@4 T@FrameType) ) (! (succHeap Heap@@31 (PolymorphicMapType_26941 (|PolymorphicMapType_26941_18649_53#PolymorphicMapType_26941| Heap@@31) (|PolymorphicMapType_26941_18652_18653#PolymorphicMapType_26941| Heap@@31) (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| Heap@@31) (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| Heap@@31) (store (|PolymorphicMapType_26941_27001_74674#PolymorphicMapType_26941| Heap@@31) o_7 f_15 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_26941 (|PolymorphicMapType_26941_18649_53#PolymorphicMapType_26941| Heap@@31) (|PolymorphicMapType_26941_18652_18653#PolymorphicMapType_26941| Heap@@31) (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| Heap@@31) (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| Heap@@31) (store (|PolymorphicMapType_26941_27001_74674#PolymorphicMapType_26941| Heap@@31) o_7 f_15 v@@4)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_26941) (o_7@@0 T@Ref) (f_15@@0 T@Field_18875_74807) (v@@5 T@PolymorphicMapType_27490) ) (! (succHeap Heap@@32 (PolymorphicMapType_26941 (|PolymorphicMapType_26941_18649_53#PolymorphicMapType_26941| Heap@@32) (|PolymorphicMapType_26941_18652_18653#PolymorphicMapType_26941| Heap@@32) (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| Heap@@32) (store (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| Heap@@32) o_7@@0 f_15@@0 v@@5) (|PolymorphicMapType_26941_27001_74674#PolymorphicMapType_26941| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_26941 (|PolymorphicMapType_26941_18649_53#PolymorphicMapType_26941| Heap@@32) (|PolymorphicMapType_26941_18652_18653#PolymorphicMapType_26941| Heap@@32) (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| Heap@@32) (store (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| Heap@@32) o_7@@0 f_15@@0 v@@5) (|PolymorphicMapType_26941_27001_74674#PolymorphicMapType_26941| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_26941) (o_7@@1 T@Ref) (f_15@@1 T@Field_33055_3421) (v@@6 Int) ) (! (succHeap Heap@@33 (PolymorphicMapType_26941 (|PolymorphicMapType_26941_18649_53#PolymorphicMapType_26941| Heap@@33) (|PolymorphicMapType_26941_18652_18653#PolymorphicMapType_26941| Heap@@33) (store (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| Heap@@33) o_7@@1 f_15@@1 v@@6) (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| Heap@@33) (|PolymorphicMapType_26941_27001_74674#PolymorphicMapType_26941| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_26941 (|PolymorphicMapType_26941_18649_53#PolymorphicMapType_26941| Heap@@33) (|PolymorphicMapType_26941_18652_18653#PolymorphicMapType_26941| Heap@@33) (store (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| Heap@@33) o_7@@1 f_15@@1 v@@6) (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| Heap@@33) (|PolymorphicMapType_26941_27001_74674#PolymorphicMapType_26941| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_26941) (o_7@@2 T@Ref) (f_15@@2 T@Field_27014_27015) (v@@7 T@Ref) ) (! (succHeap Heap@@34 (PolymorphicMapType_26941 (|PolymorphicMapType_26941_18649_53#PolymorphicMapType_26941| Heap@@34) (store (|PolymorphicMapType_26941_18652_18653#PolymorphicMapType_26941| Heap@@34) o_7@@2 f_15@@2 v@@7) (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| Heap@@34) (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| Heap@@34) (|PolymorphicMapType_26941_27001_74674#PolymorphicMapType_26941| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_26941 (|PolymorphicMapType_26941_18649_53#PolymorphicMapType_26941| Heap@@34) (store (|PolymorphicMapType_26941_18652_18653#PolymorphicMapType_26941| Heap@@34) o_7@@2 f_15@@2 v@@7) (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| Heap@@34) (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| Heap@@34) (|PolymorphicMapType_26941_27001_74674#PolymorphicMapType_26941| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_26941) (o_7@@3 T@Ref) (f_15@@3 T@Field_27001_53) (v@@8 Bool) ) (! (succHeap Heap@@35 (PolymorphicMapType_26941 (store (|PolymorphicMapType_26941_18649_53#PolymorphicMapType_26941| Heap@@35) o_7@@3 f_15@@3 v@@8) (|PolymorphicMapType_26941_18652_18653#PolymorphicMapType_26941| Heap@@35) (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| Heap@@35) (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| Heap@@35) (|PolymorphicMapType_26941_27001_74674#PolymorphicMapType_26941| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_26941 (store (|PolymorphicMapType_26941_18649_53#PolymorphicMapType_26941| Heap@@35) o_7@@3 f_15@@3 v@@8) (|PolymorphicMapType_26941_18652_18653#PolymorphicMapType_26941| Heap@@35) (|PolymorphicMapType_26941_18875_3436#PolymorphicMapType_26941| Heap@@35) (|PolymorphicMapType_26941_18875_74851#PolymorphicMapType_26941| Heap@@35) (|PolymorphicMapType_26941_27001_74674#PolymorphicMapType_26941| Heap@@35)))
)))
(assert (forall ((s@@25 T@Seq_34127) (t@@9 T@Seq_34127) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_18914| s@@25))) (= (|Seq#Drop_18914| (|Seq#Append_34127| s@@25 t@@9) n@@19) (|Seq#Append_34127| (|Seq#Drop_18914| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.436:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_18914| (|Seq#Append_34127| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3299) (t@@10 T@Seq_3299) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3299| s@@26))) (= (|Seq#Drop_3299| (|Seq#Append_3299| s@@26 t@@10) n@@20) (|Seq#Append_3299| (|Seq#Drop_3299| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.436:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3299| (|Seq#Append_3299| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_34127) (n@@21 Int) (i@@31 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@31)) (< i@@31 (|Seq#Length_18914| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@31 n@@21) n@@21) i@@31) (= (|Seq#Index_18914| (|Seq#Drop_18914| s@@27 n@@21) (|Seq#Sub| i@@31 n@@21)) (|Seq#Index_18914| s@@27 i@@31))))
 :qid |stdinbpl.372:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_18914| s@@27 n@@21) (|Seq#Index_18914| s@@27 i@@31))
)))
(assert (forall ((s@@28 T@Seq_3299) (n@@22 Int) (i@@32 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@32)) (< i@@32 (|Seq#Length_3299| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@32 n@@22) n@@22) i@@32) (= (|Seq#Index_3299| (|Seq#Drop_3299| s@@28 n@@22) (|Seq#Sub| i@@32 n@@22)) (|Seq#Index_3299| s@@28 i@@32))))
 :qid |stdinbpl.372:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3299| s@@28 n@@22) (|Seq#Index_3299| s@@28 i@@32))
)))
(assert (forall ((s0@@7 T@Seq_34127) (s1@@7 T@Seq_34127) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_18914|)) (not (= s1@@7 |Seq#Empty_18914|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_18914| s0@@7))) (= (|Seq#Index_18914| (|Seq#Append_34127| s0@@7 s1@@7) n@@23) (|Seq#Index_18914| s0@@7 n@@23)))
 :qid |stdinbpl.312:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_18914| (|Seq#Append_34127| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_18914| s0@@7 n@@23) (|Seq#Append_34127| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3299) (s1@@8 T@Seq_3299) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3299|)) (not (= s1@@8 |Seq#Empty_3299|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3299| s0@@8))) (= (|Seq#Index_3299| (|Seq#Append_3299| s0@@8 s1@@8) n@@24) (|Seq#Index_3299| s0@@8 n@@24)))
 :qid |stdinbpl.312:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3299| (|Seq#Append_3299| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3299| s0@@8 n@@24) (|Seq#Append_3299| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_34127) (s1@@9 T@Seq_34127) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_18914|)) (not (= s1@@9 |Seq#Empty_18914|))) (<= 0 m)) (< m (|Seq#Length_18914| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_18914| s0@@9)) (|Seq#Length_18914| s0@@9)) m) (= (|Seq#Index_18914| (|Seq#Append_34127| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_18914| s0@@9))) (|Seq#Index_18914| s1@@9 m))))
 :qid |stdinbpl.317:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_18914| s1@@9 m) (|Seq#Append_34127| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3299) (s1@@10 T@Seq_3299) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3299|)) (not (= s1@@10 |Seq#Empty_3299|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3299| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3299| s0@@10)) (|Seq#Length_3299| s0@@10)) m@@0) (= (|Seq#Index_3299| (|Seq#Append_3299| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3299| s0@@10))) (|Seq#Index_3299| s1@@10 m@@0))))
 :qid |stdinbpl.317:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3299| s1@@10 m@@0) (|Seq#Append_3299| s0@@10 s1@@10))
)))
(assert (forall ((o_7@@4 T@Ref) (f_13 T@Field_27014_27015) (Heap@@36 T@PolymorphicMapType_26941) ) (!  (=> (select (|PolymorphicMapType_26941_18649_53#PolymorphicMapType_26941| Heap@@36) o_7@@4 $allocated) (select (|PolymorphicMapType_26941_18649_53#PolymorphicMapType_26941| Heap@@36) (select (|PolymorphicMapType_26941_18652_18653#PolymorphicMapType_26941| Heap@@36) o_7@@4 f_13) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_26941_18652_18653#PolymorphicMapType_26941| Heap@@36) o_7@@4 f_13))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_26941) (Mask@@30 T@PolymorphicMapType_26962) (i@@33 Int) (lo@@11 Int) (hi@@23 Int) (step@@7 Int) (vmin@@7 Int) (vmax_1@@7 Int) (ar_1@@23 T@Seq_34127) ) (!  (=> (state Heap@@37 Mask@@30) (= (|sum_square'| Heap@@37 i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax_1@@7 ar_1@@23) (|sum_square#frame| (FrameFragment_4295 (|sum_square#condqp2| Heap@@37 i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax_1@@7 ar_1@@23)) i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax_1@@7 ar_1@@23)))
 :qid |stdinbpl.972:15|
 :skolemid |87|
 :pattern ( (state Heap@@37 Mask@@30) (|sum_square'| Heap@@37 i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax_1@@7 ar_1@@23))
)))
(assert (forall ((s@@29 T@Seq_34127) (x@@3 T@Ref) (i@@34 Int) ) (!  (=> (and (and (<= 0 i@@34) (< i@@34 (|Seq#Length_18914| s@@29))) (= (|Seq#Index_18914| s@@29 i@@34) x@@3)) (|Seq#Contains_34127| s@@29 x@@3))
 :qid |stdinbpl.469:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_34127| s@@29 x@@3) (|Seq#Index_18914| s@@29 i@@34))
)))
(assert (forall ((s@@30 T@Seq_3299) (x@@4 Int) (i@@35 Int) ) (!  (=> (and (and (<= 0 i@@35) (< i@@35 (|Seq#Length_3299| s@@30))) (= (|Seq#Index_3299| s@@30 i@@35) x@@4)) (|Seq#Contains_3299| s@@30 x@@4))
 :qid |stdinbpl.469:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3299| s@@30 x@@4) (|Seq#Index_3299| s@@30 i@@35))
)))
(assert (forall ((s0@@11 T@Seq_34127) (s1@@11 T@Seq_34127) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_34127| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_34127| s0@@11 s1@@11))) (not (= (|Seq#Length_18914| s0@@11) (|Seq#Length_18914| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_34127| s0@@11 s1@@11))) (= (|Seq#Length_18914| s0@@11) (|Seq#Length_18914| s1@@11))) (= (|Seq#SkolemDiff_34127| s0@@11 s1@@11) (|Seq#SkolemDiff_34127| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_34127| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_34127| s0@@11 s1@@11) (|Seq#Length_18914| s0@@11))) (not (= (|Seq#Index_18914| s0@@11 (|Seq#SkolemDiff_34127| s0@@11 s1@@11)) (|Seq#Index_18914| s1@@11 (|Seq#SkolemDiff_34127| s0@@11 s1@@11))))))
 :qid |stdinbpl.573:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_34127| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3299) (s1@@12 T@Seq_3299) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3299| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3299| s0@@12 s1@@12))) (not (= (|Seq#Length_3299| s0@@12) (|Seq#Length_3299| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3299| s0@@12 s1@@12))) (= (|Seq#Length_3299| s0@@12) (|Seq#Length_3299| s1@@12))) (= (|Seq#SkolemDiff_3299| s0@@12 s1@@12) (|Seq#SkolemDiff_3299| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3299| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3299| s0@@12 s1@@12) (|Seq#Length_3299| s0@@12))) (not (= (|Seq#Index_3299| s0@@12 (|Seq#SkolemDiff_3299| s0@@12 s1@@12)) (|Seq#Index_3299| s1@@12 (|Seq#SkolemDiff_3299| s0@@12 s1@@12))))))
 :qid |stdinbpl.573:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3299| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_18875_74674) (v_1@@0 T@FrameType) (q T@Field_18875_74674) (w@@0 T@FrameType) (r T@Field_18875_74674) (u T@FrameType) ) (!  (=> (and (InsidePredicate_27001_27001 p@@1 v_1@@0 q w@@0) (InsidePredicate_27001_27001 q w@@0 r u)) (InsidePredicate_27001_27001 p@@1 v_1@@0 r u))
 :qid |stdinbpl.240:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27001_27001 p@@1 v_1@@0 q w@@0) (InsidePredicate_27001_27001 q w@@0 r u))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_26941) (i@@36 Int) (lo@@12 Int) (hi@@24 Int) (step@@8 Int) (vmin@@8 Int) (vmax_1@@8 Int) (ar_1@@24 T@Seq_34127) ) (! (dummyFunction_3743 (|sum_square#triggerStateless| i@@36 lo@@12 hi@@24 step@@8 vmin@@8 vmax_1@@8 ar_1@@24))
 :qid |stdinbpl.956:15|
 :skolemid |84|
 :pattern ( (|sum_square'| Heap@@38 i@@36 lo@@12 hi@@24 step@@8 vmin@@8 vmax_1@@8 ar_1@@24))
)))
(assert (forall ((s@@31 T@Seq_34127) ) (!  (=> (= (|Seq#Length_18914| s@@31) 0) (= s@@31 |Seq#Empty_18914|))
 :qid |stdinbpl.276:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_18914| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3299) ) (!  (=> (= (|Seq#Length_3299| s@@32) 0) (= s@@32 |Seq#Empty_3299|))
 :qid |stdinbpl.276:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3299| s@@32))
)))
(assert (forall ((s@@33 T@Seq_34127) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_18914| s@@33 n@@25) |Seq#Empty_18914|))
 :qid |stdinbpl.452:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_18914| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3299) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3299| s@@34 n@@26) |Seq#Empty_3299|))
 :qid |stdinbpl.452:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3299| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@39 T@PolymorphicMapType_26941) (Mask@@31 T@PolymorphicMapType_26962) (i@@37 Int) (lo@@13 Int) (hi@@25 Int) (ar_1@@25 T@Seq_34127) ) (!  (=> (state Heap@@39 Mask@@31) (= (|sum_array'| Heap@@39 i@@37 lo@@13 hi@@25 ar_1@@25) (|sum_array#frame| (FrameFragment_4295 (|sum_array#condqp1| Heap@@39 i@@37 lo@@13 hi@@25 ar_1@@25)) i@@37 lo@@13 hi@@25 ar_1@@25)))
 :qid |stdinbpl.737:15|
 :skolemid |66|
 :pattern ( (state Heap@@39 Mask@@31) (|sum_array'| Heap@@39 i@@37 lo@@13 hi@@25 ar_1@@25))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_26941) (Mask@@32 T@PolymorphicMapType_26962) (i@@38 Int) (hi@@26 Int) (ar_1@@26 T@Seq_34127) (v_2@@12 Int) ) (!  (=> (state Heap@@40 Mask@@32) (= (|count_array'| Heap@@40 i@@38 hi@@26 ar_1@@26 v_2@@12) (|count_array#frame| (FrameFragment_4295 (|count_array#condqp4| Heap@@40 i@@38 hi@@26 ar_1@@26 v_2@@12)) i@@38 hi@@26 ar_1@@26 v_2@@12)))
 :qid |stdinbpl.1589:15|
 :skolemid |133|
 :pattern ( (state Heap@@40 Mask@@32) (|count_array'| Heap@@40 i@@38 hi@@26 ar_1@@26 v_2@@12))
)))
; Valid

