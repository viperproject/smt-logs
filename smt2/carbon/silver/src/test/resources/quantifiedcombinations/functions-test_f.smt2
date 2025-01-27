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
(declare-sort T@Field_17767_53 0)
(declare-sort T@Field_17780_17781 0)
(declare-sort T@Field_23805_3229 0)
(declare-sort T@Field_28812_28813 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_32722_32727 0)
(declare-sort T@Field_11405_11555 0)
(declare-sort T@Field_11405_32727 0)
(declare-sort T@Field_11554_3229 0)
(declare-sort T@Field_11554_53 0)
(declare-sort T@Field_11554_17781 0)
(declare-datatypes ((T@PolymorphicMapType_17728 0)) (((PolymorphicMapType_17728 (|PolymorphicMapType_17728_11405_3229#PolymorphicMapType_17728| (Array T@Ref T@Field_23805_3229 Real)) (|PolymorphicMapType_17728_11554_11555#PolymorphicMapType_17728| (Array T@Ref T@Field_28812_28813 Real)) (|PolymorphicMapType_17728_11405_11555#PolymorphicMapType_17728| (Array T@Ref T@Field_11405_11555 Real)) (|PolymorphicMapType_17728_11405_53#PolymorphicMapType_17728| (Array T@Ref T@Field_17767_53 Real)) (|PolymorphicMapType_17728_11405_17781#PolymorphicMapType_17728| (Array T@Ref T@Field_17780_17781 Real)) (|PolymorphicMapType_17728_11405_60533#PolymorphicMapType_17728| (Array T@Ref T@Field_11405_32727 Real)) (|PolymorphicMapType_17728_11554_3229#PolymorphicMapType_17728| (Array T@Ref T@Field_11554_3229 Real)) (|PolymorphicMapType_17728_11554_53#PolymorphicMapType_17728| (Array T@Ref T@Field_11554_53 Real)) (|PolymorphicMapType_17728_11554_17781#PolymorphicMapType_17728| (Array T@Ref T@Field_11554_17781 Real)) (|PolymorphicMapType_17728_11554_60944#PolymorphicMapType_17728| (Array T@Ref T@Field_32722_32727 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_18256 0)) (((PolymorphicMapType_18256 (|PolymorphicMapType_18256_11405_3229#PolymorphicMapType_18256| (Array T@Ref T@Field_23805_3229 Bool)) (|PolymorphicMapType_18256_11405_53#PolymorphicMapType_18256| (Array T@Ref T@Field_17767_53 Bool)) (|PolymorphicMapType_18256_11405_17781#PolymorphicMapType_18256| (Array T@Ref T@Field_17780_17781 Bool)) (|PolymorphicMapType_18256_11405_28813#PolymorphicMapType_18256| (Array T@Ref T@Field_11405_11555 Bool)) (|PolymorphicMapType_18256_11405_54091#PolymorphicMapType_18256| (Array T@Ref T@Field_11405_32727 Bool)) (|PolymorphicMapType_18256_28812_3229#PolymorphicMapType_18256| (Array T@Ref T@Field_11554_3229 Bool)) (|PolymorphicMapType_18256_28812_53#PolymorphicMapType_18256| (Array T@Ref T@Field_11554_53 Bool)) (|PolymorphicMapType_18256_28812_17781#PolymorphicMapType_18256| (Array T@Ref T@Field_11554_17781 Bool)) (|PolymorphicMapType_18256_28812_28813#PolymorphicMapType_18256| (Array T@Ref T@Field_28812_28813 Bool)) (|PolymorphicMapType_18256_28812_55139#PolymorphicMapType_18256| (Array T@Ref T@Field_32722_32727 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_17707 0)) (((PolymorphicMapType_17707 (|PolymorphicMapType_17707_11197_53#PolymorphicMapType_17707| (Array T@Ref T@Field_17767_53 Bool)) (|PolymorphicMapType_17707_11200_11201#PolymorphicMapType_17707| (Array T@Ref T@Field_17780_17781 T@Ref)) (|PolymorphicMapType_17707_11405_3229#PolymorphicMapType_17707| (Array T@Ref T@Field_23805_3229 Int)) (|PolymorphicMapType_17707_11554_11555#PolymorphicMapType_17707| (Array T@Ref T@Field_28812_28813 T@FrameType)) (|PolymorphicMapType_17707_11558_32814#PolymorphicMapType_17707| (Array T@Ref T@Field_32722_32727 T@PolymorphicMapType_18256)) (|PolymorphicMapType_17707_11405_11555#PolymorphicMapType_17707| (Array T@Ref T@Field_11405_11555 T@FrameType)) (|PolymorphicMapType_17707_11405_51275#PolymorphicMapType_17707| (Array T@Ref T@Field_11405_32727 T@PolymorphicMapType_18256)) (|PolymorphicMapType_17707_11554_3229#PolymorphicMapType_17707| (Array T@Ref T@Field_11554_3229 Int)) (|PolymorphicMapType_17707_11554_53#PolymorphicMapType_17707| (Array T@Ref T@Field_11554_53 Bool)) (|PolymorphicMapType_17707_11554_17781#PolymorphicMapType_17707| (Array T@Ref T@Field_11554_17781 T@Ref)) ) ) ))
(declare-fun $allocated () T@Field_17767_53)
(declare-fun f_7 () T@Field_23805_3229)
(declare-sort T@Seq_23852 0)
(declare-fun |Seq#Length_11421| (T@Seq_23852) Int)
(declare-fun |Seq#Drop_11421| (T@Seq_23852 Int) T@Seq_23852)
(declare-sort T@Seq_3107 0)
(declare-fun |Seq#Length_3107| (T@Seq_3107) Int)
(declare-fun |Seq#Drop_3107| (T@Seq_3107 Int) T@Seq_3107)
(declare-fun succHeap (T@PolymorphicMapType_17707 T@PolymorphicMapType_17707) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_17707 T@PolymorphicMapType_17707) Bool)
(declare-fun state (T@PolymorphicMapType_17707 T@PolymorphicMapType_17728) Bool)
(declare-fun get_f (T@PolymorphicMapType_17707 T@Ref) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun GoodMask (T@PolymorphicMapType_17728) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_18256)
(declare-fun |fun_f'| (T@PolymorphicMapType_17707 T@Seq_23852 Int) Int)
(declare-fun dummyFunction_3750 (Int) Bool)
(declare-fun |fun_f#triggerStateless| (T@Seq_23852 Int) Int)
(declare-fun |fun_P'| (T@PolymorphicMapType_17707 T@Seq_23852 Int) Int)
(declare-fun |fun_P#triggerStateless| (T@Seq_23852 Int) Int)
(declare-fun |Seq#Index_11421| (T@Seq_23852 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3107| (T@Seq_3107 Int) Int)
(declare-fun |Seq#Empty_11421| () T@Seq_23852)
(declare-fun |Seq#Empty_3107| () T@Seq_3107)
(declare-fun P (T@Ref) T@Field_28812_28813)
(declare-fun IsPredicateField_11554_11555 (T@Field_28812_28813) Bool)
(declare-fun |get_f'| (T@PolymorphicMapType_17707 T@Ref) Int)
(declare-fun |get_f#triggerStateless| (T@Ref) Int)
(declare-fun |get_P'| (T@PolymorphicMapType_17707 T@Ref) Int)
(declare-fun |get_P#triggerStateless| (T@Ref) Int)
(declare-fun |P#trigger_11554| (T@PolymorphicMapType_17707 T@Field_28812_28813) Bool)
(declare-fun |P#everUsed_11554| (T@Field_28812_28813) Bool)
(declare-fun |Seq#Update_11421| (T@Seq_23852 Int T@Ref) T@Seq_23852)
(declare-fun |Seq#Update_3107| (T@Seq_3107 Int Int) T@Seq_3107)
(declare-fun |Seq#Take_11421| (T@Seq_23852 Int) T@Seq_23852)
(declare-fun |Seq#Take_3107| (T@Seq_3107 Int) T@Seq_3107)
(declare-fun |Seq#Contains_3107| (T@Seq_3107 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3107)
(declare-fun |Seq#Contains_23852| (T@Seq_23852 T@Ref) Bool)
(declare-fun |Seq#Skolem_23852| (T@Seq_23852 T@Ref) Int)
(declare-fun |Seq#Skolem_3107| (T@Seq_3107 Int) Int)
(declare-fun get_P (T@PolymorphicMapType_17707 T@Ref) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_17707 T@PolymorphicMapType_17707 T@PolymorphicMapType_17728) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_11554 (T@Field_28812_28813) T@Field_32722_32727)
(declare-fun HasDirectPerm_11554_11555 (T@PolymorphicMapType_17728 T@Ref T@Field_28812_28813) Bool)
(declare-fun IsPredicateField_11405_52619 (T@Field_11405_11555) Bool)
(declare-fun PredicateMaskField_11405 (T@Field_11405_11555) T@Field_11405_32727)
(declare-fun HasDirectPerm_11405_11555 (T@PolymorphicMapType_17728 T@Ref T@Field_11405_11555) Bool)
(declare-fun IsWandField_11554_56304 (T@Field_28812_28813) Bool)
(declare-fun WandMaskField_11554 (T@Field_28812_28813) T@Field_32722_32727)
(declare-fun IsWandField_11405_55947 (T@Field_11405_11555) Bool)
(declare-fun WandMaskField_11405 (T@Field_11405_11555) T@Field_11405_32727)
(declare-fun |Seq#Singleton_11421| (T@Ref) T@Seq_23852)
(declare-fun |Seq#Singleton_3107| (Int) T@Seq_3107)
(declare-fun |P#sm| (T@Ref) T@Field_32722_32727)
(declare-fun |Seq#Append_23852| (T@Seq_23852 T@Seq_23852) T@Seq_23852)
(declare-fun |Seq#Append_3107| (T@Seq_3107 T@Seq_3107) T@Seq_3107)
(declare-fun dummyHeap () T@PolymorphicMapType_17707)
(declare-fun ZeroMask () T@PolymorphicMapType_17728)
(declare-fun InsidePredicate_28812_28812 (T@Field_28812_28813 T@FrameType T@Field_28812_28813 T@FrameType) Bool)
(declare-fun InsidePredicate_17767_17767 (T@Field_11405_11555 T@FrameType T@Field_11405_11555 T@FrameType) Bool)
(declare-fun IsPredicateField_11405_3229 (T@Field_23805_3229) Bool)
(declare-fun IsWandField_11405_3229 (T@Field_23805_3229) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_11554_63236 (T@Field_32722_32727) Bool)
(declare-fun IsWandField_11554_63252 (T@Field_32722_32727) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_11554_17781 (T@Field_11554_17781) Bool)
(declare-fun IsWandField_11554_17781 (T@Field_11554_17781) Bool)
(declare-fun IsPredicateField_11554_53 (T@Field_11554_53) Bool)
(declare-fun IsWandField_11554_53 (T@Field_11554_53) Bool)
(declare-fun IsPredicateField_11554_3229 (T@Field_11554_3229) Bool)
(declare-fun IsWandField_11554_3229 (T@Field_11554_3229) Bool)
(declare-fun IsPredicateField_11405_62405 (T@Field_11405_32727) Bool)
(declare-fun IsWandField_11405_62421 (T@Field_11405_32727) Bool)
(declare-fun IsPredicateField_11405_17781 (T@Field_17780_17781) Bool)
(declare-fun IsWandField_11405_17781 (T@Field_17780_17781) Bool)
(declare-fun IsPredicateField_11405_53 (T@Field_17767_53) Bool)
(declare-fun IsWandField_11405_53 (T@Field_17767_53) Bool)
(declare-fun HasDirectPerm_11554_52374 (T@PolymorphicMapType_17728 T@Ref T@Field_32722_32727) Bool)
(declare-fun HasDirectPerm_11554_17781 (T@PolymorphicMapType_17728 T@Ref T@Field_11554_17781) Bool)
(declare-fun HasDirectPerm_11554_53 (T@PolymorphicMapType_17728 T@Ref T@Field_11554_53) Bool)
(declare-fun HasDirectPerm_11554_3229 (T@PolymorphicMapType_17728 T@Ref T@Field_11554_3229) Bool)
(declare-fun HasDirectPerm_11405_51233 (T@PolymorphicMapType_17728 T@Ref T@Field_11405_32727) Bool)
(declare-fun HasDirectPerm_11405_17781 (T@PolymorphicMapType_17728 T@Ref T@Field_17780_17781) Bool)
(declare-fun HasDirectPerm_11405_53 (T@PolymorphicMapType_17728 T@Ref T@Field_17767_53) Bool)
(declare-fun HasDirectPerm_11405_3229 (T@PolymorphicMapType_17728 T@Ref T@Field_23805_3229) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun fun_f (T@PolymorphicMapType_17707 T@Seq_23852 Int) Int)
(declare-fun fun_P (T@PolymorphicMapType_17707 T@Seq_23852 Int) Int)
(declare-fun |fun_f#frame| (T@FrameType T@Seq_23852 Int) Int)
(declare-fun FrameFragment_3521 (Int) T@FrameType)
(declare-fun |fun_f#condqp1| (T@PolymorphicMapType_17707 T@Seq_23852 Int) Int)
(declare-fun |fun_P#frame| (T@FrameType T@Seq_23852 Int) Int)
(declare-fun |fun_P#condqp2| (T@PolymorphicMapType_17707 T@Seq_23852 Int) Int)
(declare-fun sumMask (T@PolymorphicMapType_17728 T@PolymorphicMapType_17728 T@PolymorphicMapType_17728) Bool)
(declare-fun |Seq#Equal_23852| (T@Seq_23852 T@Seq_23852) Bool)
(declare-fun |Seq#Equal_3107| (T@Seq_3107 T@Seq_3107) Bool)
(declare-fun |Seq#ContainsTrigger_11421| (T@Seq_23852 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3107| (T@Seq_3107 Int) Bool)
(declare-fun |get_f#frame| (T@FrameType T@Ref) Int)
(declare-fun |get_P#frame| (T@FrameType T@Ref) Int)
(declare-fun getPredWandId_11554_11555 (T@Field_28812_28813) Int)
(declare-fun |sk_fun_P#condqp2| (Int Int) Int)
(declare-fun |Seq#SkolemDiff_23852| (T@Seq_23852 T@Seq_23852) Int)
(declare-fun |Seq#SkolemDiff_3107| (T@Seq_3107 T@Seq_3107) Int)
(declare-fun InsidePredicate_28812_17767 (T@Field_28812_28813 T@FrameType T@Field_11405_11555 T@FrameType) Bool)
(declare-fun InsidePredicate_17767_28812 (T@Field_11405_11555 T@FrameType T@Field_28812_28813 T@FrameType) Bool)
(declare-fun |sk_fun_f#condqp1| (Int Int) Int)
(assert (forall ((s T@Seq_23852) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_11421| s)) (= (|Seq#Length_11421| (|Seq#Drop_11421| s n)) (- (|Seq#Length_11421| s) n))) (=> (< (|Seq#Length_11421| s) n) (= (|Seq#Length_11421| (|Seq#Drop_11421| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_11421| (|Seq#Drop_11421| s n)) (|Seq#Length_11421| s))))
 :qid |stdinbpl.321:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_11421| (|Seq#Drop_11421| s n)))
 :pattern ( (|Seq#Length_11421| s) (|Seq#Drop_11421| s n))
)))
(assert (forall ((s@@0 T@Seq_3107) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3107| s@@0)) (= (|Seq#Length_3107| (|Seq#Drop_3107| s@@0 n@@0)) (- (|Seq#Length_3107| s@@0) n@@0))) (=> (< (|Seq#Length_3107| s@@0) n@@0) (= (|Seq#Length_3107| (|Seq#Drop_3107| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3107| (|Seq#Drop_3107| s@@0 n@@0)) (|Seq#Length_3107| s@@0))))
 :qid |stdinbpl.321:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3107| (|Seq#Drop_3107| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3107| s@@0) (|Seq#Drop_3107| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_17707) (Heap1 T@PolymorphicMapType_17707) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_17707) (Mask T@PolymorphicMapType_17728) (x T@Ref) ) (!  (=> (and (state Heap Mask) (< AssumeFunctionsAbove 3)) (= (get_f Heap x) (select (|PolymorphicMapType_17707_11405_3229#PolymorphicMapType_17707| Heap) x f_7)))
 :qid |stdinbpl.777:15|
 :skolemid |73|
 :pattern ( (state Heap Mask) (get_f Heap x))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_17707) (Mask@@0 T@PolymorphicMapType_17728) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_17707) (Heap1@@0 T@PolymorphicMapType_17707) (Heap2 T@PolymorphicMapType_17707) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_32722_32727) ) (!  (not (select (|PolymorphicMapType_18256_28812_55139#PolymorphicMapType_18256| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18256_28812_55139#PolymorphicMapType_18256| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_28812_28813) ) (!  (not (select (|PolymorphicMapType_18256_28812_28813#PolymorphicMapType_18256| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18256_28812_28813#PolymorphicMapType_18256| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_11554_17781) ) (!  (not (select (|PolymorphicMapType_18256_28812_17781#PolymorphicMapType_18256| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18256_28812_17781#PolymorphicMapType_18256| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_11554_53) ) (!  (not (select (|PolymorphicMapType_18256_28812_53#PolymorphicMapType_18256| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18256_28812_53#PolymorphicMapType_18256| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_11554_3229) ) (!  (not (select (|PolymorphicMapType_18256_28812_3229#PolymorphicMapType_18256| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18256_28812_3229#PolymorphicMapType_18256| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_11405_32727) ) (!  (not (select (|PolymorphicMapType_18256_11405_54091#PolymorphicMapType_18256| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18256_11405_54091#PolymorphicMapType_18256| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_11405_11555) ) (!  (not (select (|PolymorphicMapType_18256_11405_28813#PolymorphicMapType_18256| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18256_11405_28813#PolymorphicMapType_18256| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_17780_17781) ) (!  (not (select (|PolymorphicMapType_18256_11405_17781#PolymorphicMapType_18256| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18256_11405_17781#PolymorphicMapType_18256| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_17767_53) ) (!  (not (select (|PolymorphicMapType_18256_11405_53#PolymorphicMapType_18256| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18256_11405_53#PolymorphicMapType_18256| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_23805_3229) ) (!  (not (select (|PolymorphicMapType_18256_11405_3229#PolymorphicMapType_18256| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18256_11405_3229#PolymorphicMapType_18256| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_17707) (xs T@Seq_23852) (j Int) ) (! (dummyFunction_3750 (|fun_f#triggerStateless| xs j))
 :qid |stdinbpl.607:15|
 :skolemid |59|
 :pattern ( (|fun_f'| Heap@@1 xs j))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_17707) (xs@@0 T@Seq_23852) (j@@0 Int) ) (! (dummyFunction_3750 (|fun_P#triggerStateless| xs@@0 j@@0))
 :qid |stdinbpl.836:15|
 :skolemid |76|
 :pattern ( (|fun_P'| Heap@@2 xs@@0 j@@0))
)))
(assert (forall ((s@@1 T@Seq_23852) (n@@1 Int) (j@@1 Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j@@1)) (< j@@1 (- (|Seq#Length_11421| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j@@1 n@@1) n@@1) j@@1) (= (|Seq#Index_11421| (|Seq#Drop_11421| s@@1 n@@1) j@@1) (|Seq#Index_11421| s@@1 (|Seq#Add| j@@1 n@@1)))))
 :qid |stdinbpl.342:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_11421| (|Seq#Drop_11421| s@@1 n@@1) j@@1))
)))
(assert (forall ((s@@2 T@Seq_3107) (n@@2 Int) (j@@2 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@2)) (< j@@2 (- (|Seq#Length_3107| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@2 n@@2) n@@2) j@@2) (= (|Seq#Index_3107| (|Seq#Drop_3107| s@@2 n@@2) j@@2) (|Seq#Index_3107| s@@2 (|Seq#Add| j@@2 n@@2)))))
 :qid |stdinbpl.342:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3107| (|Seq#Drop_3107| s@@2 n@@2) j@@2))
)))
(assert (= (|Seq#Length_11421| |Seq#Empty_11421|) 0))
(assert (= (|Seq#Length_3107| |Seq#Empty_3107|) 0))
(assert (forall ((x@@0 T@Ref) ) (! (IsPredicateField_11554_11555 (P x@@0))
 :qid |stdinbpl.1101:15|
 :skolemid |93|
 :pattern ( (P x@@0))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_17707) (x@@1 T@Ref) ) (! (dummyFunction_3750 (|get_f#triggerStateless| x@@1))
 :qid |stdinbpl.771:15|
 :skolemid |72|
 :pattern ( (|get_f'| Heap@@3 x@@1))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_17707) (x@@2 T@Ref) ) (! (dummyFunction_3750 (|get_P#triggerStateless| x@@2))
 :qid |stdinbpl.1002:15|
 :skolemid |89|
 :pattern ( (|get_P'| Heap@@4 x@@2))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_17707) (x@@3 T@Ref) ) (! (|P#everUsed_11554| (P x@@3))
 :qid |stdinbpl.1120:15|
 :skolemid |97|
 :pattern ( (|P#trigger_11554| Heap@@5 (P x@@3)))
)))
(assert (forall ((s@@3 T@Seq_23852) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_11421| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_11421| (|Seq#Update_11421| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_11421| (|Seq#Update_11421| s@@3 i v) n@@3) (|Seq#Index_11421| s@@3 n@@3)))))
 :qid |stdinbpl.297:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_11421| (|Seq#Update_11421| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_11421| s@@3 n@@3) (|Seq#Update_11421| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_3107) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3107| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_3107| (|Seq#Update_3107| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_3107| (|Seq#Update_3107| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_3107| s@@4 n@@4)))))
 :qid |stdinbpl.297:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3107| (|Seq#Update_3107| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_3107| s@@4 n@@4) (|Seq#Update_3107| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_23852) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_11421| s@@5)) (= (|Seq#Length_11421| (|Seq#Take_11421| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_11421| s@@5) n@@5) (= (|Seq#Length_11421| (|Seq#Take_11421| s@@5 n@@5)) (|Seq#Length_11421| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_11421| (|Seq#Take_11421| s@@5 n@@5)) 0)))
 :qid |stdinbpl.308:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_11421| (|Seq#Take_11421| s@@5 n@@5)))
 :pattern ( (|Seq#Take_11421| s@@5 n@@5) (|Seq#Length_11421| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3107) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3107| s@@6)) (= (|Seq#Length_3107| (|Seq#Take_3107| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3107| s@@6) n@@6) (= (|Seq#Length_3107| (|Seq#Take_3107| s@@6 n@@6)) (|Seq#Length_3107| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3107| (|Seq#Take_3107| s@@6 n@@6)) 0)))
 :qid |stdinbpl.308:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3107| (|Seq#Take_3107| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3107| s@@6 n@@6) (|Seq#Length_3107| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3107| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.582:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3107| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_23852) (x@@4 T@Ref) ) (!  (=> (|Seq#Contains_23852| s@@7 x@@4) (and (and (<= 0 (|Seq#Skolem_23852| s@@7 x@@4)) (< (|Seq#Skolem_23852| s@@7 x@@4) (|Seq#Length_11421| s@@7))) (= (|Seq#Index_11421| s@@7 (|Seq#Skolem_23852| s@@7 x@@4)) x@@4)))
 :qid |stdinbpl.440:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_23852| s@@7 x@@4))
)))
(assert (forall ((s@@8 T@Seq_3107) (x@@5 Int) ) (!  (=> (|Seq#Contains_3107| s@@8 x@@5) (and (and (<= 0 (|Seq#Skolem_3107| s@@8 x@@5)) (< (|Seq#Skolem_3107| s@@8 x@@5) (|Seq#Length_3107| s@@8))) (= (|Seq#Index_3107| s@@8 (|Seq#Skolem_3107| s@@8 x@@5)) x@@5)))
 :qid |stdinbpl.440:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3107| s@@8 x@@5))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_17707) (x@@6 T@Ref) ) (!  (and (= (get_f Heap@@6 x@@6) (|get_f'| Heap@@6 x@@6)) (dummyFunction_3750 (|get_f#triggerStateless| x@@6)))
 :qid |stdinbpl.767:15|
 :skolemid |71|
 :pattern ( (get_f Heap@@6 x@@6))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_17707) (x@@7 T@Ref) ) (!  (and (= (get_P Heap@@7 x@@7) (|get_P'| Heap@@7 x@@7)) (dummyFunction_3750 (|get_P#triggerStateless| x@@7)))
 :qid |stdinbpl.998:15|
 :skolemid |88|
 :pattern ( (get_P Heap@@7 x@@7))
)))
(assert (forall ((s@@9 T@Seq_23852) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_11421| s@@9 n@@7) s@@9))
 :qid |stdinbpl.424:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_11421| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3107) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3107| s@@10 n@@8) s@@10))
 :qid |stdinbpl.424:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3107| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@3 Int) ) (! (= (|Seq#Sub| i@@1 j@@3) (- i@@1 j@@3))
 :qid |stdinbpl.277:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@3))
)))
(assert (forall ((i@@2 Int) (j@@4 Int) ) (! (= (|Seq#Add| i@@2 j@@4) (+ i@@2 j@@4))
 :qid |stdinbpl.275:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@4))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_17707) (ExhaleHeap T@PolymorphicMapType_17707) (Mask@@1 T@PolymorphicMapType_17728) (pm_f_10 T@Field_28812_28813) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_11554_11555 Mask@@1 null pm_f_10) (IsPredicateField_11554_11555 pm_f_10)) (= (select (|PolymorphicMapType_17707_11558_32814#PolymorphicMapType_17707| Heap@@8) null (PredicateMaskField_11554 pm_f_10)) (select (|PolymorphicMapType_17707_11558_32814#PolymorphicMapType_17707| ExhaleHeap) null (PredicateMaskField_11554 pm_f_10)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap Mask@@1) (IsPredicateField_11554_11555 pm_f_10) (select (|PolymorphicMapType_17707_11558_32814#PolymorphicMapType_17707| ExhaleHeap) null (PredicateMaskField_11554 pm_f_10)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_17707) (ExhaleHeap@@0 T@PolymorphicMapType_17707) (Mask@@2 T@PolymorphicMapType_17728) (pm_f_10@@0 T@Field_11405_11555) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_11405_11555 Mask@@2 null pm_f_10@@0) (IsPredicateField_11405_52619 pm_f_10@@0)) (= (select (|PolymorphicMapType_17707_11405_51275#PolymorphicMapType_17707| Heap@@9) null (PredicateMaskField_11405 pm_f_10@@0)) (select (|PolymorphicMapType_17707_11405_51275#PolymorphicMapType_17707| ExhaleHeap@@0) null (PredicateMaskField_11405 pm_f_10@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@0 Mask@@2) (IsPredicateField_11405_52619 pm_f_10@@0) (select (|PolymorphicMapType_17707_11405_51275#PolymorphicMapType_17707| ExhaleHeap@@0) null (PredicateMaskField_11405 pm_f_10@@0)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_17707) (ExhaleHeap@@1 T@PolymorphicMapType_17707) (Mask@@3 T@PolymorphicMapType_17728) (pm_f_10@@1 T@Field_28812_28813) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_11554_11555 Mask@@3 null pm_f_10@@1) (IsWandField_11554_56304 pm_f_10@@1)) (= (select (|PolymorphicMapType_17707_11558_32814#PolymorphicMapType_17707| Heap@@10) null (WandMaskField_11554 pm_f_10@@1)) (select (|PolymorphicMapType_17707_11558_32814#PolymorphicMapType_17707| ExhaleHeap@@1) null (WandMaskField_11554 pm_f_10@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@1 Mask@@3) (IsWandField_11554_56304 pm_f_10@@1) (select (|PolymorphicMapType_17707_11558_32814#PolymorphicMapType_17707| ExhaleHeap@@1) null (WandMaskField_11554 pm_f_10@@1)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_17707) (ExhaleHeap@@2 T@PolymorphicMapType_17707) (Mask@@4 T@PolymorphicMapType_17728) (pm_f_10@@2 T@Field_11405_11555) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_11405_11555 Mask@@4 null pm_f_10@@2) (IsWandField_11405_55947 pm_f_10@@2)) (= (select (|PolymorphicMapType_17707_11405_51275#PolymorphicMapType_17707| Heap@@11) null (WandMaskField_11405 pm_f_10@@2)) (select (|PolymorphicMapType_17707_11405_51275#PolymorphicMapType_17707| ExhaleHeap@@2) null (WandMaskField_11405 pm_f_10@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@2 Mask@@4) (IsWandField_11405_55947 pm_f_10@@2) (select (|PolymorphicMapType_17707_11405_51275#PolymorphicMapType_17707| ExhaleHeap@@2) null (WandMaskField_11405 pm_f_10@@2)))
)))
(assert (forall ((x@@8 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_23852| (|Seq#Singleton_11421| x@@8) y) (= x@@8 y))
 :qid |stdinbpl.565:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_23852| (|Seq#Singleton_11421| x@@8) y))
)))
(assert (forall ((x@@9 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3107| (|Seq#Singleton_3107| x@@9) y@@0) (= x@@9 y@@0))
 :qid |stdinbpl.565:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3107| (|Seq#Singleton_3107| x@@9) y@@0))
)))
(assert (forall ((s@@11 T@Seq_23852) (n@@9 Int) (j@@5 Int) ) (!  (=> (and (and (<= 0 j@@5) (< j@@5 n@@9)) (< j@@5 (|Seq#Length_11421| s@@11))) (= (|Seq#Index_11421| (|Seq#Take_11421| s@@11 n@@9) j@@5) (|Seq#Index_11421| s@@11 j@@5)))
 :qid |stdinbpl.316:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_11421| (|Seq#Take_11421| s@@11 n@@9) j@@5))
 :pattern ( (|Seq#Index_11421| s@@11 j@@5) (|Seq#Take_11421| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3107) (n@@10 Int) (j@@6 Int) ) (!  (=> (and (and (<= 0 j@@6) (< j@@6 n@@10)) (< j@@6 (|Seq#Length_3107| s@@12))) (= (|Seq#Index_3107| (|Seq#Take_3107| s@@12 n@@10) j@@6) (|Seq#Index_3107| s@@12 j@@6)))
 :qid |stdinbpl.316:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3107| (|Seq#Take_3107| s@@12 n@@10) j@@6))
 :pattern ( (|Seq#Index_3107| s@@12 j@@6) (|Seq#Take_3107| s@@12 n@@10))
)))
(assert (forall ((x@@10 T@Ref) (x2 T@Ref) ) (!  (=> (= (P x@@10) (P x2)) (= x@@10 x2))
 :qid |stdinbpl.1111:15|
 :skolemid |95|
 :pattern ( (P x@@10) (P x2))
)))
(assert (forall ((x@@11 T@Ref) (x2@@0 T@Ref) ) (!  (=> (= (|P#sm| x@@11) (|P#sm| x2@@0)) (= x@@11 x2@@0))
 :qid |stdinbpl.1115:15|
 :skolemid |96|
 :pattern ( (|P#sm| x@@11) (|P#sm| x2@@0))
)))
(assert (forall ((s@@13 T@Seq_23852) (t T@Seq_23852) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_11421| s@@13))) (< n@@11 (|Seq#Length_11421| (|Seq#Append_23852| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_11421| s@@13)) (|Seq#Length_11421| s@@13)) n@@11) (= (|Seq#Take_11421| (|Seq#Append_23852| s@@13 t) n@@11) (|Seq#Append_23852| s@@13 (|Seq#Take_11421| t (|Seq#Sub| n@@11 (|Seq#Length_11421| s@@13)))))))
 :qid |stdinbpl.401:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_11421| (|Seq#Append_23852| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3107) (t@@0 T@Seq_3107) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3107| s@@14))) (< n@@12 (|Seq#Length_3107| (|Seq#Append_3107| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3107| s@@14)) (|Seq#Length_3107| s@@14)) n@@12) (= (|Seq#Take_3107| (|Seq#Append_3107| s@@14 t@@0) n@@12) (|Seq#Append_3107| s@@14 (|Seq#Take_3107| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3107| s@@14)))))))
 :qid |stdinbpl.401:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3107| (|Seq#Append_3107| s@@14 t@@0) n@@12))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_17707) (ExhaleHeap@@3 T@PolymorphicMapType_17707) (Mask@@5 T@PolymorphicMapType_17728) (pm_f_10@@3 T@Field_28812_28813) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@3 Mask@@5) (=> (and (HasDirectPerm_11554_11555 Mask@@5 null pm_f_10@@3) (IsPredicateField_11554_11555 pm_f_10@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_10 T@Ref) (f_15 T@Field_23805_3229) ) (!  (=> (select (|PolymorphicMapType_18256_11405_3229#PolymorphicMapType_18256| (select (|PolymorphicMapType_17707_11558_32814#PolymorphicMapType_17707| Heap@@12) null (PredicateMaskField_11554 pm_f_10@@3))) o2_10 f_15) (= (select (|PolymorphicMapType_17707_11405_3229#PolymorphicMapType_17707| Heap@@12) o2_10 f_15) (select (|PolymorphicMapType_17707_11405_3229#PolymorphicMapType_17707| ExhaleHeap@@3) o2_10 f_15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17707_11405_3229#PolymorphicMapType_17707| ExhaleHeap@@3) o2_10 f_15))
)) (forall ((o2_10@@0 T@Ref) (f_15@@0 T@Field_17767_53) ) (!  (=> (select (|PolymorphicMapType_18256_11405_53#PolymorphicMapType_18256| (select (|PolymorphicMapType_17707_11558_32814#PolymorphicMapType_17707| Heap@@12) null (PredicateMaskField_11554 pm_f_10@@3))) o2_10@@0 f_15@@0) (= (select (|PolymorphicMapType_17707_11197_53#PolymorphicMapType_17707| Heap@@12) o2_10@@0 f_15@@0) (select (|PolymorphicMapType_17707_11197_53#PolymorphicMapType_17707| ExhaleHeap@@3) o2_10@@0 f_15@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17707_11197_53#PolymorphicMapType_17707| ExhaleHeap@@3) o2_10@@0 f_15@@0))
))) (forall ((o2_10@@1 T@Ref) (f_15@@1 T@Field_17780_17781) ) (!  (=> (select (|PolymorphicMapType_18256_11405_17781#PolymorphicMapType_18256| (select (|PolymorphicMapType_17707_11558_32814#PolymorphicMapType_17707| Heap@@12) null (PredicateMaskField_11554 pm_f_10@@3))) o2_10@@1 f_15@@1) (= (select (|PolymorphicMapType_17707_11200_11201#PolymorphicMapType_17707| Heap@@12) o2_10@@1 f_15@@1) (select (|PolymorphicMapType_17707_11200_11201#PolymorphicMapType_17707| ExhaleHeap@@3) o2_10@@1 f_15@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17707_11200_11201#PolymorphicMapType_17707| ExhaleHeap@@3) o2_10@@1 f_15@@1))
))) (forall ((o2_10@@2 T@Ref) (f_15@@2 T@Field_11405_11555) ) (!  (=> (select (|PolymorphicMapType_18256_11405_28813#PolymorphicMapType_18256| (select (|PolymorphicMapType_17707_11558_32814#PolymorphicMapType_17707| Heap@@12) null (PredicateMaskField_11554 pm_f_10@@3))) o2_10@@2 f_15@@2) (= (select (|PolymorphicMapType_17707_11405_11555#PolymorphicMapType_17707| Heap@@12) o2_10@@2 f_15@@2) (select (|PolymorphicMapType_17707_11405_11555#PolymorphicMapType_17707| ExhaleHeap@@3) o2_10@@2 f_15@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17707_11405_11555#PolymorphicMapType_17707| ExhaleHeap@@3) o2_10@@2 f_15@@2))
))) (forall ((o2_10@@3 T@Ref) (f_15@@3 T@Field_11405_32727) ) (!  (=> (select (|PolymorphicMapType_18256_11405_54091#PolymorphicMapType_18256| (select (|PolymorphicMapType_17707_11558_32814#PolymorphicMapType_17707| Heap@@12) null (PredicateMaskField_11554 pm_f_10@@3))) o2_10@@3 f_15@@3) (= (select (|PolymorphicMapType_17707_11405_51275#PolymorphicMapType_17707| Heap@@12) o2_10@@3 f_15@@3) (select (|PolymorphicMapType_17707_11405_51275#PolymorphicMapType_17707| ExhaleHeap@@3) o2_10@@3 f_15@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17707_11405_51275#PolymorphicMapType_17707| ExhaleHeap@@3) o2_10@@3 f_15@@3))
))) (forall ((o2_10@@4 T@Ref) (f_15@@4 T@Field_11554_3229) ) (!  (=> (select (|PolymorphicMapType_18256_28812_3229#PolymorphicMapType_18256| (select (|PolymorphicMapType_17707_11558_32814#PolymorphicMapType_17707| Heap@@12) null (PredicateMaskField_11554 pm_f_10@@3))) o2_10@@4 f_15@@4) (= (select (|PolymorphicMapType_17707_11554_3229#PolymorphicMapType_17707| Heap@@12) o2_10@@4 f_15@@4) (select (|PolymorphicMapType_17707_11554_3229#PolymorphicMapType_17707| ExhaleHeap@@3) o2_10@@4 f_15@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17707_11554_3229#PolymorphicMapType_17707| ExhaleHeap@@3) o2_10@@4 f_15@@4))
))) (forall ((o2_10@@5 T@Ref) (f_15@@5 T@Field_11554_53) ) (!  (=> (select (|PolymorphicMapType_18256_28812_53#PolymorphicMapType_18256| (select (|PolymorphicMapType_17707_11558_32814#PolymorphicMapType_17707| Heap@@12) null (PredicateMaskField_11554 pm_f_10@@3))) o2_10@@5 f_15@@5) (= (select (|PolymorphicMapType_17707_11554_53#PolymorphicMapType_17707| Heap@@12) o2_10@@5 f_15@@5) (select (|PolymorphicMapType_17707_11554_53#PolymorphicMapType_17707| ExhaleHeap@@3) o2_10@@5 f_15@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17707_11554_53#PolymorphicMapType_17707| ExhaleHeap@@3) o2_10@@5 f_15@@5))
))) (forall ((o2_10@@6 T@Ref) (f_15@@6 T@Field_11554_17781) ) (!  (=> (select (|PolymorphicMapType_18256_28812_17781#PolymorphicMapType_18256| (select (|PolymorphicMapType_17707_11558_32814#PolymorphicMapType_17707| Heap@@12) null (PredicateMaskField_11554 pm_f_10@@3))) o2_10@@6 f_15@@6) (= (select (|PolymorphicMapType_17707_11554_17781#PolymorphicMapType_17707| Heap@@12) o2_10@@6 f_15@@6) (select (|PolymorphicMapType_17707_11554_17781#PolymorphicMapType_17707| ExhaleHeap@@3) o2_10@@6 f_15@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17707_11554_17781#PolymorphicMapType_17707| ExhaleHeap@@3) o2_10@@6 f_15@@6))
))) (forall ((o2_10@@7 T@Ref) (f_15@@7 T@Field_28812_28813) ) (!  (=> (select (|PolymorphicMapType_18256_28812_28813#PolymorphicMapType_18256| (select (|PolymorphicMapType_17707_11558_32814#PolymorphicMapType_17707| Heap@@12) null (PredicateMaskField_11554 pm_f_10@@3))) o2_10@@7 f_15@@7) (= (select (|PolymorphicMapType_17707_11554_11555#PolymorphicMapType_17707| Heap@@12) o2_10@@7 f_15@@7) (select (|PolymorphicMapType_17707_11554_11555#PolymorphicMapType_17707| ExhaleHeap@@3) o2_10@@7 f_15@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17707_11554_11555#PolymorphicMapType_17707| ExhaleHeap@@3) o2_10@@7 f_15@@7))
))) (forall ((o2_10@@8 T@Ref) (f_15@@8 T@Field_32722_32727) ) (!  (=> (select (|PolymorphicMapType_18256_28812_55139#PolymorphicMapType_18256| (select (|PolymorphicMapType_17707_11558_32814#PolymorphicMapType_17707| Heap@@12) null (PredicateMaskField_11554 pm_f_10@@3))) o2_10@@8 f_15@@8) (= (select (|PolymorphicMapType_17707_11558_32814#PolymorphicMapType_17707| Heap@@12) o2_10@@8 f_15@@8) (select (|PolymorphicMapType_17707_11558_32814#PolymorphicMapType_17707| ExhaleHeap@@3) o2_10@@8 f_15@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17707_11558_32814#PolymorphicMapType_17707| ExhaleHeap@@3) o2_10@@8 f_15@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@3 Mask@@5) (IsPredicateField_11554_11555 pm_f_10@@3))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_17707) (ExhaleHeap@@4 T@PolymorphicMapType_17707) (Mask@@6 T@PolymorphicMapType_17728) (pm_f_10@@4 T@Field_11405_11555) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@4 Mask@@6) (=> (and (HasDirectPerm_11405_11555 Mask@@6 null pm_f_10@@4) (IsPredicateField_11405_52619 pm_f_10@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_10@@9 T@Ref) (f_15@@9 T@Field_23805_3229) ) (!  (=> (select (|PolymorphicMapType_18256_11405_3229#PolymorphicMapType_18256| (select (|PolymorphicMapType_17707_11405_51275#PolymorphicMapType_17707| Heap@@13) null (PredicateMaskField_11405 pm_f_10@@4))) o2_10@@9 f_15@@9) (= (select (|PolymorphicMapType_17707_11405_3229#PolymorphicMapType_17707| Heap@@13) o2_10@@9 f_15@@9) (select (|PolymorphicMapType_17707_11405_3229#PolymorphicMapType_17707| ExhaleHeap@@4) o2_10@@9 f_15@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17707_11405_3229#PolymorphicMapType_17707| ExhaleHeap@@4) o2_10@@9 f_15@@9))
)) (forall ((o2_10@@10 T@Ref) (f_15@@10 T@Field_17767_53) ) (!  (=> (select (|PolymorphicMapType_18256_11405_53#PolymorphicMapType_18256| (select (|PolymorphicMapType_17707_11405_51275#PolymorphicMapType_17707| Heap@@13) null (PredicateMaskField_11405 pm_f_10@@4))) o2_10@@10 f_15@@10) (= (select (|PolymorphicMapType_17707_11197_53#PolymorphicMapType_17707| Heap@@13) o2_10@@10 f_15@@10) (select (|PolymorphicMapType_17707_11197_53#PolymorphicMapType_17707| ExhaleHeap@@4) o2_10@@10 f_15@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17707_11197_53#PolymorphicMapType_17707| ExhaleHeap@@4) o2_10@@10 f_15@@10))
))) (forall ((o2_10@@11 T@Ref) (f_15@@11 T@Field_17780_17781) ) (!  (=> (select (|PolymorphicMapType_18256_11405_17781#PolymorphicMapType_18256| (select (|PolymorphicMapType_17707_11405_51275#PolymorphicMapType_17707| Heap@@13) null (PredicateMaskField_11405 pm_f_10@@4))) o2_10@@11 f_15@@11) (= (select (|PolymorphicMapType_17707_11200_11201#PolymorphicMapType_17707| Heap@@13) o2_10@@11 f_15@@11) (select (|PolymorphicMapType_17707_11200_11201#PolymorphicMapType_17707| ExhaleHeap@@4) o2_10@@11 f_15@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17707_11200_11201#PolymorphicMapType_17707| ExhaleHeap@@4) o2_10@@11 f_15@@11))
))) (forall ((o2_10@@12 T@Ref) (f_15@@12 T@Field_11405_11555) ) (!  (=> (select (|PolymorphicMapType_18256_11405_28813#PolymorphicMapType_18256| (select (|PolymorphicMapType_17707_11405_51275#PolymorphicMapType_17707| Heap@@13) null (PredicateMaskField_11405 pm_f_10@@4))) o2_10@@12 f_15@@12) (= (select (|PolymorphicMapType_17707_11405_11555#PolymorphicMapType_17707| Heap@@13) o2_10@@12 f_15@@12) (select (|PolymorphicMapType_17707_11405_11555#PolymorphicMapType_17707| ExhaleHeap@@4) o2_10@@12 f_15@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17707_11405_11555#PolymorphicMapType_17707| ExhaleHeap@@4) o2_10@@12 f_15@@12))
))) (forall ((o2_10@@13 T@Ref) (f_15@@13 T@Field_11405_32727) ) (!  (=> (select (|PolymorphicMapType_18256_11405_54091#PolymorphicMapType_18256| (select (|PolymorphicMapType_17707_11405_51275#PolymorphicMapType_17707| Heap@@13) null (PredicateMaskField_11405 pm_f_10@@4))) o2_10@@13 f_15@@13) (= (select (|PolymorphicMapType_17707_11405_51275#PolymorphicMapType_17707| Heap@@13) o2_10@@13 f_15@@13) (select (|PolymorphicMapType_17707_11405_51275#PolymorphicMapType_17707| ExhaleHeap@@4) o2_10@@13 f_15@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17707_11405_51275#PolymorphicMapType_17707| ExhaleHeap@@4) o2_10@@13 f_15@@13))
))) (forall ((o2_10@@14 T@Ref) (f_15@@14 T@Field_11554_3229) ) (!  (=> (select (|PolymorphicMapType_18256_28812_3229#PolymorphicMapType_18256| (select (|PolymorphicMapType_17707_11405_51275#PolymorphicMapType_17707| Heap@@13) null (PredicateMaskField_11405 pm_f_10@@4))) o2_10@@14 f_15@@14) (= (select (|PolymorphicMapType_17707_11554_3229#PolymorphicMapType_17707| Heap@@13) o2_10@@14 f_15@@14) (select (|PolymorphicMapType_17707_11554_3229#PolymorphicMapType_17707| ExhaleHeap@@4) o2_10@@14 f_15@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17707_11554_3229#PolymorphicMapType_17707| ExhaleHeap@@4) o2_10@@14 f_15@@14))
))) (forall ((o2_10@@15 T@Ref) (f_15@@15 T@Field_11554_53) ) (!  (=> (select (|PolymorphicMapType_18256_28812_53#PolymorphicMapType_18256| (select (|PolymorphicMapType_17707_11405_51275#PolymorphicMapType_17707| Heap@@13) null (PredicateMaskField_11405 pm_f_10@@4))) o2_10@@15 f_15@@15) (= (select (|PolymorphicMapType_17707_11554_53#PolymorphicMapType_17707| Heap@@13) o2_10@@15 f_15@@15) (select (|PolymorphicMapType_17707_11554_53#PolymorphicMapType_17707| ExhaleHeap@@4) o2_10@@15 f_15@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17707_11554_53#PolymorphicMapType_17707| ExhaleHeap@@4) o2_10@@15 f_15@@15))
))) (forall ((o2_10@@16 T@Ref) (f_15@@16 T@Field_11554_17781) ) (!  (=> (select (|PolymorphicMapType_18256_28812_17781#PolymorphicMapType_18256| (select (|PolymorphicMapType_17707_11405_51275#PolymorphicMapType_17707| Heap@@13) null (PredicateMaskField_11405 pm_f_10@@4))) o2_10@@16 f_15@@16) (= (select (|PolymorphicMapType_17707_11554_17781#PolymorphicMapType_17707| Heap@@13) o2_10@@16 f_15@@16) (select (|PolymorphicMapType_17707_11554_17781#PolymorphicMapType_17707| ExhaleHeap@@4) o2_10@@16 f_15@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17707_11554_17781#PolymorphicMapType_17707| ExhaleHeap@@4) o2_10@@16 f_15@@16))
))) (forall ((o2_10@@17 T@Ref) (f_15@@17 T@Field_28812_28813) ) (!  (=> (select (|PolymorphicMapType_18256_28812_28813#PolymorphicMapType_18256| (select (|PolymorphicMapType_17707_11405_51275#PolymorphicMapType_17707| Heap@@13) null (PredicateMaskField_11405 pm_f_10@@4))) o2_10@@17 f_15@@17) (= (select (|PolymorphicMapType_17707_11554_11555#PolymorphicMapType_17707| Heap@@13) o2_10@@17 f_15@@17) (select (|PolymorphicMapType_17707_11554_11555#PolymorphicMapType_17707| ExhaleHeap@@4) o2_10@@17 f_15@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17707_11554_11555#PolymorphicMapType_17707| ExhaleHeap@@4) o2_10@@17 f_15@@17))
))) (forall ((o2_10@@18 T@Ref) (f_15@@18 T@Field_32722_32727) ) (!  (=> (select (|PolymorphicMapType_18256_28812_55139#PolymorphicMapType_18256| (select (|PolymorphicMapType_17707_11405_51275#PolymorphicMapType_17707| Heap@@13) null (PredicateMaskField_11405 pm_f_10@@4))) o2_10@@18 f_15@@18) (= (select (|PolymorphicMapType_17707_11558_32814#PolymorphicMapType_17707| Heap@@13) o2_10@@18 f_15@@18) (select (|PolymorphicMapType_17707_11558_32814#PolymorphicMapType_17707| ExhaleHeap@@4) o2_10@@18 f_15@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17707_11558_32814#PolymorphicMapType_17707| ExhaleHeap@@4) o2_10@@18 f_15@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@4 Mask@@6) (IsPredicateField_11405_52619 pm_f_10@@4))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_17707) (ExhaleHeap@@5 T@PolymorphicMapType_17707) (Mask@@7 T@PolymorphicMapType_17728) (pm_f_10@@5 T@Field_28812_28813) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@5 Mask@@7) (=> (and (HasDirectPerm_11554_11555 Mask@@7 null pm_f_10@@5) (IsWandField_11554_56304 pm_f_10@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_10@@19 T@Ref) (f_15@@19 T@Field_23805_3229) ) (!  (=> (select (|PolymorphicMapType_18256_11405_3229#PolymorphicMapType_18256| (select (|PolymorphicMapType_17707_11558_32814#PolymorphicMapType_17707| Heap@@14) null (WandMaskField_11554 pm_f_10@@5))) o2_10@@19 f_15@@19) (= (select (|PolymorphicMapType_17707_11405_3229#PolymorphicMapType_17707| Heap@@14) o2_10@@19 f_15@@19) (select (|PolymorphicMapType_17707_11405_3229#PolymorphicMapType_17707| ExhaleHeap@@5) o2_10@@19 f_15@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17707_11405_3229#PolymorphicMapType_17707| ExhaleHeap@@5) o2_10@@19 f_15@@19))
)) (forall ((o2_10@@20 T@Ref) (f_15@@20 T@Field_17767_53) ) (!  (=> (select (|PolymorphicMapType_18256_11405_53#PolymorphicMapType_18256| (select (|PolymorphicMapType_17707_11558_32814#PolymorphicMapType_17707| Heap@@14) null (WandMaskField_11554 pm_f_10@@5))) o2_10@@20 f_15@@20) (= (select (|PolymorphicMapType_17707_11197_53#PolymorphicMapType_17707| Heap@@14) o2_10@@20 f_15@@20) (select (|PolymorphicMapType_17707_11197_53#PolymorphicMapType_17707| ExhaleHeap@@5) o2_10@@20 f_15@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17707_11197_53#PolymorphicMapType_17707| ExhaleHeap@@5) o2_10@@20 f_15@@20))
))) (forall ((o2_10@@21 T@Ref) (f_15@@21 T@Field_17780_17781) ) (!  (=> (select (|PolymorphicMapType_18256_11405_17781#PolymorphicMapType_18256| (select (|PolymorphicMapType_17707_11558_32814#PolymorphicMapType_17707| Heap@@14) null (WandMaskField_11554 pm_f_10@@5))) o2_10@@21 f_15@@21) (= (select (|PolymorphicMapType_17707_11200_11201#PolymorphicMapType_17707| Heap@@14) o2_10@@21 f_15@@21) (select (|PolymorphicMapType_17707_11200_11201#PolymorphicMapType_17707| ExhaleHeap@@5) o2_10@@21 f_15@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17707_11200_11201#PolymorphicMapType_17707| ExhaleHeap@@5) o2_10@@21 f_15@@21))
))) (forall ((o2_10@@22 T@Ref) (f_15@@22 T@Field_11405_11555) ) (!  (=> (select (|PolymorphicMapType_18256_11405_28813#PolymorphicMapType_18256| (select (|PolymorphicMapType_17707_11558_32814#PolymorphicMapType_17707| Heap@@14) null (WandMaskField_11554 pm_f_10@@5))) o2_10@@22 f_15@@22) (= (select (|PolymorphicMapType_17707_11405_11555#PolymorphicMapType_17707| Heap@@14) o2_10@@22 f_15@@22) (select (|PolymorphicMapType_17707_11405_11555#PolymorphicMapType_17707| ExhaleHeap@@5) o2_10@@22 f_15@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17707_11405_11555#PolymorphicMapType_17707| ExhaleHeap@@5) o2_10@@22 f_15@@22))
))) (forall ((o2_10@@23 T@Ref) (f_15@@23 T@Field_11405_32727) ) (!  (=> (select (|PolymorphicMapType_18256_11405_54091#PolymorphicMapType_18256| (select (|PolymorphicMapType_17707_11558_32814#PolymorphicMapType_17707| Heap@@14) null (WandMaskField_11554 pm_f_10@@5))) o2_10@@23 f_15@@23) (= (select (|PolymorphicMapType_17707_11405_51275#PolymorphicMapType_17707| Heap@@14) o2_10@@23 f_15@@23) (select (|PolymorphicMapType_17707_11405_51275#PolymorphicMapType_17707| ExhaleHeap@@5) o2_10@@23 f_15@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17707_11405_51275#PolymorphicMapType_17707| ExhaleHeap@@5) o2_10@@23 f_15@@23))
))) (forall ((o2_10@@24 T@Ref) (f_15@@24 T@Field_11554_3229) ) (!  (=> (select (|PolymorphicMapType_18256_28812_3229#PolymorphicMapType_18256| (select (|PolymorphicMapType_17707_11558_32814#PolymorphicMapType_17707| Heap@@14) null (WandMaskField_11554 pm_f_10@@5))) o2_10@@24 f_15@@24) (= (select (|PolymorphicMapType_17707_11554_3229#PolymorphicMapType_17707| Heap@@14) o2_10@@24 f_15@@24) (select (|PolymorphicMapType_17707_11554_3229#PolymorphicMapType_17707| ExhaleHeap@@5) o2_10@@24 f_15@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17707_11554_3229#PolymorphicMapType_17707| ExhaleHeap@@5) o2_10@@24 f_15@@24))
))) (forall ((o2_10@@25 T@Ref) (f_15@@25 T@Field_11554_53) ) (!  (=> (select (|PolymorphicMapType_18256_28812_53#PolymorphicMapType_18256| (select (|PolymorphicMapType_17707_11558_32814#PolymorphicMapType_17707| Heap@@14) null (WandMaskField_11554 pm_f_10@@5))) o2_10@@25 f_15@@25) (= (select (|PolymorphicMapType_17707_11554_53#PolymorphicMapType_17707| Heap@@14) o2_10@@25 f_15@@25) (select (|PolymorphicMapType_17707_11554_53#PolymorphicMapType_17707| ExhaleHeap@@5) o2_10@@25 f_15@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17707_11554_53#PolymorphicMapType_17707| ExhaleHeap@@5) o2_10@@25 f_15@@25))
))) (forall ((o2_10@@26 T@Ref) (f_15@@26 T@Field_11554_17781) ) (!  (=> (select (|PolymorphicMapType_18256_28812_17781#PolymorphicMapType_18256| (select (|PolymorphicMapType_17707_11558_32814#PolymorphicMapType_17707| Heap@@14) null (WandMaskField_11554 pm_f_10@@5))) o2_10@@26 f_15@@26) (= (select (|PolymorphicMapType_17707_11554_17781#PolymorphicMapType_17707| Heap@@14) o2_10@@26 f_15@@26) (select (|PolymorphicMapType_17707_11554_17781#PolymorphicMapType_17707| ExhaleHeap@@5) o2_10@@26 f_15@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17707_11554_17781#PolymorphicMapType_17707| ExhaleHeap@@5) o2_10@@26 f_15@@26))
))) (forall ((o2_10@@27 T@Ref) (f_15@@27 T@Field_28812_28813) ) (!  (=> (select (|PolymorphicMapType_18256_28812_28813#PolymorphicMapType_18256| (select (|PolymorphicMapType_17707_11558_32814#PolymorphicMapType_17707| Heap@@14) null (WandMaskField_11554 pm_f_10@@5))) o2_10@@27 f_15@@27) (= (select (|PolymorphicMapType_17707_11554_11555#PolymorphicMapType_17707| Heap@@14) o2_10@@27 f_15@@27) (select (|PolymorphicMapType_17707_11554_11555#PolymorphicMapType_17707| ExhaleHeap@@5) o2_10@@27 f_15@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17707_11554_11555#PolymorphicMapType_17707| ExhaleHeap@@5) o2_10@@27 f_15@@27))
))) (forall ((o2_10@@28 T@Ref) (f_15@@28 T@Field_32722_32727) ) (!  (=> (select (|PolymorphicMapType_18256_28812_55139#PolymorphicMapType_18256| (select (|PolymorphicMapType_17707_11558_32814#PolymorphicMapType_17707| Heap@@14) null (WandMaskField_11554 pm_f_10@@5))) o2_10@@28 f_15@@28) (= (select (|PolymorphicMapType_17707_11558_32814#PolymorphicMapType_17707| Heap@@14) o2_10@@28 f_15@@28) (select (|PolymorphicMapType_17707_11558_32814#PolymorphicMapType_17707| ExhaleHeap@@5) o2_10@@28 f_15@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17707_11558_32814#PolymorphicMapType_17707| ExhaleHeap@@5) o2_10@@28 f_15@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@5 Mask@@7) (IsWandField_11554_56304 pm_f_10@@5))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_17707) (ExhaleHeap@@6 T@PolymorphicMapType_17707) (Mask@@8 T@PolymorphicMapType_17728) (pm_f_10@@6 T@Field_11405_11555) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@6 Mask@@8) (=> (and (HasDirectPerm_11405_11555 Mask@@8 null pm_f_10@@6) (IsWandField_11405_55947 pm_f_10@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_10@@29 T@Ref) (f_15@@29 T@Field_23805_3229) ) (!  (=> (select (|PolymorphicMapType_18256_11405_3229#PolymorphicMapType_18256| (select (|PolymorphicMapType_17707_11405_51275#PolymorphicMapType_17707| Heap@@15) null (WandMaskField_11405 pm_f_10@@6))) o2_10@@29 f_15@@29) (= (select (|PolymorphicMapType_17707_11405_3229#PolymorphicMapType_17707| Heap@@15) o2_10@@29 f_15@@29) (select (|PolymorphicMapType_17707_11405_3229#PolymorphicMapType_17707| ExhaleHeap@@6) o2_10@@29 f_15@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17707_11405_3229#PolymorphicMapType_17707| ExhaleHeap@@6) o2_10@@29 f_15@@29))
)) (forall ((o2_10@@30 T@Ref) (f_15@@30 T@Field_17767_53) ) (!  (=> (select (|PolymorphicMapType_18256_11405_53#PolymorphicMapType_18256| (select (|PolymorphicMapType_17707_11405_51275#PolymorphicMapType_17707| Heap@@15) null (WandMaskField_11405 pm_f_10@@6))) o2_10@@30 f_15@@30) (= (select (|PolymorphicMapType_17707_11197_53#PolymorphicMapType_17707| Heap@@15) o2_10@@30 f_15@@30) (select (|PolymorphicMapType_17707_11197_53#PolymorphicMapType_17707| ExhaleHeap@@6) o2_10@@30 f_15@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17707_11197_53#PolymorphicMapType_17707| ExhaleHeap@@6) o2_10@@30 f_15@@30))
))) (forall ((o2_10@@31 T@Ref) (f_15@@31 T@Field_17780_17781) ) (!  (=> (select (|PolymorphicMapType_18256_11405_17781#PolymorphicMapType_18256| (select (|PolymorphicMapType_17707_11405_51275#PolymorphicMapType_17707| Heap@@15) null (WandMaskField_11405 pm_f_10@@6))) o2_10@@31 f_15@@31) (= (select (|PolymorphicMapType_17707_11200_11201#PolymorphicMapType_17707| Heap@@15) o2_10@@31 f_15@@31) (select (|PolymorphicMapType_17707_11200_11201#PolymorphicMapType_17707| ExhaleHeap@@6) o2_10@@31 f_15@@31)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17707_11200_11201#PolymorphicMapType_17707| ExhaleHeap@@6) o2_10@@31 f_15@@31))
))) (forall ((o2_10@@32 T@Ref) (f_15@@32 T@Field_11405_11555) ) (!  (=> (select (|PolymorphicMapType_18256_11405_28813#PolymorphicMapType_18256| (select (|PolymorphicMapType_17707_11405_51275#PolymorphicMapType_17707| Heap@@15) null (WandMaskField_11405 pm_f_10@@6))) o2_10@@32 f_15@@32) (= (select (|PolymorphicMapType_17707_11405_11555#PolymorphicMapType_17707| Heap@@15) o2_10@@32 f_15@@32) (select (|PolymorphicMapType_17707_11405_11555#PolymorphicMapType_17707| ExhaleHeap@@6) o2_10@@32 f_15@@32)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17707_11405_11555#PolymorphicMapType_17707| ExhaleHeap@@6) o2_10@@32 f_15@@32))
))) (forall ((o2_10@@33 T@Ref) (f_15@@33 T@Field_11405_32727) ) (!  (=> (select (|PolymorphicMapType_18256_11405_54091#PolymorphicMapType_18256| (select (|PolymorphicMapType_17707_11405_51275#PolymorphicMapType_17707| Heap@@15) null (WandMaskField_11405 pm_f_10@@6))) o2_10@@33 f_15@@33) (= (select (|PolymorphicMapType_17707_11405_51275#PolymorphicMapType_17707| Heap@@15) o2_10@@33 f_15@@33) (select (|PolymorphicMapType_17707_11405_51275#PolymorphicMapType_17707| ExhaleHeap@@6) o2_10@@33 f_15@@33)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17707_11405_51275#PolymorphicMapType_17707| ExhaleHeap@@6) o2_10@@33 f_15@@33))
))) (forall ((o2_10@@34 T@Ref) (f_15@@34 T@Field_11554_3229) ) (!  (=> (select (|PolymorphicMapType_18256_28812_3229#PolymorphicMapType_18256| (select (|PolymorphicMapType_17707_11405_51275#PolymorphicMapType_17707| Heap@@15) null (WandMaskField_11405 pm_f_10@@6))) o2_10@@34 f_15@@34) (= (select (|PolymorphicMapType_17707_11554_3229#PolymorphicMapType_17707| Heap@@15) o2_10@@34 f_15@@34) (select (|PolymorphicMapType_17707_11554_3229#PolymorphicMapType_17707| ExhaleHeap@@6) o2_10@@34 f_15@@34)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17707_11554_3229#PolymorphicMapType_17707| ExhaleHeap@@6) o2_10@@34 f_15@@34))
))) (forall ((o2_10@@35 T@Ref) (f_15@@35 T@Field_11554_53) ) (!  (=> (select (|PolymorphicMapType_18256_28812_53#PolymorphicMapType_18256| (select (|PolymorphicMapType_17707_11405_51275#PolymorphicMapType_17707| Heap@@15) null (WandMaskField_11405 pm_f_10@@6))) o2_10@@35 f_15@@35) (= (select (|PolymorphicMapType_17707_11554_53#PolymorphicMapType_17707| Heap@@15) o2_10@@35 f_15@@35) (select (|PolymorphicMapType_17707_11554_53#PolymorphicMapType_17707| ExhaleHeap@@6) o2_10@@35 f_15@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17707_11554_53#PolymorphicMapType_17707| ExhaleHeap@@6) o2_10@@35 f_15@@35))
))) (forall ((o2_10@@36 T@Ref) (f_15@@36 T@Field_11554_17781) ) (!  (=> (select (|PolymorphicMapType_18256_28812_17781#PolymorphicMapType_18256| (select (|PolymorphicMapType_17707_11405_51275#PolymorphicMapType_17707| Heap@@15) null (WandMaskField_11405 pm_f_10@@6))) o2_10@@36 f_15@@36) (= (select (|PolymorphicMapType_17707_11554_17781#PolymorphicMapType_17707| Heap@@15) o2_10@@36 f_15@@36) (select (|PolymorphicMapType_17707_11554_17781#PolymorphicMapType_17707| ExhaleHeap@@6) o2_10@@36 f_15@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17707_11554_17781#PolymorphicMapType_17707| ExhaleHeap@@6) o2_10@@36 f_15@@36))
))) (forall ((o2_10@@37 T@Ref) (f_15@@37 T@Field_28812_28813) ) (!  (=> (select (|PolymorphicMapType_18256_28812_28813#PolymorphicMapType_18256| (select (|PolymorphicMapType_17707_11405_51275#PolymorphicMapType_17707| Heap@@15) null (WandMaskField_11405 pm_f_10@@6))) o2_10@@37 f_15@@37) (= (select (|PolymorphicMapType_17707_11554_11555#PolymorphicMapType_17707| Heap@@15) o2_10@@37 f_15@@37) (select (|PolymorphicMapType_17707_11554_11555#PolymorphicMapType_17707| ExhaleHeap@@6) o2_10@@37 f_15@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17707_11554_11555#PolymorphicMapType_17707| ExhaleHeap@@6) o2_10@@37 f_15@@37))
))) (forall ((o2_10@@38 T@Ref) (f_15@@38 T@Field_32722_32727) ) (!  (=> (select (|PolymorphicMapType_18256_28812_55139#PolymorphicMapType_18256| (select (|PolymorphicMapType_17707_11405_51275#PolymorphicMapType_17707| Heap@@15) null (WandMaskField_11405 pm_f_10@@6))) o2_10@@38 f_15@@38) (= (select (|PolymorphicMapType_17707_11558_32814#PolymorphicMapType_17707| Heap@@15) o2_10@@38 f_15@@38) (select (|PolymorphicMapType_17707_11558_32814#PolymorphicMapType_17707| ExhaleHeap@@6) o2_10@@38 f_15@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17707_11558_32814#PolymorphicMapType_17707| ExhaleHeap@@6) o2_10@@38 f_15@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@6 Mask@@8) (IsWandField_11405_55947 pm_f_10@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@16 T@PolymorphicMapType_17707) (ExhaleHeap@@7 T@PolymorphicMapType_17707) (Mask@@9 T@PolymorphicMapType_17728) (o_23 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@7 Mask@@9) (=> (select (|PolymorphicMapType_17707_11197_53#PolymorphicMapType_17707| Heap@@16) o_23 $allocated) (select (|PolymorphicMapType_17707_11197_53#PolymorphicMapType_17707| ExhaleHeap@@7) o_23 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@7 Mask@@9) (select (|PolymorphicMapType_17707_11197_53#PolymorphicMapType_17707| ExhaleHeap@@7) o_23 $allocated))
)))
(assert (forall ((p T@Field_28812_28813) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_28812_28812 p v_1 p w))
 :qid |stdinbpl.219:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_28812_28812 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_11405_11555) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_17767_17767 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.219:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_17767_17767 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((s0 T@Seq_23852) (s1 T@Seq_23852) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_11421|)) (not (= s1 |Seq#Empty_11421|))) (<= (|Seq#Length_11421| s0) n@@13)) (< n@@13 (|Seq#Length_11421| (|Seq#Append_23852| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_11421| s0)) (|Seq#Length_11421| s0)) n@@13) (= (|Seq#Index_11421| (|Seq#Append_23852| s0 s1) n@@13) (|Seq#Index_11421| s1 (|Seq#Sub| n@@13 (|Seq#Length_11421| s0))))))
 :qid |stdinbpl.288:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_11421| (|Seq#Append_23852| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3107) (s1@@0 T@Seq_3107) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3107|)) (not (= s1@@0 |Seq#Empty_3107|))) (<= (|Seq#Length_3107| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3107| (|Seq#Append_3107| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3107| s0@@0)) (|Seq#Length_3107| s0@@0)) n@@14) (= (|Seq#Index_3107| (|Seq#Append_3107| s0@@0 s1@@0) n@@14) (|Seq#Index_3107| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3107| s0@@0))))))
 :qid |stdinbpl.288:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3107| (|Seq#Append_3107| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_11405_3229 f_7)))
(assert  (not (IsWandField_11405_3229 f_7)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_17707) (ExhaleHeap@@8 T@PolymorphicMapType_17707) (Mask@@10 T@PolymorphicMapType_17728) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@8 Mask@@10) (succHeap Heap@@17 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@8 Mask@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_17728) (o_2@@9 T@Ref) (f_4@@9 T@Field_32722_32727) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_17728_11554_60944#PolymorphicMapType_17728| Mask@@11) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_11554_63236 f_4@@9))) (not (IsWandField_11554_63252 f_4@@9))) (<= (select (|PolymorphicMapType_17728_11554_60944#PolymorphicMapType_17728| Mask@@11) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_17728_11554_60944#PolymorphicMapType_17728| Mask@@11) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_17728) (o_2@@10 T@Ref) (f_4@@10 T@Field_11554_17781) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_17728_11554_17781#PolymorphicMapType_17728| Mask@@12) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_11554_17781 f_4@@10))) (not (IsWandField_11554_17781 f_4@@10))) (<= (select (|PolymorphicMapType_17728_11554_17781#PolymorphicMapType_17728| Mask@@12) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_17728_11554_17781#PolymorphicMapType_17728| Mask@@12) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_17728) (o_2@@11 T@Ref) (f_4@@11 T@Field_11554_53) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_17728_11554_53#PolymorphicMapType_17728| Mask@@13) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_11554_53 f_4@@11))) (not (IsWandField_11554_53 f_4@@11))) (<= (select (|PolymorphicMapType_17728_11554_53#PolymorphicMapType_17728| Mask@@13) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_17728_11554_53#PolymorphicMapType_17728| Mask@@13) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_17728) (o_2@@12 T@Ref) (f_4@@12 T@Field_28812_28813) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_17728_11554_11555#PolymorphicMapType_17728| Mask@@14) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_11554_11555 f_4@@12))) (not (IsWandField_11554_56304 f_4@@12))) (<= (select (|PolymorphicMapType_17728_11554_11555#PolymorphicMapType_17728| Mask@@14) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_17728_11554_11555#PolymorphicMapType_17728| Mask@@14) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_17728) (o_2@@13 T@Ref) (f_4@@13 T@Field_11554_3229) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_17728_11554_3229#PolymorphicMapType_17728| Mask@@15) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_11554_3229 f_4@@13))) (not (IsWandField_11554_3229 f_4@@13))) (<= (select (|PolymorphicMapType_17728_11554_3229#PolymorphicMapType_17728| Mask@@15) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_17728_11554_3229#PolymorphicMapType_17728| Mask@@15) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_17728) (o_2@@14 T@Ref) (f_4@@14 T@Field_11405_32727) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_17728_11405_60533#PolymorphicMapType_17728| Mask@@16) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_11405_62405 f_4@@14))) (not (IsWandField_11405_62421 f_4@@14))) (<= (select (|PolymorphicMapType_17728_11405_60533#PolymorphicMapType_17728| Mask@@16) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_17728_11405_60533#PolymorphicMapType_17728| Mask@@16) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_17728) (o_2@@15 T@Ref) (f_4@@15 T@Field_17780_17781) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_17728_11405_17781#PolymorphicMapType_17728| Mask@@17) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_11405_17781 f_4@@15))) (not (IsWandField_11405_17781 f_4@@15))) (<= (select (|PolymorphicMapType_17728_11405_17781#PolymorphicMapType_17728| Mask@@17) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_17728_11405_17781#PolymorphicMapType_17728| Mask@@17) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_17728) (o_2@@16 T@Ref) (f_4@@16 T@Field_17767_53) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_17728_11405_53#PolymorphicMapType_17728| Mask@@18) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_11405_53 f_4@@16))) (not (IsWandField_11405_53 f_4@@16))) (<= (select (|PolymorphicMapType_17728_11405_53#PolymorphicMapType_17728| Mask@@18) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_17728_11405_53#PolymorphicMapType_17728| Mask@@18) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_17728) (o_2@@17 T@Ref) (f_4@@17 T@Field_11405_11555) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_17728_11405_11555#PolymorphicMapType_17728| Mask@@19) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_11405_52619 f_4@@17))) (not (IsWandField_11405_55947 f_4@@17))) (<= (select (|PolymorphicMapType_17728_11405_11555#PolymorphicMapType_17728| Mask@@19) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_17728_11405_11555#PolymorphicMapType_17728| Mask@@19) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_17728) (o_2@@18 T@Ref) (f_4@@18 T@Field_23805_3229) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_17728_11405_3229#PolymorphicMapType_17728| Mask@@20) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_11405_3229 f_4@@18))) (not (IsWandField_11405_3229 f_4@@18))) (<= (select (|PolymorphicMapType_17728_11405_3229#PolymorphicMapType_17728| Mask@@20) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_17728_11405_3229#PolymorphicMapType_17728| Mask@@20) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_17728) (o_2@@19 T@Ref) (f_4@@19 T@Field_32722_32727) ) (! (= (HasDirectPerm_11554_52374 Mask@@21 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_17728_11554_60944#PolymorphicMapType_17728| Mask@@21) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11554_52374 Mask@@21 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_17728) (o_2@@20 T@Ref) (f_4@@20 T@Field_11554_17781) ) (! (= (HasDirectPerm_11554_17781 Mask@@22 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_17728_11554_17781#PolymorphicMapType_17728| Mask@@22) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11554_17781 Mask@@22 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_17728) (o_2@@21 T@Ref) (f_4@@21 T@Field_11554_53) ) (! (= (HasDirectPerm_11554_53 Mask@@23 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_17728_11554_53#PolymorphicMapType_17728| Mask@@23) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11554_53 Mask@@23 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_17728) (o_2@@22 T@Ref) (f_4@@22 T@Field_28812_28813) ) (! (= (HasDirectPerm_11554_11555 Mask@@24 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_17728_11554_11555#PolymorphicMapType_17728| Mask@@24) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11554_11555 Mask@@24 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_17728) (o_2@@23 T@Ref) (f_4@@23 T@Field_11554_3229) ) (! (= (HasDirectPerm_11554_3229 Mask@@25 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_17728_11554_3229#PolymorphicMapType_17728| Mask@@25) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11554_3229 Mask@@25 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_17728) (o_2@@24 T@Ref) (f_4@@24 T@Field_11405_32727) ) (! (= (HasDirectPerm_11405_51233 Mask@@26 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_17728_11405_60533#PolymorphicMapType_17728| Mask@@26) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11405_51233 Mask@@26 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_17728) (o_2@@25 T@Ref) (f_4@@25 T@Field_17780_17781) ) (! (= (HasDirectPerm_11405_17781 Mask@@27 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_17728_11405_17781#PolymorphicMapType_17728| Mask@@27) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11405_17781 Mask@@27 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_17728) (o_2@@26 T@Ref) (f_4@@26 T@Field_17767_53) ) (! (= (HasDirectPerm_11405_53 Mask@@28 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_17728_11405_53#PolymorphicMapType_17728| Mask@@28) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11405_53 Mask@@28 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_17728) (o_2@@27 T@Ref) (f_4@@27 T@Field_11405_11555) ) (! (= (HasDirectPerm_11405_11555 Mask@@29 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_17728_11405_11555#PolymorphicMapType_17728| Mask@@29) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11405_11555 Mask@@29 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_17728) (o_2@@28 T@Ref) (f_4@@28 T@Field_23805_3229) ) (! (= (HasDirectPerm_11405_3229 Mask@@30 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_17728_11405_3229#PolymorphicMapType_17728| Mask@@30) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11405_3229 Mask@@30 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.207:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3107| (|Seq#Range| q@min@@0 q@max@@0) j@@7) (+ q@min@@0 j@@7)))
 :qid |stdinbpl.580:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3107| (|Seq#Range| q@min@@0 q@max@@0) j@@7))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_17707) (ExhaleHeap@@9 T@PolymorphicMapType_17707) (Mask@@31 T@PolymorphicMapType_17728) (o_23@@0 T@Ref) (f_15@@39 T@Field_32722_32727) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@9 Mask@@31) (=> (HasDirectPerm_11554_52374 Mask@@31 o_23@@0 f_15@@39) (= (select (|PolymorphicMapType_17707_11558_32814#PolymorphicMapType_17707| Heap@@18) o_23@@0 f_15@@39) (select (|PolymorphicMapType_17707_11558_32814#PolymorphicMapType_17707| ExhaleHeap@@9) o_23@@0 f_15@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@9 Mask@@31) (select (|PolymorphicMapType_17707_11558_32814#PolymorphicMapType_17707| ExhaleHeap@@9) o_23@@0 f_15@@39))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_17707) (ExhaleHeap@@10 T@PolymorphicMapType_17707) (Mask@@32 T@PolymorphicMapType_17728) (o_23@@1 T@Ref) (f_15@@40 T@Field_11554_17781) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@10 Mask@@32) (=> (HasDirectPerm_11554_17781 Mask@@32 o_23@@1 f_15@@40) (= (select (|PolymorphicMapType_17707_11554_17781#PolymorphicMapType_17707| Heap@@19) o_23@@1 f_15@@40) (select (|PolymorphicMapType_17707_11554_17781#PolymorphicMapType_17707| ExhaleHeap@@10) o_23@@1 f_15@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@10 Mask@@32) (select (|PolymorphicMapType_17707_11554_17781#PolymorphicMapType_17707| ExhaleHeap@@10) o_23@@1 f_15@@40))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_17707) (ExhaleHeap@@11 T@PolymorphicMapType_17707) (Mask@@33 T@PolymorphicMapType_17728) (o_23@@2 T@Ref) (f_15@@41 T@Field_11554_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@11 Mask@@33) (=> (HasDirectPerm_11554_53 Mask@@33 o_23@@2 f_15@@41) (= (select (|PolymorphicMapType_17707_11554_53#PolymorphicMapType_17707| Heap@@20) o_23@@2 f_15@@41) (select (|PolymorphicMapType_17707_11554_53#PolymorphicMapType_17707| ExhaleHeap@@11) o_23@@2 f_15@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@11 Mask@@33) (select (|PolymorphicMapType_17707_11554_53#PolymorphicMapType_17707| ExhaleHeap@@11) o_23@@2 f_15@@41))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_17707) (ExhaleHeap@@12 T@PolymorphicMapType_17707) (Mask@@34 T@PolymorphicMapType_17728) (o_23@@3 T@Ref) (f_15@@42 T@Field_28812_28813) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@12 Mask@@34) (=> (HasDirectPerm_11554_11555 Mask@@34 o_23@@3 f_15@@42) (= (select (|PolymorphicMapType_17707_11554_11555#PolymorphicMapType_17707| Heap@@21) o_23@@3 f_15@@42) (select (|PolymorphicMapType_17707_11554_11555#PolymorphicMapType_17707| ExhaleHeap@@12) o_23@@3 f_15@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@12 Mask@@34) (select (|PolymorphicMapType_17707_11554_11555#PolymorphicMapType_17707| ExhaleHeap@@12) o_23@@3 f_15@@42))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_17707) (ExhaleHeap@@13 T@PolymorphicMapType_17707) (Mask@@35 T@PolymorphicMapType_17728) (o_23@@4 T@Ref) (f_15@@43 T@Field_11554_3229) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@13 Mask@@35) (=> (HasDirectPerm_11554_3229 Mask@@35 o_23@@4 f_15@@43) (= (select (|PolymorphicMapType_17707_11554_3229#PolymorphicMapType_17707| Heap@@22) o_23@@4 f_15@@43) (select (|PolymorphicMapType_17707_11554_3229#PolymorphicMapType_17707| ExhaleHeap@@13) o_23@@4 f_15@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@13 Mask@@35) (select (|PolymorphicMapType_17707_11554_3229#PolymorphicMapType_17707| ExhaleHeap@@13) o_23@@4 f_15@@43))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_17707) (ExhaleHeap@@14 T@PolymorphicMapType_17707) (Mask@@36 T@PolymorphicMapType_17728) (o_23@@5 T@Ref) (f_15@@44 T@Field_11405_32727) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@14 Mask@@36) (=> (HasDirectPerm_11405_51233 Mask@@36 o_23@@5 f_15@@44) (= (select (|PolymorphicMapType_17707_11405_51275#PolymorphicMapType_17707| Heap@@23) o_23@@5 f_15@@44) (select (|PolymorphicMapType_17707_11405_51275#PolymorphicMapType_17707| ExhaleHeap@@14) o_23@@5 f_15@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@14 Mask@@36) (select (|PolymorphicMapType_17707_11405_51275#PolymorphicMapType_17707| ExhaleHeap@@14) o_23@@5 f_15@@44))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_17707) (ExhaleHeap@@15 T@PolymorphicMapType_17707) (Mask@@37 T@PolymorphicMapType_17728) (o_23@@6 T@Ref) (f_15@@45 T@Field_17780_17781) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@15 Mask@@37) (=> (HasDirectPerm_11405_17781 Mask@@37 o_23@@6 f_15@@45) (= (select (|PolymorphicMapType_17707_11200_11201#PolymorphicMapType_17707| Heap@@24) o_23@@6 f_15@@45) (select (|PolymorphicMapType_17707_11200_11201#PolymorphicMapType_17707| ExhaleHeap@@15) o_23@@6 f_15@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@15 Mask@@37) (select (|PolymorphicMapType_17707_11200_11201#PolymorphicMapType_17707| ExhaleHeap@@15) o_23@@6 f_15@@45))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_17707) (ExhaleHeap@@16 T@PolymorphicMapType_17707) (Mask@@38 T@PolymorphicMapType_17728) (o_23@@7 T@Ref) (f_15@@46 T@Field_17767_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@16 Mask@@38) (=> (HasDirectPerm_11405_53 Mask@@38 o_23@@7 f_15@@46) (= (select (|PolymorphicMapType_17707_11197_53#PolymorphicMapType_17707| Heap@@25) o_23@@7 f_15@@46) (select (|PolymorphicMapType_17707_11197_53#PolymorphicMapType_17707| ExhaleHeap@@16) o_23@@7 f_15@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@16 Mask@@38) (select (|PolymorphicMapType_17707_11197_53#PolymorphicMapType_17707| ExhaleHeap@@16) o_23@@7 f_15@@46))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_17707) (ExhaleHeap@@17 T@PolymorphicMapType_17707) (Mask@@39 T@PolymorphicMapType_17728) (o_23@@8 T@Ref) (f_15@@47 T@Field_11405_11555) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@17 Mask@@39) (=> (HasDirectPerm_11405_11555 Mask@@39 o_23@@8 f_15@@47) (= (select (|PolymorphicMapType_17707_11405_11555#PolymorphicMapType_17707| Heap@@26) o_23@@8 f_15@@47) (select (|PolymorphicMapType_17707_11405_11555#PolymorphicMapType_17707| ExhaleHeap@@17) o_23@@8 f_15@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@17 Mask@@39) (select (|PolymorphicMapType_17707_11405_11555#PolymorphicMapType_17707| ExhaleHeap@@17) o_23@@8 f_15@@47))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_17707) (ExhaleHeap@@18 T@PolymorphicMapType_17707) (Mask@@40 T@PolymorphicMapType_17728) (o_23@@9 T@Ref) (f_15@@48 T@Field_23805_3229) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@18 Mask@@40) (=> (HasDirectPerm_11405_3229 Mask@@40 o_23@@9 f_15@@48) (= (select (|PolymorphicMapType_17707_11405_3229#PolymorphicMapType_17707| Heap@@27) o_23@@9 f_15@@48) (select (|PolymorphicMapType_17707_11405_3229#PolymorphicMapType_17707| ExhaleHeap@@18) o_23@@9 f_15@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@18 Mask@@40) (select (|PolymorphicMapType_17707_11405_3229#PolymorphicMapType_17707| ExhaleHeap@@18) o_23@@9 f_15@@48))
)))
(assert (forall ((s0@@1 T@Seq_23852) (s1@@1 T@Seq_23852) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_11421|)) (not (= s1@@1 |Seq#Empty_11421|))) (= (|Seq#Length_11421| (|Seq#Append_23852| s0@@1 s1@@1)) (+ (|Seq#Length_11421| s0@@1) (|Seq#Length_11421| s1@@1))))
 :qid |stdinbpl.257:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_11421| (|Seq#Append_23852| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3107) (s1@@2 T@Seq_3107) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3107|)) (not (= s1@@2 |Seq#Empty_3107|))) (= (|Seq#Length_3107| (|Seq#Append_3107| s0@@2 s1@@2)) (+ (|Seq#Length_3107| s0@@2) (|Seq#Length_3107| s1@@2))))
 :qid |stdinbpl.257:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3107| (|Seq#Append_3107| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_32722_32727) ) (! (= (select (|PolymorphicMapType_17728_11554_60944#PolymorphicMapType_17728| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17728_11554_60944#PolymorphicMapType_17728| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_11554_17781) ) (! (= (select (|PolymorphicMapType_17728_11554_17781#PolymorphicMapType_17728| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17728_11554_17781#PolymorphicMapType_17728| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_11554_53) ) (! (= (select (|PolymorphicMapType_17728_11554_53#PolymorphicMapType_17728| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17728_11554_53#PolymorphicMapType_17728| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_28812_28813) ) (! (= (select (|PolymorphicMapType_17728_11554_11555#PolymorphicMapType_17728| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17728_11554_11555#PolymorphicMapType_17728| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_11554_3229) ) (! (= (select (|PolymorphicMapType_17728_11554_3229#PolymorphicMapType_17728| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17728_11554_3229#PolymorphicMapType_17728| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_11405_32727) ) (! (= (select (|PolymorphicMapType_17728_11405_60533#PolymorphicMapType_17728| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17728_11405_60533#PolymorphicMapType_17728| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_17780_17781) ) (! (= (select (|PolymorphicMapType_17728_11405_17781#PolymorphicMapType_17728| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17728_11405_17781#PolymorphicMapType_17728| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_17767_53) ) (! (= (select (|PolymorphicMapType_17728_11405_53#PolymorphicMapType_17728| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17728_11405_53#PolymorphicMapType_17728| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_11405_11555) ) (! (= (select (|PolymorphicMapType_17728_11405_11555#PolymorphicMapType_17728| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17728_11405_11555#PolymorphicMapType_17728| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_23805_3229) ) (! (= (select (|PolymorphicMapType_17728_11405_3229#PolymorphicMapType_17728| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17728_11405_3229#PolymorphicMapType_17728| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((s@@15 T@Seq_23852) (t@@1 T@Seq_23852) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_11421| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_11421| s@@15)) (|Seq#Length_11421| s@@15)) n@@15) (= (|Seq#Drop_11421| (|Seq#Append_23852| s@@15 t@@1) n@@15) (|Seq#Drop_11421| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_11421| s@@15))))))
 :qid |stdinbpl.414:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_11421| (|Seq#Append_23852| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3107) (t@@2 T@Seq_3107) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3107| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3107| s@@16)) (|Seq#Length_3107| s@@16)) n@@16) (= (|Seq#Drop_3107| (|Seq#Append_3107| s@@16 t@@2) n@@16) (|Seq#Drop_3107| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3107| s@@16))))))
 :qid |stdinbpl.414:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3107| (|Seq#Append_3107| s@@16 t@@2) n@@16))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_17707) (xs@@1 T@Seq_23852) (j@@8 Int) ) (!  (and (= (fun_f Heap@@28 xs@@1 j@@8) (|fun_f'| Heap@@28 xs@@1 j@@8)) (dummyFunction_3750 (|fun_f#triggerStateless| xs@@1 j@@8)))
 :qid |stdinbpl.603:15|
 :skolemid |58|
 :pattern ( (fun_f Heap@@28 xs@@1 j@@8))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_17707) (xs@@2 T@Seq_23852) (j@@9 Int) ) (!  (and (= (fun_P Heap@@29 xs@@2 j@@9) (|fun_P'| Heap@@29 xs@@2 j@@9)) (dummyFunction_3750 (|fun_P#triggerStateless| xs@@2 j@@9)))
 :qid |stdinbpl.832:15|
 :skolemid |75|
 :pattern ( (fun_P Heap@@29 xs@@2 j@@9))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_17707) (Mask@@41 T@PolymorphicMapType_17728) (xs@@3 T@Seq_23852) (j@@10 Int) ) (!  (=> (state Heap@@30 Mask@@41) (= (|fun_f'| Heap@@30 xs@@3 j@@10) (|fun_f#frame| (FrameFragment_3521 (|fun_f#condqp1| Heap@@30 xs@@3 j@@10)) xs@@3 j@@10)))
 :qid |stdinbpl.623:15|
 :skolemid |62|
 :pattern ( (state Heap@@30 Mask@@41) (|fun_f'| Heap@@30 xs@@3 j@@10))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_17707) (Mask@@42 T@PolymorphicMapType_17728) (xs@@4 T@Seq_23852) (j@@11 Int) ) (!  (=> (state Heap@@31 Mask@@42) (= (|fun_P'| Heap@@31 xs@@4 j@@11) (|fun_P#frame| (FrameFragment_3521 (|fun_P#condqp2| Heap@@31 xs@@4 j@@11)) xs@@4 j@@11)))
 :qid |stdinbpl.852:15|
 :skolemid |79|
 :pattern ( (state Heap@@31 Mask@@42) (|fun_P'| Heap@@31 xs@@4 j@@11))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_17707) (Mask@@43 T@PolymorphicMapType_17728) (xs@@5 T@Seq_23852) (j@@12 Int) ) (!  (=> (and (state Heap@@32 Mask@@43) (< AssumeFunctionsAbove 0)) (=> (and (forall ((ix_8 Int) (jx_8 Int) ) (!  (=> (and (>= ix_8 0) (and (< ix_8 (|Seq#Length_11421| xs@@5)) (and (>= jx_8 0) (and (< jx_8 (|Seq#Length_11421| xs@@5)) (not (= ix_8 jx_8)))))) (not (= (|Seq#Index_11421| xs@@5 ix_8) (|Seq#Index_11421| xs@@5 jx_8))))
 :qid |stdinbpl.615:61|
 :skolemid |60|
 :pattern ( (|Seq#Index_11421| xs@@5 ix_8) (|Seq#Index_11421| xs@@5 jx_8))
)) (and (<= 0 j@@12) (< j@@12 (|Seq#Length_11421| xs@@5)))) (= (fun_f Heap@@32 xs@@5 j@@12) (get_f Heap@@32 (|Seq#Index_11421| xs@@5 j@@12)))))
 :qid |stdinbpl.613:15|
 :skolemid |61|
 :pattern ( (state Heap@@32 Mask@@43) (fun_f Heap@@32 xs@@5 j@@12))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_17707) (Mask@@44 T@PolymorphicMapType_17728) (xs@@6 T@Seq_23852) (j@@13 Int) ) (!  (=> (and (state Heap@@33 Mask@@44) (< AssumeFunctionsAbove 1)) (=> (and (forall ((ix_8@@0 Int) (jx_8@@0 Int) ) (!  (=> (and (>= ix_8@@0 0) (and (< ix_8@@0 (|Seq#Length_11421| xs@@6)) (and (>= jx_8@@0 0) (and (< jx_8@@0 (|Seq#Length_11421| xs@@6)) (not (= ix_8@@0 jx_8@@0)))))) (not (= (|Seq#Index_11421| xs@@6 ix_8@@0) (|Seq#Index_11421| xs@@6 jx_8@@0))))
 :qid |stdinbpl.844:61|
 :skolemid |77|
 :pattern ( (|Seq#Index_11421| xs@@6 ix_8@@0) (|Seq#Index_11421| xs@@6 jx_8@@0))
)) (and (<= 0 j@@13) (< j@@13 (|Seq#Length_11421| xs@@6)))) (= (fun_P Heap@@33 xs@@6 j@@13) (get_P Heap@@33 (|Seq#Index_11421| xs@@6 j@@13)))))
 :qid |stdinbpl.842:15|
 :skolemid |78|
 :pattern ( (state Heap@@33 Mask@@44) (fun_P Heap@@33 xs@@6 j@@13))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_17728) (SummandMask1 T@PolymorphicMapType_17728) (SummandMask2 T@PolymorphicMapType_17728) (o_2@@39 T@Ref) (f_4@@39 T@Field_32722_32727) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_17728_11554_60944#PolymorphicMapType_17728| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_17728_11554_60944#PolymorphicMapType_17728| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_17728_11554_60944#PolymorphicMapType_17728| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_17728_11554_60944#PolymorphicMapType_17728| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_17728_11554_60944#PolymorphicMapType_17728| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_17728_11554_60944#PolymorphicMapType_17728| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_17728) (SummandMask1@@0 T@PolymorphicMapType_17728) (SummandMask2@@0 T@PolymorphicMapType_17728) (o_2@@40 T@Ref) (f_4@@40 T@Field_11554_17781) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_17728_11554_17781#PolymorphicMapType_17728| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_17728_11554_17781#PolymorphicMapType_17728| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_17728_11554_17781#PolymorphicMapType_17728| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_17728_11554_17781#PolymorphicMapType_17728| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_17728_11554_17781#PolymorphicMapType_17728| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_17728_11554_17781#PolymorphicMapType_17728| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_17728) (SummandMask1@@1 T@PolymorphicMapType_17728) (SummandMask2@@1 T@PolymorphicMapType_17728) (o_2@@41 T@Ref) (f_4@@41 T@Field_11554_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_17728_11554_53#PolymorphicMapType_17728| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_17728_11554_53#PolymorphicMapType_17728| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_17728_11554_53#PolymorphicMapType_17728| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_17728_11554_53#PolymorphicMapType_17728| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_17728_11554_53#PolymorphicMapType_17728| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_17728_11554_53#PolymorphicMapType_17728| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_17728) (SummandMask1@@2 T@PolymorphicMapType_17728) (SummandMask2@@2 T@PolymorphicMapType_17728) (o_2@@42 T@Ref) (f_4@@42 T@Field_28812_28813) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_17728_11554_11555#PolymorphicMapType_17728| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_17728_11554_11555#PolymorphicMapType_17728| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_17728_11554_11555#PolymorphicMapType_17728| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_17728_11554_11555#PolymorphicMapType_17728| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_17728_11554_11555#PolymorphicMapType_17728| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_17728_11554_11555#PolymorphicMapType_17728| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_17728) (SummandMask1@@3 T@PolymorphicMapType_17728) (SummandMask2@@3 T@PolymorphicMapType_17728) (o_2@@43 T@Ref) (f_4@@43 T@Field_11554_3229) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_17728_11554_3229#PolymorphicMapType_17728| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_17728_11554_3229#PolymorphicMapType_17728| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_17728_11554_3229#PolymorphicMapType_17728| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_17728_11554_3229#PolymorphicMapType_17728| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_17728_11554_3229#PolymorphicMapType_17728| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_17728_11554_3229#PolymorphicMapType_17728| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_17728) (SummandMask1@@4 T@PolymorphicMapType_17728) (SummandMask2@@4 T@PolymorphicMapType_17728) (o_2@@44 T@Ref) (f_4@@44 T@Field_11405_32727) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_17728_11405_60533#PolymorphicMapType_17728| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_17728_11405_60533#PolymorphicMapType_17728| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_17728_11405_60533#PolymorphicMapType_17728| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_17728_11405_60533#PolymorphicMapType_17728| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_17728_11405_60533#PolymorphicMapType_17728| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_17728_11405_60533#PolymorphicMapType_17728| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_17728) (SummandMask1@@5 T@PolymorphicMapType_17728) (SummandMask2@@5 T@PolymorphicMapType_17728) (o_2@@45 T@Ref) (f_4@@45 T@Field_17780_17781) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_17728_11405_17781#PolymorphicMapType_17728| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_17728_11405_17781#PolymorphicMapType_17728| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_17728_11405_17781#PolymorphicMapType_17728| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_17728_11405_17781#PolymorphicMapType_17728| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_17728_11405_17781#PolymorphicMapType_17728| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_17728_11405_17781#PolymorphicMapType_17728| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_17728) (SummandMask1@@6 T@PolymorphicMapType_17728) (SummandMask2@@6 T@PolymorphicMapType_17728) (o_2@@46 T@Ref) (f_4@@46 T@Field_17767_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_17728_11405_53#PolymorphicMapType_17728| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_17728_11405_53#PolymorphicMapType_17728| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_17728_11405_53#PolymorphicMapType_17728| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_17728_11405_53#PolymorphicMapType_17728| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_17728_11405_53#PolymorphicMapType_17728| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_17728_11405_53#PolymorphicMapType_17728| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_17728) (SummandMask1@@7 T@PolymorphicMapType_17728) (SummandMask2@@7 T@PolymorphicMapType_17728) (o_2@@47 T@Ref) (f_4@@47 T@Field_11405_11555) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_17728_11405_11555#PolymorphicMapType_17728| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_17728_11405_11555#PolymorphicMapType_17728| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_17728_11405_11555#PolymorphicMapType_17728| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_17728_11405_11555#PolymorphicMapType_17728| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_17728_11405_11555#PolymorphicMapType_17728| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_17728_11405_11555#PolymorphicMapType_17728| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_17728) (SummandMask1@@8 T@PolymorphicMapType_17728) (SummandMask2@@8 T@PolymorphicMapType_17728) (o_2@@48 T@Ref) (f_4@@48 T@Field_23805_3229) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_17728_11405_3229#PolymorphicMapType_17728| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_17728_11405_3229#PolymorphicMapType_17728| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_17728_11405_3229#PolymorphicMapType_17728| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_17728_11405_3229#PolymorphicMapType_17728| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_17728_11405_3229#PolymorphicMapType_17728| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_17728_11405_3229#PolymorphicMapType_17728| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3107| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3107| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.579:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3107| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_23852) (b T@Seq_23852) ) (!  (=> (|Seq#Equal_23852| a b) (= a b))
 :qid |stdinbpl.552:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_23852| a b))
)))
(assert (forall ((a@@0 T@Seq_3107) (b@@0 T@Seq_3107) ) (!  (=> (|Seq#Equal_3107| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.552:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3107| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_23852) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_11421| s@@17))) (|Seq#ContainsTrigger_11421| s@@17 (|Seq#Index_11421| s@@17 i@@3)))
 :qid |stdinbpl.445:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_11421| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_3107) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_3107| s@@18))) (|Seq#ContainsTrigger_3107| s@@18 (|Seq#Index_3107| s@@18 i@@4)))
 :qid |stdinbpl.445:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3107| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_23852) (s1@@3 T@Seq_23852) ) (!  (and (=> (= s0@@3 |Seq#Empty_11421|) (= (|Seq#Append_23852| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_11421|) (= (|Seq#Append_23852| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.263:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_23852| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3107) (s1@@4 T@Seq_3107) ) (!  (and (=> (= s0@@4 |Seq#Empty_3107|) (= (|Seq#Append_3107| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3107|) (= (|Seq#Append_3107| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.263:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3107| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_11421| (|Seq#Singleton_11421| t@@3) 0) t@@3)
 :qid |stdinbpl.267:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_11421| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3107| (|Seq#Singleton_3107| t@@4) 0) t@@4)
 :qid |stdinbpl.267:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3107| t@@4))
)))
(assert (forall ((s@@19 T@Seq_23852) ) (! (<= 0 (|Seq#Length_11421| s@@19))
 :qid |stdinbpl.246:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_11421| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3107) ) (! (<= 0 (|Seq#Length_3107| s@@20))
 :qid |stdinbpl.246:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3107| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_23852) (s1@@5 T@Seq_23852) ) (!  (=> (|Seq#Equal_23852| s0@@5 s1@@5) (and (= (|Seq#Length_11421| s0@@5) (|Seq#Length_11421| s1@@5)) (forall ((j@@14 Int) ) (!  (=> (and (<= 0 j@@14) (< j@@14 (|Seq#Length_11421| s0@@5))) (= (|Seq#Index_11421| s0@@5 j@@14) (|Seq#Index_11421| s1@@5 j@@14)))
 :qid |stdinbpl.542:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_11421| s0@@5 j@@14))
 :pattern ( (|Seq#Index_11421| s1@@5 j@@14))
))))
 :qid |stdinbpl.539:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_23852| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3107) (s1@@6 T@Seq_3107) ) (!  (=> (|Seq#Equal_3107| s0@@6 s1@@6) (and (= (|Seq#Length_3107| s0@@6) (|Seq#Length_3107| s1@@6)) (forall ((j@@15 Int) ) (!  (=> (and (<= 0 j@@15) (< j@@15 (|Seq#Length_3107| s0@@6))) (= (|Seq#Index_3107| s0@@6 j@@15) (|Seq#Index_3107| s1@@6 j@@15)))
 :qid |stdinbpl.542:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3107| s0@@6 j@@15))
 :pattern ( (|Seq#Index_3107| s1@@6 j@@15))
))))
 :qid |stdinbpl.539:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3107| s0@@6 s1@@6))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_17707) (Mask@@45 T@PolymorphicMapType_17728) (x@@12 T@Ref) ) (!  (=> (state Heap@@34 Mask@@45) (= (|get_f'| Heap@@34 x@@12) (|get_f#frame| (FrameFragment_3521 (select (|PolymorphicMapType_17707_11405_3229#PolymorphicMapType_17707| Heap@@34) x@@12 f_7)) x@@12)))
 :qid |stdinbpl.784:15|
 :skolemid |74|
 :pattern ( (state Heap@@34 Mask@@45) (|get_f'| Heap@@34 x@@12))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_17707) (Mask@@46 T@PolymorphicMapType_17728) (x@@13 T@Ref) ) (!  (=> (state Heap@@35 Mask@@46) (= (|get_P'| Heap@@35 x@@13) (|get_P#frame| (select (|PolymorphicMapType_17707_11554_11555#PolymorphicMapType_17707| Heap@@35) null (P x@@13)) x@@13)))
 :qid |stdinbpl.1015:15|
 :skolemid |91|
 :pattern ( (state Heap@@35 Mask@@46) (|get_P'| Heap@@35 x@@13))
 :pattern ( (state Heap@@35 Mask@@46) (|get_P#triggerStateless| x@@13) (|P#trigger_11554| Heap@@35 (P x@@13)))
)))
(assert (forall ((x@@14 T@Ref) ) (! (= (getPredWandId_11554_11555 (P x@@14)) 0)
 :qid |stdinbpl.1105:15|
 :skolemid |94|
 :pattern ( (P x@@14))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_11421| (|Seq#Singleton_11421| t@@5)) 1)
 :qid |stdinbpl.254:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_11421| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3107| (|Seq#Singleton_3107| t@@6)) 1)
 :qid |stdinbpl.254:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3107| t@@6))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_17707) (Heap1Heap T@PolymorphicMapType_17707) (xs@@7 T@Seq_23852) (j@@16 Int) ) (!  (=> (and (=  (and (and (<= 0 (|sk_fun_P#condqp2| (|fun_P#condqp2| Heap2Heap xs@@7 j@@16) (|fun_P#condqp2| Heap1Heap xs@@7 j@@16))) (< (|sk_fun_P#condqp2| (|fun_P#condqp2| Heap2Heap xs@@7 j@@16) (|fun_P#condqp2| Heap1Heap xs@@7 j@@16)) (|Seq#Length_11421| xs@@7))) (< NoPerm FullPerm))  (and (and (<= 0 (|sk_fun_P#condqp2| (|fun_P#condqp2| Heap2Heap xs@@7 j@@16) (|fun_P#condqp2| Heap1Heap xs@@7 j@@16))) (< (|sk_fun_P#condqp2| (|fun_P#condqp2| Heap2Heap xs@@7 j@@16) (|fun_P#condqp2| Heap1Heap xs@@7 j@@16)) (|Seq#Length_11421| xs@@7))) (< NoPerm FullPerm))) (=> (and (and (<= 0 (|sk_fun_P#condqp2| (|fun_P#condqp2| Heap2Heap xs@@7 j@@16) (|fun_P#condqp2| Heap1Heap xs@@7 j@@16))) (< (|sk_fun_P#condqp2| (|fun_P#condqp2| Heap2Heap xs@@7 j@@16) (|fun_P#condqp2| Heap1Heap xs@@7 j@@16)) (|Seq#Length_11421| xs@@7))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_17707_11554_11555#PolymorphicMapType_17707| Heap2Heap) null (P (|Seq#Index_11421| xs@@7 (|sk_fun_P#condqp2| (|fun_P#condqp2| Heap2Heap xs@@7 j@@16) (|fun_P#condqp2| Heap1Heap xs@@7 j@@16))))) (select (|PolymorphicMapType_17707_11554_11555#PolymorphicMapType_17707| Heap1Heap) null (P (|Seq#Index_11421| xs@@7 (|sk_fun_P#condqp2| (|fun_P#condqp2| Heap2Heap xs@@7 j@@16) (|fun_P#condqp2| Heap1Heap xs@@7 j@@16)))))))) (= (|fun_P#condqp2| Heap2Heap xs@@7 j@@16) (|fun_P#condqp2| Heap1Heap xs@@7 j@@16)))
 :qid |stdinbpl.862:15|
 :skolemid |80|
 :pattern ( (|fun_P#condqp2| Heap2Heap xs@@7 j@@16) (|fun_P#condqp2| Heap1Heap xs@@7 j@@16) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((s@@21 T@Seq_23852) (t@@7 T@Seq_23852) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_11421| s@@21))) (= (|Seq#Take_11421| (|Seq#Append_23852| s@@21 t@@7) n@@17) (|Seq#Take_11421| s@@21 n@@17)))
 :qid |stdinbpl.396:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_11421| (|Seq#Append_23852| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3107) (t@@8 T@Seq_3107) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3107| s@@22))) (= (|Seq#Take_3107| (|Seq#Append_3107| s@@22 t@@8) n@@18) (|Seq#Take_3107| s@@22 n@@18)))
 :qid |stdinbpl.396:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3107| (|Seq#Append_3107| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_23852) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_11421| s@@23))) (= (|Seq#Length_11421| (|Seq#Update_11421| s@@23 i@@5 v@@2)) (|Seq#Length_11421| s@@23)))
 :qid |stdinbpl.295:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_11421| (|Seq#Update_11421| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_11421| s@@23) (|Seq#Update_11421| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3107) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_3107| s@@24))) (= (|Seq#Length_3107| (|Seq#Update_3107| s@@24 i@@6 v@@3)) (|Seq#Length_3107| s@@24)))
 :qid |stdinbpl.295:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3107| (|Seq#Update_3107| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_3107| s@@24) (|Seq#Update_3107| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_17707) (o_4 T@Ref) (f_25 T@Field_32722_32727) (v@@4 T@PolymorphicMapType_18256) ) (! (succHeap Heap@@36 (PolymorphicMapType_17707 (|PolymorphicMapType_17707_11197_53#PolymorphicMapType_17707| Heap@@36) (|PolymorphicMapType_17707_11200_11201#PolymorphicMapType_17707| Heap@@36) (|PolymorphicMapType_17707_11405_3229#PolymorphicMapType_17707| Heap@@36) (|PolymorphicMapType_17707_11554_11555#PolymorphicMapType_17707| Heap@@36) (store (|PolymorphicMapType_17707_11558_32814#PolymorphicMapType_17707| Heap@@36) o_4 f_25 v@@4) (|PolymorphicMapType_17707_11405_11555#PolymorphicMapType_17707| Heap@@36) (|PolymorphicMapType_17707_11405_51275#PolymorphicMapType_17707| Heap@@36) (|PolymorphicMapType_17707_11554_3229#PolymorphicMapType_17707| Heap@@36) (|PolymorphicMapType_17707_11554_53#PolymorphicMapType_17707| Heap@@36) (|PolymorphicMapType_17707_11554_17781#PolymorphicMapType_17707| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17707 (|PolymorphicMapType_17707_11197_53#PolymorphicMapType_17707| Heap@@36) (|PolymorphicMapType_17707_11200_11201#PolymorphicMapType_17707| Heap@@36) (|PolymorphicMapType_17707_11405_3229#PolymorphicMapType_17707| Heap@@36) (|PolymorphicMapType_17707_11554_11555#PolymorphicMapType_17707| Heap@@36) (store (|PolymorphicMapType_17707_11558_32814#PolymorphicMapType_17707| Heap@@36) o_4 f_25 v@@4) (|PolymorphicMapType_17707_11405_11555#PolymorphicMapType_17707| Heap@@36) (|PolymorphicMapType_17707_11405_51275#PolymorphicMapType_17707| Heap@@36) (|PolymorphicMapType_17707_11554_3229#PolymorphicMapType_17707| Heap@@36) (|PolymorphicMapType_17707_11554_53#PolymorphicMapType_17707| Heap@@36) (|PolymorphicMapType_17707_11554_17781#PolymorphicMapType_17707| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_17707) (o_4@@0 T@Ref) (f_25@@0 T@Field_28812_28813) (v@@5 T@FrameType) ) (! (succHeap Heap@@37 (PolymorphicMapType_17707 (|PolymorphicMapType_17707_11197_53#PolymorphicMapType_17707| Heap@@37) (|PolymorphicMapType_17707_11200_11201#PolymorphicMapType_17707| Heap@@37) (|PolymorphicMapType_17707_11405_3229#PolymorphicMapType_17707| Heap@@37) (store (|PolymorphicMapType_17707_11554_11555#PolymorphicMapType_17707| Heap@@37) o_4@@0 f_25@@0 v@@5) (|PolymorphicMapType_17707_11558_32814#PolymorphicMapType_17707| Heap@@37) (|PolymorphicMapType_17707_11405_11555#PolymorphicMapType_17707| Heap@@37) (|PolymorphicMapType_17707_11405_51275#PolymorphicMapType_17707| Heap@@37) (|PolymorphicMapType_17707_11554_3229#PolymorphicMapType_17707| Heap@@37) (|PolymorphicMapType_17707_11554_53#PolymorphicMapType_17707| Heap@@37) (|PolymorphicMapType_17707_11554_17781#PolymorphicMapType_17707| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17707 (|PolymorphicMapType_17707_11197_53#PolymorphicMapType_17707| Heap@@37) (|PolymorphicMapType_17707_11200_11201#PolymorphicMapType_17707| Heap@@37) (|PolymorphicMapType_17707_11405_3229#PolymorphicMapType_17707| Heap@@37) (store (|PolymorphicMapType_17707_11554_11555#PolymorphicMapType_17707| Heap@@37) o_4@@0 f_25@@0 v@@5) (|PolymorphicMapType_17707_11558_32814#PolymorphicMapType_17707| Heap@@37) (|PolymorphicMapType_17707_11405_11555#PolymorphicMapType_17707| Heap@@37) (|PolymorphicMapType_17707_11405_51275#PolymorphicMapType_17707| Heap@@37) (|PolymorphicMapType_17707_11554_3229#PolymorphicMapType_17707| Heap@@37) (|PolymorphicMapType_17707_11554_53#PolymorphicMapType_17707| Heap@@37) (|PolymorphicMapType_17707_11554_17781#PolymorphicMapType_17707| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_17707) (o_4@@1 T@Ref) (f_25@@1 T@Field_11554_3229) (v@@6 Int) ) (! (succHeap Heap@@38 (PolymorphicMapType_17707 (|PolymorphicMapType_17707_11197_53#PolymorphicMapType_17707| Heap@@38) (|PolymorphicMapType_17707_11200_11201#PolymorphicMapType_17707| Heap@@38) (|PolymorphicMapType_17707_11405_3229#PolymorphicMapType_17707| Heap@@38) (|PolymorphicMapType_17707_11554_11555#PolymorphicMapType_17707| Heap@@38) (|PolymorphicMapType_17707_11558_32814#PolymorphicMapType_17707| Heap@@38) (|PolymorphicMapType_17707_11405_11555#PolymorphicMapType_17707| Heap@@38) (|PolymorphicMapType_17707_11405_51275#PolymorphicMapType_17707| Heap@@38) (store (|PolymorphicMapType_17707_11554_3229#PolymorphicMapType_17707| Heap@@38) o_4@@1 f_25@@1 v@@6) (|PolymorphicMapType_17707_11554_53#PolymorphicMapType_17707| Heap@@38) (|PolymorphicMapType_17707_11554_17781#PolymorphicMapType_17707| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17707 (|PolymorphicMapType_17707_11197_53#PolymorphicMapType_17707| Heap@@38) (|PolymorphicMapType_17707_11200_11201#PolymorphicMapType_17707| Heap@@38) (|PolymorphicMapType_17707_11405_3229#PolymorphicMapType_17707| Heap@@38) (|PolymorphicMapType_17707_11554_11555#PolymorphicMapType_17707| Heap@@38) (|PolymorphicMapType_17707_11558_32814#PolymorphicMapType_17707| Heap@@38) (|PolymorphicMapType_17707_11405_11555#PolymorphicMapType_17707| Heap@@38) (|PolymorphicMapType_17707_11405_51275#PolymorphicMapType_17707| Heap@@38) (store (|PolymorphicMapType_17707_11554_3229#PolymorphicMapType_17707| Heap@@38) o_4@@1 f_25@@1 v@@6) (|PolymorphicMapType_17707_11554_53#PolymorphicMapType_17707| Heap@@38) (|PolymorphicMapType_17707_11554_17781#PolymorphicMapType_17707| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_17707) (o_4@@2 T@Ref) (f_25@@2 T@Field_11554_17781) (v@@7 T@Ref) ) (! (succHeap Heap@@39 (PolymorphicMapType_17707 (|PolymorphicMapType_17707_11197_53#PolymorphicMapType_17707| Heap@@39) (|PolymorphicMapType_17707_11200_11201#PolymorphicMapType_17707| Heap@@39) (|PolymorphicMapType_17707_11405_3229#PolymorphicMapType_17707| Heap@@39) (|PolymorphicMapType_17707_11554_11555#PolymorphicMapType_17707| Heap@@39) (|PolymorphicMapType_17707_11558_32814#PolymorphicMapType_17707| Heap@@39) (|PolymorphicMapType_17707_11405_11555#PolymorphicMapType_17707| Heap@@39) (|PolymorphicMapType_17707_11405_51275#PolymorphicMapType_17707| Heap@@39) (|PolymorphicMapType_17707_11554_3229#PolymorphicMapType_17707| Heap@@39) (|PolymorphicMapType_17707_11554_53#PolymorphicMapType_17707| Heap@@39) (store (|PolymorphicMapType_17707_11554_17781#PolymorphicMapType_17707| Heap@@39) o_4@@2 f_25@@2 v@@7)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17707 (|PolymorphicMapType_17707_11197_53#PolymorphicMapType_17707| Heap@@39) (|PolymorphicMapType_17707_11200_11201#PolymorphicMapType_17707| Heap@@39) (|PolymorphicMapType_17707_11405_3229#PolymorphicMapType_17707| Heap@@39) (|PolymorphicMapType_17707_11554_11555#PolymorphicMapType_17707| Heap@@39) (|PolymorphicMapType_17707_11558_32814#PolymorphicMapType_17707| Heap@@39) (|PolymorphicMapType_17707_11405_11555#PolymorphicMapType_17707| Heap@@39) (|PolymorphicMapType_17707_11405_51275#PolymorphicMapType_17707| Heap@@39) (|PolymorphicMapType_17707_11554_3229#PolymorphicMapType_17707| Heap@@39) (|PolymorphicMapType_17707_11554_53#PolymorphicMapType_17707| Heap@@39) (store (|PolymorphicMapType_17707_11554_17781#PolymorphicMapType_17707| Heap@@39) o_4@@2 f_25@@2 v@@7)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_17707) (o_4@@3 T@Ref) (f_25@@3 T@Field_11554_53) (v@@8 Bool) ) (! (succHeap Heap@@40 (PolymorphicMapType_17707 (|PolymorphicMapType_17707_11197_53#PolymorphicMapType_17707| Heap@@40) (|PolymorphicMapType_17707_11200_11201#PolymorphicMapType_17707| Heap@@40) (|PolymorphicMapType_17707_11405_3229#PolymorphicMapType_17707| Heap@@40) (|PolymorphicMapType_17707_11554_11555#PolymorphicMapType_17707| Heap@@40) (|PolymorphicMapType_17707_11558_32814#PolymorphicMapType_17707| Heap@@40) (|PolymorphicMapType_17707_11405_11555#PolymorphicMapType_17707| Heap@@40) (|PolymorphicMapType_17707_11405_51275#PolymorphicMapType_17707| Heap@@40) (|PolymorphicMapType_17707_11554_3229#PolymorphicMapType_17707| Heap@@40) (store (|PolymorphicMapType_17707_11554_53#PolymorphicMapType_17707| Heap@@40) o_4@@3 f_25@@3 v@@8) (|PolymorphicMapType_17707_11554_17781#PolymorphicMapType_17707| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17707 (|PolymorphicMapType_17707_11197_53#PolymorphicMapType_17707| Heap@@40) (|PolymorphicMapType_17707_11200_11201#PolymorphicMapType_17707| Heap@@40) (|PolymorphicMapType_17707_11405_3229#PolymorphicMapType_17707| Heap@@40) (|PolymorphicMapType_17707_11554_11555#PolymorphicMapType_17707| Heap@@40) (|PolymorphicMapType_17707_11558_32814#PolymorphicMapType_17707| Heap@@40) (|PolymorphicMapType_17707_11405_11555#PolymorphicMapType_17707| Heap@@40) (|PolymorphicMapType_17707_11405_51275#PolymorphicMapType_17707| Heap@@40) (|PolymorphicMapType_17707_11554_3229#PolymorphicMapType_17707| Heap@@40) (store (|PolymorphicMapType_17707_11554_53#PolymorphicMapType_17707| Heap@@40) o_4@@3 f_25@@3 v@@8) (|PolymorphicMapType_17707_11554_17781#PolymorphicMapType_17707| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_17707) (o_4@@4 T@Ref) (f_25@@4 T@Field_11405_32727) (v@@9 T@PolymorphicMapType_18256) ) (! (succHeap Heap@@41 (PolymorphicMapType_17707 (|PolymorphicMapType_17707_11197_53#PolymorphicMapType_17707| Heap@@41) (|PolymorphicMapType_17707_11200_11201#PolymorphicMapType_17707| Heap@@41) (|PolymorphicMapType_17707_11405_3229#PolymorphicMapType_17707| Heap@@41) (|PolymorphicMapType_17707_11554_11555#PolymorphicMapType_17707| Heap@@41) (|PolymorphicMapType_17707_11558_32814#PolymorphicMapType_17707| Heap@@41) (|PolymorphicMapType_17707_11405_11555#PolymorphicMapType_17707| Heap@@41) (store (|PolymorphicMapType_17707_11405_51275#PolymorphicMapType_17707| Heap@@41) o_4@@4 f_25@@4 v@@9) (|PolymorphicMapType_17707_11554_3229#PolymorphicMapType_17707| Heap@@41) (|PolymorphicMapType_17707_11554_53#PolymorphicMapType_17707| Heap@@41) (|PolymorphicMapType_17707_11554_17781#PolymorphicMapType_17707| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17707 (|PolymorphicMapType_17707_11197_53#PolymorphicMapType_17707| Heap@@41) (|PolymorphicMapType_17707_11200_11201#PolymorphicMapType_17707| Heap@@41) (|PolymorphicMapType_17707_11405_3229#PolymorphicMapType_17707| Heap@@41) (|PolymorphicMapType_17707_11554_11555#PolymorphicMapType_17707| Heap@@41) (|PolymorphicMapType_17707_11558_32814#PolymorphicMapType_17707| Heap@@41) (|PolymorphicMapType_17707_11405_11555#PolymorphicMapType_17707| Heap@@41) (store (|PolymorphicMapType_17707_11405_51275#PolymorphicMapType_17707| Heap@@41) o_4@@4 f_25@@4 v@@9) (|PolymorphicMapType_17707_11554_3229#PolymorphicMapType_17707| Heap@@41) (|PolymorphicMapType_17707_11554_53#PolymorphicMapType_17707| Heap@@41) (|PolymorphicMapType_17707_11554_17781#PolymorphicMapType_17707| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_17707) (o_4@@5 T@Ref) (f_25@@5 T@Field_11405_11555) (v@@10 T@FrameType) ) (! (succHeap Heap@@42 (PolymorphicMapType_17707 (|PolymorphicMapType_17707_11197_53#PolymorphicMapType_17707| Heap@@42) (|PolymorphicMapType_17707_11200_11201#PolymorphicMapType_17707| Heap@@42) (|PolymorphicMapType_17707_11405_3229#PolymorphicMapType_17707| Heap@@42) (|PolymorphicMapType_17707_11554_11555#PolymorphicMapType_17707| Heap@@42) (|PolymorphicMapType_17707_11558_32814#PolymorphicMapType_17707| Heap@@42) (store (|PolymorphicMapType_17707_11405_11555#PolymorphicMapType_17707| Heap@@42) o_4@@5 f_25@@5 v@@10) (|PolymorphicMapType_17707_11405_51275#PolymorphicMapType_17707| Heap@@42) (|PolymorphicMapType_17707_11554_3229#PolymorphicMapType_17707| Heap@@42) (|PolymorphicMapType_17707_11554_53#PolymorphicMapType_17707| Heap@@42) (|PolymorphicMapType_17707_11554_17781#PolymorphicMapType_17707| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17707 (|PolymorphicMapType_17707_11197_53#PolymorphicMapType_17707| Heap@@42) (|PolymorphicMapType_17707_11200_11201#PolymorphicMapType_17707| Heap@@42) (|PolymorphicMapType_17707_11405_3229#PolymorphicMapType_17707| Heap@@42) (|PolymorphicMapType_17707_11554_11555#PolymorphicMapType_17707| Heap@@42) (|PolymorphicMapType_17707_11558_32814#PolymorphicMapType_17707| Heap@@42) (store (|PolymorphicMapType_17707_11405_11555#PolymorphicMapType_17707| Heap@@42) o_4@@5 f_25@@5 v@@10) (|PolymorphicMapType_17707_11405_51275#PolymorphicMapType_17707| Heap@@42) (|PolymorphicMapType_17707_11554_3229#PolymorphicMapType_17707| Heap@@42) (|PolymorphicMapType_17707_11554_53#PolymorphicMapType_17707| Heap@@42) (|PolymorphicMapType_17707_11554_17781#PolymorphicMapType_17707| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_17707) (o_4@@6 T@Ref) (f_25@@6 T@Field_23805_3229) (v@@11 Int) ) (! (succHeap Heap@@43 (PolymorphicMapType_17707 (|PolymorphicMapType_17707_11197_53#PolymorphicMapType_17707| Heap@@43) (|PolymorphicMapType_17707_11200_11201#PolymorphicMapType_17707| Heap@@43) (store (|PolymorphicMapType_17707_11405_3229#PolymorphicMapType_17707| Heap@@43) o_4@@6 f_25@@6 v@@11) (|PolymorphicMapType_17707_11554_11555#PolymorphicMapType_17707| Heap@@43) (|PolymorphicMapType_17707_11558_32814#PolymorphicMapType_17707| Heap@@43) (|PolymorphicMapType_17707_11405_11555#PolymorphicMapType_17707| Heap@@43) (|PolymorphicMapType_17707_11405_51275#PolymorphicMapType_17707| Heap@@43) (|PolymorphicMapType_17707_11554_3229#PolymorphicMapType_17707| Heap@@43) (|PolymorphicMapType_17707_11554_53#PolymorphicMapType_17707| Heap@@43) (|PolymorphicMapType_17707_11554_17781#PolymorphicMapType_17707| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17707 (|PolymorphicMapType_17707_11197_53#PolymorphicMapType_17707| Heap@@43) (|PolymorphicMapType_17707_11200_11201#PolymorphicMapType_17707| Heap@@43) (store (|PolymorphicMapType_17707_11405_3229#PolymorphicMapType_17707| Heap@@43) o_4@@6 f_25@@6 v@@11) (|PolymorphicMapType_17707_11554_11555#PolymorphicMapType_17707| Heap@@43) (|PolymorphicMapType_17707_11558_32814#PolymorphicMapType_17707| Heap@@43) (|PolymorphicMapType_17707_11405_11555#PolymorphicMapType_17707| Heap@@43) (|PolymorphicMapType_17707_11405_51275#PolymorphicMapType_17707| Heap@@43) (|PolymorphicMapType_17707_11554_3229#PolymorphicMapType_17707| Heap@@43) (|PolymorphicMapType_17707_11554_53#PolymorphicMapType_17707| Heap@@43) (|PolymorphicMapType_17707_11554_17781#PolymorphicMapType_17707| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_17707) (o_4@@7 T@Ref) (f_25@@7 T@Field_17780_17781) (v@@12 T@Ref) ) (! (succHeap Heap@@44 (PolymorphicMapType_17707 (|PolymorphicMapType_17707_11197_53#PolymorphicMapType_17707| Heap@@44) (store (|PolymorphicMapType_17707_11200_11201#PolymorphicMapType_17707| Heap@@44) o_4@@7 f_25@@7 v@@12) (|PolymorphicMapType_17707_11405_3229#PolymorphicMapType_17707| Heap@@44) (|PolymorphicMapType_17707_11554_11555#PolymorphicMapType_17707| Heap@@44) (|PolymorphicMapType_17707_11558_32814#PolymorphicMapType_17707| Heap@@44) (|PolymorphicMapType_17707_11405_11555#PolymorphicMapType_17707| Heap@@44) (|PolymorphicMapType_17707_11405_51275#PolymorphicMapType_17707| Heap@@44) (|PolymorphicMapType_17707_11554_3229#PolymorphicMapType_17707| Heap@@44) (|PolymorphicMapType_17707_11554_53#PolymorphicMapType_17707| Heap@@44) (|PolymorphicMapType_17707_11554_17781#PolymorphicMapType_17707| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17707 (|PolymorphicMapType_17707_11197_53#PolymorphicMapType_17707| Heap@@44) (store (|PolymorphicMapType_17707_11200_11201#PolymorphicMapType_17707| Heap@@44) o_4@@7 f_25@@7 v@@12) (|PolymorphicMapType_17707_11405_3229#PolymorphicMapType_17707| Heap@@44) (|PolymorphicMapType_17707_11554_11555#PolymorphicMapType_17707| Heap@@44) (|PolymorphicMapType_17707_11558_32814#PolymorphicMapType_17707| Heap@@44) (|PolymorphicMapType_17707_11405_11555#PolymorphicMapType_17707| Heap@@44) (|PolymorphicMapType_17707_11405_51275#PolymorphicMapType_17707| Heap@@44) (|PolymorphicMapType_17707_11554_3229#PolymorphicMapType_17707| Heap@@44) (|PolymorphicMapType_17707_11554_53#PolymorphicMapType_17707| Heap@@44) (|PolymorphicMapType_17707_11554_17781#PolymorphicMapType_17707| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_17707) (o_4@@8 T@Ref) (f_25@@8 T@Field_17767_53) (v@@13 Bool) ) (! (succHeap Heap@@45 (PolymorphicMapType_17707 (store (|PolymorphicMapType_17707_11197_53#PolymorphicMapType_17707| Heap@@45) o_4@@8 f_25@@8 v@@13) (|PolymorphicMapType_17707_11200_11201#PolymorphicMapType_17707| Heap@@45) (|PolymorphicMapType_17707_11405_3229#PolymorphicMapType_17707| Heap@@45) (|PolymorphicMapType_17707_11554_11555#PolymorphicMapType_17707| Heap@@45) (|PolymorphicMapType_17707_11558_32814#PolymorphicMapType_17707| Heap@@45) (|PolymorphicMapType_17707_11405_11555#PolymorphicMapType_17707| Heap@@45) (|PolymorphicMapType_17707_11405_51275#PolymorphicMapType_17707| Heap@@45) (|PolymorphicMapType_17707_11554_3229#PolymorphicMapType_17707| Heap@@45) (|PolymorphicMapType_17707_11554_53#PolymorphicMapType_17707| Heap@@45) (|PolymorphicMapType_17707_11554_17781#PolymorphicMapType_17707| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17707 (store (|PolymorphicMapType_17707_11197_53#PolymorphicMapType_17707| Heap@@45) o_4@@8 f_25@@8 v@@13) (|PolymorphicMapType_17707_11200_11201#PolymorphicMapType_17707| Heap@@45) (|PolymorphicMapType_17707_11405_3229#PolymorphicMapType_17707| Heap@@45) (|PolymorphicMapType_17707_11554_11555#PolymorphicMapType_17707| Heap@@45) (|PolymorphicMapType_17707_11558_32814#PolymorphicMapType_17707| Heap@@45) (|PolymorphicMapType_17707_11405_11555#PolymorphicMapType_17707| Heap@@45) (|PolymorphicMapType_17707_11405_51275#PolymorphicMapType_17707| Heap@@45) (|PolymorphicMapType_17707_11554_3229#PolymorphicMapType_17707| Heap@@45) (|PolymorphicMapType_17707_11554_53#PolymorphicMapType_17707| Heap@@45) (|PolymorphicMapType_17707_11554_17781#PolymorphicMapType_17707| Heap@@45)))
)))
(assert (forall ((x@@15 T@Ref) ) (! (= (PredicateMaskField_11554 (P x@@15)) (|P#sm| x@@15))
 :qid |stdinbpl.1097:15|
 :skolemid |92|
 :pattern ( (PredicateMaskField_11554 (P x@@15)))
)))
(assert (forall ((s@@25 T@Seq_23852) (t@@9 T@Seq_23852) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_11421| s@@25))) (= (|Seq#Drop_11421| (|Seq#Append_23852| s@@25 t@@9) n@@19) (|Seq#Append_23852| (|Seq#Drop_11421| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.410:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_11421| (|Seq#Append_23852| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3107) (t@@10 T@Seq_3107) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3107| s@@26))) (= (|Seq#Drop_3107| (|Seq#Append_3107| s@@26 t@@10) n@@20) (|Seq#Append_3107| (|Seq#Drop_3107| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.410:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3107| (|Seq#Append_3107| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_23852) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_11421| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_11421| (|Seq#Drop_11421| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_11421| s@@27 i@@7))))
 :qid |stdinbpl.346:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_11421| s@@27 n@@21) (|Seq#Index_11421| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_3107) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_3107| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_3107| (|Seq#Drop_3107| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_3107| s@@28 i@@8))))
 :qid |stdinbpl.346:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3107| s@@28 n@@22) (|Seq#Index_3107| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_23852) (s1@@7 T@Seq_23852) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_11421|)) (not (= s1@@7 |Seq#Empty_11421|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_11421| s0@@7))) (= (|Seq#Index_11421| (|Seq#Append_23852| s0@@7 s1@@7) n@@23) (|Seq#Index_11421| s0@@7 n@@23)))
 :qid |stdinbpl.286:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_11421| (|Seq#Append_23852| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_11421| s0@@7 n@@23) (|Seq#Append_23852| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3107) (s1@@8 T@Seq_3107) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3107|)) (not (= s1@@8 |Seq#Empty_3107|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3107| s0@@8))) (= (|Seq#Index_3107| (|Seq#Append_3107| s0@@8 s1@@8) n@@24) (|Seq#Index_3107| s0@@8 n@@24)))
 :qid |stdinbpl.286:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3107| (|Seq#Append_3107| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3107| s0@@8 n@@24) (|Seq#Append_3107| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_23852) (s1@@9 T@Seq_23852) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_11421|)) (not (= s1@@9 |Seq#Empty_11421|))) (<= 0 m)) (< m (|Seq#Length_11421| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_11421| s0@@9)) (|Seq#Length_11421| s0@@9)) m) (= (|Seq#Index_11421| (|Seq#Append_23852| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_11421| s0@@9))) (|Seq#Index_11421| s1@@9 m))))
 :qid |stdinbpl.291:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_11421| s1@@9 m) (|Seq#Append_23852| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3107) (s1@@10 T@Seq_3107) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3107|)) (not (= s1@@10 |Seq#Empty_3107|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3107| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3107| s0@@10)) (|Seq#Length_3107| s0@@10)) m@@0) (= (|Seq#Index_3107| (|Seq#Append_3107| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3107| s0@@10))) (|Seq#Index_3107| s1@@10 m@@0))))
 :qid |stdinbpl.291:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3107| s1@@10 m@@0) (|Seq#Append_3107| s0@@10 s1@@10))
)))
(assert (forall ((o_4@@9 T@Ref) (f_9 T@Field_17780_17781) (Heap@@46 T@PolymorphicMapType_17707) ) (!  (=> (select (|PolymorphicMapType_17707_11197_53#PolymorphicMapType_17707| Heap@@46) o_4@@9 $allocated) (select (|PolymorphicMapType_17707_11197_53#PolymorphicMapType_17707| Heap@@46) (select (|PolymorphicMapType_17707_11200_11201#PolymorphicMapType_17707| Heap@@46) o_4@@9 f_9) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_17707_11200_11201#PolymorphicMapType_17707| Heap@@46) o_4@@9 f_9))
)))
(assert (forall ((s@@29 T@Seq_23852) (x@@16 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_11421| s@@29))) (= (|Seq#Index_11421| s@@29 i@@9) x@@16)) (|Seq#Contains_23852| s@@29 x@@16))
 :qid |stdinbpl.443:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_23852| s@@29 x@@16) (|Seq#Index_11421| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_3107) (x@@17 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_3107| s@@30))) (= (|Seq#Index_3107| s@@30 i@@10) x@@17)) (|Seq#Contains_3107| s@@30 x@@17))
 :qid |stdinbpl.443:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3107| s@@30 x@@17) (|Seq#Index_3107| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_23852) (s1@@11 T@Seq_23852) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_23852| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_23852| s0@@11 s1@@11))) (not (= (|Seq#Length_11421| s0@@11) (|Seq#Length_11421| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_23852| s0@@11 s1@@11))) (= (|Seq#Length_11421| s0@@11) (|Seq#Length_11421| s1@@11))) (= (|Seq#SkolemDiff_23852| s0@@11 s1@@11) (|Seq#SkolemDiff_23852| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_23852| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_23852| s0@@11 s1@@11) (|Seq#Length_11421| s0@@11))) (not (= (|Seq#Index_11421| s0@@11 (|Seq#SkolemDiff_23852| s0@@11 s1@@11)) (|Seq#Index_11421| s1@@11 (|Seq#SkolemDiff_23852| s0@@11 s1@@11))))))
 :qid |stdinbpl.547:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_23852| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3107) (s1@@12 T@Seq_3107) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3107| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3107| s0@@12 s1@@12))) (not (= (|Seq#Length_3107| s0@@12) (|Seq#Length_3107| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3107| s0@@12 s1@@12))) (= (|Seq#Length_3107| s0@@12) (|Seq#Length_3107| s1@@12))) (= (|Seq#SkolemDiff_3107| s0@@12 s1@@12) (|Seq#SkolemDiff_3107| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3107| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3107| s0@@12 s1@@12) (|Seq#Length_3107| s0@@12))) (not (= (|Seq#Index_3107| s0@@12 (|Seq#SkolemDiff_3107| s0@@12 s1@@12)) (|Seq#Index_3107| s1@@12 (|Seq#SkolemDiff_3107| s0@@12 s1@@12))))))
 :qid |stdinbpl.547:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3107| s0@@12 s1@@12))
)))
(assert (forall ((p@@2 T@Field_28812_28813) (v_1@@1 T@FrameType) (q T@Field_28812_28813) (w@@1 T@FrameType) (r T@Field_28812_28813) (u T@FrameType) ) (!  (=> (and (InsidePredicate_28812_28812 p@@2 v_1@@1 q w@@1) (InsidePredicate_28812_28812 q w@@1 r u)) (InsidePredicate_28812_28812 p@@2 v_1@@1 r u))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28812_28812 p@@2 v_1@@1 q w@@1) (InsidePredicate_28812_28812 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_28812_28813) (v_1@@2 T@FrameType) (q@@0 T@Field_28812_28813) (w@@2 T@FrameType) (r@@0 T@Field_11405_11555) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_28812_28812 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_28812_17767 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_28812_17767 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28812_28812 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_28812_17767 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_28812_28813) (v_1@@3 T@FrameType) (q@@1 T@Field_11405_11555) (w@@3 T@FrameType) (r@@1 T@Field_28812_28813) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_28812_17767 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_17767_28812 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_28812_28812 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28812_17767 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_17767_28812 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_28812_28813) (v_1@@4 T@FrameType) (q@@2 T@Field_11405_11555) (w@@4 T@FrameType) (r@@2 T@Field_11405_11555) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_28812_17767 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_17767_17767 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_28812_17767 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28812_17767 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_17767_17767 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_11405_11555) (v_1@@5 T@FrameType) (q@@3 T@Field_28812_28813) (w@@5 T@FrameType) (r@@3 T@Field_28812_28813) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_17767_28812 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_28812_28812 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_17767_28812 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17767_28812 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_28812_28812 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_11405_11555) (v_1@@6 T@FrameType) (q@@4 T@Field_28812_28813) (w@@6 T@FrameType) (r@@4 T@Field_11405_11555) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_17767_28812 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_28812_17767 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_17767_17767 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17767_28812 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_28812_17767 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_11405_11555) (v_1@@7 T@FrameType) (q@@5 T@Field_11405_11555) (w@@7 T@FrameType) (r@@5 T@Field_28812_28813) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_17767_17767 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_17767_28812 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_17767_28812 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17767_17767 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_17767_28812 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_11405_11555) (v_1@@8 T@FrameType) (q@@6 T@Field_11405_11555) (w@@8 T@FrameType) (r@@6 T@Field_11405_11555) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_17767_17767 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_17767_17767 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_17767_17767 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17767_17767 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_17767_17767 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_17707) (Heap1Heap@@0 T@PolymorphicMapType_17707) (xs@@8 T@Seq_23852) (j@@17 Int) ) (!  (=> (and (=  (and (and (<= 0 (|sk_fun_f#condqp1| (|fun_f#condqp1| Heap2Heap@@0 xs@@8 j@@17) (|fun_f#condqp1| Heap1Heap@@0 xs@@8 j@@17))) (< (|sk_fun_f#condqp1| (|fun_f#condqp1| Heap2Heap@@0 xs@@8 j@@17) (|fun_f#condqp1| Heap1Heap@@0 xs@@8 j@@17)) (|Seq#Length_11421| xs@@8))) (< NoPerm FullPerm))  (and (and (<= 0 (|sk_fun_f#condqp1| (|fun_f#condqp1| Heap2Heap@@0 xs@@8 j@@17) (|fun_f#condqp1| Heap1Heap@@0 xs@@8 j@@17))) (< (|sk_fun_f#condqp1| (|fun_f#condqp1| Heap2Heap@@0 xs@@8 j@@17) (|fun_f#condqp1| Heap1Heap@@0 xs@@8 j@@17)) (|Seq#Length_11421| xs@@8))) (< NoPerm FullPerm))) (=> (and (and (<= 0 (|sk_fun_f#condqp1| (|fun_f#condqp1| Heap2Heap@@0 xs@@8 j@@17) (|fun_f#condqp1| Heap1Heap@@0 xs@@8 j@@17))) (< (|sk_fun_f#condqp1| (|fun_f#condqp1| Heap2Heap@@0 xs@@8 j@@17) (|fun_f#condqp1| Heap1Heap@@0 xs@@8 j@@17)) (|Seq#Length_11421| xs@@8))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_17707_11405_3229#PolymorphicMapType_17707| Heap2Heap@@0) (|Seq#Index_11421| xs@@8 (|sk_fun_f#condqp1| (|fun_f#condqp1| Heap2Heap@@0 xs@@8 j@@17) (|fun_f#condqp1| Heap1Heap@@0 xs@@8 j@@17))) f_7) (select (|PolymorphicMapType_17707_11405_3229#PolymorphicMapType_17707| Heap1Heap@@0) (|Seq#Index_11421| xs@@8 (|sk_fun_f#condqp1| (|fun_f#condqp1| Heap2Heap@@0 xs@@8 j@@17) (|fun_f#condqp1| Heap1Heap@@0 xs@@8 j@@17))) f_7)))) (= (|fun_f#condqp1| Heap2Heap@@0 xs@@8 j@@17) (|fun_f#condqp1| Heap1Heap@@0 xs@@8 j@@17)))
 :qid |stdinbpl.633:15|
 :skolemid |63|
 :pattern ( (|fun_f#condqp1| Heap2Heap@@0 xs@@8 j@@17) (|fun_f#condqp1| Heap1Heap@@0 xs@@8 j@@17) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (forall ((s@@31 T@Seq_23852) ) (!  (=> (= (|Seq#Length_11421| s@@31) 0) (= s@@31 |Seq#Empty_11421|))
 :qid |stdinbpl.250:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_11421| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3107) ) (!  (=> (= (|Seq#Length_3107| s@@32) 0) (= s@@32 |Seq#Empty_3107|))
 :qid |stdinbpl.250:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3107| s@@32))
)))
(assert (forall ((s@@33 T@Seq_23852) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_11421| s@@33 n@@25) |Seq#Empty_11421|))
 :qid |stdinbpl.426:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_11421| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3107) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3107| s@@34 n@@26) |Seq#Empty_3107|))
 :qid |stdinbpl.426:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3107| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@47 T@PolymorphicMapType_17707) (Mask@@47 T@PolymorphicMapType_17728) (x@@18 T@Ref) ) (!  (=> (and (state Heap@@47 Mask@@47) (< AssumeFunctionsAbove 2)) (= (get_P Heap@@47 x@@18) (get_f Heap@@47 x@@18)))
 :qid |stdinbpl.1008:15|
 :skolemid |90|
 :pattern ( (state Heap@@47 Mask@@47) (get_P Heap@@47 x@@18))
 :pattern ( (state Heap@@47 Mask@@47) (|get_P#triggerStateless| x@@18) (|P#trigger_11554| Heap@@47 (P x@@18)))
)))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun j_1 () Int)
(declare-fun ys () T@Seq_23852)
(declare-fun k () Int)
(declare-fun Heap@0 () T@PolymorphicMapType_17707)
(declare-fun Heap@@48 () T@PolymorphicMapType_17707)
(declare-fun ix_6_1 () Int)
(declare-fun jx_6_1 () Int)
(declare-fun neverTriggered6 (Int) Bool)
(declare-fun QPMask@0 () T@PolymorphicMapType_17728)
(declare-fun qpRange6 (T@Ref) Bool)
(declare-fun invRecv6 (T@Ref) Int)
(declare-fun j_4 () Int)
(declare-fun ix_4 () Int)
(declare-fun jx_4 () Int)
(declare-fun neverTriggered5 (Int) Bool)
(declare-fun qpRange5 (T@Ref) Bool)
(declare-fun invRecv5 (T@Ref) Int)
(declare-fun ix_2_1 () Int)
(declare-fun jx_2_1 () Int)
(declare-fun neverTriggered4 (Int) Bool)
(declare-fun qpRange4 (T@Ref) Bool)
(declare-fun invRecv4 (T@Ref) Int)
(declare-fun qpRange3 (T@Ref) Bool)
(declare-fun invRecv3 (T@Ref) Int)
(declare-fun i_15 () Int)
(declare-fun ix_11 () Int)
(declare-fun jx_11 () Int)
(set-info :boogie-vc-id test_f)
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
 (=> (= (ControlFlow 0 0) 79) (let ((anon38_correct true))
(let ((anon59_Else_correct  (=> (and (not (and (<= 0 j_1) (and (< j_1 (|Seq#Length_11421| ys)) (not (= j_1 k))))) (= (ControlFlow 0 57) 54)) anon38_correct)))
(let ((anon59_Then_correct  (=> (and (<= 0 j_1) (and (< j_1 (|Seq#Length_11421| ys)) (not (= j_1 k)))) (and (=> (= (ControlFlow 0 55) (- 0 56)) (= (get_f Heap@0 (|Seq#Index_11421| ys j_1)) (fun_f Heap@@48 ys j_1))) (=> (= (get_f Heap@0 (|Seq#Index_11421| ys j_1)) (fun_f Heap@@48 ys j_1)) (=> (= (ControlFlow 0 55) 54) anon38_correct))))))
(let ((anon32_correct true))
(let ((anon57_Else_correct  (=> (and (not (and (>= ix_6_1 0) (and (< ix_6_1 (|Seq#Length_11421| ys)) (and (>= jx_6_1 0) (and (< jx_6_1 (|Seq#Length_11421| ys)) (not (= ix_6_1 jx_6_1))))))) (= (ControlFlow 0 48) 45)) anon32_correct)))
(let ((anon57_Then_correct  (=> (and (>= ix_6_1 0) (and (< ix_6_1 (|Seq#Length_11421| ys)) (and (>= jx_6_1 0) (and (< jx_6_1 (|Seq#Length_11421| ys)) (not (= ix_6_1 jx_6_1)))))) (and (=> (= (ControlFlow 0 46) (- 0 47)) (not (= (|Seq#Index_11421| ys ix_6_1) (|Seq#Index_11421| ys jx_6_1)))) (=> (not (= (|Seq#Index_11421| ys ix_6_1) (|Seq#Index_11421| ys jx_6_1))) (=> (= (ControlFlow 0 46) 45) anon32_correct))))))
(let ((anon56_Else_correct  (=> (forall ((ix_7_1 Int) (jx_7_1 Int) ) (!  (=> (and (>= ix_7_1 0) (and (< ix_7_1 (|Seq#Length_11421| ys)) (and (>= jx_7_1 0) (and (< jx_7_1 (|Seq#Length_11421| ys)) (not (= ix_7_1 jx_7_1)))))) (not (= (|Seq#Index_11421| ys ix_7_1) (|Seq#Index_11421| ys jx_7_1))))
 :qid |stdinbpl.1519:28|
 :skolemid |115|
 :pattern ( (|Seq#Index_11421| ys ix_7_1) (|Seq#Index_11421| ys jx_7_1))
)) (and (=> (= (ControlFlow 0 41) (- 0 44)) (forall ((i_4_1 Int) (i_4_2 Int) ) (!  (=> (and (and (and (and (not (= i_4_1 i_4_2)) (and (<= 0 i_4_1) (< i_4_1 (|Seq#Length_11421| ys)))) (and (<= 0 i_4_2) (< i_4_2 (|Seq#Length_11421| ys)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_11421| ys i_4_1) (|Seq#Index_11421| ys i_4_2))))
 :qid |stdinbpl.1530:25|
 :skolemid |116|
 :pattern ( (neverTriggered6 i_4_1) (neverTriggered6 i_4_2))
))) (=> (forall ((i_4_1@@0 Int) (i_4_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_4_1@@0 i_4_2@@0)) (and (<= 0 i_4_1@@0) (< i_4_1@@0 (|Seq#Length_11421| ys)))) (and (<= 0 i_4_2@@0) (< i_4_2@@0 (|Seq#Length_11421| ys)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_11421| ys i_4_1@@0) (|Seq#Index_11421| ys i_4_2@@0))))
 :qid |stdinbpl.1530:25|
 :skolemid |116|
 :pattern ( (neverTriggered6 i_4_1@@0) (neverTriggered6 i_4_2@@0))
)) (and (=> (= (ControlFlow 0 41) (- 0 43)) (forall ((i_4_1@@1 Int) ) (!  (=> (and (<= 0 i_4_1@@1) (< i_4_1@@1 (|Seq#Length_11421| ys))) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_17728_11405_3229#PolymorphicMapType_17728| QPMask@0) (|Seq#Index_11421| ys i_4_1@@1) f_7) NoPerm)))
 :qid |stdinbpl.1537:25|
 :skolemid |117|
 :pattern ( (|Seq#Index_11421| ys i_4_1@@1))
 :pattern ( (|Seq#Index_11421| ys i_4_1@@1))
))) (=> (forall ((i_4_1@@2 Int) ) (!  (=> (and (<= 0 i_4_1@@2) (< i_4_1@@2 (|Seq#Length_11421| ys))) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_17728_11405_3229#PolymorphicMapType_17728| QPMask@0) (|Seq#Index_11421| ys i_4_1@@2) f_7) NoPerm)))
 :qid |stdinbpl.1537:25|
 :skolemid |117|
 :pattern ( (|Seq#Index_11421| ys i_4_1@@2))
 :pattern ( (|Seq#Index_11421| ys i_4_1@@2))
)) (=> (and (forall ((i_4_1@@3 Int) ) (!  (=> (and (and (<= 0 i_4_1@@3) (< i_4_1@@3 (|Seq#Length_11421| ys))) (< NoPerm FullPerm)) (and (qpRange6 (|Seq#Index_11421| ys i_4_1@@3)) (= (invRecv6 (|Seq#Index_11421| ys i_4_1@@3)) i_4_1@@3)))
 :qid |stdinbpl.1543:30|
 :skolemid |118|
 :pattern ( (|Seq#Index_11421| ys i_4_1@@3))
 :pattern ( (|Seq#Index_11421| ys i_4_1@@3))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv6 o_9)) (< (invRecv6 o_9) (|Seq#Length_11421| ys))) (and (< NoPerm FullPerm) (qpRange6 o_9))) (= (|Seq#Index_11421| ys (invRecv6 o_9)) o_9))
 :qid |stdinbpl.1547:30|
 :skolemid |119|
 :pattern ( (invRecv6 o_9))
))) (and (=> (= (ControlFlow 0 41) (- 0 42)) (<= 0 j_4)) (=> (<= 0 j_4) (=> (= (ControlFlow 0 41) (- 0 40)) (< j_4 (|Seq#Length_11421| ys)))))))))))))
(let ((anon54_Then_correct  (=> (= (ControlFlow 0 39) (- 0 38)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_17728_11405_3229#PolymorphicMapType_17728| QPMask@0) (|Seq#Index_11421| ys j_4) f_7))))))
(let ((anon34_correct true))
(let ((anon54_Else_correct  (and (=> (= (ControlFlow 0 49) (- 0 50)) true) (and (and (and (=> (= (ControlFlow 0 49) 36) anon34_correct) (=> (= (ControlFlow 0 49) 41) anon56_Else_correct)) (=> (= (ControlFlow 0 49) 46) anon57_Then_correct)) (=> (= (ControlFlow 0 49) 48) anon57_Else_correct)))))
(let ((anon53_Then_correct  (=> (and (<= 0 j_4) (and (< j_4 (|Seq#Length_11421| ys)) (not (= j_4 k)))) (and (=> (= (ControlFlow 0 51) (- 0 53)) (>= j_4 0)) (=> (>= j_4 0) (and (=> (= (ControlFlow 0 51) (- 0 52)) (< j_4 (|Seq#Length_11421| ys))) (=> (< j_4 (|Seq#Length_11421| ys)) (and (=> (= (ControlFlow 0 51) 39) anon54_Then_correct) (=> (= (ControlFlow 0 51) 49) anon54_Else_correct)))))))))
(let ((anon53_Else_correct  (=> (and (not (and (<= 0 j_4) (and (< j_4 (|Seq#Length_11421| ys)) (not (= j_4 k))))) (= (ControlFlow 0 37) 36)) anon34_correct)))
(let ((anon58_Else_correct true))
(let ((anon49_Else_correct  (and (=> (= (ControlFlow 0 58) (- 0 59)) (< (get_f Heap@0 (|Seq#Index_11421| ys k)) (fun_f Heap@@48 ys k))) (=> (< (get_f Heap@0 (|Seq#Index_11421| ys k)) (fun_f Heap@@48 ys k)) (=> (state Heap@0 QPMask@0) (and (and (and (and (=> (= (ControlFlow 0 58) 35) anon58_Else_correct) (=> (= (ControlFlow 0 58) 55) anon59_Then_correct)) (=> (= (ControlFlow 0 58) 57) anon59_Else_correct)) (=> (= (ControlFlow 0 58) 51) anon53_Then_correct)) (=> (= (ControlFlow 0 58) 37) anon53_Else_correct)))))))
(let ((anon22_correct true))
(let ((anon51_Else_correct  (=> (and (not (and (>= ix_4 0) (and (< ix_4 (|Seq#Length_11421| ys)) (and (>= jx_4 0) (and (< jx_4 (|Seq#Length_11421| ys)) (not (= ix_4 jx_4))))))) (= (ControlFlow 0 34) 31)) anon22_correct)))
(let ((anon51_Then_correct  (=> (and (>= ix_4 0) (and (< ix_4 (|Seq#Length_11421| ys)) (and (>= jx_4 0) (and (< jx_4 (|Seq#Length_11421| ys)) (not (= ix_4 jx_4)))))) (and (=> (= (ControlFlow 0 32) (- 0 33)) (not (= (|Seq#Index_11421| ys ix_4) (|Seq#Index_11421| ys jx_4)))) (=> (not (= (|Seq#Index_11421| ys ix_4) (|Seq#Index_11421| ys jx_4))) (=> (= (ControlFlow 0 32) 31) anon22_correct))))))
(let ((anon50_Else_correct  (=> (forall ((ix_5_1 Int) (jx_5_1 Int) ) (!  (=> (and (>= ix_5_1 0) (and (< ix_5_1 (|Seq#Length_11421| ys)) (and (>= jx_5_1 0) (and (< jx_5_1 (|Seq#Length_11421| ys)) (not (= ix_5_1 jx_5_1)))))) (not (= (|Seq#Index_11421| ys ix_5_1) (|Seq#Index_11421| ys jx_5_1))))
 :qid |stdinbpl.1430:24|
 :skolemid |110|
 :pattern ( (|Seq#Index_11421| ys ix_5_1) (|Seq#Index_11421| ys jx_5_1))
)) (and (=> (= (ControlFlow 0 27) (- 0 30)) (forall ((i_3_2 Int) (i_3_3 Int) ) (!  (=> (and (and (and (and (not (= i_3_2 i_3_3)) (and (<= 0 i_3_2) (< i_3_2 (|Seq#Length_11421| ys)))) (and (<= 0 i_3_3) (< i_3_3 (|Seq#Length_11421| ys)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_11421| ys i_3_2) (|Seq#Index_11421| ys i_3_3))))
 :qid |stdinbpl.1441:21|
 :skolemid |111|
 :pattern ( (neverTriggered5 i_3_2) (neverTriggered5 i_3_3))
))) (=> (forall ((i_3_2@@0 Int) (i_3_3@@0 Int) ) (!  (=> (and (and (and (and (not (= i_3_2@@0 i_3_3@@0)) (and (<= 0 i_3_2@@0) (< i_3_2@@0 (|Seq#Length_11421| ys)))) (and (<= 0 i_3_3@@0) (< i_3_3@@0 (|Seq#Length_11421| ys)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_11421| ys i_3_2@@0) (|Seq#Index_11421| ys i_3_3@@0))))
 :qid |stdinbpl.1441:21|
 :skolemid |111|
 :pattern ( (neverTriggered5 i_3_2@@0) (neverTriggered5 i_3_3@@0))
)) (and (=> (= (ControlFlow 0 27) (- 0 29)) (forall ((i_3_2@@1 Int) ) (!  (=> (and (<= 0 i_3_2@@1) (< i_3_2@@1 (|Seq#Length_11421| ys))) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_17728_11405_3229#PolymorphicMapType_17728| QPMask@0) (|Seq#Index_11421| ys i_3_2@@1) f_7) NoPerm)))
 :qid |stdinbpl.1448:21|
 :skolemid |112|
 :pattern ( (|Seq#Index_11421| ys i_3_2@@1))
 :pattern ( (|Seq#Index_11421| ys i_3_2@@1))
))) (=> (forall ((i_3_2@@2 Int) ) (!  (=> (and (<= 0 i_3_2@@2) (< i_3_2@@2 (|Seq#Length_11421| ys))) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_17728_11405_3229#PolymorphicMapType_17728| QPMask@0) (|Seq#Index_11421| ys i_3_2@@2) f_7) NoPerm)))
 :qid |stdinbpl.1448:21|
 :skolemid |112|
 :pattern ( (|Seq#Index_11421| ys i_3_2@@2))
 :pattern ( (|Seq#Index_11421| ys i_3_2@@2))
)) (=> (and (forall ((i_3_2@@3 Int) ) (!  (=> (and (and (<= 0 i_3_2@@3) (< i_3_2@@3 (|Seq#Length_11421| ys))) (< NoPerm FullPerm)) (and (qpRange5 (|Seq#Index_11421| ys i_3_2@@3)) (= (invRecv5 (|Seq#Index_11421| ys i_3_2@@3)) i_3_2@@3)))
 :qid |stdinbpl.1454:26|
 :skolemid |113|
 :pattern ( (|Seq#Index_11421| ys i_3_2@@3))
 :pattern ( (|Seq#Index_11421| ys i_3_2@@3))
)) (forall ((o_9@@0 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv5 o_9@@0)) (< (invRecv5 o_9@@0) (|Seq#Length_11421| ys))) (and (< NoPerm FullPerm) (qpRange5 o_9@@0))) (= (|Seq#Index_11421| ys (invRecv5 o_9@@0)) o_9@@0))
 :qid |stdinbpl.1458:26|
 :skolemid |114|
 :pattern ( (invRecv5 o_9@@0))
))) (and (=> (= (ControlFlow 0 27) (- 0 28)) (<= 0 k)) (=> (<= 0 k) (=> (= (ControlFlow 0 27) (- 0 26)) (< k (|Seq#Length_11421| ys)))))))))))))
(let ((anon48_Else_correct  (and (=> (= (ControlFlow 0 60) (- 0 61)) true) (and (and (and (=> (= (ControlFlow 0 60) 58) anon49_Else_correct) (=> (= (ControlFlow 0 60) 27) anon50_Else_correct)) (=> (= (ControlFlow 0 60) 32) anon51_Then_correct)) (=> (= (ControlFlow 0 60) 34) anon51_Else_correct)))))
(let ((anon48_Then_correct  (=> (= (ControlFlow 0 25) (- 0 24)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_17728_11405_3229#PolymorphicMapType_17728| QPMask@0) (|Seq#Index_11421| ys k) f_7))))))
(let ((anon47_Else_correct  (and (=> (= (ControlFlow 0 62) (- 0 71)) (= (get_f Heap@@48 (|Seq#Index_11421| ys k)) 0)) (=> (= (get_f Heap@@48 (|Seq#Index_11421| ys k)) 0) (=> (and (state Heap@@48 QPMask@0) (state Heap@@48 QPMask@0)) (and (=> (= (ControlFlow 0 62) (- 0 70)) (>= k 0)) (=> (>= k 0) (and (=> (= (ControlFlow 0 62) (- 0 69)) (< k (|Seq#Length_11421| ys))) (=> (< k (|Seq#Length_11421| ys)) (and (=> (= (ControlFlow 0 62) (- 0 68)) (>= k 0)) (=> (>= k 0) (and (=> (= (ControlFlow 0 62) (- 0 67)) (< k (|Seq#Length_11421| ys))) (=> (< k (|Seq#Length_11421| ys)) (and (=> (= (ControlFlow 0 62) (- 0 66)) (HasDirectPerm_11405_3229 QPMask@0 (|Seq#Index_11421| ys k) f_7)) (=> (HasDirectPerm_11405_3229 QPMask@0 (|Seq#Index_11421| ys k) f_7) (and (=> (= (ControlFlow 0 62) (- 0 65)) (= FullPerm (select (|PolymorphicMapType_17728_11405_3229#PolymorphicMapType_17728| QPMask@0) (|Seq#Index_11421| ys k) f_7))) (=> (= FullPerm (select (|PolymorphicMapType_17728_11405_3229#PolymorphicMapType_17728| QPMask@0) (|Seq#Index_11421| ys k) f_7)) (=> (and (= Heap@0 (PolymorphicMapType_17707 (|PolymorphicMapType_17707_11197_53#PolymorphicMapType_17707| Heap@@48) (|PolymorphicMapType_17707_11200_11201#PolymorphicMapType_17707| Heap@@48) (store (|PolymorphicMapType_17707_11405_3229#PolymorphicMapType_17707| Heap@@48) (|Seq#Index_11421| ys k) f_7 (- (select (|PolymorphicMapType_17707_11405_3229#PolymorphicMapType_17707| Heap@@48) (|Seq#Index_11421| ys k) f_7) 1)) (|PolymorphicMapType_17707_11554_11555#PolymorphicMapType_17707| Heap@@48) (|PolymorphicMapType_17707_11558_32814#PolymorphicMapType_17707| Heap@@48) (|PolymorphicMapType_17707_11405_11555#PolymorphicMapType_17707| Heap@@48) (|PolymorphicMapType_17707_11405_51275#PolymorphicMapType_17707| Heap@@48) (|PolymorphicMapType_17707_11554_3229#PolymorphicMapType_17707| Heap@@48) (|PolymorphicMapType_17707_11554_53#PolymorphicMapType_17707| Heap@@48) (|PolymorphicMapType_17707_11554_17781#PolymorphicMapType_17707| Heap@@48))) (state Heap@0 QPMask@0)) (and (=> (= (ControlFlow 0 62) (- 0 64)) (>= k 0)) (=> (>= k 0) (and (=> (= (ControlFlow 0 62) (- 0 63)) (< k (|Seq#Length_11421| ys))) (=> (< k (|Seq#Length_11421| ys)) (and (=> (= (ControlFlow 0 62) 25) anon48_Then_correct) (=> (= (ControlFlow 0 62) 60) anon48_Else_correct))))))))))))))))))))))))
(let ((anon47_Then_correct  (=> (= (ControlFlow 0 23) (- 0 22)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_17728_11405_3229#PolymorphicMapType_17728| QPMask@0) (|Seq#Index_11421| ys k) f_7))))))
(let ((anon44_Else_correct  (=> (= (fun_f Heap@@48 ys k) 0) (=> (and (state Heap@@48 QPMask@0) (state Heap@@48 QPMask@0)) (and (=> (= (ControlFlow 0 72) (- 0 74)) (>= k 0)) (=> (>= k 0) (and (=> (= (ControlFlow 0 72) (- 0 73)) (< k (|Seq#Length_11421| ys))) (=> (< k (|Seq#Length_11421| ys)) (and (=> (= (ControlFlow 0 72) 23) anon47_Then_correct) (=> (= (ControlFlow 0 72) 62) anon47_Else_correct))))))))))
(let ((anon12_correct true))
(let ((anon46_Else_correct  (=> (and (not (and (>= ix_2_1 0) (and (< ix_2_1 (|Seq#Length_11421| ys)) (and (>= jx_2_1 0) (and (< jx_2_1 (|Seq#Length_11421| ys)) (not (= ix_2_1 jx_2_1))))))) (= (ControlFlow 0 21) 18)) anon12_correct)))
(let ((anon46_Then_correct  (=> (and (>= ix_2_1 0) (and (< ix_2_1 (|Seq#Length_11421| ys)) (and (>= jx_2_1 0) (and (< jx_2_1 (|Seq#Length_11421| ys)) (not (= ix_2_1 jx_2_1)))))) (and (=> (= (ControlFlow 0 19) (- 0 20)) (not (= (|Seq#Index_11421| ys ix_2_1) (|Seq#Index_11421| ys jx_2_1)))) (=> (not (= (|Seq#Index_11421| ys ix_2_1) (|Seq#Index_11421| ys jx_2_1))) (=> (= (ControlFlow 0 19) 18) anon12_correct))))))
(let ((anon45_Else_correct  (=> (forall ((ix_3_1 Int) (jx_3_1 Int) ) (!  (=> (and (>= ix_3_1 0) (and (< ix_3_1 (|Seq#Length_11421| ys)) (and (>= jx_3_1 0) (and (< jx_3_1 (|Seq#Length_11421| ys)) (not (= ix_3_1 jx_3_1)))))) (not (= (|Seq#Index_11421| ys ix_3_1) (|Seq#Index_11421| ys jx_3_1))))
 :qid |stdinbpl.1293:24|
 :skolemid |105|
 :pattern ( (|Seq#Index_11421| ys ix_3_1) (|Seq#Index_11421| ys jx_3_1))
)) (and (=> (= (ControlFlow 0 14) (- 0 17)) (forall ((i_2 Int) (i_2_2 Int) ) (!  (=> (and (and (and (and (not (= i_2 i_2_2)) (and (<= 0 i_2) (< i_2 (|Seq#Length_11421| ys)))) (and (<= 0 i_2_2) (< i_2_2 (|Seq#Length_11421| ys)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_11421| ys i_2) (|Seq#Index_11421| ys i_2_2))))
 :qid |stdinbpl.1304:21|
 :skolemid |106|
 :pattern ( (neverTriggered4 i_2) (neverTriggered4 i_2_2))
))) (=> (forall ((i_2@@0 Int) (i_2_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_2@@0 i_2_2@@0)) (and (<= 0 i_2@@0) (< i_2@@0 (|Seq#Length_11421| ys)))) (and (<= 0 i_2_2@@0) (< i_2_2@@0 (|Seq#Length_11421| ys)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_11421| ys i_2@@0) (|Seq#Index_11421| ys i_2_2@@0))))
 :qid |stdinbpl.1304:21|
 :skolemid |106|
 :pattern ( (neverTriggered4 i_2@@0) (neverTriggered4 i_2_2@@0))
)) (and (=> (= (ControlFlow 0 14) (- 0 16)) (forall ((i_2@@1 Int) ) (!  (=> (and (<= 0 i_2@@1) (< i_2@@1 (|Seq#Length_11421| ys))) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_17728_11405_3229#PolymorphicMapType_17728| QPMask@0) (|Seq#Index_11421| ys i_2@@1) f_7) NoPerm)))
 :qid |stdinbpl.1311:21|
 :skolemid |107|
 :pattern ( (|Seq#Index_11421| ys i_2@@1))
 :pattern ( (|Seq#Index_11421| ys i_2@@1))
))) (=> (forall ((i_2@@2 Int) ) (!  (=> (and (<= 0 i_2@@2) (< i_2@@2 (|Seq#Length_11421| ys))) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_17728_11405_3229#PolymorphicMapType_17728| QPMask@0) (|Seq#Index_11421| ys i_2@@2) f_7) NoPerm)))
 :qid |stdinbpl.1311:21|
 :skolemid |107|
 :pattern ( (|Seq#Index_11421| ys i_2@@2))
 :pattern ( (|Seq#Index_11421| ys i_2@@2))
)) (=> (and (forall ((i_2@@3 Int) ) (!  (=> (and (and (<= 0 i_2@@3) (< i_2@@3 (|Seq#Length_11421| ys))) (< NoPerm FullPerm)) (and (qpRange4 (|Seq#Index_11421| ys i_2@@3)) (= (invRecv4 (|Seq#Index_11421| ys i_2@@3)) i_2@@3)))
 :qid |stdinbpl.1317:26|
 :skolemid |108|
 :pattern ( (|Seq#Index_11421| ys i_2@@3))
 :pattern ( (|Seq#Index_11421| ys i_2@@3))
)) (forall ((o_9@@1 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv4 o_9@@1)) (< (invRecv4 o_9@@1) (|Seq#Length_11421| ys))) (and (< NoPerm FullPerm) (qpRange4 o_9@@1))) (= (|Seq#Index_11421| ys (invRecv4 o_9@@1)) o_9@@1))
 :qid |stdinbpl.1321:26|
 :skolemid |109|
 :pattern ( (invRecv4 o_9@@1))
))) (and (=> (= (ControlFlow 0 14) (- 0 15)) (<= 0 k)) (=> (<= 0 k) (=> (= (ControlFlow 0 14) (- 0 13)) (< k (|Seq#Length_11421| ys)))))))))))))
(let ((anon42_Else_correct  (and (=> (= (ControlFlow 0 75) (- 0 76)) (forall ((i_1 Int) (i_1_1 Int) ) (!  (=> (and (and (and (and (not (= i_1 i_1_1)) (and (<= 0 i_1) (< i_1 (|Seq#Length_11421| ys)))) (and (<= 0 i_1_1) (< i_1_1 (|Seq#Length_11421| ys)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_11421| ys i_1) (|Seq#Index_11421| ys i_1_1))))
 :qid |stdinbpl.1243:15|
 :skolemid |99|
))) (=> (forall ((i_1@@0 Int) (i_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_1@@0 i_1_1@@0)) (and (<= 0 i_1@@0) (< i_1@@0 (|Seq#Length_11421| ys)))) (and (<= 0 i_1_1@@0) (< i_1_1@@0 (|Seq#Length_11421| ys)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_11421| ys i_1@@0) (|Seq#Index_11421| ys i_1_1@@0))))
 :qid |stdinbpl.1243:15|
 :skolemid |99|
)) (=> (and (and (forall ((i_1@@1 Int) ) (!  (=> (and (and (<= 0 i_1@@1) (< i_1@@1 (|Seq#Length_11421| ys))) (< NoPerm FullPerm)) (and (qpRange3 (|Seq#Index_11421| ys i_1@@1)) (= (invRecv3 (|Seq#Index_11421| ys i_1@@1)) i_1@@1)))
 :qid |stdinbpl.1249:22|
 :skolemid |100|
 :pattern ( (|Seq#Index_11421| ys i_1@@1))
 :pattern ( (|Seq#Index_11421| ys i_1@@1))
)) (forall ((o_9@@2 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv3 o_9@@2)) (< (invRecv3 o_9@@2) (|Seq#Length_11421| ys))) (< NoPerm FullPerm)) (qpRange3 o_9@@2)) (= (|Seq#Index_11421| ys (invRecv3 o_9@@2)) o_9@@2))
 :qid |stdinbpl.1253:22|
 :skolemid |101|
 :pattern ( (invRecv3 o_9@@2))
))) (and (forall ((i_1@@2 Int) ) (!  (=> (and (<= 0 i_1@@2) (< i_1@@2 (|Seq#Length_11421| ys))) (not (= (|Seq#Index_11421| ys i_1@@2) null)))
 :qid |stdinbpl.1259:22|
 :skolemid |102|
 :pattern ( (|Seq#Index_11421| ys i_1@@2))
 :pattern ( (|Seq#Index_11421| ys i_1@@2))
)) (forall ((o_9@@3 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv3 o_9@@3)) (< (invRecv3 o_9@@3) (|Seq#Length_11421| ys))) (< NoPerm FullPerm)) (qpRange3 o_9@@3)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_11421| ys (invRecv3 o_9@@3)) o_9@@3)) (= (select (|PolymorphicMapType_17728_11405_3229#PolymorphicMapType_17728| QPMask@0) o_9@@3 f_7) (+ (select (|PolymorphicMapType_17728_11405_3229#PolymorphicMapType_17728| ZeroMask) o_9@@3 f_7) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv3 o_9@@3)) (< (invRecv3 o_9@@3) (|Seq#Length_11421| ys))) (< NoPerm FullPerm)) (qpRange3 o_9@@3))) (= (select (|PolymorphicMapType_17728_11405_3229#PolymorphicMapType_17728| QPMask@0) o_9@@3 f_7) (select (|PolymorphicMapType_17728_11405_3229#PolymorphicMapType_17728| ZeroMask) o_9@@3 f_7))))
 :qid |stdinbpl.1265:22|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_17728_11405_3229#PolymorphicMapType_17728| QPMask@0) o_9@@3 f_7))
)))) (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_9@@4 T@Ref) (f_5 T@Field_17767_53) ) (!  (=> true (= (select (|PolymorphicMapType_17728_11405_53#PolymorphicMapType_17728| ZeroMask) o_9@@4 f_5) (select (|PolymorphicMapType_17728_11405_53#PolymorphicMapType_17728| QPMask@0) o_9@@4 f_5)))
 :qid |stdinbpl.1269:29|
 :skolemid |104|
 :pattern ( (select (|PolymorphicMapType_17728_11405_53#PolymorphicMapType_17728| ZeroMask) o_9@@4 f_5))
 :pattern ( (select (|PolymorphicMapType_17728_11405_53#PolymorphicMapType_17728| QPMask@0) o_9@@4 f_5))
)) (forall ((o_9@@5 T@Ref) (f_5@@0 T@Field_17780_17781) ) (!  (=> true (= (select (|PolymorphicMapType_17728_11405_17781#PolymorphicMapType_17728| ZeroMask) o_9@@5 f_5@@0) (select (|PolymorphicMapType_17728_11405_17781#PolymorphicMapType_17728| QPMask@0) o_9@@5 f_5@@0)))
 :qid |stdinbpl.1269:29|
 :skolemid |104|
 :pattern ( (select (|PolymorphicMapType_17728_11405_17781#PolymorphicMapType_17728| ZeroMask) o_9@@5 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_17728_11405_17781#PolymorphicMapType_17728| QPMask@0) o_9@@5 f_5@@0))
))) (forall ((o_9@@6 T@Ref) (f_5@@1 T@Field_23805_3229) ) (!  (=> (not (= f_5@@1 f_7)) (= (select (|PolymorphicMapType_17728_11405_3229#PolymorphicMapType_17728| ZeroMask) o_9@@6 f_5@@1) (select (|PolymorphicMapType_17728_11405_3229#PolymorphicMapType_17728| QPMask@0) o_9@@6 f_5@@1)))
 :qid |stdinbpl.1269:29|
 :skolemid |104|
 :pattern ( (select (|PolymorphicMapType_17728_11405_3229#PolymorphicMapType_17728| ZeroMask) o_9@@6 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_17728_11405_3229#PolymorphicMapType_17728| QPMask@0) o_9@@6 f_5@@1))
))) (forall ((o_9@@7 T@Ref) (f_5@@2 T@Field_11405_11555) ) (!  (=> true (= (select (|PolymorphicMapType_17728_11405_11555#PolymorphicMapType_17728| ZeroMask) o_9@@7 f_5@@2) (select (|PolymorphicMapType_17728_11405_11555#PolymorphicMapType_17728| QPMask@0) o_9@@7 f_5@@2)))
 :qid |stdinbpl.1269:29|
 :skolemid |104|
 :pattern ( (select (|PolymorphicMapType_17728_11405_11555#PolymorphicMapType_17728| ZeroMask) o_9@@7 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_17728_11405_11555#PolymorphicMapType_17728| QPMask@0) o_9@@7 f_5@@2))
))) (forall ((o_9@@8 T@Ref) (f_5@@3 T@Field_11405_32727) ) (!  (=> true (= (select (|PolymorphicMapType_17728_11405_60533#PolymorphicMapType_17728| ZeroMask) o_9@@8 f_5@@3) (select (|PolymorphicMapType_17728_11405_60533#PolymorphicMapType_17728| QPMask@0) o_9@@8 f_5@@3)))
 :qid |stdinbpl.1269:29|
 :skolemid |104|
 :pattern ( (select (|PolymorphicMapType_17728_11405_60533#PolymorphicMapType_17728| ZeroMask) o_9@@8 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_17728_11405_60533#PolymorphicMapType_17728| QPMask@0) o_9@@8 f_5@@3))
))) (forall ((o_9@@9 T@Ref) (f_5@@4 T@Field_11554_53) ) (!  (=> true (= (select (|PolymorphicMapType_17728_11554_53#PolymorphicMapType_17728| ZeroMask) o_9@@9 f_5@@4) (select (|PolymorphicMapType_17728_11554_53#PolymorphicMapType_17728| QPMask@0) o_9@@9 f_5@@4)))
 :qid |stdinbpl.1269:29|
 :skolemid |104|
 :pattern ( (select (|PolymorphicMapType_17728_11554_53#PolymorphicMapType_17728| ZeroMask) o_9@@9 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_17728_11554_53#PolymorphicMapType_17728| QPMask@0) o_9@@9 f_5@@4))
))) (forall ((o_9@@10 T@Ref) (f_5@@5 T@Field_11554_17781) ) (!  (=> true (= (select (|PolymorphicMapType_17728_11554_17781#PolymorphicMapType_17728| ZeroMask) o_9@@10 f_5@@5) (select (|PolymorphicMapType_17728_11554_17781#PolymorphicMapType_17728| QPMask@0) o_9@@10 f_5@@5)))
 :qid |stdinbpl.1269:29|
 :skolemid |104|
 :pattern ( (select (|PolymorphicMapType_17728_11554_17781#PolymorphicMapType_17728| ZeroMask) o_9@@10 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_17728_11554_17781#PolymorphicMapType_17728| QPMask@0) o_9@@10 f_5@@5))
))) (forall ((o_9@@11 T@Ref) (f_5@@6 T@Field_11554_3229) ) (!  (=> true (= (select (|PolymorphicMapType_17728_11554_3229#PolymorphicMapType_17728| ZeroMask) o_9@@11 f_5@@6) (select (|PolymorphicMapType_17728_11554_3229#PolymorphicMapType_17728| QPMask@0) o_9@@11 f_5@@6)))
 :qid |stdinbpl.1269:29|
 :skolemid |104|
 :pattern ( (select (|PolymorphicMapType_17728_11554_3229#PolymorphicMapType_17728| ZeroMask) o_9@@11 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_17728_11554_3229#PolymorphicMapType_17728| QPMask@0) o_9@@11 f_5@@6))
))) (forall ((o_9@@12 T@Ref) (f_5@@7 T@Field_28812_28813) ) (!  (=> true (= (select (|PolymorphicMapType_17728_11554_11555#PolymorphicMapType_17728| ZeroMask) o_9@@12 f_5@@7) (select (|PolymorphicMapType_17728_11554_11555#PolymorphicMapType_17728| QPMask@0) o_9@@12 f_5@@7)))
 :qid |stdinbpl.1269:29|
 :skolemid |104|
 :pattern ( (select (|PolymorphicMapType_17728_11554_11555#PolymorphicMapType_17728| ZeroMask) o_9@@12 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_17728_11554_11555#PolymorphicMapType_17728| QPMask@0) o_9@@12 f_5@@7))
))) (forall ((o_9@@13 T@Ref) (f_5@@8 T@Field_32722_32727) ) (!  (=> true (= (select (|PolymorphicMapType_17728_11554_60944#PolymorphicMapType_17728| ZeroMask) o_9@@13 f_5@@8) (select (|PolymorphicMapType_17728_11554_60944#PolymorphicMapType_17728| QPMask@0) o_9@@13 f_5@@8)))
 :qid |stdinbpl.1269:29|
 :skolemid |104|
 :pattern ( (select (|PolymorphicMapType_17728_11554_60944#PolymorphicMapType_17728| ZeroMask) o_9@@13 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_17728_11554_60944#PolymorphicMapType_17728| QPMask@0) o_9@@13 f_5@@8))
))) (and (and (state Heap@@48 QPMask@0) (state Heap@@48 QPMask@0)) (and (state Heap@@48 QPMask@0) (state Heap@@48 QPMask@0)))) (and (and (and (=> (= (ControlFlow 0 75) 72) anon44_Else_correct) (=> (= (ControlFlow 0 75) 14) anon45_Else_correct)) (=> (= (ControlFlow 0 75) 19) anon46_Then_correct)) (=> (= (ControlFlow 0 75) 21) anon46_Else_correct))))))))
(let ((anon7_correct true))
(let ((anon43_Else_correct  (=> (and (not (and (<= 0 i_15) (< i_15 (|Seq#Length_11421| ys)))) (= (ControlFlow 0 12) 8)) anon7_correct)))
(let ((anon43_Then_correct  (=> (and (<= 0 i_15) (< i_15 (|Seq#Length_11421| ys))) (and (=> (= (ControlFlow 0 9) (- 0 11)) (>= i_15 0)) (=> (>= i_15 0) (and (=> (= (ControlFlow 0 9) (- 0 10)) (< i_15 (|Seq#Length_11421| ys))) (=> (< i_15 (|Seq#Length_11421| ys)) (=> (= (ControlFlow 0 9) 8) anon7_correct))))))))
(let ((anon40_Else_correct  (=> (forall ((ix_1 Int) (jx_1 Int) ) (!  (=> (and (>= ix_1 0) (and (< ix_1 (|Seq#Length_11421| ys)) (and (>= jx_1 0) (and (< jx_1 (|Seq#Length_11421| ys)) (not (= ix_1 jx_1)))))) (not (= (|Seq#Index_11421| ys ix_1) (|Seq#Index_11421| ys jx_1))))
 :qid |stdinbpl.1220:20|
 :skolemid |98|
 :pattern ( (|Seq#Index_11421| ys ix_1) (|Seq#Index_11421| ys jx_1))
)) (=> (and (state Heap@@48 ZeroMask) (state Heap@@48 ZeroMask)) (and (and (=> (= (ControlFlow 0 77) 75) anon42_Else_correct) (=> (= (ControlFlow 0 77) 9) anon43_Then_correct)) (=> (= (ControlFlow 0 77) 12) anon43_Else_correct))))))
(let ((anon3_correct true))
(let ((anon41_Else_correct  (=> (and (not (and (>= ix_11 0) (and (< ix_11 (|Seq#Length_11421| ys)) (and (>= jx_11 0) (and (< jx_11 (|Seq#Length_11421| ys)) (not (= ix_11 jx_11))))))) (= (ControlFlow 0 7) 1)) anon3_correct)))
(let ((anon41_Then_correct  (=> (and (>= ix_11 0) (and (< ix_11 (|Seq#Length_11421| ys)) (and (>= jx_11 0) (and (< jx_11 (|Seq#Length_11421| ys)) (not (= ix_11 jx_11)))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= ix_11 0)) (=> (>= ix_11 0) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< ix_11 (|Seq#Length_11421| ys))) (=> (< ix_11 (|Seq#Length_11421| ys)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= jx_11 0)) (=> (>= jx_11 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< jx_11 (|Seq#Length_11421| ys))) (=> (< jx_11 (|Seq#Length_11421| ys)) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))))))))
(let ((anon0_correct  (=> (state Heap@@48 ZeroMask) (=> (and (and (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (<= 0 k) (state Heap@@48 ZeroMask))) (and (and (state Heap@@48 ZeroMask) (< k (|Seq#Length_11421| ys))) (and (state Heap@@48 ZeroMask) (state Heap@@48 ZeroMask)))) (and (and (=> (= (ControlFlow 0 78) 77) anon40_Else_correct) (=> (= (ControlFlow 0 78) 2) anon41_Then_correct)) (=> (= (ControlFlow 0 78) 7) anon41_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 79) 78) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
