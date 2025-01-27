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
(declare-sort T@Field_39637_53 0)
(declare-sort T@Field_39650_39651 0)
(declare-sort T@Field_45723_3805 0)
(declare-sort T@Field_27882_111948 0)
(declare-sort T@Field_27882_111815 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_39598 0)) (((PolymorphicMapType_39598 (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| (Array T@Ref T@Field_45723_3805 Real)) (|PolymorphicMapType_39598_27882_53#PolymorphicMapType_39598| (Array T@Ref T@Field_39637_53 Real)) (|PolymorphicMapType_39598_27882_39651#PolymorphicMapType_39598| (Array T@Ref T@Field_39650_39651 Real)) (|PolymorphicMapType_39598_27882_111815#PolymorphicMapType_39598| (Array T@Ref T@Field_27882_111815 Real)) (|PolymorphicMapType_39598_27882_116070#PolymorphicMapType_39598| (Array T@Ref T@Field_27882_111948 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_40126 0)) (((PolymorphicMapType_40126 (|PolymorphicMapType_40126_39637_53#PolymorphicMapType_40126| (Array T@Ref T@Field_39637_53 Bool)) (|PolymorphicMapType_40126_39637_39651#PolymorphicMapType_40126| (Array T@Ref T@Field_39650_39651 Bool)) (|PolymorphicMapType_40126_39637_3805#PolymorphicMapType_40126| (Array T@Ref T@Field_45723_3805 Bool)) (|PolymorphicMapType_40126_39637_111815#PolymorphicMapType_40126| (Array T@Ref T@Field_27882_111815 Bool)) (|PolymorphicMapType_40126_39637_113126#PolymorphicMapType_40126| (Array T@Ref T@Field_27882_111948 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_39577 0)) (((PolymorphicMapType_39577 (|PolymorphicMapType_39577_27626_53#PolymorphicMapType_39577| (Array T@Ref T@Field_39637_53 Bool)) (|PolymorphicMapType_39577_27629_27630#PolymorphicMapType_39577| (Array T@Ref T@Field_39650_39651 T@Ref)) (|PolymorphicMapType_39577_27882_3805#PolymorphicMapType_39577| (Array T@Ref T@Field_45723_3805 Int)) (|PolymorphicMapType_39577_27882_111992#PolymorphicMapType_39577| (Array T@Ref T@Field_27882_111948 T@PolymorphicMapType_40126)) (|PolymorphicMapType_39577_39637_111815#PolymorphicMapType_39577| (Array T@Ref T@Field_27882_111815 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_39637_53)
(declare-fun Ref__Integer_value () T@Field_45723_3805)
(declare-sort T@Seq_48769 0)
(declare-fun |Seq#Length_27962| (T@Seq_48769) Int)
(declare-fun |Seq#Drop_27962| (T@Seq_48769 Int) T@Seq_48769)
(declare-sort T@Seq_3683 0)
(declare-fun |Seq#Length_3683| (T@Seq_3683) Int)
(declare-fun |Seq#Drop_3683| (T@Seq_3683 Int) T@Seq_3683)
(declare-fun state (T@PolymorphicMapType_39577 T@PolymorphicMapType_39598) Bool)
(declare-fun |Ref__multidim_index_2'| (T@PolymorphicMapType_39577 Int Int Int Int) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |Ref__multidim_index_2#trigger| (T@FrameType Int Int Int Int) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |count_square'| (T@PolymorphicMapType_39577 Int Int Int Int Int Int T@Seq_48769 Int) Int)
(declare-fun |count_square#frame| (T@FrameType Int Int Int Int Int Int T@Seq_48769 Int) Int)
(declare-fun FrameFragment_5444 (Int) T@FrameType)
(declare-fun |count_square#condqp3| (T@PolymorphicMapType_39577 Int Int Int Int Int Int T@Seq_48769 Int) Int)
(declare-fun succHeap (T@PolymorphicMapType_39577 T@PolymorphicMapType_39577) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_39577 T@PolymorphicMapType_39577) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_39598) Bool)
(declare-fun sum_square (T@PolymorphicMapType_39577 Int Int Int Int Int Int T@Seq_48769) Int)
(declare-fun |Seq#Index_27939| (T@Seq_48769 Int) T@Ref)
(declare-fun |sum_square'| (T@PolymorphicMapType_39577 Int Int Int Int Int Int T@Seq_48769) Int)
(declare-fun |sum_list'| (T@PolymorphicMapType_39577 Int Int T@Seq_3683) Int)
(declare-fun dummyFunction_4485 (Int) Bool)
(declare-fun |sum_list#triggerStateless| (Int Int T@Seq_3683) Int)
(declare-fun ZeroPMask () T@PolymorphicMapType_40126)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3683| (T@Seq_3683 Int) Int)
(declare-fun |Seq#Empty_27962| () T@Seq_48769)
(declare-fun |Seq#Empty_3683| () T@Seq_3683)
(declare-fun |Seq#Update_27962| (T@Seq_48769 Int T@Ref) T@Seq_48769)
(declare-fun |Seq#Update_3683| (T@Seq_3683 Int Int) T@Seq_3683)
(declare-fun |Seq#Take_27962| (T@Seq_48769 Int) T@Seq_48769)
(declare-fun |Seq#Take_3683| (T@Seq_3683 Int) T@Seq_3683)
(declare-fun |Seq#Contains_3683| (T@Seq_3683 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3683)
(declare-fun |Seq#Contains_48769| (T@Seq_48769 T@Ref) Bool)
(declare-fun |Seq#Skolem_48769| (T@Seq_48769 T@Ref) Int)
(declare-fun |Seq#Skolem_3683| (T@Seq_3683 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_39577 T@PolymorphicMapType_39577 T@PolymorphicMapType_39598) Bool)
(declare-fun IsPredicateField_27882_111906 (T@Field_27882_111815) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_27882 (T@Field_27882_111815) T@Field_27882_111948)
(declare-fun HasDirectPerm_27882_111879 (T@PolymorphicMapType_39598 T@Ref T@Field_27882_111815) Bool)
(declare-fun IsWandField_27882_113653 (T@Field_27882_111815) Bool)
(declare-fun WandMaskField_27882 (T@Field_27882_111815) T@Field_27882_111948)
(declare-fun |Seq#Singleton_27962| (T@Ref) T@Seq_48769)
(declare-fun |Seq#Singleton_3683| (Int) T@Seq_3683)
(declare-fun count_square (T@PolymorphicMapType_39577 Int Int Int Int Int Int T@Seq_48769 Int) Int)
(declare-fun |count_square#triggerStateless| (Int Int Int Int Int Int T@Seq_48769 Int) Int)
(declare-fun |Seq#Append_48769| (T@Seq_48769 T@Seq_48769) T@Seq_48769)
(declare-fun |Seq#Append_3683| (T@Seq_3683 T@Seq_3683) T@Seq_3683)
(declare-fun |sum_square#condqp2| (T@PolymorphicMapType_39577 Int Int Int Int Int Int T@Seq_48769) Int)
(declare-fun |sk_sum_square#condqp2| (Int Int) Int)
(declare-fun |sk_count_square#condqp3| (Int Int) Int)
(declare-fun dummyHeap () T@PolymorphicMapType_39577)
(declare-fun ZeroMask () T@PolymorphicMapType_39598)
(declare-fun InsidePredicate_39637_39637 (T@Field_27882_111815 T@FrameType T@Field_27882_111815 T@FrameType) Bool)
(declare-fun IsPredicateField_27882_3805 (T@Field_45723_3805) Bool)
(declare-fun IsWandField_27882_3805 (T@Field_45723_3805) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_27882_117199 (T@Field_27882_111948) Bool)
(declare-fun IsWandField_27882_117215 (T@Field_27882_111948) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_27882_39651 (T@Field_39650_39651) Bool)
(declare-fun IsWandField_27882_39651 (T@Field_39650_39651) Bool)
(declare-fun IsPredicateField_27882_53 (T@Field_39637_53) Bool)
(declare-fun IsWandField_27882_53 (T@Field_39637_53) Bool)
(declare-fun |sum_list#frame| (T@FrameType Int Int T@Seq_3683) Int)
(declare-fun count_array (T@PolymorphicMapType_39577 Int Int T@Seq_48769 Int) Int)
(declare-fun |count_array'| (T@PolymorphicMapType_39577 Int Int T@Seq_48769 Int) Int)
(declare-fun HasDirectPerm_27882_117653 (T@PolymorphicMapType_39598 T@Ref T@Field_27882_111948) Bool)
(declare-fun HasDirectPerm_27882_39651 (T@PolymorphicMapType_39598 T@Ref T@Field_39650_39651) Bool)
(declare-fun HasDirectPerm_27882_53 (T@PolymorphicMapType_39598 T@Ref T@Field_39637_53) Bool)
(declare-fun HasDirectPerm_27882_3805 (T@PolymorphicMapType_39598 T@Ref T@Field_45723_3805) Bool)
(declare-fun |Ref__multidim_index_2#triggerStateless| (Int Int Int Int) Int)
(declare-fun |sum_array'| (T@PolymorphicMapType_39577 Int Int Int T@Seq_48769) Int)
(declare-fun |sum_array#triggerStateless| (Int Int Int T@Seq_48769) Int)
(declare-fun |count_list'| (T@PolymorphicMapType_39577 Int Int T@Seq_3683 Int) Int)
(declare-fun |count_list#triggerStateless| (Int Int T@Seq_3683 Int) Int)
(declare-fun |count_array#triggerStateless| (Int Int T@Seq_48769 Int) Int)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun count_list (T@PolymorphicMapType_39577 Int Int T@Seq_3683 Int) Int)
(declare-fun Ref__multidim_index_2 (T@PolymorphicMapType_39577 Int Int Int Int) Int)
(declare-fun sum_array (T@PolymorphicMapType_39577 Int Int Int T@Seq_48769) Int)
(declare-fun sumMask (T@PolymorphicMapType_39598 T@PolymorphicMapType_39598 T@PolymorphicMapType_39598) Bool)
(declare-fun |sum_square#triggerStateless| (Int Int Int Int Int Int T@Seq_48769) Int)
(declare-fun |Ref__multidim_index_2#frame| (T@FrameType Int Int Int Int) Int)
(declare-fun |count_list#frame| (T@FrameType Int Int T@Seq_3683 Int) Int)
(declare-fun |Seq#Equal_48769| (T@Seq_48769 T@Seq_48769) Bool)
(declare-fun |Seq#Equal_3683| (T@Seq_3683 T@Seq_3683) Bool)
(declare-fun sum_list (T@PolymorphicMapType_39577 Int Int T@Seq_3683) Int)
(declare-fun |Seq#ContainsTrigger_27962| (T@Seq_48769 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3683| (T@Seq_3683 Int) Bool)
(declare-fun |count_array#condqp4| (T@PolymorphicMapType_39577 Int Int T@Seq_48769 Int) Int)
(declare-fun |sk_count_array#condqp4| (Int Int) Int)
(declare-fun |sum_array#condqp1| (T@PolymorphicMapType_39577 Int Int Int T@Seq_48769) Int)
(declare-fun |sk_sum_array#condqp1| (Int Int) Int)
(declare-fun |sum_square#frame| (T@FrameType Int Int Int Int Int Int T@Seq_48769) Int)
(declare-fun |Seq#SkolemDiff_48769| (T@Seq_48769 T@Seq_48769) Int)
(declare-fun |Seq#SkolemDiff_3683| (T@Seq_3683 T@Seq_3683) Int)
(declare-fun |sum_array#frame| (T@FrameType Int Int Int T@Seq_48769) Int)
(declare-fun |count_array#frame| (T@FrameType Int Int T@Seq_48769 Int) Int)
(assert (forall ((s T@Seq_48769) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_27962| s)) (= (|Seq#Length_27962| (|Seq#Drop_27962| s n)) (- (|Seq#Length_27962| s) n))) (=> (< (|Seq#Length_27962| s) n) (= (|Seq#Length_27962| (|Seq#Drop_27962| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_27962| (|Seq#Drop_27962| s n)) (|Seq#Length_27962| s))))
 :qid |stdinbpl.396:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_27962| (|Seq#Drop_27962| s n)))
 :pattern ( (|Seq#Length_27962| s) (|Seq#Drop_27962| s n))
)))
(assert (forall ((s@@0 T@Seq_3683) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3683| s@@0)) (= (|Seq#Length_3683| (|Seq#Drop_3683| s@@0 n@@0)) (- (|Seq#Length_3683| s@@0) n@@0))) (=> (< (|Seq#Length_3683| s@@0) n@@0) (= (|Seq#Length_3683| (|Seq#Drop_3683| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3683| (|Seq#Drop_3683| s@@0 n@@0)) (|Seq#Length_3683| s@@0))))
 :qid |stdinbpl.396:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3683| (|Seq#Drop_3683| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3683| s@@0) (|Seq#Drop_3683| s@@0 n@@0))
)))
(assert (forall ((Heap T@PolymorphicMapType_39577) (Mask T@PolymorphicMapType_39598) (N0 Int) (N1 Int) (i0_3 Int) (i1_9 Int) ) (!  (=> (and (state Heap Mask) (or (< AssumeFunctionsAbove 1) (|Ref__multidim_index_2#trigger| EmptyFrame N0 N1 i0_3 i1_9))) (=> (and (and (and (and (and (<= 0 i0_3) (< i0_3 N0)) (<= 0 N0)) (<= 0 i1_9)) (< i1_9 N1)) (<= 0 N1)) (= (|Ref__multidim_index_2'| Heap N0 N1 i0_3 i1_9) (+ (* i0_3 N1) i1_9))))
 :qid |stdinbpl.703:15|
 :skolemid |63|
 :pattern ( (state Heap Mask) (|Ref__multidim_index_2'| Heap N0 N1 i0_3 i1_9))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_39577) (Mask@@0 T@PolymorphicMapType_39598) (i Int) (lo Int) (hi Int) (step Int) (vmin Int) (vmax_1 Int) (ar_1 T@Seq_48769) (v_2 Int) ) (!  (=> (state Heap@@0 Mask@@0) (= (|count_square'| Heap@@0 i lo hi step vmin vmax_1 ar_1 v_2) (|count_square#frame| (FrameFragment_5444 (|count_square#condqp3| Heap@@0 i lo hi step vmin vmax_1 ar_1 v_2)) i lo hi step vmin vmax_1 ar_1 v_2)))
 :qid |stdinbpl.1294:15|
 :skolemid |109|
 :pattern ( (state Heap@@0 Mask@@0) (|count_square'| Heap@@0 i lo hi step vmin vmax_1 ar_1 v_2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_39577) (Mask@@1 T@PolymorphicMapType_39598) (N0@@0 Int) (N1@@0 Int) (i0_3@@0 Int) (i1_9@@0 Int) ) (!  (=> (and (state Heap@@1 Mask@@1) (or (< AssumeFunctionsAbove 1) (|Ref__multidim_index_2#trigger| EmptyFrame N0@@0 N1@@0 i0_3@@0 i1_9@@0))) (=> (and (and (and (and (and (<= 0 i0_3@@0) (< i0_3@@0 N0@@0)) (<= 0 N0@@0)) (<= 0 i1_9@@0)) (< i1_9@@0 N1@@0)) (<= 0 N1@@0)) (< (mod (|Ref__multidim_index_2'| Heap@@1 N0@@0 N1@@0 i0_3@@0 i1_9@@0) N1@@0) N0@@0)))
 :qid |stdinbpl.711:15|
 :skolemid |65|
 :pattern ( (state Heap@@1 Mask@@1) (|Ref__multidim_index_2'| Heap@@1 N0@@0 N1@@0 i0_3@@0 i1_9@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_39577) (Heap1 T@PolymorphicMapType_39577) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_39577) (Mask@@2 T@PolymorphicMapType_39598) ) (!  (=> (state Heap@@2 Mask@@2) (GoodMask Mask@@2))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@2 Mask@@2))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_39577) (Heap1@@0 T@PolymorphicMapType_39577) (Heap2 T@PolymorphicMapType_39577) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_39577) (Mask@@3 T@PolymorphicMapType_39598) (i@@0 Int) (lo@@0 Int) (hi@@0 Int) (step@@0 Int) (vmin@@0 Int) (vmax_1@@0 Int) (ar_1@@0 T@Seq_48769) ) (!  (=> (and (state Heap@@3 Mask@@3) (< AssumeFunctionsAbove 3)) (=> (and (and (<= 0 lo@@0) (and (<= lo@@0 hi@@0) (and (<= hi@@0 step@@0) (> step@@0 0)))) (and (<= 0 vmin@@0) (and (<= vmin@@0 i@@0) (<= i@@0 vmax_1@@0)))) (= (sum_square Heap@@3 i@@0 lo@@0 hi@@0 step@@0 vmin@@0 vmax_1@@0 ar_1@@0) (ite (< i@@0 vmax_1@@0) (+ (ite  (and (<= lo@@0 (mod i@@0 step@@0)) (< (mod i@@0 step@@0) hi@@0)) (select (|PolymorphicMapType_39577_27882_3805#PolymorphicMapType_39577| Heap@@3) (|Seq#Index_27939| ar_1@@0 i@@0) Ref__Integer_value) 0) (|sum_square'| Heap@@3 (+ i@@0 1) lo@@0 hi@@0 step@@0 vmin@@0 vmax_1@@0 ar_1@@0)) 0))))
 :qid |stdinbpl.1063:15|
 :skolemid |90|
 :pattern ( (state Heap@@3 Mask@@3) (sum_square Heap@@3 i@@0 lo@@0 hi@@0 step@@0 vmin@@0 vmax_1@@0 ar_1@@0))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_39577) (i@@1 Int) (hi@@1 Int) (ar_1@@1 T@Seq_3683) ) (! (dummyFunction_4485 (|sum_list#triggerStateless| i@@1 hi@@1 ar_1@@1))
 :qid |stdinbpl.779:15|
 :skolemid |67|
 :pattern ( (|sum_list'| Heap@@4 i@@1 hi@@1 ar_1@@1))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_27882_111948) ) (!  (not (select (|PolymorphicMapType_40126_39637_113126#PolymorphicMapType_40126| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_40126_39637_113126#PolymorphicMapType_40126| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_27882_111815) ) (!  (not (select (|PolymorphicMapType_40126_39637_111815#PolymorphicMapType_40126| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_40126_39637_111815#PolymorphicMapType_40126| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_45723_3805) ) (!  (not (select (|PolymorphicMapType_40126_39637_3805#PolymorphicMapType_40126| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_40126_39637_3805#PolymorphicMapType_40126| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_39650_39651) ) (!  (not (select (|PolymorphicMapType_40126_39637_39651#PolymorphicMapType_40126| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_40126_39637_39651#PolymorphicMapType_40126| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_39637_53) ) (!  (not (select (|PolymorphicMapType_40126_39637_53#PolymorphicMapType_40126| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_40126_39637_53#PolymorphicMapType_40126| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((s@@1 T@Seq_48769) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_27962| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_27939| (|Seq#Drop_27962| s@@1 n@@1) j) (|Seq#Index_27939| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.417:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_27939| (|Seq#Drop_27962| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3683) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3683| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3683| (|Seq#Drop_3683| s@@2 n@@2) j@@0) (|Seq#Index_3683| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.417:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3683| (|Seq#Drop_3683| s@@2 n@@2) j@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_39577) (Mask@@4 T@PolymorphicMapType_39598) (N0@@1 Int) (N1@@1 Int) (i0_3@@1 Int) (i1_9@@1 Int) ) (!  (=> (and (state Heap@@5 Mask@@4) (or (< AssumeFunctionsAbove 1) (|Ref__multidim_index_2#trigger| EmptyFrame N0@@1 N1@@1 i0_3@@1 i1_9@@1))) (=> (and (and (and (and (and (<= 0 i0_3@@1) (< i0_3@@1 N0@@1)) (<= 0 N0@@1)) (<= 0 i1_9@@1)) (< i1_9@@1 N1@@1)) (<= 0 N1@@1)) (= (mod (|Ref__multidim_index_2'| Heap@@5 N0@@1 N1@@1 i0_3@@1 i1_9@@1) N1@@1) i1_9@@1)))
 :qid |stdinbpl.707:15|
 :skolemid |64|
 :pattern ( (state Heap@@5 Mask@@4) (|Ref__multidim_index_2'| Heap@@5 N0@@1 N1@@1 i0_3@@1 i1_9@@1))
)))
(assert (= (|Seq#Length_27962| |Seq#Empty_27962|) 0))
(assert (= (|Seq#Length_3683| |Seq#Empty_3683|) 0))
(assert (forall ((s@@3 T@Seq_48769) (i@@2 Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_27962| s@@3))) (and (=> (= i@@2 n@@3) (= (|Seq#Index_27939| (|Seq#Update_27962| s@@3 i@@2 v) n@@3) v)) (=> (not (= i@@2 n@@3)) (= (|Seq#Index_27939| (|Seq#Update_27962| s@@3 i@@2 v) n@@3) (|Seq#Index_27939| s@@3 n@@3)))))
 :qid |stdinbpl.372:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_27939| (|Seq#Update_27962| s@@3 i@@2 v) n@@3))
 :pattern ( (|Seq#Index_27939| s@@3 n@@3) (|Seq#Update_27962| s@@3 i@@2 v))
)))
(assert (forall ((s@@4 T@Seq_3683) (i@@3 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3683| s@@4))) (and (=> (= i@@3 n@@4) (= (|Seq#Index_3683| (|Seq#Update_3683| s@@4 i@@3 v@@0) n@@4) v@@0)) (=> (not (= i@@3 n@@4)) (= (|Seq#Index_3683| (|Seq#Update_3683| s@@4 i@@3 v@@0) n@@4) (|Seq#Index_3683| s@@4 n@@4)))))
 :qid |stdinbpl.372:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3683| (|Seq#Update_3683| s@@4 i@@3 v@@0) n@@4))
 :pattern ( (|Seq#Index_3683| s@@4 n@@4) (|Seq#Update_3683| s@@4 i@@3 v@@0))
)))
(assert (forall ((s@@5 T@Seq_48769) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_27962| s@@5)) (= (|Seq#Length_27962| (|Seq#Take_27962| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_27962| s@@5) n@@5) (= (|Seq#Length_27962| (|Seq#Take_27962| s@@5 n@@5)) (|Seq#Length_27962| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_27962| (|Seq#Take_27962| s@@5 n@@5)) 0)))
 :qid |stdinbpl.383:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_27962| (|Seq#Take_27962| s@@5 n@@5)))
 :pattern ( (|Seq#Take_27962| s@@5 n@@5) (|Seq#Length_27962| s@@5))
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
(assert (forall ((s@@7 T@Seq_48769) (x T@Ref) ) (!  (=> (|Seq#Contains_48769| s@@7 x) (and (and (<= 0 (|Seq#Skolem_48769| s@@7 x)) (< (|Seq#Skolem_48769| s@@7 x) (|Seq#Length_27962| s@@7))) (= (|Seq#Index_27939| s@@7 (|Seq#Skolem_48769| s@@7 x)) x)))
 :qid |stdinbpl.515:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_48769| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3683) (x@@0 Int) ) (!  (=> (|Seq#Contains_3683| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3683| s@@8 x@@0)) (< (|Seq#Skolem_3683| s@@8 x@@0) (|Seq#Length_3683| s@@8))) (= (|Seq#Index_3683| s@@8 (|Seq#Skolem_3683| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.515:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3683| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_48769) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_27962| s@@9 n@@7) s@@9))
 :qid |stdinbpl.499:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_27962| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3683) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3683| s@@10 n@@8) s@@10))
 :qid |stdinbpl.499:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3683| s@@10 n@@8))
)))
(assert (forall ((i@@4 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@4 j@@1) (- i@@4 j@@1))
 :qid |stdinbpl.352:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@4 j@@1))
)))
(assert (forall ((i@@5 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@5 j@@2) (+ i@@5 j@@2))
 :qid |stdinbpl.350:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@5 j@@2))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_39577) (ExhaleHeap T@PolymorphicMapType_39577) (Mask@@5 T@PolymorphicMapType_39598) (pm_f_53 T@Field_27882_111815) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap Mask@@5) (=> (and (HasDirectPerm_27882_111879 Mask@@5 null pm_f_53) (IsPredicateField_27882_111906 pm_f_53)) (= (select (|PolymorphicMapType_39577_27882_111992#PolymorphicMapType_39577| Heap@@6) null (PredicateMaskField_27882 pm_f_53)) (select (|PolymorphicMapType_39577_27882_111992#PolymorphicMapType_39577| ExhaleHeap) null (PredicateMaskField_27882 pm_f_53)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap Mask@@5) (IsPredicateField_27882_111906 pm_f_53) (select (|PolymorphicMapType_39577_27882_111992#PolymorphicMapType_39577| ExhaleHeap) null (PredicateMaskField_27882 pm_f_53)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_39577) (ExhaleHeap@@0 T@PolymorphicMapType_39577) (Mask@@6 T@PolymorphicMapType_39598) (pm_f_53@@0 T@Field_27882_111815) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@0 Mask@@6) (=> (and (HasDirectPerm_27882_111879 Mask@@6 null pm_f_53@@0) (IsWandField_27882_113653 pm_f_53@@0)) (= (select (|PolymorphicMapType_39577_27882_111992#PolymorphicMapType_39577| Heap@@7) null (WandMaskField_27882 pm_f_53@@0)) (select (|PolymorphicMapType_39577_27882_111992#PolymorphicMapType_39577| ExhaleHeap@@0) null (WandMaskField_27882 pm_f_53@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@0 Mask@@6) (IsWandField_27882_113653 pm_f_53@@0) (select (|PolymorphicMapType_39577_27882_111992#PolymorphicMapType_39577| ExhaleHeap@@0) null (WandMaskField_27882 pm_f_53@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_48769| (|Seq#Singleton_27962| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.640:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_48769| (|Seq#Singleton_27962| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3683| (|Seq#Singleton_3683| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.640:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3683| (|Seq#Singleton_3683| x@@2) y@@0))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_39577) (i@@6 Int) (lo@@1 Int) (hi@@2 Int) (step@@1 Int) (vmin@@1 Int) (vmax_1@@1 Int) (ar_1@@2 T@Seq_48769) (v_2@@0 Int) ) (!  (and (= (count_square Heap@@8 i@@6 lo@@1 hi@@2 step@@1 vmin@@1 vmax_1@@1 ar_1@@2 v_2@@0) (|count_square'| Heap@@8 i@@6 lo@@1 hi@@2 step@@1 vmin@@1 vmax_1@@1 ar_1@@2 v_2@@0)) (dummyFunction_4485 (|count_square#triggerStateless| i@@6 lo@@1 hi@@2 step@@1 vmin@@1 vmax_1@@1 ar_1@@2 v_2@@0)))
 :qid |stdinbpl.1277:15|
 :skolemid |106|
 :pattern ( (count_square Heap@@8 i@@6 lo@@1 hi@@2 step@@1 vmin@@1 vmax_1@@1 ar_1@@2 v_2@@0))
)))
(assert (forall ((s@@11 T@Seq_48769) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_27962| s@@11))) (= (|Seq#Index_27939| (|Seq#Take_27962| s@@11 n@@9) j@@3) (|Seq#Index_27939| s@@11 j@@3)))
 :qid |stdinbpl.391:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_27939| (|Seq#Take_27962| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_27939| s@@11 j@@3) (|Seq#Take_27962| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3683) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3683| s@@12))) (= (|Seq#Index_3683| (|Seq#Take_3683| s@@12 n@@10) j@@4) (|Seq#Index_3683| s@@12 j@@4)))
 :qid |stdinbpl.391:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3683| (|Seq#Take_3683| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3683| s@@12 j@@4) (|Seq#Take_3683| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_48769) (t T@Seq_48769) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_27962| s@@13))) (< n@@11 (|Seq#Length_27962| (|Seq#Append_48769| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_27962| s@@13)) (|Seq#Length_27962| s@@13)) n@@11) (= (|Seq#Take_27962| (|Seq#Append_48769| s@@13 t) n@@11) (|Seq#Append_48769| s@@13 (|Seq#Take_27962| t (|Seq#Sub| n@@11 (|Seq#Length_27962| s@@13)))))))
 :qid |stdinbpl.476:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_27962| (|Seq#Append_48769| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3683) (t@@0 T@Seq_3683) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3683| s@@14))) (< n@@12 (|Seq#Length_3683| (|Seq#Append_3683| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3683| s@@14)) (|Seq#Length_3683| s@@14)) n@@12) (= (|Seq#Take_3683| (|Seq#Append_3683| s@@14 t@@0) n@@12) (|Seq#Append_3683| s@@14 (|Seq#Take_3683| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3683| s@@14)))))))
 :qid |stdinbpl.476:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3683| (|Seq#Append_3683| s@@14 t@@0) n@@12))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_39577) (i@@7 Int) (lo@@2 Int) (hi@@3 Int) (step@@2 Int) (vmin@@2 Int) (vmax_1@@2 Int) (ar_1@@3 T@Seq_48769) (v_2@@1 Int) ) (! (dummyFunction_4485 (|count_square#triggerStateless| i@@7 lo@@2 hi@@3 step@@2 vmin@@2 vmax_1@@2 ar_1@@3 v_2@@1))
 :qid |stdinbpl.1281:15|
 :skolemid |107|
 :pattern ( (|count_square'| Heap@@9 i@@7 lo@@2 hi@@3 step@@2 vmin@@2 vmax_1@@2 ar_1@@3 v_2@@1))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_39577) (Mask@@7 T@PolymorphicMapType_39598) (i@@8 Int) (lo@@3 Int) (hi@@4 Int) (step@@3 Int) (vmin@@3 Int) (vmax_1@@3 Int) (ar_1@@4 T@Seq_48769) (v_2@@2 Int) ) (!  (=> (and (state Heap@@10 Mask@@7) (< AssumeFunctionsAbove 4)) (=> (and (and (<= 0 lo@@3) (and (<= lo@@3 hi@@4) (and (<= hi@@4 step@@3) (> step@@3 0)))) (and (<= 0 vmin@@3) (and (<= vmin@@3 i@@8) (<= i@@8 vmax_1@@3)))) (= (count_square Heap@@10 i@@8 lo@@3 hi@@4 step@@3 vmin@@3 vmax_1@@3 ar_1@@4 v_2@@2) (ite (< i@@8 vmax_1@@3) (+ (ite  (and (<= lo@@3 (mod i@@8 step@@3)) (and (< (mod i@@8 step@@3) hi@@4) (= (select (|PolymorphicMapType_39577_27882_3805#PolymorphicMapType_39577| Heap@@10) (|Seq#Index_27939| ar_1@@4 i@@8) Ref__Integer_value) v_2@@2))) 1 0) (|count_square'| Heap@@10 (+ i@@8 1) lo@@3 hi@@4 step@@3 vmin@@3 vmax_1@@3 ar_1@@4 v_2@@2)) 0))))
 :qid |stdinbpl.1287:15|
 :skolemid |108|
 :pattern ( (state Heap@@10 Mask@@7) (count_square Heap@@10 i@@8 lo@@3 hi@@4 step@@3 vmin@@3 vmax_1@@3 ar_1@@4 v_2@@2))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_39577) (Heap1Heap T@PolymorphicMapType_39577) (i@@9 Int) (lo@@4 Int) (hi@@5 Int) (step@@4 Int) (vmin@@4 Int) (vmax_1@@4 Int) (ar_1@@5 T@Seq_48769) ) (!  (=> (and (=  (and (<= vmin@@4 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax_1@@4 ar_1@@5) (|sum_square#condqp2| Heap1Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax_1@@4 ar_1@@5))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax_1@@4 ar_1@@5) (|sum_square#condqp2| Heap1Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax_1@@4 ar_1@@5)) vmax_1@@4) (and (<= lo@@4 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax_1@@4 ar_1@@5) (|sum_square#condqp2| Heap1Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax_1@@4 ar_1@@5)) step@@4)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax_1@@4 ar_1@@5) (|sum_square#condqp2| Heap1Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax_1@@4 ar_1@@5)) step@@4) hi@@5))))  (and (<= vmin@@4 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax_1@@4 ar_1@@5) (|sum_square#condqp2| Heap1Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax_1@@4 ar_1@@5))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax_1@@4 ar_1@@5) (|sum_square#condqp2| Heap1Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax_1@@4 ar_1@@5)) vmax_1@@4) (and (<= lo@@4 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax_1@@4 ar_1@@5) (|sum_square#condqp2| Heap1Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax_1@@4 ar_1@@5)) step@@4)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax_1@@4 ar_1@@5) (|sum_square#condqp2| Heap1Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax_1@@4 ar_1@@5)) step@@4) hi@@5))))) (=> (and (<= vmin@@4 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax_1@@4 ar_1@@5) (|sum_square#condqp2| Heap1Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax_1@@4 ar_1@@5))) (and (< (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax_1@@4 ar_1@@5) (|sum_square#condqp2| Heap1Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax_1@@4 ar_1@@5)) vmax_1@@4) (and (<= lo@@4 (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax_1@@4 ar_1@@5) (|sum_square#condqp2| Heap1Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax_1@@4 ar_1@@5)) step@@4)) (< (mod (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax_1@@4 ar_1@@5) (|sum_square#condqp2| Heap1Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax_1@@4 ar_1@@5)) step@@4) hi@@5)))) (= (select (|PolymorphicMapType_39577_27882_3805#PolymorphicMapType_39577| Heap2Heap) (|Seq#Index_27939| ar_1@@5 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax_1@@4 ar_1@@5) (|sum_square#condqp2| Heap1Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax_1@@4 ar_1@@5))) Ref__Integer_value) (select (|PolymorphicMapType_39577_27882_3805#PolymorphicMapType_39577| Heap1Heap) (|Seq#Index_27939| ar_1@@5 (|sk_sum_square#condqp2| (|sum_square#condqp2| Heap2Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax_1@@4 ar_1@@5) (|sum_square#condqp2| Heap1Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax_1@@4 ar_1@@5))) Ref__Integer_value)))) (= (|sum_square#condqp2| Heap2Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax_1@@4 ar_1@@5) (|sum_square#condqp2| Heap1Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax_1@@4 ar_1@@5)))
 :qid |stdinbpl.1080:15|
 :skolemid |92|
 :pattern ( (|sum_square#condqp2| Heap2Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax_1@@4 ar_1@@5) (|sum_square#condqp2| Heap1Heap i@@9 lo@@4 hi@@5 step@@4 vmin@@4 vmax_1@@4 ar_1@@5) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_39577) (Heap1Heap@@0 T@PolymorphicMapType_39577) (i@@10 Int) (lo@@5 Int) (hi@@6 Int) (step@@5 Int) (vmin@@5 Int) (vmax_1@@5 Int) (ar_1@@6 T@Seq_48769) (v_2@@3 Int) ) (!  (=> (and (=  (and (<= vmin@@5 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax_1@@5 ar_1@@6 v_2@@3) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax_1@@5 ar_1@@6 v_2@@3))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax_1@@5 ar_1@@6 v_2@@3) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax_1@@5 ar_1@@6 v_2@@3)) vmax_1@@5) (and (<= lo@@5 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax_1@@5 ar_1@@6 v_2@@3) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax_1@@5 ar_1@@6 v_2@@3)) step@@5)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax_1@@5 ar_1@@6 v_2@@3) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax_1@@5 ar_1@@6 v_2@@3)) step@@5) hi@@6))))  (and (<= vmin@@5 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax_1@@5 ar_1@@6 v_2@@3) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax_1@@5 ar_1@@6 v_2@@3))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax_1@@5 ar_1@@6 v_2@@3) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax_1@@5 ar_1@@6 v_2@@3)) vmax_1@@5) (and (<= lo@@5 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax_1@@5 ar_1@@6 v_2@@3) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax_1@@5 ar_1@@6 v_2@@3)) step@@5)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax_1@@5 ar_1@@6 v_2@@3) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax_1@@5 ar_1@@6 v_2@@3)) step@@5) hi@@6))))) (=> (and (<= vmin@@5 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax_1@@5 ar_1@@6 v_2@@3) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax_1@@5 ar_1@@6 v_2@@3))) (and (< (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax_1@@5 ar_1@@6 v_2@@3) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax_1@@5 ar_1@@6 v_2@@3)) vmax_1@@5) (and (<= lo@@5 (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax_1@@5 ar_1@@6 v_2@@3) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax_1@@5 ar_1@@6 v_2@@3)) step@@5)) (< (mod (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax_1@@5 ar_1@@6 v_2@@3) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax_1@@5 ar_1@@6 v_2@@3)) step@@5) hi@@6)))) (= (select (|PolymorphicMapType_39577_27882_3805#PolymorphicMapType_39577| Heap2Heap@@0) (|Seq#Index_27939| ar_1@@6 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax_1@@5 ar_1@@6 v_2@@3) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax_1@@5 ar_1@@6 v_2@@3))) Ref__Integer_value) (select (|PolymorphicMapType_39577_27882_3805#PolymorphicMapType_39577| Heap1Heap@@0) (|Seq#Index_27939| ar_1@@6 (|sk_count_square#condqp3| (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax_1@@5 ar_1@@6 v_2@@3) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax_1@@5 ar_1@@6 v_2@@3))) Ref__Integer_value)))) (= (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax_1@@5 ar_1@@6 v_2@@3) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax_1@@5 ar_1@@6 v_2@@3)))
 :qid |stdinbpl.1304:15|
 :skolemid |110|
 :pattern ( (|count_square#condqp3| Heap2Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax_1@@5 ar_1@@6 v_2@@3) (|count_square#condqp3| Heap1Heap@@0 i@@10 lo@@5 hi@@6 step@@5 vmin@@5 vmax_1@@5 ar_1@@6 v_2@@3) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@11 T@PolymorphicMapType_39577) (ExhaleHeap@@1 T@PolymorphicMapType_39577) (Mask@@8 T@PolymorphicMapType_39598) (o_66 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@1 Mask@@8) (=> (select (|PolymorphicMapType_39577_27626_53#PolymorphicMapType_39577| Heap@@11) o_66 $allocated) (select (|PolymorphicMapType_39577_27626_53#PolymorphicMapType_39577| ExhaleHeap@@1) o_66 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@1 Mask@@8) (select (|PolymorphicMapType_39577_27626_53#PolymorphicMapType_39577| ExhaleHeap@@1) o_66 $allocated))
)))
(assert (forall ((p T@Field_27882_111815) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_39637_39637 p v_1 p w))
 :qid |stdinbpl.294:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_39637_39637 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_48769) (s1 T@Seq_48769) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_27962|)) (not (= s1 |Seq#Empty_27962|))) (<= (|Seq#Length_27962| s0) n@@13)) (< n@@13 (|Seq#Length_27962| (|Seq#Append_48769| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_27962| s0)) (|Seq#Length_27962| s0)) n@@13) (= (|Seq#Index_27939| (|Seq#Append_48769| s0 s1) n@@13) (|Seq#Index_27939| s1 (|Seq#Sub| n@@13 (|Seq#Length_27962| s0))))))
 :qid |stdinbpl.363:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_27939| (|Seq#Append_48769| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3683) (s1@@0 T@Seq_3683) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3683|)) (not (= s1@@0 |Seq#Empty_3683|))) (<= (|Seq#Length_3683| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3683| (|Seq#Append_3683| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3683| s0@@0)) (|Seq#Length_3683| s0@@0)) n@@14) (= (|Seq#Index_3683| (|Seq#Append_3683| s0@@0 s1@@0) n@@14) (|Seq#Index_3683| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3683| s0@@0))))))
 :qid |stdinbpl.363:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3683| (|Seq#Append_3683| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_27882_3805 Ref__Integer_value)))
(assert  (not (IsWandField_27882_3805 Ref__Integer_value)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_39577) (ExhaleHeap@@2 T@PolymorphicMapType_39577) (Mask@@9 T@PolymorphicMapType_39598) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@2 Mask@@9) (succHeap Heap@@12 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@2 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_39598) (o_2@@4 T@Ref) (f_4@@4 T@Field_27882_111948) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_39598_27882_116070#PolymorphicMapType_39598| Mask@@10) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_27882_117199 f_4@@4))) (not (IsWandField_27882_117215 f_4@@4))) (<= (select (|PolymorphicMapType_39598_27882_116070#PolymorphicMapType_39598| Mask@@10) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_39598_27882_116070#PolymorphicMapType_39598| Mask@@10) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_39598) (o_2@@5 T@Ref) (f_4@@5 T@Field_27882_111815) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_39598_27882_111815#PolymorphicMapType_39598| Mask@@11) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_27882_111906 f_4@@5))) (not (IsWandField_27882_113653 f_4@@5))) (<= (select (|PolymorphicMapType_39598_27882_111815#PolymorphicMapType_39598| Mask@@11) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_39598_27882_111815#PolymorphicMapType_39598| Mask@@11) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_39598) (o_2@@6 T@Ref) (f_4@@6 T@Field_39650_39651) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_39598_27882_39651#PolymorphicMapType_39598| Mask@@12) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_27882_39651 f_4@@6))) (not (IsWandField_27882_39651 f_4@@6))) (<= (select (|PolymorphicMapType_39598_27882_39651#PolymorphicMapType_39598| Mask@@12) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_39598_27882_39651#PolymorphicMapType_39598| Mask@@12) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_39598) (o_2@@7 T@Ref) (f_4@@7 T@Field_39637_53) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_39598_27882_53#PolymorphicMapType_39598| Mask@@13) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_27882_53 f_4@@7))) (not (IsWandField_27882_53 f_4@@7))) (<= (select (|PolymorphicMapType_39598_27882_53#PolymorphicMapType_39598| Mask@@13) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_39598_27882_53#PolymorphicMapType_39598| Mask@@13) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_39598) (o_2@@8 T@Ref) (f_4@@8 T@Field_45723_3805) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| Mask@@14) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_27882_3805 f_4@@8))) (not (IsWandField_27882_3805 f_4@@8))) (<= (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| Mask@@14) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| Mask@@14) o_2@@8 f_4@@8))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_39577) (Mask@@15 T@PolymorphicMapType_39598) (i@@11 Int) (hi@@7 Int) (ar_1@@7 T@Seq_3683) ) (!  (=> (state Heap@@13 Mask@@15) (= (|sum_list'| Heap@@13 i@@11 hi@@7 ar_1@@7) (|sum_list#frame| EmptyFrame i@@11 hi@@7 ar_1@@7)))
 :qid |stdinbpl.792:15|
 :skolemid |69|
 :pattern ( (state Heap@@13 Mask@@15) (|sum_list'| Heap@@13 i@@11 hi@@7 ar_1@@7))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_39577) (Mask@@16 T@PolymorphicMapType_39598) (i@@12 Int) (hi@@8 Int) (ar_1@@8 T@Seq_48769) (v_2@@4 Int) ) (!  (=> (and (state Heap@@14 Mask@@16) (< AssumeFunctionsAbove 2)) (=> (and (<= 0 i@@12) (<= i@@12 hi@@8)) (= (count_array Heap@@14 i@@12 hi@@8 ar_1@@8 v_2@@4) (ite (< i@@12 hi@@8) (+ (ite (= (select (|PolymorphicMapType_39577_27882_3805#PolymorphicMapType_39577| Heap@@14) (|Seq#Index_27939| ar_1@@8 i@@12) Ref__Integer_value) v_2@@4) 1 0) (|count_array'| Heap@@14 (+ i@@12 1) hi@@8 ar_1@@8 v_2@@4)) 0))))
 :qid |stdinbpl.1596:15|
 :skolemid |130|
 :pattern ( (state Heap@@14 Mask@@16) (count_array Heap@@14 i@@12 hi@@8 ar_1@@8 v_2@@4))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_39598) (o_2@@9 T@Ref) (f_4@@9 T@Field_27882_111948) ) (! (= (HasDirectPerm_27882_117653 Mask@@17 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_39598_27882_116070#PolymorphicMapType_39598| Mask@@17) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_27882_117653 Mask@@17 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_39598) (o_2@@10 T@Ref) (f_4@@10 T@Field_27882_111815) ) (! (= (HasDirectPerm_27882_111879 Mask@@18 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_39598_27882_111815#PolymorphicMapType_39598| Mask@@18) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_27882_111879 Mask@@18 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_39598) (o_2@@11 T@Ref) (f_4@@11 T@Field_39650_39651) ) (! (= (HasDirectPerm_27882_39651 Mask@@19 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_39598_27882_39651#PolymorphicMapType_39598| Mask@@19) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_27882_39651 Mask@@19 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_39598) (o_2@@12 T@Ref) (f_4@@12 T@Field_39637_53) ) (! (= (HasDirectPerm_27882_53 Mask@@20 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_39598_27882_53#PolymorphicMapType_39598| Mask@@20) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_27882_53 Mask@@20 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_39598) (o_2@@13 T@Ref) (f_4@@13 T@Field_45723_3805) ) (! (= (HasDirectPerm_27882_3805 Mask@@21 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| Mask@@21) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_27882_3805 Mask@@21 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_39577) (N0@@2 Int) (N1@@2 Int) (i0_3@@2 Int) (i1_9@@2 Int) ) (! (dummyFunction_4485 (|Ref__multidim_index_2#triggerStateless| N0@@2 N1@@2 i0_3@@2 i1_9@@2))
 :qid |stdinbpl.682:15|
 :skolemid |59|
 :pattern ( (|Ref__multidim_index_2'| Heap@@15 N0@@2 N1@@2 i0_3@@2 i1_9@@2))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_39577) (i@@13 Int) (lo@@6 Int) (hi@@9 Int) (ar_1@@9 T@Seq_48769) ) (! (dummyFunction_4485 (|sum_array#triggerStateless| i@@13 lo@@6 hi@@9 ar_1@@9))
 :qid |stdinbpl.864:15|
 :skolemid |71|
 :pattern ( (|sum_array'| Heap@@16 i@@13 lo@@6 hi@@9 ar_1@@9))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_39577) (i@@14 Int) (hi@@10 Int) (ar_1@@10 T@Seq_3683) (v_2@@5 Int) ) (! (dummyFunction_4485 (|count_list#triggerStateless| i@@14 hi@@10 ar_1@@10 v_2@@5))
 :qid |stdinbpl.1505:15|
 :skolemid |125|
 :pattern ( (|count_list'| Heap@@17 i@@14 hi@@10 ar_1@@10 v_2@@5))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_39577) (i@@15 Int) (hi@@11 Int) (ar_1@@11 T@Seq_48769) (v_2@@6 Int) ) (! (dummyFunction_4485 (|count_array#triggerStateless| i@@15 hi@@11 ar_1@@11 v_2@@6))
 :qid |stdinbpl.1590:15|
 :skolemid |129|
 :pattern ( (|count_array'| Heap@@18 i@@15 hi@@11 ar_1@@11 v_2@@6))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_39577) (ExhaleHeap@@3 T@PolymorphicMapType_39577) (Mask@@22 T@PolymorphicMapType_39598) (pm_f_53@@1 T@Field_27882_111815) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@3 Mask@@22) (=> (and (HasDirectPerm_27882_111879 Mask@@22 null pm_f_53@@1) (IsPredicateField_27882_111906 pm_f_53@@1)) (and (and (and (and (forall ((o2_54 T@Ref) (f_134 T@Field_39637_53) ) (!  (=> (select (|PolymorphicMapType_40126_39637_53#PolymorphicMapType_40126| (select (|PolymorphicMapType_39577_27882_111992#PolymorphicMapType_39577| Heap@@19) null (PredicateMaskField_27882 pm_f_53@@1))) o2_54 f_134) (= (select (|PolymorphicMapType_39577_27626_53#PolymorphicMapType_39577| Heap@@19) o2_54 f_134) (select (|PolymorphicMapType_39577_27626_53#PolymorphicMapType_39577| ExhaleHeap@@3) o2_54 f_134)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_39577_27626_53#PolymorphicMapType_39577| ExhaleHeap@@3) o2_54 f_134))
)) (forall ((o2_54@@0 T@Ref) (f_134@@0 T@Field_39650_39651) ) (!  (=> (select (|PolymorphicMapType_40126_39637_39651#PolymorphicMapType_40126| (select (|PolymorphicMapType_39577_27882_111992#PolymorphicMapType_39577| Heap@@19) null (PredicateMaskField_27882 pm_f_53@@1))) o2_54@@0 f_134@@0) (= (select (|PolymorphicMapType_39577_27629_27630#PolymorphicMapType_39577| Heap@@19) o2_54@@0 f_134@@0) (select (|PolymorphicMapType_39577_27629_27630#PolymorphicMapType_39577| ExhaleHeap@@3) o2_54@@0 f_134@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_39577_27629_27630#PolymorphicMapType_39577| ExhaleHeap@@3) o2_54@@0 f_134@@0))
))) (forall ((o2_54@@1 T@Ref) (f_134@@1 T@Field_45723_3805) ) (!  (=> (select (|PolymorphicMapType_40126_39637_3805#PolymorphicMapType_40126| (select (|PolymorphicMapType_39577_27882_111992#PolymorphicMapType_39577| Heap@@19) null (PredicateMaskField_27882 pm_f_53@@1))) o2_54@@1 f_134@@1) (= (select (|PolymorphicMapType_39577_27882_3805#PolymorphicMapType_39577| Heap@@19) o2_54@@1 f_134@@1) (select (|PolymorphicMapType_39577_27882_3805#PolymorphicMapType_39577| ExhaleHeap@@3) o2_54@@1 f_134@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_39577_27882_3805#PolymorphicMapType_39577| ExhaleHeap@@3) o2_54@@1 f_134@@1))
))) (forall ((o2_54@@2 T@Ref) (f_134@@2 T@Field_27882_111815) ) (!  (=> (select (|PolymorphicMapType_40126_39637_111815#PolymorphicMapType_40126| (select (|PolymorphicMapType_39577_27882_111992#PolymorphicMapType_39577| Heap@@19) null (PredicateMaskField_27882 pm_f_53@@1))) o2_54@@2 f_134@@2) (= (select (|PolymorphicMapType_39577_39637_111815#PolymorphicMapType_39577| Heap@@19) o2_54@@2 f_134@@2) (select (|PolymorphicMapType_39577_39637_111815#PolymorphicMapType_39577| ExhaleHeap@@3) o2_54@@2 f_134@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_39577_39637_111815#PolymorphicMapType_39577| ExhaleHeap@@3) o2_54@@2 f_134@@2))
))) (forall ((o2_54@@3 T@Ref) (f_134@@3 T@Field_27882_111948) ) (!  (=> (select (|PolymorphicMapType_40126_39637_113126#PolymorphicMapType_40126| (select (|PolymorphicMapType_39577_27882_111992#PolymorphicMapType_39577| Heap@@19) null (PredicateMaskField_27882 pm_f_53@@1))) o2_54@@3 f_134@@3) (= (select (|PolymorphicMapType_39577_27882_111992#PolymorphicMapType_39577| Heap@@19) o2_54@@3 f_134@@3) (select (|PolymorphicMapType_39577_27882_111992#PolymorphicMapType_39577| ExhaleHeap@@3) o2_54@@3 f_134@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_39577_27882_111992#PolymorphicMapType_39577| ExhaleHeap@@3) o2_54@@3 f_134@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@3 Mask@@22) (IsPredicateField_27882_111906 pm_f_53@@1))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_39577) (ExhaleHeap@@4 T@PolymorphicMapType_39577) (Mask@@23 T@PolymorphicMapType_39598) (pm_f_53@@2 T@Field_27882_111815) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@4 Mask@@23) (=> (and (HasDirectPerm_27882_111879 Mask@@23 null pm_f_53@@2) (IsWandField_27882_113653 pm_f_53@@2)) (and (and (and (and (forall ((o2_54@@4 T@Ref) (f_134@@4 T@Field_39637_53) ) (!  (=> (select (|PolymorphicMapType_40126_39637_53#PolymorphicMapType_40126| (select (|PolymorphicMapType_39577_27882_111992#PolymorphicMapType_39577| Heap@@20) null (WandMaskField_27882 pm_f_53@@2))) o2_54@@4 f_134@@4) (= (select (|PolymorphicMapType_39577_27626_53#PolymorphicMapType_39577| Heap@@20) o2_54@@4 f_134@@4) (select (|PolymorphicMapType_39577_27626_53#PolymorphicMapType_39577| ExhaleHeap@@4) o2_54@@4 f_134@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_39577_27626_53#PolymorphicMapType_39577| ExhaleHeap@@4) o2_54@@4 f_134@@4))
)) (forall ((o2_54@@5 T@Ref) (f_134@@5 T@Field_39650_39651) ) (!  (=> (select (|PolymorphicMapType_40126_39637_39651#PolymorphicMapType_40126| (select (|PolymorphicMapType_39577_27882_111992#PolymorphicMapType_39577| Heap@@20) null (WandMaskField_27882 pm_f_53@@2))) o2_54@@5 f_134@@5) (= (select (|PolymorphicMapType_39577_27629_27630#PolymorphicMapType_39577| Heap@@20) o2_54@@5 f_134@@5) (select (|PolymorphicMapType_39577_27629_27630#PolymorphicMapType_39577| ExhaleHeap@@4) o2_54@@5 f_134@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_39577_27629_27630#PolymorphicMapType_39577| ExhaleHeap@@4) o2_54@@5 f_134@@5))
))) (forall ((o2_54@@6 T@Ref) (f_134@@6 T@Field_45723_3805) ) (!  (=> (select (|PolymorphicMapType_40126_39637_3805#PolymorphicMapType_40126| (select (|PolymorphicMapType_39577_27882_111992#PolymorphicMapType_39577| Heap@@20) null (WandMaskField_27882 pm_f_53@@2))) o2_54@@6 f_134@@6) (= (select (|PolymorphicMapType_39577_27882_3805#PolymorphicMapType_39577| Heap@@20) o2_54@@6 f_134@@6) (select (|PolymorphicMapType_39577_27882_3805#PolymorphicMapType_39577| ExhaleHeap@@4) o2_54@@6 f_134@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_39577_27882_3805#PolymorphicMapType_39577| ExhaleHeap@@4) o2_54@@6 f_134@@6))
))) (forall ((o2_54@@7 T@Ref) (f_134@@7 T@Field_27882_111815) ) (!  (=> (select (|PolymorphicMapType_40126_39637_111815#PolymorphicMapType_40126| (select (|PolymorphicMapType_39577_27882_111992#PolymorphicMapType_39577| Heap@@20) null (WandMaskField_27882 pm_f_53@@2))) o2_54@@7 f_134@@7) (= (select (|PolymorphicMapType_39577_39637_111815#PolymorphicMapType_39577| Heap@@20) o2_54@@7 f_134@@7) (select (|PolymorphicMapType_39577_39637_111815#PolymorphicMapType_39577| ExhaleHeap@@4) o2_54@@7 f_134@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_39577_39637_111815#PolymorphicMapType_39577| ExhaleHeap@@4) o2_54@@7 f_134@@7))
))) (forall ((o2_54@@8 T@Ref) (f_134@@8 T@Field_27882_111948) ) (!  (=> (select (|PolymorphicMapType_40126_39637_113126#PolymorphicMapType_40126| (select (|PolymorphicMapType_39577_27882_111992#PolymorphicMapType_39577| Heap@@20) null (WandMaskField_27882 pm_f_53@@2))) o2_54@@8 f_134@@8) (= (select (|PolymorphicMapType_39577_27882_111992#PolymorphicMapType_39577| Heap@@20) o2_54@@8 f_134@@8) (select (|PolymorphicMapType_39577_27882_111992#PolymorphicMapType_39577| ExhaleHeap@@4) o2_54@@8 f_134@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_39577_27882_111992#PolymorphicMapType_39577| ExhaleHeap@@4) o2_54@@8 f_134@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@4 Mask@@23) (IsWandField_27882_113653 pm_f_53@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.282:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3683| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.655:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3683| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_39577) (ExhaleHeap@@5 T@PolymorphicMapType_39577) (Mask@@24 T@PolymorphicMapType_39598) (o_66@@0 T@Ref) (f_134@@9 T@Field_27882_111948) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@5 Mask@@24) (=> (HasDirectPerm_27882_117653 Mask@@24 o_66@@0 f_134@@9) (= (select (|PolymorphicMapType_39577_27882_111992#PolymorphicMapType_39577| Heap@@21) o_66@@0 f_134@@9) (select (|PolymorphicMapType_39577_27882_111992#PolymorphicMapType_39577| ExhaleHeap@@5) o_66@@0 f_134@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@5 Mask@@24) (select (|PolymorphicMapType_39577_27882_111992#PolymorphicMapType_39577| ExhaleHeap@@5) o_66@@0 f_134@@9))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_39577) (ExhaleHeap@@6 T@PolymorphicMapType_39577) (Mask@@25 T@PolymorphicMapType_39598) (o_66@@1 T@Ref) (f_134@@10 T@Field_27882_111815) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@6 Mask@@25) (=> (HasDirectPerm_27882_111879 Mask@@25 o_66@@1 f_134@@10) (= (select (|PolymorphicMapType_39577_39637_111815#PolymorphicMapType_39577| Heap@@22) o_66@@1 f_134@@10) (select (|PolymorphicMapType_39577_39637_111815#PolymorphicMapType_39577| ExhaleHeap@@6) o_66@@1 f_134@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@6 Mask@@25) (select (|PolymorphicMapType_39577_39637_111815#PolymorphicMapType_39577| ExhaleHeap@@6) o_66@@1 f_134@@10))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_39577) (ExhaleHeap@@7 T@PolymorphicMapType_39577) (Mask@@26 T@PolymorphicMapType_39598) (o_66@@2 T@Ref) (f_134@@11 T@Field_39650_39651) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@7 Mask@@26) (=> (HasDirectPerm_27882_39651 Mask@@26 o_66@@2 f_134@@11) (= (select (|PolymorphicMapType_39577_27629_27630#PolymorphicMapType_39577| Heap@@23) o_66@@2 f_134@@11) (select (|PolymorphicMapType_39577_27629_27630#PolymorphicMapType_39577| ExhaleHeap@@7) o_66@@2 f_134@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@7 Mask@@26) (select (|PolymorphicMapType_39577_27629_27630#PolymorphicMapType_39577| ExhaleHeap@@7) o_66@@2 f_134@@11))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_39577) (ExhaleHeap@@8 T@PolymorphicMapType_39577) (Mask@@27 T@PolymorphicMapType_39598) (o_66@@3 T@Ref) (f_134@@12 T@Field_39637_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@8 Mask@@27) (=> (HasDirectPerm_27882_53 Mask@@27 o_66@@3 f_134@@12) (= (select (|PolymorphicMapType_39577_27626_53#PolymorphicMapType_39577| Heap@@24) o_66@@3 f_134@@12) (select (|PolymorphicMapType_39577_27626_53#PolymorphicMapType_39577| ExhaleHeap@@8) o_66@@3 f_134@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@8 Mask@@27) (select (|PolymorphicMapType_39577_27626_53#PolymorphicMapType_39577| ExhaleHeap@@8) o_66@@3 f_134@@12))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_39577) (ExhaleHeap@@9 T@PolymorphicMapType_39577) (Mask@@28 T@PolymorphicMapType_39598) (o_66@@4 T@Ref) (f_134@@13 T@Field_45723_3805) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@9 Mask@@28) (=> (HasDirectPerm_27882_3805 Mask@@28 o_66@@4 f_134@@13) (= (select (|PolymorphicMapType_39577_27882_3805#PolymorphicMapType_39577| Heap@@25) o_66@@4 f_134@@13) (select (|PolymorphicMapType_39577_27882_3805#PolymorphicMapType_39577| ExhaleHeap@@9) o_66@@4 f_134@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@9 Mask@@28) (select (|PolymorphicMapType_39577_27882_3805#PolymorphicMapType_39577| ExhaleHeap@@9) o_66@@4 f_134@@13))
)))
(assert (forall ((s0@@1 T@Seq_48769) (s1@@1 T@Seq_48769) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_27962|)) (not (= s1@@1 |Seq#Empty_27962|))) (= (|Seq#Length_27962| (|Seq#Append_48769| s0@@1 s1@@1)) (+ (|Seq#Length_27962| s0@@1) (|Seq#Length_27962| s1@@1))))
 :qid |stdinbpl.332:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_27962| (|Seq#Append_48769| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3683) (s1@@2 T@Seq_3683) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3683|)) (not (= s1@@2 |Seq#Empty_3683|))) (= (|Seq#Length_3683| (|Seq#Append_3683| s0@@2 s1@@2)) (+ (|Seq#Length_3683| s0@@2) (|Seq#Length_3683| s1@@2))))
 :qid |stdinbpl.332:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3683| (|Seq#Append_3683| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_27882_111948) ) (! (= (select (|PolymorphicMapType_39598_27882_116070#PolymorphicMapType_39598| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_39598_27882_116070#PolymorphicMapType_39598| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_27882_111815) ) (! (= (select (|PolymorphicMapType_39598_27882_111815#PolymorphicMapType_39598| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_39598_27882_111815#PolymorphicMapType_39598| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_39650_39651) ) (! (= (select (|PolymorphicMapType_39598_27882_39651#PolymorphicMapType_39598| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_39598_27882_39651#PolymorphicMapType_39598| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_39637_53) ) (! (= (select (|PolymorphicMapType_39598_27882_53#PolymorphicMapType_39598| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_39598_27882_53#PolymorphicMapType_39598| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_45723_3805) ) (! (= (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_39577) (Mask@@29 T@PolymorphicMapType_39598) (i@@16 Int) (hi@@12 Int) (ar_1@@12 T@Seq_3683) (v_2@@7 Int) ) (!  (=> (and (state Heap@@26 Mask@@29) (< AssumeFunctionsAbove 6)) (=> (and (and (<= 0 i@@16) (<= i@@16 hi@@12)) (<= hi@@12 (|Seq#Length_3683| ar_1@@12))) (= (count_list Heap@@26 i@@16 hi@@12 ar_1@@12 v_2@@7) (ite (< i@@16 hi@@12) (+ (ite (= (|Seq#Index_3683| ar_1@@12 i@@16) v_2@@7) 1 0) (|count_list'| Heap@@26 (+ i@@16 1) hi@@12 ar_1@@12 v_2@@7)) 0))))
 :qid |stdinbpl.1511:15|
 :skolemid |126|
 :pattern ( (state Heap@@26 Mask@@29) (count_list Heap@@26 i@@16 hi@@12 ar_1@@12 v_2@@7))
)))
(assert (forall ((s@@15 T@Seq_48769) (t@@1 T@Seq_48769) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_27962| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_27962| s@@15)) (|Seq#Length_27962| s@@15)) n@@15) (= (|Seq#Drop_27962| (|Seq#Append_48769| s@@15 t@@1) n@@15) (|Seq#Drop_27962| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_27962| s@@15))))))
 :qid |stdinbpl.489:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_27962| (|Seq#Append_48769| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3683) (t@@2 T@Seq_3683) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3683| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3683| s@@16)) (|Seq#Length_3683| s@@16)) n@@16) (= (|Seq#Drop_3683| (|Seq#Append_3683| s@@16 t@@2) n@@16) (|Seq#Drop_3683| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3683| s@@16))))))
 :qid |stdinbpl.489:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3683| (|Seq#Append_3683| s@@16 t@@2) n@@16))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_39577) (N0@@3 Int) (N1@@3 Int) (i0_3@@3 Int) (i1_9@@3 Int) ) (!  (and (= (Ref__multidim_index_2 Heap@@27 N0@@3 N1@@3 i0_3@@3 i1_9@@3) (|Ref__multidim_index_2'| Heap@@27 N0@@3 N1@@3 i0_3@@3 i1_9@@3)) (dummyFunction_4485 (|Ref__multidim_index_2#triggerStateless| N0@@3 N1@@3 i0_3@@3 i1_9@@3)))
 :qid |stdinbpl.678:15|
 :skolemid |58|
 :pattern ( (Ref__multidim_index_2 Heap@@27 N0@@3 N1@@3 i0_3@@3 i1_9@@3))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_39577) (i@@17 Int) (lo@@7 Int) (hi@@13 Int) (ar_1@@13 T@Seq_48769) ) (!  (and (= (sum_array Heap@@28 i@@17 lo@@7 hi@@13 ar_1@@13) (|sum_array'| Heap@@28 i@@17 lo@@7 hi@@13 ar_1@@13)) (dummyFunction_4485 (|sum_array#triggerStateless| i@@17 lo@@7 hi@@13 ar_1@@13)))
 :qid |stdinbpl.860:15|
 :skolemid |70|
 :pattern ( (sum_array Heap@@28 i@@17 lo@@7 hi@@13 ar_1@@13))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_39577) (i@@18 Int) (hi@@14 Int) (ar_1@@14 T@Seq_3683) (v_2@@8 Int) ) (!  (and (= (count_list Heap@@29 i@@18 hi@@14 ar_1@@14 v_2@@8) (|count_list'| Heap@@29 i@@18 hi@@14 ar_1@@14 v_2@@8)) (dummyFunction_4485 (|count_list#triggerStateless| i@@18 hi@@14 ar_1@@14 v_2@@8)))
 :qid |stdinbpl.1501:15|
 :skolemid |124|
 :pattern ( (count_list Heap@@29 i@@18 hi@@14 ar_1@@14 v_2@@8))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_39577) (i@@19 Int) (hi@@15 Int) (ar_1@@15 T@Seq_48769) (v_2@@9 Int) ) (!  (and (= (count_array Heap@@30 i@@19 hi@@15 ar_1@@15 v_2@@9) (|count_array'| Heap@@30 i@@19 hi@@15 ar_1@@15 v_2@@9)) (dummyFunction_4485 (|count_array#triggerStateless| i@@19 hi@@15 ar_1@@15 v_2@@9)))
 :qid |stdinbpl.1586:15|
 :skolemid |128|
 :pattern ( (count_array Heap@@30 i@@19 hi@@15 ar_1@@15 v_2@@9))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_39598) (SummandMask1 T@PolymorphicMapType_39598) (SummandMask2 T@PolymorphicMapType_39598) (o_2@@19 T@Ref) (f_4@@19 T@Field_27882_111948) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_39598_27882_116070#PolymorphicMapType_39598| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_39598_27882_116070#PolymorphicMapType_39598| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_39598_27882_116070#PolymorphicMapType_39598| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_39598_27882_116070#PolymorphicMapType_39598| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_39598_27882_116070#PolymorphicMapType_39598| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_39598_27882_116070#PolymorphicMapType_39598| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_39598) (SummandMask1@@0 T@PolymorphicMapType_39598) (SummandMask2@@0 T@PolymorphicMapType_39598) (o_2@@20 T@Ref) (f_4@@20 T@Field_27882_111815) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_39598_27882_111815#PolymorphicMapType_39598| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_39598_27882_111815#PolymorphicMapType_39598| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_39598_27882_111815#PolymorphicMapType_39598| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_39598_27882_111815#PolymorphicMapType_39598| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_39598_27882_111815#PolymorphicMapType_39598| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_39598_27882_111815#PolymorphicMapType_39598| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_39598) (SummandMask1@@1 T@PolymorphicMapType_39598) (SummandMask2@@1 T@PolymorphicMapType_39598) (o_2@@21 T@Ref) (f_4@@21 T@Field_39650_39651) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_39598_27882_39651#PolymorphicMapType_39598| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_39598_27882_39651#PolymorphicMapType_39598| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_39598_27882_39651#PolymorphicMapType_39598| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_39598_27882_39651#PolymorphicMapType_39598| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_39598_27882_39651#PolymorphicMapType_39598| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_39598_27882_39651#PolymorphicMapType_39598| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_39598) (SummandMask1@@2 T@PolymorphicMapType_39598) (SummandMask2@@2 T@PolymorphicMapType_39598) (o_2@@22 T@Ref) (f_4@@22 T@Field_39637_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_39598_27882_53#PolymorphicMapType_39598| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_39598_27882_53#PolymorphicMapType_39598| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_39598_27882_53#PolymorphicMapType_39598| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_39598_27882_53#PolymorphicMapType_39598| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_39598_27882_53#PolymorphicMapType_39598| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_39598_27882_53#PolymorphicMapType_39598| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_39598) (SummandMask1@@3 T@PolymorphicMapType_39598) (SummandMask2@@3 T@PolymorphicMapType_39598) (o_2@@23 T@Ref) (f_4@@23 T@Field_45723_3805) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_39577) (i@@20 Int) (lo@@8 Int) (hi@@16 Int) (step@@6 Int) (vmin@@6 Int) (vmax_1@@6 Int) (ar_1@@16 T@Seq_48769) ) (!  (and (= (sum_square Heap@@31 i@@20 lo@@8 hi@@16 step@@6 vmin@@6 vmax_1@@6 ar_1@@16) (|sum_square'| Heap@@31 i@@20 lo@@8 hi@@16 step@@6 vmin@@6 vmax_1@@6 ar_1@@16)) (dummyFunction_4485 (|sum_square#triggerStateless| i@@20 lo@@8 hi@@16 step@@6 vmin@@6 vmax_1@@6 ar_1@@16)))
 :qid |stdinbpl.1053:15|
 :skolemid |88|
 :pattern ( (sum_square Heap@@31 i@@20 lo@@8 hi@@16 step@@6 vmin@@6 vmax_1@@6 ar_1@@16))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_39577) (Mask@@30 T@PolymorphicMapType_39598) (N0@@4 Int) (N1@@4 Int) (i0_3@@4 Int) (i1_9@@4 Int) ) (!  (=> (state Heap@@32 Mask@@30) (= (|Ref__multidim_index_2'| Heap@@32 N0@@4 N1@@4 i0_3@@4 i1_9@@4) (|Ref__multidim_index_2#frame| EmptyFrame N0@@4 N1@@4 i0_3@@4 i1_9@@4)))
 :qid |stdinbpl.689:15|
 :skolemid |60|
 :pattern ( (state Heap@@32 Mask@@30) (|Ref__multidim_index_2'| Heap@@32 N0@@4 N1@@4 i0_3@@4 i1_9@@4))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_39577) (Mask@@31 T@PolymorphicMapType_39598) (i@@21 Int) (hi@@17 Int) (ar_1@@17 T@Seq_3683) (v_2@@10 Int) ) (!  (=> (state Heap@@33 Mask@@31) (= (|count_list'| Heap@@33 i@@21 hi@@17 ar_1@@17 v_2@@10) (|count_list#frame| EmptyFrame i@@21 hi@@17 ar_1@@17 v_2@@10)))
 :qid |stdinbpl.1518:15|
 :skolemid |127|
 :pattern ( (state Heap@@33 Mask@@31) (|count_list'| Heap@@33 i@@21 hi@@17 ar_1@@17 v_2@@10))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3683| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3683| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.654:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3683| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_48769) (b T@Seq_48769) ) (!  (=> (|Seq#Equal_48769| a b) (= a b))
 :qid |stdinbpl.627:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_48769| a b))
)))
(assert (forall ((a@@0 T@Seq_3683) (b@@0 T@Seq_3683) ) (!  (=> (|Seq#Equal_3683| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.627:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3683| a@@0 b@@0))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_39577) (i@@22 Int) (hi@@18 Int) (ar_1@@18 T@Seq_3683) ) (!  (and (= (sum_list Heap@@34 i@@22 hi@@18 ar_1@@18) (|sum_list'| Heap@@34 i@@22 hi@@18 ar_1@@18)) (dummyFunction_4485 (|sum_list#triggerStateless| i@@22 hi@@18 ar_1@@18)))
 :qid |stdinbpl.775:15|
 :skolemid |66|
 :pattern ( (sum_list Heap@@34 i@@22 hi@@18 ar_1@@18))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_39577) (Mask@@32 T@PolymorphicMapType_39598) (N0@@5 Int) (N1@@5 Int) (i0_3@@5 Int) (i1_9@@5 Int) ) (!  (=> (and (state Heap@@35 Mask@@32) (or (< AssumeFunctionsAbove 1) (|Ref__multidim_index_2#trigger| EmptyFrame N0@@5 N1@@5 i0_3@@5 i1_9@@5))) (=> (and (and (and (and (and (<= 0 i0_3@@5) (< i0_3@@5 N0@@5)) (<= 0 N0@@5)) (<= 0 i1_9@@5)) (< i1_9@@5 N1@@5)) (<= 0 N1@@5)) (< (|Ref__multidim_index_2'| Heap@@35 N0@@5 N1@@5 i0_3@@5 i1_9@@5) (* N0@@5 N1@@5))))
 :qid |stdinbpl.699:15|
 :skolemid |62|
 :pattern ( (state Heap@@35 Mask@@32) (|Ref__multidim_index_2'| Heap@@35 N0@@5 N1@@5 i0_3@@5 i1_9@@5))
)))
(assert (forall ((s@@17 T@Seq_48769) (i@@23 Int) ) (!  (=> (and (<= 0 i@@23) (< i@@23 (|Seq#Length_27962| s@@17))) (|Seq#ContainsTrigger_27962| s@@17 (|Seq#Index_27939| s@@17 i@@23)))
 :qid |stdinbpl.520:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_27939| s@@17 i@@23))
)))
(assert (forall ((s@@18 T@Seq_3683) (i@@24 Int) ) (!  (=> (and (<= 0 i@@24) (< i@@24 (|Seq#Length_3683| s@@18))) (|Seq#ContainsTrigger_3683| s@@18 (|Seq#Index_3683| s@@18 i@@24)))
 :qid |stdinbpl.520:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3683| s@@18 i@@24))
)))
(assert (forall ((s0@@3 T@Seq_48769) (s1@@3 T@Seq_48769) ) (!  (and (=> (= s0@@3 |Seq#Empty_27962|) (= (|Seq#Append_48769| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_27962|) (= (|Seq#Append_48769| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.338:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_48769| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3683) (s1@@4 T@Seq_3683) ) (!  (and (=> (= s0@@4 |Seq#Empty_3683|) (= (|Seq#Append_3683| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3683|) (= (|Seq#Append_3683| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.338:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3683| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_27939| (|Seq#Singleton_27962| t@@3) 0) t@@3)
 :qid |stdinbpl.342:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_27962| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3683| (|Seq#Singleton_3683| t@@4) 0) t@@4)
 :qid |stdinbpl.342:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3683| t@@4))
)))
(assert (forall ((s@@19 T@Seq_48769) ) (! (<= 0 (|Seq#Length_27962| s@@19))
 :qid |stdinbpl.321:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_27962| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3683) ) (! (<= 0 (|Seq#Length_3683| s@@20))
 :qid |stdinbpl.321:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3683| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_48769) (s1@@5 T@Seq_48769) ) (!  (=> (|Seq#Equal_48769| s0@@5 s1@@5) (and (= (|Seq#Length_27962| s0@@5) (|Seq#Length_27962| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_27962| s0@@5))) (= (|Seq#Index_27939| s0@@5 j@@6) (|Seq#Index_27939| s1@@5 j@@6)))
 :qid |stdinbpl.617:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_27939| s0@@5 j@@6))
 :pattern ( (|Seq#Index_27939| s1@@5 j@@6))
))))
 :qid |stdinbpl.614:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_48769| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3683) (s1@@6 T@Seq_3683) ) (!  (=> (|Seq#Equal_3683| s0@@6 s1@@6) (and (= (|Seq#Length_3683| s0@@6) (|Seq#Length_3683| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_3683| s0@@6))) (= (|Seq#Index_3683| s0@@6 j@@7) (|Seq#Index_3683| s1@@6 j@@7)))
 :qid |stdinbpl.617:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3683| s0@@6 j@@7))
 :pattern ( (|Seq#Index_3683| s1@@6 j@@7))
))))
 :qid |stdinbpl.614:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3683| s0@@6 s1@@6))
)))
(assert (forall ((Heap2Heap@@1 T@PolymorphicMapType_39577) (Heap1Heap@@1 T@PolymorphicMapType_39577) (i@@25 Int) (hi@@19 Int) (ar_1@@19 T@Seq_48769) (v_2@@11 Int) ) (!  (=> (and (=  (and (<= 0 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@11) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@11))) (< (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@11) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@11)) hi@@19))  (and (<= 0 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@11) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@11))) (< (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@11) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@11)) hi@@19))) (=> (and (<= 0 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@11) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@11))) (< (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@11) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@11)) hi@@19)) (= (select (|PolymorphicMapType_39577_27882_3805#PolymorphicMapType_39577| Heap2Heap@@1) (|Seq#Index_27939| ar_1@@19 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@11) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@11))) Ref__Integer_value) (select (|PolymorphicMapType_39577_27882_3805#PolymorphicMapType_39577| Heap1Heap@@1) (|Seq#Index_27939| ar_1@@19 (|sk_count_array#condqp4| (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@11) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@11))) Ref__Integer_value)))) (= (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@11) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@11)))
 :qid |stdinbpl.1613:15|
 :skolemid |132|
 :pattern ( (|count_array#condqp4| Heap2Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@11) (|count_array#condqp4| Heap1Heap@@1 i@@25 hi@@19 ar_1@@19 v_2@@11) (succHeapTrans Heap2Heap@@1 Heap1Heap@@1))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_27962| (|Seq#Singleton_27962| t@@5)) 1)
 :qid |stdinbpl.329:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_27962| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3683| (|Seq#Singleton_3683| t@@6)) 1)
 :qid |stdinbpl.329:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3683| t@@6))
)))
(assert (forall ((Heap2Heap@@2 T@PolymorphicMapType_39577) (Heap1Heap@@2 T@PolymorphicMapType_39577) (i@@26 Int) (lo@@9 Int) (hi@@20 Int) (ar_1@@20 T@Seq_48769) ) (!  (=> (and (=  (and (<= lo@@9 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@9 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@9 hi@@20 ar_1@@20))) (< (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@9 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@9 hi@@20 ar_1@@20)) hi@@20))  (and (<= lo@@9 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@9 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@9 hi@@20 ar_1@@20))) (< (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@9 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@9 hi@@20 ar_1@@20)) hi@@20))) (=> (and (<= lo@@9 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@9 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@9 hi@@20 ar_1@@20))) (< (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@9 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@9 hi@@20 ar_1@@20)) hi@@20)) (= (select (|PolymorphicMapType_39577_27882_3805#PolymorphicMapType_39577| Heap2Heap@@2) (|Seq#Index_27939| ar_1@@20 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@9 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@9 hi@@20 ar_1@@20))) Ref__Integer_value) (select (|PolymorphicMapType_39577_27882_3805#PolymorphicMapType_39577| Heap1Heap@@2) (|Seq#Index_27939| ar_1@@20 (|sk_sum_array#condqp1| (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@9 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@9 hi@@20 ar_1@@20))) Ref__Integer_value)))) (= (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@9 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@9 hi@@20 ar_1@@20)))
 :qid |stdinbpl.887:15|
 :skolemid |74|
 :pattern ( (|sum_array#condqp1| Heap2Heap@@2 i@@26 lo@@9 hi@@20 ar_1@@20) (|sum_array#condqp1| Heap1Heap@@2 i@@26 lo@@9 hi@@20 ar_1@@20) (succHeapTrans Heap2Heap@@2 Heap1Heap@@2))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_39577) (Mask@@33 T@PolymorphicMapType_39598) (i@@27 Int) (hi@@21 Int) (ar_1@@21 T@Seq_3683) ) (!  (=> (and (state Heap@@36 Mask@@33) (< AssumeFunctionsAbove 5)) (=> (and (and (<= 0 i@@27) (<= i@@27 hi@@21)) (<= hi@@21 (|Seq#Length_3683| ar_1@@21))) (= (sum_list Heap@@36 i@@27 hi@@21 ar_1@@21) (ite (< i@@27 hi@@21) (+ (|Seq#Index_3683| ar_1@@21 i@@27) (|sum_list'| Heap@@36 (+ i@@27 1) hi@@21 ar_1@@21)) 0))))
 :qid |stdinbpl.785:15|
 :skolemid |68|
 :pattern ( (state Heap@@36 Mask@@33) (sum_list Heap@@36 i@@27 hi@@21 ar_1@@21))
)))
(assert (forall ((s@@21 T@Seq_48769) (t@@7 T@Seq_48769) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_27962| s@@21))) (= (|Seq#Take_27962| (|Seq#Append_48769| s@@21 t@@7) n@@17) (|Seq#Take_27962| s@@21 n@@17)))
 :qid |stdinbpl.471:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_27962| (|Seq#Append_48769| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3683) (t@@8 T@Seq_3683) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3683| s@@22))) (= (|Seq#Take_3683| (|Seq#Append_3683| s@@22 t@@8) n@@18) (|Seq#Take_3683| s@@22 n@@18)))
 :qid |stdinbpl.471:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3683| (|Seq#Append_3683| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_48769) (i@@28 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@28) (< i@@28 (|Seq#Length_27962| s@@23))) (= (|Seq#Length_27962| (|Seq#Update_27962| s@@23 i@@28 v@@2)) (|Seq#Length_27962| s@@23)))
 :qid |stdinbpl.370:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_27962| (|Seq#Update_27962| s@@23 i@@28 v@@2)))
 :pattern ( (|Seq#Length_27962| s@@23) (|Seq#Update_27962| s@@23 i@@28 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3683) (i@@29 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@29) (< i@@29 (|Seq#Length_3683| s@@24))) (= (|Seq#Length_3683| (|Seq#Update_3683| s@@24 i@@29 v@@3)) (|Seq#Length_3683| s@@24)))
 :qid |stdinbpl.370:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3683| (|Seq#Update_3683| s@@24 i@@29 v@@3)))
 :pattern ( (|Seq#Length_3683| s@@24) (|Seq#Update_3683| s@@24 i@@29 v@@3))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_39577) (o_58 T@Ref) (f_67 T@Field_27882_111815) (v@@4 T@FrameType) ) (! (succHeap Heap@@37 (PolymorphicMapType_39577 (|PolymorphicMapType_39577_27626_53#PolymorphicMapType_39577| Heap@@37) (|PolymorphicMapType_39577_27629_27630#PolymorphicMapType_39577| Heap@@37) (|PolymorphicMapType_39577_27882_3805#PolymorphicMapType_39577| Heap@@37) (|PolymorphicMapType_39577_27882_111992#PolymorphicMapType_39577| Heap@@37) (store (|PolymorphicMapType_39577_39637_111815#PolymorphicMapType_39577| Heap@@37) o_58 f_67 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_39577 (|PolymorphicMapType_39577_27626_53#PolymorphicMapType_39577| Heap@@37) (|PolymorphicMapType_39577_27629_27630#PolymorphicMapType_39577| Heap@@37) (|PolymorphicMapType_39577_27882_3805#PolymorphicMapType_39577| Heap@@37) (|PolymorphicMapType_39577_27882_111992#PolymorphicMapType_39577| Heap@@37) (store (|PolymorphicMapType_39577_39637_111815#PolymorphicMapType_39577| Heap@@37) o_58 f_67 v@@4)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_39577) (o_58@@0 T@Ref) (f_67@@0 T@Field_27882_111948) (v@@5 T@PolymorphicMapType_40126) ) (! (succHeap Heap@@38 (PolymorphicMapType_39577 (|PolymorphicMapType_39577_27626_53#PolymorphicMapType_39577| Heap@@38) (|PolymorphicMapType_39577_27629_27630#PolymorphicMapType_39577| Heap@@38) (|PolymorphicMapType_39577_27882_3805#PolymorphicMapType_39577| Heap@@38) (store (|PolymorphicMapType_39577_27882_111992#PolymorphicMapType_39577| Heap@@38) o_58@@0 f_67@@0 v@@5) (|PolymorphicMapType_39577_39637_111815#PolymorphicMapType_39577| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_39577 (|PolymorphicMapType_39577_27626_53#PolymorphicMapType_39577| Heap@@38) (|PolymorphicMapType_39577_27629_27630#PolymorphicMapType_39577| Heap@@38) (|PolymorphicMapType_39577_27882_3805#PolymorphicMapType_39577| Heap@@38) (store (|PolymorphicMapType_39577_27882_111992#PolymorphicMapType_39577| Heap@@38) o_58@@0 f_67@@0 v@@5) (|PolymorphicMapType_39577_39637_111815#PolymorphicMapType_39577| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_39577) (o_58@@1 T@Ref) (f_67@@1 T@Field_45723_3805) (v@@6 Int) ) (! (succHeap Heap@@39 (PolymorphicMapType_39577 (|PolymorphicMapType_39577_27626_53#PolymorphicMapType_39577| Heap@@39) (|PolymorphicMapType_39577_27629_27630#PolymorphicMapType_39577| Heap@@39) (store (|PolymorphicMapType_39577_27882_3805#PolymorphicMapType_39577| Heap@@39) o_58@@1 f_67@@1 v@@6) (|PolymorphicMapType_39577_27882_111992#PolymorphicMapType_39577| Heap@@39) (|PolymorphicMapType_39577_39637_111815#PolymorphicMapType_39577| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_39577 (|PolymorphicMapType_39577_27626_53#PolymorphicMapType_39577| Heap@@39) (|PolymorphicMapType_39577_27629_27630#PolymorphicMapType_39577| Heap@@39) (store (|PolymorphicMapType_39577_27882_3805#PolymorphicMapType_39577| Heap@@39) o_58@@1 f_67@@1 v@@6) (|PolymorphicMapType_39577_27882_111992#PolymorphicMapType_39577| Heap@@39) (|PolymorphicMapType_39577_39637_111815#PolymorphicMapType_39577| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_39577) (o_58@@2 T@Ref) (f_67@@2 T@Field_39650_39651) (v@@7 T@Ref) ) (! (succHeap Heap@@40 (PolymorphicMapType_39577 (|PolymorphicMapType_39577_27626_53#PolymorphicMapType_39577| Heap@@40) (store (|PolymorphicMapType_39577_27629_27630#PolymorphicMapType_39577| Heap@@40) o_58@@2 f_67@@2 v@@7) (|PolymorphicMapType_39577_27882_3805#PolymorphicMapType_39577| Heap@@40) (|PolymorphicMapType_39577_27882_111992#PolymorphicMapType_39577| Heap@@40) (|PolymorphicMapType_39577_39637_111815#PolymorphicMapType_39577| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_39577 (|PolymorphicMapType_39577_27626_53#PolymorphicMapType_39577| Heap@@40) (store (|PolymorphicMapType_39577_27629_27630#PolymorphicMapType_39577| Heap@@40) o_58@@2 f_67@@2 v@@7) (|PolymorphicMapType_39577_27882_3805#PolymorphicMapType_39577| Heap@@40) (|PolymorphicMapType_39577_27882_111992#PolymorphicMapType_39577| Heap@@40) (|PolymorphicMapType_39577_39637_111815#PolymorphicMapType_39577| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_39577) (o_58@@3 T@Ref) (f_67@@3 T@Field_39637_53) (v@@8 Bool) ) (! (succHeap Heap@@41 (PolymorphicMapType_39577 (store (|PolymorphicMapType_39577_27626_53#PolymorphicMapType_39577| Heap@@41) o_58@@3 f_67@@3 v@@8) (|PolymorphicMapType_39577_27629_27630#PolymorphicMapType_39577| Heap@@41) (|PolymorphicMapType_39577_27882_3805#PolymorphicMapType_39577| Heap@@41) (|PolymorphicMapType_39577_27882_111992#PolymorphicMapType_39577| Heap@@41) (|PolymorphicMapType_39577_39637_111815#PolymorphicMapType_39577| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_39577 (store (|PolymorphicMapType_39577_27626_53#PolymorphicMapType_39577| Heap@@41) o_58@@3 f_67@@3 v@@8) (|PolymorphicMapType_39577_27629_27630#PolymorphicMapType_39577| Heap@@41) (|PolymorphicMapType_39577_27882_3805#PolymorphicMapType_39577| Heap@@41) (|PolymorphicMapType_39577_27882_111992#PolymorphicMapType_39577| Heap@@41) (|PolymorphicMapType_39577_39637_111815#PolymorphicMapType_39577| Heap@@41)))
)))
(assert (forall ((s@@25 T@Seq_48769) (t@@9 T@Seq_48769) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_27962| s@@25))) (= (|Seq#Drop_27962| (|Seq#Append_48769| s@@25 t@@9) n@@19) (|Seq#Append_48769| (|Seq#Drop_27962| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.485:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_27962| (|Seq#Append_48769| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3683) (t@@10 T@Seq_3683) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3683| s@@26))) (= (|Seq#Drop_3683| (|Seq#Append_3683| s@@26 t@@10) n@@20) (|Seq#Append_3683| (|Seq#Drop_3683| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.485:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3683| (|Seq#Append_3683| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_48769) (n@@21 Int) (i@@30 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@30)) (< i@@30 (|Seq#Length_27962| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@30 n@@21) n@@21) i@@30) (= (|Seq#Index_27939| (|Seq#Drop_27962| s@@27 n@@21) (|Seq#Sub| i@@30 n@@21)) (|Seq#Index_27939| s@@27 i@@30))))
 :qid |stdinbpl.421:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_27962| s@@27 n@@21) (|Seq#Index_27939| s@@27 i@@30))
)))
(assert (forall ((s@@28 T@Seq_3683) (n@@22 Int) (i@@31 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@31)) (< i@@31 (|Seq#Length_3683| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@31 n@@22) n@@22) i@@31) (= (|Seq#Index_3683| (|Seq#Drop_3683| s@@28 n@@22) (|Seq#Sub| i@@31 n@@22)) (|Seq#Index_3683| s@@28 i@@31))))
 :qid |stdinbpl.421:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3683| s@@28 n@@22) (|Seq#Index_3683| s@@28 i@@31))
)))
(assert (forall ((s0@@7 T@Seq_48769) (s1@@7 T@Seq_48769) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_27962|)) (not (= s1@@7 |Seq#Empty_27962|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_27962| s0@@7))) (= (|Seq#Index_27939| (|Seq#Append_48769| s0@@7 s1@@7) n@@23) (|Seq#Index_27939| s0@@7 n@@23)))
 :qid |stdinbpl.361:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_27939| (|Seq#Append_48769| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_27939| s0@@7 n@@23) (|Seq#Append_48769| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3683) (s1@@8 T@Seq_3683) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3683|)) (not (= s1@@8 |Seq#Empty_3683|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3683| s0@@8))) (= (|Seq#Index_3683| (|Seq#Append_3683| s0@@8 s1@@8) n@@24) (|Seq#Index_3683| s0@@8 n@@24)))
 :qid |stdinbpl.361:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3683| (|Seq#Append_3683| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3683| s0@@8 n@@24) (|Seq#Append_3683| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_48769) (s1@@9 T@Seq_48769) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_27962|)) (not (= s1@@9 |Seq#Empty_27962|))) (<= 0 m)) (< m (|Seq#Length_27962| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_27962| s0@@9)) (|Seq#Length_27962| s0@@9)) m) (= (|Seq#Index_27939| (|Seq#Append_48769| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_27962| s0@@9))) (|Seq#Index_27939| s1@@9 m))))
 :qid |stdinbpl.366:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_27939| s1@@9 m) (|Seq#Append_48769| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3683) (s1@@10 T@Seq_3683) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3683|)) (not (= s1@@10 |Seq#Empty_3683|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3683| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3683| s0@@10)) (|Seq#Length_3683| s0@@10)) m@@0) (= (|Seq#Index_3683| (|Seq#Append_3683| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3683| s0@@10))) (|Seq#Index_3683| s1@@10 m@@0))))
 :qid |stdinbpl.366:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3683| s1@@10 m@@0) (|Seq#Append_3683| s0@@10 s1@@10))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_39577) (Mask@@34 T@PolymorphicMapType_39598) (i@@32 Int) (lo@@10 Int) (hi@@22 Int) (ar_1@@22 T@Seq_48769) ) (!  (=> (and (state Heap@@42 Mask@@34) (< AssumeFunctionsAbove 0)) (=> (and (<= 0 lo@@10) (and (<= lo@@10 i@@32) (<= i@@32 hi@@22))) (= (sum_array Heap@@42 i@@32 lo@@10 hi@@22 ar_1@@22) (ite (< i@@32 hi@@22) (+ (select (|PolymorphicMapType_39577_27882_3805#PolymorphicMapType_39577| Heap@@42) (|Seq#Index_27939| ar_1@@22 i@@32) Ref__Integer_value) (|sum_array'| Heap@@42 (+ i@@32 1) lo@@10 hi@@22 ar_1@@22)) 0))))
 :qid |stdinbpl.870:15|
 :skolemid |72|
 :pattern ( (state Heap@@42 Mask@@34) (sum_array Heap@@42 i@@32 lo@@10 hi@@22 ar_1@@22))
)))
(assert (forall ((o_58@@4 T@Ref) (f_70 T@Field_39650_39651) (Heap@@43 T@PolymorphicMapType_39577) ) (!  (=> (select (|PolymorphicMapType_39577_27626_53#PolymorphicMapType_39577| Heap@@43) o_58@@4 $allocated) (select (|PolymorphicMapType_39577_27626_53#PolymorphicMapType_39577| Heap@@43) (select (|PolymorphicMapType_39577_27629_27630#PolymorphicMapType_39577| Heap@@43) o_58@@4 f_70) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_39577_27629_27630#PolymorphicMapType_39577| Heap@@43) o_58@@4 f_70))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_39577) (Mask@@35 T@PolymorphicMapType_39598) (i@@33 Int) (lo@@11 Int) (hi@@23 Int) (step@@7 Int) (vmin@@7 Int) (vmax_1@@7 Int) (ar_1@@23 T@Seq_48769) ) (!  (=> (state Heap@@44 Mask@@35) (= (|sum_square'| Heap@@44 i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax_1@@7 ar_1@@23) (|sum_square#frame| (FrameFragment_5444 (|sum_square#condqp2| Heap@@44 i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax_1@@7 ar_1@@23)) i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax_1@@7 ar_1@@23)))
 :qid |stdinbpl.1070:15|
 :skolemid |91|
 :pattern ( (state Heap@@44 Mask@@35) (|sum_square'| Heap@@44 i@@33 lo@@11 hi@@23 step@@7 vmin@@7 vmax_1@@7 ar_1@@23))
)))
(assert (forall ((s@@29 T@Seq_48769) (x@@3 T@Ref) (i@@34 Int) ) (!  (=> (and (and (<= 0 i@@34) (< i@@34 (|Seq#Length_27962| s@@29))) (= (|Seq#Index_27939| s@@29 i@@34) x@@3)) (|Seq#Contains_48769| s@@29 x@@3))
 :qid |stdinbpl.518:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_48769| s@@29 x@@3) (|Seq#Index_27939| s@@29 i@@34))
)))
(assert (forall ((s@@30 T@Seq_3683) (x@@4 Int) (i@@35 Int) ) (!  (=> (and (and (<= 0 i@@35) (< i@@35 (|Seq#Length_3683| s@@30))) (= (|Seq#Index_3683| s@@30 i@@35) x@@4)) (|Seq#Contains_3683| s@@30 x@@4))
 :qid |stdinbpl.518:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3683| s@@30 x@@4) (|Seq#Index_3683| s@@30 i@@35))
)))
(assert (forall ((s0@@11 T@Seq_48769) (s1@@11 T@Seq_48769) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_48769| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_48769| s0@@11 s1@@11))) (not (= (|Seq#Length_27962| s0@@11) (|Seq#Length_27962| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_48769| s0@@11 s1@@11))) (= (|Seq#Length_27962| s0@@11) (|Seq#Length_27962| s1@@11))) (= (|Seq#SkolemDiff_48769| s0@@11 s1@@11) (|Seq#SkolemDiff_48769| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_48769| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_48769| s0@@11 s1@@11) (|Seq#Length_27962| s0@@11))) (not (= (|Seq#Index_27939| s0@@11 (|Seq#SkolemDiff_48769| s0@@11 s1@@11)) (|Seq#Index_27939| s1@@11 (|Seq#SkolemDiff_48769| s0@@11 s1@@11))))))
 :qid |stdinbpl.622:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_48769| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3683) (s1@@12 T@Seq_3683) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3683| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3683| s0@@12 s1@@12))) (not (= (|Seq#Length_3683| s0@@12) (|Seq#Length_3683| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3683| s0@@12 s1@@12))) (= (|Seq#Length_3683| s0@@12) (|Seq#Length_3683| s1@@12))) (= (|Seq#SkolemDiff_3683| s0@@12 s1@@12) (|Seq#SkolemDiff_3683| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3683| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3683| s0@@12 s1@@12) (|Seq#Length_3683| s0@@12))) (not (= (|Seq#Index_3683| s0@@12 (|Seq#SkolemDiff_3683| s0@@12 s1@@12)) (|Seq#Index_3683| s1@@12 (|Seq#SkolemDiff_3683| s0@@12 s1@@12))))))
 :qid |stdinbpl.622:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3683| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_27882_111815) (v_1@@0 T@FrameType) (q T@Field_27882_111815) (w@@0 T@FrameType) (r T@Field_27882_111815) (u T@FrameType) ) (!  (=> (and (InsidePredicate_39637_39637 p@@1 v_1@@0 q w@@0) (InsidePredicate_39637_39637 q w@@0 r u)) (InsidePredicate_39637_39637 p@@1 v_1@@0 r u))
 :qid |stdinbpl.289:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_39637_39637 p@@1 v_1@@0 q w@@0) (InsidePredicate_39637_39637 q w@@0 r u))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_39577) (i@@36 Int) (lo@@12 Int) (hi@@24 Int) (step@@8 Int) (vmin@@8 Int) (vmax_1@@8 Int) (ar_1@@24 T@Seq_48769) ) (! (dummyFunction_4485 (|sum_square#triggerStateless| i@@36 lo@@12 hi@@24 step@@8 vmin@@8 vmax_1@@8 ar_1@@24))
 :qid |stdinbpl.1057:15|
 :skolemid |89|
 :pattern ( (|sum_square'| Heap@@45 i@@36 lo@@12 hi@@24 step@@8 vmin@@8 vmax_1@@8 ar_1@@24))
)))
(assert (forall ((s@@31 T@Seq_48769) ) (!  (=> (= (|Seq#Length_27962| s@@31) 0) (= s@@31 |Seq#Empty_27962|))
 :qid |stdinbpl.325:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_27962| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3683) ) (!  (=> (= (|Seq#Length_3683| s@@32) 0) (= s@@32 |Seq#Empty_3683|))
 :qid |stdinbpl.325:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3683| s@@32))
)))
(assert (forall ((s@@33 T@Seq_48769) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_27962| s@@33 n@@25) |Seq#Empty_27962|))
 :qid |stdinbpl.501:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_27962| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3683) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3683| s@@34 n@@26) |Seq#Empty_3683|))
 :qid |stdinbpl.501:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3683| s@@34 n@@26))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_39577) (Mask@@36 T@PolymorphicMapType_39598) (N0@@6 Int) (N1@@6 Int) (i0_3@@6 Int) (i1_9@@6 Int) ) (!  (=> (and (state Heap@@46 Mask@@36) (or (< AssumeFunctionsAbove 1) (|Ref__multidim_index_2#trigger| EmptyFrame N0@@6 N1@@6 i0_3@@6 i1_9@@6))) (=> (and (and (and (and (and (<= 0 i0_3@@6) (< i0_3@@6 N0@@6)) (<= 0 N0@@6)) (<= 0 i1_9@@6)) (< i1_9@@6 N1@@6)) (<= 0 N1@@6)) (<= 0 (|Ref__multidim_index_2'| Heap@@46 N0@@6 N1@@6 i0_3@@6 i1_9@@6))))
 :qid |stdinbpl.695:15|
 :skolemid |61|
 :pattern ( (state Heap@@46 Mask@@36) (|Ref__multidim_index_2'| Heap@@46 N0@@6 N1@@6 i0_3@@6 i1_9@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@47 T@PolymorphicMapType_39577) (Mask@@37 T@PolymorphicMapType_39598) (i@@37 Int) (lo@@13 Int) (hi@@25 Int) (ar_1@@25 T@Seq_48769) ) (!  (=> (state Heap@@47 Mask@@37) (= (|sum_array'| Heap@@47 i@@37 lo@@13 hi@@25 ar_1@@25) (|sum_array#frame| (FrameFragment_5444 (|sum_array#condqp1| Heap@@47 i@@37 lo@@13 hi@@25 ar_1@@25)) i@@37 lo@@13 hi@@25 ar_1@@25)))
 :qid |stdinbpl.877:15|
 :skolemid |73|
 :pattern ( (state Heap@@47 Mask@@37) (|sum_array'| Heap@@47 i@@37 lo@@13 hi@@25 ar_1@@25))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_39577) (Mask@@38 T@PolymorphicMapType_39598) (i@@38 Int) (hi@@26 Int) (ar_1@@26 T@Seq_48769) (v_2@@12 Int) ) (!  (=> (state Heap@@48 Mask@@38) (= (|count_array'| Heap@@48 i@@38 hi@@26 ar_1@@26 v_2@@12) (|count_array#frame| (FrameFragment_5444 (|count_array#condqp4| Heap@@48 i@@38 hi@@26 ar_1@@26 v_2@@12)) i@@38 hi@@26 ar_1@@26 v_2@@12)))
 :qid |stdinbpl.1603:15|
 :skolemid |131|
 :pattern ( (state Heap@@48 Mask@@38) (|count_array'| Heap@@48 i@@38 hi@@26 ar_1@@26 v_2@@12))
)))
; Invalid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun N () Int)
(declare-fun step@@9 () Int)
(declare-fun M_1 () Int)
(declare-fun wildcard@0 () Real)
(declare-fun QPMask@11 () T@PolymorphicMapType_39598)
(declare-fun matrix_1 () T@Seq_48769)
(declare-fun PostHeap@0 () T@PolymorphicMapType_39577)
(declare-fun neverTriggered26 (Int) Bool)
(declare-fun k_34 () Int)
(declare-fun P_2 () Int)
(declare-fun hist () T@Seq_48769)
(declare-fun qpRange25 (T@Ref) Bool)
(declare-fun invRecv25 (T@Ref) Int)
(declare-fun QPMask@10 () T@PolymorphicMapType_39598)
(declare-fun i1_18 () Int)
(declare-fun Heap@@49 () T@PolymorphicMapType_39577)
(declare-fun i1_17 () Int)
(declare-fun j1_17 () Int)
(declare-fun QPMask@1 () T@PolymorphicMapType_39598)
(declare-fun p_1 () Real)
(declare-fun qpRange24 (T@Ref) Bool)
(declare-fun invRecv24 (T@Ref) Int)
(declare-fun j1_16 () Int)
(declare-fun k_2_2 () Int)
(declare-fun ExhaleHeap@1 () T@PolymorphicMapType_39577)
(declare-fun neverTriggered28 (Int) Bool)
(declare-fun QPMask@8 () T@PolymorphicMapType_39598)
(declare-fun qpRange28 (T@Ref) Bool)
(declare-fun invRecv28 (T@Ref) Int)
(declare-fun QPMask@9 () T@PolymorphicMapType_39598)
(declare-fun i1_8_1 () Int)
(declare-fun j1_9 () Int)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_39577)
(declare-fun QPMask@5 () T@PolymorphicMapType_39598)
(declare-fun qpRange33 (T@Ref) Bool)
(declare-fun invRecv33 (T@Ref) Int)
(declare-fun QPMask@6 () T@PolymorphicMapType_39598)
(declare-fun qpRange34 (T@Ref) Bool)
(declare-fun invRecv34 (T@Ref) Int)
(declare-fun QPMask@7 () T@PolymorphicMapType_39598)
(declare-fun neverTriggered27 (Int) Bool)
(declare-fun qpRange27 (T@Ref) Bool)
(declare-fun invRecv27 (T@Ref) Int)
(declare-fun i_2 () Int)
(declare-fun j_3 () Int)
(declare-fun i@@39 () Int)
(declare-fun j_1 () Int)
(declare-fun diz () T@Ref)
(declare-fun current_thread_id () Int)
(declare-fun neverTriggered29 (Int) Bool)
(declare-fun qpRange29 (T@Ref) Bool)
(declare-fun invRecv29 (T@Ref) Int)
(declare-fun QPMask@2 () T@PolymorphicMapType_39598)
(declare-fun qpRange30 (T@Ref) Bool)
(declare-fun invRecv30 (T@Ref) Int)
(declare-fun QPMask@3 () T@PolymorphicMapType_39598)
(declare-fun neverTriggered31 (Int) Bool)
(declare-fun qpRange31 (T@Ref) Bool)
(declare-fun invRecv31 (T@Ref) Int)
(declare-fun QPMask@4 () T@PolymorphicMapType_39598)
(declare-fun neverTriggered32 (Int) Bool)
(declare-fun qpRange32 (T@Ref) Bool)
(declare-fun invRecv32 (T@Ref) Int)
(declare-fun qpRange23 (T@Ref) Bool)
(declare-fun invRecv23 (T@Ref) Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_39598)
(declare-fun i1_3 () Int)
(declare-fun i1_16 () Int)
(declare-fun j1_3 () Int)
(declare-fun qpRange22 (T@Ref) Bool)
(declare-fun invRecv22 (T@Ref) Int)
(declare-fun j1_12 () Int)
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
 (=> (= (ControlFlow 0 0) 166) (let ((anon87_Then_correct  (and (=> (= (ControlFlow 0 140) (- 0 147)) (<= 0 N)) (=> (<= 0 N) (and (=> (= (ControlFlow 0 140) (- 0 146)) (<= N step@@9)) (=> (<= N step@@9) (and (=> (= (ControlFlow 0 140) (- 0 145)) (> step@@9 0)) (=> (> step@@9 0) (and (=> (= (ControlFlow 0 140) (- 0 144)) (<= 0 (* M_1 step@@9))) (=> (<= 0 (* M_1 step@@9)) (=> (> wildcard@0 0.0) (and (=> (= (ControlFlow 0 140) (- 0 143)) (forall ((k$0 Int) ) (!  (=> (and (<= 0 k$0) (and (< k$0 (* M_1 step@@9)) (and (<= 0 (mod k$0 step@@9)) (< (mod k$0 step@@9) N)))) (> (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@11) (|Seq#Index_27939| matrix_1 k$0) Ref__Integer_value) NoPerm))
 :qid |stdinbpl.3803:23|
 :skolemid |267|
))) (=> (forall ((k$0@@0 Int) ) (!  (=> (and (<= 0 k$0@@0) (and (< k$0@@0 (* M_1 step@@9)) (and (<= 0 (mod k$0@@0 step@@9)) (< (mod k$0@@0 step@@9) N)))) (> (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@11) (|Seq#Index_27939| matrix_1 k$0@@0) Ref__Integer_value) NoPerm))
 :qid |stdinbpl.3803:23|
 :skolemid |267|
)) (=> (forall ((k$0@@1 Int) ) (!  (=> (and (<= 0 k$0@@1) (and (< k$0@@1 (* M_1 step@@9)) (and (<= 0 (mod k$0@@1 step@@9)) (< (mod k$0@@1 step@@9) N)))) (< wildcard@0 (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@11) (|Seq#Index_27939| matrix_1 k$0@@1) Ref__Integer_value)))
 :qid |stdinbpl.3807:28|
 :skolemid |268|
)) (and (=> (= (ControlFlow 0 140) (- 0 142)) (forall ((k$0@@2 Int) ) (!  (=> (and (and (<= 0 k$0@@2) (and (< k$0@@2 (* M_1 step@@9)) (and (<= 0 (mod k$0@@2 step@@9)) (< (mod k$0@@2 step@@9) N)))) (dummyFunction_4485 (select (|PolymorphicMapType_39577_27882_3805#PolymorphicMapType_39577| PostHeap@0) (|Seq#Index_27939| matrix_1 k$0@@2) Ref__Integer_value))) (>= wildcard@0 NoPerm))
 :qid |stdinbpl.3814:25|
 :skolemid |269|
 :pattern ( (|Seq#Index_27939| matrix_1 k$0@@2))
 :pattern ( (|Seq#Index_27939| matrix_1 k$0@@2))
))) (=> (forall ((k$0@@3 Int) ) (!  (=> (and (and (<= 0 k$0@@3) (and (< k$0@@3 (* M_1 step@@9)) (and (<= 0 (mod k$0@@3 step@@9)) (< (mod k$0@@3 step@@9) N)))) (dummyFunction_4485 (select (|PolymorphicMapType_39577_27882_3805#PolymorphicMapType_39577| PostHeap@0) (|Seq#Index_27939| matrix_1 k$0@@3) Ref__Integer_value))) (>= wildcard@0 NoPerm))
 :qid |stdinbpl.3814:25|
 :skolemid |269|
 :pattern ( (|Seq#Index_27939| matrix_1 k$0@@3))
 :pattern ( (|Seq#Index_27939| matrix_1 k$0@@3))
)) (and (=> (= (ControlFlow 0 140) (- 0 141)) (forall ((k$0@@4 Int) (k$0_3 Int) ) (!  (=> (and (and (and (and (not (= k$0@@4 k$0_3)) (and (<= 0 k$0@@4) (and (< k$0@@4 (* M_1 step@@9)) (and (<= 0 (mod k$0@@4 step@@9)) (< (mod k$0@@4 step@@9) N))))) (and (<= 0 k$0_3) (and (< k$0_3 (* M_1 step@@9)) (and (<= 0 (mod k$0_3 step@@9)) (< (mod k$0_3 step@@9) N))))) (< NoPerm wildcard@0)) (< NoPerm wildcard@0)) (not (= (|Seq#Index_27939| matrix_1 k$0@@4) (|Seq#Index_27939| matrix_1 k$0_3))))
 :qid |stdinbpl.3821:25|
 :skolemid |270|
 :pattern ( (neverTriggered26 k$0@@4) (neverTriggered26 k$0_3))
))) (=> (forall ((k$0@@5 Int) (k$0_3@@0 Int) ) (!  (=> (and (and (and (and (not (= k$0@@5 k$0_3@@0)) (and (<= 0 k$0@@5) (and (< k$0@@5 (* M_1 step@@9)) (and (<= 0 (mod k$0@@5 step@@9)) (< (mod k$0@@5 step@@9) N))))) (and (<= 0 k$0_3@@0) (and (< k$0_3@@0 (* M_1 step@@9)) (and (<= 0 (mod k$0_3@@0 step@@9)) (< (mod k$0_3@@0 step@@9) N))))) (< NoPerm wildcard@0)) (< NoPerm wildcard@0)) (not (= (|Seq#Index_27939| matrix_1 k$0@@5) (|Seq#Index_27939| matrix_1 k$0_3@@0))))
 :qid |stdinbpl.3821:25|
 :skolemid |270|
 :pattern ( (neverTriggered26 k$0@@5) (neverTriggered26 k$0_3@@0))
)) (=> (= (ControlFlow 0 140) (- 0 139)) (forall ((k$0@@6 Int) ) (!  (=> (and (<= 0 k$0@@6) (and (< k$0@@6 (* M_1 step@@9)) (and (<= 0 (mod k$0@@6 step@@9)) (< (mod k$0@@6 step@@9) N)))) (=> (> wildcard@0 NoPerm) (> (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@11) (|Seq#Index_27939| matrix_1 k$0@@6) Ref__Integer_value) NoPerm)))
 :qid |stdinbpl.3828:25|
 :skolemid |271|
 :pattern ( (|Seq#Index_27939| matrix_1 k$0@@6))
 :pattern ( (|Seq#Index_27939| matrix_1 k$0@@6))
)))))))))))))))))))))
(let ((anon44_correct true))
(let ((anon86_Then_correct  (=> (and (<= 0 k_34) (< k_34 P_2)) (and (=> (= (ControlFlow 0 148) (- 0 151)) (>= k_34 0)) (=> (>= k_34 0) (and (=> (= (ControlFlow 0 148) (- 0 150)) (< k_34 (|Seq#Length_27962| hist))) (=> (< k_34 (|Seq#Length_27962| hist)) (and (=> (= (ControlFlow 0 148) (- 0 149)) (HasDirectPerm_27882_3805 QPMask@11 (|Seq#Index_27939| hist k_34) Ref__Integer_value)) (=> (HasDirectPerm_27882_3805 QPMask@11 (|Seq#Index_27939| hist k_34) Ref__Integer_value) (and (=> (= (ControlFlow 0 148) 140) anon87_Then_correct) (=> (= (ControlFlow 0 148) 137) anon44_correct)))))))))))
(let ((anon86_Else_correct  (=> (and (not (and (<= 0 k_34) (< k_34 P_2))) (= (ControlFlow 0 138) 137)) anon44_correct)))
(let ((anon85_Else_correct true))
(let ((anon83_Else_correct  (and (=> (= (ControlFlow 0 152) (- 0 153)) (forall ((i1_7_2 Int) (i1_7_3 Int) ) (!  (=> (and (and (and (and (not (= i1_7_2 i1_7_3)) (and (<= 0 i1_7_2) (< i1_7_2 P_2))) (and (<= 0 i1_7_3) (< i1_7_3 P_2))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27939| hist i1_7_2) (|Seq#Index_27939| hist i1_7_3))))
 :qid |stdinbpl.3743:15|
 :skolemid |261|
))) (=> (forall ((i1_7_2@@0 Int) (i1_7_3@@0 Int) ) (!  (=> (and (and (and (and (not (= i1_7_2@@0 i1_7_3@@0)) (and (<= 0 i1_7_2@@0) (< i1_7_2@@0 P_2))) (and (<= 0 i1_7_3@@0) (< i1_7_3@@0 P_2))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27939| hist i1_7_2@@0) (|Seq#Index_27939| hist i1_7_3@@0))))
 :qid |stdinbpl.3743:15|
 :skolemid |261|
)) (=> (and (and (forall ((i1_7_2@@1 Int) ) (!  (=> (and (and (<= 0 i1_7_2@@1) (< i1_7_2@@1 P_2)) (< NoPerm FullPerm)) (and (qpRange25 (|Seq#Index_27939| hist i1_7_2@@1)) (= (invRecv25 (|Seq#Index_27939| hist i1_7_2@@1)) i1_7_2@@1)))
 :qid |stdinbpl.3749:22|
 :skolemid |262|
 :pattern ( (|Seq#Index_27939| hist i1_7_2@@1))
 :pattern ( (|Seq#Index_27939| hist i1_7_2@@1))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv25 o_9)) (< (invRecv25 o_9) P_2)) (< NoPerm FullPerm)) (qpRange25 o_9)) (= (|Seq#Index_27939| hist (invRecv25 o_9)) o_9))
 :qid |stdinbpl.3753:22|
 :skolemid |263|
 :pattern ( (invRecv25 o_9))
))) (and (forall ((i1_7_2@@2 Int) ) (!  (=> (and (<= 0 i1_7_2@@2) (< i1_7_2@@2 P_2)) (not (= (|Seq#Index_27939| hist i1_7_2@@2) null)))
 :qid |stdinbpl.3759:22|
 :skolemid |264|
 :pattern ( (|Seq#Index_27939| hist i1_7_2@@2))
 :pattern ( (|Seq#Index_27939| hist i1_7_2@@2))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv25 o_9@@0)) (< (invRecv25 o_9@@0) P_2)) (< NoPerm FullPerm)) (qpRange25 o_9@@0)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_27939| hist (invRecv25 o_9@@0)) o_9@@0)) (= (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@11) o_9@@0 Ref__Integer_value) (+ (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@10) o_9@@0 Ref__Integer_value) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv25 o_9@@0)) (< (invRecv25 o_9@@0) P_2)) (< NoPerm FullPerm)) (qpRange25 o_9@@0))) (= (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@11) o_9@@0 Ref__Integer_value) (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@10) o_9@@0 Ref__Integer_value))))
 :qid |stdinbpl.3765:22|
 :skolemid |265|
 :pattern ( (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@11) o_9@@0 Ref__Integer_value))
)))) (=> (and (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_39637_53) ) (!  (=> true (= (select (|PolymorphicMapType_39598_27882_53#PolymorphicMapType_39598| QPMask@10) o_9@@1 f_5) (select (|PolymorphicMapType_39598_27882_53#PolymorphicMapType_39598| QPMask@11) o_9@@1 f_5)))
 :qid |stdinbpl.3769:29|
 :skolemid |266|
 :pattern ( (select (|PolymorphicMapType_39598_27882_53#PolymorphicMapType_39598| QPMask@10) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_39598_27882_53#PolymorphicMapType_39598| QPMask@11) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_39650_39651) ) (!  (=> true (= (select (|PolymorphicMapType_39598_27882_39651#PolymorphicMapType_39598| QPMask@10) o_9@@2 f_5@@0) (select (|PolymorphicMapType_39598_27882_39651#PolymorphicMapType_39598| QPMask@11) o_9@@2 f_5@@0)))
 :qid |stdinbpl.3769:29|
 :skolemid |266|
 :pattern ( (select (|PolymorphicMapType_39598_27882_39651#PolymorphicMapType_39598| QPMask@10) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_39598_27882_39651#PolymorphicMapType_39598| QPMask@11) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_45723_3805) ) (!  (=> (not (= f_5@@1 Ref__Integer_value)) (= (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@10) o_9@@3 f_5@@1) (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@11) o_9@@3 f_5@@1)))
 :qid |stdinbpl.3769:29|
 :skolemid |266|
 :pattern ( (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@10) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@11) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_27882_111815) ) (!  (=> true (= (select (|PolymorphicMapType_39598_27882_111815#PolymorphicMapType_39598| QPMask@10) o_9@@4 f_5@@2) (select (|PolymorphicMapType_39598_27882_111815#PolymorphicMapType_39598| QPMask@11) o_9@@4 f_5@@2)))
 :qid |stdinbpl.3769:29|
 :skolemid |266|
 :pattern ( (select (|PolymorphicMapType_39598_27882_111815#PolymorphicMapType_39598| QPMask@10) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_39598_27882_111815#PolymorphicMapType_39598| QPMask@11) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_27882_111948) ) (!  (=> true (= (select (|PolymorphicMapType_39598_27882_116070#PolymorphicMapType_39598| QPMask@10) o_9@@5 f_5@@3) (select (|PolymorphicMapType_39598_27882_116070#PolymorphicMapType_39598| QPMask@11) o_9@@5 f_5@@3)))
 :qid |stdinbpl.3769:29|
 :skolemid |266|
 :pattern ( (select (|PolymorphicMapType_39598_27882_116070#PolymorphicMapType_39598| QPMask@10) o_9@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_39598_27882_116070#PolymorphicMapType_39598| QPMask@11) o_9@@5 f_5@@3))
))) (state PostHeap@0 QPMask@11)) (and (state PostHeap@0 QPMask@11) (state PostHeap@0 QPMask@11))) (and (and (=> (= (ControlFlow 0 152) 136) anon85_Else_correct) (=> (= (ControlFlow 0 152) 148) anon86_Then_correct)) (=> (= (ControlFlow 0 152) 138) anon86_Else_correct))))))))
(let ((anon39_correct true))
(let ((anon84_Else_correct  (=> (and (not (and (<= 0 i1_18) (< i1_18 P_2))) (= (ControlFlow 0 135) 131)) anon39_correct)))
(let ((anon84_Then_correct  (=> (and (<= 0 i1_18) (< i1_18 P_2)) (and (=> (= (ControlFlow 0 132) (- 0 134)) (>= i1_18 0)) (=> (>= i1_18 0) (and (=> (= (ControlFlow 0 132) (- 0 133)) (< i1_18 (|Seq#Length_27962| hist))) (=> (< i1_18 (|Seq#Length_27962| hist)) (=> (= (ControlFlow 0 132) 131) anon39_correct))))))))
(let ((anon79_Else_correct  (=> (and (forall ((i1_5_2 Int) (j1_7_1 Int) ) (!  (=> (and (<= 0 i1_5_2) (and (< i1_5_2 M_1) (and (<= 0 j1_7_1) (< j1_7_1 N)))) (= (select (|PolymorphicMapType_39577_27882_3805#PolymorphicMapType_39577| PostHeap@0) (|Seq#Index_27939| matrix_1 (Ref__multidim_index_2 PostHeap@0 M_1 step@@9 i1_5_2 j1_7_1)) Ref__Integer_value) (select (|PolymorphicMapType_39577_27882_3805#PolymorphicMapType_39577| Heap@@49) (|Seq#Index_27939| matrix_1 (Ref__multidim_index_2 Heap@@49 M_1 step@@9 i1_5_2 j1_7_1)) Ref__Integer_value)))
 :qid |stdinbpl.3725:20|
 :skolemid |260|
 :pattern ( (|Ref__multidim_index_2#frame| EmptyFrame M_1 step@@9 i1_5_2 j1_7_1))
 :pattern ( (|Seq#Index_27939| matrix_1 (|Ref__multidim_index_2#frame| EmptyFrame M_1 step@@9 i1_5_2 j1_7_1)))
)) (state PostHeap@0 QPMask@10)) (and (and (=> (= (ControlFlow 0 154) 152) anon83_Else_correct) (=> (= (ControlFlow 0 154) 132) anon84_Then_correct)) (=> (= (ControlFlow 0 154) 135) anon84_Else_correct)))))
(let ((anon82_Then_correct  (and (=> (= (ControlFlow 0 116) (- 0 121)) (<= 0 i1_17)) (=> (<= 0 i1_17) (and (=> (= (ControlFlow 0 116) (- 0 120)) (< i1_17 M_1)) (=> (< i1_17 M_1) (and (=> (= (ControlFlow 0 116) (- 0 119)) (<= 0 M_1)) (=> (<= 0 M_1) (and (=> (= (ControlFlow 0 116) (- 0 118)) (<= 0 j1_17)) (=> (<= 0 j1_17) (and (=> (= (ControlFlow 0 116) (- 0 117)) (< j1_17 step@@9)) (=> (< j1_17 step@@9) (=> (= (ControlFlow 0 116) (- 0 115)) (<= 0 step@@9))))))))))))))
(let ((anon81_Then_correct  (and (=> (= (ControlFlow 0 109) (- 0 114)) (<= 0 i1_17)) (=> (<= 0 i1_17) (and (=> (= (ControlFlow 0 109) (- 0 113)) (< i1_17 M_1)) (=> (< i1_17 M_1) (and (=> (= (ControlFlow 0 109) (- 0 112)) (<= 0 M_1)) (=> (<= 0 M_1) (and (=> (= (ControlFlow 0 109) (- 0 111)) (<= 0 j1_17)) (=> (<= 0 j1_17) (and (=> (= (ControlFlow 0 109) (- 0 110)) (< j1_17 step@@9)) (=> (< j1_17 step@@9) (=> (= (ControlFlow 0 109) (- 0 108)) (<= 0 step@@9))))))))))))))
(let ((anon35_correct true))
(let ((anon82_Else_correct  (and (=> (= (ControlFlow 0 122) (- 0 125)) (>= (Ref__multidim_index_2 Heap@@49 M_1 step@@9 i1_17 j1_17) 0)) (=> (>= (Ref__multidim_index_2 Heap@@49 M_1 step@@9 i1_17 j1_17) 0) (and (=> (= (ControlFlow 0 122) (- 0 124)) (< (Ref__multidim_index_2 Heap@@49 M_1 step@@9 i1_17 j1_17) (|Seq#Length_27962| matrix_1))) (=> (< (Ref__multidim_index_2 Heap@@49 M_1 step@@9 i1_17 j1_17) (|Seq#Length_27962| matrix_1)) (and (=> (= (ControlFlow 0 122) (- 0 123)) (HasDirectPerm_27882_3805 QPMask@1 (|Seq#Index_27939| matrix_1 (Ref__multidim_index_2 Heap@@49 M_1 step@@9 i1_17 j1_17)) Ref__Integer_value)) (=> (HasDirectPerm_27882_3805 QPMask@1 (|Seq#Index_27939| matrix_1 (Ref__multidim_index_2 Heap@@49 M_1 step@@9 i1_17 j1_17)) Ref__Integer_value) (=> (= (ControlFlow 0 122) 106) anon35_correct)))))))))
(let ((anon81_Else_correct  (and (=> (= (ControlFlow 0 126) (- 0 129)) (>= (Ref__multidim_index_2 PostHeap@0 M_1 step@@9 i1_17 j1_17) 0)) (=> (>= (Ref__multidim_index_2 PostHeap@0 M_1 step@@9 i1_17 j1_17) 0) (and (=> (= (ControlFlow 0 126) (- 0 128)) (< (Ref__multidim_index_2 PostHeap@0 M_1 step@@9 i1_17 j1_17) (|Seq#Length_27962| matrix_1))) (=> (< (Ref__multidim_index_2 PostHeap@0 M_1 step@@9 i1_17 j1_17) (|Seq#Length_27962| matrix_1)) (and (=> (= (ControlFlow 0 126) (- 0 127)) (HasDirectPerm_27882_3805 QPMask@10 (|Seq#Index_27939| matrix_1 (Ref__multidim_index_2 PostHeap@0 M_1 step@@9 i1_17 j1_17)) Ref__Integer_value)) (=> (HasDirectPerm_27882_3805 QPMask@10 (|Seq#Index_27939| matrix_1 (Ref__multidim_index_2 PostHeap@0 M_1 step@@9 i1_17 j1_17)) Ref__Integer_value) (and (=> (= (ControlFlow 0 126) 116) anon82_Then_correct) (=> (= (ControlFlow 0 126) 122) anon82_Else_correct))))))))))
(let ((anon80_Then_correct  (=> (and (<= 0 i1_17) (and (< i1_17 M_1) (and (<= 0 j1_17) (< j1_17 N)))) (and (=> (= (ControlFlow 0 130) 109) anon81_Then_correct) (=> (= (ControlFlow 0 130) 126) anon81_Else_correct)))))
(let ((anon80_Else_correct  (=> (and (not (and (<= 0 i1_17) (and (< i1_17 M_1) (and (<= 0 j1_17) (< j1_17 N))))) (= (ControlFlow 0 107) 106)) anon35_correct)))
(let ((anon75_Else_correct  (and (=> (= (ControlFlow 0 155) (- 0 157)) (forall ((j1_5_1 Int) (j1_5_2 Int) ) (!  (=> (and (and (and (and (not (= j1_5_1 j1_5_2)) (and (<= 0 j1_5_1) (and (< j1_5_1 (* M_1 step@@9)) (< (mod j1_5_1 step@@9) N)))) (and (<= 0 j1_5_2) (and (< j1_5_2 (* M_1 step@@9)) (< (mod j1_5_2 step@@9) N)))) (< NoPerm p_1)) (< NoPerm p_1)) (not (= (|Seq#Index_27939| matrix_1 j1_5_1) (|Seq#Index_27939| matrix_1 j1_5_2))))
 :qid |stdinbpl.3628:15|
 :skolemid |253|
))) (=> (forall ((j1_5_1@@0 Int) (j1_5_2@@0 Int) ) (!  (=> (and (and (and (and (not (= j1_5_1@@0 j1_5_2@@0)) (and (<= 0 j1_5_1@@0) (and (< j1_5_1@@0 (* M_1 step@@9)) (< (mod j1_5_1@@0 step@@9) N)))) (and (<= 0 j1_5_2@@0) (and (< j1_5_2@@0 (* M_1 step@@9)) (< (mod j1_5_2@@0 step@@9) N)))) (< NoPerm p_1)) (< NoPerm p_1)) (not (= (|Seq#Index_27939| matrix_1 j1_5_1@@0) (|Seq#Index_27939| matrix_1 j1_5_2@@0))))
 :qid |stdinbpl.3628:15|
 :skolemid |253|
)) (=> (and (forall ((j1_5_1@@1 Int) ) (!  (=> (and (and (<= 0 j1_5_1@@1) (and (< j1_5_1@@1 (* M_1 step@@9)) (< (mod j1_5_1@@1 step@@9) N))) (< NoPerm p_1)) (and (qpRange24 (|Seq#Index_27939| matrix_1 j1_5_1@@1)) (= (invRecv24 (|Seq#Index_27939| matrix_1 j1_5_1@@1)) j1_5_1@@1)))
 :qid |stdinbpl.3634:22|
 :skolemid |254|
 :pattern ( (|Seq#Index_27939| matrix_1 j1_5_1@@1))
 :pattern ( (|Seq#Index_27939| matrix_1 j1_5_1@@1))
)) (forall ((o_9@@6 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv24 o_9@@6)) (and (< (invRecv24 o_9@@6) (* M_1 step@@9)) (< (mod (invRecv24 o_9@@6) step@@9) N))) (< NoPerm p_1)) (qpRange24 o_9@@6)) (= (|Seq#Index_27939| matrix_1 (invRecv24 o_9@@6)) o_9@@6))
 :qid |stdinbpl.3638:22|
 :skolemid |255|
 :pattern ( (invRecv24 o_9@@6))
))) (and (=> (= (ControlFlow 0 155) (- 0 156)) (forall ((j1_5_1@@2 Int) ) (!  (=> (and (<= 0 j1_5_1@@2) (and (< j1_5_1@@2 (* M_1 step@@9)) (< (mod j1_5_1@@2 step@@9) N))) (>= p_1 NoPerm))
 :qid |stdinbpl.3644:15|
 :skolemid |256|
 :pattern ( (|Seq#Index_27939| matrix_1 j1_5_1@@2))
 :pattern ( (|Seq#Index_27939| matrix_1 j1_5_1@@2))
))) (=> (forall ((j1_5_1@@3 Int) ) (!  (=> (and (<= 0 j1_5_1@@3) (and (< j1_5_1@@3 (* M_1 step@@9)) (< (mod j1_5_1@@3 step@@9) N))) (>= p_1 NoPerm))
 :qid |stdinbpl.3644:15|
 :skolemid |256|
 :pattern ( (|Seq#Index_27939| matrix_1 j1_5_1@@3))
 :pattern ( (|Seq#Index_27939| matrix_1 j1_5_1@@3))
)) (=> (and (forall ((j1_5_1@@4 Int) ) (!  (=> (and (and (<= 0 j1_5_1@@4) (and (< j1_5_1@@4 (* M_1 step@@9)) (< (mod j1_5_1@@4 step@@9) N))) (> p_1 NoPerm)) (not (= (|Seq#Index_27939| matrix_1 j1_5_1@@4) null)))
 :qid |stdinbpl.3650:22|
 :skolemid |257|
 :pattern ( (|Seq#Index_27939| matrix_1 j1_5_1@@4))
 :pattern ( (|Seq#Index_27939| matrix_1 j1_5_1@@4))
)) (forall ((o_9@@7 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv24 o_9@@7)) (and (< (invRecv24 o_9@@7) (* M_1 step@@9)) (< (mod (invRecv24 o_9@@7) step@@9) N))) (< NoPerm p_1)) (qpRange24 o_9@@7)) (and (=> (< NoPerm p_1) (= (|Seq#Index_27939| matrix_1 (invRecv24 o_9@@7)) o_9@@7)) (= (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@10) o_9@@7 Ref__Integer_value) (+ (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| ZeroMask) o_9@@7 Ref__Integer_value) p_1)))) (=> (not (and (and (and (<= 0 (invRecv24 o_9@@7)) (and (< (invRecv24 o_9@@7) (* M_1 step@@9)) (< (mod (invRecv24 o_9@@7) step@@9) N))) (< NoPerm p_1)) (qpRange24 o_9@@7))) (= (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@10) o_9@@7 Ref__Integer_value) (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| ZeroMask) o_9@@7 Ref__Integer_value))))
 :qid |stdinbpl.3656:22|
 :skolemid |258|
 :pattern ( (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@10) o_9@@7 Ref__Integer_value))
))) (=> (and (and (and (and (and (and (forall ((o_9@@8 T@Ref) (f_5@@4 T@Field_39637_53) ) (!  (=> true (= (select (|PolymorphicMapType_39598_27882_53#PolymorphicMapType_39598| ZeroMask) o_9@@8 f_5@@4) (select (|PolymorphicMapType_39598_27882_53#PolymorphicMapType_39598| QPMask@10) o_9@@8 f_5@@4)))
 :qid |stdinbpl.3660:29|
 :skolemid |259|
 :pattern ( (select (|PolymorphicMapType_39598_27882_53#PolymorphicMapType_39598| ZeroMask) o_9@@8 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_39598_27882_53#PolymorphicMapType_39598| QPMask@10) o_9@@8 f_5@@4))
)) (forall ((o_9@@9 T@Ref) (f_5@@5 T@Field_39650_39651) ) (!  (=> true (= (select (|PolymorphicMapType_39598_27882_39651#PolymorphicMapType_39598| ZeroMask) o_9@@9 f_5@@5) (select (|PolymorphicMapType_39598_27882_39651#PolymorphicMapType_39598| QPMask@10) o_9@@9 f_5@@5)))
 :qid |stdinbpl.3660:29|
 :skolemid |259|
 :pattern ( (select (|PolymorphicMapType_39598_27882_39651#PolymorphicMapType_39598| ZeroMask) o_9@@9 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_39598_27882_39651#PolymorphicMapType_39598| QPMask@10) o_9@@9 f_5@@5))
))) (forall ((o_9@@10 T@Ref) (f_5@@6 T@Field_45723_3805) ) (!  (=> (not (= f_5@@6 Ref__Integer_value)) (= (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| ZeroMask) o_9@@10 f_5@@6) (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@10) o_9@@10 f_5@@6)))
 :qid |stdinbpl.3660:29|
 :skolemid |259|
 :pattern ( (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| ZeroMask) o_9@@10 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@10) o_9@@10 f_5@@6))
))) (forall ((o_9@@11 T@Ref) (f_5@@7 T@Field_27882_111815) ) (!  (=> true (= (select (|PolymorphicMapType_39598_27882_111815#PolymorphicMapType_39598| ZeroMask) o_9@@11 f_5@@7) (select (|PolymorphicMapType_39598_27882_111815#PolymorphicMapType_39598| QPMask@10) o_9@@11 f_5@@7)))
 :qid |stdinbpl.3660:29|
 :skolemid |259|
 :pattern ( (select (|PolymorphicMapType_39598_27882_111815#PolymorphicMapType_39598| ZeroMask) o_9@@11 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_39598_27882_111815#PolymorphicMapType_39598| QPMask@10) o_9@@11 f_5@@7))
))) (forall ((o_9@@12 T@Ref) (f_5@@8 T@Field_27882_111948) ) (!  (=> true (= (select (|PolymorphicMapType_39598_27882_116070#PolymorphicMapType_39598| ZeroMask) o_9@@12 f_5@@8) (select (|PolymorphicMapType_39598_27882_116070#PolymorphicMapType_39598| QPMask@10) o_9@@12 f_5@@8)))
 :qid |stdinbpl.3660:29|
 :skolemid |259|
 :pattern ( (select (|PolymorphicMapType_39598_27882_116070#PolymorphicMapType_39598| ZeroMask) o_9@@12 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_39598_27882_116070#PolymorphicMapType_39598| QPMask@10) o_9@@12 f_5@@8))
))) (state PostHeap@0 QPMask@10)) (and (state PostHeap@0 QPMask@10) (state PostHeap@0 QPMask@10))) (and (and (=> (= (ControlFlow 0 155) 154) anon79_Else_correct) (=> (= (ControlFlow 0 155) 130) anon80_Then_correct)) (=> (= (ControlFlow 0 155) 107) anon80_Else_correct)))))))))))
(let ((anon27_correct true))
(let ((anon78_Else_correct  (=> (and (not (and (<= 0 j1_16) (and (< j1_16 (* M_1 step@@9)) (< (mod j1_16 step@@9) N)))) (= (ControlFlow 0 100) 96)) anon27_correct)))
(let ((anon78_Then_correct  (=> (and (<= 0 j1_16) (and (< j1_16 (* M_1 step@@9)) (< (mod j1_16 step@@9) N))) (and (=> (= (ControlFlow 0 97) (- 0 99)) (>= j1_16 0)) (=> (>= j1_16 0) (and (=> (= (ControlFlow 0 97) (- 0 98)) (< j1_16 (|Seq#Length_27962| matrix_1))) (=> (< j1_16 (|Seq#Length_27962| matrix_1)) (=> (= (ControlFlow 0 97) 96) anon27_correct))))))))
(let ((anon77_Else_correct  (=> (<= (* M_1 step@@9) j1_16) (and (=> (= (ControlFlow 0 104) 97) anon78_Then_correct) (=> (= (ControlFlow 0 104) 100) anon78_Else_correct)))))
(let ((anon77_Then_correct  (=> (< j1_16 (* M_1 step@@9)) (and (=> (= (ControlFlow 0 102) (- 0 103)) (not (= step@@9 0))) (=> (not (= step@@9 0)) (and (=> (= (ControlFlow 0 102) 97) anon78_Then_correct) (=> (= (ControlFlow 0 102) 100) anon78_Else_correct)))))))
(let ((anon76_Then_correct  (=> (<= 0 j1_16) (and (=> (= (ControlFlow 0 105) 102) anon77_Then_correct) (=> (= (ControlFlow 0 105) 104) anon77_Else_correct)))))
(let ((anon76_Else_correct  (=> (< j1_16 0) (and (=> (= (ControlFlow 0 101) 97) anon78_Then_correct) (=> (= (ControlFlow 0 101) 100) anon78_Else_correct)))))
(let ((anon74_Then_correct  (=> (state PostHeap@0 ZeroMask) (=> (and (and (and (not (= p_1 NoPerm)) (> M_1 0)) (and (> N 0) (>= step@@9 N))) (and (and (> P_2 0) (state PostHeap@0 ZeroMask)) (and (<= N step@@9) (state PostHeap@0 ZeroMask)))) (and (and (=> (= (ControlFlow 0 158) 155) anon75_Else_correct) (=> (= (ControlFlow 0 158) 105) anon76_Then_correct)) (=> (= (ControlFlow 0 158) 101) anon76_Else_correct))))))
(let ((anon61_correct true))
(let ((anon95_Else_correct  (=> (and (not (and (<= 0 k_2_2) (< k_2_2 P_2))) (= (ControlFlow 0 59) 56)) anon61_correct)))
(let ((anon95_Then_correct  (=> (and (<= 0 k_2_2) (< k_2_2 P_2)) (and (=> (= (ControlFlow 0 57) (- 0 58)) (= (select (|PolymorphicMapType_39577_27882_3805#PolymorphicMapType_39577| ExhaleHeap@1) (|Seq#Index_27939| hist k_2_2) Ref__Integer_value) (count_square ExhaleHeap@1 0 0 N step@@9 0 (* M_1 step@@9) matrix_1 k_2_2))) (=> (= (select (|PolymorphicMapType_39577_27882_3805#PolymorphicMapType_39577| ExhaleHeap@1) (|Seq#Index_27939| hist k_2_2) Ref__Integer_value) (count_square ExhaleHeap@1 0 0 N step@@9 0 (* M_1 step@@9) matrix_1 k_2_2)) (=> (= (ControlFlow 0 57) 56) anon61_correct))))))
(let ((anon94_Else_correct true))
(let ((anon92_Else_correct  (=> (forall ((i1_9_1 Int) (j1_10_1 Int) ) (!  (=> (and (<= 0 i1_9_1) (and (< i1_9_1 M_1) (and (<= 0 j1_10_1) (< j1_10_1 N)))) (= (select (|PolymorphicMapType_39577_27882_3805#PolymorphicMapType_39577| ExhaleHeap@1) (|Seq#Index_27939| matrix_1 (Ref__multidim_index_2 ExhaleHeap@1 M_1 step@@9 i1_9_1 j1_10_1)) Ref__Integer_value) (select (|PolymorphicMapType_39577_27882_3805#PolymorphicMapType_39577| Heap@@49) (|Seq#Index_27939| matrix_1 (Ref__multidim_index_2 Heap@@49 M_1 step@@9 i1_9_1 j1_10_1)) Ref__Integer_value)))
 :qid |stdinbpl.4257:20|
 :skolemid |325|
 :pattern ( (|Ref__multidim_index_2#frame| EmptyFrame M_1 step@@9 i1_9_1 j1_10_1))
 :pattern ( (|Seq#Index_27939| matrix_1 (|Ref__multidim_index_2#frame| EmptyFrame M_1 step@@9 i1_9_1 j1_10_1)))
)) (and (=> (= (ControlFlow 0 60) (- 0 62)) (forall ((i1_10_1 Int) (i1_10_2 Int) ) (!  (=> (and (and (and (and (not (= i1_10_1 i1_10_2)) (and (<= 0 i1_10_1) (< i1_10_1 P_2))) (and (<= 0 i1_10_2) (< i1_10_2 P_2))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27939| hist i1_10_1) (|Seq#Index_27939| hist i1_10_2))))
 :qid |stdinbpl.4268:17|
 :skolemid |326|
 :pattern ( (neverTriggered28 i1_10_1) (neverTriggered28 i1_10_2))
))) (=> (forall ((i1_10_1@@0 Int) (i1_10_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i1_10_1@@0 i1_10_2@@0)) (and (<= 0 i1_10_1@@0) (< i1_10_1@@0 P_2))) (and (<= 0 i1_10_2@@0) (< i1_10_2@@0 P_2))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27939| hist i1_10_1@@0) (|Seq#Index_27939| hist i1_10_2@@0))))
 :qid |stdinbpl.4268:17|
 :skolemid |326|
 :pattern ( (neverTriggered28 i1_10_1@@0) (neverTriggered28 i1_10_2@@0))
)) (and (=> (= (ControlFlow 0 60) (- 0 61)) (forall ((i1_10_1@@1 Int) ) (!  (=> (and (<= 0 i1_10_1@@1) (< i1_10_1@@1 P_2)) (>= (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@8) (|Seq#Index_27939| hist i1_10_1@@1) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.4275:17|
 :skolemid |327|
 :pattern ( (|Seq#Index_27939| hist i1_10_1@@1))
 :pattern ( (|Seq#Index_27939| hist i1_10_1@@1))
))) (=> (forall ((i1_10_1@@2 Int) ) (!  (=> (and (<= 0 i1_10_1@@2) (< i1_10_1@@2 P_2)) (>= (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@8) (|Seq#Index_27939| hist i1_10_1@@2) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.4275:17|
 :skolemid |327|
 :pattern ( (|Seq#Index_27939| hist i1_10_1@@2))
 :pattern ( (|Seq#Index_27939| hist i1_10_1@@2))
)) (=> (forall ((i1_10_1@@3 Int) ) (!  (=> (and (and (<= 0 i1_10_1@@3) (< i1_10_1@@3 P_2)) (< NoPerm FullPerm)) (and (qpRange28 (|Seq#Index_27939| hist i1_10_1@@3)) (= (invRecv28 (|Seq#Index_27939| hist i1_10_1@@3)) i1_10_1@@3)))
 :qid |stdinbpl.4281:22|
 :skolemid |328|
 :pattern ( (|Seq#Index_27939| hist i1_10_1@@3))
 :pattern ( (|Seq#Index_27939| hist i1_10_1@@3))
)) (=> (and (forall ((o_9@@13 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv28 o_9@@13)) (< (invRecv28 o_9@@13) P_2)) (and (< NoPerm FullPerm) (qpRange28 o_9@@13))) (= (|Seq#Index_27939| hist (invRecv28 o_9@@13)) o_9@@13))
 :qid |stdinbpl.4285:22|
 :skolemid |329|
 :pattern ( (invRecv28 o_9@@13))
)) (forall ((o_9@@14 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv28 o_9@@14)) (< (invRecv28 o_9@@14) P_2)) (and (< NoPerm FullPerm) (qpRange28 o_9@@14))) (and (= (|Seq#Index_27939| hist (invRecv28 o_9@@14)) o_9@@14) (= (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@9) o_9@@14 Ref__Integer_value) (- (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@8) o_9@@14 Ref__Integer_value) FullPerm)))) (=> (not (and (and (<= 0 (invRecv28 o_9@@14)) (< (invRecv28 o_9@@14) P_2)) (and (< NoPerm FullPerm) (qpRange28 o_9@@14)))) (= (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@9) o_9@@14 Ref__Integer_value) (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@8) o_9@@14 Ref__Integer_value))))
 :qid |stdinbpl.4291:22|
 :skolemid |330|
 :pattern ( (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@9) o_9@@14 Ref__Integer_value))
))) (=> (and (and (and (and (forall ((o_9@@15 T@Ref) (f_5@@9 T@Field_39637_53) ) (!  (=> true (= (select (|PolymorphicMapType_39598_27882_53#PolymorphicMapType_39598| QPMask@8) o_9@@15 f_5@@9) (select (|PolymorphicMapType_39598_27882_53#PolymorphicMapType_39598| QPMask@9) o_9@@15 f_5@@9)))
 :qid |stdinbpl.4297:29|
 :skolemid |331|
 :pattern ( (select (|PolymorphicMapType_39598_27882_53#PolymorphicMapType_39598| QPMask@9) o_9@@15 f_5@@9))
)) (forall ((o_9@@16 T@Ref) (f_5@@10 T@Field_39650_39651) ) (!  (=> true (= (select (|PolymorphicMapType_39598_27882_39651#PolymorphicMapType_39598| QPMask@8) o_9@@16 f_5@@10) (select (|PolymorphicMapType_39598_27882_39651#PolymorphicMapType_39598| QPMask@9) o_9@@16 f_5@@10)))
 :qid |stdinbpl.4297:29|
 :skolemid |331|
 :pattern ( (select (|PolymorphicMapType_39598_27882_39651#PolymorphicMapType_39598| QPMask@9) o_9@@16 f_5@@10))
))) (forall ((o_9@@17 T@Ref) (f_5@@11 T@Field_45723_3805) ) (!  (=> (not (= f_5@@11 Ref__Integer_value)) (= (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@8) o_9@@17 f_5@@11) (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@9) o_9@@17 f_5@@11)))
 :qid |stdinbpl.4297:29|
 :skolemid |331|
 :pattern ( (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@9) o_9@@17 f_5@@11))
))) (forall ((o_9@@18 T@Ref) (f_5@@12 T@Field_27882_111815) ) (!  (=> true (= (select (|PolymorphicMapType_39598_27882_111815#PolymorphicMapType_39598| QPMask@8) o_9@@18 f_5@@12) (select (|PolymorphicMapType_39598_27882_111815#PolymorphicMapType_39598| QPMask@9) o_9@@18 f_5@@12)))
 :qid |stdinbpl.4297:29|
 :skolemid |331|
 :pattern ( (select (|PolymorphicMapType_39598_27882_111815#PolymorphicMapType_39598| QPMask@9) o_9@@18 f_5@@12))
))) (forall ((o_9@@19 T@Ref) (f_5@@13 T@Field_27882_111948) ) (!  (=> true (= (select (|PolymorphicMapType_39598_27882_116070#PolymorphicMapType_39598| QPMask@8) o_9@@19 f_5@@13) (select (|PolymorphicMapType_39598_27882_116070#PolymorphicMapType_39598| QPMask@9) o_9@@19 f_5@@13)))
 :qid |stdinbpl.4297:29|
 :skolemid |331|
 :pattern ( (select (|PolymorphicMapType_39598_27882_116070#PolymorphicMapType_39598| QPMask@9) o_9@@19 f_5@@13))
))) (and (and (=> (= (ControlFlow 0 60) 55) anon94_Else_correct) (=> (= (ControlFlow 0 60) 57) anon95_Then_correct)) (=> (= (ControlFlow 0 60) 59) anon95_Else_correct))))))))))))
(let ((anon57_correct true))
(let ((anon93_Else_correct  (=> (and (not (and (<= 0 i1_8_1) (and (< i1_8_1 M_1) (and (<= 0 j1_9) (< j1_9 N))))) (= (ControlFlow 0 54) 51)) anon57_correct)))
(let ((anon93_Then_correct  (=> (and (<= 0 i1_8_1) (and (< i1_8_1 M_1) (and (<= 0 j1_9) (< j1_9 N)))) (and (=> (= (ControlFlow 0 52) (- 0 53)) (= (select (|PolymorphicMapType_39577_27882_3805#PolymorphicMapType_39577| ExhaleHeap@1) (|Seq#Index_27939| matrix_1 (Ref__multidim_index_2 ExhaleHeap@1 M_1 step@@9 i1_8_1 j1_9)) Ref__Integer_value) (select (|PolymorphicMapType_39577_27882_3805#PolymorphicMapType_39577| Heap@@49) (|Seq#Index_27939| matrix_1 (Ref__multidim_index_2 Heap@@49 M_1 step@@9 i1_8_1 j1_9)) Ref__Integer_value))) (=> (= (select (|PolymorphicMapType_39577_27882_3805#PolymorphicMapType_39577| ExhaleHeap@1) (|Seq#Index_27939| matrix_1 (Ref__multidim_index_2 ExhaleHeap@1 M_1 step@@9 i1_8_1 j1_9)) Ref__Integer_value) (select (|PolymorphicMapType_39577_27882_3805#PolymorphicMapType_39577| Heap@@49) (|Seq#Index_27939| matrix_1 (Ref__multidim_index_2 Heap@@49 M_1 step@@9 i1_8_1 j1_9)) Ref__Integer_value)) (=> (= (ControlFlow 0 52) 51) anon57_correct))))))
(let ((anon90_Else_correct  (=> (and (and (and (forall ((i_3_1 Int) (j_4_1_1 Int) ) (!  (=> (and (<= 0 i_3_1) (and (< i_3_1 M_1) (and (<= 0 j_4_1_1) (< j_4_1_1 N)))) (< (select (|PolymorphicMapType_39577_27882_3805#PolymorphicMapType_39577| ExhaleHeap@0) (|Seq#Index_27939| matrix_1 (Ref__multidim_index_2 ExhaleHeap@0 M_1 step@@9 i_3_1 j_4_1_1)) Ref__Integer_value) P_2))
 :qid |stdinbpl.4087:22|
 :skolemid |302|
 :pattern ( (|Seq#Index_27939| matrix_1 (|Ref__multidim_index_2#frame| EmptyFrame M_1 step@@9 i_3_1 j_4_1_1)))
)) (IdenticalOnKnownLocations ExhaleHeap@0 ExhaleHeap@1 QPMask@5)) (and (not (= p_1 NoPerm)) (> M_1 0))) (and (and (> N 0) (>= step@@9 N)) (and (> P_2 0) (<= N step@@9)))) (and (=> (= (ControlFlow 0 63) (- 0 75)) (forall ((j_5 Int) (j_5_1 Int) ) (!  (=> (and (and (and (and (not (= j_5 j_5_1)) (and (<= 0 j_5) (and (< j_5 (* M_1 step@@9)) (< (mod j_5 step@@9) N)))) (and (<= 0 j_5_1) (and (< j_5_1 (* M_1 step@@9)) (< (mod j_5_1 step@@9) N)))) (< NoPerm p_1)) (< NoPerm p_1)) (not (= (|Seq#Index_27939| matrix_1 j_5) (|Seq#Index_27939| matrix_1 j_5_1))))
 :qid |stdinbpl.4105:17|
 :skolemid |303|
))) (=> (forall ((j_5@@0 Int) (j_5_1@@0 Int) ) (!  (=> (and (and (and (and (not (= j_5@@0 j_5_1@@0)) (and (<= 0 j_5@@0) (and (< j_5@@0 (* M_1 step@@9)) (< (mod j_5@@0 step@@9) N)))) (and (<= 0 j_5_1@@0) (and (< j_5_1@@0 (* M_1 step@@9)) (< (mod j_5_1@@0 step@@9) N)))) (< NoPerm p_1)) (< NoPerm p_1)) (not (= (|Seq#Index_27939| matrix_1 j_5@@0) (|Seq#Index_27939| matrix_1 j_5_1@@0))))
 :qid |stdinbpl.4105:17|
 :skolemid |303|
)) (=> (and (forall ((j_5@@1 Int) ) (!  (=> (and (and (<= 0 j_5@@1) (and (< j_5@@1 (* M_1 step@@9)) (< (mod j_5@@1 step@@9) N))) (< NoPerm p_1)) (and (qpRange33 (|Seq#Index_27939| matrix_1 j_5@@1)) (= (invRecv33 (|Seq#Index_27939| matrix_1 j_5@@1)) j_5@@1)))
 :qid |stdinbpl.4111:24|
 :skolemid |304|
 :pattern ( (|Seq#Index_27939| matrix_1 j_5@@1))
 :pattern ( (|Seq#Index_27939| matrix_1 j_5@@1))
)) (forall ((o_9@@20 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv33 o_9@@20)) (and (< (invRecv33 o_9@@20) (* M_1 step@@9)) (< (mod (invRecv33 o_9@@20) step@@9) N))) (< NoPerm p_1)) (qpRange33 o_9@@20)) (= (|Seq#Index_27939| matrix_1 (invRecv33 o_9@@20)) o_9@@20))
 :qid |stdinbpl.4115:24|
 :skolemid |305|
 :pattern ( (invRecv33 o_9@@20))
))) (and (=> (= (ControlFlow 0 63) (- 0 74)) (forall ((j_5@@2 Int) ) (!  (=> (and (<= 0 j_5@@2) (and (< j_5@@2 (* M_1 step@@9)) (< (mod j_5@@2 step@@9) N))) (>= p_1 NoPerm))
 :qid |stdinbpl.4121:17|
 :skolemid |306|
 :pattern ( (|Seq#Index_27939| matrix_1 j_5@@2))
 :pattern ( (|Seq#Index_27939| matrix_1 j_5@@2))
))) (=> (forall ((j_5@@3 Int) ) (!  (=> (and (<= 0 j_5@@3) (and (< j_5@@3 (* M_1 step@@9)) (< (mod j_5@@3 step@@9) N))) (>= p_1 NoPerm))
 :qid |stdinbpl.4121:17|
 :skolemid |306|
 :pattern ( (|Seq#Index_27939| matrix_1 j_5@@3))
 :pattern ( (|Seq#Index_27939| matrix_1 j_5@@3))
)) (=> (and (forall ((j_5@@4 Int) ) (!  (=> (and (and (<= 0 j_5@@4) (and (< j_5@@4 (* M_1 step@@9)) (< (mod j_5@@4 step@@9) N))) (> p_1 NoPerm)) (not (= (|Seq#Index_27939| matrix_1 j_5@@4) null)))
 :qid |stdinbpl.4127:24|
 :skolemid |307|
 :pattern ( (|Seq#Index_27939| matrix_1 j_5@@4))
 :pattern ( (|Seq#Index_27939| matrix_1 j_5@@4))
)) (forall ((o_9@@21 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv33 o_9@@21)) (and (< (invRecv33 o_9@@21) (* M_1 step@@9)) (< (mod (invRecv33 o_9@@21) step@@9) N))) (< NoPerm p_1)) (qpRange33 o_9@@21)) (and (=> (< NoPerm p_1) (= (|Seq#Index_27939| matrix_1 (invRecv33 o_9@@21)) o_9@@21)) (= (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@6) o_9@@21 Ref__Integer_value) (+ (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@5) o_9@@21 Ref__Integer_value) p_1)))) (=> (not (and (and (and (<= 0 (invRecv33 o_9@@21)) (and (< (invRecv33 o_9@@21) (* M_1 step@@9)) (< (mod (invRecv33 o_9@@21) step@@9) N))) (< NoPerm p_1)) (qpRange33 o_9@@21))) (= (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@6) o_9@@21 Ref__Integer_value) (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@5) o_9@@21 Ref__Integer_value))))
 :qid |stdinbpl.4133:24|
 :skolemid |308|
 :pattern ( (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@6) o_9@@21 Ref__Integer_value))
))) (=> (and (and (and (and (and (and (forall ((o_9@@22 T@Ref) (f_5@@14 T@Field_39637_53) ) (!  (=> true (= (select (|PolymorphicMapType_39598_27882_53#PolymorphicMapType_39598| QPMask@5) o_9@@22 f_5@@14) (select (|PolymorphicMapType_39598_27882_53#PolymorphicMapType_39598| QPMask@6) o_9@@22 f_5@@14)))
 :qid |stdinbpl.4137:31|
 :skolemid |309|
 :pattern ( (select (|PolymorphicMapType_39598_27882_53#PolymorphicMapType_39598| QPMask@5) o_9@@22 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_39598_27882_53#PolymorphicMapType_39598| QPMask@6) o_9@@22 f_5@@14))
)) (forall ((o_9@@23 T@Ref) (f_5@@15 T@Field_39650_39651) ) (!  (=> true (= (select (|PolymorphicMapType_39598_27882_39651#PolymorphicMapType_39598| QPMask@5) o_9@@23 f_5@@15) (select (|PolymorphicMapType_39598_27882_39651#PolymorphicMapType_39598| QPMask@6) o_9@@23 f_5@@15)))
 :qid |stdinbpl.4137:31|
 :skolemid |309|
 :pattern ( (select (|PolymorphicMapType_39598_27882_39651#PolymorphicMapType_39598| QPMask@5) o_9@@23 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_39598_27882_39651#PolymorphicMapType_39598| QPMask@6) o_9@@23 f_5@@15))
))) (forall ((o_9@@24 T@Ref) (f_5@@16 T@Field_45723_3805) ) (!  (=> (not (= f_5@@16 Ref__Integer_value)) (= (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@5) o_9@@24 f_5@@16) (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@6) o_9@@24 f_5@@16)))
 :qid |stdinbpl.4137:31|
 :skolemid |309|
 :pattern ( (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@5) o_9@@24 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@6) o_9@@24 f_5@@16))
))) (forall ((o_9@@25 T@Ref) (f_5@@17 T@Field_27882_111815) ) (!  (=> true (= (select (|PolymorphicMapType_39598_27882_111815#PolymorphicMapType_39598| QPMask@5) o_9@@25 f_5@@17) (select (|PolymorphicMapType_39598_27882_111815#PolymorphicMapType_39598| QPMask@6) o_9@@25 f_5@@17)))
 :qid |stdinbpl.4137:31|
 :skolemid |309|
 :pattern ( (select (|PolymorphicMapType_39598_27882_111815#PolymorphicMapType_39598| QPMask@5) o_9@@25 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_39598_27882_111815#PolymorphicMapType_39598| QPMask@6) o_9@@25 f_5@@17))
))) (forall ((o_9@@26 T@Ref) (f_5@@18 T@Field_27882_111948) ) (!  (=> true (= (select (|PolymorphicMapType_39598_27882_116070#PolymorphicMapType_39598| QPMask@5) o_9@@26 f_5@@18) (select (|PolymorphicMapType_39598_27882_116070#PolymorphicMapType_39598| QPMask@6) o_9@@26 f_5@@18)))
 :qid |stdinbpl.4137:31|
 :skolemid |309|
 :pattern ( (select (|PolymorphicMapType_39598_27882_116070#PolymorphicMapType_39598| QPMask@5) o_9@@26 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_39598_27882_116070#PolymorphicMapType_39598| QPMask@6) o_9@@26 f_5@@18))
))) (state ExhaleHeap@1 QPMask@6)) (and (state ExhaleHeap@1 QPMask@6) (forall ((i_4_1 Int) (j_6_2 Int) ) (!  (=> (and (<= 0 i_4_1) (and (< i_4_1 M_1) (and (<= 0 j_6_2) (< j_6_2 N)))) (= (select (|PolymorphicMapType_39577_27882_3805#PolymorphicMapType_39577| ExhaleHeap@1) (|Seq#Index_27939| matrix_1 (Ref__multidim_index_2 ExhaleHeap@1 M_1 step@@9 i_4_1 j_6_2)) Ref__Integer_value) (select (|PolymorphicMapType_39577_27882_3805#PolymorphicMapType_39577| ExhaleHeap@0) (|Seq#Index_27939| matrix_1 (Ref__multidim_index_2 ExhaleHeap@0 M_1 step@@9 i_4_1 j_6_2)) Ref__Integer_value)))
 :qid |stdinbpl.4144:22|
 :skolemid |310|
 :pattern ( (|Ref__multidim_index_2#frame| EmptyFrame M_1 step@@9 i_4_1 j_6_2))
 :pattern ( (|Seq#Index_27939| matrix_1 (|Ref__multidim_index_2#frame| EmptyFrame M_1 step@@9 i_4_1 j_6_2)))
)))) (and (=> (= (ControlFlow 0 63) (- 0 73)) (forall ((k_8 Int) (k_8_1 Int) ) (!  (=> (and (and (and (and (not (= k_8 k_8_1)) (and (<= 0 k_8) (< k_8 P_2))) (and (<= 0 k_8_1) (< k_8_1 P_2))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27939| hist k_8) (|Seq#Index_27939| hist k_8_1))))
 :qid |stdinbpl.4150:17|
 :skolemid |311|
))) (=> (forall ((k_8@@0 Int) (k_8_1@@0 Int) ) (!  (=> (and (and (and (and (not (= k_8@@0 k_8_1@@0)) (and (<= 0 k_8@@0) (< k_8@@0 P_2))) (and (<= 0 k_8_1@@0) (< k_8_1@@0 P_2))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27939| hist k_8@@0) (|Seq#Index_27939| hist k_8_1@@0))))
 :qid |stdinbpl.4150:17|
 :skolemid |311|
)) (=> (and (and (forall ((k_8@@1 Int) ) (!  (=> (and (and (<= 0 k_8@@1) (< k_8@@1 P_2)) (< NoPerm FullPerm)) (and (qpRange34 (|Seq#Index_27939| hist k_8@@1)) (= (invRecv34 (|Seq#Index_27939| hist k_8@@1)) k_8@@1)))
 :qid |stdinbpl.4156:24|
 :skolemid |312|
 :pattern ( (|Seq#Index_27939| hist k_8@@1))
 :pattern ( (|Seq#Index_27939| hist k_8@@1))
)) (forall ((o_9@@27 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv34 o_9@@27)) (< (invRecv34 o_9@@27) P_2)) (< NoPerm FullPerm)) (qpRange34 o_9@@27)) (= (|Seq#Index_27939| hist (invRecv34 o_9@@27)) o_9@@27))
 :qid |stdinbpl.4160:24|
 :skolemid |313|
 :pattern ( (invRecv34 o_9@@27))
))) (and (forall ((k_8@@2 Int) ) (!  (=> (and (<= 0 k_8@@2) (< k_8@@2 P_2)) (not (= (|Seq#Index_27939| hist k_8@@2) null)))
 :qid |stdinbpl.4166:24|
 :skolemid |314|
 :pattern ( (|Seq#Index_27939| hist k_8@@2))
 :pattern ( (|Seq#Index_27939| hist k_8@@2))
)) (forall ((o_9@@28 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv34 o_9@@28)) (< (invRecv34 o_9@@28) P_2)) (< NoPerm FullPerm)) (qpRange34 o_9@@28)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_27939| hist (invRecv34 o_9@@28)) o_9@@28)) (= (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@7) o_9@@28 Ref__Integer_value) (+ (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@6) o_9@@28 Ref__Integer_value) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv34 o_9@@28)) (< (invRecv34 o_9@@28) P_2)) (< NoPerm FullPerm)) (qpRange34 o_9@@28))) (= (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@7) o_9@@28 Ref__Integer_value) (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@6) o_9@@28 Ref__Integer_value))))
 :qid |stdinbpl.4172:24|
 :skolemid |315|
 :pattern ( (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@7) o_9@@28 Ref__Integer_value))
)))) (=> (and (and (and (and (and (and (forall ((o_9@@29 T@Ref) (f_5@@19 T@Field_39637_53) ) (!  (=> true (= (select (|PolymorphicMapType_39598_27882_53#PolymorphicMapType_39598| QPMask@6) o_9@@29 f_5@@19) (select (|PolymorphicMapType_39598_27882_53#PolymorphicMapType_39598| QPMask@7) o_9@@29 f_5@@19)))
 :qid |stdinbpl.4176:31|
 :skolemid |316|
 :pattern ( (select (|PolymorphicMapType_39598_27882_53#PolymorphicMapType_39598| QPMask@6) o_9@@29 f_5@@19))
 :pattern ( (select (|PolymorphicMapType_39598_27882_53#PolymorphicMapType_39598| QPMask@7) o_9@@29 f_5@@19))
)) (forall ((o_9@@30 T@Ref) (f_5@@20 T@Field_39650_39651) ) (!  (=> true (= (select (|PolymorphicMapType_39598_27882_39651#PolymorphicMapType_39598| QPMask@6) o_9@@30 f_5@@20) (select (|PolymorphicMapType_39598_27882_39651#PolymorphicMapType_39598| QPMask@7) o_9@@30 f_5@@20)))
 :qid |stdinbpl.4176:31|
 :skolemid |316|
 :pattern ( (select (|PolymorphicMapType_39598_27882_39651#PolymorphicMapType_39598| QPMask@6) o_9@@30 f_5@@20))
 :pattern ( (select (|PolymorphicMapType_39598_27882_39651#PolymorphicMapType_39598| QPMask@7) o_9@@30 f_5@@20))
))) (forall ((o_9@@31 T@Ref) (f_5@@21 T@Field_45723_3805) ) (!  (=> (not (= f_5@@21 Ref__Integer_value)) (= (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@6) o_9@@31 f_5@@21) (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@7) o_9@@31 f_5@@21)))
 :qid |stdinbpl.4176:31|
 :skolemid |316|
 :pattern ( (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@6) o_9@@31 f_5@@21))
 :pattern ( (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@7) o_9@@31 f_5@@21))
))) (forall ((o_9@@32 T@Ref) (f_5@@22 T@Field_27882_111815) ) (!  (=> true (= (select (|PolymorphicMapType_39598_27882_111815#PolymorphicMapType_39598| QPMask@6) o_9@@32 f_5@@22) (select (|PolymorphicMapType_39598_27882_111815#PolymorphicMapType_39598| QPMask@7) o_9@@32 f_5@@22)))
 :qid |stdinbpl.4176:31|
 :skolemid |316|
 :pattern ( (select (|PolymorphicMapType_39598_27882_111815#PolymorphicMapType_39598| QPMask@6) o_9@@32 f_5@@22))
 :pattern ( (select (|PolymorphicMapType_39598_27882_111815#PolymorphicMapType_39598| QPMask@7) o_9@@32 f_5@@22))
))) (forall ((o_9@@33 T@Ref) (f_5@@23 T@Field_27882_111948) ) (!  (=> true (= (select (|PolymorphicMapType_39598_27882_116070#PolymorphicMapType_39598| QPMask@6) o_9@@33 f_5@@23) (select (|PolymorphicMapType_39598_27882_116070#PolymorphicMapType_39598| QPMask@7) o_9@@33 f_5@@23)))
 :qid |stdinbpl.4176:31|
 :skolemid |316|
 :pattern ( (select (|PolymorphicMapType_39598_27882_116070#PolymorphicMapType_39598| QPMask@6) o_9@@33 f_5@@23))
 :pattern ( (select (|PolymorphicMapType_39598_27882_116070#PolymorphicMapType_39598| QPMask@7) o_9@@33 f_5@@23))
))) (state ExhaleHeap@1 QPMask@7)) (and (and (state ExhaleHeap@1 QPMask@7) (forall ((k_9_1 Int) ) (!  (=> (and (<= 0 k_9_1) (< k_9_1 P_2)) (= (select (|PolymorphicMapType_39577_27882_3805#PolymorphicMapType_39577| ExhaleHeap@1) (|Seq#Index_27939| hist k_9_1) Ref__Integer_value) (+ (select (|PolymorphicMapType_39577_27882_3805#PolymorphicMapType_39577| ExhaleHeap@0) (|Seq#Index_27939| hist k_9_1) Ref__Integer_value) (count_square ExhaleHeap@1 0 0 N step@@9 0 (* M_1 step@@9) matrix_1 k_9_1))))
 :qid |stdinbpl.4183:22|
 :skolemid |317|
 :pattern ( (|Seq#Index_27939| hist k_9_1))
))) (and (state ExhaleHeap@1 QPMask@7) (state ExhaleHeap@1 QPMask@7)))) (and (=> (= (ControlFlow 0 63) (- 0 72)) (not (= p_1 NoPerm))) (=> (not (= p_1 NoPerm)) (and (=> (= (ControlFlow 0 63) (- 0 71)) (> M_1 0)) (=> (> M_1 0) (and (=> (= (ControlFlow 0 63) (- 0 70)) (> N 0)) (=> (> N 0) (and (=> (= (ControlFlow 0 63) (- 0 69)) (>= step@@9 N)) (=> (>= step@@9 N) (and (=> (= (ControlFlow 0 63) (- 0 68)) (> P_2 0)) (=> (> P_2 0) (and (=> (= (ControlFlow 0 63) (- 0 67)) (<= N step@@9)) (=> (<= N step@@9) (and (=> (= (ControlFlow 0 63) (- 0 66)) (forall ((j1_8 Int) ) (!  (=> (and (and (<= 0 j1_8) (and (< j1_8 (* M_1 step@@9)) (< (mod j1_8 step@@9) N))) (dummyFunction_4485 (select (|PolymorphicMapType_39577_27882_3805#PolymorphicMapType_39577| ExhaleHeap@1) (|Seq#Index_27939| matrix_1 j1_8) Ref__Integer_value))) (>= p_1 NoPerm))
 :qid |stdinbpl.4209:17|
 :skolemid |318|
 :pattern ( (|Seq#Index_27939| matrix_1 j1_8))
 :pattern ( (|Seq#Index_27939| matrix_1 j1_8))
))) (=> (forall ((j1_8@@0 Int) ) (!  (=> (and (and (<= 0 j1_8@@0) (and (< j1_8@@0 (* M_1 step@@9)) (< (mod j1_8@@0 step@@9) N))) (dummyFunction_4485 (select (|PolymorphicMapType_39577_27882_3805#PolymorphicMapType_39577| ExhaleHeap@1) (|Seq#Index_27939| matrix_1 j1_8@@0) Ref__Integer_value))) (>= p_1 NoPerm))
 :qid |stdinbpl.4209:17|
 :skolemid |318|
 :pattern ( (|Seq#Index_27939| matrix_1 j1_8@@0))
 :pattern ( (|Seq#Index_27939| matrix_1 j1_8@@0))
)) (and (=> (= (ControlFlow 0 63) (- 0 65)) (forall ((j1_8@@1 Int) (j1_8_1 Int) ) (!  (=> (and (and (and (and (not (= j1_8@@1 j1_8_1)) (and (<= 0 j1_8@@1) (and (< j1_8@@1 (* M_1 step@@9)) (< (mod j1_8@@1 step@@9) N)))) (and (<= 0 j1_8_1) (and (< j1_8_1 (* M_1 step@@9)) (< (mod j1_8_1 step@@9) N)))) (< NoPerm p_1)) (< NoPerm p_1)) (not (= (|Seq#Index_27939| matrix_1 j1_8@@1) (|Seq#Index_27939| matrix_1 j1_8_1))))
 :qid |stdinbpl.4216:17|
 :skolemid |319|
 :pattern ( (neverTriggered27 j1_8@@1) (neverTriggered27 j1_8_1))
))) (=> (forall ((j1_8@@2 Int) (j1_8_1@@0 Int) ) (!  (=> (and (and (and (and (not (= j1_8@@2 j1_8_1@@0)) (and (<= 0 j1_8@@2) (and (< j1_8@@2 (* M_1 step@@9)) (< (mod j1_8@@2 step@@9) N)))) (and (<= 0 j1_8_1@@0) (and (< j1_8_1@@0 (* M_1 step@@9)) (< (mod j1_8_1@@0 step@@9) N)))) (< NoPerm p_1)) (< NoPerm p_1)) (not (= (|Seq#Index_27939| matrix_1 j1_8@@2) (|Seq#Index_27939| matrix_1 j1_8_1@@0))))
 :qid |stdinbpl.4216:17|
 :skolemid |319|
 :pattern ( (neverTriggered27 j1_8@@2) (neverTriggered27 j1_8_1@@0))
)) (and (=> (= (ControlFlow 0 63) (- 0 64)) (forall ((j1_8@@3 Int) ) (!  (=> (and (<= 0 j1_8@@3) (and (< j1_8@@3 (* M_1 step@@9)) (< (mod j1_8@@3 step@@9) N))) (>= (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@7) (|Seq#Index_27939| matrix_1 j1_8@@3) Ref__Integer_value) p_1))
 :qid |stdinbpl.4223:17|
 :skolemid |320|
 :pattern ( (|Seq#Index_27939| matrix_1 j1_8@@3))
 :pattern ( (|Seq#Index_27939| matrix_1 j1_8@@3))
))) (=> (forall ((j1_8@@4 Int) ) (!  (=> (and (<= 0 j1_8@@4) (and (< j1_8@@4 (* M_1 step@@9)) (< (mod j1_8@@4 step@@9) N))) (>= (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@7) (|Seq#Index_27939| matrix_1 j1_8@@4) Ref__Integer_value) p_1))
 :qid |stdinbpl.4223:17|
 :skolemid |320|
 :pattern ( (|Seq#Index_27939| matrix_1 j1_8@@4))
 :pattern ( (|Seq#Index_27939| matrix_1 j1_8@@4))
)) (=> (forall ((j1_8@@5 Int) ) (!  (=> (and (and (<= 0 j1_8@@5) (and (< j1_8@@5 (* M_1 step@@9)) (< (mod j1_8@@5 step@@9) N))) (< NoPerm p_1)) (and (qpRange27 (|Seq#Index_27939| matrix_1 j1_8@@5)) (= (invRecv27 (|Seq#Index_27939| matrix_1 j1_8@@5)) j1_8@@5)))
 :qid |stdinbpl.4229:22|
 :skolemid |321|
 :pattern ( (|Seq#Index_27939| matrix_1 j1_8@@5))
 :pattern ( (|Seq#Index_27939| matrix_1 j1_8@@5))
)) (=> (and (forall ((o_9@@34 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv27 o_9@@34)) (and (< (invRecv27 o_9@@34) (* M_1 step@@9)) (< (mod (invRecv27 o_9@@34) step@@9) N))) (and (< NoPerm p_1) (qpRange27 o_9@@34))) (= (|Seq#Index_27939| matrix_1 (invRecv27 o_9@@34)) o_9@@34))
 :qid |stdinbpl.4233:22|
 :skolemid |322|
 :pattern ( (invRecv27 o_9@@34))
)) (forall ((o_9@@35 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv27 o_9@@35)) (and (< (invRecv27 o_9@@35) (* M_1 step@@9)) (< (mod (invRecv27 o_9@@35) step@@9) N))) (and (< NoPerm p_1) (qpRange27 o_9@@35))) (and (= (|Seq#Index_27939| matrix_1 (invRecv27 o_9@@35)) o_9@@35) (= (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@8) o_9@@35 Ref__Integer_value) (- (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@7) o_9@@35 Ref__Integer_value) p_1)))) (=> (not (and (and (<= 0 (invRecv27 o_9@@35)) (and (< (invRecv27 o_9@@35) (* M_1 step@@9)) (< (mod (invRecv27 o_9@@35) step@@9) N))) (and (< NoPerm p_1) (qpRange27 o_9@@35)))) (= (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@8) o_9@@35 Ref__Integer_value) (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@7) o_9@@35 Ref__Integer_value))))
 :qid |stdinbpl.4239:22|
 :skolemid |323|
 :pattern ( (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@8) o_9@@35 Ref__Integer_value))
))) (=> (and (and (and (and (forall ((o_9@@36 T@Ref) (f_5@@24 T@Field_39637_53) ) (!  (=> true (= (select (|PolymorphicMapType_39598_27882_53#PolymorphicMapType_39598| QPMask@7) o_9@@36 f_5@@24) (select (|PolymorphicMapType_39598_27882_53#PolymorphicMapType_39598| QPMask@8) o_9@@36 f_5@@24)))
 :qid |stdinbpl.4245:29|
 :skolemid |324|
 :pattern ( (select (|PolymorphicMapType_39598_27882_53#PolymorphicMapType_39598| QPMask@8) o_9@@36 f_5@@24))
)) (forall ((o_9@@37 T@Ref) (f_5@@25 T@Field_39650_39651) ) (!  (=> true (= (select (|PolymorphicMapType_39598_27882_39651#PolymorphicMapType_39598| QPMask@7) o_9@@37 f_5@@25) (select (|PolymorphicMapType_39598_27882_39651#PolymorphicMapType_39598| QPMask@8) o_9@@37 f_5@@25)))
 :qid |stdinbpl.4245:29|
 :skolemid |324|
 :pattern ( (select (|PolymorphicMapType_39598_27882_39651#PolymorphicMapType_39598| QPMask@8) o_9@@37 f_5@@25))
))) (forall ((o_9@@38 T@Ref) (f_5@@26 T@Field_45723_3805) ) (!  (=> (not (= f_5@@26 Ref__Integer_value)) (= (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@7) o_9@@38 f_5@@26) (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@8) o_9@@38 f_5@@26)))
 :qid |stdinbpl.4245:29|
 :skolemid |324|
 :pattern ( (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@8) o_9@@38 f_5@@26))
))) (forall ((o_9@@39 T@Ref) (f_5@@27 T@Field_27882_111815) ) (!  (=> true (= (select (|PolymorphicMapType_39598_27882_111815#PolymorphicMapType_39598| QPMask@7) o_9@@39 f_5@@27) (select (|PolymorphicMapType_39598_27882_111815#PolymorphicMapType_39598| QPMask@8) o_9@@39 f_5@@27)))
 :qid |stdinbpl.4245:29|
 :skolemid |324|
 :pattern ( (select (|PolymorphicMapType_39598_27882_111815#PolymorphicMapType_39598| QPMask@8) o_9@@39 f_5@@27))
))) (forall ((o_9@@40 T@Ref) (f_5@@28 T@Field_27882_111948) ) (!  (=> true (= (select (|PolymorphicMapType_39598_27882_116070#PolymorphicMapType_39598| QPMask@7) o_9@@40 f_5@@28) (select (|PolymorphicMapType_39598_27882_116070#PolymorphicMapType_39598| QPMask@8) o_9@@40 f_5@@28)))
 :qid |stdinbpl.4245:29|
 :skolemid |324|
 :pattern ( (select (|PolymorphicMapType_39598_27882_116070#PolymorphicMapType_39598| QPMask@8) o_9@@40 f_5@@28))
))) (and (and (=> (= (ControlFlow 0 63) 60) anon92_Else_correct) (=> (= (ControlFlow 0 63) 52) anon93_Then_correct)) (=> (= (ControlFlow 0 63) 54) anon93_Else_correct)))))))))))))))))))))))))))))))))))))
(let ((anon53_correct true))
(let ((anon91_Else_correct  (=> (and (not (and (<= 0 i_2) (and (< i_2 M_1) (and (<= 0 j_3) (< j_3 N))))) (= (ControlFlow 0 50) 47)) anon53_correct)))
(let ((anon91_Then_correct  (=> (and (<= 0 i_2) (and (< i_2 M_1) (and (<= 0 j_3) (< j_3 N)))) (and (=> (= (ControlFlow 0 48) (- 0 49)) (< (select (|PolymorphicMapType_39577_27882_3805#PolymorphicMapType_39577| ExhaleHeap@0) (|Seq#Index_27939| matrix_1 (Ref__multidim_index_2 ExhaleHeap@0 M_1 step@@9 i_2 j_3)) Ref__Integer_value) P_2)) (=> (< (select (|PolymorphicMapType_39577_27882_3805#PolymorphicMapType_39577| ExhaleHeap@0) (|Seq#Index_27939| matrix_1 (Ref__multidim_index_2 ExhaleHeap@0 M_1 step@@9 i_2 j_3)) Ref__Integer_value) P_2) (=> (= (ControlFlow 0 48) 47) anon53_correct))))))
(let ((anon88_Else_correct  (=> (forall ((i_1_1_1 Int) (j_2_1 Int) ) (!  (=> (and (<= 0 i_1_1_1) (and (< i_1_1_1 M_1) (and (<= 0 j_2_1) (< j_2_1 N)))) (<= 0 (select (|PolymorphicMapType_39577_27882_3805#PolymorphicMapType_39577| ExhaleHeap@0) (|Seq#Index_27939| matrix_1 (Ref__multidim_index_2 ExhaleHeap@0 M_1 step@@9 i_1_1_1 j_2_1)) Ref__Integer_value)))
 :qid |stdinbpl.4076:22|
 :skolemid |301|
 :pattern ( (|Seq#Index_27939| matrix_1 (|Ref__multidim_index_2#frame| EmptyFrame M_1 step@@9 i_1_1_1 j_2_1)))
)) (and (and (=> (= (ControlFlow 0 76) 63) anon90_Else_correct) (=> (= (ControlFlow 0 76) 48) anon91_Then_correct)) (=> (= (ControlFlow 0 76) 50) anon91_Else_correct)))))
(let ((anon49_correct true))
(let ((anon89_Else_correct  (=> (and (not (and (<= 0 i@@39) (and (< i@@39 M_1) (and (<= 0 j_1) (< j_1 N))))) (= (ControlFlow 0 46) 43)) anon49_correct)))
(let ((anon89_Then_correct  (=> (and (<= 0 i@@39) (and (< i@@39 M_1) (and (<= 0 j_1) (< j_1 N)))) (and (=> (= (ControlFlow 0 44) (- 0 45)) (<= 0 (select (|PolymorphicMapType_39577_27882_3805#PolymorphicMapType_39577| ExhaleHeap@0) (|Seq#Index_27939| matrix_1 (Ref__multidim_index_2 ExhaleHeap@0 M_1 step@@9 i@@39 j_1)) Ref__Integer_value))) (=> (<= 0 (select (|PolymorphicMapType_39577_27882_3805#PolymorphicMapType_39577| ExhaleHeap@0) (|Seq#Index_27939| matrix_1 (Ref__multidim_index_2 ExhaleHeap@0 M_1 step@@9 i@@39 j_1)) Ref__Integer_value)) (=> (= (ControlFlow 0 44) 43) anon49_correct))))))
(let ((anon74_Else_correct  (and (=> (= (ControlFlow 0 77) (- 0 95)) (not (= diz null))) (=> (not (= diz null)) (and (=> (= (ControlFlow 0 77) (- 0 94)) (>= current_thread_id 0)) (=> (>= current_thread_id 0) (and (=> (= (ControlFlow 0 77) (- 0 93)) (forall ((k_4_2 Int) (k_4_3 Int) ) (!  (=> (and (and (and (and (not (= k_4_2 k_4_3)) (and (<= 0 k_4_2) (< k_4_2 P_2))) (and (<= 0 k_4_3) (< k_4_3 P_2))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27939| hist k_4_2) (|Seq#Index_27939| hist k_4_3))))
 :qid |stdinbpl.3879:19|
 :skolemid |275|
 :pattern ( (neverTriggered29 k_4_2) (neverTriggered29 k_4_3))
))) (=> (forall ((k_4_2@@0 Int) (k_4_3@@0 Int) ) (!  (=> (and (and (and (and (not (= k_4_2@@0 k_4_3@@0)) (and (<= 0 k_4_2@@0) (< k_4_2@@0 P_2))) (and (<= 0 k_4_3@@0) (< k_4_3@@0 P_2))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27939| hist k_4_2@@0) (|Seq#Index_27939| hist k_4_3@@0))))
 :qid |stdinbpl.3879:19|
 :skolemid |275|
 :pattern ( (neverTriggered29 k_4_2@@0) (neverTriggered29 k_4_3@@0))
)) (and (=> (= (ControlFlow 0 77) (- 0 92)) (forall ((k_4_2@@1 Int) ) (!  (=> (and (<= 0 k_4_2@@1) (< k_4_2@@1 P_2)) (>= (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@1) (|Seq#Index_27939| hist k_4_2@@1) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.3886:19|
 :skolemid |276|
 :pattern ( (|Seq#Index_27939| hist k_4_2@@1))
 :pattern ( (|Seq#Index_27939| hist k_4_2@@1))
))) (=> (forall ((k_4_2@@2 Int) ) (!  (=> (and (<= 0 k_4_2@@2) (< k_4_2@@2 P_2)) (>= (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@1) (|Seq#Index_27939| hist k_4_2@@2) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.3886:19|
 :skolemid |276|
 :pattern ( (|Seq#Index_27939| hist k_4_2@@2))
 :pattern ( (|Seq#Index_27939| hist k_4_2@@2))
)) (=> (forall ((k_4_2@@3 Int) ) (!  (=> (and (and (<= 0 k_4_2@@3) (< k_4_2@@3 P_2)) (< NoPerm FullPerm)) (and (qpRange29 (|Seq#Index_27939| hist k_4_2@@3)) (= (invRecv29 (|Seq#Index_27939| hist k_4_2@@3)) k_4_2@@3)))
 :qid |stdinbpl.3892:24|
 :skolemid |277|
 :pattern ( (|Seq#Index_27939| hist k_4_2@@3))
 :pattern ( (|Seq#Index_27939| hist k_4_2@@3))
)) (=> (and (forall ((o_9@@41 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv29 o_9@@41)) (< (invRecv29 o_9@@41) P_2)) (and (< NoPerm FullPerm) (qpRange29 o_9@@41))) (= (|Seq#Index_27939| hist (invRecv29 o_9@@41)) o_9@@41))
 :qid |stdinbpl.3896:24|
 :skolemid |278|
 :pattern ( (invRecv29 o_9@@41))
)) (forall ((o_9@@42 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv29 o_9@@42)) (< (invRecv29 o_9@@42) P_2)) (and (< NoPerm FullPerm) (qpRange29 o_9@@42))) (and (= (|Seq#Index_27939| hist (invRecv29 o_9@@42)) o_9@@42) (= (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@2) o_9@@42 Ref__Integer_value) (- (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@1) o_9@@42 Ref__Integer_value) FullPerm)))) (=> (not (and (and (<= 0 (invRecv29 o_9@@42)) (< (invRecv29 o_9@@42) P_2)) (and (< NoPerm FullPerm) (qpRange29 o_9@@42)))) (= (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@2) o_9@@42 Ref__Integer_value) (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@1) o_9@@42 Ref__Integer_value))))
 :qid |stdinbpl.3902:24|
 :skolemid |279|
 :pattern ( (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@2) o_9@@42 Ref__Integer_value))
))) (=> (and (and (and (and (and (forall ((o_9@@43 T@Ref) (f_5@@29 T@Field_39637_53) ) (!  (=> true (= (select (|PolymorphicMapType_39598_27882_53#PolymorphicMapType_39598| QPMask@1) o_9@@43 f_5@@29) (select (|PolymorphicMapType_39598_27882_53#PolymorphicMapType_39598| QPMask@2) o_9@@43 f_5@@29)))
 :qid |stdinbpl.3908:31|
 :skolemid |280|
 :pattern ( (select (|PolymorphicMapType_39598_27882_53#PolymorphicMapType_39598| QPMask@2) o_9@@43 f_5@@29))
)) (forall ((o_9@@44 T@Ref) (f_5@@30 T@Field_39650_39651) ) (!  (=> true (= (select (|PolymorphicMapType_39598_27882_39651#PolymorphicMapType_39598| QPMask@1) o_9@@44 f_5@@30) (select (|PolymorphicMapType_39598_27882_39651#PolymorphicMapType_39598| QPMask@2) o_9@@44 f_5@@30)))
 :qid |stdinbpl.3908:31|
 :skolemid |280|
 :pattern ( (select (|PolymorphicMapType_39598_27882_39651#PolymorphicMapType_39598| QPMask@2) o_9@@44 f_5@@30))
))) (forall ((o_9@@45 T@Ref) (f_5@@31 T@Field_45723_3805) ) (!  (=> (not (= f_5@@31 Ref__Integer_value)) (= (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@1) o_9@@45 f_5@@31) (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@2) o_9@@45 f_5@@31)))
 :qid |stdinbpl.3908:31|
 :skolemid |280|
 :pattern ( (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@2) o_9@@45 f_5@@31))
))) (forall ((o_9@@46 T@Ref) (f_5@@32 T@Field_27882_111815) ) (!  (=> true (= (select (|PolymorphicMapType_39598_27882_111815#PolymorphicMapType_39598| QPMask@1) o_9@@46 f_5@@32) (select (|PolymorphicMapType_39598_27882_111815#PolymorphicMapType_39598| QPMask@2) o_9@@46 f_5@@32)))
 :qid |stdinbpl.3908:31|
 :skolemid |280|
 :pattern ( (select (|PolymorphicMapType_39598_27882_111815#PolymorphicMapType_39598| QPMask@2) o_9@@46 f_5@@32))
))) (forall ((o_9@@47 T@Ref) (f_5@@33 T@Field_27882_111948) ) (!  (=> true (= (select (|PolymorphicMapType_39598_27882_116070#PolymorphicMapType_39598| QPMask@1) o_9@@47 f_5@@33) (select (|PolymorphicMapType_39598_27882_116070#PolymorphicMapType_39598| QPMask@2) o_9@@47 f_5@@33)))
 :qid |stdinbpl.3908:31|
 :skolemid |280|
 :pattern ( (select (|PolymorphicMapType_39598_27882_116070#PolymorphicMapType_39598| QPMask@2) o_9@@47 f_5@@33))
))) (IdenticalOnKnownLocations Heap@@49 ExhaleHeap@0 QPMask@2)) (and (=> (= (ControlFlow 0 77) (- 0 91)) (forall ((k_5 Int) (k_5_1 Int) ) (!  (=> (and (and (and (and (not (= k_5 k_5_1)) (and (<= 0 k_5) (< k_5 P_2))) (and (<= 0 k_5_1) (< k_5_1 P_2))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27939| hist k_5) (|Seq#Index_27939| hist k_5_1))))
 :qid |stdinbpl.3921:17|
 :skolemid |281|
))) (=> (forall ((k_5@@0 Int) (k_5_1@@0 Int) ) (!  (=> (and (and (and (and (not (= k_5@@0 k_5_1@@0)) (and (<= 0 k_5@@0) (< k_5@@0 P_2))) (and (<= 0 k_5_1@@0) (< k_5_1@@0 P_2))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27939| hist k_5@@0) (|Seq#Index_27939| hist k_5_1@@0))))
 :qid |stdinbpl.3921:17|
 :skolemid |281|
)) (=> (and (and (forall ((k_5@@1 Int) ) (!  (=> (and (and (<= 0 k_5@@1) (< k_5@@1 P_2)) (< NoPerm FullPerm)) (and (qpRange30 (|Seq#Index_27939| hist k_5@@1)) (= (invRecv30 (|Seq#Index_27939| hist k_5@@1)) k_5@@1)))
 :qid |stdinbpl.3927:24|
 :skolemid |282|
 :pattern ( (|Seq#Index_27939| hist k_5@@1))
 :pattern ( (|Seq#Index_27939| hist k_5@@1))
)) (forall ((o_9@@48 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv30 o_9@@48)) (< (invRecv30 o_9@@48) P_2)) (< NoPerm FullPerm)) (qpRange30 o_9@@48)) (= (|Seq#Index_27939| hist (invRecv30 o_9@@48)) o_9@@48))
 :qid |stdinbpl.3931:24|
 :skolemid |283|
 :pattern ( (invRecv30 o_9@@48))
))) (and (forall ((k_5@@2 Int) ) (!  (=> (and (<= 0 k_5@@2) (< k_5@@2 P_2)) (not (= (|Seq#Index_27939| hist k_5@@2) null)))
 :qid |stdinbpl.3937:24|
 :skolemid |284|
 :pattern ( (|Seq#Index_27939| hist k_5@@2))
 :pattern ( (|Seq#Index_27939| hist k_5@@2))
)) (forall ((o_9@@49 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv30 o_9@@49)) (< (invRecv30 o_9@@49) P_2)) (< NoPerm FullPerm)) (qpRange30 o_9@@49)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_27939| hist (invRecv30 o_9@@49)) o_9@@49)) (= (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@3) o_9@@49 Ref__Integer_value) (+ (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@2) o_9@@49 Ref__Integer_value) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv30 o_9@@49)) (< (invRecv30 o_9@@49) P_2)) (< NoPerm FullPerm)) (qpRange30 o_9@@49))) (= (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@3) o_9@@49 Ref__Integer_value) (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@2) o_9@@49 Ref__Integer_value))))
 :qid |stdinbpl.3943:24|
 :skolemid |285|
 :pattern ( (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@3) o_9@@49 Ref__Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_9@@50 T@Ref) (f_5@@34 T@Field_39637_53) ) (!  (=> true (= (select (|PolymorphicMapType_39598_27882_53#PolymorphicMapType_39598| QPMask@2) o_9@@50 f_5@@34) (select (|PolymorphicMapType_39598_27882_53#PolymorphicMapType_39598| QPMask@3) o_9@@50 f_5@@34)))
 :qid |stdinbpl.3947:31|
 :skolemid |286|
 :pattern ( (select (|PolymorphicMapType_39598_27882_53#PolymorphicMapType_39598| QPMask@2) o_9@@50 f_5@@34))
 :pattern ( (select (|PolymorphicMapType_39598_27882_53#PolymorphicMapType_39598| QPMask@3) o_9@@50 f_5@@34))
)) (forall ((o_9@@51 T@Ref) (f_5@@35 T@Field_39650_39651) ) (!  (=> true (= (select (|PolymorphicMapType_39598_27882_39651#PolymorphicMapType_39598| QPMask@2) o_9@@51 f_5@@35) (select (|PolymorphicMapType_39598_27882_39651#PolymorphicMapType_39598| QPMask@3) o_9@@51 f_5@@35)))
 :qid |stdinbpl.3947:31|
 :skolemid |286|
 :pattern ( (select (|PolymorphicMapType_39598_27882_39651#PolymorphicMapType_39598| QPMask@2) o_9@@51 f_5@@35))
 :pattern ( (select (|PolymorphicMapType_39598_27882_39651#PolymorphicMapType_39598| QPMask@3) o_9@@51 f_5@@35))
))) (forall ((o_9@@52 T@Ref) (f_5@@36 T@Field_45723_3805) ) (!  (=> (not (= f_5@@36 Ref__Integer_value)) (= (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@2) o_9@@52 f_5@@36) (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@3) o_9@@52 f_5@@36)))
 :qid |stdinbpl.3947:31|
 :skolemid |286|
 :pattern ( (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@2) o_9@@52 f_5@@36))
 :pattern ( (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@3) o_9@@52 f_5@@36))
))) (forall ((o_9@@53 T@Ref) (f_5@@37 T@Field_27882_111815) ) (!  (=> true (= (select (|PolymorphicMapType_39598_27882_111815#PolymorphicMapType_39598| QPMask@2) o_9@@53 f_5@@37) (select (|PolymorphicMapType_39598_27882_111815#PolymorphicMapType_39598| QPMask@3) o_9@@53 f_5@@37)))
 :qid |stdinbpl.3947:31|
 :skolemid |286|
 :pattern ( (select (|PolymorphicMapType_39598_27882_111815#PolymorphicMapType_39598| QPMask@2) o_9@@53 f_5@@37))
 :pattern ( (select (|PolymorphicMapType_39598_27882_111815#PolymorphicMapType_39598| QPMask@3) o_9@@53 f_5@@37))
))) (forall ((o_9@@54 T@Ref) (f_5@@38 T@Field_27882_111948) ) (!  (=> true (= (select (|PolymorphicMapType_39598_27882_116070#PolymorphicMapType_39598| QPMask@2) o_9@@54 f_5@@38) (select (|PolymorphicMapType_39598_27882_116070#PolymorphicMapType_39598| QPMask@3) o_9@@54 f_5@@38)))
 :qid |stdinbpl.3947:31|
 :skolemid |286|
 :pattern ( (select (|PolymorphicMapType_39598_27882_116070#PolymorphicMapType_39598| QPMask@2) o_9@@54 f_5@@38))
 :pattern ( (select (|PolymorphicMapType_39598_27882_116070#PolymorphicMapType_39598| QPMask@3) o_9@@54 f_5@@38))
))) (and (and (state ExhaleHeap@0 QPMask@3) (forall ((k_6_2 Int) ) (!  (=> (and (<= 0 k_6_2) (< k_6_2 P_2)) (= (select (|PolymorphicMapType_39577_27882_3805#PolymorphicMapType_39577| ExhaleHeap@0) (|Seq#Index_27939| hist k_6_2) Ref__Integer_value) 0))
 :qid |stdinbpl.3953:22|
 :skolemid |287|
 :pattern ( (|Seq#Index_27939| hist k_6_2))
))) (and (state ExhaleHeap@0 QPMask@3) (state ExhaleHeap@0 QPMask@3)))) (and (=> (= (ControlFlow 0 77) (- 0 90)) (not (= diz null))) (=> (not (= diz null)) (and (=> (= (ControlFlow 0 77) (- 0 89)) (>= current_thread_id 0)) (=> (>= current_thread_id 0) (and (=> (= (ControlFlow 0 77) (- 0 88)) (not (= p_1 NoPerm))) (=> (not (= p_1 NoPerm)) (and (=> (= (ControlFlow 0 77) (- 0 87)) (> M_1 0)) (=> (> M_1 0) (and (=> (= (ControlFlow 0 77) (- 0 86)) (> N 0)) (=> (> N 0) (and (=> (= (ControlFlow 0 77) (- 0 85)) (>= step@@9 N)) (=> (>= step@@9 N) (and (=> (= (ControlFlow 0 77) (- 0 84)) (> P_2 0)) (=> (> P_2 0) (and (=> (= (ControlFlow 0 77) (- 0 83)) (forall ((k_7_1 Int) (k_7_2 Int) ) (!  (=> (and (and (and (and (not (= k_7_1 k_7_2)) (and (<= 0 k_7_1) (< k_7_1 P_2))) (and (<= 0 k_7_2) (< k_7_2 P_2))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27939| hist k_7_1) (|Seq#Index_27939| hist k_7_2))))
 :qid |stdinbpl.3988:19|
 :skolemid |288|
 :pattern ( (neverTriggered31 k_7_1) (neverTriggered31 k_7_2))
))) (=> (forall ((k_7_1@@0 Int) (k_7_2@@0 Int) ) (!  (=> (and (and (and (and (not (= k_7_1@@0 k_7_2@@0)) (and (<= 0 k_7_1@@0) (< k_7_1@@0 P_2))) (and (<= 0 k_7_2@@0) (< k_7_2@@0 P_2))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27939| hist k_7_1@@0) (|Seq#Index_27939| hist k_7_2@@0))))
 :qid |stdinbpl.3988:19|
 :skolemid |288|
 :pattern ( (neverTriggered31 k_7_1@@0) (neverTriggered31 k_7_2@@0))
)) (and (=> (= (ControlFlow 0 77) (- 0 82)) (forall ((k_7_1@@1 Int) ) (!  (=> (and (<= 0 k_7_1@@1) (< k_7_1@@1 P_2)) (>= (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@3) (|Seq#Index_27939| hist k_7_1@@1) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.3995:19|
 :skolemid |289|
 :pattern ( (|Seq#Index_27939| hist k_7_1@@1))
 :pattern ( (|Seq#Index_27939| hist k_7_1@@1))
))) (=> (forall ((k_7_1@@2 Int) ) (!  (=> (and (<= 0 k_7_1@@2) (< k_7_1@@2 P_2)) (>= (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@3) (|Seq#Index_27939| hist k_7_1@@2) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.3995:19|
 :skolemid |289|
 :pattern ( (|Seq#Index_27939| hist k_7_1@@2))
 :pattern ( (|Seq#Index_27939| hist k_7_1@@2))
)) (=> (forall ((k_7_1@@3 Int) ) (!  (=> (and (and (<= 0 k_7_1@@3) (< k_7_1@@3 P_2)) (< NoPerm FullPerm)) (and (qpRange31 (|Seq#Index_27939| hist k_7_1@@3)) (= (invRecv31 (|Seq#Index_27939| hist k_7_1@@3)) k_7_1@@3)))
 :qid |stdinbpl.4001:24|
 :skolemid |290|
 :pattern ( (|Seq#Index_27939| hist k_7_1@@3))
 :pattern ( (|Seq#Index_27939| hist k_7_1@@3))
)) (=> (and (forall ((o_9@@55 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv31 o_9@@55)) (< (invRecv31 o_9@@55) P_2)) (and (< NoPerm FullPerm) (qpRange31 o_9@@55))) (= (|Seq#Index_27939| hist (invRecv31 o_9@@55)) o_9@@55))
 :qid |stdinbpl.4005:24|
 :skolemid |291|
 :pattern ( (invRecv31 o_9@@55))
)) (forall ((o_9@@56 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv31 o_9@@56)) (< (invRecv31 o_9@@56) P_2)) (and (< NoPerm FullPerm) (qpRange31 o_9@@56))) (and (= (|Seq#Index_27939| hist (invRecv31 o_9@@56)) o_9@@56) (= (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@4) o_9@@56 Ref__Integer_value) (- (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@3) o_9@@56 Ref__Integer_value) FullPerm)))) (=> (not (and (and (<= 0 (invRecv31 o_9@@56)) (< (invRecv31 o_9@@56) P_2)) (and (< NoPerm FullPerm) (qpRange31 o_9@@56)))) (= (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@4) o_9@@56 Ref__Integer_value) (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@3) o_9@@56 Ref__Integer_value))))
 :qid |stdinbpl.4011:24|
 :skolemid |292|
 :pattern ( (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@4) o_9@@56 Ref__Integer_value))
))) (=> (and (and (and (and (forall ((o_9@@57 T@Ref) (f_5@@39 T@Field_39637_53) ) (!  (=> true (= (select (|PolymorphicMapType_39598_27882_53#PolymorphicMapType_39598| QPMask@3) o_9@@57 f_5@@39) (select (|PolymorphicMapType_39598_27882_53#PolymorphicMapType_39598| QPMask@4) o_9@@57 f_5@@39)))
 :qid |stdinbpl.4017:31|
 :skolemid |293|
 :pattern ( (select (|PolymorphicMapType_39598_27882_53#PolymorphicMapType_39598| QPMask@4) o_9@@57 f_5@@39))
)) (forall ((o_9@@58 T@Ref) (f_5@@40 T@Field_39650_39651) ) (!  (=> true (= (select (|PolymorphicMapType_39598_27882_39651#PolymorphicMapType_39598| QPMask@3) o_9@@58 f_5@@40) (select (|PolymorphicMapType_39598_27882_39651#PolymorphicMapType_39598| QPMask@4) o_9@@58 f_5@@40)))
 :qid |stdinbpl.4017:31|
 :skolemid |293|
 :pattern ( (select (|PolymorphicMapType_39598_27882_39651#PolymorphicMapType_39598| QPMask@4) o_9@@58 f_5@@40))
))) (forall ((o_9@@59 T@Ref) (f_5@@41 T@Field_45723_3805) ) (!  (=> (not (= f_5@@41 Ref__Integer_value)) (= (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@3) o_9@@59 f_5@@41) (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@4) o_9@@59 f_5@@41)))
 :qid |stdinbpl.4017:31|
 :skolemid |293|
 :pattern ( (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@4) o_9@@59 f_5@@41))
))) (forall ((o_9@@60 T@Ref) (f_5@@42 T@Field_27882_111815) ) (!  (=> true (= (select (|PolymorphicMapType_39598_27882_111815#PolymorphicMapType_39598| QPMask@3) o_9@@60 f_5@@42) (select (|PolymorphicMapType_39598_27882_111815#PolymorphicMapType_39598| QPMask@4) o_9@@60 f_5@@42)))
 :qid |stdinbpl.4017:31|
 :skolemid |293|
 :pattern ( (select (|PolymorphicMapType_39598_27882_111815#PolymorphicMapType_39598| QPMask@4) o_9@@60 f_5@@42))
))) (forall ((o_9@@61 T@Ref) (f_5@@43 T@Field_27882_111948) ) (!  (=> true (= (select (|PolymorphicMapType_39598_27882_116070#PolymorphicMapType_39598| QPMask@3) o_9@@61 f_5@@43) (select (|PolymorphicMapType_39598_27882_116070#PolymorphicMapType_39598| QPMask@4) o_9@@61 f_5@@43)))
 :qid |stdinbpl.4017:31|
 :skolemid |293|
 :pattern ( (select (|PolymorphicMapType_39598_27882_116070#PolymorphicMapType_39598| QPMask@4) o_9@@61 f_5@@43))
))) (and (=> (= (ControlFlow 0 77) (- 0 81)) (<= N step@@9)) (=> (<= N step@@9) (and (=> (= (ControlFlow 0 77) (- 0 80)) (forall ((j@@8 Int) ) (!  (=> (and (and (<= 0 j@@8) (and (< j@@8 (* M_1 step@@9)) (< (mod j@@8 step@@9) N))) (dummyFunction_4485 (select (|PolymorphicMapType_39577_27882_3805#PolymorphicMapType_39577| ExhaleHeap@0) (|Seq#Index_27939| matrix_1 j@@8) Ref__Integer_value))) (>= p_1 NoPerm))
 :qid |stdinbpl.4028:19|
 :skolemid |294|
 :pattern ( (|Seq#Index_27939| matrix_1 j@@8))
 :pattern ( (|Seq#Index_27939| matrix_1 j@@8))
))) (=> (forall ((j@@9 Int) ) (!  (=> (and (and (<= 0 j@@9) (and (< j@@9 (* M_1 step@@9)) (< (mod j@@9 step@@9) N))) (dummyFunction_4485 (select (|PolymorphicMapType_39577_27882_3805#PolymorphicMapType_39577| ExhaleHeap@0) (|Seq#Index_27939| matrix_1 j@@9) Ref__Integer_value))) (>= p_1 NoPerm))
 :qid |stdinbpl.4028:19|
 :skolemid |294|
 :pattern ( (|Seq#Index_27939| matrix_1 j@@9))
 :pattern ( (|Seq#Index_27939| matrix_1 j@@9))
)) (and (=> (= (ControlFlow 0 77) (- 0 79)) (forall ((j@@10 Int) (j_39 Int) ) (!  (=> (and (and (and (and (not (= j@@10 j_39)) (and (<= 0 j@@10) (and (< j@@10 (* M_1 step@@9)) (< (mod j@@10 step@@9) N)))) (and (<= 0 j_39) (and (< j_39 (* M_1 step@@9)) (< (mod j_39 step@@9) N)))) (< NoPerm p_1)) (< NoPerm p_1)) (not (= (|Seq#Index_27939| matrix_1 j@@10) (|Seq#Index_27939| matrix_1 j_39))))
 :qid |stdinbpl.4035:19|
 :skolemid |295|
 :pattern ( (neverTriggered32 j@@10) (neverTriggered32 j_39))
))) (=> (forall ((j@@11 Int) (j_39@@0 Int) ) (!  (=> (and (and (and (and (not (= j@@11 j_39@@0)) (and (<= 0 j@@11) (and (< j@@11 (* M_1 step@@9)) (< (mod j@@11 step@@9) N)))) (and (<= 0 j_39@@0) (and (< j_39@@0 (* M_1 step@@9)) (< (mod j_39@@0 step@@9) N)))) (< NoPerm p_1)) (< NoPerm p_1)) (not (= (|Seq#Index_27939| matrix_1 j@@11) (|Seq#Index_27939| matrix_1 j_39@@0))))
 :qid |stdinbpl.4035:19|
 :skolemid |295|
 :pattern ( (neverTriggered32 j@@11) (neverTriggered32 j_39@@0))
)) (and (=> (= (ControlFlow 0 77) (- 0 78)) (forall ((j@@12 Int) ) (!  (=> (and (<= 0 j@@12) (and (< j@@12 (* M_1 step@@9)) (< (mod j@@12 step@@9) N))) (>= (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@4) (|Seq#Index_27939| matrix_1 j@@12) Ref__Integer_value) p_1))
 :qid |stdinbpl.4042:19|
 :skolemid |296|
 :pattern ( (|Seq#Index_27939| matrix_1 j@@12))
 :pattern ( (|Seq#Index_27939| matrix_1 j@@12))
))) (=> (forall ((j@@13 Int) ) (!  (=> (and (<= 0 j@@13) (and (< j@@13 (* M_1 step@@9)) (< (mod j@@13 step@@9) N))) (>= (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@4) (|Seq#Index_27939| matrix_1 j@@13) Ref__Integer_value) p_1))
 :qid |stdinbpl.4042:19|
 :skolemid |296|
 :pattern ( (|Seq#Index_27939| matrix_1 j@@13))
 :pattern ( (|Seq#Index_27939| matrix_1 j@@13))
)) (=> (forall ((j@@14 Int) ) (!  (=> (and (and (<= 0 j@@14) (and (< j@@14 (* M_1 step@@9)) (< (mod j@@14 step@@9) N))) (< NoPerm p_1)) (and (qpRange32 (|Seq#Index_27939| matrix_1 j@@14)) (= (invRecv32 (|Seq#Index_27939| matrix_1 j@@14)) j@@14)))
 :qid |stdinbpl.4048:24|
 :skolemid |297|
 :pattern ( (|Seq#Index_27939| matrix_1 j@@14))
 :pattern ( (|Seq#Index_27939| matrix_1 j@@14))
)) (=> (and (forall ((o_9@@62 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv32 o_9@@62)) (and (< (invRecv32 o_9@@62) (* M_1 step@@9)) (< (mod (invRecv32 o_9@@62) step@@9) N))) (and (< NoPerm p_1) (qpRange32 o_9@@62))) (= (|Seq#Index_27939| matrix_1 (invRecv32 o_9@@62)) o_9@@62))
 :qid |stdinbpl.4052:24|
 :skolemid |298|
 :pattern ( (invRecv32 o_9@@62))
)) (forall ((o_9@@63 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv32 o_9@@63)) (and (< (invRecv32 o_9@@63) (* M_1 step@@9)) (< (mod (invRecv32 o_9@@63) step@@9) N))) (and (< NoPerm p_1) (qpRange32 o_9@@63))) (and (= (|Seq#Index_27939| matrix_1 (invRecv32 o_9@@63)) o_9@@63) (= (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@5) o_9@@63 Ref__Integer_value) (- (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@4) o_9@@63 Ref__Integer_value) p_1)))) (=> (not (and (and (<= 0 (invRecv32 o_9@@63)) (and (< (invRecv32 o_9@@63) (* M_1 step@@9)) (< (mod (invRecv32 o_9@@63) step@@9) N))) (and (< NoPerm p_1) (qpRange32 o_9@@63)))) (= (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@5) o_9@@63 Ref__Integer_value) (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@4) o_9@@63 Ref__Integer_value))))
 :qid |stdinbpl.4058:24|
 :skolemid |299|
 :pattern ( (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@5) o_9@@63 Ref__Integer_value))
))) (=> (and (and (and (and (forall ((o_9@@64 T@Ref) (f_5@@44 T@Field_39637_53) ) (!  (=> true (= (select (|PolymorphicMapType_39598_27882_53#PolymorphicMapType_39598| QPMask@4) o_9@@64 f_5@@44) (select (|PolymorphicMapType_39598_27882_53#PolymorphicMapType_39598| QPMask@5) o_9@@64 f_5@@44)))
 :qid |stdinbpl.4064:31|
 :skolemid |300|
 :pattern ( (select (|PolymorphicMapType_39598_27882_53#PolymorphicMapType_39598| QPMask@5) o_9@@64 f_5@@44))
)) (forall ((o_9@@65 T@Ref) (f_5@@45 T@Field_39650_39651) ) (!  (=> true (= (select (|PolymorphicMapType_39598_27882_39651#PolymorphicMapType_39598| QPMask@4) o_9@@65 f_5@@45) (select (|PolymorphicMapType_39598_27882_39651#PolymorphicMapType_39598| QPMask@5) o_9@@65 f_5@@45)))
 :qid |stdinbpl.4064:31|
 :skolemid |300|
 :pattern ( (select (|PolymorphicMapType_39598_27882_39651#PolymorphicMapType_39598| QPMask@5) o_9@@65 f_5@@45))
))) (forall ((o_9@@66 T@Ref) (f_5@@46 T@Field_45723_3805) ) (!  (=> (not (= f_5@@46 Ref__Integer_value)) (= (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@4) o_9@@66 f_5@@46) (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@5) o_9@@66 f_5@@46)))
 :qid |stdinbpl.4064:31|
 :skolemid |300|
 :pattern ( (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@5) o_9@@66 f_5@@46))
))) (forall ((o_9@@67 T@Ref) (f_5@@47 T@Field_27882_111815) ) (!  (=> true (= (select (|PolymorphicMapType_39598_27882_111815#PolymorphicMapType_39598| QPMask@4) o_9@@67 f_5@@47) (select (|PolymorphicMapType_39598_27882_111815#PolymorphicMapType_39598| QPMask@5) o_9@@67 f_5@@47)))
 :qid |stdinbpl.4064:31|
 :skolemid |300|
 :pattern ( (select (|PolymorphicMapType_39598_27882_111815#PolymorphicMapType_39598| QPMask@5) o_9@@67 f_5@@47))
))) (forall ((o_9@@68 T@Ref) (f_5@@48 T@Field_27882_111948) ) (!  (=> true (= (select (|PolymorphicMapType_39598_27882_116070#PolymorphicMapType_39598| QPMask@4) o_9@@68 f_5@@48) (select (|PolymorphicMapType_39598_27882_116070#PolymorphicMapType_39598| QPMask@5) o_9@@68 f_5@@48)))
 :qid |stdinbpl.4064:31|
 :skolemid |300|
 :pattern ( (select (|PolymorphicMapType_39598_27882_116070#PolymorphicMapType_39598| QPMask@5) o_9@@68 f_5@@48))
))) (and (and (=> (= (ControlFlow 0 77) 76) anon88_Else_correct) (=> (= (ControlFlow 0 77) 44) anon89_Then_correct)) (=> (= (ControlFlow 0 77) 46) anon89_Else_correct)))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((anon72_Else_correct  (and (=> (= (ControlFlow 0 159) (- 0 160)) (forall ((i1_3_1 Int) (i1_3_2 Int) ) (!  (=> (and (and (and (and (not (= i1_3_1 i1_3_2)) (and (<= 0 i1_3_1) (< i1_3_1 P_2))) (and (<= 0 i1_3_2) (< i1_3_2 P_2))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27939| hist i1_3_1) (|Seq#Index_27939| hist i1_3_2))))
 :qid |stdinbpl.3557:15|
 :skolemid |247|
))) (=> (forall ((i1_3_1@@0 Int) (i1_3_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i1_3_1@@0 i1_3_2@@0)) (and (<= 0 i1_3_1@@0) (< i1_3_1@@0 P_2))) (and (<= 0 i1_3_2@@0) (< i1_3_2@@0 P_2))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27939| hist i1_3_1@@0) (|Seq#Index_27939| hist i1_3_2@@0))))
 :qid |stdinbpl.3557:15|
 :skolemid |247|
)) (=> (and (and (forall ((i1_3_1@@1 Int) ) (!  (=> (and (and (<= 0 i1_3_1@@1) (< i1_3_1@@1 P_2)) (< NoPerm FullPerm)) (and (qpRange23 (|Seq#Index_27939| hist i1_3_1@@1)) (= (invRecv23 (|Seq#Index_27939| hist i1_3_1@@1)) i1_3_1@@1)))
 :qid |stdinbpl.3563:22|
 :skolemid |248|
 :pattern ( (|Seq#Index_27939| hist i1_3_1@@1))
 :pattern ( (|Seq#Index_27939| hist i1_3_1@@1))
)) (forall ((o_9@@69 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv23 o_9@@69)) (< (invRecv23 o_9@@69) P_2)) (< NoPerm FullPerm)) (qpRange23 o_9@@69)) (= (|Seq#Index_27939| hist (invRecv23 o_9@@69)) o_9@@69))
 :qid |stdinbpl.3567:22|
 :skolemid |249|
 :pattern ( (invRecv23 o_9@@69))
))) (and (forall ((i1_3_1@@2 Int) ) (!  (=> (and (<= 0 i1_3_1@@2) (< i1_3_1@@2 P_2)) (not (= (|Seq#Index_27939| hist i1_3_1@@2) null)))
 :qid |stdinbpl.3573:22|
 :skolemid |250|
 :pattern ( (|Seq#Index_27939| hist i1_3_1@@2))
 :pattern ( (|Seq#Index_27939| hist i1_3_1@@2))
)) (forall ((o_9@@70 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv23 o_9@@70)) (< (invRecv23 o_9@@70) P_2)) (< NoPerm FullPerm)) (qpRange23 o_9@@70)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_27939| hist (invRecv23 o_9@@70)) o_9@@70)) (= (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@1) o_9@@70 Ref__Integer_value) (+ (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@0) o_9@@70 Ref__Integer_value) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv23 o_9@@70)) (< (invRecv23 o_9@@70) P_2)) (< NoPerm FullPerm)) (qpRange23 o_9@@70))) (= (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@1) o_9@@70 Ref__Integer_value) (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@0) o_9@@70 Ref__Integer_value))))
 :qid |stdinbpl.3579:22|
 :skolemid |251|
 :pattern ( (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@1) o_9@@70 Ref__Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_9@@71 T@Ref) (f_5@@49 T@Field_39637_53) ) (!  (=> true (= (select (|PolymorphicMapType_39598_27882_53#PolymorphicMapType_39598| QPMask@0) o_9@@71 f_5@@49) (select (|PolymorphicMapType_39598_27882_53#PolymorphicMapType_39598| QPMask@1) o_9@@71 f_5@@49)))
 :qid |stdinbpl.3583:29|
 :skolemid |252|
 :pattern ( (select (|PolymorphicMapType_39598_27882_53#PolymorphicMapType_39598| QPMask@0) o_9@@71 f_5@@49))
 :pattern ( (select (|PolymorphicMapType_39598_27882_53#PolymorphicMapType_39598| QPMask@1) o_9@@71 f_5@@49))
)) (forall ((o_9@@72 T@Ref) (f_5@@50 T@Field_39650_39651) ) (!  (=> true (= (select (|PolymorphicMapType_39598_27882_39651#PolymorphicMapType_39598| QPMask@0) o_9@@72 f_5@@50) (select (|PolymorphicMapType_39598_27882_39651#PolymorphicMapType_39598| QPMask@1) o_9@@72 f_5@@50)))
 :qid |stdinbpl.3583:29|
 :skolemid |252|
 :pattern ( (select (|PolymorphicMapType_39598_27882_39651#PolymorphicMapType_39598| QPMask@0) o_9@@72 f_5@@50))
 :pattern ( (select (|PolymorphicMapType_39598_27882_39651#PolymorphicMapType_39598| QPMask@1) o_9@@72 f_5@@50))
))) (forall ((o_9@@73 T@Ref) (f_5@@51 T@Field_45723_3805) ) (!  (=> (not (= f_5@@51 Ref__Integer_value)) (= (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@0) o_9@@73 f_5@@51) (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@1) o_9@@73 f_5@@51)))
 :qid |stdinbpl.3583:29|
 :skolemid |252|
 :pattern ( (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@0) o_9@@73 f_5@@51))
 :pattern ( (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@1) o_9@@73 f_5@@51))
))) (forall ((o_9@@74 T@Ref) (f_5@@52 T@Field_27882_111815) ) (!  (=> true (= (select (|PolymorphicMapType_39598_27882_111815#PolymorphicMapType_39598| QPMask@0) o_9@@74 f_5@@52) (select (|PolymorphicMapType_39598_27882_111815#PolymorphicMapType_39598| QPMask@1) o_9@@74 f_5@@52)))
 :qid |stdinbpl.3583:29|
 :skolemid |252|
 :pattern ( (select (|PolymorphicMapType_39598_27882_111815#PolymorphicMapType_39598| QPMask@0) o_9@@74 f_5@@52))
 :pattern ( (select (|PolymorphicMapType_39598_27882_111815#PolymorphicMapType_39598| QPMask@1) o_9@@74 f_5@@52))
))) (forall ((o_9@@75 T@Ref) (f_5@@53 T@Field_27882_111948) ) (!  (=> true (= (select (|PolymorphicMapType_39598_27882_116070#PolymorphicMapType_39598| QPMask@0) o_9@@75 f_5@@53) (select (|PolymorphicMapType_39598_27882_116070#PolymorphicMapType_39598| QPMask@1) o_9@@75 f_5@@53)))
 :qid |stdinbpl.3583:29|
 :skolemid |252|
 :pattern ( (select (|PolymorphicMapType_39598_27882_116070#PolymorphicMapType_39598| QPMask@0) o_9@@75 f_5@@53))
 :pattern ( (select (|PolymorphicMapType_39598_27882_116070#PolymorphicMapType_39598| QPMask@1) o_9@@75 f_5@@53))
))) (and (state Heap@@49 QPMask@1) (state Heap@@49 QPMask@1))) (and (=> (= (ControlFlow 0 159) 158) anon74_Then_correct) (=> (= (ControlFlow 0 159) 77) anon74_Else_correct))))))))
(let ((anon19_correct true))
(let ((anon73_Else_correct  (=> (and (not (and (<= 0 i1_3) (< i1_3 P_2))) (= (ControlFlow 0 42) 38)) anon19_correct)))
(let ((anon73_Then_correct  (=> (and (<= 0 i1_3) (< i1_3 P_2)) (and (=> (= (ControlFlow 0 39) (- 0 41)) (>= i1_3 0)) (=> (>= i1_3 0) (and (=> (= (ControlFlow 0 39) (- 0 40)) (< i1_3 (|Seq#Length_27962| hist))) (=> (< i1_3 (|Seq#Length_27962| hist)) (=> (= (ControlFlow 0 39) 38) anon19_correct))))))))
(let ((anon67_Else_correct  (=> (and (forall ((i1_1 Int) (j1_3_1 Int) ) (!  (=> (and (<= 0 i1_1) (and (< i1_1 M_1) (and (<= 0 j1_3_1) (< j1_3_1 N)))) (and (<= 0 (select (|PolymorphicMapType_39577_27882_3805#PolymorphicMapType_39577| Heap@@49) (|Seq#Index_27939| matrix_1 (Ref__multidim_index_2 Heap@@49 M_1 step@@9 i1_1 j1_3_1)) Ref__Integer_value)) (< (select (|PolymorphicMapType_39577_27882_3805#PolymorphicMapType_39577| Heap@@49) (|Seq#Index_27939| matrix_1 (Ref__multidim_index_2 Heap@@49 M_1 step@@9 i1_1 j1_3_1)) Ref__Integer_value) P_2)))
 :qid |stdinbpl.3539:20|
 :skolemid |246|
 :pattern ( (|Seq#Index_27939| matrix_1 (|Ref__multidim_index_2#frame| EmptyFrame M_1 step@@9 i1_1 j1_3_1)))
)) (state Heap@@49 QPMask@0)) (and (and (=> (= (ControlFlow 0 161) 159) anon72_Else_correct) (=> (= (ControlFlow 0 161) 39) anon73_Then_correct)) (=> (= (ControlFlow 0 161) 42) anon73_Else_correct)))))
(let ((anon71_Then_correct  (and (=> (= (ControlFlow 0 22) (- 0 27)) (<= 0 i1_16)) (=> (<= 0 i1_16) (and (=> (= (ControlFlow 0 22) (- 0 26)) (< i1_16 M_1)) (=> (< i1_16 M_1) (and (=> (= (ControlFlow 0 22) (- 0 25)) (<= 0 M_1)) (=> (<= 0 M_1) (and (=> (= (ControlFlow 0 22) (- 0 24)) (<= 0 j1_3)) (=> (<= 0 j1_3) (and (=> (= (ControlFlow 0 22) (- 0 23)) (< j1_3 step@@9)) (=> (< j1_3 step@@9) (=> (= (ControlFlow 0 22) (- 0 21)) (<= 0 step@@9))))))))))))))
(let ((anon69_Then_correct  (and (=> (= (ControlFlow 0 14) (- 0 19)) (<= 0 i1_16)) (=> (<= 0 i1_16) (and (=> (= (ControlFlow 0 14) (- 0 18)) (< i1_16 M_1)) (=> (< i1_16 M_1) (and (=> (= (ControlFlow 0 14) (- 0 17)) (<= 0 M_1)) (=> (<= 0 M_1) (and (=> (= (ControlFlow 0 14) (- 0 16)) (<= 0 j1_3)) (=> (<= 0 j1_3) (and (=> (= (ControlFlow 0 14) (- 0 15)) (< j1_3 step@@9)) (=> (< j1_3 step@@9) (=> (= (ControlFlow 0 14) (- 0 13)) (<= 0 step@@9))))))))))))))
(let ((anon15_correct true))
(let ((anon71_Else_correct  (and (=> (= (ControlFlow 0 28) (- 0 31)) (>= (Ref__multidim_index_2 Heap@@49 M_1 step@@9 i1_16 j1_3) 0)) (=> (>= (Ref__multidim_index_2 Heap@@49 M_1 step@@9 i1_16 j1_3) 0) (and (=> (= (ControlFlow 0 28) (- 0 30)) (< (Ref__multidim_index_2 Heap@@49 M_1 step@@9 i1_16 j1_3) (|Seq#Length_27962| matrix_1))) (=> (< (Ref__multidim_index_2 Heap@@49 M_1 step@@9 i1_16 j1_3) (|Seq#Length_27962| matrix_1)) (and (=> (= (ControlFlow 0 28) (- 0 29)) (HasDirectPerm_27882_3805 QPMask@0 (|Seq#Index_27939| matrix_1 (Ref__multidim_index_2 Heap@@49 M_1 step@@9 i1_16 j1_3)) Ref__Integer_value)) (=> (HasDirectPerm_27882_3805 QPMask@0 (|Seq#Index_27939| matrix_1 (Ref__multidim_index_2 Heap@@49 M_1 step@@9 i1_16 j1_3)) Ref__Integer_value) (=> (= (ControlFlow 0 28) 11) anon15_correct)))))))))
(let ((anon70_Then_correct  (=> (<= 0 (select (|PolymorphicMapType_39577_27882_3805#PolymorphicMapType_39577| Heap@@49) (|Seq#Index_27939| matrix_1 (Ref__multidim_index_2 Heap@@49 M_1 step@@9 i1_16 j1_3)) Ref__Integer_value)) (and (=> (= (ControlFlow 0 32) 22) anon71_Then_correct) (=> (= (ControlFlow 0 32) 28) anon71_Else_correct)))))
(let ((anon70_Else_correct  (=> (and (< (select (|PolymorphicMapType_39577_27882_3805#PolymorphicMapType_39577| Heap@@49) (|Seq#Index_27939| matrix_1 (Ref__multidim_index_2 Heap@@49 M_1 step@@9 i1_16 j1_3)) Ref__Integer_value) 0) (= (ControlFlow 0 20) 11)) anon15_correct)))
(let ((anon69_Else_correct  (and (=> (= (ControlFlow 0 33) (- 0 36)) (>= (Ref__multidim_index_2 Heap@@49 M_1 step@@9 i1_16 j1_3) 0)) (=> (>= (Ref__multidim_index_2 Heap@@49 M_1 step@@9 i1_16 j1_3) 0) (and (=> (= (ControlFlow 0 33) (- 0 35)) (< (Ref__multidim_index_2 Heap@@49 M_1 step@@9 i1_16 j1_3) (|Seq#Length_27962| matrix_1))) (=> (< (Ref__multidim_index_2 Heap@@49 M_1 step@@9 i1_16 j1_3) (|Seq#Length_27962| matrix_1)) (and (=> (= (ControlFlow 0 33) (- 0 34)) (HasDirectPerm_27882_3805 QPMask@0 (|Seq#Index_27939| matrix_1 (Ref__multidim_index_2 Heap@@49 M_1 step@@9 i1_16 j1_3)) Ref__Integer_value)) (=> (HasDirectPerm_27882_3805 QPMask@0 (|Seq#Index_27939| matrix_1 (Ref__multidim_index_2 Heap@@49 M_1 step@@9 i1_16 j1_3)) Ref__Integer_value) (and (=> (= (ControlFlow 0 33) 32) anon70_Then_correct) (=> (= (ControlFlow 0 33) 20) anon70_Else_correct))))))))))
(let ((anon68_Then_correct  (=> (and (<= 0 i1_16) (and (< i1_16 M_1) (and (<= 0 j1_3) (< j1_3 N)))) (and (=> (= (ControlFlow 0 37) 14) anon69_Then_correct) (=> (= (ControlFlow 0 37) 33) anon69_Else_correct)))))
(let ((anon68_Else_correct  (=> (and (not (and (<= 0 i1_16) (and (< i1_16 M_1) (and (<= 0 j1_3) (< j1_3 N))))) (= (ControlFlow 0 12) 11)) anon15_correct)))
(let ((anon63_Else_correct  (and (=> (= (ControlFlow 0 162) (- 0 164)) (forall ((j1_1 Int) (j1_1_1 Int) ) (!  (=> (and (and (and (and (not (= j1_1 j1_1_1)) (and (<= 0 j1_1) (and (< j1_1 (* M_1 step@@9)) (< (mod j1_1 step@@9) N)))) (and (<= 0 j1_1_1) (and (< j1_1_1 (* M_1 step@@9)) (< (mod j1_1_1 step@@9) N)))) (< NoPerm p_1)) (< NoPerm p_1)) (not (= (|Seq#Index_27939| matrix_1 j1_1) (|Seq#Index_27939| matrix_1 j1_1_1))))
 :qid |stdinbpl.3440:15|
 :skolemid |239|
))) (=> (forall ((j1_1@@0 Int) (j1_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= j1_1@@0 j1_1_1@@0)) (and (<= 0 j1_1@@0) (and (< j1_1@@0 (* M_1 step@@9)) (< (mod j1_1@@0 step@@9) N)))) (and (<= 0 j1_1_1@@0) (and (< j1_1_1@@0 (* M_1 step@@9)) (< (mod j1_1_1@@0 step@@9) N)))) (< NoPerm p_1)) (< NoPerm p_1)) (not (= (|Seq#Index_27939| matrix_1 j1_1@@0) (|Seq#Index_27939| matrix_1 j1_1_1@@0))))
 :qid |stdinbpl.3440:15|
 :skolemid |239|
)) (=> (and (forall ((j1_1@@1 Int) ) (!  (=> (and (and (<= 0 j1_1@@1) (and (< j1_1@@1 (* M_1 step@@9)) (< (mod j1_1@@1 step@@9) N))) (< NoPerm p_1)) (and (qpRange22 (|Seq#Index_27939| matrix_1 j1_1@@1)) (= (invRecv22 (|Seq#Index_27939| matrix_1 j1_1@@1)) j1_1@@1)))
 :qid |stdinbpl.3446:22|
 :skolemid |240|
 :pattern ( (|Seq#Index_27939| matrix_1 j1_1@@1))
 :pattern ( (|Seq#Index_27939| matrix_1 j1_1@@1))
)) (forall ((o_9@@76 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv22 o_9@@76)) (and (< (invRecv22 o_9@@76) (* M_1 step@@9)) (< (mod (invRecv22 o_9@@76) step@@9) N))) (< NoPerm p_1)) (qpRange22 o_9@@76)) (= (|Seq#Index_27939| matrix_1 (invRecv22 o_9@@76)) o_9@@76))
 :qid |stdinbpl.3450:22|
 :skolemid |241|
 :pattern ( (invRecv22 o_9@@76))
))) (and (=> (= (ControlFlow 0 162) (- 0 163)) (forall ((j1_1@@2 Int) ) (!  (=> (and (<= 0 j1_1@@2) (and (< j1_1@@2 (* M_1 step@@9)) (< (mod j1_1@@2 step@@9) N))) (>= p_1 NoPerm))
 :qid |stdinbpl.3456:15|
 :skolemid |242|
 :pattern ( (|Seq#Index_27939| matrix_1 j1_1@@2))
 :pattern ( (|Seq#Index_27939| matrix_1 j1_1@@2))
))) (=> (forall ((j1_1@@3 Int) ) (!  (=> (and (<= 0 j1_1@@3) (and (< j1_1@@3 (* M_1 step@@9)) (< (mod j1_1@@3 step@@9) N))) (>= p_1 NoPerm))
 :qid |stdinbpl.3456:15|
 :skolemid |242|
 :pattern ( (|Seq#Index_27939| matrix_1 j1_1@@3))
 :pattern ( (|Seq#Index_27939| matrix_1 j1_1@@3))
)) (=> (and (forall ((j1_1@@4 Int) ) (!  (=> (and (and (<= 0 j1_1@@4) (and (< j1_1@@4 (* M_1 step@@9)) (< (mod j1_1@@4 step@@9) N))) (> p_1 NoPerm)) (not (= (|Seq#Index_27939| matrix_1 j1_1@@4) null)))
 :qid |stdinbpl.3462:22|
 :skolemid |243|
 :pattern ( (|Seq#Index_27939| matrix_1 j1_1@@4))
 :pattern ( (|Seq#Index_27939| matrix_1 j1_1@@4))
)) (forall ((o_9@@77 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv22 o_9@@77)) (and (< (invRecv22 o_9@@77) (* M_1 step@@9)) (< (mod (invRecv22 o_9@@77) step@@9) N))) (< NoPerm p_1)) (qpRange22 o_9@@77)) (and (=> (< NoPerm p_1) (= (|Seq#Index_27939| matrix_1 (invRecv22 o_9@@77)) o_9@@77)) (= (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@0) o_9@@77 Ref__Integer_value) (+ (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| ZeroMask) o_9@@77 Ref__Integer_value) p_1)))) (=> (not (and (and (and (<= 0 (invRecv22 o_9@@77)) (and (< (invRecv22 o_9@@77) (* M_1 step@@9)) (< (mod (invRecv22 o_9@@77) step@@9) N))) (< NoPerm p_1)) (qpRange22 o_9@@77))) (= (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@0) o_9@@77 Ref__Integer_value) (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| ZeroMask) o_9@@77 Ref__Integer_value))))
 :qid |stdinbpl.3468:22|
 :skolemid |244|
 :pattern ( (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@0) o_9@@77 Ref__Integer_value))
))) (=> (and (and (and (and (and (and (forall ((o_9@@78 T@Ref) (f_5@@54 T@Field_39637_53) ) (!  (=> true (= (select (|PolymorphicMapType_39598_27882_53#PolymorphicMapType_39598| ZeroMask) o_9@@78 f_5@@54) (select (|PolymorphicMapType_39598_27882_53#PolymorphicMapType_39598| QPMask@0) o_9@@78 f_5@@54)))
 :qid |stdinbpl.3472:29|
 :skolemid |245|
 :pattern ( (select (|PolymorphicMapType_39598_27882_53#PolymorphicMapType_39598| ZeroMask) o_9@@78 f_5@@54))
 :pattern ( (select (|PolymorphicMapType_39598_27882_53#PolymorphicMapType_39598| QPMask@0) o_9@@78 f_5@@54))
)) (forall ((o_9@@79 T@Ref) (f_5@@55 T@Field_39650_39651) ) (!  (=> true (= (select (|PolymorphicMapType_39598_27882_39651#PolymorphicMapType_39598| ZeroMask) o_9@@79 f_5@@55) (select (|PolymorphicMapType_39598_27882_39651#PolymorphicMapType_39598| QPMask@0) o_9@@79 f_5@@55)))
 :qid |stdinbpl.3472:29|
 :skolemid |245|
 :pattern ( (select (|PolymorphicMapType_39598_27882_39651#PolymorphicMapType_39598| ZeroMask) o_9@@79 f_5@@55))
 :pattern ( (select (|PolymorphicMapType_39598_27882_39651#PolymorphicMapType_39598| QPMask@0) o_9@@79 f_5@@55))
))) (forall ((o_9@@80 T@Ref) (f_5@@56 T@Field_45723_3805) ) (!  (=> (not (= f_5@@56 Ref__Integer_value)) (= (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| ZeroMask) o_9@@80 f_5@@56) (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@0) o_9@@80 f_5@@56)))
 :qid |stdinbpl.3472:29|
 :skolemid |245|
 :pattern ( (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| ZeroMask) o_9@@80 f_5@@56))
 :pattern ( (select (|PolymorphicMapType_39598_27882_3805#PolymorphicMapType_39598| QPMask@0) o_9@@80 f_5@@56))
))) (forall ((o_9@@81 T@Ref) (f_5@@57 T@Field_27882_111815) ) (!  (=> true (= (select (|PolymorphicMapType_39598_27882_111815#PolymorphicMapType_39598| ZeroMask) o_9@@81 f_5@@57) (select (|PolymorphicMapType_39598_27882_111815#PolymorphicMapType_39598| QPMask@0) o_9@@81 f_5@@57)))
 :qid |stdinbpl.3472:29|
 :skolemid |245|
 :pattern ( (select (|PolymorphicMapType_39598_27882_111815#PolymorphicMapType_39598| ZeroMask) o_9@@81 f_5@@57))
 :pattern ( (select (|PolymorphicMapType_39598_27882_111815#PolymorphicMapType_39598| QPMask@0) o_9@@81 f_5@@57))
))) (forall ((o_9@@82 T@Ref) (f_5@@58 T@Field_27882_111948) ) (!  (=> true (= (select (|PolymorphicMapType_39598_27882_116070#PolymorphicMapType_39598| ZeroMask) o_9@@82 f_5@@58) (select (|PolymorphicMapType_39598_27882_116070#PolymorphicMapType_39598| QPMask@0) o_9@@82 f_5@@58)))
 :qid |stdinbpl.3472:29|
 :skolemid |245|
 :pattern ( (select (|PolymorphicMapType_39598_27882_116070#PolymorphicMapType_39598| ZeroMask) o_9@@82 f_5@@58))
 :pattern ( (select (|PolymorphicMapType_39598_27882_116070#PolymorphicMapType_39598| QPMask@0) o_9@@82 f_5@@58))
))) (state Heap@@49 QPMask@0)) (and (state Heap@@49 QPMask@0) (state Heap@@49 QPMask@0))) (and (and (=> (= (ControlFlow 0 162) 161) anon67_Else_correct) (=> (= (ControlFlow 0 162) 37) anon68_Then_correct)) (=> (= (ControlFlow 0 162) 12) anon68_Else_correct)))))))))))
(let ((anon6_correct true))
(let ((anon66_Else_correct  (=> (and (not (and (<= 0 j1_12) (and (< j1_12 (* M_1 step@@9)) (< (mod j1_12 step@@9) N)))) (= (ControlFlow 0 5) 1)) anon6_correct)))
(let ((anon66_Then_correct  (=> (and (<= 0 j1_12) (and (< j1_12 (* M_1 step@@9)) (< (mod j1_12 step@@9) N))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= j1_12 0)) (=> (>= j1_12 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< j1_12 (|Seq#Length_27962| matrix_1))) (=> (< j1_12 (|Seq#Length_27962| matrix_1)) (=> (= (ControlFlow 0 2) 1) anon6_correct))))))))
(let ((anon65_Else_correct  (=> (<= (* M_1 step@@9) j1_12) (and (=> (= (ControlFlow 0 9) 2) anon66_Then_correct) (=> (= (ControlFlow 0 9) 5) anon66_Else_correct)))))
(let ((anon65_Then_correct  (=> (< j1_12 (* M_1 step@@9)) (and (=> (= (ControlFlow 0 7) (- 0 8)) (not (= step@@9 0))) (=> (not (= step@@9 0)) (and (=> (= (ControlFlow 0 7) 2) anon66_Then_correct) (=> (= (ControlFlow 0 7) 5) anon66_Else_correct)))))))
(let ((anon64_Then_correct  (=> (<= 0 j1_12) (and (=> (= (ControlFlow 0 10) 7) anon65_Then_correct) (=> (= (ControlFlow 0 10) 9) anon65_Else_correct)))))
(let ((anon64_Else_correct  (=> (< j1_12 0) (and (=> (= (ControlFlow 0 6) 2) anon66_Then_correct) (=> (= (ControlFlow 0 6) 5) anon66_Else_correct)))))
(let ((anon0_correct  (=> (and (and (and (and (state Heap@@49 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (and AssumePermUpperBound (select (|PolymorphicMapType_39577_27626_53#PolymorphicMapType_39577| Heap@@49) diz $allocated))) (and (and (not (= diz null)) (state Heap@@49 ZeroMask)) (and (>= current_thread_id 0) (state Heap@@49 ZeroMask)))) (and (and (and (not (= p_1 NoPerm)) (> M_1 0)) (and (> N 0) (>= step@@9 N))) (and (and (> P_2 0) (state Heap@@49 ZeroMask)) (and (<= N step@@9) (state Heap@@49 ZeroMask))))) (and (and (=> (= (ControlFlow 0 165) 162) anon63_Else_correct) (=> (= (ControlFlow 0 165) 10) anon64_Then_correct)) (=> (= (ControlFlow 0 165) 6) anon64_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (> wildcard 0.0) true) (= (ControlFlow 0 166) 165)) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 162) (- 164))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 33) (- 35))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 39) (- 40))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 159) (- 160))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 97) (- 98))))
(check-sat)
