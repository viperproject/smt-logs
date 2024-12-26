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
(declare-sort T@Field_38353_53 0)
(declare-sort T@Field_38366_38367 0)
(declare-sort T@Field_44439_3805 0)
(declare-sort T@Field_26999_108968 0)
(declare-sort T@Field_26999_108835 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_38314 0)) (((PolymorphicMapType_38314 (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| (Array T@Ref T@Field_44439_3805 Real)) (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| (Array T@Ref T@Field_38353_53 Real)) (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| (Array T@Ref T@Field_38366_38367 Real)) (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| (Array T@Ref T@Field_26999_108835 Real)) (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| (Array T@Ref T@Field_26999_108968 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_38842 0)) (((PolymorphicMapType_38842 (|PolymorphicMapType_38842_38353_53#PolymorphicMapType_38842| (Array T@Ref T@Field_38353_53 Bool)) (|PolymorphicMapType_38842_38353_38367#PolymorphicMapType_38842| (Array T@Ref T@Field_38366_38367 Bool)) (|PolymorphicMapType_38842_38353_3805#PolymorphicMapType_38842| (Array T@Ref T@Field_44439_3805 Bool)) (|PolymorphicMapType_38842_38353_108835#PolymorphicMapType_38842| (Array T@Ref T@Field_26999_108835 Bool)) (|PolymorphicMapType_38842_38353_110146#PolymorphicMapType_38842| (Array T@Ref T@Field_26999_108968 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_38293 0)) (((PolymorphicMapType_38293 (|PolymorphicMapType_38293_26743_53#PolymorphicMapType_38293| (Array T@Ref T@Field_38353_53 Bool)) (|PolymorphicMapType_38293_26746_26747#PolymorphicMapType_38293| (Array T@Ref T@Field_38366_38367 T@Ref)) (|PolymorphicMapType_38293_26999_3805#PolymorphicMapType_38293| (Array T@Ref T@Field_44439_3805 Int)) (|PolymorphicMapType_38293_26999_109012#PolymorphicMapType_38293| (Array T@Ref T@Field_26999_108968 T@PolymorphicMapType_38842)) (|PolymorphicMapType_38293_38353_108835#PolymorphicMapType_38293| (Array T@Ref T@Field_26999_108835 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_38353_53)
(declare-fun Ref__Integer_value () T@Field_44439_3805)
(declare-sort T@Seq_45481 0)
(declare-fun |Seq#Length_27038| (T@Seq_45481) Int)
(declare-fun |Seq#Drop_27038| (T@Seq_45481 Int) T@Seq_45481)
(declare-sort T@Seq_3683 0)
(declare-fun |Seq#Length_3683| (T@Seq_3683) Int)
(declare-fun |Seq#Drop_3683| (T@Seq_3683 Int) T@Seq_3683)
(declare-fun state (T@PolymorphicMapType_38293 T@PolymorphicMapType_38314) Bool)
(declare-fun |count_square'| (T@PolymorphicMapType_38293 Int Int Int Int Int Int T@Seq_45481 Int) Int)
(declare-fun |count_square#frame| (T@FrameType Int Int Int Int Int Int T@Seq_45481 Int) Int)
(declare-fun FrameFragment_4664 (Int) T@FrameType)
(declare-fun |count_square#condqp3| (T@PolymorphicMapType_38293 Int Int Int Int Int Int T@Seq_45481 Int) Int)
(declare-fun succHeap (T@PolymorphicMapType_38293 T@PolymorphicMapType_38293) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_38293 T@PolymorphicMapType_38293) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_38314) Bool)
(declare-fun |sum_list'| (T@PolymorphicMapType_38293 Int Int T@Seq_3683) Int)
(declare-fun dummyFunction_4112 (Int) Bool)
(declare-fun |sum_list#triggerStateless| (Int Int T@Seq_3683) Int)
(declare-fun ZeroPMask () T@PolymorphicMapType_38842)
(declare-fun |Seq#Index_27038| (T@Seq_45481 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3683| (T@Seq_3683 Int) Int)
(declare-fun |Seq#Empty_27038| () T@Seq_45481)
(declare-fun |Seq#Empty_3683| () T@Seq_3683)
(declare-fun |Seq#Update_27038| (T@Seq_45481 Int T@Ref) T@Seq_45481)
(declare-fun |Seq#Update_3683| (T@Seq_3683 Int Int) T@Seq_3683)
(declare-fun |Seq#Take_27038| (T@Seq_45481 Int) T@Seq_45481)
(declare-fun |Seq#Take_3683| (T@Seq_3683 Int) T@Seq_3683)
(declare-fun sum_array (T@PolymorphicMapType_38293 Int Int Int T@Seq_45481) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |sum_array'| (T@PolymorphicMapType_38293 Int Int Int T@Seq_45481) Int)
(declare-fun |Seq#Contains_3683| (T@Seq_3683 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3683)
(declare-fun |Seq#Contains_45481| (T@Seq_45481 T@Ref) Bool)
(declare-fun |Seq#Skolem_45481| (T@Seq_45481 T@Ref) Int)
(declare-fun |Seq#Skolem_3683| (T@Seq_3683 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_38293 T@PolymorphicMapType_38293 T@PolymorphicMapType_38314) Bool)
(declare-fun IsPredicateField_26999_108926 (T@Field_26999_108835) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_26999 (T@Field_26999_108835) T@Field_26999_108968)
(declare-fun HasDirectPerm_26999_108899 (T@PolymorphicMapType_38314 T@Ref T@Field_26999_108835) Bool)
(declare-fun IsWandField_26999_110673 (T@Field_26999_108835) Bool)
(declare-fun WandMaskField_26999 (T@Field_26999_108835) T@Field_26999_108968)
(declare-fun |Seq#Singleton_27038| (T@Ref) T@Seq_45481)
(declare-fun |Seq#Singleton_3683| (Int) T@Seq_3683)
(declare-fun count_square (T@PolymorphicMapType_38293 Int Int Int Int Int Int T@Seq_45481 Int) Int)
(declare-fun |count_square#triggerStateless| (Int Int Int Int Int Int T@Seq_45481 Int) Int)
(declare-fun |Seq#Append_45481| (T@Seq_45481 T@Seq_45481) T@Seq_45481)
(declare-fun |Seq#Append_3683| (T@Seq_3683 T@Seq_3683) T@Seq_3683)
(declare-fun |sum_square#condqp2| (T@PolymorphicMapType_38293 Int Int Int Int Int Int T@Seq_45481) Int)
(declare-fun |sk_sum_square#condqp2| (Int Int) Int)
(declare-fun sum_square (T@PolymorphicMapType_38293 Int Int Int Int Int Int T@Seq_45481) Int)
(declare-fun |sum_square'| (T@PolymorphicMapType_38293 Int Int Int Int Int Int T@Seq_45481) Int)
(declare-fun |sk_count_square#condqp3| (Int Int) Int)
(declare-fun dummyHeap () T@PolymorphicMapType_38293)
(declare-fun ZeroMask () T@PolymorphicMapType_38314)
(declare-fun InsidePredicate_38353_38353 (T@Field_26999_108835 T@FrameType T@Field_26999_108835 T@FrameType) Bool)
(declare-fun IsPredicateField_26999_3805 (T@Field_44439_3805) Bool)
(declare-fun IsWandField_26999_3805 (T@Field_44439_3805) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_26999_114219 (T@Field_26999_108968) Bool)
(declare-fun IsWandField_26999_114235 (T@Field_26999_108968) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_26999_38367 (T@Field_38366_38367) Bool)
(declare-fun IsWandField_26999_38367 (T@Field_38366_38367) Bool)
(declare-fun IsPredicateField_26999_53 (T@Field_38353_53) Bool)
(declare-fun IsWandField_26999_53 (T@Field_38353_53) Bool)
(declare-fun |sum_list#frame| (T@FrameType Int Int T@Seq_3683) Int)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun HasDirectPerm_26999_114673 (T@PolymorphicMapType_38314 T@Ref T@Field_26999_108968) Bool)
(declare-fun HasDirectPerm_26999_38367 (T@PolymorphicMapType_38314 T@Ref T@Field_38366_38367) Bool)
(declare-fun HasDirectPerm_26999_53 (T@PolymorphicMapType_38314 T@Ref T@Field_38353_53) Bool)
(declare-fun HasDirectPerm_26999_3805 (T@PolymorphicMapType_38314 T@Ref T@Field_44439_3805) Bool)
(declare-fun |sum_array#triggerStateless| (Int Int Int T@Seq_45481) Int)
(declare-fun |count_list'| (T@PolymorphicMapType_38293 Int Int T@Seq_3683 Int) Int)
(declare-fun |count_list#triggerStateless| (Int Int T@Seq_3683 Int) Int)
(declare-fun |count_array'| (T@PolymorphicMapType_38293 Int Int T@Seq_45481 Int) Int)
(declare-fun |count_array#triggerStateless| (Int Int T@Seq_45481 Int) Int)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun count_list (T@PolymorphicMapType_38293 Int Int T@Seq_3683 Int) Int)
(declare-fun count_array (T@PolymorphicMapType_38293 Int Int T@Seq_45481 Int) Int)
(declare-fun sumMask (T@PolymorphicMapType_38314 T@PolymorphicMapType_38314 T@PolymorphicMapType_38314) Bool)
(declare-fun |sum_square#triggerStateless| (Int Int Int Int Int Int T@Seq_45481) Int)
(declare-fun |count_list#frame| (T@FrameType Int Int T@Seq_3683 Int) Int)
(declare-fun |Seq#Equal_45481| (T@Seq_45481 T@Seq_45481) Bool)
(declare-fun |Seq#Equal_3683| (T@Seq_3683 T@Seq_3683) Bool)
(declare-fun sum_list (T@PolymorphicMapType_38293 Int Int T@Seq_3683) Int)
(declare-fun |Seq#ContainsTrigger_27038| (T@Seq_45481 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3683| (T@Seq_3683 Int) Bool)
(declare-fun |count_array#condqp4| (T@PolymorphicMapType_38293 Int Int T@Seq_45481 Int) Int)
(declare-fun |sk_count_array#condqp4| (Int Int) Int)
(declare-fun |sum_array#condqp1| (T@PolymorphicMapType_38293 Int Int Int T@Seq_45481) Int)
(declare-fun |sk_sum_array#condqp1| (Int Int) Int)
(declare-fun |sum_square#frame| (T@FrameType Int Int Int Int Int Int T@Seq_45481) Int)
(declare-fun |Seq#SkolemDiff_45481| (T@Seq_45481 T@Seq_45481) Int)
(declare-fun |Seq#SkolemDiff_3683| (T@Seq_3683 T@Seq_3683) Int)
(declare-fun |sum_array#frame| (T@FrameType Int Int Int T@Seq_45481) Int)
(declare-fun |count_array#frame| (T@FrameType Int Int T@Seq_45481 Int) Int)
(assert (forall ((s T@Seq_45481) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_27038| s)) (= (|Seq#Length_27038| (|Seq#Drop_27038| s n)) (- (|Seq#Length_27038| s) n))) (=> (< (|Seq#Length_27038| s) n) (= (|Seq#Length_27038| (|Seq#Drop_27038| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_27038| (|Seq#Drop_27038| s n)) (|Seq#Length_27038| s))))
 :qid |stdinbpl.395:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_27038| (|Seq#Drop_27038| s n)))
 :pattern ( (|Seq#Length_27038| s) (|Seq#Drop_27038| s n))
)))
(assert (forall ((s@@0 T@Seq_3683) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3683| s@@0)) (= (|Seq#Length_3683| (|Seq#Drop_3683| s@@0 n@@0)) (- (|Seq#Length_3683| s@@0) n@@0))) (=> (< (|Seq#Length_3683| s@@0) n@@0) (= (|Seq#Length_3683| (|Seq#Drop_3683| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3683| (|Seq#Drop_3683| s@@0 n@@0)) (|Seq#Length_3683| s@@0))))
 :qid |stdinbpl.395:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3683| (|Seq#Drop_3683| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3683| s@@0) (|Seq#Drop_3683| s@@0 n@@0))
)))
(assert (forall ((Heap T@PolymorphicMapType_38293) (Mask T@PolymorphicMapType_38314) (i Int) (lo Int) (hi Int) (step Int) (vmin Int) (vmax Int) (ar T@Seq_45481) (v_2 Int) ) (!  (=> (state Heap Mask) (= (|count_square'| Heap i lo hi step vmin vmax ar v_2) (|count_square#frame| (FrameFragment_4664 (|count_square#condqp3| Heap i lo hi step vmin vmax ar v_2)) i lo hi step vmin vmax ar v_2)))
 :qid |stdinbpl.1283:15|
 :skolemid |108|
 :pattern ( (state Heap Mask) (|count_square'| Heap i lo hi step vmin vmax ar v_2))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_38293) (Heap1 T@PolymorphicMapType_38293) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_38293) (Mask@@0 T@PolymorphicMapType_38314) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_38293) (Heap1@@0 T@PolymorphicMapType_38293) (Heap2 T@PolymorphicMapType_38293) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_38293) (i@@0 Int) (hi@@0 Int) (ar@@0 T@Seq_3683) ) (! (dummyFunction_4112 (|sum_list#triggerStateless| i@@0 hi@@0 ar@@0))
 :qid |stdinbpl.681:15|
 :skolemid |59|
 :pattern ( (|sum_list'| Heap@@1 i@@0 hi@@0 ar@@0))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_26999_108968) ) (!  (not (select (|PolymorphicMapType_38842_38353_110146#PolymorphicMapType_38842| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_38842_38353_110146#PolymorphicMapType_38842| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_26999_108835) ) (!  (not (select (|PolymorphicMapType_38842_38353_108835#PolymorphicMapType_38842| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_38842_38353_108835#PolymorphicMapType_38842| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_44439_3805) ) (!  (not (select (|PolymorphicMapType_38842_38353_3805#PolymorphicMapType_38842| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_38842_38353_3805#PolymorphicMapType_38842| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_38366_38367) ) (!  (not (select (|PolymorphicMapType_38842_38353_38367#PolymorphicMapType_38842| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_38842_38353_38367#PolymorphicMapType_38842| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_38353_53) ) (!  (not (select (|PolymorphicMapType_38842_38353_53#PolymorphicMapType_38842| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_38842_38353_53#PolymorphicMapType_38842| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((s@@1 T@Seq_45481) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_27038| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_27038| (|Seq#Drop_27038| s@@1 n@@1) j) (|Seq#Index_27038| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.416:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_27038| (|Seq#Drop_27038| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3683) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3683| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3683| (|Seq#Drop_3683| s@@2 n@@2) j@@0) (|Seq#Index_3683| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.416:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3683| (|Seq#Drop_3683| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_27038| |Seq#Empty_27038|) 0))
(assert (= (|Seq#Length_3683| |Seq#Empty_3683|) 0))
(assert (forall ((s@@3 T@Seq_45481) (i@@1 Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_27038| s@@3))) (and (=> (= i@@1 n@@3) (= (|Seq#Index_27038| (|Seq#Update_27038| s@@3 i@@1 v) n@@3) v)) (=> (not (= i@@1 n@@3)) (= (|Seq#Index_27038| (|Seq#Update_27038| s@@3 i@@1 v) n@@3) (|Seq#Index_27038| s@@3 n@@3)))))
 :qid |stdinbpl.371:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_27038| (|Seq#Update_27038| s@@3 i@@1 v) n@@3))
 :pattern ( (|Seq#Index_27038| s@@3 n@@3) (|Seq#Update_27038| s@@3 i@@1 v))
)))
(assert (forall ((s@@4 T@Seq_3683) (i@@2 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3683| s@@4))) (and (=> (= i@@2 n@@4) (= (|Seq#Index_3683| (|Seq#Update_3683| s@@4 i@@2 v@@0) n@@4) v@@0)) (=> (not (= i@@2 n@@4)) (= (|Seq#Index_3683| (|Seq#Update_3683| s@@4 i@@2 v@@0) n@@4) (|Seq#Index_3683| s@@4 n@@4)))))
 :qid |stdinbpl.371:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3683| (|Seq#Update_3683| s@@4 i@@2 v@@0) n@@4))
 :pattern ( (|Seq#Index_3683| s@@4 n@@4) (|Seq#Update_3683| s@@4 i@@2 v@@0))
)))
(assert (forall ((s@@5 T@Seq_45481) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_27038| s@@5)) (= (|Seq#Length_27038| (|Seq#Take_27038| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_27038| s@@5) n@@5) (= (|Seq#Length_27038| (|Seq#Take_27038| s@@5 n@@5)) (|Seq#Length_27038| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_27038| (|Seq#Take_27038| s@@5 n@@5)) 0)))
 :qid |stdinbpl.382:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_27038| (|Seq#Take_27038| s@@5 n@@5)))
 :pattern ( (|Seq#Take_27038| s@@5 n@@5) (|Seq#Length_27038| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3683) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3683| s@@6)) (= (|Seq#Length_3683| (|Seq#Take_3683| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3683| s@@6) n@@6) (= (|Seq#Length_3683| (|Seq#Take_3683| s@@6 n@@6)) (|Seq#Length_3683| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3683| (|Seq#Take_3683| s@@6 n@@6)) 0)))
 :qid |stdinbpl.382:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3683| (|Seq#Take_3683| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3683| s@@6 n@@6) (|Seq#Length_3683| s@@6))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_38293) (Mask@@1 T@PolymorphicMapType_38314) (i@@3 Int) (lo@@0 Int) (hi@@1 Int) (ar@@1 T@Seq_45481) ) (!  (=> (and (state Heap@@2 Mask@@1) (< AssumeFunctionsAbove 3)) (=> (and (and (and (<= 0 lo@@0) (and (<= lo@@0 i@@3) (<= i@@3 hi@@1))) (<= hi@@1 (|Seq#Length_27038| ar@@1))) (forall ((j_9 Int) (k Int) ) (!  (=> (and (<= 0 j_9) (and (< j_9 (|Seq#Length_27038| ar@@1)) (and (<= 0 k) (and (< k (|Seq#Length_27038| ar@@1)) (not (= j_9 k)))))) (not (= (|Seq#Index_27038| ar@@1 j_9) (|Seq#Index_27038| ar@@1 k))))
 :qid |stdinbpl.774:124|
 :skolemid |64|
 :pattern ( (|Seq#Index_27038| ar@@1 j_9) (|Seq#Index_27038| ar@@1 k))
))) (= (sum_array Heap@@2 i@@3 lo@@0 hi@@1 ar@@1) (ite (< i@@3 hi@@1) (+ (select (|PolymorphicMapType_38293_26999_3805#PolymorphicMapType_38293| Heap@@2) (|Seq#Index_27038| ar@@1 i@@3) Ref__Integer_value) (|sum_array'| Heap@@2 (+ i@@3 1) lo@@0 hi@@1 ar@@1)) 0))))
 :qid |stdinbpl.772:15|
 :skolemid |65|
 :pattern ( (state Heap@@2 Mask@@1) (sum_array Heap@@2 i@@3 lo@@0 hi@@1 ar@@1))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3683| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.656:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3683| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_45481) (x T@Ref) ) (!  (=> (|Seq#Contains_45481| s@@7 x) (and (and (<= 0 (|Seq#Skolem_45481| s@@7 x)) (< (|Seq#Skolem_45481| s@@7 x) (|Seq#Length_27038| s@@7))) (= (|Seq#Index_27038| s@@7 (|Seq#Skolem_45481| s@@7 x)) x)))
 :qid |stdinbpl.514:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_45481| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3683) (x@@0 Int) ) (!  (=> (|Seq#Contains_3683| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3683| s@@8 x@@0)) (< (|Seq#Skolem_3683| s@@8 x@@0) (|Seq#Length_3683| s@@8))) (= (|Seq#Index_3683| s@@8 (|Seq#Skolem_3683| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.514:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3683| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_45481) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_27038| s@@9 n@@7) s@@9))
 :qid |stdinbpl.498:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_27038| s@@9 n@@7))
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
(assert (forall ((Heap@@3 T@PolymorphicMapType_38293) (ExhaleHeap T@PolymorphicMapType_38293) (Mask@@2 T@PolymorphicMapType_38314) (pm_f_14 T@Field_26999_108835) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@2) (=> (and (HasDirectPerm_26999_108899 Mask@@2 null pm_f_14) (IsPredicateField_26999_108926 pm_f_14)) (= (select (|PolymorphicMapType_38293_26999_109012#PolymorphicMapType_38293| Heap@@3) null (PredicateMaskField_26999 pm_f_14)) (select (|PolymorphicMapType_38293_26999_109012#PolymorphicMapType_38293| ExhaleHeap) null (PredicateMaskField_26999 pm_f_14)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@2) (IsPredicateField_26999_108926 pm_f_14) (select (|PolymorphicMapType_38293_26999_109012#PolymorphicMapType_38293| ExhaleHeap) null (PredicateMaskField_26999 pm_f_14)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_38293) (ExhaleHeap@@0 T@PolymorphicMapType_38293) (Mask@@3 T@PolymorphicMapType_38314) (pm_f_14@@0 T@Field_26999_108835) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@3) (=> (and (HasDirectPerm_26999_108899 Mask@@3 null pm_f_14@@0) (IsWandField_26999_110673 pm_f_14@@0)) (= (select (|PolymorphicMapType_38293_26999_109012#PolymorphicMapType_38293| Heap@@4) null (WandMaskField_26999 pm_f_14@@0)) (select (|PolymorphicMapType_38293_26999_109012#PolymorphicMapType_38293| ExhaleHeap@@0) null (WandMaskField_26999 pm_f_14@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@3) (IsWandField_26999_110673 pm_f_14@@0) (select (|PolymorphicMapType_38293_26999_109012#PolymorphicMapType_38293| ExhaleHeap@@0) null (WandMaskField_26999 pm_f_14@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_45481| (|Seq#Singleton_27038| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.639:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_45481| (|Seq#Singleton_27038| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3683| (|Seq#Singleton_3683| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.639:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3683| (|Seq#Singleton_3683| x@@2) y@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_38293) (i@@6 Int) (lo@@1 Int) (hi@@2 Int) (step@@0 Int) (vmin@@0 Int) (vmax@@0 Int) (ar@@2 T@Seq_45481) (v_2@@0 Int) ) (!  (and (= (count_square Heap@@5 i@@6 lo@@1 hi@@2 step@@0 vmin@@0 vmax@@0 ar@@2 v_2@@0) (|count_square'| Heap@@5 i@@6 lo@@1 hi@@2 step@@0 vmin@@0 vmax@@0 ar@@2 v_2@@0)) (dummyFunction_4112 (|count_square#triggerStateless| i@@6 lo@@1 hi@@2 step@@0 vmin@@0 vmax@@0 ar@@2 v_2@@0)))
 :qid |stdinbpl.1263:15|
 :skolemid |104|
 :pattern ( (count_square Heap@@5 i@@6 lo@@1 hi@@2 step@@0 vmin@@0 vmax@@0 ar@@2 v_2@@0))
)))
(assert (forall ((s@@11 T@Seq_45481) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_27038| s@@11))) (= (|Seq#Index_27038| (|Seq#Take_27038| s@@11 n@@9) j@@3) (|Seq#Index_27038| s@@11 j@@3)))
 :qid |stdinbpl.390:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_27038| (|Seq#Take_27038| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_27038| s@@11 j@@3) (|Seq#Take_27038| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3683) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3683| s@@12))) (= (|Seq#Index_3683| (|Seq#Take_3683| s@@12 n@@10) j@@4) (|Seq#Index_3683| s@@12 j@@4)))
 :qid |stdinbpl.390:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3683| (|Seq#Take_3683| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3683| s@@12 j@@4) (|Seq#Take_3683| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_45481) (t T@Seq_45481) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_27038| s@@13))) (< n@@11 (|Seq#Length_27038| (|Seq#Append_45481| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_27038| s@@13)) (|Seq#Length_27038| s@@13)) n@@11) (= (|Seq#Take_27038| (|Seq#Append_45481| s@@13 t) n@@11) (|Seq#Append_45481| s@@13 (|Seq#Take_27038| t (|Seq#Sub| n@@11 (|Seq#Length_27038| s@@13)))))))
 :qid |stdinbpl.475:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_27038| (|Seq#Append_45481| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3683) (t@@0 T@Seq_3683) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3683| s@@14))) (< n@@12 (|Seq#Length_3683| (|Seq#Append_3683| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3683| s@@14)) (|Seq#Length_3683| s@@14)) n@@12) (= (|Seq#Take_3683| (|Seq#Append_3683| s@@14 t@@0) n@@12) (|Seq#Append_3683| s@@14 (|Seq#Take_3683| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3683| s@@14)))))))
 :qid |stdinbpl.475:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3683| (|Seq#Append_3683| s@@14 t@@0) n@@12))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_38293) (i@@7 Int) (lo@@2 Int) (hi@@3 Int) (step@@1 Int) (vmin@@1 Int) (vmax@@1 Int) (ar@@3 T@Seq_45481) (v_2@@1 Int) ) (! (dummyFunction_4112 (|count_square#triggerStateless| i@@7 lo@@2 hi@@3 step@@1 vmin@@1 vmax@@1 ar@@3 v_2@@1))
 :qid |stdinbpl.1267:15|
 :skolemid |105|
 :pattern ( (|count_square'| Heap@@6 i@@7 lo@@2 hi@@3 step@@1 vmin@@1 vmax@@1 ar@@3 v_2@@1))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_38293) (Heap1Heap T@PolymorphicMapType_38293) (i@@8 Int) (lo@@3 Int) (hi@@4 Int) (step@@2 Int) (vmin@@2 Int) (vmax@@2 Int) (ar@@4 T@Seq_45481) ) (!  (=> (and (=  (and (<= vmin@@2 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4)) vmax@@2) (and (<= lo@@3 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4)) step@@2)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4)) step@@2) hi@@4))))  (and (<= vmin@@2 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4)) vmax@@2) (and (<= lo@@3 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4)) step@@2)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4)) step@@2) hi@@4))))) (=> (and (<= vmin@@2 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4)) vmax@@2) (and (<= lo@@3 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4)) step@@2)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4)) step@@2) hi@@4)))) (= (select (|PolymorphicMapType_38293_26999_3805#PolymorphicMapType_38293| Heap2Heap) (|Seq#Index_27038| ar@@4 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4))) Ref__Integer_value) (select (|PolymorphicMapType_38293_26999_3805#PolymorphicMapType_38293| Heap1Heap) (|Seq#Index_27038| ar@@4 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4))) Ref__Integer_value)))) (= (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4)))
 :qid |stdinbpl.1027:15|
 :skolemid |88|
 :pattern ( (|sum_square#condqp2| Heap2Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (|sum_square#condqp2| Heap1Heap i@@8 lo@@3 hi@@4 step@@2 vmin@@2 vmax@@2 ar@@4) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_38293) (Mask@@4 T@PolymorphicMapType_38314) (i@@9 Int) (lo@@4 Int) (hi@@5 Int) (step@@3 Int) (vmin@@3 Int) (vmax@@3 Int) (ar@@5 T@Seq_45481) ) (!  (=> (and (state Heap@@7 Mask@@4) (< AssumeFunctionsAbove 1)) (=> (and (and (and (and (<= 0 lo@@4) (and (<= lo@@4 hi@@5) (and (<= hi@@5 step@@3) (> step@@3 0)))) (and (<= 0 vmin@@3) (and (<= vmin@@3 i@@9) (<= i@@9 vmax@@3)))) (<= vmax@@3 (|Seq#Length_27038| ar@@5))) (forall ((j_9@@0 Int) (k@@0 Int) ) (!  (=> (and (<= 0 j_9@@0) (and (< j_9@@0 (|Seq#Length_27038| ar@@5)) (and (<= 0 k@@0) (and (< k@@0 (|Seq#Length_27038| ar@@5)) (not (= j_9@@0 k@@0)))))) (not (= (|Seq#Index_27038| ar@@5 j_9@@0) (|Seq#Index_27038| ar@@5 k@@0))))
 :qid |stdinbpl.1009:189|
 :skolemid |85|
 :pattern ( (|Seq#Index_27038| ar@@5 j_9@@0) (|Seq#Index_27038| ar@@5 k@@0))
))) (= (sum_square Heap@@7 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5) (ite (< i@@9 vmax@@3) (+ (ite  (and (<= lo@@4 (mod i@@9 step@@3)) (< (mod i@@9 step@@3) hi@@5)) (select (|PolymorphicMapType_38293_26999_3805#PolymorphicMapType_38293| Heap@@7) (|Seq#Index_27038| ar@@5 i@@9) Ref__Integer_value) 0) (|sum_square'| Heap@@7 (+ i@@9 1) lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5)) 0))))
 :qid |stdinbpl.1007:15|
 :skolemid |86|
 :pattern ( (state Heap@@7 Mask@@4) (sum_square Heap@@7 i@@9 lo@@4 hi@@5 step@@3 vmin@@3 vmax@@3 ar@@5))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_38293) (Heap1Heap@@0 T@PolymorphicMapType_38293) (i@@10 Int) (lo@@5 Int) (hi@@6 Int) (step@@4 Int) (vmin@@4 Int) (vmax@@4 Int) (ar@@6 T@Seq_45481) (v_2@@2 Int) ) (!  (=> (and (=  (and (<= vmin@@4 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax@@4 ar@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax@@4 ar@@6 v_2@@2))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax@@4 ar@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax@@4 ar@@6 v_2@@2)) vmax@@4) (and (<= lo@@5 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax@@4 ar@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax@@4 ar@@6 v_2@@2)) step@@4)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax@@4 ar@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax@@4 ar@@6 v_2@@2)) step@@4) hi@@6))))  (and (<= vmin@@4 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax@@4 ar@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax@@4 ar@@6 v_2@@2))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax@@4 ar@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax@@4 ar@@6 v_2@@2)) vmax@@4) (and (<= lo@@5 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax@@4 ar@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax@@4 ar@@6 v_2@@2)) step@@4)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax@@4 ar@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax@@4 ar@@6 v_2@@2)) step@@4) hi@@6))))) (=> (and (<= vmin@@4 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax@@4 ar@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax@@4 ar@@6 v_2@@2))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax@@4 ar@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax@@4 ar@@6 v_2@@2)) vmax@@4) (and (<= lo@@5 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax@@4 ar@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax@@4 ar@@6 v_2@@2)) step@@4)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax@@4 ar@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax@@4 ar@@6 v_2@@2)) step@@4) hi@@6)))) (= (select (|PolymorphicMapType_38293_26999_3805#PolymorphicMapType_38293| Heap2Heap@@0) (|Seq#Index_27038| ar@@6 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax@@4 ar@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax@@4 ar@@6 v_2@@2))) Ref__Integer_value) (select (|PolymorphicMapType_38293_26999_3805#PolymorphicMapType_38293| Heap1Heap@@0) (|Seq#Index_27038| ar@@6 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax@@4 ar@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax@@4 ar@@6 v_2@@2))) Ref__Integer_value)))) (= (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax@@4 ar@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax@@4 ar@@6 v_2@@2)))
 :qid |stdinbpl.1293:15|
 :skolemid |109|
 :pattern ( (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax@@4 ar@@6 v_2@@2) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@4 vmin@@4 vmax@@4 ar@@6 v_2@@2) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@8 T@PolymorphicMapType_38293) (ExhaleHeap@@1 T@PolymorphicMapType_38293) (Mask@@5 T@PolymorphicMapType_38314) (o_37 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@5) (=> (select (|PolymorphicMapType_38293_26743_53#PolymorphicMapType_38293| Heap@@8) o_37 $allocated) (select (|PolymorphicMapType_38293_26743_53#PolymorphicMapType_38293| ExhaleHeap@@1) o_37 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@5) (select (|PolymorphicMapType_38293_26743_53#PolymorphicMapType_38293| ExhaleHeap@@1) o_37 $allocated))
)))
(assert (forall ((p T@Field_26999_108835) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_38353_38353 p v_1 p w))
 :qid |stdinbpl.293:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_38353_38353 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_45481) (s1 T@Seq_45481) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_27038|)) (not (= s1 |Seq#Empty_27038|))) (<= (|Seq#Length_27038| s0) n@@13)) (< n@@13 (|Seq#Length_27038| (|Seq#Append_45481| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_27038| s0)) (|Seq#Length_27038| s0)) n@@13) (= (|Seq#Index_27038| (|Seq#Append_45481| s0 s1) n@@13) (|Seq#Index_27038| s1 (|Seq#Sub| n@@13 (|Seq#Length_27038| s0))))))
 :qid |stdinbpl.362:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_27038| (|Seq#Append_45481| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3683) (s1@@0 T@Seq_3683) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3683|)) (not (= s1@@0 |Seq#Empty_3683|))) (<= (|Seq#Length_3683| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3683| (|Seq#Append_3683| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3683| s0@@0)) (|Seq#Length_3683| s0@@0)) n@@14) (= (|Seq#Index_3683| (|Seq#Append_3683| s0@@0 s1@@0) n@@14) (|Seq#Index_3683| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3683| s0@@0))))))
 :qid |stdinbpl.362:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3683| (|Seq#Append_3683| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_26999_3805 Ref__Integer_value)))
(assert  (not (IsWandField_26999_3805 Ref__Integer_value)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_38293) (ExhaleHeap@@2 T@PolymorphicMapType_38293) (Mask@@6 T@PolymorphicMapType_38314) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@6) (succHeap Heap@@9 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_38314) (o_2@@4 T@Ref) (f_4@@4 T@Field_26999_108968) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_26999_114219 f_4@@4))) (not (IsWandField_26999_114235 f_4@@4))) (<= (select (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_38314) (o_2@@5 T@Ref) (f_4@@5 T@Field_26999_108835) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_26999_108926 f_4@@5))) (not (IsWandField_26999_110673 f_4@@5))) (<= (select (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_38314) (o_2@@6 T@Ref) (f_4@@6 T@Field_38366_38367) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_26999_38367 f_4@@6))) (not (IsWandField_26999_38367 f_4@@6))) (<= (select (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_38314) (o_2@@7 T@Ref) (f_4@@7 T@Field_38353_53) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| Mask@@10) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_26999_53 f_4@@7))) (not (IsWandField_26999_53 f_4@@7))) (<= (select (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| Mask@@10) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| Mask@@10) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_38314) (o_2@@8 T@Ref) (f_4@@8 T@Field_44439_3805) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| Mask@@11) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_26999_3805 f_4@@8))) (not (IsWandField_26999_3805 f_4@@8))) (<= (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| Mask@@11) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| Mask@@11) o_2@@8 f_4@@8))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_38293) (Mask@@12 T@PolymorphicMapType_38314) (i@@11 Int) (hi@@7 Int) (ar@@7 T@Seq_3683) ) (!  (=> (state Heap@@10 Mask@@12) (= (|sum_list'| Heap@@10 i@@11 hi@@7 ar@@7) (|sum_list#frame| EmptyFrame i@@11 hi@@7 ar@@7)))
 :qid |stdinbpl.694:15|
 :skolemid |61|
 :pattern ( (state Heap@@10 Mask@@12) (|sum_list'| Heap@@10 i@@11 hi@@7 ar@@7))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_38314) (o_2@@9 T@Ref) (f_4@@9 T@Field_26999_108968) ) (! (= (HasDirectPerm_26999_114673 Mask@@13 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| Mask@@13) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26999_114673 Mask@@13 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_38314) (o_2@@10 T@Ref) (f_4@@10 T@Field_26999_108835) ) (! (= (HasDirectPerm_26999_108899 Mask@@14 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| Mask@@14) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26999_108899 Mask@@14 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_38314) (o_2@@11 T@Ref) (f_4@@11 T@Field_38366_38367) ) (! (= (HasDirectPerm_26999_38367 Mask@@15 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| Mask@@15) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26999_38367 Mask@@15 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_38314) (o_2@@12 T@Ref) (f_4@@12 T@Field_38353_53) ) (! (= (HasDirectPerm_26999_53 Mask@@16 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| Mask@@16) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26999_53 Mask@@16 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_38314) (o_2@@13 T@Ref) (f_4@@13 T@Field_44439_3805) ) (! (= (HasDirectPerm_26999_3805 Mask@@17 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| Mask@@17) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26999_3805 Mask@@17 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_38293) (i@@12 Int) (lo@@6 Int) (hi@@8 Int) (ar@@8 T@Seq_45481) ) (! (dummyFunction_4112 (|sum_array#triggerStateless| i@@12 lo@@6 hi@@8 ar@@8))
 :qid |stdinbpl.766:15|
 :skolemid |63|
 :pattern ( (|sum_array'| Heap@@11 i@@12 lo@@6 hi@@8 ar@@8))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_38293) (i@@13 Int) (hi@@9 Int) (ar@@9 T@Seq_3683) (v_2@@3 Int) ) (! (dummyFunction_4112 (|count_list#triggerStateless| i@@13 hi@@9 ar@@9 v_2@@3))
 :qid |stdinbpl.1533:15|
 :skolemid |126|
 :pattern ( (|count_list'| Heap@@12 i@@13 hi@@9 ar@@9 v_2@@3))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_38293) (i@@14 Int) (hi@@10 Int) (ar@@10 T@Seq_45481) (v_2@@4 Int) ) (! (dummyFunction_4112 (|count_array#triggerStateless| i@@14 hi@@10 ar@@10 v_2@@4))
 :qid |stdinbpl.1618:15|
 :skolemid |130|
 :pattern ( (|count_array'| Heap@@13 i@@14 hi@@10 ar@@10 v_2@@4))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_38293) (ExhaleHeap@@3 T@PolymorphicMapType_38293) (Mask@@18 T@PolymorphicMapType_38314) (pm_f_14@@1 T@Field_26999_108835) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@3 Mask@@18) (=> (and (HasDirectPerm_26999_108899 Mask@@18 null pm_f_14@@1) (IsPredicateField_26999_108926 pm_f_14@@1)) (and (and (and (and (forall ((o2_14 T@Ref) (f_42 T@Field_38353_53) ) (!  (=> (select (|PolymorphicMapType_38842_38353_53#PolymorphicMapType_38842| (select (|PolymorphicMapType_38293_26999_109012#PolymorphicMapType_38293| Heap@@14) null (PredicateMaskField_26999 pm_f_14@@1))) o2_14 f_42) (= (select (|PolymorphicMapType_38293_26743_53#PolymorphicMapType_38293| Heap@@14) o2_14 f_42) (select (|PolymorphicMapType_38293_26743_53#PolymorphicMapType_38293| ExhaleHeap@@3) o2_14 f_42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38293_26743_53#PolymorphicMapType_38293| ExhaleHeap@@3) o2_14 f_42))
)) (forall ((o2_14@@0 T@Ref) (f_42@@0 T@Field_38366_38367) ) (!  (=> (select (|PolymorphicMapType_38842_38353_38367#PolymorphicMapType_38842| (select (|PolymorphicMapType_38293_26999_109012#PolymorphicMapType_38293| Heap@@14) null (PredicateMaskField_26999 pm_f_14@@1))) o2_14@@0 f_42@@0) (= (select (|PolymorphicMapType_38293_26746_26747#PolymorphicMapType_38293| Heap@@14) o2_14@@0 f_42@@0) (select (|PolymorphicMapType_38293_26746_26747#PolymorphicMapType_38293| ExhaleHeap@@3) o2_14@@0 f_42@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38293_26746_26747#PolymorphicMapType_38293| ExhaleHeap@@3) o2_14@@0 f_42@@0))
))) (forall ((o2_14@@1 T@Ref) (f_42@@1 T@Field_44439_3805) ) (!  (=> (select (|PolymorphicMapType_38842_38353_3805#PolymorphicMapType_38842| (select (|PolymorphicMapType_38293_26999_109012#PolymorphicMapType_38293| Heap@@14) null (PredicateMaskField_26999 pm_f_14@@1))) o2_14@@1 f_42@@1) (= (select (|PolymorphicMapType_38293_26999_3805#PolymorphicMapType_38293| Heap@@14) o2_14@@1 f_42@@1) (select (|PolymorphicMapType_38293_26999_3805#PolymorphicMapType_38293| ExhaleHeap@@3) o2_14@@1 f_42@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38293_26999_3805#PolymorphicMapType_38293| ExhaleHeap@@3) o2_14@@1 f_42@@1))
))) (forall ((o2_14@@2 T@Ref) (f_42@@2 T@Field_26999_108835) ) (!  (=> (select (|PolymorphicMapType_38842_38353_108835#PolymorphicMapType_38842| (select (|PolymorphicMapType_38293_26999_109012#PolymorphicMapType_38293| Heap@@14) null (PredicateMaskField_26999 pm_f_14@@1))) o2_14@@2 f_42@@2) (= (select (|PolymorphicMapType_38293_38353_108835#PolymorphicMapType_38293| Heap@@14) o2_14@@2 f_42@@2) (select (|PolymorphicMapType_38293_38353_108835#PolymorphicMapType_38293| ExhaleHeap@@3) o2_14@@2 f_42@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38293_38353_108835#PolymorphicMapType_38293| ExhaleHeap@@3) o2_14@@2 f_42@@2))
))) (forall ((o2_14@@3 T@Ref) (f_42@@3 T@Field_26999_108968) ) (!  (=> (select (|PolymorphicMapType_38842_38353_110146#PolymorphicMapType_38842| (select (|PolymorphicMapType_38293_26999_109012#PolymorphicMapType_38293| Heap@@14) null (PredicateMaskField_26999 pm_f_14@@1))) o2_14@@3 f_42@@3) (= (select (|PolymorphicMapType_38293_26999_109012#PolymorphicMapType_38293| Heap@@14) o2_14@@3 f_42@@3) (select (|PolymorphicMapType_38293_26999_109012#PolymorphicMapType_38293| ExhaleHeap@@3) o2_14@@3 f_42@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38293_26999_109012#PolymorphicMapType_38293| ExhaleHeap@@3) o2_14@@3 f_42@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@3 Mask@@18) (IsPredicateField_26999_108926 pm_f_14@@1))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_38293) (ExhaleHeap@@4 T@PolymorphicMapType_38293) (Mask@@19 T@PolymorphicMapType_38314) (pm_f_14@@2 T@Field_26999_108835) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@4 Mask@@19) (=> (and (HasDirectPerm_26999_108899 Mask@@19 null pm_f_14@@2) (IsWandField_26999_110673 pm_f_14@@2)) (and (and (and (and (forall ((o2_14@@4 T@Ref) (f_42@@4 T@Field_38353_53) ) (!  (=> (select (|PolymorphicMapType_38842_38353_53#PolymorphicMapType_38842| (select (|PolymorphicMapType_38293_26999_109012#PolymorphicMapType_38293| Heap@@15) null (WandMaskField_26999 pm_f_14@@2))) o2_14@@4 f_42@@4) (= (select (|PolymorphicMapType_38293_26743_53#PolymorphicMapType_38293| Heap@@15) o2_14@@4 f_42@@4) (select (|PolymorphicMapType_38293_26743_53#PolymorphicMapType_38293| ExhaleHeap@@4) o2_14@@4 f_42@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38293_26743_53#PolymorphicMapType_38293| ExhaleHeap@@4) o2_14@@4 f_42@@4))
)) (forall ((o2_14@@5 T@Ref) (f_42@@5 T@Field_38366_38367) ) (!  (=> (select (|PolymorphicMapType_38842_38353_38367#PolymorphicMapType_38842| (select (|PolymorphicMapType_38293_26999_109012#PolymorphicMapType_38293| Heap@@15) null (WandMaskField_26999 pm_f_14@@2))) o2_14@@5 f_42@@5) (= (select (|PolymorphicMapType_38293_26746_26747#PolymorphicMapType_38293| Heap@@15) o2_14@@5 f_42@@5) (select (|PolymorphicMapType_38293_26746_26747#PolymorphicMapType_38293| ExhaleHeap@@4) o2_14@@5 f_42@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38293_26746_26747#PolymorphicMapType_38293| ExhaleHeap@@4) o2_14@@5 f_42@@5))
))) (forall ((o2_14@@6 T@Ref) (f_42@@6 T@Field_44439_3805) ) (!  (=> (select (|PolymorphicMapType_38842_38353_3805#PolymorphicMapType_38842| (select (|PolymorphicMapType_38293_26999_109012#PolymorphicMapType_38293| Heap@@15) null (WandMaskField_26999 pm_f_14@@2))) o2_14@@6 f_42@@6) (= (select (|PolymorphicMapType_38293_26999_3805#PolymorphicMapType_38293| Heap@@15) o2_14@@6 f_42@@6) (select (|PolymorphicMapType_38293_26999_3805#PolymorphicMapType_38293| ExhaleHeap@@4) o2_14@@6 f_42@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38293_26999_3805#PolymorphicMapType_38293| ExhaleHeap@@4) o2_14@@6 f_42@@6))
))) (forall ((o2_14@@7 T@Ref) (f_42@@7 T@Field_26999_108835) ) (!  (=> (select (|PolymorphicMapType_38842_38353_108835#PolymorphicMapType_38842| (select (|PolymorphicMapType_38293_26999_109012#PolymorphicMapType_38293| Heap@@15) null (WandMaskField_26999 pm_f_14@@2))) o2_14@@7 f_42@@7) (= (select (|PolymorphicMapType_38293_38353_108835#PolymorphicMapType_38293| Heap@@15) o2_14@@7 f_42@@7) (select (|PolymorphicMapType_38293_38353_108835#PolymorphicMapType_38293| ExhaleHeap@@4) o2_14@@7 f_42@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38293_38353_108835#PolymorphicMapType_38293| ExhaleHeap@@4) o2_14@@7 f_42@@7))
))) (forall ((o2_14@@8 T@Ref) (f_42@@8 T@Field_26999_108968) ) (!  (=> (select (|PolymorphicMapType_38842_38353_110146#PolymorphicMapType_38842| (select (|PolymorphicMapType_38293_26999_109012#PolymorphicMapType_38293| Heap@@15) null (WandMaskField_26999 pm_f_14@@2))) o2_14@@8 f_42@@8) (= (select (|PolymorphicMapType_38293_26999_109012#PolymorphicMapType_38293| Heap@@15) o2_14@@8 f_42@@8) (select (|PolymorphicMapType_38293_26999_109012#PolymorphicMapType_38293| ExhaleHeap@@4) o2_14@@8 f_42@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38293_26999_109012#PolymorphicMapType_38293| ExhaleHeap@@4) o2_14@@8 f_42@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@4 Mask@@19) (IsWandField_26999_110673 pm_f_14@@2))
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
(assert (forall ((Heap@@16 T@PolymorphicMapType_38293) (ExhaleHeap@@5 T@PolymorphicMapType_38293) (Mask@@20 T@PolymorphicMapType_38314) (o_37@@0 T@Ref) (f_42@@9 T@Field_26999_108968) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@5 Mask@@20) (=> (HasDirectPerm_26999_114673 Mask@@20 o_37@@0 f_42@@9) (= (select (|PolymorphicMapType_38293_26999_109012#PolymorphicMapType_38293| Heap@@16) o_37@@0 f_42@@9) (select (|PolymorphicMapType_38293_26999_109012#PolymorphicMapType_38293| ExhaleHeap@@5) o_37@@0 f_42@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@5 Mask@@20) (select (|PolymorphicMapType_38293_26999_109012#PolymorphicMapType_38293| ExhaleHeap@@5) o_37@@0 f_42@@9))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_38293) (ExhaleHeap@@6 T@PolymorphicMapType_38293) (Mask@@21 T@PolymorphicMapType_38314) (o_37@@1 T@Ref) (f_42@@10 T@Field_26999_108835) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@6 Mask@@21) (=> (HasDirectPerm_26999_108899 Mask@@21 o_37@@1 f_42@@10) (= (select (|PolymorphicMapType_38293_38353_108835#PolymorphicMapType_38293| Heap@@17) o_37@@1 f_42@@10) (select (|PolymorphicMapType_38293_38353_108835#PolymorphicMapType_38293| ExhaleHeap@@6) o_37@@1 f_42@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@6 Mask@@21) (select (|PolymorphicMapType_38293_38353_108835#PolymorphicMapType_38293| ExhaleHeap@@6) o_37@@1 f_42@@10))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_38293) (ExhaleHeap@@7 T@PolymorphicMapType_38293) (Mask@@22 T@PolymorphicMapType_38314) (o_37@@2 T@Ref) (f_42@@11 T@Field_38366_38367) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@7 Mask@@22) (=> (HasDirectPerm_26999_38367 Mask@@22 o_37@@2 f_42@@11) (= (select (|PolymorphicMapType_38293_26746_26747#PolymorphicMapType_38293| Heap@@18) o_37@@2 f_42@@11) (select (|PolymorphicMapType_38293_26746_26747#PolymorphicMapType_38293| ExhaleHeap@@7) o_37@@2 f_42@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@7 Mask@@22) (select (|PolymorphicMapType_38293_26746_26747#PolymorphicMapType_38293| ExhaleHeap@@7) o_37@@2 f_42@@11))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_38293) (ExhaleHeap@@8 T@PolymorphicMapType_38293) (Mask@@23 T@PolymorphicMapType_38314) (o_37@@3 T@Ref) (f_42@@12 T@Field_38353_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@8 Mask@@23) (=> (HasDirectPerm_26999_53 Mask@@23 o_37@@3 f_42@@12) (= (select (|PolymorphicMapType_38293_26743_53#PolymorphicMapType_38293| Heap@@19) o_37@@3 f_42@@12) (select (|PolymorphicMapType_38293_26743_53#PolymorphicMapType_38293| ExhaleHeap@@8) o_37@@3 f_42@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@8 Mask@@23) (select (|PolymorphicMapType_38293_26743_53#PolymorphicMapType_38293| ExhaleHeap@@8) o_37@@3 f_42@@12))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_38293) (ExhaleHeap@@9 T@PolymorphicMapType_38293) (Mask@@24 T@PolymorphicMapType_38314) (o_37@@4 T@Ref) (f_42@@13 T@Field_44439_3805) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@9 Mask@@24) (=> (HasDirectPerm_26999_3805 Mask@@24 o_37@@4 f_42@@13) (= (select (|PolymorphicMapType_38293_26999_3805#PolymorphicMapType_38293| Heap@@20) o_37@@4 f_42@@13) (select (|PolymorphicMapType_38293_26999_3805#PolymorphicMapType_38293| ExhaleHeap@@9) o_37@@4 f_42@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@9 Mask@@24) (select (|PolymorphicMapType_38293_26999_3805#PolymorphicMapType_38293| ExhaleHeap@@9) o_37@@4 f_42@@13))
)))
(assert (forall ((s0@@1 T@Seq_45481) (s1@@1 T@Seq_45481) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_27038|)) (not (= s1@@1 |Seq#Empty_27038|))) (= (|Seq#Length_27038| (|Seq#Append_45481| s0@@1 s1@@1)) (+ (|Seq#Length_27038| s0@@1) (|Seq#Length_27038| s1@@1))))
 :qid |stdinbpl.331:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_27038| (|Seq#Append_45481| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3683) (s1@@2 T@Seq_3683) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3683|)) (not (= s1@@2 |Seq#Empty_3683|))) (= (|Seq#Length_3683| (|Seq#Append_3683| s0@@2 s1@@2)) (+ (|Seq#Length_3683| s0@@2) (|Seq#Length_3683| s1@@2))))
 :qid |stdinbpl.331:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3683| (|Seq#Append_3683| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_26999_108968) ) (! (= (select (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_26999_108835) ) (! (= (select (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_38366_38367) ) (! (= (select (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_38353_53) ) (! (= (select (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_44439_3805) ) (! (= (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_38293) (Mask@@25 T@PolymorphicMapType_38314) (i@@15 Int) (hi@@11 Int) (ar@@11 T@Seq_3683) (v_2@@5 Int) ) (!  (=> (and (state Heap@@21 Mask@@25) (< AssumeFunctionsAbove 5)) (=> (and (and (<= 0 i@@15) (<= i@@15 hi@@11)) (<= hi@@11 (|Seq#Length_3683| ar@@11))) (= (count_list Heap@@21 i@@15 hi@@11 ar@@11 v_2@@5) (ite (< i@@15 hi@@11) (+ (ite (= (|Seq#Index_3683| ar@@11 i@@15) v_2@@5) 1 0) (|count_list'| Heap@@21 (+ i@@15 1) hi@@11 ar@@11 v_2@@5)) 0))))
 :qid |stdinbpl.1539:15|
 :skolemid |127|
 :pattern ( (state Heap@@21 Mask@@25) (count_list Heap@@21 i@@15 hi@@11 ar@@11 v_2@@5))
)))
(assert (forall ((s@@15 T@Seq_45481) (t@@1 T@Seq_45481) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_27038| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_27038| s@@15)) (|Seq#Length_27038| s@@15)) n@@15) (= (|Seq#Drop_27038| (|Seq#Append_45481| s@@15 t@@1) n@@15) (|Seq#Drop_27038| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_27038| s@@15))))))
 :qid |stdinbpl.488:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_27038| (|Seq#Append_45481| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3683) (t@@2 T@Seq_3683) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3683| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3683| s@@16)) (|Seq#Length_3683| s@@16)) n@@16) (= (|Seq#Drop_3683| (|Seq#Append_3683| s@@16 t@@2) n@@16) (|Seq#Drop_3683| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3683| s@@16))))))
 :qid |stdinbpl.488:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3683| (|Seq#Append_3683| s@@16 t@@2) n@@16))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_38293) (i@@16 Int) (lo@@7 Int) (hi@@12 Int) (ar@@12 T@Seq_45481) ) (!  (and (= (sum_array Heap@@22 i@@16 lo@@7 hi@@12 ar@@12) (|sum_array'| Heap@@22 i@@16 lo@@7 hi@@12 ar@@12)) (dummyFunction_4112 (|sum_array#triggerStateless| i@@16 lo@@7 hi@@12 ar@@12)))
 :qid |stdinbpl.762:15|
 :skolemid |62|
 :pattern ( (sum_array Heap@@22 i@@16 lo@@7 hi@@12 ar@@12))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_38293) (i@@17 Int) (hi@@13 Int) (ar@@13 T@Seq_3683) (v_2@@6 Int) ) (!  (and (= (count_list Heap@@23 i@@17 hi@@13 ar@@13 v_2@@6) (|count_list'| Heap@@23 i@@17 hi@@13 ar@@13 v_2@@6)) (dummyFunction_4112 (|count_list#triggerStateless| i@@17 hi@@13 ar@@13 v_2@@6)))
 :qid |stdinbpl.1529:15|
 :skolemid |125|
 :pattern ( (count_list Heap@@23 i@@17 hi@@13 ar@@13 v_2@@6))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_38293) (i@@18 Int) (hi@@14 Int) (ar@@14 T@Seq_45481) (v_2@@7 Int) ) (!  (and (= (count_array Heap@@24 i@@18 hi@@14 ar@@14 v_2@@7) (|count_array'| Heap@@24 i@@18 hi@@14 ar@@14 v_2@@7)) (dummyFunction_4112 (|count_array#triggerStateless| i@@18 hi@@14 ar@@14 v_2@@7)))
 :qid |stdinbpl.1614:15|
 :skolemid |129|
 :pattern ( (count_array Heap@@24 i@@18 hi@@14 ar@@14 v_2@@7))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_38314) (SummandMask1 T@PolymorphicMapType_38314) (SummandMask2 T@PolymorphicMapType_38314) (o_2@@19 T@Ref) (f_4@@19 T@Field_26999_108968) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_38314) (SummandMask1@@0 T@PolymorphicMapType_38314) (SummandMask2@@0 T@PolymorphicMapType_38314) (o_2@@20 T@Ref) (f_4@@20 T@Field_26999_108835) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_38314) (SummandMask1@@1 T@PolymorphicMapType_38314) (SummandMask2@@1 T@PolymorphicMapType_38314) (o_2@@21 T@Ref) (f_4@@21 T@Field_38366_38367) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_38314) (SummandMask1@@2 T@PolymorphicMapType_38314) (SummandMask2@@2 T@PolymorphicMapType_38314) (o_2@@22 T@Ref) (f_4@@22 T@Field_38353_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_38314) (SummandMask1@@3 T@PolymorphicMapType_38314) (SummandMask2@@3 T@PolymorphicMapType_38314) (o_2@@23 T@Ref) (f_4@@23 T@Field_44439_3805) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_38293) (i@@19 Int) (lo@@8 Int) (hi@@15 Int) (step@@5 Int) (vmin@@5 Int) (vmax@@5 Int) (ar@@15 T@Seq_45481) ) (!  (and (= (sum_square Heap@@25 i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax@@5 ar@@15) (|sum_square'| Heap@@25 i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax@@5 ar@@15)) (dummyFunction_4112 (|sum_square#triggerStateless| i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax@@5 ar@@15)))
 :qid |stdinbpl.997:15|
 :skolemid |83|
 :pattern ( (sum_square Heap@@25 i@@19 lo@@8 hi@@15 step@@5 vmin@@5 vmax@@5 ar@@15))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_38293) (Mask@@26 T@PolymorphicMapType_38314) (i@@20 Int) (hi@@16 Int) (ar@@16 T@Seq_3683) (v_2@@8 Int) ) (!  (=> (state Heap@@26 Mask@@26) (= (|count_list'| Heap@@26 i@@20 hi@@16 ar@@16 v_2@@8) (|count_list#frame| EmptyFrame i@@20 hi@@16 ar@@16 v_2@@8)))
 :qid |stdinbpl.1546:15|
 :skolemid |128|
 :pattern ( (state Heap@@26 Mask@@26) (|count_list'| Heap@@26 i@@20 hi@@16 ar@@16 v_2@@8))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3683| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3683| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.653:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3683| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_38293) (Mask@@27 T@PolymorphicMapType_38314) (i@@21 Int) (lo@@9 Int) (hi@@17 Int) (step@@6 Int) (vmin@@6 Int) (vmax@@6 Int) (ar@@17 T@Seq_45481) (v_2@@9 Int) ) (!  (=> (and (state Heap@@27 Mask@@27) (< AssumeFunctionsAbove 0)) (=> (and (and (and (and (<= 0 lo@@9) (and (<= lo@@9 hi@@17) (and (<= hi@@17 step@@6) (> step@@6 0)))) (and (<= 0 vmin@@6) (and (<= vmin@@6 i@@21) (<= i@@21 vmax@@6)))) (<= vmax@@6 (|Seq#Length_27038| ar@@17))) (forall ((j_9@@1 Int) (k@@1 Int) ) (!  (=> (and (<= 0 j_9@@1) (and (< j_9@@1 (|Seq#Length_27038| ar@@17)) (and (<= 0 k@@1) (and (< k@@1 (|Seq#Length_27038| ar@@17)) (not (= j_9@@1 k@@1)))))) (not (= (|Seq#Index_27038| ar@@17 j_9@@1) (|Seq#Index_27038| ar@@17 k@@1))))
 :qid |stdinbpl.1275:189|
 :skolemid |106|
 :pattern ( (|Seq#Index_27038| ar@@17 j_9@@1) (|Seq#Index_27038| ar@@17 k@@1))
))) (= (count_square Heap@@27 i@@21 lo@@9 hi@@17 step@@6 vmin@@6 vmax@@6 ar@@17 v_2@@9) (ite (< i@@21 vmax@@6) (+ (ite  (and (<= lo@@9 (mod i@@21 step@@6)) (and (< (mod i@@21 step@@6) hi@@17) (= (select (|PolymorphicMapType_38293_26999_3805#PolymorphicMapType_38293| Heap@@27) (|Seq#Index_27038| ar@@17 i@@21) Ref__Integer_value) v_2@@9))) 1 0) (|count_square'| Heap@@27 (+ i@@21 1) lo@@9 hi@@17 step@@6 vmin@@6 vmax@@6 ar@@17 v_2@@9)) 0))))
 :qid |stdinbpl.1273:15|
 :skolemid |107|
 :pattern ( (state Heap@@27 Mask@@27) (count_square Heap@@27 i@@21 lo@@9 hi@@17 step@@6 vmin@@6 vmax@@6 ar@@17 v_2@@9))
)))
(assert (forall ((a T@Seq_45481) (b T@Seq_45481) ) (!  (=> (|Seq#Equal_45481| a b) (= a b))
 :qid |stdinbpl.626:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_45481| a b))
)))
(assert (forall ((a@@0 T@Seq_3683) (b@@0 T@Seq_3683) ) (!  (=> (|Seq#Equal_3683| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.626:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3683| a@@0 b@@0))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_38293) (i@@22 Int) (hi@@18 Int) (ar@@18 T@Seq_3683) ) (!  (and (= (sum_list Heap@@28 i@@22 hi@@18 ar@@18) (|sum_list'| Heap@@28 i@@22 hi@@18 ar@@18)) (dummyFunction_4112 (|sum_list#triggerStateless| i@@22 hi@@18 ar@@18)))
 :qid |stdinbpl.677:15|
 :skolemid |58|
 :pattern ( (sum_list Heap@@28 i@@22 hi@@18 ar@@18))
)))
(assert (forall ((s@@17 T@Seq_45481) (i@@23 Int) ) (!  (=> (and (<= 0 i@@23) (< i@@23 (|Seq#Length_27038| s@@17))) (|Seq#ContainsTrigger_27038| s@@17 (|Seq#Index_27038| s@@17 i@@23)))
 :qid |stdinbpl.519:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_27038| s@@17 i@@23))
)))
(assert (forall ((s@@18 T@Seq_3683) (i@@24 Int) ) (!  (=> (and (<= 0 i@@24) (< i@@24 (|Seq#Length_3683| s@@18))) (|Seq#ContainsTrigger_3683| s@@18 (|Seq#Index_3683| s@@18 i@@24)))
 :qid |stdinbpl.519:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3683| s@@18 i@@24))
)))
(assert (forall ((s0@@3 T@Seq_45481) (s1@@3 T@Seq_45481) ) (!  (and (=> (= s0@@3 |Seq#Empty_27038|) (= (|Seq#Append_45481| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_27038|) (= (|Seq#Append_45481| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.337:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_45481| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3683) (s1@@4 T@Seq_3683) ) (!  (and (=> (= s0@@4 |Seq#Empty_3683|) (= (|Seq#Append_3683| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3683|) (= (|Seq#Append_3683| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.337:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3683| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_27038| (|Seq#Singleton_27038| t@@3) 0) t@@3)
 :qid |stdinbpl.341:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_27038| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3683| (|Seq#Singleton_3683| t@@4) 0) t@@4)
 :qid |stdinbpl.341:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3683| t@@4))
)))
(assert (forall ((s@@19 T@Seq_45481) ) (! (<= 0 (|Seq#Length_27038| s@@19))
 :qid |stdinbpl.320:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_27038| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3683) ) (! (<= 0 (|Seq#Length_3683| s@@20))
 :qid |stdinbpl.320:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3683| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_45481) (s1@@5 T@Seq_45481) ) (!  (=> (|Seq#Equal_45481| s0@@5 s1@@5) (and (= (|Seq#Length_27038| s0@@5) (|Seq#Length_27038| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_27038| s0@@5))) (= (|Seq#Index_27038| s0@@5 j@@6) (|Seq#Index_27038| s1@@5 j@@6)))
 :qid |stdinbpl.616:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_27038| s0@@5 j@@6))
 :pattern ( (|Seq#Index_27038| s1@@5 j@@6))
))))
 :qid |stdinbpl.613:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_45481| s0@@5 s1@@5))
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
(assert (forall ((Heap2Heap@@1 T@PolymorphicMapType_38293) (Heap1Heap@@1 T@PolymorphicMapType_38293) (i@@25 Int) (hi@@19 Int) (ar@@19 T@Seq_45481) (v_2@@10 Int) ) (!  (=> (and (=  (and (<= 0 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10))) (< (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10)) hi@@19))  (and (<= 0 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10))) (< (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10)) hi@@19))) (=> (and (<= 0 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10))) (< (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10)) hi@@19)) (= (select (|PolymorphicMapType_38293_26999_3805#PolymorphicMapType_38293| Heap2Heap@@1) (|Seq#Index_27038| ar@@19 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10))) Ref__Integer_value) (select (|PolymorphicMapType_38293_26999_3805#PolymorphicMapType_38293| Heap1Heap@@1) (|Seq#Index_27038| ar@@19 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10))) Ref__Integer_value)))) (= (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10)))
 :qid |stdinbpl.1644:15|
 :skolemid |134|
 :pattern ( (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar@@19 v_2@@10) (succHeapTrans Heap2Heap@@1 Heap1Heap@@1))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_27038| (|Seq#Singleton_27038| t@@5)) 1)
 :qid |stdinbpl.328:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_27038| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3683| (|Seq#Singleton_3683| t@@6)) 1)
 :qid |stdinbpl.328:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3683| t@@6))
)))
(assert (forall ((Heap2Heap@@2 T@PolymorphicMapType_38293) (Heap1Heap@@2 T@PolymorphicMapType_38293) (i@@26 Int) (lo@@10 Int) (hi@@20 Int) (ar@@20 T@Seq_45481) ) (!  (=> (and (=  (and (<= lo@@10 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar@@20))) (< (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar@@20)) hi@@20))  (and (<= lo@@10 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar@@20))) (< (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar@@20)) hi@@20))) (=> (and (<= lo@@10 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar@@20))) (< (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar@@20)) hi@@20)) (= (select (|PolymorphicMapType_38293_26999_3805#PolymorphicMapType_38293| Heap2Heap@@2) (|Seq#Index_27038| ar@@20 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar@@20))) Ref__Integer_value) (select (|PolymorphicMapType_38293_26999_3805#PolymorphicMapType_38293| Heap1Heap@@2) (|Seq#Index_27038| ar@@20 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar@@20))) Ref__Integer_value)))) (= (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar@@20)))
 :qid |stdinbpl.792:15|
 :skolemid |67|
 :pattern ( (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@10 hi@@20 ar@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@10 hi@@20 ar@@20) (succHeapTrans Heap2Heap@@2 Heap1Heap@@2))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_38293) (Mask@@28 T@PolymorphicMapType_38314) (i@@27 Int) (hi@@21 Int) (ar@@21 T@Seq_3683) ) (!  (=> (and (state Heap@@29 Mask@@28) (< AssumeFunctionsAbove 4)) (=> (and (and (<= 0 i@@27) (<= i@@27 hi@@21)) (<= hi@@21 (|Seq#Length_3683| ar@@21))) (= (sum_list Heap@@29 i@@27 hi@@21 ar@@21) (ite (< i@@27 hi@@21) (+ (|Seq#Index_3683| ar@@21 i@@27) (|sum_list'| Heap@@29 (+ i@@27 1) hi@@21 ar@@21)) 0))))
 :qid |stdinbpl.687:15|
 :skolemid |60|
 :pattern ( (state Heap@@29 Mask@@28) (sum_list Heap@@29 i@@27 hi@@21 ar@@21))
)))
(assert (forall ((s@@21 T@Seq_45481) (t@@7 T@Seq_45481) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_27038| s@@21))) (= (|Seq#Take_27038| (|Seq#Append_45481| s@@21 t@@7) n@@17) (|Seq#Take_27038| s@@21 n@@17)))
 :qid |stdinbpl.470:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_27038| (|Seq#Append_45481| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3683) (t@@8 T@Seq_3683) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3683| s@@22))) (= (|Seq#Take_3683| (|Seq#Append_3683| s@@22 t@@8) n@@18) (|Seq#Take_3683| s@@22 n@@18)))
 :qid |stdinbpl.470:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3683| (|Seq#Append_3683| s@@22 t@@8) n@@18))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_38293) (Mask@@29 T@PolymorphicMapType_38314) (i@@28 Int) (hi@@22 Int) (ar@@22 T@Seq_45481) (v_2@@11 Int) ) (!  (=> (and (state Heap@@30 Mask@@29) (< AssumeFunctionsAbove 2)) (=> (and (and (and (<= 0 i@@28) (<= i@@28 hi@@22)) (<= hi@@22 (|Seq#Length_27038| ar@@22))) (forall ((j_9@@2 Int) (k@@2 Int) ) (!  (=> (and (<= 0 j_9@@2) (and (< j_9@@2 (|Seq#Length_27038| ar@@22)) (and (<= 0 k@@2) (and (< k@@2 (|Seq#Length_27038| ar@@22)) (not (= j_9@@2 k@@2)))))) (not (= (|Seq#Index_27038| ar@@22 j_9@@2) (|Seq#Index_27038| ar@@22 k@@2))))
 :qid |stdinbpl.1626:110|
 :skolemid |131|
 :pattern ( (|Seq#Index_27038| ar@@22 j_9@@2) (|Seq#Index_27038| ar@@22 k@@2))
))) (= (count_array Heap@@30 i@@28 hi@@22 ar@@22 v_2@@11) (ite (< i@@28 hi@@22) (+ (ite (= (select (|PolymorphicMapType_38293_26999_3805#PolymorphicMapType_38293| Heap@@30) (|Seq#Index_27038| ar@@22 i@@28) Ref__Integer_value) v_2@@11) 1 0) (|count_array'| Heap@@30 (+ i@@28 1) hi@@22 ar@@22 v_2@@11)) 0))))
 :qid |stdinbpl.1624:15|
 :skolemid |132|
 :pattern ( (state Heap@@30 Mask@@29) (count_array Heap@@30 i@@28 hi@@22 ar@@22 v_2@@11))
)))
(assert (forall ((s@@23 T@Seq_45481) (i@@29 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@29) (< i@@29 (|Seq#Length_27038| s@@23))) (= (|Seq#Length_27038| (|Seq#Update_27038| s@@23 i@@29 v@@2)) (|Seq#Length_27038| s@@23)))
 :qid |stdinbpl.369:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_27038| (|Seq#Update_27038| s@@23 i@@29 v@@2)))
 :pattern ( (|Seq#Length_27038| s@@23) (|Seq#Update_27038| s@@23 i@@29 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3683) (i@@30 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@30) (< i@@30 (|Seq#Length_3683| s@@24))) (= (|Seq#Length_3683| (|Seq#Update_3683| s@@24 i@@30 v@@3)) (|Seq#Length_3683| s@@24)))
 :qid |stdinbpl.369:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3683| (|Seq#Update_3683| s@@24 i@@30 v@@3)))
 :pattern ( (|Seq#Length_3683| s@@24) (|Seq#Update_3683| s@@24 i@@30 v@@3))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_38293) (o_36 T@Ref) (f_43 T@Field_26999_108835) (v@@4 T@FrameType) ) (! (succHeap Heap@@31 (PolymorphicMapType_38293 (|PolymorphicMapType_38293_26743_53#PolymorphicMapType_38293| Heap@@31) (|PolymorphicMapType_38293_26746_26747#PolymorphicMapType_38293| Heap@@31) (|PolymorphicMapType_38293_26999_3805#PolymorphicMapType_38293| Heap@@31) (|PolymorphicMapType_38293_26999_109012#PolymorphicMapType_38293| Heap@@31) (store (|PolymorphicMapType_38293_38353_108835#PolymorphicMapType_38293| Heap@@31) o_36 f_43 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38293 (|PolymorphicMapType_38293_26743_53#PolymorphicMapType_38293| Heap@@31) (|PolymorphicMapType_38293_26746_26747#PolymorphicMapType_38293| Heap@@31) (|PolymorphicMapType_38293_26999_3805#PolymorphicMapType_38293| Heap@@31) (|PolymorphicMapType_38293_26999_109012#PolymorphicMapType_38293| Heap@@31) (store (|PolymorphicMapType_38293_38353_108835#PolymorphicMapType_38293| Heap@@31) o_36 f_43 v@@4)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_38293) (o_36@@0 T@Ref) (f_43@@0 T@Field_26999_108968) (v@@5 T@PolymorphicMapType_38842) ) (! (succHeap Heap@@32 (PolymorphicMapType_38293 (|PolymorphicMapType_38293_26743_53#PolymorphicMapType_38293| Heap@@32) (|PolymorphicMapType_38293_26746_26747#PolymorphicMapType_38293| Heap@@32) (|PolymorphicMapType_38293_26999_3805#PolymorphicMapType_38293| Heap@@32) (store (|PolymorphicMapType_38293_26999_109012#PolymorphicMapType_38293| Heap@@32) o_36@@0 f_43@@0 v@@5) (|PolymorphicMapType_38293_38353_108835#PolymorphicMapType_38293| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38293 (|PolymorphicMapType_38293_26743_53#PolymorphicMapType_38293| Heap@@32) (|PolymorphicMapType_38293_26746_26747#PolymorphicMapType_38293| Heap@@32) (|PolymorphicMapType_38293_26999_3805#PolymorphicMapType_38293| Heap@@32) (store (|PolymorphicMapType_38293_26999_109012#PolymorphicMapType_38293| Heap@@32) o_36@@0 f_43@@0 v@@5) (|PolymorphicMapType_38293_38353_108835#PolymorphicMapType_38293| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_38293) (o_36@@1 T@Ref) (f_43@@1 T@Field_44439_3805) (v@@6 Int) ) (! (succHeap Heap@@33 (PolymorphicMapType_38293 (|PolymorphicMapType_38293_26743_53#PolymorphicMapType_38293| Heap@@33) (|PolymorphicMapType_38293_26746_26747#PolymorphicMapType_38293| Heap@@33) (store (|PolymorphicMapType_38293_26999_3805#PolymorphicMapType_38293| Heap@@33) o_36@@1 f_43@@1 v@@6) (|PolymorphicMapType_38293_26999_109012#PolymorphicMapType_38293| Heap@@33) (|PolymorphicMapType_38293_38353_108835#PolymorphicMapType_38293| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38293 (|PolymorphicMapType_38293_26743_53#PolymorphicMapType_38293| Heap@@33) (|PolymorphicMapType_38293_26746_26747#PolymorphicMapType_38293| Heap@@33) (store (|PolymorphicMapType_38293_26999_3805#PolymorphicMapType_38293| Heap@@33) o_36@@1 f_43@@1 v@@6) (|PolymorphicMapType_38293_26999_109012#PolymorphicMapType_38293| Heap@@33) (|PolymorphicMapType_38293_38353_108835#PolymorphicMapType_38293| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_38293) (o_36@@2 T@Ref) (f_43@@2 T@Field_38366_38367) (v@@7 T@Ref) ) (! (succHeap Heap@@34 (PolymorphicMapType_38293 (|PolymorphicMapType_38293_26743_53#PolymorphicMapType_38293| Heap@@34) (store (|PolymorphicMapType_38293_26746_26747#PolymorphicMapType_38293| Heap@@34) o_36@@2 f_43@@2 v@@7) (|PolymorphicMapType_38293_26999_3805#PolymorphicMapType_38293| Heap@@34) (|PolymorphicMapType_38293_26999_109012#PolymorphicMapType_38293| Heap@@34) (|PolymorphicMapType_38293_38353_108835#PolymorphicMapType_38293| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38293 (|PolymorphicMapType_38293_26743_53#PolymorphicMapType_38293| Heap@@34) (store (|PolymorphicMapType_38293_26746_26747#PolymorphicMapType_38293| Heap@@34) o_36@@2 f_43@@2 v@@7) (|PolymorphicMapType_38293_26999_3805#PolymorphicMapType_38293| Heap@@34) (|PolymorphicMapType_38293_26999_109012#PolymorphicMapType_38293| Heap@@34) (|PolymorphicMapType_38293_38353_108835#PolymorphicMapType_38293| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_38293) (o_36@@3 T@Ref) (f_43@@3 T@Field_38353_53) (v@@8 Bool) ) (! (succHeap Heap@@35 (PolymorphicMapType_38293 (store (|PolymorphicMapType_38293_26743_53#PolymorphicMapType_38293| Heap@@35) o_36@@3 f_43@@3 v@@8) (|PolymorphicMapType_38293_26746_26747#PolymorphicMapType_38293| Heap@@35) (|PolymorphicMapType_38293_26999_3805#PolymorphicMapType_38293| Heap@@35) (|PolymorphicMapType_38293_26999_109012#PolymorphicMapType_38293| Heap@@35) (|PolymorphicMapType_38293_38353_108835#PolymorphicMapType_38293| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38293 (store (|PolymorphicMapType_38293_26743_53#PolymorphicMapType_38293| Heap@@35) o_36@@3 f_43@@3 v@@8) (|PolymorphicMapType_38293_26746_26747#PolymorphicMapType_38293| Heap@@35) (|PolymorphicMapType_38293_26999_3805#PolymorphicMapType_38293| Heap@@35) (|PolymorphicMapType_38293_26999_109012#PolymorphicMapType_38293| Heap@@35) (|PolymorphicMapType_38293_38353_108835#PolymorphicMapType_38293| Heap@@35)))
)))
(assert (forall ((s@@25 T@Seq_45481) (t@@9 T@Seq_45481) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_27038| s@@25))) (= (|Seq#Drop_27038| (|Seq#Append_45481| s@@25 t@@9) n@@19) (|Seq#Append_45481| (|Seq#Drop_27038| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.484:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_27038| (|Seq#Append_45481| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3683) (t@@10 T@Seq_3683) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3683| s@@26))) (= (|Seq#Drop_3683| (|Seq#Append_3683| s@@26 t@@10) n@@20) (|Seq#Append_3683| (|Seq#Drop_3683| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.484:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3683| (|Seq#Append_3683| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_45481) (n@@21 Int) (i@@31 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@31)) (< i@@31 (|Seq#Length_27038| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@31 n@@21) n@@21) i@@31) (= (|Seq#Index_27038| (|Seq#Drop_27038| s@@27 n@@21) (|Seq#Sub| i@@31 n@@21)) (|Seq#Index_27038| s@@27 i@@31))))
 :qid |stdinbpl.420:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_27038| s@@27 n@@21) (|Seq#Index_27038| s@@27 i@@31))
)))
(assert (forall ((s@@28 T@Seq_3683) (n@@22 Int) (i@@32 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@32)) (< i@@32 (|Seq#Length_3683| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@32 n@@22) n@@22) i@@32) (= (|Seq#Index_3683| (|Seq#Drop_3683| s@@28 n@@22) (|Seq#Sub| i@@32 n@@22)) (|Seq#Index_3683| s@@28 i@@32))))
 :qid |stdinbpl.420:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3683| s@@28 n@@22) (|Seq#Index_3683| s@@28 i@@32))
)))
(assert (forall ((s0@@7 T@Seq_45481) (s1@@7 T@Seq_45481) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_27038|)) (not (= s1@@7 |Seq#Empty_27038|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_27038| s0@@7))) (= (|Seq#Index_27038| (|Seq#Append_45481| s0@@7 s1@@7) n@@23) (|Seq#Index_27038| s0@@7 n@@23)))
 :qid |stdinbpl.360:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_27038| (|Seq#Append_45481| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_27038| s0@@7 n@@23) (|Seq#Append_45481| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3683) (s1@@8 T@Seq_3683) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3683|)) (not (= s1@@8 |Seq#Empty_3683|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3683| s0@@8))) (= (|Seq#Index_3683| (|Seq#Append_3683| s0@@8 s1@@8) n@@24) (|Seq#Index_3683| s0@@8 n@@24)))
 :qid |stdinbpl.360:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3683| (|Seq#Append_3683| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3683| s0@@8 n@@24) (|Seq#Append_3683| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_45481) (s1@@9 T@Seq_45481) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_27038|)) (not (= s1@@9 |Seq#Empty_27038|))) (<= 0 m)) (< m (|Seq#Length_27038| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_27038| s0@@9)) (|Seq#Length_27038| s0@@9)) m) (= (|Seq#Index_27038| (|Seq#Append_45481| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_27038| s0@@9))) (|Seq#Index_27038| s1@@9 m))))
 :qid |stdinbpl.365:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_27038| s1@@9 m) (|Seq#Append_45481| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3683) (s1@@10 T@Seq_3683) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3683|)) (not (= s1@@10 |Seq#Empty_3683|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3683| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3683| s0@@10)) (|Seq#Length_3683| s0@@10)) m@@0) (= (|Seq#Index_3683| (|Seq#Append_3683| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3683| s0@@10))) (|Seq#Index_3683| s1@@10 m@@0))))
 :qid |stdinbpl.365:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3683| s1@@10 m@@0) (|Seq#Append_3683| s0@@10 s1@@10))
)))
(assert (forall ((o_36@@4 T@Ref) (f_41 T@Field_38366_38367) (Heap@@36 T@PolymorphicMapType_38293) ) (!  (=> (select (|PolymorphicMapType_38293_26743_53#PolymorphicMapType_38293| Heap@@36) o_36@@4 $allocated) (select (|PolymorphicMapType_38293_26743_53#PolymorphicMapType_38293| Heap@@36) (select (|PolymorphicMapType_38293_26746_26747#PolymorphicMapType_38293| Heap@@36) o_36@@4 f_41) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_38293_26746_26747#PolymorphicMapType_38293| Heap@@36) o_36@@4 f_41))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_38293) (Mask@@30 T@PolymorphicMapType_38314) (i@@33 Int) (lo@@11 Int) (hi@@23 Int) (step@@7 Int) (vmin@@7 Int) (vmax@@7 Int) (ar@@23 T@Seq_45481) ) (!  (=> (state Heap@@37 Mask@@30) (= (|sum_square'| Heap@@37 i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax@@7 ar@@23) (|sum_square#frame| (FrameFragment_4664 (|sum_square#condqp2| Heap@@37 i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax@@7 ar@@23)) i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax@@7 ar@@23)))
 :qid |stdinbpl.1017:15|
 :skolemid |87|
 :pattern ( (state Heap@@37 Mask@@30) (|sum_square'| Heap@@37 i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax@@7 ar@@23))
)))
(assert (forall ((s@@29 T@Seq_45481) (x@@3 T@Ref) (i@@34 Int) ) (!  (=> (and (and (<= 0 i@@34) (< i@@34 (|Seq#Length_27038| s@@29))) (= (|Seq#Index_27038| s@@29 i@@34) x@@3)) (|Seq#Contains_45481| s@@29 x@@3))
 :qid |stdinbpl.517:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_45481| s@@29 x@@3) (|Seq#Index_27038| s@@29 i@@34))
)))
(assert (forall ((s@@30 T@Seq_3683) (x@@4 Int) (i@@35 Int) ) (!  (=> (and (and (<= 0 i@@35) (< i@@35 (|Seq#Length_3683| s@@30))) (= (|Seq#Index_3683| s@@30 i@@35) x@@4)) (|Seq#Contains_3683| s@@30 x@@4))
 :qid |stdinbpl.517:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3683| s@@30 x@@4) (|Seq#Index_3683| s@@30 i@@35))
)))
(assert (forall ((s0@@11 T@Seq_45481) (s1@@11 T@Seq_45481) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_45481| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_45481| s0@@11 s1@@11))) (not (= (|Seq#Length_27038| s0@@11) (|Seq#Length_27038| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_45481| s0@@11 s1@@11))) (= (|Seq#Length_27038| s0@@11) (|Seq#Length_27038| s1@@11))) (= (|Seq#SkolemDiff_45481| s0@@11 s1@@11) (|Seq#SkolemDiff_45481| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_45481| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_45481| s0@@11 s1@@11) (|Seq#Length_27038| s0@@11))) (not (= (|Seq#Index_27038| s0@@11 (|Seq#SkolemDiff_45481| s0@@11 s1@@11)) (|Seq#Index_27038| s1@@11 (|Seq#SkolemDiff_45481| s0@@11 s1@@11))))))
 :qid |stdinbpl.621:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_45481| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3683) (s1@@12 T@Seq_3683) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3683| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3683| s0@@12 s1@@12))) (not (= (|Seq#Length_3683| s0@@12) (|Seq#Length_3683| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3683| s0@@12 s1@@12))) (= (|Seq#Length_3683| s0@@12) (|Seq#Length_3683| s1@@12))) (= (|Seq#SkolemDiff_3683| s0@@12 s1@@12) (|Seq#SkolemDiff_3683| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3683| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3683| s0@@12 s1@@12) (|Seq#Length_3683| s0@@12))) (not (= (|Seq#Index_3683| s0@@12 (|Seq#SkolemDiff_3683| s0@@12 s1@@12)) (|Seq#Index_3683| s1@@12 (|Seq#SkolemDiff_3683| s0@@12 s1@@12))))))
 :qid |stdinbpl.621:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3683| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_26999_108835) (v_1@@0 T@FrameType) (q T@Field_26999_108835) (w@@0 T@FrameType) (r T@Field_26999_108835) (u T@FrameType) ) (!  (=> (and (InsidePredicate_38353_38353 p@@1 v_1@@0 q w@@0) (InsidePredicate_38353_38353 q w@@0 r u)) (InsidePredicate_38353_38353 p@@1 v_1@@0 r u))
 :qid |stdinbpl.288:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_38353_38353 p@@1 v_1@@0 q w@@0) (InsidePredicate_38353_38353 q w@@0 r u))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_38293) (i@@36 Int) (lo@@12 Int) (hi@@24 Int) (step@@8 Int) (vmin@@8 Int) (vmax@@8 Int) (ar@@24 T@Seq_45481) ) (! (dummyFunction_4112 (|sum_square#triggerStateless| i@@36 lo@@12 hi@@24 step@@8 vmin@@8 vmax@@8 ar@@24))
 :qid |stdinbpl.1001:15|
 :skolemid |84|
 :pattern ( (|sum_square'| Heap@@38 i@@36 lo@@12 hi@@24 step@@8 vmin@@8 vmax@@8 ar@@24))
)))
(assert (forall ((s@@31 T@Seq_45481) ) (!  (=> (= (|Seq#Length_27038| s@@31) 0) (= s@@31 |Seq#Empty_27038|))
 :qid |stdinbpl.324:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_27038| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3683) ) (!  (=> (= (|Seq#Length_3683| s@@32) 0) (= s@@32 |Seq#Empty_3683|))
 :qid |stdinbpl.324:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3683| s@@32))
)))
(assert (forall ((s@@33 T@Seq_45481) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_27038| s@@33 n@@25) |Seq#Empty_27038|))
 :qid |stdinbpl.500:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_27038| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3683) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3683| s@@34 n@@26) |Seq#Empty_3683|))
 :qid |stdinbpl.500:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3683| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@39 T@PolymorphicMapType_38293) (Mask@@31 T@PolymorphicMapType_38314) (i@@37 Int) (lo@@13 Int) (hi@@25 Int) (ar@@25 T@Seq_45481) ) (!  (=> (state Heap@@39 Mask@@31) (= (|sum_array'| Heap@@39 i@@37 lo@@13 hi@@25 ar@@25) (|sum_array#frame| (FrameFragment_4664 (|sum_array#condqp1| Heap@@39 i@@37 lo@@13 hi@@25 ar@@25)) i@@37 lo@@13 hi@@25 ar@@25)))
 :qid |stdinbpl.782:15|
 :skolemid |66|
 :pattern ( (state Heap@@39 Mask@@31) (|sum_array'| Heap@@39 i@@37 lo@@13 hi@@25 ar@@25))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_38293) (Mask@@32 T@PolymorphicMapType_38314) (i@@38 Int) (hi@@26 Int) (ar@@26 T@Seq_45481) (v_2@@12 Int) ) (!  (=> (state Heap@@40 Mask@@32) (= (|count_array'| Heap@@40 i@@38 hi@@26 ar@@26 v_2@@12) (|count_array#frame| (FrameFragment_4664 (|count_array#condqp4| Heap@@40 i@@38 hi@@26 ar@@26 v_2@@12)) i@@38 hi@@26 ar@@26 v_2@@12)))
 :qid |stdinbpl.1634:15|
 :skolemid |133|
 :pattern ( (state Heap@@40 Mask@@32) (|count_array'| Heap@@40 i@@38 hi@@26 ar@@26 v_2@@12))
)))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun i_45 () Int)
(declare-fun len () Int)
(declare-fun cr () T@Seq_45481)
(declare-fun br () T@Seq_45481)
(declare-fun qpRange23 (T@Ref) Bool)
(declare-fun invRecv23 (T@Ref) Int)
(declare-fun QPMask@14 () T@PolymorphicMapType_38314)
(declare-fun QPMask@13 () T@PolymorphicMapType_38314)
(declare-fun PostHeap@0 () T@PolymorphicMapType_38293)
(declare-fun i_43 () Int)
(declare-fun ar@@27 () T@Seq_45481)
(declare-fun qpRange22 (T@Ref) Bool)
(declare-fun invRecv22 (T@Ref) Int)
(declare-fun i_41 () Int)
(declare-fun qpRange34 (T@Ref) Bool)
(declare-fun invRecv34 (T@Ref) Int)
(declare-fun QPMask@9 () T@PolymorphicMapType_38314)
(declare-fun QPMask@8 () T@PolymorphicMapType_38314)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_38293)
(declare-fun neverTriggered25 (Int) Bool)
(declare-fun qpRange25 (T@Ref) Bool)
(declare-fun invRecv25 (T@Ref) Int)
(declare-fun QPMask@10 () T@PolymorphicMapType_38314)
(declare-fun neverTriggered26 (Int) Bool)
(declare-fun qpRange26 (T@Ref) Bool)
(declare-fun invRecv26 (T@Ref) Int)
(declare-fun QPMask@11 () T@PolymorphicMapType_38314)
(declare-fun neverTriggered27 (Int) Bool)
(declare-fun qpRange33 (T@Ref) Bool)
(declare-fun invRecv33 (T@Ref) Int)
(declare-fun QPMask@7 () T@PolymorphicMapType_38314)
(declare-fun qpRange32 (T@Ref) Bool)
(declare-fun invRecv32 (T@Ref) Int)
(declare-fun QPMask@6 () T@PolymorphicMapType_38314)
(declare-fun neverTriggered31 (Int) Bool)
(declare-fun QPMask@5 () T@PolymorphicMapType_38314)
(declare-fun qpRange31 (T@Ref) Bool)
(declare-fun invRecv31 (T@Ref) Int)
(declare-fun Heap@@41 () T@PolymorphicMapType_38293)
(declare-fun j_10_2 () Int)
(declare-fun k_10_2 () Int)
(declare-fun neverTriggered30 (Int) Bool)
(declare-fun QPMask@4 () T@PolymorphicMapType_38314)
(declare-fun qpRange30 (T@Ref) Bool)
(declare-fun invRecv30 (T@Ref) Int)
(declare-fun j_8 () Int)
(declare-fun k_8 () Int)
(declare-fun neverTriggered29 (Int) Bool)
(declare-fun Mask@1 () T@PolymorphicMapType_38314)
(declare-fun qpRange29 (T@Ref) Bool)
(declare-fun invRecv29 (T@Ref) Int)
(declare-fun Mask@0 () T@PolymorphicMapType_38314)
(declare-fun QPMask@3 () T@PolymorphicMapType_38314)
(declare-fun perm@0 () Real)
(declare-fun neverTriggered28 (Int) Bool)
(declare-fun QPMask@2 () T@PolymorphicMapType_38314)
(declare-fun qpRange28 (T@Ref) Bool)
(declare-fun invRecv28 (T@Ref) Int)
(declare-fun j_6_1 () Int)
(declare-fun k_6 () Int)
(declare-fun diz () T@Ref)
(declare-fun current_thread_id () Int)
(declare-fun qpRange21 (T@Ref) Bool)
(declare-fun invRecv21 (T@Ref) Int)
(declare-fun QPMask@1 () T@PolymorphicMapType_38314)
(declare-fun i_36 () Int)
(declare-fun j_20 () Int)
(declare-fun k_28 () Int)
(declare-fun qpRange20 (T@Ref) Bool)
(declare-fun invRecv20 (T@Ref) Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_38314)
(declare-fun i_34 () Int)
(declare-fun j_17 () Int)
(declare-fun k_26 () Int)
(declare-fun qpRange19 (T@Ref) Bool)
(declare-fun invRecv19 (T@Ref) Int)
(declare-fun i_32 () Int)
(declare-fun j_19 () Int)
(declare-fun k_24 () Int)
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
 (=> (= (ControlFlow 0 0) 143) (let ((anon36_correct true))
(let ((anon85_Else_correct  (=> (and (not (and (<= 0 i_45) (< i_45 len))) (= (ControlFlow 0 125) 121)) anon36_correct)))
(let ((anon85_Then_correct  (=> (and (<= 0 i_45) (< i_45 len)) (and (=> (= (ControlFlow 0 122) (- 0 124)) (>= i_45 0)) (=> (>= i_45 0) (and (=> (= (ControlFlow 0 122) (- 0 123)) (< i_45 (|Seq#Length_27038| cr))) (=> (< i_45 (|Seq#Length_27038| cr)) (=> (= (ControlFlow 0 122) 121) anon36_correct))))))))
(let ((anon84_Else_correct  (=> (= (ControlFlow 0 120) (- 0 119)) (forall ((i_11_1 Int) (i_11_2 Int) ) (!  (=> (and (and (and (and (not (= i_11_1 i_11_2)) (and (<= 0 i_11_1) (< i_11_1 len))) (and (<= 0 i_11_2) (< i_11_2 len))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27038| cr i_11_1) (|Seq#Index_27038| cr i_11_2))))
 :qid |stdinbpl.3536:15|
 :skolemid |253|
)))))
(let ((anon82_Else_correct  (and (=> (= (ControlFlow 0 126) (- 0 128)) (forall ((i_9_1 Int) (i_9_2 Int) ) (!  (=> (and (and (and (and (not (= i_9_1 i_9_2)) (and (<= 0 i_9_1) (< i_9_1 len))) (and (<= 0 i_9_2) (< i_9_2 len))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_27038| br i_9_1) (|Seq#Index_27038| br i_9_2))))
 :qid |stdinbpl.3482:15|
 :skolemid |246|
))) (=> (forall ((i_9_1@@0 Int) (i_9_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_9_1@@0 i_9_2@@0)) (and (<= 0 i_9_1@@0) (< i_9_1@@0 len))) (and (<= 0 i_9_2@@0) (< i_9_2@@0 len))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_27038| br i_9_1@@0) (|Seq#Index_27038| br i_9_2@@0))))
 :qid |stdinbpl.3482:15|
 :skolemid |246|
)) (=> (and (forall ((i_9_1@@1 Int) ) (!  (=> (and (and (<= 0 i_9_1@@1) (< i_9_1@@1 len)) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange23 (|Seq#Index_27038| br i_9_1@@1)) (= (invRecv23 (|Seq#Index_27038| br i_9_1@@1)) i_9_1@@1)))
 :qid |stdinbpl.3488:22|
 :skolemid |247|
 :pattern ( (|Seq#Index_27038| br i_9_1@@1))
 :pattern ( (|Seq#Index_27038| br i_9_1@@1))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv23 o_4)) (< (invRecv23 o_4) len)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange23 o_4)) (= (|Seq#Index_27038| br (invRecv23 o_4)) o_4))
 :qid |stdinbpl.3492:22|
 :skolemid |248|
 :pattern ( (invRecv23 o_4))
))) (and (=> (= (ControlFlow 0 126) (- 0 127)) (forall ((i_9_1@@2 Int) ) (!  (=> (and (<= 0 i_9_1@@2) (< i_9_1@@2 len)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3498:15|
 :skolemid |249|
 :pattern ( (|Seq#Index_27038| br i_9_1@@2))
 :pattern ( (|Seq#Index_27038| br i_9_1@@2))
))) (=> (forall ((i_9_1@@3 Int) ) (!  (=> (and (<= 0 i_9_1@@3) (< i_9_1@@3 len)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3498:15|
 :skolemid |249|
 :pattern ( (|Seq#Index_27038| br i_9_1@@3))
 :pattern ( (|Seq#Index_27038| br i_9_1@@3))
)) (=> (and (forall ((i_9_1@@4 Int) ) (!  (=> (and (and (<= 0 i_9_1@@4) (< i_9_1@@4 len)) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= (|Seq#Index_27038| br i_9_1@@4) null)))
 :qid |stdinbpl.3504:22|
 :skolemid |250|
 :pattern ( (|Seq#Index_27038| br i_9_1@@4))
 :pattern ( (|Seq#Index_27038| br i_9_1@@4))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv23 o_4@@0)) (< (invRecv23 o_4@@0) len)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange23 o_4@@0)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (|Seq#Index_27038| br (invRecv23 o_4@@0)) o_4@@0)) (= (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@14) o_4@@0 Ref__Integer_value) (+ (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@13) o_4@@0 Ref__Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (<= 0 (invRecv23 o_4@@0)) (< (invRecv23 o_4@@0) len)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange23 o_4@@0))) (= (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@14) o_4@@0 Ref__Integer_value) (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@13) o_4@@0 Ref__Integer_value))))
 :qid |stdinbpl.3510:22|
 :skolemid |251|
 :pattern ( (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@14) o_4@@0 Ref__Integer_value))
))) (=> (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_38353_53) ) (!  (=> true (= (select (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| QPMask@13) o_4@@1 f_5) (select (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| QPMask@14) o_4@@1 f_5)))
 :qid |stdinbpl.3514:29|
 :skolemid |252|
 :pattern ( (select (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| QPMask@13) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| QPMask@14) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_38366_38367) ) (!  (=> true (= (select (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| QPMask@13) o_4@@2 f_5@@0) (select (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| QPMask@14) o_4@@2 f_5@@0)))
 :qid |stdinbpl.3514:29|
 :skolemid |252|
 :pattern ( (select (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| QPMask@13) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| QPMask@14) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_44439_3805) ) (!  (=> (not (= f_5@@1 Ref__Integer_value)) (= (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@13) o_4@@3 f_5@@1) (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@14) o_4@@3 f_5@@1)))
 :qid |stdinbpl.3514:29|
 :skolemid |252|
 :pattern ( (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@13) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@14) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_26999_108835) ) (!  (=> true (= (select (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| QPMask@13) o_4@@4 f_5@@2) (select (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| QPMask@14) o_4@@4 f_5@@2)))
 :qid |stdinbpl.3514:29|
 :skolemid |252|
 :pattern ( (select (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| QPMask@13) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| QPMask@14) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_26999_108968) ) (!  (=> true (= (select (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| QPMask@13) o_4@@5 f_5@@3) (select (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| QPMask@14) o_4@@5 f_5@@3)))
 :qid |stdinbpl.3514:29|
 :skolemid |252|
 :pattern ( (select (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| QPMask@13) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| QPMask@14) o_4@@5 f_5@@3))
))) (and (and (state PostHeap@0 QPMask@14) (state PostHeap@0 QPMask@14)) (and (= (|Seq#Length_27038| cr) len) (state PostHeap@0 QPMask@14)))) (and (and (=> (= (ControlFlow 0 126) 120) anon84_Else_correct) (=> (= (ControlFlow 0 126) 122) anon85_Then_correct)) (=> (= (ControlFlow 0 126) 125) anon85_Else_correct)))))))))))
(let ((anon32_correct true))
(let ((anon83_Else_correct  (=> (and (not (and (<= 0 i_43) (< i_43 len))) (= (ControlFlow 0 118) 114)) anon32_correct)))
(let ((anon83_Then_correct  (=> (and (<= 0 i_43) (< i_43 len)) (and (=> (= (ControlFlow 0 115) (- 0 117)) (>= i_43 0)) (=> (>= i_43 0) (and (=> (= (ControlFlow 0 115) (- 0 116)) (< i_43 (|Seq#Length_27038| br))) (=> (< i_43 (|Seq#Length_27038| br)) (=> (= (ControlFlow 0 115) 114) anon32_correct))))))))
(let ((anon80_Else_correct  (and (=> (= (ControlFlow 0 129) (- 0 130)) (forall ((i_7_1 Int) (i_7_2 Int) ) (!  (=> (and (and (and (and (not (= i_7_1 i_7_2)) (and (<= 0 i_7_1) (< i_7_1 len))) (and (<= 0 i_7_2) (< i_7_2 len))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27038| ar@@27 i_7_1) (|Seq#Index_27038| ar@@27 i_7_2))))
 :qid |stdinbpl.3434:15|
 :skolemid |240|
))) (=> (forall ((i_7_1@@0 Int) (i_7_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_7_1@@0 i_7_2@@0)) (and (<= 0 i_7_1@@0) (< i_7_1@@0 len))) (and (<= 0 i_7_2@@0) (< i_7_2@@0 len))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27038| ar@@27 i_7_1@@0) (|Seq#Index_27038| ar@@27 i_7_2@@0))))
 :qid |stdinbpl.3434:15|
 :skolemid |240|
)) (=> (and (and (forall ((i_7_1@@1 Int) ) (!  (=> (and (and (<= 0 i_7_1@@1) (< i_7_1@@1 len)) (< NoPerm FullPerm)) (and (qpRange22 (|Seq#Index_27038| ar@@27 i_7_1@@1)) (= (invRecv22 (|Seq#Index_27038| ar@@27 i_7_1@@1)) i_7_1@@1)))
 :qid |stdinbpl.3440:22|
 :skolemid |241|
 :pattern ( (|Seq#Index_27038| ar@@27 i_7_1@@1))
 :pattern ( (|Seq#Index_27038| ar@@27 i_7_1@@1))
)) (forall ((o_4@@6 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv22 o_4@@6)) (< (invRecv22 o_4@@6) len)) (< NoPerm FullPerm)) (qpRange22 o_4@@6)) (= (|Seq#Index_27038| ar@@27 (invRecv22 o_4@@6)) o_4@@6))
 :qid |stdinbpl.3444:22|
 :skolemid |242|
 :pattern ( (invRecv22 o_4@@6))
))) (and (forall ((i_7_1@@2 Int) ) (!  (=> (and (<= 0 i_7_1@@2) (< i_7_1@@2 len)) (not (= (|Seq#Index_27038| ar@@27 i_7_1@@2) null)))
 :qid |stdinbpl.3450:22|
 :skolemid |243|
 :pattern ( (|Seq#Index_27038| ar@@27 i_7_1@@2))
 :pattern ( (|Seq#Index_27038| ar@@27 i_7_1@@2))
)) (forall ((o_4@@7 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv22 o_4@@7)) (< (invRecv22 o_4@@7) len)) (< NoPerm FullPerm)) (qpRange22 o_4@@7)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_27038| ar@@27 (invRecv22 o_4@@7)) o_4@@7)) (= (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@13) o_4@@7 Ref__Integer_value) (+ (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| ZeroMask) o_4@@7 Ref__Integer_value) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv22 o_4@@7)) (< (invRecv22 o_4@@7) len)) (< NoPerm FullPerm)) (qpRange22 o_4@@7))) (= (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@13) o_4@@7 Ref__Integer_value) (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| ZeroMask) o_4@@7 Ref__Integer_value))))
 :qid |stdinbpl.3456:22|
 :skolemid |244|
 :pattern ( (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@13) o_4@@7 Ref__Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_4@@8 T@Ref) (f_5@@4 T@Field_38353_53) ) (!  (=> true (= (select (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| ZeroMask) o_4@@8 f_5@@4) (select (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| QPMask@13) o_4@@8 f_5@@4)))
 :qid |stdinbpl.3460:29|
 :skolemid |245|
 :pattern ( (select (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| ZeroMask) o_4@@8 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| QPMask@13) o_4@@8 f_5@@4))
)) (forall ((o_4@@9 T@Ref) (f_5@@5 T@Field_38366_38367) ) (!  (=> true (= (select (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| ZeroMask) o_4@@9 f_5@@5) (select (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| QPMask@13) o_4@@9 f_5@@5)))
 :qid |stdinbpl.3460:29|
 :skolemid |245|
 :pattern ( (select (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| ZeroMask) o_4@@9 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| QPMask@13) o_4@@9 f_5@@5))
))) (forall ((o_4@@10 T@Ref) (f_5@@6 T@Field_44439_3805) ) (!  (=> (not (= f_5@@6 Ref__Integer_value)) (= (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| ZeroMask) o_4@@10 f_5@@6) (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@13) o_4@@10 f_5@@6)))
 :qid |stdinbpl.3460:29|
 :skolemid |245|
 :pattern ( (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| ZeroMask) o_4@@10 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@13) o_4@@10 f_5@@6))
))) (forall ((o_4@@11 T@Ref) (f_5@@7 T@Field_26999_108835) ) (!  (=> true (= (select (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| ZeroMask) o_4@@11 f_5@@7) (select (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| QPMask@13) o_4@@11 f_5@@7)))
 :qid |stdinbpl.3460:29|
 :skolemid |245|
 :pattern ( (select (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| ZeroMask) o_4@@11 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| QPMask@13) o_4@@11 f_5@@7))
))) (forall ((o_4@@12 T@Ref) (f_5@@8 T@Field_26999_108968) ) (!  (=> true (= (select (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| ZeroMask) o_4@@12 f_5@@8) (select (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| QPMask@13) o_4@@12 f_5@@8)))
 :qid |stdinbpl.3460:29|
 :skolemid |245|
 :pattern ( (select (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| ZeroMask) o_4@@12 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| QPMask@13) o_4@@12 f_5@@8))
))) (and (and (state PostHeap@0 QPMask@13) (state PostHeap@0 QPMask@13)) (and (= (|Seq#Length_27038| br) len) (state PostHeap@0 QPMask@13)))) (and (and (=> (= (ControlFlow 0 129) 126) anon82_Else_correct) (=> (= (ControlFlow 0 129) 115) anon83_Then_correct)) (=> (= (ControlFlow 0 129) 118) anon83_Else_correct))))))))
(let ((anon28_correct true))
(let ((anon81_Else_correct  (=> (and (not (and (<= 0 i_41) (< i_41 len))) (= (ControlFlow 0 113) 109)) anon28_correct)))
(let ((anon81_Then_correct  (=> (and (<= 0 i_41) (< i_41 len)) (and (=> (= (ControlFlow 0 110) (- 0 112)) (>= i_41 0)) (=> (>= i_41 0) (and (=> (= (ControlFlow 0 110) (- 0 111)) (< i_41 (|Seq#Length_27038| ar@@27))) (=> (< i_41 (|Seq#Length_27038| ar@@27)) (=> (= (ControlFlow 0 110) 109) anon28_correct))))))))
(let ((anon79_Then_correct  (=> (state PostHeap@0 ZeroMask) (=> (and (= (|Seq#Length_27038| ar@@27) len) (state PostHeap@0 ZeroMask)) (and (and (=> (= (ControlFlow 0 131) 129) anon80_Else_correct) (=> (= (ControlFlow 0 131) 110) anon81_Then_correct)) (=> (= (ControlFlow 0 131) 113) anon81_Else_correct))))))
(let ((anon66_correct  (and (=> (= (ControlFlow 0 50) (- 0 60)) (forall ((i_21 Int) (i_21_1 Int) ) (!  (=> (and (and (and (and (not (= i_21 i_21_1)) (and (<= 0 i_21) (< i_21 len))) (and (<= 0 i_21_1) (< i_21_1 len))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27038| cr i_21) (|Seq#Index_27038| cr i_21_1))))
 :qid |stdinbpl.3927:17|
 :skolemid |302|
))) (=> (forall ((i_21@@0 Int) (i_21_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_21@@0 i_21_1@@0)) (and (<= 0 i_21@@0) (< i_21@@0 len))) (and (<= 0 i_21_1@@0) (< i_21_1@@0 len))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27038| cr i_21@@0) (|Seq#Index_27038| cr i_21_1@@0))))
 :qid |stdinbpl.3927:17|
 :skolemid |302|
)) (=> (and (and (forall ((i_21@@1 Int) ) (!  (=> (and (and (<= 0 i_21@@1) (< i_21@@1 len)) (< NoPerm FullPerm)) (and (qpRange34 (|Seq#Index_27038| cr i_21@@1)) (= (invRecv34 (|Seq#Index_27038| cr i_21@@1)) i_21@@1)))
 :qid |stdinbpl.3933:24|
 :skolemid |303|
 :pattern ( (|Seq#Index_27038| cr i_21@@1))
 :pattern ( (|Seq#Index_27038| cr i_21@@1))
)) (forall ((o_4@@13 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv34 o_4@@13)) (< (invRecv34 o_4@@13) len)) (< NoPerm FullPerm)) (qpRange34 o_4@@13)) (= (|Seq#Index_27038| cr (invRecv34 o_4@@13)) o_4@@13))
 :qid |stdinbpl.3937:24|
 :skolemid |304|
 :pattern ( (invRecv34 o_4@@13))
))) (and (forall ((i_21@@2 Int) ) (!  (=> (and (<= 0 i_21@@2) (< i_21@@2 len)) (not (= (|Seq#Index_27038| cr i_21@@2) null)))
 :qid |stdinbpl.3943:24|
 :skolemid |305|
 :pattern ( (|Seq#Index_27038| cr i_21@@2))
 :pattern ( (|Seq#Index_27038| cr i_21@@2))
)) (forall ((o_4@@14 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv34 o_4@@14)) (< (invRecv34 o_4@@14) len)) (< NoPerm FullPerm)) (qpRange34 o_4@@14)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_27038| cr (invRecv34 o_4@@14)) o_4@@14)) (= (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@9) o_4@@14 Ref__Integer_value) (+ (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@8) o_4@@14 Ref__Integer_value) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv34 o_4@@14)) (< (invRecv34 o_4@@14) len)) (< NoPerm FullPerm)) (qpRange34 o_4@@14))) (= (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@9) o_4@@14 Ref__Integer_value) (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@8) o_4@@14 Ref__Integer_value))))
 :qid |stdinbpl.3949:24|
 :skolemid |306|
 :pattern ( (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@9) o_4@@14 Ref__Integer_value))
)))) (=> (and (and (and (and (and (and (forall ((o_4@@15 T@Ref) (f_5@@9 T@Field_38353_53) ) (!  (=> true (= (select (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| QPMask@8) o_4@@15 f_5@@9) (select (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| QPMask@9) o_4@@15 f_5@@9)))
 :qid |stdinbpl.3953:31|
 :skolemid |307|
 :pattern ( (select (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| QPMask@8) o_4@@15 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| QPMask@9) o_4@@15 f_5@@9))
)) (forall ((o_4@@16 T@Ref) (f_5@@10 T@Field_38366_38367) ) (!  (=> true (= (select (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| QPMask@8) o_4@@16 f_5@@10) (select (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| QPMask@9) o_4@@16 f_5@@10)))
 :qid |stdinbpl.3953:31|
 :skolemid |307|
 :pattern ( (select (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| QPMask@8) o_4@@16 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| QPMask@9) o_4@@16 f_5@@10))
))) (forall ((o_4@@17 T@Ref) (f_5@@11 T@Field_44439_3805) ) (!  (=> (not (= f_5@@11 Ref__Integer_value)) (= (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@8) o_4@@17 f_5@@11) (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@9) o_4@@17 f_5@@11)))
 :qid |stdinbpl.3953:31|
 :skolemid |307|
 :pattern ( (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@8) o_4@@17 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@9) o_4@@17 f_5@@11))
))) (forall ((o_4@@18 T@Ref) (f_5@@12 T@Field_26999_108835) ) (!  (=> true (= (select (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| QPMask@8) o_4@@18 f_5@@12) (select (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| QPMask@9) o_4@@18 f_5@@12)))
 :qid |stdinbpl.3953:31|
 :skolemid |307|
 :pattern ( (select (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| QPMask@8) o_4@@18 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| QPMask@9) o_4@@18 f_5@@12))
))) (forall ((o_4@@19 T@Ref) (f_5@@13 T@Field_26999_108968) ) (!  (=> true (= (select (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| QPMask@8) o_4@@19 f_5@@13) (select (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| QPMask@9) o_4@@19 f_5@@13)))
 :qid |stdinbpl.3953:31|
 :skolemid |307|
 :pattern ( (select (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| QPMask@8) o_4@@19 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| QPMask@9) o_4@@19 f_5@@13))
))) (state ExhaleHeap@0 QPMask@9)) (and (state ExhaleHeap@0 QPMask@9) (state ExhaleHeap@0 QPMask@9))) (and (=> (= (ControlFlow 0 50) (- 0 59)) (= (|Seq#Length_27038| ar@@27) len)) (=> (= (|Seq#Length_27038| ar@@27) len) (and (=> (= (ControlFlow 0 50) (- 0 58)) (forall ((i_12_1 Int) (i_12_2 Int) ) (!  (=> (and (and (and (and (not (= i_12_1 i_12_2)) (and (<= 0 i_12_1) (< i_12_1 len))) (and (<= 0 i_12_2) (< i_12_2 len))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27038| ar@@27 i_12_1) (|Seq#Index_27038| ar@@27 i_12_2))))
 :qid |stdinbpl.3974:17|
 :skolemid |308|
 :pattern ( (neverTriggered25 i_12_1) (neverTriggered25 i_12_2))
))) (=> (forall ((i_12_1@@0 Int) (i_12_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_12_1@@0 i_12_2@@0)) (and (<= 0 i_12_1@@0) (< i_12_1@@0 len))) (and (<= 0 i_12_2@@0) (< i_12_2@@0 len))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27038| ar@@27 i_12_1@@0) (|Seq#Index_27038| ar@@27 i_12_2@@0))))
 :qid |stdinbpl.3974:17|
 :skolemid |308|
 :pattern ( (neverTriggered25 i_12_1@@0) (neverTriggered25 i_12_2@@0))
)) (and (=> (= (ControlFlow 0 50) (- 0 57)) (forall ((i_12_1@@1 Int) ) (!  (=> (and (<= 0 i_12_1@@1) (< i_12_1@@1 len)) (>= (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@9) (|Seq#Index_27038| ar@@27 i_12_1@@1) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.3981:17|
 :skolemid |309|
 :pattern ( (|Seq#Index_27038| ar@@27 i_12_1@@1))
 :pattern ( (|Seq#Index_27038| ar@@27 i_12_1@@1))
))) (=> (forall ((i_12_1@@2 Int) ) (!  (=> (and (<= 0 i_12_1@@2) (< i_12_1@@2 len)) (>= (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@9) (|Seq#Index_27038| ar@@27 i_12_1@@2) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.3981:17|
 :skolemid |309|
 :pattern ( (|Seq#Index_27038| ar@@27 i_12_1@@2))
 :pattern ( (|Seq#Index_27038| ar@@27 i_12_1@@2))
)) (=> (forall ((i_12_1@@3 Int) ) (!  (=> (and (and (<= 0 i_12_1@@3) (< i_12_1@@3 len)) (< NoPerm FullPerm)) (and (qpRange25 (|Seq#Index_27038| ar@@27 i_12_1@@3)) (= (invRecv25 (|Seq#Index_27038| ar@@27 i_12_1@@3)) i_12_1@@3)))
 :qid |stdinbpl.3987:22|
 :skolemid |310|
 :pattern ( (|Seq#Index_27038| ar@@27 i_12_1@@3))
 :pattern ( (|Seq#Index_27038| ar@@27 i_12_1@@3))
)) (=> (and (forall ((o_4@@20 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv25 o_4@@20)) (< (invRecv25 o_4@@20) len)) (and (< NoPerm FullPerm) (qpRange25 o_4@@20))) (= (|Seq#Index_27038| ar@@27 (invRecv25 o_4@@20)) o_4@@20))
 :qid |stdinbpl.3991:22|
 :skolemid |311|
 :pattern ( (invRecv25 o_4@@20))
)) (forall ((o_4@@21 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv25 o_4@@21)) (< (invRecv25 o_4@@21) len)) (and (< NoPerm FullPerm) (qpRange25 o_4@@21))) (and (= (|Seq#Index_27038| ar@@27 (invRecv25 o_4@@21)) o_4@@21) (= (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@10) o_4@@21 Ref__Integer_value) (- (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@9) o_4@@21 Ref__Integer_value) FullPerm)))) (=> (not (and (and (<= 0 (invRecv25 o_4@@21)) (< (invRecv25 o_4@@21) len)) (and (< NoPerm FullPerm) (qpRange25 o_4@@21)))) (= (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@10) o_4@@21 Ref__Integer_value) (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@9) o_4@@21 Ref__Integer_value))))
 :qid |stdinbpl.3997:22|
 :skolemid |312|
 :pattern ( (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@10) o_4@@21 Ref__Integer_value))
))) (=> (and (and (and (and (forall ((o_4@@22 T@Ref) (f_5@@14 T@Field_38353_53) ) (!  (=> true (= (select (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| QPMask@9) o_4@@22 f_5@@14) (select (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| QPMask@10) o_4@@22 f_5@@14)))
 :qid |stdinbpl.4003:29|
 :skolemid |313|
 :pattern ( (select (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| QPMask@10) o_4@@22 f_5@@14))
)) (forall ((o_4@@23 T@Ref) (f_5@@15 T@Field_38366_38367) ) (!  (=> true (= (select (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| QPMask@9) o_4@@23 f_5@@15) (select (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| QPMask@10) o_4@@23 f_5@@15)))
 :qid |stdinbpl.4003:29|
 :skolemid |313|
 :pattern ( (select (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| QPMask@10) o_4@@23 f_5@@15))
))) (forall ((o_4@@24 T@Ref) (f_5@@16 T@Field_44439_3805) ) (!  (=> (not (= f_5@@16 Ref__Integer_value)) (= (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@9) o_4@@24 f_5@@16) (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@10) o_4@@24 f_5@@16)))
 :qid |stdinbpl.4003:29|
 :skolemid |313|
 :pattern ( (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@10) o_4@@24 f_5@@16))
))) (forall ((o_4@@25 T@Ref) (f_5@@17 T@Field_26999_108835) ) (!  (=> true (= (select (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| QPMask@9) o_4@@25 f_5@@17) (select (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| QPMask@10) o_4@@25 f_5@@17)))
 :qid |stdinbpl.4003:29|
 :skolemid |313|
 :pattern ( (select (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| QPMask@10) o_4@@25 f_5@@17))
))) (forall ((o_4@@26 T@Ref) (f_5@@18 T@Field_26999_108968) ) (!  (=> true (= (select (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| QPMask@9) o_4@@26 f_5@@18) (select (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| QPMask@10) o_4@@26 f_5@@18)))
 :qid |stdinbpl.4003:29|
 :skolemid |313|
 :pattern ( (select (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| QPMask@10) o_4@@26 f_5@@18))
))) (and (=> (= (ControlFlow 0 50) (- 0 56)) (= (|Seq#Length_27038| br) len)) (=> (= (|Seq#Length_27038| br) len) (and (=> (= (ControlFlow 0 50) (- 0 55)) (forall ((i_13_1 Int) ) (!  (=> (and (and (<= 0 i_13_1) (< i_13_1 len)) (dummyFunction_4112 (select (|PolymorphicMapType_38293_26999_3805#PolymorphicMapType_38293| ExhaleHeap@0) (|Seq#Index_27038| br i_13_1) Ref__Integer_value))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4014:17|
 :skolemid |314|
 :pattern ( (|Seq#Index_27038| br i_13_1))
 :pattern ( (|Seq#Index_27038| br i_13_1))
))) (=> (forall ((i_13_1@@0 Int) ) (!  (=> (and (and (<= 0 i_13_1@@0) (< i_13_1@@0 len)) (dummyFunction_4112 (select (|PolymorphicMapType_38293_26999_3805#PolymorphicMapType_38293| ExhaleHeap@0) (|Seq#Index_27038| br i_13_1@@0) Ref__Integer_value))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4014:17|
 :skolemid |314|
 :pattern ( (|Seq#Index_27038| br i_13_1@@0))
 :pattern ( (|Seq#Index_27038| br i_13_1@@0))
)) (and (=> (= (ControlFlow 0 50) (- 0 54)) (forall ((i_13_1@@1 Int) (i_13_2 Int) ) (!  (=> (and (and (and (and (not (= i_13_1@@1 i_13_2)) (and (<= 0 i_13_1@@1) (< i_13_1@@1 len))) (and (<= 0 i_13_2) (< i_13_2 len))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_27038| br i_13_1@@1) (|Seq#Index_27038| br i_13_2))))
 :qid |stdinbpl.4021:17|
 :skolemid |315|
 :pattern ( (neverTriggered26 i_13_1@@1) (neverTriggered26 i_13_2))
))) (=> (forall ((i_13_1@@2 Int) (i_13_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_13_1@@2 i_13_2@@0)) (and (<= 0 i_13_1@@2) (< i_13_1@@2 len))) (and (<= 0 i_13_2@@0) (< i_13_2@@0 len))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_27038| br i_13_1@@2) (|Seq#Index_27038| br i_13_2@@0))))
 :qid |stdinbpl.4021:17|
 :skolemid |315|
 :pattern ( (neverTriggered26 i_13_1@@2) (neverTriggered26 i_13_2@@0))
)) (and (=> (= (ControlFlow 0 50) (- 0 53)) (forall ((i_13_1@@3 Int) ) (!  (=> (and (<= 0 i_13_1@@3) (< i_13_1@@3 len)) (>= (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@10) (|Seq#Index_27038| br i_13_1@@3) Ref__Integer_value) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.4028:17|
 :skolemid |316|
 :pattern ( (|Seq#Index_27038| br i_13_1@@3))
 :pattern ( (|Seq#Index_27038| br i_13_1@@3))
))) (=> (forall ((i_13_1@@4 Int) ) (!  (=> (and (<= 0 i_13_1@@4) (< i_13_1@@4 len)) (>= (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@10) (|Seq#Index_27038| br i_13_1@@4) Ref__Integer_value) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.4028:17|
 :skolemid |316|
 :pattern ( (|Seq#Index_27038| br i_13_1@@4))
 :pattern ( (|Seq#Index_27038| br i_13_1@@4))
)) (=> (forall ((i_13_1@@5 Int) ) (!  (=> (and (and (<= 0 i_13_1@@5) (< i_13_1@@5 len)) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange26 (|Seq#Index_27038| br i_13_1@@5)) (= (invRecv26 (|Seq#Index_27038| br i_13_1@@5)) i_13_1@@5)))
 :qid |stdinbpl.4034:22|
 :skolemid |317|
 :pattern ( (|Seq#Index_27038| br i_13_1@@5))
 :pattern ( (|Seq#Index_27038| br i_13_1@@5))
)) (=> (and (forall ((o_4@@27 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv26 o_4@@27)) (< (invRecv26 o_4@@27) len)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange26 o_4@@27))) (= (|Seq#Index_27038| br (invRecv26 o_4@@27)) o_4@@27))
 :qid |stdinbpl.4038:22|
 :skolemid |318|
 :pattern ( (invRecv26 o_4@@27))
)) (forall ((o_4@@28 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv26 o_4@@28)) (< (invRecv26 o_4@@28) len)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange26 o_4@@28))) (and (= (|Seq#Index_27038| br (invRecv26 o_4@@28)) o_4@@28) (= (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@11) o_4@@28 Ref__Integer_value) (- (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@10) o_4@@28 Ref__Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (<= 0 (invRecv26 o_4@@28)) (< (invRecv26 o_4@@28) len)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange26 o_4@@28)))) (= (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@11) o_4@@28 Ref__Integer_value) (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@10) o_4@@28 Ref__Integer_value))))
 :qid |stdinbpl.4044:22|
 :skolemid |319|
 :pattern ( (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@11) o_4@@28 Ref__Integer_value))
))) (=> (and (and (and (and (forall ((o_4@@29 T@Ref) (f_5@@19 T@Field_38353_53) ) (!  (=> true (= (select (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| QPMask@10) o_4@@29 f_5@@19) (select (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| QPMask@11) o_4@@29 f_5@@19)))
 :qid |stdinbpl.4050:29|
 :skolemid |320|
 :pattern ( (select (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| QPMask@11) o_4@@29 f_5@@19))
)) (forall ((o_4@@30 T@Ref) (f_5@@20 T@Field_38366_38367) ) (!  (=> true (= (select (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| QPMask@10) o_4@@30 f_5@@20) (select (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| QPMask@11) o_4@@30 f_5@@20)))
 :qid |stdinbpl.4050:29|
 :skolemid |320|
 :pattern ( (select (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| QPMask@11) o_4@@30 f_5@@20))
))) (forall ((o_4@@31 T@Ref) (f_5@@21 T@Field_44439_3805) ) (!  (=> (not (= f_5@@21 Ref__Integer_value)) (= (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@10) o_4@@31 f_5@@21) (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@11) o_4@@31 f_5@@21)))
 :qid |stdinbpl.4050:29|
 :skolemid |320|
 :pattern ( (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@11) o_4@@31 f_5@@21))
))) (forall ((o_4@@32 T@Ref) (f_5@@22 T@Field_26999_108835) ) (!  (=> true (= (select (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| QPMask@10) o_4@@32 f_5@@22) (select (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| QPMask@11) o_4@@32 f_5@@22)))
 :qid |stdinbpl.4050:29|
 :skolemid |320|
 :pattern ( (select (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| QPMask@11) o_4@@32 f_5@@22))
))) (forall ((o_4@@33 T@Ref) (f_5@@23 T@Field_26999_108968) ) (!  (=> true (= (select (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| QPMask@10) o_4@@33 f_5@@23) (select (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| QPMask@11) o_4@@33 f_5@@23)))
 :qid |stdinbpl.4050:29|
 :skolemid |320|
 :pattern ( (select (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| QPMask@11) o_4@@33 f_5@@23))
))) (and (=> (= (ControlFlow 0 50) (- 0 52)) (= (|Seq#Length_27038| cr) len)) (=> (= (|Seq#Length_27038| cr) len) (and (=> (= (ControlFlow 0 50) (- 0 51)) (forall ((i_14_1 Int) (i_14_2 Int) ) (!  (=> (and (and (and (and (not (= i_14_1 i_14_2)) (and (<= 0 i_14_1) (< i_14_1 len))) (and (<= 0 i_14_2) (< i_14_2 len))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27038| cr i_14_1) (|Seq#Index_27038| cr i_14_2))))
 :qid |stdinbpl.4064:17|
 :skolemid |321|
 :pattern ( (neverTriggered27 i_14_1) (neverTriggered27 i_14_2))
))) (=> (forall ((i_14_1@@0 Int) (i_14_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_14_1@@0 i_14_2@@0)) (and (<= 0 i_14_1@@0) (< i_14_1@@0 len))) (and (<= 0 i_14_2@@0) (< i_14_2@@0 len))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27038| cr i_14_1@@0) (|Seq#Index_27038| cr i_14_2@@0))))
 :qid |stdinbpl.4064:17|
 :skolemid |321|
 :pattern ( (neverTriggered27 i_14_1@@0) (neverTriggered27 i_14_2@@0))
)) (=> (= (ControlFlow 0 50) (- 0 49)) (forall ((i_14_1@@1 Int) ) (!  (=> (and (<= 0 i_14_1@@1) (< i_14_1@@1 len)) (>= (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@11) (|Seq#Index_27038| cr i_14_1@@1) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.4071:17|
 :skolemid |322|
 :pattern ( (|Seq#Index_27038| cr i_14_1@@1))
 :pattern ( (|Seq#Index_27038| cr i_14_1@@1))
)))))))))))))))))))))))))))))))))
(let ((anon99_Else_correct  (=> (and (<= len 0) (= (ControlFlow 0 62) 50)) anon66_correct)))
(let ((anon99_Then_correct  (=> (< 0 len) (=> (and (= (|Seq#Length_27038| cr) len) (= (ControlFlow 0 61) 50)) anon66_correct))))
(let ((anon64_correct  (and (=> (= (ControlFlow 0 63) (- 0 65)) (forall ((i_20_1 Int) (i_20_2 Int) ) (!  (=> (and (and (and (and (not (= i_20_1 i_20_2)) (and (<= 0 i_20_1) (< i_20_1 len))) (and (<= 0 i_20_2) (< i_20_2 len))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_27038| br i_20_1) (|Seq#Index_27038| br i_20_2))))
 :qid |stdinbpl.3884:17|
 :skolemid |295|
))) (=> (forall ((i_20_1@@0 Int) (i_20_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_20_1@@0 i_20_2@@0)) (and (<= 0 i_20_1@@0) (< i_20_1@@0 len))) (and (<= 0 i_20_2@@0) (< i_20_2@@0 len))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_27038| br i_20_1@@0) (|Seq#Index_27038| br i_20_2@@0))))
 :qid |stdinbpl.3884:17|
 :skolemid |295|
)) (=> (and (forall ((i_20_1@@1 Int) ) (!  (=> (and (and (<= 0 i_20_1@@1) (< i_20_1@@1 len)) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange33 (|Seq#Index_27038| br i_20_1@@1)) (= (invRecv33 (|Seq#Index_27038| br i_20_1@@1)) i_20_1@@1)))
 :qid |stdinbpl.3890:24|
 :skolemid |296|
 :pattern ( (|Seq#Index_27038| br i_20_1@@1))
 :pattern ( (|Seq#Index_27038| br i_20_1@@1))
)) (forall ((o_4@@34 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv33 o_4@@34)) (< (invRecv33 o_4@@34) len)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange33 o_4@@34)) (= (|Seq#Index_27038| br (invRecv33 o_4@@34)) o_4@@34))
 :qid |stdinbpl.3894:24|
 :skolemid |297|
 :pattern ( (invRecv33 o_4@@34))
))) (and (=> (= (ControlFlow 0 63) (- 0 64)) (forall ((i_20_1@@2 Int) ) (!  (=> (and (<= 0 i_20_1@@2) (< i_20_1@@2 len)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3900:17|
 :skolemid |298|
 :pattern ( (|Seq#Index_27038| br i_20_1@@2))
 :pattern ( (|Seq#Index_27038| br i_20_1@@2))
))) (=> (forall ((i_20_1@@3 Int) ) (!  (=> (and (<= 0 i_20_1@@3) (< i_20_1@@3 len)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3900:17|
 :skolemid |298|
 :pattern ( (|Seq#Index_27038| br i_20_1@@3))
 :pattern ( (|Seq#Index_27038| br i_20_1@@3))
)) (=> (and (forall ((i_20_1@@4 Int) ) (!  (=> (and (and (<= 0 i_20_1@@4) (< i_20_1@@4 len)) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= (|Seq#Index_27038| br i_20_1@@4) null)))
 :qid |stdinbpl.3906:24|
 :skolemid |299|
 :pattern ( (|Seq#Index_27038| br i_20_1@@4))
 :pattern ( (|Seq#Index_27038| br i_20_1@@4))
)) (forall ((o_4@@35 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv33 o_4@@35)) (< (invRecv33 o_4@@35) len)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange33 o_4@@35)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (|Seq#Index_27038| br (invRecv33 o_4@@35)) o_4@@35)) (= (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@8) o_4@@35 Ref__Integer_value) (+ (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@7) o_4@@35 Ref__Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (<= 0 (invRecv33 o_4@@35)) (< (invRecv33 o_4@@35) len)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange33 o_4@@35))) (= (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@8) o_4@@35 Ref__Integer_value) (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@7) o_4@@35 Ref__Integer_value))))
 :qid |stdinbpl.3912:24|
 :skolemid |300|
 :pattern ( (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@8) o_4@@35 Ref__Integer_value))
))) (=> (and (and (and (and (and (forall ((o_4@@36 T@Ref) (f_5@@24 T@Field_38353_53) ) (!  (=> true (= (select (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| QPMask@7) o_4@@36 f_5@@24) (select (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| QPMask@8) o_4@@36 f_5@@24)))
 :qid |stdinbpl.3916:31|
 :skolemid |301|
 :pattern ( (select (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| QPMask@7) o_4@@36 f_5@@24))
 :pattern ( (select (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| QPMask@8) o_4@@36 f_5@@24))
)) (forall ((o_4@@37 T@Ref) (f_5@@25 T@Field_38366_38367) ) (!  (=> true (= (select (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| QPMask@7) o_4@@37 f_5@@25) (select (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| QPMask@8) o_4@@37 f_5@@25)))
 :qid |stdinbpl.3916:31|
 :skolemid |301|
 :pattern ( (select (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| QPMask@7) o_4@@37 f_5@@25))
 :pattern ( (select (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| QPMask@8) o_4@@37 f_5@@25))
))) (forall ((o_4@@38 T@Ref) (f_5@@26 T@Field_44439_3805) ) (!  (=> (not (= f_5@@26 Ref__Integer_value)) (= (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@7) o_4@@38 f_5@@26) (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@8) o_4@@38 f_5@@26)))
 :qid |stdinbpl.3916:31|
 :skolemid |301|
 :pattern ( (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@7) o_4@@38 f_5@@26))
 :pattern ( (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@8) o_4@@38 f_5@@26))
))) (forall ((o_4@@39 T@Ref) (f_5@@27 T@Field_26999_108835) ) (!  (=> true (= (select (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| QPMask@7) o_4@@39 f_5@@27) (select (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| QPMask@8) o_4@@39 f_5@@27)))
 :qid |stdinbpl.3916:31|
 :skolemid |301|
 :pattern ( (select (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| QPMask@7) o_4@@39 f_5@@27))
 :pattern ( (select (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| QPMask@8) o_4@@39 f_5@@27))
))) (forall ((o_4@@40 T@Ref) (f_5@@28 T@Field_26999_108968) ) (!  (=> true (= (select (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| QPMask@7) o_4@@40 f_5@@28) (select (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| QPMask@8) o_4@@40 f_5@@28)))
 :qid |stdinbpl.3916:31|
 :skolemid |301|
 :pattern ( (select (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| QPMask@7) o_4@@40 f_5@@28))
 :pattern ( (select (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| QPMask@8) o_4@@40 f_5@@28))
))) (state ExhaleHeap@0 QPMask@8)) (and (=> (= (ControlFlow 0 63) 61) anon99_Then_correct) (=> (= (ControlFlow 0 63) 62) anon99_Else_correct)))))))))))
(let ((anon98_Else_correct  (=> (and (<= len 0) (= (ControlFlow 0 67) 63)) anon64_correct)))
(let ((anon98_Then_correct  (=> (< 0 len) (=> (and (= (|Seq#Length_27038| br) len) (= (ControlFlow 0 66) 63)) anon64_correct))))
(let ((anon62_correct  (and (=> (= (ControlFlow 0 68) (- 0 69)) (forall ((i_19 Int) (i_19_1 Int) ) (!  (=> (and (and (and (and (not (= i_19 i_19_1)) (and (<= 0 i_19) (< i_19 len))) (and (<= 0 i_19_1) (< i_19_1 len))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27038| ar@@27 i_19) (|Seq#Index_27038| ar@@27 i_19_1))))
 :qid |stdinbpl.3847:17|
 :skolemid |289|
))) (=> (forall ((i_19@@0 Int) (i_19_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_19@@0 i_19_1@@0)) (and (<= 0 i_19@@0) (< i_19@@0 len))) (and (<= 0 i_19_1@@0) (< i_19_1@@0 len))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27038| ar@@27 i_19@@0) (|Seq#Index_27038| ar@@27 i_19_1@@0))))
 :qid |stdinbpl.3847:17|
 :skolemid |289|
)) (=> (and (and (forall ((i_19@@1 Int) ) (!  (=> (and (and (<= 0 i_19@@1) (< i_19@@1 len)) (< NoPerm FullPerm)) (and (qpRange32 (|Seq#Index_27038| ar@@27 i_19@@1)) (= (invRecv32 (|Seq#Index_27038| ar@@27 i_19@@1)) i_19@@1)))
 :qid |stdinbpl.3853:24|
 :skolemid |290|
 :pattern ( (|Seq#Index_27038| ar@@27 i_19@@1))
 :pattern ( (|Seq#Index_27038| ar@@27 i_19@@1))
)) (forall ((o_4@@41 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv32 o_4@@41)) (< (invRecv32 o_4@@41) len)) (< NoPerm FullPerm)) (qpRange32 o_4@@41)) (= (|Seq#Index_27038| ar@@27 (invRecv32 o_4@@41)) o_4@@41))
 :qid |stdinbpl.3857:24|
 :skolemid |291|
 :pattern ( (invRecv32 o_4@@41))
))) (and (forall ((i_19@@2 Int) ) (!  (=> (and (<= 0 i_19@@2) (< i_19@@2 len)) (not (= (|Seq#Index_27038| ar@@27 i_19@@2) null)))
 :qid |stdinbpl.3863:24|
 :skolemid |292|
 :pattern ( (|Seq#Index_27038| ar@@27 i_19@@2))
 :pattern ( (|Seq#Index_27038| ar@@27 i_19@@2))
)) (forall ((o_4@@42 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv32 o_4@@42)) (< (invRecv32 o_4@@42) len)) (< NoPerm FullPerm)) (qpRange32 o_4@@42)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_27038| ar@@27 (invRecv32 o_4@@42)) o_4@@42)) (= (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@7) o_4@@42 Ref__Integer_value) (+ (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@6) o_4@@42 Ref__Integer_value) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv32 o_4@@42)) (< (invRecv32 o_4@@42) len)) (< NoPerm FullPerm)) (qpRange32 o_4@@42))) (= (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@7) o_4@@42 Ref__Integer_value) (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@6) o_4@@42 Ref__Integer_value))))
 :qid |stdinbpl.3869:24|
 :skolemid |293|
 :pattern ( (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@7) o_4@@42 Ref__Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_4@@43 T@Ref) (f_5@@29 T@Field_38353_53) ) (!  (=> true (= (select (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| QPMask@6) o_4@@43 f_5@@29) (select (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| QPMask@7) o_4@@43 f_5@@29)))
 :qid |stdinbpl.3873:31|
 :skolemid |294|
 :pattern ( (select (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| QPMask@6) o_4@@43 f_5@@29))
 :pattern ( (select (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| QPMask@7) o_4@@43 f_5@@29))
)) (forall ((o_4@@44 T@Ref) (f_5@@30 T@Field_38366_38367) ) (!  (=> true (= (select (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| QPMask@6) o_4@@44 f_5@@30) (select (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| QPMask@7) o_4@@44 f_5@@30)))
 :qid |stdinbpl.3873:31|
 :skolemid |294|
 :pattern ( (select (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| QPMask@6) o_4@@44 f_5@@30))
 :pattern ( (select (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| QPMask@7) o_4@@44 f_5@@30))
))) (forall ((o_4@@45 T@Ref) (f_5@@31 T@Field_44439_3805) ) (!  (=> (not (= f_5@@31 Ref__Integer_value)) (= (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@6) o_4@@45 f_5@@31) (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@7) o_4@@45 f_5@@31)))
 :qid |stdinbpl.3873:31|
 :skolemid |294|
 :pattern ( (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@6) o_4@@45 f_5@@31))
 :pattern ( (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@7) o_4@@45 f_5@@31))
))) (forall ((o_4@@46 T@Ref) (f_5@@32 T@Field_26999_108835) ) (!  (=> true (= (select (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| QPMask@6) o_4@@46 f_5@@32) (select (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| QPMask@7) o_4@@46 f_5@@32)))
 :qid |stdinbpl.3873:31|
 :skolemid |294|
 :pattern ( (select (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| QPMask@6) o_4@@46 f_5@@32))
 :pattern ( (select (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| QPMask@7) o_4@@46 f_5@@32))
))) (forall ((o_4@@47 T@Ref) (f_5@@33 T@Field_26999_108968) ) (!  (=> true (= (select (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| QPMask@6) o_4@@47 f_5@@33) (select (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| QPMask@7) o_4@@47 f_5@@33)))
 :qid |stdinbpl.3873:31|
 :skolemid |294|
 :pattern ( (select (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| QPMask@6) o_4@@47 f_5@@33))
 :pattern ( (select (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| QPMask@7) o_4@@47 f_5@@33))
))) (state ExhaleHeap@0 QPMask@7)) (and (=> (= (ControlFlow 0 68) 66) anon98_Then_correct) (=> (= (ControlFlow 0 68) 67) anon98_Else_correct))))))))
(let ((anon97_Else_correct  (=> (and (<= len 0) (= (ControlFlow 0 71) 68)) anon62_correct)))
(let ((anon97_Then_correct  (=> (< 0 len) (=> (and (= (|Seq#Length_27038| ar@@27) len) (= (ControlFlow 0 70) 68)) anon62_correct))))
(let ((anon95_Else_correct  (=> (forall ((j_11_1 Int) (k_11_1_1 Int) ) (!  (=> (and (<= 0 j_11_1) (and (< j_11_1 (|Seq#Length_27038| cr)) (and (<= 0 k_11_1_1) (and (< k_11_1_1 (|Seq#Length_27038| cr)) (not (= j_11_1 k_11_1_1)))))) (not (= (|Seq#Index_27038| cr j_11_1) (|Seq#Index_27038| cr k_11_1_1))))
 :qid |stdinbpl.3791:22|
 :skolemid |282|
 :pattern ( (|Seq#Index_27038| cr j_11_1) (|Seq#Index_27038| cr k_11_1_1))
)) (and (=> (= (ControlFlow 0 72) (- 0 74)) (forall ((i_18_1 Int) (i_18_2 Int) ) (!  (=> (and (and (and (and (not (= i_18_1 i_18_2)) (and (<= 0 i_18_1) (< i_18_1 len))) (and (<= 0 i_18_2) (< i_18_2 len))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27038| cr i_18_1) (|Seq#Index_27038| cr i_18_2))))
 :qid |stdinbpl.3802:19|
 :skolemid |283|
 :pattern ( (neverTriggered31 i_18_1) (neverTriggered31 i_18_2))
))) (=> (forall ((i_18_1@@0 Int) (i_18_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_18_1@@0 i_18_2@@0)) (and (<= 0 i_18_1@@0) (< i_18_1@@0 len))) (and (<= 0 i_18_2@@0) (< i_18_2@@0 len))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27038| cr i_18_1@@0) (|Seq#Index_27038| cr i_18_2@@0))))
 :qid |stdinbpl.3802:19|
 :skolemid |283|
 :pattern ( (neverTriggered31 i_18_1@@0) (neverTriggered31 i_18_2@@0))
)) (and (=> (= (ControlFlow 0 72) (- 0 73)) (forall ((i_18_1@@1 Int) ) (!  (=> (and (<= 0 i_18_1@@1) (< i_18_1@@1 len)) (>= (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@5) (|Seq#Index_27038| cr i_18_1@@1) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.3809:19|
 :skolemid |284|
 :pattern ( (|Seq#Index_27038| cr i_18_1@@1))
 :pattern ( (|Seq#Index_27038| cr i_18_1@@1))
))) (=> (forall ((i_18_1@@2 Int) ) (!  (=> (and (<= 0 i_18_1@@2) (< i_18_1@@2 len)) (>= (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@5) (|Seq#Index_27038| cr i_18_1@@2) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.3809:19|
 :skolemid |284|
 :pattern ( (|Seq#Index_27038| cr i_18_1@@2))
 :pattern ( (|Seq#Index_27038| cr i_18_1@@2))
)) (=> (forall ((i_18_1@@3 Int) ) (!  (=> (and (and (<= 0 i_18_1@@3) (< i_18_1@@3 len)) (< NoPerm FullPerm)) (and (qpRange31 (|Seq#Index_27038| cr i_18_1@@3)) (= (invRecv31 (|Seq#Index_27038| cr i_18_1@@3)) i_18_1@@3)))
 :qid |stdinbpl.3815:24|
 :skolemid |285|
 :pattern ( (|Seq#Index_27038| cr i_18_1@@3))
 :pattern ( (|Seq#Index_27038| cr i_18_1@@3))
)) (=> (and (forall ((o_4@@48 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv31 o_4@@48)) (< (invRecv31 o_4@@48) len)) (and (< NoPerm FullPerm) (qpRange31 o_4@@48))) (= (|Seq#Index_27038| cr (invRecv31 o_4@@48)) o_4@@48))
 :qid |stdinbpl.3819:24|
 :skolemid |286|
 :pattern ( (invRecv31 o_4@@48))
)) (forall ((o_4@@49 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv31 o_4@@49)) (< (invRecv31 o_4@@49) len)) (and (< NoPerm FullPerm) (qpRange31 o_4@@49))) (and (= (|Seq#Index_27038| cr (invRecv31 o_4@@49)) o_4@@49) (= (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@6) o_4@@49 Ref__Integer_value) (- (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@5) o_4@@49 Ref__Integer_value) FullPerm)))) (=> (not (and (and (<= 0 (invRecv31 o_4@@49)) (< (invRecv31 o_4@@49) len)) (and (< NoPerm FullPerm) (qpRange31 o_4@@49)))) (= (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@6) o_4@@49 Ref__Integer_value) (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@5) o_4@@49 Ref__Integer_value))))
 :qid |stdinbpl.3825:24|
 :skolemid |287|
 :pattern ( (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@6) o_4@@49 Ref__Integer_value))
))) (=> (and (and (and (and (and (forall ((o_4@@50 T@Ref) (f_5@@34 T@Field_38353_53) ) (!  (=> true (= (select (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| QPMask@5) o_4@@50 f_5@@34) (select (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| QPMask@6) o_4@@50 f_5@@34)))
 :qid |stdinbpl.3831:31|
 :skolemid |288|
 :pattern ( (select (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| QPMask@6) o_4@@50 f_5@@34))
)) (forall ((o_4@@51 T@Ref) (f_5@@35 T@Field_38366_38367) ) (!  (=> true (= (select (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| QPMask@5) o_4@@51 f_5@@35) (select (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| QPMask@6) o_4@@51 f_5@@35)))
 :qid |stdinbpl.3831:31|
 :skolemid |288|
 :pattern ( (select (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| QPMask@6) o_4@@51 f_5@@35))
))) (forall ((o_4@@52 T@Ref) (f_5@@36 T@Field_44439_3805) ) (!  (=> (not (= f_5@@36 Ref__Integer_value)) (= (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@5) o_4@@52 f_5@@36) (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@6) o_4@@52 f_5@@36)))
 :qid |stdinbpl.3831:31|
 :skolemid |288|
 :pattern ( (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@6) o_4@@52 f_5@@36))
))) (forall ((o_4@@53 T@Ref) (f_5@@37 T@Field_26999_108835) ) (!  (=> true (= (select (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| QPMask@5) o_4@@53 f_5@@37) (select (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| QPMask@6) o_4@@53 f_5@@37)))
 :qid |stdinbpl.3831:31|
 :skolemid |288|
 :pattern ( (select (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| QPMask@6) o_4@@53 f_5@@37))
))) (forall ((o_4@@54 T@Ref) (f_5@@38 T@Field_26999_108968) ) (!  (=> true (= (select (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| QPMask@5) o_4@@54 f_5@@38) (select (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| QPMask@6) o_4@@54 f_5@@38)))
 :qid |stdinbpl.3831:31|
 :skolemid |288|
 :pattern ( (select (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| QPMask@6) o_4@@54 f_5@@38))
))) (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@0 QPMask@6)) (and (=> (= (ControlFlow 0 72) 70) anon97_Then_correct) (=> (= (ControlFlow 0 72) 71) anon97_Else_correct))))))))))))
(let ((anon59_correct true))
(let ((anon96_Else_correct  (=> (and (not (and (<= 0 j_10_2) (and (< j_10_2 (|Seq#Length_27038| cr)) (and (<= 0 k_10_2) (and (< k_10_2 (|Seq#Length_27038| cr)) (not (= j_10_2 k_10_2))))))) (= (ControlFlow 0 48) 45)) anon59_correct)))
(let ((anon96_Then_correct  (=> (and (<= 0 j_10_2) (and (< j_10_2 (|Seq#Length_27038| cr)) (and (<= 0 k_10_2) (and (< k_10_2 (|Seq#Length_27038| cr)) (not (= j_10_2 k_10_2)))))) (and (=> (= (ControlFlow 0 46) (- 0 47)) (not (= (|Seq#Index_27038| cr j_10_2) (|Seq#Index_27038| cr k_10_2)))) (=> (not (= (|Seq#Index_27038| cr j_10_2) (|Seq#Index_27038| cr k_10_2))) (=> (= (ControlFlow 0 46) 45) anon59_correct))))))
(let ((anon94_Else_correct  (=> (<= len 0) (and (and (=> (= (ControlFlow 0 77) 72) anon95_Else_correct) (=> (= (ControlFlow 0 77) 46) anon96_Then_correct)) (=> (= (ControlFlow 0 77) 48) anon96_Else_correct)))))
(let ((anon94_Then_correct  (=> (< 0 len) (and (=> (= (ControlFlow 0 75) (- 0 76)) (= (|Seq#Length_27038| cr) len)) (=> (= (|Seq#Length_27038| cr) len) (and (and (=> (= (ControlFlow 0 75) 72) anon95_Else_correct) (=> (= (ControlFlow 0 75) 46) anon96_Then_correct)) (=> (= (ControlFlow 0 75) 48) anon96_Else_correct)))))))
(let ((anon92_Else_correct  (=> (forall ((j_9_1_1 Int) (k_9_1 Int) ) (!  (=> (and (<= 0 j_9_1_1) (and (< j_9_1_1 (|Seq#Length_27038| br)) (and (<= 0 k_9_1) (and (< k_9_1 (|Seq#Length_27038| br)) (not (= j_9_1_1 k_9_1)))))) (not (= (|Seq#Index_27038| br j_9_1_1) (|Seq#Index_27038| br k_9_1))))
 :qid |stdinbpl.3731:22|
 :skolemid |274|
 :pattern ( (|Seq#Index_27038| br j_9_1_1) (|Seq#Index_27038| br k_9_1))
)) (and (=> (= (ControlFlow 0 78) (- 0 81)) (forall ((i_17 Int) ) (!  (=> (and (and (<= 0 i_17) (< i_17 len)) (dummyFunction_4112 (select (|PolymorphicMapType_38293_26999_3805#PolymorphicMapType_38293| Heap@@41) (|Seq#Index_27038| br i_17) Ref__Integer_value))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3739:19|
 :skolemid |275|
 :pattern ( (|Seq#Index_27038| br i_17))
 :pattern ( (|Seq#Index_27038| br i_17))
))) (=> (forall ((i_17@@0 Int) ) (!  (=> (and (and (<= 0 i_17@@0) (< i_17@@0 len)) (dummyFunction_4112 (select (|PolymorphicMapType_38293_26999_3805#PolymorphicMapType_38293| Heap@@41) (|Seq#Index_27038| br i_17@@0) Ref__Integer_value))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3739:19|
 :skolemid |275|
 :pattern ( (|Seq#Index_27038| br i_17@@0))
 :pattern ( (|Seq#Index_27038| br i_17@@0))
)) (and (=> (= (ControlFlow 0 78) (- 0 80)) (forall ((i_17@@1 Int) (i_17_1 Int) ) (!  (=> (and (and (and (and (not (= i_17@@1 i_17_1)) (and (<= 0 i_17@@1) (< i_17@@1 len))) (and (<= 0 i_17_1) (< i_17_1 len))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_27038| br i_17@@1) (|Seq#Index_27038| br i_17_1))))
 :qid |stdinbpl.3746:19|
 :skolemid |276|
 :pattern ( (neverTriggered30 i_17@@1) (neverTriggered30 i_17_1))
))) (=> (forall ((i_17@@2 Int) (i_17_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_17@@2 i_17_1@@0)) (and (<= 0 i_17@@2) (< i_17@@2 len))) (and (<= 0 i_17_1@@0) (< i_17_1@@0 len))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_27038| br i_17@@2) (|Seq#Index_27038| br i_17_1@@0))))
 :qid |stdinbpl.3746:19|
 :skolemid |276|
 :pattern ( (neverTriggered30 i_17@@2) (neverTriggered30 i_17_1@@0))
)) (and (=> (= (ControlFlow 0 78) (- 0 79)) (forall ((i_17@@3 Int) ) (!  (=> (and (<= 0 i_17@@3) (< i_17@@3 len)) (>= (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@4) (|Seq#Index_27038| br i_17@@3) Ref__Integer_value) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.3753:19|
 :skolemid |277|
 :pattern ( (|Seq#Index_27038| br i_17@@3))
 :pattern ( (|Seq#Index_27038| br i_17@@3))
))) (=> (forall ((i_17@@4 Int) ) (!  (=> (and (<= 0 i_17@@4) (< i_17@@4 len)) (>= (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@4) (|Seq#Index_27038| br i_17@@4) Ref__Integer_value) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.3753:19|
 :skolemid |277|
 :pattern ( (|Seq#Index_27038| br i_17@@4))
 :pattern ( (|Seq#Index_27038| br i_17@@4))
)) (=> (forall ((i_17@@5 Int) ) (!  (=> (and (and (<= 0 i_17@@5) (< i_17@@5 len)) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange30 (|Seq#Index_27038| br i_17@@5)) (= (invRecv30 (|Seq#Index_27038| br i_17@@5)) i_17@@5)))
 :qid |stdinbpl.3759:24|
 :skolemid |278|
 :pattern ( (|Seq#Index_27038| br i_17@@5))
 :pattern ( (|Seq#Index_27038| br i_17@@5))
)) (=> (and (forall ((o_4@@55 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv30 o_4@@55)) (< (invRecv30 o_4@@55) len)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange30 o_4@@55))) (= (|Seq#Index_27038| br (invRecv30 o_4@@55)) o_4@@55))
 :qid |stdinbpl.3763:24|
 :skolemid |279|
 :pattern ( (invRecv30 o_4@@55))
)) (forall ((o_4@@56 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv30 o_4@@56)) (< (invRecv30 o_4@@56) len)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange30 o_4@@56))) (and (= (|Seq#Index_27038| br (invRecv30 o_4@@56)) o_4@@56) (= (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@5) o_4@@56 Ref__Integer_value) (- (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@4) o_4@@56 Ref__Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (<= 0 (invRecv30 o_4@@56)) (< (invRecv30 o_4@@56) len)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange30 o_4@@56)))) (= (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@5) o_4@@56 Ref__Integer_value) (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@4) o_4@@56 Ref__Integer_value))))
 :qid |stdinbpl.3769:24|
 :skolemid |280|
 :pattern ( (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@5) o_4@@56 Ref__Integer_value))
))) (=> (and (and (and (and (forall ((o_4@@57 T@Ref) (f_5@@39 T@Field_38353_53) ) (!  (=> true (= (select (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| QPMask@4) o_4@@57 f_5@@39) (select (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| QPMask@5) o_4@@57 f_5@@39)))
 :qid |stdinbpl.3775:31|
 :skolemid |281|
 :pattern ( (select (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| QPMask@5) o_4@@57 f_5@@39))
)) (forall ((o_4@@58 T@Ref) (f_5@@40 T@Field_38366_38367) ) (!  (=> true (= (select (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| QPMask@4) o_4@@58 f_5@@40) (select (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| QPMask@5) o_4@@58 f_5@@40)))
 :qid |stdinbpl.3775:31|
 :skolemid |281|
 :pattern ( (select (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| QPMask@5) o_4@@58 f_5@@40))
))) (forall ((o_4@@59 T@Ref) (f_5@@41 T@Field_44439_3805) ) (!  (=> (not (= f_5@@41 Ref__Integer_value)) (= (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@4) o_4@@59 f_5@@41) (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@5) o_4@@59 f_5@@41)))
 :qid |stdinbpl.3775:31|
 :skolemid |281|
 :pattern ( (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@5) o_4@@59 f_5@@41))
))) (forall ((o_4@@60 T@Ref) (f_5@@42 T@Field_26999_108835) ) (!  (=> true (= (select (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| QPMask@4) o_4@@60 f_5@@42) (select (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| QPMask@5) o_4@@60 f_5@@42)))
 :qid |stdinbpl.3775:31|
 :skolemid |281|
 :pattern ( (select (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| QPMask@5) o_4@@60 f_5@@42))
))) (forall ((o_4@@61 T@Ref) (f_5@@43 T@Field_26999_108968) ) (!  (=> true (= (select (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| QPMask@4) o_4@@61 f_5@@43) (select (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| QPMask@5) o_4@@61 f_5@@43)))
 :qid |stdinbpl.3775:31|
 :skolemid |281|
 :pattern ( (select (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| QPMask@5) o_4@@61 f_5@@43))
))) (and (=> (= (ControlFlow 0 78) 75) anon94_Then_correct) (=> (= (ControlFlow 0 78) 77) anon94_Else_correct))))))))))))))
(let ((anon53_correct true))
(let ((anon93_Else_correct  (=> (and (not (and (<= 0 j_8) (and (< j_8 (|Seq#Length_27038| br)) (and (<= 0 k_8) (and (< k_8 (|Seq#Length_27038| br)) (not (= j_8 k_8))))))) (= (ControlFlow 0 44) 41)) anon53_correct)))
(let ((anon93_Then_correct  (=> (and (<= 0 j_8) (and (< j_8 (|Seq#Length_27038| br)) (and (<= 0 k_8) (and (< k_8 (|Seq#Length_27038| br)) (not (= j_8 k_8)))))) (and (=> (= (ControlFlow 0 42) (- 0 43)) (not (= (|Seq#Index_27038| br j_8) (|Seq#Index_27038| br k_8)))) (=> (not (= (|Seq#Index_27038| br j_8) (|Seq#Index_27038| br k_8))) (=> (= (ControlFlow 0 42) 41) anon53_correct))))))
(let ((anon91_Else_correct  (=> (<= len 0) (and (and (=> (= (ControlFlow 0 84) 78) anon92_Else_correct) (=> (= (ControlFlow 0 84) 42) anon93_Then_correct)) (=> (= (ControlFlow 0 84) 44) anon93_Else_correct)))))
(let ((anon91_Then_correct  (=> (< 0 len) (and (=> (= (ControlFlow 0 82) (- 0 83)) (= (|Seq#Length_27038| br) len)) (=> (= (|Seq#Length_27038| br) len) (and (and (=> (= (ControlFlow 0 82) 78) anon92_Else_correct) (=> (= (ControlFlow 0 82) 42) anon93_Then_correct)) (=> (= (ControlFlow 0 82) 44) anon93_Else_correct)))))))
(let ((anon48_correct  (and (=> (= (ControlFlow 0 85) (- 0 88)) (forall ((i_16_1 Int) ) (!  (=> (and (and (<= 1 i_16_1) (< i_16_1 (+ (ite (< (- (|Seq#Length_27038| ar@@27) 1) len) (- (|Seq#Length_27038| ar@@27) 1) len) 1))) (dummyFunction_4112 (select (|PolymorphicMapType_38293_26999_3805#PolymorphicMapType_38293| Heap@@41) (|Seq#Index_27038| ar@@27 i_16_1) Ref__Integer_value))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3679:19|
 :skolemid |267|
 :pattern ( (|Seq#Index_27038| ar@@27 i_16_1))
 :pattern ( (|Seq#Index_27038| ar@@27 i_16_1))
))) (=> (forall ((i_16_1@@0 Int) ) (!  (=> (and (and (<= 1 i_16_1@@0) (< i_16_1@@0 (+ (ite (< (- (|Seq#Length_27038| ar@@27) 1) len) (- (|Seq#Length_27038| ar@@27) 1) len) 1))) (dummyFunction_4112 (select (|PolymorphicMapType_38293_26999_3805#PolymorphicMapType_38293| Heap@@41) (|Seq#Index_27038| ar@@27 i_16_1@@0) Ref__Integer_value))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3679:19|
 :skolemid |267|
 :pattern ( (|Seq#Index_27038| ar@@27 i_16_1@@0))
 :pattern ( (|Seq#Index_27038| ar@@27 i_16_1@@0))
)) (and (=> (= (ControlFlow 0 85) (- 0 87)) (forall ((i_16_1@@1 Int) (i_16_2 Int) ) (!  (=> (and (and (and (and (not (= i_16_1@@1 i_16_2)) (and (<= 1 i_16_1@@1) (< i_16_1@@1 (+ (ite (< (- (|Seq#Length_27038| ar@@27) 1) len) (- (|Seq#Length_27038| ar@@27) 1) len) 1)))) (and (<= 1 i_16_2) (< i_16_2 (+ (ite (< (- (|Seq#Length_27038| ar@@27) 1) len) (- (|Seq#Length_27038| ar@@27) 1) len) 1)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_27038| ar@@27 i_16_1@@1) (|Seq#Index_27038| ar@@27 i_16_2))))
 :qid |stdinbpl.3686:19|
 :skolemid |268|
 :pattern ( (neverTriggered29 i_16_1@@1) (neverTriggered29 i_16_2))
))) (=> (forall ((i_16_1@@2 Int) (i_16_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_16_1@@2 i_16_2@@0)) (and (<= 1 i_16_1@@2) (< i_16_1@@2 (+ (ite (< (- (|Seq#Length_27038| ar@@27) 1) len) (- (|Seq#Length_27038| ar@@27) 1) len) 1)))) (and (<= 1 i_16_2@@0) (< i_16_2@@0 (+ (ite (< (- (|Seq#Length_27038| ar@@27) 1) len) (- (|Seq#Length_27038| ar@@27) 1) len) 1)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_27038| ar@@27 i_16_1@@2) (|Seq#Index_27038| ar@@27 i_16_2@@0))))
 :qid |stdinbpl.3686:19|
 :skolemid |268|
 :pattern ( (neverTriggered29 i_16_1@@2) (neverTriggered29 i_16_2@@0))
)) (and (=> (= (ControlFlow 0 85) (- 0 86)) (forall ((i_16_1@@3 Int) ) (!  (=> (and (<= 1 i_16_1@@3) (< i_16_1@@3 (+ (ite (< (- (|Seq#Length_27038| ar@@27) 1) len) (- (|Seq#Length_27038| ar@@27) 1) len) 1))) (>= (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| Mask@1) (|Seq#Index_27038| ar@@27 i_16_1@@3) Ref__Integer_value) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.3693:19|
 :skolemid |269|
 :pattern ( (|Seq#Index_27038| ar@@27 i_16_1@@3))
 :pattern ( (|Seq#Index_27038| ar@@27 i_16_1@@3))
))) (=> (forall ((i_16_1@@4 Int) ) (!  (=> (and (<= 1 i_16_1@@4) (< i_16_1@@4 (+ (ite (< (- (|Seq#Length_27038| ar@@27) 1) len) (- (|Seq#Length_27038| ar@@27) 1) len) 1))) (>= (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| Mask@1) (|Seq#Index_27038| ar@@27 i_16_1@@4) Ref__Integer_value) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.3693:19|
 :skolemid |269|
 :pattern ( (|Seq#Index_27038| ar@@27 i_16_1@@4))
 :pattern ( (|Seq#Index_27038| ar@@27 i_16_1@@4))
)) (=> (forall ((i_16_1@@5 Int) ) (!  (=> (and (and (<= 1 i_16_1@@5) (< i_16_1@@5 (+ (ite (< (- (|Seq#Length_27038| ar@@27) 1) len) (- (|Seq#Length_27038| ar@@27) 1) len) 1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange29 (|Seq#Index_27038| ar@@27 i_16_1@@5)) (= (invRecv29 (|Seq#Index_27038| ar@@27 i_16_1@@5)) i_16_1@@5)))
 :qid |stdinbpl.3699:24|
 :skolemid |270|
 :pattern ( (|Seq#Index_27038| ar@@27 i_16_1@@5))
 :pattern ( (|Seq#Index_27038| ar@@27 i_16_1@@5))
)) (=> (and (forall ((o_4@@62 T@Ref) ) (!  (=> (and (and (<= 1 (invRecv29 o_4@@62)) (< (invRecv29 o_4@@62) (+ (ite (< (- (|Seq#Length_27038| ar@@27) 1) len) (- (|Seq#Length_27038| ar@@27) 1) len) 1))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange29 o_4@@62))) (= (|Seq#Index_27038| ar@@27 (invRecv29 o_4@@62)) o_4@@62))
 :qid |stdinbpl.3703:24|
 :skolemid |271|
 :pattern ( (invRecv29 o_4@@62))
)) (forall ((o_4@@63 T@Ref) ) (!  (and (=> (and (and (<= 1 (invRecv29 o_4@@63)) (< (invRecv29 o_4@@63) (+ (ite (< (- (|Seq#Length_27038| ar@@27) 1) len) (- (|Seq#Length_27038| ar@@27) 1) len) 1))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange29 o_4@@63))) (and (= (|Seq#Index_27038| ar@@27 (invRecv29 o_4@@63)) o_4@@63) (= (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@4) o_4@@63 Ref__Integer_value) (- (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| Mask@1) o_4@@63 Ref__Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (<= 1 (invRecv29 o_4@@63)) (< (invRecv29 o_4@@63) (+ (ite (< (- (|Seq#Length_27038| ar@@27) 1) len) (- (|Seq#Length_27038| ar@@27) 1) len) 1))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange29 o_4@@63)))) (= (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@4) o_4@@63 Ref__Integer_value) (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| Mask@1) o_4@@63 Ref__Integer_value))))
 :qid |stdinbpl.3709:24|
 :skolemid |272|
 :pattern ( (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@4) o_4@@63 Ref__Integer_value))
))) (=> (and (and (and (and (forall ((o_4@@64 T@Ref) (f_5@@44 T@Field_38353_53) ) (!  (=> true (= (select (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| Mask@1) o_4@@64 f_5@@44) (select (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| QPMask@4) o_4@@64 f_5@@44)))
 :qid |stdinbpl.3715:31|
 :skolemid |273|
 :pattern ( (select (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| QPMask@4) o_4@@64 f_5@@44))
)) (forall ((o_4@@65 T@Ref) (f_5@@45 T@Field_38366_38367) ) (!  (=> true (= (select (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| Mask@1) o_4@@65 f_5@@45) (select (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| QPMask@4) o_4@@65 f_5@@45)))
 :qid |stdinbpl.3715:31|
 :skolemid |273|
 :pattern ( (select (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| QPMask@4) o_4@@65 f_5@@45))
))) (forall ((o_4@@66 T@Ref) (f_5@@46 T@Field_44439_3805) ) (!  (=> (not (= f_5@@46 Ref__Integer_value)) (= (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| Mask@1) o_4@@66 f_5@@46) (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@4) o_4@@66 f_5@@46)))
 :qid |stdinbpl.3715:31|
 :skolemid |273|
 :pattern ( (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@4) o_4@@66 f_5@@46))
))) (forall ((o_4@@67 T@Ref) (f_5@@47 T@Field_26999_108835) ) (!  (=> true (= (select (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| Mask@1) o_4@@67 f_5@@47) (select (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| QPMask@4) o_4@@67 f_5@@47)))
 :qid |stdinbpl.3715:31|
 :skolemid |273|
 :pattern ( (select (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| QPMask@4) o_4@@67 f_5@@47))
))) (forall ((o_4@@68 T@Ref) (f_5@@48 T@Field_26999_108968) ) (!  (=> true (= (select (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| Mask@1) o_4@@68 f_5@@48) (select (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| QPMask@4) o_4@@68 f_5@@48)))
 :qid |stdinbpl.3715:31|
 :skolemid |273|
 :pattern ( (select (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| QPMask@4) o_4@@68 f_5@@48))
))) (and (=> (= (ControlFlow 0 85) 82) anon91_Then_correct) (=> (= (ControlFlow 0 85) 84) anon91_Else_correct)))))))))))))
(let ((anon47_correct  (=> (= Mask@0 (PolymorphicMapType_38314 (store (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@3) (|Seq#Index_27038| ar@@27 0) Ref__Integer_value (- (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@3) (|Seq#Index_27038| ar@@27 0) Ref__Integer_value) perm@0)) (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| QPMask@3) (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| QPMask@3) (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| QPMask@3) (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| QPMask@3))) (=> (and (= Mask@1 Mask@0) (= (ControlFlow 0 90) 85)) anon48_correct))))
(let ((anon90_Else_correct  (=> (and (= perm@0 NoPerm) (= (ControlFlow 0 93) 90)) anon47_correct)))
(let ((anon90_Then_correct  (=> (not (= perm@0 NoPerm)) (and (=> (= (ControlFlow 0 91) (- 0 92)) (<= perm@0 (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@3) (|Seq#Index_27038| ar@@27 0) Ref__Integer_value))) (=> (<= perm@0 (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@3) (|Seq#Index_27038| ar@@27 0) Ref__Integer_value)) (=> (= (ControlFlow 0 91) 90) anon47_correct))))))
(let ((anon89_Then_correct  (=> (and (< 0 len) (= perm@0 (/ (to_real 1) (to_real 2)))) (and (=> (= (ControlFlow 0 94) (- 0 95)) (>= perm@0 NoPerm)) (=> (>= perm@0 NoPerm) (and (=> (= (ControlFlow 0 94) 91) anon90_Then_correct) (=> (= (ControlFlow 0 94) 93) anon90_Else_correct)))))))
(let ((anon89_Else_correct  (=> (<= len 0) (=> (and (= Mask@1 QPMask@3) (= (ControlFlow 0 89) 85)) anon48_correct))))
(let ((anon87_Else_correct  (=> (forall ((j_7_1_1 Int) (k_7_1_1 Int) ) (!  (=> (and (<= 0 j_7_1_1) (and (< j_7_1_1 (|Seq#Length_27038| ar@@27)) (and (<= 0 k_7_1_1) (and (< k_7_1_1 (|Seq#Length_27038| ar@@27)) (not (= j_7_1_1 k_7_1_1)))))) (not (= (|Seq#Index_27038| ar@@27 j_7_1_1) (|Seq#Index_27038| ar@@27 k_7_1_1))))
 :qid |stdinbpl.3616:22|
 :skolemid |259|
 :pattern ( (|Seq#Index_27038| ar@@27 j_7_1_1) (|Seq#Index_27038| ar@@27 k_7_1_1))
)) (and (=> (= (ControlFlow 0 96) (- 0 99)) (forall ((i_15 Int) ) (!  (=> (and (and (<= 0 i_15) (< i_15 len)) (dummyFunction_4112 (select (|PolymorphicMapType_38293_26999_3805#PolymorphicMapType_38293| Heap@@41) (|Seq#Index_27038| ar@@27 i_15) Ref__Integer_value))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3624:19|
 :skolemid |260|
 :pattern ( (|Seq#Index_27038| ar@@27 i_15))
 :pattern ( (|Seq#Index_27038| ar@@27 i_15))
))) (=> (forall ((i_15@@0 Int) ) (!  (=> (and (and (<= 0 i_15@@0) (< i_15@@0 len)) (dummyFunction_4112 (select (|PolymorphicMapType_38293_26999_3805#PolymorphicMapType_38293| Heap@@41) (|Seq#Index_27038| ar@@27 i_15@@0) Ref__Integer_value))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3624:19|
 :skolemid |260|
 :pattern ( (|Seq#Index_27038| ar@@27 i_15@@0))
 :pattern ( (|Seq#Index_27038| ar@@27 i_15@@0))
)) (and (=> (= (ControlFlow 0 96) (- 0 98)) (forall ((i_15@@1 Int) (i_15_1 Int) ) (!  (=> (and (and (and (and (not (= i_15@@1 i_15_1)) (and (<= 0 i_15@@1) (< i_15@@1 len))) (and (<= 0 i_15_1) (< i_15_1 len))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_27038| ar@@27 i_15@@1) (|Seq#Index_27038| ar@@27 i_15_1))))
 :qid |stdinbpl.3631:19|
 :skolemid |261|
 :pattern ( (neverTriggered28 i_15@@1) (neverTriggered28 i_15_1))
))) (=> (forall ((i_15@@2 Int) (i_15_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_15@@2 i_15_1@@0)) (and (<= 0 i_15@@2) (< i_15@@2 len))) (and (<= 0 i_15_1@@0) (< i_15_1@@0 len))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_27038| ar@@27 i_15@@2) (|Seq#Index_27038| ar@@27 i_15_1@@0))))
 :qid |stdinbpl.3631:19|
 :skolemid |261|
 :pattern ( (neverTriggered28 i_15@@2) (neverTriggered28 i_15_1@@0))
)) (and (=> (= (ControlFlow 0 96) (- 0 97)) (forall ((i_15@@3 Int) ) (!  (=> (and (<= 0 i_15@@3) (< i_15@@3 len)) (>= (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@2) (|Seq#Index_27038| ar@@27 i_15@@3) Ref__Integer_value) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.3638:19|
 :skolemid |262|
 :pattern ( (|Seq#Index_27038| ar@@27 i_15@@3))
 :pattern ( (|Seq#Index_27038| ar@@27 i_15@@3))
))) (=> (forall ((i_15@@4 Int) ) (!  (=> (and (<= 0 i_15@@4) (< i_15@@4 len)) (>= (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@2) (|Seq#Index_27038| ar@@27 i_15@@4) Ref__Integer_value) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.3638:19|
 :skolemid |262|
 :pattern ( (|Seq#Index_27038| ar@@27 i_15@@4))
 :pattern ( (|Seq#Index_27038| ar@@27 i_15@@4))
)) (=> (forall ((i_15@@5 Int) ) (!  (=> (and (and (<= 0 i_15@@5) (< i_15@@5 len)) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange28 (|Seq#Index_27038| ar@@27 i_15@@5)) (= (invRecv28 (|Seq#Index_27038| ar@@27 i_15@@5)) i_15@@5)))
 :qid |stdinbpl.3644:24|
 :skolemid |263|
 :pattern ( (|Seq#Index_27038| ar@@27 i_15@@5))
 :pattern ( (|Seq#Index_27038| ar@@27 i_15@@5))
)) (=> (and (forall ((o_4@@69 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv28 o_4@@69)) (< (invRecv28 o_4@@69) len)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange28 o_4@@69))) (= (|Seq#Index_27038| ar@@27 (invRecv28 o_4@@69)) o_4@@69))
 :qid |stdinbpl.3648:24|
 :skolemid |264|
 :pattern ( (invRecv28 o_4@@69))
)) (forall ((o_4@@70 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv28 o_4@@70)) (< (invRecv28 o_4@@70) len)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange28 o_4@@70))) (and (= (|Seq#Index_27038| ar@@27 (invRecv28 o_4@@70)) o_4@@70) (= (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@3) o_4@@70 Ref__Integer_value) (- (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@2) o_4@@70 Ref__Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (<= 0 (invRecv28 o_4@@70)) (< (invRecv28 o_4@@70) len)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange28 o_4@@70)))) (= (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@3) o_4@@70 Ref__Integer_value) (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@2) o_4@@70 Ref__Integer_value))))
 :qid |stdinbpl.3654:24|
 :skolemid |265|
 :pattern ( (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@3) o_4@@70 Ref__Integer_value))
))) (=> (and (and (and (and (forall ((o_4@@71 T@Ref) (f_5@@49 T@Field_38353_53) ) (!  (=> true (= (select (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| QPMask@2) o_4@@71 f_5@@49) (select (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| QPMask@3) o_4@@71 f_5@@49)))
 :qid |stdinbpl.3660:31|
 :skolemid |266|
 :pattern ( (select (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| QPMask@3) o_4@@71 f_5@@49))
)) (forall ((o_4@@72 T@Ref) (f_5@@50 T@Field_38366_38367) ) (!  (=> true (= (select (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| QPMask@2) o_4@@72 f_5@@50) (select (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| QPMask@3) o_4@@72 f_5@@50)))
 :qid |stdinbpl.3660:31|
 :skolemid |266|
 :pattern ( (select (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| QPMask@3) o_4@@72 f_5@@50))
))) (forall ((o_4@@73 T@Ref) (f_5@@51 T@Field_44439_3805) ) (!  (=> (not (= f_5@@51 Ref__Integer_value)) (= (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@2) o_4@@73 f_5@@51) (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@3) o_4@@73 f_5@@51)))
 :qid |stdinbpl.3660:31|
 :skolemid |266|
 :pattern ( (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@3) o_4@@73 f_5@@51))
))) (forall ((o_4@@74 T@Ref) (f_5@@52 T@Field_26999_108835) ) (!  (=> true (= (select (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| QPMask@2) o_4@@74 f_5@@52) (select (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| QPMask@3) o_4@@74 f_5@@52)))
 :qid |stdinbpl.3660:31|
 :skolemid |266|
 :pattern ( (select (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| QPMask@3) o_4@@74 f_5@@52))
))) (forall ((o_4@@75 T@Ref) (f_5@@53 T@Field_26999_108968) ) (!  (=> true (= (select (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| QPMask@2) o_4@@75 f_5@@53) (select (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| QPMask@3) o_4@@75 f_5@@53)))
 :qid |stdinbpl.3660:31|
 :skolemid |266|
 :pattern ( (select (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| QPMask@3) o_4@@75 f_5@@53))
))) (and (=> (= (ControlFlow 0 96) 94) anon89_Then_correct) (=> (= (ControlFlow 0 96) 89) anon89_Else_correct))))))))))))))
(let ((anon43_correct true))
(let ((anon88_Else_correct  (=> (and (not (and (<= 0 j_6_1) (and (< j_6_1 (|Seq#Length_27038| ar@@27)) (and (<= 0 k_6) (and (< k_6 (|Seq#Length_27038| ar@@27)) (not (= j_6_1 k_6))))))) (= (ControlFlow 0 40) 37)) anon43_correct)))
(let ((anon88_Then_correct  (=> (and (<= 0 j_6_1) (and (< j_6_1 (|Seq#Length_27038| ar@@27)) (and (<= 0 k_6) (and (< k_6 (|Seq#Length_27038| ar@@27)) (not (= j_6_1 k_6)))))) (and (=> (= (ControlFlow 0 38) (- 0 39)) (not (= (|Seq#Index_27038| ar@@27 j_6_1) (|Seq#Index_27038| ar@@27 k_6)))) (=> (not (= (|Seq#Index_27038| ar@@27 j_6_1) (|Seq#Index_27038| ar@@27 k_6))) (=> (= (ControlFlow 0 38) 37) anon43_correct))))))
(let ((anon86_Else_correct  (=> (<= len 0) (and (and (=> (= (ControlFlow 0 102) 96) anon87_Else_correct) (=> (= (ControlFlow 0 102) 38) anon88_Then_correct)) (=> (= (ControlFlow 0 102) 40) anon88_Else_correct)))))
(let ((anon86_Then_correct  (=> (< 0 len) (and (=> (= (ControlFlow 0 100) (- 0 101)) (= (|Seq#Length_27038| ar@@27) len)) (=> (= (|Seq#Length_27038| ar@@27) len) (and (and (=> (= (ControlFlow 0 100) 96) anon87_Else_correct) (=> (= (ControlFlow 0 100) 38) anon88_Then_correct)) (=> (= (ControlFlow 0 100) 40) anon88_Else_correct)))))))
(let ((anon79_Else_correct  (and (=> (= (ControlFlow 0 103) (- 0 108)) (= (|Seq#Length_27038| ar@@27) len)) (=> (= (|Seq#Length_27038| ar@@27) len) (=> (state Heap@@41 QPMask@2) (and (=> (= (ControlFlow 0 103) (- 0 107)) (= (|Seq#Length_27038| br) len)) (=> (= (|Seq#Length_27038| br) len) (=> (state Heap@@41 QPMask@2) (and (=> (= (ControlFlow 0 103) (- 0 106)) (= (|Seq#Length_27038| cr) len)) (=> (= (|Seq#Length_27038| cr) len) (=> (state Heap@@41 QPMask@2) (and (=> (= (ControlFlow 0 103) (- 0 105)) (not (= diz null))) (=> (not (= diz null)) (and (=> (= (ControlFlow 0 103) (- 0 104)) (>= current_thread_id 0)) (=> (>= current_thread_id 0) (and (=> (= (ControlFlow 0 103) 100) anon86_Then_correct) (=> (= (ControlFlow 0 103) 102) anon86_Else_correct)))))))))))))))))
(let ((anon77_Else_correct  (and (=> (= (ControlFlow 0 132) (- 0 133)) (forall ((i_5 Int) (i_5_1 Int) ) (!  (=> (and (and (and (and (not (= i_5 i_5_1)) (and (<= 0 i_5) (< i_5 len))) (and (<= 0 i_5_1) (< i_5_1 len))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27038| cr i_5) (|Seq#Index_27038| cr i_5_1))))
 :qid |stdinbpl.3375:15|
 :skolemid |234|
))) (=> (forall ((i_5@@0 Int) (i_5_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_5@@0 i_5_1@@0)) (and (<= 0 i_5@@0) (< i_5@@0 len))) (and (<= 0 i_5_1@@0) (< i_5_1@@0 len))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27038| cr i_5@@0) (|Seq#Index_27038| cr i_5_1@@0))))
 :qid |stdinbpl.3375:15|
 :skolemid |234|
)) (=> (and (and (forall ((i_5@@1 Int) ) (!  (=> (and (and (<= 0 i_5@@1) (< i_5@@1 len)) (< NoPerm FullPerm)) (and (qpRange21 (|Seq#Index_27038| cr i_5@@1)) (= (invRecv21 (|Seq#Index_27038| cr i_5@@1)) i_5@@1)))
 :qid |stdinbpl.3381:22|
 :skolemid |235|
 :pattern ( (|Seq#Index_27038| cr i_5@@1))
 :pattern ( (|Seq#Index_27038| cr i_5@@1))
)) (forall ((o_4@@76 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv21 o_4@@76)) (< (invRecv21 o_4@@76) len)) (< NoPerm FullPerm)) (qpRange21 o_4@@76)) (= (|Seq#Index_27038| cr (invRecv21 o_4@@76)) o_4@@76))
 :qid |stdinbpl.3385:22|
 :skolemid |236|
 :pattern ( (invRecv21 o_4@@76))
))) (and (forall ((i_5@@2 Int) ) (!  (=> (and (<= 0 i_5@@2) (< i_5@@2 len)) (not (= (|Seq#Index_27038| cr i_5@@2) null)))
 :qid |stdinbpl.3391:22|
 :skolemid |237|
 :pattern ( (|Seq#Index_27038| cr i_5@@2))
 :pattern ( (|Seq#Index_27038| cr i_5@@2))
)) (forall ((o_4@@77 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv21 o_4@@77)) (< (invRecv21 o_4@@77) len)) (< NoPerm FullPerm)) (qpRange21 o_4@@77)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_27038| cr (invRecv21 o_4@@77)) o_4@@77)) (= (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@2) o_4@@77 Ref__Integer_value) (+ (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@1) o_4@@77 Ref__Integer_value) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv21 o_4@@77)) (< (invRecv21 o_4@@77) len)) (< NoPerm FullPerm)) (qpRange21 o_4@@77))) (= (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@2) o_4@@77 Ref__Integer_value) (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@1) o_4@@77 Ref__Integer_value))))
 :qid |stdinbpl.3397:22|
 :skolemid |238|
 :pattern ( (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@2) o_4@@77 Ref__Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_4@@78 T@Ref) (f_5@@54 T@Field_38353_53) ) (!  (=> true (= (select (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| QPMask@1) o_4@@78 f_5@@54) (select (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| QPMask@2) o_4@@78 f_5@@54)))
 :qid |stdinbpl.3401:29|
 :skolemid |239|
 :pattern ( (select (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| QPMask@1) o_4@@78 f_5@@54))
 :pattern ( (select (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| QPMask@2) o_4@@78 f_5@@54))
)) (forall ((o_4@@79 T@Ref) (f_5@@55 T@Field_38366_38367) ) (!  (=> true (= (select (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| QPMask@1) o_4@@79 f_5@@55) (select (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| QPMask@2) o_4@@79 f_5@@55)))
 :qid |stdinbpl.3401:29|
 :skolemid |239|
 :pattern ( (select (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| QPMask@1) o_4@@79 f_5@@55))
 :pattern ( (select (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| QPMask@2) o_4@@79 f_5@@55))
))) (forall ((o_4@@80 T@Ref) (f_5@@56 T@Field_44439_3805) ) (!  (=> (not (= f_5@@56 Ref__Integer_value)) (= (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@1) o_4@@80 f_5@@56) (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@2) o_4@@80 f_5@@56)))
 :qid |stdinbpl.3401:29|
 :skolemid |239|
 :pattern ( (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@1) o_4@@80 f_5@@56))
 :pattern ( (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@2) o_4@@80 f_5@@56))
))) (forall ((o_4@@81 T@Ref) (f_5@@57 T@Field_26999_108835) ) (!  (=> true (= (select (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| QPMask@1) o_4@@81 f_5@@57) (select (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| QPMask@2) o_4@@81 f_5@@57)))
 :qid |stdinbpl.3401:29|
 :skolemid |239|
 :pattern ( (select (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| QPMask@1) o_4@@81 f_5@@57))
 :pattern ( (select (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| QPMask@2) o_4@@81 f_5@@57))
))) (forall ((o_4@@82 T@Ref) (f_5@@58 T@Field_26999_108968) ) (!  (=> true (= (select (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| QPMask@1) o_4@@82 f_5@@58) (select (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| QPMask@2) o_4@@82 f_5@@58)))
 :qid |stdinbpl.3401:29|
 :skolemid |239|
 :pattern ( (select (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| QPMask@1) o_4@@82 f_5@@58))
 :pattern ( (select (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| QPMask@2) o_4@@82 f_5@@58))
))) (and (state Heap@@41 QPMask@2) (state Heap@@41 QPMask@2))) (and (=> (= (ControlFlow 0 132) 131) anon79_Then_correct) (=> (= (ControlFlow 0 132) 103) anon79_Else_correct))))))))
(let ((anon23_correct true))
(let ((anon78_Else_correct  (=> (and (not (and (<= 0 i_36) (< i_36 len))) (= (ControlFlow 0 36) 32)) anon23_correct)))
(let ((anon78_Then_correct  (=> (and (<= 0 i_36) (< i_36 len)) (and (=> (= (ControlFlow 0 33) (- 0 35)) (>= i_36 0)) (=> (>= i_36 0) (and (=> (= (ControlFlow 0 33) (- 0 34)) (< i_36 (|Seq#Length_27038| cr))) (=> (< i_36 (|Seq#Length_27038| cr)) (=> (= (ControlFlow 0 33) 32) anon23_correct))))))))
(let ((anon75_Else_correct  (=> (and (forall ((j_5_1 Int) (k_5 Int) ) (!  (=> (and (<= 0 j_5_1) (and (< j_5_1 (|Seq#Length_27038| cr)) (and (<= 0 k_5) (and (< k_5 (|Seq#Length_27038| cr)) (not (= j_5_1 k_5)))))) (not (= (|Seq#Index_27038| cr j_5_1) (|Seq#Index_27038| cr k_5))))
 :qid |stdinbpl.3357:20|
 :skolemid |233|
 :pattern ( (|Seq#Index_27038| cr j_5_1) (|Seq#Index_27038| cr k_5))
)) (state Heap@@41 QPMask@1)) (and (and (=> (= (ControlFlow 0 134) 132) anon77_Else_correct) (=> (= (ControlFlow 0 134) 33) anon78_Then_correct)) (=> (= (ControlFlow 0 134) 36) anon78_Else_correct)))))
(let ((anon19_correct true))
(let ((anon76_Else_correct  (=> (and (not (and (<= 0 j_20) (and (< j_20 (|Seq#Length_27038| cr)) (and (<= 0 k_28) (and (< k_28 (|Seq#Length_27038| cr)) (not (= j_20 k_28))))))) (= (ControlFlow 0 31) 25)) anon19_correct)))
(let ((anon76_Then_correct  (=> (and (<= 0 j_20) (and (< j_20 (|Seq#Length_27038| cr)) (and (<= 0 k_28) (and (< k_28 (|Seq#Length_27038| cr)) (not (= j_20 k_28)))))) (and (=> (= (ControlFlow 0 26) (- 0 30)) (>= j_20 0)) (=> (>= j_20 0) (and (=> (= (ControlFlow 0 26) (- 0 29)) (< j_20 (|Seq#Length_27038| cr))) (=> (< j_20 (|Seq#Length_27038| cr)) (and (=> (= (ControlFlow 0 26) (- 0 28)) (>= k_28 0)) (=> (>= k_28 0) (and (=> (= (ControlFlow 0 26) (- 0 27)) (< k_28 (|Seq#Length_27038| cr))) (=> (< k_28 (|Seq#Length_27038| cr)) (=> (= (ControlFlow 0 26) 25) anon19_correct))))))))))))
(let ((anon73_Else_correct  (and (=> (= (ControlFlow 0 135) (- 0 137)) (forall ((i_3 Int) (i_3_1 Int) ) (!  (=> (and (and (and (and (not (= i_3 i_3_1)) (and (<= 0 i_3) (< i_3 len))) (and (<= 0 i_3_1) (< i_3_1 len))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_27038| br i_3) (|Seq#Index_27038| br i_3_1))))
 :qid |stdinbpl.3301:15|
 :skolemid |226|
))) (=> (forall ((i_3@@0 Int) (i_3_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_3@@0 i_3_1@@0)) (and (<= 0 i_3@@0) (< i_3@@0 len))) (and (<= 0 i_3_1@@0) (< i_3_1@@0 len))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_27038| br i_3@@0) (|Seq#Index_27038| br i_3_1@@0))))
 :qid |stdinbpl.3301:15|
 :skolemid |226|
)) (=> (and (forall ((i_3@@1 Int) ) (!  (=> (and (and (<= 0 i_3@@1) (< i_3@@1 len)) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange20 (|Seq#Index_27038| br i_3@@1)) (= (invRecv20 (|Seq#Index_27038| br i_3@@1)) i_3@@1)))
 :qid |stdinbpl.3307:22|
 :skolemid |227|
 :pattern ( (|Seq#Index_27038| br i_3@@1))
 :pattern ( (|Seq#Index_27038| br i_3@@1))
)) (forall ((o_4@@83 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv20 o_4@@83)) (< (invRecv20 o_4@@83) len)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange20 o_4@@83)) (= (|Seq#Index_27038| br (invRecv20 o_4@@83)) o_4@@83))
 :qid |stdinbpl.3311:22|
 :skolemid |228|
 :pattern ( (invRecv20 o_4@@83))
))) (and (=> (= (ControlFlow 0 135) (- 0 136)) (forall ((i_3@@2 Int) ) (!  (=> (and (<= 0 i_3@@2) (< i_3@@2 len)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3317:15|
 :skolemid |229|
 :pattern ( (|Seq#Index_27038| br i_3@@2))
 :pattern ( (|Seq#Index_27038| br i_3@@2))
))) (=> (forall ((i_3@@3 Int) ) (!  (=> (and (<= 0 i_3@@3) (< i_3@@3 len)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3317:15|
 :skolemid |229|
 :pattern ( (|Seq#Index_27038| br i_3@@3))
 :pattern ( (|Seq#Index_27038| br i_3@@3))
)) (=> (and (forall ((i_3@@4 Int) ) (!  (=> (and (and (<= 0 i_3@@4) (< i_3@@4 len)) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= (|Seq#Index_27038| br i_3@@4) null)))
 :qid |stdinbpl.3323:22|
 :skolemid |230|
 :pattern ( (|Seq#Index_27038| br i_3@@4))
 :pattern ( (|Seq#Index_27038| br i_3@@4))
)) (forall ((o_4@@84 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv20 o_4@@84)) (< (invRecv20 o_4@@84) len)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange20 o_4@@84)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (|Seq#Index_27038| br (invRecv20 o_4@@84)) o_4@@84)) (= (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@1) o_4@@84 Ref__Integer_value) (+ (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@0) o_4@@84 Ref__Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (<= 0 (invRecv20 o_4@@84)) (< (invRecv20 o_4@@84) len)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange20 o_4@@84))) (= (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@1) o_4@@84 Ref__Integer_value) (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@0) o_4@@84 Ref__Integer_value))))
 :qid |stdinbpl.3329:22|
 :skolemid |231|
 :pattern ( (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@1) o_4@@84 Ref__Integer_value))
))) (=> (and (and (and (and (and (forall ((o_4@@85 T@Ref) (f_5@@59 T@Field_38353_53) ) (!  (=> true (= (select (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| QPMask@0) o_4@@85 f_5@@59) (select (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| QPMask@1) o_4@@85 f_5@@59)))
 :qid |stdinbpl.3333:29|
 :skolemid |232|
 :pattern ( (select (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| QPMask@0) o_4@@85 f_5@@59))
 :pattern ( (select (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| QPMask@1) o_4@@85 f_5@@59))
)) (forall ((o_4@@86 T@Ref) (f_5@@60 T@Field_38366_38367) ) (!  (=> true (= (select (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| QPMask@0) o_4@@86 f_5@@60) (select (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| QPMask@1) o_4@@86 f_5@@60)))
 :qid |stdinbpl.3333:29|
 :skolemid |232|
 :pattern ( (select (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| QPMask@0) o_4@@86 f_5@@60))
 :pattern ( (select (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| QPMask@1) o_4@@86 f_5@@60))
))) (forall ((o_4@@87 T@Ref) (f_5@@61 T@Field_44439_3805) ) (!  (=> (not (= f_5@@61 Ref__Integer_value)) (= (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@0) o_4@@87 f_5@@61) (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@1) o_4@@87 f_5@@61)))
 :qid |stdinbpl.3333:29|
 :skolemid |232|
 :pattern ( (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@0) o_4@@87 f_5@@61))
 :pattern ( (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@1) o_4@@87 f_5@@61))
))) (forall ((o_4@@88 T@Ref) (f_5@@62 T@Field_26999_108835) ) (!  (=> true (= (select (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| QPMask@0) o_4@@88 f_5@@62) (select (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| QPMask@1) o_4@@88 f_5@@62)))
 :qid |stdinbpl.3333:29|
 :skolemid |232|
 :pattern ( (select (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| QPMask@0) o_4@@88 f_5@@62))
 :pattern ( (select (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| QPMask@1) o_4@@88 f_5@@62))
))) (forall ((o_4@@89 T@Ref) (f_5@@63 T@Field_26999_108968) ) (!  (=> true (= (select (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| QPMask@0) o_4@@89 f_5@@63) (select (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| QPMask@1) o_4@@89 f_5@@63)))
 :qid |stdinbpl.3333:29|
 :skolemid |232|
 :pattern ( (select (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| QPMask@0) o_4@@89 f_5@@63))
 :pattern ( (select (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| QPMask@1) o_4@@89 f_5@@63))
))) (and (and (state Heap@@41 QPMask@1) (state Heap@@41 QPMask@1)) (and (= (|Seq#Length_27038| cr) len) (state Heap@@41 QPMask@1)))) (and (and (=> (= (ControlFlow 0 135) 134) anon75_Else_correct) (=> (= (ControlFlow 0 135) 26) anon76_Then_correct)) (=> (= (ControlFlow 0 135) 31) anon76_Else_correct)))))))))))
(let ((anon15_correct true))
(let ((anon74_Else_correct  (=> (and (not (and (<= 0 i_34) (< i_34 len))) (= (ControlFlow 0 24) 20)) anon15_correct)))
(let ((anon74_Then_correct  (=> (and (<= 0 i_34) (< i_34 len)) (and (=> (= (ControlFlow 0 21) (- 0 23)) (>= i_34 0)) (=> (>= i_34 0) (and (=> (= (ControlFlow 0 21) (- 0 22)) (< i_34 (|Seq#Length_27038| br))) (=> (< i_34 (|Seq#Length_27038| br)) (=> (= (ControlFlow 0 21) 20) anon15_correct))))))))
(let ((anon71_Else_correct  (=> (and (forall ((j_3_1 Int) (k_3 Int) ) (!  (=> (and (<= 0 j_3_1) (and (< j_3_1 (|Seq#Length_27038| br)) (and (<= 0 k_3) (and (< k_3 (|Seq#Length_27038| br)) (not (= j_3_1 k_3)))))) (not (= (|Seq#Index_27038| br j_3_1) (|Seq#Index_27038| br k_3))))
 :qid |stdinbpl.3283:20|
 :skolemid |225|
 :pattern ( (|Seq#Index_27038| br j_3_1) (|Seq#Index_27038| br k_3))
)) (state Heap@@41 QPMask@0)) (and (and (=> (= (ControlFlow 0 138) 135) anon73_Else_correct) (=> (= (ControlFlow 0 138) 21) anon74_Then_correct)) (=> (= (ControlFlow 0 138) 24) anon74_Else_correct)))))
(let ((anon11_correct true))
(let ((anon72_Else_correct  (=> (and (not (and (<= 0 j_17) (and (< j_17 (|Seq#Length_27038| br)) (and (<= 0 k_26) (and (< k_26 (|Seq#Length_27038| br)) (not (= j_17 k_26))))))) (= (ControlFlow 0 19) 13)) anon11_correct)))
(let ((anon72_Then_correct  (=> (and (<= 0 j_17) (and (< j_17 (|Seq#Length_27038| br)) (and (<= 0 k_26) (and (< k_26 (|Seq#Length_27038| br)) (not (= j_17 k_26)))))) (and (=> (= (ControlFlow 0 14) (- 0 18)) (>= j_17 0)) (=> (>= j_17 0) (and (=> (= (ControlFlow 0 14) (- 0 17)) (< j_17 (|Seq#Length_27038| br))) (=> (< j_17 (|Seq#Length_27038| br)) (and (=> (= (ControlFlow 0 14) (- 0 16)) (>= k_26 0)) (=> (>= k_26 0) (and (=> (= (ControlFlow 0 14) (- 0 15)) (< k_26 (|Seq#Length_27038| br))) (=> (< k_26 (|Seq#Length_27038| br)) (=> (= (ControlFlow 0 14) 13) anon11_correct))))))))))))
(let ((anon69_Else_correct  (and (=> (= (ControlFlow 0 139) (- 0 140)) (forall ((i_1 Int) (i_1_1 Int) ) (!  (=> (and (and (and (and (not (= i_1 i_1_1)) (and (<= 0 i_1) (< i_1 len))) (and (<= 0 i_1_1) (< i_1_1 len))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27038| ar@@27 i_1) (|Seq#Index_27038| ar@@27 i_1_1))))
 :qid |stdinbpl.3233:15|
 :skolemid |219|
))) (=> (forall ((i_1@@0 Int) (i_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_1@@0 i_1_1@@0)) (and (<= 0 i_1@@0) (< i_1@@0 len))) (and (<= 0 i_1_1@@0) (< i_1_1@@0 len))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27038| ar@@27 i_1@@0) (|Seq#Index_27038| ar@@27 i_1_1@@0))))
 :qid |stdinbpl.3233:15|
 :skolemid |219|
)) (=> (and (and (forall ((i_1@@1 Int) ) (!  (=> (and (and (<= 0 i_1@@1) (< i_1@@1 len)) (< NoPerm FullPerm)) (and (qpRange19 (|Seq#Index_27038| ar@@27 i_1@@1)) (= (invRecv19 (|Seq#Index_27038| ar@@27 i_1@@1)) i_1@@1)))
 :qid |stdinbpl.3239:22|
 :skolemid |220|
 :pattern ( (|Seq#Index_27038| ar@@27 i_1@@1))
 :pattern ( (|Seq#Index_27038| ar@@27 i_1@@1))
)) (forall ((o_4@@90 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv19 o_4@@90)) (< (invRecv19 o_4@@90) len)) (< NoPerm FullPerm)) (qpRange19 o_4@@90)) (= (|Seq#Index_27038| ar@@27 (invRecv19 o_4@@90)) o_4@@90))
 :qid |stdinbpl.3243:22|
 :skolemid |221|
 :pattern ( (invRecv19 o_4@@90))
))) (and (forall ((i_1@@2 Int) ) (!  (=> (and (<= 0 i_1@@2) (< i_1@@2 len)) (not (= (|Seq#Index_27038| ar@@27 i_1@@2) null)))
 :qid |stdinbpl.3249:22|
 :skolemid |222|
 :pattern ( (|Seq#Index_27038| ar@@27 i_1@@2))
 :pattern ( (|Seq#Index_27038| ar@@27 i_1@@2))
)) (forall ((o_4@@91 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv19 o_4@@91)) (< (invRecv19 o_4@@91) len)) (< NoPerm FullPerm)) (qpRange19 o_4@@91)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_27038| ar@@27 (invRecv19 o_4@@91)) o_4@@91)) (= (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@0) o_4@@91 Ref__Integer_value) (+ (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| ZeroMask) o_4@@91 Ref__Integer_value) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv19 o_4@@91)) (< (invRecv19 o_4@@91) len)) (< NoPerm FullPerm)) (qpRange19 o_4@@91))) (= (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@0) o_4@@91 Ref__Integer_value) (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| ZeroMask) o_4@@91 Ref__Integer_value))))
 :qid |stdinbpl.3255:22|
 :skolemid |223|
 :pattern ( (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@0) o_4@@91 Ref__Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_4@@92 T@Ref) (f_5@@64 T@Field_38353_53) ) (!  (=> true (= (select (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| ZeroMask) o_4@@92 f_5@@64) (select (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| QPMask@0) o_4@@92 f_5@@64)))
 :qid |stdinbpl.3259:29|
 :skolemid |224|
 :pattern ( (select (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| ZeroMask) o_4@@92 f_5@@64))
 :pattern ( (select (|PolymorphicMapType_38314_26999_53#PolymorphicMapType_38314| QPMask@0) o_4@@92 f_5@@64))
)) (forall ((o_4@@93 T@Ref) (f_5@@65 T@Field_38366_38367) ) (!  (=> true (= (select (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| ZeroMask) o_4@@93 f_5@@65) (select (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| QPMask@0) o_4@@93 f_5@@65)))
 :qid |stdinbpl.3259:29|
 :skolemid |224|
 :pattern ( (select (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| ZeroMask) o_4@@93 f_5@@65))
 :pattern ( (select (|PolymorphicMapType_38314_26999_38367#PolymorphicMapType_38314| QPMask@0) o_4@@93 f_5@@65))
))) (forall ((o_4@@94 T@Ref) (f_5@@66 T@Field_44439_3805) ) (!  (=> (not (= f_5@@66 Ref__Integer_value)) (= (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| ZeroMask) o_4@@94 f_5@@66) (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@0) o_4@@94 f_5@@66)))
 :qid |stdinbpl.3259:29|
 :skolemid |224|
 :pattern ( (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| ZeroMask) o_4@@94 f_5@@66))
 :pattern ( (select (|PolymorphicMapType_38314_26999_3805#PolymorphicMapType_38314| QPMask@0) o_4@@94 f_5@@66))
))) (forall ((o_4@@95 T@Ref) (f_5@@67 T@Field_26999_108835) ) (!  (=> true (= (select (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| ZeroMask) o_4@@95 f_5@@67) (select (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| QPMask@0) o_4@@95 f_5@@67)))
 :qid |stdinbpl.3259:29|
 :skolemid |224|
 :pattern ( (select (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| ZeroMask) o_4@@95 f_5@@67))
 :pattern ( (select (|PolymorphicMapType_38314_26999_108835#PolymorphicMapType_38314| QPMask@0) o_4@@95 f_5@@67))
))) (forall ((o_4@@96 T@Ref) (f_5@@68 T@Field_26999_108968) ) (!  (=> true (= (select (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| ZeroMask) o_4@@96 f_5@@68) (select (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| QPMask@0) o_4@@96 f_5@@68)))
 :qid |stdinbpl.3259:29|
 :skolemid |224|
 :pattern ( (select (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| ZeroMask) o_4@@96 f_5@@68))
 :pattern ( (select (|PolymorphicMapType_38314_26999_113090#PolymorphicMapType_38314| QPMask@0) o_4@@96 f_5@@68))
))) (and (and (state Heap@@41 QPMask@0) (state Heap@@41 QPMask@0)) (and (= (|Seq#Length_27038| br) len) (state Heap@@41 QPMask@0)))) (and (and (=> (= (ControlFlow 0 139) 138) anon71_Else_correct) (=> (= (ControlFlow 0 139) 14) anon72_Then_correct)) (=> (= (ControlFlow 0 139) 19) anon72_Else_correct))))))))
(let ((anon7_correct true))
(let ((anon70_Else_correct  (=> (and (not (and (<= 0 i_32) (< i_32 len))) (= (ControlFlow 0 12) 8)) anon7_correct)))
(let ((anon70_Then_correct  (=> (and (<= 0 i_32) (< i_32 len)) (and (=> (= (ControlFlow 0 9) (- 0 11)) (>= i_32 0)) (=> (>= i_32 0) (and (=> (= (ControlFlow 0 9) (- 0 10)) (< i_32 (|Seq#Length_27038| ar@@27))) (=> (< i_32 (|Seq#Length_27038| ar@@27)) (=> (= (ControlFlow 0 9) 8) anon7_correct))))))))
(let ((anon67_Else_correct  (=> (and (forall ((j_1 Int) (k_1_1 Int) ) (!  (=> (and (<= 0 j_1) (and (< j_1 (|Seq#Length_27038| ar@@27)) (and (<= 0 k_1_1) (and (< k_1_1 (|Seq#Length_27038| ar@@27)) (not (= j_1 k_1_1)))))) (not (= (|Seq#Index_27038| ar@@27 j_1) (|Seq#Index_27038| ar@@27 k_1_1))))
 :qid |stdinbpl.3215:20|
 :skolemid |218|
 :pattern ( (|Seq#Index_27038| ar@@27 j_1) (|Seq#Index_27038| ar@@27 k_1_1))
)) (state Heap@@41 ZeroMask)) (and (and (=> (= (ControlFlow 0 141) 139) anon69_Else_correct) (=> (= (ControlFlow 0 141) 9) anon70_Then_correct)) (=> (= (ControlFlow 0 141) 12) anon70_Else_correct)))))
(let ((anon3_correct true))
(let ((anon68_Else_correct  (=> (and (not (and (<= 0 j_19) (and (< j_19 (|Seq#Length_27038| ar@@27)) (and (<= 0 k_24) (and (< k_24 (|Seq#Length_27038| ar@@27)) (not (= j_19 k_24))))))) (= (ControlFlow 0 7) 1)) anon3_correct)))
(let ((anon68_Then_correct  (=> (and (<= 0 j_19) (and (< j_19 (|Seq#Length_27038| ar@@27)) (and (<= 0 k_24) (and (< k_24 (|Seq#Length_27038| ar@@27)) (not (= j_19 k_24)))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= j_19 0)) (=> (>= j_19 0) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< j_19 (|Seq#Length_27038| ar@@27))) (=> (< j_19 (|Seq#Length_27038| ar@@27)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= k_24 0)) (=> (>= k_24 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< k_24 (|Seq#Length_27038| ar@@27))) (=> (< k_24 (|Seq#Length_27038| ar@@27)) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))))))))
(let ((anon0_correct  (=> (and (state Heap@@41 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (=> (and (and (and AssumePermUpperBound (select (|PolymorphicMapType_38293_26743_53#PolymorphicMapType_38293| Heap@@41) diz $allocated)) (and (not (= diz null)) (state Heap@@41 ZeroMask))) (and (and (>= current_thread_id 0) (state Heap@@41 ZeroMask)) (and (= (|Seq#Length_27038| ar@@27) len) (state Heap@@41 ZeroMask)))) (and (and (=> (= (ControlFlow 0 142) 141) anon67_Else_correct) (=> (= (ControlFlow 0 142) 2) anon68_Then_correct)) (=> (= (ControlFlow 0 142) 7) anon68_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 143) 142) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
