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
(declare-sort T@Field_9789_53 0)
(declare-sort T@Field_9802_9803 0)
(declare-sort T@Field_15831_3157 0)
(declare-sort T@Field_6450_16351 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_6450_16368 0)
(declare-sort T@Field_16350_3157 0)
(declare-sort T@Field_16350_53 0)
(declare-sort T@Field_16350_9803 0)
(declare-sort T@Field_16350_16351 0)
(declare-sort T@Field_16363_16368 0)
(declare-datatypes ((T@PolymorphicMapType_9750 0)) (((PolymorphicMapType_9750 (|PolymorphicMapType_9750_6450_3157#PolymorphicMapType_9750| (Array T@Ref T@Field_15831_3157 Real)) (|PolymorphicMapType_9750_6477_6478#PolymorphicMapType_9750| (Array T@Ref T@Field_16350_16351 Real)) (|PolymorphicMapType_9750_6450_6478#PolymorphicMapType_9750| (Array T@Ref T@Field_6450_16351 Real)) (|PolymorphicMapType_9750_6450_53#PolymorphicMapType_9750| (Array T@Ref T@Field_9789_53 Real)) (|PolymorphicMapType_9750_6450_9803#PolymorphicMapType_9750| (Array T@Ref T@Field_9802_9803 Real)) (|PolymorphicMapType_9750_6450_36537#PolymorphicMapType_9750| (Array T@Ref T@Field_6450_16368 Real)) (|PolymorphicMapType_9750_6477_3157#PolymorphicMapType_9750| (Array T@Ref T@Field_16350_3157 Real)) (|PolymorphicMapType_9750_6477_53#PolymorphicMapType_9750| (Array T@Ref T@Field_16350_53 Real)) (|PolymorphicMapType_9750_6477_9803#PolymorphicMapType_9750| (Array T@Ref T@Field_16350_9803 Real)) (|PolymorphicMapType_9750_6477_36948#PolymorphicMapType_9750| (Array T@Ref T@Field_16363_16368 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10278 0)) (((PolymorphicMapType_10278 (|PolymorphicMapType_10278_9789_53#PolymorphicMapType_10278| (Array T@Ref T@Field_9789_53 Bool)) (|PolymorphicMapType_10278_9789_9803#PolymorphicMapType_10278| (Array T@Ref T@Field_9802_9803 Bool)) (|PolymorphicMapType_10278_9789_3157#PolymorphicMapType_10278| (Array T@Ref T@Field_15831_3157 Bool)) (|PolymorphicMapType_10278_9789_16351#PolymorphicMapType_10278| (Array T@Ref T@Field_6450_16351 Bool)) (|PolymorphicMapType_10278_9789_30095#PolymorphicMapType_10278| (Array T@Ref T@Field_6450_16368 Bool)) (|PolymorphicMapType_10278_16350_53#PolymorphicMapType_10278| (Array T@Ref T@Field_16350_53 Bool)) (|PolymorphicMapType_10278_16350_9803#PolymorphicMapType_10278| (Array T@Ref T@Field_16350_9803 Bool)) (|PolymorphicMapType_10278_16350_3157#PolymorphicMapType_10278| (Array T@Ref T@Field_16350_3157 Bool)) (|PolymorphicMapType_10278_16350_16351#PolymorphicMapType_10278| (Array T@Ref T@Field_16350_16351 Bool)) (|PolymorphicMapType_10278_16350_31143#PolymorphicMapType_10278| (Array T@Ref T@Field_16363_16368 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9729 0)) (((PolymorphicMapType_9729 (|PolymorphicMapType_9729_6238_53#PolymorphicMapType_9729| (Array T@Ref T@Field_9789_53 Bool)) (|PolymorphicMapType_9729_6241_6242#PolymorphicMapType_9729| (Array T@Ref T@Field_9802_9803 T@Ref)) (|PolymorphicMapType_9729_6450_3157#PolymorphicMapType_9729| (Array T@Ref T@Field_15831_3157 Int)) (|PolymorphicMapType_9729_6450_16351#PolymorphicMapType_9729| (Array T@Ref T@Field_6450_16351 T@FrameType)) (|PolymorphicMapType_9729_6450_27187#PolymorphicMapType_9729| (Array T@Ref T@Field_6450_16368 T@PolymorphicMapType_10278)) (|PolymorphicMapType_9729_16350_3157#PolymorphicMapType_9729| (Array T@Ref T@Field_16350_3157 Int)) (|PolymorphicMapType_9729_16350_53#PolymorphicMapType_9729| (Array T@Ref T@Field_16350_53 Bool)) (|PolymorphicMapType_9729_16350_9803#PolymorphicMapType_9729| (Array T@Ref T@Field_16350_9803 T@Ref)) (|PolymorphicMapType_9729_16350_16351#PolymorphicMapType_9729| (Array T@Ref T@Field_16350_16351 T@FrameType)) (|PolymorphicMapType_9729_16350_28365#PolymorphicMapType_9729| (Array T@Ref T@Field_16363_16368 T@PolymorphicMapType_10278)) ) ) ))
(declare-fun $allocated () T@Field_9789_53)
(declare-fun f_7 () T@Field_15831_3157)
(declare-sort T@Seq_17442 0)
(declare-fun |Seq#Length_17442| (T@Seq_17442) Int)
(declare-fun |Seq#Drop_17442| (T@Seq_17442 Int) T@Seq_17442)
(declare-sort T@Seq_3035 0)
(declare-fun |Seq#Length_3035| (T@Seq_3035) Int)
(declare-fun |Seq#Drop_3035| (T@Seq_3035 Int) T@Seq_3035)
(declare-fun succHeap (T@PolymorphicMapType_9729 T@PolymorphicMapType_9729) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_9729 T@PolymorphicMapType_9729) Bool)
(declare-fun state (T@PolymorphicMapType_9729 T@PolymorphicMapType_9750) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_9750) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_10278)
(declare-fun p_14 (T@Ref Int) T@Field_16350_16351)
(declare-fun IsPredicateField_6477_6478 (T@Field_16350_16351) Bool)
(declare-fun |p#trigger_6477| (T@PolymorphicMapType_9729 T@Field_16350_16351) Bool)
(declare-fun |p#everUsed_6477| (T@Field_16350_16351) Bool)
(declare-fun |Seq#Index_17442| (T@Seq_17442 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3035| (T@Seq_3035 Int) Int)
(declare-fun |Seq#Empty_17442| () T@Seq_17442)
(declare-fun |Seq#Empty_3035| () T@Seq_3035)
(declare-fun |e'| (T@PolymorphicMapType_9729 T@Ref) T@Ref)
(declare-fun dummyFunction_6471 (T@Ref) Bool)
(declare-fun |e#triggerStateless| (T@Ref) T@Ref)
(declare-fun |Seq#Update_17442| (T@Seq_17442 Int T@Ref) T@Seq_17442)
(declare-fun |Seq#Update_3035| (T@Seq_3035 Int Int) T@Seq_3035)
(declare-fun |Seq#Take_17442| (T@Seq_17442 Int) T@Seq_17442)
(declare-fun |Seq#Take_3035| (T@Seq_3035 Int) T@Seq_3035)
(declare-fun |Seq#Contains_3035| (T@Seq_3035 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3035)
(declare-fun |Seq#Contains_6503| (T@Seq_17442 T@Ref) Bool)
(declare-fun |Seq#Skolem_6503| (T@Seq_17442 T@Ref) Int)
(declare-fun |Seq#Skolem_3035| (T@Seq_3035 Int) Int)
(declare-fun e_5 (T@PolymorphicMapType_9729 T@Ref) T@Ref)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_9729 T@PolymorphicMapType_9729 T@PolymorphicMapType_9750) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_6477 (T@Field_16350_16351) T@Field_16363_16368)
(declare-fun HasDirectPerm_16350_16351 (T@PolymorphicMapType_9750 T@Ref T@Field_16350_16351) Bool)
(declare-fun IsPredicateField_6450_28611 (T@Field_6450_16351) Bool)
(declare-fun PredicateMaskField_6450 (T@Field_6450_16351) T@Field_6450_16368)
(declare-fun HasDirectPerm_6450_16351 (T@PolymorphicMapType_9750 T@Ref T@Field_6450_16351) Bool)
(declare-fun IsWandField_16350_32308 (T@Field_16350_16351) Bool)
(declare-fun WandMaskField_16350 (T@Field_16350_16351) T@Field_16363_16368)
(declare-fun IsWandField_6450_31951 (T@Field_6450_16351) Bool)
(declare-fun WandMaskField_6450 (T@Field_6450_16351) T@Field_6450_16368)
(declare-fun |Seq#Singleton_17442| (T@Ref) T@Seq_17442)
(declare-fun |Seq#Singleton_3035| (Int) T@Seq_3035)
(declare-fun |p#sm| (T@Ref Int) T@Field_16363_16368)
(declare-fun |Seq#Append_17442| (T@Seq_17442 T@Seq_17442) T@Seq_17442)
(declare-fun |Seq#Append_3035| (T@Seq_3035 T@Seq_3035) T@Seq_3035)
(declare-fun dummyHeap () T@PolymorphicMapType_9729)
(declare-fun ZeroMask () T@PolymorphicMapType_9750)
(declare-fun InsidePredicate_16350_16350 (T@Field_16350_16351 T@FrameType T@Field_16350_16351 T@FrameType) Bool)
(declare-fun InsidePredicate_9789_9789 (T@Field_6450_16351 T@FrameType T@Field_6450_16351 T@FrameType) Bool)
(declare-fun IsPredicateField_6450_3157 (T@Field_15831_3157) Bool)
(declare-fun IsWandField_6450_3157 (T@Field_15831_3157) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6477_39240 (T@Field_16363_16368) Bool)
(declare-fun IsWandField_6477_39256 (T@Field_16363_16368) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_6477_9803 (T@Field_16350_9803) Bool)
(declare-fun IsWandField_6477_9803 (T@Field_16350_9803) Bool)
(declare-fun IsPredicateField_6477_53 (T@Field_16350_53) Bool)
(declare-fun IsWandField_6477_53 (T@Field_16350_53) Bool)
(declare-fun IsPredicateField_6477_3157 (T@Field_16350_3157) Bool)
(declare-fun IsWandField_6477_3157 (T@Field_16350_3157) Bool)
(declare-fun IsPredicateField_6450_38409 (T@Field_6450_16368) Bool)
(declare-fun IsWandField_6450_38425 (T@Field_6450_16368) Bool)
(declare-fun IsPredicateField_6450_9803 (T@Field_9802_9803) Bool)
(declare-fun IsWandField_6450_9803 (T@Field_9802_9803) Bool)
(declare-fun IsPredicateField_6450_53 (T@Field_9789_53) Bool)
(declare-fun IsWandField_6450_53 (T@Field_9789_53) Bool)
(declare-fun HasDirectPerm_16350_28323 (T@PolymorphicMapType_9750 T@Ref T@Field_16363_16368) Bool)
(declare-fun HasDirectPerm_16350_9803 (T@PolymorphicMapType_9750 T@Ref T@Field_16350_9803) Bool)
(declare-fun HasDirectPerm_16350_53 (T@PolymorphicMapType_9750 T@Ref T@Field_16350_53) Bool)
(declare-fun HasDirectPerm_16350_3157 (T@PolymorphicMapType_9750 T@Ref T@Field_16350_3157) Bool)
(declare-fun HasDirectPerm_6450_27145 (T@PolymorphicMapType_9750 T@Ref T@Field_6450_16368) Bool)
(declare-fun HasDirectPerm_6450_9803 (T@PolymorphicMapType_9750 T@Ref T@Field_9802_9803) Bool)
(declare-fun HasDirectPerm_6450_53 (T@PolymorphicMapType_9750 T@Ref T@Field_9789_53) Bool)
(declare-fun HasDirectPerm_6450_3157 (T@PolymorphicMapType_9750 T@Ref T@Field_15831_3157) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_9750 T@PolymorphicMapType_9750 T@PolymorphicMapType_9750) Bool)
(declare-fun |Seq#Equal_17442| (T@Seq_17442 T@Seq_17442) Bool)
(declare-fun |Seq#Equal_3035| (T@Seq_3035 T@Seq_3035) Bool)
(declare-fun |Seq#ContainsTrigger_6503| (T@Seq_17442 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3035| (T@Seq_3035 Int) Bool)
(declare-fun getPredWandId_6477_6478 (T@Field_16350_16351) Int)
(declare-fun |e#frame| (T@FrameType T@Ref) T@Ref)
(declare-fun |Seq#SkolemDiff_17442| (T@Seq_17442 T@Seq_17442) Int)
(declare-fun |Seq#SkolemDiff_3035| (T@Seq_3035 T@Seq_3035) Int)
(declare-fun InsidePredicate_16350_9789 (T@Field_16350_16351 T@FrameType T@Field_6450_16351 T@FrameType) Bool)
(declare-fun InsidePredicate_9789_16350 (T@Field_6450_16351 T@FrameType T@Field_16350_16351 T@FrameType) Bool)
(assert (forall ((s T@Seq_17442) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_17442| s)) (= (|Seq#Length_17442| (|Seq#Drop_17442| s n)) (- (|Seq#Length_17442| s) n))) (=> (< (|Seq#Length_17442| s) n) (= (|Seq#Length_17442| (|Seq#Drop_17442| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_17442| (|Seq#Drop_17442| s n)) (|Seq#Length_17442| s))))
 :qid |stdinbpl.306:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_17442| (|Seq#Drop_17442| s n)))
 :pattern ( (|Seq#Length_17442| s) (|Seq#Drop_17442| s n))
)))
(assert (forall ((s@@0 T@Seq_3035) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3035| s@@0)) (= (|Seq#Length_3035| (|Seq#Drop_3035| s@@0 n@@0)) (- (|Seq#Length_3035| s@@0) n@@0))) (=> (< (|Seq#Length_3035| s@@0) n@@0) (= (|Seq#Length_3035| (|Seq#Drop_3035| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3035| (|Seq#Drop_3035| s@@0 n@@0)) (|Seq#Length_3035| s@@0))))
 :qid |stdinbpl.306:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3035| (|Seq#Drop_3035| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3035| s@@0) (|Seq#Drop_3035| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_9729) (Heap1 T@PolymorphicMapType_9729) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_9729) (Mask T@PolymorphicMapType_9750) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_9729) (Heap1@@0 T@PolymorphicMapType_9729) (Heap2 T@PolymorphicMapType_9729) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_16363_16368) ) (!  (not (select (|PolymorphicMapType_10278_16350_31143#PolymorphicMapType_10278| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10278_16350_31143#PolymorphicMapType_10278| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_16350_16351) ) (!  (not (select (|PolymorphicMapType_10278_16350_16351#PolymorphicMapType_10278| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10278_16350_16351#PolymorphicMapType_10278| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_16350_3157) ) (!  (not (select (|PolymorphicMapType_10278_16350_3157#PolymorphicMapType_10278| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10278_16350_3157#PolymorphicMapType_10278| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_16350_9803) ) (!  (not (select (|PolymorphicMapType_10278_16350_9803#PolymorphicMapType_10278| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10278_16350_9803#PolymorphicMapType_10278| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_16350_53) ) (!  (not (select (|PolymorphicMapType_10278_16350_53#PolymorphicMapType_10278| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10278_16350_53#PolymorphicMapType_10278| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_6450_16368) ) (!  (not (select (|PolymorphicMapType_10278_9789_30095#PolymorphicMapType_10278| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10278_9789_30095#PolymorphicMapType_10278| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_6450_16351) ) (!  (not (select (|PolymorphicMapType_10278_9789_16351#PolymorphicMapType_10278| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10278_9789_16351#PolymorphicMapType_10278| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_15831_3157) ) (!  (not (select (|PolymorphicMapType_10278_9789_3157#PolymorphicMapType_10278| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10278_9789_3157#PolymorphicMapType_10278| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_9802_9803) ) (!  (not (select (|PolymorphicMapType_10278_9789_9803#PolymorphicMapType_10278| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10278_9789_9803#PolymorphicMapType_10278| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_9789_53) ) (!  (not (select (|PolymorphicMapType_10278_9789_53#PolymorphicMapType_10278| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10278_9789_53#PolymorphicMapType_10278| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((r_1 T@Ref) (i Int) ) (! (IsPredicateField_6477_6478 (p_14 r_1 i))
 :qid |stdinbpl.634:15|
 :skolemid |62|
 :pattern ( (p_14 r_1 i))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_9729) (r_1@@0 T@Ref) (i@@0 Int) ) (! (|p#everUsed_6477| (p_14 r_1@@0 i@@0))
 :qid |stdinbpl.653:15|
 :skolemid |66|
 :pattern ( (|p#trigger_6477| Heap@@0 (p_14 r_1@@0 i@@0)))
)))
(assert (forall ((s@@1 T@Seq_17442) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_17442| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_17442| (|Seq#Drop_17442| s@@1 n@@1) j) (|Seq#Index_17442| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.327:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_17442| (|Seq#Drop_17442| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3035) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3035| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3035| (|Seq#Drop_3035| s@@2 n@@2) j@@0) (|Seq#Index_3035| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.327:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3035| (|Seq#Drop_3035| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_17442| |Seq#Empty_17442|) 0))
(assert (= (|Seq#Length_3035| |Seq#Empty_3035|) 0))
(assert (forall ((Heap@@1 T@PolymorphicMapType_9729) (x T@Ref) ) (! (dummyFunction_6471 (|e#triggerStateless| x))
 :qid |stdinbpl.592:15|
 :skolemid |59|
 :pattern ( (|e'| Heap@@1 x))
)))
(assert (forall ((s@@3 T@Seq_17442) (i@@1 Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_17442| s@@3))) (and (=> (= i@@1 n@@3) (= (|Seq#Index_17442| (|Seq#Update_17442| s@@3 i@@1 v) n@@3) v)) (=> (not (= i@@1 n@@3)) (= (|Seq#Index_17442| (|Seq#Update_17442| s@@3 i@@1 v) n@@3) (|Seq#Index_17442| s@@3 n@@3)))))
 :qid |stdinbpl.282:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_17442| (|Seq#Update_17442| s@@3 i@@1 v) n@@3))
 :pattern ( (|Seq#Index_17442| s@@3 n@@3) (|Seq#Update_17442| s@@3 i@@1 v))
)))
(assert (forall ((s@@4 T@Seq_3035) (i@@2 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3035| s@@4))) (and (=> (= i@@2 n@@4) (= (|Seq#Index_3035| (|Seq#Update_3035| s@@4 i@@2 v@@0) n@@4) v@@0)) (=> (not (= i@@2 n@@4)) (= (|Seq#Index_3035| (|Seq#Update_3035| s@@4 i@@2 v@@0) n@@4) (|Seq#Index_3035| s@@4 n@@4)))))
 :qid |stdinbpl.282:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3035| (|Seq#Update_3035| s@@4 i@@2 v@@0) n@@4))
 :pattern ( (|Seq#Index_3035| s@@4 n@@4) (|Seq#Update_3035| s@@4 i@@2 v@@0))
)))
(assert (forall ((s@@5 T@Seq_17442) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_17442| s@@5)) (= (|Seq#Length_17442| (|Seq#Take_17442| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_17442| s@@5) n@@5) (= (|Seq#Length_17442| (|Seq#Take_17442| s@@5 n@@5)) (|Seq#Length_17442| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_17442| (|Seq#Take_17442| s@@5 n@@5)) 0)))
 :qid |stdinbpl.293:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_17442| (|Seq#Take_17442| s@@5 n@@5)))
 :pattern ( (|Seq#Take_17442| s@@5 n@@5) (|Seq#Length_17442| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3035) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3035| s@@6)) (= (|Seq#Length_3035| (|Seq#Take_3035| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3035| s@@6) n@@6) (= (|Seq#Length_3035| (|Seq#Take_3035| s@@6 n@@6)) (|Seq#Length_3035| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3035| (|Seq#Take_3035| s@@6 n@@6)) 0)))
 :qid |stdinbpl.293:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3035| (|Seq#Take_3035| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3035| s@@6 n@@6) (|Seq#Length_3035| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3035| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.567:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3035| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_17442) (x@@0 T@Ref) ) (!  (=> (|Seq#Contains_6503| s@@7 x@@0) (and (and (<= 0 (|Seq#Skolem_6503| s@@7 x@@0)) (< (|Seq#Skolem_6503| s@@7 x@@0) (|Seq#Length_17442| s@@7))) (= (|Seq#Index_17442| s@@7 (|Seq#Skolem_6503| s@@7 x@@0)) x@@0)))
 :qid |stdinbpl.425:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_6503| s@@7 x@@0))
)))
(assert (forall ((s@@8 T@Seq_3035) (x@@1 Int) ) (!  (=> (|Seq#Contains_3035| s@@8 x@@1) (and (and (<= 0 (|Seq#Skolem_3035| s@@8 x@@1)) (< (|Seq#Skolem_3035| s@@8 x@@1) (|Seq#Length_3035| s@@8))) (= (|Seq#Index_3035| s@@8 (|Seq#Skolem_3035| s@@8 x@@1)) x@@1)))
 :qid |stdinbpl.425:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3035| s@@8 x@@1))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_9729) (x@@2 T@Ref) ) (!  (and (= (e_5 Heap@@2 x@@2) (|e'| Heap@@2 x@@2)) (dummyFunction_6471 (|e#triggerStateless| x@@2)))
 :qid |stdinbpl.588:15|
 :skolemid |58|
 :pattern ( (e_5 Heap@@2 x@@2))
)))
(assert (forall ((s@@9 T@Seq_17442) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_17442| s@@9 n@@7) s@@9))
 :qid |stdinbpl.409:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_17442| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3035) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3035| s@@10 n@@8) s@@10))
 :qid |stdinbpl.409:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3035| s@@10 n@@8))
)))
(assert (forall ((i@@3 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@3 j@@1) (- i@@3 j@@1))
 :qid |stdinbpl.262:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@3 j@@1))
)))
(assert (forall ((i@@4 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@4 j@@2) (+ i@@4 j@@2))
 :qid |stdinbpl.260:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@4 j@@2))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_9729) (ExhaleHeap T@PolymorphicMapType_9729) (Mask@@0 T@PolymorphicMapType_9750) (pm_f_1 T@Field_16350_16351) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_16350_16351 Mask@@0 null pm_f_1) (IsPredicateField_6477_6478 pm_f_1)) (= (select (|PolymorphicMapType_9729_16350_28365#PolymorphicMapType_9729| Heap@@3) null (PredicateMaskField_6477 pm_f_1)) (select (|PolymorphicMapType_9729_16350_28365#PolymorphicMapType_9729| ExhaleHeap) null (PredicateMaskField_6477 pm_f_1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (IsPredicateField_6477_6478 pm_f_1) (select (|PolymorphicMapType_9729_16350_28365#PolymorphicMapType_9729| ExhaleHeap) null (PredicateMaskField_6477 pm_f_1)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_9729) (ExhaleHeap@@0 T@PolymorphicMapType_9729) (Mask@@1 T@PolymorphicMapType_9750) (pm_f_1@@0 T@Field_6450_16351) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_6450_16351 Mask@@1 null pm_f_1@@0) (IsPredicateField_6450_28611 pm_f_1@@0)) (= (select (|PolymorphicMapType_9729_6450_27187#PolymorphicMapType_9729| Heap@@4) null (PredicateMaskField_6450 pm_f_1@@0)) (select (|PolymorphicMapType_9729_6450_27187#PolymorphicMapType_9729| ExhaleHeap@@0) null (PredicateMaskField_6450 pm_f_1@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (IsPredicateField_6450_28611 pm_f_1@@0) (select (|PolymorphicMapType_9729_6450_27187#PolymorphicMapType_9729| ExhaleHeap@@0) null (PredicateMaskField_6450 pm_f_1@@0)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_9729) (ExhaleHeap@@1 T@PolymorphicMapType_9729) (Mask@@2 T@PolymorphicMapType_9750) (pm_f_1@@1 T@Field_16350_16351) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_16350_16351 Mask@@2 null pm_f_1@@1) (IsWandField_16350_32308 pm_f_1@@1)) (= (select (|PolymorphicMapType_9729_16350_28365#PolymorphicMapType_9729| Heap@@5) null (WandMaskField_16350 pm_f_1@@1)) (select (|PolymorphicMapType_9729_16350_28365#PolymorphicMapType_9729| ExhaleHeap@@1) null (WandMaskField_16350 pm_f_1@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@2) (IsWandField_16350_32308 pm_f_1@@1) (select (|PolymorphicMapType_9729_16350_28365#PolymorphicMapType_9729| ExhaleHeap@@1) null (WandMaskField_16350 pm_f_1@@1)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_9729) (ExhaleHeap@@2 T@PolymorphicMapType_9729) (Mask@@3 T@PolymorphicMapType_9750) (pm_f_1@@2 T@Field_6450_16351) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_6450_16351 Mask@@3 null pm_f_1@@2) (IsWandField_6450_31951 pm_f_1@@2)) (= (select (|PolymorphicMapType_9729_6450_27187#PolymorphicMapType_9729| Heap@@6) null (WandMaskField_6450 pm_f_1@@2)) (select (|PolymorphicMapType_9729_6450_27187#PolymorphicMapType_9729| ExhaleHeap@@2) null (WandMaskField_6450 pm_f_1@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@3) (IsWandField_6450_31951 pm_f_1@@2) (select (|PolymorphicMapType_9729_6450_27187#PolymorphicMapType_9729| ExhaleHeap@@2) null (WandMaskField_6450 pm_f_1@@2)))
)))
(assert (forall ((x@@3 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_6503| (|Seq#Singleton_17442| x@@3) y) (= x@@3 y))
 :qid |stdinbpl.550:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_6503| (|Seq#Singleton_17442| x@@3) y))
)))
(assert (forall ((x@@4 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3035| (|Seq#Singleton_3035| x@@4) y@@0) (= x@@4 y@@0))
 :qid |stdinbpl.550:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3035| (|Seq#Singleton_3035| x@@4) y@@0))
)))
(assert (forall ((r_1@@1 T@Ref) (i@@5 Int) (r2 T@Ref) (i2_1 Int) ) (!  (=> (= (p_14 r_1@@1 i@@5) (p_14 r2 i2_1)) (and (= r_1@@1 r2) (= i@@5 i2_1)))
 :qid |stdinbpl.644:15|
 :skolemid |64|
 :pattern ( (p_14 r_1@@1 i@@5) (p_14 r2 i2_1))
)))
(assert (forall ((r_1@@2 T@Ref) (i@@6 Int) (r2@@0 T@Ref) (i2_1@@0 Int) ) (!  (=> (= (|p#sm| r_1@@2 i@@6) (|p#sm| r2@@0 i2_1@@0)) (and (= r_1@@2 r2@@0) (= i@@6 i2_1@@0)))
 :qid |stdinbpl.648:15|
 :skolemid |65|
 :pattern ( (|p#sm| r_1@@2 i@@6) (|p#sm| r2@@0 i2_1@@0))
)))
(assert (forall ((s@@11 T@Seq_17442) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_17442| s@@11))) (= (|Seq#Index_17442| (|Seq#Take_17442| s@@11 n@@9) j@@3) (|Seq#Index_17442| s@@11 j@@3)))
 :qid |stdinbpl.301:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_17442| (|Seq#Take_17442| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_17442| s@@11 j@@3) (|Seq#Take_17442| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3035) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3035| s@@12))) (= (|Seq#Index_3035| (|Seq#Take_3035| s@@12 n@@10) j@@4) (|Seq#Index_3035| s@@12 j@@4)))
 :qid |stdinbpl.301:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3035| (|Seq#Take_3035| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3035| s@@12 j@@4) (|Seq#Take_3035| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_17442) (t T@Seq_17442) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_17442| s@@13))) (< n@@11 (|Seq#Length_17442| (|Seq#Append_17442| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_17442| s@@13)) (|Seq#Length_17442| s@@13)) n@@11) (= (|Seq#Take_17442| (|Seq#Append_17442| s@@13 t) n@@11) (|Seq#Append_17442| s@@13 (|Seq#Take_17442| t (|Seq#Sub| n@@11 (|Seq#Length_17442| s@@13)))))))
 :qid |stdinbpl.386:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_17442| (|Seq#Append_17442| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3035) (t@@0 T@Seq_3035) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3035| s@@14))) (< n@@12 (|Seq#Length_3035| (|Seq#Append_3035| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3035| s@@14)) (|Seq#Length_3035| s@@14)) n@@12) (= (|Seq#Take_3035| (|Seq#Append_3035| s@@14 t@@0) n@@12) (|Seq#Append_3035| s@@14 (|Seq#Take_3035| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3035| s@@14)))))))
 :qid |stdinbpl.386:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3035| (|Seq#Append_3035| s@@14 t@@0) n@@12))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_9729) (ExhaleHeap@@3 T@PolymorphicMapType_9729) (Mask@@4 T@PolymorphicMapType_9750) (pm_f_1@@3 T@Field_16350_16351) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_16350_16351 Mask@@4 null pm_f_1@@3) (IsPredicateField_6477_6478 pm_f_1@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_1 T@Ref) (f_8 T@Field_9789_53) ) (!  (=> (select (|PolymorphicMapType_10278_9789_53#PolymorphicMapType_10278| (select (|PolymorphicMapType_9729_16350_28365#PolymorphicMapType_9729| Heap@@7) null (PredicateMaskField_6477 pm_f_1@@3))) o2_1 f_8) (= (select (|PolymorphicMapType_9729_6238_53#PolymorphicMapType_9729| Heap@@7) o2_1 f_8) (select (|PolymorphicMapType_9729_6238_53#PolymorphicMapType_9729| ExhaleHeap@@3) o2_1 f_8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9729_6238_53#PolymorphicMapType_9729| ExhaleHeap@@3) o2_1 f_8))
)) (forall ((o2_1@@0 T@Ref) (f_8@@0 T@Field_9802_9803) ) (!  (=> (select (|PolymorphicMapType_10278_9789_9803#PolymorphicMapType_10278| (select (|PolymorphicMapType_9729_16350_28365#PolymorphicMapType_9729| Heap@@7) null (PredicateMaskField_6477 pm_f_1@@3))) o2_1@@0 f_8@@0) (= (select (|PolymorphicMapType_9729_6241_6242#PolymorphicMapType_9729| Heap@@7) o2_1@@0 f_8@@0) (select (|PolymorphicMapType_9729_6241_6242#PolymorphicMapType_9729| ExhaleHeap@@3) o2_1@@0 f_8@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9729_6241_6242#PolymorphicMapType_9729| ExhaleHeap@@3) o2_1@@0 f_8@@0))
))) (forall ((o2_1@@1 T@Ref) (f_8@@1 T@Field_15831_3157) ) (!  (=> (select (|PolymorphicMapType_10278_9789_3157#PolymorphicMapType_10278| (select (|PolymorphicMapType_9729_16350_28365#PolymorphicMapType_9729| Heap@@7) null (PredicateMaskField_6477 pm_f_1@@3))) o2_1@@1 f_8@@1) (= (select (|PolymorphicMapType_9729_6450_3157#PolymorphicMapType_9729| Heap@@7) o2_1@@1 f_8@@1) (select (|PolymorphicMapType_9729_6450_3157#PolymorphicMapType_9729| ExhaleHeap@@3) o2_1@@1 f_8@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9729_6450_3157#PolymorphicMapType_9729| ExhaleHeap@@3) o2_1@@1 f_8@@1))
))) (forall ((o2_1@@2 T@Ref) (f_8@@2 T@Field_6450_16351) ) (!  (=> (select (|PolymorphicMapType_10278_9789_16351#PolymorphicMapType_10278| (select (|PolymorphicMapType_9729_16350_28365#PolymorphicMapType_9729| Heap@@7) null (PredicateMaskField_6477 pm_f_1@@3))) o2_1@@2 f_8@@2) (= (select (|PolymorphicMapType_9729_6450_16351#PolymorphicMapType_9729| Heap@@7) o2_1@@2 f_8@@2) (select (|PolymorphicMapType_9729_6450_16351#PolymorphicMapType_9729| ExhaleHeap@@3) o2_1@@2 f_8@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9729_6450_16351#PolymorphicMapType_9729| ExhaleHeap@@3) o2_1@@2 f_8@@2))
))) (forall ((o2_1@@3 T@Ref) (f_8@@3 T@Field_6450_16368) ) (!  (=> (select (|PolymorphicMapType_10278_9789_30095#PolymorphicMapType_10278| (select (|PolymorphicMapType_9729_16350_28365#PolymorphicMapType_9729| Heap@@7) null (PredicateMaskField_6477 pm_f_1@@3))) o2_1@@3 f_8@@3) (= (select (|PolymorphicMapType_9729_6450_27187#PolymorphicMapType_9729| Heap@@7) o2_1@@3 f_8@@3) (select (|PolymorphicMapType_9729_6450_27187#PolymorphicMapType_9729| ExhaleHeap@@3) o2_1@@3 f_8@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9729_6450_27187#PolymorphicMapType_9729| ExhaleHeap@@3) o2_1@@3 f_8@@3))
))) (forall ((o2_1@@4 T@Ref) (f_8@@4 T@Field_16350_53) ) (!  (=> (select (|PolymorphicMapType_10278_16350_53#PolymorphicMapType_10278| (select (|PolymorphicMapType_9729_16350_28365#PolymorphicMapType_9729| Heap@@7) null (PredicateMaskField_6477 pm_f_1@@3))) o2_1@@4 f_8@@4) (= (select (|PolymorphicMapType_9729_16350_53#PolymorphicMapType_9729| Heap@@7) o2_1@@4 f_8@@4) (select (|PolymorphicMapType_9729_16350_53#PolymorphicMapType_9729| ExhaleHeap@@3) o2_1@@4 f_8@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9729_16350_53#PolymorphicMapType_9729| ExhaleHeap@@3) o2_1@@4 f_8@@4))
))) (forall ((o2_1@@5 T@Ref) (f_8@@5 T@Field_16350_9803) ) (!  (=> (select (|PolymorphicMapType_10278_16350_9803#PolymorphicMapType_10278| (select (|PolymorphicMapType_9729_16350_28365#PolymorphicMapType_9729| Heap@@7) null (PredicateMaskField_6477 pm_f_1@@3))) o2_1@@5 f_8@@5) (= (select (|PolymorphicMapType_9729_16350_9803#PolymorphicMapType_9729| Heap@@7) o2_1@@5 f_8@@5) (select (|PolymorphicMapType_9729_16350_9803#PolymorphicMapType_9729| ExhaleHeap@@3) o2_1@@5 f_8@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9729_16350_9803#PolymorphicMapType_9729| ExhaleHeap@@3) o2_1@@5 f_8@@5))
))) (forall ((o2_1@@6 T@Ref) (f_8@@6 T@Field_16350_3157) ) (!  (=> (select (|PolymorphicMapType_10278_16350_3157#PolymorphicMapType_10278| (select (|PolymorphicMapType_9729_16350_28365#PolymorphicMapType_9729| Heap@@7) null (PredicateMaskField_6477 pm_f_1@@3))) o2_1@@6 f_8@@6) (= (select (|PolymorphicMapType_9729_16350_3157#PolymorphicMapType_9729| Heap@@7) o2_1@@6 f_8@@6) (select (|PolymorphicMapType_9729_16350_3157#PolymorphicMapType_9729| ExhaleHeap@@3) o2_1@@6 f_8@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9729_16350_3157#PolymorphicMapType_9729| ExhaleHeap@@3) o2_1@@6 f_8@@6))
))) (forall ((o2_1@@7 T@Ref) (f_8@@7 T@Field_16350_16351) ) (!  (=> (select (|PolymorphicMapType_10278_16350_16351#PolymorphicMapType_10278| (select (|PolymorphicMapType_9729_16350_28365#PolymorphicMapType_9729| Heap@@7) null (PredicateMaskField_6477 pm_f_1@@3))) o2_1@@7 f_8@@7) (= (select (|PolymorphicMapType_9729_16350_16351#PolymorphicMapType_9729| Heap@@7) o2_1@@7 f_8@@7) (select (|PolymorphicMapType_9729_16350_16351#PolymorphicMapType_9729| ExhaleHeap@@3) o2_1@@7 f_8@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9729_16350_16351#PolymorphicMapType_9729| ExhaleHeap@@3) o2_1@@7 f_8@@7))
))) (forall ((o2_1@@8 T@Ref) (f_8@@8 T@Field_16363_16368) ) (!  (=> (select (|PolymorphicMapType_10278_16350_31143#PolymorphicMapType_10278| (select (|PolymorphicMapType_9729_16350_28365#PolymorphicMapType_9729| Heap@@7) null (PredicateMaskField_6477 pm_f_1@@3))) o2_1@@8 f_8@@8) (= (select (|PolymorphicMapType_9729_16350_28365#PolymorphicMapType_9729| Heap@@7) o2_1@@8 f_8@@8) (select (|PolymorphicMapType_9729_16350_28365#PolymorphicMapType_9729| ExhaleHeap@@3) o2_1@@8 f_8@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9729_16350_28365#PolymorphicMapType_9729| ExhaleHeap@@3) o2_1@@8 f_8@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (IsPredicateField_6477_6478 pm_f_1@@3))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_9729) (ExhaleHeap@@4 T@PolymorphicMapType_9729) (Mask@@5 T@PolymorphicMapType_9750) (pm_f_1@@4 T@Field_6450_16351) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_6450_16351 Mask@@5 null pm_f_1@@4) (IsPredicateField_6450_28611 pm_f_1@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_1@@9 T@Ref) (f_8@@9 T@Field_9789_53) ) (!  (=> (select (|PolymorphicMapType_10278_9789_53#PolymorphicMapType_10278| (select (|PolymorphicMapType_9729_6450_27187#PolymorphicMapType_9729| Heap@@8) null (PredicateMaskField_6450 pm_f_1@@4))) o2_1@@9 f_8@@9) (= (select (|PolymorphicMapType_9729_6238_53#PolymorphicMapType_9729| Heap@@8) o2_1@@9 f_8@@9) (select (|PolymorphicMapType_9729_6238_53#PolymorphicMapType_9729| ExhaleHeap@@4) o2_1@@9 f_8@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9729_6238_53#PolymorphicMapType_9729| ExhaleHeap@@4) o2_1@@9 f_8@@9))
)) (forall ((o2_1@@10 T@Ref) (f_8@@10 T@Field_9802_9803) ) (!  (=> (select (|PolymorphicMapType_10278_9789_9803#PolymorphicMapType_10278| (select (|PolymorphicMapType_9729_6450_27187#PolymorphicMapType_9729| Heap@@8) null (PredicateMaskField_6450 pm_f_1@@4))) o2_1@@10 f_8@@10) (= (select (|PolymorphicMapType_9729_6241_6242#PolymorphicMapType_9729| Heap@@8) o2_1@@10 f_8@@10) (select (|PolymorphicMapType_9729_6241_6242#PolymorphicMapType_9729| ExhaleHeap@@4) o2_1@@10 f_8@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9729_6241_6242#PolymorphicMapType_9729| ExhaleHeap@@4) o2_1@@10 f_8@@10))
))) (forall ((o2_1@@11 T@Ref) (f_8@@11 T@Field_15831_3157) ) (!  (=> (select (|PolymorphicMapType_10278_9789_3157#PolymorphicMapType_10278| (select (|PolymorphicMapType_9729_6450_27187#PolymorphicMapType_9729| Heap@@8) null (PredicateMaskField_6450 pm_f_1@@4))) o2_1@@11 f_8@@11) (= (select (|PolymorphicMapType_9729_6450_3157#PolymorphicMapType_9729| Heap@@8) o2_1@@11 f_8@@11) (select (|PolymorphicMapType_9729_6450_3157#PolymorphicMapType_9729| ExhaleHeap@@4) o2_1@@11 f_8@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9729_6450_3157#PolymorphicMapType_9729| ExhaleHeap@@4) o2_1@@11 f_8@@11))
))) (forall ((o2_1@@12 T@Ref) (f_8@@12 T@Field_6450_16351) ) (!  (=> (select (|PolymorphicMapType_10278_9789_16351#PolymorphicMapType_10278| (select (|PolymorphicMapType_9729_6450_27187#PolymorphicMapType_9729| Heap@@8) null (PredicateMaskField_6450 pm_f_1@@4))) o2_1@@12 f_8@@12) (= (select (|PolymorphicMapType_9729_6450_16351#PolymorphicMapType_9729| Heap@@8) o2_1@@12 f_8@@12) (select (|PolymorphicMapType_9729_6450_16351#PolymorphicMapType_9729| ExhaleHeap@@4) o2_1@@12 f_8@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9729_6450_16351#PolymorphicMapType_9729| ExhaleHeap@@4) o2_1@@12 f_8@@12))
))) (forall ((o2_1@@13 T@Ref) (f_8@@13 T@Field_6450_16368) ) (!  (=> (select (|PolymorphicMapType_10278_9789_30095#PolymorphicMapType_10278| (select (|PolymorphicMapType_9729_6450_27187#PolymorphicMapType_9729| Heap@@8) null (PredicateMaskField_6450 pm_f_1@@4))) o2_1@@13 f_8@@13) (= (select (|PolymorphicMapType_9729_6450_27187#PolymorphicMapType_9729| Heap@@8) o2_1@@13 f_8@@13) (select (|PolymorphicMapType_9729_6450_27187#PolymorphicMapType_9729| ExhaleHeap@@4) o2_1@@13 f_8@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9729_6450_27187#PolymorphicMapType_9729| ExhaleHeap@@4) o2_1@@13 f_8@@13))
))) (forall ((o2_1@@14 T@Ref) (f_8@@14 T@Field_16350_53) ) (!  (=> (select (|PolymorphicMapType_10278_16350_53#PolymorphicMapType_10278| (select (|PolymorphicMapType_9729_6450_27187#PolymorphicMapType_9729| Heap@@8) null (PredicateMaskField_6450 pm_f_1@@4))) o2_1@@14 f_8@@14) (= (select (|PolymorphicMapType_9729_16350_53#PolymorphicMapType_9729| Heap@@8) o2_1@@14 f_8@@14) (select (|PolymorphicMapType_9729_16350_53#PolymorphicMapType_9729| ExhaleHeap@@4) o2_1@@14 f_8@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9729_16350_53#PolymorphicMapType_9729| ExhaleHeap@@4) o2_1@@14 f_8@@14))
))) (forall ((o2_1@@15 T@Ref) (f_8@@15 T@Field_16350_9803) ) (!  (=> (select (|PolymorphicMapType_10278_16350_9803#PolymorphicMapType_10278| (select (|PolymorphicMapType_9729_6450_27187#PolymorphicMapType_9729| Heap@@8) null (PredicateMaskField_6450 pm_f_1@@4))) o2_1@@15 f_8@@15) (= (select (|PolymorphicMapType_9729_16350_9803#PolymorphicMapType_9729| Heap@@8) o2_1@@15 f_8@@15) (select (|PolymorphicMapType_9729_16350_9803#PolymorphicMapType_9729| ExhaleHeap@@4) o2_1@@15 f_8@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9729_16350_9803#PolymorphicMapType_9729| ExhaleHeap@@4) o2_1@@15 f_8@@15))
))) (forall ((o2_1@@16 T@Ref) (f_8@@16 T@Field_16350_3157) ) (!  (=> (select (|PolymorphicMapType_10278_16350_3157#PolymorphicMapType_10278| (select (|PolymorphicMapType_9729_6450_27187#PolymorphicMapType_9729| Heap@@8) null (PredicateMaskField_6450 pm_f_1@@4))) o2_1@@16 f_8@@16) (= (select (|PolymorphicMapType_9729_16350_3157#PolymorphicMapType_9729| Heap@@8) o2_1@@16 f_8@@16) (select (|PolymorphicMapType_9729_16350_3157#PolymorphicMapType_9729| ExhaleHeap@@4) o2_1@@16 f_8@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9729_16350_3157#PolymorphicMapType_9729| ExhaleHeap@@4) o2_1@@16 f_8@@16))
))) (forall ((o2_1@@17 T@Ref) (f_8@@17 T@Field_16350_16351) ) (!  (=> (select (|PolymorphicMapType_10278_16350_16351#PolymorphicMapType_10278| (select (|PolymorphicMapType_9729_6450_27187#PolymorphicMapType_9729| Heap@@8) null (PredicateMaskField_6450 pm_f_1@@4))) o2_1@@17 f_8@@17) (= (select (|PolymorphicMapType_9729_16350_16351#PolymorphicMapType_9729| Heap@@8) o2_1@@17 f_8@@17) (select (|PolymorphicMapType_9729_16350_16351#PolymorphicMapType_9729| ExhaleHeap@@4) o2_1@@17 f_8@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9729_16350_16351#PolymorphicMapType_9729| ExhaleHeap@@4) o2_1@@17 f_8@@17))
))) (forall ((o2_1@@18 T@Ref) (f_8@@18 T@Field_16363_16368) ) (!  (=> (select (|PolymorphicMapType_10278_16350_31143#PolymorphicMapType_10278| (select (|PolymorphicMapType_9729_6450_27187#PolymorphicMapType_9729| Heap@@8) null (PredicateMaskField_6450 pm_f_1@@4))) o2_1@@18 f_8@@18) (= (select (|PolymorphicMapType_9729_16350_28365#PolymorphicMapType_9729| Heap@@8) o2_1@@18 f_8@@18) (select (|PolymorphicMapType_9729_16350_28365#PolymorphicMapType_9729| ExhaleHeap@@4) o2_1@@18 f_8@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9729_16350_28365#PolymorphicMapType_9729| ExhaleHeap@@4) o2_1@@18 f_8@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (IsPredicateField_6450_28611 pm_f_1@@4))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_9729) (ExhaleHeap@@5 T@PolymorphicMapType_9729) (Mask@@6 T@PolymorphicMapType_9750) (pm_f_1@@5 T@Field_16350_16351) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_16350_16351 Mask@@6 null pm_f_1@@5) (IsWandField_16350_32308 pm_f_1@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_1@@19 T@Ref) (f_8@@19 T@Field_9789_53) ) (!  (=> (select (|PolymorphicMapType_10278_9789_53#PolymorphicMapType_10278| (select (|PolymorphicMapType_9729_16350_28365#PolymorphicMapType_9729| Heap@@9) null (WandMaskField_16350 pm_f_1@@5))) o2_1@@19 f_8@@19) (= (select (|PolymorphicMapType_9729_6238_53#PolymorphicMapType_9729| Heap@@9) o2_1@@19 f_8@@19) (select (|PolymorphicMapType_9729_6238_53#PolymorphicMapType_9729| ExhaleHeap@@5) o2_1@@19 f_8@@19)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9729_6238_53#PolymorphicMapType_9729| ExhaleHeap@@5) o2_1@@19 f_8@@19))
)) (forall ((o2_1@@20 T@Ref) (f_8@@20 T@Field_9802_9803) ) (!  (=> (select (|PolymorphicMapType_10278_9789_9803#PolymorphicMapType_10278| (select (|PolymorphicMapType_9729_16350_28365#PolymorphicMapType_9729| Heap@@9) null (WandMaskField_16350 pm_f_1@@5))) o2_1@@20 f_8@@20) (= (select (|PolymorphicMapType_9729_6241_6242#PolymorphicMapType_9729| Heap@@9) o2_1@@20 f_8@@20) (select (|PolymorphicMapType_9729_6241_6242#PolymorphicMapType_9729| ExhaleHeap@@5) o2_1@@20 f_8@@20)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9729_6241_6242#PolymorphicMapType_9729| ExhaleHeap@@5) o2_1@@20 f_8@@20))
))) (forall ((o2_1@@21 T@Ref) (f_8@@21 T@Field_15831_3157) ) (!  (=> (select (|PolymorphicMapType_10278_9789_3157#PolymorphicMapType_10278| (select (|PolymorphicMapType_9729_16350_28365#PolymorphicMapType_9729| Heap@@9) null (WandMaskField_16350 pm_f_1@@5))) o2_1@@21 f_8@@21) (= (select (|PolymorphicMapType_9729_6450_3157#PolymorphicMapType_9729| Heap@@9) o2_1@@21 f_8@@21) (select (|PolymorphicMapType_9729_6450_3157#PolymorphicMapType_9729| ExhaleHeap@@5) o2_1@@21 f_8@@21)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9729_6450_3157#PolymorphicMapType_9729| ExhaleHeap@@5) o2_1@@21 f_8@@21))
))) (forall ((o2_1@@22 T@Ref) (f_8@@22 T@Field_6450_16351) ) (!  (=> (select (|PolymorphicMapType_10278_9789_16351#PolymorphicMapType_10278| (select (|PolymorphicMapType_9729_16350_28365#PolymorphicMapType_9729| Heap@@9) null (WandMaskField_16350 pm_f_1@@5))) o2_1@@22 f_8@@22) (= (select (|PolymorphicMapType_9729_6450_16351#PolymorphicMapType_9729| Heap@@9) o2_1@@22 f_8@@22) (select (|PolymorphicMapType_9729_6450_16351#PolymorphicMapType_9729| ExhaleHeap@@5) o2_1@@22 f_8@@22)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9729_6450_16351#PolymorphicMapType_9729| ExhaleHeap@@5) o2_1@@22 f_8@@22))
))) (forall ((o2_1@@23 T@Ref) (f_8@@23 T@Field_6450_16368) ) (!  (=> (select (|PolymorphicMapType_10278_9789_30095#PolymorphicMapType_10278| (select (|PolymorphicMapType_9729_16350_28365#PolymorphicMapType_9729| Heap@@9) null (WandMaskField_16350 pm_f_1@@5))) o2_1@@23 f_8@@23) (= (select (|PolymorphicMapType_9729_6450_27187#PolymorphicMapType_9729| Heap@@9) o2_1@@23 f_8@@23) (select (|PolymorphicMapType_9729_6450_27187#PolymorphicMapType_9729| ExhaleHeap@@5) o2_1@@23 f_8@@23)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9729_6450_27187#PolymorphicMapType_9729| ExhaleHeap@@5) o2_1@@23 f_8@@23))
))) (forall ((o2_1@@24 T@Ref) (f_8@@24 T@Field_16350_53) ) (!  (=> (select (|PolymorphicMapType_10278_16350_53#PolymorphicMapType_10278| (select (|PolymorphicMapType_9729_16350_28365#PolymorphicMapType_9729| Heap@@9) null (WandMaskField_16350 pm_f_1@@5))) o2_1@@24 f_8@@24) (= (select (|PolymorphicMapType_9729_16350_53#PolymorphicMapType_9729| Heap@@9) o2_1@@24 f_8@@24) (select (|PolymorphicMapType_9729_16350_53#PolymorphicMapType_9729| ExhaleHeap@@5) o2_1@@24 f_8@@24)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9729_16350_53#PolymorphicMapType_9729| ExhaleHeap@@5) o2_1@@24 f_8@@24))
))) (forall ((o2_1@@25 T@Ref) (f_8@@25 T@Field_16350_9803) ) (!  (=> (select (|PolymorphicMapType_10278_16350_9803#PolymorphicMapType_10278| (select (|PolymorphicMapType_9729_16350_28365#PolymorphicMapType_9729| Heap@@9) null (WandMaskField_16350 pm_f_1@@5))) o2_1@@25 f_8@@25) (= (select (|PolymorphicMapType_9729_16350_9803#PolymorphicMapType_9729| Heap@@9) o2_1@@25 f_8@@25) (select (|PolymorphicMapType_9729_16350_9803#PolymorphicMapType_9729| ExhaleHeap@@5) o2_1@@25 f_8@@25)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9729_16350_9803#PolymorphicMapType_9729| ExhaleHeap@@5) o2_1@@25 f_8@@25))
))) (forall ((o2_1@@26 T@Ref) (f_8@@26 T@Field_16350_3157) ) (!  (=> (select (|PolymorphicMapType_10278_16350_3157#PolymorphicMapType_10278| (select (|PolymorphicMapType_9729_16350_28365#PolymorphicMapType_9729| Heap@@9) null (WandMaskField_16350 pm_f_1@@5))) o2_1@@26 f_8@@26) (= (select (|PolymorphicMapType_9729_16350_3157#PolymorphicMapType_9729| Heap@@9) o2_1@@26 f_8@@26) (select (|PolymorphicMapType_9729_16350_3157#PolymorphicMapType_9729| ExhaleHeap@@5) o2_1@@26 f_8@@26)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9729_16350_3157#PolymorphicMapType_9729| ExhaleHeap@@5) o2_1@@26 f_8@@26))
))) (forall ((o2_1@@27 T@Ref) (f_8@@27 T@Field_16350_16351) ) (!  (=> (select (|PolymorphicMapType_10278_16350_16351#PolymorphicMapType_10278| (select (|PolymorphicMapType_9729_16350_28365#PolymorphicMapType_9729| Heap@@9) null (WandMaskField_16350 pm_f_1@@5))) o2_1@@27 f_8@@27) (= (select (|PolymorphicMapType_9729_16350_16351#PolymorphicMapType_9729| Heap@@9) o2_1@@27 f_8@@27) (select (|PolymorphicMapType_9729_16350_16351#PolymorphicMapType_9729| ExhaleHeap@@5) o2_1@@27 f_8@@27)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9729_16350_16351#PolymorphicMapType_9729| ExhaleHeap@@5) o2_1@@27 f_8@@27))
))) (forall ((o2_1@@28 T@Ref) (f_8@@28 T@Field_16363_16368) ) (!  (=> (select (|PolymorphicMapType_10278_16350_31143#PolymorphicMapType_10278| (select (|PolymorphicMapType_9729_16350_28365#PolymorphicMapType_9729| Heap@@9) null (WandMaskField_16350 pm_f_1@@5))) o2_1@@28 f_8@@28) (= (select (|PolymorphicMapType_9729_16350_28365#PolymorphicMapType_9729| Heap@@9) o2_1@@28 f_8@@28) (select (|PolymorphicMapType_9729_16350_28365#PolymorphicMapType_9729| ExhaleHeap@@5) o2_1@@28 f_8@@28)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9729_16350_28365#PolymorphicMapType_9729| ExhaleHeap@@5) o2_1@@28 f_8@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (IsWandField_16350_32308 pm_f_1@@5))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_9729) (ExhaleHeap@@6 T@PolymorphicMapType_9729) (Mask@@7 T@PolymorphicMapType_9750) (pm_f_1@@6 T@Field_6450_16351) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_6450_16351 Mask@@7 null pm_f_1@@6) (IsWandField_6450_31951 pm_f_1@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_1@@29 T@Ref) (f_8@@29 T@Field_9789_53) ) (!  (=> (select (|PolymorphicMapType_10278_9789_53#PolymorphicMapType_10278| (select (|PolymorphicMapType_9729_6450_27187#PolymorphicMapType_9729| Heap@@10) null (WandMaskField_6450 pm_f_1@@6))) o2_1@@29 f_8@@29) (= (select (|PolymorphicMapType_9729_6238_53#PolymorphicMapType_9729| Heap@@10) o2_1@@29 f_8@@29) (select (|PolymorphicMapType_9729_6238_53#PolymorphicMapType_9729| ExhaleHeap@@6) o2_1@@29 f_8@@29)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9729_6238_53#PolymorphicMapType_9729| ExhaleHeap@@6) o2_1@@29 f_8@@29))
)) (forall ((o2_1@@30 T@Ref) (f_8@@30 T@Field_9802_9803) ) (!  (=> (select (|PolymorphicMapType_10278_9789_9803#PolymorphicMapType_10278| (select (|PolymorphicMapType_9729_6450_27187#PolymorphicMapType_9729| Heap@@10) null (WandMaskField_6450 pm_f_1@@6))) o2_1@@30 f_8@@30) (= (select (|PolymorphicMapType_9729_6241_6242#PolymorphicMapType_9729| Heap@@10) o2_1@@30 f_8@@30) (select (|PolymorphicMapType_9729_6241_6242#PolymorphicMapType_9729| ExhaleHeap@@6) o2_1@@30 f_8@@30)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9729_6241_6242#PolymorphicMapType_9729| ExhaleHeap@@6) o2_1@@30 f_8@@30))
))) (forall ((o2_1@@31 T@Ref) (f_8@@31 T@Field_15831_3157) ) (!  (=> (select (|PolymorphicMapType_10278_9789_3157#PolymorphicMapType_10278| (select (|PolymorphicMapType_9729_6450_27187#PolymorphicMapType_9729| Heap@@10) null (WandMaskField_6450 pm_f_1@@6))) o2_1@@31 f_8@@31) (= (select (|PolymorphicMapType_9729_6450_3157#PolymorphicMapType_9729| Heap@@10) o2_1@@31 f_8@@31) (select (|PolymorphicMapType_9729_6450_3157#PolymorphicMapType_9729| ExhaleHeap@@6) o2_1@@31 f_8@@31)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9729_6450_3157#PolymorphicMapType_9729| ExhaleHeap@@6) o2_1@@31 f_8@@31))
))) (forall ((o2_1@@32 T@Ref) (f_8@@32 T@Field_6450_16351) ) (!  (=> (select (|PolymorphicMapType_10278_9789_16351#PolymorphicMapType_10278| (select (|PolymorphicMapType_9729_6450_27187#PolymorphicMapType_9729| Heap@@10) null (WandMaskField_6450 pm_f_1@@6))) o2_1@@32 f_8@@32) (= (select (|PolymorphicMapType_9729_6450_16351#PolymorphicMapType_9729| Heap@@10) o2_1@@32 f_8@@32) (select (|PolymorphicMapType_9729_6450_16351#PolymorphicMapType_9729| ExhaleHeap@@6) o2_1@@32 f_8@@32)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9729_6450_16351#PolymorphicMapType_9729| ExhaleHeap@@6) o2_1@@32 f_8@@32))
))) (forall ((o2_1@@33 T@Ref) (f_8@@33 T@Field_6450_16368) ) (!  (=> (select (|PolymorphicMapType_10278_9789_30095#PolymorphicMapType_10278| (select (|PolymorphicMapType_9729_6450_27187#PolymorphicMapType_9729| Heap@@10) null (WandMaskField_6450 pm_f_1@@6))) o2_1@@33 f_8@@33) (= (select (|PolymorphicMapType_9729_6450_27187#PolymorphicMapType_9729| Heap@@10) o2_1@@33 f_8@@33) (select (|PolymorphicMapType_9729_6450_27187#PolymorphicMapType_9729| ExhaleHeap@@6) o2_1@@33 f_8@@33)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9729_6450_27187#PolymorphicMapType_9729| ExhaleHeap@@6) o2_1@@33 f_8@@33))
))) (forall ((o2_1@@34 T@Ref) (f_8@@34 T@Field_16350_53) ) (!  (=> (select (|PolymorphicMapType_10278_16350_53#PolymorphicMapType_10278| (select (|PolymorphicMapType_9729_6450_27187#PolymorphicMapType_9729| Heap@@10) null (WandMaskField_6450 pm_f_1@@6))) o2_1@@34 f_8@@34) (= (select (|PolymorphicMapType_9729_16350_53#PolymorphicMapType_9729| Heap@@10) o2_1@@34 f_8@@34) (select (|PolymorphicMapType_9729_16350_53#PolymorphicMapType_9729| ExhaleHeap@@6) o2_1@@34 f_8@@34)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9729_16350_53#PolymorphicMapType_9729| ExhaleHeap@@6) o2_1@@34 f_8@@34))
))) (forall ((o2_1@@35 T@Ref) (f_8@@35 T@Field_16350_9803) ) (!  (=> (select (|PolymorphicMapType_10278_16350_9803#PolymorphicMapType_10278| (select (|PolymorphicMapType_9729_6450_27187#PolymorphicMapType_9729| Heap@@10) null (WandMaskField_6450 pm_f_1@@6))) o2_1@@35 f_8@@35) (= (select (|PolymorphicMapType_9729_16350_9803#PolymorphicMapType_9729| Heap@@10) o2_1@@35 f_8@@35) (select (|PolymorphicMapType_9729_16350_9803#PolymorphicMapType_9729| ExhaleHeap@@6) o2_1@@35 f_8@@35)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9729_16350_9803#PolymorphicMapType_9729| ExhaleHeap@@6) o2_1@@35 f_8@@35))
))) (forall ((o2_1@@36 T@Ref) (f_8@@36 T@Field_16350_3157) ) (!  (=> (select (|PolymorphicMapType_10278_16350_3157#PolymorphicMapType_10278| (select (|PolymorphicMapType_9729_6450_27187#PolymorphicMapType_9729| Heap@@10) null (WandMaskField_6450 pm_f_1@@6))) o2_1@@36 f_8@@36) (= (select (|PolymorphicMapType_9729_16350_3157#PolymorphicMapType_9729| Heap@@10) o2_1@@36 f_8@@36) (select (|PolymorphicMapType_9729_16350_3157#PolymorphicMapType_9729| ExhaleHeap@@6) o2_1@@36 f_8@@36)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9729_16350_3157#PolymorphicMapType_9729| ExhaleHeap@@6) o2_1@@36 f_8@@36))
))) (forall ((o2_1@@37 T@Ref) (f_8@@37 T@Field_16350_16351) ) (!  (=> (select (|PolymorphicMapType_10278_16350_16351#PolymorphicMapType_10278| (select (|PolymorphicMapType_9729_6450_27187#PolymorphicMapType_9729| Heap@@10) null (WandMaskField_6450 pm_f_1@@6))) o2_1@@37 f_8@@37) (= (select (|PolymorphicMapType_9729_16350_16351#PolymorphicMapType_9729| Heap@@10) o2_1@@37 f_8@@37) (select (|PolymorphicMapType_9729_16350_16351#PolymorphicMapType_9729| ExhaleHeap@@6) o2_1@@37 f_8@@37)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9729_16350_16351#PolymorphicMapType_9729| ExhaleHeap@@6) o2_1@@37 f_8@@37))
))) (forall ((o2_1@@38 T@Ref) (f_8@@38 T@Field_16363_16368) ) (!  (=> (select (|PolymorphicMapType_10278_16350_31143#PolymorphicMapType_10278| (select (|PolymorphicMapType_9729_6450_27187#PolymorphicMapType_9729| Heap@@10) null (WandMaskField_6450 pm_f_1@@6))) o2_1@@38 f_8@@38) (= (select (|PolymorphicMapType_9729_16350_28365#PolymorphicMapType_9729| Heap@@10) o2_1@@38 f_8@@38) (select (|PolymorphicMapType_9729_16350_28365#PolymorphicMapType_9729| ExhaleHeap@@6) o2_1@@38 f_8@@38)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9729_16350_28365#PolymorphicMapType_9729| ExhaleHeap@@6) o2_1@@38 f_8@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@7) (IsWandField_6450_31951 pm_f_1@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@11 T@PolymorphicMapType_9729) (ExhaleHeap@@7 T@PolymorphicMapType_9729) (Mask@@8 T@PolymorphicMapType_9750) (o_3 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_9729_6238_53#PolymorphicMapType_9729| Heap@@11) o_3 $allocated) (select (|PolymorphicMapType_9729_6238_53#PolymorphicMapType_9729| ExhaleHeap@@7) o_3 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_9729_6238_53#PolymorphicMapType_9729| ExhaleHeap@@7) o_3 $allocated))
)))
(assert (forall ((p T@Field_16350_16351) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_16350_16350 p v_1 p w))
 :qid |stdinbpl.204:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_16350_16350 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_6450_16351) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_9789_9789 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.204:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_9789_9789 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((s0 T@Seq_17442) (s1 T@Seq_17442) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_17442|)) (not (= s1 |Seq#Empty_17442|))) (<= (|Seq#Length_17442| s0) n@@13)) (< n@@13 (|Seq#Length_17442| (|Seq#Append_17442| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_17442| s0)) (|Seq#Length_17442| s0)) n@@13) (= (|Seq#Index_17442| (|Seq#Append_17442| s0 s1) n@@13) (|Seq#Index_17442| s1 (|Seq#Sub| n@@13 (|Seq#Length_17442| s0))))))
 :qid |stdinbpl.273:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_17442| (|Seq#Append_17442| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3035) (s1@@0 T@Seq_3035) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3035|)) (not (= s1@@0 |Seq#Empty_3035|))) (<= (|Seq#Length_3035| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3035| (|Seq#Append_3035| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3035| s0@@0)) (|Seq#Length_3035| s0@@0)) n@@14) (= (|Seq#Index_3035| (|Seq#Append_3035| s0@@0 s1@@0) n@@14) (|Seq#Index_3035| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3035| s0@@0))))))
 :qid |stdinbpl.273:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3035| (|Seq#Append_3035| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_6450_3157 f_7)))
(assert  (not (IsWandField_6450_3157 f_7)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_9729) (ExhaleHeap@@8 T@PolymorphicMapType_9729) (Mask@@9 T@PolymorphicMapType_9750) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@12 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_9750) (o_2@@9 T@Ref) (f_4@@9 T@Field_16363_16368) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_9750_6477_36948#PolymorphicMapType_9750| Mask@@10) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_6477_39240 f_4@@9))) (not (IsWandField_6477_39256 f_4@@9))) (<= (select (|PolymorphicMapType_9750_6477_36948#PolymorphicMapType_9750| Mask@@10) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_9750_6477_36948#PolymorphicMapType_9750| Mask@@10) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_9750) (o_2@@10 T@Ref) (f_4@@10 T@Field_16350_9803) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_9750_6477_9803#PolymorphicMapType_9750| Mask@@11) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_6477_9803 f_4@@10))) (not (IsWandField_6477_9803 f_4@@10))) (<= (select (|PolymorphicMapType_9750_6477_9803#PolymorphicMapType_9750| Mask@@11) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_9750_6477_9803#PolymorphicMapType_9750| Mask@@11) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_9750) (o_2@@11 T@Ref) (f_4@@11 T@Field_16350_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_9750_6477_53#PolymorphicMapType_9750| Mask@@12) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_6477_53 f_4@@11))) (not (IsWandField_6477_53 f_4@@11))) (<= (select (|PolymorphicMapType_9750_6477_53#PolymorphicMapType_9750| Mask@@12) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_9750_6477_53#PolymorphicMapType_9750| Mask@@12) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_9750) (o_2@@12 T@Ref) (f_4@@12 T@Field_16350_16351) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_9750_6477_6478#PolymorphicMapType_9750| Mask@@13) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_6477_6478 f_4@@12))) (not (IsWandField_16350_32308 f_4@@12))) (<= (select (|PolymorphicMapType_9750_6477_6478#PolymorphicMapType_9750| Mask@@13) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_9750_6477_6478#PolymorphicMapType_9750| Mask@@13) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_9750) (o_2@@13 T@Ref) (f_4@@13 T@Field_16350_3157) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_9750_6477_3157#PolymorphicMapType_9750| Mask@@14) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_6477_3157 f_4@@13))) (not (IsWandField_6477_3157 f_4@@13))) (<= (select (|PolymorphicMapType_9750_6477_3157#PolymorphicMapType_9750| Mask@@14) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_9750_6477_3157#PolymorphicMapType_9750| Mask@@14) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_9750) (o_2@@14 T@Ref) (f_4@@14 T@Field_6450_16368) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_9750_6450_36537#PolymorphicMapType_9750| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_6450_38409 f_4@@14))) (not (IsWandField_6450_38425 f_4@@14))) (<= (select (|PolymorphicMapType_9750_6450_36537#PolymorphicMapType_9750| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_9750_6450_36537#PolymorphicMapType_9750| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_9750) (o_2@@15 T@Ref) (f_4@@15 T@Field_9802_9803) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_9750_6450_9803#PolymorphicMapType_9750| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_6450_9803 f_4@@15))) (not (IsWandField_6450_9803 f_4@@15))) (<= (select (|PolymorphicMapType_9750_6450_9803#PolymorphicMapType_9750| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_9750_6450_9803#PolymorphicMapType_9750| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_9750) (o_2@@16 T@Ref) (f_4@@16 T@Field_9789_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_9750_6450_53#PolymorphicMapType_9750| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_6450_53 f_4@@16))) (not (IsWandField_6450_53 f_4@@16))) (<= (select (|PolymorphicMapType_9750_6450_53#PolymorphicMapType_9750| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_9750_6450_53#PolymorphicMapType_9750| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_9750) (o_2@@17 T@Ref) (f_4@@17 T@Field_6450_16351) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_9750_6450_6478#PolymorphicMapType_9750| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_6450_28611 f_4@@17))) (not (IsWandField_6450_31951 f_4@@17))) (<= (select (|PolymorphicMapType_9750_6450_6478#PolymorphicMapType_9750| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_9750_6450_6478#PolymorphicMapType_9750| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_9750) (o_2@@18 T@Ref) (f_4@@18 T@Field_15831_3157) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_9750_6450_3157#PolymorphicMapType_9750| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_6450_3157 f_4@@18))) (not (IsWandField_6450_3157 f_4@@18))) (<= (select (|PolymorphicMapType_9750_6450_3157#PolymorphicMapType_9750| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_9750_6450_3157#PolymorphicMapType_9750| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_9750) (o_2@@19 T@Ref) (f_4@@19 T@Field_16363_16368) ) (! (= (HasDirectPerm_16350_28323 Mask@@20 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_9750_6477_36948#PolymorphicMapType_9750| Mask@@20) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16350_28323 Mask@@20 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_9750) (o_2@@20 T@Ref) (f_4@@20 T@Field_16350_16351) ) (! (= (HasDirectPerm_16350_16351 Mask@@21 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_9750_6477_6478#PolymorphicMapType_9750| Mask@@21) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16350_16351 Mask@@21 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_9750) (o_2@@21 T@Ref) (f_4@@21 T@Field_16350_9803) ) (! (= (HasDirectPerm_16350_9803 Mask@@22 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_9750_6477_9803#PolymorphicMapType_9750| Mask@@22) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16350_9803 Mask@@22 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_9750) (o_2@@22 T@Ref) (f_4@@22 T@Field_16350_53) ) (! (= (HasDirectPerm_16350_53 Mask@@23 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_9750_6477_53#PolymorphicMapType_9750| Mask@@23) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16350_53 Mask@@23 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_9750) (o_2@@23 T@Ref) (f_4@@23 T@Field_16350_3157) ) (! (= (HasDirectPerm_16350_3157 Mask@@24 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_9750_6477_3157#PolymorphicMapType_9750| Mask@@24) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16350_3157 Mask@@24 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_9750) (o_2@@24 T@Ref) (f_4@@24 T@Field_6450_16368) ) (! (= (HasDirectPerm_6450_27145 Mask@@25 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_9750_6450_36537#PolymorphicMapType_9750| Mask@@25) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6450_27145 Mask@@25 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_9750) (o_2@@25 T@Ref) (f_4@@25 T@Field_6450_16351) ) (! (= (HasDirectPerm_6450_16351 Mask@@26 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_9750_6450_6478#PolymorphicMapType_9750| Mask@@26) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6450_16351 Mask@@26 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_9750) (o_2@@26 T@Ref) (f_4@@26 T@Field_9802_9803) ) (! (= (HasDirectPerm_6450_9803 Mask@@27 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_9750_6450_9803#PolymorphicMapType_9750| Mask@@27) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6450_9803 Mask@@27 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_9750) (o_2@@27 T@Ref) (f_4@@27 T@Field_9789_53) ) (! (= (HasDirectPerm_6450_53 Mask@@28 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_9750_6450_53#PolymorphicMapType_9750| Mask@@28) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6450_53 Mask@@28 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_9750) (o_2@@28 T@Ref) (f_4@@28 T@Field_15831_3157) ) (! (= (HasDirectPerm_6450_3157 Mask@@29 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_9750_6450_3157#PolymorphicMapType_9750| Mask@@29) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6450_3157 Mask@@29 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.192:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3035| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.565:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3035| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_9729) (ExhaleHeap@@9 T@PolymorphicMapType_9729) (Mask@@30 T@PolymorphicMapType_9750) (o_3@@0 T@Ref) (f_8@@39 T@Field_16363_16368) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@30) (=> (HasDirectPerm_16350_28323 Mask@@30 o_3@@0 f_8@@39) (= (select (|PolymorphicMapType_9729_16350_28365#PolymorphicMapType_9729| Heap@@13) o_3@@0 f_8@@39) (select (|PolymorphicMapType_9729_16350_28365#PolymorphicMapType_9729| ExhaleHeap@@9) o_3@@0 f_8@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@30) (select (|PolymorphicMapType_9729_16350_28365#PolymorphicMapType_9729| ExhaleHeap@@9) o_3@@0 f_8@@39))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_9729) (ExhaleHeap@@10 T@PolymorphicMapType_9729) (Mask@@31 T@PolymorphicMapType_9750) (o_3@@1 T@Ref) (f_8@@40 T@Field_16350_16351) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@31) (=> (HasDirectPerm_16350_16351 Mask@@31 o_3@@1 f_8@@40) (= (select (|PolymorphicMapType_9729_16350_16351#PolymorphicMapType_9729| Heap@@14) o_3@@1 f_8@@40) (select (|PolymorphicMapType_9729_16350_16351#PolymorphicMapType_9729| ExhaleHeap@@10) o_3@@1 f_8@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@31) (select (|PolymorphicMapType_9729_16350_16351#PolymorphicMapType_9729| ExhaleHeap@@10) o_3@@1 f_8@@40))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_9729) (ExhaleHeap@@11 T@PolymorphicMapType_9729) (Mask@@32 T@PolymorphicMapType_9750) (o_3@@2 T@Ref) (f_8@@41 T@Field_16350_9803) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@32) (=> (HasDirectPerm_16350_9803 Mask@@32 o_3@@2 f_8@@41) (= (select (|PolymorphicMapType_9729_16350_9803#PolymorphicMapType_9729| Heap@@15) o_3@@2 f_8@@41) (select (|PolymorphicMapType_9729_16350_9803#PolymorphicMapType_9729| ExhaleHeap@@11) o_3@@2 f_8@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@32) (select (|PolymorphicMapType_9729_16350_9803#PolymorphicMapType_9729| ExhaleHeap@@11) o_3@@2 f_8@@41))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_9729) (ExhaleHeap@@12 T@PolymorphicMapType_9729) (Mask@@33 T@PolymorphicMapType_9750) (o_3@@3 T@Ref) (f_8@@42 T@Field_16350_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@33) (=> (HasDirectPerm_16350_53 Mask@@33 o_3@@3 f_8@@42) (= (select (|PolymorphicMapType_9729_16350_53#PolymorphicMapType_9729| Heap@@16) o_3@@3 f_8@@42) (select (|PolymorphicMapType_9729_16350_53#PolymorphicMapType_9729| ExhaleHeap@@12) o_3@@3 f_8@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@33) (select (|PolymorphicMapType_9729_16350_53#PolymorphicMapType_9729| ExhaleHeap@@12) o_3@@3 f_8@@42))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_9729) (ExhaleHeap@@13 T@PolymorphicMapType_9729) (Mask@@34 T@PolymorphicMapType_9750) (o_3@@4 T@Ref) (f_8@@43 T@Field_16350_3157) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@34) (=> (HasDirectPerm_16350_3157 Mask@@34 o_3@@4 f_8@@43) (= (select (|PolymorphicMapType_9729_16350_3157#PolymorphicMapType_9729| Heap@@17) o_3@@4 f_8@@43) (select (|PolymorphicMapType_9729_16350_3157#PolymorphicMapType_9729| ExhaleHeap@@13) o_3@@4 f_8@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@34) (select (|PolymorphicMapType_9729_16350_3157#PolymorphicMapType_9729| ExhaleHeap@@13) o_3@@4 f_8@@43))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_9729) (ExhaleHeap@@14 T@PolymorphicMapType_9729) (Mask@@35 T@PolymorphicMapType_9750) (o_3@@5 T@Ref) (f_8@@44 T@Field_6450_16368) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@35) (=> (HasDirectPerm_6450_27145 Mask@@35 o_3@@5 f_8@@44) (= (select (|PolymorphicMapType_9729_6450_27187#PolymorphicMapType_9729| Heap@@18) o_3@@5 f_8@@44) (select (|PolymorphicMapType_9729_6450_27187#PolymorphicMapType_9729| ExhaleHeap@@14) o_3@@5 f_8@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@35) (select (|PolymorphicMapType_9729_6450_27187#PolymorphicMapType_9729| ExhaleHeap@@14) o_3@@5 f_8@@44))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_9729) (ExhaleHeap@@15 T@PolymorphicMapType_9729) (Mask@@36 T@PolymorphicMapType_9750) (o_3@@6 T@Ref) (f_8@@45 T@Field_6450_16351) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@36) (=> (HasDirectPerm_6450_16351 Mask@@36 o_3@@6 f_8@@45) (= (select (|PolymorphicMapType_9729_6450_16351#PolymorphicMapType_9729| Heap@@19) o_3@@6 f_8@@45) (select (|PolymorphicMapType_9729_6450_16351#PolymorphicMapType_9729| ExhaleHeap@@15) o_3@@6 f_8@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@36) (select (|PolymorphicMapType_9729_6450_16351#PolymorphicMapType_9729| ExhaleHeap@@15) o_3@@6 f_8@@45))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_9729) (ExhaleHeap@@16 T@PolymorphicMapType_9729) (Mask@@37 T@PolymorphicMapType_9750) (o_3@@7 T@Ref) (f_8@@46 T@Field_9802_9803) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@37) (=> (HasDirectPerm_6450_9803 Mask@@37 o_3@@7 f_8@@46) (= (select (|PolymorphicMapType_9729_6241_6242#PolymorphicMapType_9729| Heap@@20) o_3@@7 f_8@@46) (select (|PolymorphicMapType_9729_6241_6242#PolymorphicMapType_9729| ExhaleHeap@@16) o_3@@7 f_8@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@37) (select (|PolymorphicMapType_9729_6241_6242#PolymorphicMapType_9729| ExhaleHeap@@16) o_3@@7 f_8@@46))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_9729) (ExhaleHeap@@17 T@PolymorphicMapType_9729) (Mask@@38 T@PolymorphicMapType_9750) (o_3@@8 T@Ref) (f_8@@47 T@Field_9789_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@17 Mask@@38) (=> (HasDirectPerm_6450_53 Mask@@38 o_3@@8 f_8@@47) (= (select (|PolymorphicMapType_9729_6238_53#PolymorphicMapType_9729| Heap@@21) o_3@@8 f_8@@47) (select (|PolymorphicMapType_9729_6238_53#PolymorphicMapType_9729| ExhaleHeap@@17) o_3@@8 f_8@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@17 Mask@@38) (select (|PolymorphicMapType_9729_6238_53#PolymorphicMapType_9729| ExhaleHeap@@17) o_3@@8 f_8@@47))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_9729) (ExhaleHeap@@18 T@PolymorphicMapType_9729) (Mask@@39 T@PolymorphicMapType_9750) (o_3@@9 T@Ref) (f_8@@48 T@Field_15831_3157) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@18 Mask@@39) (=> (HasDirectPerm_6450_3157 Mask@@39 o_3@@9 f_8@@48) (= (select (|PolymorphicMapType_9729_6450_3157#PolymorphicMapType_9729| Heap@@22) o_3@@9 f_8@@48) (select (|PolymorphicMapType_9729_6450_3157#PolymorphicMapType_9729| ExhaleHeap@@18) o_3@@9 f_8@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@18 Mask@@39) (select (|PolymorphicMapType_9729_6450_3157#PolymorphicMapType_9729| ExhaleHeap@@18) o_3@@9 f_8@@48))
)))
(assert (forall ((s0@@1 T@Seq_17442) (s1@@1 T@Seq_17442) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_17442|)) (not (= s1@@1 |Seq#Empty_17442|))) (= (|Seq#Length_17442| (|Seq#Append_17442| s0@@1 s1@@1)) (+ (|Seq#Length_17442| s0@@1) (|Seq#Length_17442| s1@@1))))
 :qid |stdinbpl.242:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_17442| (|Seq#Append_17442| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3035) (s1@@2 T@Seq_3035) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3035|)) (not (= s1@@2 |Seq#Empty_3035|))) (= (|Seq#Length_3035| (|Seq#Append_3035| s0@@2 s1@@2)) (+ (|Seq#Length_3035| s0@@2) (|Seq#Length_3035| s1@@2))))
 :qid |stdinbpl.242:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3035| (|Seq#Append_3035| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_16363_16368) ) (! (= (select (|PolymorphicMapType_9750_6477_36948#PolymorphicMapType_9750| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9750_6477_36948#PolymorphicMapType_9750| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_16350_9803) ) (! (= (select (|PolymorphicMapType_9750_6477_9803#PolymorphicMapType_9750| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9750_6477_9803#PolymorphicMapType_9750| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_16350_53) ) (! (= (select (|PolymorphicMapType_9750_6477_53#PolymorphicMapType_9750| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9750_6477_53#PolymorphicMapType_9750| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_16350_16351) ) (! (= (select (|PolymorphicMapType_9750_6477_6478#PolymorphicMapType_9750| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9750_6477_6478#PolymorphicMapType_9750| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_16350_3157) ) (! (= (select (|PolymorphicMapType_9750_6477_3157#PolymorphicMapType_9750| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9750_6477_3157#PolymorphicMapType_9750| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_6450_16368) ) (! (= (select (|PolymorphicMapType_9750_6450_36537#PolymorphicMapType_9750| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9750_6450_36537#PolymorphicMapType_9750| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_9802_9803) ) (! (= (select (|PolymorphicMapType_9750_6450_9803#PolymorphicMapType_9750| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9750_6450_9803#PolymorphicMapType_9750| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_9789_53) ) (! (= (select (|PolymorphicMapType_9750_6450_53#PolymorphicMapType_9750| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9750_6450_53#PolymorphicMapType_9750| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_6450_16351) ) (! (= (select (|PolymorphicMapType_9750_6450_6478#PolymorphicMapType_9750| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9750_6450_6478#PolymorphicMapType_9750| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_15831_3157) ) (! (= (select (|PolymorphicMapType_9750_6450_3157#PolymorphicMapType_9750| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9750_6450_3157#PolymorphicMapType_9750| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((s@@15 T@Seq_17442) (t@@1 T@Seq_17442) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_17442| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_17442| s@@15)) (|Seq#Length_17442| s@@15)) n@@15) (= (|Seq#Drop_17442| (|Seq#Append_17442| s@@15 t@@1) n@@15) (|Seq#Drop_17442| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_17442| s@@15))))))
 :qid |stdinbpl.399:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_17442| (|Seq#Append_17442| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3035) (t@@2 T@Seq_3035) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3035| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3035| s@@16)) (|Seq#Length_3035| s@@16)) n@@16) (= (|Seq#Drop_3035| (|Seq#Append_3035| s@@16 t@@2) n@@16) (|Seq#Drop_3035| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3035| s@@16))))))
 :qid |stdinbpl.399:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3035| (|Seq#Append_3035| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_9750) (SummandMask1 T@PolymorphicMapType_9750) (SummandMask2 T@PolymorphicMapType_9750) (o_2@@39 T@Ref) (f_4@@39 T@Field_16363_16368) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_9750_6477_36948#PolymorphicMapType_9750| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_9750_6477_36948#PolymorphicMapType_9750| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_9750_6477_36948#PolymorphicMapType_9750| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9750_6477_36948#PolymorphicMapType_9750| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9750_6477_36948#PolymorphicMapType_9750| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9750_6477_36948#PolymorphicMapType_9750| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_9750) (SummandMask1@@0 T@PolymorphicMapType_9750) (SummandMask2@@0 T@PolymorphicMapType_9750) (o_2@@40 T@Ref) (f_4@@40 T@Field_16350_9803) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_9750_6477_9803#PolymorphicMapType_9750| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_9750_6477_9803#PolymorphicMapType_9750| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_9750_6477_9803#PolymorphicMapType_9750| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9750_6477_9803#PolymorphicMapType_9750| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9750_6477_9803#PolymorphicMapType_9750| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9750_6477_9803#PolymorphicMapType_9750| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_9750) (SummandMask1@@1 T@PolymorphicMapType_9750) (SummandMask2@@1 T@PolymorphicMapType_9750) (o_2@@41 T@Ref) (f_4@@41 T@Field_16350_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_9750_6477_53#PolymorphicMapType_9750| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_9750_6477_53#PolymorphicMapType_9750| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_9750_6477_53#PolymorphicMapType_9750| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9750_6477_53#PolymorphicMapType_9750| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9750_6477_53#PolymorphicMapType_9750| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9750_6477_53#PolymorphicMapType_9750| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_9750) (SummandMask1@@2 T@PolymorphicMapType_9750) (SummandMask2@@2 T@PolymorphicMapType_9750) (o_2@@42 T@Ref) (f_4@@42 T@Field_16350_16351) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_9750_6477_6478#PolymorphicMapType_9750| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_9750_6477_6478#PolymorphicMapType_9750| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_9750_6477_6478#PolymorphicMapType_9750| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9750_6477_6478#PolymorphicMapType_9750| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9750_6477_6478#PolymorphicMapType_9750| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9750_6477_6478#PolymorphicMapType_9750| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_9750) (SummandMask1@@3 T@PolymorphicMapType_9750) (SummandMask2@@3 T@PolymorphicMapType_9750) (o_2@@43 T@Ref) (f_4@@43 T@Field_16350_3157) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_9750_6477_3157#PolymorphicMapType_9750| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_9750_6477_3157#PolymorphicMapType_9750| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_9750_6477_3157#PolymorphicMapType_9750| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9750_6477_3157#PolymorphicMapType_9750| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9750_6477_3157#PolymorphicMapType_9750| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9750_6477_3157#PolymorphicMapType_9750| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_9750) (SummandMask1@@4 T@PolymorphicMapType_9750) (SummandMask2@@4 T@PolymorphicMapType_9750) (o_2@@44 T@Ref) (f_4@@44 T@Field_6450_16368) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_9750_6450_36537#PolymorphicMapType_9750| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_9750_6450_36537#PolymorphicMapType_9750| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_9750_6450_36537#PolymorphicMapType_9750| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9750_6450_36537#PolymorphicMapType_9750| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9750_6450_36537#PolymorphicMapType_9750| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9750_6450_36537#PolymorphicMapType_9750| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_9750) (SummandMask1@@5 T@PolymorphicMapType_9750) (SummandMask2@@5 T@PolymorphicMapType_9750) (o_2@@45 T@Ref) (f_4@@45 T@Field_9802_9803) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_9750_6450_9803#PolymorphicMapType_9750| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_9750_6450_9803#PolymorphicMapType_9750| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_9750_6450_9803#PolymorphicMapType_9750| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_9750_6450_9803#PolymorphicMapType_9750| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_9750_6450_9803#PolymorphicMapType_9750| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_9750_6450_9803#PolymorphicMapType_9750| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_9750) (SummandMask1@@6 T@PolymorphicMapType_9750) (SummandMask2@@6 T@PolymorphicMapType_9750) (o_2@@46 T@Ref) (f_4@@46 T@Field_9789_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_9750_6450_53#PolymorphicMapType_9750| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_9750_6450_53#PolymorphicMapType_9750| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_9750_6450_53#PolymorphicMapType_9750| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_9750_6450_53#PolymorphicMapType_9750| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_9750_6450_53#PolymorphicMapType_9750| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_9750_6450_53#PolymorphicMapType_9750| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_9750) (SummandMask1@@7 T@PolymorphicMapType_9750) (SummandMask2@@7 T@PolymorphicMapType_9750) (o_2@@47 T@Ref) (f_4@@47 T@Field_6450_16351) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_9750_6450_6478#PolymorphicMapType_9750| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_9750_6450_6478#PolymorphicMapType_9750| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_9750_6450_6478#PolymorphicMapType_9750| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_9750_6450_6478#PolymorphicMapType_9750| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_9750_6450_6478#PolymorphicMapType_9750| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_9750_6450_6478#PolymorphicMapType_9750| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_9750) (SummandMask1@@8 T@PolymorphicMapType_9750) (SummandMask2@@8 T@PolymorphicMapType_9750) (o_2@@48 T@Ref) (f_4@@48 T@Field_15831_3157) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_9750_6450_3157#PolymorphicMapType_9750| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_9750_6450_3157#PolymorphicMapType_9750| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_9750_6450_3157#PolymorphicMapType_9750| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_9750_6450_3157#PolymorphicMapType_9750| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_9750_6450_3157#PolymorphicMapType_9750| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_9750_6450_3157#PolymorphicMapType_9750| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3035| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3035| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.564:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3035| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_17442) (b T@Seq_17442) ) (!  (=> (|Seq#Equal_17442| a b) (= a b))
 :qid |stdinbpl.537:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_17442| a b))
)))
(assert (forall ((a@@0 T@Seq_3035) (b@@0 T@Seq_3035) ) (!  (=> (|Seq#Equal_3035| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.537:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3035| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_17442) (i@@7 Int) ) (!  (=> (and (<= 0 i@@7) (< i@@7 (|Seq#Length_17442| s@@17))) (|Seq#ContainsTrigger_6503| s@@17 (|Seq#Index_17442| s@@17 i@@7)))
 :qid |stdinbpl.430:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_17442| s@@17 i@@7))
)))
(assert (forall ((s@@18 T@Seq_3035) (i@@8 Int) ) (!  (=> (and (<= 0 i@@8) (< i@@8 (|Seq#Length_3035| s@@18))) (|Seq#ContainsTrigger_3035| s@@18 (|Seq#Index_3035| s@@18 i@@8)))
 :qid |stdinbpl.430:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3035| s@@18 i@@8))
)))
(assert (forall ((s0@@3 T@Seq_17442) (s1@@3 T@Seq_17442) ) (!  (and (=> (= s0@@3 |Seq#Empty_17442|) (= (|Seq#Append_17442| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_17442|) (= (|Seq#Append_17442| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.248:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_17442| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3035) (s1@@4 T@Seq_3035) ) (!  (and (=> (= s0@@4 |Seq#Empty_3035|) (= (|Seq#Append_3035| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3035|) (= (|Seq#Append_3035| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.248:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3035| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_17442| (|Seq#Singleton_17442| t@@3) 0) t@@3)
 :qid |stdinbpl.252:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_17442| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3035| (|Seq#Singleton_3035| t@@4) 0) t@@4)
 :qid |stdinbpl.252:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3035| t@@4))
)))
(assert (forall ((s@@19 T@Seq_17442) ) (! (<= 0 (|Seq#Length_17442| s@@19))
 :qid |stdinbpl.231:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_17442| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3035) ) (! (<= 0 (|Seq#Length_3035| s@@20))
 :qid |stdinbpl.231:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3035| s@@20))
)))
(assert (forall ((r_1@@3 T@Ref) (i@@9 Int) ) (! (= (getPredWandId_6477_6478 (p_14 r_1@@3 i@@9)) 0)
 :qid |stdinbpl.638:15|
 :skolemid |63|
 :pattern ( (p_14 r_1@@3 i@@9))
)))
(assert (forall ((s0@@5 T@Seq_17442) (s1@@5 T@Seq_17442) ) (!  (=> (|Seq#Equal_17442| s0@@5 s1@@5) (and (= (|Seq#Length_17442| s0@@5) (|Seq#Length_17442| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_17442| s0@@5))) (= (|Seq#Index_17442| s0@@5 j@@6) (|Seq#Index_17442| s1@@5 j@@6)))
 :qid |stdinbpl.527:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_17442| s0@@5 j@@6))
 :pattern ( (|Seq#Index_17442| s1@@5 j@@6))
))))
 :qid |stdinbpl.524:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_17442| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3035) (s1@@6 T@Seq_3035) ) (!  (=> (|Seq#Equal_3035| s0@@6 s1@@6) (and (= (|Seq#Length_3035| s0@@6) (|Seq#Length_3035| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_3035| s0@@6))) (= (|Seq#Index_3035| s0@@6 j@@7) (|Seq#Index_3035| s1@@6 j@@7)))
 :qid |stdinbpl.527:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3035| s0@@6 j@@7))
 :pattern ( (|Seq#Index_3035| s1@@6 j@@7))
))))
 :qid |stdinbpl.524:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3035| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_17442| (|Seq#Singleton_17442| t@@5)) 1)
 :qid |stdinbpl.239:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_17442| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3035| (|Seq#Singleton_3035| t@@6)) 1)
 :qid |stdinbpl.239:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3035| t@@6))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_9729) (Mask@@40 T@PolymorphicMapType_9750) (x@@5 T@Ref) ) (!  (=> (state Heap@@23 Mask@@40) (= (|e'| Heap@@23 x@@5) (|e#frame| EmptyFrame x@@5)))
 :qid |stdinbpl.599:15|
 :skolemid |60|
 :pattern ( (state Heap@@23 Mask@@40) (|e'| Heap@@23 x@@5))
)))
(assert (forall ((r_1@@4 T@Ref) (i@@10 Int) ) (! (= (PredicateMaskField_6477 (p_14 r_1@@4 i@@10)) (|p#sm| r_1@@4 i@@10))
 :qid |stdinbpl.630:15|
 :skolemid |61|
 :pattern ( (PredicateMaskField_6477 (p_14 r_1@@4 i@@10)))
)))
(assert (forall ((s@@21 T@Seq_17442) (t@@7 T@Seq_17442) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_17442| s@@21))) (= (|Seq#Take_17442| (|Seq#Append_17442| s@@21 t@@7) n@@17) (|Seq#Take_17442| s@@21 n@@17)))
 :qid |stdinbpl.381:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_17442| (|Seq#Append_17442| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3035) (t@@8 T@Seq_3035) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3035| s@@22))) (= (|Seq#Take_3035| (|Seq#Append_3035| s@@22 t@@8) n@@18) (|Seq#Take_3035| s@@22 n@@18)))
 :qid |stdinbpl.381:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3035| (|Seq#Append_3035| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_17442) (i@@11 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@11) (< i@@11 (|Seq#Length_17442| s@@23))) (= (|Seq#Length_17442| (|Seq#Update_17442| s@@23 i@@11 v@@2)) (|Seq#Length_17442| s@@23)))
 :qid |stdinbpl.280:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_17442| (|Seq#Update_17442| s@@23 i@@11 v@@2)))
 :pattern ( (|Seq#Length_17442| s@@23) (|Seq#Update_17442| s@@23 i@@11 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3035) (i@@12 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@12) (< i@@12 (|Seq#Length_3035| s@@24))) (= (|Seq#Length_3035| (|Seq#Update_3035| s@@24 i@@12 v@@3)) (|Seq#Length_3035| s@@24)))
 :qid |stdinbpl.280:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3035| (|Seq#Update_3035| s@@24 i@@12 v@@3)))
 :pattern ( (|Seq#Length_3035| s@@24) (|Seq#Update_3035| s@@24 i@@12 v@@3))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_9729) (o_1 T@Ref) (f_9 T@Field_16363_16368) (v@@4 T@PolymorphicMapType_10278) ) (! (succHeap Heap@@24 (PolymorphicMapType_9729 (|PolymorphicMapType_9729_6238_53#PolymorphicMapType_9729| Heap@@24) (|PolymorphicMapType_9729_6241_6242#PolymorphicMapType_9729| Heap@@24) (|PolymorphicMapType_9729_6450_3157#PolymorphicMapType_9729| Heap@@24) (|PolymorphicMapType_9729_6450_16351#PolymorphicMapType_9729| Heap@@24) (|PolymorphicMapType_9729_6450_27187#PolymorphicMapType_9729| Heap@@24) (|PolymorphicMapType_9729_16350_3157#PolymorphicMapType_9729| Heap@@24) (|PolymorphicMapType_9729_16350_53#PolymorphicMapType_9729| Heap@@24) (|PolymorphicMapType_9729_16350_9803#PolymorphicMapType_9729| Heap@@24) (|PolymorphicMapType_9729_16350_16351#PolymorphicMapType_9729| Heap@@24) (store (|PolymorphicMapType_9729_16350_28365#PolymorphicMapType_9729| Heap@@24) o_1 f_9 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9729 (|PolymorphicMapType_9729_6238_53#PolymorphicMapType_9729| Heap@@24) (|PolymorphicMapType_9729_6241_6242#PolymorphicMapType_9729| Heap@@24) (|PolymorphicMapType_9729_6450_3157#PolymorphicMapType_9729| Heap@@24) (|PolymorphicMapType_9729_6450_16351#PolymorphicMapType_9729| Heap@@24) (|PolymorphicMapType_9729_6450_27187#PolymorphicMapType_9729| Heap@@24) (|PolymorphicMapType_9729_16350_3157#PolymorphicMapType_9729| Heap@@24) (|PolymorphicMapType_9729_16350_53#PolymorphicMapType_9729| Heap@@24) (|PolymorphicMapType_9729_16350_9803#PolymorphicMapType_9729| Heap@@24) (|PolymorphicMapType_9729_16350_16351#PolymorphicMapType_9729| Heap@@24) (store (|PolymorphicMapType_9729_16350_28365#PolymorphicMapType_9729| Heap@@24) o_1 f_9 v@@4)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_9729) (o_1@@0 T@Ref) (f_9@@0 T@Field_16350_16351) (v@@5 T@FrameType) ) (! (succHeap Heap@@25 (PolymorphicMapType_9729 (|PolymorphicMapType_9729_6238_53#PolymorphicMapType_9729| Heap@@25) (|PolymorphicMapType_9729_6241_6242#PolymorphicMapType_9729| Heap@@25) (|PolymorphicMapType_9729_6450_3157#PolymorphicMapType_9729| Heap@@25) (|PolymorphicMapType_9729_6450_16351#PolymorphicMapType_9729| Heap@@25) (|PolymorphicMapType_9729_6450_27187#PolymorphicMapType_9729| Heap@@25) (|PolymorphicMapType_9729_16350_3157#PolymorphicMapType_9729| Heap@@25) (|PolymorphicMapType_9729_16350_53#PolymorphicMapType_9729| Heap@@25) (|PolymorphicMapType_9729_16350_9803#PolymorphicMapType_9729| Heap@@25) (store (|PolymorphicMapType_9729_16350_16351#PolymorphicMapType_9729| Heap@@25) o_1@@0 f_9@@0 v@@5) (|PolymorphicMapType_9729_16350_28365#PolymorphicMapType_9729| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9729 (|PolymorphicMapType_9729_6238_53#PolymorphicMapType_9729| Heap@@25) (|PolymorphicMapType_9729_6241_6242#PolymorphicMapType_9729| Heap@@25) (|PolymorphicMapType_9729_6450_3157#PolymorphicMapType_9729| Heap@@25) (|PolymorphicMapType_9729_6450_16351#PolymorphicMapType_9729| Heap@@25) (|PolymorphicMapType_9729_6450_27187#PolymorphicMapType_9729| Heap@@25) (|PolymorphicMapType_9729_16350_3157#PolymorphicMapType_9729| Heap@@25) (|PolymorphicMapType_9729_16350_53#PolymorphicMapType_9729| Heap@@25) (|PolymorphicMapType_9729_16350_9803#PolymorphicMapType_9729| Heap@@25) (store (|PolymorphicMapType_9729_16350_16351#PolymorphicMapType_9729| Heap@@25) o_1@@0 f_9@@0 v@@5) (|PolymorphicMapType_9729_16350_28365#PolymorphicMapType_9729| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_9729) (o_1@@1 T@Ref) (f_9@@1 T@Field_16350_3157) (v@@6 Int) ) (! (succHeap Heap@@26 (PolymorphicMapType_9729 (|PolymorphicMapType_9729_6238_53#PolymorphicMapType_9729| Heap@@26) (|PolymorphicMapType_9729_6241_6242#PolymorphicMapType_9729| Heap@@26) (|PolymorphicMapType_9729_6450_3157#PolymorphicMapType_9729| Heap@@26) (|PolymorphicMapType_9729_6450_16351#PolymorphicMapType_9729| Heap@@26) (|PolymorphicMapType_9729_6450_27187#PolymorphicMapType_9729| Heap@@26) (store (|PolymorphicMapType_9729_16350_3157#PolymorphicMapType_9729| Heap@@26) o_1@@1 f_9@@1 v@@6) (|PolymorphicMapType_9729_16350_53#PolymorphicMapType_9729| Heap@@26) (|PolymorphicMapType_9729_16350_9803#PolymorphicMapType_9729| Heap@@26) (|PolymorphicMapType_9729_16350_16351#PolymorphicMapType_9729| Heap@@26) (|PolymorphicMapType_9729_16350_28365#PolymorphicMapType_9729| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9729 (|PolymorphicMapType_9729_6238_53#PolymorphicMapType_9729| Heap@@26) (|PolymorphicMapType_9729_6241_6242#PolymorphicMapType_9729| Heap@@26) (|PolymorphicMapType_9729_6450_3157#PolymorphicMapType_9729| Heap@@26) (|PolymorphicMapType_9729_6450_16351#PolymorphicMapType_9729| Heap@@26) (|PolymorphicMapType_9729_6450_27187#PolymorphicMapType_9729| Heap@@26) (store (|PolymorphicMapType_9729_16350_3157#PolymorphicMapType_9729| Heap@@26) o_1@@1 f_9@@1 v@@6) (|PolymorphicMapType_9729_16350_53#PolymorphicMapType_9729| Heap@@26) (|PolymorphicMapType_9729_16350_9803#PolymorphicMapType_9729| Heap@@26) (|PolymorphicMapType_9729_16350_16351#PolymorphicMapType_9729| Heap@@26) (|PolymorphicMapType_9729_16350_28365#PolymorphicMapType_9729| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_9729) (o_1@@2 T@Ref) (f_9@@2 T@Field_16350_9803) (v@@7 T@Ref) ) (! (succHeap Heap@@27 (PolymorphicMapType_9729 (|PolymorphicMapType_9729_6238_53#PolymorphicMapType_9729| Heap@@27) (|PolymorphicMapType_9729_6241_6242#PolymorphicMapType_9729| Heap@@27) (|PolymorphicMapType_9729_6450_3157#PolymorphicMapType_9729| Heap@@27) (|PolymorphicMapType_9729_6450_16351#PolymorphicMapType_9729| Heap@@27) (|PolymorphicMapType_9729_6450_27187#PolymorphicMapType_9729| Heap@@27) (|PolymorphicMapType_9729_16350_3157#PolymorphicMapType_9729| Heap@@27) (|PolymorphicMapType_9729_16350_53#PolymorphicMapType_9729| Heap@@27) (store (|PolymorphicMapType_9729_16350_9803#PolymorphicMapType_9729| Heap@@27) o_1@@2 f_9@@2 v@@7) (|PolymorphicMapType_9729_16350_16351#PolymorphicMapType_9729| Heap@@27) (|PolymorphicMapType_9729_16350_28365#PolymorphicMapType_9729| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9729 (|PolymorphicMapType_9729_6238_53#PolymorphicMapType_9729| Heap@@27) (|PolymorphicMapType_9729_6241_6242#PolymorphicMapType_9729| Heap@@27) (|PolymorphicMapType_9729_6450_3157#PolymorphicMapType_9729| Heap@@27) (|PolymorphicMapType_9729_6450_16351#PolymorphicMapType_9729| Heap@@27) (|PolymorphicMapType_9729_6450_27187#PolymorphicMapType_9729| Heap@@27) (|PolymorphicMapType_9729_16350_3157#PolymorphicMapType_9729| Heap@@27) (|PolymorphicMapType_9729_16350_53#PolymorphicMapType_9729| Heap@@27) (store (|PolymorphicMapType_9729_16350_9803#PolymorphicMapType_9729| Heap@@27) o_1@@2 f_9@@2 v@@7) (|PolymorphicMapType_9729_16350_16351#PolymorphicMapType_9729| Heap@@27) (|PolymorphicMapType_9729_16350_28365#PolymorphicMapType_9729| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_9729) (o_1@@3 T@Ref) (f_9@@3 T@Field_16350_53) (v@@8 Bool) ) (! (succHeap Heap@@28 (PolymorphicMapType_9729 (|PolymorphicMapType_9729_6238_53#PolymorphicMapType_9729| Heap@@28) (|PolymorphicMapType_9729_6241_6242#PolymorphicMapType_9729| Heap@@28) (|PolymorphicMapType_9729_6450_3157#PolymorphicMapType_9729| Heap@@28) (|PolymorphicMapType_9729_6450_16351#PolymorphicMapType_9729| Heap@@28) (|PolymorphicMapType_9729_6450_27187#PolymorphicMapType_9729| Heap@@28) (|PolymorphicMapType_9729_16350_3157#PolymorphicMapType_9729| Heap@@28) (store (|PolymorphicMapType_9729_16350_53#PolymorphicMapType_9729| Heap@@28) o_1@@3 f_9@@3 v@@8) (|PolymorphicMapType_9729_16350_9803#PolymorphicMapType_9729| Heap@@28) (|PolymorphicMapType_9729_16350_16351#PolymorphicMapType_9729| Heap@@28) (|PolymorphicMapType_9729_16350_28365#PolymorphicMapType_9729| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9729 (|PolymorphicMapType_9729_6238_53#PolymorphicMapType_9729| Heap@@28) (|PolymorphicMapType_9729_6241_6242#PolymorphicMapType_9729| Heap@@28) (|PolymorphicMapType_9729_6450_3157#PolymorphicMapType_9729| Heap@@28) (|PolymorphicMapType_9729_6450_16351#PolymorphicMapType_9729| Heap@@28) (|PolymorphicMapType_9729_6450_27187#PolymorphicMapType_9729| Heap@@28) (|PolymorphicMapType_9729_16350_3157#PolymorphicMapType_9729| Heap@@28) (store (|PolymorphicMapType_9729_16350_53#PolymorphicMapType_9729| Heap@@28) o_1@@3 f_9@@3 v@@8) (|PolymorphicMapType_9729_16350_9803#PolymorphicMapType_9729| Heap@@28) (|PolymorphicMapType_9729_16350_16351#PolymorphicMapType_9729| Heap@@28) (|PolymorphicMapType_9729_16350_28365#PolymorphicMapType_9729| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_9729) (o_1@@4 T@Ref) (f_9@@4 T@Field_6450_16368) (v@@9 T@PolymorphicMapType_10278) ) (! (succHeap Heap@@29 (PolymorphicMapType_9729 (|PolymorphicMapType_9729_6238_53#PolymorphicMapType_9729| Heap@@29) (|PolymorphicMapType_9729_6241_6242#PolymorphicMapType_9729| Heap@@29) (|PolymorphicMapType_9729_6450_3157#PolymorphicMapType_9729| Heap@@29) (|PolymorphicMapType_9729_6450_16351#PolymorphicMapType_9729| Heap@@29) (store (|PolymorphicMapType_9729_6450_27187#PolymorphicMapType_9729| Heap@@29) o_1@@4 f_9@@4 v@@9) (|PolymorphicMapType_9729_16350_3157#PolymorphicMapType_9729| Heap@@29) (|PolymorphicMapType_9729_16350_53#PolymorphicMapType_9729| Heap@@29) (|PolymorphicMapType_9729_16350_9803#PolymorphicMapType_9729| Heap@@29) (|PolymorphicMapType_9729_16350_16351#PolymorphicMapType_9729| Heap@@29) (|PolymorphicMapType_9729_16350_28365#PolymorphicMapType_9729| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9729 (|PolymorphicMapType_9729_6238_53#PolymorphicMapType_9729| Heap@@29) (|PolymorphicMapType_9729_6241_6242#PolymorphicMapType_9729| Heap@@29) (|PolymorphicMapType_9729_6450_3157#PolymorphicMapType_9729| Heap@@29) (|PolymorphicMapType_9729_6450_16351#PolymorphicMapType_9729| Heap@@29) (store (|PolymorphicMapType_9729_6450_27187#PolymorphicMapType_9729| Heap@@29) o_1@@4 f_9@@4 v@@9) (|PolymorphicMapType_9729_16350_3157#PolymorphicMapType_9729| Heap@@29) (|PolymorphicMapType_9729_16350_53#PolymorphicMapType_9729| Heap@@29) (|PolymorphicMapType_9729_16350_9803#PolymorphicMapType_9729| Heap@@29) (|PolymorphicMapType_9729_16350_16351#PolymorphicMapType_9729| Heap@@29) (|PolymorphicMapType_9729_16350_28365#PolymorphicMapType_9729| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_9729) (o_1@@5 T@Ref) (f_9@@5 T@Field_6450_16351) (v@@10 T@FrameType) ) (! (succHeap Heap@@30 (PolymorphicMapType_9729 (|PolymorphicMapType_9729_6238_53#PolymorphicMapType_9729| Heap@@30) (|PolymorphicMapType_9729_6241_6242#PolymorphicMapType_9729| Heap@@30) (|PolymorphicMapType_9729_6450_3157#PolymorphicMapType_9729| Heap@@30) (store (|PolymorphicMapType_9729_6450_16351#PolymorphicMapType_9729| Heap@@30) o_1@@5 f_9@@5 v@@10) (|PolymorphicMapType_9729_6450_27187#PolymorphicMapType_9729| Heap@@30) (|PolymorphicMapType_9729_16350_3157#PolymorphicMapType_9729| Heap@@30) (|PolymorphicMapType_9729_16350_53#PolymorphicMapType_9729| Heap@@30) (|PolymorphicMapType_9729_16350_9803#PolymorphicMapType_9729| Heap@@30) (|PolymorphicMapType_9729_16350_16351#PolymorphicMapType_9729| Heap@@30) (|PolymorphicMapType_9729_16350_28365#PolymorphicMapType_9729| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9729 (|PolymorphicMapType_9729_6238_53#PolymorphicMapType_9729| Heap@@30) (|PolymorphicMapType_9729_6241_6242#PolymorphicMapType_9729| Heap@@30) (|PolymorphicMapType_9729_6450_3157#PolymorphicMapType_9729| Heap@@30) (store (|PolymorphicMapType_9729_6450_16351#PolymorphicMapType_9729| Heap@@30) o_1@@5 f_9@@5 v@@10) (|PolymorphicMapType_9729_6450_27187#PolymorphicMapType_9729| Heap@@30) (|PolymorphicMapType_9729_16350_3157#PolymorphicMapType_9729| Heap@@30) (|PolymorphicMapType_9729_16350_53#PolymorphicMapType_9729| Heap@@30) (|PolymorphicMapType_9729_16350_9803#PolymorphicMapType_9729| Heap@@30) (|PolymorphicMapType_9729_16350_16351#PolymorphicMapType_9729| Heap@@30) (|PolymorphicMapType_9729_16350_28365#PolymorphicMapType_9729| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_9729) (o_1@@6 T@Ref) (f_9@@6 T@Field_15831_3157) (v@@11 Int) ) (! (succHeap Heap@@31 (PolymorphicMapType_9729 (|PolymorphicMapType_9729_6238_53#PolymorphicMapType_9729| Heap@@31) (|PolymorphicMapType_9729_6241_6242#PolymorphicMapType_9729| Heap@@31) (store (|PolymorphicMapType_9729_6450_3157#PolymorphicMapType_9729| Heap@@31) o_1@@6 f_9@@6 v@@11) (|PolymorphicMapType_9729_6450_16351#PolymorphicMapType_9729| Heap@@31) (|PolymorphicMapType_9729_6450_27187#PolymorphicMapType_9729| Heap@@31) (|PolymorphicMapType_9729_16350_3157#PolymorphicMapType_9729| Heap@@31) (|PolymorphicMapType_9729_16350_53#PolymorphicMapType_9729| Heap@@31) (|PolymorphicMapType_9729_16350_9803#PolymorphicMapType_9729| Heap@@31) (|PolymorphicMapType_9729_16350_16351#PolymorphicMapType_9729| Heap@@31) (|PolymorphicMapType_9729_16350_28365#PolymorphicMapType_9729| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9729 (|PolymorphicMapType_9729_6238_53#PolymorphicMapType_9729| Heap@@31) (|PolymorphicMapType_9729_6241_6242#PolymorphicMapType_9729| Heap@@31) (store (|PolymorphicMapType_9729_6450_3157#PolymorphicMapType_9729| Heap@@31) o_1@@6 f_9@@6 v@@11) (|PolymorphicMapType_9729_6450_16351#PolymorphicMapType_9729| Heap@@31) (|PolymorphicMapType_9729_6450_27187#PolymorphicMapType_9729| Heap@@31) (|PolymorphicMapType_9729_16350_3157#PolymorphicMapType_9729| Heap@@31) (|PolymorphicMapType_9729_16350_53#PolymorphicMapType_9729| Heap@@31) (|PolymorphicMapType_9729_16350_9803#PolymorphicMapType_9729| Heap@@31) (|PolymorphicMapType_9729_16350_16351#PolymorphicMapType_9729| Heap@@31) (|PolymorphicMapType_9729_16350_28365#PolymorphicMapType_9729| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_9729) (o_1@@7 T@Ref) (f_9@@7 T@Field_9802_9803) (v@@12 T@Ref) ) (! (succHeap Heap@@32 (PolymorphicMapType_9729 (|PolymorphicMapType_9729_6238_53#PolymorphicMapType_9729| Heap@@32) (store (|PolymorphicMapType_9729_6241_6242#PolymorphicMapType_9729| Heap@@32) o_1@@7 f_9@@7 v@@12) (|PolymorphicMapType_9729_6450_3157#PolymorphicMapType_9729| Heap@@32) (|PolymorphicMapType_9729_6450_16351#PolymorphicMapType_9729| Heap@@32) (|PolymorphicMapType_9729_6450_27187#PolymorphicMapType_9729| Heap@@32) (|PolymorphicMapType_9729_16350_3157#PolymorphicMapType_9729| Heap@@32) (|PolymorphicMapType_9729_16350_53#PolymorphicMapType_9729| Heap@@32) (|PolymorphicMapType_9729_16350_9803#PolymorphicMapType_9729| Heap@@32) (|PolymorphicMapType_9729_16350_16351#PolymorphicMapType_9729| Heap@@32) (|PolymorphicMapType_9729_16350_28365#PolymorphicMapType_9729| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9729 (|PolymorphicMapType_9729_6238_53#PolymorphicMapType_9729| Heap@@32) (store (|PolymorphicMapType_9729_6241_6242#PolymorphicMapType_9729| Heap@@32) o_1@@7 f_9@@7 v@@12) (|PolymorphicMapType_9729_6450_3157#PolymorphicMapType_9729| Heap@@32) (|PolymorphicMapType_9729_6450_16351#PolymorphicMapType_9729| Heap@@32) (|PolymorphicMapType_9729_6450_27187#PolymorphicMapType_9729| Heap@@32) (|PolymorphicMapType_9729_16350_3157#PolymorphicMapType_9729| Heap@@32) (|PolymorphicMapType_9729_16350_53#PolymorphicMapType_9729| Heap@@32) (|PolymorphicMapType_9729_16350_9803#PolymorphicMapType_9729| Heap@@32) (|PolymorphicMapType_9729_16350_16351#PolymorphicMapType_9729| Heap@@32) (|PolymorphicMapType_9729_16350_28365#PolymorphicMapType_9729| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_9729) (o_1@@8 T@Ref) (f_9@@8 T@Field_9789_53) (v@@13 Bool) ) (! (succHeap Heap@@33 (PolymorphicMapType_9729 (store (|PolymorphicMapType_9729_6238_53#PolymorphicMapType_9729| Heap@@33) o_1@@8 f_9@@8 v@@13) (|PolymorphicMapType_9729_6241_6242#PolymorphicMapType_9729| Heap@@33) (|PolymorphicMapType_9729_6450_3157#PolymorphicMapType_9729| Heap@@33) (|PolymorphicMapType_9729_6450_16351#PolymorphicMapType_9729| Heap@@33) (|PolymorphicMapType_9729_6450_27187#PolymorphicMapType_9729| Heap@@33) (|PolymorphicMapType_9729_16350_3157#PolymorphicMapType_9729| Heap@@33) (|PolymorphicMapType_9729_16350_53#PolymorphicMapType_9729| Heap@@33) (|PolymorphicMapType_9729_16350_9803#PolymorphicMapType_9729| Heap@@33) (|PolymorphicMapType_9729_16350_16351#PolymorphicMapType_9729| Heap@@33) (|PolymorphicMapType_9729_16350_28365#PolymorphicMapType_9729| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9729 (store (|PolymorphicMapType_9729_6238_53#PolymorphicMapType_9729| Heap@@33) o_1@@8 f_9@@8 v@@13) (|PolymorphicMapType_9729_6241_6242#PolymorphicMapType_9729| Heap@@33) (|PolymorphicMapType_9729_6450_3157#PolymorphicMapType_9729| Heap@@33) (|PolymorphicMapType_9729_6450_16351#PolymorphicMapType_9729| Heap@@33) (|PolymorphicMapType_9729_6450_27187#PolymorphicMapType_9729| Heap@@33) (|PolymorphicMapType_9729_16350_3157#PolymorphicMapType_9729| Heap@@33) (|PolymorphicMapType_9729_16350_53#PolymorphicMapType_9729| Heap@@33) (|PolymorphicMapType_9729_16350_9803#PolymorphicMapType_9729| Heap@@33) (|PolymorphicMapType_9729_16350_16351#PolymorphicMapType_9729| Heap@@33) (|PolymorphicMapType_9729_16350_28365#PolymorphicMapType_9729| Heap@@33)))
)))
(assert (forall ((s@@25 T@Seq_17442) (t@@9 T@Seq_17442) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_17442| s@@25))) (= (|Seq#Drop_17442| (|Seq#Append_17442| s@@25 t@@9) n@@19) (|Seq#Append_17442| (|Seq#Drop_17442| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.395:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_17442| (|Seq#Append_17442| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3035) (t@@10 T@Seq_3035) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3035| s@@26))) (= (|Seq#Drop_3035| (|Seq#Append_3035| s@@26 t@@10) n@@20) (|Seq#Append_3035| (|Seq#Drop_3035| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.395:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3035| (|Seq#Append_3035| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_17442) (n@@21 Int) (i@@13 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@13)) (< i@@13 (|Seq#Length_17442| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@13 n@@21) n@@21) i@@13) (= (|Seq#Index_17442| (|Seq#Drop_17442| s@@27 n@@21) (|Seq#Sub| i@@13 n@@21)) (|Seq#Index_17442| s@@27 i@@13))))
 :qid |stdinbpl.331:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_17442| s@@27 n@@21) (|Seq#Index_17442| s@@27 i@@13))
)))
(assert (forall ((s@@28 T@Seq_3035) (n@@22 Int) (i@@14 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@14)) (< i@@14 (|Seq#Length_3035| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@14 n@@22) n@@22) i@@14) (= (|Seq#Index_3035| (|Seq#Drop_3035| s@@28 n@@22) (|Seq#Sub| i@@14 n@@22)) (|Seq#Index_3035| s@@28 i@@14))))
 :qid |stdinbpl.331:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3035| s@@28 n@@22) (|Seq#Index_3035| s@@28 i@@14))
)))
(assert (forall ((s0@@7 T@Seq_17442) (s1@@7 T@Seq_17442) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_17442|)) (not (= s1@@7 |Seq#Empty_17442|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_17442| s0@@7))) (= (|Seq#Index_17442| (|Seq#Append_17442| s0@@7 s1@@7) n@@23) (|Seq#Index_17442| s0@@7 n@@23)))
 :qid |stdinbpl.271:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_17442| (|Seq#Append_17442| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_17442| s0@@7 n@@23) (|Seq#Append_17442| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3035) (s1@@8 T@Seq_3035) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3035|)) (not (= s1@@8 |Seq#Empty_3035|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3035| s0@@8))) (= (|Seq#Index_3035| (|Seq#Append_3035| s0@@8 s1@@8) n@@24) (|Seq#Index_3035| s0@@8 n@@24)))
 :qid |stdinbpl.271:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3035| (|Seq#Append_3035| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3035| s0@@8 n@@24) (|Seq#Append_3035| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_17442) (s1@@9 T@Seq_17442) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_17442|)) (not (= s1@@9 |Seq#Empty_17442|))) (<= 0 m)) (< m (|Seq#Length_17442| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_17442| s0@@9)) (|Seq#Length_17442| s0@@9)) m) (= (|Seq#Index_17442| (|Seq#Append_17442| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_17442| s0@@9))) (|Seq#Index_17442| s1@@9 m))))
 :qid |stdinbpl.276:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_17442| s1@@9 m) (|Seq#Append_17442| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3035) (s1@@10 T@Seq_3035) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3035|)) (not (= s1@@10 |Seq#Empty_3035|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3035| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3035| s0@@10)) (|Seq#Length_3035| s0@@10)) m@@0) (= (|Seq#Index_3035| (|Seq#Append_3035| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3035| s0@@10))) (|Seq#Index_3035| s1@@10 m@@0))))
 :qid |stdinbpl.276:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3035| s1@@10 m@@0) (|Seq#Append_3035| s0@@10 s1@@10))
)))
(assert (forall ((o_1@@9 T@Ref) (f_2 T@Field_9802_9803) (Heap@@34 T@PolymorphicMapType_9729) ) (!  (=> (select (|PolymorphicMapType_9729_6238_53#PolymorphicMapType_9729| Heap@@34) o_1@@9 $allocated) (select (|PolymorphicMapType_9729_6238_53#PolymorphicMapType_9729| Heap@@34) (select (|PolymorphicMapType_9729_6241_6242#PolymorphicMapType_9729| Heap@@34) o_1@@9 f_2) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_9729_6241_6242#PolymorphicMapType_9729| Heap@@34) o_1@@9 f_2))
)))
(assert (forall ((s@@29 T@Seq_17442) (x@@6 T@Ref) (i@@15 Int) ) (!  (=> (and (and (<= 0 i@@15) (< i@@15 (|Seq#Length_17442| s@@29))) (= (|Seq#Index_17442| s@@29 i@@15) x@@6)) (|Seq#Contains_6503| s@@29 x@@6))
 :qid |stdinbpl.428:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_6503| s@@29 x@@6) (|Seq#Index_17442| s@@29 i@@15))
)))
(assert (forall ((s@@30 T@Seq_3035) (x@@7 Int) (i@@16 Int) ) (!  (=> (and (and (<= 0 i@@16) (< i@@16 (|Seq#Length_3035| s@@30))) (= (|Seq#Index_3035| s@@30 i@@16) x@@7)) (|Seq#Contains_3035| s@@30 x@@7))
 :qid |stdinbpl.428:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3035| s@@30 x@@7) (|Seq#Index_3035| s@@30 i@@16))
)))
(assert (forall ((s0@@11 T@Seq_17442) (s1@@11 T@Seq_17442) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_17442| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_17442| s0@@11 s1@@11))) (not (= (|Seq#Length_17442| s0@@11) (|Seq#Length_17442| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_17442| s0@@11 s1@@11))) (= (|Seq#Length_17442| s0@@11) (|Seq#Length_17442| s1@@11))) (= (|Seq#SkolemDiff_17442| s0@@11 s1@@11) (|Seq#SkolemDiff_17442| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_17442| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_17442| s0@@11 s1@@11) (|Seq#Length_17442| s0@@11))) (not (= (|Seq#Index_17442| s0@@11 (|Seq#SkolemDiff_17442| s0@@11 s1@@11)) (|Seq#Index_17442| s1@@11 (|Seq#SkolemDiff_17442| s0@@11 s1@@11))))))
 :qid |stdinbpl.532:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_17442| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3035) (s1@@12 T@Seq_3035) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3035| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3035| s0@@12 s1@@12))) (not (= (|Seq#Length_3035| s0@@12) (|Seq#Length_3035| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3035| s0@@12 s1@@12))) (= (|Seq#Length_3035| s0@@12) (|Seq#Length_3035| s1@@12))) (= (|Seq#SkolemDiff_3035| s0@@12 s1@@12) (|Seq#SkolemDiff_3035| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3035| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3035| s0@@12 s1@@12) (|Seq#Length_3035| s0@@12))) (not (= (|Seq#Index_3035| s0@@12 (|Seq#SkolemDiff_3035| s0@@12 s1@@12)) (|Seq#Index_3035| s1@@12 (|Seq#SkolemDiff_3035| s0@@12 s1@@12))))))
 :qid |stdinbpl.532:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3035| s0@@12 s1@@12))
)))
(assert (forall ((p@@2 T@Field_16350_16351) (v_1@@1 T@FrameType) (q T@Field_16350_16351) (w@@1 T@FrameType) (r T@Field_16350_16351) (u T@FrameType) ) (!  (=> (and (InsidePredicate_16350_16350 p@@2 v_1@@1 q w@@1) (InsidePredicate_16350_16350 q w@@1 r u)) (InsidePredicate_16350_16350 p@@2 v_1@@1 r u))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16350_16350 p@@2 v_1@@1 q w@@1) (InsidePredicate_16350_16350 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_16350_16351) (v_1@@2 T@FrameType) (q@@0 T@Field_16350_16351) (w@@2 T@FrameType) (r@@0 T@Field_6450_16351) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_16350_16350 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_16350_9789 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_16350_9789 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16350_16350 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_16350_9789 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_16350_16351) (v_1@@3 T@FrameType) (q@@1 T@Field_6450_16351) (w@@3 T@FrameType) (r@@1 T@Field_16350_16351) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_16350_9789 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_9789_16350 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_16350_16350 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16350_9789 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_9789_16350 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_16350_16351) (v_1@@4 T@FrameType) (q@@2 T@Field_6450_16351) (w@@4 T@FrameType) (r@@2 T@Field_6450_16351) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_16350_9789 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_9789_9789 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_16350_9789 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16350_9789 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_9789_9789 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_6450_16351) (v_1@@5 T@FrameType) (q@@3 T@Field_16350_16351) (w@@5 T@FrameType) (r@@3 T@Field_16350_16351) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_9789_16350 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_16350_16350 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_9789_16350 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9789_16350 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_16350_16350 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_6450_16351) (v_1@@6 T@FrameType) (q@@4 T@Field_16350_16351) (w@@6 T@FrameType) (r@@4 T@Field_6450_16351) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_9789_16350 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_16350_9789 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_9789_9789 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9789_16350 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_16350_9789 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_6450_16351) (v_1@@7 T@FrameType) (q@@5 T@Field_6450_16351) (w@@7 T@FrameType) (r@@5 T@Field_16350_16351) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_9789_9789 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_9789_16350 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_9789_16350 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9789_9789 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_9789_16350 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_6450_16351) (v_1@@8 T@FrameType) (q@@6 T@Field_6450_16351) (w@@8 T@FrameType) (r@@6 T@Field_6450_16351) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_9789_9789 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_9789_9789 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_9789_9789 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9789_9789 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_9789_9789 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((s@@31 T@Seq_17442) ) (!  (=> (= (|Seq#Length_17442| s@@31) 0) (= s@@31 |Seq#Empty_17442|))
 :qid |stdinbpl.235:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_17442| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3035) ) (!  (=> (= (|Seq#Length_3035| s@@32) 0) (= s@@32 |Seq#Empty_3035|))
 :qid |stdinbpl.235:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3035| s@@32))
)))
(assert (forall ((s@@33 T@Seq_17442) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_17442| s@@33 n@@25) |Seq#Empty_17442|))
 :qid |stdinbpl.411:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_17442| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3035) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3035| s@@34 n@@26) |Seq#Empty_3035|))
 :qid |stdinbpl.411:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3035| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id |e#definedness|)
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
 (=> (= (ControlFlow 0 0) 2) true)
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
