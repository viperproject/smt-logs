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
(declare-sort T@Field_42855_53 0)
(declare-sort T@Field_42868_42869 0)
(declare-sort T@Field_48965_4093 0)
(declare-sort T@Field_30100_120804 0)
(declare-sort T@Field_30100_120671 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_42816 0)) (((PolymorphicMapType_42816 (|PolymorphicMapType_42816_30100_4093#PolymorphicMapType_42816| (Array T@Ref T@Field_48965_4093 Real)) (|PolymorphicMapType_42816_30100_53#PolymorphicMapType_42816| (Array T@Ref T@Field_42855_53 Real)) (|PolymorphicMapType_42816_30100_42869#PolymorphicMapType_42816| (Array T@Ref T@Field_42868_42869 Real)) (|PolymorphicMapType_42816_30100_120671#PolymorphicMapType_42816| (Array T@Ref T@Field_30100_120671 Real)) (|PolymorphicMapType_42816_30100_124926#PolymorphicMapType_42816| (Array T@Ref T@Field_30100_120804 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_43344 0)) (((PolymorphicMapType_43344 (|PolymorphicMapType_43344_42855_53#PolymorphicMapType_43344| (Array T@Ref T@Field_42855_53 Bool)) (|PolymorphicMapType_43344_42855_42869#PolymorphicMapType_43344| (Array T@Ref T@Field_42868_42869 Bool)) (|PolymorphicMapType_43344_42855_4093#PolymorphicMapType_43344| (Array T@Ref T@Field_48965_4093 Bool)) (|PolymorphicMapType_43344_42855_120671#PolymorphicMapType_43344| (Array T@Ref T@Field_30100_120671 Bool)) (|PolymorphicMapType_43344_42855_121982#PolymorphicMapType_43344| (Array T@Ref T@Field_30100_120804 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_42795 0)) (((PolymorphicMapType_42795 (|PolymorphicMapType_42795_29820_53#PolymorphicMapType_42795| (Array T@Ref T@Field_42855_53 Bool)) (|PolymorphicMapType_42795_29823_29824#PolymorphicMapType_42795| (Array T@Ref T@Field_42868_42869 T@Ref)) (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| (Array T@Ref T@Field_48965_4093 Int)) (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| (Array T@Ref T@Field_30100_120804 T@PolymorphicMapType_43344)) (|PolymorphicMapType_42795_42855_120671#PolymorphicMapType_42795| (Array T@Ref T@Field_30100_120671 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_42855_53)
(declare-fun f_7 () T@Field_48965_4093)
(declare-fun g () T@Field_48965_4093)
(declare-sort T@Seq_49042 0)
(declare-fun |Seq#Length_30137| (T@Seq_49042) Int)
(declare-fun |Seq#Drop_30137| (T@Seq_49042 Int) T@Seq_49042)
(declare-sort T@Seq_3971 0)
(declare-fun |Seq#Length_3971| (T@Seq_3971) Int)
(declare-fun |Seq#Drop_3971| (T@Seq_3971 Int) T@Seq_3971)
(declare-fun |fun04#condqp8| (T@PolymorphicMapType_42795 T@Seq_49042 Bool) Int)
(declare-fun succHeapTrans (T@PolymorphicMapType_42795 T@PolymorphicMapType_42795) Bool)
(declare-fun |sk_fun04#condqp8| (Int Int) Int)
(declare-fun NoPerm () Real)
(declare-fun FullPerm () Real)
(declare-fun |Seq#Index_30128| (T@Seq_49042 Int) T@Ref)
(declare-fun succHeap (T@PolymorphicMapType_42795 T@PolymorphicMapType_42795) Bool)
(declare-fun state (T@PolymorphicMapType_42795 T@PolymorphicMapType_42816) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_42816) Bool)
(declare-fun |fun06'| (T@PolymorphicMapType_42795 T@Ref Int T@Seq_49042) Int)
(declare-fun dummyFunction_4450 (Int) Bool)
(declare-fun |fun06#triggerStateless| (T@Ref Int T@Seq_49042) Int)
(declare-fun ZeroPMask () T@PolymorphicMapType_43344)
(declare-fun |fun04'| (T@PolymorphicMapType_42795 T@Seq_49042 Bool) Int)
(declare-fun |fun04#triggerStateless| (T@Seq_49042 Bool) Int)
(declare-fun |fun05'| (T@PolymorphicMapType_42795 T@Ref T@Seq_49042) Int)
(declare-fun |fun05#triggerStateless| (T@Ref T@Seq_49042) Int)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3971| (T@Seq_3971 Int) Int)
(declare-fun |Seq#Empty_30137| () T@Seq_49042)
(declare-fun |Seq#Empty_3971| () T@Seq_3971)
(declare-fun |fun01'| (T@PolymorphicMapType_42795 T@Seq_49042) Int)
(declare-fun |fun01#triggerStateless| (T@Seq_49042) Int)
(declare-fun |fun02'| (T@PolymorphicMapType_42795 T@Seq_49042) Int)
(declare-fun |fun02#triggerStateless| (T@Seq_49042) Int)
(declare-fun |fun03'| (T@PolymorphicMapType_42795 T@Seq_49042) Int)
(declare-fun |fun03#triggerStateless| (T@Seq_49042) Int)
(declare-fun |fun07'| (T@PolymorphicMapType_42795 T@Seq_49042) Int)
(declare-fun |fun07#triggerStateless| (T@Seq_49042) Int)
(declare-fun |Seq#Update_30137| (T@Seq_49042 Int T@Ref) T@Seq_49042)
(declare-fun |Seq#Update_3971| (T@Seq_3971 Int Int) T@Seq_3971)
(declare-fun |Seq#Take_30137| (T@Seq_49042 Int) T@Seq_49042)
(declare-fun |Seq#Take_3971| (T@Seq_3971 Int) T@Seq_3971)
(declare-fun |Seq#Contains_3971| (T@Seq_3971 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3971)
(declare-fun |Seq#Contains_49042| (T@Seq_49042 T@Ref) Bool)
(declare-fun |Seq#Skolem_49042| (T@Seq_49042 T@Ref) Int)
(declare-fun |Seq#Skolem_3971| (T@Seq_3971 Int) Int)
(declare-fun fun01 (T@PolymorphicMapType_42795 T@Seq_49042) Int)
(declare-fun fun02 (T@PolymorphicMapType_42795 T@Seq_49042) Int)
(declare-fun fun03 (T@PolymorphicMapType_42795 T@Seq_49042) Int)
(declare-fun fun07 (T@PolymorphicMapType_42795 T@Seq_49042) Int)
(declare-fun |fun05#frame| (T@FrameType T@Ref T@Seq_49042) Int)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_4258 (Int) T@FrameType)
(declare-fun |fun05#condqp9| (T@PolymorphicMapType_42795 T@Ref T@Seq_49042) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_42795 T@PolymorphicMapType_42795 T@PolymorphicMapType_42816) Bool)
(declare-fun IsPredicateField_30100_120762 (T@Field_30100_120671) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_30100 (T@Field_30100_120671) T@Field_30100_120804)
(declare-fun HasDirectPerm_30100_120735 (T@PolymorphicMapType_42816 T@Ref T@Field_30100_120671) Bool)
(declare-fun IsWandField_30100_122509 (T@Field_30100_120671) Bool)
(declare-fun WandMaskField_30100 (T@Field_30100_120671) T@Field_30100_120804)
(declare-fun |Seq#Singleton_30137| (T@Ref) T@Seq_49042)
(declare-fun |Seq#Singleton_3971| (Int) T@Seq_3971)
(declare-fun |fun06#condqp10| (T@PolymorphicMapType_42795 T@Ref Int T@Seq_49042) Int)
(declare-fun |sk_fun06#condqp10| (Int Int) Int)
(declare-fun |Seq#Append_49042| (T@Seq_49042 T@Seq_49042) T@Seq_49042)
(declare-fun |Seq#Append_3971| (T@Seq_3971 T@Seq_3971) T@Seq_3971)
(declare-fun |fun04#frame| (T@FrameType T@Seq_49042 Bool) Int)
(declare-fun FrameFragment_30011 (T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |fun04#condqp7| (T@PolymorphicMapType_42795 T@Seq_49042 Bool) Int)
(declare-fun dummyHeap () T@PolymorphicMapType_42795)
(declare-fun ZeroMask () T@PolymorphicMapType_42816)
(declare-fun |fun02#frame| (T@FrameType T@Seq_49042) Int)
(declare-fun |fun02#condqp2| (T@PolymorphicMapType_42795 T@Seq_49042) Int)
(declare-fun |fun02#condqp3| (T@PolymorphicMapType_42795 T@Seq_49042) Int)
(declare-fun |fun03#frame| (T@FrameType T@Seq_49042) Int)
(declare-fun |fun03#condqp4| (T@PolymorphicMapType_42795 T@Seq_49042) Int)
(declare-fun |fun03#condqp5| (T@PolymorphicMapType_42795 T@Seq_49042) Int)
(declare-fun InsidePredicate_42855_42855 (T@Field_30100_120671 T@FrameType T@Field_30100_120671 T@FrameType) Bool)
(declare-fun IsPredicateField_30100_4093 (T@Field_48965_4093) Bool)
(declare-fun IsWandField_30100_4093 (T@Field_48965_4093) Bool)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_30100_126055 (T@Field_30100_120804) Bool)
(declare-fun IsWandField_30100_126071 (T@Field_30100_120804) Bool)
(declare-fun IsPredicateField_30100_42869 (T@Field_42868_42869) Bool)
(declare-fun IsWandField_30100_42869 (T@Field_42868_42869) Bool)
(declare-fun IsPredicateField_30100_53 (T@Field_42855_53) Bool)
(declare-fun IsWandField_30100_53 (T@Field_42855_53) Bool)
(declare-fun HasDirectPerm_30100_126509 (T@PolymorphicMapType_42816 T@Ref T@Field_30100_120804) Bool)
(declare-fun HasDirectPerm_30100_42869 (T@PolymorphicMapType_42816 T@Ref T@Field_42868_42869) Bool)
(declare-fun HasDirectPerm_30100_53 (T@PolymorphicMapType_42816 T@Ref T@Field_42855_53) Bool)
(declare-fun HasDirectPerm_30100_4093 (T@PolymorphicMapType_42816 T@Ref T@Field_48965_4093) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun |fun01#condqp1| (T@PolymorphicMapType_42795 T@Seq_49042) Int)
(declare-fun |sk_fun01#condqp1| (Int Int) Int)
(declare-fun |sk_fun02#condqp2| (Int Int) Int)
(declare-fun |sk_fun03#condqp4| (Int Int) Int)
(declare-fun |fun07#condqp6| (T@PolymorphicMapType_42795 T@Seq_49042) Int)
(declare-fun |sk_fun07#condqp6| (Int Int) Int)
(declare-fun fun04 (T@PolymorphicMapType_42795 T@Seq_49042 Bool) Int)
(declare-fun fun05 (T@PolymorphicMapType_42795 T@Ref T@Seq_49042) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |Seq#ContainsTrigger_3971| (T@Seq_3971 Int) Bool)
(declare-fun sumMask (T@PolymorphicMapType_42816 T@PolymorphicMapType_42816 T@PolymorphicMapType_42816) Bool)
(declare-fun |Seq#Equal_49042| (T@Seq_49042 T@Seq_49042) Bool)
(declare-fun |Seq#Equal_3971| (T@Seq_3971 T@Seq_3971) Bool)
(declare-fun fun06 (T@PolymorphicMapType_42795 T@Ref Int T@Seq_49042) Int)
(declare-fun |Seq#ContainsTrigger_30137| (T@Seq_49042 T@Ref) Bool)
(declare-fun |sk_fun04#condqp7| (Int Int) Int)
(declare-fun |sk_fun05#condqp9| (Int Int) Int)
(declare-fun |sk_fun02#condqp3| (Int Int) Int)
(declare-fun |sk_fun03#condqp5| (Int Int) Int)
(declare-fun |fun01#frame| (T@FrameType T@Seq_49042) Int)
(declare-fun |fun07#frame| (T@FrameType T@Seq_49042) Int)
(declare-fun |fun06#frame| (T@FrameType T@Ref Int T@Seq_49042) Int)
(declare-fun |Seq#SkolemDiff_49042| (T@Seq_49042 T@Seq_49042) Int)
(declare-fun |Seq#SkolemDiff_3971| (T@Seq_3971 T@Seq_3971) Int)
(assert (distinct f_7 g)
)
(assert (forall ((s T@Seq_49042) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_30137| s)) (= (|Seq#Length_30137| (|Seq#Drop_30137| s n)) (- (|Seq#Length_30137| s) n))) (=> (< (|Seq#Length_30137| s) n) (= (|Seq#Length_30137| (|Seq#Drop_30137| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_30137| (|Seq#Drop_30137| s n)) (|Seq#Length_30137| s))))
 :qid |stdinbpl.432:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_30137| (|Seq#Drop_30137| s n)))
 :pattern ( (|Seq#Length_30137| s) (|Seq#Drop_30137| s n))
)))
(assert (forall ((s@@0 T@Seq_3971) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3971| s@@0)) (= (|Seq#Length_3971| (|Seq#Drop_3971| s@@0 n@@0)) (- (|Seq#Length_3971| s@@0) n@@0))) (=> (< (|Seq#Length_3971| s@@0) n@@0) (= (|Seq#Length_3971| (|Seq#Drop_3971| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3971| (|Seq#Drop_3971| s@@0 n@@0)) (|Seq#Length_3971| s@@0))))
 :qid |stdinbpl.432:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3971| (|Seq#Drop_3971| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3971| s@@0) (|Seq#Drop_3971| s@@0 n@@0))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_42795) (Heap1Heap T@PolymorphicMapType_42795) (xs T@Seq_49042) (b_24 Bool) ) (!  (=> (and (=  (and (and (<= 6 (|sk_fun04#condqp8| (|fun04#condqp8| Heap2Heap xs b_24) (|fun04#condqp8| Heap1Heap xs b_24))) (< (|sk_fun04#condqp8| (|fun04#condqp8| Heap2Heap xs b_24) (|fun04#condqp8| Heap1Heap xs b_24)) 9)) (< NoPerm FullPerm))  (and (and (<= 6 (|sk_fun04#condqp8| (|fun04#condqp8| Heap2Heap xs b_24) (|fun04#condqp8| Heap1Heap xs b_24))) (< (|sk_fun04#condqp8| (|fun04#condqp8| Heap2Heap xs b_24) (|fun04#condqp8| Heap1Heap xs b_24)) 9)) (< NoPerm FullPerm))) (=> (and (and (<= 6 (|sk_fun04#condqp8| (|fun04#condqp8| Heap2Heap xs b_24) (|fun04#condqp8| Heap1Heap xs b_24))) (< (|sk_fun04#condqp8| (|fun04#condqp8| Heap2Heap xs b_24) (|fun04#condqp8| Heap1Heap xs b_24)) 9)) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap2Heap) (|Seq#Index_30128| xs (|sk_fun04#condqp8| (|fun04#condqp8| Heap2Heap xs b_24) (|fun04#condqp8| Heap1Heap xs b_24))) f_7) (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap1Heap) (|Seq#Index_30128| xs (|sk_fun04#condqp8| (|fun04#condqp8| Heap2Heap xs b_24) (|fun04#condqp8| Heap1Heap xs b_24))) f_7)))) (= (|fun04#condqp8| Heap2Heap xs b_24) (|fun04#condqp8| Heap1Heap xs b_24)))
 :qid |stdinbpl.1433:15|
 :skolemid |125|
 :pattern ( (|fun04#condqp8| Heap2Heap xs b_24) (|fun04#condqp8| Heap1Heap xs b_24) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_42795) (Heap1 T@PolymorphicMapType_42795) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_42795) (Mask T@PolymorphicMapType_42816) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_42795) (Heap1@@0 T@PolymorphicMapType_42795) (Heap2 T@PolymorphicMapType_42795) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_42795) (x T@Ref) (i Int) (xs@@0 T@Seq_49042) ) (! (dummyFunction_4450 (|fun06#triggerStateless| x i xs@@0))
 :qid |stdinbpl.1746:15|
 :skolemid |152|
 :pattern ( (|fun06'| Heap@@0 x i xs@@0))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_30100_120804) ) (!  (not (select (|PolymorphicMapType_43344_42855_121982#PolymorphicMapType_43344| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43344_42855_121982#PolymorphicMapType_43344| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_30100_120671) ) (!  (not (select (|PolymorphicMapType_43344_42855_120671#PolymorphicMapType_43344| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43344_42855_120671#PolymorphicMapType_43344| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_48965_4093) ) (!  (not (select (|PolymorphicMapType_43344_42855_4093#PolymorphicMapType_43344| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43344_42855_4093#PolymorphicMapType_43344| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_42868_42869) ) (!  (not (select (|PolymorphicMapType_43344_42855_42869#PolymorphicMapType_43344| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43344_42855_42869#PolymorphicMapType_43344| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_42855_53) ) (!  (not (select (|PolymorphicMapType_43344_42855_53#PolymorphicMapType_43344| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43344_42855_53#PolymorphicMapType_43344| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_42795) (xs@@1 T@Seq_49042) (b_24@@0 Bool) ) (! (dummyFunction_4450 (|fun04#triggerStateless| xs@@1 b_24@@0))
 :qid |stdinbpl.1406:15|
 :skolemid |122|
 :pattern ( (|fun04'| Heap@@1 xs@@1 b_24@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_42795) (x@@0 T@Ref) (xs@@2 T@Seq_49042) ) (! (dummyFunction_4450 (|fun05#triggerStateless| x@@0 xs@@2))
 :qid |stdinbpl.1614:15|
 :skolemid |141|
 :pattern ( (|fun05'| Heap@@2 x@@0 xs@@2))
)))
(assert (forall ((s@@1 T@Seq_49042) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_30137| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_30128| (|Seq#Drop_30137| s@@1 n@@1) j) (|Seq#Index_30128| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.453:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_30128| (|Seq#Drop_30137| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3971) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3971| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3971| (|Seq#Drop_3971| s@@2 n@@2) j@@0) (|Seq#Index_3971| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.453:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3971| (|Seq#Drop_3971| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_30137| |Seq#Empty_30137|) 0))
(assert (= (|Seq#Length_3971| |Seq#Empty_3971|) 0))
(assert (forall ((Heap@@3 T@PolymorphicMapType_42795) (xs@@3 T@Seq_49042) ) (! (dummyFunction_4450 (|fun01#triggerStateless| xs@@3))
 :qid |stdinbpl.721:15|
 :skolemid |59|
 :pattern ( (|fun01'| Heap@@3 xs@@3))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_42795) (xs@@4 T@Seq_49042) ) (! (dummyFunction_4450 (|fun02#triggerStateless| xs@@4))
 :qid |stdinbpl.846:15|
 :skolemid |70|
 :pattern ( (|fun02'| Heap@@4 xs@@4))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_42795) (xs@@5 T@Seq_49042) ) (! (dummyFunction_4450 (|fun03#triggerStateless| xs@@5))
 :qid |stdinbpl.1050:15|
 :skolemid |89|
 :pattern ( (|fun03'| Heap@@5 xs@@5))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_42795) (xs@@6 T@Seq_49042) ) (! (dummyFunction_4450 (|fun07#triggerStateless| xs@@6))
 :qid |stdinbpl.1281:15|
 :skolemid |111|
 :pattern ( (|fun07'| Heap@@6 xs@@6))
)))
(assert (forall ((s@@3 T@Seq_49042) (i@@0 Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_30137| s@@3))) (and (=> (= i@@0 n@@3) (= (|Seq#Index_30128| (|Seq#Update_30137| s@@3 i@@0 v) n@@3) v)) (=> (not (= i@@0 n@@3)) (= (|Seq#Index_30128| (|Seq#Update_30137| s@@3 i@@0 v) n@@3) (|Seq#Index_30128| s@@3 n@@3)))))
 :qid |stdinbpl.408:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_30128| (|Seq#Update_30137| s@@3 i@@0 v) n@@3))
 :pattern ( (|Seq#Index_30128| s@@3 n@@3) (|Seq#Update_30137| s@@3 i@@0 v))
)))
(assert (forall ((s@@4 T@Seq_3971) (i@@1 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3971| s@@4))) (and (=> (= i@@1 n@@4) (= (|Seq#Index_3971| (|Seq#Update_3971| s@@4 i@@1 v@@0) n@@4) v@@0)) (=> (not (= i@@1 n@@4)) (= (|Seq#Index_3971| (|Seq#Update_3971| s@@4 i@@1 v@@0) n@@4) (|Seq#Index_3971| s@@4 n@@4)))))
 :qid |stdinbpl.408:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3971| (|Seq#Update_3971| s@@4 i@@1 v@@0) n@@4))
 :pattern ( (|Seq#Index_3971| s@@4 n@@4) (|Seq#Update_3971| s@@4 i@@1 v@@0))
)))
(assert (forall ((s@@5 T@Seq_49042) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_30137| s@@5)) (= (|Seq#Length_30137| (|Seq#Take_30137| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_30137| s@@5) n@@5) (= (|Seq#Length_30137| (|Seq#Take_30137| s@@5 n@@5)) (|Seq#Length_30137| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_30137| (|Seq#Take_30137| s@@5 n@@5)) 0)))
 :qid |stdinbpl.419:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_30137| (|Seq#Take_30137| s@@5 n@@5)))
 :pattern ( (|Seq#Take_30137| s@@5 n@@5) (|Seq#Length_30137| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3971) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3971| s@@6)) (= (|Seq#Length_3971| (|Seq#Take_3971| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3971| s@@6) n@@6) (= (|Seq#Length_3971| (|Seq#Take_3971| s@@6 n@@6)) (|Seq#Length_3971| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3971| (|Seq#Take_3971| s@@6 n@@6)) 0)))
 :qid |stdinbpl.419:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3971| (|Seq#Take_3971| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3971| s@@6 n@@6) (|Seq#Length_3971| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3971| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.693:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3971| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_49042) (x@@1 T@Ref) ) (!  (=> (|Seq#Contains_49042| s@@7 x@@1) (and (and (<= 0 (|Seq#Skolem_49042| s@@7 x@@1)) (< (|Seq#Skolem_49042| s@@7 x@@1) (|Seq#Length_30137| s@@7))) (= (|Seq#Index_30128| s@@7 (|Seq#Skolem_49042| s@@7 x@@1)) x@@1)))
 :qid |stdinbpl.551:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_49042| s@@7 x@@1))
)))
(assert (forall ((s@@8 T@Seq_3971) (x@@2 Int) ) (!  (=> (|Seq#Contains_3971| s@@8 x@@2) (and (and (<= 0 (|Seq#Skolem_3971| s@@8 x@@2)) (< (|Seq#Skolem_3971| s@@8 x@@2) (|Seq#Length_3971| s@@8))) (= (|Seq#Index_3971| s@@8 (|Seq#Skolem_3971| s@@8 x@@2)) x@@2)))
 :qid |stdinbpl.551:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3971| s@@8 x@@2))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_42795) (xs@@7 T@Seq_49042) ) (!  (and (= (fun01 Heap@@7 xs@@7) (|fun01'| Heap@@7 xs@@7)) (dummyFunction_4450 (|fun01#triggerStateless| xs@@7)))
 :qid |stdinbpl.717:15|
 :skolemid |58|
 :pattern ( (fun01 Heap@@7 xs@@7))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_42795) (xs@@8 T@Seq_49042) ) (!  (and (= (fun02 Heap@@8 xs@@8) (|fun02'| Heap@@8 xs@@8)) (dummyFunction_4450 (|fun02#triggerStateless| xs@@8)))
 :qid |stdinbpl.842:15|
 :skolemid |69|
 :pattern ( (fun02 Heap@@8 xs@@8))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_42795) (xs@@9 T@Seq_49042) ) (!  (and (= (fun03 Heap@@9 xs@@9) (|fun03'| Heap@@9 xs@@9)) (dummyFunction_4450 (|fun03#triggerStateless| xs@@9)))
 :qid |stdinbpl.1046:15|
 :skolemid |88|
 :pattern ( (fun03 Heap@@9 xs@@9))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_42795) (xs@@10 T@Seq_49042) ) (!  (and (= (fun07 Heap@@10 xs@@10) (|fun07'| Heap@@10 xs@@10)) (dummyFunction_4450 (|fun07#triggerStateless| xs@@10)))
 :qid |stdinbpl.1277:15|
 :skolemid |110|
 :pattern ( (fun07 Heap@@10 xs@@10))
)))
(assert (forall ((s@@9 T@Seq_49042) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_30137| s@@9 n@@7) s@@9))
 :qid |stdinbpl.535:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_30137| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3971) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3971| s@@10 n@@8) s@@10))
 :qid |stdinbpl.535:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3971| s@@10 n@@8))
)))
(assert (forall ((i@@2 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@2 j@@1) (- i@@2 j@@1))
 :qid |stdinbpl.388:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@2 j@@1))
)))
(assert (forall ((i@@3 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@3 j@@2) (+ i@@3 j@@2))
 :qid |stdinbpl.386:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@3 j@@2))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_42795) (Mask@@0 T@PolymorphicMapType_42816) (x@@3 T@Ref) (xs@@11 T@Seq_49042) ) (!  (=> (state Heap@@11 Mask@@0) (= (|fun05'| Heap@@11 x@@3 xs@@11) (|fun05#frame| (CombineFrames (FrameFragment_4258 (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap@@11) x@@3 g)) (FrameFragment_4258 (|fun05#condqp9| Heap@@11 x@@3 xs@@11))) x@@3 xs@@11)))
 :qid |stdinbpl.1621:15|
 :skolemid |142|
 :pattern ( (state Heap@@11 Mask@@0) (|fun05'| Heap@@11 x@@3 xs@@11))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_42795) (ExhaleHeap T@PolymorphicMapType_42795) (Mask@@1 T@PolymorphicMapType_42816) (pm_f_33 T@Field_30100_120671) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_30100_120735 Mask@@1 null pm_f_33) (IsPredicateField_30100_120762 pm_f_33)) (= (select (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| Heap@@12) null (PredicateMaskField_30100 pm_f_33)) (select (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| ExhaleHeap) null (PredicateMaskField_30100 pm_f_33)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap Mask@@1) (IsPredicateField_30100_120762 pm_f_33) (select (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| ExhaleHeap) null (PredicateMaskField_30100 pm_f_33)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_42795) (ExhaleHeap@@0 T@PolymorphicMapType_42795) (Mask@@2 T@PolymorphicMapType_42816) (pm_f_33@@0 T@Field_30100_120671) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_30100_120735 Mask@@2 null pm_f_33@@0) (IsWandField_30100_122509 pm_f_33@@0)) (= (select (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| Heap@@13) null (WandMaskField_30100 pm_f_33@@0)) (select (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| ExhaleHeap@@0) null (WandMaskField_30100 pm_f_33@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@0 Mask@@2) (IsWandField_30100_122509 pm_f_33@@0) (select (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| ExhaleHeap@@0) null (WandMaskField_30100 pm_f_33@@0)))
)))
(assert (forall ((x@@4 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_49042| (|Seq#Singleton_30137| x@@4) y) (= x@@4 y))
 :qid |stdinbpl.676:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_49042| (|Seq#Singleton_30137| x@@4) y))
)))
(assert (forall ((x@@5 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3971| (|Seq#Singleton_3971| x@@5) y@@0) (= x@@5 y@@0))
 :qid |stdinbpl.676:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3971| (|Seq#Singleton_3971| x@@5) y@@0))
)))
(assert (forall ((s@@11 T@Seq_49042) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_30137| s@@11))) (= (|Seq#Index_30128| (|Seq#Take_30137| s@@11 n@@9) j@@3) (|Seq#Index_30128| s@@11 j@@3)))
 :qid |stdinbpl.427:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_30128| (|Seq#Take_30137| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_30128| s@@11 j@@3) (|Seq#Take_30137| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3971) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3971| s@@12))) (= (|Seq#Index_3971| (|Seq#Take_3971| s@@12 n@@10) j@@4) (|Seq#Index_3971| s@@12 j@@4)))
 :qid |stdinbpl.427:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3971| (|Seq#Take_3971| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3971| s@@12 j@@4) (|Seq#Take_3971| s@@12 n@@10))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_42795) (Heap1Heap@@0 T@PolymorphicMapType_42795) (x@@6 T@Ref) (i@@4 Int) (xs@@12 T@Seq_49042) ) (!  (=> (and (=  (and (and (<= 0 (|sk_fun06#condqp10| (|fun06#condqp10| Heap2Heap@@0 x@@6 i@@4 xs@@12) (|fun06#condqp10| Heap1Heap@@0 x@@6 i@@4 xs@@12))) (< (|sk_fun06#condqp10| (|fun06#condqp10| Heap2Heap@@0 x@@6 i@@4 xs@@12) (|fun06#condqp10| Heap1Heap@@0 x@@6 i@@4 xs@@12)) 3)) (< NoPerm FullPerm))  (and (and (<= 0 (|sk_fun06#condqp10| (|fun06#condqp10| Heap2Heap@@0 x@@6 i@@4 xs@@12) (|fun06#condqp10| Heap1Heap@@0 x@@6 i@@4 xs@@12))) (< (|sk_fun06#condqp10| (|fun06#condqp10| Heap2Heap@@0 x@@6 i@@4 xs@@12) (|fun06#condqp10| Heap1Heap@@0 x@@6 i@@4 xs@@12)) 3)) (< NoPerm FullPerm))) (=> (and (and (<= 0 (|sk_fun06#condqp10| (|fun06#condqp10| Heap2Heap@@0 x@@6 i@@4 xs@@12) (|fun06#condqp10| Heap1Heap@@0 x@@6 i@@4 xs@@12))) (< (|sk_fun06#condqp10| (|fun06#condqp10| Heap2Heap@@0 x@@6 i@@4 xs@@12) (|fun06#condqp10| Heap1Heap@@0 x@@6 i@@4 xs@@12)) 3)) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap2Heap@@0) (|Seq#Index_30128| xs@@12 (|sk_fun06#condqp10| (|fun06#condqp10| Heap2Heap@@0 x@@6 i@@4 xs@@12) (|fun06#condqp10| Heap1Heap@@0 x@@6 i@@4 xs@@12))) f_7) (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap1Heap@@0) (|Seq#Index_30128| xs@@12 (|sk_fun06#condqp10| (|fun06#condqp10| Heap2Heap@@0 x@@6 i@@4 xs@@12) (|fun06#condqp10| Heap1Heap@@0 x@@6 i@@4 xs@@12))) f_7)))) (= (|fun06#condqp10| Heap2Heap@@0 x@@6 i@@4 xs@@12) (|fun06#condqp10| Heap1Heap@@0 x@@6 i@@4 xs@@12)))
 :qid |stdinbpl.1763:15|
 :skolemid |154|
 :pattern ( (|fun06#condqp10| Heap2Heap@@0 x@@6 i@@4 xs@@12) (|fun06#condqp10| Heap1Heap@@0 x@@6 i@@4 xs@@12) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (forall ((s@@13 T@Seq_49042) (t T@Seq_49042) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_30137| s@@13))) (< n@@11 (|Seq#Length_30137| (|Seq#Append_49042| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_30137| s@@13)) (|Seq#Length_30137| s@@13)) n@@11) (= (|Seq#Take_30137| (|Seq#Append_49042| s@@13 t) n@@11) (|Seq#Append_49042| s@@13 (|Seq#Take_30137| t (|Seq#Sub| n@@11 (|Seq#Length_30137| s@@13)))))))
 :qid |stdinbpl.512:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_30137| (|Seq#Append_49042| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3971) (t@@0 T@Seq_3971) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3971| s@@14))) (< n@@12 (|Seq#Length_3971| (|Seq#Append_3971| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3971| s@@14)) (|Seq#Length_3971| s@@14)) n@@12) (= (|Seq#Take_3971| (|Seq#Append_3971| s@@14 t@@0) n@@12) (|Seq#Append_3971| s@@14 (|Seq#Take_3971| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3971| s@@14)))))))
 :qid |stdinbpl.512:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3971| (|Seq#Append_3971| s@@14 t@@0) n@@12))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_42795) (Mask@@3 T@PolymorphicMapType_42816) (xs@@13 T@Seq_49042) (b_24@@1 Bool) ) (!  (=> (state Heap@@14 Mask@@3) (= (|fun04'| Heap@@14 xs@@13 b_24@@1) (|fun04#frame| (CombineFrames (FrameFragment_30011 (ite b_24@@1 EmptyFrame EmptyFrame)) (FrameFragment_30011 (ite b_24@@1 (FrameFragment_4258 (|fun04#condqp7| Heap@@14 xs@@13 b_24@@1)) (FrameFragment_4258 (|fun04#condqp8| Heap@@14 xs@@13 b_24@@1))))) xs@@13 b_24@@1)))
 :qid |stdinbpl.1413:15|
 :skolemid |123|
 :pattern ( (state Heap@@14 Mask@@3) (|fun04'| Heap@@14 xs@@13 b_24@@1))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@15 T@PolymorphicMapType_42795) (Mask@@4 T@PolymorphicMapType_42816) (xs@@14 T@Seq_49042) ) (!  (=> (state Heap@@15 Mask@@4) (= (|fun02'| Heap@@15 xs@@14) (|fun02#frame| (CombineFrames (FrameFragment_4258 (|fun02#condqp2| Heap@@15 xs@@14)) (FrameFragment_4258 (|fun02#condqp3| Heap@@15 xs@@14))) xs@@14)))
 :qid |stdinbpl.853:15|
 :skolemid |71|
 :pattern ( (state Heap@@15 Mask@@4) (|fun02'| Heap@@15 xs@@14))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_42795) (Mask@@5 T@PolymorphicMapType_42816) (xs@@15 T@Seq_49042) ) (!  (=> (state Heap@@16 Mask@@5) (= (|fun03'| Heap@@16 xs@@15) (|fun03#frame| (CombineFrames (FrameFragment_4258 (|fun03#condqp4| Heap@@16 xs@@15)) (FrameFragment_4258 (|fun03#condqp5| Heap@@16 xs@@15))) xs@@15)))
 :qid |stdinbpl.1069:15|
 :skolemid |93|
 :pattern ( (state Heap@@16 Mask@@5) (|fun03'| Heap@@16 xs@@15))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_42795) (ExhaleHeap@@1 T@PolymorphicMapType_42795) (Mask@@6 T@PolymorphicMapType_42816) (o_63 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@1 Mask@@6) (=> (select (|PolymorphicMapType_42795_29820_53#PolymorphicMapType_42795| Heap@@17) o_63 $allocated) (select (|PolymorphicMapType_42795_29820_53#PolymorphicMapType_42795| ExhaleHeap@@1) o_63 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@1 Mask@@6) (select (|PolymorphicMapType_42795_29820_53#PolymorphicMapType_42795| ExhaleHeap@@1) o_63 $allocated))
)))
(assert (forall ((p T@Field_30100_120671) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_42855_42855 p v_1 p w))
 :qid |stdinbpl.330:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_42855_42855 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_49042) (s1 T@Seq_49042) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_30137|)) (not (= s1 |Seq#Empty_30137|))) (<= (|Seq#Length_30137| s0) n@@13)) (< n@@13 (|Seq#Length_30137| (|Seq#Append_49042| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_30137| s0)) (|Seq#Length_30137| s0)) n@@13) (= (|Seq#Index_30128| (|Seq#Append_49042| s0 s1) n@@13) (|Seq#Index_30128| s1 (|Seq#Sub| n@@13 (|Seq#Length_30137| s0))))))
 :qid |stdinbpl.399:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_30128| (|Seq#Append_49042| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3971) (s1@@0 T@Seq_3971) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3971|)) (not (= s1@@0 |Seq#Empty_3971|))) (<= (|Seq#Length_3971| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3971| (|Seq#Append_3971| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3971| s0@@0)) (|Seq#Length_3971| s0@@0)) n@@14) (= (|Seq#Index_3971| (|Seq#Append_3971| s0@@0 s1@@0) n@@14) (|Seq#Index_3971| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3971| s0@@0))))))
 :qid |stdinbpl.399:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3971| (|Seq#Append_3971| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_30100_4093 f_7)))
(assert  (not (IsWandField_30100_4093 f_7)))
(assert  (not (IsPredicateField_30100_4093 g)))
(assert  (not (IsWandField_30100_4093 g)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_42795) (ExhaleHeap@@2 T@PolymorphicMapType_42795) (Mask@@7 T@PolymorphicMapType_42816) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@2 Mask@@7) (succHeap Heap@@18 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@2 Mask@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_42816) (o_2@@4 T@Ref) (f_4@@4 T@Field_30100_120804) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_42816_30100_124926#PolymorphicMapType_42816| Mask@@8) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_30100_126055 f_4@@4))) (not (IsWandField_30100_126071 f_4@@4))) (<= (select (|PolymorphicMapType_42816_30100_124926#PolymorphicMapType_42816| Mask@@8) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_42816_30100_124926#PolymorphicMapType_42816| Mask@@8) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_42816) (o_2@@5 T@Ref) (f_4@@5 T@Field_30100_120671) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_42816_30100_120671#PolymorphicMapType_42816| Mask@@9) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_30100_120762 f_4@@5))) (not (IsWandField_30100_122509 f_4@@5))) (<= (select (|PolymorphicMapType_42816_30100_120671#PolymorphicMapType_42816| Mask@@9) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_42816_30100_120671#PolymorphicMapType_42816| Mask@@9) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_42816) (o_2@@6 T@Ref) (f_4@@6 T@Field_42868_42869) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_42816_30100_42869#PolymorphicMapType_42816| Mask@@10) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_30100_42869 f_4@@6))) (not (IsWandField_30100_42869 f_4@@6))) (<= (select (|PolymorphicMapType_42816_30100_42869#PolymorphicMapType_42816| Mask@@10) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_42816_30100_42869#PolymorphicMapType_42816| Mask@@10) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_42816) (o_2@@7 T@Ref) (f_4@@7 T@Field_42855_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_42816_30100_53#PolymorphicMapType_42816| Mask@@11) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_30100_53 f_4@@7))) (not (IsWandField_30100_53 f_4@@7))) (<= (select (|PolymorphicMapType_42816_30100_53#PolymorphicMapType_42816| Mask@@11) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_42816_30100_53#PolymorphicMapType_42816| Mask@@11) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_42816) (o_2@@8 T@Ref) (f_4@@8 T@Field_48965_4093) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_42816_30100_4093#PolymorphicMapType_42816| Mask@@12) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_30100_4093 f_4@@8))) (not (IsWandField_30100_4093 f_4@@8))) (<= (select (|PolymorphicMapType_42816_30100_4093#PolymorphicMapType_42816| Mask@@12) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_42816_30100_4093#PolymorphicMapType_42816| Mask@@12) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_42816) (o_2@@9 T@Ref) (f_4@@9 T@Field_30100_120804) ) (! (= (HasDirectPerm_30100_126509 Mask@@13 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_42816_30100_124926#PolymorphicMapType_42816| Mask@@13) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_30100_126509 Mask@@13 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_42816) (o_2@@10 T@Ref) (f_4@@10 T@Field_30100_120671) ) (! (= (HasDirectPerm_30100_120735 Mask@@14 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_42816_30100_120671#PolymorphicMapType_42816| Mask@@14) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_30100_120735 Mask@@14 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_42816) (o_2@@11 T@Ref) (f_4@@11 T@Field_42868_42869) ) (! (= (HasDirectPerm_30100_42869 Mask@@15 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_42816_30100_42869#PolymorphicMapType_42816| Mask@@15) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_30100_42869 Mask@@15 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_42816) (o_2@@12 T@Ref) (f_4@@12 T@Field_42855_53) ) (! (= (HasDirectPerm_30100_53 Mask@@16 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_42816_30100_53#PolymorphicMapType_42816| Mask@@16) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_30100_53 Mask@@16 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_42816) (o_2@@13 T@Ref) (f_4@@13 T@Field_48965_4093) ) (! (= (HasDirectPerm_30100_4093 Mask@@17 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_42816_30100_4093#PolymorphicMapType_42816| Mask@@17) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_30100_4093 Mask@@17 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_42795) (ExhaleHeap@@3 T@PolymorphicMapType_42795) (Mask@@18 T@PolymorphicMapType_42816) (pm_f_33@@1 T@Field_30100_120671) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@3 Mask@@18) (=> (and (HasDirectPerm_30100_120735 Mask@@18 null pm_f_33@@1) (IsPredicateField_30100_120762 pm_f_33@@1)) (and (and (and (and (forall ((o2_33 T@Ref) (f_65 T@Field_42855_53) ) (!  (=> (select (|PolymorphicMapType_43344_42855_53#PolymorphicMapType_43344| (select (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| Heap@@19) null (PredicateMaskField_30100 pm_f_33@@1))) o2_33 f_65) (= (select (|PolymorphicMapType_42795_29820_53#PolymorphicMapType_42795| Heap@@19) o2_33 f_65) (select (|PolymorphicMapType_42795_29820_53#PolymorphicMapType_42795| ExhaleHeap@@3) o2_33 f_65)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_42795_29820_53#PolymorphicMapType_42795| ExhaleHeap@@3) o2_33 f_65))
)) (forall ((o2_33@@0 T@Ref) (f_65@@0 T@Field_42868_42869) ) (!  (=> (select (|PolymorphicMapType_43344_42855_42869#PolymorphicMapType_43344| (select (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| Heap@@19) null (PredicateMaskField_30100 pm_f_33@@1))) o2_33@@0 f_65@@0) (= (select (|PolymorphicMapType_42795_29823_29824#PolymorphicMapType_42795| Heap@@19) o2_33@@0 f_65@@0) (select (|PolymorphicMapType_42795_29823_29824#PolymorphicMapType_42795| ExhaleHeap@@3) o2_33@@0 f_65@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_42795_29823_29824#PolymorphicMapType_42795| ExhaleHeap@@3) o2_33@@0 f_65@@0))
))) (forall ((o2_33@@1 T@Ref) (f_65@@1 T@Field_48965_4093) ) (!  (=> (select (|PolymorphicMapType_43344_42855_4093#PolymorphicMapType_43344| (select (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| Heap@@19) null (PredicateMaskField_30100 pm_f_33@@1))) o2_33@@1 f_65@@1) (= (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap@@19) o2_33@@1 f_65@@1) (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| ExhaleHeap@@3) o2_33@@1 f_65@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| ExhaleHeap@@3) o2_33@@1 f_65@@1))
))) (forall ((o2_33@@2 T@Ref) (f_65@@2 T@Field_30100_120671) ) (!  (=> (select (|PolymorphicMapType_43344_42855_120671#PolymorphicMapType_43344| (select (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| Heap@@19) null (PredicateMaskField_30100 pm_f_33@@1))) o2_33@@2 f_65@@2) (= (select (|PolymorphicMapType_42795_42855_120671#PolymorphicMapType_42795| Heap@@19) o2_33@@2 f_65@@2) (select (|PolymorphicMapType_42795_42855_120671#PolymorphicMapType_42795| ExhaleHeap@@3) o2_33@@2 f_65@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_42795_42855_120671#PolymorphicMapType_42795| ExhaleHeap@@3) o2_33@@2 f_65@@2))
))) (forall ((o2_33@@3 T@Ref) (f_65@@3 T@Field_30100_120804) ) (!  (=> (select (|PolymorphicMapType_43344_42855_121982#PolymorphicMapType_43344| (select (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| Heap@@19) null (PredicateMaskField_30100 pm_f_33@@1))) o2_33@@3 f_65@@3) (= (select (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| Heap@@19) o2_33@@3 f_65@@3) (select (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| ExhaleHeap@@3) o2_33@@3 f_65@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| ExhaleHeap@@3) o2_33@@3 f_65@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@3 Mask@@18) (IsPredicateField_30100_120762 pm_f_33@@1))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_42795) (ExhaleHeap@@4 T@PolymorphicMapType_42795) (Mask@@19 T@PolymorphicMapType_42816) (pm_f_33@@2 T@Field_30100_120671) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@4 Mask@@19) (=> (and (HasDirectPerm_30100_120735 Mask@@19 null pm_f_33@@2) (IsWandField_30100_122509 pm_f_33@@2)) (and (and (and (and (forall ((o2_33@@4 T@Ref) (f_65@@4 T@Field_42855_53) ) (!  (=> (select (|PolymorphicMapType_43344_42855_53#PolymorphicMapType_43344| (select (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| Heap@@20) null (WandMaskField_30100 pm_f_33@@2))) o2_33@@4 f_65@@4) (= (select (|PolymorphicMapType_42795_29820_53#PolymorphicMapType_42795| Heap@@20) o2_33@@4 f_65@@4) (select (|PolymorphicMapType_42795_29820_53#PolymorphicMapType_42795| ExhaleHeap@@4) o2_33@@4 f_65@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_42795_29820_53#PolymorphicMapType_42795| ExhaleHeap@@4) o2_33@@4 f_65@@4))
)) (forall ((o2_33@@5 T@Ref) (f_65@@5 T@Field_42868_42869) ) (!  (=> (select (|PolymorphicMapType_43344_42855_42869#PolymorphicMapType_43344| (select (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| Heap@@20) null (WandMaskField_30100 pm_f_33@@2))) o2_33@@5 f_65@@5) (= (select (|PolymorphicMapType_42795_29823_29824#PolymorphicMapType_42795| Heap@@20) o2_33@@5 f_65@@5) (select (|PolymorphicMapType_42795_29823_29824#PolymorphicMapType_42795| ExhaleHeap@@4) o2_33@@5 f_65@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_42795_29823_29824#PolymorphicMapType_42795| ExhaleHeap@@4) o2_33@@5 f_65@@5))
))) (forall ((o2_33@@6 T@Ref) (f_65@@6 T@Field_48965_4093) ) (!  (=> (select (|PolymorphicMapType_43344_42855_4093#PolymorphicMapType_43344| (select (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| Heap@@20) null (WandMaskField_30100 pm_f_33@@2))) o2_33@@6 f_65@@6) (= (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap@@20) o2_33@@6 f_65@@6) (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| ExhaleHeap@@4) o2_33@@6 f_65@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| ExhaleHeap@@4) o2_33@@6 f_65@@6))
))) (forall ((o2_33@@7 T@Ref) (f_65@@7 T@Field_30100_120671) ) (!  (=> (select (|PolymorphicMapType_43344_42855_120671#PolymorphicMapType_43344| (select (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| Heap@@20) null (WandMaskField_30100 pm_f_33@@2))) o2_33@@7 f_65@@7) (= (select (|PolymorphicMapType_42795_42855_120671#PolymorphicMapType_42795| Heap@@20) o2_33@@7 f_65@@7) (select (|PolymorphicMapType_42795_42855_120671#PolymorphicMapType_42795| ExhaleHeap@@4) o2_33@@7 f_65@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_42795_42855_120671#PolymorphicMapType_42795| ExhaleHeap@@4) o2_33@@7 f_65@@7))
))) (forall ((o2_33@@8 T@Ref) (f_65@@8 T@Field_30100_120804) ) (!  (=> (select (|PolymorphicMapType_43344_42855_121982#PolymorphicMapType_43344| (select (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| Heap@@20) null (WandMaskField_30100 pm_f_33@@2))) o2_33@@8 f_65@@8) (= (select (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| Heap@@20) o2_33@@8 f_65@@8) (select (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| ExhaleHeap@@4) o2_33@@8 f_65@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| ExhaleHeap@@4) o2_33@@8 f_65@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@4 Mask@@19) (IsWandField_30100_122509 pm_f_33@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.318:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3971| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.691:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3971| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_42795) (ExhaleHeap@@5 T@PolymorphicMapType_42795) (Mask@@20 T@PolymorphicMapType_42816) (o_63@@0 T@Ref) (f_65@@9 T@Field_30100_120804) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@5 Mask@@20) (=> (HasDirectPerm_30100_126509 Mask@@20 o_63@@0 f_65@@9) (= (select (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| Heap@@21) o_63@@0 f_65@@9) (select (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| ExhaleHeap@@5) o_63@@0 f_65@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@5 Mask@@20) (select (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| ExhaleHeap@@5) o_63@@0 f_65@@9))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_42795) (ExhaleHeap@@6 T@PolymorphicMapType_42795) (Mask@@21 T@PolymorphicMapType_42816) (o_63@@1 T@Ref) (f_65@@10 T@Field_30100_120671) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@6 Mask@@21) (=> (HasDirectPerm_30100_120735 Mask@@21 o_63@@1 f_65@@10) (= (select (|PolymorphicMapType_42795_42855_120671#PolymorphicMapType_42795| Heap@@22) o_63@@1 f_65@@10) (select (|PolymorphicMapType_42795_42855_120671#PolymorphicMapType_42795| ExhaleHeap@@6) o_63@@1 f_65@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@6 Mask@@21) (select (|PolymorphicMapType_42795_42855_120671#PolymorphicMapType_42795| ExhaleHeap@@6) o_63@@1 f_65@@10))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_42795) (ExhaleHeap@@7 T@PolymorphicMapType_42795) (Mask@@22 T@PolymorphicMapType_42816) (o_63@@2 T@Ref) (f_65@@11 T@Field_42868_42869) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@7 Mask@@22) (=> (HasDirectPerm_30100_42869 Mask@@22 o_63@@2 f_65@@11) (= (select (|PolymorphicMapType_42795_29823_29824#PolymorphicMapType_42795| Heap@@23) o_63@@2 f_65@@11) (select (|PolymorphicMapType_42795_29823_29824#PolymorphicMapType_42795| ExhaleHeap@@7) o_63@@2 f_65@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@7 Mask@@22) (select (|PolymorphicMapType_42795_29823_29824#PolymorphicMapType_42795| ExhaleHeap@@7) o_63@@2 f_65@@11))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_42795) (ExhaleHeap@@8 T@PolymorphicMapType_42795) (Mask@@23 T@PolymorphicMapType_42816) (o_63@@3 T@Ref) (f_65@@12 T@Field_42855_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@8 Mask@@23) (=> (HasDirectPerm_30100_53 Mask@@23 o_63@@3 f_65@@12) (= (select (|PolymorphicMapType_42795_29820_53#PolymorphicMapType_42795| Heap@@24) o_63@@3 f_65@@12) (select (|PolymorphicMapType_42795_29820_53#PolymorphicMapType_42795| ExhaleHeap@@8) o_63@@3 f_65@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@8 Mask@@23) (select (|PolymorphicMapType_42795_29820_53#PolymorphicMapType_42795| ExhaleHeap@@8) o_63@@3 f_65@@12))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_42795) (ExhaleHeap@@9 T@PolymorphicMapType_42795) (Mask@@24 T@PolymorphicMapType_42816) (o_63@@4 T@Ref) (f_65@@13 T@Field_48965_4093) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@9 Mask@@24) (=> (HasDirectPerm_30100_4093 Mask@@24 o_63@@4 f_65@@13) (= (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap@@25) o_63@@4 f_65@@13) (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| ExhaleHeap@@9) o_63@@4 f_65@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@9 Mask@@24) (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| ExhaleHeap@@9) o_63@@4 f_65@@13))
)))
(assert (forall ((s0@@1 T@Seq_49042) (s1@@1 T@Seq_49042) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_30137|)) (not (= s1@@1 |Seq#Empty_30137|))) (= (|Seq#Length_30137| (|Seq#Append_49042| s0@@1 s1@@1)) (+ (|Seq#Length_30137| s0@@1) (|Seq#Length_30137| s1@@1))))
 :qid |stdinbpl.368:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_30137| (|Seq#Append_49042| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3971) (s1@@2 T@Seq_3971) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3971|)) (not (= s1@@2 |Seq#Empty_3971|))) (= (|Seq#Length_3971| (|Seq#Append_3971| s0@@2 s1@@2)) (+ (|Seq#Length_3971| s0@@2) (|Seq#Length_3971| s1@@2))))
 :qid |stdinbpl.368:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3971| (|Seq#Append_3971| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_30100_120804) ) (! (= (select (|PolymorphicMapType_42816_30100_124926#PolymorphicMapType_42816| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_42816_30100_124926#PolymorphicMapType_42816| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_30100_120671) ) (! (= (select (|PolymorphicMapType_42816_30100_120671#PolymorphicMapType_42816| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_42816_30100_120671#PolymorphicMapType_42816| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_42868_42869) ) (! (= (select (|PolymorphicMapType_42816_30100_42869#PolymorphicMapType_42816| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_42816_30100_42869#PolymorphicMapType_42816| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_42855_53) ) (! (= (select (|PolymorphicMapType_42816_30100_53#PolymorphicMapType_42816| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_42816_30100_53#PolymorphicMapType_42816| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_48965_4093) ) (! (= (select (|PolymorphicMapType_42816_30100_4093#PolymorphicMapType_42816| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_42816_30100_4093#PolymorphicMapType_42816| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((s@@15 T@Seq_49042) (t@@1 T@Seq_49042) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_30137| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_30137| s@@15)) (|Seq#Length_30137| s@@15)) n@@15) (= (|Seq#Drop_30137| (|Seq#Append_49042| s@@15 t@@1) n@@15) (|Seq#Drop_30137| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_30137| s@@15))))))
 :qid |stdinbpl.525:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_30137| (|Seq#Append_49042| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3971) (t@@2 T@Seq_3971) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3971| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3971| s@@16)) (|Seq#Length_3971| s@@16)) n@@16) (= (|Seq#Drop_3971| (|Seq#Append_3971| s@@16 t@@2) n@@16) (|Seq#Drop_3971| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3971| s@@16))))))
 :qid |stdinbpl.525:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3971| (|Seq#Append_3971| s@@16 t@@2) n@@16))
)))
(assert (forall ((Heap2Heap@@1 T@PolymorphicMapType_42795) (Heap1Heap@@1 T@PolymorphicMapType_42795) (xs@@16 T@Seq_49042) ) (!  (=> (and (=  (and (and (<= 0 (|sk_fun01#condqp1| (|fun01#condqp1| Heap2Heap@@1 xs@@16) (|fun01#condqp1| Heap1Heap@@1 xs@@16))) (< (|sk_fun01#condqp1| (|fun01#condqp1| Heap2Heap@@1 xs@@16) (|fun01#condqp1| Heap1Heap@@1 xs@@16)) 3)) (< NoPerm FullPerm))  (and (and (<= 0 (|sk_fun01#condqp1| (|fun01#condqp1| Heap2Heap@@1 xs@@16) (|fun01#condqp1| Heap1Heap@@1 xs@@16))) (< (|sk_fun01#condqp1| (|fun01#condqp1| Heap2Heap@@1 xs@@16) (|fun01#condqp1| Heap1Heap@@1 xs@@16)) 3)) (< NoPerm FullPerm))) (=> (and (and (<= 0 (|sk_fun01#condqp1| (|fun01#condqp1| Heap2Heap@@1 xs@@16) (|fun01#condqp1| Heap1Heap@@1 xs@@16))) (< (|sk_fun01#condqp1| (|fun01#condqp1| Heap2Heap@@1 xs@@16) (|fun01#condqp1| Heap1Heap@@1 xs@@16)) 3)) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap2Heap@@1) (|Seq#Index_30128| xs@@16 (|sk_fun01#condqp1| (|fun01#condqp1| Heap2Heap@@1 xs@@16) (|fun01#condqp1| Heap1Heap@@1 xs@@16))) f_7) (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap1Heap@@1) (|Seq#Index_30128| xs@@16 (|sk_fun01#condqp1| (|fun01#condqp1| Heap2Heap@@1 xs@@16) (|fun01#condqp1| Heap1Heap@@1 xs@@16))) f_7)))) (= (|fun01#condqp1| Heap2Heap@@1 xs@@16) (|fun01#condqp1| Heap1Heap@@1 xs@@16)))
 :qid |stdinbpl.738:15|
 :skolemid |61|
 :pattern ( (|fun01#condqp1| Heap2Heap@@1 xs@@16) (|fun01#condqp1| Heap1Heap@@1 xs@@16) (succHeapTrans Heap2Heap@@1 Heap1Heap@@1))
)))
(assert (forall ((Heap2Heap@@2 T@PolymorphicMapType_42795) (Heap1Heap@@2 T@PolymorphicMapType_42795) (xs@@17 T@Seq_49042) ) (!  (=> (and (=  (and (and (<= 0 (|sk_fun02#condqp2| (|fun02#condqp2| Heap2Heap@@2 xs@@17) (|fun02#condqp2| Heap1Heap@@2 xs@@17))) (< (|sk_fun02#condqp2| (|fun02#condqp2| Heap2Heap@@2 xs@@17) (|fun02#condqp2| Heap1Heap@@2 xs@@17)) 3)) (< NoPerm FullPerm))  (and (and (<= 0 (|sk_fun02#condqp2| (|fun02#condqp2| Heap2Heap@@2 xs@@17) (|fun02#condqp2| Heap1Heap@@2 xs@@17))) (< (|sk_fun02#condqp2| (|fun02#condqp2| Heap2Heap@@2 xs@@17) (|fun02#condqp2| Heap1Heap@@2 xs@@17)) 3)) (< NoPerm FullPerm))) (=> (and (and (<= 0 (|sk_fun02#condqp2| (|fun02#condqp2| Heap2Heap@@2 xs@@17) (|fun02#condqp2| Heap1Heap@@2 xs@@17))) (< (|sk_fun02#condqp2| (|fun02#condqp2| Heap2Heap@@2 xs@@17) (|fun02#condqp2| Heap1Heap@@2 xs@@17)) 3)) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap2Heap@@2) (|Seq#Index_30128| xs@@17 (|sk_fun02#condqp2| (|fun02#condqp2| Heap2Heap@@2 xs@@17) (|fun02#condqp2| Heap1Heap@@2 xs@@17))) f_7) (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap1Heap@@2) (|Seq#Index_30128| xs@@17 (|sk_fun02#condqp2| (|fun02#condqp2| Heap2Heap@@2 xs@@17) (|fun02#condqp2| Heap1Heap@@2 xs@@17))) f_7)))) (= (|fun02#condqp2| Heap2Heap@@2 xs@@17) (|fun02#condqp2| Heap1Heap@@2 xs@@17)))
 :qid |stdinbpl.863:15|
 :skolemid |72|
 :pattern ( (|fun02#condqp2| Heap2Heap@@2 xs@@17) (|fun02#condqp2| Heap1Heap@@2 xs@@17) (succHeapTrans Heap2Heap@@2 Heap1Heap@@2))
)))
(assert (forall ((Heap2Heap@@3 T@PolymorphicMapType_42795) (Heap1Heap@@3 T@PolymorphicMapType_42795) (xs@@18 T@Seq_49042) ) (!  (=> (and (=  (and (and (<= 0 (|sk_fun03#condqp4| (|fun03#condqp4| Heap2Heap@@3 xs@@18) (|fun03#condqp4| Heap1Heap@@3 xs@@18))) (< (|sk_fun03#condqp4| (|fun03#condqp4| Heap2Heap@@3 xs@@18) (|fun03#condqp4| Heap1Heap@@3 xs@@18)) 3)) (< NoPerm FullPerm))  (and (and (<= 0 (|sk_fun03#condqp4| (|fun03#condqp4| Heap2Heap@@3 xs@@18) (|fun03#condqp4| Heap1Heap@@3 xs@@18))) (< (|sk_fun03#condqp4| (|fun03#condqp4| Heap2Heap@@3 xs@@18) (|fun03#condqp4| Heap1Heap@@3 xs@@18)) 3)) (< NoPerm FullPerm))) (=> (and (and (<= 0 (|sk_fun03#condqp4| (|fun03#condqp4| Heap2Heap@@3 xs@@18) (|fun03#condqp4| Heap1Heap@@3 xs@@18))) (< (|sk_fun03#condqp4| (|fun03#condqp4| Heap2Heap@@3 xs@@18) (|fun03#condqp4| Heap1Heap@@3 xs@@18)) 3)) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap2Heap@@3) (|Seq#Index_30128| xs@@18 (|sk_fun03#condqp4| (|fun03#condqp4| Heap2Heap@@3 xs@@18) (|fun03#condqp4| Heap1Heap@@3 xs@@18))) f_7) (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap1Heap@@3) (|Seq#Index_30128| xs@@18 (|sk_fun03#condqp4| (|fun03#condqp4| Heap2Heap@@3 xs@@18) (|fun03#condqp4| Heap1Heap@@3 xs@@18))) f_7)))) (= (|fun03#condqp4| Heap2Heap@@3 xs@@18) (|fun03#condqp4| Heap1Heap@@3 xs@@18)))
 :qid |stdinbpl.1079:15|
 :skolemid |94|
 :pattern ( (|fun03#condqp4| Heap2Heap@@3 xs@@18) (|fun03#condqp4| Heap1Heap@@3 xs@@18) (succHeapTrans Heap2Heap@@3 Heap1Heap@@3))
)))
(assert (forall ((Heap2Heap@@4 T@PolymorphicMapType_42795) (Heap1Heap@@4 T@PolymorphicMapType_42795) (xs@@19 T@Seq_49042) ) (!  (=> (and (=  (and (and (<= 0 (|sk_fun07#condqp6| (|fun07#condqp6| Heap2Heap@@4 xs@@19) (|fun07#condqp6| Heap1Heap@@4 xs@@19))) (< (|sk_fun07#condqp6| (|fun07#condqp6| Heap2Heap@@4 xs@@19) (|fun07#condqp6| Heap1Heap@@4 xs@@19)) 3)) (< NoPerm FullPerm))  (and (and (<= 0 (|sk_fun07#condqp6| (|fun07#condqp6| Heap2Heap@@4 xs@@19) (|fun07#condqp6| Heap1Heap@@4 xs@@19))) (< (|sk_fun07#condqp6| (|fun07#condqp6| Heap2Heap@@4 xs@@19) (|fun07#condqp6| Heap1Heap@@4 xs@@19)) 3)) (< NoPerm FullPerm))) (=> (and (and (<= 0 (|sk_fun07#condqp6| (|fun07#condqp6| Heap2Heap@@4 xs@@19) (|fun07#condqp6| Heap1Heap@@4 xs@@19))) (< (|sk_fun07#condqp6| (|fun07#condqp6| Heap2Heap@@4 xs@@19) (|fun07#condqp6| Heap1Heap@@4 xs@@19)) 3)) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap2Heap@@4) (|Seq#Index_30128| xs@@19 (|sk_fun07#condqp6| (|fun07#condqp6| Heap2Heap@@4 xs@@19) (|fun07#condqp6| Heap1Heap@@4 xs@@19))) f_7) (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap1Heap@@4) (|Seq#Index_30128| xs@@19 (|sk_fun07#condqp6| (|fun07#condqp6| Heap2Heap@@4 xs@@19) (|fun07#condqp6| Heap1Heap@@4 xs@@19))) f_7)))) (= (|fun07#condqp6| Heap2Heap@@4 xs@@19) (|fun07#condqp6| Heap1Heap@@4 xs@@19)))
 :qid |stdinbpl.1298:15|
 :skolemid |113|
 :pattern ( (|fun07#condqp6| Heap2Heap@@4 xs@@19) (|fun07#condqp6| Heap1Heap@@4 xs@@19) (succHeapTrans Heap2Heap@@4 Heap1Heap@@4))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_42795) (xs@@20 T@Seq_49042) (b_24@@2 Bool) ) (!  (and (= (fun04 Heap@@26 xs@@20 b_24@@2) (|fun04'| Heap@@26 xs@@20 b_24@@2)) (dummyFunction_4450 (|fun04#triggerStateless| xs@@20 b_24@@2)))
 :qid |stdinbpl.1402:15|
 :skolemid |121|
 :pattern ( (fun04 Heap@@26 xs@@20 b_24@@2))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_42795) (x@@7 T@Ref) (xs@@21 T@Seq_49042) ) (!  (and (= (fun05 Heap@@27 x@@7 xs@@21) (|fun05'| Heap@@27 x@@7 xs@@21)) (dummyFunction_4450 (|fun05#triggerStateless| x@@7 xs@@21)))
 :qid |stdinbpl.1610:15|
 :skolemid |140|
 :pattern ( (fun05 Heap@@27 x@@7 xs@@21))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_42795) (Mask@@25 T@PolymorphicMapType_42816) (xs@@22 T@Seq_49042) ) (!  (=> (and (state Heap@@28 Mask@@25) (< AssumeFunctionsAbove 6)) (=> (and (and (> (|Seq#Length_30137| xs@@22) 10) (forall ((i1 Int) (i2_1 Int) ) (!  (=> (and (|Seq#Contains_3971| (|Seq#Range| 0 3) i1) (and (|Seq#Contains_3971| (|Seq#Range| 0 3) i2_1) (not (= i1 i2_1)))) (not (= (|Seq#Index_30128| xs@@22 i1) (|Seq#Index_30128| xs@@22 i2_1))))
 :qid |stdinbpl.1058:85|
 :skolemid |90|
 :pattern ( (|Seq#ContainsTrigger_3971| (|Seq#Range| 0 3) i1) (|Seq#ContainsTrigger_3971| (|Seq#Range| 0 3) i2_1))
 :pattern ( (|Seq#ContainsTrigger_3971| (|Seq#Range| 0 3) i1) (|Seq#Contains_3971| (|Seq#Range| 0 3) i2_1))
 :pattern ( (|Seq#Contains_3971| (|Seq#Range| 0 3) i1) (|Seq#ContainsTrigger_3971| (|Seq#Range| 0 3) i2_1))
 :pattern ( (|Seq#Contains_3971| (|Seq#Range| 0 3) i1) (|Seq#Contains_3971| (|Seq#Range| 0 3) i2_1))
 :pattern ( (|Seq#ContainsTrigger_3971| (|Seq#Range| 0 3) i1) (|Seq#Index_30128| xs@@22 i2_1))
 :pattern ( (|Seq#Contains_3971| (|Seq#Range| 0 3) i1) (|Seq#Index_30128| xs@@22 i2_1))
 :pattern ( (|Seq#ContainsTrigger_3971| (|Seq#Range| 0 3) i2_1) (|Seq#Index_30128| xs@@22 i1))
 :pattern ( (|Seq#Contains_3971| (|Seq#Range| 0 3) i2_1) (|Seq#Index_30128| xs@@22 i1))
 :pattern ( (|Seq#Index_30128| xs@@22 i1) (|Seq#Index_30128| xs@@22 i2_1))
))) (forall ((i1_1_1 Int) (i2_1_1 Int) ) (!  (=> (and (|Seq#Contains_3971| (|Seq#Range| 6 9) i1_1_1) (and (|Seq#Contains_3971| (|Seq#Range| 6 9) i2_1_1) (not (= i1_1_1 i2_1_1)))) (not (= (|Seq#Index_30128| xs@@22 i1_1_1) (|Seq#Index_30128| xs@@22 i2_1_1))))
 :qid |stdinbpl.1061:17|
 :skolemid |91|
 :pattern ( (|Seq#ContainsTrigger_3971| (|Seq#Range| 6 9) i1_1_1) (|Seq#ContainsTrigger_3971| (|Seq#Range| 6 9) i2_1_1))
 :pattern ( (|Seq#ContainsTrigger_3971| (|Seq#Range| 6 9) i1_1_1) (|Seq#Contains_3971| (|Seq#Range| 6 9) i2_1_1))
 :pattern ( (|Seq#Contains_3971| (|Seq#Range| 6 9) i1_1_1) (|Seq#ContainsTrigger_3971| (|Seq#Range| 6 9) i2_1_1))
 :pattern ( (|Seq#Contains_3971| (|Seq#Range| 6 9) i1_1_1) (|Seq#Contains_3971| (|Seq#Range| 6 9) i2_1_1))
 :pattern ( (|Seq#ContainsTrigger_3971| (|Seq#Range| 6 9) i1_1_1) (|Seq#Index_30128| xs@@22 i2_1_1))
 :pattern ( (|Seq#Contains_3971| (|Seq#Range| 6 9) i1_1_1) (|Seq#Index_30128| xs@@22 i2_1_1))
 :pattern ( (|Seq#ContainsTrigger_3971| (|Seq#Range| 6 9) i2_1_1) (|Seq#Index_30128| xs@@22 i1_1_1))
 :pattern ( (|Seq#Contains_3971| (|Seq#Range| 6 9) i2_1_1) (|Seq#Index_30128| xs@@22 i1_1_1))
 :pattern ( (|Seq#Index_30128| xs@@22 i1_1_1) (|Seq#Index_30128| xs@@22 i2_1_1))
))) (= (fun03 Heap@@28 xs@@22) (+ (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap@@28) (|Seq#Index_30128| xs@@22 2) f_7) (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap@@28) (|Seq#Index_30128| xs@@22 6) f_7)))))
 :qid |stdinbpl.1056:15|
 :skolemid |92|
 :pattern ( (state Heap@@28 Mask@@25) (fun03 Heap@@28 xs@@22))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_42816) (SummandMask1 T@PolymorphicMapType_42816) (SummandMask2 T@PolymorphicMapType_42816) (o_2@@19 T@Ref) (f_4@@19 T@Field_30100_120804) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_42816_30100_124926#PolymorphicMapType_42816| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_42816_30100_124926#PolymorphicMapType_42816| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_42816_30100_124926#PolymorphicMapType_42816| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_42816_30100_124926#PolymorphicMapType_42816| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_42816_30100_124926#PolymorphicMapType_42816| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_42816_30100_124926#PolymorphicMapType_42816| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_42816) (SummandMask1@@0 T@PolymorphicMapType_42816) (SummandMask2@@0 T@PolymorphicMapType_42816) (o_2@@20 T@Ref) (f_4@@20 T@Field_30100_120671) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_42816_30100_120671#PolymorphicMapType_42816| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_42816_30100_120671#PolymorphicMapType_42816| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_42816_30100_120671#PolymorphicMapType_42816| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_42816_30100_120671#PolymorphicMapType_42816| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_42816_30100_120671#PolymorphicMapType_42816| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_42816_30100_120671#PolymorphicMapType_42816| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_42816) (SummandMask1@@1 T@PolymorphicMapType_42816) (SummandMask2@@1 T@PolymorphicMapType_42816) (o_2@@21 T@Ref) (f_4@@21 T@Field_42868_42869) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_42816_30100_42869#PolymorphicMapType_42816| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_42816_30100_42869#PolymorphicMapType_42816| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_42816_30100_42869#PolymorphicMapType_42816| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_42816_30100_42869#PolymorphicMapType_42816| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_42816_30100_42869#PolymorphicMapType_42816| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_42816_30100_42869#PolymorphicMapType_42816| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_42816) (SummandMask1@@2 T@PolymorphicMapType_42816) (SummandMask2@@2 T@PolymorphicMapType_42816) (o_2@@22 T@Ref) (f_4@@22 T@Field_42855_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_42816_30100_53#PolymorphicMapType_42816| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_42816_30100_53#PolymorphicMapType_42816| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_42816_30100_53#PolymorphicMapType_42816| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_42816_30100_53#PolymorphicMapType_42816| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_42816_30100_53#PolymorphicMapType_42816| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_42816_30100_53#PolymorphicMapType_42816| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_42816) (SummandMask1@@3 T@PolymorphicMapType_42816) (SummandMask2@@3 T@PolymorphicMapType_42816) (o_2@@23 T@Ref) (f_4@@23 T@Field_48965_4093) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_42816_30100_4093#PolymorphicMapType_42816| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_42816_30100_4093#PolymorphicMapType_42816| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_42816_30100_4093#PolymorphicMapType_42816| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_42816_30100_4093#PolymorphicMapType_42816| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_42816_30100_4093#PolymorphicMapType_42816| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_42816_30100_4093#PolymorphicMapType_42816| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3971| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3971| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.690:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3971| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_49042) (b T@Seq_49042) ) (!  (=> (|Seq#Equal_49042| a b) (= a b))
 :qid |stdinbpl.663:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_49042| a b))
)))
(assert (forall ((a@@0 T@Seq_3971) (b@@0 T@Seq_3971) ) (!  (=> (|Seq#Equal_3971| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.663:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3971| a@@0 b@@0))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_42795) (x@@8 T@Ref) (i@@5 Int) (xs@@23 T@Seq_49042) ) (!  (and (= (fun06 Heap@@29 x@@8 i@@5 xs@@23) (|fun06'| Heap@@29 x@@8 i@@5 xs@@23)) (dummyFunction_4450 (|fun06#triggerStateless| x@@8 i@@5 xs@@23)))
 :qid |stdinbpl.1742:15|
 :skolemid |151|
 :pattern ( (fun06 Heap@@29 x@@8 i@@5 xs@@23))
)))
(assert (forall ((s@@17 T@Seq_49042) (i@@6 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_30137| s@@17))) (|Seq#ContainsTrigger_30137| s@@17 (|Seq#Index_30128| s@@17 i@@6)))
 :qid |stdinbpl.556:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_30128| s@@17 i@@6))
)))
(assert (forall ((s@@18 T@Seq_3971) (i@@7 Int) ) (!  (=> (and (<= 0 i@@7) (< i@@7 (|Seq#Length_3971| s@@18))) (|Seq#ContainsTrigger_3971| s@@18 (|Seq#Index_3971| s@@18 i@@7)))
 :qid |stdinbpl.556:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3971| s@@18 i@@7))
)))
(assert (forall ((s0@@3 T@Seq_49042) (s1@@3 T@Seq_49042) ) (!  (and (=> (= s0@@3 |Seq#Empty_30137|) (= (|Seq#Append_49042| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_30137|) (= (|Seq#Append_49042| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.374:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_49042| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3971) (s1@@4 T@Seq_3971) ) (!  (and (=> (= s0@@4 |Seq#Empty_3971|) (= (|Seq#Append_3971| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3971|) (= (|Seq#Append_3971| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.374:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3971| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_30128| (|Seq#Singleton_30137| t@@3) 0) t@@3)
 :qid |stdinbpl.378:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_30137| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3971| (|Seq#Singleton_3971| t@@4) 0) t@@4)
 :qid |stdinbpl.378:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3971| t@@4))
)))
(assert (forall ((s@@19 T@Seq_49042) ) (! (<= 0 (|Seq#Length_30137| s@@19))
 :qid |stdinbpl.357:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_30137| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3971) ) (! (<= 0 (|Seq#Length_3971| s@@20))
 :qid |stdinbpl.357:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3971| s@@20))
)))
(assert (forall ((Heap2Heap@@5 T@PolymorphicMapType_42795) (Heap1Heap@@5 T@PolymorphicMapType_42795) (xs@@24 T@Seq_49042) (b_24@@3 Bool) ) (!  (=> (and (=  (and (and (<= 0 (|sk_fun04#condqp7| (|fun04#condqp7| Heap2Heap@@5 xs@@24 b_24@@3) (|fun04#condqp7| Heap1Heap@@5 xs@@24 b_24@@3))) (< (|sk_fun04#condqp7| (|fun04#condqp7| Heap2Heap@@5 xs@@24 b_24@@3) (|fun04#condqp7| Heap1Heap@@5 xs@@24 b_24@@3)) 3)) (< NoPerm FullPerm))  (and (and (<= 0 (|sk_fun04#condqp7| (|fun04#condqp7| Heap2Heap@@5 xs@@24 b_24@@3) (|fun04#condqp7| Heap1Heap@@5 xs@@24 b_24@@3))) (< (|sk_fun04#condqp7| (|fun04#condqp7| Heap2Heap@@5 xs@@24 b_24@@3) (|fun04#condqp7| Heap1Heap@@5 xs@@24 b_24@@3)) 3)) (< NoPerm FullPerm))) (=> (and (and (<= 0 (|sk_fun04#condqp7| (|fun04#condqp7| Heap2Heap@@5 xs@@24 b_24@@3) (|fun04#condqp7| Heap1Heap@@5 xs@@24 b_24@@3))) (< (|sk_fun04#condqp7| (|fun04#condqp7| Heap2Heap@@5 xs@@24 b_24@@3) (|fun04#condqp7| Heap1Heap@@5 xs@@24 b_24@@3)) 3)) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap2Heap@@5) (|Seq#Index_30128| xs@@24 (|sk_fun04#condqp7| (|fun04#condqp7| Heap2Heap@@5 xs@@24 b_24@@3) (|fun04#condqp7| Heap1Heap@@5 xs@@24 b_24@@3))) f_7) (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap1Heap@@5) (|Seq#Index_30128| xs@@24 (|sk_fun04#condqp7| (|fun04#condqp7| Heap2Heap@@5 xs@@24 b_24@@3) (|fun04#condqp7| Heap1Heap@@5 xs@@24 b_24@@3))) f_7)))) (= (|fun04#condqp7| Heap2Heap@@5 xs@@24 b_24@@3) (|fun04#condqp7| Heap1Heap@@5 xs@@24 b_24@@3)))
 :qid |stdinbpl.1423:15|
 :skolemid |124|
 :pattern ( (|fun04#condqp7| Heap2Heap@@5 xs@@24 b_24@@3) (|fun04#condqp7| Heap1Heap@@5 xs@@24 b_24@@3) (succHeapTrans Heap2Heap@@5 Heap1Heap@@5))
)))
(assert (forall ((Heap2Heap@@6 T@PolymorphicMapType_42795) (Heap1Heap@@6 T@PolymorphicMapType_42795) (x@@9 T@Ref) (xs@@25 T@Seq_49042) ) (!  (=> (and (=  (and (and (<= 0 (|sk_fun05#condqp9| (|fun05#condqp9| Heap2Heap@@6 x@@9 xs@@25) (|fun05#condqp9| Heap1Heap@@6 x@@9 xs@@25))) (< (|sk_fun05#condqp9| (|fun05#condqp9| Heap2Heap@@6 x@@9 xs@@25) (|fun05#condqp9| Heap1Heap@@6 x@@9 xs@@25)) 3)) (< NoPerm FullPerm))  (and (and (<= 0 (|sk_fun05#condqp9| (|fun05#condqp9| Heap2Heap@@6 x@@9 xs@@25) (|fun05#condqp9| Heap1Heap@@6 x@@9 xs@@25))) (< (|sk_fun05#condqp9| (|fun05#condqp9| Heap2Heap@@6 x@@9 xs@@25) (|fun05#condqp9| Heap1Heap@@6 x@@9 xs@@25)) 3)) (< NoPerm FullPerm))) (=> (and (and (<= 0 (|sk_fun05#condqp9| (|fun05#condqp9| Heap2Heap@@6 x@@9 xs@@25) (|fun05#condqp9| Heap1Heap@@6 x@@9 xs@@25))) (< (|sk_fun05#condqp9| (|fun05#condqp9| Heap2Heap@@6 x@@9 xs@@25) (|fun05#condqp9| Heap1Heap@@6 x@@9 xs@@25)) 3)) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap2Heap@@6) (|Seq#Index_30128| xs@@25 (|sk_fun05#condqp9| (|fun05#condqp9| Heap2Heap@@6 x@@9 xs@@25) (|fun05#condqp9| Heap1Heap@@6 x@@9 xs@@25))) f_7) (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap1Heap@@6) (|Seq#Index_30128| xs@@25 (|sk_fun05#condqp9| (|fun05#condqp9| Heap2Heap@@6 x@@9 xs@@25) (|fun05#condqp9| Heap1Heap@@6 x@@9 xs@@25))) f_7)))) (= (|fun05#condqp9| Heap2Heap@@6 x@@9 xs@@25) (|fun05#condqp9| Heap1Heap@@6 x@@9 xs@@25)))
 :qid |stdinbpl.1631:15|
 :skolemid |143|
 :pattern ( (|fun05#condqp9| Heap2Heap@@6 x@@9 xs@@25) (|fun05#condqp9| Heap1Heap@@6 x@@9 xs@@25) (succHeapTrans Heap2Heap@@6 Heap1Heap@@6))
)))
(assert (forall ((s0@@5 T@Seq_49042) (s1@@5 T@Seq_49042) ) (!  (=> (|Seq#Equal_49042| s0@@5 s1@@5) (and (= (|Seq#Length_30137| s0@@5) (|Seq#Length_30137| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_30137| s0@@5))) (= (|Seq#Index_30128| s0@@5 j@@6) (|Seq#Index_30128| s1@@5 j@@6)))
 :qid |stdinbpl.653:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_30128| s0@@5 j@@6))
 :pattern ( (|Seq#Index_30128| s1@@5 j@@6))
))))
 :qid |stdinbpl.650:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_49042| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3971) (s1@@6 T@Seq_3971) ) (!  (=> (|Seq#Equal_3971| s0@@6 s1@@6) (and (= (|Seq#Length_3971| s0@@6) (|Seq#Length_3971| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_3971| s0@@6))) (= (|Seq#Index_3971| s0@@6 j@@7) (|Seq#Index_3971| s1@@6 j@@7)))
 :qid |stdinbpl.653:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3971| s0@@6 j@@7))
 :pattern ( (|Seq#Index_3971| s1@@6 j@@7))
))))
 :qid |stdinbpl.650:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3971| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_30137| (|Seq#Singleton_30137| t@@5)) 1)
 :qid |stdinbpl.365:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_30137| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3971| (|Seq#Singleton_3971| t@@6)) 1)
 :qid |stdinbpl.365:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3971| t@@6))
)))
(assert (forall ((s@@21 T@Seq_49042) (t@@7 T@Seq_49042) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_30137| s@@21))) (= (|Seq#Take_30137| (|Seq#Append_49042| s@@21 t@@7) n@@17) (|Seq#Take_30137| s@@21 n@@17)))
 :qid |stdinbpl.507:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_30137| (|Seq#Append_49042| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3971) (t@@8 T@Seq_3971) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3971| s@@22))) (= (|Seq#Take_3971| (|Seq#Append_3971| s@@22 t@@8) n@@18) (|Seq#Take_3971| s@@22 n@@18)))
 :qid |stdinbpl.507:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3971| (|Seq#Append_3971| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_49042) (i@@8 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@8) (< i@@8 (|Seq#Length_30137| s@@23))) (= (|Seq#Length_30137| (|Seq#Update_30137| s@@23 i@@8 v@@2)) (|Seq#Length_30137| s@@23)))
 :qid |stdinbpl.406:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_30137| (|Seq#Update_30137| s@@23 i@@8 v@@2)))
 :pattern ( (|Seq#Length_30137| s@@23) (|Seq#Update_30137| s@@23 i@@8 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3971) (i@@9 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@9) (< i@@9 (|Seq#Length_3971| s@@24))) (= (|Seq#Length_3971| (|Seq#Update_3971| s@@24 i@@9 v@@3)) (|Seq#Length_3971| s@@24)))
 :qid |stdinbpl.406:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3971| (|Seq#Update_3971| s@@24 i@@9 v@@3)))
 :pattern ( (|Seq#Length_3971| s@@24) (|Seq#Update_3971| s@@24 i@@9 v@@3))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_42795) (o_29 T@Ref) (f_52 T@Field_30100_120671) (v@@4 T@FrameType) ) (! (succHeap Heap@@30 (PolymorphicMapType_42795 (|PolymorphicMapType_42795_29820_53#PolymorphicMapType_42795| Heap@@30) (|PolymorphicMapType_42795_29823_29824#PolymorphicMapType_42795| Heap@@30) (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap@@30) (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| Heap@@30) (store (|PolymorphicMapType_42795_42855_120671#PolymorphicMapType_42795| Heap@@30) o_29 f_52 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_42795 (|PolymorphicMapType_42795_29820_53#PolymorphicMapType_42795| Heap@@30) (|PolymorphicMapType_42795_29823_29824#PolymorphicMapType_42795| Heap@@30) (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap@@30) (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| Heap@@30) (store (|PolymorphicMapType_42795_42855_120671#PolymorphicMapType_42795| Heap@@30) o_29 f_52 v@@4)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_42795) (o_29@@0 T@Ref) (f_52@@0 T@Field_30100_120804) (v@@5 T@PolymorphicMapType_43344) ) (! (succHeap Heap@@31 (PolymorphicMapType_42795 (|PolymorphicMapType_42795_29820_53#PolymorphicMapType_42795| Heap@@31) (|PolymorphicMapType_42795_29823_29824#PolymorphicMapType_42795| Heap@@31) (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap@@31) (store (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| Heap@@31) o_29@@0 f_52@@0 v@@5) (|PolymorphicMapType_42795_42855_120671#PolymorphicMapType_42795| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_42795 (|PolymorphicMapType_42795_29820_53#PolymorphicMapType_42795| Heap@@31) (|PolymorphicMapType_42795_29823_29824#PolymorphicMapType_42795| Heap@@31) (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap@@31) (store (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| Heap@@31) o_29@@0 f_52@@0 v@@5) (|PolymorphicMapType_42795_42855_120671#PolymorphicMapType_42795| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_42795) (o_29@@1 T@Ref) (f_52@@1 T@Field_48965_4093) (v@@6 Int) ) (! (succHeap Heap@@32 (PolymorphicMapType_42795 (|PolymorphicMapType_42795_29820_53#PolymorphicMapType_42795| Heap@@32) (|PolymorphicMapType_42795_29823_29824#PolymorphicMapType_42795| Heap@@32) (store (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap@@32) o_29@@1 f_52@@1 v@@6) (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| Heap@@32) (|PolymorphicMapType_42795_42855_120671#PolymorphicMapType_42795| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_42795 (|PolymorphicMapType_42795_29820_53#PolymorphicMapType_42795| Heap@@32) (|PolymorphicMapType_42795_29823_29824#PolymorphicMapType_42795| Heap@@32) (store (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap@@32) o_29@@1 f_52@@1 v@@6) (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| Heap@@32) (|PolymorphicMapType_42795_42855_120671#PolymorphicMapType_42795| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_42795) (o_29@@2 T@Ref) (f_52@@2 T@Field_42868_42869) (v@@7 T@Ref) ) (! (succHeap Heap@@33 (PolymorphicMapType_42795 (|PolymorphicMapType_42795_29820_53#PolymorphicMapType_42795| Heap@@33) (store (|PolymorphicMapType_42795_29823_29824#PolymorphicMapType_42795| Heap@@33) o_29@@2 f_52@@2 v@@7) (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap@@33) (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| Heap@@33) (|PolymorphicMapType_42795_42855_120671#PolymorphicMapType_42795| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_42795 (|PolymorphicMapType_42795_29820_53#PolymorphicMapType_42795| Heap@@33) (store (|PolymorphicMapType_42795_29823_29824#PolymorphicMapType_42795| Heap@@33) o_29@@2 f_52@@2 v@@7) (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap@@33) (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| Heap@@33) (|PolymorphicMapType_42795_42855_120671#PolymorphicMapType_42795| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_42795) (o_29@@3 T@Ref) (f_52@@3 T@Field_42855_53) (v@@8 Bool) ) (! (succHeap Heap@@34 (PolymorphicMapType_42795 (store (|PolymorphicMapType_42795_29820_53#PolymorphicMapType_42795| Heap@@34) o_29@@3 f_52@@3 v@@8) (|PolymorphicMapType_42795_29823_29824#PolymorphicMapType_42795| Heap@@34) (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap@@34) (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| Heap@@34) (|PolymorphicMapType_42795_42855_120671#PolymorphicMapType_42795| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_42795 (store (|PolymorphicMapType_42795_29820_53#PolymorphicMapType_42795| Heap@@34) o_29@@3 f_52@@3 v@@8) (|PolymorphicMapType_42795_29823_29824#PolymorphicMapType_42795| Heap@@34) (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap@@34) (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| Heap@@34) (|PolymorphicMapType_42795_42855_120671#PolymorphicMapType_42795| Heap@@34)))
)))
(assert (forall ((s@@25 T@Seq_49042) (t@@9 T@Seq_49042) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_30137| s@@25))) (= (|Seq#Drop_30137| (|Seq#Append_49042| s@@25 t@@9) n@@19) (|Seq#Append_49042| (|Seq#Drop_30137| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.521:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_30137| (|Seq#Append_49042| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3971) (t@@10 T@Seq_3971) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3971| s@@26))) (= (|Seq#Drop_3971| (|Seq#Append_3971| s@@26 t@@10) n@@20) (|Seq#Append_3971| (|Seq#Drop_3971| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.521:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3971| (|Seq#Append_3971| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_49042) (n@@21 Int) (i@@10 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@10)) (< i@@10 (|Seq#Length_30137| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@10 n@@21) n@@21) i@@10) (= (|Seq#Index_30128| (|Seq#Drop_30137| s@@27 n@@21) (|Seq#Sub| i@@10 n@@21)) (|Seq#Index_30128| s@@27 i@@10))))
 :qid |stdinbpl.457:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_30137| s@@27 n@@21) (|Seq#Index_30128| s@@27 i@@10))
)))
(assert (forall ((s@@28 T@Seq_3971) (n@@22 Int) (i@@11 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@11)) (< i@@11 (|Seq#Length_3971| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@11 n@@22) n@@22) i@@11) (= (|Seq#Index_3971| (|Seq#Drop_3971| s@@28 n@@22) (|Seq#Sub| i@@11 n@@22)) (|Seq#Index_3971| s@@28 i@@11))))
 :qid |stdinbpl.457:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3971| s@@28 n@@22) (|Seq#Index_3971| s@@28 i@@11))
)))
(assert (forall ((Heap2Heap@@7 T@PolymorphicMapType_42795) (Heap1Heap@@7 T@PolymorphicMapType_42795) (xs@@26 T@Seq_49042) ) (!  (=> (and (=  (and (and (<= 6 (|sk_fun02#condqp3| (|fun02#condqp3| Heap2Heap@@7 xs@@26) (|fun02#condqp3| Heap1Heap@@7 xs@@26))) (< (|sk_fun02#condqp3| (|fun02#condqp3| Heap2Heap@@7 xs@@26) (|fun02#condqp3| Heap1Heap@@7 xs@@26)) 9)) (< NoPerm FullPerm))  (and (and (<= 6 (|sk_fun02#condqp3| (|fun02#condqp3| Heap2Heap@@7 xs@@26) (|fun02#condqp3| Heap1Heap@@7 xs@@26))) (< (|sk_fun02#condqp3| (|fun02#condqp3| Heap2Heap@@7 xs@@26) (|fun02#condqp3| Heap1Heap@@7 xs@@26)) 9)) (< NoPerm FullPerm))) (=> (and (and (<= 6 (|sk_fun02#condqp3| (|fun02#condqp3| Heap2Heap@@7 xs@@26) (|fun02#condqp3| Heap1Heap@@7 xs@@26))) (< (|sk_fun02#condqp3| (|fun02#condqp3| Heap2Heap@@7 xs@@26) (|fun02#condqp3| Heap1Heap@@7 xs@@26)) 9)) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap2Heap@@7) (|Seq#Index_30128| xs@@26 (|sk_fun02#condqp3| (|fun02#condqp3| Heap2Heap@@7 xs@@26) (|fun02#condqp3| Heap1Heap@@7 xs@@26))) f_7) (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap1Heap@@7) (|Seq#Index_30128| xs@@26 (|sk_fun02#condqp3| (|fun02#condqp3| Heap2Heap@@7 xs@@26) (|fun02#condqp3| Heap1Heap@@7 xs@@26))) f_7)))) (= (|fun02#condqp3| Heap2Heap@@7 xs@@26) (|fun02#condqp3| Heap1Heap@@7 xs@@26)))
 :qid |stdinbpl.873:15|
 :skolemid |73|
 :pattern ( (|fun02#condqp3| Heap2Heap@@7 xs@@26) (|fun02#condqp3| Heap1Heap@@7 xs@@26) (succHeapTrans Heap2Heap@@7 Heap1Heap@@7))
)))
(assert (forall ((Heap2Heap@@8 T@PolymorphicMapType_42795) (Heap1Heap@@8 T@PolymorphicMapType_42795) (xs@@27 T@Seq_49042) ) (!  (=> (and (=  (and (and (<= 6 (|sk_fun03#condqp5| (|fun03#condqp5| Heap2Heap@@8 xs@@27) (|fun03#condqp5| Heap1Heap@@8 xs@@27))) (< (|sk_fun03#condqp5| (|fun03#condqp5| Heap2Heap@@8 xs@@27) (|fun03#condqp5| Heap1Heap@@8 xs@@27)) 9)) (< NoPerm FullPerm))  (and (and (<= 6 (|sk_fun03#condqp5| (|fun03#condqp5| Heap2Heap@@8 xs@@27) (|fun03#condqp5| Heap1Heap@@8 xs@@27))) (< (|sk_fun03#condqp5| (|fun03#condqp5| Heap2Heap@@8 xs@@27) (|fun03#condqp5| Heap1Heap@@8 xs@@27)) 9)) (< NoPerm FullPerm))) (=> (and (and (<= 6 (|sk_fun03#condqp5| (|fun03#condqp5| Heap2Heap@@8 xs@@27) (|fun03#condqp5| Heap1Heap@@8 xs@@27))) (< (|sk_fun03#condqp5| (|fun03#condqp5| Heap2Heap@@8 xs@@27) (|fun03#condqp5| Heap1Heap@@8 xs@@27)) 9)) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap2Heap@@8) (|Seq#Index_30128| xs@@27 (|sk_fun03#condqp5| (|fun03#condqp5| Heap2Heap@@8 xs@@27) (|fun03#condqp5| Heap1Heap@@8 xs@@27))) f_7) (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap1Heap@@8) (|Seq#Index_30128| xs@@27 (|sk_fun03#condqp5| (|fun03#condqp5| Heap2Heap@@8 xs@@27) (|fun03#condqp5| Heap1Heap@@8 xs@@27))) f_7)))) (= (|fun03#condqp5| Heap2Heap@@8 xs@@27) (|fun03#condqp5| Heap1Heap@@8 xs@@27)))
 :qid |stdinbpl.1089:15|
 :skolemid |95|
 :pattern ( (|fun03#condqp5| Heap2Heap@@8 xs@@27) (|fun03#condqp5| Heap1Heap@@8 xs@@27) (succHeapTrans Heap2Heap@@8 Heap1Heap@@8))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_42795) (Mask@@26 T@PolymorphicMapType_42816) (xs@@28 T@Seq_49042) ) (!  (=> (state Heap@@35 Mask@@26) (= (|fun01'| Heap@@35 xs@@28) (|fun01#frame| (FrameFragment_4258 (|fun01#condqp1| Heap@@35 xs@@28)) xs@@28)))
 :qid |stdinbpl.728:15|
 :skolemid |60|
 :pattern ( (state Heap@@35 Mask@@26) (|fun01'| Heap@@35 xs@@28))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_42795) (Mask@@27 T@PolymorphicMapType_42816) (xs@@29 T@Seq_49042) ) (!  (=> (state Heap@@36 Mask@@27) (= (|fun07'| Heap@@36 xs@@29) (|fun07#frame| (FrameFragment_4258 (|fun07#condqp6| Heap@@36 xs@@29)) xs@@29)))
 :qid |stdinbpl.1288:15|
 :skolemid |112|
 :pattern ( (state Heap@@36 Mask@@27) (|fun07'| Heap@@36 xs@@29))
)))
(assert (forall ((s0@@7 T@Seq_49042) (s1@@7 T@Seq_49042) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_30137|)) (not (= s1@@7 |Seq#Empty_30137|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_30137| s0@@7))) (= (|Seq#Index_30128| (|Seq#Append_49042| s0@@7 s1@@7) n@@23) (|Seq#Index_30128| s0@@7 n@@23)))
 :qid |stdinbpl.397:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_30128| (|Seq#Append_49042| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_30128| s0@@7 n@@23) (|Seq#Append_49042| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3971) (s1@@8 T@Seq_3971) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3971|)) (not (= s1@@8 |Seq#Empty_3971|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3971| s0@@8))) (= (|Seq#Index_3971| (|Seq#Append_3971| s0@@8 s1@@8) n@@24) (|Seq#Index_3971| s0@@8 n@@24)))
 :qid |stdinbpl.397:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3971| (|Seq#Append_3971| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3971| s0@@8 n@@24) (|Seq#Append_3971| s0@@8 s1@@8))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_42795) (Mask@@28 T@PolymorphicMapType_42816) (x@@10 T@Ref) (i@@12 Int) (xs@@30 T@Seq_49042) ) (!  (=> (state Heap@@37 Mask@@28) (= (|fun06'| Heap@@37 x@@10 i@@12 xs@@30) (|fun06#frame| (CombineFrames (FrameFragment_4258 (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap@@37) x@@10 f_7)) (FrameFragment_4258 (|fun06#condqp10| Heap@@37 x@@10 i@@12 xs@@30))) x@@10 i@@12 xs@@30)))
 :qid |stdinbpl.1753:15|
 :skolemid |153|
 :pattern ( (state Heap@@37 Mask@@28) (|fun06'| Heap@@37 x@@10 i@@12 xs@@30))
)))
(assert (forall ((s0@@9 T@Seq_49042) (s1@@9 T@Seq_49042) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_30137|)) (not (= s1@@9 |Seq#Empty_30137|))) (<= 0 m)) (< m (|Seq#Length_30137| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_30137| s0@@9)) (|Seq#Length_30137| s0@@9)) m) (= (|Seq#Index_30128| (|Seq#Append_49042| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_30137| s0@@9))) (|Seq#Index_30128| s1@@9 m))))
 :qid |stdinbpl.402:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_30128| s1@@9 m) (|Seq#Append_49042| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3971) (s1@@10 T@Seq_3971) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3971|)) (not (= s1@@10 |Seq#Empty_3971|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3971| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3971| s0@@10)) (|Seq#Length_3971| s0@@10)) m@@0) (= (|Seq#Index_3971| (|Seq#Append_3971| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3971| s0@@10))) (|Seq#Index_3971| s1@@10 m@@0))))
 :qid |stdinbpl.402:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3971| s1@@10 m@@0) (|Seq#Append_3971| s0@@10 s1@@10))
)))
(assert (forall ((o_29@@4 T@Ref) (f_33 T@Field_42868_42869) (Heap@@38 T@PolymorphicMapType_42795) ) (!  (=> (select (|PolymorphicMapType_42795_29820_53#PolymorphicMapType_42795| Heap@@38) o_29@@4 $allocated) (select (|PolymorphicMapType_42795_29820_53#PolymorphicMapType_42795| Heap@@38) (select (|PolymorphicMapType_42795_29823_29824#PolymorphicMapType_42795| Heap@@38) o_29@@4 f_33) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_42795_29823_29824#PolymorphicMapType_42795| Heap@@38) o_29@@4 f_33))
)))
(assert (forall ((s@@29 T@Seq_49042) (x@@11 T@Ref) (i@@13 Int) ) (!  (=> (and (and (<= 0 i@@13) (< i@@13 (|Seq#Length_30137| s@@29))) (= (|Seq#Index_30128| s@@29 i@@13) x@@11)) (|Seq#Contains_49042| s@@29 x@@11))
 :qid |stdinbpl.554:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_49042| s@@29 x@@11) (|Seq#Index_30128| s@@29 i@@13))
)))
(assert (forall ((s@@30 T@Seq_3971) (x@@12 Int) (i@@14 Int) ) (!  (=> (and (and (<= 0 i@@14) (< i@@14 (|Seq#Length_3971| s@@30))) (= (|Seq#Index_3971| s@@30 i@@14) x@@12)) (|Seq#Contains_3971| s@@30 x@@12))
 :qid |stdinbpl.554:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3971| s@@30 x@@12) (|Seq#Index_3971| s@@30 i@@14))
)))
(assert (forall ((s0@@11 T@Seq_49042) (s1@@11 T@Seq_49042) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_49042| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_49042| s0@@11 s1@@11))) (not (= (|Seq#Length_30137| s0@@11) (|Seq#Length_30137| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_49042| s0@@11 s1@@11))) (= (|Seq#Length_30137| s0@@11) (|Seq#Length_30137| s1@@11))) (= (|Seq#SkolemDiff_49042| s0@@11 s1@@11) (|Seq#SkolemDiff_49042| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_49042| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_49042| s0@@11 s1@@11) (|Seq#Length_30137| s0@@11))) (not (= (|Seq#Index_30128| s0@@11 (|Seq#SkolemDiff_49042| s0@@11 s1@@11)) (|Seq#Index_30128| s1@@11 (|Seq#SkolemDiff_49042| s0@@11 s1@@11))))))
 :qid |stdinbpl.658:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_49042| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3971) (s1@@12 T@Seq_3971) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3971| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3971| s0@@12 s1@@12))) (not (= (|Seq#Length_3971| s0@@12) (|Seq#Length_3971| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3971| s0@@12 s1@@12))) (= (|Seq#Length_3971| s0@@12) (|Seq#Length_3971| s1@@12))) (= (|Seq#SkolemDiff_3971| s0@@12 s1@@12) (|Seq#SkolemDiff_3971| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3971| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3971| s0@@12 s1@@12) (|Seq#Length_3971| s0@@12))) (not (= (|Seq#Index_3971| s0@@12 (|Seq#SkolemDiff_3971| s0@@12 s1@@12)) (|Seq#Index_3971| s1@@12 (|Seq#SkolemDiff_3971| s0@@12 s1@@12))))))
 :qid |stdinbpl.658:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3971| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_30100_120671) (v_1@@0 T@FrameType) (q T@Field_30100_120671) (w@@0 T@FrameType) (r T@Field_30100_120671) (u T@FrameType) ) (!  (=> (and (InsidePredicate_42855_42855 p@@1 v_1@@0 q w@@0) (InsidePredicate_42855_42855 q w@@0 r u)) (InsidePredicate_42855_42855 p@@1 v_1@@0 r u))
 :qid |stdinbpl.325:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_42855_42855 p@@1 v_1@@0 q w@@0) (InsidePredicate_42855_42855 q w@@0 r u))
)))
(assert (forall ((s@@31 T@Seq_49042) ) (!  (=> (= (|Seq#Length_30137| s@@31) 0) (= s@@31 |Seq#Empty_30137|))
 :qid |stdinbpl.361:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_30137| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3971) ) (!  (=> (= (|Seq#Length_3971| s@@32) 0) (= s@@32 |Seq#Empty_3971|))
 :qid |stdinbpl.361:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3971| s@@32))
)))
(assert (forall ((s@@33 T@Seq_49042) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_30137| s@@33 n@@25) |Seq#Empty_30137|))
 :qid |stdinbpl.537:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_30137| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3971) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3971| s@@34 n@@26) |Seq#Empty_3971|))
 :qid |stdinbpl.537:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3971| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun i1_2_1 () Int)
(declare-fun i2_2_1 () Int)
(declare-fun xs@@31 () T@Seq_49042)
(declare-fun neverTriggered12 (Int) Bool)
(declare-fun QPMask@0 () T@PolymorphicMapType_42816)
(declare-fun i1_4_1 () Int)
(declare-fun i2_4 () Int)
(declare-fun neverTriggered13 (Int) Bool)
(declare-fun Heap@@39 () T@PolymorphicMapType_42795)
(declare-fun qpRange11 (T@Ref) Bool)
(declare-fun invRecv11 (T@Ref) Int)
(declare-fun k_27 () Int)
(declare-fun i1_1 () Int)
(declare-fun i2_19 () Int)
(set-info :boogie-vc-id test01)
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
 (=> (= (ControlFlow 0 0) 39) (let ((anon12_correct true))
(let ((anon27_Else_correct  (=> (and (not (and (|Seq#Contains_3971| (|Seq#Range| 0 3) i1_2_1) (and (|Seq#Contains_3971| (|Seq#Range| 0 3) i2_2_1) (not (= i1_2_1 i2_2_1))))) (= (ControlFlow 0 32) 29)) anon12_correct)))
(let ((anon27_Then_correct  (=> (and (|Seq#Contains_3971| (|Seq#Range| 0 3) i1_2_1) (and (|Seq#Contains_3971| (|Seq#Range| 0 3) i2_2_1) (not (= i1_2_1 i2_2_1)))) (and (=> (= (ControlFlow 0 30) (- 0 31)) (not (= (|Seq#Index_30128| xs@@31 i1_2_1) (|Seq#Index_30128| xs@@31 i2_2_1)))) (=> (not (= (|Seq#Index_30128| xs@@31 i1_2_1) (|Seq#Index_30128| xs@@31 i2_2_1))) (=> (= (ControlFlow 0 30) 29) anon12_correct))))))
(let ((anon26_Else_correct  (=> (forall ((i1_3_1_1 Int) (i2_3_1 Int) ) (!  (=> (and (|Seq#Contains_3971| (|Seq#Range| 0 3) i1_3_1_1) (and (|Seq#Contains_3971| (|Seq#Range| 0 3) i2_3_1) (not (= i1_3_1_1 i2_3_1)))) (not (= (|Seq#Index_30128| xs@@31 i1_3_1_1) (|Seq#Index_30128| xs@@31 i2_3_1))))
 :qid |stdinbpl.2003:24|
 :skolemid |169|
 :pattern ( (|Seq#ContainsTrigger_3971| (|Seq#Range| 0 3) i1_3_1_1) (|Seq#ContainsTrigger_3971| (|Seq#Range| 0 3) i2_3_1))
 :pattern ( (|Seq#ContainsTrigger_3971| (|Seq#Range| 0 3) i1_3_1_1) (|Seq#Contains_3971| (|Seq#Range| 0 3) i2_3_1))
 :pattern ( (|Seq#Contains_3971| (|Seq#Range| 0 3) i1_3_1_1) (|Seq#ContainsTrigger_3971| (|Seq#Range| 0 3) i2_3_1))
 :pattern ( (|Seq#Contains_3971| (|Seq#Range| 0 3) i1_3_1_1) (|Seq#Contains_3971| (|Seq#Range| 0 3) i2_3_1))
 :pattern ( (|Seq#ContainsTrigger_3971| (|Seq#Range| 0 3) i1_3_1_1) (|Seq#Index_30128| xs@@31 i2_3_1))
 :pattern ( (|Seq#Contains_3971| (|Seq#Range| 0 3) i1_3_1_1) (|Seq#Index_30128| xs@@31 i2_3_1))
 :pattern ( (|Seq#ContainsTrigger_3971| (|Seq#Range| 0 3) i2_3_1) (|Seq#Index_30128| xs@@31 i1_3_1_1))
 :pattern ( (|Seq#Contains_3971| (|Seq#Range| 0 3) i2_3_1) (|Seq#Index_30128| xs@@31 i1_3_1_1))
 :pattern ( (|Seq#Index_30128| xs@@31 i1_3_1_1) (|Seq#Index_30128| xs@@31 i2_3_1))
)) (and (=> (= (ControlFlow 0 27) (- 0 28)) (forall ((k_2_1 Int) (k_2_2 Int) ) (!  (=> (and (and (and (and (not (= k_2_1 k_2_2)) (and (<= 0 k_2_1) (< k_2_1 3))) (and (<= 0 k_2_2) (< k_2_2 3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_30128| xs@@31 k_2_1) (|Seq#Index_30128| xs@@31 k_2_2))))
 :qid |stdinbpl.2014:21|
 :skolemid |170|
 :pattern ( (neverTriggered12 k_2_1) (neverTriggered12 k_2_2))
))) (=> (forall ((k_2_1@@0 Int) (k_2_2@@0 Int) ) (!  (=> (and (and (and (and (not (= k_2_1@@0 k_2_2@@0)) (and (<= 0 k_2_1@@0) (< k_2_1@@0 3))) (and (<= 0 k_2_2@@0) (< k_2_2@@0 3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_30128| xs@@31 k_2_1@@0) (|Seq#Index_30128| xs@@31 k_2_2@@0))))
 :qid |stdinbpl.2014:21|
 :skolemid |170|
 :pattern ( (neverTriggered12 k_2_1@@0) (neverTriggered12 k_2_2@@0))
)) (=> (= (ControlFlow 0 27) (- 0 26)) (forall ((k_2_1@@1 Int) ) (!  (=> (and (<= 0 k_2_1@@1) (< k_2_1@@1 3)) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_42816_30100_4093#PolymorphicMapType_42816| QPMask@0) (|Seq#Index_30128| xs@@31 k_2_1@@1) f_7) NoPerm)))
 :qid |stdinbpl.2021:21|
 :skolemid |171|
 :pattern ( (|Seq#Index_30128| xs@@31 k_2_1@@1))
 :pattern ( (|Seq#Index_30128| xs@@31 k_2_1@@1))
))))))))
(let ((anon25_Then_correct  (and (=> (= (ControlFlow 0 33) (- 0 34)) (> (|Seq#Length_30137| xs@@31) 10)) (=> (> (|Seq#Length_30137| xs@@31) 10) (and (and (=> (= (ControlFlow 0 33) 27) anon26_Else_correct) (=> (= (ControlFlow 0 33) 30) anon27_Then_correct)) (=> (= (ControlFlow 0 33) 32) anon27_Else_correct))))))
(let ((anon18_correct true))
(let ((anon30_Else_correct  (=> (and (not (and (|Seq#Contains_3971| (|Seq#Range| 0 3) i1_4_1) (and (|Seq#Contains_3971| (|Seq#Range| 0 3) i2_4) (not (= i1_4_1 i2_4))))) (= (ControlFlow 0 22) 19)) anon18_correct)))
(let ((anon30_Then_correct  (=> (and (|Seq#Contains_3971| (|Seq#Range| 0 3) i1_4_1) (and (|Seq#Contains_3971| (|Seq#Range| 0 3) i2_4) (not (= i1_4_1 i2_4)))) (and (=> (= (ControlFlow 0 20) (- 0 21)) (not (= (|Seq#Index_30128| xs@@31 i1_4_1) (|Seq#Index_30128| xs@@31 i2_4)))) (=> (not (= (|Seq#Index_30128| xs@@31 i1_4_1) (|Seq#Index_30128| xs@@31 i2_4))) (=> (= (ControlFlow 0 20) 19) anon18_correct))))))
(let ((anon29_Else_correct  (=> (forall ((i1_5_1 Int) (i2_5_1_1 Int) ) (!  (=> (and (|Seq#Contains_3971| (|Seq#Range| 0 3) i1_5_1) (and (|Seq#Contains_3971| (|Seq#Range| 0 3) i2_5_1_1) (not (= i1_5_1 i2_5_1_1)))) (not (= (|Seq#Index_30128| xs@@31 i1_5_1) (|Seq#Index_30128| xs@@31 i2_5_1_1))))
 :qid |stdinbpl.2064:24|
 :skolemid |174|
 :pattern ( (|Seq#ContainsTrigger_3971| (|Seq#Range| 0 3) i1_5_1) (|Seq#ContainsTrigger_3971| (|Seq#Range| 0 3) i2_5_1_1))
 :pattern ( (|Seq#ContainsTrigger_3971| (|Seq#Range| 0 3) i1_5_1) (|Seq#Contains_3971| (|Seq#Range| 0 3) i2_5_1_1))
 :pattern ( (|Seq#Contains_3971| (|Seq#Range| 0 3) i1_5_1) (|Seq#ContainsTrigger_3971| (|Seq#Range| 0 3) i2_5_1_1))
 :pattern ( (|Seq#Contains_3971| (|Seq#Range| 0 3) i1_5_1) (|Seq#Contains_3971| (|Seq#Range| 0 3) i2_5_1_1))
 :pattern ( (|Seq#ContainsTrigger_3971| (|Seq#Range| 0 3) i1_5_1) (|Seq#Index_30128| xs@@31 i2_5_1_1))
 :pattern ( (|Seq#Contains_3971| (|Seq#Range| 0 3) i1_5_1) (|Seq#Index_30128| xs@@31 i2_5_1_1))
 :pattern ( (|Seq#ContainsTrigger_3971| (|Seq#Range| 0 3) i2_5_1_1) (|Seq#Index_30128| xs@@31 i1_5_1))
 :pattern ( (|Seq#Contains_3971| (|Seq#Range| 0 3) i2_5_1_1) (|Seq#Index_30128| xs@@31 i1_5_1))
 :pattern ( (|Seq#Index_30128| xs@@31 i1_5_1) (|Seq#Index_30128| xs@@31 i2_5_1_1))
)) (and (=> (= (ControlFlow 0 17) (- 0 18)) (forall ((k_3 Int) (k_3_1 Int) ) (!  (=> (and (and (and (and (not (= k_3 k_3_1)) (and (<= 0 k_3) (< k_3 3))) (and (<= 0 k_3_1) (< k_3_1 3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_30128| xs@@31 k_3) (|Seq#Index_30128| xs@@31 k_3_1))))
 :qid |stdinbpl.2075:21|
 :skolemid |175|
 :pattern ( (neverTriggered13 k_3) (neverTriggered13 k_3_1))
))) (=> (forall ((k_3@@0 Int) (k_3_1@@0 Int) ) (!  (=> (and (and (and (and (not (= k_3@@0 k_3_1@@0)) (and (<= 0 k_3@@0) (< k_3@@0 3))) (and (<= 0 k_3_1@@0) (< k_3_1@@0 3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_30128| xs@@31 k_3@@0) (|Seq#Index_30128| xs@@31 k_3_1@@0))))
 :qid |stdinbpl.2075:21|
 :skolemid |175|
 :pattern ( (neverTriggered13 k_3@@0) (neverTriggered13 k_3_1@@0))
)) (=> (= (ControlFlow 0 17) (- 0 16)) (forall ((k_3@@1 Int) ) (!  (=> (and (<= 0 k_3@@1) (< k_3@@1 3)) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_42816_30100_4093#PolymorphicMapType_42816| QPMask@0) (|Seq#Index_30128| xs@@31 k_3@@1) f_7) NoPerm)))
 :qid |stdinbpl.2082:21|
 :skolemid |176|
 :pattern ( (|Seq#Index_30128| xs@@31 k_3@@1))
 :pattern ( (|Seq#Index_30128| xs@@31 k_3@@1))
))))))))
(let ((anon28_Then_correct  (and (=> (= (ControlFlow 0 23) (- 0 24)) (> (|Seq#Length_30137| xs@@31) 10)) (=> (> (|Seq#Length_30137| xs@@31) 10) (and (and (=> (= (ControlFlow 0 23) 17) anon29_Else_correct) (=> (= (ControlFlow 0 23) 20) anon30_Then_correct)) (=> (= (ControlFlow 0 23) 22) anon30_Else_correct))))))
(let ((anon28_Else_correct  (and (=> (= (ControlFlow 0 14) (- 0 15)) (= 10 (fun01 Heap@@39 xs@@31))) (=> (= 10 (fun01 Heap@@39 xs@@31)) (=> (and (state Heap@@39 QPMask@0) (= (ControlFlow 0 14) (- 0 13))) false)))))
(let ((anon25_Else_correct  (=> (= 10 (fun01 Heap@@39 xs@@31)) (=> (and (state Heap@@39 QPMask@0) (state Heap@@39 QPMask@0)) (and (=> (= (ControlFlow 0 25) 23) anon28_Then_correct) (=> (= (ControlFlow 0 25) 14) anon28_Else_correct))))))
(let ((anon23_Else_correct  (and (=> (= (ControlFlow 0 35) (- 0 36)) (forall ((k_1_1 Int) (k_1_2 Int) ) (!  (=> (and (and (and (and (not (= k_1_1 k_1_2)) (and (<= 0 k_1_1) (< k_1_1 3))) (and (<= 0 k_1_2) (< k_1_2 3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_30128| xs@@31 k_1_1) (|Seq#Index_30128| xs@@31 k_1_2))))
 :qid |stdinbpl.1951:15|
 :skolemid |163|
))) (=> (forall ((k_1_1@@0 Int) (k_1_2@@0 Int) ) (!  (=> (and (and (and (and (not (= k_1_1@@0 k_1_2@@0)) (and (<= 0 k_1_1@@0) (< k_1_1@@0 3))) (and (<= 0 k_1_2@@0) (< k_1_2@@0 3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_30128| xs@@31 k_1_1@@0) (|Seq#Index_30128| xs@@31 k_1_2@@0))))
 :qid |stdinbpl.1951:15|
 :skolemid |163|
)) (=> (and (and (forall ((k_1_1@@1 Int) ) (!  (=> (and (and (<= 0 k_1_1@@1) (< k_1_1@@1 3)) (< NoPerm FullPerm)) (and (qpRange11 (|Seq#Index_30128| xs@@31 k_1_1@@1)) (= (invRecv11 (|Seq#Index_30128| xs@@31 k_1_1@@1)) k_1_1@@1)))
 :qid |stdinbpl.1957:22|
 :skolemid |164|
 :pattern ( (|Seq#Index_30128| xs@@31 k_1_1@@1))
 :pattern ( (|Seq#Index_30128| xs@@31 k_1_1@@1))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv11 o_4)) (< (invRecv11 o_4) 3)) (< NoPerm FullPerm)) (qpRange11 o_4)) (= (|Seq#Index_30128| xs@@31 (invRecv11 o_4)) o_4))
 :qid |stdinbpl.1961:22|
 :skolemid |165|
 :pattern ( (invRecv11 o_4))
))) (and (forall ((k_1_1@@2 Int) ) (!  (=> (and (<= 0 k_1_1@@2) (< k_1_1@@2 3)) (not (= (|Seq#Index_30128| xs@@31 k_1_1@@2) null)))
 :qid |stdinbpl.1967:22|
 :skolemid |166|
 :pattern ( (|Seq#Index_30128| xs@@31 k_1_1@@2))
 :pattern ( (|Seq#Index_30128| xs@@31 k_1_1@@2))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv11 o_4@@0)) (< (invRecv11 o_4@@0) 3)) (< NoPerm FullPerm)) (qpRange11 o_4@@0)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_30128| xs@@31 (invRecv11 o_4@@0)) o_4@@0)) (= (select (|PolymorphicMapType_42816_30100_4093#PolymorphicMapType_42816| QPMask@0) o_4@@0 f_7) (+ (select (|PolymorphicMapType_42816_30100_4093#PolymorphicMapType_42816| ZeroMask) o_4@@0 f_7) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv11 o_4@@0)) (< (invRecv11 o_4@@0) 3)) (< NoPerm FullPerm)) (qpRange11 o_4@@0))) (= (select (|PolymorphicMapType_42816_30100_4093#PolymorphicMapType_42816| QPMask@0) o_4@@0 f_7) (select (|PolymorphicMapType_42816_30100_4093#PolymorphicMapType_42816| ZeroMask) o_4@@0 f_7))))
 :qid |stdinbpl.1973:22|
 :skolemid |167|
 :pattern ( (select (|PolymorphicMapType_42816_30100_4093#PolymorphicMapType_42816| QPMask@0) o_4@@0 f_7))
)))) (=> (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_42855_53) ) (!  (=> true (= (select (|PolymorphicMapType_42816_30100_53#PolymorphicMapType_42816| ZeroMask) o_4@@1 f_5) (select (|PolymorphicMapType_42816_30100_53#PolymorphicMapType_42816| QPMask@0) o_4@@1 f_5)))
 :qid |stdinbpl.1977:29|
 :skolemid |168|
 :pattern ( (select (|PolymorphicMapType_42816_30100_53#PolymorphicMapType_42816| ZeroMask) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_42816_30100_53#PolymorphicMapType_42816| QPMask@0) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_42868_42869) ) (!  (=> true (= (select (|PolymorphicMapType_42816_30100_42869#PolymorphicMapType_42816| ZeroMask) o_4@@2 f_5@@0) (select (|PolymorphicMapType_42816_30100_42869#PolymorphicMapType_42816| QPMask@0) o_4@@2 f_5@@0)))
 :qid |stdinbpl.1977:29|
 :skolemid |168|
 :pattern ( (select (|PolymorphicMapType_42816_30100_42869#PolymorphicMapType_42816| ZeroMask) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_42816_30100_42869#PolymorphicMapType_42816| QPMask@0) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_48965_4093) ) (!  (=> (not (= f_5@@1 f_7)) (= (select (|PolymorphicMapType_42816_30100_4093#PolymorphicMapType_42816| ZeroMask) o_4@@3 f_5@@1) (select (|PolymorphicMapType_42816_30100_4093#PolymorphicMapType_42816| QPMask@0) o_4@@3 f_5@@1)))
 :qid |stdinbpl.1977:29|
 :skolemid |168|
 :pattern ( (select (|PolymorphicMapType_42816_30100_4093#PolymorphicMapType_42816| ZeroMask) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_42816_30100_4093#PolymorphicMapType_42816| QPMask@0) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_30100_120671) ) (!  (=> true (= (select (|PolymorphicMapType_42816_30100_120671#PolymorphicMapType_42816| ZeroMask) o_4@@4 f_5@@2) (select (|PolymorphicMapType_42816_30100_120671#PolymorphicMapType_42816| QPMask@0) o_4@@4 f_5@@2)))
 :qid |stdinbpl.1977:29|
 :skolemid |168|
 :pattern ( (select (|PolymorphicMapType_42816_30100_120671#PolymorphicMapType_42816| ZeroMask) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_42816_30100_120671#PolymorphicMapType_42816| QPMask@0) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_30100_120804) ) (!  (=> true (= (select (|PolymorphicMapType_42816_30100_124926#PolymorphicMapType_42816| ZeroMask) o_4@@5 f_5@@3) (select (|PolymorphicMapType_42816_30100_124926#PolymorphicMapType_42816| QPMask@0) o_4@@5 f_5@@3)))
 :qid |stdinbpl.1977:29|
 :skolemid |168|
 :pattern ( (select (|PolymorphicMapType_42816_30100_124926#PolymorphicMapType_42816| ZeroMask) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_42816_30100_124926#PolymorphicMapType_42816| QPMask@0) o_4@@5 f_5@@3))
))) (and (and (state Heap@@39 QPMask@0) (state Heap@@39 QPMask@0)) (and (state Heap@@39 QPMask@0) (state Heap@@39 QPMask@0)))) (and (=> (= (ControlFlow 0 35) 33) anon25_Then_correct) (=> (= (ControlFlow 0 35) 25) anon25_Else_correct))))))))
(let ((anon7_correct true))
(let ((anon24_Else_correct  (=> (and (not (and (<= 0 k_27) (< k_27 3))) (= (ControlFlow 0 12) 8)) anon7_correct)))
(let ((anon24_Then_correct  (=> (and (<= 0 k_27) (< k_27 3)) (and (=> (= (ControlFlow 0 9) (- 0 11)) (>= k_27 0)) (=> (>= k_27 0) (and (=> (= (ControlFlow 0 9) (- 0 10)) (< k_27 (|Seq#Length_30137| xs@@31))) (=> (< k_27 (|Seq#Length_30137| xs@@31)) (=> (= (ControlFlow 0 9) 8) anon7_correct))))))))
(let ((anon21_Else_correct  (=> (forall ((i1_1_1@@0 Int) (i2_1_1@@0 Int) ) (!  (=> (and (|Seq#Contains_3971| (|Seq#Range| 0 3) i1_1_1@@0) (and (|Seq#Contains_3971| (|Seq#Range| 0 3) i2_1_1@@0) (not (= i1_1_1@@0 i2_1_1@@0)))) (not (= (|Seq#Index_30128| xs@@31 i1_1_1@@0) (|Seq#Index_30128| xs@@31 i2_1_1@@0))))
 :qid |stdinbpl.1930:20|
 :skolemid |162|
 :pattern ( (|Seq#ContainsTrigger_3971| (|Seq#Range| 0 3) i1_1_1@@0) (|Seq#ContainsTrigger_3971| (|Seq#Range| 0 3) i2_1_1@@0))
 :pattern ( (|Seq#ContainsTrigger_3971| (|Seq#Range| 0 3) i1_1_1@@0) (|Seq#Contains_3971| (|Seq#Range| 0 3) i2_1_1@@0))
 :pattern ( (|Seq#Contains_3971| (|Seq#Range| 0 3) i1_1_1@@0) (|Seq#ContainsTrigger_3971| (|Seq#Range| 0 3) i2_1_1@@0))
 :pattern ( (|Seq#Contains_3971| (|Seq#Range| 0 3) i1_1_1@@0) (|Seq#Contains_3971| (|Seq#Range| 0 3) i2_1_1@@0))
 :pattern ( (|Seq#ContainsTrigger_3971| (|Seq#Range| 0 3) i1_1_1@@0) (|Seq#Index_30128| xs@@31 i2_1_1@@0))
 :pattern ( (|Seq#Contains_3971| (|Seq#Range| 0 3) i1_1_1@@0) (|Seq#Index_30128| xs@@31 i2_1_1@@0))
 :pattern ( (|Seq#ContainsTrigger_3971| (|Seq#Range| 0 3) i2_1_1@@0) (|Seq#Index_30128| xs@@31 i1_1_1@@0))
 :pattern ( (|Seq#Contains_3971| (|Seq#Range| 0 3) i2_1_1@@0) (|Seq#Index_30128| xs@@31 i1_1_1@@0))
 :pattern ( (|Seq#Index_30128| xs@@31 i1_1_1@@0) (|Seq#Index_30128| xs@@31 i2_1_1@@0))
)) (=> (and (state Heap@@39 ZeroMask) (state Heap@@39 ZeroMask)) (and (and (=> (= (ControlFlow 0 37) 35) anon23_Else_correct) (=> (= (ControlFlow 0 37) 9) anon24_Then_correct)) (=> (= (ControlFlow 0 37) 12) anon24_Else_correct))))))
(let ((anon3_correct true))
(let ((anon22_Else_correct  (=> (and (not (and (|Seq#Contains_3971| (|Seq#Range| 0 3) i1_1) (and (|Seq#Contains_3971| (|Seq#Range| 0 3) i2_19) (not (= i1_1 i2_19))))) (= (ControlFlow 0 7) 1)) anon3_correct)))
(let ((anon22_Then_correct  (=> (and (|Seq#Contains_3971| (|Seq#Range| 0 3) i1_1) (and (|Seq#Contains_3971| (|Seq#Range| 0 3) i2_19) (not (= i1_1 i2_19)))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= i1_1 0)) (=> (>= i1_1 0) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< i1_1 (|Seq#Length_30137| xs@@31))) (=> (< i1_1 (|Seq#Length_30137| xs@@31)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= i2_19 0)) (=> (>= i2_19 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< i2_19 (|Seq#Length_30137| xs@@31))) (=> (< i2_19 (|Seq#Length_30137| xs@@31)) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))))))))
(let ((anon0_correct  (=> (and (state Heap@@39 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (=> (and (and AssumePermUpperBound (> (|Seq#Length_30137| xs@@31) 10)) (and (state Heap@@39 ZeroMask) (state Heap@@39 ZeroMask))) (and (and (=> (= (ControlFlow 0 38) 37) anon21_Else_correct) (=> (= (ControlFlow 0 38) 2) anon22_Then_correct)) (=> (= (ControlFlow 0 38) 7) anon22_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 39) 38) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 14) (- 13))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
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
(declare-sort T@Field_42855_53 0)
(declare-sort T@Field_42868_42869 0)
(declare-sort T@Field_48965_4093 0)
(declare-sort T@Field_30100_120804 0)
(declare-sort T@Field_30100_120671 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_42816 0)) (((PolymorphicMapType_42816 (|PolymorphicMapType_42816_30100_4093#PolymorphicMapType_42816| (Array T@Ref T@Field_48965_4093 Real)) (|PolymorphicMapType_42816_30100_53#PolymorphicMapType_42816| (Array T@Ref T@Field_42855_53 Real)) (|PolymorphicMapType_42816_30100_42869#PolymorphicMapType_42816| (Array T@Ref T@Field_42868_42869 Real)) (|PolymorphicMapType_42816_30100_120671#PolymorphicMapType_42816| (Array T@Ref T@Field_30100_120671 Real)) (|PolymorphicMapType_42816_30100_124926#PolymorphicMapType_42816| (Array T@Ref T@Field_30100_120804 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_43344 0)) (((PolymorphicMapType_43344 (|PolymorphicMapType_43344_42855_53#PolymorphicMapType_43344| (Array T@Ref T@Field_42855_53 Bool)) (|PolymorphicMapType_43344_42855_42869#PolymorphicMapType_43344| (Array T@Ref T@Field_42868_42869 Bool)) (|PolymorphicMapType_43344_42855_4093#PolymorphicMapType_43344| (Array T@Ref T@Field_48965_4093 Bool)) (|PolymorphicMapType_43344_42855_120671#PolymorphicMapType_43344| (Array T@Ref T@Field_30100_120671 Bool)) (|PolymorphicMapType_43344_42855_121982#PolymorphicMapType_43344| (Array T@Ref T@Field_30100_120804 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_42795 0)) (((PolymorphicMapType_42795 (|PolymorphicMapType_42795_29820_53#PolymorphicMapType_42795| (Array T@Ref T@Field_42855_53 Bool)) (|PolymorphicMapType_42795_29823_29824#PolymorphicMapType_42795| (Array T@Ref T@Field_42868_42869 T@Ref)) (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| (Array T@Ref T@Field_48965_4093 Int)) (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| (Array T@Ref T@Field_30100_120804 T@PolymorphicMapType_43344)) (|PolymorphicMapType_42795_42855_120671#PolymorphicMapType_42795| (Array T@Ref T@Field_30100_120671 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_42855_53)
(declare-fun f_7 () T@Field_48965_4093)
(declare-fun g () T@Field_48965_4093)
(declare-sort T@Seq_49042 0)
(declare-fun |Seq#Length_30137| (T@Seq_49042) Int)
(declare-fun |Seq#Drop_30137| (T@Seq_49042 Int) T@Seq_49042)
(declare-sort T@Seq_3971 0)
(declare-fun |Seq#Length_3971| (T@Seq_3971) Int)
(declare-fun |Seq#Drop_3971| (T@Seq_3971 Int) T@Seq_3971)
(declare-fun |fun04#condqp8| (T@PolymorphicMapType_42795 T@Seq_49042 Bool) Int)
(declare-fun succHeapTrans (T@PolymorphicMapType_42795 T@PolymorphicMapType_42795) Bool)
(declare-fun |sk_fun04#condqp8| (Int Int) Int)
(declare-fun NoPerm () Real)
(declare-fun FullPerm () Real)
(declare-fun |Seq#Index_30128| (T@Seq_49042 Int) T@Ref)
(declare-fun succHeap (T@PolymorphicMapType_42795 T@PolymorphicMapType_42795) Bool)
(declare-fun state (T@PolymorphicMapType_42795 T@PolymorphicMapType_42816) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_42816) Bool)
(declare-fun |fun06'| (T@PolymorphicMapType_42795 T@Ref Int T@Seq_49042) Int)
(declare-fun dummyFunction_4450 (Int) Bool)
(declare-fun |fun06#triggerStateless| (T@Ref Int T@Seq_49042) Int)
(declare-fun ZeroPMask () T@PolymorphicMapType_43344)
(declare-fun |fun04'| (T@PolymorphicMapType_42795 T@Seq_49042 Bool) Int)
(declare-fun |fun04#triggerStateless| (T@Seq_49042 Bool) Int)
(declare-fun |fun05'| (T@PolymorphicMapType_42795 T@Ref T@Seq_49042) Int)
(declare-fun |fun05#triggerStateless| (T@Ref T@Seq_49042) Int)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3971| (T@Seq_3971 Int) Int)
(declare-fun |Seq#Empty_30137| () T@Seq_49042)
(declare-fun |Seq#Empty_3971| () T@Seq_3971)
(declare-fun |fun01'| (T@PolymorphicMapType_42795 T@Seq_49042) Int)
(declare-fun |fun01#triggerStateless| (T@Seq_49042) Int)
(declare-fun |fun02'| (T@PolymorphicMapType_42795 T@Seq_49042) Int)
(declare-fun |fun02#triggerStateless| (T@Seq_49042) Int)
(declare-fun |fun03'| (T@PolymorphicMapType_42795 T@Seq_49042) Int)
(declare-fun |fun03#triggerStateless| (T@Seq_49042) Int)
(declare-fun |fun07'| (T@PolymorphicMapType_42795 T@Seq_49042) Int)
(declare-fun |fun07#triggerStateless| (T@Seq_49042) Int)
(declare-fun |Seq#Update_30137| (T@Seq_49042 Int T@Ref) T@Seq_49042)
(declare-fun |Seq#Update_3971| (T@Seq_3971 Int Int) T@Seq_3971)
(declare-fun |Seq#Take_30137| (T@Seq_49042 Int) T@Seq_49042)
(declare-fun |Seq#Take_3971| (T@Seq_3971 Int) T@Seq_3971)
(declare-fun |Seq#Contains_3971| (T@Seq_3971 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3971)
(declare-fun |Seq#Contains_49042| (T@Seq_49042 T@Ref) Bool)
(declare-fun |Seq#Skolem_49042| (T@Seq_49042 T@Ref) Int)
(declare-fun |Seq#Skolem_3971| (T@Seq_3971 Int) Int)
(declare-fun fun01 (T@PolymorphicMapType_42795 T@Seq_49042) Int)
(declare-fun fun02 (T@PolymorphicMapType_42795 T@Seq_49042) Int)
(declare-fun fun03 (T@PolymorphicMapType_42795 T@Seq_49042) Int)
(declare-fun fun07 (T@PolymorphicMapType_42795 T@Seq_49042) Int)
(declare-fun |fun05#frame| (T@FrameType T@Ref T@Seq_49042) Int)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_4258 (Int) T@FrameType)
(declare-fun |fun05#condqp9| (T@PolymorphicMapType_42795 T@Ref T@Seq_49042) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_42795 T@PolymorphicMapType_42795 T@PolymorphicMapType_42816) Bool)
(declare-fun IsPredicateField_30100_120762 (T@Field_30100_120671) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_30100 (T@Field_30100_120671) T@Field_30100_120804)
(declare-fun HasDirectPerm_30100_120735 (T@PolymorphicMapType_42816 T@Ref T@Field_30100_120671) Bool)
(declare-fun IsWandField_30100_122509 (T@Field_30100_120671) Bool)
(declare-fun WandMaskField_30100 (T@Field_30100_120671) T@Field_30100_120804)
(declare-fun |Seq#Singleton_30137| (T@Ref) T@Seq_49042)
(declare-fun |Seq#Singleton_3971| (Int) T@Seq_3971)
(declare-fun |fun06#condqp10| (T@PolymorphicMapType_42795 T@Ref Int T@Seq_49042) Int)
(declare-fun |sk_fun06#condqp10| (Int Int) Int)
(declare-fun |Seq#Append_49042| (T@Seq_49042 T@Seq_49042) T@Seq_49042)
(declare-fun |Seq#Append_3971| (T@Seq_3971 T@Seq_3971) T@Seq_3971)
(declare-fun |fun04#frame| (T@FrameType T@Seq_49042 Bool) Int)
(declare-fun FrameFragment_30011 (T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |fun04#condqp7| (T@PolymorphicMapType_42795 T@Seq_49042 Bool) Int)
(declare-fun dummyHeap () T@PolymorphicMapType_42795)
(declare-fun ZeroMask () T@PolymorphicMapType_42816)
(declare-fun |fun02#frame| (T@FrameType T@Seq_49042) Int)
(declare-fun |fun02#condqp2| (T@PolymorphicMapType_42795 T@Seq_49042) Int)
(declare-fun |fun02#condqp3| (T@PolymorphicMapType_42795 T@Seq_49042) Int)
(declare-fun |fun03#frame| (T@FrameType T@Seq_49042) Int)
(declare-fun |fun03#condqp4| (T@PolymorphicMapType_42795 T@Seq_49042) Int)
(declare-fun |fun03#condqp5| (T@PolymorphicMapType_42795 T@Seq_49042) Int)
(declare-fun InsidePredicate_42855_42855 (T@Field_30100_120671 T@FrameType T@Field_30100_120671 T@FrameType) Bool)
(declare-fun IsPredicateField_30100_4093 (T@Field_48965_4093) Bool)
(declare-fun IsWandField_30100_4093 (T@Field_48965_4093) Bool)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_30100_126055 (T@Field_30100_120804) Bool)
(declare-fun IsWandField_30100_126071 (T@Field_30100_120804) Bool)
(declare-fun IsPredicateField_30100_42869 (T@Field_42868_42869) Bool)
(declare-fun IsWandField_30100_42869 (T@Field_42868_42869) Bool)
(declare-fun IsPredicateField_30100_53 (T@Field_42855_53) Bool)
(declare-fun IsWandField_30100_53 (T@Field_42855_53) Bool)
(declare-fun HasDirectPerm_30100_126509 (T@PolymorphicMapType_42816 T@Ref T@Field_30100_120804) Bool)
(declare-fun HasDirectPerm_30100_42869 (T@PolymorphicMapType_42816 T@Ref T@Field_42868_42869) Bool)
(declare-fun HasDirectPerm_30100_53 (T@PolymorphicMapType_42816 T@Ref T@Field_42855_53) Bool)
(declare-fun HasDirectPerm_30100_4093 (T@PolymorphicMapType_42816 T@Ref T@Field_48965_4093) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun |fun01#condqp1| (T@PolymorphicMapType_42795 T@Seq_49042) Int)
(declare-fun |sk_fun01#condqp1| (Int Int) Int)
(declare-fun |sk_fun02#condqp2| (Int Int) Int)
(declare-fun |sk_fun03#condqp4| (Int Int) Int)
(declare-fun |fun07#condqp6| (T@PolymorphicMapType_42795 T@Seq_49042) Int)
(declare-fun |sk_fun07#condqp6| (Int Int) Int)
(declare-fun fun04 (T@PolymorphicMapType_42795 T@Seq_49042 Bool) Int)
(declare-fun fun05 (T@PolymorphicMapType_42795 T@Ref T@Seq_49042) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |Seq#ContainsTrigger_3971| (T@Seq_3971 Int) Bool)
(declare-fun sumMask (T@PolymorphicMapType_42816 T@PolymorphicMapType_42816 T@PolymorphicMapType_42816) Bool)
(declare-fun |Seq#Equal_49042| (T@Seq_49042 T@Seq_49042) Bool)
(declare-fun |Seq#Equal_3971| (T@Seq_3971 T@Seq_3971) Bool)
(declare-fun fun06 (T@PolymorphicMapType_42795 T@Ref Int T@Seq_49042) Int)
(declare-fun |Seq#ContainsTrigger_30137| (T@Seq_49042 T@Ref) Bool)
(declare-fun |sk_fun04#condqp7| (Int Int) Int)
(declare-fun |sk_fun05#condqp9| (Int Int) Int)
(declare-fun |sk_fun02#condqp3| (Int Int) Int)
(declare-fun |sk_fun03#condqp5| (Int Int) Int)
(declare-fun |fun01#frame| (T@FrameType T@Seq_49042) Int)
(declare-fun |fun07#frame| (T@FrameType T@Seq_49042) Int)
(declare-fun |fun06#frame| (T@FrameType T@Ref Int T@Seq_49042) Int)
(declare-fun |Seq#SkolemDiff_49042| (T@Seq_49042 T@Seq_49042) Int)
(declare-fun |Seq#SkolemDiff_3971| (T@Seq_3971 T@Seq_3971) Int)
(assert (distinct f_7 g)
)
(assert (forall ((s T@Seq_49042) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_30137| s)) (= (|Seq#Length_30137| (|Seq#Drop_30137| s n)) (- (|Seq#Length_30137| s) n))) (=> (< (|Seq#Length_30137| s) n) (= (|Seq#Length_30137| (|Seq#Drop_30137| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_30137| (|Seq#Drop_30137| s n)) (|Seq#Length_30137| s))))
 :qid |stdinbpl.432:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_30137| (|Seq#Drop_30137| s n)))
 :pattern ( (|Seq#Length_30137| s) (|Seq#Drop_30137| s n))
)))
(assert (forall ((s@@0 T@Seq_3971) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3971| s@@0)) (= (|Seq#Length_3971| (|Seq#Drop_3971| s@@0 n@@0)) (- (|Seq#Length_3971| s@@0) n@@0))) (=> (< (|Seq#Length_3971| s@@0) n@@0) (= (|Seq#Length_3971| (|Seq#Drop_3971| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3971| (|Seq#Drop_3971| s@@0 n@@0)) (|Seq#Length_3971| s@@0))))
 :qid |stdinbpl.432:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3971| (|Seq#Drop_3971| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3971| s@@0) (|Seq#Drop_3971| s@@0 n@@0))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_42795) (Heap1Heap T@PolymorphicMapType_42795) (xs T@Seq_49042) (b_24 Bool) ) (!  (=> (and (=  (and (and (<= 6 (|sk_fun04#condqp8| (|fun04#condqp8| Heap2Heap xs b_24) (|fun04#condqp8| Heap1Heap xs b_24))) (< (|sk_fun04#condqp8| (|fun04#condqp8| Heap2Heap xs b_24) (|fun04#condqp8| Heap1Heap xs b_24)) 9)) (< NoPerm FullPerm))  (and (and (<= 6 (|sk_fun04#condqp8| (|fun04#condqp8| Heap2Heap xs b_24) (|fun04#condqp8| Heap1Heap xs b_24))) (< (|sk_fun04#condqp8| (|fun04#condqp8| Heap2Heap xs b_24) (|fun04#condqp8| Heap1Heap xs b_24)) 9)) (< NoPerm FullPerm))) (=> (and (and (<= 6 (|sk_fun04#condqp8| (|fun04#condqp8| Heap2Heap xs b_24) (|fun04#condqp8| Heap1Heap xs b_24))) (< (|sk_fun04#condqp8| (|fun04#condqp8| Heap2Heap xs b_24) (|fun04#condqp8| Heap1Heap xs b_24)) 9)) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap2Heap) (|Seq#Index_30128| xs (|sk_fun04#condqp8| (|fun04#condqp8| Heap2Heap xs b_24) (|fun04#condqp8| Heap1Heap xs b_24))) f_7) (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap1Heap) (|Seq#Index_30128| xs (|sk_fun04#condqp8| (|fun04#condqp8| Heap2Heap xs b_24) (|fun04#condqp8| Heap1Heap xs b_24))) f_7)))) (= (|fun04#condqp8| Heap2Heap xs b_24) (|fun04#condqp8| Heap1Heap xs b_24)))
 :qid |stdinbpl.1433:15|
 :skolemid |125|
 :pattern ( (|fun04#condqp8| Heap2Heap xs b_24) (|fun04#condqp8| Heap1Heap xs b_24) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_42795) (Heap1 T@PolymorphicMapType_42795) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_42795) (Mask T@PolymorphicMapType_42816) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_42795) (Heap1@@0 T@PolymorphicMapType_42795) (Heap2 T@PolymorphicMapType_42795) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_42795) (x T@Ref) (i Int) (xs@@0 T@Seq_49042) ) (! (dummyFunction_4450 (|fun06#triggerStateless| x i xs@@0))
 :qid |stdinbpl.1746:15|
 :skolemid |152|
 :pattern ( (|fun06'| Heap@@0 x i xs@@0))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_30100_120804) ) (!  (not (select (|PolymorphicMapType_43344_42855_121982#PolymorphicMapType_43344| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43344_42855_121982#PolymorphicMapType_43344| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_30100_120671) ) (!  (not (select (|PolymorphicMapType_43344_42855_120671#PolymorphicMapType_43344| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43344_42855_120671#PolymorphicMapType_43344| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_48965_4093) ) (!  (not (select (|PolymorphicMapType_43344_42855_4093#PolymorphicMapType_43344| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43344_42855_4093#PolymorphicMapType_43344| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_42868_42869) ) (!  (not (select (|PolymorphicMapType_43344_42855_42869#PolymorphicMapType_43344| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43344_42855_42869#PolymorphicMapType_43344| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_42855_53) ) (!  (not (select (|PolymorphicMapType_43344_42855_53#PolymorphicMapType_43344| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43344_42855_53#PolymorphicMapType_43344| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_42795) (xs@@1 T@Seq_49042) (b_24@@0 Bool) ) (! (dummyFunction_4450 (|fun04#triggerStateless| xs@@1 b_24@@0))
 :qid |stdinbpl.1406:15|
 :skolemid |122|
 :pattern ( (|fun04'| Heap@@1 xs@@1 b_24@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_42795) (x@@0 T@Ref) (xs@@2 T@Seq_49042) ) (! (dummyFunction_4450 (|fun05#triggerStateless| x@@0 xs@@2))
 :qid |stdinbpl.1614:15|
 :skolemid |141|
 :pattern ( (|fun05'| Heap@@2 x@@0 xs@@2))
)))
(assert (forall ((s@@1 T@Seq_49042) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_30137| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_30128| (|Seq#Drop_30137| s@@1 n@@1) j) (|Seq#Index_30128| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.453:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_30128| (|Seq#Drop_30137| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3971) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3971| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3971| (|Seq#Drop_3971| s@@2 n@@2) j@@0) (|Seq#Index_3971| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.453:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3971| (|Seq#Drop_3971| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_30137| |Seq#Empty_30137|) 0))
(assert (= (|Seq#Length_3971| |Seq#Empty_3971|) 0))
(assert (forall ((Heap@@3 T@PolymorphicMapType_42795) (xs@@3 T@Seq_49042) ) (! (dummyFunction_4450 (|fun01#triggerStateless| xs@@3))
 :qid |stdinbpl.721:15|
 :skolemid |59|
 :pattern ( (|fun01'| Heap@@3 xs@@3))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_42795) (xs@@4 T@Seq_49042) ) (! (dummyFunction_4450 (|fun02#triggerStateless| xs@@4))
 :qid |stdinbpl.846:15|
 :skolemid |70|
 :pattern ( (|fun02'| Heap@@4 xs@@4))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_42795) (xs@@5 T@Seq_49042) ) (! (dummyFunction_4450 (|fun03#triggerStateless| xs@@5))
 :qid |stdinbpl.1050:15|
 :skolemid |89|
 :pattern ( (|fun03'| Heap@@5 xs@@5))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_42795) (xs@@6 T@Seq_49042) ) (! (dummyFunction_4450 (|fun07#triggerStateless| xs@@6))
 :qid |stdinbpl.1281:15|
 :skolemid |111|
 :pattern ( (|fun07'| Heap@@6 xs@@6))
)))
(assert (forall ((s@@3 T@Seq_49042) (i@@0 Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_30137| s@@3))) (and (=> (= i@@0 n@@3) (= (|Seq#Index_30128| (|Seq#Update_30137| s@@3 i@@0 v) n@@3) v)) (=> (not (= i@@0 n@@3)) (= (|Seq#Index_30128| (|Seq#Update_30137| s@@3 i@@0 v) n@@3) (|Seq#Index_30128| s@@3 n@@3)))))
 :qid |stdinbpl.408:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_30128| (|Seq#Update_30137| s@@3 i@@0 v) n@@3))
 :pattern ( (|Seq#Index_30128| s@@3 n@@3) (|Seq#Update_30137| s@@3 i@@0 v))
)))
(assert (forall ((s@@4 T@Seq_3971) (i@@1 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3971| s@@4))) (and (=> (= i@@1 n@@4) (= (|Seq#Index_3971| (|Seq#Update_3971| s@@4 i@@1 v@@0) n@@4) v@@0)) (=> (not (= i@@1 n@@4)) (= (|Seq#Index_3971| (|Seq#Update_3971| s@@4 i@@1 v@@0) n@@4) (|Seq#Index_3971| s@@4 n@@4)))))
 :qid |stdinbpl.408:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3971| (|Seq#Update_3971| s@@4 i@@1 v@@0) n@@4))
 :pattern ( (|Seq#Index_3971| s@@4 n@@4) (|Seq#Update_3971| s@@4 i@@1 v@@0))
)))
(assert (forall ((s@@5 T@Seq_49042) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_30137| s@@5)) (= (|Seq#Length_30137| (|Seq#Take_30137| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_30137| s@@5) n@@5) (= (|Seq#Length_30137| (|Seq#Take_30137| s@@5 n@@5)) (|Seq#Length_30137| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_30137| (|Seq#Take_30137| s@@5 n@@5)) 0)))
 :qid |stdinbpl.419:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_30137| (|Seq#Take_30137| s@@5 n@@5)))
 :pattern ( (|Seq#Take_30137| s@@5 n@@5) (|Seq#Length_30137| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3971) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3971| s@@6)) (= (|Seq#Length_3971| (|Seq#Take_3971| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3971| s@@6) n@@6) (= (|Seq#Length_3971| (|Seq#Take_3971| s@@6 n@@6)) (|Seq#Length_3971| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3971| (|Seq#Take_3971| s@@6 n@@6)) 0)))
 :qid |stdinbpl.419:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3971| (|Seq#Take_3971| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3971| s@@6 n@@6) (|Seq#Length_3971| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3971| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.693:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3971| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_49042) (x@@1 T@Ref) ) (!  (=> (|Seq#Contains_49042| s@@7 x@@1) (and (and (<= 0 (|Seq#Skolem_49042| s@@7 x@@1)) (< (|Seq#Skolem_49042| s@@7 x@@1) (|Seq#Length_30137| s@@7))) (= (|Seq#Index_30128| s@@7 (|Seq#Skolem_49042| s@@7 x@@1)) x@@1)))
 :qid |stdinbpl.551:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_49042| s@@7 x@@1))
)))
(assert (forall ((s@@8 T@Seq_3971) (x@@2 Int) ) (!  (=> (|Seq#Contains_3971| s@@8 x@@2) (and (and (<= 0 (|Seq#Skolem_3971| s@@8 x@@2)) (< (|Seq#Skolem_3971| s@@8 x@@2) (|Seq#Length_3971| s@@8))) (= (|Seq#Index_3971| s@@8 (|Seq#Skolem_3971| s@@8 x@@2)) x@@2)))
 :qid |stdinbpl.551:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3971| s@@8 x@@2))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_42795) (xs@@7 T@Seq_49042) ) (!  (and (= (fun01 Heap@@7 xs@@7) (|fun01'| Heap@@7 xs@@7)) (dummyFunction_4450 (|fun01#triggerStateless| xs@@7)))
 :qid |stdinbpl.717:15|
 :skolemid |58|
 :pattern ( (fun01 Heap@@7 xs@@7))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_42795) (xs@@8 T@Seq_49042) ) (!  (and (= (fun02 Heap@@8 xs@@8) (|fun02'| Heap@@8 xs@@8)) (dummyFunction_4450 (|fun02#triggerStateless| xs@@8)))
 :qid |stdinbpl.842:15|
 :skolemid |69|
 :pattern ( (fun02 Heap@@8 xs@@8))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_42795) (xs@@9 T@Seq_49042) ) (!  (and (= (fun03 Heap@@9 xs@@9) (|fun03'| Heap@@9 xs@@9)) (dummyFunction_4450 (|fun03#triggerStateless| xs@@9)))
 :qid |stdinbpl.1046:15|
 :skolemid |88|
 :pattern ( (fun03 Heap@@9 xs@@9))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_42795) (xs@@10 T@Seq_49042) ) (!  (and (= (fun07 Heap@@10 xs@@10) (|fun07'| Heap@@10 xs@@10)) (dummyFunction_4450 (|fun07#triggerStateless| xs@@10)))
 :qid |stdinbpl.1277:15|
 :skolemid |110|
 :pattern ( (fun07 Heap@@10 xs@@10))
)))
(assert (forall ((s@@9 T@Seq_49042) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_30137| s@@9 n@@7) s@@9))
 :qid |stdinbpl.535:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_30137| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3971) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3971| s@@10 n@@8) s@@10))
 :qid |stdinbpl.535:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3971| s@@10 n@@8))
)))
(assert (forall ((i@@2 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@2 j@@1) (- i@@2 j@@1))
 :qid |stdinbpl.388:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@2 j@@1))
)))
(assert (forall ((i@@3 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@3 j@@2) (+ i@@3 j@@2))
 :qid |stdinbpl.386:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@3 j@@2))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_42795) (Mask@@0 T@PolymorphicMapType_42816) (x@@3 T@Ref) (xs@@11 T@Seq_49042) ) (!  (=> (state Heap@@11 Mask@@0) (= (|fun05'| Heap@@11 x@@3 xs@@11) (|fun05#frame| (CombineFrames (FrameFragment_4258 (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap@@11) x@@3 g)) (FrameFragment_4258 (|fun05#condqp9| Heap@@11 x@@3 xs@@11))) x@@3 xs@@11)))
 :qid |stdinbpl.1621:15|
 :skolemid |142|
 :pattern ( (state Heap@@11 Mask@@0) (|fun05'| Heap@@11 x@@3 xs@@11))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_42795) (ExhaleHeap T@PolymorphicMapType_42795) (Mask@@1 T@PolymorphicMapType_42816) (pm_f_33 T@Field_30100_120671) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_30100_120735 Mask@@1 null pm_f_33) (IsPredicateField_30100_120762 pm_f_33)) (= (select (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| Heap@@12) null (PredicateMaskField_30100 pm_f_33)) (select (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| ExhaleHeap) null (PredicateMaskField_30100 pm_f_33)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap Mask@@1) (IsPredicateField_30100_120762 pm_f_33) (select (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| ExhaleHeap) null (PredicateMaskField_30100 pm_f_33)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_42795) (ExhaleHeap@@0 T@PolymorphicMapType_42795) (Mask@@2 T@PolymorphicMapType_42816) (pm_f_33@@0 T@Field_30100_120671) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_30100_120735 Mask@@2 null pm_f_33@@0) (IsWandField_30100_122509 pm_f_33@@0)) (= (select (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| Heap@@13) null (WandMaskField_30100 pm_f_33@@0)) (select (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| ExhaleHeap@@0) null (WandMaskField_30100 pm_f_33@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@0 Mask@@2) (IsWandField_30100_122509 pm_f_33@@0) (select (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| ExhaleHeap@@0) null (WandMaskField_30100 pm_f_33@@0)))
)))
(assert (forall ((x@@4 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_49042| (|Seq#Singleton_30137| x@@4) y) (= x@@4 y))
 :qid |stdinbpl.676:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_49042| (|Seq#Singleton_30137| x@@4) y))
)))
(assert (forall ((x@@5 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3971| (|Seq#Singleton_3971| x@@5) y@@0) (= x@@5 y@@0))
 :qid |stdinbpl.676:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3971| (|Seq#Singleton_3971| x@@5) y@@0))
)))
(assert (forall ((s@@11 T@Seq_49042) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_30137| s@@11))) (= (|Seq#Index_30128| (|Seq#Take_30137| s@@11 n@@9) j@@3) (|Seq#Index_30128| s@@11 j@@3)))
 :qid |stdinbpl.427:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_30128| (|Seq#Take_30137| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_30128| s@@11 j@@3) (|Seq#Take_30137| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3971) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3971| s@@12))) (= (|Seq#Index_3971| (|Seq#Take_3971| s@@12 n@@10) j@@4) (|Seq#Index_3971| s@@12 j@@4)))
 :qid |stdinbpl.427:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3971| (|Seq#Take_3971| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3971| s@@12 j@@4) (|Seq#Take_3971| s@@12 n@@10))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_42795) (Heap1Heap@@0 T@PolymorphicMapType_42795) (x@@6 T@Ref) (i@@4 Int) (xs@@12 T@Seq_49042) ) (!  (=> (and (=  (and (and (<= 0 (|sk_fun06#condqp10| (|fun06#condqp10| Heap2Heap@@0 x@@6 i@@4 xs@@12) (|fun06#condqp10| Heap1Heap@@0 x@@6 i@@4 xs@@12))) (< (|sk_fun06#condqp10| (|fun06#condqp10| Heap2Heap@@0 x@@6 i@@4 xs@@12) (|fun06#condqp10| Heap1Heap@@0 x@@6 i@@4 xs@@12)) 3)) (< NoPerm FullPerm))  (and (and (<= 0 (|sk_fun06#condqp10| (|fun06#condqp10| Heap2Heap@@0 x@@6 i@@4 xs@@12) (|fun06#condqp10| Heap1Heap@@0 x@@6 i@@4 xs@@12))) (< (|sk_fun06#condqp10| (|fun06#condqp10| Heap2Heap@@0 x@@6 i@@4 xs@@12) (|fun06#condqp10| Heap1Heap@@0 x@@6 i@@4 xs@@12)) 3)) (< NoPerm FullPerm))) (=> (and (and (<= 0 (|sk_fun06#condqp10| (|fun06#condqp10| Heap2Heap@@0 x@@6 i@@4 xs@@12) (|fun06#condqp10| Heap1Heap@@0 x@@6 i@@4 xs@@12))) (< (|sk_fun06#condqp10| (|fun06#condqp10| Heap2Heap@@0 x@@6 i@@4 xs@@12) (|fun06#condqp10| Heap1Heap@@0 x@@6 i@@4 xs@@12)) 3)) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap2Heap@@0) (|Seq#Index_30128| xs@@12 (|sk_fun06#condqp10| (|fun06#condqp10| Heap2Heap@@0 x@@6 i@@4 xs@@12) (|fun06#condqp10| Heap1Heap@@0 x@@6 i@@4 xs@@12))) f_7) (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap1Heap@@0) (|Seq#Index_30128| xs@@12 (|sk_fun06#condqp10| (|fun06#condqp10| Heap2Heap@@0 x@@6 i@@4 xs@@12) (|fun06#condqp10| Heap1Heap@@0 x@@6 i@@4 xs@@12))) f_7)))) (= (|fun06#condqp10| Heap2Heap@@0 x@@6 i@@4 xs@@12) (|fun06#condqp10| Heap1Heap@@0 x@@6 i@@4 xs@@12)))
 :qid |stdinbpl.1763:15|
 :skolemid |154|
 :pattern ( (|fun06#condqp10| Heap2Heap@@0 x@@6 i@@4 xs@@12) (|fun06#condqp10| Heap1Heap@@0 x@@6 i@@4 xs@@12) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (forall ((s@@13 T@Seq_49042) (t T@Seq_49042) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_30137| s@@13))) (< n@@11 (|Seq#Length_30137| (|Seq#Append_49042| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_30137| s@@13)) (|Seq#Length_30137| s@@13)) n@@11) (= (|Seq#Take_30137| (|Seq#Append_49042| s@@13 t) n@@11) (|Seq#Append_49042| s@@13 (|Seq#Take_30137| t (|Seq#Sub| n@@11 (|Seq#Length_30137| s@@13)))))))
 :qid |stdinbpl.512:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_30137| (|Seq#Append_49042| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3971) (t@@0 T@Seq_3971) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3971| s@@14))) (< n@@12 (|Seq#Length_3971| (|Seq#Append_3971| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3971| s@@14)) (|Seq#Length_3971| s@@14)) n@@12) (= (|Seq#Take_3971| (|Seq#Append_3971| s@@14 t@@0) n@@12) (|Seq#Append_3971| s@@14 (|Seq#Take_3971| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3971| s@@14)))))))
 :qid |stdinbpl.512:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3971| (|Seq#Append_3971| s@@14 t@@0) n@@12))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_42795) (Mask@@3 T@PolymorphicMapType_42816) (xs@@13 T@Seq_49042) (b_24@@1 Bool) ) (!  (=> (state Heap@@14 Mask@@3) (= (|fun04'| Heap@@14 xs@@13 b_24@@1) (|fun04#frame| (CombineFrames (FrameFragment_30011 (ite b_24@@1 EmptyFrame EmptyFrame)) (FrameFragment_30011 (ite b_24@@1 (FrameFragment_4258 (|fun04#condqp7| Heap@@14 xs@@13 b_24@@1)) (FrameFragment_4258 (|fun04#condqp8| Heap@@14 xs@@13 b_24@@1))))) xs@@13 b_24@@1)))
 :qid |stdinbpl.1413:15|
 :skolemid |123|
 :pattern ( (state Heap@@14 Mask@@3) (|fun04'| Heap@@14 xs@@13 b_24@@1))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@15 T@PolymorphicMapType_42795) (Mask@@4 T@PolymorphicMapType_42816) (xs@@14 T@Seq_49042) ) (!  (=> (state Heap@@15 Mask@@4) (= (|fun02'| Heap@@15 xs@@14) (|fun02#frame| (CombineFrames (FrameFragment_4258 (|fun02#condqp2| Heap@@15 xs@@14)) (FrameFragment_4258 (|fun02#condqp3| Heap@@15 xs@@14))) xs@@14)))
 :qid |stdinbpl.853:15|
 :skolemid |71|
 :pattern ( (state Heap@@15 Mask@@4) (|fun02'| Heap@@15 xs@@14))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_42795) (Mask@@5 T@PolymorphicMapType_42816) (xs@@15 T@Seq_49042) ) (!  (=> (state Heap@@16 Mask@@5) (= (|fun03'| Heap@@16 xs@@15) (|fun03#frame| (CombineFrames (FrameFragment_4258 (|fun03#condqp4| Heap@@16 xs@@15)) (FrameFragment_4258 (|fun03#condqp5| Heap@@16 xs@@15))) xs@@15)))
 :qid |stdinbpl.1069:15|
 :skolemid |93|
 :pattern ( (state Heap@@16 Mask@@5) (|fun03'| Heap@@16 xs@@15))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_42795) (ExhaleHeap@@1 T@PolymorphicMapType_42795) (Mask@@6 T@PolymorphicMapType_42816) (o_63 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@1 Mask@@6) (=> (select (|PolymorphicMapType_42795_29820_53#PolymorphicMapType_42795| Heap@@17) o_63 $allocated) (select (|PolymorphicMapType_42795_29820_53#PolymorphicMapType_42795| ExhaleHeap@@1) o_63 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@1 Mask@@6) (select (|PolymorphicMapType_42795_29820_53#PolymorphicMapType_42795| ExhaleHeap@@1) o_63 $allocated))
)))
(assert (forall ((p T@Field_30100_120671) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_42855_42855 p v_1 p w))
 :qid |stdinbpl.330:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_42855_42855 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_49042) (s1 T@Seq_49042) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_30137|)) (not (= s1 |Seq#Empty_30137|))) (<= (|Seq#Length_30137| s0) n@@13)) (< n@@13 (|Seq#Length_30137| (|Seq#Append_49042| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_30137| s0)) (|Seq#Length_30137| s0)) n@@13) (= (|Seq#Index_30128| (|Seq#Append_49042| s0 s1) n@@13) (|Seq#Index_30128| s1 (|Seq#Sub| n@@13 (|Seq#Length_30137| s0))))))
 :qid |stdinbpl.399:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_30128| (|Seq#Append_49042| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3971) (s1@@0 T@Seq_3971) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3971|)) (not (= s1@@0 |Seq#Empty_3971|))) (<= (|Seq#Length_3971| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3971| (|Seq#Append_3971| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3971| s0@@0)) (|Seq#Length_3971| s0@@0)) n@@14) (= (|Seq#Index_3971| (|Seq#Append_3971| s0@@0 s1@@0) n@@14) (|Seq#Index_3971| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3971| s0@@0))))))
 :qid |stdinbpl.399:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3971| (|Seq#Append_3971| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_30100_4093 f_7)))
(assert  (not (IsWandField_30100_4093 f_7)))
(assert  (not (IsPredicateField_30100_4093 g)))
(assert  (not (IsWandField_30100_4093 g)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_42795) (ExhaleHeap@@2 T@PolymorphicMapType_42795) (Mask@@7 T@PolymorphicMapType_42816) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@2 Mask@@7) (succHeap Heap@@18 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@2 Mask@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_42816) (o_2@@4 T@Ref) (f_4@@4 T@Field_30100_120804) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_42816_30100_124926#PolymorphicMapType_42816| Mask@@8) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_30100_126055 f_4@@4))) (not (IsWandField_30100_126071 f_4@@4))) (<= (select (|PolymorphicMapType_42816_30100_124926#PolymorphicMapType_42816| Mask@@8) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_42816_30100_124926#PolymorphicMapType_42816| Mask@@8) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_42816) (o_2@@5 T@Ref) (f_4@@5 T@Field_30100_120671) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_42816_30100_120671#PolymorphicMapType_42816| Mask@@9) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_30100_120762 f_4@@5))) (not (IsWandField_30100_122509 f_4@@5))) (<= (select (|PolymorphicMapType_42816_30100_120671#PolymorphicMapType_42816| Mask@@9) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_42816_30100_120671#PolymorphicMapType_42816| Mask@@9) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_42816) (o_2@@6 T@Ref) (f_4@@6 T@Field_42868_42869) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_42816_30100_42869#PolymorphicMapType_42816| Mask@@10) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_30100_42869 f_4@@6))) (not (IsWandField_30100_42869 f_4@@6))) (<= (select (|PolymorphicMapType_42816_30100_42869#PolymorphicMapType_42816| Mask@@10) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_42816_30100_42869#PolymorphicMapType_42816| Mask@@10) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_42816) (o_2@@7 T@Ref) (f_4@@7 T@Field_42855_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_42816_30100_53#PolymorphicMapType_42816| Mask@@11) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_30100_53 f_4@@7))) (not (IsWandField_30100_53 f_4@@7))) (<= (select (|PolymorphicMapType_42816_30100_53#PolymorphicMapType_42816| Mask@@11) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_42816_30100_53#PolymorphicMapType_42816| Mask@@11) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_42816) (o_2@@8 T@Ref) (f_4@@8 T@Field_48965_4093) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_42816_30100_4093#PolymorphicMapType_42816| Mask@@12) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_30100_4093 f_4@@8))) (not (IsWandField_30100_4093 f_4@@8))) (<= (select (|PolymorphicMapType_42816_30100_4093#PolymorphicMapType_42816| Mask@@12) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_42816_30100_4093#PolymorphicMapType_42816| Mask@@12) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_42816) (o_2@@9 T@Ref) (f_4@@9 T@Field_30100_120804) ) (! (= (HasDirectPerm_30100_126509 Mask@@13 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_42816_30100_124926#PolymorphicMapType_42816| Mask@@13) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_30100_126509 Mask@@13 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_42816) (o_2@@10 T@Ref) (f_4@@10 T@Field_30100_120671) ) (! (= (HasDirectPerm_30100_120735 Mask@@14 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_42816_30100_120671#PolymorphicMapType_42816| Mask@@14) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_30100_120735 Mask@@14 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_42816) (o_2@@11 T@Ref) (f_4@@11 T@Field_42868_42869) ) (! (= (HasDirectPerm_30100_42869 Mask@@15 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_42816_30100_42869#PolymorphicMapType_42816| Mask@@15) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_30100_42869 Mask@@15 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_42816) (o_2@@12 T@Ref) (f_4@@12 T@Field_42855_53) ) (! (= (HasDirectPerm_30100_53 Mask@@16 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_42816_30100_53#PolymorphicMapType_42816| Mask@@16) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_30100_53 Mask@@16 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_42816) (o_2@@13 T@Ref) (f_4@@13 T@Field_48965_4093) ) (! (= (HasDirectPerm_30100_4093 Mask@@17 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_42816_30100_4093#PolymorphicMapType_42816| Mask@@17) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_30100_4093 Mask@@17 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_42795) (ExhaleHeap@@3 T@PolymorphicMapType_42795) (Mask@@18 T@PolymorphicMapType_42816) (pm_f_33@@1 T@Field_30100_120671) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@3 Mask@@18) (=> (and (HasDirectPerm_30100_120735 Mask@@18 null pm_f_33@@1) (IsPredicateField_30100_120762 pm_f_33@@1)) (and (and (and (and (forall ((o2_33 T@Ref) (f_65 T@Field_42855_53) ) (!  (=> (select (|PolymorphicMapType_43344_42855_53#PolymorphicMapType_43344| (select (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| Heap@@19) null (PredicateMaskField_30100 pm_f_33@@1))) o2_33 f_65) (= (select (|PolymorphicMapType_42795_29820_53#PolymorphicMapType_42795| Heap@@19) o2_33 f_65) (select (|PolymorphicMapType_42795_29820_53#PolymorphicMapType_42795| ExhaleHeap@@3) o2_33 f_65)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_42795_29820_53#PolymorphicMapType_42795| ExhaleHeap@@3) o2_33 f_65))
)) (forall ((o2_33@@0 T@Ref) (f_65@@0 T@Field_42868_42869) ) (!  (=> (select (|PolymorphicMapType_43344_42855_42869#PolymorphicMapType_43344| (select (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| Heap@@19) null (PredicateMaskField_30100 pm_f_33@@1))) o2_33@@0 f_65@@0) (= (select (|PolymorphicMapType_42795_29823_29824#PolymorphicMapType_42795| Heap@@19) o2_33@@0 f_65@@0) (select (|PolymorphicMapType_42795_29823_29824#PolymorphicMapType_42795| ExhaleHeap@@3) o2_33@@0 f_65@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_42795_29823_29824#PolymorphicMapType_42795| ExhaleHeap@@3) o2_33@@0 f_65@@0))
))) (forall ((o2_33@@1 T@Ref) (f_65@@1 T@Field_48965_4093) ) (!  (=> (select (|PolymorphicMapType_43344_42855_4093#PolymorphicMapType_43344| (select (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| Heap@@19) null (PredicateMaskField_30100 pm_f_33@@1))) o2_33@@1 f_65@@1) (= (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap@@19) o2_33@@1 f_65@@1) (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| ExhaleHeap@@3) o2_33@@1 f_65@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| ExhaleHeap@@3) o2_33@@1 f_65@@1))
))) (forall ((o2_33@@2 T@Ref) (f_65@@2 T@Field_30100_120671) ) (!  (=> (select (|PolymorphicMapType_43344_42855_120671#PolymorphicMapType_43344| (select (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| Heap@@19) null (PredicateMaskField_30100 pm_f_33@@1))) o2_33@@2 f_65@@2) (= (select (|PolymorphicMapType_42795_42855_120671#PolymorphicMapType_42795| Heap@@19) o2_33@@2 f_65@@2) (select (|PolymorphicMapType_42795_42855_120671#PolymorphicMapType_42795| ExhaleHeap@@3) o2_33@@2 f_65@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_42795_42855_120671#PolymorphicMapType_42795| ExhaleHeap@@3) o2_33@@2 f_65@@2))
))) (forall ((o2_33@@3 T@Ref) (f_65@@3 T@Field_30100_120804) ) (!  (=> (select (|PolymorphicMapType_43344_42855_121982#PolymorphicMapType_43344| (select (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| Heap@@19) null (PredicateMaskField_30100 pm_f_33@@1))) o2_33@@3 f_65@@3) (= (select (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| Heap@@19) o2_33@@3 f_65@@3) (select (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| ExhaleHeap@@3) o2_33@@3 f_65@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| ExhaleHeap@@3) o2_33@@3 f_65@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@3 Mask@@18) (IsPredicateField_30100_120762 pm_f_33@@1))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_42795) (ExhaleHeap@@4 T@PolymorphicMapType_42795) (Mask@@19 T@PolymorphicMapType_42816) (pm_f_33@@2 T@Field_30100_120671) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@4 Mask@@19) (=> (and (HasDirectPerm_30100_120735 Mask@@19 null pm_f_33@@2) (IsWandField_30100_122509 pm_f_33@@2)) (and (and (and (and (forall ((o2_33@@4 T@Ref) (f_65@@4 T@Field_42855_53) ) (!  (=> (select (|PolymorphicMapType_43344_42855_53#PolymorphicMapType_43344| (select (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| Heap@@20) null (WandMaskField_30100 pm_f_33@@2))) o2_33@@4 f_65@@4) (= (select (|PolymorphicMapType_42795_29820_53#PolymorphicMapType_42795| Heap@@20) o2_33@@4 f_65@@4) (select (|PolymorphicMapType_42795_29820_53#PolymorphicMapType_42795| ExhaleHeap@@4) o2_33@@4 f_65@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_42795_29820_53#PolymorphicMapType_42795| ExhaleHeap@@4) o2_33@@4 f_65@@4))
)) (forall ((o2_33@@5 T@Ref) (f_65@@5 T@Field_42868_42869) ) (!  (=> (select (|PolymorphicMapType_43344_42855_42869#PolymorphicMapType_43344| (select (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| Heap@@20) null (WandMaskField_30100 pm_f_33@@2))) o2_33@@5 f_65@@5) (= (select (|PolymorphicMapType_42795_29823_29824#PolymorphicMapType_42795| Heap@@20) o2_33@@5 f_65@@5) (select (|PolymorphicMapType_42795_29823_29824#PolymorphicMapType_42795| ExhaleHeap@@4) o2_33@@5 f_65@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_42795_29823_29824#PolymorphicMapType_42795| ExhaleHeap@@4) o2_33@@5 f_65@@5))
))) (forall ((o2_33@@6 T@Ref) (f_65@@6 T@Field_48965_4093) ) (!  (=> (select (|PolymorphicMapType_43344_42855_4093#PolymorphicMapType_43344| (select (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| Heap@@20) null (WandMaskField_30100 pm_f_33@@2))) o2_33@@6 f_65@@6) (= (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap@@20) o2_33@@6 f_65@@6) (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| ExhaleHeap@@4) o2_33@@6 f_65@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| ExhaleHeap@@4) o2_33@@6 f_65@@6))
))) (forall ((o2_33@@7 T@Ref) (f_65@@7 T@Field_30100_120671) ) (!  (=> (select (|PolymorphicMapType_43344_42855_120671#PolymorphicMapType_43344| (select (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| Heap@@20) null (WandMaskField_30100 pm_f_33@@2))) o2_33@@7 f_65@@7) (= (select (|PolymorphicMapType_42795_42855_120671#PolymorphicMapType_42795| Heap@@20) o2_33@@7 f_65@@7) (select (|PolymorphicMapType_42795_42855_120671#PolymorphicMapType_42795| ExhaleHeap@@4) o2_33@@7 f_65@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_42795_42855_120671#PolymorphicMapType_42795| ExhaleHeap@@4) o2_33@@7 f_65@@7))
))) (forall ((o2_33@@8 T@Ref) (f_65@@8 T@Field_30100_120804) ) (!  (=> (select (|PolymorphicMapType_43344_42855_121982#PolymorphicMapType_43344| (select (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| Heap@@20) null (WandMaskField_30100 pm_f_33@@2))) o2_33@@8 f_65@@8) (= (select (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| Heap@@20) o2_33@@8 f_65@@8) (select (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| ExhaleHeap@@4) o2_33@@8 f_65@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| ExhaleHeap@@4) o2_33@@8 f_65@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@4 Mask@@19) (IsWandField_30100_122509 pm_f_33@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.318:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3971| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.691:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3971| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_42795) (ExhaleHeap@@5 T@PolymorphicMapType_42795) (Mask@@20 T@PolymorphicMapType_42816) (o_63@@0 T@Ref) (f_65@@9 T@Field_30100_120804) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@5 Mask@@20) (=> (HasDirectPerm_30100_126509 Mask@@20 o_63@@0 f_65@@9) (= (select (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| Heap@@21) o_63@@0 f_65@@9) (select (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| ExhaleHeap@@5) o_63@@0 f_65@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@5 Mask@@20) (select (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| ExhaleHeap@@5) o_63@@0 f_65@@9))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_42795) (ExhaleHeap@@6 T@PolymorphicMapType_42795) (Mask@@21 T@PolymorphicMapType_42816) (o_63@@1 T@Ref) (f_65@@10 T@Field_30100_120671) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@6 Mask@@21) (=> (HasDirectPerm_30100_120735 Mask@@21 o_63@@1 f_65@@10) (= (select (|PolymorphicMapType_42795_42855_120671#PolymorphicMapType_42795| Heap@@22) o_63@@1 f_65@@10) (select (|PolymorphicMapType_42795_42855_120671#PolymorphicMapType_42795| ExhaleHeap@@6) o_63@@1 f_65@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@6 Mask@@21) (select (|PolymorphicMapType_42795_42855_120671#PolymorphicMapType_42795| ExhaleHeap@@6) o_63@@1 f_65@@10))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_42795) (ExhaleHeap@@7 T@PolymorphicMapType_42795) (Mask@@22 T@PolymorphicMapType_42816) (o_63@@2 T@Ref) (f_65@@11 T@Field_42868_42869) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@7 Mask@@22) (=> (HasDirectPerm_30100_42869 Mask@@22 o_63@@2 f_65@@11) (= (select (|PolymorphicMapType_42795_29823_29824#PolymorphicMapType_42795| Heap@@23) o_63@@2 f_65@@11) (select (|PolymorphicMapType_42795_29823_29824#PolymorphicMapType_42795| ExhaleHeap@@7) o_63@@2 f_65@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@7 Mask@@22) (select (|PolymorphicMapType_42795_29823_29824#PolymorphicMapType_42795| ExhaleHeap@@7) o_63@@2 f_65@@11))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_42795) (ExhaleHeap@@8 T@PolymorphicMapType_42795) (Mask@@23 T@PolymorphicMapType_42816) (o_63@@3 T@Ref) (f_65@@12 T@Field_42855_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@8 Mask@@23) (=> (HasDirectPerm_30100_53 Mask@@23 o_63@@3 f_65@@12) (= (select (|PolymorphicMapType_42795_29820_53#PolymorphicMapType_42795| Heap@@24) o_63@@3 f_65@@12) (select (|PolymorphicMapType_42795_29820_53#PolymorphicMapType_42795| ExhaleHeap@@8) o_63@@3 f_65@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@8 Mask@@23) (select (|PolymorphicMapType_42795_29820_53#PolymorphicMapType_42795| ExhaleHeap@@8) o_63@@3 f_65@@12))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_42795) (ExhaleHeap@@9 T@PolymorphicMapType_42795) (Mask@@24 T@PolymorphicMapType_42816) (o_63@@4 T@Ref) (f_65@@13 T@Field_48965_4093) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@9 Mask@@24) (=> (HasDirectPerm_30100_4093 Mask@@24 o_63@@4 f_65@@13) (= (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap@@25) o_63@@4 f_65@@13) (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| ExhaleHeap@@9) o_63@@4 f_65@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@9 Mask@@24) (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| ExhaleHeap@@9) o_63@@4 f_65@@13))
)))
(assert (forall ((s0@@1 T@Seq_49042) (s1@@1 T@Seq_49042) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_30137|)) (not (= s1@@1 |Seq#Empty_30137|))) (= (|Seq#Length_30137| (|Seq#Append_49042| s0@@1 s1@@1)) (+ (|Seq#Length_30137| s0@@1) (|Seq#Length_30137| s1@@1))))
 :qid |stdinbpl.368:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_30137| (|Seq#Append_49042| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3971) (s1@@2 T@Seq_3971) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3971|)) (not (= s1@@2 |Seq#Empty_3971|))) (= (|Seq#Length_3971| (|Seq#Append_3971| s0@@2 s1@@2)) (+ (|Seq#Length_3971| s0@@2) (|Seq#Length_3971| s1@@2))))
 :qid |stdinbpl.368:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3971| (|Seq#Append_3971| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_30100_120804) ) (! (= (select (|PolymorphicMapType_42816_30100_124926#PolymorphicMapType_42816| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_42816_30100_124926#PolymorphicMapType_42816| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_30100_120671) ) (! (= (select (|PolymorphicMapType_42816_30100_120671#PolymorphicMapType_42816| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_42816_30100_120671#PolymorphicMapType_42816| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_42868_42869) ) (! (= (select (|PolymorphicMapType_42816_30100_42869#PolymorphicMapType_42816| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_42816_30100_42869#PolymorphicMapType_42816| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_42855_53) ) (! (= (select (|PolymorphicMapType_42816_30100_53#PolymorphicMapType_42816| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_42816_30100_53#PolymorphicMapType_42816| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_48965_4093) ) (! (= (select (|PolymorphicMapType_42816_30100_4093#PolymorphicMapType_42816| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_42816_30100_4093#PolymorphicMapType_42816| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((s@@15 T@Seq_49042) (t@@1 T@Seq_49042) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_30137| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_30137| s@@15)) (|Seq#Length_30137| s@@15)) n@@15) (= (|Seq#Drop_30137| (|Seq#Append_49042| s@@15 t@@1) n@@15) (|Seq#Drop_30137| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_30137| s@@15))))))
 :qid |stdinbpl.525:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_30137| (|Seq#Append_49042| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3971) (t@@2 T@Seq_3971) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3971| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3971| s@@16)) (|Seq#Length_3971| s@@16)) n@@16) (= (|Seq#Drop_3971| (|Seq#Append_3971| s@@16 t@@2) n@@16) (|Seq#Drop_3971| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3971| s@@16))))))
 :qid |stdinbpl.525:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3971| (|Seq#Append_3971| s@@16 t@@2) n@@16))
)))
(assert (forall ((Heap2Heap@@1 T@PolymorphicMapType_42795) (Heap1Heap@@1 T@PolymorphicMapType_42795) (xs@@16 T@Seq_49042) ) (!  (=> (and (=  (and (and (<= 0 (|sk_fun01#condqp1| (|fun01#condqp1| Heap2Heap@@1 xs@@16) (|fun01#condqp1| Heap1Heap@@1 xs@@16))) (< (|sk_fun01#condqp1| (|fun01#condqp1| Heap2Heap@@1 xs@@16) (|fun01#condqp1| Heap1Heap@@1 xs@@16)) 3)) (< NoPerm FullPerm))  (and (and (<= 0 (|sk_fun01#condqp1| (|fun01#condqp1| Heap2Heap@@1 xs@@16) (|fun01#condqp1| Heap1Heap@@1 xs@@16))) (< (|sk_fun01#condqp1| (|fun01#condqp1| Heap2Heap@@1 xs@@16) (|fun01#condqp1| Heap1Heap@@1 xs@@16)) 3)) (< NoPerm FullPerm))) (=> (and (and (<= 0 (|sk_fun01#condqp1| (|fun01#condqp1| Heap2Heap@@1 xs@@16) (|fun01#condqp1| Heap1Heap@@1 xs@@16))) (< (|sk_fun01#condqp1| (|fun01#condqp1| Heap2Heap@@1 xs@@16) (|fun01#condqp1| Heap1Heap@@1 xs@@16)) 3)) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap2Heap@@1) (|Seq#Index_30128| xs@@16 (|sk_fun01#condqp1| (|fun01#condqp1| Heap2Heap@@1 xs@@16) (|fun01#condqp1| Heap1Heap@@1 xs@@16))) f_7) (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap1Heap@@1) (|Seq#Index_30128| xs@@16 (|sk_fun01#condqp1| (|fun01#condqp1| Heap2Heap@@1 xs@@16) (|fun01#condqp1| Heap1Heap@@1 xs@@16))) f_7)))) (= (|fun01#condqp1| Heap2Heap@@1 xs@@16) (|fun01#condqp1| Heap1Heap@@1 xs@@16)))
 :qid |stdinbpl.738:15|
 :skolemid |61|
 :pattern ( (|fun01#condqp1| Heap2Heap@@1 xs@@16) (|fun01#condqp1| Heap1Heap@@1 xs@@16) (succHeapTrans Heap2Heap@@1 Heap1Heap@@1))
)))
(assert (forall ((Heap2Heap@@2 T@PolymorphicMapType_42795) (Heap1Heap@@2 T@PolymorphicMapType_42795) (xs@@17 T@Seq_49042) ) (!  (=> (and (=  (and (and (<= 0 (|sk_fun02#condqp2| (|fun02#condqp2| Heap2Heap@@2 xs@@17) (|fun02#condqp2| Heap1Heap@@2 xs@@17))) (< (|sk_fun02#condqp2| (|fun02#condqp2| Heap2Heap@@2 xs@@17) (|fun02#condqp2| Heap1Heap@@2 xs@@17)) 3)) (< NoPerm FullPerm))  (and (and (<= 0 (|sk_fun02#condqp2| (|fun02#condqp2| Heap2Heap@@2 xs@@17) (|fun02#condqp2| Heap1Heap@@2 xs@@17))) (< (|sk_fun02#condqp2| (|fun02#condqp2| Heap2Heap@@2 xs@@17) (|fun02#condqp2| Heap1Heap@@2 xs@@17)) 3)) (< NoPerm FullPerm))) (=> (and (and (<= 0 (|sk_fun02#condqp2| (|fun02#condqp2| Heap2Heap@@2 xs@@17) (|fun02#condqp2| Heap1Heap@@2 xs@@17))) (< (|sk_fun02#condqp2| (|fun02#condqp2| Heap2Heap@@2 xs@@17) (|fun02#condqp2| Heap1Heap@@2 xs@@17)) 3)) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap2Heap@@2) (|Seq#Index_30128| xs@@17 (|sk_fun02#condqp2| (|fun02#condqp2| Heap2Heap@@2 xs@@17) (|fun02#condqp2| Heap1Heap@@2 xs@@17))) f_7) (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap1Heap@@2) (|Seq#Index_30128| xs@@17 (|sk_fun02#condqp2| (|fun02#condqp2| Heap2Heap@@2 xs@@17) (|fun02#condqp2| Heap1Heap@@2 xs@@17))) f_7)))) (= (|fun02#condqp2| Heap2Heap@@2 xs@@17) (|fun02#condqp2| Heap1Heap@@2 xs@@17)))
 :qid |stdinbpl.863:15|
 :skolemid |72|
 :pattern ( (|fun02#condqp2| Heap2Heap@@2 xs@@17) (|fun02#condqp2| Heap1Heap@@2 xs@@17) (succHeapTrans Heap2Heap@@2 Heap1Heap@@2))
)))
(assert (forall ((Heap2Heap@@3 T@PolymorphicMapType_42795) (Heap1Heap@@3 T@PolymorphicMapType_42795) (xs@@18 T@Seq_49042) ) (!  (=> (and (=  (and (and (<= 0 (|sk_fun03#condqp4| (|fun03#condqp4| Heap2Heap@@3 xs@@18) (|fun03#condqp4| Heap1Heap@@3 xs@@18))) (< (|sk_fun03#condqp4| (|fun03#condqp4| Heap2Heap@@3 xs@@18) (|fun03#condqp4| Heap1Heap@@3 xs@@18)) 3)) (< NoPerm FullPerm))  (and (and (<= 0 (|sk_fun03#condqp4| (|fun03#condqp4| Heap2Heap@@3 xs@@18) (|fun03#condqp4| Heap1Heap@@3 xs@@18))) (< (|sk_fun03#condqp4| (|fun03#condqp4| Heap2Heap@@3 xs@@18) (|fun03#condqp4| Heap1Heap@@3 xs@@18)) 3)) (< NoPerm FullPerm))) (=> (and (and (<= 0 (|sk_fun03#condqp4| (|fun03#condqp4| Heap2Heap@@3 xs@@18) (|fun03#condqp4| Heap1Heap@@3 xs@@18))) (< (|sk_fun03#condqp4| (|fun03#condqp4| Heap2Heap@@3 xs@@18) (|fun03#condqp4| Heap1Heap@@3 xs@@18)) 3)) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap2Heap@@3) (|Seq#Index_30128| xs@@18 (|sk_fun03#condqp4| (|fun03#condqp4| Heap2Heap@@3 xs@@18) (|fun03#condqp4| Heap1Heap@@3 xs@@18))) f_7) (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap1Heap@@3) (|Seq#Index_30128| xs@@18 (|sk_fun03#condqp4| (|fun03#condqp4| Heap2Heap@@3 xs@@18) (|fun03#condqp4| Heap1Heap@@3 xs@@18))) f_7)))) (= (|fun03#condqp4| Heap2Heap@@3 xs@@18) (|fun03#condqp4| Heap1Heap@@3 xs@@18)))
 :qid |stdinbpl.1079:15|
 :skolemid |94|
 :pattern ( (|fun03#condqp4| Heap2Heap@@3 xs@@18) (|fun03#condqp4| Heap1Heap@@3 xs@@18) (succHeapTrans Heap2Heap@@3 Heap1Heap@@3))
)))
(assert (forall ((Heap2Heap@@4 T@PolymorphicMapType_42795) (Heap1Heap@@4 T@PolymorphicMapType_42795) (xs@@19 T@Seq_49042) ) (!  (=> (and (=  (and (and (<= 0 (|sk_fun07#condqp6| (|fun07#condqp6| Heap2Heap@@4 xs@@19) (|fun07#condqp6| Heap1Heap@@4 xs@@19))) (< (|sk_fun07#condqp6| (|fun07#condqp6| Heap2Heap@@4 xs@@19) (|fun07#condqp6| Heap1Heap@@4 xs@@19)) 3)) (< NoPerm FullPerm))  (and (and (<= 0 (|sk_fun07#condqp6| (|fun07#condqp6| Heap2Heap@@4 xs@@19) (|fun07#condqp6| Heap1Heap@@4 xs@@19))) (< (|sk_fun07#condqp6| (|fun07#condqp6| Heap2Heap@@4 xs@@19) (|fun07#condqp6| Heap1Heap@@4 xs@@19)) 3)) (< NoPerm FullPerm))) (=> (and (and (<= 0 (|sk_fun07#condqp6| (|fun07#condqp6| Heap2Heap@@4 xs@@19) (|fun07#condqp6| Heap1Heap@@4 xs@@19))) (< (|sk_fun07#condqp6| (|fun07#condqp6| Heap2Heap@@4 xs@@19) (|fun07#condqp6| Heap1Heap@@4 xs@@19)) 3)) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap2Heap@@4) (|Seq#Index_30128| xs@@19 (|sk_fun07#condqp6| (|fun07#condqp6| Heap2Heap@@4 xs@@19) (|fun07#condqp6| Heap1Heap@@4 xs@@19))) f_7) (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap1Heap@@4) (|Seq#Index_30128| xs@@19 (|sk_fun07#condqp6| (|fun07#condqp6| Heap2Heap@@4 xs@@19) (|fun07#condqp6| Heap1Heap@@4 xs@@19))) f_7)))) (= (|fun07#condqp6| Heap2Heap@@4 xs@@19) (|fun07#condqp6| Heap1Heap@@4 xs@@19)))
 :qid |stdinbpl.1298:15|
 :skolemid |113|
 :pattern ( (|fun07#condqp6| Heap2Heap@@4 xs@@19) (|fun07#condqp6| Heap1Heap@@4 xs@@19) (succHeapTrans Heap2Heap@@4 Heap1Heap@@4))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_42795) (xs@@20 T@Seq_49042) (b_24@@2 Bool) ) (!  (and (= (fun04 Heap@@26 xs@@20 b_24@@2) (|fun04'| Heap@@26 xs@@20 b_24@@2)) (dummyFunction_4450 (|fun04#triggerStateless| xs@@20 b_24@@2)))
 :qid |stdinbpl.1402:15|
 :skolemid |121|
 :pattern ( (fun04 Heap@@26 xs@@20 b_24@@2))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_42795) (x@@7 T@Ref) (xs@@21 T@Seq_49042) ) (!  (and (= (fun05 Heap@@27 x@@7 xs@@21) (|fun05'| Heap@@27 x@@7 xs@@21)) (dummyFunction_4450 (|fun05#triggerStateless| x@@7 xs@@21)))
 :qid |stdinbpl.1610:15|
 :skolemid |140|
 :pattern ( (fun05 Heap@@27 x@@7 xs@@21))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_42795) (Mask@@25 T@PolymorphicMapType_42816) (xs@@22 T@Seq_49042) ) (!  (=> (and (state Heap@@28 Mask@@25) (< AssumeFunctionsAbove 6)) (=> (and (and (> (|Seq#Length_30137| xs@@22) 10) (forall ((i1 Int) (i2_1 Int) ) (!  (=> (and (|Seq#Contains_3971| (|Seq#Range| 0 3) i1) (and (|Seq#Contains_3971| (|Seq#Range| 0 3) i2_1) (not (= i1 i2_1)))) (not (= (|Seq#Index_30128| xs@@22 i1) (|Seq#Index_30128| xs@@22 i2_1))))
 :qid |stdinbpl.1058:85|
 :skolemid |90|
 :pattern ( (|Seq#ContainsTrigger_3971| (|Seq#Range| 0 3) i1) (|Seq#ContainsTrigger_3971| (|Seq#Range| 0 3) i2_1))
 :pattern ( (|Seq#ContainsTrigger_3971| (|Seq#Range| 0 3) i1) (|Seq#Contains_3971| (|Seq#Range| 0 3) i2_1))
 :pattern ( (|Seq#Contains_3971| (|Seq#Range| 0 3) i1) (|Seq#ContainsTrigger_3971| (|Seq#Range| 0 3) i2_1))
 :pattern ( (|Seq#Contains_3971| (|Seq#Range| 0 3) i1) (|Seq#Contains_3971| (|Seq#Range| 0 3) i2_1))
 :pattern ( (|Seq#ContainsTrigger_3971| (|Seq#Range| 0 3) i1) (|Seq#Index_30128| xs@@22 i2_1))
 :pattern ( (|Seq#Contains_3971| (|Seq#Range| 0 3) i1) (|Seq#Index_30128| xs@@22 i2_1))
 :pattern ( (|Seq#ContainsTrigger_3971| (|Seq#Range| 0 3) i2_1) (|Seq#Index_30128| xs@@22 i1))
 :pattern ( (|Seq#Contains_3971| (|Seq#Range| 0 3) i2_1) (|Seq#Index_30128| xs@@22 i1))
 :pattern ( (|Seq#Index_30128| xs@@22 i1) (|Seq#Index_30128| xs@@22 i2_1))
))) (forall ((i1_1_1 Int) (i2_1_1 Int) ) (!  (=> (and (|Seq#Contains_3971| (|Seq#Range| 6 9) i1_1_1) (and (|Seq#Contains_3971| (|Seq#Range| 6 9) i2_1_1) (not (= i1_1_1 i2_1_1)))) (not (= (|Seq#Index_30128| xs@@22 i1_1_1) (|Seq#Index_30128| xs@@22 i2_1_1))))
 :qid |stdinbpl.1061:17|
 :skolemid |91|
 :pattern ( (|Seq#ContainsTrigger_3971| (|Seq#Range| 6 9) i1_1_1) (|Seq#ContainsTrigger_3971| (|Seq#Range| 6 9) i2_1_1))
 :pattern ( (|Seq#ContainsTrigger_3971| (|Seq#Range| 6 9) i1_1_1) (|Seq#Contains_3971| (|Seq#Range| 6 9) i2_1_1))
 :pattern ( (|Seq#Contains_3971| (|Seq#Range| 6 9) i1_1_1) (|Seq#ContainsTrigger_3971| (|Seq#Range| 6 9) i2_1_1))
 :pattern ( (|Seq#Contains_3971| (|Seq#Range| 6 9) i1_1_1) (|Seq#Contains_3971| (|Seq#Range| 6 9) i2_1_1))
 :pattern ( (|Seq#ContainsTrigger_3971| (|Seq#Range| 6 9) i1_1_1) (|Seq#Index_30128| xs@@22 i2_1_1))
 :pattern ( (|Seq#Contains_3971| (|Seq#Range| 6 9) i1_1_1) (|Seq#Index_30128| xs@@22 i2_1_1))
 :pattern ( (|Seq#ContainsTrigger_3971| (|Seq#Range| 6 9) i2_1_1) (|Seq#Index_30128| xs@@22 i1_1_1))
 :pattern ( (|Seq#Contains_3971| (|Seq#Range| 6 9) i2_1_1) (|Seq#Index_30128| xs@@22 i1_1_1))
 :pattern ( (|Seq#Index_30128| xs@@22 i1_1_1) (|Seq#Index_30128| xs@@22 i2_1_1))
))) (= (fun03 Heap@@28 xs@@22) (+ (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap@@28) (|Seq#Index_30128| xs@@22 2) f_7) (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap@@28) (|Seq#Index_30128| xs@@22 6) f_7)))))
 :qid |stdinbpl.1056:15|
 :skolemid |92|
 :pattern ( (state Heap@@28 Mask@@25) (fun03 Heap@@28 xs@@22))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_42816) (SummandMask1 T@PolymorphicMapType_42816) (SummandMask2 T@PolymorphicMapType_42816) (o_2@@19 T@Ref) (f_4@@19 T@Field_30100_120804) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_42816_30100_124926#PolymorphicMapType_42816| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_42816_30100_124926#PolymorphicMapType_42816| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_42816_30100_124926#PolymorphicMapType_42816| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_42816_30100_124926#PolymorphicMapType_42816| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_42816_30100_124926#PolymorphicMapType_42816| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_42816_30100_124926#PolymorphicMapType_42816| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_42816) (SummandMask1@@0 T@PolymorphicMapType_42816) (SummandMask2@@0 T@PolymorphicMapType_42816) (o_2@@20 T@Ref) (f_4@@20 T@Field_30100_120671) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_42816_30100_120671#PolymorphicMapType_42816| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_42816_30100_120671#PolymorphicMapType_42816| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_42816_30100_120671#PolymorphicMapType_42816| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_42816_30100_120671#PolymorphicMapType_42816| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_42816_30100_120671#PolymorphicMapType_42816| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_42816_30100_120671#PolymorphicMapType_42816| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_42816) (SummandMask1@@1 T@PolymorphicMapType_42816) (SummandMask2@@1 T@PolymorphicMapType_42816) (o_2@@21 T@Ref) (f_4@@21 T@Field_42868_42869) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_42816_30100_42869#PolymorphicMapType_42816| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_42816_30100_42869#PolymorphicMapType_42816| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_42816_30100_42869#PolymorphicMapType_42816| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_42816_30100_42869#PolymorphicMapType_42816| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_42816_30100_42869#PolymorphicMapType_42816| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_42816_30100_42869#PolymorphicMapType_42816| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_42816) (SummandMask1@@2 T@PolymorphicMapType_42816) (SummandMask2@@2 T@PolymorphicMapType_42816) (o_2@@22 T@Ref) (f_4@@22 T@Field_42855_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_42816_30100_53#PolymorphicMapType_42816| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_42816_30100_53#PolymorphicMapType_42816| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_42816_30100_53#PolymorphicMapType_42816| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_42816_30100_53#PolymorphicMapType_42816| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_42816_30100_53#PolymorphicMapType_42816| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_42816_30100_53#PolymorphicMapType_42816| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_42816) (SummandMask1@@3 T@PolymorphicMapType_42816) (SummandMask2@@3 T@PolymorphicMapType_42816) (o_2@@23 T@Ref) (f_4@@23 T@Field_48965_4093) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_42816_30100_4093#PolymorphicMapType_42816| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_42816_30100_4093#PolymorphicMapType_42816| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_42816_30100_4093#PolymorphicMapType_42816| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_42816_30100_4093#PolymorphicMapType_42816| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_42816_30100_4093#PolymorphicMapType_42816| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_42816_30100_4093#PolymorphicMapType_42816| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3971| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3971| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.690:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3971| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_49042) (b T@Seq_49042) ) (!  (=> (|Seq#Equal_49042| a b) (= a b))
 :qid |stdinbpl.663:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_49042| a b))
)))
(assert (forall ((a@@0 T@Seq_3971) (b@@0 T@Seq_3971) ) (!  (=> (|Seq#Equal_3971| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.663:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3971| a@@0 b@@0))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_42795) (x@@8 T@Ref) (i@@5 Int) (xs@@23 T@Seq_49042) ) (!  (and (= (fun06 Heap@@29 x@@8 i@@5 xs@@23) (|fun06'| Heap@@29 x@@8 i@@5 xs@@23)) (dummyFunction_4450 (|fun06#triggerStateless| x@@8 i@@5 xs@@23)))
 :qid |stdinbpl.1742:15|
 :skolemid |151|
 :pattern ( (fun06 Heap@@29 x@@8 i@@5 xs@@23))
)))
(assert (forall ((s@@17 T@Seq_49042) (i@@6 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_30137| s@@17))) (|Seq#ContainsTrigger_30137| s@@17 (|Seq#Index_30128| s@@17 i@@6)))
 :qid |stdinbpl.556:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_30128| s@@17 i@@6))
)))
(assert (forall ((s@@18 T@Seq_3971) (i@@7 Int) ) (!  (=> (and (<= 0 i@@7) (< i@@7 (|Seq#Length_3971| s@@18))) (|Seq#ContainsTrigger_3971| s@@18 (|Seq#Index_3971| s@@18 i@@7)))
 :qid |stdinbpl.556:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3971| s@@18 i@@7))
)))
(assert (forall ((s0@@3 T@Seq_49042) (s1@@3 T@Seq_49042) ) (!  (and (=> (= s0@@3 |Seq#Empty_30137|) (= (|Seq#Append_49042| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_30137|) (= (|Seq#Append_49042| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.374:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_49042| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3971) (s1@@4 T@Seq_3971) ) (!  (and (=> (= s0@@4 |Seq#Empty_3971|) (= (|Seq#Append_3971| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3971|) (= (|Seq#Append_3971| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.374:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3971| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_30128| (|Seq#Singleton_30137| t@@3) 0) t@@3)
 :qid |stdinbpl.378:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_30137| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3971| (|Seq#Singleton_3971| t@@4) 0) t@@4)
 :qid |stdinbpl.378:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3971| t@@4))
)))
(assert (forall ((s@@19 T@Seq_49042) ) (! (<= 0 (|Seq#Length_30137| s@@19))
 :qid |stdinbpl.357:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_30137| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3971) ) (! (<= 0 (|Seq#Length_3971| s@@20))
 :qid |stdinbpl.357:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3971| s@@20))
)))
(assert (forall ((Heap2Heap@@5 T@PolymorphicMapType_42795) (Heap1Heap@@5 T@PolymorphicMapType_42795) (xs@@24 T@Seq_49042) (b_24@@3 Bool) ) (!  (=> (and (=  (and (and (<= 0 (|sk_fun04#condqp7| (|fun04#condqp7| Heap2Heap@@5 xs@@24 b_24@@3) (|fun04#condqp7| Heap1Heap@@5 xs@@24 b_24@@3))) (< (|sk_fun04#condqp7| (|fun04#condqp7| Heap2Heap@@5 xs@@24 b_24@@3) (|fun04#condqp7| Heap1Heap@@5 xs@@24 b_24@@3)) 3)) (< NoPerm FullPerm))  (and (and (<= 0 (|sk_fun04#condqp7| (|fun04#condqp7| Heap2Heap@@5 xs@@24 b_24@@3) (|fun04#condqp7| Heap1Heap@@5 xs@@24 b_24@@3))) (< (|sk_fun04#condqp7| (|fun04#condqp7| Heap2Heap@@5 xs@@24 b_24@@3) (|fun04#condqp7| Heap1Heap@@5 xs@@24 b_24@@3)) 3)) (< NoPerm FullPerm))) (=> (and (and (<= 0 (|sk_fun04#condqp7| (|fun04#condqp7| Heap2Heap@@5 xs@@24 b_24@@3) (|fun04#condqp7| Heap1Heap@@5 xs@@24 b_24@@3))) (< (|sk_fun04#condqp7| (|fun04#condqp7| Heap2Heap@@5 xs@@24 b_24@@3) (|fun04#condqp7| Heap1Heap@@5 xs@@24 b_24@@3)) 3)) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap2Heap@@5) (|Seq#Index_30128| xs@@24 (|sk_fun04#condqp7| (|fun04#condqp7| Heap2Heap@@5 xs@@24 b_24@@3) (|fun04#condqp7| Heap1Heap@@5 xs@@24 b_24@@3))) f_7) (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap1Heap@@5) (|Seq#Index_30128| xs@@24 (|sk_fun04#condqp7| (|fun04#condqp7| Heap2Heap@@5 xs@@24 b_24@@3) (|fun04#condqp7| Heap1Heap@@5 xs@@24 b_24@@3))) f_7)))) (= (|fun04#condqp7| Heap2Heap@@5 xs@@24 b_24@@3) (|fun04#condqp7| Heap1Heap@@5 xs@@24 b_24@@3)))
 :qid |stdinbpl.1423:15|
 :skolemid |124|
 :pattern ( (|fun04#condqp7| Heap2Heap@@5 xs@@24 b_24@@3) (|fun04#condqp7| Heap1Heap@@5 xs@@24 b_24@@3) (succHeapTrans Heap2Heap@@5 Heap1Heap@@5))
)))
(assert (forall ((Heap2Heap@@6 T@PolymorphicMapType_42795) (Heap1Heap@@6 T@PolymorphicMapType_42795) (x@@9 T@Ref) (xs@@25 T@Seq_49042) ) (!  (=> (and (=  (and (and (<= 0 (|sk_fun05#condqp9| (|fun05#condqp9| Heap2Heap@@6 x@@9 xs@@25) (|fun05#condqp9| Heap1Heap@@6 x@@9 xs@@25))) (< (|sk_fun05#condqp9| (|fun05#condqp9| Heap2Heap@@6 x@@9 xs@@25) (|fun05#condqp9| Heap1Heap@@6 x@@9 xs@@25)) 3)) (< NoPerm FullPerm))  (and (and (<= 0 (|sk_fun05#condqp9| (|fun05#condqp9| Heap2Heap@@6 x@@9 xs@@25) (|fun05#condqp9| Heap1Heap@@6 x@@9 xs@@25))) (< (|sk_fun05#condqp9| (|fun05#condqp9| Heap2Heap@@6 x@@9 xs@@25) (|fun05#condqp9| Heap1Heap@@6 x@@9 xs@@25)) 3)) (< NoPerm FullPerm))) (=> (and (and (<= 0 (|sk_fun05#condqp9| (|fun05#condqp9| Heap2Heap@@6 x@@9 xs@@25) (|fun05#condqp9| Heap1Heap@@6 x@@9 xs@@25))) (< (|sk_fun05#condqp9| (|fun05#condqp9| Heap2Heap@@6 x@@9 xs@@25) (|fun05#condqp9| Heap1Heap@@6 x@@9 xs@@25)) 3)) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap2Heap@@6) (|Seq#Index_30128| xs@@25 (|sk_fun05#condqp9| (|fun05#condqp9| Heap2Heap@@6 x@@9 xs@@25) (|fun05#condqp9| Heap1Heap@@6 x@@9 xs@@25))) f_7) (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap1Heap@@6) (|Seq#Index_30128| xs@@25 (|sk_fun05#condqp9| (|fun05#condqp9| Heap2Heap@@6 x@@9 xs@@25) (|fun05#condqp9| Heap1Heap@@6 x@@9 xs@@25))) f_7)))) (= (|fun05#condqp9| Heap2Heap@@6 x@@9 xs@@25) (|fun05#condqp9| Heap1Heap@@6 x@@9 xs@@25)))
 :qid |stdinbpl.1631:15|
 :skolemid |143|
 :pattern ( (|fun05#condqp9| Heap2Heap@@6 x@@9 xs@@25) (|fun05#condqp9| Heap1Heap@@6 x@@9 xs@@25) (succHeapTrans Heap2Heap@@6 Heap1Heap@@6))
)))
(assert (forall ((s0@@5 T@Seq_49042) (s1@@5 T@Seq_49042) ) (!  (=> (|Seq#Equal_49042| s0@@5 s1@@5) (and (= (|Seq#Length_30137| s0@@5) (|Seq#Length_30137| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_30137| s0@@5))) (= (|Seq#Index_30128| s0@@5 j@@6) (|Seq#Index_30128| s1@@5 j@@6)))
 :qid |stdinbpl.653:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_30128| s0@@5 j@@6))
 :pattern ( (|Seq#Index_30128| s1@@5 j@@6))
))))
 :qid |stdinbpl.650:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_49042| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3971) (s1@@6 T@Seq_3971) ) (!  (=> (|Seq#Equal_3971| s0@@6 s1@@6) (and (= (|Seq#Length_3971| s0@@6) (|Seq#Length_3971| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_3971| s0@@6))) (= (|Seq#Index_3971| s0@@6 j@@7) (|Seq#Index_3971| s1@@6 j@@7)))
 :qid |stdinbpl.653:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3971| s0@@6 j@@7))
 :pattern ( (|Seq#Index_3971| s1@@6 j@@7))
))))
 :qid |stdinbpl.650:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3971| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_30137| (|Seq#Singleton_30137| t@@5)) 1)
 :qid |stdinbpl.365:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_30137| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3971| (|Seq#Singleton_3971| t@@6)) 1)
 :qid |stdinbpl.365:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3971| t@@6))
)))
(assert (forall ((s@@21 T@Seq_49042) (t@@7 T@Seq_49042) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_30137| s@@21))) (= (|Seq#Take_30137| (|Seq#Append_49042| s@@21 t@@7) n@@17) (|Seq#Take_30137| s@@21 n@@17)))
 :qid |stdinbpl.507:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_30137| (|Seq#Append_49042| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3971) (t@@8 T@Seq_3971) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3971| s@@22))) (= (|Seq#Take_3971| (|Seq#Append_3971| s@@22 t@@8) n@@18) (|Seq#Take_3971| s@@22 n@@18)))
 :qid |stdinbpl.507:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3971| (|Seq#Append_3971| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_49042) (i@@8 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@8) (< i@@8 (|Seq#Length_30137| s@@23))) (= (|Seq#Length_30137| (|Seq#Update_30137| s@@23 i@@8 v@@2)) (|Seq#Length_30137| s@@23)))
 :qid |stdinbpl.406:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_30137| (|Seq#Update_30137| s@@23 i@@8 v@@2)))
 :pattern ( (|Seq#Length_30137| s@@23) (|Seq#Update_30137| s@@23 i@@8 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3971) (i@@9 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@9) (< i@@9 (|Seq#Length_3971| s@@24))) (= (|Seq#Length_3971| (|Seq#Update_3971| s@@24 i@@9 v@@3)) (|Seq#Length_3971| s@@24)))
 :qid |stdinbpl.406:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3971| (|Seq#Update_3971| s@@24 i@@9 v@@3)))
 :pattern ( (|Seq#Length_3971| s@@24) (|Seq#Update_3971| s@@24 i@@9 v@@3))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_42795) (o_29 T@Ref) (f_52 T@Field_30100_120671) (v@@4 T@FrameType) ) (! (succHeap Heap@@30 (PolymorphicMapType_42795 (|PolymorphicMapType_42795_29820_53#PolymorphicMapType_42795| Heap@@30) (|PolymorphicMapType_42795_29823_29824#PolymorphicMapType_42795| Heap@@30) (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap@@30) (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| Heap@@30) (store (|PolymorphicMapType_42795_42855_120671#PolymorphicMapType_42795| Heap@@30) o_29 f_52 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_42795 (|PolymorphicMapType_42795_29820_53#PolymorphicMapType_42795| Heap@@30) (|PolymorphicMapType_42795_29823_29824#PolymorphicMapType_42795| Heap@@30) (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap@@30) (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| Heap@@30) (store (|PolymorphicMapType_42795_42855_120671#PolymorphicMapType_42795| Heap@@30) o_29 f_52 v@@4)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_42795) (o_29@@0 T@Ref) (f_52@@0 T@Field_30100_120804) (v@@5 T@PolymorphicMapType_43344) ) (! (succHeap Heap@@31 (PolymorphicMapType_42795 (|PolymorphicMapType_42795_29820_53#PolymorphicMapType_42795| Heap@@31) (|PolymorphicMapType_42795_29823_29824#PolymorphicMapType_42795| Heap@@31) (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap@@31) (store (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| Heap@@31) o_29@@0 f_52@@0 v@@5) (|PolymorphicMapType_42795_42855_120671#PolymorphicMapType_42795| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_42795 (|PolymorphicMapType_42795_29820_53#PolymorphicMapType_42795| Heap@@31) (|PolymorphicMapType_42795_29823_29824#PolymorphicMapType_42795| Heap@@31) (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap@@31) (store (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| Heap@@31) o_29@@0 f_52@@0 v@@5) (|PolymorphicMapType_42795_42855_120671#PolymorphicMapType_42795| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_42795) (o_29@@1 T@Ref) (f_52@@1 T@Field_48965_4093) (v@@6 Int) ) (! (succHeap Heap@@32 (PolymorphicMapType_42795 (|PolymorphicMapType_42795_29820_53#PolymorphicMapType_42795| Heap@@32) (|PolymorphicMapType_42795_29823_29824#PolymorphicMapType_42795| Heap@@32) (store (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap@@32) o_29@@1 f_52@@1 v@@6) (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| Heap@@32) (|PolymorphicMapType_42795_42855_120671#PolymorphicMapType_42795| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_42795 (|PolymorphicMapType_42795_29820_53#PolymorphicMapType_42795| Heap@@32) (|PolymorphicMapType_42795_29823_29824#PolymorphicMapType_42795| Heap@@32) (store (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap@@32) o_29@@1 f_52@@1 v@@6) (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| Heap@@32) (|PolymorphicMapType_42795_42855_120671#PolymorphicMapType_42795| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_42795) (o_29@@2 T@Ref) (f_52@@2 T@Field_42868_42869) (v@@7 T@Ref) ) (! (succHeap Heap@@33 (PolymorphicMapType_42795 (|PolymorphicMapType_42795_29820_53#PolymorphicMapType_42795| Heap@@33) (store (|PolymorphicMapType_42795_29823_29824#PolymorphicMapType_42795| Heap@@33) o_29@@2 f_52@@2 v@@7) (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap@@33) (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| Heap@@33) (|PolymorphicMapType_42795_42855_120671#PolymorphicMapType_42795| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_42795 (|PolymorphicMapType_42795_29820_53#PolymorphicMapType_42795| Heap@@33) (store (|PolymorphicMapType_42795_29823_29824#PolymorphicMapType_42795| Heap@@33) o_29@@2 f_52@@2 v@@7) (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap@@33) (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| Heap@@33) (|PolymorphicMapType_42795_42855_120671#PolymorphicMapType_42795| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_42795) (o_29@@3 T@Ref) (f_52@@3 T@Field_42855_53) (v@@8 Bool) ) (! (succHeap Heap@@34 (PolymorphicMapType_42795 (store (|PolymorphicMapType_42795_29820_53#PolymorphicMapType_42795| Heap@@34) o_29@@3 f_52@@3 v@@8) (|PolymorphicMapType_42795_29823_29824#PolymorphicMapType_42795| Heap@@34) (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap@@34) (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| Heap@@34) (|PolymorphicMapType_42795_42855_120671#PolymorphicMapType_42795| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_42795 (store (|PolymorphicMapType_42795_29820_53#PolymorphicMapType_42795| Heap@@34) o_29@@3 f_52@@3 v@@8) (|PolymorphicMapType_42795_29823_29824#PolymorphicMapType_42795| Heap@@34) (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap@@34) (|PolymorphicMapType_42795_30100_120848#PolymorphicMapType_42795| Heap@@34) (|PolymorphicMapType_42795_42855_120671#PolymorphicMapType_42795| Heap@@34)))
)))
(assert (forall ((s@@25 T@Seq_49042) (t@@9 T@Seq_49042) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_30137| s@@25))) (= (|Seq#Drop_30137| (|Seq#Append_49042| s@@25 t@@9) n@@19) (|Seq#Append_49042| (|Seq#Drop_30137| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.521:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_30137| (|Seq#Append_49042| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3971) (t@@10 T@Seq_3971) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3971| s@@26))) (= (|Seq#Drop_3971| (|Seq#Append_3971| s@@26 t@@10) n@@20) (|Seq#Append_3971| (|Seq#Drop_3971| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.521:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3971| (|Seq#Append_3971| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_49042) (n@@21 Int) (i@@10 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@10)) (< i@@10 (|Seq#Length_30137| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@10 n@@21) n@@21) i@@10) (= (|Seq#Index_30128| (|Seq#Drop_30137| s@@27 n@@21) (|Seq#Sub| i@@10 n@@21)) (|Seq#Index_30128| s@@27 i@@10))))
 :qid |stdinbpl.457:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_30137| s@@27 n@@21) (|Seq#Index_30128| s@@27 i@@10))
)))
(assert (forall ((s@@28 T@Seq_3971) (n@@22 Int) (i@@11 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@11)) (< i@@11 (|Seq#Length_3971| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@11 n@@22) n@@22) i@@11) (= (|Seq#Index_3971| (|Seq#Drop_3971| s@@28 n@@22) (|Seq#Sub| i@@11 n@@22)) (|Seq#Index_3971| s@@28 i@@11))))
 :qid |stdinbpl.457:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3971| s@@28 n@@22) (|Seq#Index_3971| s@@28 i@@11))
)))
(assert (forall ((Heap2Heap@@7 T@PolymorphicMapType_42795) (Heap1Heap@@7 T@PolymorphicMapType_42795) (xs@@26 T@Seq_49042) ) (!  (=> (and (=  (and (and (<= 6 (|sk_fun02#condqp3| (|fun02#condqp3| Heap2Heap@@7 xs@@26) (|fun02#condqp3| Heap1Heap@@7 xs@@26))) (< (|sk_fun02#condqp3| (|fun02#condqp3| Heap2Heap@@7 xs@@26) (|fun02#condqp3| Heap1Heap@@7 xs@@26)) 9)) (< NoPerm FullPerm))  (and (and (<= 6 (|sk_fun02#condqp3| (|fun02#condqp3| Heap2Heap@@7 xs@@26) (|fun02#condqp3| Heap1Heap@@7 xs@@26))) (< (|sk_fun02#condqp3| (|fun02#condqp3| Heap2Heap@@7 xs@@26) (|fun02#condqp3| Heap1Heap@@7 xs@@26)) 9)) (< NoPerm FullPerm))) (=> (and (and (<= 6 (|sk_fun02#condqp3| (|fun02#condqp3| Heap2Heap@@7 xs@@26) (|fun02#condqp3| Heap1Heap@@7 xs@@26))) (< (|sk_fun02#condqp3| (|fun02#condqp3| Heap2Heap@@7 xs@@26) (|fun02#condqp3| Heap1Heap@@7 xs@@26)) 9)) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap2Heap@@7) (|Seq#Index_30128| xs@@26 (|sk_fun02#condqp3| (|fun02#condqp3| Heap2Heap@@7 xs@@26) (|fun02#condqp3| Heap1Heap@@7 xs@@26))) f_7) (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap1Heap@@7) (|Seq#Index_30128| xs@@26 (|sk_fun02#condqp3| (|fun02#condqp3| Heap2Heap@@7 xs@@26) (|fun02#condqp3| Heap1Heap@@7 xs@@26))) f_7)))) (= (|fun02#condqp3| Heap2Heap@@7 xs@@26) (|fun02#condqp3| Heap1Heap@@7 xs@@26)))
 :qid |stdinbpl.873:15|
 :skolemid |73|
 :pattern ( (|fun02#condqp3| Heap2Heap@@7 xs@@26) (|fun02#condqp3| Heap1Heap@@7 xs@@26) (succHeapTrans Heap2Heap@@7 Heap1Heap@@7))
)))
(assert (forall ((Heap2Heap@@8 T@PolymorphicMapType_42795) (Heap1Heap@@8 T@PolymorphicMapType_42795) (xs@@27 T@Seq_49042) ) (!  (=> (and (=  (and (and (<= 6 (|sk_fun03#condqp5| (|fun03#condqp5| Heap2Heap@@8 xs@@27) (|fun03#condqp5| Heap1Heap@@8 xs@@27))) (< (|sk_fun03#condqp5| (|fun03#condqp5| Heap2Heap@@8 xs@@27) (|fun03#condqp5| Heap1Heap@@8 xs@@27)) 9)) (< NoPerm FullPerm))  (and (and (<= 6 (|sk_fun03#condqp5| (|fun03#condqp5| Heap2Heap@@8 xs@@27) (|fun03#condqp5| Heap1Heap@@8 xs@@27))) (< (|sk_fun03#condqp5| (|fun03#condqp5| Heap2Heap@@8 xs@@27) (|fun03#condqp5| Heap1Heap@@8 xs@@27)) 9)) (< NoPerm FullPerm))) (=> (and (and (<= 6 (|sk_fun03#condqp5| (|fun03#condqp5| Heap2Heap@@8 xs@@27) (|fun03#condqp5| Heap1Heap@@8 xs@@27))) (< (|sk_fun03#condqp5| (|fun03#condqp5| Heap2Heap@@8 xs@@27) (|fun03#condqp5| Heap1Heap@@8 xs@@27)) 9)) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap2Heap@@8) (|Seq#Index_30128| xs@@27 (|sk_fun03#condqp5| (|fun03#condqp5| Heap2Heap@@8 xs@@27) (|fun03#condqp5| Heap1Heap@@8 xs@@27))) f_7) (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap1Heap@@8) (|Seq#Index_30128| xs@@27 (|sk_fun03#condqp5| (|fun03#condqp5| Heap2Heap@@8 xs@@27) (|fun03#condqp5| Heap1Heap@@8 xs@@27))) f_7)))) (= (|fun03#condqp5| Heap2Heap@@8 xs@@27) (|fun03#condqp5| Heap1Heap@@8 xs@@27)))
 :qid |stdinbpl.1089:15|
 :skolemid |95|
 :pattern ( (|fun03#condqp5| Heap2Heap@@8 xs@@27) (|fun03#condqp5| Heap1Heap@@8 xs@@27) (succHeapTrans Heap2Heap@@8 Heap1Heap@@8))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_42795) (Mask@@26 T@PolymorphicMapType_42816) (xs@@28 T@Seq_49042) ) (!  (=> (state Heap@@35 Mask@@26) (= (|fun01'| Heap@@35 xs@@28) (|fun01#frame| (FrameFragment_4258 (|fun01#condqp1| Heap@@35 xs@@28)) xs@@28)))
 :qid |stdinbpl.728:15|
 :skolemid |60|
 :pattern ( (state Heap@@35 Mask@@26) (|fun01'| Heap@@35 xs@@28))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_42795) (Mask@@27 T@PolymorphicMapType_42816) (xs@@29 T@Seq_49042) ) (!  (=> (state Heap@@36 Mask@@27) (= (|fun07'| Heap@@36 xs@@29) (|fun07#frame| (FrameFragment_4258 (|fun07#condqp6| Heap@@36 xs@@29)) xs@@29)))
 :qid |stdinbpl.1288:15|
 :skolemid |112|
 :pattern ( (state Heap@@36 Mask@@27) (|fun07'| Heap@@36 xs@@29))
)))
(assert (forall ((s0@@7 T@Seq_49042) (s1@@7 T@Seq_49042) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_30137|)) (not (= s1@@7 |Seq#Empty_30137|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_30137| s0@@7))) (= (|Seq#Index_30128| (|Seq#Append_49042| s0@@7 s1@@7) n@@23) (|Seq#Index_30128| s0@@7 n@@23)))
 :qid |stdinbpl.397:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_30128| (|Seq#Append_49042| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_30128| s0@@7 n@@23) (|Seq#Append_49042| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3971) (s1@@8 T@Seq_3971) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3971|)) (not (= s1@@8 |Seq#Empty_3971|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3971| s0@@8))) (= (|Seq#Index_3971| (|Seq#Append_3971| s0@@8 s1@@8) n@@24) (|Seq#Index_3971| s0@@8 n@@24)))
 :qid |stdinbpl.397:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3971| (|Seq#Append_3971| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3971| s0@@8 n@@24) (|Seq#Append_3971| s0@@8 s1@@8))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_42795) (Mask@@28 T@PolymorphicMapType_42816) (x@@10 T@Ref) (i@@12 Int) (xs@@30 T@Seq_49042) ) (!  (=> (state Heap@@37 Mask@@28) (= (|fun06'| Heap@@37 x@@10 i@@12 xs@@30) (|fun06#frame| (CombineFrames (FrameFragment_4258 (select (|PolymorphicMapType_42795_30100_4093#PolymorphicMapType_42795| Heap@@37) x@@10 f_7)) (FrameFragment_4258 (|fun06#condqp10| Heap@@37 x@@10 i@@12 xs@@30))) x@@10 i@@12 xs@@30)))
 :qid |stdinbpl.1753:15|
 :skolemid |153|
 :pattern ( (state Heap@@37 Mask@@28) (|fun06'| Heap@@37 x@@10 i@@12 xs@@30))
)))
(assert (forall ((s0@@9 T@Seq_49042) (s1@@9 T@Seq_49042) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_30137|)) (not (= s1@@9 |Seq#Empty_30137|))) (<= 0 m)) (< m (|Seq#Length_30137| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_30137| s0@@9)) (|Seq#Length_30137| s0@@9)) m) (= (|Seq#Index_30128| (|Seq#Append_49042| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_30137| s0@@9))) (|Seq#Index_30128| s1@@9 m))))
 :qid |stdinbpl.402:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_30128| s1@@9 m) (|Seq#Append_49042| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3971) (s1@@10 T@Seq_3971) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3971|)) (not (= s1@@10 |Seq#Empty_3971|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3971| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3971| s0@@10)) (|Seq#Length_3971| s0@@10)) m@@0) (= (|Seq#Index_3971| (|Seq#Append_3971| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3971| s0@@10))) (|Seq#Index_3971| s1@@10 m@@0))))
 :qid |stdinbpl.402:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3971| s1@@10 m@@0) (|Seq#Append_3971| s0@@10 s1@@10))
)))
(assert (forall ((o_29@@4 T@Ref) (f_33 T@Field_42868_42869) (Heap@@38 T@PolymorphicMapType_42795) ) (!  (=> (select (|PolymorphicMapType_42795_29820_53#PolymorphicMapType_42795| Heap@@38) o_29@@4 $allocated) (select (|PolymorphicMapType_42795_29820_53#PolymorphicMapType_42795| Heap@@38) (select (|PolymorphicMapType_42795_29823_29824#PolymorphicMapType_42795| Heap@@38) o_29@@4 f_33) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_42795_29823_29824#PolymorphicMapType_42795| Heap@@38) o_29@@4 f_33))
)))
(assert (forall ((s@@29 T@Seq_49042) (x@@11 T@Ref) (i@@13 Int) ) (!  (=> (and (and (<= 0 i@@13) (< i@@13 (|Seq#Length_30137| s@@29))) (= (|Seq#Index_30128| s@@29 i@@13) x@@11)) (|Seq#Contains_49042| s@@29 x@@11))
 :qid |stdinbpl.554:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_49042| s@@29 x@@11) (|Seq#Index_30128| s@@29 i@@13))
)))
(assert (forall ((s@@30 T@Seq_3971) (x@@12 Int) (i@@14 Int) ) (!  (=> (and (and (<= 0 i@@14) (< i@@14 (|Seq#Length_3971| s@@30))) (= (|Seq#Index_3971| s@@30 i@@14) x@@12)) (|Seq#Contains_3971| s@@30 x@@12))
 :qid |stdinbpl.554:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3971| s@@30 x@@12) (|Seq#Index_3971| s@@30 i@@14))
)))
(assert (forall ((s0@@11 T@Seq_49042) (s1@@11 T@Seq_49042) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_49042| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_49042| s0@@11 s1@@11))) (not (= (|Seq#Length_30137| s0@@11) (|Seq#Length_30137| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_49042| s0@@11 s1@@11))) (= (|Seq#Length_30137| s0@@11) (|Seq#Length_30137| s1@@11))) (= (|Seq#SkolemDiff_49042| s0@@11 s1@@11) (|Seq#SkolemDiff_49042| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_49042| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_49042| s0@@11 s1@@11) (|Seq#Length_30137| s0@@11))) (not (= (|Seq#Index_30128| s0@@11 (|Seq#SkolemDiff_49042| s0@@11 s1@@11)) (|Seq#Index_30128| s1@@11 (|Seq#SkolemDiff_49042| s0@@11 s1@@11))))))
 :qid |stdinbpl.658:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_49042| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3971) (s1@@12 T@Seq_3971) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3971| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3971| s0@@12 s1@@12))) (not (= (|Seq#Length_3971| s0@@12) (|Seq#Length_3971| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3971| s0@@12 s1@@12))) (= (|Seq#Length_3971| s0@@12) (|Seq#Length_3971| s1@@12))) (= (|Seq#SkolemDiff_3971| s0@@12 s1@@12) (|Seq#SkolemDiff_3971| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3971| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3971| s0@@12 s1@@12) (|Seq#Length_3971| s0@@12))) (not (= (|Seq#Index_3971| s0@@12 (|Seq#SkolemDiff_3971| s0@@12 s1@@12)) (|Seq#Index_3971| s1@@12 (|Seq#SkolemDiff_3971| s0@@12 s1@@12))))))
 :qid |stdinbpl.658:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3971| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_30100_120671) (v_1@@0 T@FrameType) (q T@Field_30100_120671) (w@@0 T@FrameType) (r T@Field_30100_120671) (u T@FrameType) ) (!  (=> (and (InsidePredicate_42855_42855 p@@1 v_1@@0 q w@@0) (InsidePredicate_42855_42855 q w@@0 r u)) (InsidePredicate_42855_42855 p@@1 v_1@@0 r u))
 :qid |stdinbpl.325:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_42855_42855 p@@1 v_1@@0 q w@@0) (InsidePredicate_42855_42855 q w@@0 r u))
)))
(assert (forall ((s@@31 T@Seq_49042) ) (!  (=> (= (|Seq#Length_30137| s@@31) 0) (= s@@31 |Seq#Empty_30137|))
 :qid |stdinbpl.361:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_30137| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3971) ) (!  (=> (= (|Seq#Length_3971| s@@32) 0) (= s@@32 |Seq#Empty_3971|))
 :qid |stdinbpl.361:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3971| s@@32))
)))
(assert (forall ((s@@33 T@Seq_49042) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_30137| s@@33 n@@25) |Seq#Empty_30137|))
 :qid |stdinbpl.537:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_30137| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3971) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3971| s@@34 n@@26) |Seq#Empty_3971|))
 :qid |stdinbpl.537:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3971| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Invalid

